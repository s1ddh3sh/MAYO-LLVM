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
    #dbg_value(ptr %p, !111, !DIExpression(), !112)
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
  %call4 = call i32 @pqmayo_MAYO_1_ref_mayo_keypair(ptr noundef %p, ptr noundef %call, ptr noundef %call1) #6, !dbg !144
    #dbg_value(i32 %call4, !145, !DIExpression(), !112)
  %cmp.not = icmp eq i32 %call4, 0, !dbg !146
  br i1 %cmp.not, label %if.end, label %err, !dbg !146

if.end:                                           ; preds = %entry
  %call5 = call i32 @pqmayo_MAYO_1_ref_mayo_expand_sk(ptr noundef %p, ptr noundef %call1, ptr noundef nonnull %esk) #6, !dbg !148
    #dbg_value(i32 %call5, !145, !DIExpression(), !112)
  %cmp6.not = icmp eq i32 %call5, 0, !dbg !149
  br i1 %cmp6.not, label %if.end9, label %err, !dbg !149

if.end9:                                          ; preds = %if.end
  %call11 = call i32 @pqmayo_MAYO_1_ref_mayo_expand_pk(ptr noundef %p, ptr noundef %call, ptr noundef nonnull %epk) #6, !dbg !151
    #dbg_value(i32 %call11, !145, !DIExpression(), !112)
  %cmp12.not = icmp eq i32 %call11, 0, !dbg !152
  br i1 %cmp12.not, label %if.end15, label %err, !dbg !152

if.end15:                                         ; preds = %if.end9
  %1 = load i32, ptr %msglen, align 4, !dbg !154
    #dbg_value(i32 %1, !113, !DIExpression(), !112)
    #dbg_value(ptr %smlen, !115, !DIExpression(DW_OP_deref), !112)
  %call17 = call i32 @pqmayo_MAYO_1_ref_mayo_sign(ptr noundef %p, ptr noundef %call3, ptr noundef nonnull %smlen, ptr noundef nonnull %msg, i32 noundef %1, ptr noundef %call1) #6, !dbg !155
    #dbg_value(i32 %call17, !145, !DIExpression(), !112)
  %cmp18.not = icmp eq i32 %call17, 0, !dbg !156
  br i1 %cmp18.not, label %if.end21, label %err, !dbg !156

if.end21:                                         ; preds = %if.end15
  %2 = load i32, ptr %smlen, align 4, !dbg !158
    #dbg_value(i32 %2, !115, !DIExpression(), !112)
    #dbg_value(ptr %msglen, !113, !DIExpression(DW_OP_deref), !112)
  %call23 = call i32 @pqmayo_MAYO_1_ref_mayo_open(ptr noundef %p, ptr noundef nonnull %msg2, ptr noundef nonnull %msglen, ptr noundef %call3, i32 noundef %2, ptr noundef %call) #6, !dbg !159
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
  %call32 = call i32 @pqmayo_MAYO_1_ref_mayo_verify(ptr noundef %p, ptr noundef nonnull %msg, i32 noundef %4, ptr noundef %call3, ptr noundef %call) #6, !dbg !166
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
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_1_ref_mayo_keypair(ptr noundef %p, ptr noundef %pk, ptr noundef %sk) local_unnamed_addr #0 !dbg !175 {
entry:
    #dbg_value(ptr %p, !206, !DIExpression(), !207)
    #dbg_value(ptr %pk, !208, !DIExpression(), !207)
    #dbg_value(ptr %sk, !209, !DIExpression(), !207)
    #dbg_value(i32 0, !210, !DIExpression(), !207)
  %call = call i32 @pqmayo_MAYO_1_ref_mayo_keypair_compact(ptr noundef %p, ptr noundef %pk, ptr noundef %sk) #6, !dbg !211
    #dbg_value(i32 %call, !210, !DIExpression(), !207)
    #dbg_label(!212, !213)
  ret i32 %call, !dbg !214
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_1_ref_mayo_keypair_compact(ptr noundef %p, ptr noundef %cpk, ptr noundef %csk) local_unnamed_addr #0 !dbg !215 {
entry:
  %S = alloca [328 x i8], align 1
  %P = alloca [18525 x i64], align 8
  %P3 = alloca [320 x i64], align 8
  %O = alloca [624 x i8], align 1
  %P3_upper = alloca [180 x i64], align 8
    #dbg_value(ptr %p, !216, !DIExpression(), !217)
    #dbg_value(ptr %cpk, !218, !DIExpression(), !217)
    #dbg_value(ptr %csk, !219, !DIExpression(), !217)
    #dbg_value(i32 0, !220, !DIExpression(), !217)
    #dbg_value(ptr %csk, !221, !DIExpression(), !217)
    #dbg_declare(ptr %S, !222, !DIExpression(), !226)
    #dbg_declare(ptr %P, !227, !DIExpression(), !231)
    #dbg_declare(ptr %P3, !232, !DIExpression(), !236)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(2560) %P3, i8 0, i32 2560, i1 false), !dbg !236
    #dbg_declare(ptr %O, !237, !DIExpression(), !241)
    #dbg_value(i32 5, !242, !DIExpression(), !217)
    #dbg_value(i32 78, !244, !DIExpression(), !217)
    #dbg_value(i32 78, !245, !DIExpression(), !217)
    #dbg_value(i32 8, !246, !DIExpression(), !217)
    #dbg_value(i32 312, !247, !DIExpression(), !217)
    #dbg_value(i32 15405, !248, !DIExpression(), !217)
    #dbg_value(i32 180, !249, !DIExpression(), !217)
    #dbg_value(i32 16, !250, !DIExpression(), !217)
    #dbg_value(i32 24, !251, !DIExpression(), !217)
    #dbg_value(ptr %P, !252, !DIExpression(), !217)
  %add.ptr = getelementptr inbounds nuw i8, ptr %P, i32 123240, !dbg !253
    #dbg_value(ptr %add.ptr, !254, !DIExpression(), !217)
  %call = call i32 @randombytes(ptr noundef %csk, i32 noundef 24) #8, !dbg !255
  %cmp.not = icmp eq i32 %call, 0, !dbg !257
  br i1 %cmp.not, label %if.end, label %err, !dbg !257

if.end:                                           ; preds = %entry
    #dbg_value(ptr %P, !252, !DIExpression(), !217)
  %call3 = call i32 @shake256(ptr noundef nonnull %S, i32 noundef 328, ptr noundef %csk, i32 noundef 24) #8, !dbg !258
    #dbg_value(ptr %S, !259, !DIExpression(), !217)
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %S, i32 16, !dbg !260
  call fastcc void @decode(ptr noundef nonnull %add.ptr6, ptr noundef nonnull %O, i32 noundef 624) #6, !dbg !261
  call fastcc void @expand_P1_P2(ptr noundef %p, ptr noundef nonnull %P, ptr noundef nonnull %S) #6, !dbg !262
  call fastcc void @compute_P3(ptr noundef %p, ptr noundef nonnull %P, ptr noundef nonnull %add.ptr, ptr noundef nonnull %O, ptr noundef nonnull %P3) #6, !dbg !263
  %call11 = call ptr @memcpy(ptr noundef %cpk, ptr noundef nonnull %S, i32 noundef 16) #8, !dbg !264
    #dbg_declare(ptr %P3_upper, !265, !DIExpression(), !269)
  call void @pqmayo_MAYO_1_ref_m_upper(ptr noundef %p, ptr noundef nonnull %P3, ptr noundef nonnull %P3_upper, i32 noundef 8) #6, !dbg !270
  %add.ptr15 = getelementptr inbounds nuw i8, ptr %cpk, i32 16, !dbg !271
  call fastcc void @pack_m_vecs(ptr noundef nonnull %P3_upper, ptr noundef nonnull %add.ptr15, i32 noundef 36, i32 noundef 78) #6, !dbg !272
  br label %err, !dbg !272

err:                                              ; preds = %entry, %if.end
  %ret.0 = phi i32 [ 0, %if.end ], [ 1, %entry ], !dbg !217
    #dbg_value(i32 %ret.0, !220, !DIExpression(), !217)
    #dbg_label(!273, !274)
  call void @mayo_secure_clear(ptr noundef nonnull %O, i32 noundef 624) #8, !dbg !275
  call void @mayo_secure_clear(ptr noundef nonnull %add.ptr, i32 noundef 24960) #8, !dbg !276
  call void @mayo_secure_clear(ptr noundef nonnull %P3, i32 noundef 2560) #8, !dbg !277
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
  %call = call i32 @AES_128_CTR(ptr noundef %P, i32 noundef 144495, ptr noundef %seed_pk, i32 noundef 16) #8, !dbg !323
  call fastcc void @unpack_m_vecs(ptr noundef %P, ptr noundef %P, i32 noundef 3705, i32 noundef 78) #6, !dbg !324
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
    #dbg_value(i32 5, !337, !DIExpression(), !332)
    #dbg_value(i32 78, !338, !DIExpression(), !332)
    #dbg_value(i32 8, !339, !DIExpression(), !332)
  call fastcc void @P1_times_O(ptr noundef %p, ptr noundef %P1, ptr noundef %O, ptr noundef %P2) #6, !dbg !340
  call fastcc void @mul_add_mat_trans_x_m_mat(i32 noundef 5, ptr noundef %O, ptr noundef %P2, ptr noundef %P3, i32 noundef 78, i32 noundef 8, i32 noundef 8) #6, !dbg !341
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
  call fastcc void @mul_add_m_upper_triangular_mat_x_mat(i32 noundef 5, ptr noundef %P1, ptr noundef %O, ptr noundef %acc, i32 noundef 78, i32 noundef 78, i32 noundef 8, i32 noundef 1) #6, !dbg !385
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
  %tmp = alloca [5 x i64], align 8
    #dbg_value(ptr %in, !578, !DIExpression(), !579)
    #dbg_value(ptr %out, !580, !DIExpression(), !579)
    #dbg_value(i32 %vecs, !581, !DIExpression(), !579)
    #dbg_value(i32 %m, !582, !DIExpression(), !579)
  %add = add nsw i32 %m, 15, !dbg !583
  %div = sdiv i32 %add, 16, !dbg !584
    #dbg_value(i32 %div, !585, !DIExpression(), !579)
    #dbg_value(ptr %out, !586, !DIExpression(), !579)
    #dbg_declare(ptr %tmp, !587, !DIExpression(), !591)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %tmp, i8 0, i32 40, i1 false), !dbg !591
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
define dso_local i32 @pqmayo_MAYO_1_ref_mayo_expand_sk(ptr noundef %p, ptr noundef %csk, ptr noundef %sk) local_unnamed_addr #0 !dbg !615 {
entry:
  %S = alloca [328 x i8], align 1
    #dbg_value(ptr %p, !618, !DIExpression(), !619)
    #dbg_value(ptr %csk, !620, !DIExpression(), !619)
    #dbg_value(ptr %sk, !621, !DIExpression(), !619)
    #dbg_value(i32 0, !622, !DIExpression(), !619)
    #dbg_declare(ptr %S, !623, !DIExpression(), !624)
    #dbg_value(ptr %sk, !625, !DIExpression(), !619)
  %add.ptr1 = getelementptr inbounds nuw i8, ptr %sk, i32 148200, !dbg !626
    #dbg_value(ptr %add.ptr1, !627, !DIExpression(), !619)
    #dbg_value(i32 8, !628, !DIExpression(), !619)
    #dbg_value(i32 78, !629, !DIExpression(), !619)
    #dbg_value(i32 312, !630, !DIExpression(), !619)
    #dbg_value(i32 16, !631, !DIExpression(), !619)
    #dbg_value(i32 24, !632, !DIExpression(), !619)
    #dbg_value(ptr %csk, !633, !DIExpression(), !619)
    #dbg_value(ptr %S, !634, !DIExpression(), !619)
  %call = call i32 @shake256(ptr noundef nonnull %S, i32 noundef 328, ptr noundef %csk, i32 noundef 24) #8, !dbg !635
  %add.ptr4 = getelementptr inbounds nuw i8, ptr %S, i32 16, !dbg !636
  call fastcc void @decode(ptr noundef nonnull %add.ptr4, ptr noundef nonnull %add.ptr1, i32 noundef 624) #6, !dbg !637
  call fastcc void @expand_P1_P2(ptr noundef %p, ptr noundef %sk, ptr noundef nonnull %S) #6, !dbg !638
  %add.ptr5 = getelementptr inbounds nuw i8, ptr %sk, i32 123240, !dbg !639
    #dbg_value(ptr %add.ptr5, !640, !DIExpression(), !619)
    #dbg_value(ptr %sk, !641, !DIExpression(), !619)
    #dbg_value(ptr %add.ptr5, !642, !DIExpression(), !619)
  call fastcc void @P1P1t_times_O(ptr noundef %p, ptr noundef %sk, ptr noundef nonnull %add.ptr1, ptr noundef nonnull %add.ptr5) #6, !dbg !643
  call void @mayo_secure_clear(ptr noundef nonnull %S, i32 noundef 328) #8, !dbg !644
  ret i32 0, !dbg !645
}

; Function Attrs: nounwind
define internal fastcc void @P1P1t_times_O(ptr noundef %p, ptr noundef %P1, ptr noundef %O, ptr noundef %acc) unnamed_addr #0 !dbg !646 {
entry:
    #dbg_value(ptr %p, !647, !DIExpression(), !648)
    #dbg_value(ptr %P1, !649, !DIExpression(), !648)
    #dbg_value(ptr %O, !650, !DIExpression(), !648)
    #dbg_value(ptr %acc, !651, !DIExpression(), !648)
    #dbg_value(i32 8, !652, !DIExpression(), !648)
    #dbg_value(i32 78, !653, !DIExpression(), !648)
    #dbg_value(i32 5, !654, !DIExpression(), !648)
    #dbg_value(i32 0, !655, !DIExpression(), !648)
    #dbg_value(i32 0, !656, !DIExpression(), !658)
  br label %for.cond, !dbg !659

for.cond:                                         ; preds = %for.inc27, %entry
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc27 ], [ 78, %entry ], !dbg !660
  %bs_mat_entries_used.0 = phi i32 [ %bs_mat_entries_used.1, %for.inc27 ], [ 0, %entry ], !dbg !660
  %r.0 = phi i32 [ %inc28, %for.inc27 ], [ 0, %entry ], !dbg !661
    #dbg_value(i32 %r.0, !656, !DIExpression(), !658)
    #dbg_value(i32 %bs_mat_entries_used.0, !655, !DIExpression(), !648)
  %exitcond2.not = icmp eq i32 %r.0, 78, !dbg !662
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
  %add.ptr.idx.1 = mul nsw i32 %bs_mat_entries_used.1, 40, !dbg !676
  %add.ptr.1 = getelementptr inbounds i8, ptr %P1, i32 %add.ptr.idx.1, !dbg !676
  %mul8.1 = shl nuw nsw i32 %c.0, 3, !dbg !680
  br label %for.cond5, !dbg !681

for.cond5:                                        ; preds = %for.body7.2, %for.cond5.preheader
  %k.0 = phi i32 [ 0, %for.cond5.preheader ], [ %add23.2, %for.body7.2 ], !dbg !682
    #dbg_value(i32 %k.0, !683, !DIExpression(), !684)
  %add.ptr.idx = mul nsw i32 %bs_mat_entries_used.1, 40, !dbg !676
  %add.ptr = getelementptr inbounds i8, ptr %P1, i32 %add.ptr.idx, !dbg !676
  %mul8 = shl nuw nsw i32 %c.0, 3, !dbg !680
  %add9 = or disjoint i32 %mul8, %k.0, !dbg !685
  %arrayidx = getelementptr inbounds nuw i8, ptr %O, i32 %add9, !dbg !686
  %1 = load i8, ptr %arrayidx, align 1, !dbg !686
  %mul10 = shl nuw nsw i32 %r.0, 3, !dbg !687
  %add11 = or disjoint i32 %mul10, %k.0, !dbg !688
  %add.ptr13.idx = mul nuw nsw i32 %add11, 40, !dbg !689
  %add.ptr13 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr13.idx, !dbg !689
  call fastcc void @m_vec_mul_add(i32 noundef 5, ptr noundef %add.ptr, i8 noundef zeroext %1, ptr noundef %add.ptr13) #6, !dbg !690
  %add.ptr15.idx = mul nsw i32 %bs_mat_entries_used.1, 40, !dbg !691
  %add.ptr15 = getelementptr inbounds i8, ptr %P1, i32 %add.ptr15.idx, !dbg !691
  %mul16 = shl nuw nsw i32 %r.0, 3, !dbg !692
  %add17 = or disjoint i32 %mul16, %k.0, !dbg !693
  %arrayidx18 = getelementptr inbounds nuw i8, ptr %O, i32 %add17, !dbg !694
  %2 = load i8, ptr %arrayidx18, align 1, !dbg !694
  %mul19 = shl nuw nsw i32 %c.0, 3, !dbg !695
  %add20 = or disjoint i32 %mul19, %k.0, !dbg !696
  %add.ptr22.idx = mul nuw nsw i32 %add20, 40, !dbg !697
  %add.ptr22 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr22.idx, !dbg !697
  call fastcc void @m_vec_mul_add(i32 noundef 5, ptr noundef %add.ptr15, i8 noundef zeroext %2, ptr noundef %add.ptr22) #6, !dbg !698
    #dbg_value(i32 %k.0, !683, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !684)
  %add23 = add nuw nsw i32 %k.0, 1, !dbg !699
    #dbg_value(i32 %add23, !683, !DIExpression(), !684)
  %add9.1 = or disjoint i32 %mul8.1, %add23, !dbg !685
  %arrayidx.1 = getelementptr inbounds nuw i8, ptr %O, i32 %add9.1, !dbg !686
  %3 = load i8, ptr %arrayidx.1, align 1, !dbg !686
  %mul10.1 = shl nuw nsw i32 %r.0, 3, !dbg !687
  %add11.1 = or disjoint i32 %mul10.1, %add23, !dbg !688
  %add.ptr13.idx.1 = mul nuw nsw i32 %add11.1, 40, !dbg !689
  %add.ptr13.1 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr13.idx.1, !dbg !689
  call fastcc void @m_vec_mul_add(i32 noundef 5, ptr noundef %add.ptr.1, i8 noundef zeroext %3, ptr noundef nonnull %add.ptr13.1) #6, !dbg !690
  %add.ptr15.idx.1 = mul nsw i32 %bs_mat_entries_used.1, 40, !dbg !691
  %add.ptr15.1 = getelementptr inbounds i8, ptr %P1, i32 %add.ptr15.idx.1, !dbg !691
  %mul16.1 = shl nuw nsw i32 %r.0, 3, !dbg !692
  %add17.1 = or disjoint i32 %mul16.1, %add23, !dbg !693
  %arrayidx18.1 = getelementptr inbounds nuw i8, ptr %O, i32 %add17.1, !dbg !694
  %4 = load i8, ptr %arrayidx18.1, align 1, !dbg !694
  %mul19.1 = shl nuw nsw i32 %c.0, 3, !dbg !695
  %add20.1 = or disjoint i32 %mul19.1, %add23, !dbg !696
  %add.ptr22.idx.1 = mul nuw nsw i32 %add20.1, 40, !dbg !697
  %add.ptr22.1 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr22.idx.1, !dbg !697
  call fastcc void @m_vec_mul_add(i32 noundef 5, ptr noundef %add.ptr15.1, i8 noundef zeroext %4, ptr noundef nonnull %add.ptr22.1) #6, !dbg !698
  %add23.1 = add nuw nsw i32 %k.0, 2, !dbg !699
    #dbg_value(i32 %add23.1, !683, !DIExpression(), !684)
  %exitcond.2.not = icmp eq i32 %add23.1, 8, !dbg !700
  br i1 %exitcond.2.not, label %for.inc25, label %for.body7.2, !dbg !681

for.body7.2:                                      ; preds = %for.cond5
  %add.ptr.idx.2 = mul nsw i32 %bs_mat_entries_used.1, 40, !dbg !676
  %add.ptr.2 = getelementptr inbounds i8, ptr %P1, i32 %add.ptr.idx.2, !dbg !676
  %mul8.2 = shl nuw nsw i32 %c.0, 3, !dbg !680
  %add9.2 = or disjoint i32 %mul8.2, %add23.1, !dbg !685
  %arrayidx.2 = getelementptr inbounds nuw i8, ptr %O, i32 %add9.2, !dbg !686
  %5 = load i8, ptr %arrayidx.2, align 1, !dbg !686
  %mul10.2 = shl nuw nsw i32 %r.0, 3, !dbg !687
  %add11.2 = or disjoint i32 %mul10.2, %add23.1, !dbg !688
  %add.ptr13.idx.2 = mul nuw nsw i32 %add11.2, 40, !dbg !689
  %add.ptr13.2 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr13.idx.2, !dbg !689
  call fastcc void @m_vec_mul_add(i32 noundef 5, ptr noundef %add.ptr.2, i8 noundef zeroext %5, ptr noundef nonnull %add.ptr13.2) #6, !dbg !690
  %add.ptr15.idx.2 = mul nsw i32 %bs_mat_entries_used.1, 40, !dbg !691
  %add.ptr15.2 = getelementptr inbounds i8, ptr %P1, i32 %add.ptr15.idx.2, !dbg !691
  %mul16.2 = shl nuw nsw i32 %r.0, 3, !dbg !692
  %add17.2 = or disjoint i32 %mul16.2, %add23.1, !dbg !693
  %arrayidx18.2 = getelementptr inbounds nuw i8, ptr %O, i32 %add17.2, !dbg !694
  %6 = load i8, ptr %arrayidx18.2, align 1, !dbg !694
  %mul19.2 = shl nuw nsw i32 %c.0, 3, !dbg !695
  %add20.2 = or disjoint i32 %mul19.2, %add23.1, !dbg !696
  %add.ptr22.idx.2 = mul nuw nsw i32 %add20.2, 40, !dbg !697
  %add.ptr22.2 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr22.idx.2, !dbg !697
  call fastcc void @m_vec_mul_add(i32 noundef 5, ptr noundef %add.ptr15.2, i8 noundef zeroext %6, ptr noundef nonnull %add.ptr22.2) #6, !dbg !698
  %add23.2 = add nuw nsw i32 %k.0, 3, !dbg !699
    #dbg_value(i32 %add23.2, !683, !DIExpression(), !684)
  br label %for.cond5, !dbg !701, !llvm.loop !702

for.inc25:                                        ; preds = %for.cond5, %for.body3
  %bs_mat_entries_used.2 = add i32 %bs_mat_entries_used.1, 1, !dbg !704
    #dbg_value(i32 %bs_mat_entries_used.2, !655, !DIExpression(), !648)
  %inc = add nuw nsw i32 %c.0, 1, !dbg !705
    #dbg_value(i32 %inc, !669, !DIExpression(), !670)
  br label %for.cond1, !dbg !706, !llvm.loop !707

for.inc27:                                        ; preds = %for.cond1
  %inc28 = add nuw nsw i32 %r.0, 1, !dbg !709
    #dbg_value(i32 %inc28, !656, !DIExpression(), !658)
  %indvars.iv.next = add nsw i32 %indvars.iv, -1, !dbg !710
  br label %for.cond, !dbg !710, !llvm.loop !711

for.end29:                                        ; preds = %for.cond
  ret void, !dbg !713
}

; Function Attrs: nounwind
define dso_local i32 @pqmayo_MAYO_1_ref_mayo_sign_signature(ptr noundef %p, ptr noundef %sig, ptr noundef %siglen, ptr noundef %m, i32 noundef %mlen, ptr noundef %csk) local_unnamed_addr #0 !dbg !714 {
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
    #dbg_value(ptr %p, !718, !DIExpression(), !719)
    #dbg_value(ptr %sig, !720, !DIExpression(), !719)
    #dbg_value(ptr %siglen, !721, !DIExpression(), !719)
    #dbg_value(ptr %m, !722, !DIExpression(), !719)
    #dbg_value(i32 %mlen, !723, !DIExpression(), !719)
    #dbg_value(ptr %csk, !724, !DIExpression(), !719)
    #dbg_value(i32 0, !725, !DIExpression(), !719)
    #dbg_declare(ptr %tenc, !726, !DIExpression(), !730)
    #dbg_declare(ptr %t, !731, !DIExpression(), !735)
    #dbg_declare(ptr %y, !736, !DIExpression(), !737)
    #dbg_declare(ptr %salt, !738, !DIExpression(), !742)
    #dbg_declare(ptr %V, !743, !DIExpression(), !747)
    #dbg_declare(ptr %Vdec, !748, !DIExpression(), !752)
    #dbg_declare(ptr %A, !753, !DIExpression(), !757)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6480) %A, i8 0, i32 6480, i1 false), !dbg !757
    #dbg_declare(ptr %x, !758, !DIExpression(), !762)
    #dbg_declare(ptr %r, !763, !DIExpression(), !767)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(81) %r, i8 0, i32 81, i1 false), !dbg !767
    #dbg_declare(ptr %s, !768, !DIExpression(), !769)
    #dbg_declare(ptr %sk, !770, !DIExpression(), !771)
    #dbg_declare(ptr %Ox, !772, !DIExpression(), !773)
    #dbg_declare(ptr %tmp, !774, !DIExpression(), !775)
    #dbg_value(i32 78, !776, !DIExpression(), !719)
    #dbg_value(i32 86, !777, !DIExpression(), !719)
    #dbg_value(i32 8, !778, !DIExpression(), !719)
    #dbg_value(i32 10, !779, !DIExpression(), !719)
    #dbg_value(i32 78, !780, !DIExpression(), !719)
    #dbg_value(i32 39, !781, !DIExpression(), !719)
    #dbg_value(i32 39, !782, !DIExpression(), !719)
    #dbg_value(i32 40, !783, !DIExpression(), !719)
    #dbg_value(i32 454, !784, !DIExpression(), !719)
    #dbg_value(i32 81, !785, !DIExpression(), !719)
    #dbg_value(i32 32, !786, !DIExpression(), !719)
    #dbg_value(i32 24, !787, !DIExpression(), !719)
    #dbg_value(i32 24, !788, !DIExpression(), !719)
  %call = call i32 @pqmayo_MAYO_1_ref_mayo_expand_sk(ptr noundef %p, ptr noundef %csk, ptr noundef nonnull %sk) #6, !dbg !789
    #dbg_value(i32 %call, !725, !DIExpression(), !719)
  %cmp.not = icmp eq i32 %call, 0, !dbg !790
  br i1 %cmp.not, label %if.end, label %err, !dbg !790

if.end:                                           ; preds = %entry
    #dbg_value(ptr %csk, !792, !DIExpression(), !719)
  %call2 = call i32 @shake256(ptr noundef nonnull %tmp, i32 noundef 32, ptr noundef %m, i32 noundef %mlen) #8, !dbg !793
    #dbg_value(ptr %sk, !794, !DIExpression(), !719)
  %add.ptr = getelementptr inbounds nuw i8, ptr %sk, i32 123240, !dbg !795
    #dbg_value(ptr %add.ptr, !796, !DIExpression(), !719)
    #dbg_declare(ptr %Mtmp, !797, !DIExpression(), !801)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(3200) %Mtmp, i8 0, i32 3200, i1 false), !dbg !801
  %add.ptr5 = getelementptr inbounds nuw i8, ptr %tmp, i32 32, !dbg !802
  %call6 = call i32 @randombytes(ptr noundef nonnull %add.ptr5, i32 noundef 24) #8, !dbg !804
  %cmp7.not = icmp eq i32 %call6, 0, !dbg !805
  br i1 %cmp7.not, label %if.end9, label %err, !dbg !805

if.end9:                                          ; preds = %if.end
  %add.ptr12 = getelementptr inbounds nuw i8, ptr %tmp, i32 56, !dbg !806
  %call13 = call ptr @memcpy(ptr noundef nonnull %add.ptr12, ptr noundef %csk, i32 noundef 24) #8, !dbg !807
  %call16 = call i32 @shake256(ptr noundef nonnull %salt, i32 noundef 24, ptr noundef nonnull %tmp, i32 noundef 80) #8, !dbg !808
  %add.ptr18 = getelementptr inbounds nuw i8, ptr %tmp, i32 32, !dbg !809
  %call20 = call ptr @memcpy(ptr noundef nonnull %add.ptr18, ptr noundef nonnull %salt, i32 noundef 24) #8, !dbg !810
  %add.ptr24 = getelementptr inbounds nuw i8, ptr %tmp, i32 80, !dbg !811
    #dbg_value(ptr %add.ptr24, !812, !DIExpression(), !719)
  %call27 = call i32 @shake256(ptr noundef nonnull %tenc, i32 noundef 39, ptr noundef nonnull %tmp, i32 noundef 56) #8, !dbg !813
  call fastcc void @decode(ptr noundef nonnull %tenc, ptr noundef nonnull %t, i32 noundef 78) #6, !dbg !814
    #dbg_value(i32 0, !815, !DIExpression(), !817)
  %add.ptr61 = getelementptr inbounds nuw i8, ptr %V, i32 390, !dbg !818
  br label %for.cond, !dbg !821

for.cond:                                         ; preds = %if.else, %if.end9
  %ctr.0 = phi i32 [ 0, %if.end9 ], [ %inc75, %if.else ], !dbg !822
    #dbg_value(i32 %ctr.0, !815, !DIExpression(), !817)
  %exitcond2.not = icmp eq i32 %ctr.0, 256, !dbg !823
  br i1 %exitcond2.not, label %for.end76, label %for.body, !dbg !824

for.body:                                         ; preds = %for.cond
  %conv = trunc nuw i32 %ctr.0 to i8, !dbg !825
  store i8 %conv, ptr %add.ptr24, align 1, !dbg !826
  %call33 = call i32 @shake256(ptr noundef nonnull %V, i32 noundef 430, ptr noundef nonnull %tmp, i32 noundef 81) #8, !dbg !827
    #dbg_value(i32 0, !828, !DIExpression(), !830)
    #dbg_value(i32 0, !828, !DIExpression(), !830)
  call fastcc void @decode(ptr noundef nonnull %V, ptr noundef nonnull %Vdec, i32 noundef 78) #6, !dbg !831
    #dbg_value(i32 1, !828, !DIExpression(), !830)
  %add.ptr39.1 = getelementptr inbounds nuw i8, ptr %V, i32 39, !dbg !834
  %add.ptr42.1 = getelementptr inbounds nuw i8, ptr %Vdec, i32 78, !dbg !835
  call fastcc void @decode(ptr noundef nonnull %add.ptr39.1, ptr noundef nonnull %add.ptr42.1, i32 noundef 78) #6, !dbg !831
    #dbg_value(i32 2, !828, !DIExpression(), !830)
  %add.ptr39.2 = getelementptr inbounds nuw i8, ptr %V, i32 78, !dbg !834
  %add.ptr42.2 = getelementptr inbounds nuw i8, ptr %Vdec, i32 156, !dbg !835
  call fastcc void @decode(ptr noundef nonnull %add.ptr39.2, ptr noundef nonnull %add.ptr42.2, i32 noundef 78) #6, !dbg !831
    #dbg_value(i32 3, !828, !DIExpression(), !830)
  %add.ptr39.3 = getelementptr inbounds nuw i8, ptr %V, i32 117, !dbg !834
  %add.ptr42.3 = getelementptr inbounds nuw i8, ptr %Vdec, i32 234, !dbg !835
  call fastcc void @decode(ptr noundef nonnull %add.ptr39.3, ptr noundef nonnull %add.ptr42.3, i32 noundef 78) #6, !dbg !831
    #dbg_value(i32 4, !828, !DIExpression(), !830)
  %add.ptr39.4 = getelementptr inbounds nuw i8, ptr %V, i32 156, !dbg !834
  %add.ptr42.4 = getelementptr inbounds nuw i8, ptr %Vdec, i32 312, !dbg !835
  call fastcc void @decode(ptr noundef nonnull %add.ptr39.4, ptr noundef nonnull %add.ptr42.4, i32 noundef 78) #6, !dbg !831
    #dbg_value(i32 5, !828, !DIExpression(), !830)
  %add.ptr39.5 = getelementptr inbounds nuw i8, ptr %V, i32 195, !dbg !834
  %add.ptr42.5 = getelementptr inbounds nuw i8, ptr %Vdec, i32 390, !dbg !835
  call fastcc void @decode(ptr noundef nonnull %add.ptr39.5, ptr noundef nonnull %add.ptr42.5, i32 noundef 78) #6, !dbg !831
    #dbg_value(i32 6, !828, !DIExpression(), !830)
  %add.ptr39.6 = getelementptr inbounds nuw i8, ptr %V, i32 234, !dbg !834
  %add.ptr42.6 = getelementptr inbounds nuw i8, ptr %Vdec, i32 468, !dbg !835
  call fastcc void @decode(ptr noundef nonnull %add.ptr39.6, ptr noundef nonnull %add.ptr42.6, i32 noundef 78) #6, !dbg !831
    #dbg_value(i32 7, !828, !DIExpression(), !830)
  %add.ptr39.7 = getelementptr inbounds nuw i8, ptr %V, i32 273, !dbg !834
  %add.ptr42.7 = getelementptr inbounds nuw i8, ptr %Vdec, i32 546, !dbg !835
  call fastcc void @decode(ptr noundef nonnull %add.ptr39.7, ptr noundef nonnull %add.ptr42.7, i32 noundef 78) #6, !dbg !831
    #dbg_value(i32 8, !828, !DIExpression(), !830)
  %add.ptr39.8 = getelementptr inbounds nuw i8, ptr %V, i32 312, !dbg !834
  %add.ptr42.8 = getelementptr inbounds nuw i8, ptr %Vdec, i32 624, !dbg !835
  call fastcc void @decode(ptr noundef nonnull %add.ptr39.8, ptr noundef nonnull %add.ptr42.8, i32 noundef 78) #6, !dbg !831
    #dbg_value(i32 9, !828, !DIExpression(), !830)
  %add.ptr39.9 = getelementptr inbounds nuw i8, ptr %V, i32 351, !dbg !834
  %add.ptr42.9 = getelementptr inbounds nuw i8, ptr %Vdec, i32 702, !dbg !835
  call fastcc void @decode(ptr noundef nonnull %add.ptr39.9, ptr noundef nonnull %add.ptr42.9, i32 noundef 78) #6, !dbg !831
    #dbg_value(i32 10, !828, !DIExpression(), !830)
  call fastcc void @compute_M_and_VPV(ptr noundef %p, ptr noundef nonnull %Vdec, ptr noundef nonnull %add.ptr, ptr noundef nonnull %sk, ptr noundef nonnull %Mtmp, ptr noundef nonnull %A) #6, !dbg !836
  call fastcc void @compute_rhs(ptr noundef %p, ptr noundef nonnull %A, ptr noundef nonnull %t, ptr noundef nonnull %y) #6, !dbg !837
  call fastcc void @compute_A(ptr noundef %p, ptr noundef nonnull %Mtmp, ptr noundef nonnull %A) #6, !dbg !838
    #dbg_value(i32 0, !839, !DIExpression(), !841)
  br label %for.cond52, !dbg !842

for.cond52:                                       ; preds = %for.body55.6, %for.body
  %i51.0 = phi i32 [ 0, %for.body ], [ %inc58.7, %for.body55.6 ], !dbg !843
    #dbg_value(i32 %i51.0, !839, !DIExpression(), !841)
  %0 = mul nuw nsw i32 %i51.0, 81, !dbg !844
  %sub = add nuw nsw i32 %0, 80, !dbg !847
  %arrayidx = getelementptr inbounds nuw [6480 x i8], ptr %A, i32 0, i32 %sub, !dbg !848
  store i8 0, ptr %arrayidx, align 1, !dbg !849
    #dbg_value(i32 %i51.0, !839, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !841)
    #dbg_value(i32 %i51.0, !839, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !841)
  %1 = mul nuw i32 %i51.0, 81, !dbg !844
  %sub.1 = add nuw i32 %1, 161, !dbg !847
  %arrayidx.1 = getelementptr inbounds nuw [6480 x i8], ptr %A, i32 0, i32 %sub.1, !dbg !848
  store i8 0, ptr %arrayidx.1, align 1, !dbg !849
    #dbg_value(i32 %i51.0, !839, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !841)
    #dbg_value(i32 %i51.0, !839, !DIExpression(DW_OP_constu, 2, DW_OP_or, DW_OP_stack_value), !841)
  %2 = mul nuw i32 %i51.0, 81, !dbg !844
  %sub.2 = add nuw i32 %2, 242, !dbg !847
  %arrayidx.2 = getelementptr inbounds nuw [6480 x i8], ptr %A, i32 0, i32 %sub.2, !dbg !848
  store i8 0, ptr %arrayidx.2, align 1, !dbg !849
    #dbg_value(i32 %i51.0, !839, !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value), !841)
    #dbg_value(i32 %i51.0, !839, !DIExpression(DW_OP_constu, 3, DW_OP_or, DW_OP_stack_value), !841)
  %3 = mul nuw i32 %i51.0, 81, !dbg !844
  %sub.3 = add nuw i32 %3, 323, !dbg !847
  %arrayidx.3 = getelementptr inbounds nuw [6480 x i8], ptr %A, i32 0, i32 %sub.3, !dbg !848
  store i8 0, ptr %arrayidx.3, align 1, !dbg !849
    #dbg_value(i32 %i51.0, !839, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !841)
    #dbg_value(i32 %i51.0, !839, !DIExpression(DW_OP_constu, 4, DW_OP_or, DW_OP_stack_value), !841)
  %4 = mul nuw i32 %i51.0, 81, !dbg !844
  %sub.4 = add nuw i32 %4, 404, !dbg !847
  %arrayidx.4 = getelementptr inbounds nuw [6480 x i8], ptr %A, i32 0, i32 %sub.4, !dbg !848
  store i8 0, ptr %arrayidx.4, align 1, !dbg !849
    #dbg_value(i32 %i51.0, !839, !DIExpression(DW_OP_plus_uconst, 5, DW_OP_stack_value), !841)
    #dbg_value(i32 %i51.0, !839, !DIExpression(DW_OP_constu, 5, DW_OP_or, DW_OP_stack_value), !841)
  %5 = mul nuw i32 %i51.0, 81, !dbg !844
  %sub.5 = add nuw i32 %5, 485, !dbg !847
  %arrayidx.5 = getelementptr inbounds nuw [6480 x i8], ptr %A, i32 0, i32 %sub.5, !dbg !848
  store i8 0, ptr %arrayidx.5, align 1, !dbg !849
    #dbg_value(i32 %i51.0, !839, !DIExpression(DW_OP_constu, 6, DW_OP_or, DW_OP_stack_value), !841)
  %exitcond1.6.not = icmp eq i32 %i51.0, 72, !dbg !850
  br i1 %exitcond1.6.not, label %for.end59, label %for.body55.6, !dbg !851

for.body55.6:                                     ; preds = %for.cond52
    #dbg_value(i32 %i51.0, !839, !DIExpression(DW_OP_constu, 6, DW_OP_or, DW_OP_stack_value), !841)
  %6 = mul nuw i32 %i51.0, 81, !dbg !844
  %sub.6 = add nuw i32 %6, 566, !dbg !847
  %arrayidx.6 = getelementptr inbounds nuw [6480 x i8], ptr %A, i32 0, i32 %sub.6, !dbg !848
  store i8 0, ptr %arrayidx.6, align 1, !dbg !849
    #dbg_value(i32 %i51.0, !839, !DIExpression(DW_OP_plus_uconst, 7, DW_OP_stack_value), !841)
    #dbg_value(i32 %i51.0, !839, !DIExpression(DW_OP_constu, 7, DW_OP_or, DW_OP_stack_value), !841)
  %7 = mul nuw i32 %i51.0, 81, !dbg !844
  %sub.7 = add nuw i32 %7, 647, !dbg !847
  %arrayidx.7 = getelementptr inbounds nuw [6480 x i8], ptr %A, i32 0, i32 %sub.7, !dbg !848
  store i8 0, ptr %arrayidx.7, align 1, !dbg !849
  %inc58.7 = add nuw nsw i32 %i51.0, 8, !dbg !852
    #dbg_value(i32 %inc58.7, !839, !DIExpression(), !841)
  br label %for.cond52, !dbg !853, !llvm.loop !854

for.end59:                                        ; preds = %for.cond52
  call fastcc void @decode(ptr noundef nonnull %add.ptr61, ptr noundef nonnull %r, i32 noundef 80) #6, !dbg !856
  %call67 = call i32 @pqmayo_MAYO_1_ref_sample_solution(ptr noundef %p, ptr noundef nonnull %A, ptr noundef nonnull %y, ptr noundef nonnull %r, ptr noundef nonnull %x, i32 noundef 10, i32 noundef 8, i32 noundef 78, i32 noundef 81) #6, !dbg !857
  %tobool.not = icmp eq i32 %call67, 0, !dbg !857
  br i1 %tobool.not, label %if.else, label %for.end76, !dbg !857

if.else:                                          ; preds = %for.end59
  %call70 = call ptr @memset(ptr noundef nonnull %Mtmp, i32 noundef 0, i32 noundef 3200) #8, !dbg !859
  %call72 = call ptr @memset(ptr noundef nonnull %A, i32 noundef 0, i32 noundef 6480) #8, !dbg !861
  %inc75 = add nuw nsw i32 %ctr.0, 1, !dbg !862
    #dbg_value(i32 %inc75, !815, !DIExpression(), !817)
  br label %for.cond, !dbg !863, !llvm.loop !864

for.end76:                                        ; preds = %for.end59, %for.cond
    #dbg_value(i32 0, !866, !DIExpression(), !868)
  br label %for.cond78, !dbg !869

for.cond78:                                       ; preds = %for.body81, %for.end76
  %i77.0 = phi i32 [ 0, %for.end76 ], [ %inc105, %for.body81 ], !dbg !870
    #dbg_value(i32 %i77.0, !866, !DIExpression(), !868)
  %exitcond3.not = icmp eq i32 %i77.0, 10, !dbg !871
  br i1 %exitcond3.not, label %for.end106, label %for.body81, !dbg !873

for.body81:                                       ; preds = %for.cond78
  %mul83 = mul nuw nsw i32 %i77.0, 78, !dbg !874
  %add.ptr84 = getelementptr inbounds nuw i8, ptr %Vdec, i32 %mul83, !dbg !876
    #dbg_value(ptr %add.ptr84, !877, !DIExpression(), !719)
  %add.ptr87 = getelementptr inbounds nuw i8, ptr %sk, i32 148200, !dbg !878
  %mul89 = shl nuw nsw i32 %i77.0, 3, !dbg !879
  %add.ptr90 = getelementptr inbounds nuw i8, ptr %x, i32 %mul89, !dbg !880
  call fastcc void @mat_mul(ptr noundef nonnull %add.ptr87, ptr noundef nonnull %add.ptr90, ptr noundef nonnull %Ox, i32 noundef 8, i32 noundef 78, i32 noundef 1) #6, !dbg !881
  %mul94 = mul nuw nsw i32 %i77.0, 86, !dbg !882
  %add.ptr95 = getelementptr inbounds nuw i8, ptr %s, i32 %mul94, !dbg !883
  call fastcc void @mat_add(ptr noundef nonnull %add.ptr84, ptr noundef nonnull %Ox, ptr noundef nonnull %add.ptr95, i32 noundef 78, i32 noundef 1) #6, !dbg !884
  %mul97 = mul nuw nsw i32 %i77.0, 86, !dbg !885
  %add.ptr98 = getelementptr inbounds nuw i8, ptr %s, i32 %mul97, !dbg !886
  %add.ptr99 = getelementptr inbounds nuw i8, ptr %add.ptr98, i32 78, !dbg !887
  %mul101 = shl nuw nsw i32 %i77.0, 3, !dbg !888
  %add.ptr102 = getelementptr inbounds nuw i8, ptr %x, i32 %mul101, !dbg !889
  %call103 = call ptr @memcpy(ptr noundef nonnull %add.ptr99, ptr noundef nonnull %add.ptr102, i32 noundef 8) #8, !dbg !890
  %inc105 = add nuw nsw i32 %i77.0, 1, !dbg !891
    #dbg_value(i32 %inc105, !866, !DIExpression(), !868)
  br label %for.cond78, !dbg !892, !llvm.loop !893

for.end106:                                       ; preds = %for.cond78
  call fastcc void @encode(ptr noundef nonnull %s, ptr noundef %sig, i32 noundef 860) #6, !dbg !895
  %add.ptr109 = getelementptr inbounds nuw i8, ptr %sig, i32 430, !dbg !896
  %call111 = call ptr @memcpy(ptr noundef nonnull %add.ptr109, ptr noundef nonnull %salt, i32 noundef 24) #8, !dbg !897
  store i32 454, ptr %siglen, align 4, !dbg !898
  br label %err, !dbg !899

err:                                              ; preds = %if.end, %entry, %for.end106
  %ret.0 = phi i32 [ %call, %for.end106 ], [ %call, %entry ], [ 1, %if.end ], !dbg !719
    #dbg_value(i32 %ret.0, !725, !DIExpression(), !719)
    #dbg_label(!900, !901)
  call void @mayo_secure_clear(ptr noundef nonnull %V, i32 noundef 430) #8, !dbg !902
  call void @mayo_secure_clear(ptr noundef nonnull %Vdec, i32 noundef 780) #8, !dbg !903
  call void @mayo_secure_clear(ptr noundef nonnull %A, i32 noundef 6480) #8, !dbg !904
  call void @mayo_secure_clear(ptr noundef nonnull %r, i32 noundef 81) #8, !dbg !905
  %add.ptr118 = getelementptr inbounds nuw i8, ptr %sk, i32 148200, !dbg !906
  call void @mayo_secure_clear(ptr noundef nonnull %add.ptr118, i32 noundef 624) #8, !dbg !907
  call void @mayo_secure_clear(ptr noundef nonnull %sk, i32 noundef 148824) #8, !dbg !908
  call void @mayo_secure_clear(ptr noundef nonnull %Ox, i32 noundef 78) #8, !dbg !909
  call void @mayo_secure_clear(ptr noundef nonnull %tmp, i32 noundef 81) #8, !dbg !910
  call void @mayo_secure_clear(ptr noundef nonnull %Mtmp, i32 noundef 3200) #8, !dbg !911
  ret i32 %ret.0, !dbg !912
}

; Function Attrs: nounwind
define internal fastcc void @compute_M_and_VPV(ptr noundef %p, ptr noundef %Vdec, ptr noundef %L, ptr noundef %P1, ptr noundef %VL, ptr noundef %VP1V) unnamed_addr #0 !dbg !913 {
entry:
  %Pv = alloca [3900 x i64], align 8
    #dbg_value(ptr %p, !916, !DIExpression(), !917)
    #dbg_value(ptr %Vdec, !918, !DIExpression(), !917)
    #dbg_value(ptr %L, !919, !DIExpression(), !917)
    #dbg_value(ptr %P1, !920, !DIExpression(), !917)
    #dbg_value(ptr %VL, !921, !DIExpression(), !917)
    #dbg_value(ptr %VP1V, !922, !DIExpression(), !917)
    #dbg_value(i32 10, !923, !DIExpression(), !917)
    #dbg_value(i32 78, !924, !DIExpression(), !917)
    #dbg_value(i32 8, !925, !DIExpression(), !917)
  call fastcc void @mul_add_mat_x_m_mat(i32 noundef 5, ptr noundef %Vdec, ptr noundef %L, ptr noundef %VL, i32 noundef 10, i32 noundef 78, i32 noundef 8) #6, !dbg !926
    #dbg_declare(ptr %Pv, !927, !DIExpression(), !931)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(31200) %Pv, i8 0, i32 31200, i1 false), !dbg !931
  call fastcc void @P1_times_Vt(ptr noundef %p, ptr noundef %P1, ptr noundef %Vdec, ptr noundef nonnull %Pv) #6, !dbg !932
  call fastcc void @mul_add_mat_x_m_mat(i32 noundef 5, ptr noundef %Vdec, ptr noundef nonnull %Pv, ptr noundef %VP1V, i32 noundef 10, i32 noundef 78, i32 noundef 10) #6, !dbg !933
  ret void, !dbg !934
}

; Function Attrs: nounwind
define internal fastcc void @compute_rhs(ptr noundef %p, ptr noundef %vPv, ptr noundef %t, ptr noundef %y) unnamed_addr #0 !dbg !935 {
entry:
  %temp = alloca [5 x i64], align 8
    #dbg_value(ptr %p, !938, !DIExpression(), !939)
    #dbg_value(ptr %vPv, !940, !DIExpression(), !939)
    #dbg_value(ptr %t, !941, !DIExpression(), !939)
    #dbg_value(ptr %y, !942, !DIExpression(), !939)
    #dbg_value(i32 52, !943, !DIExpression(), !939)
    #dbg_value(i32 5, !945, !DIExpression(), !939)
    #dbg_value(i64 1, !946, !DIExpression(), !949)
    #dbg_value(i64 72057594037927936, !946, !DIExpression(), !949)
    #dbg_value(i64 72057594037927935, !946, !DIExpression(), !949)
    #dbg_value(i32 0, !950, !DIExpression(), !952)
  br label %for.cond, !dbg !953

for.cond:                                         ; preds = %for.body.4, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc.7, %for.body.4 ], !dbg !954
    #dbg_value(i32 %i.0, !950, !DIExpression(), !952)
  %.idx7 = mul nuw nsw i32 %i.0, 40, !dbg !955
  %0 = getelementptr inbounds nuw i8, ptr %vPv, i32 %.idx7, !dbg !955
  %arrayidx = getelementptr inbounds nuw i8, ptr %0, i32 32, !dbg !955
  %1 = load i64, ptr %arrayidx, align 8, !dbg !958
  %and = and i64 %1, 72057594037927935, !dbg !958
  store i64 %and, ptr %arrayidx, align 8, !dbg !958
    #dbg_value(i32 %i.0, !950, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !952)
    #dbg_value(i32 %i.0, !950, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !952)
  %2 = mul nuw i32 %i.0, 40, !dbg !955
  %.idx7.1 = or disjoint i32 %2, 40, !dbg !955
  %3 = getelementptr inbounds nuw i8, ptr %vPv, i32 %.idx7.1, !dbg !955
  %arrayidx.1 = getelementptr inbounds nuw i8, ptr %3, i32 32, !dbg !955
  %4 = load i64, ptr %arrayidx.1, align 8, !dbg !958
  %and.1 = and i64 %4, 72057594037927935, !dbg !958
  store i64 %and.1, ptr %arrayidx.1, align 8, !dbg !958
    #dbg_value(i32 %i.0, !950, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !952)
    #dbg_value(i32 %i.0, !950, !DIExpression(DW_OP_constu, 2, DW_OP_or, DW_OP_stack_value), !952)
  %5 = mul nuw i32 %i.0, 40, !dbg !955
  %6 = getelementptr i8, ptr %vPv, i32 %5, !dbg !955
  %arrayidx.2 = getelementptr i8, ptr %6, i32 112, !dbg !955
  %7 = load i64, ptr %arrayidx.2, align 8, !dbg !958
  %and.2 = and i64 %7, 72057594037927935, !dbg !958
  store i64 %and.2, ptr %arrayidx.2, align 8, !dbg !958
    #dbg_value(i32 %i.0, !950, !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value), !952)
    #dbg_value(i32 %i.0, !950, !DIExpression(DW_OP_constu, 3, DW_OP_or, DW_OP_stack_value), !952)
  %8 = mul nuw i32 %i.0, 40, !dbg !955
  %9 = getelementptr i8, ptr %vPv, i32 %8, !dbg !955
  %arrayidx.3 = getelementptr i8, ptr %9, i32 152, !dbg !955
  %10 = load i64, ptr %arrayidx.3, align 8, !dbg !958
  %and.3 = and i64 %10, 72057594037927935, !dbg !958
  store i64 %and.3, ptr %arrayidx.3, align 8, !dbg !958
    #dbg_value(i32 %i.0, !950, !DIExpression(DW_OP_constu, 4, DW_OP_or, DW_OP_stack_value), !952)
  %exitcond.4.not = icmp eq i32 %i.0, 96, !dbg !959
  br i1 %exitcond.4.not, label %for.end, label %for.body.4, !dbg !960

for.body.4:                                       ; preds = %for.cond
    #dbg_value(i32 %i.0, !950, !DIExpression(DW_OP_constu, 4, DW_OP_or, DW_OP_stack_value), !952)
  %11 = mul nuw i32 %i.0, 40, !dbg !955
  %12 = getelementptr i8, ptr %vPv, i32 %11, !dbg !955
  %arrayidx.4 = getelementptr i8, ptr %12, i32 192, !dbg !955
  %13 = load i64, ptr %arrayidx.4, align 8, !dbg !958
  %and.4 = and i64 %13, 72057594037927935, !dbg !958
  store i64 %and.4, ptr %arrayidx.4, align 8, !dbg !958
    #dbg_value(i32 %i.0, !950, !DIExpression(DW_OP_plus_uconst, 5, DW_OP_stack_value), !952)
    #dbg_value(i32 %i.0, !950, !DIExpression(DW_OP_constu, 5, DW_OP_or, DW_OP_stack_value), !952)
  %14 = mul nuw i32 %i.0, 40, !dbg !955
  %15 = getelementptr i8, ptr %vPv, i32 %14, !dbg !955
  %arrayidx.5 = getelementptr i8, ptr %15, i32 232, !dbg !955
  %16 = load i64, ptr %arrayidx.5, align 8, !dbg !958
  %and.5 = and i64 %16, 72057594037927935, !dbg !958
  store i64 %and.5, ptr %arrayidx.5, align 8, !dbg !958
    #dbg_value(i32 %i.0, !950, !DIExpression(DW_OP_plus_uconst, 6, DW_OP_stack_value), !952)
    #dbg_value(i32 %i.0, !950, !DIExpression(DW_OP_constu, 6, DW_OP_or, DW_OP_stack_value), !952)
  %17 = mul nuw i32 %i.0, 40, !dbg !955
  %18 = getelementptr i8, ptr %vPv, i32 %17, !dbg !955
  %arrayidx.6 = getelementptr i8, ptr %18, i32 272, !dbg !955
  %19 = load i64, ptr %arrayidx.6, align 8, !dbg !958
  %and.6 = and i64 %19, 72057594037927935, !dbg !958
  store i64 %and.6, ptr %arrayidx.6, align 8, !dbg !958
    #dbg_value(i32 %i.0, !950, !DIExpression(DW_OP_plus_uconst, 7, DW_OP_stack_value), !952)
    #dbg_value(i32 %i.0, !950, !DIExpression(DW_OP_constu, 7, DW_OP_or, DW_OP_stack_value), !952)
  %20 = mul nuw i32 %i.0, 40, !dbg !955
  %21 = getelementptr i8, ptr %vPv, i32 %20, !dbg !955
  %arrayidx.7 = getelementptr i8, ptr %21, i32 312, !dbg !955
  %22 = load i64, ptr %arrayidx.7, align 8, !dbg !958
  %and.7 = and i64 %22, 72057594037927935, !dbg !958
  store i64 %and.7, ptr %arrayidx.7, align 8, !dbg !958
  %inc.7 = add nuw nsw i32 %i.0, 8, !dbg !961
    #dbg_value(i32 %inc.7, !950, !DIExpression(), !952)
  br label %for.cond, !dbg !962, !llvm.loop !963

for.end:                                          ; preds = %for.cond
    #dbg_declare(ptr %temp, !965, !DIExpression(), !966)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %temp, i8 0, i32 40, i1 false), !dbg !966
    #dbg_value(ptr %temp, !967, !DIExpression(), !939)
    #dbg_value(i32 9, !968, !DIExpression(), !970)
  br label %for.cond3, !dbg !971

for.cond3:                                        ; preds = %for.inc77, %for.end
  %i2.0 = phi i32 [ 9, %for.end ], [ %dec78, %for.inc77 ], !dbg !972
    #dbg_value(i32 %i2.0, !968, !DIExpression(), !970)
  %cmp4 = icmp sgt i32 %i2.0, -1, !dbg !973
  br i1 %cmp4, label %for.cond6, label %for.cond81, !dbg !975

for.cond6:                                        ; preds = %for.cond3, %for.body8
  %j.0 = phi i32 [ %inc75, %for.body8 ], [ %i2.0, %for.cond3 ], !dbg !976
    #dbg_value(i32 %j.0, !979, !DIExpression(), !980)
  %exitcond10.not = icmp eq i32 %j.0, 10, !dbg !981
  br i1 %exitcond10.not, label %for.inc77, label %for.body8, !dbg !983

for.body8:                                        ; preds = %for.cond6
  %arrayidx9 = getelementptr inbounds nuw i8, ptr %temp, i32 32, !dbg !984
  %23 = load i64, ptr %arrayidx9, align 8, !dbg !984
  %shr = lshr i64 %23, 52, !dbg !986
  %rem.lhs.trunc = trunc i64 %shr to i8, !dbg !987
    #dbg_value(i8 %rem1, !988, !DIExpression(), !989)
  %arrayidx10 = getelementptr inbounds nuw i8, ptr %temp, i32 32, !dbg !990
  %shl11 = shl i64 %23, 4, !dbg !991
  store i64 %shl11, ptr %arrayidx10, align 8, !dbg !991
    #dbg_value(i32 3, !992, !DIExpression(), !994)
    #dbg_value(i32 3, !992, !DIExpression(), !994)
  %arrayidx16 = getelementptr inbounds nuw i8, ptr %temp, i32 24, !dbg !995
  %24 = load i64, ptr %arrayidx16, align 8, !dbg !995
  %shr17 = lshr i64 %24, 60, !dbg !998
  %arrayidx19 = getelementptr inbounds nuw i8, ptr %temp, i32 32, !dbg !999
  %25 = load i64, ptr %arrayidx19, align 8, !dbg !1000
  %xor = xor i64 %25, %shr17, !dbg !1000
  store i64 %xor, ptr %arrayidx19, align 8, !dbg !1000
  %arrayidx20 = getelementptr inbounds nuw i8, ptr %temp, i32 24, !dbg !1001
  %26 = load i64, ptr %arrayidx20, align 8, !dbg !1002
  %shl21 = shl i64 %26, 4, !dbg !1002
  store i64 %shl21, ptr %arrayidx20, align 8, !dbg !1002
    #dbg_value(i32 2, !992, !DIExpression(), !994)
  %arrayidx16.1 = getelementptr inbounds nuw i8, ptr %temp, i32 16, !dbg !995
  %27 = load i64, ptr %arrayidx16.1, align 8, !dbg !995
  %shr17.1 = lshr i64 %27, 60, !dbg !998
  %arrayidx19.1 = getelementptr inbounds nuw i8, ptr %temp, i32 24, !dbg !999
  %28 = load i64, ptr %arrayidx19.1, align 8, !dbg !1000
  %xor.1 = xor i64 %28, %shr17.1, !dbg !1000
  store i64 %xor.1, ptr %arrayidx19.1, align 8, !dbg !1000
  %arrayidx20.1 = getelementptr inbounds nuw i8, ptr %temp, i32 16, !dbg !1001
  %29 = load i64, ptr %arrayidx20.1, align 8, !dbg !1002
  %shl21.1 = shl i64 %29, 4, !dbg !1002
  store i64 %shl21.1, ptr %arrayidx20.1, align 8, !dbg !1002
    #dbg_value(i32 1, !992, !DIExpression(), !994)
  %arrayidx16.2 = getelementptr inbounds nuw i8, ptr %temp, i32 8, !dbg !995
  %30 = load i64, ptr %arrayidx16.2, align 8, !dbg !995
  %shr17.2 = lshr i64 %30, 60, !dbg !998
  %arrayidx19.2 = getelementptr inbounds nuw i8, ptr %temp, i32 16, !dbg !999
  %31 = load i64, ptr %arrayidx19.2, align 8, !dbg !1000
  %xor.2 = xor i64 %31, %shr17.2, !dbg !1000
  store i64 %xor.2, ptr %arrayidx19.2, align 8, !dbg !1000
  %arrayidx20.2 = getelementptr inbounds nuw i8, ptr %temp, i32 8, !dbg !1001
  %32 = load i64, ptr %arrayidx20.2, align 8, !dbg !1002
  %shl21.2 = shl i64 %32, 4, !dbg !1002
  store i64 %shl21.2, ptr %arrayidx20.2, align 8, !dbg !1002
    #dbg_value(i32 0, !992, !DIExpression(), !994)
  %33 = load i64, ptr %temp, align 8, !dbg !995
  %shr17.3 = lshr i64 %33, 60, !dbg !998
  %arrayidx19.3 = getelementptr inbounds nuw i8, ptr %temp, i32 8, !dbg !999
  %34 = load i64, ptr %arrayidx19.3, align 8, !dbg !1000
  %xor.3 = xor i64 %34, %shr17.3, !dbg !1000
  store i64 %xor.3, ptr %arrayidx19.3, align 8, !dbg !1000
  %shl21.3 = shl i64 %33, 4, !dbg !1002
  store i64 %shl21.3, ptr %temp, align 8, !dbg !1002
    #dbg_value(i32 -1, !992, !DIExpression(), !994)
  %rem1 = and i8 %rem.lhs.trunc, 15, !dbg !987
    #dbg_value(i32 0, !1003, !DIExpression(), !1005)
  %call = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %rem1, i8 noundef zeroext 8) #6, !dbg !1006
  %35 = load i8, ptr %temp, align 1, !dbg !1011
  %xor356 = xor i8 %35, %call, !dbg !1011
  store i8 %xor356, ptr %temp, align 1, !dbg !1011
    #dbg_value(i32 1, !1003, !DIExpression(), !1005)
  %call38.1 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %rem1, i8 noundef zeroext 1) #6, !dbg !1012
  %shl40.1 = shl nuw i8 %call38.1, 4, !dbg !1014
  %36 = load i8, ptr %temp, align 1, !dbg !1015
  %xor44.1 = xor i8 %shl40.1, %36, !dbg !1015
  store i8 %xor44.1, ptr %temp, align 1, !dbg !1015
    #dbg_value(i32 2, !1003, !DIExpression(), !1005)
  %call.2 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %rem1, i8 noundef zeroext 1) #6, !dbg !1006
  %arrayidx33.2 = getelementptr inbounds nuw i8, ptr %temp, i32 1, !dbg !1016
  %37 = load i8, ptr %arrayidx33.2, align 1, !dbg !1011
  %xor356.2 = xor i8 %37, %call.2, !dbg !1011
  store i8 %xor356.2, ptr %arrayidx33.2, align 1, !dbg !1011
    #dbg_value(i32 3, !1003, !DIExpression(), !1005)
  %call38.3 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %rem1, i8 noundef zeroext 0) #6, !dbg !1012
  %shl40.3 = shl nuw i8 %call38.3, 4, !dbg !1014
  %arrayidx42.3 = getelementptr inbounds nuw i8, ptr %temp, i32 1, !dbg !1017
  %38 = load i8, ptr %arrayidx42.3, align 1, !dbg !1015
  %xor44.3 = xor i8 %shl40.3, %38, !dbg !1015
  store i8 %xor44.3, ptr %arrayidx42.3, align 1, !dbg !1015
    #dbg_value(i32 4, !1003, !DIExpression(), !1005)
    #dbg_value(i32 0, !1018, !DIExpression(), !1020)
  %mul54 = mul nuw nsw i32 %i2.0, 10, !dbg !1021
  %add55 = add nuw nsw i32 %mul54, %j.0, !dbg !1024
  %.idx = mul nuw nsw i32 %add55, 40, !dbg !1025
  %39 = getelementptr i8, ptr %vPv, i32 %.idx, !dbg !1025
  %40 = load i64, ptr %39, align 8, !dbg !1025
  %cmp59.not = icmp eq i32 %i2.0, %j.0, !dbg !1026
  %mul62 = mul nuw nsw i32 %j.0, 10, !dbg !1027
  %add63 = add nuw nsw i32 %mul62, %i2.0, !dbg !1028
  %.idx4 = mul nuw nsw i32 %add63, 40, !dbg !1029
  %41 = getelementptr i8, ptr %vPv, i32 %.idx4, !dbg !1029
  %42 = load i64, ptr %41, align 8, !dbg !1029
  %mul67 = select i1 %cmp59.not, i64 0, i64 %42, !dbg !1030
  %xor68 = xor i64 %40, %mul67, !dbg !1031
  %43 = load i64, ptr %temp, align 8, !dbg !1032
  %xor70 = xor i64 %43, %xor68, !dbg !1032
  store i64 %xor70, ptr %temp, align 8, !dbg !1032
    #dbg_value(i32 1, !1018, !DIExpression(), !1020)
  %mul54.1 = mul nuw nsw i32 %i2.0, 10, !dbg !1021
  %add55.1 = add nuw nsw i32 %mul54.1, %j.0, !dbg !1024
  %.idx.1 = mul nuw nsw i32 %add55.1, 40, !dbg !1025
  %44 = getelementptr i8, ptr %vPv, i32 %.idx.1, !dbg !1025
  %arrayidx58.1 = getelementptr i8, ptr %44, i32 8, !dbg !1025
  %45 = load i64, ptr %arrayidx58.1, align 8, !dbg !1025
  %cmp59.not.1 = icmp eq i32 %i2.0, %j.0, !dbg !1026
  %mul62.1 = mul nuw nsw i32 %j.0, 10, !dbg !1027
  %add63.1 = add nuw nsw i32 %mul62.1, %i2.0, !dbg !1028
  %.idx4.1 = mul nuw nsw i32 %add63.1, 40, !dbg !1029
  %46 = getelementptr i8, ptr %vPv, i32 %.idx4.1, !dbg !1029
  %arrayidx66.1 = getelementptr i8, ptr %46, i32 8, !dbg !1029
  %47 = load i64, ptr %arrayidx66.1, align 8, !dbg !1029
  %mul67.1 = select i1 %cmp59.not.1, i64 0, i64 %47, !dbg !1030
  %xor68.1 = xor i64 %45, %mul67.1, !dbg !1031
  %arrayidx69.1 = getelementptr inbounds nuw i8, ptr %temp, i32 8, !dbg !1033
  %48 = load i64, ptr %arrayidx69.1, align 8, !dbg !1032
  %xor70.1 = xor i64 %48, %xor68.1, !dbg !1032
  store i64 %xor70.1, ptr %arrayidx69.1, align 8, !dbg !1032
    #dbg_value(i32 2, !1018, !DIExpression(), !1020)
  %mul54.2 = mul nuw nsw i32 %i2.0, 10, !dbg !1021
  %add55.2 = add nuw nsw i32 %mul54.2, %j.0, !dbg !1024
  %.idx.2 = mul nuw nsw i32 %add55.2, 40, !dbg !1025
  %49 = getelementptr i8, ptr %vPv, i32 %.idx.2, !dbg !1025
  %arrayidx58.2 = getelementptr i8, ptr %49, i32 16, !dbg !1025
  %50 = load i64, ptr %arrayidx58.2, align 8, !dbg !1025
  %cmp59.not.2 = icmp eq i32 %i2.0, %j.0, !dbg !1026
  %mul62.2 = mul nuw nsw i32 %j.0, 10, !dbg !1027
  %add63.2 = add nuw nsw i32 %mul62.2, %i2.0, !dbg !1028
  %.idx4.2 = mul nuw nsw i32 %add63.2, 40, !dbg !1029
  %51 = getelementptr i8, ptr %vPv, i32 %.idx4.2, !dbg !1029
  %arrayidx66.2 = getelementptr i8, ptr %51, i32 16, !dbg !1029
  %52 = load i64, ptr %arrayidx66.2, align 8, !dbg !1029
  %mul67.2 = select i1 %cmp59.not.2, i64 0, i64 %52, !dbg !1030
  %xor68.2 = xor i64 %50, %mul67.2, !dbg !1031
  %arrayidx69.2 = getelementptr inbounds nuw i8, ptr %temp, i32 16, !dbg !1033
  %53 = load i64, ptr %arrayidx69.2, align 8, !dbg !1032
  %xor70.2 = xor i64 %53, %xor68.2, !dbg !1032
  store i64 %xor70.2, ptr %arrayidx69.2, align 8, !dbg !1032
    #dbg_value(i32 3, !1018, !DIExpression(), !1020)
  %mul54.3 = mul nuw nsw i32 %i2.0, 10, !dbg !1021
  %add55.3 = add nuw nsw i32 %mul54.3, %j.0, !dbg !1024
  %.idx.3 = mul nuw nsw i32 %add55.3, 40, !dbg !1025
  %54 = getelementptr i8, ptr %vPv, i32 %.idx.3, !dbg !1025
  %arrayidx58.3 = getelementptr i8, ptr %54, i32 24, !dbg !1025
  %55 = load i64, ptr %arrayidx58.3, align 8, !dbg !1025
  %cmp59.not.3 = icmp eq i32 %i2.0, %j.0, !dbg !1026
  %mul62.3 = mul nuw nsw i32 %j.0, 10, !dbg !1027
  %add63.3 = add nuw nsw i32 %mul62.3, %i2.0, !dbg !1028
  %.idx4.3 = mul nuw nsw i32 %add63.3, 40, !dbg !1029
  %56 = getelementptr i8, ptr %vPv, i32 %.idx4.3, !dbg !1029
  %arrayidx66.3 = getelementptr i8, ptr %56, i32 24, !dbg !1029
  %57 = load i64, ptr %arrayidx66.3, align 8, !dbg !1029
  %mul67.3 = select i1 %cmp59.not.3, i64 0, i64 %57, !dbg !1030
  %xor68.3 = xor i64 %55, %mul67.3, !dbg !1031
  %arrayidx69.3 = getelementptr inbounds nuw i8, ptr %temp, i32 24, !dbg !1033
  %58 = load i64, ptr %arrayidx69.3, align 8, !dbg !1032
  %xor70.3 = xor i64 %58, %xor68.3, !dbg !1032
  store i64 %xor70.3, ptr %arrayidx69.3, align 8, !dbg !1032
    #dbg_value(i32 4, !1018, !DIExpression(), !1020)
  %mul54.4 = mul nuw nsw i32 %i2.0, 10, !dbg !1021
  %add55.4 = add nuw nsw i32 %mul54.4, %j.0, !dbg !1024
  %.idx.4 = mul nuw nsw i32 %add55.4, 40, !dbg !1025
  %59 = getelementptr i8, ptr %vPv, i32 %.idx.4, !dbg !1025
  %arrayidx58.4 = getelementptr i8, ptr %59, i32 32, !dbg !1025
  %60 = load i64, ptr %arrayidx58.4, align 8, !dbg !1025
  %cmp59.not.4 = icmp eq i32 %i2.0, %j.0, !dbg !1026
  %mul62.4 = mul nuw nsw i32 %j.0, 10, !dbg !1027
  %add63.4 = add nuw nsw i32 %mul62.4, %i2.0, !dbg !1028
  %.idx4.4 = mul nuw nsw i32 %add63.4, 40, !dbg !1029
  %61 = getelementptr i8, ptr %vPv, i32 %.idx4.4, !dbg !1029
  %arrayidx66.4 = getelementptr i8, ptr %61, i32 32, !dbg !1029
  %62 = load i64, ptr %arrayidx66.4, align 8, !dbg !1029
  %mul67.4 = select i1 %cmp59.not.4, i64 0, i64 %62, !dbg !1030
  %xor68.4 = xor i64 %60, %mul67.4, !dbg !1031
  %arrayidx69.4 = getelementptr inbounds nuw i8, ptr %temp, i32 32, !dbg !1033
  %63 = load i64, ptr %arrayidx69.4, align 8, !dbg !1032
  %xor70.4 = xor i64 %63, %xor68.4, !dbg !1032
  store i64 %xor70.4, ptr %arrayidx69.4, align 8, !dbg !1032
    #dbg_value(i32 5, !1018, !DIExpression(), !1020)
  %inc75 = add nuw nsw i32 %j.0, 1, !dbg !1034
    #dbg_value(i32 %inc75, !979, !DIExpression(), !980)
  br label %for.cond6, !dbg !1035, !llvm.loop !1036

for.inc77:                                        ; preds = %for.cond6
  %dec78 = add nsw i32 %i2.0, -1, !dbg !1038
    #dbg_value(i32 %dec78, !968, !DIExpression(), !970)
  br label %for.cond3, !dbg !1039, !llvm.loop !1040

for.cond81:                                       ; preds = %for.cond3, %for.body84.7
  %i80.0 = phi i32 [ %add106.7, %for.body84.7 ], [ 0, %for.cond3 ], !dbg !1042
    #dbg_value(i32 %i80.0, !1044, !DIExpression(), !1045)
  %arrayidx85 = getelementptr inbounds nuw i8, ptr %t, i32 %i80.0, !dbg !1046
  %64 = load i8, ptr %arrayidx85, align 1, !dbg !1046
  %div87 = lshr exact i32 %i80.0, 1, !dbg !1049
  %arrayidx88 = getelementptr inbounds nuw i8, ptr %temp, i32 %div87, !dbg !1050
  %65 = load i8, ptr %arrayidx88, align 1, !dbg !1050
  %66 = and i8 %65, 15, !dbg !1051
  %xor912 = xor i8 %64, %66, !dbg !1052
  %arrayidx93 = getelementptr inbounds nuw i8, ptr %y, i32 %i80.0, !dbg !1053
  store i8 %xor912, ptr %arrayidx93, align 1, !dbg !1054
  %add94 = or disjoint i32 %i80.0, 1, !dbg !1055
  %arrayidx95 = getelementptr inbounds nuw i8, ptr %t, i32 %add94, !dbg !1056
  %67 = load i8, ptr %arrayidx95, align 1, !dbg !1056
  %68 = lshr i8 %65, 4, !dbg !1057
  %xor1013 = xor i8 %67, %68, !dbg !1058
  %add103 = or disjoint i32 %i80.0, 1, !dbg !1059
  %arrayidx104 = getelementptr inbounds nuw i8, ptr %y, i32 %add103, !dbg !1060
  store i8 %xor1013, ptr %arrayidx104, align 1, !dbg !1061
    #dbg_value(i32 %i80.0, !1044, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !1045)
  %add106 = or disjoint i32 %i80.0, 2, !dbg !1062
    #dbg_value(i32 %add106, !1044, !DIExpression(), !1045)
  %arrayidx85.1 = getelementptr inbounds nuw i8, ptr %t, i32 %add106, !dbg !1046
  %69 = load i8, ptr %arrayidx85.1, align 1, !dbg !1046
  %div87.1 = lshr exact i32 %add106, 1, !dbg !1049
  %arrayidx88.1 = getelementptr inbounds nuw i8, ptr %temp, i32 %div87.1, !dbg !1050
  %70 = load i8, ptr %arrayidx88.1, align 1, !dbg !1050
  %71 = and i8 %70, 15, !dbg !1051
  %xor912.1 = xor i8 %69, %71, !dbg !1052
  %arrayidx93.1 = getelementptr inbounds nuw i8, ptr %y, i32 %add106, !dbg !1053
  store i8 %xor912.1, ptr %arrayidx93.1, align 1, !dbg !1054
  %add94.1 = or disjoint i32 %i80.0, 3, !dbg !1055
  %arrayidx95.1 = getelementptr inbounds nuw i8, ptr %t, i32 %add94.1, !dbg !1056
  %72 = load i8, ptr %arrayidx95.1, align 1, !dbg !1056
  %73 = lshr i8 %70, 4, !dbg !1057
  %xor1013.1 = xor i8 %72, %73, !dbg !1058
  %add103.1 = or disjoint i32 %i80.0, 3, !dbg !1059
  %arrayidx104.1 = getelementptr inbounds nuw i8, ptr %y, i32 %add103.1, !dbg !1060
  store i8 %xor1013.1, ptr %arrayidx104.1, align 1, !dbg !1061
    #dbg_value(i32 %i80.0, !1044, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !1045)
  %add106.1 = or disjoint i32 %i80.0, 4, !dbg !1062
    #dbg_value(i32 %add106.1, !1044, !DIExpression(), !1045)
  %arrayidx85.2 = getelementptr inbounds nuw i8, ptr %t, i32 %add106.1, !dbg !1046
  %74 = load i8, ptr %arrayidx85.2, align 1, !dbg !1046
  %div87.2 = lshr exact i32 %add106.1, 1, !dbg !1049
  %arrayidx88.2 = getelementptr inbounds nuw i8, ptr %temp, i32 %div87.2, !dbg !1050
  %75 = load i8, ptr %arrayidx88.2, align 1, !dbg !1050
  %76 = and i8 %75, 15, !dbg !1051
  %xor912.2 = xor i8 %74, %76, !dbg !1052
  %arrayidx93.2 = getelementptr inbounds nuw i8, ptr %y, i32 %add106.1, !dbg !1053
  store i8 %xor912.2, ptr %arrayidx93.2, align 1, !dbg !1054
  %add94.2 = or disjoint i32 %i80.0, 5, !dbg !1055
  %arrayidx95.2 = getelementptr inbounds nuw i8, ptr %t, i32 %add94.2, !dbg !1056
  %77 = load i8, ptr %arrayidx95.2, align 1, !dbg !1056
  %78 = lshr i8 %75, 4, !dbg !1057
  %xor1013.2 = xor i8 %77, %78, !dbg !1058
  %add103.2 = or disjoint i32 %i80.0, 5, !dbg !1059
  %arrayidx104.2 = getelementptr inbounds nuw i8, ptr %y, i32 %add103.2, !dbg !1060
  store i8 %xor1013.2, ptr %arrayidx104.2, align 1, !dbg !1061
    #dbg_value(i32 %i80.0, !1044, !DIExpression(DW_OP_plus_uconst, 6, DW_OP_stack_value), !1045)
  %add106.2 = or disjoint i32 %i80.0, 6, !dbg !1062
    #dbg_value(i32 %add106.2, !1044, !DIExpression(), !1045)
  %arrayidx85.3 = getelementptr inbounds nuw i8, ptr %t, i32 %add106.2, !dbg !1046
  %79 = load i8, ptr %arrayidx85.3, align 1, !dbg !1046
  %div87.3 = lshr exact i32 %add106.2, 1, !dbg !1049
  %arrayidx88.3 = getelementptr inbounds nuw i8, ptr %temp, i32 %div87.3, !dbg !1050
  %80 = load i8, ptr %arrayidx88.3, align 1, !dbg !1050
  %81 = and i8 %80, 15, !dbg !1051
  %xor912.3 = xor i8 %79, %81, !dbg !1052
  %arrayidx93.3 = getelementptr inbounds nuw i8, ptr %y, i32 %add106.2, !dbg !1053
  store i8 %xor912.3, ptr %arrayidx93.3, align 1, !dbg !1054
  %add94.3 = or disjoint i32 %i80.0, 7, !dbg !1055
  %arrayidx95.3 = getelementptr inbounds nuw i8, ptr %t, i32 %add94.3, !dbg !1056
  %82 = load i8, ptr %arrayidx95.3, align 1, !dbg !1056
  %83 = lshr i8 %80, 4, !dbg !1057
  %xor1013.3 = xor i8 %82, %83, !dbg !1058
  %add103.3 = or disjoint i32 %i80.0, 7, !dbg !1059
  %arrayidx104.3 = getelementptr inbounds nuw i8, ptr %y, i32 %add103.3, !dbg !1060
  store i8 %xor1013.3, ptr %arrayidx104.3, align 1, !dbg !1061
    #dbg_value(i32 %i80.0, !1044, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !1045)
  %add106.3 = or disjoint i32 %i80.0, 8, !dbg !1062
    #dbg_value(i32 %add106.3, !1044, !DIExpression(), !1045)
  %arrayidx85.4 = getelementptr inbounds nuw i8, ptr %t, i32 %add106.3, !dbg !1046
  %84 = load i8, ptr %arrayidx85.4, align 1, !dbg !1046
  %div87.4 = lshr exact i32 %add106.3, 1, !dbg !1049
  %arrayidx88.4 = getelementptr inbounds nuw i8, ptr %temp, i32 %div87.4, !dbg !1050
  %85 = load i8, ptr %arrayidx88.4, align 1, !dbg !1050
  %86 = and i8 %85, 15, !dbg !1051
  %xor912.4 = xor i8 %84, %86, !dbg !1052
  %arrayidx93.4 = getelementptr inbounds nuw i8, ptr %y, i32 %add106.3, !dbg !1053
  store i8 %xor912.4, ptr %arrayidx93.4, align 1, !dbg !1054
  %add94.4 = or disjoint i32 %i80.0, 9, !dbg !1055
  %arrayidx95.4 = getelementptr inbounds nuw i8, ptr %t, i32 %add94.4, !dbg !1056
  %87 = load i8, ptr %arrayidx95.4, align 1, !dbg !1056
  %88 = lshr i8 %85, 4, !dbg !1057
  %xor1013.4 = xor i8 %87, %88, !dbg !1058
  %add103.4 = or disjoint i32 %i80.0, 9, !dbg !1059
  %arrayidx104.4 = getelementptr inbounds nuw i8, ptr %y, i32 %add103.4, !dbg !1060
  store i8 %xor1013.4, ptr %arrayidx104.4, align 1, !dbg !1061
    #dbg_value(i32 %i80.0, !1044, !DIExpression(DW_OP_plus_uconst, 10, DW_OP_stack_value), !1045)
  %add106.4 = or disjoint i32 %i80.0, 10, !dbg !1062
    #dbg_value(i32 %add106.4, !1044, !DIExpression(), !1045)
  %arrayidx85.5 = getelementptr inbounds nuw i8, ptr %t, i32 %add106.4, !dbg !1046
  %89 = load i8, ptr %arrayidx85.5, align 1, !dbg !1046
  %div87.5 = lshr exact i32 %add106.4, 1, !dbg !1049
  %arrayidx88.5 = getelementptr inbounds nuw i8, ptr %temp, i32 %div87.5, !dbg !1050
  %90 = load i8, ptr %arrayidx88.5, align 1, !dbg !1050
  %91 = and i8 %90, 15, !dbg !1051
  %xor912.5 = xor i8 %89, %91, !dbg !1052
  %arrayidx93.5 = getelementptr inbounds nuw i8, ptr %y, i32 %add106.4, !dbg !1053
  store i8 %xor912.5, ptr %arrayidx93.5, align 1, !dbg !1054
  %add94.5 = or disjoint i32 %i80.0, 11, !dbg !1055
  %arrayidx95.5 = getelementptr inbounds nuw i8, ptr %t, i32 %add94.5, !dbg !1056
  %92 = load i8, ptr %arrayidx95.5, align 1, !dbg !1056
  %93 = lshr i8 %90, 4, !dbg !1057
  %xor1013.5 = xor i8 %92, %93, !dbg !1058
  %add103.5 = or disjoint i32 %i80.0, 11, !dbg !1059
  %arrayidx104.5 = getelementptr inbounds nuw i8, ptr %y, i32 %add103.5, !dbg !1060
  store i8 %xor1013.5, ptr %arrayidx104.5, align 1, !dbg !1061
    #dbg_value(i32 %i80.0, !1044, !DIExpression(DW_OP_plus_uconst, 12, DW_OP_stack_value), !1045)
  %add106.5 = or disjoint i32 %i80.0, 12, !dbg !1062
    #dbg_value(i32 %add106.5, !1044, !DIExpression(), !1045)
  %arrayidx85.6 = getelementptr inbounds nuw i8, ptr %t, i32 %add106.5, !dbg !1046
  %94 = load i8, ptr %arrayidx85.6, align 1, !dbg !1046
  %div87.6 = lshr exact i32 %add106.5, 1, !dbg !1049
  %arrayidx88.6 = getelementptr inbounds nuw i8, ptr %temp, i32 %div87.6, !dbg !1050
  %95 = load i8, ptr %arrayidx88.6, align 1, !dbg !1050
  %96 = and i8 %95, 15, !dbg !1051
  %xor912.6 = xor i8 %94, %96, !dbg !1052
  %arrayidx93.6 = getelementptr inbounds nuw i8, ptr %y, i32 %add106.5, !dbg !1053
  store i8 %xor912.6, ptr %arrayidx93.6, align 1, !dbg !1054
  %add94.6 = or disjoint i32 %i80.0, 13, !dbg !1055
  %arrayidx95.6 = getelementptr inbounds nuw i8, ptr %t, i32 %add94.6, !dbg !1056
  %97 = load i8, ptr %arrayidx95.6, align 1, !dbg !1056
  %98 = lshr i8 %95, 4, !dbg !1057
  %xor1013.6 = xor i8 %97, %98, !dbg !1058
  %add103.6 = or disjoint i32 %i80.0, 13, !dbg !1059
  %arrayidx104.6 = getelementptr inbounds nuw i8, ptr %y, i32 %add103.6, !dbg !1060
  store i8 %xor1013.6, ptr %arrayidx104.6, align 1, !dbg !1061
  %add106.6 = or disjoint i32 %i80.0, 14, !dbg !1062
    #dbg_value(i32 %add106.6, !1044, !DIExpression(), !1045)
  %cmp82.7 = icmp samesign ult i32 %add106.6, 78, !dbg !1063
  br i1 %cmp82.7, label %for.body84.7, label %for.end107, !dbg !1064

for.body84.7:                                     ; preds = %for.cond81
  %arrayidx85.7 = getelementptr inbounds nuw i8, ptr %t, i32 %add106.6, !dbg !1046
  %99 = load i8, ptr %arrayidx85.7, align 1, !dbg !1046
  %div87.7 = lshr exact i32 %add106.6, 1, !dbg !1049
  %arrayidx88.7 = getelementptr inbounds nuw i8, ptr %temp, i32 %div87.7, !dbg !1050
  %100 = load i8, ptr %arrayidx88.7, align 1, !dbg !1050
  %101 = and i8 %100, 15, !dbg !1051
  %xor912.7 = xor i8 %99, %101, !dbg !1052
  %arrayidx93.7 = getelementptr inbounds nuw i8, ptr %y, i32 %add106.6, !dbg !1053
  store i8 %xor912.7, ptr %arrayidx93.7, align 1, !dbg !1054
  %add94.7 = or disjoint i32 %i80.0, 15, !dbg !1055
  %arrayidx95.7 = getelementptr inbounds nuw i8, ptr %t, i32 %add94.7, !dbg !1056
  %102 = load i8, ptr %arrayidx95.7, align 1, !dbg !1056
  %103 = lshr i8 %100, 4, !dbg !1057
  %xor1013.7 = xor i8 %102, %103, !dbg !1058
  %add103.7 = or disjoint i32 %i80.0, 15, !dbg !1059
  %arrayidx104.7 = getelementptr inbounds nuw i8, ptr %y, i32 %add103.7, !dbg !1060
  store i8 %xor1013.7, ptr %arrayidx104.7, align 1, !dbg !1061
  %add106.7 = add nuw nsw i32 %i80.0, 16, !dbg !1062
    #dbg_value(i32 %add106.7, !1044, !DIExpression(), !1045)
  br label %for.cond81, !dbg !1065, !llvm.loop !1066

for.end107:                                       ; preds = %for.cond81
  ret void, !dbg !1068
}

; Function Attrs: nounwind
define internal fastcc void @compute_A(ptr noundef %p, ptr noundef %VtL, ptr noundef %A_out) unnamed_addr #0 !dbg !1069 {
entry:
  %A = alloca [800 x i64], align 8
  %tab = alloca [16 x i8], align 1
    #dbg_value(ptr %p, !1072, !DIExpression(), !1073)
    #dbg_value(ptr %VtL, !1074, !DIExpression(), !1073)
    #dbg_value(ptr %A_out, !1075, !DIExpression(), !1073)
    #dbg_value(i32 0, !1076, !DIExpression(), !1073)
    #dbg_value(i32 0, !1077, !DIExpression(), !1073)
    #dbg_value(i32 5, !1078, !DIExpression(), !1073)
    #dbg_declare(ptr %A, !1079, !DIExpression(), !1083)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(6400) %A, i8 0, i32 6400, i1 false), !dbg !1083
    #dbg_value(i32 80, !1084, !DIExpression(), !1073)
    #dbg_value(i64 1, !1085, !DIExpression(), !1088)
    #dbg_value(i64 72057594037927936, !1085, !DIExpression(), !1088)
    #dbg_value(i64 72057594037927935, !1085, !DIExpression(), !1088)
    #dbg_value(i32 0, !1089, !DIExpression(), !1091)
  br label %for.cond, !dbg !1092

for.cond:                                         ; preds = %for.body.8, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc.8, %for.body.8 ], !dbg !1093
    #dbg_value(i32 %i.0, !1089, !DIExpression(), !1091)
  %.idx = mul nuw nsw i32 %i.0, 40, !dbg !1094
  %0 = getelementptr inbounds nuw i8, ptr %VtL, i32 %.idx, !dbg !1094
  %arrayidx = getelementptr inbounds nuw i8, ptr %0, i32 32, !dbg !1094
  %1 = load i64, ptr %arrayidx, align 8, !dbg !1097
  %and = and i64 %1, 72057594037927935, !dbg !1097
  store i64 %and, ptr %arrayidx, align 8, !dbg !1097
    #dbg_value(i32 %i.0, !1089, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1091)
    #dbg_value(i32 %i.0, !1089, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1091)
  %2 = mul nuw i32 %i.0, 40, !dbg !1094
  %3 = getelementptr i8, ptr %VtL, i32 %2, !dbg !1094
  %arrayidx.1 = getelementptr i8, ptr %3, i32 72, !dbg !1094
  %4 = load i64, ptr %arrayidx.1, align 8, !dbg !1097
  %and.1 = and i64 %4, 72057594037927935, !dbg !1097
  store i64 %and.1, ptr %arrayidx.1, align 8, !dbg !1097
    #dbg_value(i32 %i.0, !1089, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !1091)
    #dbg_value(i32 %i.0, !1089, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !1091)
  %5 = mul nuw i32 %i.0, 40, !dbg !1094
  %6 = getelementptr i8, ptr %VtL, i32 %5, !dbg !1094
  %arrayidx.2 = getelementptr i8, ptr %6, i32 112, !dbg !1094
  %7 = load i64, ptr %arrayidx.2, align 8, !dbg !1097
  %and.2 = and i64 %7, 72057594037927935, !dbg !1097
  store i64 %and.2, ptr %arrayidx.2, align 8, !dbg !1097
    #dbg_value(i32 %i.0, !1089, !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value), !1091)
    #dbg_value(i32 %i.0, !1089, !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value), !1091)
  %8 = mul nuw i32 %i.0, 40, !dbg !1094
  %9 = getelementptr i8, ptr %VtL, i32 %8, !dbg !1094
  %arrayidx.3 = getelementptr i8, ptr %9, i32 152, !dbg !1094
  %10 = load i64, ptr %arrayidx.3, align 8, !dbg !1097
  %and.3 = and i64 %10, 72057594037927935, !dbg !1097
  store i64 %and.3, ptr %arrayidx.3, align 8, !dbg !1097
    #dbg_value(i32 %i.0, !1089, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !1091)
    #dbg_value(i32 %i.0, !1089, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !1091)
  %11 = mul nuw i32 %i.0, 40, !dbg !1094
  %12 = getelementptr i8, ptr %VtL, i32 %11, !dbg !1094
  %arrayidx.4 = getelementptr i8, ptr %12, i32 192, !dbg !1094
  %13 = load i64, ptr %arrayidx.4, align 8, !dbg !1097
  %and.4 = and i64 %13, 72057594037927935, !dbg !1097
  store i64 %and.4, ptr %arrayidx.4, align 8, !dbg !1097
    #dbg_value(i32 %i.0, !1089, !DIExpression(DW_OP_plus_uconst, 5, DW_OP_stack_value), !1091)
    #dbg_value(i32 %i.0, !1089, !DIExpression(DW_OP_plus_uconst, 5, DW_OP_stack_value), !1091)
  %14 = mul nuw i32 %i.0, 40, !dbg !1094
  %15 = getelementptr i8, ptr %VtL, i32 %14, !dbg !1094
  %arrayidx.5 = getelementptr i8, ptr %15, i32 232, !dbg !1094
  %16 = load i64, ptr %arrayidx.5, align 8, !dbg !1097
  %and.5 = and i64 %16, 72057594037927935, !dbg !1097
  store i64 %and.5, ptr %arrayidx.5, align 8, !dbg !1097
    #dbg_value(i32 %i.0, !1089, !DIExpression(DW_OP_plus_uconst, 6, DW_OP_stack_value), !1091)
    #dbg_value(i32 %i.0, !1089, !DIExpression(DW_OP_plus_uconst, 6, DW_OP_stack_value), !1091)
  %17 = mul nuw i32 %i.0, 40, !dbg !1094
  %18 = getelementptr i8, ptr %VtL, i32 %17, !dbg !1094
  %arrayidx.6 = getelementptr i8, ptr %18, i32 272, !dbg !1094
  %19 = load i64, ptr %arrayidx.6, align 8, !dbg !1097
  %and.6 = and i64 %19, 72057594037927935, !dbg !1097
  store i64 %and.6, ptr %arrayidx.6, align 8, !dbg !1097
    #dbg_value(i32 %i.0, !1089, !DIExpression(DW_OP_plus_uconst, 7, DW_OP_stack_value), !1091)
    #dbg_value(i32 %i.0, !1089, !DIExpression(DW_OP_plus_uconst, 7, DW_OP_stack_value), !1091)
  %20 = mul nuw i32 %i.0, 40, !dbg !1094
  %21 = getelementptr i8, ptr %VtL, i32 %20, !dbg !1094
  %arrayidx.7 = getelementptr i8, ptr %21, i32 312, !dbg !1094
  %22 = load i64, ptr %arrayidx.7, align 8, !dbg !1097
  %and.7 = and i64 %22, 72057594037927935, !dbg !1097
  store i64 %and.7, ptr %arrayidx.7, align 8, !dbg !1097
  %inc.7 = add nuw nsw i32 %i.0, 8, !dbg !1098
    #dbg_value(i32 %inc.7, !1089, !DIExpression(), !1091)
  %exitcond.8.not = icmp eq i32 %inc.7, 80, !dbg !1099
  br i1 %exitcond.8.not, label %for.cond3, label %for.body.8, !dbg !1100

for.body.8:                                       ; preds = %for.cond
  %.idx.8 = mul nuw nsw i32 %inc.7, 40, !dbg !1094
  %23 = getelementptr inbounds nuw i8, ptr %VtL, i32 %.idx.8, !dbg !1094
  %arrayidx.8 = getelementptr inbounds nuw i8, ptr %23, i32 32, !dbg !1094
  %24 = load i64, ptr %arrayidx.8, align 8, !dbg !1097
  %and.8 = and i64 %24, 72057594037927935, !dbg !1097
  store i64 %and.8, ptr %arrayidx.8, align 8, !dbg !1097
  %inc.8 = add nuw nsw i32 %i.0, 9, !dbg !1098
    #dbg_value(i32 %inc.8, !1089, !DIExpression(), !1091)
  br label %for.cond, !dbg !1101, !llvm.loop !1102

for.cond3:                                        ; preds = %for.cond, %for.inc103
  %i2.0 = phi i32 [ %inc104, %for.inc103 ], [ 0, %for.cond ], !dbg !1104
  %words_to_shift.0 = phi i32 [ %words_to_shift.1, %for.inc103 ], [ 0, %for.cond ], !dbg !1106
  %bits_to_shift.0 = phi i32 [ %bits_to_shift.1, %for.inc103 ], [ 0, %for.cond ], !dbg !1107
    #dbg_value(i32 %bits_to_shift.0, !1076, !DIExpression(), !1073)
    #dbg_value(i32 %words_to_shift.0, !1077, !DIExpression(), !1073)
    #dbg_value(i32 %i2.0, !1108, !DIExpression(), !1109)
  %exitcond8.not = icmp eq i32 %i2.0, 10, !dbg !1110
  br i1 %exitcond8.not, label %for.cond107, label %for.cond6, !dbg !1112

for.cond6:                                        ; preds = %for.cond3, %if.end95
  %j.0 = phi i32 [ %dec, %if.end95 ], [ 9, %for.cond3 ], !dbg !1113
  %words_to_shift.1 = phi i32 [ %spec.select, %if.end95 ], [ %words_to_shift.0, %for.cond3 ], !dbg !1073
  %bits_to_shift.1 = phi i32 [ %spec.select3, %if.end95 ], [ %bits_to_shift.0, %for.cond3 ], !dbg !1073
    #dbg_value(i32 %bits_to_shift.1, !1076, !DIExpression(), !1073)
    #dbg_value(i32 %words_to_shift.1, !1077, !DIExpression(), !1073)
    #dbg_value(i32 %j.0, !1116, !DIExpression(), !1117)
  %cmp7.not = icmp slt i32 %j.0, %i2.0, !dbg !1118
  br i1 %cmp7.not, label %for.inc103, label %for.body8, !dbg !1120

for.body8:                                        ; preds = %for.cond6
  %add.ptr.idx = mul nsw i32 %j.0, 320, !dbg !1121
  %add.ptr = getelementptr inbounds i8, ptr %VtL, i32 %add.ptr.idx, !dbg !1121
    #dbg_value(ptr %add.ptr, !1123, !DIExpression(), !1073)
    #dbg_value(i32 0, !1124, !DIExpression(), !1126)
  br label %for.cond11, !dbg !1127

for.cond11:                                       ; preds = %for.inc44, %for.body8
  %c.0 = phi i32 [ 0, %for.body8 ], [ %inc45, %for.inc44 ], !dbg !1128
    #dbg_value(i32 %c.0, !1124, !DIExpression(), !1126)
  %exitcond5.not = icmp eq i32 %c.0, 8, !dbg !1129
  br i1 %exitcond5.not, label %for.end46, label %for.body16, !dbg !1131

for.body16:                                       ; preds = %for.cond11
    #dbg_value(i32 0, !1132, !DIExpression(), !1135)
  %arrayidx19.idx = mul nuw nsw i32 %c.0, 40, !dbg !1136
  %arrayidx19 = getelementptr inbounds nuw i8, ptr %add.ptr, i32 %arrayidx19.idx, !dbg !1136
  %25 = load i64, ptr %arrayidx19, align 8, !dbg !1136
  %sh_prom = zext nneg i32 %bits_to_shift.1 to i64, !dbg !1139
  %shl20 = shl i64 %25, %sh_prom, !dbg !1139
  %mul21 = shl nuw nsw i32 %i2.0, 3, !dbg !1140
  %add22 = or disjoint i32 %mul21, %c.0, !dbg !1141
  %mul24 = mul i32 %words_to_shift.1, 80, !dbg !1142
  %add25 = add i32 %add22, %mul24, !dbg !1143
  %arrayidx26 = getelementptr inbounds nuw [800 x i64], ptr %A, i32 0, i32 %add25, !dbg !1144
  %26 = load i64, ptr %arrayidx26, align 8, !dbg !1145
  %xor = xor i64 %26, %shl20, !dbg !1145
  store i64 %xor, ptr %arrayidx26, align 8, !dbg !1145
  %cmp27 = icmp sgt i32 %bits_to_shift.1, 0, !dbg !1146
  br i1 %cmp27, label %if.then, label %for.body16.1, !dbg !1146

if.then:                                          ; preds = %for.body16
  %arrayidx30.idx = mul nuw nsw i32 %c.0, 40, !dbg !1148
  %arrayidx30 = getelementptr inbounds nuw i8, ptr %add.ptr, i32 %arrayidx30.idx, !dbg !1148
  %27 = load i64, ptr %arrayidx30, align 8, !dbg !1148
  %sub31 = sub nsw i32 64, %bits_to_shift.1, !dbg !1150
  %sh_prom32 = zext nneg i32 %sub31 to i64, !dbg !1151
  %shr = lshr i64 %27, %sh_prom32, !dbg !1151
  %mul33 = shl nuw nsw i32 %i2.0, 3, !dbg !1152
  %add34 = or disjoint i32 %mul33, %c.0, !dbg !1153
  %28 = mul i32 %words_to_shift.1, 80, !dbg !1154
  %mul37 = add i32 %28, 80, !dbg !1154
  %add38 = add i32 %add34, %mul37, !dbg !1155
  %arrayidx39 = getelementptr inbounds nuw [800 x i64], ptr %A, i32 0, i32 %add38, !dbg !1156
  %29 = load i64, ptr %arrayidx39, align 8, !dbg !1157
  %xor40 = xor i64 %29, %shr, !dbg !1157
  store i64 %xor40, ptr %arrayidx39, align 8, !dbg !1157
  br label %for.body16.1, !dbg !1158

for.body16.1:                                     ; preds = %if.then, %for.body16
    #dbg_value(i32 1, !1132, !DIExpression(), !1135)
  %30 = getelementptr inbounds nuw i8, ptr %add.ptr, i32 8, !dbg !1136
  %arrayidx19.idx.1 = mul nuw nsw i32 %c.0, 40, !dbg !1136
  %arrayidx19.1 = getelementptr inbounds nuw i8, ptr %30, i32 %arrayidx19.idx.1, !dbg !1136
  %31 = load i64, ptr %arrayidx19.1, align 8, !dbg !1136
  %sh_prom.1 = zext nneg i32 %bits_to_shift.1 to i64, !dbg !1139
  %shl20.1 = shl i64 %31, %sh_prom.1, !dbg !1139
  %mul21.1 = shl nuw nsw i32 %i2.0, 3, !dbg !1140
  %add22.1 = or disjoint i32 %mul21.1, %c.0, !dbg !1141
  %32 = mul i32 %words_to_shift.1, 80, !dbg !1142
  %mul24.1 = add i32 %32, 80, !dbg !1142
  %add25.1 = add i32 %add22.1, %mul24.1, !dbg !1143
  %arrayidx26.1 = getelementptr inbounds nuw [800 x i64], ptr %A, i32 0, i32 %add25.1, !dbg !1144
  %33 = load i64, ptr %arrayidx26.1, align 8, !dbg !1145
  %xor.1 = xor i64 %33, %shl20.1, !dbg !1145
  store i64 %xor.1, ptr %arrayidx26.1, align 8, !dbg !1145
  %cmp27.1 = icmp sgt i32 %bits_to_shift.1, 0, !dbg !1146
  br i1 %cmp27.1, label %if.then.1, label %for.body16.2, !dbg !1146

if.then.1:                                        ; preds = %for.body16.1
  %34 = getelementptr inbounds nuw i8, ptr %add.ptr, i32 8, !dbg !1148
  %arrayidx30.idx.1 = mul nuw nsw i32 %c.0, 40, !dbg !1148
  %arrayidx30.1 = getelementptr inbounds nuw i8, ptr %34, i32 %arrayidx30.idx.1, !dbg !1148
  %35 = load i64, ptr %arrayidx30.1, align 8, !dbg !1148
  %sub31.1 = sub nsw i32 64, %bits_to_shift.1, !dbg !1150
  %sh_prom32.1 = zext nneg i32 %sub31.1 to i64, !dbg !1151
  %shr.1 = lshr i64 %35, %sh_prom32.1, !dbg !1151
  %mul33.1 = shl nuw nsw i32 %i2.0, 3, !dbg !1152
  %add34.1 = or disjoint i32 %mul33.1, %c.0, !dbg !1153
  %36 = mul i32 %words_to_shift.1, 80, !dbg !1154
  %mul37.1 = add i32 %36, 160, !dbg !1154
  %add38.1 = add i32 %add34.1, %mul37.1, !dbg !1155
  %arrayidx39.1 = getelementptr inbounds nuw [800 x i64], ptr %A, i32 0, i32 %add38.1, !dbg !1156
  %37 = load i64, ptr %arrayidx39.1, align 8, !dbg !1157
  %xor40.1 = xor i64 %37, %shr.1, !dbg !1157
  store i64 %xor40.1, ptr %arrayidx39.1, align 8, !dbg !1157
  br label %for.body16.2, !dbg !1158

for.body16.2:                                     ; preds = %for.body16.1, %if.then.1
    #dbg_value(i32 2, !1132, !DIExpression(), !1135)
  %38 = getelementptr inbounds nuw i8, ptr %add.ptr, i32 16, !dbg !1136
  %arrayidx19.idx.2 = mul nuw nsw i32 %c.0, 40, !dbg !1136
  %arrayidx19.2 = getelementptr inbounds nuw i8, ptr %38, i32 %arrayidx19.idx.2, !dbg !1136
  %39 = load i64, ptr %arrayidx19.2, align 8, !dbg !1136
  %sh_prom.2 = zext nneg i32 %bits_to_shift.1 to i64, !dbg !1139
  %shl20.2 = shl i64 %39, %sh_prom.2, !dbg !1139
  %mul21.2 = shl nuw nsw i32 %i2.0, 3, !dbg !1140
  %add22.2 = or disjoint i32 %mul21.2, %c.0, !dbg !1141
  %40 = mul i32 %words_to_shift.1, 80, !dbg !1142
  %mul24.2 = add i32 %40, 160, !dbg !1142
  %add25.2 = add i32 %add22.2, %mul24.2, !dbg !1143
  %arrayidx26.2 = getelementptr inbounds nuw [800 x i64], ptr %A, i32 0, i32 %add25.2, !dbg !1144
  %41 = load i64, ptr %arrayidx26.2, align 8, !dbg !1145
  %xor.2 = xor i64 %41, %shl20.2, !dbg !1145
  store i64 %xor.2, ptr %arrayidx26.2, align 8, !dbg !1145
  %cmp27.2 = icmp sgt i32 %bits_to_shift.1, 0, !dbg !1146
  br i1 %cmp27.2, label %if.then.2, label %for.body16.3, !dbg !1146

if.then.2:                                        ; preds = %for.body16.2
  %42 = getelementptr inbounds nuw i8, ptr %add.ptr, i32 16, !dbg !1148
  %arrayidx30.idx.2 = mul nuw nsw i32 %c.0, 40, !dbg !1148
  %arrayidx30.2 = getelementptr inbounds nuw i8, ptr %42, i32 %arrayidx30.idx.2, !dbg !1148
  %43 = load i64, ptr %arrayidx30.2, align 8, !dbg !1148
  %sub31.2 = sub nsw i32 64, %bits_to_shift.1, !dbg !1150
  %sh_prom32.2 = zext nneg i32 %sub31.2 to i64, !dbg !1151
  %shr.2 = lshr i64 %43, %sh_prom32.2, !dbg !1151
  %mul33.2 = shl nuw nsw i32 %i2.0, 3, !dbg !1152
  %add34.2 = or disjoint i32 %mul33.2, %c.0, !dbg !1153
  %44 = mul i32 %words_to_shift.1, 80, !dbg !1154
  %mul37.2 = add i32 %44, 240, !dbg !1154
  %add38.2 = add i32 %add34.2, %mul37.2, !dbg !1155
  %arrayidx39.2 = getelementptr inbounds nuw [800 x i64], ptr %A, i32 0, i32 %add38.2, !dbg !1156
  %45 = load i64, ptr %arrayidx39.2, align 8, !dbg !1157
  %xor40.2 = xor i64 %45, %shr.2, !dbg !1157
  store i64 %xor40.2, ptr %arrayidx39.2, align 8, !dbg !1157
  br label %for.body16.3, !dbg !1158

for.body16.3:                                     ; preds = %for.body16.2, %if.then.2
    #dbg_value(i32 3, !1132, !DIExpression(), !1135)
  %46 = getelementptr inbounds nuw i8, ptr %add.ptr, i32 24, !dbg !1136
  %arrayidx19.idx.3 = mul nuw nsw i32 %c.0, 40, !dbg !1136
  %arrayidx19.3 = getelementptr inbounds nuw i8, ptr %46, i32 %arrayidx19.idx.3, !dbg !1136
  %47 = load i64, ptr %arrayidx19.3, align 8, !dbg !1136
  %sh_prom.3 = zext nneg i32 %bits_to_shift.1 to i64, !dbg !1139
  %shl20.3 = shl i64 %47, %sh_prom.3, !dbg !1139
  %mul21.3 = shl nuw nsw i32 %i2.0, 3, !dbg !1140
  %add22.3 = or disjoint i32 %mul21.3, %c.0, !dbg !1141
  %48 = mul i32 %words_to_shift.1, 80, !dbg !1142
  %mul24.3 = add i32 %48, 240, !dbg !1142
  %add25.3 = add i32 %add22.3, %mul24.3, !dbg !1143
  %arrayidx26.3 = getelementptr inbounds nuw [800 x i64], ptr %A, i32 0, i32 %add25.3, !dbg !1144
  %49 = load i64, ptr %arrayidx26.3, align 8, !dbg !1145
  %xor.3 = xor i64 %49, %shl20.3, !dbg !1145
  store i64 %xor.3, ptr %arrayidx26.3, align 8, !dbg !1145
  %cmp27.3 = icmp sgt i32 %bits_to_shift.1, 0, !dbg !1146
  br i1 %cmp27.3, label %if.then.3, label %for.body16.4, !dbg !1146

if.then.3:                                        ; preds = %for.body16.3
  %50 = getelementptr inbounds nuw i8, ptr %add.ptr, i32 24, !dbg !1148
  %arrayidx30.idx.3 = mul nuw nsw i32 %c.0, 40, !dbg !1148
  %arrayidx30.3 = getelementptr inbounds nuw i8, ptr %50, i32 %arrayidx30.idx.3, !dbg !1148
  %51 = load i64, ptr %arrayidx30.3, align 8, !dbg !1148
  %sub31.3 = sub nsw i32 64, %bits_to_shift.1, !dbg !1150
  %sh_prom32.3 = zext nneg i32 %sub31.3 to i64, !dbg !1151
  %shr.3 = lshr i64 %51, %sh_prom32.3, !dbg !1151
  %mul33.3 = shl nuw nsw i32 %i2.0, 3, !dbg !1152
  %add34.3 = or disjoint i32 %mul33.3, %c.0, !dbg !1153
  %52 = mul i32 %words_to_shift.1, 80, !dbg !1154
  %mul37.3 = add i32 %52, 320, !dbg !1154
  %add38.3 = add i32 %add34.3, %mul37.3, !dbg !1155
  %arrayidx39.3 = getelementptr inbounds nuw [800 x i64], ptr %A, i32 0, i32 %add38.3, !dbg !1156
  %53 = load i64, ptr %arrayidx39.3, align 8, !dbg !1157
  %xor40.3 = xor i64 %53, %shr.3, !dbg !1157
  store i64 %xor40.3, ptr %arrayidx39.3, align 8, !dbg !1157
  br label %for.body16.4, !dbg !1158

for.body16.4:                                     ; preds = %for.body16.3, %if.then.3
    #dbg_value(i32 4, !1132, !DIExpression(), !1135)
  %54 = getelementptr inbounds nuw i8, ptr %add.ptr, i32 32, !dbg !1136
  %arrayidx19.idx.4 = mul nuw nsw i32 %c.0, 40, !dbg !1136
  %arrayidx19.4 = getelementptr inbounds nuw i8, ptr %54, i32 %arrayidx19.idx.4, !dbg !1136
  %55 = load i64, ptr %arrayidx19.4, align 8, !dbg !1136
  %sh_prom.4 = zext nneg i32 %bits_to_shift.1 to i64, !dbg !1139
  %shl20.4 = shl i64 %55, %sh_prom.4, !dbg !1139
  %mul21.4 = shl nuw nsw i32 %i2.0, 3, !dbg !1140
  %add22.4 = or disjoint i32 %mul21.4, %c.0, !dbg !1141
  %56 = mul i32 %words_to_shift.1, 80, !dbg !1142
  %mul24.4 = add i32 %56, 320, !dbg !1142
  %add25.4 = add i32 %add22.4, %mul24.4, !dbg !1143
  %arrayidx26.4 = getelementptr inbounds nuw [800 x i64], ptr %A, i32 0, i32 %add25.4, !dbg !1144
  %57 = load i64, ptr %arrayidx26.4, align 8, !dbg !1145
  %xor.4 = xor i64 %57, %shl20.4, !dbg !1145
  store i64 %xor.4, ptr %arrayidx26.4, align 8, !dbg !1145
  %cmp27.4 = icmp sgt i32 %bits_to_shift.1, 0, !dbg !1146
  br i1 %cmp27.4, label %if.then.4, label %for.inc44, !dbg !1146

if.then.4:                                        ; preds = %for.body16.4
  %58 = getelementptr inbounds nuw i8, ptr %add.ptr, i32 32, !dbg !1148
  %arrayidx30.idx.4 = mul nuw nsw i32 %c.0, 40, !dbg !1148
  %arrayidx30.4 = getelementptr inbounds nuw i8, ptr %58, i32 %arrayidx30.idx.4, !dbg !1148
  %59 = load i64, ptr %arrayidx30.4, align 8, !dbg !1148
  %sub31.4 = sub nsw i32 64, %bits_to_shift.1, !dbg !1150
  %sh_prom32.4 = zext nneg i32 %sub31.4 to i64, !dbg !1151
  %shr.4 = lshr i64 %59, %sh_prom32.4, !dbg !1151
  %mul33.4 = shl nuw nsw i32 %i2.0, 3, !dbg !1152
  %add34.4 = or disjoint i32 %mul33.4, %c.0, !dbg !1153
  %60 = mul i32 %words_to_shift.1, 80, !dbg !1154
  %mul37.4 = add i32 %60, 400, !dbg !1154
  %add38.4 = add i32 %add34.4, %mul37.4, !dbg !1155
  %arrayidx39.4 = getelementptr inbounds nuw [800 x i64], ptr %A, i32 0, i32 %add38.4, !dbg !1156
  %61 = load i64, ptr %arrayidx39.4, align 8, !dbg !1157
  %xor40.4 = xor i64 %61, %shr.4, !dbg !1157
  store i64 %xor40.4, ptr %arrayidx39.4, align 8, !dbg !1157
  br label %for.inc44, !dbg !1158

for.inc44:                                        ; preds = %for.body16.4, %if.then.4
    #dbg_value(i32 5, !1132, !DIExpression(), !1135)
  %inc45 = add nuw nsw i32 %c.0, 1, !dbg !1159
    #dbg_value(i32 %inc45, !1124, !DIExpression(), !1126)
  br label %for.cond11, !dbg !1160, !llvm.loop !1161

for.end46:                                        ; preds = %for.cond11
  %cmp47.not = icmp eq i32 %i2.0, %j.0, !dbg !1163
  br i1 %cmp47.not, label %if.end95, label %if.then48, !dbg !1163

if.then48:                                        ; preds = %for.end46
  %add.ptr51.idx = mul nuw nsw i32 %i2.0, 320, !dbg !1165
  %add.ptr51 = getelementptr inbounds nuw i8, ptr %VtL, i32 %add.ptr51.idx, !dbg !1165
    #dbg_value(ptr %add.ptr51, !1167, !DIExpression(), !1073)
    #dbg_value(i32 0, !1168, !DIExpression(), !1170)
  br label %for.cond53, !dbg !1171

for.cond53:                                       ; preds = %for.inc92, %if.then48
  %c52.0 = phi i32 [ 0, %if.then48 ], [ %inc93, %for.inc92 ], !dbg !1172
    #dbg_value(i32 %c52.0, !1168, !DIExpression(), !1170)
  %exitcond7.not = icmp eq i32 %c52.0, 8, !dbg !1173
  br i1 %exitcond7.not, label %if.end95, label %for.body59, !dbg !1175

for.body59:                                       ; preds = %for.cond53
    #dbg_value(i32 0, !1176, !DIExpression(), !1179)
  %arrayidx62.idx = mul nuw nsw i32 %c52.0, 40, !dbg !1180
  %arrayidx62 = getelementptr inbounds nuw i8, ptr %add.ptr51, i32 %arrayidx62.idx, !dbg !1180
  %62 = load i64, ptr %arrayidx62, align 8, !dbg !1180
  %sh_prom63 = zext nneg i32 %bits_to_shift.1 to i64, !dbg !1183
  %shl64 = shl i64 %62, %sh_prom63, !dbg !1183
  %mul65 = shl nsw i32 %j.0, 3, !dbg !1184
  %add66 = or disjoint i32 %mul65, %c52.0, !dbg !1185
  %mul68 = mul i32 %words_to_shift.1, 80, !dbg !1186
  %add69 = add i32 %add66, %mul68, !dbg !1187
  %arrayidx70 = getelementptr inbounds nuw [800 x i64], ptr %A, i32 0, i32 %add69, !dbg !1188
  %63 = load i64, ptr %arrayidx70, align 8, !dbg !1189
  %xor71 = xor i64 %63, %shl64, !dbg !1189
  store i64 %xor71, ptr %arrayidx70, align 8, !dbg !1189
  %cmp72 = icmp sgt i32 %bits_to_shift.1, 0, !dbg !1190
  br i1 %cmp72, label %if.then73, label %for.body59.1, !dbg !1190

if.then73:                                        ; preds = %for.body59
  %arrayidx76.idx = mul nuw nsw i32 %c52.0, 40, !dbg !1192
  %arrayidx76 = getelementptr inbounds nuw i8, ptr %add.ptr51, i32 %arrayidx76.idx, !dbg !1192
  %64 = load i64, ptr %arrayidx76, align 8, !dbg !1192
  %sub77 = sub nsw i32 64, %bits_to_shift.1, !dbg !1194
  %sh_prom78 = zext nneg i32 %sub77 to i64, !dbg !1195
  %shr79 = lshr i64 %64, %sh_prom78, !dbg !1195
  %mul80 = shl nsw i32 %j.0, 3, !dbg !1196
  %add81 = or disjoint i32 %mul80, %c52.0, !dbg !1197
  %65 = mul i32 %words_to_shift.1, 80, !dbg !1198
  %mul84 = add i32 %65, 80, !dbg !1198
  %add85 = add i32 %add81, %mul84, !dbg !1199
  %arrayidx86 = getelementptr inbounds nuw [800 x i64], ptr %A, i32 0, i32 %add85, !dbg !1200
  %66 = load i64, ptr %arrayidx86, align 8, !dbg !1201
  %xor87 = xor i64 %66, %shr79, !dbg !1201
  store i64 %xor87, ptr %arrayidx86, align 8, !dbg !1201
  br label %for.body59.1, !dbg !1202

for.body59.1:                                     ; preds = %if.then73, %for.body59
    #dbg_value(i32 1, !1176, !DIExpression(), !1179)
  %67 = getelementptr inbounds nuw i8, ptr %add.ptr51, i32 8, !dbg !1180
  %arrayidx62.idx.1 = mul nuw nsw i32 %c52.0, 40, !dbg !1180
  %arrayidx62.1 = getelementptr inbounds nuw i8, ptr %67, i32 %arrayidx62.idx.1, !dbg !1180
  %68 = load i64, ptr %arrayidx62.1, align 8, !dbg !1180
  %sh_prom63.1 = zext nneg i32 %bits_to_shift.1 to i64, !dbg !1183
  %shl64.1 = shl i64 %68, %sh_prom63.1, !dbg !1183
  %mul65.1 = shl nsw i32 %j.0, 3, !dbg !1184
  %add66.1 = or disjoint i32 %mul65.1, %c52.0, !dbg !1185
  %69 = mul i32 %words_to_shift.1, 80, !dbg !1186
  %mul68.1 = add i32 %69, 80, !dbg !1186
  %add69.1 = add i32 %add66.1, %mul68.1, !dbg !1187
  %arrayidx70.1 = getelementptr inbounds nuw [800 x i64], ptr %A, i32 0, i32 %add69.1, !dbg !1188
  %70 = load i64, ptr %arrayidx70.1, align 8, !dbg !1189
  %xor71.1 = xor i64 %70, %shl64.1, !dbg !1189
  store i64 %xor71.1, ptr %arrayidx70.1, align 8, !dbg !1189
  %cmp72.1 = icmp sgt i32 %bits_to_shift.1, 0, !dbg !1190
  br i1 %cmp72.1, label %if.then73.1, label %for.body59.2, !dbg !1190

if.then73.1:                                      ; preds = %for.body59.1
  %71 = getelementptr inbounds nuw i8, ptr %add.ptr51, i32 8, !dbg !1192
  %arrayidx76.idx.1 = mul nuw nsw i32 %c52.0, 40, !dbg !1192
  %arrayidx76.1 = getelementptr inbounds nuw i8, ptr %71, i32 %arrayidx76.idx.1, !dbg !1192
  %72 = load i64, ptr %arrayidx76.1, align 8, !dbg !1192
  %sub77.1 = sub nsw i32 64, %bits_to_shift.1, !dbg !1194
  %sh_prom78.1 = zext nneg i32 %sub77.1 to i64, !dbg !1195
  %shr79.1 = lshr i64 %72, %sh_prom78.1, !dbg !1195
  %mul80.1 = shl nsw i32 %j.0, 3, !dbg !1196
  %add81.1 = or disjoint i32 %mul80.1, %c52.0, !dbg !1197
  %73 = mul i32 %words_to_shift.1, 80, !dbg !1198
  %mul84.1 = add i32 %73, 160, !dbg !1198
  %add85.1 = add i32 %add81.1, %mul84.1, !dbg !1199
  %arrayidx86.1 = getelementptr inbounds nuw [800 x i64], ptr %A, i32 0, i32 %add85.1, !dbg !1200
  %74 = load i64, ptr %arrayidx86.1, align 8, !dbg !1201
  %xor87.1 = xor i64 %74, %shr79.1, !dbg !1201
  store i64 %xor87.1, ptr %arrayidx86.1, align 8, !dbg !1201
  br label %for.body59.2, !dbg !1202

for.body59.2:                                     ; preds = %for.body59.1, %if.then73.1
    #dbg_value(i32 2, !1176, !DIExpression(), !1179)
  %75 = getelementptr inbounds nuw i8, ptr %add.ptr51, i32 16, !dbg !1180
  %arrayidx62.idx.2 = mul nuw nsw i32 %c52.0, 40, !dbg !1180
  %arrayidx62.2 = getelementptr inbounds nuw i8, ptr %75, i32 %arrayidx62.idx.2, !dbg !1180
  %76 = load i64, ptr %arrayidx62.2, align 8, !dbg !1180
  %sh_prom63.2 = zext nneg i32 %bits_to_shift.1 to i64, !dbg !1183
  %shl64.2 = shl i64 %76, %sh_prom63.2, !dbg !1183
  %mul65.2 = shl nsw i32 %j.0, 3, !dbg !1184
  %add66.2 = or disjoint i32 %mul65.2, %c52.0, !dbg !1185
  %77 = mul i32 %words_to_shift.1, 80, !dbg !1186
  %mul68.2 = add i32 %77, 160, !dbg !1186
  %add69.2 = add i32 %add66.2, %mul68.2, !dbg !1187
  %arrayidx70.2 = getelementptr inbounds nuw [800 x i64], ptr %A, i32 0, i32 %add69.2, !dbg !1188
  %78 = load i64, ptr %arrayidx70.2, align 8, !dbg !1189
  %xor71.2 = xor i64 %78, %shl64.2, !dbg !1189
  store i64 %xor71.2, ptr %arrayidx70.2, align 8, !dbg !1189
  %cmp72.2 = icmp sgt i32 %bits_to_shift.1, 0, !dbg !1190
  br i1 %cmp72.2, label %if.then73.2, label %for.body59.3, !dbg !1190

if.then73.2:                                      ; preds = %for.body59.2
  %79 = getelementptr inbounds nuw i8, ptr %add.ptr51, i32 16, !dbg !1192
  %arrayidx76.idx.2 = mul nuw nsw i32 %c52.0, 40, !dbg !1192
  %arrayidx76.2 = getelementptr inbounds nuw i8, ptr %79, i32 %arrayidx76.idx.2, !dbg !1192
  %80 = load i64, ptr %arrayidx76.2, align 8, !dbg !1192
  %sub77.2 = sub nsw i32 64, %bits_to_shift.1, !dbg !1194
  %sh_prom78.2 = zext nneg i32 %sub77.2 to i64, !dbg !1195
  %shr79.2 = lshr i64 %80, %sh_prom78.2, !dbg !1195
  %mul80.2 = shl nsw i32 %j.0, 3, !dbg !1196
  %add81.2 = or disjoint i32 %mul80.2, %c52.0, !dbg !1197
  %81 = mul i32 %words_to_shift.1, 80, !dbg !1198
  %mul84.2 = add i32 %81, 240, !dbg !1198
  %add85.2 = add i32 %add81.2, %mul84.2, !dbg !1199
  %arrayidx86.2 = getelementptr inbounds nuw [800 x i64], ptr %A, i32 0, i32 %add85.2, !dbg !1200
  %82 = load i64, ptr %arrayidx86.2, align 8, !dbg !1201
  %xor87.2 = xor i64 %82, %shr79.2, !dbg !1201
  store i64 %xor87.2, ptr %arrayidx86.2, align 8, !dbg !1201
  br label %for.body59.3, !dbg !1202

for.body59.3:                                     ; preds = %for.body59.2, %if.then73.2
    #dbg_value(i32 3, !1176, !DIExpression(), !1179)
  %83 = getelementptr inbounds nuw i8, ptr %add.ptr51, i32 24, !dbg !1180
  %arrayidx62.idx.3 = mul nuw nsw i32 %c52.0, 40, !dbg !1180
  %arrayidx62.3 = getelementptr inbounds nuw i8, ptr %83, i32 %arrayidx62.idx.3, !dbg !1180
  %84 = load i64, ptr %arrayidx62.3, align 8, !dbg !1180
  %sh_prom63.3 = zext nneg i32 %bits_to_shift.1 to i64, !dbg !1183
  %shl64.3 = shl i64 %84, %sh_prom63.3, !dbg !1183
  %mul65.3 = shl nsw i32 %j.0, 3, !dbg !1184
  %add66.3 = or disjoint i32 %mul65.3, %c52.0, !dbg !1185
  %85 = mul i32 %words_to_shift.1, 80, !dbg !1186
  %mul68.3 = add i32 %85, 240, !dbg !1186
  %add69.3 = add i32 %add66.3, %mul68.3, !dbg !1187
  %arrayidx70.3 = getelementptr inbounds nuw [800 x i64], ptr %A, i32 0, i32 %add69.3, !dbg !1188
  %86 = load i64, ptr %arrayidx70.3, align 8, !dbg !1189
  %xor71.3 = xor i64 %86, %shl64.3, !dbg !1189
  store i64 %xor71.3, ptr %arrayidx70.3, align 8, !dbg !1189
  %cmp72.3 = icmp sgt i32 %bits_to_shift.1, 0, !dbg !1190
  br i1 %cmp72.3, label %if.then73.3, label %for.body59.4, !dbg !1190

if.then73.3:                                      ; preds = %for.body59.3
  %87 = getelementptr inbounds nuw i8, ptr %add.ptr51, i32 24, !dbg !1192
  %arrayidx76.idx.3 = mul nuw nsw i32 %c52.0, 40, !dbg !1192
  %arrayidx76.3 = getelementptr inbounds nuw i8, ptr %87, i32 %arrayidx76.idx.3, !dbg !1192
  %88 = load i64, ptr %arrayidx76.3, align 8, !dbg !1192
  %sub77.3 = sub nsw i32 64, %bits_to_shift.1, !dbg !1194
  %sh_prom78.3 = zext nneg i32 %sub77.3 to i64, !dbg !1195
  %shr79.3 = lshr i64 %88, %sh_prom78.3, !dbg !1195
  %mul80.3 = shl nsw i32 %j.0, 3, !dbg !1196
  %add81.3 = or disjoint i32 %mul80.3, %c52.0, !dbg !1197
  %89 = mul i32 %words_to_shift.1, 80, !dbg !1198
  %mul84.3 = add i32 %89, 320, !dbg !1198
  %add85.3 = add i32 %add81.3, %mul84.3, !dbg !1199
  %arrayidx86.3 = getelementptr inbounds nuw [800 x i64], ptr %A, i32 0, i32 %add85.3, !dbg !1200
  %90 = load i64, ptr %arrayidx86.3, align 8, !dbg !1201
  %xor87.3 = xor i64 %90, %shr79.3, !dbg !1201
  store i64 %xor87.3, ptr %arrayidx86.3, align 8, !dbg !1201
  br label %for.body59.4, !dbg !1202

for.body59.4:                                     ; preds = %for.body59.3, %if.then73.3
    #dbg_value(i32 4, !1176, !DIExpression(), !1179)
  %91 = getelementptr inbounds nuw i8, ptr %add.ptr51, i32 32, !dbg !1180
  %arrayidx62.idx.4 = mul nuw nsw i32 %c52.0, 40, !dbg !1180
  %arrayidx62.4 = getelementptr inbounds nuw i8, ptr %91, i32 %arrayidx62.idx.4, !dbg !1180
  %92 = load i64, ptr %arrayidx62.4, align 8, !dbg !1180
  %sh_prom63.4 = zext nneg i32 %bits_to_shift.1 to i64, !dbg !1183
  %shl64.4 = shl i64 %92, %sh_prom63.4, !dbg !1183
  %mul65.4 = shl nsw i32 %j.0, 3, !dbg !1184
  %add66.4 = or disjoint i32 %mul65.4, %c52.0, !dbg !1185
  %93 = mul i32 %words_to_shift.1, 80, !dbg !1186
  %mul68.4 = add i32 %93, 320, !dbg !1186
  %add69.4 = add i32 %add66.4, %mul68.4, !dbg !1187
  %arrayidx70.4 = getelementptr inbounds nuw [800 x i64], ptr %A, i32 0, i32 %add69.4, !dbg !1188
  %94 = load i64, ptr %arrayidx70.4, align 8, !dbg !1189
  %xor71.4 = xor i64 %94, %shl64.4, !dbg !1189
  store i64 %xor71.4, ptr %arrayidx70.4, align 8, !dbg !1189
  %cmp72.4 = icmp sgt i32 %bits_to_shift.1, 0, !dbg !1190
  br i1 %cmp72.4, label %if.then73.4, label %for.inc92, !dbg !1190

if.then73.4:                                      ; preds = %for.body59.4
  %95 = getelementptr inbounds nuw i8, ptr %add.ptr51, i32 32, !dbg !1192
  %arrayidx76.idx.4 = mul nuw nsw i32 %c52.0, 40, !dbg !1192
  %arrayidx76.4 = getelementptr inbounds nuw i8, ptr %95, i32 %arrayidx76.idx.4, !dbg !1192
  %96 = load i64, ptr %arrayidx76.4, align 8, !dbg !1192
  %sub77.4 = sub nsw i32 64, %bits_to_shift.1, !dbg !1194
  %sh_prom78.4 = zext nneg i32 %sub77.4 to i64, !dbg !1195
  %shr79.4 = lshr i64 %96, %sh_prom78.4, !dbg !1195
  %mul80.4 = shl nsw i32 %j.0, 3, !dbg !1196
  %add81.4 = or disjoint i32 %mul80.4, %c52.0, !dbg !1197
  %97 = mul i32 %words_to_shift.1, 80, !dbg !1198
  %mul84.4 = add i32 %97, 400, !dbg !1198
  %add85.4 = add i32 %add81.4, %mul84.4, !dbg !1199
  %arrayidx86.4 = getelementptr inbounds nuw [800 x i64], ptr %A, i32 0, i32 %add85.4, !dbg !1200
  %98 = load i64, ptr %arrayidx86.4, align 8, !dbg !1201
  %xor87.4 = xor i64 %98, %shr79.4, !dbg !1201
  store i64 %xor87.4, ptr %arrayidx86.4, align 8, !dbg !1201
  br label %for.inc92, !dbg !1202

for.inc92:                                        ; preds = %for.body59.4, %if.then73.4
    #dbg_value(i32 5, !1176, !DIExpression(), !1179)
  %inc93 = add nuw nsw i32 %c52.0, 1, !dbg !1203
    #dbg_value(i32 %inc93, !1168, !DIExpression(), !1170)
  br label %for.cond53, !dbg !1204, !llvm.loop !1205

if.end95:                                         ; preds = %for.cond53, %for.end46
  %add96 = add nsw i32 %bits_to_shift.1, 4, !dbg !1207
    #dbg_value(i32 %add96, !1076, !DIExpression(), !1073)
  %cmp97 = icmp eq i32 %add96, 64, !dbg !1208
  %inc99 = zext i1 %cmp97 to i32, !dbg !1208
  %spec.select = add nsw i32 %words_to_shift.1, %inc99, !dbg !1208
  %spec.select3 = select i1 %cmp97, i32 0, i32 %add96, !dbg !1208
    #dbg_value(i32 %spec.select3, !1076, !DIExpression(), !1073)
    #dbg_value(i32 %spec.select, !1077, !DIExpression(), !1073)
  %dec = add nsw i32 %j.0, -1, !dbg !1210
    #dbg_value(i32 %dec, !1116, !DIExpression(), !1117)
  br label %for.cond6, !dbg !1211, !llvm.loop !1212

for.inc103:                                       ; preds = %for.cond6
  %inc104 = add nuw nsw i32 %i2.0, 1, !dbg !1214
    #dbg_value(i32 %inc104, !1108, !DIExpression(), !1109)
  br label %for.cond3, !dbg !1215, !llvm.loop !1216

for.cond107:                                      ; preds = %for.cond3, %for.body110
  %c106.0 = phi i32 [ %add113, %for.body110 ], [ 0, %for.cond3 ], !dbg !1218
    #dbg_value(i32 %c106.0, !1220, !DIExpression(), !1221)
  %cmp109 = icmp samesign ult i32 %c106.0, 720, !dbg !1222
  br i1 %cmp109, label %for.body110, label %for.end114, !dbg !1224

for.body110:                                      ; preds = %for.cond107
  %add.ptr111 = getelementptr inbounds nuw i64, ptr %A, i32 %c106.0, !dbg !1225
  call fastcc void @transpose_16x16_nibbles(ptr noundef nonnull %add.ptr111) #6, !dbg !1227
  %add113 = add nuw nsw i32 %c106.0, 16, !dbg !1228
    #dbg_value(i32 %add113, !1220, !DIExpression(), !1221)
  br label %for.cond107, !dbg !1229, !llvm.loop !1230

for.end114:                                       ; preds = %for.cond107
    #dbg_declare(ptr %tab, !1232, !DIExpression(), !1236)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %tab, i8 0, i32 16, i1 false), !dbg !1236
    #dbg_value(i32 0, !1237, !DIExpression(), !1239)
  br label %for.cond116, !dbg !1240

for.cond116:                                      ; preds = %for.body118, %for.end114
  %i115.0 = phi i32 [ 0, %for.end114 ], [ %inc138.3, %for.body118 ], !dbg !1241
    #dbg_value(i32 %i115.0, !1237, !DIExpression(), !1239)
  %exitcond9.not = icmp eq i32 %i115.0, 4, !dbg !1242
  br i1 %exitcond9.not, label %for.cond141, label %for.body118, !dbg !1244

for.body118:                                      ; preds = %for.cond116
  %arrayidx119 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %i115.0, !dbg !1245
  %99 = load i8, ptr %arrayidx119, align 1, !dbg !1245
  %call = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %99, i8 noundef zeroext 1) #6, !dbg !1247
  %mul120 = shl nuw nsw i32 %i115.0, 2, !dbg !1248
  %arrayidx121 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %mul120, !dbg !1249
  store i8 %call, ptr %arrayidx121, align 1, !dbg !1250
  %call123 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %99, i8 noundef zeroext 2) #6, !dbg !1251
  %mul124 = shl nuw nsw i32 %i115.0, 2, !dbg !1252
  %add125 = or disjoint i32 %mul124, 1, !dbg !1253
  %arrayidx126 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add125, !dbg !1254
  store i8 %call123, ptr %arrayidx126, align 1, !dbg !1255
  %call128 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %99, i8 noundef zeroext 4) #6, !dbg !1256
  %mul129 = shl nuw nsw i32 %i115.0, 2, !dbg !1257
  %add130 = or disjoint i32 %mul129, 2, !dbg !1258
  %arrayidx131 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add130, !dbg !1259
  store i8 %call128, ptr %arrayidx131, align 1, !dbg !1260
  %call133 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %99, i8 noundef zeroext 8) #6, !dbg !1261
  %mul134 = shl nuw nsw i32 %i115.0, 2, !dbg !1262
  %add135 = or disjoint i32 %mul134, 3, !dbg !1263
  %arrayidx136 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add135, !dbg !1264
  store i8 %call133, ptr %arrayidx136, align 1, !dbg !1265
    #dbg_value(i32 %i115.0, !1237, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1239)
  %inc138 = or disjoint i32 %i115.0, 1, !dbg !1266
    #dbg_value(i32 %inc138, !1237, !DIExpression(), !1239)
  %arrayidx119.1 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %inc138, !dbg !1245
  %100 = load i8, ptr %arrayidx119.1, align 1, !dbg !1245
  %call.1 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %100, i8 noundef zeroext 1) #6, !dbg !1247
  %mul120.1 = shl nuw nsw i32 %inc138, 2, !dbg !1248
  %arrayidx121.1 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %mul120.1, !dbg !1249
  store i8 %call.1, ptr %arrayidx121.1, align 1, !dbg !1250
  %call123.1 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %100, i8 noundef zeroext 2) #6, !dbg !1251
  %mul124.1 = shl nuw nsw i32 %inc138, 2, !dbg !1252
  %add125.1 = or disjoint i32 %mul124.1, 1, !dbg !1253
  %arrayidx126.1 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add125.1, !dbg !1254
  store i8 %call123.1, ptr %arrayidx126.1, align 1, !dbg !1255
  %call128.1 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %100, i8 noundef zeroext 4) #6, !dbg !1256
  %mul129.1 = shl nuw nsw i32 %inc138, 2, !dbg !1257
  %add130.1 = or disjoint i32 %mul129.1, 2, !dbg !1258
  %arrayidx131.1 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add130.1, !dbg !1259
  store i8 %call128.1, ptr %arrayidx131.1, align 1, !dbg !1260
  %call133.1 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %100, i8 noundef zeroext 8) #6, !dbg !1261
  %mul134.1 = shl nuw nsw i32 %inc138, 2, !dbg !1262
  %add135.1 = or disjoint i32 %mul134.1, 3, !dbg !1263
  %arrayidx136.1 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add135.1, !dbg !1264
  store i8 %call133.1, ptr %arrayidx136.1, align 1, !dbg !1265
    #dbg_value(i32 %i115.0, !1237, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !1239)
  %inc138.1 = or disjoint i32 %i115.0, 2, !dbg !1266
    #dbg_value(i32 %inc138.1, !1237, !DIExpression(), !1239)
  %arrayidx119.2 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %inc138.1, !dbg !1245
  %101 = load i8, ptr %arrayidx119.2, align 1, !dbg !1245
  %call.2 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %101, i8 noundef zeroext 1) #6, !dbg !1247
  %mul120.2 = shl nuw nsw i32 %inc138.1, 2, !dbg !1248
  %arrayidx121.2 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %mul120.2, !dbg !1249
  store i8 %call.2, ptr %arrayidx121.2, align 1, !dbg !1250
  %call123.2 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %101, i8 noundef zeroext 2) #6, !dbg !1251
  %mul124.2 = shl nuw nsw i32 %inc138.1, 2, !dbg !1252
  %add125.2 = or disjoint i32 %mul124.2, 1, !dbg !1253
  %arrayidx126.2 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add125.2, !dbg !1254
  store i8 %call123.2, ptr %arrayidx126.2, align 1, !dbg !1255
  %call128.2 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %101, i8 noundef zeroext 4) #6, !dbg !1256
  %mul129.2 = shl nuw nsw i32 %inc138.1, 2, !dbg !1257
  %add130.2 = or disjoint i32 %mul129.2, 2, !dbg !1258
  %arrayidx131.2 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add130.2, !dbg !1259
  store i8 %call128.2, ptr %arrayidx131.2, align 1, !dbg !1260
  %call133.2 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %101, i8 noundef zeroext 8) #6, !dbg !1261
  %mul134.2 = shl nuw nsw i32 %inc138.1, 2, !dbg !1262
  %add135.2 = or disjoint i32 %mul134.2, 3, !dbg !1263
  %arrayidx136.2 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add135.2, !dbg !1264
  store i8 %call133.2, ptr %arrayidx136.2, align 1, !dbg !1265
    #dbg_value(i32 %i115.0, !1237, !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value), !1239)
  %inc138.2 = or disjoint i32 %i115.0, 3, !dbg !1266
    #dbg_value(i32 %inc138.2, !1237, !DIExpression(), !1239)
  %arrayidx119.3 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %inc138.2, !dbg !1245
  %102 = load i8, ptr %arrayidx119.3, align 1, !dbg !1245
  %call.3 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %102, i8 noundef zeroext 1) #6, !dbg !1247
  %mul120.3 = shl nuw nsw i32 %inc138.2, 2, !dbg !1248
  %arrayidx121.3 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %mul120.3, !dbg !1249
  store i8 %call.3, ptr %arrayidx121.3, align 1, !dbg !1250
  %call123.3 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %102, i8 noundef zeroext 2) #6, !dbg !1251
  %mul124.3 = shl nuw nsw i32 %inc138.2, 2, !dbg !1252
  %add125.3 = or disjoint i32 %mul124.3, 1, !dbg !1253
  %arrayidx126.3 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add125.3, !dbg !1254
  store i8 %call123.3, ptr %arrayidx126.3, align 1, !dbg !1255
  %call128.3 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %102, i8 noundef zeroext 4) #6, !dbg !1256
  %mul129.3 = shl nuw nsw i32 %inc138.2, 2, !dbg !1257
  %add130.3 = or disjoint i32 %mul129.3, 2, !dbg !1258
  %arrayidx131.3 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add130.3, !dbg !1259
  store i8 %call128.3, ptr %arrayidx131.3, align 1, !dbg !1260
  %call133.3 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %102, i8 noundef zeroext 8) #6, !dbg !1261
  %mul134.3 = shl nuw nsw i32 %inc138.2, 2, !dbg !1262
  %add135.3 = or disjoint i32 %mul134.3, 3, !dbg !1263
  %arrayidx136.3 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add135.3, !dbg !1264
  store i8 %call133.3, ptr %arrayidx136.3, align 1, !dbg !1265
  %inc138.3 = add nuw nsw i32 %i115.0, 4, !dbg !1266
    #dbg_value(i32 %inc138.3, !1237, !DIExpression(), !1239)
  br label %for.cond116, !dbg !1267, !llvm.loop !1268

for.cond141:                                      ; preds = %for.cond116, %for.inc203
  %c140.0 = phi i32 [ %add204, %for.inc203 ], [ 0, %for.cond116 ], !dbg !1270
    #dbg_value(i32 %c140.0, !1272, !DIExpression(), !1273)
  %cmp142 = icmp samesign ult i32 %c140.0, 80, !dbg !1274
  br i1 %cmp142, label %for.cond144, label %for.cond207, !dbg !1276

for.cond144:                                      ; preds = %for.cond141, %for.body146
  %r.0 = phi i32 [ %inc201, %for.body146 ], [ 78, %for.cond141 ], !dbg !1277
    #dbg_value(i32 %r.0, !1280, !DIExpression(), !1281)
  %exitcond11.not = icmp eq i32 %r.0, 133, !dbg !1282
  br i1 %exitcond11.not, label %for.inc203, label %for.body146, !dbg !1284

for.body146:                                      ; preds = %for.cond144
  %div1 = lshr i32 %r.0, 4, !dbg !1285
  %mul147 = mul nuw nsw i32 %div1, 80, !dbg !1287
  %add148 = add nuw nsw i32 %mul147, %c140.0, !dbg !1288
  %rem = and i32 %r.0, 15, !dbg !1289
  %add149 = or disjoint i32 %add148, %rem, !dbg !1290
    #dbg_value(i32 %add149, !1291, !DIExpression(), !1292)
  %arrayidx150 = getelementptr inbounds nuw [800 x i64], ptr %A, i32 0, i32 %add149, !dbg !1293
  %103 = load i64, ptr %arrayidx150, align 8, !dbg !1293
  %and151 = and i64 %103, 1229782938247303441, !dbg !1294
    #dbg_value(i64 %and151, !1295, !DIExpression(), !1292)
  %shr153 = lshr i64 %103, 1, !dbg !1296
  %and154 = and i64 %shr153, 1229782938247303441, !dbg !1297
    #dbg_value(i64 %and154, !1298, !DIExpression(), !1292)
  %shr156 = lshr i64 %103, 2, !dbg !1299
  %and157 = and i64 %shr156, 1229782938247303441, !dbg !1300
    #dbg_value(i64 %and157, !1301, !DIExpression(), !1292)
  %arrayidx158 = getelementptr inbounds nuw [800 x i64], ptr %A, i32 0, i32 %add149, !dbg !1302
  %104 = load i64, ptr %arrayidx158, align 8, !dbg !1302
  %shr159 = lshr i64 %104, 3, !dbg !1303
  %and160 = and i64 %shr159, 1229782938247303441, !dbg !1304
    #dbg_value(i64 %and160, !1305, !DIExpression(), !1292)
    #dbg_value(i32 0, !1306, !DIExpression(), !1308)
    #dbg_value(i32 0, !1306, !DIExpression(), !1308)
  %105 = load i8, ptr %tab, align 1, !dbg !1309
  %conv = zext i8 %105 to i64, !dbg !1309
  %mul167 = mul i64 %and151, %conv, !dbg !1312
  %arrayidx170 = getelementptr inbounds nuw i8, ptr %tab, i32 1, !dbg !1313
  %106 = load i8, ptr %arrayidx170, align 1, !dbg !1313
  %conv171 = zext i8 %106 to i64, !dbg !1313
  %mul172 = mul i64 %and154, %conv171, !dbg !1314
  %xor173 = xor i64 %mul167, %mul172, !dbg !1315
  %arrayidx176 = getelementptr inbounds nuw i8, ptr %tab, i32 2, !dbg !1316
  %107 = load i8, ptr %arrayidx176, align 1, !dbg !1316
  %conv177 = zext i8 %107 to i64, !dbg !1316
  %mul178 = mul i64 %and157, %conv177, !dbg !1317
  %xor179 = xor i64 %xor173, %mul178, !dbg !1318
  %arrayidx182 = getelementptr inbounds nuw i8, ptr %tab, i32 3, !dbg !1319
  %108 = load i8, ptr %arrayidx182, align 1, !dbg !1319
  %conv183 = zext i8 %108 to i64, !dbg !1319
  %mul184 = mul i64 %and160, %conv183, !dbg !1320
  %xor185 = xor i64 %xor179, %mul184, !dbg !1321
  %sub187 = add nsw i32 %r.0, -78, !dbg !1322
  %div1882 = lshr i32 %sub187, 4, !dbg !1323
  %mul189 = mul i32 %div1882, 80, !dbg !1324
  %add190 = add i32 %mul189, %c140.0, !dbg !1325
  %sub192 = add nuw nsw i32 %r.0, 2, !dbg !1326
  %rem193 = and i32 %sub192, 15, !dbg !1327
  %add194 = or disjoint i32 %add190, %rem193, !dbg !1328
  %arrayidx195 = getelementptr inbounds nuw [800 x i64], ptr %A, i32 0, i32 %add194, !dbg !1329
  %109 = load i64, ptr %arrayidx195, align 8, !dbg !1330
  %xor196 = xor i64 %109, %xor185, !dbg !1330
  store i64 %xor196, ptr %arrayidx195, align 8, !dbg !1330
    #dbg_value(i32 1, !1306, !DIExpression(), !1308)
  %arrayidx166.1 = getelementptr inbounds nuw i8, ptr %tab, i32 4, !dbg !1309
  %110 = load i8, ptr %arrayidx166.1, align 1, !dbg !1309
  %conv.1 = zext i8 %110 to i64, !dbg !1309
  %mul167.1 = mul i64 %and151, %conv.1, !dbg !1312
  %arrayidx170.1 = getelementptr inbounds nuw i8, ptr %tab, i32 5, !dbg !1313
  %111 = load i8, ptr %arrayidx170.1, align 1, !dbg !1313
  %conv171.1 = zext i8 %111 to i64, !dbg !1313
  %mul172.1 = mul i64 %and154, %conv171.1, !dbg !1314
  %xor173.1 = xor i64 %mul167.1, %mul172.1, !dbg !1315
  %arrayidx176.1 = getelementptr inbounds nuw i8, ptr %tab, i32 6, !dbg !1316
  %112 = load i8, ptr %arrayidx176.1, align 1, !dbg !1316
  %conv177.1 = zext i8 %112 to i64, !dbg !1316
  %mul178.1 = mul i64 %and157, %conv177.1, !dbg !1317
  %xor179.1 = xor i64 %xor173.1, %mul178.1, !dbg !1318
  %arrayidx182.1 = getelementptr inbounds nuw i8, ptr %tab, i32 7, !dbg !1319
  %113 = load i8, ptr %arrayidx182.1, align 1, !dbg !1319
  %conv183.1 = zext i8 %113 to i64, !dbg !1319
  %mul184.1 = mul i64 %and160, %conv183.1, !dbg !1320
  %xor185.1 = xor i64 %xor179.1, %mul184.1, !dbg !1321
  %sub187.1 = add nsw i32 %r.0, -77, !dbg !1322
  %div1882.1 = lshr i32 %sub187.1, 4, !dbg !1323
  %mul189.1 = mul i32 %div1882.1, 80, !dbg !1324
  %add190.1 = add i32 %mul189.1, %c140.0, !dbg !1325
  %sub192.1 = add nuw nsw i32 %r.0, 3, !dbg !1326
  %rem193.1 = and i32 %sub192.1, 15, !dbg !1327
  %add194.1 = or disjoint i32 %add190.1, %rem193.1, !dbg !1328
  %arrayidx195.1 = getelementptr inbounds nuw [800 x i64], ptr %A, i32 0, i32 %add194.1, !dbg !1329
  %114 = load i64, ptr %arrayidx195.1, align 8, !dbg !1330
  %xor196.1 = xor i64 %114, %xor185.1, !dbg !1330
  store i64 %xor196.1, ptr %arrayidx195.1, align 8, !dbg !1330
    #dbg_value(i32 2, !1306, !DIExpression(), !1308)
  %arrayidx166.2 = getelementptr inbounds nuw i8, ptr %tab, i32 8, !dbg !1309
  %115 = load i8, ptr %arrayidx166.2, align 1, !dbg !1309
  %conv.2 = zext i8 %115 to i64, !dbg !1309
  %mul167.2 = mul i64 %and151, %conv.2, !dbg !1312
  %arrayidx170.2 = getelementptr inbounds nuw i8, ptr %tab, i32 9, !dbg !1313
  %116 = load i8, ptr %arrayidx170.2, align 1, !dbg !1313
  %conv171.2 = zext i8 %116 to i64, !dbg !1313
  %mul172.2 = mul i64 %and154, %conv171.2, !dbg !1314
  %xor173.2 = xor i64 %mul167.2, %mul172.2, !dbg !1315
  %arrayidx176.2 = getelementptr inbounds nuw i8, ptr %tab, i32 10, !dbg !1316
  %117 = load i8, ptr %arrayidx176.2, align 1, !dbg !1316
  %conv177.2 = zext i8 %117 to i64, !dbg !1316
  %mul178.2 = mul i64 %and157, %conv177.2, !dbg !1317
  %xor179.2 = xor i64 %xor173.2, %mul178.2, !dbg !1318
  %arrayidx182.2 = getelementptr inbounds nuw i8, ptr %tab, i32 11, !dbg !1319
  %118 = load i8, ptr %arrayidx182.2, align 1, !dbg !1319
  %conv183.2 = zext i8 %118 to i64, !dbg !1319
  %mul184.2 = mul i64 %and160, %conv183.2, !dbg !1320
  %xor185.2 = xor i64 %xor179.2, %mul184.2, !dbg !1321
  %sub187.2 = add nsw i32 %r.0, -76, !dbg !1322
  %div1882.2 = lshr i32 %sub187.2, 4, !dbg !1323
  %mul189.2 = mul i32 %div1882.2, 80, !dbg !1324
  %add190.2 = add i32 %mul189.2, %c140.0, !dbg !1325
  %sub192.2 = add nuw nsw i32 %r.0, 4, !dbg !1326
  %rem193.2 = and i32 %sub192.2, 15, !dbg !1327
  %add194.2 = or disjoint i32 %add190.2, %rem193.2, !dbg !1328
  %arrayidx195.2 = getelementptr inbounds nuw [800 x i64], ptr %A, i32 0, i32 %add194.2, !dbg !1329
  %119 = load i64, ptr %arrayidx195.2, align 8, !dbg !1330
  %xor196.2 = xor i64 %119, %xor185.2, !dbg !1330
  store i64 %xor196.2, ptr %arrayidx195.2, align 8, !dbg !1330
    #dbg_value(i32 3, !1306, !DIExpression(), !1308)
  %arrayidx166.3 = getelementptr inbounds nuw i8, ptr %tab, i32 12, !dbg !1309
  %120 = load i8, ptr %arrayidx166.3, align 1, !dbg !1309
  %conv.3 = zext i8 %120 to i64, !dbg !1309
  %mul167.3 = mul i64 %and151, %conv.3, !dbg !1312
  %arrayidx170.3 = getelementptr inbounds nuw i8, ptr %tab, i32 13, !dbg !1313
  %121 = load i8, ptr %arrayidx170.3, align 1, !dbg !1313
  %conv171.3 = zext i8 %121 to i64, !dbg !1313
  %mul172.3 = mul i64 %and154, %conv171.3, !dbg !1314
  %xor173.3 = xor i64 %mul167.3, %mul172.3, !dbg !1315
  %arrayidx176.3 = getelementptr inbounds nuw i8, ptr %tab, i32 14, !dbg !1316
  %122 = load i8, ptr %arrayidx176.3, align 1, !dbg !1316
  %conv177.3 = zext i8 %122 to i64, !dbg !1316
  %mul178.3 = mul i64 %and157, %conv177.3, !dbg !1317
  %xor179.3 = xor i64 %xor173.3, %mul178.3, !dbg !1318
  %arrayidx182.3 = getelementptr inbounds nuw i8, ptr %tab, i32 15, !dbg !1319
  %123 = load i8, ptr %arrayidx182.3, align 1, !dbg !1319
  %conv183.3 = zext i8 %123 to i64, !dbg !1319
  %mul184.3 = mul i64 %and160, %conv183.3, !dbg !1320
  %xor185.3 = xor i64 %xor179.3, %mul184.3, !dbg !1321
  %sub187.3 = add nsw i32 %r.0, -75, !dbg !1322
  %div1882.3 = lshr i32 %sub187.3, 4, !dbg !1323
  %mul189.3 = mul i32 %div1882.3, 80, !dbg !1324
  %add190.3 = add i32 %mul189.3, %c140.0, !dbg !1325
  %sub192.3 = add nuw nsw i32 %r.0, 5, !dbg !1326
  %rem193.3 = and i32 %sub192.3, 15, !dbg !1327
  %add194.3 = or disjoint i32 %add190.3, %rem193.3, !dbg !1328
  %arrayidx195.3 = getelementptr inbounds nuw [800 x i64], ptr %A, i32 0, i32 %add194.3, !dbg !1329
  %124 = load i64, ptr %arrayidx195.3, align 8, !dbg !1330
  %xor196.3 = xor i64 %124, %xor185.3, !dbg !1330
  store i64 %xor196.3, ptr %arrayidx195.3, align 8, !dbg !1330
    #dbg_value(i32 4, !1306, !DIExpression(), !1308)
  %inc201 = add nuw nsw i32 %r.0, 1, !dbg !1331
    #dbg_value(i32 %inc201, !1280, !DIExpression(), !1281)
  br label %for.cond144, !dbg !1332, !llvm.loop !1333

for.inc203:                                       ; preds = %for.cond144
  %add204 = add nuw nsw i32 %c140.0, 16, !dbg !1335
    #dbg_value(i32 %add204, !1272, !DIExpression(), !1273)
  br label %for.cond141, !dbg !1336, !llvm.loop !1337

for.cond207:                                      ; preds = %for.cond141, %for.inc241
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc241 ], [ 78, %for.cond141 ], !dbg !1339
  %r206.0 = phi i32 [ %add242, %for.inc241 ], [ 0, %for.cond141 ], !dbg !1339
    #dbg_value(i32 %r206.0, !1341, !DIExpression(), !1342)
  %cmp208 = icmp samesign ult i32 %r206.0, 78, !dbg !1343
  br i1 %cmp208, label %for.cond217, label %for.end243, !dbg !1345

for.cond217:                                      ; preds = %for.cond207, %for.body221
  %i216.0 = phi i32 [ %inc236, %for.body221 ], [ 0, %for.cond207 ], !dbg !1346
    #dbg_value(i32 %i216.0, !1352, !DIExpression(), !1353)
  %exitcond12.not = icmp eq i32 %i216.0, %indvars.iv, !dbg !1354
  br i1 %exitcond12.not, label %for.cond217.1, label %for.body221, !dbg !1356

for.body221:                                      ; preds = %for.cond217
  %div223 = mul nuw nsw i32 %r206.0, 5, !dbg !1357
  %add225 = add nuw nsw i32 %div223, %i216.0, !dbg !1359
  %arrayidx226 = getelementptr inbounds nuw [800 x i64], ptr %A, i32 0, i32 %add225, !dbg !1360
  %add227 = add nuw nsw i32 %r206.0, %i216.0, !dbg !1361
  %mul228 = mul nuw nsw i32 %add227, 81, !dbg !1362
  %add.ptr229 = getelementptr inbounds nuw i8, ptr %A_out, i32 %mul228, !dbg !1363
  call fastcc void @decode(ptr noundef nonnull %arrayidx226, ptr noundef %add.ptr229, i32 noundef 16) #6, !dbg !1364
  %inc236 = add nuw nsw i32 %i216.0, 1, !dbg !1365
    #dbg_value(i32 %inc236, !1352, !DIExpression(), !1353)
  br label %for.cond217, !dbg !1366, !llvm.loop !1367

for.cond217.1:                                    ; preds = %for.cond217, %for.body221.1
  %i216.0.1 = phi i32 [ %inc236.1, %for.body221.1 ], [ 0, %for.cond217 ], !dbg !1346
    #dbg_value(i32 %i216.0.1, !1352, !DIExpression(), !1353)
  %exitcond12.1.not = icmp eq i32 %i216.0.1, %indvars.iv, !dbg !1354
  br i1 %exitcond12.1.not, label %for.cond217.2, label %for.body221.1, !dbg !1356

for.body221.1:                                    ; preds = %for.cond217.1
  %div223.1 = mul nuw nsw i32 %r206.0, 5, !dbg !1357
  %add224.1 = add nuw nsw i32 %div223.1, 16, !dbg !1369
  %add225.1 = add nuw nsw i32 %add224.1, %i216.0.1, !dbg !1359
  %arrayidx226.1 = getelementptr inbounds nuw [800 x i64], ptr %A, i32 0, i32 %add225.1, !dbg !1360
  %add227.1 = add nuw nsw i32 %r206.0, %i216.0.1, !dbg !1361
  %mul228.1 = mul nuw nsw i32 %add227.1, 81, !dbg !1362
  %add.ptr229.1 = getelementptr inbounds nuw i8, ptr %A_out, i32 %mul228.1, !dbg !1363
  %add.ptr230.1 = getelementptr inbounds nuw i8, ptr %add.ptr229.1, i32 16, !dbg !1370
  call fastcc void @decode(ptr noundef nonnull %arrayidx226.1, ptr noundef nonnull %add.ptr230.1, i32 noundef 16) #6, !dbg !1364
  %inc236.1 = add nuw nsw i32 %i216.0.1, 1, !dbg !1365
    #dbg_value(i32 %inc236.1, !1352, !DIExpression(), !1353)
  br label %for.cond217.1, !dbg !1366, !llvm.loop !1367

for.cond217.2:                                    ; preds = %for.cond217.1, %for.body221.2
  %i216.0.2 = phi i32 [ %inc236.2, %for.body221.2 ], [ 0, %for.cond217.1 ], !dbg !1346
    #dbg_value(i32 %i216.0.2, !1352, !DIExpression(), !1353)
  %exitcond12.2.not = icmp eq i32 %i216.0.2, %indvars.iv, !dbg !1354
  br i1 %exitcond12.2.not, label %for.cond217.3, label %for.body221.2, !dbg !1356

for.body221.2:                                    ; preds = %for.cond217.2
  %div223.2 = mul nuw nsw i32 %r206.0, 5, !dbg !1357
  %add224.2 = add nuw nsw i32 %div223.2, 32, !dbg !1369
  %add225.2 = add nuw nsw i32 %add224.2, %i216.0.2, !dbg !1359
  %arrayidx226.2 = getelementptr inbounds nuw [800 x i64], ptr %A, i32 0, i32 %add225.2, !dbg !1360
  %add227.2 = add nuw nsw i32 %r206.0, %i216.0.2, !dbg !1361
  %mul228.2 = mul nuw nsw i32 %add227.2, 81, !dbg !1362
  %add.ptr229.2 = getelementptr inbounds nuw i8, ptr %A_out, i32 %mul228.2, !dbg !1363
  %add.ptr230.2 = getelementptr inbounds nuw i8, ptr %add.ptr229.2, i32 32, !dbg !1370
  call fastcc void @decode(ptr noundef nonnull %arrayidx226.2, ptr noundef nonnull %add.ptr230.2, i32 noundef 16) #6, !dbg !1364
  %inc236.2 = add nuw nsw i32 %i216.0.2, 1, !dbg !1365
    #dbg_value(i32 %inc236.2, !1352, !DIExpression(), !1353)
  br label %for.cond217.2, !dbg !1366, !llvm.loop !1367

for.cond217.3:                                    ; preds = %for.cond217.2, %for.body221.3
  %i216.0.3 = phi i32 [ %inc236.3, %for.body221.3 ], [ 0, %for.cond217.2 ], !dbg !1346
    #dbg_value(i32 %i216.0.3, !1352, !DIExpression(), !1353)
  %exitcond12.3.not = icmp eq i32 %i216.0.3, %indvars.iv, !dbg !1354
  br i1 %exitcond12.3.not, label %for.cond217.4, label %for.body221.3, !dbg !1356

for.body221.3:                                    ; preds = %for.cond217.3
  %div223.3 = mul nuw nsw i32 %r206.0, 5, !dbg !1357
  %add224.3 = add nuw nsw i32 %div223.3, 48, !dbg !1369
  %add225.3 = add nuw nsw i32 %add224.3, %i216.0.3, !dbg !1359
  %arrayidx226.3 = getelementptr inbounds nuw [800 x i64], ptr %A, i32 0, i32 %add225.3, !dbg !1360
  %add227.3 = add nuw nsw i32 %r206.0, %i216.0.3, !dbg !1361
  %mul228.3 = mul nuw nsw i32 %add227.3, 81, !dbg !1362
  %add.ptr229.3 = getelementptr inbounds nuw i8, ptr %A_out, i32 %mul228.3, !dbg !1363
  %add.ptr230.3 = getelementptr inbounds nuw i8, ptr %add.ptr229.3, i32 48, !dbg !1370
  call fastcc void @decode(ptr noundef nonnull %arrayidx226.3, ptr noundef nonnull %add.ptr230.3, i32 noundef 16) #6, !dbg !1364
  %inc236.3 = add nuw nsw i32 %i216.0.3, 1, !dbg !1365
    #dbg_value(i32 %inc236.3, !1352, !DIExpression(), !1353)
  br label %for.cond217.3, !dbg !1366, !llvm.loop !1367

for.cond217.4:                                    ; preds = %for.cond217.3, %for.body221.4
  %i216.0.4 = phi i32 [ %inc236.4, %for.body221.4 ], [ 0, %for.cond217.3 ], !dbg !1346
    #dbg_value(i32 %i216.0.4, !1352, !DIExpression(), !1353)
  %exitcond12.4.not = icmp eq i32 %i216.0.4, %indvars.iv, !dbg !1354
  br i1 %exitcond12.4.not, label %for.inc241, label %for.body221.4, !dbg !1356

for.body221.4:                                    ; preds = %for.cond217.4
  %div223.4 = mul nuw nsw i32 %r206.0, 5, !dbg !1357
  %add224.4 = add nuw nsw i32 %div223.4, 64, !dbg !1369
  %add225.4 = add nuw nsw i32 %add224.4, %i216.0.4, !dbg !1359
  %arrayidx226.4 = getelementptr inbounds nuw [800 x i64], ptr %A, i32 0, i32 %add225.4, !dbg !1360
  %add227.4 = add nuw nsw i32 %r206.0, %i216.0.4, !dbg !1361
  %mul228.4 = mul nuw nsw i32 %add227.4, 81, !dbg !1362
  %add.ptr229.4 = getelementptr inbounds nuw i8, ptr %A_out, i32 %mul228.4, !dbg !1363
  %add.ptr230.4 = getelementptr inbounds nuw i8, ptr %add.ptr229.4, i32 64, !dbg !1370
  call fastcc void @decode(ptr noundef nonnull %arrayidx226.4, ptr noundef nonnull %add.ptr230.4, i32 noundef 16) #6, !dbg !1364
  %inc236.4 = add nuw nsw i32 %i216.0.4, 1, !dbg !1365
    #dbg_value(i32 %inc236.4, !1352, !DIExpression(), !1353)
  br label %for.cond217.4, !dbg !1366, !llvm.loop !1367

for.inc241:                                       ; preds = %for.cond217.4
    #dbg_value(i32 80, !1371, !DIExpression(), !1372)
  %add242 = add nuw nsw i32 %r206.0, 16, !dbg !1373
    #dbg_value(i32 %add242, !1341, !DIExpression(), !1342)
  %indvars.iv.next = add nsw i32 %indvars.iv, -16, !dbg !1374
  br label %for.cond207, !dbg !1374, !llvm.loop !1375

for.end243:                                       ; preds = %for.cond207
  ret void, !dbg !1377
}

declare dso_local ptr @memset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
define internal fastcc void @mat_mul(ptr noundef %a, ptr noundef %b, ptr noundef %c, i32 noundef %colrow_ab, i32 noundef %row_a, i32 noundef %col_b) unnamed_addr #0 !dbg !1378 {
entry:
    #dbg_value(ptr %a, !1381, !DIExpression(), !1382)
    #dbg_value(ptr %b, !1383, !DIExpression(), !1382)
    #dbg_value(ptr %c, !1384, !DIExpression(), !1382)
    #dbg_value(i32 %colrow_ab, !1385, !DIExpression(), !1382)
    #dbg_value(i32 %row_a, !1386, !DIExpression(), !1382)
    #dbg_value(i32 %col_b, !1387, !DIExpression(), !1382)
    #dbg_value(i32 0, !1388, !DIExpression(), !1390)
  %smax = call i32 @llvm.smax.i32(i32 %col_b, i32 0), !dbg !1391
  %smax1 = call i32 @llvm.smax.i32(i32 %row_a, i32 0), !dbg !1391
  br label %for.cond, !dbg !1391

for.cond:                                         ; preds = %for.inc4, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc5, %for.inc4 ], !dbg !1392
  %c.addr.0 = phi ptr [ %c, %entry ], [ %c.addr.1, %for.inc4 ]
  %a.addr.0 = phi ptr [ %a, %entry ], [ %add.ptr6, %for.inc4 ]
    #dbg_value(ptr %a.addr.0, !1381, !DIExpression(), !1382)
    #dbg_value(ptr %c.addr.0, !1384, !DIExpression(), !1382)
    #dbg_value(i32 %i.0, !1388, !DIExpression(), !1390)
  %exitcond2.not = icmp eq i32 %i.0, %smax1, !dbg !1393
  br i1 %exitcond2.not, label %for.end7, label %for.cond1, !dbg !1395

for.cond1:                                        ; preds = %for.cond, %for.body3
  %c.addr.1 = phi ptr [ %incdec.ptr, %for.body3 ], [ %c.addr.0, %for.cond ]
  %j.0 = phi i32 [ %inc, %for.body3 ], [ 0, %for.cond ], !dbg !1396
    #dbg_value(i32 %j.0, !1399, !DIExpression(), !1400)
    #dbg_value(ptr %c.addr.1, !1384, !DIExpression(), !1382)
  %exitcond.not = icmp eq i32 %j.0, %smax, !dbg !1401
  br i1 %exitcond.not, label %for.inc4, label %for.body3, !dbg !1403

for.body3:                                        ; preds = %for.cond1
  %add.ptr = getelementptr inbounds nuw i8, ptr %b, i32 %j.0, !dbg !1404
  %call = call fastcc zeroext i8 @lincomb(ptr noundef %a.addr.0, ptr noundef %add.ptr, i32 noundef %colrow_ab, i32 noundef %col_b) #6, !dbg !1406
  store i8 %call, ptr %c.addr.1, align 1, !dbg !1407
  %inc = add nuw i32 %j.0, 1, !dbg !1408
    #dbg_value(i32 %inc, !1399, !DIExpression(), !1400)
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %c.addr.1, i32 1, !dbg !1409
    #dbg_value(ptr %incdec.ptr, !1384, !DIExpression(), !1382)
  br label %for.cond1, !dbg !1410, !llvm.loop !1411

for.inc4:                                         ; preds = %for.cond1
  %inc5 = add nuw i32 %i.0, 1, !dbg !1413
    #dbg_value(i32 %inc5, !1388, !DIExpression(), !1390)
  %add.ptr6 = getelementptr inbounds i8, ptr %a.addr.0, i32 %colrow_ab, !dbg !1414
    #dbg_value(ptr %add.ptr6, !1381, !DIExpression(), !1382)
  br label %for.cond, !dbg !1415, !llvm.loop !1416

for.end7:                                         ; preds = %for.cond
  ret void, !dbg !1418
}

; Function Attrs: nounwind
define internal fastcc void @mat_add(ptr noundef %a, ptr noundef %b, ptr noundef %c, i32 noundef %m, i32 noundef %n) unnamed_addr #0 !dbg !1419 {
entry:
    #dbg_value(ptr %a, !1422, !DIExpression(), !1423)
    #dbg_value(ptr %b, !1424, !DIExpression(), !1423)
    #dbg_value(ptr %c, !1425, !DIExpression(), !1423)
    #dbg_value(i32 %m, !1426, !DIExpression(), !1423)
    #dbg_value(i32 %n, !1427, !DIExpression(), !1423)
    #dbg_value(i32 0, !1428, !DIExpression(), !1430)
  %smax = call i32 @llvm.smax.i32(i32 %n, i32 0), !dbg !1431
  %smax1 = call i32 @llvm.smax.i32(i32 %m, i32 0), !dbg !1431
  br label %for.cond, !dbg !1431

for.cond:                                         ; preds = %for.inc11, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc12, %for.inc11 ], !dbg !1432
    #dbg_value(i32 %i.0, !1428, !DIExpression(), !1430)
  %exitcond2.not = icmp eq i32 %i.0, %smax1, !dbg !1433
  br i1 %exitcond2.not, label %for.end13, label %for.cond1, !dbg !1435

for.cond1:                                        ; preds = %for.cond, %for.body3
  %j.0 = phi i32 [ %inc, %for.body3 ], [ 0, %for.cond ], !dbg !1436
    #dbg_value(i32 %j.0, !1439, !DIExpression(), !1440)
  %exitcond.not = icmp eq i32 %j.0, %smax, !dbg !1441
  br i1 %exitcond.not, label %for.inc11, label %for.body3, !dbg !1443

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %i.0, %n, !dbg !1444
  %add.ptr = getelementptr inbounds i8, ptr %a, i32 %mul, !dbg !1446
  %add.ptr4 = getelementptr inbounds nuw i8, ptr %add.ptr, i32 %j.0, !dbg !1447
  %0 = load i8, ptr %add.ptr4, align 1, !dbg !1448
  %mul5 = mul nsw i32 %i.0, %n, !dbg !1449
  %add.ptr6 = getelementptr inbounds i8, ptr %b, i32 %mul5, !dbg !1450
  %add.ptr7 = getelementptr inbounds nuw i8, ptr %add.ptr6, i32 %j.0, !dbg !1451
  %1 = load i8, ptr %add.ptr7, align 1, !dbg !1452
  %call = call fastcc zeroext i8 @add_f(i8 noundef zeroext %0, i8 noundef zeroext %1) #6, !dbg !1453
  %mul8 = mul nsw i32 %i.0, %n, !dbg !1454
  %add.ptr9 = getelementptr inbounds i8, ptr %c, i32 %mul8, !dbg !1455
  %add.ptr10 = getelementptr inbounds nuw i8, ptr %add.ptr9, i32 %j.0, !dbg !1456
  store i8 %call, ptr %add.ptr10, align 1, !dbg !1457
  %inc = add nuw i32 %j.0, 1, !dbg !1458
    #dbg_value(i32 %inc, !1439, !DIExpression(), !1440)
  br label %for.cond1, !dbg !1459, !llvm.loop !1460

for.inc11:                                        ; preds = %for.cond1
  %inc12 = add nuw i32 %i.0, 1, !dbg !1462
    #dbg_value(i32 %inc12, !1428, !DIExpression(), !1430)
  br label %for.cond, !dbg !1463, !llvm.loop !1464

for.end13:                                        ; preds = %for.cond
  ret void, !dbg !1466
}

; Function Attrs: nounwind
define internal fastcc void @encode(ptr noundef %m, ptr noundef %menc, i32 noundef %mlen) unnamed_addr #0 !dbg !1467 {
entry:
    #dbg_value(ptr %m, !1468, !DIExpression(), !1469)
    #dbg_value(ptr %menc, !1470, !DIExpression(), !1469)
    #dbg_value(i32 %mlen, !1471, !DIExpression(), !1469)
    #dbg_value(i32 0, !1472, !DIExpression(), !1469)
  br label %for.cond, !dbg !1473

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1475
  %m.addr.0 = phi ptr [ %m, %entry ], [ %add.ptr3, %for.body ]
    #dbg_value(ptr %m.addr.0, !1468, !DIExpression(), !1469)
    #dbg_value(i32 %i.0, !1472, !DIExpression(), !1469)
  %div = sdiv i32 %mlen, 2, !dbg !1476
  %cmp = icmp slt i32 %i.0, %div, !dbg !1478
  br i1 %cmp, label %for.body, label %for.end, !dbg !1479

for.body:                                         ; preds = %for.cond
  %0 = load i8, ptr %m.addr.0, align 1, !dbg !1480
  %add.ptr = getelementptr inbounds nuw i8, ptr %m.addr.0, i32 1, !dbg !1482
  %1 = load i8, ptr %add.ptr, align 1, !dbg !1483
  %shl = shl i8 %1, 4, !dbg !1484
  %or = or i8 %shl, %0, !dbg !1485
  %arrayidx = getelementptr inbounds nuw i8, ptr %menc, i32 %i.0, !dbg !1486
  store i8 %or, ptr %arrayidx, align 1, !dbg !1487
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1488
    #dbg_value(i32 %inc, !1472, !DIExpression(), !1469)
  %add.ptr3 = getelementptr inbounds nuw i8, ptr %m.addr.0, i32 2, !dbg !1489
    #dbg_value(ptr %add.ptr3, !1468, !DIExpression(), !1469)
  br label %for.cond, !dbg !1490, !llvm.loop !1491

for.end:                                          ; preds = %for.cond
  %2 = and i32 %mlen, -2147483647, !dbg !1493
  %cmp4 = icmp eq i32 %2, 1, !dbg !1493
  br i1 %cmp4, label %if.then, label %if.end, !dbg !1493

if.then:                                          ; preds = %for.end
  %3 = load i8, ptr %m.addr.0, align 1, !dbg !1495
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %menc, i32 %i.0, !dbg !1497
  store i8 %3, ptr %arrayidx6, align 1, !dbg !1498
  br label %if.end, !dbg !1499

if.end:                                           ; preds = %if.then, %for.end
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
define internal fastcc zeroext i8 @lincomb(ptr noundef %a, ptr noundef %b, i32 noundef %n, i32 noundef %m) unnamed_addr #0 !dbg !1509 {
entry:
    #dbg_value(ptr %a, !1512, !DIExpression(), !1513)
    #dbg_value(ptr %b, !1514, !DIExpression(), !1513)
    #dbg_value(i32 %n, !1515, !DIExpression(), !1513)
    #dbg_value(i32 %m, !1516, !DIExpression(), !1513)
    #dbg_value(i8 0, !1517, !DIExpression(), !1513)
    #dbg_value(i32 0, !1518, !DIExpression(), !1520)
  %smax = call i32 @llvm.smax.i32(i32 %n, i32 0), !dbg !1521
  br label %for.cond, !dbg !1521

for.cond:                                         ; preds = %for.body, %entry
  %ret.0 = phi i8 [ 0, %entry ], [ %call1, %for.body ], !dbg !1513
  %b.addr.0 = phi ptr [ %b, %entry ], [ %add.ptr, %for.body ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1522
    #dbg_value(i32 %i.0, !1518, !DIExpression(), !1520)
    #dbg_value(ptr %b.addr.0, !1514, !DIExpression(), !1513)
    #dbg_value(i8 %ret.0, !1517, !DIExpression(), !1513)
  %exitcond.not = icmp eq i32 %i.0, %smax, !dbg !1523
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !1525

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %a, i32 %i.0, !dbg !1526
  %0 = load i8, ptr %arrayidx, align 1, !dbg !1526
  %1 = load i8, ptr %b.addr.0, align 1, !dbg !1528
  %call = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %0, i8 noundef zeroext %1) #6, !dbg !1529
  %call1 = call fastcc zeroext i8 @add_f(i8 noundef zeroext %call, i8 noundef zeroext %ret.0) #6, !dbg !1530
    #dbg_value(i8 %call1, !1517, !DIExpression(), !1513)
  %inc = add nuw i32 %i.0, 1, !dbg !1531
    #dbg_value(i32 %inc, !1518, !DIExpression(), !1520)
  %add.ptr = getelementptr inbounds i8, ptr %b.addr.0, i32 %m, !dbg !1532
    #dbg_value(ptr %add.ptr, !1514, !DIExpression(), !1513)
  br label %for.cond, !dbg !1533, !llvm.loop !1534

for.end:                                          ; preds = %for.cond
  ret i8 %ret.0, !dbg !1536
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @mul_f(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !1537 {
entry:
    #dbg_value(i8 %a, !1538, !DIExpression(), !1539)
    #dbg_value(i8 %b, !1540, !DIExpression(), !1539)
  %0 = load volatile i8, ptr @pqmayo_MAYO_1_ref_unsigned_char_blocker, align 1, !dbg !1541
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
define internal fastcc void @transpose_16x16_nibbles(ptr noundef %M) unnamed_addr #0 !dbg !24 {
entry:
    #dbg_value(ptr %M, !1561, !DIExpression(), !1562)
    #dbg_value(i32 0, !1563, !DIExpression(), !1565)
    #dbg_value(i32 0, !1563, !DIExpression(), !1565)
  %0 = load i64, ptr %M, align 8, !dbg !1566
  %shr = lshr i64 %0, 4, !dbg !1569
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %M, i32 8, !dbg !1570
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !1570
  %xor = xor i64 %shr, %1, !dbg !1571
  %and = and i64 %xor, 1085102592571150095, !dbg !1572
    #dbg_value(i64 %and, !1573, !DIExpression(), !1574)
  %shl = shl nuw i64 %and, 4, !dbg !1575
  %2 = load i64, ptr %M, align 8, !dbg !1576
  %xor3 = xor i64 %2, %shl, !dbg !1576
  store i64 %xor3, ptr %M, align 8, !dbg !1576
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %M, i32 8, !dbg !1577
  %3 = load i64, ptr %arrayidx5, align 8, !dbg !1578
  %xor6 = xor i64 %3, %and, !dbg !1578
  store i64 %xor6, ptr %arrayidx5, align 8, !dbg !1578
    #dbg_value(i32 2, !1563, !DIExpression(), !1565)
  %arrayidx.1 = getelementptr inbounds nuw i8, ptr %M, i32 16, !dbg !1566
  %4 = load i64, ptr %arrayidx.1, align 8, !dbg !1566
  %shr.1 = lshr i64 %4, 4, !dbg !1569
  %arrayidx1.1 = getelementptr inbounds nuw i8, ptr %M, i32 24, !dbg !1570
  %5 = load i64, ptr %arrayidx1.1, align 8, !dbg !1570
  %xor.1 = xor i64 %shr.1, %5, !dbg !1571
  %and.1 = and i64 %xor.1, 1085102592571150095, !dbg !1572
    #dbg_value(i64 %and.1, !1573, !DIExpression(), !1574)
  %shl.1 = shl nuw i64 %and.1, 4, !dbg !1575
  %arrayidx2.1 = getelementptr inbounds nuw i8, ptr %M, i32 16, !dbg !1579
  %6 = load i64, ptr %arrayidx2.1, align 8, !dbg !1576
  %xor3.1 = xor i64 %6, %shl.1, !dbg !1576
  store i64 %xor3.1, ptr %arrayidx2.1, align 8, !dbg !1576
  %arrayidx5.1 = getelementptr inbounds nuw i8, ptr %M, i32 24, !dbg !1577
  %7 = load i64, ptr %arrayidx5.1, align 8, !dbg !1578
  %xor6.1 = xor i64 %7, %and.1, !dbg !1578
  store i64 %xor6.1, ptr %arrayidx5.1, align 8, !dbg !1578
    #dbg_value(i32 4, !1563, !DIExpression(), !1565)
  %arrayidx.2 = getelementptr inbounds nuw i8, ptr %M, i32 32, !dbg !1566
  %8 = load i64, ptr %arrayidx.2, align 8, !dbg !1566
  %shr.2 = lshr i64 %8, 4, !dbg !1569
  %arrayidx1.2 = getelementptr inbounds nuw i8, ptr %M, i32 40, !dbg !1570
  %9 = load i64, ptr %arrayidx1.2, align 8, !dbg !1570
  %xor.2 = xor i64 %shr.2, %9, !dbg !1571
  %and.2 = and i64 %xor.2, 1085102592571150095, !dbg !1572
    #dbg_value(i64 %and.2, !1573, !DIExpression(), !1574)
  %shl.2 = shl nuw i64 %and.2, 4, !dbg !1575
  %arrayidx2.2 = getelementptr inbounds nuw i8, ptr %M, i32 32, !dbg !1579
  %10 = load i64, ptr %arrayidx2.2, align 8, !dbg !1576
  %xor3.2 = xor i64 %10, %shl.2, !dbg !1576
  store i64 %xor3.2, ptr %arrayidx2.2, align 8, !dbg !1576
  %arrayidx5.2 = getelementptr inbounds nuw i8, ptr %M, i32 40, !dbg !1577
  %11 = load i64, ptr %arrayidx5.2, align 8, !dbg !1578
  %xor6.2 = xor i64 %11, %and.2, !dbg !1578
  store i64 %xor6.2, ptr %arrayidx5.2, align 8, !dbg !1578
    #dbg_value(i32 6, !1563, !DIExpression(), !1565)
  %arrayidx.3 = getelementptr inbounds nuw i8, ptr %M, i32 48, !dbg !1566
  %12 = load i64, ptr %arrayidx.3, align 8, !dbg !1566
  %shr.3 = lshr i64 %12, 4, !dbg !1569
  %arrayidx1.3 = getelementptr inbounds nuw i8, ptr %M, i32 56, !dbg !1570
  %13 = load i64, ptr %arrayidx1.3, align 8, !dbg !1570
  %xor.3 = xor i64 %shr.3, %13, !dbg !1571
  %and.3 = and i64 %xor.3, 1085102592571150095, !dbg !1572
    #dbg_value(i64 %and.3, !1573, !DIExpression(), !1574)
  %shl.3 = shl nuw i64 %and.3, 4, !dbg !1575
  %arrayidx2.3 = getelementptr inbounds nuw i8, ptr %M, i32 48, !dbg !1579
  %14 = load i64, ptr %arrayidx2.3, align 8, !dbg !1576
  %xor3.3 = xor i64 %14, %shl.3, !dbg !1576
  store i64 %xor3.3, ptr %arrayidx2.3, align 8, !dbg !1576
  %arrayidx5.3 = getelementptr inbounds nuw i8, ptr %M, i32 56, !dbg !1577
  %15 = load i64, ptr %arrayidx5.3, align 8, !dbg !1578
  %xor6.3 = xor i64 %15, %and.3, !dbg !1578
  store i64 %xor6.3, ptr %arrayidx5.3, align 8, !dbg !1578
    #dbg_value(i32 8, !1563, !DIExpression(), !1565)
  %arrayidx.4 = getelementptr inbounds nuw i8, ptr %M, i32 64, !dbg !1566
  %16 = load i64, ptr %arrayidx.4, align 8, !dbg !1566
  %shr.4 = lshr i64 %16, 4, !dbg !1569
  %arrayidx1.4 = getelementptr inbounds nuw i8, ptr %M, i32 72, !dbg !1570
  %17 = load i64, ptr %arrayidx1.4, align 8, !dbg !1570
  %xor.4 = xor i64 %shr.4, %17, !dbg !1571
  %and.4 = and i64 %xor.4, 1085102592571150095, !dbg !1572
    #dbg_value(i64 %and.4, !1573, !DIExpression(), !1574)
  %shl.4 = shl nuw i64 %and.4, 4, !dbg !1575
  %arrayidx2.4 = getelementptr inbounds nuw i8, ptr %M, i32 64, !dbg !1579
  %18 = load i64, ptr %arrayidx2.4, align 8, !dbg !1576
  %xor3.4 = xor i64 %18, %shl.4, !dbg !1576
  store i64 %xor3.4, ptr %arrayidx2.4, align 8, !dbg !1576
  %arrayidx5.4 = getelementptr inbounds nuw i8, ptr %M, i32 72, !dbg !1577
  %19 = load i64, ptr %arrayidx5.4, align 8, !dbg !1578
  %xor6.4 = xor i64 %19, %and.4, !dbg !1578
  store i64 %xor6.4, ptr %arrayidx5.4, align 8, !dbg !1578
    #dbg_value(i32 10, !1563, !DIExpression(), !1565)
  %arrayidx.5 = getelementptr inbounds nuw i8, ptr %M, i32 80, !dbg !1566
  %20 = load i64, ptr %arrayidx.5, align 8, !dbg !1566
  %shr.5 = lshr i64 %20, 4, !dbg !1569
  %arrayidx1.5 = getelementptr inbounds nuw i8, ptr %M, i32 88, !dbg !1570
  %21 = load i64, ptr %arrayidx1.5, align 8, !dbg !1570
  %xor.5 = xor i64 %shr.5, %21, !dbg !1571
  %and.5 = and i64 %xor.5, 1085102592571150095, !dbg !1572
    #dbg_value(i64 %and.5, !1573, !DIExpression(), !1574)
  %shl.5 = shl nuw i64 %and.5, 4, !dbg !1575
  %arrayidx2.5 = getelementptr inbounds nuw i8, ptr %M, i32 80, !dbg !1579
  %22 = load i64, ptr %arrayidx2.5, align 8, !dbg !1576
  %xor3.5 = xor i64 %22, %shl.5, !dbg !1576
  store i64 %xor3.5, ptr %arrayidx2.5, align 8, !dbg !1576
  %arrayidx5.5 = getelementptr inbounds nuw i8, ptr %M, i32 88, !dbg !1577
  %23 = load i64, ptr %arrayidx5.5, align 8, !dbg !1578
  %xor6.5 = xor i64 %23, %and.5, !dbg !1578
  store i64 %xor6.5, ptr %arrayidx5.5, align 8, !dbg !1578
    #dbg_value(i32 12, !1563, !DIExpression(), !1565)
  %arrayidx.6 = getelementptr inbounds nuw i8, ptr %M, i32 96, !dbg !1566
  %24 = load i64, ptr %arrayidx.6, align 8, !dbg !1566
  %shr.6 = lshr i64 %24, 4, !dbg !1569
  %arrayidx1.6 = getelementptr inbounds nuw i8, ptr %M, i32 104, !dbg !1570
  %25 = load i64, ptr %arrayidx1.6, align 8, !dbg !1570
  %xor.6 = xor i64 %shr.6, %25, !dbg !1571
  %and.6 = and i64 %xor.6, 1085102592571150095, !dbg !1572
    #dbg_value(i64 %and.6, !1573, !DIExpression(), !1574)
  %shl.6 = shl nuw i64 %and.6, 4, !dbg !1575
  %arrayidx2.6 = getelementptr inbounds nuw i8, ptr %M, i32 96, !dbg !1579
  %26 = load i64, ptr %arrayidx2.6, align 8, !dbg !1576
  %xor3.6 = xor i64 %26, %shl.6, !dbg !1576
  store i64 %xor3.6, ptr %arrayidx2.6, align 8, !dbg !1576
  %arrayidx5.6 = getelementptr inbounds nuw i8, ptr %M, i32 104, !dbg !1577
  %27 = load i64, ptr %arrayidx5.6, align 8, !dbg !1578
  %xor6.6 = xor i64 %27, %and.6, !dbg !1578
  store i64 %xor6.6, ptr %arrayidx5.6, align 8, !dbg !1578
    #dbg_value(i32 14, !1563, !DIExpression(), !1565)
  %arrayidx.7 = getelementptr inbounds nuw i8, ptr %M, i32 112, !dbg !1566
  %28 = load i64, ptr %arrayidx.7, align 8, !dbg !1566
  %shr.7 = lshr i64 %28, 4, !dbg !1569
  %arrayidx1.7 = getelementptr inbounds nuw i8, ptr %M, i32 120, !dbg !1570
  %29 = load i64, ptr %arrayidx1.7, align 8, !dbg !1570
  %xor.7 = xor i64 %shr.7, %29, !dbg !1571
  %and.7 = and i64 %xor.7, 1085102592571150095, !dbg !1572
    #dbg_value(i64 %and.7, !1573, !DIExpression(), !1574)
  %shl.7 = shl nuw i64 %and.7, 4, !dbg !1575
  %arrayidx2.7 = getelementptr inbounds nuw i8, ptr %M, i32 112, !dbg !1579
  %30 = load i64, ptr %arrayidx2.7, align 8, !dbg !1576
  %xor3.7 = xor i64 %30, %shl.7, !dbg !1576
  store i64 %xor3.7, ptr %arrayidx2.7, align 8, !dbg !1576
  %arrayidx5.7 = getelementptr inbounds nuw i8, ptr %M, i32 120, !dbg !1577
  %31 = load i64, ptr %arrayidx5.7, align 8, !dbg !1578
  %xor6.7 = xor i64 %31, %and.7, !dbg !1578
  store i64 %xor6.7, ptr %arrayidx5.7, align 8, !dbg !1578
    #dbg_value(i32 16, !1563, !DIExpression(), !1565)
    #dbg_value(i32 0, !1580, !DIExpression(), !1582)
  %32 = load i64, ptr %M, align 8, !dbg !1583
  %shr13 = lshr i64 %32, 8, !dbg !1586
  %arrayidx15 = getelementptr inbounds nuw i8, ptr %M, i32 16, !dbg !1587
  %33 = load i64, ptr %arrayidx15, align 8, !dbg !1587
  %xor16 = xor i64 %shr13, %33, !dbg !1588
  %and17 = and i64 %xor16, 71777214294589695, !dbg !1589
    #dbg_value(i64 %and17, !1590, !DIExpression(), !1591)
  %arrayidx19 = getelementptr inbounds nuw i8, ptr %M, i32 8, !dbg !1592
  %34 = load i64, ptr %arrayidx19, align 8, !dbg !1592
  %shr20 = lshr i64 %34, 8, !dbg !1593
  %arrayidx22 = getelementptr inbounds nuw i8, ptr %M, i32 24, !dbg !1594
  %35 = load i64, ptr %arrayidx22, align 8, !dbg !1594
  %xor23 = xor i64 %shr20, %35, !dbg !1595
  %and24 = and i64 %xor23, 71777214294589695, !dbg !1596
    #dbg_value(i64 %and24, !1597, !DIExpression(), !1591)
  %shl25 = shl nuw i64 %and17, 8, !dbg !1598
  %36 = load i64, ptr %M, align 8, !dbg !1599
  %xor27 = xor i64 %36, %shl25, !dbg !1599
  store i64 %xor27, ptr %M, align 8, !dbg !1599
  %shl28 = shl nuw i64 %and24, 8, !dbg !1600
  %arrayidx30 = getelementptr inbounds nuw i8, ptr %M, i32 8, !dbg !1601
  %37 = load i64, ptr %arrayidx30, align 8, !dbg !1602
  %xor31 = xor i64 %37, %shl28, !dbg !1602
  store i64 %xor31, ptr %arrayidx30, align 8, !dbg !1602
  %arrayidx33 = getelementptr inbounds nuw i8, ptr %M, i32 16, !dbg !1603
  %38 = load i64, ptr %arrayidx33, align 8, !dbg !1604
  %xor34 = xor i64 %38, %and17, !dbg !1604
  store i64 %xor34, ptr %arrayidx33, align 8, !dbg !1604
  %arrayidx36 = getelementptr inbounds nuw i8, ptr %M, i32 24, !dbg !1605
  %39 = load i64, ptr %arrayidx36, align 8, !dbg !1606
  %xor37 = xor i64 %39, %and24, !dbg !1606
  store i64 %xor37, ptr %arrayidx36, align 8, !dbg !1606
    #dbg_value(i32 4, !1580, !DIExpression(), !1582)
  %arrayidx12.1 = getelementptr inbounds nuw i8, ptr %M, i32 32, !dbg !1583
  %40 = load i64, ptr %arrayidx12.1, align 8, !dbg !1583
  %shr13.1 = lshr i64 %40, 8, !dbg !1586
  %arrayidx15.1 = getelementptr inbounds nuw i8, ptr %M, i32 48, !dbg !1587
  %41 = load i64, ptr %arrayidx15.1, align 8, !dbg !1587
  %xor16.1 = xor i64 %shr13.1, %41, !dbg !1588
  %and17.1 = and i64 %xor16.1, 71777214294589695, !dbg !1589
    #dbg_value(i64 %and17.1, !1590, !DIExpression(), !1591)
  %arrayidx19.1 = getelementptr inbounds nuw i8, ptr %M, i32 40, !dbg !1592
  %42 = load i64, ptr %arrayidx19.1, align 8, !dbg !1592
  %shr20.1 = lshr i64 %42, 8, !dbg !1593
  %arrayidx22.1 = getelementptr inbounds nuw i8, ptr %M, i32 56, !dbg !1594
  %43 = load i64, ptr %arrayidx22.1, align 8, !dbg !1594
  %xor23.1 = xor i64 %shr20.1, %43, !dbg !1595
  %and24.1 = and i64 %xor23.1, 71777214294589695, !dbg !1596
    #dbg_value(i64 %and24.1, !1597, !DIExpression(), !1591)
  %shl25.1 = shl nuw i64 %and17.1, 8, !dbg !1598
  %arrayidx26.1 = getelementptr inbounds nuw i8, ptr %M, i32 32, !dbg !1607
  %44 = load i64, ptr %arrayidx26.1, align 8, !dbg !1599
  %xor27.1 = xor i64 %44, %shl25.1, !dbg !1599
  store i64 %xor27.1, ptr %arrayidx26.1, align 8, !dbg !1599
  %shl28.1 = shl nuw i64 %and24.1, 8, !dbg !1600
  %arrayidx30.1 = getelementptr inbounds nuw i8, ptr %M, i32 40, !dbg !1601
  %45 = load i64, ptr %arrayidx30.1, align 8, !dbg !1602
  %xor31.1 = xor i64 %45, %shl28.1, !dbg !1602
  store i64 %xor31.1, ptr %arrayidx30.1, align 8, !dbg !1602
  %arrayidx33.1 = getelementptr inbounds nuw i8, ptr %M, i32 48, !dbg !1603
  %46 = load i64, ptr %arrayidx33.1, align 8, !dbg !1604
  %xor34.1 = xor i64 %46, %and17.1, !dbg !1604
  store i64 %xor34.1, ptr %arrayidx33.1, align 8, !dbg !1604
  %arrayidx36.1 = getelementptr inbounds nuw i8, ptr %M, i32 56, !dbg !1605
  %47 = load i64, ptr %arrayidx36.1, align 8, !dbg !1606
  %xor37.1 = xor i64 %47, %and24.1, !dbg !1606
  store i64 %xor37.1, ptr %arrayidx36.1, align 8, !dbg !1606
    #dbg_value(i32 8, !1580, !DIExpression(), !1582)
  %arrayidx12.2 = getelementptr inbounds nuw i8, ptr %M, i32 64, !dbg !1583
  %48 = load i64, ptr %arrayidx12.2, align 8, !dbg !1583
  %shr13.2 = lshr i64 %48, 8, !dbg !1586
  %arrayidx15.2 = getelementptr inbounds nuw i8, ptr %M, i32 80, !dbg !1587
  %49 = load i64, ptr %arrayidx15.2, align 8, !dbg !1587
  %xor16.2 = xor i64 %shr13.2, %49, !dbg !1588
  %and17.2 = and i64 %xor16.2, 71777214294589695, !dbg !1589
    #dbg_value(i64 %and17.2, !1590, !DIExpression(), !1591)
  %arrayidx19.2 = getelementptr inbounds nuw i8, ptr %M, i32 72, !dbg !1592
  %50 = load i64, ptr %arrayidx19.2, align 8, !dbg !1592
  %shr20.2 = lshr i64 %50, 8, !dbg !1593
  %arrayidx22.2 = getelementptr inbounds nuw i8, ptr %M, i32 88, !dbg !1594
  %51 = load i64, ptr %arrayidx22.2, align 8, !dbg !1594
  %xor23.2 = xor i64 %shr20.2, %51, !dbg !1595
  %and24.2 = and i64 %xor23.2, 71777214294589695, !dbg !1596
    #dbg_value(i64 %and24.2, !1597, !DIExpression(), !1591)
  %shl25.2 = shl nuw i64 %and17.2, 8, !dbg !1598
  %arrayidx26.2 = getelementptr inbounds nuw i8, ptr %M, i32 64, !dbg !1607
  %52 = load i64, ptr %arrayidx26.2, align 8, !dbg !1599
  %xor27.2 = xor i64 %52, %shl25.2, !dbg !1599
  store i64 %xor27.2, ptr %arrayidx26.2, align 8, !dbg !1599
  %shl28.2 = shl nuw i64 %and24.2, 8, !dbg !1600
  %arrayidx30.2 = getelementptr inbounds nuw i8, ptr %M, i32 72, !dbg !1601
  %53 = load i64, ptr %arrayidx30.2, align 8, !dbg !1602
  %xor31.2 = xor i64 %53, %shl28.2, !dbg !1602
  store i64 %xor31.2, ptr %arrayidx30.2, align 8, !dbg !1602
  %arrayidx33.2 = getelementptr inbounds nuw i8, ptr %M, i32 80, !dbg !1603
  %54 = load i64, ptr %arrayidx33.2, align 8, !dbg !1604
  %xor34.2 = xor i64 %54, %and17.2, !dbg !1604
  store i64 %xor34.2, ptr %arrayidx33.2, align 8, !dbg !1604
  %arrayidx36.2 = getelementptr inbounds nuw i8, ptr %M, i32 88, !dbg !1605
  %55 = load i64, ptr %arrayidx36.2, align 8, !dbg !1606
  %xor37.2 = xor i64 %55, %and24.2, !dbg !1606
  store i64 %xor37.2, ptr %arrayidx36.2, align 8, !dbg !1606
    #dbg_value(i32 12, !1580, !DIExpression(), !1582)
  %arrayidx12.3 = getelementptr inbounds nuw i8, ptr %M, i32 96, !dbg !1583
  %56 = load i64, ptr %arrayidx12.3, align 8, !dbg !1583
  %shr13.3 = lshr i64 %56, 8, !dbg !1586
  %arrayidx15.3 = getelementptr inbounds nuw i8, ptr %M, i32 112, !dbg !1587
  %57 = load i64, ptr %arrayidx15.3, align 8, !dbg !1587
  %xor16.3 = xor i64 %shr13.3, %57, !dbg !1588
  %and17.3 = and i64 %xor16.3, 71777214294589695, !dbg !1589
    #dbg_value(i64 %and17.3, !1590, !DIExpression(), !1591)
  %arrayidx19.3 = getelementptr inbounds nuw i8, ptr %M, i32 104, !dbg !1592
  %58 = load i64, ptr %arrayidx19.3, align 8, !dbg !1592
  %shr20.3 = lshr i64 %58, 8, !dbg !1593
  %arrayidx22.3 = getelementptr inbounds nuw i8, ptr %M, i32 120, !dbg !1594
  %59 = load i64, ptr %arrayidx22.3, align 8, !dbg !1594
  %xor23.3 = xor i64 %shr20.3, %59, !dbg !1595
  %and24.3 = and i64 %xor23.3, 71777214294589695, !dbg !1596
    #dbg_value(i64 %and24.3, !1597, !DIExpression(), !1591)
  %shl25.3 = shl nuw i64 %and17.3, 8, !dbg !1598
  %arrayidx26.3 = getelementptr inbounds nuw i8, ptr %M, i32 96, !dbg !1607
  %60 = load i64, ptr %arrayidx26.3, align 8, !dbg !1599
  %xor27.3 = xor i64 %60, %shl25.3, !dbg !1599
  store i64 %xor27.3, ptr %arrayidx26.3, align 8, !dbg !1599
  %shl28.3 = shl nuw i64 %and24.3, 8, !dbg !1600
  %arrayidx30.3 = getelementptr inbounds nuw i8, ptr %M, i32 104, !dbg !1601
  %61 = load i64, ptr %arrayidx30.3, align 8, !dbg !1602
  %xor31.3 = xor i64 %61, %shl28.3, !dbg !1602
  store i64 %xor31.3, ptr %arrayidx30.3, align 8, !dbg !1602
  %arrayidx33.3 = getelementptr inbounds nuw i8, ptr %M, i32 112, !dbg !1603
  %62 = load i64, ptr %arrayidx33.3, align 8, !dbg !1604
  %xor34.3 = xor i64 %62, %and17.3, !dbg !1604
  store i64 %xor34.3, ptr %arrayidx33.3, align 8, !dbg !1604
  %arrayidx36.3 = getelementptr inbounds nuw i8, ptr %M, i32 120, !dbg !1605
  %63 = load i64, ptr %arrayidx36.3, align 8, !dbg !1606
  %xor37.3 = xor i64 %63, %and24.3, !dbg !1606
  store i64 %xor37.3, ptr %arrayidx36.3, align 8, !dbg !1606
    #dbg_value(i32 16, !1580, !DIExpression(), !1582)
    #dbg_value(i32 0, !1608, !DIExpression(), !1610)
  %64 = load i64, ptr %M, align 8, !dbg !1611
  %shr47 = lshr i64 %64, 16, !dbg !1614
  %arrayidx49 = getelementptr inbounds nuw i8, ptr %M, i32 32, !dbg !1615
  %65 = load i64, ptr %arrayidx49, align 8, !dbg !1615
  %xor50 = xor i64 %shr47, %65, !dbg !1616
  %and51 = and i64 %xor50, 281470681808895, !dbg !1617
    #dbg_value(i64 %and51, !1618, !DIExpression(), !1619)
  %arrayidx54 = getelementptr inbounds nuw i8, ptr %M, i32 64, !dbg !1620
  %66 = load i64, ptr %arrayidx54, align 8, !dbg !1620
  %shr55 = lshr i64 %66, 16, !dbg !1621
  %arrayidx57 = getelementptr inbounds nuw i8, ptr %M, i32 96, !dbg !1622
  %67 = load i64, ptr %arrayidx57, align 8, !dbg !1622
  %xor58 = xor i64 %shr55, %67, !dbg !1623
  %and59 = and i64 %xor58, 281470681808895, !dbg !1624
    #dbg_value(i64 %and59, !1625, !DIExpression(), !1619)
  %shl60 = shl nuw i64 %and51, 16, !dbg !1626
  %68 = load i64, ptr %M, align 8, !dbg !1627
  %xor62 = xor i64 %68, %shl60, !dbg !1627
  store i64 %xor62, ptr %M, align 8, !dbg !1627
  %shl63 = shl nuw i64 %and59, 16, !dbg !1628
  %arrayidx65 = getelementptr inbounds nuw i8, ptr %M, i32 64, !dbg !1629
  %69 = load i64, ptr %arrayidx65, align 8, !dbg !1630
  %xor66 = xor i64 %69, %shl63, !dbg !1630
  store i64 %xor66, ptr %arrayidx65, align 8, !dbg !1630
  %arrayidx68 = getelementptr inbounds nuw i8, ptr %M, i32 32, !dbg !1631
  %70 = load i64, ptr %arrayidx68, align 8, !dbg !1632
  %xor69 = xor i64 %70, %and51, !dbg !1632
  store i64 %xor69, ptr %arrayidx68, align 8, !dbg !1632
  %arrayidx71 = getelementptr inbounds nuw i8, ptr %M, i32 96, !dbg !1633
  %71 = load i64, ptr %arrayidx71, align 8, !dbg !1634
  %xor72 = xor i64 %71, %and59, !dbg !1634
  store i64 %xor72, ptr %arrayidx71, align 8, !dbg !1634
    #dbg_value(i32 1, !1608, !DIExpression(), !1610)
  %arrayidx46.1 = getelementptr inbounds nuw i8, ptr %M, i32 8, !dbg !1611
  %72 = load i64, ptr %arrayidx46.1, align 8, !dbg !1611
  %shr47.1 = lshr i64 %72, 16, !dbg !1614
  %arrayidx49.1 = getelementptr inbounds nuw i8, ptr %M, i32 40, !dbg !1615
  %73 = load i64, ptr %arrayidx49.1, align 8, !dbg !1615
  %xor50.1 = xor i64 %shr47.1, %73, !dbg !1616
  %and51.1 = and i64 %xor50.1, 281470681808895, !dbg !1617
    #dbg_value(i64 %and51.1, !1618, !DIExpression(), !1619)
  %arrayidx54.1 = getelementptr inbounds nuw i8, ptr %M, i32 72, !dbg !1620
  %74 = load i64, ptr %arrayidx54.1, align 8, !dbg !1620
  %shr55.1 = lshr i64 %74, 16, !dbg !1621
  %arrayidx57.1 = getelementptr inbounds nuw i8, ptr %M, i32 104, !dbg !1622
  %75 = load i64, ptr %arrayidx57.1, align 8, !dbg !1622
  %xor58.1 = xor i64 %shr55.1, %75, !dbg !1623
  %and59.1 = and i64 %xor58.1, 281470681808895, !dbg !1624
    #dbg_value(i64 %and59.1, !1625, !DIExpression(), !1619)
  %shl60.1 = shl nuw i64 %and51.1, 16, !dbg !1626
  %arrayidx61.1 = getelementptr inbounds nuw i8, ptr %M, i32 8, !dbg !1635
  %76 = load i64, ptr %arrayidx61.1, align 8, !dbg !1627
  %xor62.1 = xor i64 %76, %shl60.1, !dbg !1627
  store i64 %xor62.1, ptr %arrayidx61.1, align 8, !dbg !1627
  %shl63.1 = shl nuw i64 %and59.1, 16, !dbg !1628
  %arrayidx65.1 = getelementptr inbounds nuw i8, ptr %M, i32 72, !dbg !1629
  %77 = load i64, ptr %arrayidx65.1, align 8, !dbg !1630
  %xor66.1 = xor i64 %77, %shl63.1, !dbg !1630
  store i64 %xor66.1, ptr %arrayidx65.1, align 8, !dbg !1630
  %arrayidx68.1 = getelementptr inbounds nuw i8, ptr %M, i32 40, !dbg !1631
  %78 = load i64, ptr %arrayidx68.1, align 8, !dbg !1632
  %xor69.1 = xor i64 %78, %and51.1, !dbg !1632
  store i64 %xor69.1, ptr %arrayidx68.1, align 8, !dbg !1632
  %arrayidx71.1 = getelementptr inbounds nuw i8, ptr %M, i32 104, !dbg !1633
  %79 = load i64, ptr %arrayidx71.1, align 8, !dbg !1634
  %xor72.1 = xor i64 %79, %and59.1, !dbg !1634
  store i64 %xor72.1, ptr %arrayidx71.1, align 8, !dbg !1634
    #dbg_value(i32 2, !1608, !DIExpression(), !1610)
  %arrayidx46.2 = getelementptr inbounds nuw i8, ptr %M, i32 16, !dbg !1611
  %80 = load i64, ptr %arrayidx46.2, align 8, !dbg !1611
  %shr47.2 = lshr i64 %80, 16, !dbg !1614
  %arrayidx49.2 = getelementptr inbounds nuw i8, ptr %M, i32 48, !dbg !1615
  %81 = load i64, ptr %arrayidx49.2, align 8, !dbg !1615
  %xor50.2 = xor i64 %shr47.2, %81, !dbg !1616
  %and51.2 = and i64 %xor50.2, 281470681808895, !dbg !1617
    #dbg_value(i64 %and51.2, !1618, !DIExpression(), !1619)
  %arrayidx54.2 = getelementptr inbounds nuw i8, ptr %M, i32 80, !dbg !1620
  %82 = load i64, ptr %arrayidx54.2, align 8, !dbg !1620
  %shr55.2 = lshr i64 %82, 16, !dbg !1621
  %arrayidx57.2 = getelementptr inbounds nuw i8, ptr %M, i32 112, !dbg !1622
  %83 = load i64, ptr %arrayidx57.2, align 8, !dbg !1622
  %xor58.2 = xor i64 %shr55.2, %83, !dbg !1623
  %and59.2 = and i64 %xor58.2, 281470681808895, !dbg !1624
    #dbg_value(i64 %and59.2, !1625, !DIExpression(), !1619)
  %shl60.2 = shl nuw i64 %and51.2, 16, !dbg !1626
  %arrayidx61.2 = getelementptr inbounds nuw i8, ptr %M, i32 16, !dbg !1635
  %84 = load i64, ptr %arrayidx61.2, align 8, !dbg !1627
  %xor62.2 = xor i64 %84, %shl60.2, !dbg !1627
  store i64 %xor62.2, ptr %arrayidx61.2, align 8, !dbg !1627
  %shl63.2 = shl nuw i64 %and59.2, 16, !dbg !1628
  %arrayidx65.2 = getelementptr inbounds nuw i8, ptr %M, i32 80, !dbg !1629
  %85 = load i64, ptr %arrayidx65.2, align 8, !dbg !1630
  %xor66.2 = xor i64 %85, %shl63.2, !dbg !1630
  store i64 %xor66.2, ptr %arrayidx65.2, align 8, !dbg !1630
  %arrayidx68.2 = getelementptr inbounds nuw i8, ptr %M, i32 48, !dbg !1631
  %86 = load i64, ptr %arrayidx68.2, align 8, !dbg !1632
  %xor69.2 = xor i64 %86, %and51.2, !dbg !1632
  store i64 %xor69.2, ptr %arrayidx68.2, align 8, !dbg !1632
  %arrayidx71.2 = getelementptr inbounds nuw i8, ptr %M, i32 112, !dbg !1633
  %87 = load i64, ptr %arrayidx71.2, align 8, !dbg !1634
  %xor72.2 = xor i64 %87, %and59.2, !dbg !1634
  store i64 %xor72.2, ptr %arrayidx71.2, align 8, !dbg !1634
    #dbg_value(i32 3, !1608, !DIExpression(), !1610)
  %arrayidx46.3 = getelementptr inbounds nuw i8, ptr %M, i32 24, !dbg !1611
  %88 = load i64, ptr %arrayidx46.3, align 8, !dbg !1611
  %shr47.3 = lshr i64 %88, 16, !dbg !1614
  %arrayidx49.3 = getelementptr inbounds nuw i8, ptr %M, i32 56, !dbg !1615
  %89 = load i64, ptr %arrayidx49.3, align 8, !dbg !1615
  %xor50.3 = xor i64 %shr47.3, %89, !dbg !1616
  %and51.3 = and i64 %xor50.3, 281470681808895, !dbg !1617
    #dbg_value(i64 %and51.3, !1618, !DIExpression(), !1619)
  %arrayidx54.3 = getelementptr inbounds nuw i8, ptr %M, i32 88, !dbg !1620
  %90 = load i64, ptr %arrayidx54.3, align 8, !dbg !1620
  %shr55.3 = lshr i64 %90, 16, !dbg !1621
  %arrayidx57.3 = getelementptr inbounds nuw i8, ptr %M, i32 120, !dbg !1622
  %91 = load i64, ptr %arrayidx57.3, align 8, !dbg !1622
  %xor58.3 = xor i64 %shr55.3, %91, !dbg !1623
  %and59.3 = and i64 %xor58.3, 281470681808895, !dbg !1624
    #dbg_value(i64 %and59.3, !1625, !DIExpression(), !1619)
  %shl60.3 = shl nuw i64 %and51.3, 16, !dbg !1626
  %arrayidx61.3 = getelementptr inbounds nuw i8, ptr %M, i32 24, !dbg !1635
  %92 = load i64, ptr %arrayidx61.3, align 8, !dbg !1627
  %xor62.3 = xor i64 %92, %shl60.3, !dbg !1627
  store i64 %xor62.3, ptr %arrayidx61.3, align 8, !dbg !1627
  %shl63.3 = shl nuw i64 %and59.3, 16, !dbg !1628
  %arrayidx65.3 = getelementptr inbounds nuw i8, ptr %M, i32 88, !dbg !1629
  %93 = load i64, ptr %arrayidx65.3, align 8, !dbg !1630
  %xor66.3 = xor i64 %93, %shl63.3, !dbg !1630
  store i64 %xor66.3, ptr %arrayidx65.3, align 8, !dbg !1630
  %arrayidx68.3 = getelementptr inbounds nuw i8, ptr %M, i32 56, !dbg !1631
  %94 = load i64, ptr %arrayidx68.3, align 8, !dbg !1632
  %xor69.3 = xor i64 %94, %and51.3, !dbg !1632
  store i64 %xor69.3, ptr %arrayidx68.3, align 8, !dbg !1632
  %arrayidx71.3 = getelementptr inbounds nuw i8, ptr %M, i32 120, !dbg !1633
  %95 = load i64, ptr %arrayidx71.3, align 8, !dbg !1634
  %xor72.3 = xor i64 %95, %and59.3, !dbg !1634
  store i64 %xor72.3, ptr %arrayidx71.3, align 8, !dbg !1634
    #dbg_value(i32 4, !1608, !DIExpression(), !1610)
    #dbg_value(i32 0, !1636, !DIExpression(), !1638)
  %96 = load i64, ptr %M, align 8, !dbg !1639
  %shr81 = lshr i64 %96, 32, !dbg !1642
  %arrayidx83 = getelementptr inbounds nuw i8, ptr %M, i32 64, !dbg !1643
  %97 = load i64, ptr %arrayidx83, align 8, !dbg !1643
  %.masked = and i64 %97, 4294967295, !dbg !1644
  %and85 = xor i64 %shr81, %.masked, !dbg !1644
    #dbg_value(i64 %and85, !1645, !DIExpression(), !1646)
  %shl86 = shl nuw i64 %and85, 32, !dbg !1647
  %98 = load i64, ptr %M, align 8, !dbg !1648
  %xor88 = xor i64 %98, %shl86, !dbg !1648
  store i64 %xor88, ptr %M, align 8, !dbg !1648
  %arrayidx90 = getelementptr inbounds nuw i8, ptr %M, i32 64, !dbg !1649
  %99 = load i64, ptr %arrayidx90, align 8, !dbg !1650
  %xor91 = xor i64 %99, %and85, !dbg !1650
  store i64 %xor91, ptr %arrayidx90, align 8, !dbg !1650
    #dbg_value(i32 1, !1636, !DIExpression(), !1638)
  %arrayidx80.1 = getelementptr inbounds nuw i8, ptr %M, i32 8, !dbg !1639
  %100 = load i64, ptr %arrayidx80.1, align 8, !dbg !1639
  %shr81.1 = lshr i64 %100, 32, !dbg !1642
  %arrayidx83.1 = getelementptr inbounds nuw i8, ptr %M, i32 72, !dbg !1643
  %101 = load i64, ptr %arrayidx83.1, align 8, !dbg !1643
  %.masked.1 = and i64 %101, 4294967295, !dbg !1644
  %and85.1 = xor i64 %shr81.1, %.masked.1, !dbg !1644
    #dbg_value(i64 %and85.1, !1645, !DIExpression(), !1646)
  %shl86.1 = shl nuw i64 %and85.1, 32, !dbg !1647
  %arrayidx87.1 = getelementptr inbounds nuw i8, ptr %M, i32 8, !dbg !1651
  %102 = load i64, ptr %arrayidx87.1, align 8, !dbg !1648
  %xor88.1 = xor i64 %102, %shl86.1, !dbg !1648
  store i64 %xor88.1, ptr %arrayidx87.1, align 8, !dbg !1648
  %arrayidx90.1 = getelementptr inbounds nuw i8, ptr %M, i32 72, !dbg !1649
  %103 = load i64, ptr %arrayidx90.1, align 8, !dbg !1650
  %xor91.1 = xor i64 %103, %and85.1, !dbg !1650
  store i64 %xor91.1, ptr %arrayidx90.1, align 8, !dbg !1650
    #dbg_value(i32 2, !1636, !DIExpression(), !1638)
  %arrayidx80.2 = getelementptr inbounds nuw i8, ptr %M, i32 16, !dbg !1639
  %104 = load i64, ptr %arrayidx80.2, align 8, !dbg !1639
  %shr81.2 = lshr i64 %104, 32, !dbg !1642
  %arrayidx83.2 = getelementptr inbounds nuw i8, ptr %M, i32 80, !dbg !1643
  %105 = load i64, ptr %arrayidx83.2, align 8, !dbg !1643
  %.masked.2 = and i64 %105, 4294967295, !dbg !1644
  %and85.2 = xor i64 %shr81.2, %.masked.2, !dbg !1644
    #dbg_value(i64 %and85.2, !1645, !DIExpression(), !1646)
  %shl86.2 = shl nuw i64 %and85.2, 32, !dbg !1647
  %arrayidx87.2 = getelementptr inbounds nuw i8, ptr %M, i32 16, !dbg !1651
  %106 = load i64, ptr %arrayidx87.2, align 8, !dbg !1648
  %xor88.2 = xor i64 %106, %shl86.2, !dbg !1648
  store i64 %xor88.2, ptr %arrayidx87.2, align 8, !dbg !1648
  %arrayidx90.2 = getelementptr inbounds nuw i8, ptr %M, i32 80, !dbg !1649
  %107 = load i64, ptr %arrayidx90.2, align 8, !dbg !1650
  %xor91.2 = xor i64 %107, %and85.2, !dbg !1650
  store i64 %xor91.2, ptr %arrayidx90.2, align 8, !dbg !1650
    #dbg_value(i32 3, !1636, !DIExpression(), !1638)
  %arrayidx80.3 = getelementptr inbounds nuw i8, ptr %M, i32 24, !dbg !1639
  %108 = load i64, ptr %arrayidx80.3, align 8, !dbg !1639
  %shr81.3 = lshr i64 %108, 32, !dbg !1642
  %arrayidx83.3 = getelementptr inbounds nuw i8, ptr %M, i32 88, !dbg !1643
  %109 = load i64, ptr %arrayidx83.3, align 8, !dbg !1643
  %.masked.3 = and i64 %109, 4294967295, !dbg !1644
  %and85.3 = xor i64 %shr81.3, %.masked.3, !dbg !1644
    #dbg_value(i64 %and85.3, !1645, !DIExpression(), !1646)
  %shl86.3 = shl nuw i64 %and85.3, 32, !dbg !1647
  %arrayidx87.3 = getelementptr inbounds nuw i8, ptr %M, i32 24, !dbg !1651
  %110 = load i64, ptr %arrayidx87.3, align 8, !dbg !1648
  %xor88.3 = xor i64 %110, %shl86.3, !dbg !1648
  store i64 %xor88.3, ptr %arrayidx87.3, align 8, !dbg !1648
  %arrayidx90.3 = getelementptr inbounds nuw i8, ptr %M, i32 88, !dbg !1649
  %111 = load i64, ptr %arrayidx90.3, align 8, !dbg !1650
  %xor91.3 = xor i64 %111, %and85.3, !dbg !1650
  store i64 %xor91.3, ptr %arrayidx90.3, align 8, !dbg !1650
    #dbg_value(i32 4, !1636, !DIExpression(), !1638)
  %arrayidx80.4 = getelementptr inbounds nuw i8, ptr %M, i32 32, !dbg !1639
  %112 = load i64, ptr %arrayidx80.4, align 8, !dbg !1639
  %shr81.4 = lshr i64 %112, 32, !dbg !1642
  %arrayidx83.4 = getelementptr inbounds nuw i8, ptr %M, i32 96, !dbg !1643
  %113 = load i64, ptr %arrayidx83.4, align 8, !dbg !1643
  %.masked.4 = and i64 %113, 4294967295, !dbg !1644
  %and85.4 = xor i64 %shr81.4, %.masked.4, !dbg !1644
    #dbg_value(i64 %and85.4, !1645, !DIExpression(), !1646)
  %shl86.4 = shl nuw i64 %and85.4, 32, !dbg !1647
  %arrayidx87.4 = getelementptr inbounds nuw i8, ptr %M, i32 32, !dbg !1651
  %114 = load i64, ptr %arrayidx87.4, align 8, !dbg !1648
  %xor88.4 = xor i64 %114, %shl86.4, !dbg !1648
  store i64 %xor88.4, ptr %arrayidx87.4, align 8, !dbg !1648
  %arrayidx90.4 = getelementptr inbounds nuw i8, ptr %M, i32 96, !dbg !1649
  %115 = load i64, ptr %arrayidx90.4, align 8, !dbg !1650
  %xor91.4 = xor i64 %115, %and85.4, !dbg !1650
  store i64 %xor91.4, ptr %arrayidx90.4, align 8, !dbg !1650
    #dbg_value(i32 5, !1636, !DIExpression(), !1638)
  %arrayidx80.5 = getelementptr inbounds nuw i8, ptr %M, i32 40, !dbg !1639
  %116 = load i64, ptr %arrayidx80.5, align 8, !dbg !1639
  %shr81.5 = lshr i64 %116, 32, !dbg !1642
  %arrayidx83.5 = getelementptr inbounds nuw i8, ptr %M, i32 104, !dbg !1643
  %117 = load i64, ptr %arrayidx83.5, align 8, !dbg !1643
  %.masked.5 = and i64 %117, 4294967295, !dbg !1644
  %and85.5 = xor i64 %shr81.5, %.masked.5, !dbg !1644
    #dbg_value(i64 %and85.5, !1645, !DIExpression(), !1646)
  %shl86.5 = shl nuw i64 %and85.5, 32, !dbg !1647
  %arrayidx87.5 = getelementptr inbounds nuw i8, ptr %M, i32 40, !dbg !1651
  %118 = load i64, ptr %arrayidx87.5, align 8, !dbg !1648
  %xor88.5 = xor i64 %118, %shl86.5, !dbg !1648
  store i64 %xor88.5, ptr %arrayidx87.5, align 8, !dbg !1648
  %arrayidx90.5 = getelementptr inbounds nuw i8, ptr %M, i32 104, !dbg !1649
  %119 = load i64, ptr %arrayidx90.5, align 8, !dbg !1650
  %xor91.5 = xor i64 %119, %and85.5, !dbg !1650
  store i64 %xor91.5, ptr %arrayidx90.5, align 8, !dbg !1650
    #dbg_value(i32 6, !1636, !DIExpression(), !1638)
  %arrayidx80.6 = getelementptr inbounds nuw i8, ptr %M, i32 48, !dbg !1639
  %120 = load i64, ptr %arrayidx80.6, align 8, !dbg !1639
  %shr81.6 = lshr i64 %120, 32, !dbg !1642
  %arrayidx83.6 = getelementptr inbounds nuw i8, ptr %M, i32 112, !dbg !1643
  %121 = load i64, ptr %arrayidx83.6, align 8, !dbg !1643
  %.masked.6 = and i64 %121, 4294967295, !dbg !1644
  %and85.6 = xor i64 %shr81.6, %.masked.6, !dbg !1644
    #dbg_value(i64 %and85.6, !1645, !DIExpression(), !1646)
  %shl86.6 = shl nuw i64 %and85.6, 32, !dbg !1647
  %arrayidx87.6 = getelementptr inbounds nuw i8, ptr %M, i32 48, !dbg !1651
  %122 = load i64, ptr %arrayidx87.6, align 8, !dbg !1648
  %xor88.6 = xor i64 %122, %shl86.6, !dbg !1648
  store i64 %xor88.6, ptr %arrayidx87.6, align 8, !dbg !1648
  %arrayidx90.6 = getelementptr inbounds nuw i8, ptr %M, i32 112, !dbg !1649
  %123 = load i64, ptr %arrayidx90.6, align 8, !dbg !1650
  %xor91.6 = xor i64 %123, %and85.6, !dbg !1650
  store i64 %xor91.6, ptr %arrayidx90.6, align 8, !dbg !1650
    #dbg_value(i32 7, !1636, !DIExpression(), !1638)
  %arrayidx80.7 = getelementptr inbounds nuw i8, ptr %M, i32 56, !dbg !1639
  %124 = load i64, ptr %arrayidx80.7, align 8, !dbg !1639
  %shr81.7 = lshr i64 %124, 32, !dbg !1642
  %arrayidx83.7 = getelementptr inbounds nuw i8, ptr %M, i32 120, !dbg !1643
  %125 = load i64, ptr %arrayidx83.7, align 8, !dbg !1643
  %.masked.7 = and i64 %125, 4294967295, !dbg !1644
  %and85.7 = xor i64 %shr81.7, %.masked.7, !dbg !1644
    #dbg_value(i64 %and85.7, !1645, !DIExpression(), !1646)
  %shl86.7 = shl nuw i64 %and85.7, 32, !dbg !1647
  %arrayidx87.7 = getelementptr inbounds nuw i8, ptr %M, i32 56, !dbg !1651
  %126 = load i64, ptr %arrayidx87.7, align 8, !dbg !1648
  %xor88.7 = xor i64 %126, %shl86.7, !dbg !1648
  store i64 %xor88.7, ptr %arrayidx87.7, align 8, !dbg !1648
  %arrayidx90.7 = getelementptr inbounds nuw i8, ptr %M, i32 120, !dbg !1649
  %127 = load i64, ptr %arrayidx90.7, align 8, !dbg !1650
  %xor91.7 = xor i64 %127, %and85.7, !dbg !1650
  store i64 %xor91.7, ptr %arrayidx90.7, align 8, !dbg !1650
    #dbg_value(i32 8, !1636, !DIExpression(), !1638)
  ret void, !dbg !1652
}

; Function Attrs: nounwind
define internal fastcc void @mul_add_mat_x_m_mat(i32 noundef %m_vec_limbs, ptr noundef %mat, ptr noundef %bs_mat, ptr noundef %acc, i32 noundef %mat_rows, i32 noundef %mat_cols, i32 noundef %bs_mat_cols) unnamed_addr #0 !dbg !1653 {
entry:
    #dbg_value(i32 %m_vec_limbs, !1654, !DIExpression(), !1655)
    #dbg_value(ptr %mat, !1656, !DIExpression(), !1655)
    #dbg_value(ptr %bs_mat, !1657, !DIExpression(), !1655)
    #dbg_value(ptr %acc, !1658, !DIExpression(), !1655)
    #dbg_value(i32 %mat_rows, !1659, !DIExpression(), !1655)
    #dbg_value(i32 %mat_cols, !1660, !DIExpression(), !1655)
    #dbg_value(i32 %bs_mat_cols, !1661, !DIExpression(), !1655)
    #dbg_value(i32 0, !1662, !DIExpression(), !1664)
  %smax = call i32 @llvm.smax.i32(i32 %bs_mat_cols, i32 0), !dbg !1665
  %smax1 = call i32 @llvm.smax.i32(i32 %mat_cols, i32 0), !dbg !1665
  %smax3 = call i32 @llvm.smax.i32(i32 %mat_rows, i32 0), !dbg !1665
  br label %for.cond, !dbg !1665

for.cond:                                         ; preds = %for.inc17, %entry
  %r.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ], !dbg !1666
    #dbg_value(i32 %r.0, !1662, !DIExpression(), !1664)
  %exitcond4.not = icmp eq i32 %r.0, %smax3, !dbg !1667
  br i1 %exitcond4.not, label %for.end19, label %for.cond1, !dbg !1669

for.cond1:                                        ; preds = %for.cond, %for.inc15
  %c.0 = phi i32 [ %inc, %for.inc15 ], [ 0, %for.cond ], !dbg !1670
    #dbg_value(i32 %c.0, !1673, !DIExpression(), !1674)
  %exitcond2.not = icmp eq i32 %c.0, %smax1, !dbg !1675
  br i1 %exitcond2.not, label %for.inc17, label %for.cond4, !dbg !1677

for.cond4:                                        ; preds = %for.cond1, %for.body6
  %k.0 = phi i32 [ %add14, %for.body6 ], [ 0, %for.cond1 ], !dbg !1678
    #dbg_value(i32 %k.0, !1681, !DIExpression(), !1682)
  %exitcond.not = icmp eq i32 %k.0, %smax, !dbg !1683
  br i1 %exitcond.not, label %for.inc15, label %for.body6, !dbg !1685

for.body6:                                        ; preds = %for.cond4
  %mul = mul nsw i32 %c.0, %bs_mat_cols, !dbg !1686
  %add = add nsw i32 %mul, %k.0, !dbg !1688
  %mul7 = mul nsw i32 %m_vec_limbs, %add, !dbg !1689
  %add.ptr = getelementptr inbounds i64, ptr %bs_mat, i32 %mul7, !dbg !1690
  %mul8 = mul nsw i32 %r.0, %mat_cols, !dbg !1691
  %0 = getelementptr i8, ptr %mat, i32 %mul8, !dbg !1692
  %arrayidx = getelementptr i8, ptr %0, i32 %c.0, !dbg !1692
  %1 = load i8, ptr %arrayidx, align 1, !dbg !1692
  %mul10 = mul nsw i32 %r.0, %bs_mat_cols, !dbg !1693
  %add11 = add nsw i32 %mul10, %k.0, !dbg !1694
  %mul12 = mul nsw i32 %m_vec_limbs, %add11, !dbg !1695
  %add.ptr13 = getelementptr inbounds i64, ptr %acc, i32 %mul12, !dbg !1696
  call fastcc void @m_vec_mul_add(i32 noundef %m_vec_limbs, ptr noundef %add.ptr, i8 noundef zeroext %1, ptr noundef %add.ptr13) #6, !dbg !1697
  %add14 = add nuw i32 %k.0, 1, !dbg !1698
    #dbg_value(i32 %add14, !1681, !DIExpression(), !1682)
  br label %for.cond4, !dbg !1699, !llvm.loop !1700

for.inc15:                                        ; preds = %for.cond4
  %inc = add nuw i32 %c.0, 1, !dbg !1702
    #dbg_value(i32 %inc, !1673, !DIExpression(), !1674)
  br label %for.cond1, !dbg !1703, !llvm.loop !1704

for.inc17:                                        ; preds = %for.cond1
  %inc18 = add nuw i32 %r.0, 1, !dbg !1706
    #dbg_value(i32 %inc18, !1662, !DIExpression(), !1664)
  br label %for.cond, !dbg !1707, !llvm.loop !1708

for.end19:                                        ; preds = %for.cond
  ret void, !dbg !1710
}

; Function Attrs: nounwind
define internal fastcc void @P1_times_Vt(ptr noundef %p, ptr noundef %P1, ptr noundef %V, ptr noundef %acc) unnamed_addr #0 !dbg !1711 {
entry:
    #dbg_value(ptr %p, !1712, !DIExpression(), !1713)
    #dbg_value(ptr %P1, !1714, !DIExpression(), !1713)
    #dbg_value(ptr %V, !1715, !DIExpression(), !1713)
    #dbg_value(ptr %acc, !1716, !DIExpression(), !1713)
  call fastcc void @mul_add_m_upper_triangular_mat_x_mat_trans(i32 noundef 5, ptr noundef %P1, ptr noundef %V, ptr noundef %acc, i32 noundef 78, i32 noundef 78, i32 noundef 10, i32 noundef 1) #6, !dbg !1717
  ret void, !dbg !1718
}

; Function Attrs: nounwind
define internal fastcc void @mul_add_m_upper_triangular_mat_x_mat_trans(i32 noundef %m_vec_limbs, ptr noundef %bs_mat, ptr noundef %mat, ptr noundef %acc, i32 noundef %bs_mat_rows, i32 noundef %bs_mat_cols, i32 noundef %mat_rows, i32 noundef %triangular) unnamed_addr #0 !dbg !1719 {
entry:
    #dbg_value(i32 %m_vec_limbs, !1720, !DIExpression(), !1721)
    #dbg_value(ptr %bs_mat, !1722, !DIExpression(), !1721)
    #dbg_value(ptr %mat, !1723, !DIExpression(), !1721)
    #dbg_value(ptr %acc, !1724, !DIExpression(), !1721)
    #dbg_value(i32 %bs_mat_rows, !1725, !DIExpression(), !1721)
    #dbg_value(i32 %bs_mat_cols, !1726, !DIExpression(), !1721)
    #dbg_value(i32 %mat_rows, !1727, !DIExpression(), !1721)
    #dbg_value(i32 %triangular, !1728, !DIExpression(), !1721)
    #dbg_value(i32 0, !1729, !DIExpression(), !1721)
    #dbg_value(i32 0, !1730, !DIExpression(), !1732)
  %smax = call i32 @llvm.smax.i32(i32 %mat_rows, i32 0), !dbg !1733
  %smax1 = call i32 @llvm.smax.i32(i32 %bs_mat_rows, i32 0), !dbg !1733
  br label %for.cond, !dbg !1733

for.cond:                                         ; preds = %for.inc17, %entry
  %bs_mat_entries_used.0 = phi i32 [ 0, %entry ], [ %bs_mat_entries_used.1, %for.inc17 ], !dbg !1734
  %r.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ], !dbg !1735
    #dbg_value(i32 %r.0, !1730, !DIExpression(), !1732)
    #dbg_value(i32 %bs_mat_entries_used.0, !1729, !DIExpression(), !1721)
  %exitcond2.not = icmp eq i32 %r.0, %smax1, !dbg !1736
  br i1 %exitcond2.not, label %for.end19, label %for.body, !dbg !1738

for.body:                                         ; preds = %for.cond
  %mul = mul nsw i32 %triangular, %r.0, !dbg !1739
    #dbg_value(i32 %mul, !1742, !DIExpression(), !1743)
  br label %for.cond1, !dbg !1744

for.cond1:                                        ; preds = %for.inc15, %for.body
  %bs_mat_entries_used.1 = phi i32 [ %bs_mat_entries_used.0, %for.body ], [ %add14, %for.inc15 ], !dbg !1721
  %c.0 = phi i32 [ %mul, %for.body ], [ %inc, %for.inc15 ], !dbg !1745
    #dbg_value(i32 %c.0, !1742, !DIExpression(), !1743)
    #dbg_value(i32 %bs_mat_entries_used.1, !1729, !DIExpression(), !1721)
  %cmp2 = icmp slt i32 %c.0, %bs_mat_cols, !dbg !1746
  br i1 %cmp2, label %for.cond4, label %for.inc17, !dbg !1748

for.cond4:                                        ; preds = %for.cond1, %for.body6
  %k.0 = phi i32 [ %add13, %for.body6 ], [ 0, %for.cond1 ], !dbg !1749
    #dbg_value(i32 %k.0, !1752, !DIExpression(), !1753)
  %exitcond.not = icmp eq i32 %k.0, %smax, !dbg !1754
  br i1 %exitcond.not, label %for.inc15, label %for.body6, !dbg !1756

for.body6:                                        ; preds = %for.cond4
  %mul7 = mul nsw i32 %m_vec_limbs, %bs_mat_entries_used.1, !dbg !1757
  %add.ptr = getelementptr inbounds i64, ptr %bs_mat, i32 %mul7, !dbg !1759
  %mul8 = mul nsw i32 %k.0, %bs_mat_cols, !dbg !1760
  %0 = getelementptr i8, ptr %mat, i32 %mul8, !dbg !1761
  %arrayidx = getelementptr i8, ptr %0, i32 %c.0, !dbg !1761
  %1 = load i8, ptr %arrayidx, align 1, !dbg !1761
  %mul9 = mul nsw i32 %r.0, %mat_rows, !dbg !1762
  %add10 = add nsw i32 %mul9, %k.0, !dbg !1763
  %mul11 = mul nsw i32 %m_vec_limbs, %add10, !dbg !1764
  %add.ptr12 = getelementptr inbounds i64, ptr %acc, i32 %mul11, !dbg !1765
  call fastcc void @m_vec_mul_add(i32 noundef %m_vec_limbs, ptr noundef %add.ptr, i8 noundef zeroext %1, ptr noundef %add.ptr12) #6, !dbg !1766
  %add13 = add nuw i32 %k.0, 1, !dbg !1767
    #dbg_value(i32 %add13, !1752, !DIExpression(), !1753)
  br label %for.cond4, !dbg !1768, !llvm.loop !1769

for.inc15:                                        ; preds = %for.cond4
    #dbg_value(i32 %bs_mat_entries_used.1, !1729, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1721)
  %add14 = add nsw i32 %bs_mat_entries_used.1, 1, !dbg !1771
    #dbg_value(i32 %add14, !1729, !DIExpression(), !1721)
  %inc = add nsw i32 %c.0, 1, !dbg !1772
    #dbg_value(i32 %inc, !1742, !DIExpression(), !1743)
  br label %for.cond1, !dbg !1773, !llvm.loop !1774

for.inc17:                                        ; preds = %for.cond1
  %inc18 = add nuw i32 %r.0, 1, !dbg !1776
    #dbg_value(i32 %inc18, !1730, !DIExpression(), !1732)
  br label %for.cond, !dbg !1777, !llvm.loop !1778

for.end19:                                        ; preds = %for.cond
  ret void, !dbg !1780
}

; Function Attrs: nounwind
define dso_local i32 @pqmayo_MAYO_1_ref_mayo_sign(ptr noundef %p, ptr noundef %sm, ptr noundef %smlen, ptr noundef %m, i32 noundef %mlen, ptr noundef %csk) local_unnamed_addr #0 !dbg !1781 {
entry:
  %siglen = alloca i32, align 4
    #dbg_value(ptr %p, !1782, !DIExpression(), !1783)
    #dbg_value(ptr %sm, !1784, !DIExpression(), !1783)
    #dbg_value(ptr %smlen, !1785, !DIExpression(), !1783)
    #dbg_value(ptr %m, !1786, !DIExpression(), !1783)
    #dbg_value(i32 %mlen, !1787, !DIExpression(), !1783)
    #dbg_value(ptr %csk, !1788, !DIExpression(), !1783)
    #dbg_value(i32 0, !1789, !DIExpression(), !1783)
    #dbg_value(i32 454, !1790, !DIExpression(), !1783)
  %add.ptr = getelementptr inbounds nuw i8, ptr %sm, i32 454, !dbg !1791
  %call = call ptr @memmove(ptr noundef nonnull %add.ptr, ptr noundef %m, i32 noundef %mlen) #8, !dbg !1792
  %add.ptr1 = getelementptr inbounds nuw i8, ptr %sm, i32 454, !dbg !1793
    #dbg_value(ptr %siglen, !1794, !DIExpression(DW_OP_deref), !1783)
  %call2 = call i32 @pqmayo_MAYO_1_ref_mayo_sign_signature(ptr noundef %p, ptr noundef %sm, ptr noundef nonnull %siglen, ptr noundef nonnull %add.ptr1, i32 noundef %mlen, ptr noundef %csk) #6, !dbg !1795
    #dbg_value(i32 %call2, !1789, !DIExpression(), !1783)
  %cmp.not = icmp eq i32 %call2, 0, !dbg !1796
  %0 = load i32, ptr %siglen, align 4
    #dbg_value(i32 %0, !1794, !DIExpression(), !1783)
  %cmp3.not = icmp eq i32 %0, 454
  %or.cond = select i1 %cmp.not, i1 %cmp3.not, i1 false, !dbg !1798
  br i1 %or.cond, label %if.end, label %if.then, !dbg !1798

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %siglen, align 4, !dbg !1799
    #dbg_value(i32 %1, !1794, !DIExpression(), !1783)
  %add = add i32 %1, %mlen, !dbg !1801
  %call4 = call ptr @memset(ptr noundef %sm, i32 noundef 0, i32 noundef %add) #8, !dbg !1802
  br label %err, !dbg !1803

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %siglen, align 4, !dbg !1804
    #dbg_value(i32 %2, !1794, !DIExpression(), !1783)
  %add5 = add i32 %2, %mlen, !dbg !1805
  store i32 %add5, ptr %smlen, align 4, !dbg !1806
  br label %err, !dbg !1807

err:                                              ; preds = %if.end, %if.then
    #dbg_label(!1808, !1809)
  ret i32 %call2, !dbg !1810
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_1_ref_mayo_open(ptr noundef %p, ptr noundef %m, ptr noundef %mlen, ptr noundef %sm, i32 noundef %smlen, ptr noundef %pk) local_unnamed_addr #0 !dbg !1811 {
entry:
    #dbg_value(ptr %p, !1812, !DIExpression(), !1813)
    #dbg_value(ptr %m, !1814, !DIExpression(), !1813)
    #dbg_value(ptr %mlen, !1815, !DIExpression(), !1813)
    #dbg_value(ptr %sm, !1816, !DIExpression(), !1813)
    #dbg_value(i32 %smlen, !1817, !DIExpression(), !1813)
    #dbg_value(ptr %pk, !1818, !DIExpression(), !1813)
    #dbg_value(i32 454, !1819, !DIExpression(), !1813)
  %cmp = icmp ult i32 %smlen, 454, !dbg !1820
  br i1 %cmp, label %return, label %if.end, !dbg !1820

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr inbounds nuw i8, ptr %sm, i32 454, !dbg !1822
  %sub = add i32 %smlen, -454, !dbg !1823
  %call = call i32 @pqmayo_MAYO_1_ref_mayo_verify(ptr noundef %p, ptr noundef nonnull %add.ptr, i32 noundef %sub, ptr noundef %sm, ptr noundef %pk) #6, !dbg !1824
    #dbg_value(i32 %call, !1825, !DIExpression(), !1813)
  %cmp1 = icmp eq i32 %call, 0, !dbg !1826
  br i1 %cmp1, label %if.then2, label %return, !dbg !1826

if.then2:                                         ; preds = %if.end
  %sub3 = add i32 %smlen, -454, !dbg !1828
  store i32 %sub3, ptr %mlen, align 4, !dbg !1830
  %add.ptr4 = getelementptr inbounds nuw i8, ptr %sm, i32 454, !dbg !1831
  %call5 = call ptr @memmove(ptr noundef %m, ptr noundef nonnull %add.ptr4, i32 noundef %sub3) #8, !dbg !1832
  br label %return, !dbg !1833

return:                                           ; preds = %if.end, %if.then2, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ %call, %if.then2 ], [ %call, %if.end ], !dbg !1813
  ret i32 %retval.0, !dbg !1834
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_1_ref_mayo_verify(ptr noundef %p, ptr noundef %m, i32 noundef %mlen, ptr noundef %sig, ptr noundef %cpk) local_unnamed_addr #0 !dbg !1835 {
entry:
  %tEnc = alloca [39 x i8], align 1
  %t = alloca [78 x i8], align 1
  %y = alloca [156 x i8], align 1
  %s = alloca [860 x i8], align 1
  %pk = alloca [18705 x i64], align 8
  %tmp = alloca [56 x i8], align 1
    #dbg_value(ptr %p, !1838, !DIExpression(), !1839)
    #dbg_value(ptr %m, !1840, !DIExpression(), !1839)
    #dbg_value(i32 %mlen, !1841, !DIExpression(), !1839)
    #dbg_value(ptr %sig, !1842, !DIExpression(), !1839)
    #dbg_value(ptr %cpk, !1843, !DIExpression(), !1839)
    #dbg_declare(ptr %tEnc, !1844, !DIExpression(), !1845)
    #dbg_declare(ptr %t, !1846, !DIExpression(), !1847)
    #dbg_declare(ptr %y, !1848, !DIExpression(), !1852)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(156) %y, i8 0, i32 156, i1 false), !dbg !1852
    #dbg_declare(ptr %s, !1853, !DIExpression(), !1854)
    #dbg_declare(ptr %pk, !1855, !DIExpression(), !1856)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(149640) %pk, i8 0, i32 149640, i1 false), !dbg !1856
    #dbg_declare(ptr %tmp, !1857, !DIExpression(), !1861)
    #dbg_value(i32 78, !1862, !DIExpression(), !1839)
    #dbg_value(i32 86, !1863, !DIExpression(), !1839)
    #dbg_value(i32 10, !1864, !DIExpression(), !1839)
    #dbg_value(i32 39, !1865, !DIExpression(), !1839)
    #dbg_value(i32 454, !1866, !DIExpression(), !1839)
    #dbg_value(i32 32, !1867, !DIExpression(), !1839)
    #dbg_value(i32 24, !1868, !DIExpression(), !1839)
  %call = call i32 @pqmayo_MAYO_1_ref_mayo_expand_pk(ptr noundef %p, ptr noundef %cpk, ptr noundef nonnull %pk) #6, !dbg !1869
    #dbg_value(i32 %call, !1870, !DIExpression(), !1839)
  %cmp.not = icmp eq i32 %call, 0, !dbg !1871
  br i1 %cmp.not, label %if.end, label %return, !dbg !1871

if.end:                                           ; preds = %entry
    #dbg_value(ptr %pk, !1873, !DIExpression(), !1839)
  %add.ptr = getelementptr inbounds nuw i8, ptr %pk, i32 123240, !dbg !1874
    #dbg_value(ptr %add.ptr, !1875, !DIExpression(), !1839)
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %pk, i32 148200, !dbg !1876
    #dbg_value(ptr %add.ptr2, !1877, !DIExpression(), !1839)
  %call4 = call i32 @shake256(ptr noundef nonnull %tmp, i32 noundef 32, ptr noundef %m, i32 noundef %mlen) #8, !dbg !1878
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %tmp, i32 32, !dbg !1879
  %add.ptr8 = getelementptr inbounds nuw i8, ptr %sig, i32 430, !dbg !1880
  %call9 = call ptr @memcpy(ptr noundef nonnull %add.ptr6, ptr noundef nonnull %add.ptr8, i32 noundef 24) #8, !dbg !1881
  %call12 = call i32 @shake256(ptr noundef nonnull %tEnc, i32 noundef 39, ptr noundef nonnull %tmp, i32 noundef 56) #8, !dbg !1882
  call fastcc void @decode(ptr noundef nonnull %tEnc, ptr noundef nonnull %t, i32 noundef 78) #6, !dbg !1883
  call fastcc void @decode(ptr noundef %sig, ptr noundef nonnull %s, i32 noundef 860) #6, !dbg !1884
  call fastcc void @eval_public_map(ptr noundef %p, ptr noundef nonnull %s, ptr noundef nonnull %pk, ptr noundef nonnull %add.ptr, ptr noundef nonnull %add.ptr2, ptr noundef nonnull %y) #6, !dbg !1885
  %call20 = call i32 @memcmp(ptr noundef nonnull %y, ptr noundef nonnull %t, i32 noundef 78) #8, !dbg !1886
  %cmp21 = icmp ne i32 %call20, 0, !dbg !1888
  %. = zext i1 %cmp21 to i32, !dbg !1839
  br label %return, !dbg !1839

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ %., %if.end ], !dbg !1839
  ret i32 %retval.0, !dbg !1889
}

; Function Attrs: nounwind
define dso_local i32 @pqmayo_MAYO_1_ref_mayo_expand_pk(ptr noundef %p, ptr noundef %cpk, ptr noundef %pk) local_unnamed_addr #0 !dbg !1890 {
entry:
    #dbg_value(ptr %p, !1891, !DIExpression(), !1892)
    #dbg_value(ptr %cpk, !1893, !DIExpression(), !1892)
    #dbg_value(ptr %pk, !1894, !DIExpression(), !1892)
  call fastcc void @expand_P1_P2(ptr noundef %p, ptr noundef %pk, ptr noundef %cpk) #6, !dbg !1895
  %add.ptr = getelementptr inbounds nuw i8, ptr %cpk, i32 16, !dbg !1896
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %pk, i32 148200, !dbg !1897
  call fastcc void @unpack_m_vecs(ptr noundef nonnull %add.ptr, ptr noundef nonnull %add.ptr2, i32 noundef 36, i32 noundef 78) #6, !dbg !1898
  ret i32 0, !dbg !1899
}

; Function Attrs: nounwind
define internal fastcc void @eval_public_map(ptr noundef %p, ptr noundef %s, ptr noundef %P1, ptr noundef %P2, ptr noundef %P3, ptr noundef %eval) unnamed_addr #0 !dbg !1900 {
entry:
  %SPS = alloca [500 x i64], align 8
  %zero = alloca [78 x i8], align 1
    #dbg_value(ptr %p, !1903, !DIExpression(), !1904)
    #dbg_value(ptr %s, !1905, !DIExpression(), !1904)
    #dbg_value(ptr %P1, !1906, !DIExpression(), !1904)
    #dbg_value(ptr %P2, !1907, !DIExpression(), !1904)
    #dbg_value(ptr %P3, !1908, !DIExpression(), !1904)
    #dbg_value(ptr %eval, !1909, !DIExpression(), !1904)
    #dbg_declare(ptr %SPS, !1910, !DIExpression(), !1914)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(4000) %SPS, i8 0, i32 4000, i1 false), !dbg !1914
  call fastcc void @m_calculate_PS_SPS(ptr noundef %p, ptr noundef %P1, ptr noundef %P2, ptr noundef %P3, ptr noundef %s, ptr noundef nonnull %SPS) #6, !dbg !1915
    #dbg_declare(ptr %zero, !1916, !DIExpression(), !1917)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(78) %zero, i8 0, i32 78, i1 false), !dbg !1917
  call fastcc void @compute_rhs(ptr noundef %p, ptr noundef nonnull %SPS, ptr noundef nonnull %zero, ptr noundef %eval) #6, !dbg !1918
  ret void, !dbg !1919
}

; Function Attrs: nounwind
define internal fastcc void @m_calculate_PS_SPS(ptr noundef %p, ptr noundef %P1, ptr noundef %P2, ptr noundef %P3, ptr noundef %s, ptr noundef %SPS) unnamed_addr #0 !dbg !1920 {
entry:
  %PS = alloca [4300 x i64], align 8
    #dbg_value(ptr %p, !1923, !DIExpression(), !1924)
    #dbg_value(ptr %P1, !1925, !DIExpression(), !1924)
    #dbg_value(ptr %P2, !1926, !DIExpression(), !1924)
    #dbg_value(ptr %P3, !1927, !DIExpression(), !1924)
    #dbg_value(ptr %s, !1928, !DIExpression(), !1924)
    #dbg_value(ptr %SPS, !1929, !DIExpression(), !1924)
    #dbg_declare(ptr %PS, !1930, !DIExpression(), !1934)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(34400) %PS, i8 0, i32 34400, i1 false), !dbg !1934
  call fastcc void @mayo_generic_m_calculate_PS(ptr noundef %P1, ptr noundef %P2, ptr noundef %P3, ptr noundef %s, i32 noundef 78, i32 noundef 78, i32 noundef 8, i32 noundef 10, ptr noundef nonnull %PS) #6, !dbg !1935
  call fastcc void @mayo_generic_m_calculate_SPS(ptr noundef nonnull %PS, ptr noundef %s, i32 noundef 78, i32 noundef 10, i32 noundef 86, ptr noundef %SPS) #6, !dbg !1936
  ret void, !dbg !1937
}

; Function Attrs: nounwind
define internal fastcc void @mayo_generic_m_calculate_PS(ptr noundef %P1, ptr noundef %P2, ptr noundef %P3, ptr noundef %S, i32 noundef %m, i32 noundef %v, i32 noundef %o, i32 noundef %k, ptr noundef %PS) unnamed_addr #0 !dbg !1938 {
entry:
  %accumulator = alloca [68800 x i64], align 8
    #dbg_value(ptr %P1, !1941, !DIExpression(), !1942)
    #dbg_value(ptr %P2, !1943, !DIExpression(), !1942)
    #dbg_value(ptr %P3, !1944, !DIExpression(), !1942)
    #dbg_value(ptr %S, !1945, !DIExpression(), !1942)
    #dbg_value(i32 %m, !1946, !DIExpression(), !1942)
    #dbg_value(i32 %v, !1947, !DIExpression(), !1942)
    #dbg_value(i32 %o, !1948, !DIExpression(), !1942)
    #dbg_value(i32 %k, !1949, !DIExpression(), !1942)
    #dbg_value(ptr %PS, !1950, !DIExpression(), !1942)
  %add = add i32 %o, %v, !dbg !1951
    #dbg_value(i32 %add, !1952, !DIExpression(), !1942)
  %add1 = add nsw i32 %m, 15, !dbg !1953
  %div = sdiv i32 %add1, 16, !dbg !1954
    #dbg_value(i32 %div, !1955, !DIExpression(), !1942)
    #dbg_declare(ptr %accumulator, !1956, !DIExpression(), !1960)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(550400) %accumulator, i8 0, i32 550400, i1 false), !dbg !1960
    #dbg_value(i32 0, !1961, !DIExpression(), !1942)
    #dbg_value(i32 0, !1962, !DIExpression(), !1964)
  %smax = call i32 @llvm.smax.i32(i32 %k, i32 0), !dbg !1965
  %smax3 = call i32 @llvm.smax.i32(i32 %o, i32 0), !dbg !1965
  %smax5 = call i32 @llvm.smax.i32(i32 %v, i32 0), !dbg !1965
  br label %for.cond, !dbg !1965

for.cond:                                         ; preds = %for.inc52, %entry
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc52 ], [ %v, %entry ], !dbg !1966
  %P1_used.0 = phi i32 [ %P1_used.1, %for.inc52 ], [ 0, %entry ], !dbg !1966
  %row.0 = phi i32 [ %inc53, %for.inc52 ], [ 0, %entry ], !dbg !1967
    #dbg_value(i32 %row.0, !1962, !DIExpression(), !1964)
    #dbg_value(i32 %P1_used.0, !1961, !DIExpression(), !1942)
  %exitcond6.not = icmp eq i32 %row.0, %smax5, !dbg !1968
  br i1 %exitcond6.not, label %for.cond56.preheader, label %for.cond2.preheader, !dbg !1970

for.cond2.preheader:                              ; preds = %for.cond
  %0 = add i32 %P1_used.0, %indvars.iv, !dbg !1971
  br label %for.cond2, !dbg !1971

for.cond56.preheader:                             ; preds = %for.cond
  %smax8 = call i32 @llvm.smax.i32(i32 %v, i32 %add), !dbg !1974
  br label %for.cond56, !dbg !1974

for.cond2:                                        ; preds = %for.cond2.preheader, %for.inc17
  %P1_used.1 = phi i32 [ %inc16, %for.inc17 ], [ %P1_used.0, %for.cond2.preheader ], !dbg !1942
  %j.0 = phi i32 [ %inc18, %for.inc17 ], [ %row.0, %for.cond2.preheader ], !dbg !1976
    #dbg_value(i32 %j.0, !1977, !DIExpression(), !1978)
    #dbg_value(i32 %P1_used.1, !1961, !DIExpression(), !1942)
  %exitcond1.not = icmp eq i32 %P1_used.1, %0, !dbg !1979
  br i1 %exitcond1.not, label %for.cond21, label %for.cond5, !dbg !1971

for.cond5:                                        ; preds = %for.cond2, %for.body7
  %col.0 = phi i32 [ %inc, %for.body7 ], [ 0, %for.cond2 ], !dbg !1981
    #dbg_value(i32 %col.0, !1984, !DIExpression(), !1985)
  %exitcond.not = icmp eq i32 %col.0, %smax, !dbg !1986
  br i1 %exitcond.not, label %for.inc17, label %for.body7, !dbg !1988

for.body7:                                        ; preds = %for.cond5
  %mul = mul nsw i32 %P1_used.1, %div, !dbg !1989
  %add.ptr = getelementptr inbounds i64, ptr %P1, i32 %mul, !dbg !1991
  %mul8 = mul nsw i32 %row.0, %k, !dbg !1992
  %add9 = add nsw i32 %mul8, %col.0, !dbg !1993
  %mul10 = shl nsw i32 %add9, 4, !dbg !1994
  %mul11 = mul nsw i32 %col.0, %add, !dbg !1995
  %1 = getelementptr i8, ptr %S, i32 %mul11, !dbg !1996
  %arrayidx = getelementptr i8, ptr %1, i32 %j.0, !dbg !1996
  %2 = load i8, ptr %arrayidx, align 1, !dbg !1996
  %conv = zext i8 %2 to i32, !dbg !1996
  %add13 = add nsw i32 %mul10, %conv, !dbg !1997
  %mul14 = mul nsw i32 %add13, %div, !dbg !1998
  %add.ptr15 = getelementptr inbounds i64, ptr %accumulator, i32 %mul14, !dbg !1999
  call fastcc void @m_vec_add(i32 noundef %div, ptr noundef %add.ptr, ptr noundef nonnull %add.ptr15) #6, !dbg !2000
  %inc = add nuw i32 %col.0, 1, !dbg !2001
    #dbg_value(i32 %inc, !1984, !DIExpression(), !1985)
  br label %for.cond5, !dbg !2002, !llvm.loop !2003

for.inc17:                                        ; preds = %for.cond5
    #dbg_value(i32 %P1_used.1, !1961, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1942)
  %inc16 = add i32 %P1_used.1, 1, !dbg !2005
    #dbg_value(i32 %inc16, !1961, !DIExpression(), !1942)
  %inc18 = add nuw nsw i32 %j.0, 1, !dbg !2006
    #dbg_value(i32 %inc18, !1977, !DIExpression(), !1978)
  br label %for.cond2, !dbg !2007, !llvm.loop !2008

for.cond21:                                       ; preds = %for.cond2, %for.inc49
  %j20.0 = phi i32 [ %inc50, %for.inc49 ], [ 0, %for.cond2 ], !dbg !2010
    #dbg_value(i32 %j20.0, !2012, !DIExpression(), !2013)
  %exitcond4.not = icmp eq i32 %j20.0, %smax3, !dbg !2014
  br i1 %exitcond4.not, label %for.inc52, label %for.cond26, !dbg !2016

for.cond26:                                       ; preds = %for.cond21, %for.body29
  %col25.0 = phi i32 [ %inc47, %for.body29 ], [ 0, %for.cond21 ], !dbg !2017
    #dbg_value(i32 %col25.0, !2020, !DIExpression(), !2021)
  %exitcond2.not = icmp eq i32 %col25.0, %smax, !dbg !2022
  br i1 %exitcond2.not, label %for.inc49, label %for.body29, !dbg !2024

for.body29:                                       ; preds = %for.cond26
  %mul30 = mul nsw i32 %row.0, %o, !dbg !2025
  %add31 = add nsw i32 %mul30, %j20.0, !dbg !2027
  %mul32 = mul nsw i32 %add31, %div, !dbg !2028
  %add.ptr33 = getelementptr inbounds i64, ptr %P2, i32 %mul32, !dbg !2029
  %mul35 = mul nsw i32 %row.0, %k, !dbg !2030
  %add36 = add nsw i32 %mul35, %col25.0, !dbg !2031
  %mul37 = shl nsw i32 %add36, 4, !dbg !2032
  %mul38 = mul nsw i32 %col25.0, %add, !dbg !2033
  %3 = getelementptr i8, ptr %S, i32 %mul38, !dbg !2034
  %4 = getelementptr i8, ptr %3, i32 %j20.0, !dbg !2034
  %arrayidx41 = getelementptr i8, ptr %4, i32 %v, !dbg !2034
  %5 = load i8, ptr %arrayidx41, align 1, !dbg !2034
  %conv42 = zext i8 %5 to i32, !dbg !2034
  %add43 = add nsw i32 %mul37, %conv42, !dbg !2035
  %mul44 = mul nsw i32 %add43, %div, !dbg !2036
  %add.ptr45 = getelementptr inbounds i64, ptr %accumulator, i32 %mul44, !dbg !2037
  call fastcc void @m_vec_add(i32 noundef %div, ptr noundef %add.ptr33, ptr noundef nonnull %add.ptr45) #6, !dbg !2038
  %inc47 = add nuw i32 %col25.0, 1, !dbg !2039
    #dbg_value(i32 %inc47, !2020, !DIExpression(), !2021)
  br label %for.cond26, !dbg !2040, !llvm.loop !2041

for.inc49:                                        ; preds = %for.cond26
  %inc50 = add nuw i32 %j20.0, 1, !dbg !2043
    #dbg_value(i32 %inc50, !2012, !DIExpression(), !2013)
  br label %for.cond21, !dbg !2044, !llvm.loop !2045

for.inc52:                                        ; preds = %for.cond21
  %inc53 = add nuw i32 %row.0, 1, !dbg !2047
    #dbg_value(i32 %inc53, !1962, !DIExpression(), !1964)
  %indvars.iv.next = add i32 %indvars.iv, -1, !dbg !2048
  br label %for.cond, !dbg !2048, !llvm.loop !2049

for.cond56:                                       ; preds = %for.cond56.preheader, %for.inc90
  %P3_used.0 = phi i32 [ %P3_used.1, %for.inc90 ], [ 0, %for.cond56.preheader ], !dbg !2051
  %row55.0 = phi i32 [ %inc91, %for.inc90 ], [ %v, %for.cond56.preheader ], !dbg !2052
    #dbg_value(i32 %row55.0, !2053, !DIExpression(), !2054)
    #dbg_value(i32 %P3_used.0, !2055, !DIExpression(), !1942)
  %exitcond9.not = icmp eq i32 %row55.0, %smax8, !dbg !2056
  br i1 %exitcond9.not, label %while.cond.preheader, label %for.cond61, !dbg !1974

while.cond.preheader:                             ; preds = %for.cond56
  %6 = mul i32 %k, %add, !dbg !2058
  %smax10 = call i32 @llvm.smax.i32(i32 %6, i32 0), !dbg !2058
  br label %while.cond, !dbg !2058

for.cond61:                                       ; preds = %for.cond56, %for.inc87
  %P3_used.1 = phi i32 [ %inc86, %for.inc87 ], [ %P3_used.0, %for.cond56 ], !dbg !1942
  %j60.0 = phi i32 [ %inc88, %for.inc87 ], [ %row55.0, %for.cond56 ], !dbg !2059
    #dbg_value(i32 %j60.0, !2062, !DIExpression(), !2063)
    #dbg_value(i32 %P3_used.1, !2055, !DIExpression(), !1942)
  %cmp62 = icmp slt i32 %j60.0, %add, !dbg !2064
  br i1 %cmp62, label %for.cond66, label %for.inc90, !dbg !2066

for.cond66:                                       ; preds = %for.cond61, %for.body69
  %col65.0 = phi i32 [ %inc84, %for.body69 ], [ 0, %for.cond61 ], !dbg !2067
    #dbg_value(i32 %col65.0, !2070, !DIExpression(), !2071)
  %exitcond7.not = icmp eq i32 %col65.0, %smax, !dbg !2072
  br i1 %exitcond7.not, label %for.inc87, label %for.body69, !dbg !2074

for.body69:                                       ; preds = %for.cond66
  %mul70 = mul nsw i32 %P3_used.1, %div, !dbg !2075
  %add.ptr71 = getelementptr inbounds i64, ptr %P3, i32 %mul70, !dbg !2077
  %mul73 = mul nsw i32 %row55.0, %k, !dbg !2078
  %add74 = add nsw i32 %mul73, %col65.0, !dbg !2079
  %mul75 = shl nsw i32 %add74, 4, !dbg !2080
  %mul76 = mul nsw i32 %col65.0, %add, !dbg !2081
  %7 = getelementptr i8, ptr %S, i32 %mul76, !dbg !2082
  %arrayidx78 = getelementptr i8, ptr %7, i32 %j60.0, !dbg !2082
  %8 = load i8, ptr %arrayidx78, align 1, !dbg !2082
  %conv79 = zext i8 %8 to i32, !dbg !2082
  %add80 = add nsw i32 %mul75, %conv79, !dbg !2083
  %mul81 = mul nsw i32 %add80, %div, !dbg !2084
  %add.ptr82 = getelementptr inbounds i64, ptr %accumulator, i32 %mul81, !dbg !2085
  call fastcc void @m_vec_add(i32 noundef %div, ptr noundef %add.ptr71, ptr noundef nonnull %add.ptr82) #6, !dbg !2086
  %inc84 = add nuw i32 %col65.0, 1, !dbg !2087
    #dbg_value(i32 %inc84, !2070, !DIExpression(), !2071)
  br label %for.cond66, !dbg !2088, !llvm.loop !2089

for.inc87:                                        ; preds = %for.cond66
    #dbg_value(i32 %P3_used.1, !2055, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1942)
  %inc86 = add nsw i32 %P3_used.1, 1, !dbg !2091
    #dbg_value(i32 %inc86, !2055, !DIExpression(), !1942)
  %inc88 = add nsw i32 %j60.0, 1, !dbg !2092
    #dbg_value(i32 %inc88, !2062, !DIExpression(), !2063)
  br label %for.cond61, !dbg !2093, !llvm.loop !2094

for.inc90:                                        ; preds = %for.cond61
  %inc91 = add i32 %row55.0, 1, !dbg !2096
    #dbg_value(i32 %inc91, !2053, !DIExpression(), !2054)
  br label %for.cond56, !dbg !2097, !llvm.loop !2098

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %i.0 = phi i32 [ %inc102, %while.body ], [ 0, %while.cond.preheader ], !dbg !1942
    #dbg_value(i32 %i.0, !2100, !DIExpression(), !1942)
  %exitcond11.not = icmp eq i32 %i.0, %smax10, !dbg !2101
  br i1 %exitcond11.not, label %while.end, label %while.body, !dbg !2058

while.body:                                       ; preds = %while.cond
  %mul97 = shl nsw i32 %i.0, 4, !dbg !2102
  %mul98 = mul nsw i32 %mul97, %div, !dbg !2104
  %add.ptr99 = getelementptr inbounds i64, ptr %accumulator, i32 %mul98, !dbg !2105
  %mul100 = mul nsw i32 %i.0, %div, !dbg !2106
  %add.ptr101 = getelementptr inbounds i64, ptr %PS, i32 %mul100, !dbg !2107
  call fastcc void @m_vec_multiply_bins(i32 noundef %div, ptr noundef nonnull %add.ptr99, ptr noundef %add.ptr101) #6, !dbg !2108
  %inc102 = add nuw i32 %i.0, 1, !dbg !2109
    #dbg_value(i32 %inc102, !2100, !DIExpression(), !1942)
  br label %while.cond, !dbg !2058, !llvm.loop !2110

while.end:                                        ; preds = %while.cond
  ret void, !dbg !2112
}

; Function Attrs: nounwind
define internal fastcc void @mayo_generic_m_calculate_SPS(ptr noundef %PS, ptr noundef %S, i32 noundef %m, i32 noundef %k, i32 noundef %n, ptr noundef %SPS) unnamed_addr #0 !dbg !2113 {
entry:
  %accumulator = alloca [8000 x i64], align 8
    #dbg_value(ptr %PS, !2116, !DIExpression(), !2117)
    #dbg_value(ptr %S, !2118, !DIExpression(), !2117)
    #dbg_value(i32 %m, !2119, !DIExpression(), !2117)
    #dbg_value(i32 %k, !2120, !DIExpression(), !2117)
    #dbg_value(i32 %n, !2121, !DIExpression(), !2117)
    #dbg_value(ptr %SPS, !2122, !DIExpression(), !2117)
    #dbg_declare(ptr %accumulator, !2123, !DIExpression(), !2127)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(64000) %accumulator, i8 0, i32 64000, i1 false), !dbg !2127
  %add = add nsw i32 %m, 15, !dbg !2128
  %div = sdiv i32 %add, 16, !dbg !2129
    #dbg_value(i32 %div, !2130, !DIExpression(), !2117)
    #dbg_value(i32 0, !2131, !DIExpression(), !2133)
  %smax = call i32 @llvm.smax.i32(i32 %n, i32 0), !dbg !2134
  %smax2 = call i32 @llvm.smax.i32(i32 %k, i32 0), !dbg !2134
  br label %for.cond, !dbg !2134

for.cond:                                         ; preds = %for.inc20, %entry
  %row.0 = phi i32 [ 0, %entry ], [ %inc21, %for.inc20 ], !dbg !2135
    #dbg_value(i32 %row.0, !2131, !DIExpression(), !2133)
  %exitcond3.not = icmp eq i32 %row.0, %smax2, !dbg !2136
  br i1 %exitcond3.not, label %while.cond.preheader, label %for.cond1, !dbg !2138

while.cond.preheader:                             ; preds = %for.cond
  %0 = mul i32 %k, %k, !dbg !2139
  br label %while.cond, !dbg !2139

for.cond1:                                        ; preds = %for.cond, %for.inc18
  %j.0 = phi i32 [ %inc, %for.inc18 ], [ 0, %for.cond ], !dbg !2140
    #dbg_value(i32 %j.0, !2143, !DIExpression(), !2144)
  %exitcond1.not = icmp eq i32 %j.0, %smax, !dbg !2145
  br i1 %exitcond1.not, label %for.inc20, label %for.cond4, !dbg !2147

for.cond4:                                        ; preds = %for.cond1, %for.body6
  %col.0 = phi i32 [ %add17, %for.body6 ], [ 0, %for.cond1 ], !dbg !2148
    #dbg_value(i32 %col.0, !2151, !DIExpression(), !2152)
  %exitcond.not = icmp eq i32 %col.0, %k, !dbg !2153
  br i1 %exitcond.not, label %for.inc18, label %for.body6, !dbg !2155

for.body6:                                        ; preds = %for.cond4
  %mul = mul nsw i32 %j.0, %k, !dbg !2156
  %add7 = add nsw i32 %mul, %col.0, !dbg !2158
  %mul8 = mul nsw i32 %add7, %div, !dbg !2159
  %add.ptr = getelementptr inbounds i64, ptr %PS, i32 %mul8, !dbg !2160
  %mul9 = mul nsw i32 %row.0, %k, !dbg !2161
  %add10 = add nsw i32 %mul9, %col.0, !dbg !2162
  %mul11 = shl nsw i32 %add10, 4, !dbg !2163
  %mul12 = mul nsw i32 %row.0, %n, !dbg !2164
  %1 = getelementptr i8, ptr %S, i32 %mul12, !dbg !2165
  %arrayidx = getelementptr i8, ptr %1, i32 %j.0, !dbg !2165
  %2 = load i8, ptr %arrayidx, align 1, !dbg !2165
  %conv = zext i8 %2 to i32, !dbg !2165
  %add14 = add nsw i32 %mul11, %conv, !dbg !2166
  %mul15 = mul nsw i32 %add14, %div, !dbg !2167
  %add.ptr16 = getelementptr inbounds i64, ptr %accumulator, i32 %mul15, !dbg !2168
  call fastcc void @m_vec_add(i32 noundef %div, ptr noundef %add.ptr, ptr noundef nonnull %add.ptr16) #6, !dbg !2169
  %add17 = add nuw i32 %col.0, 1, !dbg !2170
    #dbg_value(i32 %add17, !2151, !DIExpression(), !2152)
  br label %for.cond4, !dbg !2171, !llvm.loop !2172

for.inc18:                                        ; preds = %for.cond4
  %inc = add nuw i32 %j.0, 1, !dbg !2174
    #dbg_value(i32 %inc, !2143, !DIExpression(), !2144)
  br label %for.cond1, !dbg !2175, !llvm.loop !2176

for.inc20:                                        ; preds = %for.cond1
  %inc21 = add nuw i32 %row.0, 1, !dbg !2178
    #dbg_value(i32 %inc21, !2131, !DIExpression(), !2133)
  br label %for.cond, !dbg !2179, !llvm.loop !2180

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %i.0 = phi i32 [ %inc32, %while.body ], [ 0, %while.cond.preheader ], !dbg !2117
    #dbg_value(i32 %i.0, !2182, !DIExpression(), !2117)
  %exitcond4.not = icmp eq i32 %i.0, %0, !dbg !2183
  br i1 %exitcond4.not, label %while.end, label %while.body, !dbg !2139

while.body:                                       ; preds = %while.cond
  %mul27 = shl nsw i32 %i.0, 4, !dbg !2184
  %mul28 = mul nsw i32 %mul27, %div, !dbg !2186
  %add.ptr29 = getelementptr inbounds i64, ptr %accumulator, i32 %mul28, !dbg !2187
  %mul30 = mul nsw i32 %i.0, %div, !dbg !2188
  %add.ptr31 = getelementptr inbounds i64, ptr %SPS, i32 %mul30, !dbg !2189
  call fastcc void @m_vec_multiply_bins(i32 noundef %div, ptr noundef nonnull %add.ptr29, ptr noundef %add.ptr31) #6, !dbg !2190
  %inc32 = add nuw i32 %i.0, 1, !dbg !2191
    #dbg_value(i32 %inc32, !2182, !DIExpression(), !2117)
  br label %while.cond, !dbg !2139, !llvm.loop !2192

while.end:                                        ; preds = %while.cond
  ret void, !dbg !2194
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_add(i32 noundef %m_vec_limbs, ptr noundef %in, ptr noundef %acc) unnamed_addr #0 !dbg !2195 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2198, !DIExpression(), !2199)
    #dbg_value(ptr %in, !2200, !DIExpression(), !2199)
    #dbg_value(ptr %acc, !2201, !DIExpression(), !2199)
    #dbg_value(i32 0, !2202, !DIExpression(), !2204)
    #dbg_value(i32 0, !2202, !DIExpression(), !2204)
  %0 = load i64, ptr %in, align 8, !dbg !2205
  %1 = load i64, ptr %acc, align 8, !dbg !2208
  %xor = xor i64 %1, %0, !dbg !2208
  store i64 %xor, ptr %acc, align 8, !dbg !2208
    #dbg_value(i32 1, !2202, !DIExpression(), !2204)
  %arrayidx.1 = getelementptr inbounds nuw i8, ptr %in, i32 8, !dbg !2205
  %2 = load i64, ptr %arrayidx.1, align 8, !dbg !2205
  %arrayidx1.1 = getelementptr inbounds nuw i8, ptr %acc, i32 8, !dbg !2209
  %3 = load i64, ptr %arrayidx1.1, align 8, !dbg !2208
  %xor.1 = xor i64 %3, %2, !dbg !2208
  store i64 %xor.1, ptr %arrayidx1.1, align 8, !dbg !2208
    #dbg_value(i32 2, !2202, !DIExpression(), !2204)
  %arrayidx.2 = getelementptr inbounds nuw i8, ptr %in, i32 16, !dbg !2205
  %4 = load i64, ptr %arrayidx.2, align 8, !dbg !2205
  %arrayidx1.2 = getelementptr inbounds nuw i8, ptr %acc, i32 16, !dbg !2209
  %5 = load i64, ptr %arrayidx1.2, align 8, !dbg !2208
  %xor.2 = xor i64 %5, %4, !dbg !2208
  store i64 %xor.2, ptr %arrayidx1.2, align 8, !dbg !2208
    #dbg_value(i32 3, !2202, !DIExpression(), !2204)
  %arrayidx.3 = getelementptr inbounds nuw i8, ptr %in, i32 24, !dbg !2205
  %6 = load i64, ptr %arrayidx.3, align 8, !dbg !2205
  %arrayidx1.3 = getelementptr inbounds nuw i8, ptr %acc, i32 24, !dbg !2209
  %7 = load i64, ptr %arrayidx1.3, align 8, !dbg !2208
  %xor.3 = xor i64 %7, %6, !dbg !2208
  store i64 %xor.3, ptr %arrayidx1.3, align 8, !dbg !2208
    #dbg_value(i32 4, !2202, !DIExpression(), !2204)
  %arrayidx.4 = getelementptr inbounds nuw i8, ptr %in, i32 32, !dbg !2205
  %8 = load i64, ptr %arrayidx.4, align 8, !dbg !2205
  %arrayidx1.4 = getelementptr inbounds nuw i8, ptr %acc, i32 32, !dbg !2209
  %9 = load i64, ptr %arrayidx1.4, align 8, !dbg !2208
  %xor.4 = xor i64 %9, %8, !dbg !2208
  store i64 %xor.4, ptr %arrayidx1.4, align 8, !dbg !2208
    #dbg_value(i32 5, !2202, !DIExpression(), !2204)
  ret void, !dbg !2210
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_multiply_bins(i32 noundef %m_vec_limbs, ptr noundef %bins, ptr noundef %out) unnamed_addr #0 !dbg !2211 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2214, !DIExpression(), !2215)
    #dbg_value(ptr %bins, !2216, !DIExpression(), !2215)
    #dbg_value(ptr %out, !2217, !DIExpression(), !2215)
  %add.ptr = getelementptr inbounds nuw i8, ptr %bins, i32 200, !dbg !2218
  %add.ptr1 = getelementptr inbounds nuw i8, ptr %bins, i32 400, !dbg !2219
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr, ptr noundef nonnull %add.ptr1) #6, !dbg !2220
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %bins, i32 440, !dbg !2221
  %add.ptr3 = getelementptr inbounds nuw i8, ptr %bins, i32 480, !dbg !2222
  call fastcc void @m_vec_mul_add_x(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr2, ptr noundef nonnull %add.ptr3) #6, !dbg !2223
  %add.ptr4 = getelementptr inbounds nuw i8, ptr %bins, i32 400, !dbg !2224
  %add.ptr5 = getelementptr inbounds nuw i8, ptr %bins, i32 280, !dbg !2225
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr4, ptr noundef nonnull %add.ptr5) #6, !dbg !2226
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %bins, i32 480, !dbg !2227
  %add.ptr7 = getelementptr inbounds nuw i8, ptr %bins, i32 240, !dbg !2228
  call fastcc void @m_vec_mul_add_x(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr6, ptr noundef nonnull %add.ptr7) #6, !dbg !2229
  %add.ptr8 = getelementptr inbounds nuw i8, ptr %bins, i32 280, !dbg !2230
  %add.ptr9 = getelementptr inbounds nuw i8, ptr %bins, i32 560, !dbg !2231
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr8, ptr noundef nonnull %add.ptr9) #6, !dbg !2232
  %add.ptr10 = getelementptr inbounds nuw i8, ptr %bins, i32 240, !dbg !2233
  %add.ptr11 = getelementptr inbounds nuw i8, ptr %bins, i32 120, !dbg !2234
  call fastcc void @m_vec_mul_add_x(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr10, ptr noundef nonnull %add.ptr11) #6, !dbg !2235
  %add.ptr12 = getelementptr inbounds nuw i8, ptr %bins, i32 560, !dbg !2236
  %add.ptr13 = getelementptr inbounds nuw i8, ptr %bins, i32 600, !dbg !2237
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr12, ptr noundef nonnull %add.ptr13) #6, !dbg !2238
  %add.ptr14 = getelementptr inbounds nuw i8, ptr %bins, i32 120, !dbg !2239
  %add.ptr15 = getelementptr inbounds nuw i8, ptr %bins, i32 320, !dbg !2240
  call fastcc void @m_vec_mul_add_x(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr14, ptr noundef nonnull %add.ptr15) #6, !dbg !2241
  %add.ptr16 = getelementptr inbounds nuw i8, ptr %bins, i32 600, !dbg !2242
  %add.ptr17 = getelementptr inbounds nuw i8, ptr %bins, i32 520, !dbg !2243
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr16, ptr noundef nonnull %add.ptr17) #6, !dbg !2244
  %add.ptr18 = getelementptr inbounds nuw i8, ptr %bins, i32 320, !dbg !2245
  %add.ptr19 = getelementptr inbounds nuw i8, ptr %bins, i32 160, !dbg !2246
  call fastcc void @m_vec_mul_add_x(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr18, ptr noundef nonnull %add.ptr19) #6, !dbg !2247
  %add.ptr20 = getelementptr inbounds nuw i8, ptr %bins, i32 520, !dbg !2248
  %add.ptr21 = getelementptr inbounds nuw i8, ptr %bins, i32 360, !dbg !2249
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr20, ptr noundef nonnull %add.ptr21) #6, !dbg !2250
  %add.ptr22 = getelementptr inbounds nuw i8, ptr %bins, i32 160, !dbg !2251
  %add.ptr23 = getelementptr inbounds nuw i8, ptr %bins, i32 80, !dbg !2252
  call fastcc void @m_vec_mul_add_x(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr22, ptr noundef nonnull %add.ptr23) #6, !dbg !2253
  %add.ptr24 = getelementptr inbounds nuw i8, ptr %bins, i32 360, !dbg !2254
  %add.ptr25 = getelementptr inbounds nuw i8, ptr %bins, i32 40, !dbg !2255
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr24, ptr noundef nonnull %add.ptr25) #6, !dbg !2256
  %add.ptr26 = getelementptr inbounds nuw i8, ptr %bins, i32 80, !dbg !2257
  %add.ptr27 = getelementptr inbounds nuw i8, ptr %bins, i32 40, !dbg !2258
  call fastcc void @m_vec_mul_add_x(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr26, ptr noundef nonnull %add.ptr27) #6, !dbg !2259
  %add.ptr28 = getelementptr inbounds nuw i8, ptr %bins, i32 40, !dbg !2260
  call fastcc void @m_vec_copy(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr28, ptr noundef %out) #6, !dbg !2261
  ret void, !dbg !2262
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_mul_add_x_inv(i32 noundef %m_vec_limbs, ptr noundef %in, ptr noundef %acc) unnamed_addr #0 !dbg !2263 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2264, !DIExpression(), !2265)
    #dbg_value(ptr %in, !2266, !DIExpression(), !2265)
    #dbg_value(ptr %acc, !2267, !DIExpression(), !2265)
    #dbg_value(i64 1229782938247303441, !2268, !DIExpression(), !2265)
    #dbg_value(i32 0, !2269, !DIExpression(), !2271)
    #dbg_value(i32 0, !2269, !DIExpression(), !2271)
  %0 = load i64, ptr %in, align 8, !dbg !2272
  %and = and i64 %0, 1229782938247303441, !dbg !2275
    #dbg_value(i64 %and, !2276, !DIExpression(), !2277)
  %xor = lshr i64 %0, 1, !dbg !2278
  %shr = and i64 %xor, 8608480567731124087, !dbg !2278
  %mul = mul nuw i64 %and, 9, !dbg !2279
  %xor2 = xor i64 %shr, %mul, !dbg !2280
  %1 = load i64, ptr %acc, align 8, !dbg !2281
  %xor4 = xor i64 %1, %xor2, !dbg !2281
  store i64 %xor4, ptr %acc, align 8, !dbg !2281
    #dbg_value(i32 1, !2269, !DIExpression(), !2271)
  %arrayidx.1 = getelementptr inbounds nuw i8, ptr %in, i32 8, !dbg !2272
  %2 = load i64, ptr %arrayidx.1, align 8, !dbg !2272
  %and.1 = and i64 %2, 1229782938247303441, !dbg !2275
    #dbg_value(i64 %and.1, !2276, !DIExpression(), !2277)
  %xor.1 = lshr i64 %2, 1, !dbg !2278
  %shr.1 = and i64 %xor.1, 8608480567731124087, !dbg !2278
  %mul.1 = mul nuw i64 %and.1, 9, !dbg !2279
  %xor2.1 = xor i64 %shr.1, %mul.1, !dbg !2280
  %arrayidx3.1 = getelementptr inbounds nuw i8, ptr %acc, i32 8, !dbg !2282
  %3 = load i64, ptr %arrayidx3.1, align 8, !dbg !2281
  %xor4.1 = xor i64 %3, %xor2.1, !dbg !2281
  store i64 %xor4.1, ptr %arrayidx3.1, align 8, !dbg !2281
    #dbg_value(i32 2, !2269, !DIExpression(), !2271)
  %arrayidx.2 = getelementptr inbounds nuw i8, ptr %in, i32 16, !dbg !2272
  %4 = load i64, ptr %arrayidx.2, align 8, !dbg !2272
  %and.2 = and i64 %4, 1229782938247303441, !dbg !2275
    #dbg_value(i64 %and.2, !2276, !DIExpression(), !2277)
  %xor.2 = lshr i64 %4, 1, !dbg !2278
  %shr.2 = and i64 %xor.2, 8608480567731124087, !dbg !2278
  %mul.2 = mul nuw i64 %and.2, 9, !dbg !2279
  %xor2.2 = xor i64 %shr.2, %mul.2, !dbg !2280
  %arrayidx3.2 = getelementptr inbounds nuw i8, ptr %acc, i32 16, !dbg !2282
  %5 = load i64, ptr %arrayidx3.2, align 8, !dbg !2281
  %xor4.2 = xor i64 %5, %xor2.2, !dbg !2281
  store i64 %xor4.2, ptr %arrayidx3.2, align 8, !dbg !2281
    #dbg_value(i32 3, !2269, !DIExpression(), !2271)
  %arrayidx.3 = getelementptr inbounds nuw i8, ptr %in, i32 24, !dbg !2272
  %6 = load i64, ptr %arrayidx.3, align 8, !dbg !2272
  %and.3 = and i64 %6, 1229782938247303441, !dbg !2275
    #dbg_value(i64 %and.3, !2276, !DIExpression(), !2277)
  %xor.3 = lshr i64 %6, 1, !dbg !2278
  %shr.3 = and i64 %xor.3, 8608480567731124087, !dbg !2278
  %mul.3 = mul nuw i64 %and.3, 9, !dbg !2279
  %xor2.3 = xor i64 %shr.3, %mul.3, !dbg !2280
  %arrayidx3.3 = getelementptr inbounds nuw i8, ptr %acc, i32 24, !dbg !2282
  %7 = load i64, ptr %arrayidx3.3, align 8, !dbg !2281
  %xor4.3 = xor i64 %7, %xor2.3, !dbg !2281
  store i64 %xor4.3, ptr %arrayidx3.3, align 8, !dbg !2281
    #dbg_value(i32 4, !2269, !DIExpression(), !2271)
  %arrayidx.4 = getelementptr inbounds nuw i8, ptr %in, i32 32, !dbg !2272
  %8 = load i64, ptr %arrayidx.4, align 8, !dbg !2272
  %and.4 = and i64 %8, 1229782938247303441, !dbg !2275
    #dbg_value(i64 %and.4, !2276, !DIExpression(), !2277)
  %xor.4 = lshr i64 %8, 1, !dbg !2278
  %shr.4 = and i64 %xor.4, 8608480567731124087, !dbg !2278
  %mul.4 = mul nuw i64 %and.4, 9, !dbg !2279
  %xor2.4 = xor i64 %shr.4, %mul.4, !dbg !2280
  %arrayidx3.4 = getelementptr inbounds nuw i8, ptr %acc, i32 32, !dbg !2282
  %9 = load i64, ptr %arrayidx3.4, align 8, !dbg !2281
  %xor4.4 = xor i64 %9, %xor2.4, !dbg !2281
  store i64 %xor4.4, ptr %arrayidx3.4, align 8, !dbg !2281
    #dbg_value(i32 5, !2269, !DIExpression(), !2271)
  ret void, !dbg !2283
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_mul_add_x(i32 noundef %m_vec_limbs, ptr noundef %in, ptr noundef %acc) unnamed_addr #0 !dbg !2284 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2285, !DIExpression(), !2286)
    #dbg_value(ptr %in, !2287, !DIExpression(), !2286)
    #dbg_value(ptr %acc, !2288, !DIExpression(), !2286)
    #dbg_value(i64 -8608480567731124088, !2289, !DIExpression(), !2286)
    #dbg_value(i32 0, !2290, !DIExpression(), !2292)
    #dbg_value(i32 0, !2290, !DIExpression(), !2292)
  %0 = load i64, ptr %in, align 8, !dbg !2293
    #dbg_value(i64 %0, !2296, !DIExpression(DW_OP_constu, 9838263505978427528, DW_OP_and, DW_OP_stack_value), !2297)
  %xor = shl i64 %0, 1, !dbg !2298
  %shl = and i64 %xor, -1229782938247303442, !dbg !2298
  %and = lshr i64 %0, 3, !dbg !2299
  %shr = and i64 %and, 1229782938247303441, !dbg !2299
  %mul = mul nuw nsw i64 %shr, 3, !dbg !2300
  %xor2 = xor i64 %shl, %mul, !dbg !2301
  %1 = load i64, ptr %acc, align 8, !dbg !2302
  %xor4 = xor i64 %1, %xor2, !dbg !2302
  store i64 %xor4, ptr %acc, align 8, !dbg !2302
    #dbg_value(i32 1, !2290, !DIExpression(), !2292)
  %arrayidx.1 = getelementptr inbounds nuw i8, ptr %in, i32 8, !dbg !2293
  %2 = load i64, ptr %arrayidx.1, align 8, !dbg !2293
    #dbg_value(i64 %2, !2296, !DIExpression(DW_OP_constu, 9838263505978427528, DW_OP_and, DW_OP_stack_value), !2297)
  %xor.1 = shl i64 %2, 1, !dbg !2298
  %shl.1 = and i64 %xor.1, -1229782938247303442, !dbg !2298
  %and.1 = lshr i64 %2, 3, !dbg !2299
  %shr.1 = and i64 %and.1, 1229782938247303441, !dbg !2299
  %mul.1 = mul nuw nsw i64 %shr.1, 3, !dbg !2300
  %xor2.1 = xor i64 %shl.1, %mul.1, !dbg !2301
  %arrayidx3.1 = getelementptr inbounds nuw i8, ptr %acc, i32 8, !dbg !2303
  %3 = load i64, ptr %arrayidx3.1, align 8, !dbg !2302
  %xor4.1 = xor i64 %3, %xor2.1, !dbg !2302
  store i64 %xor4.1, ptr %arrayidx3.1, align 8, !dbg !2302
    #dbg_value(i32 2, !2290, !DIExpression(), !2292)
  %arrayidx.2 = getelementptr inbounds nuw i8, ptr %in, i32 16, !dbg !2293
  %4 = load i64, ptr %arrayidx.2, align 8, !dbg !2293
    #dbg_value(i64 %4, !2296, !DIExpression(DW_OP_constu, 9838263505978427528, DW_OP_and, DW_OP_stack_value), !2297)
  %xor.2 = shl i64 %4, 1, !dbg !2298
  %shl.2 = and i64 %xor.2, -1229782938247303442, !dbg !2298
  %and.2 = lshr i64 %4, 3, !dbg !2299
  %shr.2 = and i64 %and.2, 1229782938247303441, !dbg !2299
  %mul.2 = mul nuw nsw i64 %shr.2, 3, !dbg !2300
  %xor2.2 = xor i64 %shl.2, %mul.2, !dbg !2301
  %arrayidx3.2 = getelementptr inbounds nuw i8, ptr %acc, i32 16, !dbg !2303
  %5 = load i64, ptr %arrayidx3.2, align 8, !dbg !2302
  %xor4.2 = xor i64 %5, %xor2.2, !dbg !2302
  store i64 %xor4.2, ptr %arrayidx3.2, align 8, !dbg !2302
    #dbg_value(i32 3, !2290, !DIExpression(), !2292)
  %arrayidx.3 = getelementptr inbounds nuw i8, ptr %in, i32 24, !dbg !2293
  %6 = load i64, ptr %arrayidx.3, align 8, !dbg !2293
    #dbg_value(i64 %6, !2296, !DIExpression(DW_OP_constu, 9838263505978427528, DW_OP_and, DW_OP_stack_value), !2297)
  %xor.3 = shl i64 %6, 1, !dbg !2298
  %shl.3 = and i64 %xor.3, -1229782938247303442, !dbg !2298
  %and.3 = lshr i64 %6, 3, !dbg !2299
  %shr.3 = and i64 %and.3, 1229782938247303441, !dbg !2299
  %mul.3 = mul nuw nsw i64 %shr.3, 3, !dbg !2300
  %xor2.3 = xor i64 %shl.3, %mul.3, !dbg !2301
  %arrayidx3.3 = getelementptr inbounds nuw i8, ptr %acc, i32 24, !dbg !2303
  %7 = load i64, ptr %arrayidx3.3, align 8, !dbg !2302
  %xor4.3 = xor i64 %7, %xor2.3, !dbg !2302
  store i64 %xor4.3, ptr %arrayidx3.3, align 8, !dbg !2302
    #dbg_value(i32 4, !2290, !DIExpression(), !2292)
  %arrayidx.4 = getelementptr inbounds nuw i8, ptr %in, i32 32, !dbg !2293
  %8 = load i64, ptr %arrayidx.4, align 8, !dbg !2293
    #dbg_value(i64 %8, !2296, !DIExpression(DW_OP_constu, 9838263505978427528, DW_OP_and, DW_OP_stack_value), !2297)
  %xor.4 = shl i64 %8, 1, !dbg !2298
  %shl.4 = and i64 %xor.4, -1229782938247303442, !dbg !2298
  %and.4 = lshr i64 %8, 3, !dbg !2299
  %shr.4 = and i64 %and.4, 1229782938247303441, !dbg !2299
  %mul.4 = mul nuw nsw i64 %shr.4, 3, !dbg !2300
  %xor2.4 = xor i64 %shl.4, %mul.4, !dbg !2301
  %arrayidx3.4 = getelementptr inbounds nuw i8, ptr %acc, i32 32, !dbg !2303
  %9 = load i64, ptr %arrayidx3.4, align 8, !dbg !2302
  %xor4.4 = xor i64 %9, %xor2.4, !dbg !2302
  store i64 %xor4.4, ptr %arrayidx3.4, align 8, !dbg !2302
    #dbg_value(i32 5, !2290, !DIExpression(), !2292)
  ret void, !dbg !2304
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_copy(i32 noundef %m_vec_limbs, ptr noundef %in, ptr noundef %out) unnamed_addr #0 !dbg !2305 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2306, !DIExpression(), !2307)
    #dbg_value(ptr %in, !2308, !DIExpression(), !2307)
    #dbg_value(ptr %out, !2309, !DIExpression(), !2307)
    #dbg_value(i32 0, !2310, !DIExpression(), !2312)
    #dbg_value(i32 0, !2310, !DIExpression(), !2312)
  %0 = load i64, ptr %in, align 8, !dbg !2313
  store i64 %0, ptr %out, align 8, !dbg !2316
    #dbg_value(i32 1, !2310, !DIExpression(), !2312)
  %arrayidx.1 = getelementptr inbounds nuw i8, ptr %in, i32 8, !dbg !2313
  %1 = load i64, ptr %arrayidx.1, align 8, !dbg !2313
  %arrayidx1.1 = getelementptr inbounds nuw i8, ptr %out, i32 8, !dbg !2317
  store i64 %1, ptr %arrayidx1.1, align 8, !dbg !2316
    #dbg_value(i32 2, !2310, !DIExpression(), !2312)
  %arrayidx.2 = getelementptr inbounds nuw i8, ptr %in, i32 16, !dbg !2313
  %2 = load i64, ptr %arrayidx.2, align 8, !dbg !2313
  %arrayidx1.2 = getelementptr inbounds nuw i8, ptr %out, i32 16, !dbg !2317
  store i64 %2, ptr %arrayidx1.2, align 8, !dbg !2316
    #dbg_value(i32 3, !2310, !DIExpression(), !2312)
  %arrayidx.3 = getelementptr inbounds nuw i8, ptr %in, i32 24, !dbg !2313
  %3 = load i64, ptr %arrayidx.3, align 8, !dbg !2313
  %arrayidx1.3 = getelementptr inbounds nuw i8, ptr %out, i32 24, !dbg !2317
  store i64 %3, ptr %arrayidx1.3, align 8, !dbg !2316
    #dbg_value(i32 4, !2310, !DIExpression(), !2312)
  %arrayidx.4 = getelementptr inbounds nuw i8, ptr %in, i32 32, !dbg !2313
  %4 = load i64, ptr %arrayidx.4, align 8, !dbg !2313
  %arrayidx1.4 = getelementptr inbounds nuw i8, ptr %out, i32 32, !dbg !2317
  store i64 %4, ptr %arrayidx1.4, align 8, !dbg !2316
    #dbg_value(i32 5, !2310, !DIExpression(), !2312)
  ret void, !dbg !2318
}

; Function Attrs: nounwind
define dso_local void @pqmayo_MAYO_1_ref_m_upper(ptr noundef %p, ptr noundef %in, ptr noundef %out, i32 noundef %size) local_unnamed_addr #0 !dbg !2319 {
entry:
    #dbg_value(ptr %p, !2350, !DIExpression(), !2351)
    #dbg_value(ptr %in, !2352, !DIExpression(), !2351)
    #dbg_value(ptr %out, !2353, !DIExpression(), !2351)
    #dbg_value(i32 %size, !2354, !DIExpression(), !2351)
    #dbg_value(i32 5, !2355, !DIExpression(), !2351)
    #dbg_value(i32 0, !2356, !DIExpression(), !2351)
    #dbg_value(i32 0, !2357, !DIExpression(), !2359)
  %smax = call i32 @llvm.smax.i32(i32 %size, i32 0), !dbg !2360
  br label %for.cond, !dbg !2360

for.cond:                                         ; preds = %for.inc15, %entry
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc15 ], [ %size, %entry ], !dbg !2361
  %m_vecs_stored.0 = phi i32 [ %m_vecs_stored.1, %for.inc15 ], [ 0, %entry ], !dbg !2361
  %r.0 = phi i32 [ %inc16, %for.inc15 ], [ 0, %entry ], !dbg !2362
    #dbg_value(i32 %r.0, !2357, !DIExpression(), !2359)
    #dbg_value(i32 %m_vecs_stored.0, !2356, !DIExpression(), !2351)
  %exitcond1.not = icmp eq i32 %r.0, %smax, !dbg !2363
  br i1 %exitcond1.not, label %for.end17, label %for.cond1.preheader, !dbg !2365

for.cond1.preheader:                              ; preds = %for.cond
  %0 = add i32 %m_vecs_stored.0, %indvars.iv, !dbg !2366
  br label %for.cond1, !dbg !2366

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc
  %m_vecs_stored.1 = phi i32 [ %inc, %for.inc ], [ %m_vecs_stored.0, %for.cond1.preheader ], !dbg !2351
  %c.0 = phi i32 [ %inc14, %for.inc ], [ %r.0, %for.cond1.preheader ], !dbg !2369
    #dbg_value(i32 %c.0, !2370, !DIExpression(), !2371)
    #dbg_value(i32 %m_vecs_stored.1, !2356, !DIExpression(), !2351)
  %exitcond.not = icmp eq i32 %m_vecs_stored.1, %0, !dbg !2372
  br i1 %exitcond.not, label %for.inc15, label %for.body3, !dbg !2366

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %r.0, %size, !dbg !2374
  %add = add nsw i32 %mul, %c.0, !dbg !2376
  %add.ptr.idx = mul nsw i32 %add, 40, !dbg !2377
  %add.ptr = getelementptr inbounds i8, ptr %in, i32 %add.ptr.idx, !dbg !2377
  %add.ptr6.idx = mul nsw i32 %m_vecs_stored.1, 40, !dbg !2378
  %add.ptr6 = getelementptr inbounds i8, ptr %out, i32 %add.ptr6.idx, !dbg !2378
  call fastcc void @m_vec_copy.17(i32 noundef 5, ptr noundef %add.ptr, ptr noundef %add.ptr6) #6, !dbg !2379
  %cmp7.not = icmp eq i32 %r.0, %c.0, !dbg !2380
  br i1 %cmp7.not, label %for.inc, label %if.then, !dbg !2380

if.then:                                          ; preds = %for.body3
  %mul8 = mul nsw i32 %c.0, %size, !dbg !2382
  %add9 = add nsw i32 %mul8, %r.0, !dbg !2384
  %add.ptr11.idx = mul nsw i32 %add9, 40, !dbg !2385
  %add.ptr11 = getelementptr inbounds i8, ptr %in, i32 %add.ptr11.idx, !dbg !2385
  %add.ptr13.idx = mul nsw i32 %m_vecs_stored.1, 40, !dbg !2386
  %add.ptr13 = getelementptr inbounds i8, ptr %out, i32 %add.ptr13.idx, !dbg !2386
  call fastcc void @m_vec_add.18(i32 noundef 5, ptr noundef %add.ptr11, ptr noundef %add.ptr13) #6, !dbg !2387
  br label %for.inc, !dbg !2388

for.inc:                                          ; preds = %for.body3, %if.then
    #dbg_value(i32 %m_vecs_stored.1, !2356, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2351)
  %inc = add i32 %m_vecs_stored.1, 1, !dbg !2389
    #dbg_value(i32 %inc, !2356, !DIExpression(), !2351)
  %inc14 = add nuw nsw i32 %c.0, 1, !dbg !2390
    #dbg_value(i32 %inc14, !2370, !DIExpression(), !2371)
  br label %for.cond1, !dbg !2391, !llvm.loop !2392

for.inc15:                                        ; preds = %for.cond1
  %inc16 = add nuw i32 %r.0, 1, !dbg !2394
    #dbg_value(i32 %inc16, !2357, !DIExpression(), !2359)
  %indvars.iv.next = add i32 %indvars.iv, -1, !dbg !2395
  br label %for.cond, !dbg !2395, !llvm.loop !2396

for.end17:                                        ; preds = %for.cond
  ret void, !dbg !2398
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_copy.17(i32 noundef %m_vec_limbs, ptr noundef %in, ptr noundef %out) unnamed_addr #0 !dbg !2399 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2400, !DIExpression(), !2401)
    #dbg_value(ptr %in, !2402, !DIExpression(), !2401)
    #dbg_value(ptr %out, !2403, !DIExpression(), !2401)
    #dbg_value(i32 0, !2404, !DIExpression(), !2406)
    #dbg_value(i32 0, !2404, !DIExpression(), !2406)
  %0 = load i64, ptr %in, align 8, !dbg !2407
  store i64 %0, ptr %out, align 8, !dbg !2410
    #dbg_value(i32 1, !2404, !DIExpression(), !2406)
  %arrayidx.1 = getelementptr inbounds nuw i8, ptr %in, i32 8, !dbg !2407
  %1 = load i64, ptr %arrayidx.1, align 8, !dbg !2407
  %arrayidx1.1 = getelementptr inbounds nuw i8, ptr %out, i32 8, !dbg !2411
  store i64 %1, ptr %arrayidx1.1, align 8, !dbg !2410
    #dbg_value(i32 2, !2404, !DIExpression(), !2406)
  %arrayidx.2 = getelementptr inbounds nuw i8, ptr %in, i32 16, !dbg !2407
  %2 = load i64, ptr %arrayidx.2, align 8, !dbg !2407
  %arrayidx1.2 = getelementptr inbounds nuw i8, ptr %out, i32 16, !dbg !2411
  store i64 %2, ptr %arrayidx1.2, align 8, !dbg !2410
    #dbg_value(i32 3, !2404, !DIExpression(), !2406)
  %arrayidx.3 = getelementptr inbounds nuw i8, ptr %in, i32 24, !dbg !2407
  %3 = load i64, ptr %arrayidx.3, align 8, !dbg !2407
  %arrayidx1.3 = getelementptr inbounds nuw i8, ptr %out, i32 24, !dbg !2411
  store i64 %3, ptr %arrayidx1.3, align 8, !dbg !2410
    #dbg_value(i32 4, !2404, !DIExpression(), !2406)
  %arrayidx.4 = getelementptr inbounds nuw i8, ptr %in, i32 32, !dbg !2407
  %4 = load i64, ptr %arrayidx.4, align 8, !dbg !2407
  %arrayidx1.4 = getelementptr inbounds nuw i8, ptr %out, i32 32, !dbg !2411
  store i64 %4, ptr %arrayidx1.4, align 8, !dbg !2410
    #dbg_value(i32 5, !2404, !DIExpression(), !2406)
  ret void, !dbg !2412
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_add.18(i32 noundef %m_vec_limbs, ptr noundef %in, ptr noundef %acc) unnamed_addr #0 !dbg !2413 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2414, !DIExpression(), !2415)
    #dbg_value(ptr %in, !2416, !DIExpression(), !2415)
    #dbg_value(ptr %acc, !2417, !DIExpression(), !2415)
    #dbg_value(i32 0, !2418, !DIExpression(), !2420)
    #dbg_value(i32 0, !2418, !DIExpression(), !2420)
  %0 = load i64, ptr %in, align 8, !dbg !2421
  %1 = load i64, ptr %acc, align 8, !dbg !2424
  %xor = xor i64 %1, %0, !dbg !2424
  store i64 %xor, ptr %acc, align 8, !dbg !2424
    #dbg_value(i32 1, !2418, !DIExpression(), !2420)
  %arrayidx.1 = getelementptr inbounds nuw i8, ptr %in, i32 8, !dbg !2421
  %2 = load i64, ptr %arrayidx.1, align 8, !dbg !2421
  %arrayidx1.1 = getelementptr inbounds nuw i8, ptr %acc, i32 8, !dbg !2425
  %3 = load i64, ptr %arrayidx1.1, align 8, !dbg !2424
  %xor.1 = xor i64 %3, %2, !dbg !2424
  store i64 %xor.1, ptr %arrayidx1.1, align 8, !dbg !2424
    #dbg_value(i32 2, !2418, !DIExpression(), !2420)
  %arrayidx.2 = getelementptr inbounds nuw i8, ptr %in, i32 16, !dbg !2421
  %4 = load i64, ptr %arrayidx.2, align 8, !dbg !2421
  %arrayidx1.2 = getelementptr inbounds nuw i8, ptr %acc, i32 16, !dbg !2425
  %5 = load i64, ptr %arrayidx1.2, align 8, !dbg !2424
  %xor.2 = xor i64 %5, %4, !dbg !2424
  store i64 %xor.2, ptr %arrayidx1.2, align 8, !dbg !2424
    #dbg_value(i32 3, !2418, !DIExpression(), !2420)
  %arrayidx.3 = getelementptr inbounds nuw i8, ptr %in, i32 24, !dbg !2421
  %6 = load i64, ptr %arrayidx.3, align 8, !dbg !2421
  %arrayidx1.3 = getelementptr inbounds nuw i8, ptr %acc, i32 24, !dbg !2425
  %7 = load i64, ptr %arrayidx1.3, align 8, !dbg !2424
  %xor.3 = xor i64 %7, %6, !dbg !2424
  store i64 %xor.3, ptr %arrayidx1.3, align 8, !dbg !2424
    #dbg_value(i32 4, !2418, !DIExpression(), !2420)
  %arrayidx.4 = getelementptr inbounds nuw i8, ptr %in, i32 32, !dbg !2421
  %8 = load i64, ptr %arrayidx.4, align 8, !dbg !2421
  %arrayidx1.4 = getelementptr inbounds nuw i8, ptr %acc, i32 32, !dbg !2425
  %9 = load i64, ptr %arrayidx1.4, align 8, !dbg !2424
  %xor.4 = xor i64 %9, %8, !dbg !2424
  store i64 %xor.4, ptr %arrayidx1.4, align 8, !dbg !2424
    #dbg_value(i32 5, !2418, !DIExpression(), !2420)
  ret void, !dbg !2426
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_1_ref_sample_solution(ptr noundef %p, ptr noundef %A, ptr noundef %y, ptr noundef %r, ptr noundef %x, i32 noundef %k, i32 noundef %o, i32 noundef %m, i32 noundef %A_cols) local_unnamed_addr #0 !dbg !2427 {
entry:
  %Ar = alloca [78 x i8], align 1
    #dbg_value(ptr %p, !2430, !DIExpression(), !2431)
    #dbg_value(ptr %A, !2432, !DIExpression(), !2431)
    #dbg_value(ptr %y, !2433, !DIExpression(), !2431)
    #dbg_value(ptr %r, !2434, !DIExpression(), !2431)
    #dbg_value(ptr %x, !2435, !DIExpression(), !2431)
    #dbg_value(i32 %k, !2436, !DIExpression(), !2431)
    #dbg_value(i32 %o, !2437, !DIExpression(), !2431)
    #dbg_value(i32 %m, !2438, !DIExpression(), !2431)
    #dbg_value(i32 %A_cols, !2439, !DIExpression(), !2431)
    #dbg_value(i32 0, !2440, !DIExpression(), !2442)
  %0 = mul nsw i32 %o, %k, !dbg !2443
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0), !dbg !2443
  br label %for.cond, !dbg !2443

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2444
    #dbg_value(i32 %i.0, !2440, !DIExpression(), !2442)
  %exitcond.not = icmp eq i32 %i.0, %smax, !dbg !2445
  br i1 %exitcond.not, label %for.cond3.preheader, label %for.body, !dbg !2447

for.cond3.preheader:                              ; preds = %for.cond
  %smax13 = call i32 @llvm.smax.i32(i32 %m, i32 0), !dbg !2448
  br label %for.cond3, !dbg !2448

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %r, i32 %i.0, !dbg !2450
  %1 = load i8, ptr %arrayidx, align 1, !dbg !2450
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %x, i32 %i.0, !dbg !2452
  store i8 %1, ptr %arrayidx1, align 1, !dbg !2453
  %inc = add nuw i32 %i.0, 1, !dbg !2454
    #dbg_value(i32 %inc, !2440, !DIExpression(), !2442)
  br label %for.cond, !dbg !2455, !llvm.loop !2456

for.cond3:                                        ; preds = %for.cond3.preheader, %for.body5
  %i2.0 = phi i32 [ %inc12, %for.body5 ], [ 0, %for.cond3.preheader ], !dbg !2458
    #dbg_value(i32 %i2.0, !2459, !DIExpression(), !2460)
  %exitcond14.not = icmp eq i32 %i2.0, %smax13, !dbg !2461
  br i1 %exitcond14.not, label %for.end13, label %for.body5, !dbg !2448

for.body5:                                        ; preds = %for.cond3
  %mul6 = mul nsw i32 %k, %o, !dbg !2463
  %mul7 = mul nsw i32 %k, %o, !dbg !2465
  %add = add nsw i32 %mul7, 1, !dbg !2466
  %mul8 = mul nsw i32 %i2.0, %add, !dbg !2467
  %2 = getelementptr i8, ptr %A, i32 %mul6, !dbg !2468
  %arrayidx10 = getelementptr i8, ptr %2, i32 %mul8, !dbg !2468
  store i8 0, ptr %arrayidx10, align 1, !dbg !2469
  %inc12 = add nuw i32 %i2.0, 1, !dbg !2470
    #dbg_value(i32 %inc12, !2459, !DIExpression(), !2460)
  br label %for.cond3, !dbg !2471, !llvm.loop !2472

for.end13:                                        ; preds = %for.cond3
  %mul14 = mul nsw i32 %k, %o, !dbg !2474
  %add15 = add nsw i32 %mul14, 1, !dbg !2475
  call fastcc void @mat_mul.21(ptr noundef %A, ptr noundef %r, ptr noundef nonnull %Ar, i32 noundef %add15, i32 noundef %m, i32 noundef 1) #6, !dbg !2476
    #dbg_value(i32 0, !2477, !DIExpression(), !2479)
  br label %for.cond17, !dbg !2480

for.cond17:                                       ; preds = %for.body19, %for.end13
  %i16.0 = phi i32 [ 0, %for.end13 ], [ %inc29, %for.body19 ], !dbg !2481
    #dbg_value(i32 %i16.0, !2477, !DIExpression(), !2479)
  %exitcond15.not = icmp eq i32 %i16.0, %smax13, !dbg !2482
  br i1 %exitcond15.not, label %for.end30, label %for.body19, !dbg !2484

for.body19:                                       ; preds = %for.cond17
  %arrayidx20 = getelementptr inbounds nuw i8, ptr %y, i32 %i16.0, !dbg !2485
  %3 = load i8, ptr %arrayidx20, align 1, !dbg !2485
  %arrayidx21 = getelementptr inbounds nuw [78 x i8], ptr %Ar, i32 0, i32 %i16.0, !dbg !2487
  %4 = load i8, ptr %arrayidx21, align 1, !dbg !2487
  %call = call fastcc zeroext i8 @sub_f(i8 noundef zeroext %3, i8 noundef zeroext %4) #6, !dbg !2488
  %mul22 = mul nsw i32 %k, %o, !dbg !2489
  %mul23 = mul nsw i32 %k, %o, !dbg !2490
  %add24 = add nsw i32 %mul23, 1, !dbg !2491
  %mul25 = mul nsw i32 %i16.0, %add24, !dbg !2492
  %5 = getelementptr i8, ptr %A, i32 %mul22, !dbg !2493
  %arrayidx27 = getelementptr i8, ptr %5, i32 %mul25, !dbg !2493
  store i8 %call, ptr %arrayidx27, align 1, !dbg !2494
  %inc29 = add nuw i32 %i16.0, 1, !dbg !2495
    #dbg_value(i32 %inc29, !2477, !DIExpression(), !2479)
  br label %for.cond17, !dbg !2496, !llvm.loop !2497

for.end30:                                        ; preds = %for.cond17
  %mul31 = mul nsw i32 %k, %o, !dbg !2499
  %add32 = add nsw i32 %mul31, 1, !dbg !2500
  call fastcc void @EF(ptr noundef %A, i32 noundef %m, i32 noundef %add32) #6, !dbg !2501
    #dbg_value(i8 0, !2502, !DIExpression(), !2431)
    #dbg_value(i32 0, !2503, !DIExpression(), !2505)
  %6 = add i32 %A_cols, -1, !dbg !2506
  %smax16 = call i32 @llvm.smax.i32(i32 %6, i32 0), !dbg !2506
  br label %for.cond34, !dbg !2506

for.cond34:                                       ; preds = %for.inc43, %for.end30
  %full_rank.0 = phi i8 [ 0, %for.end30 ], [ %or12, %for.inc43 ], !dbg !2431
  %i33.0 = phi i32 [ 0, %for.end30 ], [ %inc44, %for.inc43 ], !dbg !2507
    #dbg_value(i32 %i33.0, !2503, !DIExpression(), !2505)
    #dbg_value(i8 %full_rank.0, !2502, !DIExpression(), !2431)
  %exitcond17.not = icmp eq i32 %i33.0, %smax16, !dbg !2508
  br i1 %exitcond17.not, label %for.end45, label %for.inc43, !dbg !2510

for.inc43:                                        ; preds = %for.cond34
    #dbg_value(!DIArgList(i8 poison, i8 poison), !2502, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2431)
  %sub37 = add nsw i32 %m, -1, !dbg !2511
  %mul38 = mul nsw i32 %sub37, %A_cols, !dbg !2513
  %7 = getelementptr i8, ptr %A, i32 %mul38, !dbg !2514
  %arrayidx40 = getelementptr i8, ptr %7, i32 %i33.0, !dbg !2514
  %8 = load i8, ptr %arrayidx40, align 1, !dbg !2514
    #dbg_value(!DIArgList(i8 %full_rank.0, i8 %8), !2502, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2431)
  %or12 = or i8 %full_rank.0, %8, !dbg !2515
    #dbg_value(i8 %or12, !2502, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2431)
    #dbg_value(i8 %or12, !2502, !DIExpression(), !2431)
  %inc44 = add nuw i32 %i33.0, 1, !dbg !2516
    #dbg_value(i32 %inc44, !2503, !DIExpression(), !2505)
  br label %for.cond34, !dbg !2517, !llvm.loop !2518

for.end45:                                        ; preds = %for.cond34
  %cmp47 = icmp eq i8 %full_rank.0, 0, !dbg !2520
  br i1 %cmp47, label %return, label %for.cond50, !dbg !2520

for.cond50:                                       ; preds = %for.cond63, %for.end45
  %row.0.in = phi i32 [ %m, %for.end45 ], [ %row.0, %for.cond63 ]
  %row.0 = add nsw i32 %row.0.in, -1, !dbg !2522
    #dbg_value(i32 %row.0, !2524, !DIExpression(), !2525)
  %cmp51 = icmp sgt i32 %row.0.in, 0, !dbg !2526
  br i1 %cmp51, label %for.body53, label %return, !dbg !2528

for.body53:                                       ; preds = %for.cond50
    #dbg_value(i8 0, !2529, !DIExpression(), !2431)
  %sub54 = sub nsw i32 %m, %row.0, !dbg !2530
  %div = sdiv i32 32, %sub54, !dbg !2530
  %add55 = add nsw i32 %row.0, %div, !dbg !2530
  %mul56 = mul nsw i32 %k, %o, !dbg !2530
  %cmp57 = icmp slt i32 %add55, %mul56, !dbg !2530
  br i1 %cmp57, label %cond.true, label %cond.false, !dbg !2530

cond.true:                                        ; preds = %for.body53
  %sub59 = sub nsw i32 %m, %row.0, !dbg !2530
  %div60 = sdiv i32 32, %sub59, !dbg !2530
  %add61 = add nsw i32 %row.0, %div60, !dbg !2530
  br label %cond.end, !dbg !2530

cond.false:                                       ; preds = %for.body53
  %mul62 = mul nsw i32 %k, %o, !dbg !2530
  br label %cond.end, !dbg !2530

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add61, %cond.true ], [ %mul62, %cond.false ], !dbg !2530
    #dbg_value(i32 %cond, !2532, !DIExpression(), !2431)
    #dbg_value(i32 %row.0, !2533, !DIExpression(), !2535)
  br label %for.cond63, !dbg !2536

for.cond63:                                       ; preds = %for.inc229, %cond.end
  %finished.0 = phi i8 [ 0, %cond.end ], [ %or2273, %for.inc229 ], !dbg !2537
  %col.0 = phi i32 [ %row.0, %cond.end ], [ %inc230, %for.inc229 ], !dbg !2538
    #dbg_value(i32 %col.0, !2533, !DIExpression(), !2535)
    #dbg_value(i8 %finished.0, !2529, !DIExpression(), !2431)
  %cmp64.not = icmp sgt i32 %col.0, %cond, !dbg !2539
  br i1 %cmp64.not, label %for.cond50, label %for.body66, !dbg !2541, !llvm.loop !2542

for.body66:                                       ; preds = %for.cond63
  %mul67 = mul nsw i32 %row.0, %A_cols, !dbg !2544
  %9 = getelementptr i8, ptr %A, i32 %mul67, !dbg !2546
  %arrayidx69 = getelementptr i8, ptr %9, i32 %col.0, !dbg !2546
  %10 = load i8, ptr %arrayidx69, align 1, !dbg !2546
  %call70 = call fastcc zeroext i8 @ct_compare_8(i8 noundef zeroext %10, i8 noundef zeroext 0) #6, !dbg !2547
  %not = xor i8 %finished.0, -1, !dbg !2548
    #dbg_value(!DIArgList(i8 %call70, i8 %not), !2549, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value), !2431)
  %add76 = mul i32 %row.0.in, %A_cols, !dbg !2550
  %11 = getelementptr i8, ptr %A, i32 %add76, !dbg !2551
  %arrayidx78 = getelementptr i8, ptr %11, i32 -1, !dbg !2551
  %12 = load i8, ptr %arrayidx78, align 1, !dbg !2551
  %13 = and i8 %12, %not, !dbg !2552
  %and801 = and i8 %13, %call70, !dbg !2552
    #dbg_value(i8 %and801, !2553, !DIExpression(), !2554)
  %arrayidx83 = getelementptr inbounds i8, ptr %x, i32 %col.0, !dbg !2555
  %14 = load i8, ptr %arrayidx83, align 1, !dbg !2556
  %xor2 = xor i8 %14, %and801, !dbg !2556
  store i8 %xor2, ptr %arrayidx83, align 1, !dbg !2556
    #dbg_value(i32 0, !2557, !DIExpression(), !2559)
  br label %for.cond87, !dbg !2560

for.cond87:                                       ; preds = %for.body90, %for.body66
  %i86.0 = phi i32 [ 0, %for.body66 ], [ %add223, %for.body90 ], !dbg !2561
    #dbg_value(i32 %i86.0, !2557, !DIExpression(), !2559)
  %cmp88 = icmp slt i32 %i86.0, %row.0, !dbg !2562
  br i1 %cmp88, label %for.body90, label %for.inc229, !dbg !2564

for.body90:                                       ; preds = %for.cond87
  %mul91 = mul nsw i32 %i86.0, %A_cols, !dbg !2565
  %15 = getelementptr i8, ptr %A, i32 %mul91, !dbg !2567
  %arrayidx93 = getelementptr i8, ptr %15, i32 %col.0, !dbg !2567
  %16 = load i8, ptr %arrayidx93, align 1, !dbg !2567
  %conv94 = zext i8 %16 to i64, !dbg !2568
  %add95 = or disjoint i32 %i86.0, 1, !dbg !2569
  %mul96 = mul nsw i32 %add95, %A_cols, !dbg !2570
  %17 = getelementptr i8, ptr %A, i32 %mul96, !dbg !2571
  %arrayidx98 = getelementptr i8, ptr %17, i32 %col.0, !dbg !2571
  %18 = load i8, ptr %arrayidx98, align 1, !dbg !2571
  %conv99 = zext i8 %18 to i64, !dbg !2572
  %shl100 = shl nuw nsw i64 %conv99, 8, !dbg !2573
  %xor101 = or disjoint i64 %shl100, %conv94, !dbg !2574
  %add102 = or disjoint i32 %i86.0, 2, !dbg !2575
  %mul103 = mul nsw i32 %add102, %A_cols, !dbg !2576
  %19 = getelementptr i8, ptr %A, i32 %mul103, !dbg !2577
  %arrayidx105 = getelementptr i8, ptr %19, i32 %col.0, !dbg !2577
  %20 = load i8, ptr %arrayidx105, align 1, !dbg !2577
  %conv106 = zext i8 %20 to i64, !dbg !2578
  %shl107 = shl nuw nsw i64 %conv106, 16, !dbg !2579
  %xor108 = or disjoint i64 %xor101, %shl107, !dbg !2580
  %add109 = or disjoint i32 %i86.0, 3, !dbg !2581
  %mul110 = mul nsw i32 %add109, %A_cols, !dbg !2582
  %21 = getelementptr i8, ptr %A, i32 %mul110, !dbg !2583
  %arrayidx112 = getelementptr i8, ptr %21, i32 %col.0, !dbg !2583
  %22 = load i8, ptr %arrayidx112, align 1, !dbg !2583
  %conv113 = zext i8 %22 to i64, !dbg !2584
  %shl114 = shl nuw nsw i64 %conv113, 24, !dbg !2585
  %xor115 = or disjoint i64 %xor108, %shl114, !dbg !2586
  %add116 = or disjoint i32 %i86.0, 4, !dbg !2587
  %mul117 = mul nsw i32 %add116, %A_cols, !dbg !2588
  %23 = getelementptr i8, ptr %A, i32 %mul117, !dbg !2589
  %arrayidx119 = getelementptr i8, ptr %23, i32 %col.0, !dbg !2589
  %24 = load i8, ptr %arrayidx119, align 1, !dbg !2589
  %conv120 = zext i8 %24 to i64, !dbg !2590
  %shl121 = shl nuw nsw i64 %conv120, 32, !dbg !2591
  %xor122 = or disjoint i64 %xor115, %shl121, !dbg !2592
  %add123 = or disjoint i32 %i86.0, 5, !dbg !2593
  %mul124 = mul nsw i32 %add123, %A_cols, !dbg !2594
  %25 = getelementptr i8, ptr %A, i32 %mul124, !dbg !2595
  %arrayidx126 = getelementptr i8, ptr %25, i32 %col.0, !dbg !2595
  %26 = load i8, ptr %arrayidx126, align 1, !dbg !2595
  %conv127 = zext i8 %26 to i64, !dbg !2596
  %shl128 = shl nuw nsw i64 %conv127, 40, !dbg !2597
  %xor129 = xor i64 %xor122, %shl128, !dbg !2598
  %add130 = or disjoint i32 %i86.0, 6, !dbg !2599
  %mul131 = mul nsw i32 %add130, %A_cols, !dbg !2600
  %27 = getelementptr i8, ptr %A, i32 %mul131, !dbg !2601
  %arrayidx133 = getelementptr i8, ptr %27, i32 %col.0, !dbg !2601
  %28 = load i8, ptr %arrayidx133, align 1, !dbg !2601
  %conv134 = zext i8 %28 to i64, !dbg !2602
  %shl135 = shl nuw nsw i64 %conv134, 48, !dbg !2603
  %xor136 = xor i64 %xor129, %shl135, !dbg !2604
  %add137 = or disjoint i32 %i86.0, 7, !dbg !2605
  %mul138 = mul nsw i32 %add137, %A_cols, !dbg !2606
  %29 = getelementptr i8, ptr %A, i32 %mul138, !dbg !2607
  %arrayidx140 = getelementptr i8, ptr %29, i32 %col.0, !dbg !2607
  %30 = load i8, ptr %arrayidx140, align 1, !dbg !2607
  %conv141 = zext i8 %30 to i64, !dbg !2608
  %shl142 = shl nuw i64 %conv141, 56, !dbg !2609
  %xor143 = xor i64 %xor136, %shl142, !dbg !2610
    #dbg_value(i64 %xor143, !2611, !DIExpression(), !2612)
  %call144 = call fastcc i64 @mul_fx8(i8 noundef zeroext %and801, i64 noundef %xor143) #6, !dbg !2613
    #dbg_value(i64 %call144, !2611, !DIExpression(), !2612)
  %mul1464 = or disjoint i32 %i86.0, 1, !dbg !2614
  %add147 = mul i32 %mul1464, %A_cols, !dbg !2614
  %31 = getelementptr i8, ptr %A, i32 %add147, !dbg !2615
  %arrayidx149 = getelementptr i8, ptr %31, i32 -1, !dbg !2615
  %32 = load i8, ptr %arrayidx149, align 1, !dbg !2616
  %33 = trunc i64 %call144 to i8, !dbg !2616
  %34 = and i8 %33, 15, !dbg !2616
  %conv152 = xor i8 %34, %32, !dbg !2616
  store i8 %conv152, ptr %arrayidx149, align 1, !dbg !2616
  %shr = lshr i64 %call144, 8, !dbg !2617
  %mul1555 = or disjoint i32 %i86.0, 2, !dbg !2618
  %add156 = mul i32 %mul1555, %A_cols, !dbg !2618
  %35 = getelementptr i8, ptr %A, i32 %add156, !dbg !2619
  %arrayidx158 = getelementptr i8, ptr %35, i32 -1, !dbg !2619
  %36 = load i8, ptr %arrayidx158, align 1, !dbg !2620
  %37 = trunc i64 %shr to i8, !dbg !2620
  %38 = and i8 %37, 15, !dbg !2620
  %conv161 = xor i8 %38, %36, !dbg !2620
  store i8 %conv161, ptr %arrayidx158, align 1, !dbg !2620
  %shr162 = lshr i64 %call144, 16, !dbg !2621
  %mul1656 = or disjoint i32 %i86.0, 3, !dbg !2622
  %add166 = mul i32 %mul1656, %A_cols, !dbg !2622
  %39 = getelementptr i8, ptr %A, i32 %add166, !dbg !2623
  %arrayidx168 = getelementptr i8, ptr %39, i32 -1, !dbg !2623
  %40 = load i8, ptr %arrayidx168, align 1, !dbg !2624
  %41 = trunc i64 %shr162 to i8, !dbg !2624
  %42 = and i8 %41, 15, !dbg !2624
  %conv171 = xor i8 %42, %40, !dbg !2624
  store i8 %conv171, ptr %arrayidx168, align 1, !dbg !2624
  %shr172 = lshr i64 %call144, 24, !dbg !2625
  %mul1757 = or disjoint i32 %i86.0, 4, !dbg !2626
  %add176 = mul i32 %mul1757, %A_cols, !dbg !2626
  %43 = getelementptr i8, ptr %A, i32 %add176, !dbg !2627
  %arrayidx178 = getelementptr i8, ptr %43, i32 -1, !dbg !2627
  %44 = load i8, ptr %arrayidx178, align 1, !dbg !2628
  %45 = trunc i64 %shr172 to i8, !dbg !2628
  %46 = and i8 %45, 15, !dbg !2628
  %conv181 = xor i8 %46, %44, !dbg !2628
  store i8 %conv181, ptr %arrayidx178, align 1, !dbg !2628
  %shr182 = lshr i64 %call144, 32, !dbg !2629
  %mul1858 = or disjoint i32 %i86.0, 5, !dbg !2630
  %add186 = mul i32 %mul1858, %A_cols, !dbg !2630
  %47 = getelementptr i8, ptr %A, i32 %add186, !dbg !2631
  %arrayidx188 = getelementptr i8, ptr %47, i32 -1, !dbg !2631
  %48 = load i8, ptr %arrayidx188, align 1, !dbg !2632
  %49 = trunc i64 %shr182 to i8, !dbg !2632
  %50 = and i8 %49, 15, !dbg !2632
  %conv191 = xor i8 %50, %48, !dbg !2632
  store i8 %conv191, ptr %arrayidx188, align 1, !dbg !2632
  %shr192 = lshr i64 %call144, 40, !dbg !2633
  %mul1959 = or disjoint i32 %i86.0, 6, !dbg !2634
  %add196 = mul i32 %mul1959, %A_cols, !dbg !2634
  %51 = getelementptr i8, ptr %A, i32 %add196, !dbg !2635
  %arrayidx198 = getelementptr i8, ptr %51, i32 -1, !dbg !2635
  %52 = load i8, ptr %arrayidx198, align 1, !dbg !2636
  %53 = trunc i64 %shr192 to i8, !dbg !2636
  %54 = and i8 %53, 15, !dbg !2636
  %conv201 = xor i8 %54, %52, !dbg !2636
  store i8 %conv201, ptr %arrayidx198, align 1, !dbg !2636
  %shr202 = lshr i64 %call144, 48, !dbg !2637
  %mul20510 = or disjoint i32 %i86.0, 7, !dbg !2638
  %add206 = mul i32 %mul20510, %A_cols, !dbg !2638
  %55 = getelementptr i8, ptr %A, i32 %add206, !dbg !2639
  %arrayidx208 = getelementptr i8, ptr %55, i32 -1, !dbg !2639
  %56 = load i8, ptr %arrayidx208, align 1, !dbg !2640
  %57 = trunc i64 %shr202 to i8, !dbg !2640
  %58 = and i8 %57, 15, !dbg !2640
  %conv211 = xor i8 %58, %56, !dbg !2640
  store i8 %conv211, ptr %arrayidx208, align 1, !dbg !2640
  %shr212 = lshr i64 %call144, 56, !dbg !2641
  %mul21511 = add nuw i32 %i86.0, 8, !dbg !2642
  %add216 = mul i32 %mul21511, %A_cols, !dbg !2642
  %59 = getelementptr i8, ptr %A, i32 %add216, !dbg !2643
  %arrayidx218 = getelementptr i8, ptr %59, i32 -1, !dbg !2643
  %60 = load i8, ptr %arrayidx218, align 1, !dbg !2644
  %61 = trunc nuw nsw i64 %shr212 to i8, !dbg !2644
  %conv221 = xor i8 %60, %61, !dbg !2644
  store i8 %conv221, ptr %arrayidx218, align 1, !dbg !2644
  %add223 = add nuw nsw i32 %i86.0, 8, !dbg !2645
    #dbg_value(i32 %add223, !2557, !DIExpression(), !2559)
  br label %for.cond87, !dbg !2646, !llvm.loop !2647

for.inc229:                                       ; preds = %for.cond87
    #dbg_value(!DIArgList(i8 %finished.0, i8 %call70), !2529, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2431)
  %or2273 = or i8 %finished.0, %call70, !dbg !2649
    #dbg_value(i8 %or2273, !2529, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2431)
    #dbg_value(i8 %or2273, !2529, !DIExpression(), !2431)
  %inc230 = add nsw i32 %col.0, 1, !dbg !2650
    #dbg_value(i32 %inc230, !2533, !DIExpression(), !2535)
  br label %for.cond63, !dbg !2651, !llvm.loop !2652

return:                                           ; preds = %for.cond50, %for.end45
  %retval.0 = phi i32 [ 0, %for.end45 ], [ 1, %for.cond50 ], !dbg !2431
  ret i32 %retval.0, !dbg !2654
}

; Function Attrs: nounwind
define internal fastcc void @mat_mul.21(ptr noundef %a, ptr noundef %b, ptr noundef %c, i32 noundef %colrow_ab, i32 noundef %row_a, i32 noundef %col_b) unnamed_addr #0 !dbg !2655 {
entry:
    #dbg_value(ptr %a, !2656, !DIExpression(), !2657)
    #dbg_value(ptr %b, !2658, !DIExpression(), !2657)
    #dbg_value(ptr %c, !2659, !DIExpression(), !2657)
    #dbg_value(i32 %colrow_ab, !2660, !DIExpression(), !2657)
    #dbg_value(i32 %row_a, !2661, !DIExpression(), !2657)
    #dbg_value(i32 %col_b, !2662, !DIExpression(), !2657)
    #dbg_value(i32 0, !2663, !DIExpression(), !2665)
  %smax = call i32 @llvm.smax.i32(i32 %col_b, i32 0), !dbg !2666
  %smax1 = call i32 @llvm.smax.i32(i32 %row_a, i32 0), !dbg !2666
  br label %for.cond, !dbg !2666

for.cond:                                         ; preds = %for.inc4, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc5, %for.inc4 ], !dbg !2667
  %c.addr.0 = phi ptr [ %c, %entry ], [ %c.addr.1, %for.inc4 ]
  %a.addr.0 = phi ptr [ %a, %entry ], [ %add.ptr6, %for.inc4 ]
    #dbg_value(ptr %a.addr.0, !2656, !DIExpression(), !2657)
    #dbg_value(ptr %c.addr.0, !2659, !DIExpression(), !2657)
    #dbg_value(i32 %i.0, !2663, !DIExpression(), !2665)
  %exitcond2.not = icmp eq i32 %i.0, %smax1, !dbg !2668
  br i1 %exitcond2.not, label %for.end7, label %for.cond1, !dbg !2670

for.cond1:                                        ; preds = %for.cond, %for.body3
  %c.addr.1 = phi ptr [ %incdec.ptr, %for.body3 ], [ %c.addr.0, %for.cond ]
  %j.0 = phi i32 [ %inc, %for.body3 ], [ 0, %for.cond ], !dbg !2671
    #dbg_value(i32 %j.0, !2674, !DIExpression(), !2675)
    #dbg_value(ptr %c.addr.1, !2659, !DIExpression(), !2657)
  %exitcond.not = icmp eq i32 %j.0, %smax, !dbg !2676
  br i1 %exitcond.not, label %for.inc4, label %for.body3, !dbg !2678

for.body3:                                        ; preds = %for.cond1
  %add.ptr = getelementptr inbounds nuw i8, ptr %b, i32 %j.0, !dbg !2679
  %call = call fastcc zeroext i8 @lincomb.24(ptr noundef %a.addr.0, ptr noundef %add.ptr, i32 noundef %colrow_ab, i32 noundef %col_b) #6, !dbg !2681
  store i8 %call, ptr %c.addr.1, align 1, !dbg !2682
  %inc = add nuw i32 %j.0, 1, !dbg !2683
    #dbg_value(i32 %inc, !2674, !DIExpression(), !2675)
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %c.addr.1, i32 1, !dbg !2684
    #dbg_value(ptr %incdec.ptr, !2659, !DIExpression(), !2657)
  br label %for.cond1, !dbg !2685, !llvm.loop !2686

for.inc4:                                         ; preds = %for.cond1
  %inc5 = add nuw i32 %i.0, 1, !dbg !2688
    #dbg_value(i32 %inc5, !2663, !DIExpression(), !2665)
  %add.ptr6 = getelementptr inbounds i8, ptr %a.addr.0, i32 %colrow_ab, !dbg !2689
    #dbg_value(ptr %add.ptr6, !2656, !DIExpression(), !2657)
  br label %for.cond, !dbg !2690, !llvm.loop !2691

for.end7:                                         ; preds = %for.cond
  ret void, !dbg !2693
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @sub_f(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !2694 {
entry:
    #dbg_value(i8 %a, !2695, !DIExpression(), !2696)
    #dbg_value(i8 %b, !2697, !DIExpression(), !2696)
  %xor1 = xor i8 %a, %b, !dbg !2698
  ret i8 %xor1, !dbg !2699
}

; Function Attrs: nounwind
define internal fastcc void @EF(ptr noundef %A, i32 noundef %nrows, i32 noundef %ncols) unnamed_addr #0 !dbg !2700 {
entry:
  %_pivot_row = alloca [6 x i64], align 32
  %_pivot_row2 = alloca [6 x i64], align 32
  %packed_A = alloca [468 x i64], align 32
  %temp = alloca [96 x i8], align 1
    #dbg_value(ptr %A, !2704, !DIExpression(), !2705)
    #dbg_value(i32 %nrows, !2706, !DIExpression(), !2705)
    #dbg_value(i32 %ncols, !2707, !DIExpression(), !2705)
    #dbg_declare(ptr %_pivot_row, !2708, !DIExpression(), !2712)
    #dbg_declare(ptr %_pivot_row2, !2713, !DIExpression(), !2714)
    #dbg_declare(ptr %packed_A, !2715, !DIExpression(), !2719)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 32 dereferenceable(3744) %packed_A, i8 0, i32 3744, i1 false), !dbg !2719
  %add = add nsw i32 %ncols, 15, !dbg !2720
  %div = sdiv i32 %add, 16, !dbg !2721
    #dbg_value(i32 %div, !2722, !DIExpression(), !2705)
    #dbg_value(i32 0, !2723, !DIExpression(), !2725)
  %smax = call i32 @llvm.smax.i32(i32 %nrows, i32 0), !dbg !2726
  br label %for.cond, !dbg !2726

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2727
    #dbg_value(i32 %i.0, !2723, !DIExpression(), !2725)
  %exitcond.not = icmp eq i32 %i.0, %smax, !dbg !2728
  br i1 %exitcond.not, label %for.cond3.preheader, label %for.body, !dbg !2730

for.cond3.preheader:                              ; preds = %for.cond
  %smax1 = call i32 @llvm.smax.i32(i32 %div, i32 0), !dbg !2731
  %smax5 = call i32 @llvm.smax.i32(i32 %ncols, i32 0), !dbg !2731
  br label %for.cond3, !dbg !2731

for.body:                                         ; preds = %for.cond
  %mul = mul nsw i32 %i.0, %ncols, !dbg !2733
  %add.ptr = getelementptr inbounds i8, ptr %A, i32 %mul, !dbg !2735
  %mul1 = mul nsw i32 %i.0, %div, !dbg !2736
  %add.ptr2 = getelementptr inbounds i64, ptr %packed_A, i32 %mul1, !dbg !2737
  call fastcc void @ef_pack_m_vec(ptr noundef %add.ptr, ptr noundef nonnull %add.ptr2, i32 noundef %ncols) #6, !dbg !2738
  %inc = add nuw i32 %i.0, 1, !dbg !2739
    #dbg_value(i32 %inc, !2723, !DIExpression(), !2725)
  br label %for.cond, !dbg !2740, !llvm.loop !2741

for.cond3:                                        ; preds = %for.cond3.preheader, %for.inc117
  %pivot_col.0 = phi i32 [ %inc118, %for.inc117 ], [ 0, %for.cond3.preheader ], !dbg !2743
  %pivot_row.0 = phi i32 [ %conv116, %for.inc117 ], [ 0, %for.cond3.preheader ], !dbg !2705
    #dbg_value(i32 %pivot_row.0, !2744, !DIExpression(), !2705)
    #dbg_value(i32 %pivot_col.0, !2745, !DIExpression(), !2746)
  %exitcond6.not = icmp eq i32 %pivot_col.0, %smax5, !dbg !2747
  br i1 %exitcond6.not, label %for.cond121, label %for.body5, !dbg !2731

for.body5:                                        ; preds = %for.cond3
  %add6 = add nsw i32 %pivot_col.0, %nrows, !dbg !2749
  %cmp7 = icmp slt i32 %add6, %ncols, !dbg !2749
  %add8 = add nsw i32 %pivot_col.0, %nrows, !dbg !2749
  %sub9 = sub nsw i32 %add8, %ncols, !dbg !2749
  %cond = select i1 %cmp7, i32 0, i32 %sub9, !dbg !2749
    #dbg_value(i32 %cond, !2751, !DIExpression(), !2752)
  %sub13 = add nsw i32 %nrows, -1, !dbg !2753
    #dbg_value(i32 %cond16, !2754, !DIExpression(), !2752)
    #dbg_value(i32 0, !2755, !DIExpression(), !2757)
  br label %for.cond18, !dbg !2758

for.cond18:                                       ; preds = %for.body20, %for.body5
  %i17.0 = phi i32 [ 0, %for.body5 ], [ %inc23, %for.body20 ], !dbg !2759
    #dbg_value(i32 %i17.0, !2755, !DIExpression(), !2757)
  %exitcond2.not = icmp eq i32 %i17.0, %smax1, !dbg !2760
  br i1 %exitcond2.not, label %for.cond25.preheader, label %for.body20, !dbg !2762

for.cond25.preheader:                             ; preds = %for.cond18
  %cmp11.not = icmp sgt i32 %nrows, %pivot_col.0, !dbg !2753
  %cond16 = select i1 %cmp11.not, i32 %pivot_col.0, i32 %sub13, !dbg !2753
  br label %for.cond25, !dbg !2763

for.body20:                                       ; preds = %for.cond18
  %arrayidx = getelementptr inbounds nuw [6 x i64], ptr %_pivot_row, i32 0, i32 %i17.0, !dbg !2765
  store i64 0, ptr %arrayidx, align 8, !dbg !2767
  %arrayidx21 = getelementptr inbounds nuw [6 x i64], ptr %_pivot_row2, i32 0, i32 %i17.0, !dbg !2768
  store i64 0, ptr %arrayidx21, align 8, !dbg !2769
  %inc23 = add nuw nsw i32 %i17.0, 1, !dbg !2770
    #dbg_value(i32 %inc23, !2755, !DIExpression(), !2757)
  br label %for.cond18, !dbg !2771, !llvm.loop !2772

for.cond25:                                       ; preds = %for.cond25.preheader, %for.end48
  %pivot_is_zero.0 = phi i64 [ %not52, %for.end48 ], [ -1, %for.cond25.preheader ], !dbg !2752
  %pivot.0 = phi i8 [ %call50, %for.end48 ], [ 0, %for.cond25.preheader ], !dbg !2752
  %row.0 = phi i32 [ %inc54, %for.end48 ], [ %cond, %for.cond25.preheader ], !dbg !2774
    #dbg_value(i32 %row.0, !2775, !DIExpression(), !2774)
    #dbg_value(i8 %pivot.0, !2776, !DIExpression(), !2752)
    #dbg_value(i64 %pivot_is_zero.0, !2777, !DIExpression(), !2752)
  %add27 = add nsw i32 %cond16, 32, !dbg !2778
  %cmp28.not = icmp sgt i32 %nrows, %add27, !dbg !2778
  %sub30 = add nsw i32 %nrows, -1, !dbg !2778
  %add32 = add nsw i32 %cond16, 32, !dbg !2778
  %cond34 = select i1 %cmp28.not, i32 %add32, i32 %sub30, !dbg !2778
  %cmp35.not = icmp sgt i32 %row.0, %cond34, !dbg !2780
  br i1 %cmp35.not, label %for.end55, label %for.body36, !dbg !2763

for.body36:                                       ; preds = %for.cond25
  %call = call fastcc i64 @ct_compare_64(i32 noundef %row.0, i32 noundef %pivot_row.0) #6, !dbg !2781
  %not = xor i64 %call, -1, !dbg !2783
    #dbg_value(i64 %not, !2784, !DIExpression(), !2785)
  %call37 = call fastcc i64 @ct_64_is_greater_than(i32 noundef %row.0, i32 noundef %pivot_row.0) #6, !dbg !2786
    #dbg_value(i64 %call37, !2787, !DIExpression(), !2785)
    #dbg_value(i32 0, !2788, !DIExpression(), !2790)
  br label %for.cond38, !dbg !2791

for.cond38:                                       ; preds = %for.body40, %for.body36
  %j.0 = phi i32 [ 0, %for.body36 ], [ %inc47, %for.body40 ], !dbg !2792
    #dbg_value(i32 %j.0, !2788, !DIExpression(), !2790)
  %exitcond3.not = icmp eq i32 %j.0, %smax1, !dbg !2793
  br i1 %exitcond3.not, label %for.end48, label %for.body40, !dbg !2795

for.body40:                                       ; preds = %for.cond38
  %and = and i64 %call37, %pivot_is_zero.0, !dbg !2796
  %or = or i64 %and, %not, !dbg !2798
  %mul41 = mul nsw i32 %row.0, %div, !dbg !2799
  %add42 = add nsw i32 %mul41, %j.0, !dbg !2800
  %arrayidx43 = getelementptr inbounds [468 x i64], ptr %packed_A, i32 0, i32 %add42, !dbg !2801
  %0 = load i64, ptr %arrayidx43, align 8, !dbg !2801
  %and44 = and i64 %or, %0, !dbg !2802
  %arrayidx45 = getelementptr inbounds nuw [6 x i64], ptr %_pivot_row, i32 0, i32 %j.0, !dbg !2803
  %1 = load i64, ptr %arrayidx45, align 8, !dbg !2804
  %xor = xor i64 %1, %and44, !dbg !2804
  store i64 %xor, ptr %arrayidx45, align 8, !dbg !2804
  %inc47 = add nuw nsw i32 %j.0, 1, !dbg !2805
    #dbg_value(i32 %inc47, !2788, !DIExpression(), !2790)
  br label %for.cond38, !dbg !2806, !llvm.loop !2807

for.end48:                                        ; preds = %for.cond38
  %call50 = call fastcc zeroext i8 @m_extract_element(ptr noundef nonnull %_pivot_row, i32 noundef %pivot_col.0) #6, !dbg !2809
    #dbg_value(i8 %call50, !2776, !DIExpression(), !2752)
  %conv = zext nneg i8 %call50 to i32, !dbg !2810
  %call51 = call fastcc i64 @ct_compare_64(i32 noundef %conv, i32 noundef 0) #6, !dbg !2811
    #dbg_value(i64 %call51, !2777, !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_stack_value), !2752)
  %not52 = xor i64 %call51, -1, !dbg !2812
    #dbg_value(i64 %not52, !2777, !DIExpression(), !2752)
  %inc54 = add nsw i32 %row.0, 1, !dbg !2813
    #dbg_value(i32 %inc54, !2775, !DIExpression(), !2774)
  br label %for.cond25, !dbg !2814, !llvm.loop !2815

for.end55:                                        ; preds = %for.cond25
  %call56 = call fastcc zeroext i8 @inverse_f(i8 noundef zeroext %pivot.0) #6, !dbg !2817
    #dbg_value(i8 %call56, !2818, !DIExpression(), !2705)
  call fastcc void @vec_mul_add_u64(i32 noundef %div, ptr noundef nonnull %_pivot_row, i8 noundef zeroext %call56, ptr noundef nonnull %_pivot_row2) #6, !dbg !2819
    #dbg_value(i32 %cond, !2820, !DIExpression(), !2822)
  br label %for.cond60, !dbg !2823

for.cond60:                                       ; preds = %for.inc86, %for.end55
  %row59.0 = phi i32 [ %cond, %for.end55 ], [ %inc87, %for.inc86 ], !dbg !2824
    #dbg_value(i32 %row59.0, !2820, !DIExpression(), !2822)
  %cmp61.not = icmp sgt i32 %row59.0, %cond16, !dbg !2825
  br i1 %cmp61.not, label %for.cond90, label %for.body63, !dbg !2827

for.body63:                                       ; preds = %for.cond60
  %call64 = call fastcc i64 @ct_compare_64(i32 noundef %row59.0, i32 noundef %pivot_row.0) #6, !dbg !2828
  %and67.demorgan = or i64 %call64, %pivot_is_zero.0, !dbg !2830
  %and67 = xor i64 %and67.demorgan, -1, !dbg !2830
    #dbg_value(i64 %and67, !2831, !DIExpression(), !2832)
    #dbg_value(i64 %and67.demorgan, !2833, !DIExpression(), !2832)
    #dbg_value(i32 0, !2834, !DIExpression(), !2836)
  br label %for.cond69, !dbg !2837

for.cond69:                                       ; preds = %for.body72, %for.body63
  %col.0 = phi i32 [ 0, %for.body63 ], [ %inc84, %for.body72 ], !dbg !2838
    #dbg_value(i32 %col.0, !2834, !DIExpression(), !2836)
  %exitcond4.not = icmp eq i32 %col.0, %smax1, !dbg !2839
  br i1 %exitcond4.not, label %for.inc86, label %for.body72, !dbg !2841

for.body72:                                       ; preds = %for.cond69
  %mul73 = mul nsw i32 %row59.0, %div, !dbg !2842
  %add74 = add nsw i32 %mul73, %col.0, !dbg !2844
  %arrayidx75 = getelementptr inbounds [468 x i64], ptr %packed_A, i32 0, i32 %add74, !dbg !2845
  %2 = load i64, ptr %arrayidx75, align 8, !dbg !2845
  %and76 = and i64 %and67.demorgan, %2, !dbg !2846
  %arrayidx77 = getelementptr inbounds nuw [6 x i64], ptr %_pivot_row2, i32 0, i32 %col.0, !dbg !2847
  %3 = load i64, ptr %arrayidx77, align 8, !dbg !2847
  %and78 = and i64 %3, %and67, !dbg !2848
  %add79 = add i64 %and76, %and78, !dbg !2849
  %mul80 = mul nsw i32 %row59.0, %div, !dbg !2850
  %add81 = add nsw i32 %mul80, %col.0, !dbg !2851
  %arrayidx82 = getelementptr inbounds [468 x i64], ptr %packed_A, i32 0, i32 %add81, !dbg !2852
  store i64 %add79, ptr %arrayidx82, align 8, !dbg !2853
  %inc84 = add nuw nsw i32 %col.0, 1, !dbg !2854
    #dbg_value(i32 %inc84, !2834, !DIExpression(), !2836)
  br label %for.cond69, !dbg !2855, !llvm.loop !2856

for.inc86:                                        ; preds = %for.cond69
  %inc87 = add nsw i32 %row59.0, 1, !dbg !2858
    #dbg_value(i32 %inc87, !2820, !DIExpression(), !2822)
  br label %for.cond60, !dbg !2859, !llvm.loop !2860

for.cond90:                                       ; preds = %for.cond60, %for.body93
  %row89.0 = phi i32 [ %inc110, %for.body93 ], [ %cond, %for.cond60 ], !dbg !2862
    #dbg_value(i32 %row89.0, !2864, !DIExpression(), !2865)
  %cmp91 = icmp slt i32 %row89.0, %nrows, !dbg !2866
  br i1 %cmp91, label %for.body93, label %for.inc117, !dbg !2868

for.body93:                                       ; preds = %for.cond90
  %cmp94 = icmp sgt i32 %row89.0, %pivot_row.0, !dbg !2869
    #dbg_value(i1 %cmp94, !2871, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2872)
  %mul98 = mul nsw i32 %row89.0, %div, !dbg !2873
  %add.ptr99 = getelementptr inbounds i64, ptr %packed_A, i32 %mul98, !dbg !2874
  %call100 = call fastcc zeroext i8 @m_extract_element(ptr noundef nonnull %add.ptr99, i32 noundef %pivot_col.0) #6, !dbg !2875
    #dbg_value(i8 %call100, !2876, !DIExpression(), !2872)
  %conv105 = select i1 %cmp94, i8 %call100, i8 0, !dbg !2877
  %mul107 = mul nsw i32 %row89.0, %div, !dbg !2878
  %add.ptr108 = getelementptr inbounds i64, ptr %packed_A, i32 %mul107, !dbg !2879
  call fastcc void @vec_mul_add_u64(i32 noundef %div, ptr noundef nonnull %_pivot_row2, i8 noundef zeroext %conv105, ptr noundef nonnull %add.ptr108) #6, !dbg !2880
  %inc110 = add nsw i32 %row89.0, 1, !dbg !2881
    #dbg_value(i32 %inc110, !2864, !DIExpression(), !2865)
  br label %for.cond90, !dbg !2882, !llvm.loop !2883

for.inc117:                                       ; preds = %for.cond90
    #dbg_value(!DIArgList(i64 %pivot_is_zero.0, i32 %pivot_row.0), !2744, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_plus_uconst, 1, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2705)
  %4 = trunc i64 %pivot_is_zero.0 to i32, !dbg !2885
  %5 = add i32 %4, 1, !dbg !2885
  %conv116 = add i32 %5, %pivot_row.0, !dbg !2885
    #dbg_value(i32 %conv116, !2744, !DIExpression(), !2705)
  %inc118 = add nuw i32 %pivot_col.0, 1, !dbg !2886
    #dbg_value(i32 %inc118, !2745, !DIExpression(), !2746)
  br label %for.cond3, !dbg !2887, !llvm.loop !2888

for.cond121:                                      ; preds = %for.cond3, %for.inc141
  %i120.0 = phi i32 [ %inc142, %for.inc141 ], [ 0, %for.cond3 ], !dbg !2890
    #dbg_value(i32 %i120.0, !2892, !DIExpression(), !2893)
  %exitcond8.not = icmp eq i32 %i120.0, %smax, !dbg !2894
  br i1 %exitcond8.not, label %for.end143, label %for.body124, !dbg !2896

for.body124:                                      ; preds = %for.cond121
  %mul126 = mul nsw i32 %i120.0, %div, !dbg !2897
  %add.ptr127 = getelementptr inbounds i64, ptr %packed_A, i32 %mul126, !dbg !2899
  call fastcc void @ef_unpack_m_vec(i32 noundef %div, ptr noundef nonnull %add.ptr127, ptr noundef nonnull %temp) #6, !dbg !2900
    #dbg_value(i32 0, !2901, !DIExpression(), !2903)
  br label %for.cond130, !dbg !2904

for.cond130:                                      ; preds = %for.body133, %for.body124
  %j129.0 = phi i32 [ 0, %for.body124 ], [ %inc139, %for.body133 ], !dbg !2905
    #dbg_value(i32 %j129.0, !2901, !DIExpression(), !2903)
  %exitcond7.not = icmp eq i32 %j129.0, %smax5, !dbg !2906
  br i1 %exitcond7.not, label %for.inc141, label %for.body133, !dbg !2908

for.body133:                                      ; preds = %for.cond130
  %arrayidx134 = getelementptr inbounds nuw [96 x i8], ptr %temp, i32 0, i32 %j129.0, !dbg !2909
  %6 = load i8, ptr %arrayidx134, align 1, !dbg !2909
  %mul135 = mul nsw i32 %i120.0, %ncols, !dbg !2911
  %7 = getelementptr i8, ptr %A, i32 %mul135, !dbg !2912
  %arrayidx137 = getelementptr i8, ptr %7, i32 %j129.0, !dbg !2912
  store i8 %6, ptr %arrayidx137, align 1, !dbg !2913
  %inc139 = add nuw i32 %j129.0, 1, !dbg !2914
    #dbg_value(i32 %inc139, !2901, !DIExpression(), !2903)
  br label %for.cond130, !dbg !2915, !llvm.loop !2916

for.inc141:                                       ; preds = %for.cond130
  %inc142 = add nuw i32 %i120.0, 1, !dbg !2918
    #dbg_value(i32 %inc142, !2892, !DIExpression(), !2893)
  br label %for.cond121, !dbg !2919, !llvm.loop !2920

for.end143:                                       ; preds = %for.cond121
  call void @mayo_secure_clear(ptr noundef nonnull %temp, i32 noundef 96) #8, !dbg !2922
  call void @mayo_secure_clear(ptr noundef nonnull %_pivot_row, i32 noundef 48) #8, !dbg !2923
  call void @mayo_secure_clear(ptr noundef nonnull %_pivot_row2, i32 noundef 48) #8, !dbg !2924
  call void @mayo_secure_clear(ptr noundef nonnull %packed_A, i32 noundef 3744) #8, !dbg !2925
  ret void, !dbg !2926
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @ct_compare_8(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !2927 {
entry:
    #dbg_value(i8 %a, !2929, !DIExpression(), !2930)
    #dbg_value(i8 %b, !2931, !DIExpression(), !2930)
  %0 = icmp ne i8 %a, %b, !dbg !2932
  %conv3 = sext i1 %0 to i8, !dbg !2933
  %1 = load volatile i8, ptr @pqmayo_MAYO_1_ref_unsigned_char_blocker, align 1, !dbg !2934
  %xor5 = xor i8 %1, %conv3, !dbg !2935
  ret i8 %xor5, !dbg !2936
}

; Function Attrs: nounwind
define internal fastcc range(i64 0, 1085102592571150096) i64 @mul_fx8(i8 noundef zeroext %a, i64 noundef %b) unnamed_addr #0 !dbg !2937 {
entry:
    #dbg_value(i8 %a, !2940, !DIExpression(), !2941)
    #dbg_value(i64 %b, !2942, !DIExpression(), !2941)
  %0 = and i8 %a, 1, !dbg !2943
  %conv1 = zext nneg i8 %0 to i64, !dbg !2944
  %mul = mul nuw nsw i64 %b, %conv1, !dbg !2945
    #dbg_value(i64 %mul, !2946, !DIExpression(), !2941)
  %1 = and i8 %a, 2, !dbg !2947
  %conv4 = zext nneg i8 %1 to i64, !dbg !2948
  %mul5 = mul i64 %b, %conv4, !dbg !2949
  %xor = xor i64 %mul, %mul5, !dbg !2950
    #dbg_value(i64 %xor, !2946, !DIExpression(), !2941)
  %2 = and i8 %a, 4, !dbg !2951
  %conv8 = zext nneg i8 %2 to i64, !dbg !2952
  %mul9 = mul i64 %b, %conv8, !dbg !2953
  %xor10 = xor i64 %xor, %mul9, !dbg !2954
    #dbg_value(i64 %xor10, !2946, !DIExpression(), !2941)
  %3 = and i8 %a, 8, !dbg !2955
  %conv13 = zext nneg i8 %3 to i64, !dbg !2956
  %mul14 = mul i64 %b, %conv13, !dbg !2957
  %xor15 = xor i64 %xor10, %mul14, !dbg !2958
    #dbg_value(i64 %xor15, !2946, !DIExpression(), !2941)
    #dbg_value(i64 %xor15, !2959, !DIExpression(DW_OP_constu, 17361641481138401520, DW_OP_and, DW_OP_stack_value), !2941)
  %shr = lshr i64 %xor15, 4, !dbg !2960
  %and16 = lshr i64 %xor15, 3, !dbg !2961
  %shr18 = and i64 %and16, 1012762419733073422, !dbg !2961
  %4 = xor i64 %shr, %shr18, !dbg !2962
  %xor19 = xor i64 %4, %xor15, !dbg !2962
  %and20 = and i64 %xor19, 1085102592571150095, !dbg !2963
    #dbg_value(i64 %and20, !2964, !DIExpression(), !2941)
  ret i64 %and20, !dbg !2965
}

; Function Attrs: nounwind
define internal fastcc void @ef_pack_m_vec(ptr noundef %in, ptr noundef %out, i32 noundef %ncols) unnamed_addr #0 !dbg !2966 {
entry:
    #dbg_value(ptr %in, !2969, !DIExpression(), !2970)
    #dbg_value(ptr %out, !2971, !DIExpression(), !2970)
    #dbg_value(i32 %ncols, !2972, !DIExpression(), !2970)
    #dbg_value(ptr %out, !2973, !DIExpression(), !2970)
    #dbg_value(i32 0, !2974, !DIExpression(), !2970)
  br label %for.cond, !dbg !2975

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %add8, %for.body ], !dbg !2977
    #dbg_value(i32 %i.0, !2974, !DIExpression(), !2970)
  %add = or disjoint i32 %i.0, 1, !dbg !2978
  %cmp = icmp slt i32 %add, %ncols, !dbg !2980
  br i1 %cmp, label %for.body, label %for.end, !dbg !2981

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %in, i32 %i.0, !dbg !2982
  %0 = load i8, ptr %arrayidx, align 1, !dbg !2982
  %add2 = or disjoint i32 %i.0, 1, !dbg !2984
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %in, i32 %add2, !dbg !2985
  %1 = load i8, ptr %arrayidx3, align 1, !dbg !2985
  %shl5 = shl i8 %1, 4, !dbg !2986
  %or = or i8 %shl5, %0, !dbg !2987
  %div = lshr exact i32 %i.0, 1, !dbg !2988
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %out, i32 %div, !dbg !2989
  store i8 %or, ptr %arrayidx7, align 1, !dbg !2990
  %add8 = add nuw nsw i32 %i.0, 2, !dbg !2991
    #dbg_value(i32 %add8, !2974, !DIExpression(), !2970)
  br label %for.cond, !dbg !2992, !llvm.loop !2993

for.end:                                          ; preds = %for.cond
  %2 = and i32 %ncols, -2147483647, !dbg !2995
  %cmp9 = icmp eq i32 %2, 1, !dbg !2995
  br i1 %cmp9, label %if.then, label %if.end, !dbg !2995

if.then:                                          ; preds = %for.end
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %in, i32 %i.0, !dbg !2997
  %3 = load i8, ptr %arrayidx12, align 1, !dbg !2997
  %div16 = lshr exact i32 %i.0, 1, !dbg !2999
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %out, i32 %div16, !dbg !3000
  store i8 %3, ptr %arrayidx17, align 1, !dbg !3001
  br label %if.end, !dbg !3002

if.end:                                           ; preds = %if.then, %for.end
  ret void, !dbg !3003
}

; Function Attrs: nounwind
define internal fastcc i64 @ct_compare_64(i32 noundef %a, i32 noundef %b) unnamed_addr #0 !dbg !3004 {
entry:
    #dbg_value(i32 %a, !3007, !DIExpression(), !3008)
    #dbg_value(i32 %b, !3009, !DIExpression(), !3008)
  %xor = xor i32 %a, %b, !dbg !3010
  %0 = icmp sgt i32 %xor, 0, !dbg !3011
  %shr = sext i1 %0 to i64, !dbg !3011
  %1 = load volatile i64, ptr @pqmayo_MAYO_1_ref_uint64_t_blocker, align 8, !dbg !3012
  %xor1 = xor i64 %1, %shr, !dbg !3013
  ret i64 %xor1, !dbg !3014
}

; Function Attrs: nounwind
define internal fastcc i64 @ct_64_is_greater_than(i32 noundef %a, i32 noundef %b) unnamed_addr #0 !dbg !3015 {
entry:
    #dbg_value(i32 %a, !3016, !DIExpression(), !3017)
    #dbg_value(i32 %b, !3018, !DIExpression(), !3017)
    #dbg_value(!DIArgList(i32 %b, i32 %a), !3019, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_minus, DW_OP_stack_value), !3017)
  %0 = icmp slt i32 %b, %a, !dbg !3020
  %shr = sext i1 %0 to i64, !dbg !3020
  %1 = load volatile i64, ptr @pqmayo_MAYO_1_ref_uint64_t_blocker, align 8, !dbg !3021
  %xor = xor i64 %1, %shr, !dbg !3022
  ret i64 %xor, !dbg !3023
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @m_extract_element(ptr noundef %in, i32 noundef %index) unnamed_addr #0 !dbg !3024 {
entry:
    #dbg_value(ptr %in, !3027, !DIExpression(), !3028)
    #dbg_value(i32 %index, !3029, !DIExpression(), !3028)
  %div = sdiv i32 %index, 16, !dbg !3030
    #dbg_value(i32 %div, !3031, !DIExpression(), !3028)
  %rem = srem i32 %index, 16, !dbg !3032
    #dbg_value(i32 %rem, !3033, !DIExpression(), !3028)
  %arrayidx = getelementptr inbounds i64, ptr %in, i32 %div, !dbg !3034
  %0 = load i64, ptr %arrayidx, align 8, !dbg !3034
  %mul = shl nsw i32 %rem, 2, !dbg !3035
  %sh_prom = zext nneg i32 %mul to i64, !dbg !3036
  %shr = lshr i64 %0, %sh_prom, !dbg !3036
  %1 = trunc i64 %shr to i8, !dbg !3037
  %conv = and i8 %1, 15, !dbg !3037
  ret i8 %conv, !dbg !3038
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @inverse_f(i8 noundef zeroext %a) unnamed_addr #0 !dbg !3039 {
entry:
    #dbg_value(i8 %a, !3042, !DIExpression(), !3043)
  %call = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %a, i8 noundef zeroext %a) #6, !dbg !3044
    #dbg_value(i8 %call, !3045, !DIExpression(), !3043)
  %call1 = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %call, i8 noundef zeroext %call) #6, !dbg !3046
    #dbg_value(i8 %call1, !3047, !DIExpression(), !3043)
  %call2 = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %call1, i8 noundef zeroext %call1) #6, !dbg !3048
    #dbg_value(i8 %call2, !3049, !DIExpression(), !3043)
  %call3 = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %call, i8 noundef zeroext %call1) #6, !dbg !3050
    #dbg_value(i8 %call3, !3051, !DIExpression(), !3043)
  %call4 = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %call2, i8 noundef zeroext %call3) #6, !dbg !3052
    #dbg_value(i8 %call4, !3053, !DIExpression(), !3043)
  ret i8 %call4, !dbg !3054
}

; Function Attrs: nounwind
define internal fastcc void @vec_mul_add_u64(i32 noundef %legs, ptr noundef %in, i8 noundef zeroext %a, ptr noundef %acc) unnamed_addr #0 !dbg !3055 {
entry:
    #dbg_value(i32 %legs, !3058, !DIExpression(), !3059)
    #dbg_value(ptr %in, !3060, !DIExpression(), !3059)
    #dbg_value(i8 %a, !3061, !DIExpression(), !3059)
    #dbg_value(ptr %acc, !3062, !DIExpression(), !3059)
  %call = call fastcc i32 @mul_table.22(i8 noundef zeroext %a) #6, !dbg !3063
    #dbg_value(i32 %call, !3064, !DIExpression(), !3059)
    #dbg_value(i64 1229782938247303441, !3065, !DIExpression(), !3059)
    #dbg_value(i32 0, !3066, !DIExpression(), !3068)
  %smax = call i32 @llvm.smax.i32(i32 %legs, i32 0), !dbg !3069
  br label %for.cond, !dbg !3069

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !3070
    #dbg_value(i32 %i.0, !3066, !DIExpression(), !3068)
  %exitcond.not = icmp eq i32 %i.0, %smax, !dbg !3071
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !3073

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !3074
  %0 = load i64, ptr %arrayidx, align 8, !dbg !3074
  %and = and i64 %0, 1229782938247303441, !dbg !3076
  %and1 = and i32 %call, 255, !dbg !3077
  %conv = zext nneg i32 %and1 to i64, !dbg !3078
  %mul = mul i64 %and, %conv, !dbg !3079
  %shr = lshr i64 %0, 1, !dbg !3080
  %and3 = and i64 %shr, 1229782938247303441, !dbg !3081
  %shr4 = lshr i32 %call, 8, !dbg !3082
  %and5 = and i32 %shr4, 15, !dbg !3083
  %conv6 = zext nneg i32 %and5 to i64, !dbg !3084
  %mul7 = mul nuw i64 %and3, %conv6, !dbg !3085
  %xor = xor i64 %mul, %mul7, !dbg !3086
  %arrayidx8 = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !3087
  %1 = load i64, ptr %arrayidx8, align 8, !dbg !3087
  %shr9 = lshr i64 %1, 2, !dbg !3088
  %and10 = and i64 %shr9, 1229782938247303441, !dbg !3089
  %shr11 = lshr i32 %call, 16, !dbg !3090
  %and12 = and i32 %shr11, 15, !dbg !3091
  %conv13 = zext nneg i32 %and12 to i64, !dbg !3092
  %mul14 = mul nuw i64 %and10, %conv13, !dbg !3093
  %xor15 = xor i64 %xor, %mul14, !dbg !3094
  %arrayidx16 = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !3095
  %2 = load i64, ptr %arrayidx16, align 8, !dbg !3095
  %shr17 = lshr i64 %2, 3, !dbg !3096
  %and18 = and i64 %shr17, 1229782938247303441, !dbg !3097
  %shr19 = lshr i32 %call, 24, !dbg !3098
  %and20 = and i32 %shr19, 15, !dbg !3099
  %conv21 = zext nneg i32 %and20 to i64, !dbg !3100
  %mul22 = mul nuw i64 %and18, %conv21, !dbg !3101
  %xor23 = xor i64 %xor15, %mul22, !dbg !3102
  %arrayidx24 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !3103
  %3 = load i64, ptr %arrayidx24, align 8, !dbg !3104
  %xor25 = xor i64 %3, %xor23, !dbg !3104
  store i64 %xor25, ptr %arrayidx24, align 8, !dbg !3104
  %inc = add nuw i32 %i.0, 1, !dbg !3105
    #dbg_value(i32 %inc, !3066, !DIExpression(), !3068)
  br label %for.cond, !dbg !3106, !llvm.loop !3107

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3109
}

; Function Attrs: nounwind
define internal fastcc void @ef_unpack_m_vec(i32 noundef %legs, ptr noundef %in, ptr noundef %out) unnamed_addr #0 !dbg !3110 {
entry:
    #dbg_value(i32 %legs, !3113, !DIExpression(), !3114)
    #dbg_value(ptr %in, !3115, !DIExpression(), !3114)
    #dbg_value(ptr %out, !3116, !DIExpression(), !3114)
    #dbg_value(ptr %in, !3117, !DIExpression(), !3114)
    #dbg_value(i32 0, !3118, !DIExpression(), !3120)
  br label %for.cond, !dbg !3121

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %add8, %for.body ], !dbg !3122
    #dbg_value(i32 %i.0, !3118, !DIExpression(), !3120)
  %mul = shl nsw i32 %legs, 4, !dbg !3123
  %cmp = icmp slt i32 %i.0, %mul, !dbg !3125
  br i1 %cmp, label %for.body, label %for.end, !dbg !3126

for.body:                                         ; preds = %for.cond
  %div = lshr exact i32 %i.0, 1, !dbg !3127
  %arrayidx = getelementptr inbounds nuw i8, ptr %in, i32 %div, !dbg !3129
  %0 = load i8, ptr %arrayidx, align 1, !dbg !3129
  %1 = and i8 %0, 15, !dbg !3130
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %out, i32 %i.0, !dbg !3131
  store i8 %1, ptr %arrayidx2, align 1, !dbg !3132
  %div3 = lshr exact i32 %i.0, 1, !dbg !3133
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %in, i32 %div3, !dbg !3134
  %2 = load i8, ptr %arrayidx4, align 1, !dbg !3134
  %3 = lshr i8 %2, 4, !dbg !3135
  %add = or disjoint i32 %i.0, 1, !dbg !3136
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %out, i32 %add, !dbg !3137
  store i8 %3, ptr %arrayidx7, align 1, !dbg !3138
  %add8 = add nuw nsw i32 %i.0, 2, !dbg !3139
    #dbg_value(i32 %add8, !3118, !DIExpression(), !3120)
  br label %for.cond, !dbg !3140, !llvm.loop !3141

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3143
}

; Function Attrs: nounwind
define internal fastcc i32 @mul_table.22(i8 noundef zeroext %b) unnamed_addr #0 !dbg !3144 {
entry:
    #dbg_value(i8 %b, !3145, !DIExpression(), !3146)
  %conv = zext i8 %b to i32, !dbg !3147
  %mul = mul i32 %conv, 134480385, !dbg !3148
    #dbg_value(i32 %mul, !3149, !DIExpression(), !3146)
    #dbg_value(i32 -252645136, !3150, !DIExpression(), !3146)
  %and = and i32 %mul, -252645136, !dbg !3151
    #dbg_value(i32 %and, !3152, !DIExpression(), !3146)
  %shr = lshr exact i32 %and, 4, !dbg !3153
  %shr1 = lshr exact i32 %and, 3, !dbg !3154
  %0 = xor i32 %shr, %shr1, !dbg !3155
  %xor2 = xor i32 %0, %mul, !dbg !3155
  ret i32 %xor2, !dbg !3156
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @mul_f.23(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !3157 {
entry:
    #dbg_value(i8 %a, !3158, !DIExpression(), !3159)
    #dbg_value(i8 %b, !3160, !DIExpression(), !3159)
  %0 = load volatile i8, ptr @pqmayo_MAYO_1_ref_unsigned_char_blocker, align 1, !dbg !3161
  %xor1 = xor i8 %a, %0, !dbg !3162
    #dbg_value(i8 %xor1, !3158, !DIExpression(), !3159)
  %1 = trunc i8 %xor1 to i1, !dbg !3163
    #dbg_value(i8 poison, !3164, !DIExpression(), !3159)
  %2 = and i8 %xor1, 2, !dbg !3165
  %mul9 = mul i8 %2, %b, !dbg !3166
  %conv10 = select i1 %1, i8 %b, i8 0, !dbg !3163
  %xor11 = xor i8 %conv10, %mul9, !dbg !3167
    #dbg_value(i8 %xor11, !3164, !DIExpression(), !3159)
  %3 = and i8 %xor1, 4, !dbg !3168
  %mul16 = mul i8 %3, %b, !dbg !3169
  %xor18 = xor i8 %mul16, %xor11, !dbg !3170
    #dbg_value(i8 %xor18, !3164, !DIExpression(), !3159)
  %4 = and i8 %xor1, 8, !dbg !3171
  %mul23 = mul i8 %4, %b, !dbg !3172
  %xor25 = xor i8 %mul23, %xor18, !dbg !3173
    #dbg_value(i8 %xor25, !3164, !DIExpression(), !3159)
    #dbg_value(i8 %xor25, !3174, !DIExpression(DW_OP_constu, 18446744073709551600, DW_OP_and, DW_OP_stack_value), !3159)
  %5 = lshr i8 %xor25, 4, !dbg !3175
  %6 = lshr i8 %xor25, 3, !dbg !3176
  %7 = and i8 %6, 14, !dbg !3176
  %8 = xor i8 %5, %7, !dbg !3177
  %xor25.masked = and i8 %xor25, 15, !dbg !3178
  %9 = xor i8 %8, %xor25.masked, !dbg !3178
    #dbg_value(i8 %9, !3179, !DIExpression(), !3159)
  ret i8 %9, !dbg !3180
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @lincomb.24(ptr noundef %a, ptr noundef %b, i32 noundef %n, i32 noundef %m) unnamed_addr #0 !dbg !3181 {
entry:
    #dbg_value(ptr %a, !3182, !DIExpression(), !3183)
    #dbg_value(ptr %b, !3184, !DIExpression(), !3183)
    #dbg_value(i32 %n, !3185, !DIExpression(), !3183)
    #dbg_value(i32 %m, !3186, !DIExpression(), !3183)
    #dbg_value(i8 0, !3187, !DIExpression(), !3183)
    #dbg_value(i32 0, !3188, !DIExpression(), !3190)
  %smax = call i32 @llvm.smax.i32(i32 %n, i32 0), !dbg !3191
  br label %for.cond, !dbg !3191

for.cond:                                         ; preds = %for.body, %entry
  %ret.0 = phi i8 [ 0, %entry ], [ %call1, %for.body ], !dbg !3183
  %b.addr.0 = phi ptr [ %b, %entry ], [ %add.ptr, %for.body ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !3192
    #dbg_value(i32 %i.0, !3188, !DIExpression(), !3190)
    #dbg_value(ptr %b.addr.0, !3184, !DIExpression(), !3183)
    #dbg_value(i8 %ret.0, !3187, !DIExpression(), !3183)
  %exitcond.not = icmp eq i32 %i.0, %smax, !dbg !3193
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !3195

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %a, i32 %i.0, !dbg !3196
  %0 = load i8, ptr %arrayidx, align 1, !dbg !3196
  %1 = load i8, ptr %b.addr.0, align 1, !dbg !3198
  %call = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %0, i8 noundef zeroext %1) #6, !dbg !3199
  %call1 = call fastcc zeroext i8 @add_f.25(i8 noundef zeroext %call, i8 noundef zeroext %ret.0) #6, !dbg !3200
    #dbg_value(i8 %call1, !3187, !DIExpression(), !3183)
  %inc = add nuw i32 %i.0, 1, !dbg !3201
    #dbg_value(i32 %inc, !3188, !DIExpression(), !3190)
  %add.ptr = getelementptr inbounds i8, ptr %b.addr.0, i32 %m, !dbg !3202
    #dbg_value(ptr %add.ptr, !3184, !DIExpression(), !3183)
  br label %for.cond, !dbg !3203, !llvm.loop !3204

for.end:                                          ; preds = %for.cond
  ret i8 %ret.0, !dbg !3206
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @add_f.25(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !3207 {
entry:
    #dbg_value(i8 %a, !3208, !DIExpression(), !3209)
    #dbg_value(i8 %b, !3210, !DIExpression(), !3209)
  %xor1 = xor i8 %a, %b, !dbg !3211
  ret i8 %xor1, !dbg !3212
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
!175 = distinct !DISubprogram(name: "pqmayo_MAYO_1_ref_mayo_keypair", scope: !25, file: !25, line: 298, type: !176, scopeLine: 298, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
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
!215 = distinct !DISubprogram(name: "pqmayo_MAYO_1_ref_mayo_keypair_compact", scope: !25, file: !25, line: 538, type: !176, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!216 = !DILocalVariable(name: "p", arg: 1, scope: !215, file: !25, line: 538, type: !178)
!217 = !DILocation(line: 0, scope: !215)
!218 = !DILocalVariable(name: "cpk", arg: 2, scope: !215, file: !25, line: 538, type: !18)
!219 = !DILocalVariable(name: "csk", arg: 3, scope: !215, file: !25, line: 539, type: !18)
!220 = !DILocalVariable(name: "ret", scope: !215, file: !25, line: 540, type: !45)
!221 = !DILocalVariable(name: "seed_sk", scope: !215, file: !25, line: 541, type: !18)
!222 = !DILocalVariable(name: "S", scope: !215, file: !25, line: 542, type: !223)
!223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 2624, elements: !224)
!224 = !{!225}
!225 = !DISubrange(count: 328)
!226 = !DILocation(line: 542, column: 19, scope: !215)
!227 = !DILocalVariable(name: "P", scope: !215, file: !25, line: 543, type: !228)
!228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 1185600, elements: !229)
!229 = !{!230}
!230 = !DISubrange(count: 18525)
!231 = !DILocation(line: 543, column: 14, scope: !215)
!232 = !DILocalVariable(name: "P3", scope: !215, file: !25, line: 544, type: !233)
!233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 20480, elements: !234)
!234 = !{!235}
!235 = !DISubrange(count: 320)
!236 = !DILocation(line: 544, column: 14, scope: !215)
!237 = !DILocalVariable(name: "O", scope: !215, file: !25, line: 547, type: !238)
!238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 4992, elements: !239)
!239 = !{!240}
!240 = !DISubrange(count: 624)
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
!266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 11520, elements: !267)
!267 = !{!268}
!268 = !DISubrange(count: 180)
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
!588 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 320, elements: !589)
!589 = !{!590}
!590 = !DISubrange(count: 5)
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
!615 = distinct !DISubprogram(name: "pqmayo_MAYO_1_ref_mayo_expand_sk", scope: !25, file: !25, line: 310, type: !616, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
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
!681 = !DILocation(line: 233, column: 13, scope: !679)
!682 = !DILocation(line: 233, scope: !679)
!683 = !DILocalVariable(name: "k", scope: !679, file: !327, line: 233, type: !45)
!684 = !DILocation(line: 0, scope: !679)
!685 = !DILocation(line: 234, column: 98, scope: !677)
!686 = !DILocation(line: 234, column: 84, scope: !677)
!687 = !DILocation(line: 234, column: 127, scope: !677)
!688 = !DILocation(line: 234, column: 137, scope: !677)
!689 = !DILocation(line: 234, column: 108, scope: !677)
!690 = !DILocation(line: 234, column: 17, scope: !677)
!691 = !DILocation(line: 235, column: 47, scope: !677)
!692 = !DILocation(line: 235, column: 88, scope: !677)
!693 = !DILocation(line: 235, column: 98, scope: !677)
!694 = !DILocation(line: 235, column: 84, scope: !677)
!695 = !DILocation(line: 235, column: 127, scope: !677)
!696 = !DILocation(line: 235, column: 137, scope: !677)
!697 = !DILocation(line: 235, column: 108, scope: !677)
!698 = !DILocation(line: 235, column: 17, scope: !677)
!699 = !DILocation(line: 233, column: 44, scope: !678)
!700 = !DILocation(line: 233, column: 31, scope: !678)
!701 = !DILocation(line: 233, column: 13, scope: !678)
!702 = distinct !{!702, !681, !703, !307}
!703 = !DILocation(line: 236, column: 13, scope: !679)
!704 = !DILocation(line: 0, scope: !675)
!705 = !DILocation(line: 228, column: 39, scope: !672)
!706 = !DILocation(line: 228, column: 9, scope: !672)
!707 = distinct !{!707, !665, !708, !307}
!708 = !DILocation(line: 238, column: 9, scope: !666)
!709 = !DILocation(line: 227, column: 35, scope: !663)
!710 = !DILocation(line: 227, column: 5, scope: !663)
!711 = distinct !{!711, !664, !712, !307}
!712 = !DILocation(line: 239, column: 5, scope: !657)
!713 = !DILocation(line: 240, column: 1, scope: !646)
!714 = distinct !DISubprogram(name: "pqmayo_MAYO_1_ref_mayo_sign_signature", scope: !25, file: !25, line: 359, type: !715, scopeLine: 361, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!715 = !DISubroutineType(types: !716)
!716 = !{!45, !178, !18, !717, !49, !15, !49}
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 32)
!718 = !DILocalVariable(name: "p", arg: 1, scope: !714, file: !25, line: 359, type: !178)
!719 = !DILocation(line: 0, scope: !714)
!720 = !DILocalVariable(name: "sig", arg: 2, scope: !714, file: !25, line: 359, type: !18)
!721 = !DILocalVariable(name: "siglen", arg: 3, scope: !714, file: !25, line: 360, type: !717)
!722 = !DILocalVariable(name: "m", arg: 4, scope: !714, file: !25, line: 360, type: !49)
!723 = !DILocalVariable(name: "mlen", arg: 5, scope: !714, file: !25, line: 361, type: !15)
!724 = !DILocalVariable(name: "csk", arg: 6, scope: !714, file: !25, line: 361, type: !49)
!725 = !DILocalVariable(name: "ret", scope: !714, file: !25, line: 362, type: !45)
!726 = !DILocalVariable(name: "tenc", scope: !714, file: !25, line: 363, type: !727)
!727 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 312, elements: !728)
!728 = !{!729}
!729 = !DISubrange(count: 39)
!730 = !DILocation(line: 363, column: 19, scope: !714)
!731 = !DILocalVariable(name: "t", scope: !714, file: !25, line: 363, type: !732)
!732 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 624, elements: !733)
!733 = !{!734}
!734 = !DISubrange(count: 78)
!735 = !DILocation(line: 363, column: 38, scope: !714)
!736 = !DILocalVariable(name: "y", scope: !714, file: !25, line: 364, type: !732)
!737 = !DILocation(line: 364, column: 19, scope: !714)
!738 = !DILocalVariable(name: "salt", scope: !714, file: !25, line: 365, type: !739)
!739 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 192, elements: !740)
!740 = !{!741}
!741 = !DISubrange(count: 24)
!742 = !DILocation(line: 365, column: 19, scope: !714)
!743 = !DILocalVariable(name: "V", scope: !714, file: !25, line: 366, type: !744)
!744 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 3440, elements: !745)
!745 = !{!746}
!746 = !DISubrange(count: 430)
!747 = !DILocation(line: 366, column: 19, scope: !714)
!748 = !DILocalVariable(name: "Vdec", scope: !714, file: !25, line: 366, type: !749)
!749 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 6240, elements: !750)
!750 = !{!751}
!751 = !DISubrange(count: 780)
!752 = !DILocation(line: 366, column: 57, scope: !714)
!753 = !DILocalVariable(name: "A", scope: !714, file: !25, line: 367, type: !754)
!754 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 51840, elements: !755)
!755 = !{!756}
!756 = !DISubrange(count: 6480)
!757 = !DILocation(line: 367, column: 19, scope: !714)
!758 = !DILocalVariable(name: "x", scope: !714, file: !25, line: 368, type: !759)
!759 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 6880, elements: !760)
!760 = !{!761}
!761 = !DISubrange(count: 860)
!762 = !DILocation(line: 368, column: 19, scope: !714)
!763 = !DILocalVariable(name: "r", scope: !714, file: !25, line: 369, type: !764)
!764 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 648, elements: !765)
!765 = !{!766}
!766 = !DISubrange(count: 81)
!767 = !DILocation(line: 369, column: 19, scope: !714)
!768 = !DILocalVariable(name: "s", scope: !714, file: !25, line: 370, type: !759)
!769 = !DILocation(line: 370, column: 19, scope: !714)
!770 = !DILocalVariable(name: "sk", scope: !714, file: !25, line: 372, type: !128, align: 256)
!771 = !DILocation(line: 372, column: 22, scope: !714)
!772 = !DILocalVariable(name: "Ox", scope: !714, file: !25, line: 373, type: !732)
!773 = !DILocation(line: 373, column: 19, scope: !714)
!774 = !DILocalVariable(name: "tmp", scope: !714, file: !25, line: 374, type: !764)
!775 = !DILocation(line: 374, column: 19, scope: !714)
!776 = !DILocalVariable(name: "param_m", scope: !714, file: !25, line: 378, type: !243)
!777 = !DILocalVariable(name: "param_n", scope: !714, file: !25, line: 379, type: !243)
!778 = !DILocalVariable(name: "param_o", scope: !714, file: !25, line: 380, type: !243)
!779 = !DILocalVariable(name: "param_k", scope: !714, file: !25, line: 381, type: !243)
!780 = !DILocalVariable(name: "param_v", scope: !714, file: !25, line: 382, type: !243)
!781 = !DILocalVariable(name: "param_m_bytes", scope: !714, file: !25, line: 383, type: !243)
!782 = !DILocalVariable(name: "param_v_bytes", scope: !714, file: !25, line: 384, type: !243)
!783 = !DILocalVariable(name: "param_r_bytes", scope: !714, file: !25, line: 385, type: !243)
!784 = !DILocalVariable(name: "param_sig_bytes", scope: !714, file: !25, line: 386, type: !243)
!785 = !DILocalVariable(name: "param_A_cols", scope: !714, file: !25, line: 387, type: !243)
!786 = !DILocalVariable(name: "param_digest_bytes", scope: !714, file: !25, line: 388, type: !243)
!787 = !DILocalVariable(name: "param_sk_seed_bytes", scope: !714, file: !25, line: 389, type: !243)
!788 = !DILocalVariable(name: "param_salt_bytes", scope: !714, file: !25, line: 390, type: !243)
!789 = !DILocation(line: 392, column: 11, scope: !714)
!790 = !DILocation(line: 393, column: 13, scope: !791)
!791 = distinct !DILexicalBlock(scope: !714, file: !25, line: 393, column: 9)
!792 = !DILocalVariable(name: "seed_sk", scope: !714, file: !25, line: 371, type: !49)
!793 = !DILocation(line: 401, column: 5, scope: !714)
!794 = !DILocalVariable(name: "P1", scope: !714, file: !25, line: 403, type: !5)
!795 = !DILocation(line: 404, column: 23, scope: !714)
!796 = !DILocalVariable(name: "L", scope: !714, file: !25, line: 404, type: !5)
!797 = !DILocalVariable(name: "Mtmp", scope: !714, file: !25, line: 405, type: !798)
!798 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 25600, elements: !799)
!799 = !{!800}
!800 = !DISubrange(count: 400)
!801 = !DILocation(line: 405, column: 14, scope: !714)
!802 = !DILocation(line: 420, column: 25, scope: !803)
!803 = distinct !DILexicalBlock(scope: !714, file: !25, line: 420, column: 9)
!804 = !DILocation(line: 420, column: 9, scope: !803)
!805 = !DILocation(line: 420, column: 65, scope: !803)
!806 = !DILocation(line: 427, column: 37, scope: !714)
!807 = !DILocation(line: 427, column: 5, scope: !714)
!808 = !DILocation(line: 429, column: 5, scope: !714)
!809 = !DILocation(line: 437, column: 16, scope: !714)
!810 = !DILocation(line: 437, column: 5, scope: !714)
!811 = !DILocation(line: 438, column: 59, scope: !714)
!812 = !DILocalVariable(name: "ctrbyte", scope: !714, file: !25, line: 375, type: !18)
!813 = !DILocation(line: 440, column: 5, scope: !714)
!814 = !DILocation(line: 442, column: 5, scope: !714)
!815 = !DILocalVariable(name: "ctr", scope: !816, file: !25, line: 444, type: !45)
!816 = distinct !DILexicalBlock(scope: !714, file: !25, line: 444, column: 5)
!817 = !DILocation(line: 0, scope: !816)
!818 = !DILocation(line: 466, column: 18, scope: !819)
!819 = distinct !DILexicalBlock(scope: !820, file: !25, line: 444, column: 42)
!820 = distinct !DILexicalBlock(scope: !816, file: !25, line: 444, column: 5)
!821 = !DILocation(line: 444, column: 10, scope: !816)
!822 = !DILocation(line: 444, scope: !816)
!823 = !DILocation(line: 444, column: 27, scope: !820)
!824 = !DILocation(line: 444, column: 5, scope: !816)
!825 = !DILocation(line: 445, column: 20, scope: !819)
!826 = !DILocation(line: 445, column: 18, scope: !819)
!827 = !DILocation(line: 447, column: 9, scope: !819)
!828 = !DILocalVariable(name: "i", scope: !829, file: !25, line: 451, type: !45)
!829 = distinct !DILexicalBlock(scope: !819, file: !25, line: 451, column: 9)
!830 = !DILocation(line: 0, scope: !829)
!831 = !DILocation(line: 452, column: 13, scope: !832)
!832 = distinct !DILexicalBlock(scope: !833, file: !25, line: 451, column: 48)
!833 = distinct !DILexicalBlock(scope: !829, file: !25, line: 451, column: 9)
!834 = !DILocation(line: 452, column: 22, scope: !832)
!835 = !DILocation(line: 452, column: 48, scope: !832)
!836 = !DILocation(line: 456, column: 9, scope: !819)
!837 = !DILocation(line: 458, column: 9, scope: !819)
!838 = !DILocation(line: 459, column: 9, scope: !819)
!839 = !DILocalVariable(name: "i", scope: !840, file: !25, line: 461, type: !45)
!840 = distinct !DILexicalBlock(scope: !819, file: !25, line: 461, column: 9)
!841 = !DILocation(line: 0, scope: !840)
!842 = !DILocation(line: 461, column: 14, scope: !840)
!843 = !DILocation(line: 461, scope: !840)
!844 = !DILocation(line: 463, column: 20, scope: !845)
!845 = distinct !DILexicalBlock(scope: !846, file: !25, line: 462, column: 9)
!846 = distinct !DILexicalBlock(scope: !840, file: !25, line: 461, column: 9)
!847 = !DILocation(line: 463, column: 43, scope: !845)
!848 = !DILocation(line: 463, column: 13, scope: !845)
!849 = !DILocation(line: 463, column: 48, scope: !845)
!850 = !DILocation(line: 461, column: 27, scope: !846)
!851 = !DILocation(line: 461, column: 9, scope: !840)
!852 = !DILocation(line: 461, column: 39, scope: !846)
!853 = !DILocation(line: 461, column: 9, scope: !846)
!854 = distinct !{!854, !851, !855, !307}
!855 = !DILocation(line: 464, column: 9, scope: !840)
!856 = !DILocation(line: 466, column: 9, scope: !819)
!857 = !DILocation(line: 470, column: 13, scope: !858)
!858 = distinct !DILexicalBlock(scope: !819, file: !25, line: 470, column: 13)
!859 = !DILocation(line: 473, column: 13, scope: !860)
!860 = distinct !DILexicalBlock(scope: !858, file: !25, line: 472, column: 16)
!861 = !DILocation(line: 474, column: 13, scope: !860)
!862 = !DILocation(line: 444, column: 35, scope: !820)
!863 = !DILocation(line: 444, column: 5, scope: !820)
!864 = distinct !{!864, !824, !865, !307}
!865 = !DILocation(line: 476, column: 5, scope: !816)
!866 = !DILocalVariable(name: "i", scope: !867, file: !25, line: 478, type: !45)
!867 = distinct !DILexicalBlock(scope: !714, file: !25, line: 478, column: 5)
!868 = !DILocation(line: 0, scope: !867)
!869 = !DILocation(line: 478, column: 10, scope: !867)
!870 = !DILocation(line: 478, scope: !867)
!871 = !DILocation(line: 478, column: 23, scope: !872)
!872 = distinct !DILexicalBlock(scope: !867, file: !25, line: 478, column: 5)
!873 = !DILocation(line: 478, column: 5, scope: !867)
!874 = !DILocation(line: 479, column: 23, scope: !875)
!875 = distinct !DILexicalBlock(scope: !872, file: !25, line: 478, column: 44)
!876 = !DILocation(line: 479, column: 19, scope: !875)
!877 = !DILocalVariable(name: "vi", scope: !714, file: !25, line: 376, type: !18)
!878 = !DILocation(line: 480, column: 17, scope: !875)
!879 = !DILocation(line: 480, column: 33, scope: !875)
!880 = !DILocation(line: 480, column: 29, scope: !875)
!881 = !DILocation(line: 480, column: 9, scope: !875)
!882 = !DILocation(line: 481, column: 31, scope: !875)
!883 = !DILocation(line: 481, column: 27, scope: !875)
!884 = !DILocation(line: 481, column: 9, scope: !875)
!885 = !DILocation(line: 482, column: 22, scope: !875)
!886 = !DILocation(line: 482, column: 18, scope: !875)
!887 = !DILocation(line: 482, column: 32, scope: !875)
!888 = !DILocation(line: 482, column: 61, scope: !875)
!889 = !DILocation(line: 482, column: 57, scope: !875)
!890 = !DILocation(line: 482, column: 9, scope: !875)
!891 = !DILocation(line: 478, column: 39, scope: !872)
!892 = !DILocation(line: 478, column: 5, scope: !872)
!893 = distinct !{!893, !873, !894, !307}
!894 = !DILocation(line: 483, column: 5, scope: !867)
!895 = !DILocation(line: 484, column: 5, scope: !714)
!896 = !DILocation(line: 486, column: 34, scope: !714)
!897 = !DILocation(line: 486, column: 5, scope: !714)
!898 = !DILocation(line: 487, column: 13, scope: !714)
!899 = !DILocation(line: 487, column: 5, scope: !714)
!900 = !DILabel(scope: !714, name: "err", file: !25, line: 489)
!901 = !DILocation(line: 489, column: 1, scope: !714)
!902 = !DILocation(line: 490, column: 5, scope: !714)
!903 = !DILocation(line: 491, column: 5, scope: !714)
!904 = !DILocation(line: 492, column: 5, scope: !714)
!905 = !DILocation(line: 493, column: 5, scope: !714)
!906 = !DILocation(line: 494, column: 23, scope: !714)
!907 = !DILocation(line: 494, column: 5, scope: !714)
!908 = !DILocation(line: 495, column: 5, scope: !714)
!909 = !DILocation(line: 496, column: 5, scope: !714)
!910 = !DILocation(line: 497, column: 5, scope: !714)
!911 = !DILocation(line: 498, column: 5, scope: !714)
!912 = !DILocation(line: 499, column: 5, scope: !714)
!913 = distinct !DISubprogram(name: "compute_M_and_VPV", scope: !327, file: !327, line: 244, type: !914, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!914 = !DISubroutineType(types: !915)
!915 = !{null, !178, !49, !330, !330, !5, !5}
!916 = !DILocalVariable(name: "p", arg: 1, scope: !913, file: !327, line: 244, type: !178)
!917 = !DILocation(line: 0, scope: !913)
!918 = !DILocalVariable(name: "Vdec", arg: 2, scope: !913, file: !327, line: 244, type: !49)
!919 = !DILocalVariable(name: "L", arg: 3, scope: !913, file: !327, line: 244, type: !330)
!920 = !DILocalVariable(name: "P1", arg: 4, scope: !913, file: !327, line: 244, type: !330)
!921 = !DILocalVariable(name: "VL", arg: 5, scope: !913, file: !327, line: 244, type: !5)
!922 = !DILocalVariable(name: "VP1V", arg: 6, scope: !913, file: !327, line: 244, type: !5)
!923 = !DILocalVariable(name: "param_k", scope: !913, file: !327, line: 246, type: !243)
!924 = !DILocalVariable(name: "param_v", scope: !913, file: !327, line: 247, type: !243)
!925 = !DILocalVariable(name: "param_o", scope: !913, file: !327, line: 248, type: !243)
!926 = !DILocation(line: 251, column: 5, scope: !913)
!927 = !DILocalVariable(name: "Pv", scope: !913, file: !327, line: 254, type: !928)
!928 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 249600, elements: !929)
!929 = !{!930}
!930 = !DISubrange(count: 3900)
!931 = !DILocation(line: 254, column: 14, scope: !913)
!932 = !DILocation(line: 255, column: 5, scope: !913)
!933 = !DILocation(line: 256, column: 5, scope: !913)
!934 = !DILocation(line: 257, column: 1, scope: !913)
!935 = distinct !DISubprogram(name: "compute_rhs", scope: !25, file: !25, line: 43, type: !936, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!936 = !DISubroutineType(types: !937)
!937 = !{null, !178, !5, !49, !18}
!938 = !DILocalVariable(name: "p", arg: 1, scope: !935, file: !25, line: 43, type: !178)
!939 = !DILocation(line: 0, scope: !935)
!940 = !DILocalVariable(name: "vPv", arg: 2, scope: !935, file: !25, line: 43, type: !5)
!941 = !DILocalVariable(name: "t", arg: 3, scope: !935, file: !25, line: 43, type: !49)
!942 = !DILocalVariable(name: "y", arg: 4, scope: !935, file: !25, line: 43, type: !18)
!943 = !DILocalVariable(name: "top_pos", scope: !935, file: !25, line: 48, type: !944)
!944 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!945 = !DILocalVariable(name: "m_vec_limbs", scope: !935, file: !25, line: 49, type: !944)
!946 = !DILocalVariable(name: "mask", scope: !947, file: !25, line: 53, type: !6)
!947 = distinct !DILexicalBlock(scope: !948, file: !25, line: 52, column: 29)
!948 = distinct !DILexicalBlock(scope: !935, file: !25, line: 52, column: 8)
!949 = !DILocation(line: 0, scope: !947)
!950 = !DILocalVariable(name: "i", scope: !951, file: !25, line: 56, type: !45)
!951 = distinct !DILexicalBlock(scope: !947, file: !25, line: 56, column: 9)
!952 = !DILocation(line: 0, scope: !951)
!953 = !DILocation(line: 56, column: 14, scope: !951)
!954 = !DILocation(line: 56, scope: !951)
!955 = !DILocation(line: 58, column: 13, scope: !956)
!956 = distinct !DILexicalBlock(scope: !957, file: !25, line: 57, column: 9)
!957 = distinct !DILexicalBlock(scope: !951, file: !25, line: 56, column: 9)
!958 = !DILocation(line: 58, column: 50, scope: !956)
!959 = !DILocation(line: 56, column: 27, scope: !957)
!960 = !DILocation(line: 56, column: 9, scope: !951)
!961 = !DILocation(line: 56, column: 53, scope: !957)
!962 = !DILocation(line: 56, column: 9, scope: !957)
!963 = distinct !{!963, !960, !964, !307}
!964 = !DILocation(line: 59, column: 9, scope: !951)
!965 = !DILocalVariable(name: "temp", scope: !935, file: !25, line: 62, type: !588)
!966 = !DILocation(line: 62, column: 14, scope: !935)
!967 = !DILocalVariable(name: "temp_bytes", scope: !935, file: !25, line: 63, type: !18)
!968 = !DILocalVariable(name: "i", scope: !969, file: !25, line: 64, type: !45)
!969 = distinct !DILexicalBlock(scope: !935, file: !25, line: 64, column: 5)
!970 = !DILocation(line: 0, scope: !969)
!971 = !DILocation(line: 64, column: 10, scope: !969)
!972 = !DILocation(line: 64, scope: !969)
!973 = !DILocation(line: 64, column: 36, scope: !974)
!974 = distinct !DILexicalBlock(scope: !969, file: !25, line: 64, column: 5)
!975 = !DILocation(line: 64, column: 5, scope: !969)
!976 = !DILocation(line: 65, scope: !977)
!977 = distinct !DILexicalBlock(scope: !978, file: !25, line: 65, column: 9)
!978 = distinct !DILexicalBlock(scope: !974, file: !25, line: 64, column: 48)
!979 = !DILocalVariable(name: "j", scope: !977, file: !25, line: 65, type: !45)
!980 = !DILocation(line: 0, scope: !977)
!981 = !DILocation(line: 65, column: 27, scope: !982)
!982 = distinct !DILexicalBlock(scope: !977, file: !25, line: 65, column: 9)
!983 = !DILocation(line: 65, column: 9, scope: !977)
!984 = !DILocation(line: 67, column: 34, scope: !985)
!985 = distinct !DILexicalBlock(scope: !982, file: !25, line: 65, column: 46)
!986 = !DILocation(line: 67, column: 54, scope: !985)
!987 = !DILocation(line: 67, column: 66, scope: !985)
!988 = !DILocalVariable(name: "top", scope: !985, file: !25, line: 67, type: !14)
!989 = !DILocation(line: 0, scope: !985)
!990 = !DILocation(line: 68, column: 13, scope: !985)
!991 = !DILocation(line: 68, column: 33, scope: !985)
!992 = !DILocalVariable(name: "k", scope: !993, file: !25, line: 69, type: !45)
!993 = distinct !DILexicalBlock(scope: !985, file: !25, line: 69, column: 13)
!994 = !DILocation(line: 0, scope: !993)
!995 = !DILocation(line: 70, column: 30, scope: !996)
!996 = distinct !DILexicalBlock(scope: !997, file: !25, line: 69, column: 52)
!997 = distinct !DILexicalBlock(scope: !993, file: !25, line: 69, column: 13)
!998 = !DILocation(line: 70, column: 38, scope: !996)
!999 = !DILocation(line: 70, column: 17, scope: !996)
!1000 = !DILocation(line: 70, column: 27, scope: !996)
!1001 = !DILocation(line: 71, column: 17, scope: !996)
!1002 = !DILocation(line: 71, column: 25, scope: !996)
!1003 = !DILocalVariable(name: "jj", scope: !1004, file: !25, line: 74, type: !45)
!1004 = distinct !DILexicalBlock(scope: !985, file: !25, line: 74, column: 13)
!1005 = !DILocation(line: 0, scope: !1004)
!1006 = !DILocation(line: 79, column: 41, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !1008, file: !25, line: 75, column: 30)
!1008 = distinct !DILexicalBlock(scope: !1009, file: !25, line: 75, column: 20)
!1009 = distinct !DILexicalBlock(scope: !1010, file: !25, line: 74, column: 53)
!1010 = distinct !DILexicalBlock(scope: !1004, file: !25, line: 74, column: 13)
!1011 = !DILocation(line: 79, column: 38, scope: !1007)
!1012 = !DILocation(line: 86, column: 41, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !1008, file: !25, line: 82, column: 22)
!1014 = !DILocation(line: 86, column: 73, scope: !1013)
!1015 = !DILocation(line: 86, column: 38, scope: !1013)
!1016 = !DILocation(line: 79, column: 21, scope: !1007)
!1017 = !DILocation(line: 86, column: 21, scope: !1013)
!1018 = !DILocalVariable(name: "k", scope: !1019, file: !25, line: 92, type: !15)
!1019 = distinct !DILexicalBlock(scope: !985, file: !25, line: 92, column: 13)
!1020 = !DILocation(line: 0, scope: !1019)
!1021 = !DILocation(line: 93, column: 36, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !1023, file: !25, line: 92, column: 51)
!1023 = distinct !DILexicalBlock(scope: !1019, file: !25, line: 92, column: 13)
!1024 = !DILocation(line: 93, column: 49, scope: !1022)
!1025 = !DILocation(line: 93, column: 28, scope: !1022)
!1026 = !DILocation(line: 93, column: 78, scope: !1022)
!1027 = !DILocation(line: 93, column: 91, scope: !1022)
!1028 = !DILocation(line: 93, column: 104, scope: !1022)
!1029 = !DILocation(line: 93, column: 83, scope: !1022)
!1030 = !DILocation(line: 93, column: 82, scope: !1022)
!1031 = !DILocation(line: 93, column: 73, scope: !1022)
!1032 = !DILocation(line: 93, column: 25, scope: !1022)
!1033 = !DILocation(line: 93, column: 17, scope: !1022)
!1034 = !DILocation(line: 65, column: 42, scope: !982)
!1035 = !DILocation(line: 65, column: 9, scope: !982)
!1036 = distinct !{!1036, !983, !1037, !307}
!1037 = !DILocation(line: 95, column: 9, scope: !977)
!1038 = !DILocation(line: 64, column: 44, scope: !974)
!1039 = !DILocation(line: 64, column: 5, scope: !974)
!1040 = distinct !{!1040, !975, !1041, !307}
!1041 = !DILocation(line: 96, column: 5, scope: !969)
!1042 = !DILocation(line: 99, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !935, file: !25, line: 99, column: 5)
!1044 = !DILocalVariable(name: "i", scope: !1043, file: !25, line: 99, type: !45)
!1045 = !DILocation(line: 0, scope: !1043)
!1046 = !DILocation(line: 105, column: 18, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !1048, file: !25, line: 100, column: 5)
!1048 = distinct !DILexicalBlock(scope: !1043, file: !25, line: 99, column: 5)
!1049 = !DILocation(line: 105, column: 40, scope: !1047)
!1050 = !DILocation(line: 105, column: 28, scope: !1047)
!1051 = !DILocation(line: 105, column: 44, scope: !1047)
!1052 = !DILocation(line: 105, column: 25, scope: !1047)
!1053 = !DILocation(line: 105, column: 9, scope: !1047)
!1054 = !DILocation(line: 105, column: 16, scope: !1047)
!1055 = !DILocation(line: 106, column: 21, scope: !1047)
!1056 = !DILocation(line: 106, column: 18, scope: !1047)
!1057 = !DILocation(line: 106, column: 44, scope: !1047)
!1058 = !DILocation(line: 106, column: 25, scope: !1047)
!1059 = !DILocation(line: 106, column: 12, scope: !1047)
!1060 = !DILocation(line: 106, column: 9, scope: !1047)
!1061 = !DILocation(line: 106, column: 16, scope: !1047)
!1062 = !DILocation(line: 99, column: 38, scope: !1048)
!1063 = !DILocation(line: 99, column: 23, scope: !1048)
!1064 = !DILocation(line: 99, column: 5, scope: !1043)
!1065 = !DILocation(line: 99, column: 5, scope: !1048)
!1066 = distinct !{!1066, !1064, !1067, !307}
!1067 = !DILocation(line: 108, column: 5, scope: !1043)
!1068 = !DILocation(line: 109, column: 1, scope: !935)
!1069 = distinct !DISubprogram(name: "compute_A", scope: !25, file: !25, line: 154, type: !1070, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1070 = !DISubroutineType(types: !1071)
!1071 = !{null, !178, !5, !18}
!1072 = !DILocalVariable(name: "p", arg: 1, scope: !1069, file: !25, line: 154, type: !178)
!1073 = !DILocation(line: 0, scope: !1069)
!1074 = !DILocalVariable(name: "VtL", arg: 2, scope: !1069, file: !25, line: 154, type: !5)
!1075 = !DILocalVariable(name: "A_out", arg: 3, scope: !1069, file: !25, line: 154, type: !18)
!1076 = !DILocalVariable(name: "bits_to_shift", scope: !1069, file: !25, line: 159, type: !45)
!1077 = !DILocalVariable(name: "words_to_shift", scope: !1069, file: !25, line: 160, type: !45)
!1078 = !DILocalVariable(name: "m_vec_limbs", scope: !1069, file: !25, line: 161, type: !243)
!1079 = !DILocalVariable(name: "A", scope: !1069, file: !25, line: 162, type: !1080)
!1080 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 51200, elements: !1081)
!1081 = !{!1082}
!1082 = !DISubrange(count: 800)
!1083 = !DILocation(line: 162, column: 14, scope: !1069)
!1084 = !DILocalVariable(name: "A_width", scope: !1069, file: !25, line: 163, type: !15)
!1085 = !DILocalVariable(name: "mask", scope: !1086, file: !25, line: 168, type: !6)
!1086 = distinct !DILexicalBlock(scope: !1087, file: !25, line: 167, column: 29)
!1087 = distinct !DILexicalBlock(scope: !1069, file: !25, line: 167, column: 8)
!1088 = !DILocation(line: 0, scope: !1086)
!1089 = !DILocalVariable(name: "i", scope: !1090, file: !25, line: 171, type: !45)
!1090 = distinct !DILexicalBlock(scope: !1086, file: !25, line: 171, column: 9)
!1091 = !DILocation(line: 0, scope: !1090)
!1092 = !DILocation(line: 171, column: 14, scope: !1090)
!1093 = !DILocation(line: 171, scope: !1090)
!1094 = !DILocation(line: 173, column: 13, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1096, file: !25, line: 172, column: 9)
!1096 = distinct !DILexicalBlock(scope: !1090, file: !25, line: 171, column: 9)
!1097 = !DILocation(line: 173, column: 50, scope: !1095)
!1098 = !DILocation(line: 171, column: 53, scope: !1096)
!1099 = !DILocation(line: 171, column: 27, scope: !1096)
!1100 = !DILocation(line: 171, column: 9, scope: !1090)
!1101 = !DILocation(line: 171, column: 9, scope: !1096)
!1102 = distinct !{!1102, !1100, !1103, !307}
!1103 = !DILocation(line: 174, column: 9, scope: !1090)
!1104 = !DILocation(line: 177, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !1069, file: !25, line: 177, column: 5)
!1106 = !DILocation(line: 160, column: 9, scope: !1069)
!1107 = !DILocation(line: 159, column: 9, scope: !1069)
!1108 = !DILocalVariable(name: "i", scope: !1105, file: !25, line: 177, type: !45)
!1109 = !DILocation(line: 0, scope: !1105)
!1110 = !DILocation(line: 177, column: 23, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1105, file: !25, line: 177, column: 5)
!1112 = !DILocation(line: 177, column: 5, scope: !1105)
!1113 = !DILocation(line: 178, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1115, file: !25, line: 178, column: 9)
!1115 = distinct !DILexicalBlock(scope: !1111, file: !25, line: 177, column: 47)
!1116 = !DILocalVariable(name: "j", scope: !1114, file: !25, line: 178, type: !45)
!1117 = !DILocation(line: 0, scope: !1114)
!1118 = !DILocation(line: 178, column: 40, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !1114, file: !25, line: 178, column: 9)
!1120 = !DILocation(line: 178, column: 9, scope: !1114)
!1121 = !DILocation(line: 180, column: 22, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1119, file: !25, line: 178, column: 51)
!1123 = !DILocalVariable(name: "Mj", scope: !1069, file: !25, line: 164, type: !330)
!1124 = !DILocalVariable(name: "c", scope: !1125, file: !25, line: 181, type: !45)
!1125 = distinct !DILexicalBlock(scope: !1122, file: !25, line: 181, column: 13)
!1126 = !DILocation(line: 0, scope: !1125)
!1127 = !DILocation(line: 181, column: 18, scope: !1125)
!1128 = !DILocation(line: 181, scope: !1125)
!1129 = !DILocation(line: 181, column: 31, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1125, file: !25, line: 181, column: 13)
!1131 = !DILocation(line: 181, column: 13, scope: !1125)
!1132 = !DILocalVariable(name: "k", scope: !1133, file: !25, line: 182, type: !45)
!1133 = distinct !DILexicalBlock(scope: !1134, file: !25, line: 182, column: 17)
!1134 = distinct !DILexicalBlock(scope: !1130, file: !25, line: 181, column: 50)
!1135 = !DILocation(line: 0, scope: !1133)
!1136 = !DILocation(line: 184, column: 78, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1138, file: !25, line: 183, column: 17)
!1138 = distinct !DILexicalBlock(scope: !1133, file: !25, line: 182, column: 17)
!1139 = !DILocation(line: 184, column: 100, scope: !1137)
!1140 = !DILocation(line: 184, column: 35, scope: !1137)
!1141 = !DILocation(line: 184, column: 39, scope: !1137)
!1142 = !DILocation(line: 184, column: 65, scope: !1137)
!1143 = !DILocation(line: 184, column: 43, scope: !1137)
!1144 = !DILocation(line: 184, column: 21, scope: !1137)
!1145 = !DILocation(line: 184, column: 75, scope: !1137)
!1146 = !DILocation(line: 185, column: 38, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1137, file: !25, line: 185, column: 24)
!1148 = !DILocation(line: 186, column: 86, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1147, file: !25, line: 185, column: 42)
!1150 = !DILocation(line: 186, column: 114, scope: !1149)
!1151 = !DILocation(line: 186, column: 108, scope: !1149)
!1152 = !DILocation(line: 186, column: 39, scope: !1149)
!1153 = !DILocation(line: 186, column: 43, scope: !1149)
!1154 = !DILocation(line: 186, column: 73, scope: !1149)
!1155 = !DILocation(line: 186, column: 47, scope: !1149)
!1156 = !DILocation(line: 186, column: 25, scope: !1149)
!1157 = !DILocation(line: 186, column: 83, scope: !1149)
!1158 = !DILocation(line: 187, column: 21, scope: !1149)
!1159 = !DILocation(line: 181, column: 46, scope: !1130)
!1160 = !DILocation(line: 181, column: 13, scope: !1130)
!1161 = distinct !{!1161, !1131, !1162, !307}
!1162 = !DILocation(line: 189, column: 13, scope: !1125)
!1163 = !DILocation(line: 191, column: 19, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1122, file: !25, line: 191, column: 17)
!1165 = !DILocation(line: 192, column: 26, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !1164, file: !25, line: 191, column: 25)
!1167 = !DILocalVariable(name: "Mi", scope: !1069, file: !25, line: 164, type: !330)
!1168 = !DILocalVariable(name: "c", scope: !1169, file: !25, line: 193, type: !45)
!1169 = distinct !DILexicalBlock(scope: !1166, file: !25, line: 193, column: 17)
!1170 = !DILocation(line: 0, scope: !1169)
!1171 = !DILocation(line: 193, column: 22, scope: !1169)
!1172 = !DILocation(line: 193, scope: !1169)
!1173 = !DILocation(line: 193, column: 35, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !1169, file: !25, line: 193, column: 17)
!1175 = !DILocation(line: 193, column: 17, scope: !1169)
!1176 = !DILocalVariable(name: "k", scope: !1177, file: !25, line: 194, type: !45)
!1177 = distinct !DILexicalBlock(scope: !1178, file: !25, line: 194, column: 21)
!1178 = distinct !DILexicalBlock(scope: !1174, file: !25, line: 193, column: 54)
!1179 = !DILocation(line: 0, scope: !1177)
!1180 = !DILocation(line: 196, column: 81, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !1182, file: !25, line: 195, column: 21)
!1182 = distinct !DILexicalBlock(scope: !1177, file: !25, line: 194, column: 21)
!1183 = !DILocation(line: 196, column: 103, scope: !1181)
!1184 = !DILocation(line: 196, column: 38, scope: !1181)
!1185 = !DILocation(line: 196, column: 42, scope: !1181)
!1186 = !DILocation(line: 196, column: 68, scope: !1181)
!1187 = !DILocation(line: 196, column: 46, scope: !1181)
!1188 = !DILocation(line: 196, column: 25, scope: !1181)
!1189 = !DILocation(line: 196, column: 78, scope: !1181)
!1190 = !DILocation(line: 197, column: 42, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1181, file: !25, line: 197, column: 28)
!1192 = !DILocation(line: 198, column: 89, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1191, file: !25, line: 197, column: 46)
!1194 = !DILocation(line: 198, column: 117, scope: !1193)
!1195 = !DILocation(line: 198, column: 111, scope: !1193)
!1196 = !DILocation(line: 198, column: 42, scope: !1193)
!1197 = !DILocation(line: 198, column: 46, scope: !1193)
!1198 = !DILocation(line: 198, column: 76, scope: !1193)
!1199 = !DILocation(line: 198, column: 50, scope: !1193)
!1200 = !DILocation(line: 198, column: 29, scope: !1193)
!1201 = !DILocation(line: 198, column: 86, scope: !1193)
!1202 = !DILocation(line: 199, column: 25, scope: !1193)
!1203 = !DILocation(line: 193, column: 50, scope: !1174)
!1204 = !DILocation(line: 193, column: 17, scope: !1174)
!1205 = distinct !{!1205, !1175, !1206, !307}
!1206 = !DILocation(line: 201, column: 17, scope: !1169)
!1207 = !DILocation(line: 204, column: 27, scope: !1122)
!1208 = !DILocation(line: 205, column: 30, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1122, file: !25, line: 205, column: 16)
!1210 = !DILocation(line: 178, column: 46, scope: !1119)
!1211 = !DILocation(line: 178, column: 9, scope: !1119)
!1212 = distinct !{!1212, !1120, !1213, !307}
!1213 = !DILocation(line: 209, column: 9, scope: !1114)
!1214 = !DILocation(line: 177, column: 42, scope: !1111)
!1215 = !DILocation(line: 177, column: 5, scope: !1111)
!1216 = distinct !{!1216, !1112, !1217, !307}
!1217 = !DILocation(line: 210, column: 5, scope: !1105)
!1218 = !DILocation(line: 212, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1069, file: !25, line: 212, column: 5)
!1220 = !DILocalVariable(name: "c", scope: !1219, file: !25, line: 212, type: !15)
!1221 = !DILocation(line: 0, scope: !1219)
!1222 = !DILocation(line: 212, column: 26, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1219, file: !25, line: 212, column: 5)
!1224 = !DILocation(line: 212, column: 5, scope: !1219)
!1225 = !DILocation(line: 214, column: 35, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1223, file: !25, line: 213, column: 5)
!1227 = !DILocation(line: 214, column: 9, scope: !1226)
!1228 = !DILocation(line: 212, column: 91, scope: !1223)
!1229 = !DILocation(line: 212, column: 5, scope: !1223)
!1230 = distinct !{!1230, !1224, !1231, !307}
!1231 = !DILocation(line: 215, column: 5, scope: !1219)
!1232 = !DILocalVariable(name: "tab", scope: !1069, file: !25, line: 217, type: !1233)
!1233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 128, elements: !1234)
!1234 = !{!1235}
!1235 = !DISubrange(count: 16)
!1236 = !DILocation(line: 217, column: 19, scope: !1069)
!1237 = !DILocalVariable(name: "i", scope: !1238, file: !25, line: 218, type: !15)
!1238 = distinct !DILexicalBlock(scope: !1069, file: !25, line: 218, column: 5)
!1239 = !DILocation(line: 0, scope: !1238)
!1240 = !DILocation(line: 218, column: 10, scope: !1238)
!1241 = !DILocation(line: 218, scope: !1238)
!1242 = !DILocation(line: 218, column: 26, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1238, file: !25, line: 218, column: 5)
!1244 = !DILocation(line: 218, column: 5, scope: !1238)
!1245 = !DILocation(line: 220, column: 28, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1243, file: !25, line: 219, column: 5)
!1247 = !DILocation(line: 220, column: 22, scope: !1246)
!1248 = !DILocation(line: 220, column: 14, scope: !1246)
!1249 = !DILocation(line: 220, column: 9, scope: !1246)
!1250 = !DILocation(line: 220, column: 20, scope: !1246)
!1251 = !DILocation(line: 221, column: 22, scope: !1246)
!1252 = !DILocation(line: 221, column: 14, scope: !1246)
!1253 = !DILocation(line: 221, column: 16, scope: !1246)
!1254 = !DILocation(line: 221, column: 9, scope: !1246)
!1255 = !DILocation(line: 221, column: 20, scope: !1246)
!1256 = !DILocation(line: 222, column: 22, scope: !1246)
!1257 = !DILocation(line: 222, column: 14, scope: !1246)
!1258 = !DILocation(line: 222, column: 16, scope: !1246)
!1259 = !DILocation(line: 222, column: 9, scope: !1246)
!1260 = !DILocation(line: 222, column: 20, scope: !1246)
!1261 = !DILocation(line: 223, column: 22, scope: !1246)
!1262 = !DILocation(line: 223, column: 14, scope: !1246)
!1263 = !DILocation(line: 223, column: 16, scope: !1246)
!1264 = !DILocation(line: 223, column: 9, scope: !1246)
!1265 = !DILocation(line: 223, column: 20, scope: !1246)
!1266 = !DILocation(line: 218, column: 41, scope: !1243)
!1267 = !DILocation(line: 218, column: 5, scope: !1243)
!1268 = distinct !{!1268, !1244, !1269, !307}
!1269 = !DILocation(line: 224, column: 5, scope: !1238)
!1270 = !DILocation(line: 228, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1069, file: !25, line: 228, column: 5)
!1272 = !DILocalVariable(name: "c", scope: !1271, file: !25, line: 228, type: !15)
!1273 = !DILocation(line: 0, scope: !1271)
!1274 = !DILocation(line: 228, column: 26, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1271, file: !25, line: 228, column: 5)
!1276 = !DILocation(line: 228, column: 5, scope: !1271)
!1277 = !DILocation(line: 230, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !1279, file: !25, line: 230, column: 9)
!1279 = distinct !DILexicalBlock(scope: !1275, file: !25, line: 229, column: 5)
!1280 = !DILocalVariable(name: "r", scope: !1278, file: !25, line: 230, type: !45)
!1281 = !DILocation(line: 0, scope: !1278)
!1282 = !DILocation(line: 230, column: 36, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1278, file: !25, line: 230, column: 9)
!1284 = !DILocation(line: 230, column: 9, scope: !1278)
!1285 = !DILocation(line: 232, column: 28, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1283, file: !25, line: 231, column: 9)
!1287 = !DILocation(line: 232, column: 32, scope: !1286)
!1288 = !DILocation(line: 232, column: 41, scope: !1286)
!1289 = !DILocation(line: 232, column: 49, scope: !1286)
!1290 = !DILocation(line: 232, column: 45, scope: !1286)
!1291 = !DILocalVariable(name: "pos", scope: !1286, file: !25, line: 232, type: !15)
!1292 = !DILocation(line: 0, scope: !1286)
!1293 = !DILocation(line: 233, column: 28, scope: !1286)
!1294 = !DILocation(line: 233, column: 41, scope: !1286)
!1295 = !DILocalVariable(name: "t0", scope: !1286, file: !25, line: 233, type: !6)
!1296 = !DILocation(line: 234, column: 35, scope: !1286)
!1297 = !DILocation(line: 234, column: 41, scope: !1286)
!1298 = !DILocalVariable(name: "t1", scope: !1286, file: !25, line: 234, type: !6)
!1299 = !DILocation(line: 235, column: 35, scope: !1286)
!1300 = !DILocation(line: 235, column: 41, scope: !1286)
!1301 = !DILocalVariable(name: "t2", scope: !1286, file: !25, line: 235, type: !6)
!1302 = !DILocation(line: 236, column: 28, scope: !1286)
!1303 = !DILocation(line: 236, column: 35, scope: !1286)
!1304 = !DILocation(line: 236, column: 41, scope: !1286)
!1305 = !DILocalVariable(name: "t3", scope: !1286, file: !25, line: 236, type: !6)
!1306 = !DILocalVariable(name: "t", scope: !1307, file: !25, line: 237, type: !15)
!1307 = distinct !DILexicalBlock(scope: !1286, file: !25, line: 237, column: 13)
!1308 = !DILocation(line: 0, scope: !1307)
!1309 = !DILocation(line: 239, column: 84, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1311, file: !25, line: 238, column: 13)
!1311 = distinct !DILexicalBlock(scope: !1307, file: !25, line: 237, column: 13)
!1312 = !DILocation(line: 239, column: 83, scope: !1310)
!1313 = !DILocation(line: 239, column: 100, scope: !1310)
!1314 = !DILocation(line: 239, column: 99, scope: !1310)
!1315 = !DILocation(line: 239, column: 95, scope: !1310)
!1316 = !DILocation(line: 239, column: 116, scope: !1310)
!1317 = !DILocation(line: 239, column: 115, scope: !1310)
!1318 = !DILocation(line: 239, column: 111, scope: !1310)
!1319 = !DILocation(line: 239, column: 132, scope: !1310)
!1320 = !DILocation(line: 239, column: 131, scope: !1310)
!1321 = !DILocation(line: 239, column: 127, scope: !1310)
!1322 = !DILocation(line: 239, column: 24, scope: !1310)
!1323 = !DILocation(line: 239, column: 36, scope: !1310)
!1324 = !DILocation(line: 239, column: 40, scope: !1310)
!1325 = !DILocation(line: 239, column: 49, scope: !1310)
!1326 = !DILocation(line: 239, column: 60, scope: !1310)
!1327 = !DILocation(line: 239, column: 72, scope: !1310)
!1328 = !DILocation(line: 239, column: 53, scope: !1310)
!1329 = !DILocation(line: 239, column: 17, scope: !1310)
!1330 = !DILocation(line: 239, column: 78, scope: !1310)
!1331 = !DILocation(line: 230, column: 82, scope: !1283)
!1332 = !DILocation(line: 230, column: 9, scope: !1283)
!1333 = distinct !{!1333, !1284, !1334, !307}
!1334 = !DILocation(line: 241, column: 9, scope: !1278)
!1335 = !DILocation(line: 228, column: 38, scope: !1275)
!1336 = !DILocation(line: 228, column: 5, scope: !1275)
!1337 = distinct !{!1337, !1276, !1338, !307}
!1338 = !DILocation(line: 242, column: 5, scope: !1271)
!1339 = !DILocation(line: 250, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1069, file: !25, line: 250, column: 5)
!1341 = !DILocalVariable(name: "r", scope: !1340, file: !25, line: 250, type: !45)
!1342 = !DILocation(line: 0, scope: !1340)
!1343 = !DILocation(line: 250, column: 23, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1340, file: !25, line: 250, column: 5)
!1345 = !DILocation(line: 250, column: 5, scope: !1340)
!1346 = !DILocation(line: 254, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1348, file: !25, line: 254, column: 13)
!1348 = distinct !DILexicalBlock(scope: !1349, file: !25, line: 253, column: 9)
!1349 = distinct !DILexicalBlock(scope: !1350, file: !25, line: 252, column: 9)
!1350 = distinct !DILexicalBlock(scope: !1351, file: !25, line: 252, column: 9)
!1351 = distinct !DILexicalBlock(scope: !1344, file: !25, line: 251, column: 5)
!1352 = !DILocalVariable(name: "i", scope: !1347, file: !25, line: 254, type: !45)
!1353 = !DILocation(line: 0, scope: !1347)
!1354 = !DILocation(line: 254, column: 35, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1347, file: !25, line: 254, column: 13)
!1356 = !DILocation(line: 254, column: 13, scope: !1347)
!1357 = !DILocation(line: 256, column: 55, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1355, file: !25, line: 255, column: 13)
!1359 = !DILocation(line: 256, column: 63, scope: !1358)
!1360 = !DILocation(line: 256, column: 44, scope: !1358)
!1361 = !DILocation(line: 256, column: 95, scope: !1358)
!1362 = !DILocation(line: 256, column: 92, scope: !1358)
!1363 = !DILocation(line: 256, column: 75, scope: !1358)
!1364 = !DILocation(line: 256, column: 17, scope: !1358)
!1365 = !DILocation(line: 254, column: 50, scope: !1355)
!1366 = !DILocation(line: 254, column: 13, scope: !1355)
!1367 = distinct !{!1367, !1356, !1368, !307}
!1368 = !DILocation(line: 257, column: 13, scope: !1347)
!1369 = !DILocation(line: 256, column: 59, scope: !1358)
!1370 = !DILocation(line: 256, column: 99, scope: !1358)
!1371 = !DILocalVariable(name: "c", scope: !1350, file: !25, line: 252, type: !45)
!1372 = !DILocation(line: 0, scope: !1350)
!1373 = !DILocation(line: 250, column: 38, scope: !1344)
!1374 = !DILocation(line: 250, column: 5, scope: !1344)
!1375 = distinct !{!1375, !1345, !1376, !307}
!1376 = !DILocation(line: 259, column: 5, scope: !1340)
!1377 = !DILocation(line: 260, column: 1, scope: !1069)
!1378 = distinct !DISubprogram(name: "mat_mul", scope: !496, file: !496, line: 79, type: !1379, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1379 = !DISubroutineType(types: !1380)
!1380 = !{null, !49, !49, !18, !45, !45, !45}
!1381 = !DILocalVariable(name: "a", arg: 1, scope: !1378, file: !496, line: 79, type: !49)
!1382 = !DILocation(line: 0, scope: !1378)
!1383 = !DILocalVariable(name: "b", arg: 2, scope: !1378, file: !496, line: 79, type: !49)
!1384 = !DILocalVariable(name: "c", arg: 3, scope: !1378, file: !496, line: 80, type: !18)
!1385 = !DILocalVariable(name: "colrow_ab", arg: 4, scope: !1378, file: !496, line: 80, type: !45)
!1386 = !DILocalVariable(name: "row_a", arg: 5, scope: !1378, file: !496, line: 80, type: !45)
!1387 = !DILocalVariable(name: "col_b", arg: 6, scope: !1378, file: !496, line: 80, type: !45)
!1388 = !DILocalVariable(name: "i", scope: !1389, file: !496, line: 81, type: !45)
!1389 = distinct !DILexicalBlock(scope: !1378, file: !496, line: 81, column: 5)
!1390 = !DILocation(line: 0, scope: !1389)
!1391 = !DILocation(line: 81, column: 10, scope: !1389)
!1392 = !DILocation(line: 81, scope: !1389)
!1393 = !DILocation(line: 81, column: 23, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1389, file: !496, line: 81, column: 5)
!1395 = !DILocation(line: 81, column: 5, scope: !1389)
!1396 = !DILocation(line: 82, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1398, file: !496, line: 82, column: 9)
!1398 = distinct !DILexicalBlock(scope: !1394, file: !496, line: 81, column: 53)
!1399 = !DILocalVariable(name: "j", scope: !1397, file: !496, line: 82, type: !45)
!1400 = !DILocation(line: 0, scope: !1397)
!1401 = !DILocation(line: 82, column: 27, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1397, file: !496, line: 82, column: 9)
!1403 = !DILocation(line: 82, column: 9, scope: !1397)
!1404 = !DILocation(line: 83, column: 31, scope: !1405)
!1405 = distinct !DILexicalBlock(scope: !1402, file: !496, line: 82, column: 46)
!1406 = !DILocation(line: 83, column: 18, scope: !1405)
!1407 = !DILocation(line: 83, column: 16, scope: !1405)
!1408 = !DILocation(line: 82, column: 36, scope: !1402)
!1409 = !DILocation(line: 82, column: 41, scope: !1402)
!1410 = !DILocation(line: 82, column: 9, scope: !1402)
!1411 = distinct !{!1411, !1403, !1412, !307}
!1412 = !DILocation(line: 84, column: 9, scope: !1397)
!1413 = !DILocation(line: 81, column: 32, scope: !1394)
!1414 = !DILocation(line: 81, column: 39, scope: !1394)
!1415 = !DILocation(line: 81, column: 5, scope: !1394)
!1416 = distinct !{!1416, !1395, !1417, !307}
!1417 = !DILocation(line: 85, column: 5, scope: !1389)
!1418 = !DILocation(line: 86, column: 1, scope: !1378)
!1419 = distinct !DISubprogram(name: "mat_add", scope: !496, file: !496, line: 88, type: !1420, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1420 = !DISubroutineType(types: !1421)
!1421 = !{null, !49, !49, !18, !45, !45}
!1422 = !DILocalVariable(name: "a", arg: 1, scope: !1419, file: !496, line: 88, type: !49)
!1423 = !DILocation(line: 0, scope: !1419)
!1424 = !DILocalVariable(name: "b", arg: 2, scope: !1419, file: !496, line: 88, type: !49)
!1425 = !DILocalVariable(name: "c", arg: 3, scope: !1419, file: !496, line: 89, type: !18)
!1426 = !DILocalVariable(name: "m", arg: 4, scope: !1419, file: !496, line: 89, type: !45)
!1427 = !DILocalVariable(name: "n", arg: 5, scope: !1419, file: !496, line: 89, type: !45)
!1428 = !DILocalVariable(name: "i", scope: !1429, file: !496, line: 90, type: !45)
!1429 = distinct !DILexicalBlock(scope: !1419, file: !496, line: 90, column: 5)
!1430 = !DILocation(line: 0, scope: !1429)
!1431 = !DILocation(line: 90, column: 10, scope: !1429)
!1432 = !DILocation(line: 90, scope: !1429)
!1433 = !DILocation(line: 90, column: 23, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1429, file: !496, line: 90, column: 5)
!1435 = !DILocation(line: 90, column: 5, scope: !1429)
!1436 = !DILocation(line: 91, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !1438, file: !496, line: 91, column: 9)
!1438 = distinct !DILexicalBlock(scope: !1434, file: !496, line: 90, column: 33)
!1439 = !DILocalVariable(name: "j", scope: !1437, file: !496, line: 91, type: !45)
!1440 = !DILocation(line: 0, scope: !1437)
!1441 = !DILocation(line: 91, column: 27, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1437, file: !496, line: 91, column: 9)
!1443 = !DILocation(line: 91, column: 9, scope: !1437)
!1444 = !DILocation(line: 92, column: 46, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !1442, file: !496, line: 91, column: 37)
!1446 = !DILocation(line: 92, column: 42, scope: !1445)
!1447 = !DILocation(line: 92, column: 50, scope: !1445)
!1448 = !DILocation(line: 92, column: 38, scope: !1445)
!1449 = !DILocation(line: 92, column: 64, scope: !1445)
!1450 = !DILocation(line: 92, column: 60, scope: !1445)
!1451 = !DILocation(line: 92, column: 68, scope: !1445)
!1452 = !DILocation(line: 92, column: 56, scope: !1445)
!1453 = !DILocation(line: 92, column: 32, scope: !1445)
!1454 = !DILocation(line: 92, column: 21, scope: !1445)
!1455 = !DILocation(line: 92, column: 17, scope: !1445)
!1456 = !DILocation(line: 92, column: 25, scope: !1445)
!1457 = !DILocation(line: 92, column: 30, scope: !1445)
!1458 = !DILocation(line: 91, column: 32, scope: !1442)
!1459 = !DILocation(line: 91, column: 9, scope: !1442)
!1460 = distinct !{!1460, !1443, !1461, !307}
!1461 = !DILocation(line: 93, column: 9, scope: !1437)
!1462 = !DILocation(line: 90, column: 28, scope: !1434)
!1463 = !DILocation(line: 90, column: 5, scope: !1434)
!1464 = distinct !{!1464, !1435, !1465, !307}
!1465 = !DILocation(line: 94, column: 5, scope: !1429)
!1466 = !DILocation(line: 95, column: 1, scope: !1419)
!1467 = distinct !DISubprogram(name: "encode", scope: !25, file: !25, line: 32, type: !280, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1468 = !DILocalVariable(name: "m", arg: 1, scope: !1467, file: !25, line: 32, type: !49)
!1469 = !DILocation(line: 0, scope: !1467)
!1470 = !DILocalVariable(name: "menc", arg: 2, scope: !1467, file: !25, line: 32, type: !18)
!1471 = !DILocalVariable(name: "mlen", arg: 3, scope: !1467, file: !25, line: 32, type: !45)
!1472 = !DILocalVariable(name: "i", scope: !1467, file: !25, line: 33, type: !45)
!1473 = !DILocation(line: 34, column: 10, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !1467, file: !25, line: 34, column: 5)
!1475 = !DILocation(line: 34, scope: !1474)
!1476 = !DILocation(line: 34, column: 26, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !1474, file: !25, line: 34, column: 5)
!1478 = !DILocation(line: 34, column: 19, scope: !1477)
!1479 = !DILocation(line: 34, column: 5, scope: !1474)
!1480 = !DILocation(line: 35, column: 20, scope: !1481)
!1481 = distinct !DILexicalBlock(scope: !1477, file: !25, line: 34, column: 44)
!1482 = !DILocation(line: 35, column: 31, scope: !1481)
!1483 = !DILocation(line: 35, column: 27, scope: !1481)
!1484 = !DILocation(line: 35, column: 36, scope: !1481)
!1485 = !DILocation(line: 35, column: 24, scope: !1481)
!1486 = !DILocation(line: 35, column: 9, scope: !1481)
!1487 = !DILocation(line: 35, column: 17, scope: !1481)
!1488 = !DILocation(line: 34, column: 31, scope: !1477)
!1489 = !DILocation(line: 34, column: 38, scope: !1477)
!1490 = !DILocation(line: 34, column: 5, scope: !1477)
!1491 = distinct !{!1491, !1479, !1492, !307}
!1492 = !DILocation(line: 36, column: 5, scope: !1474)
!1493 = !DILocation(line: 38, column: 18, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1467, file: !25, line: 38, column: 9)
!1495 = !DILocation(line: 39, column: 20, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1494, file: !25, line: 38, column: 24)
!1497 = !DILocation(line: 39, column: 9, scope: !1496)
!1498 = !DILocation(line: 39, column: 17, scope: !1496)
!1499 = !DILocation(line: 40, column: 5, scope: !1496)
!1500 = !DILocation(line: 41, column: 1, scope: !1467)
!1501 = distinct !DISubprogram(name: "add_f", scope: !496, file: !496, line: 43, type: !1502, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1502 = !DISubroutineType(types: !1503)
!1503 = !{!14, !14, !14}
!1504 = !DILocalVariable(name: "a", arg: 1, scope: !1501, file: !496, line: 43, type: !14)
!1505 = !DILocation(line: 0, scope: !1501)
!1506 = !DILocalVariable(name: "b", arg: 2, scope: !1501, file: !496, line: 43, type: !14)
!1507 = !DILocation(line: 44, column: 14, scope: !1501)
!1508 = !DILocation(line: 44, column: 5, scope: !1501)
!1509 = distinct !DISubprogram(name: "lincomb", scope: !496, file: !496, line: 70, type: !1510, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1510 = !DISubroutineType(types: !1511)
!1511 = !{!14, !49, !49, !45, !45}
!1512 = !DILocalVariable(name: "a", arg: 1, scope: !1509, file: !496, line: 70, type: !49)
!1513 = !DILocation(line: 0, scope: !1509)
!1514 = !DILocalVariable(name: "b", arg: 2, scope: !1509, file: !496, line: 71, type: !49)
!1515 = !DILocalVariable(name: "n", arg: 3, scope: !1509, file: !496, line: 71, type: !45)
!1516 = !DILocalVariable(name: "m", arg: 4, scope: !1509, file: !496, line: 71, type: !45)
!1517 = !DILocalVariable(name: "ret", scope: !1509, file: !496, line: 72, type: !14)
!1518 = !DILocalVariable(name: "i", scope: !1519, file: !496, line: 73, type: !45)
!1519 = distinct !DILexicalBlock(scope: !1509, file: !496, line: 73, column: 5)
!1520 = !DILocation(line: 0, scope: !1519)
!1521 = !DILocation(line: 73, column: 10, scope: !1519)
!1522 = !DILocation(line: 73, scope: !1519)
!1523 = !DILocation(line: 73, column: 23, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1519, file: !496, line: 73, column: 5)
!1525 = !DILocation(line: 73, column: 5, scope: !1519)
!1526 = !DILocation(line: 74, column: 27, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1524, file: !496, line: 73, column: 41)
!1528 = !DILocation(line: 74, column: 33, scope: !1527)
!1529 = !DILocation(line: 74, column: 21, scope: !1527)
!1530 = !DILocation(line: 74, column: 15, scope: !1527)
!1531 = !DILocation(line: 73, column: 28, scope: !1524)
!1532 = !DILocation(line: 73, column: 35, scope: !1524)
!1533 = !DILocation(line: 73, column: 5, scope: !1524)
!1534 = distinct !{!1534, !1525, !1535, !307}
!1535 = !DILocation(line: 75, column: 5, scope: !1519)
!1536 = !DILocation(line: 76, column: 5, scope: !1509)
!1537 = distinct !DISubprogram(name: "mul_f", scope: !496, file: !496, line: 9, type: !1502, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1538 = !DILocalVariable(name: "a", arg: 1, scope: !1537, file: !496, line: 9, type: !14)
!1539 = !DILocation(line: 0, scope: !1537)
!1540 = !DILocalVariable(name: "b", arg: 2, scope: !1537, file: !496, line: 9, type: !14)
!1541 = !DILocation(line: 14, column: 10, scope: !1537)
!1542 = !DILocation(line: 14, column: 7, scope: !1537)
!1543 = !DILocation(line: 17, column: 17, scope: !1537)
!1544 = !DILocalVariable(name: "p", scope: !1537, file: !496, line: 11, type: !14)
!1545 = !DILocation(line: 18, column: 13, scope: !1537)
!1546 = !DILocation(line: 18, column: 17, scope: !1537)
!1547 = !DILocation(line: 18, column: 7, scope: !1537)
!1548 = !DILocation(line: 19, column: 13, scope: !1537)
!1549 = !DILocation(line: 19, column: 17, scope: !1537)
!1550 = !DILocation(line: 19, column: 7, scope: !1537)
!1551 = !DILocation(line: 20, column: 13, scope: !1537)
!1552 = !DILocation(line: 20, column: 17, scope: !1537)
!1553 = !DILocation(line: 20, column: 7, scope: !1537)
!1554 = !DILocalVariable(name: "top_p", scope: !1537, file: !496, line: 23, type: !14)
!1555 = !DILocation(line: 24, column: 37, scope: !1537)
!1556 = !DILocation(line: 24, column: 52, scope: !1537)
!1557 = !DILocation(line: 24, column: 43, scope: !1537)
!1558 = !DILocation(line: 24, column: 59, scope: !1537)
!1559 = !DILocalVariable(name: "out", scope: !1537, file: !496, line: 24, type: !14)
!1560 = !DILocation(line: 25, column: 5, scope: !1537)
!1561 = !DILocalVariable(name: "M", arg: 1, scope: !24, file: !25, line: 111, type: !5)
!1562 = !DILocation(line: 0, scope: !24)
!1563 = !DILocalVariable(name: "i", scope: !1564, file: !25, line: 117, type: !15)
!1564 = distinct !DILexicalBlock(scope: !24, file: !25, line: 117, column: 5)
!1565 = !DILocation(line: 0, scope: !1564)
!1566 = !DILocation(line: 119, column: 24, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1568, file: !25, line: 118, column: 5)
!1568 = distinct !DILexicalBlock(scope: !1564, file: !25, line: 117, column: 5)
!1569 = !DILocation(line: 119, column: 29, scope: !1567)
!1570 = !DILocation(line: 119, column: 38, scope: !1567)
!1571 = !DILocation(line: 119, column: 36, scope: !1567)
!1572 = !DILocation(line: 119, column: 46, scope: !1567)
!1573 = !DILocalVariable(name: "t", scope: !1567, file: !25, line: 119, type: !6)
!1574 = !DILocation(line: 0, scope: !1567)
!1575 = !DILocation(line: 120, column: 21, scope: !1567)
!1576 = !DILocation(line: 120, column: 16, scope: !1567)
!1577 = !DILocation(line: 121, column: 9, scope: !1567)
!1578 = !DILocation(line: 121, column: 16, scope: !1567)
!1579 = !DILocation(line: 120, column: 9, scope: !1567)
!1580 = !DILocalVariable(name: "i", scope: !1581, file: !25, line: 124, type: !15)
!1581 = distinct !DILexicalBlock(scope: !24, file: !25, line: 124, column: 5)
!1582 = !DILocation(line: 0, scope: !1581)
!1583 = !DILocation(line: 126, column: 25, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1585, file: !25, line: 125, column: 5)
!1585 = distinct !DILexicalBlock(scope: !1581, file: !25, line: 124, column: 5)
!1586 = !DILocation(line: 126, column: 32, scope: !1584)
!1587 = !DILocation(line: 126, column: 40, scope: !1584)
!1588 = !DILocation(line: 126, column: 38, scope: !1584)
!1589 = !DILocation(line: 126, column: 48, scope: !1584)
!1590 = !DILocalVariable(name: "t0", scope: !1584, file: !25, line: 126, type: !6)
!1591 = !DILocation(line: 0, scope: !1584)
!1592 = !DILocation(line: 127, column: 25, scope: !1584)
!1593 = !DILocation(line: 127, column: 32, scope: !1584)
!1594 = !DILocation(line: 127, column: 40, scope: !1584)
!1595 = !DILocation(line: 127, column: 38, scope: !1584)
!1596 = !DILocation(line: 127, column: 48, scope: !1584)
!1597 = !DILocalVariable(name: "t1", scope: !1584, file: !25, line: 127, type: !6)
!1598 = !DILocation(line: 128, column: 23, scope: !1584)
!1599 = !DILocation(line: 128, column: 16, scope: !1584)
!1600 = !DILocation(line: 129, column: 23, scope: !1584)
!1601 = !DILocation(line: 129, column: 9, scope: !1584)
!1602 = !DILocation(line: 129, column: 16, scope: !1584)
!1603 = !DILocation(line: 130, column: 9, scope: !1584)
!1604 = !DILocation(line: 130, column: 16, scope: !1584)
!1605 = !DILocation(line: 131, column: 9, scope: !1584)
!1606 = !DILocation(line: 131, column: 16, scope: !1584)
!1607 = !DILocation(line: 128, column: 9, scope: !1584)
!1608 = !DILocalVariable(name: "i", scope: !1609, file: !25, line: 134, type: !15)
!1609 = distinct !DILexicalBlock(scope: !24, file: !25, line: 134, column: 5)
!1610 = !DILocation(line: 0, scope: !1609)
!1611 = !DILocation(line: 136, column: 25, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1613, file: !25, line: 135, column: 5)
!1613 = distinct !DILexicalBlock(scope: !1609, file: !25, line: 134, column: 5)
!1614 = !DILocation(line: 136, column: 32, scope: !1612)
!1615 = !DILocation(line: 136, column: 41, scope: !1612)
!1616 = !DILocation(line: 136, column: 39, scope: !1612)
!1617 = !DILocation(line: 136, column: 50, scope: !1612)
!1618 = !DILocalVariable(name: "t0", scope: !1612, file: !25, line: 136, type: !6)
!1619 = !DILocation(line: 0, scope: !1612)
!1620 = !DILocation(line: 137, column: 25, scope: !1612)
!1621 = !DILocation(line: 137, column: 32, scope: !1612)
!1622 = !DILocation(line: 137, column: 41, scope: !1612)
!1623 = !DILocation(line: 137, column: 39, scope: !1612)
!1624 = !DILocation(line: 137, column: 50, scope: !1612)
!1625 = !DILocalVariable(name: "t1", scope: !1612, file: !25, line: 137, type: !6)
!1626 = !DILocation(line: 139, column: 23, scope: !1612)
!1627 = !DILocation(line: 139, column: 17, scope: !1612)
!1628 = !DILocation(line: 140, column: 23, scope: !1612)
!1629 = !DILocation(line: 140, column: 9, scope: !1612)
!1630 = !DILocation(line: 140, column: 17, scope: !1612)
!1631 = !DILocation(line: 141, column: 9, scope: !1612)
!1632 = !DILocation(line: 141, column: 17, scope: !1612)
!1633 = !DILocation(line: 142, column: 9, scope: !1612)
!1634 = !DILocation(line: 142, column: 17, scope: !1612)
!1635 = !DILocation(line: 139, column: 9, scope: !1612)
!1636 = !DILocalVariable(name: "i", scope: !1637, file: !25, line: 145, type: !15)
!1637 = distinct !DILexicalBlock(scope: !24, file: !25, line: 145, column: 5)
!1638 = !DILocation(line: 0, scope: !1637)
!1639 = !DILocation(line: 147, column: 24, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1641, file: !25, line: 146, column: 5)
!1641 = distinct !DILexicalBlock(scope: !1637, file: !25, line: 145, column: 5)
!1642 = !DILocation(line: 147, column: 28, scope: !1640)
!1643 = !DILocation(line: 147, column: 36, scope: !1640)
!1644 = !DILocation(line: 147, column: 44, scope: !1640)
!1645 = !DILocalVariable(name: "t", scope: !1640, file: !25, line: 147, type: !6)
!1646 = !DILocation(line: 0, scope: !1640)
!1647 = !DILocation(line: 148, column: 21, scope: !1640)
!1648 = !DILocation(line: 148, column: 16, scope: !1640)
!1649 = !DILocation(line: 149, column: 9, scope: !1640)
!1650 = !DILocation(line: 149, column: 16, scope: !1640)
!1651 = !DILocation(line: 148, column: 9, scope: !1640)
!1652 = !DILocation(line: 151, column: 1, scope: !24)
!1653 = distinct !DISubprogram(name: "mul_add_mat_x_m_mat", scope: !327, file: !327, line: 61, type: !388, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1654 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !1653, file: !327, line: 61, type: !243)
!1655 = !DILocation(line: 0, scope: !1653)
!1656 = !DILocalVariable(name: "mat", arg: 2, scope: !1653, file: !327, line: 61, type: !49)
!1657 = !DILocalVariable(name: "bs_mat", arg: 3, scope: !1653, file: !327, line: 61, type: !330)
!1658 = !DILocalVariable(name: "acc", arg: 4, scope: !1653, file: !327, line: 61, type: !5)
!1659 = !DILocalVariable(name: "mat_rows", arg: 5, scope: !1653, file: !327, line: 62, type: !243)
!1660 = !DILocalVariable(name: "mat_cols", arg: 6, scope: !1653, file: !327, line: 62, type: !243)
!1661 = !DILocalVariable(name: "bs_mat_cols", arg: 7, scope: !1653, file: !327, line: 62, type: !243)
!1662 = !DILocalVariable(name: "r", scope: !1663, file: !327, line: 64, type: !45)
!1663 = distinct !DILexicalBlock(scope: !1653, file: !327, line: 64, column: 5)
!1664 = !DILocation(line: 0, scope: !1663)
!1665 = !DILocation(line: 64, column: 10, scope: !1663)
!1666 = !DILocation(line: 64, scope: !1663)
!1667 = !DILocation(line: 64, column: 23, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !1663, file: !327, line: 64, column: 5)
!1669 = !DILocation(line: 64, column: 5, scope: !1663)
!1670 = !DILocation(line: 65, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1672, file: !327, line: 65, column: 9)
!1672 = distinct !DILexicalBlock(scope: !1668, file: !327, line: 64, column: 40)
!1673 = !DILocalVariable(name: "c", scope: !1671, file: !327, line: 65, type: !45)
!1674 = !DILocation(line: 0, scope: !1671)
!1675 = !DILocation(line: 65, column: 27, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !1671, file: !327, line: 65, column: 9)
!1677 = !DILocation(line: 65, column: 9, scope: !1671)
!1678 = !DILocation(line: 66, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1680, file: !327, line: 66, column: 13)
!1680 = distinct !DILexicalBlock(scope: !1676, file: !327, line: 65, column: 44)
!1681 = !DILocalVariable(name: "k", scope: !1679, file: !327, line: 66, type: !45)
!1682 = !DILocation(line: 0, scope: !1679)
!1683 = !DILocation(line: 66, column: 31, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1679, file: !327, line: 66, column: 13)
!1685 = !DILocation(line: 66, column: 13, scope: !1679)
!1686 = !DILocation(line: 67, column: 70, scope: !1687)
!1687 = distinct !DILexicalBlock(scope: !1684, file: !327, line: 66, column: 54)
!1688 = !DILocation(line: 67, column: 84, scope: !1687)
!1689 = !DILocation(line: 67, column: 65, scope: !1687)
!1690 = !DILocation(line: 67, column: 51, scope: !1687)
!1691 = !DILocation(line: 67, column: 96, scope: !1687)
!1692 = !DILocation(line: 67, column: 90, scope: !1687)
!1693 = !DILocation(line: 67, column: 136, scope: !1687)
!1694 = !DILocation(line: 67, column: 150, scope: !1687)
!1695 = !DILocation(line: 67, column: 131, scope: !1687)
!1696 = !DILocation(line: 67, column: 117, scope: !1687)
!1697 = !DILocation(line: 67, column: 17, scope: !1687)
!1698 = !DILocation(line: 66, column: 48, scope: !1684)
!1699 = !DILocation(line: 66, column: 13, scope: !1684)
!1700 = distinct !{!1700, !1685, !1701, !307}
!1701 = !DILocation(line: 68, column: 13, scope: !1679)
!1702 = !DILocation(line: 65, column: 40, scope: !1676)
!1703 = !DILocation(line: 65, column: 9, scope: !1676)
!1704 = distinct !{!1704, !1677, !1705, !307}
!1705 = !DILocation(line: 69, column: 9, scope: !1671)
!1706 = !DILocation(line: 64, column: 36, scope: !1668)
!1707 = !DILocation(line: 64, column: 5, scope: !1668)
!1708 = distinct !{!1708, !1669, !1709, !307}
!1709 = !DILocation(line: 70, column: 5, scope: !1663)
!1710 = !DILocation(line: 71, column: 1, scope: !1653)
!1711 = distinct !DISubprogram(name: "P1_times_Vt", scope: !327, file: !327, line: 82, type: !378, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1712 = !DILocalVariable(name: "p", arg: 1, scope: !1711, file: !327, line: 82, type: !178)
!1713 = !DILocation(line: 0, scope: !1711)
!1714 = !DILocalVariable(name: "P1", arg: 2, scope: !1711, file: !327, line: 82, type: !330)
!1715 = !DILocalVariable(name: "V", arg: 3, scope: !1711, file: !327, line: 82, type: !49)
!1716 = !DILocalVariable(name: "acc", arg: 4, scope: !1711, file: !327, line: 82, type: !5)
!1717 = !DILocation(line: 86, column: 5, scope: !1711)
!1718 = !DILocation(line: 87, column: 1, scope: !1711)
!1719 = distinct !DISubprogram(name: "mul_add_m_upper_triangular_mat_x_mat_trans", scope: !327, file: !327, line: 32, type: !512, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1720 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !1719, file: !327, line: 32, type: !243)
!1721 = !DILocation(line: 0, scope: !1719)
!1722 = !DILocalVariable(name: "bs_mat", arg: 2, scope: !1719, file: !327, line: 32, type: !330)
!1723 = !DILocalVariable(name: "mat", arg: 3, scope: !1719, file: !327, line: 32, type: !49)
!1724 = !DILocalVariable(name: "acc", arg: 4, scope: !1719, file: !327, line: 32, type: !5)
!1725 = !DILocalVariable(name: "bs_mat_rows", arg: 5, scope: !1719, file: !327, line: 33, type: !243)
!1726 = !DILocalVariable(name: "bs_mat_cols", arg: 6, scope: !1719, file: !327, line: 33, type: !243)
!1727 = !DILocalVariable(name: "mat_rows", arg: 7, scope: !1719, file: !327, line: 33, type: !243)
!1728 = !DILocalVariable(name: "triangular", arg: 8, scope: !1719, file: !327, line: 33, type: !243)
!1729 = !DILocalVariable(name: "bs_mat_entries_used", scope: !1719, file: !327, line: 34, type: !45)
!1730 = !DILocalVariable(name: "r", scope: !1731, file: !327, line: 35, type: !45)
!1731 = distinct !DILexicalBlock(scope: !1719, file: !327, line: 35, column: 5)
!1732 = !DILocation(line: 0, scope: !1731)
!1733 = !DILocation(line: 35, column: 10, scope: !1731)
!1734 = !DILocation(line: 34, column: 9, scope: !1719)
!1735 = !DILocation(line: 35, scope: !1731)
!1736 = !DILocation(line: 35, column: 23, scope: !1737)
!1737 = distinct !DILexicalBlock(scope: !1731, file: !327, line: 35, column: 5)
!1738 = !DILocation(line: 35, column: 5, scope: !1731)
!1739 = !DILocation(line: 36, column: 33, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !1741, file: !327, line: 36, column: 9)
!1741 = distinct !DILexicalBlock(scope: !1737, file: !327, line: 35, column: 43)
!1742 = !DILocalVariable(name: "c", scope: !1740, file: !327, line: 36, type: !45)
!1743 = !DILocation(line: 0, scope: !1740)
!1744 = !DILocation(line: 36, column: 14, scope: !1740)
!1745 = !DILocation(line: 36, scope: !1740)
!1746 = !DILocation(line: 36, column: 40, scope: !1747)
!1747 = distinct !DILexicalBlock(scope: !1740, file: !327, line: 36, column: 9)
!1748 = !DILocation(line: 36, column: 9, scope: !1740)
!1749 = !DILocation(line: 37, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1751, file: !327, line: 37, column: 13)
!1751 = distinct !DILexicalBlock(scope: !1747, file: !327, line: 36, column: 60)
!1752 = !DILocalVariable(name: "k", scope: !1750, file: !327, line: 37, type: !45)
!1753 = !DILocation(line: 0, scope: !1750)
!1754 = !DILocation(line: 37, column: 31, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1750, file: !327, line: 37, column: 13)
!1756 = !DILocation(line: 37, column: 13, scope: !1750)
!1757 = !DILocation(line: 38, column: 65, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !1755, file: !327, line: 37, column: 51)
!1759 = !DILocation(line: 38, column: 51, scope: !1758)
!1760 = !DILocation(line: 38, column: 94, scope: !1758)
!1761 = !DILocation(line: 38, column: 88, scope: !1758)
!1762 = !DILocation(line: 38, column: 137, scope: !1758)
!1763 = !DILocation(line: 38, column: 148, scope: !1758)
!1764 = !DILocation(line: 38, column: 132, scope: !1758)
!1765 = !DILocation(line: 38, column: 118, scope: !1758)
!1766 = !DILocation(line: 38, column: 17, scope: !1758)
!1767 = !DILocation(line: 37, column: 45, scope: !1755)
!1768 = !DILocation(line: 37, column: 13, scope: !1755)
!1769 = distinct !{!1769, !1756, !1770, !307}
!1770 = !DILocation(line: 39, column: 13, scope: !1750)
!1771 = !DILocation(line: 40, column: 33, scope: !1751)
!1772 = !DILocation(line: 36, column: 56, scope: !1747)
!1773 = !DILocation(line: 36, column: 9, scope: !1747)
!1774 = distinct !{!1774, !1748, !1775, !307}
!1775 = !DILocation(line: 41, column: 9, scope: !1740)
!1776 = !DILocation(line: 35, column: 39, scope: !1737)
!1777 = !DILocation(line: 35, column: 5, scope: !1737)
!1778 = distinct !{!1778, !1738, !1779, !307}
!1779 = !DILocation(line: 42, column: 5, scope: !1731)
!1780 = !DILocation(line: 43, column: 1, scope: !1719)
!1781 = distinct !DISubprogram(name: "pqmayo_MAYO_1_ref_mayo_sign", scope: !25, file: !25, line: 502, type: !715, scopeLine: 504, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1782 = !DILocalVariable(name: "p", arg: 1, scope: !1781, file: !25, line: 502, type: !178)
!1783 = !DILocation(line: 0, scope: !1781)
!1784 = !DILocalVariable(name: "sm", arg: 2, scope: !1781, file: !25, line: 502, type: !18)
!1785 = !DILocalVariable(name: "smlen", arg: 3, scope: !1781, file: !25, line: 503, type: !717)
!1786 = !DILocalVariable(name: "m", arg: 4, scope: !1781, file: !25, line: 503, type: !49)
!1787 = !DILocalVariable(name: "mlen", arg: 5, scope: !1781, file: !25, line: 504, type: !15)
!1788 = !DILocalVariable(name: "csk", arg: 6, scope: !1781, file: !25, line: 504, type: !49)
!1789 = !DILocalVariable(name: "ret", scope: !1781, file: !25, line: 505, type: !45)
!1790 = !DILocalVariable(name: "param_sig_bytes", scope: !1781, file: !25, line: 506, type: !243)
!1791 = !DILocation(line: 508, column: 16, scope: !1781)
!1792 = !DILocation(line: 508, column: 5, scope: !1781)
!1793 = !DILocation(line: 509, column: 50, scope: !1781)
!1794 = !DILocalVariable(name: "siglen", scope: !1781, file: !25, line: 507, type: !15)
!1795 = !DILocation(line: 509, column: 11, scope: !1781)
!1796 = !DILocation(line: 510, column: 13, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !1781, file: !25, line: 510, column: 9)
!1798 = !DILocation(line: 510, column: 24, scope: !1797)
!1799 = !DILocation(line: 511, column: 23, scope: !1800)
!1800 = distinct !DILexicalBlock(scope: !1797, file: !25, line: 510, column: 62)
!1801 = !DILocation(line: 511, column: 30, scope: !1800)
!1802 = !DILocation(line: 511, column: 9, scope: !1800)
!1803 = !DILocation(line: 512, column: 9, scope: !1800)
!1804 = !DILocation(line: 515, column: 14, scope: !1781)
!1805 = !DILocation(line: 515, column: 21, scope: !1781)
!1806 = !DILocation(line: 515, column: 12, scope: !1781)
!1807 = !DILocation(line: 515, column: 5, scope: !1781)
!1808 = !DILabel(scope: !1781, name: "err", file: !25, line: 516)
!1809 = !DILocation(line: 516, column: 1, scope: !1781)
!1810 = !DILocation(line: 517, column: 5, scope: !1781)
!1811 = distinct !DISubprogram(name: "pqmayo_MAYO_1_ref_mayo_open", scope: !25, file: !25, line: 520, type: !715, scopeLine: 522, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1812 = !DILocalVariable(name: "p", arg: 1, scope: !1811, file: !25, line: 520, type: !178)
!1813 = !DILocation(line: 0, scope: !1811)
!1814 = !DILocalVariable(name: "m", arg: 2, scope: !1811, file: !25, line: 520, type: !18)
!1815 = !DILocalVariable(name: "mlen", arg: 3, scope: !1811, file: !25, line: 521, type: !717)
!1816 = !DILocalVariable(name: "sm", arg: 4, scope: !1811, file: !25, line: 521, type: !49)
!1817 = !DILocalVariable(name: "smlen", arg: 5, scope: !1811, file: !25, line: 522, type: !15)
!1818 = !DILocalVariable(name: "pk", arg: 6, scope: !1811, file: !25, line: 522, type: !49)
!1819 = !DILocalVariable(name: "param_sig_bytes", scope: !1811, file: !25, line: 523, type: !243)
!1820 = !DILocation(line: 524, column: 15, scope: !1821)
!1821 = distinct !DILexicalBlock(scope: !1811, file: !25, line: 524, column: 9)
!1822 = !DILocation(line: 527, column: 36, scope: !1811)
!1823 = !DILocation(line: 527, column: 61, scope: !1811)
!1824 = !DILocation(line: 527, column: 18, scope: !1811)
!1825 = !DILocalVariable(name: "result", scope: !1811, file: !25, line: 527, type: !45)
!1826 = !DILocation(line: 530, column: 16, scope: !1827)
!1827 = distinct !DILexicalBlock(scope: !1811, file: !25, line: 530, column: 9)
!1828 = !DILocation(line: 531, column: 23, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !1827, file: !25, line: 530, column: 28)
!1830 = !DILocation(line: 531, column: 15, scope: !1829)
!1831 = !DILocation(line: 532, column: 23, scope: !1829)
!1832 = !DILocation(line: 532, column: 9, scope: !1829)
!1833 = !DILocation(line: 533, column: 5, scope: !1829)
!1834 = !DILocation(line: 536, column: 1, scope: !1811)
!1835 = distinct !DISubprogram(name: "pqmayo_MAYO_1_ref_mayo_verify", scope: !25, file: !25, line: 617, type: !1836, scopeLine: 619, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1836 = !DISubroutineType(types: !1837)
!1837 = !{!45, !178, !49, !15, !49, !49}
!1838 = !DILocalVariable(name: "p", arg: 1, scope: !1835, file: !25, line: 617, type: !178)
!1839 = !DILocation(line: 0, scope: !1835)
!1840 = !DILocalVariable(name: "m", arg: 2, scope: !1835, file: !25, line: 617, type: !49)
!1841 = !DILocalVariable(name: "mlen", arg: 3, scope: !1835, file: !25, line: 618, type: !15)
!1842 = !DILocalVariable(name: "sig", arg: 4, scope: !1835, file: !25, line: 618, type: !49)
!1843 = !DILocalVariable(name: "cpk", arg: 5, scope: !1835, file: !25, line: 619, type: !49)
!1844 = !DILocalVariable(name: "tEnc", scope: !1835, file: !25, line: 620, type: !727)
!1845 = !DILocation(line: 620, column: 19, scope: !1835)
!1846 = !DILocalVariable(name: "t", scope: !1835, file: !25, line: 621, type: !732)
!1847 = !DILocation(line: 621, column: 19, scope: !1835)
!1848 = !DILocalVariable(name: "y", scope: !1835, file: !25, line: 622, type: !1849)
!1849 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 1248, elements: !1850)
!1850 = !{!1851}
!1851 = !DISubrange(count: 156)
!1852 = !DILocation(line: 622, column: 19, scope: !1835)
!1853 = !DILocalVariable(name: "s", scope: !1835, file: !25, line: 623, type: !759)
!1854 = !DILocation(line: 623, column: 19, scope: !1835)
!1855 = !DILocalVariable(name: "pk", scope: !1835, file: !25, line: 624, type: !123)
!1856 = !DILocation(line: 624, column: 14, scope: !1835)
!1857 = !DILocalVariable(name: "tmp", scope: !1835, file: !25, line: 625, type: !1858)
!1858 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 448, elements: !1859)
!1859 = !{!1860}
!1860 = !DISubrange(count: 56)
!1861 = !DILocation(line: 625, column: 19, scope: !1835)
!1862 = !DILocalVariable(name: "param_m", scope: !1835, file: !25, line: 627, type: !243)
!1863 = !DILocalVariable(name: "param_n", scope: !1835, file: !25, line: 628, type: !243)
!1864 = !DILocalVariable(name: "param_k", scope: !1835, file: !25, line: 629, type: !243)
!1865 = !DILocalVariable(name: "param_m_bytes", scope: !1835, file: !25, line: 630, type: !243)
!1866 = !DILocalVariable(name: "param_sig_bytes", scope: !1835, file: !25, line: 631, type: !243)
!1867 = !DILocalVariable(name: "param_digest_bytes", scope: !1835, file: !25, line: 632, type: !243)
!1868 = !DILocalVariable(name: "param_salt_bytes", scope: !1835, file: !25, line: 633, type: !243)
!1869 = !DILocation(line: 635, column: 15, scope: !1835)
!1870 = !DILocalVariable(name: "ret", scope: !1835, file: !25, line: 635, type: !45)
!1871 = !DILocation(line: 636, column: 13, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !1835, file: !25, line: 636, column: 9)
!1873 = !DILocalVariable(name: "P1", scope: !1835, file: !25, line: 640, type: !5)
!1874 = !DILocation(line: 641, column: 23, scope: !1835)
!1875 = !DILocalVariable(name: "P2", scope: !1835, file: !25, line: 641, type: !5)
!1876 = !DILocation(line: 642, column: 23, scope: !1835)
!1877 = !DILocalVariable(name: "P3", scope: !1835, file: !25, line: 642, type: !5)
!1878 = !DILocation(line: 657, column: 5, scope: !1835)
!1879 = !DILocation(line: 660, column: 16, scope: !1835)
!1880 = !DILocation(line: 660, column: 60, scope: !1835)
!1881 = !DILocation(line: 660, column: 5, scope: !1835)
!1882 = !DILocation(line: 662, column: 5, scope: !1835)
!1883 = !DILocation(line: 663, column: 5, scope: !1835)
!1884 = !DILocation(line: 666, column: 5, scope: !1835)
!1885 = !DILocation(line: 668, column: 5, scope: !1835)
!1886 = !DILocation(line: 670, column: 9, scope: !1887)
!1887 = distinct !DILexicalBlock(scope: !1835, file: !25, line: 670, column: 9)
!1888 = !DILocation(line: 670, column: 31, scope: !1887)
!1889 = !DILocation(line: 674, column: 1, scope: !1835)
!1890 = distinct !DISubprogram(name: "pqmayo_MAYO_1_ref_mayo_expand_pk", scope: !25, file: !25, line: 608, type: !616, scopeLine: 609, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1891 = !DILocalVariable(name: "p", arg: 1, scope: !1890, file: !25, line: 608, type: !178)
!1892 = !DILocation(line: 0, scope: !1890)
!1893 = !DILocalVariable(name: "cpk", arg: 2, scope: !1890, file: !25, line: 608, type: !49)
!1894 = !DILocalVariable(name: "pk", arg: 3, scope: !1890, file: !25, line: 609, type: !5)
!1895 = !DILocation(line: 610, column: 5, scope: !1890)
!1896 = !DILocation(line: 612, column: 23, scope: !1890)
!1897 = !DILocation(line: 612, column: 72, scope: !1890)
!1898 = !DILocation(line: 612, column: 5, scope: !1890)
!1899 = !DILocation(line: 614, column: 5, scope: !1890)
!1900 = distinct !DISubprogram(name: "eval_public_map", scope: !25, file: !25, line: 288, type: !1901, scopeLine: 288, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1901 = !DISubroutineType(types: !1902)
!1902 = !{null, !178, !49, !330, !330, !330, !18}
!1903 = !DILocalVariable(name: "p", arg: 1, scope: !1900, file: !25, line: 288, type: !178)
!1904 = !DILocation(line: 0, scope: !1900)
!1905 = !DILocalVariable(name: "s", arg: 2, scope: !1900, file: !25, line: 288, type: !49)
!1906 = !DILocalVariable(name: "P1", arg: 3, scope: !1900, file: !25, line: 288, type: !330)
!1907 = !DILocalVariable(name: "P2", arg: 4, scope: !1900, file: !25, line: 288, type: !330)
!1908 = !DILocalVariable(name: "P3", arg: 5, scope: !1900, file: !25, line: 288, type: !330)
!1909 = !DILocalVariable(name: "eval", arg: 6, scope: !1900, file: !25, line: 288, type: !18)
!1910 = !DILocalVariable(name: "SPS", scope: !1900, file: !25, line: 289, type: !1911)
!1911 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 32000, elements: !1912)
!1912 = !{!1913}
!1913 = !DISubrange(count: 500)
!1914 = !DILocation(line: 289, column: 14, scope: !1900)
!1915 = !DILocation(line: 291, column: 5, scope: !1900)
!1916 = !DILocalVariable(name: "zero", scope: !1900, file: !25, line: 292, type: !732)
!1917 = !DILocation(line: 292, column: 19, scope: !1900)
!1918 = !DILocation(line: 293, column: 5, scope: !1900)
!1919 = !DILocation(line: 294, column: 1, scope: !1900)
!1920 = distinct !DISubprogram(name: "m_calculate_PS_SPS", scope: !327, file: !327, line: 277, type: !1921, scopeLine: 278, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1921 = !DISubroutineType(types: !1922)
!1922 = !{null, !178, !330, !330, !330, !49, !5}
!1923 = !DILocalVariable(name: "p", arg: 1, scope: !1920, file: !327, line: 277, type: !178)
!1924 = !DILocation(line: 0, scope: !1920)
!1925 = !DILocalVariable(name: "P1", arg: 2, scope: !1920, file: !327, line: 277, type: !330)
!1926 = !DILocalVariable(name: "P2", arg: 3, scope: !1920, file: !327, line: 277, type: !330)
!1927 = !DILocalVariable(name: "P3", arg: 4, scope: !1920, file: !327, line: 277, type: !330)
!1928 = !DILocalVariable(name: "s", arg: 5, scope: !1920, file: !327, line: 277, type: !49)
!1929 = !DILocalVariable(name: "SPS", arg: 6, scope: !1920, file: !327, line: 278, type: !5)
!1930 = !DILocalVariable(name: "PS", scope: !1920, file: !327, line: 286, type: !1931)
!1931 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 275200, elements: !1932)
!1932 = !{!1933}
!1933 = !DISubrange(count: 4300)
!1934 = !DILocation(line: 286, column: 14, scope: !1920)
!1935 = !DILocation(line: 287, column: 5, scope: !1920)
!1936 = !DILocation(line: 290, column: 5, scope: !1920)
!1937 = !DILocation(line: 292, column: 1, scope: !1920)
!1938 = distinct !DISubprogram(name: "mayo_generic_m_calculate_PS", scope: !327, file: !327, line: 151, type: !1939, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!1939 = !DISubroutineType(types: !1940)
!1940 = !{null, !330, !330, !330, !49, !243, !243, !243, !243, !5}
!1941 = !DILocalVariable(name: "P1", arg: 1, scope: !1938, file: !327, line: 151, type: !330)
!1942 = !DILocation(line: 0, scope: !1938)
!1943 = !DILocalVariable(name: "P2", arg: 2, scope: !1938, file: !327, line: 151, type: !330)
!1944 = !DILocalVariable(name: "P3", arg: 3, scope: !1938, file: !327, line: 151, type: !330)
!1945 = !DILocalVariable(name: "S", arg: 4, scope: !1938, file: !327, line: 151, type: !49)
!1946 = !DILocalVariable(name: "m", arg: 5, scope: !1938, file: !327, line: 152, type: !243)
!1947 = !DILocalVariable(name: "v", arg: 6, scope: !1938, file: !327, line: 152, type: !243)
!1948 = !DILocalVariable(name: "o", arg: 7, scope: !1938, file: !327, line: 152, type: !243)
!1949 = !DILocalVariable(name: "k", arg: 8, scope: !1938, file: !327, line: 152, type: !243)
!1950 = !DILocalVariable(name: "PS", arg: 9, scope: !1938, file: !327, line: 152, type: !5)
!1951 = !DILocation(line: 154, column: 21, scope: !1938)
!1952 = !DILocalVariable(name: "n", scope: !1938, file: !327, line: 154, type: !243)
!1953 = !DILocation(line: 155, column: 32, scope: !1938)
!1954 = !DILocation(line: 155, column: 37, scope: !1938)
!1955 = !DILocalVariable(name: "m_vec_limbs", scope: !1938, file: !327, line: 155, type: !243)
!1956 = !DILocalVariable(name: "accumulator", scope: !1938, file: !327, line: 157, type: !1957)
!1957 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 4403200, elements: !1958)
!1958 = !{!1959}
!1959 = !DISubrange(count: 68800)
!1960 = !DILocation(line: 157, column: 14, scope: !1938)
!1961 = !DILocalVariable(name: "P1_used", scope: !1938, file: !327, line: 158, type: !45)
!1962 = !DILocalVariable(name: "row", scope: !1963, file: !327, line: 159, type: !45)
!1963 = distinct !DILexicalBlock(scope: !1938, file: !327, line: 159, column: 5)
!1964 = !DILocation(line: 0, scope: !1963)
!1965 = !DILocation(line: 159, column: 10, scope: !1963)
!1966 = !DILocation(line: 158, column: 9, scope: !1938)
!1967 = !DILocation(line: 159, scope: !1963)
!1968 = !DILocation(line: 159, column: 27, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !1963, file: !327, line: 159, column: 5)
!1970 = !DILocation(line: 159, column: 5, scope: !1963)
!1971 = !DILocation(line: 160, column: 9, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1973, file: !327, line: 160, column: 9)
!1973 = distinct !DILexicalBlock(scope: !1969, file: !327, line: 159, column: 39)
!1974 = !DILocation(line: 175, column: 5, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !1938, file: !327, line: 175, column: 5)
!1976 = !DILocation(line: 160, scope: !1972)
!1977 = !DILocalVariable(name: "j", scope: !1972, file: !327, line: 160, type: !45)
!1978 = !DILocation(line: 0, scope: !1972)
!1979 = !DILocation(line: 160, column: 29, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1972, file: !327, line: 160, column: 9)
!1981 = !DILocation(line: 161, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !1983, file: !327, line: 161, column: 13)
!1983 = distinct !DILexicalBlock(scope: !1980, file: !327, line: 160, column: 39)
!1984 = !DILocalVariable(name: "col", scope: !1982, file: !327, line: 161, type: !45)
!1985 = !DILocation(line: 0, scope: !1982)
!1986 = !DILocation(line: 161, column: 35, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1982, file: !327, line: 161, column: 13)
!1988 = !DILocation(line: 161, column: 13, scope: !1982)
!1989 = !DILocation(line: 162, column: 54, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1987, file: !327, line: 161, column: 47)
!1991 = !DILocation(line: 162, column: 43, scope: !1990)
!1992 = !DILocation(line: 162, column: 91, scope: !1990)
!1993 = !DILocation(line: 162, column: 95, scope: !1990)
!1994 = !DILocation(line: 162, column: 102, scope: !1990)
!1995 = !DILocation(line: 162, column: 115, scope: !1990)
!1996 = !DILocation(line: 162, column: 109, scope: !1990)
!1997 = !DILocation(line: 162, column: 107, scope: !1990)
!1998 = !DILocation(line: 162, column: 125, scope: !1990)
!1999 = !DILocation(line: 162, column: 82, scope: !1990)
!2000 = !DILocation(line: 162, column: 17, scope: !1990)
!2001 = !DILocation(line: 161, column: 43, scope: !1987)
!2002 = !DILocation(line: 161, column: 13, scope: !1987)
!2003 = distinct !{!2003, !1988, !2004, !307}
!2004 = !DILocation(line: 163, column: 13, scope: !1982)
!2005 = !DILocation(line: 164, column: 21, scope: !1983)
!2006 = !DILocation(line: 160, column: 35, scope: !1980)
!2007 = !DILocation(line: 160, column: 9, scope: !1980)
!2008 = distinct !{!2008, !1971, !2009, !307}
!2009 = !DILocation(line: 165, column: 9, scope: !1972)
!2010 = !DILocation(line: 167, scope: !2011)
!2011 = distinct !DILexicalBlock(scope: !1973, file: !327, line: 167, column: 9)
!2012 = !DILocalVariable(name: "j", scope: !2011, file: !327, line: 167, type: !45)
!2013 = !DILocation(line: 0, scope: !2011)
!2014 = !DILocation(line: 167, column: 27, scope: !2015)
!2015 = distinct !DILexicalBlock(scope: !2011, file: !327, line: 167, column: 9)
!2016 = !DILocation(line: 167, column: 9, scope: !2011)
!2017 = !DILocation(line: 168, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !2019, file: !327, line: 168, column: 13)
!2019 = distinct !DILexicalBlock(scope: !2015, file: !327, line: 167, column: 37)
!2020 = !DILocalVariable(name: "col", scope: !2018, file: !327, line: 168, type: !45)
!2021 = !DILocation(line: 0, scope: !2018)
!2022 = !DILocation(line: 168, column: 35, scope: !2023)
!2023 = distinct !DILexicalBlock(scope: !2018, file: !327, line: 168, column: 13)
!2024 = !DILocation(line: 168, column: 13, scope: !2018)
!2025 = !DILocation(line: 169, column: 50, scope: !2026)
!2026 = distinct !DILexicalBlock(scope: !2023, file: !327, line: 168, column: 47)
!2027 = !DILocation(line: 169, column: 54, scope: !2026)
!2028 = !DILocation(line: 169, column: 58, scope: !2026)
!2029 = !DILocation(line: 169, column: 43, scope: !2026)
!2030 = !DILocation(line: 169, column: 93, scope: !2026)
!2031 = !DILocation(line: 169, column: 97, scope: !2026)
!2032 = !DILocation(line: 169, column: 104, scope: !2026)
!2033 = !DILocation(line: 169, column: 118, scope: !2026)
!2034 = !DILocation(line: 169, column: 111, scope: !2026)
!2035 = !DILocation(line: 169, column: 109, scope: !2026)
!2036 = !DILocation(line: 169, column: 133, scope: !2026)
!2037 = !DILocation(line: 169, column: 84, scope: !2026)
!2038 = !DILocation(line: 169, column: 17, scope: !2026)
!2039 = !DILocation(line: 168, column: 43, scope: !2023)
!2040 = !DILocation(line: 168, column: 13, scope: !2023)
!2041 = distinct !{!2041, !2024, !2042, !307}
!2042 = !DILocation(line: 170, column: 13, scope: !2018)
!2043 = !DILocation(line: 167, column: 33, scope: !2015)
!2044 = !DILocation(line: 167, column: 9, scope: !2015)
!2045 = distinct !{!2045, !2016, !2046, !307}
!2046 = !DILocation(line: 171, column: 9, scope: !2011)
!2047 = !DILocation(line: 159, column: 35, scope: !1969)
!2048 = !DILocation(line: 159, column: 5, scope: !1969)
!2049 = distinct !{!2049, !1970, !2050, !307}
!2050 = !DILocation(line: 172, column: 5, scope: !1963)
!2051 = !DILocation(line: 174, column: 9, scope: !1938)
!2052 = !DILocation(line: 175, scope: !1975)
!2053 = !DILocalVariable(name: "row", scope: !1975, file: !327, line: 175, type: !45)
!2054 = !DILocation(line: 0, scope: !1975)
!2055 = !DILocalVariable(name: "P3_used", scope: !1938, file: !327, line: 174, type: !45)
!2056 = !DILocation(line: 175, column: 27, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !1975, file: !327, line: 175, column: 5)
!2058 = !DILocation(line: 186, column: 5, scope: !1938)
!2059 = !DILocation(line: 176, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !2061, file: !327, line: 176, column: 9)
!2061 = distinct !DILexicalBlock(scope: !2057, file: !327, line: 175, column: 39)
!2062 = !DILocalVariable(name: "j", scope: !2060, file: !327, line: 176, type: !45)
!2063 = !DILocation(line: 0, scope: !2060)
!2064 = !DILocation(line: 176, column: 29, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !2060, file: !327, line: 176, column: 9)
!2066 = !DILocation(line: 176, column: 9, scope: !2060)
!2067 = !DILocation(line: 177, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !2069, file: !327, line: 177, column: 13)
!2069 = distinct !DILexicalBlock(scope: !2065, file: !327, line: 176, column: 39)
!2070 = !DILocalVariable(name: "col", scope: !2068, file: !327, line: 177, type: !45)
!2071 = !DILocation(line: 0, scope: !2068)
!2072 = !DILocation(line: 177, column: 35, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !2068, file: !327, line: 177, column: 13)
!2074 = !DILocation(line: 177, column: 13, scope: !2068)
!2075 = !DILocation(line: 178, column: 53, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !2073, file: !327, line: 177, column: 47)
!2077 = !DILocation(line: 178, column: 43, scope: !2076)
!2078 = !DILocation(line: 178, column: 89, scope: !2076)
!2079 = !DILocation(line: 178, column: 93, scope: !2076)
!2080 = !DILocation(line: 178, column: 100, scope: !2076)
!2081 = !DILocation(line: 178, column: 113, scope: !2076)
!2082 = !DILocation(line: 178, column: 107, scope: !2076)
!2083 = !DILocation(line: 178, column: 105, scope: !2076)
!2084 = !DILocation(line: 178, column: 123, scope: !2076)
!2085 = !DILocation(line: 178, column: 80, scope: !2076)
!2086 = !DILocation(line: 178, column: 17, scope: !2076)
!2087 = !DILocation(line: 177, column: 43, scope: !2073)
!2088 = !DILocation(line: 177, column: 13, scope: !2073)
!2089 = distinct !{!2089, !2074, !2090, !307}
!2090 = !DILocation(line: 179, column: 13, scope: !2068)
!2091 = !DILocation(line: 180, column: 21, scope: !2069)
!2092 = !DILocation(line: 176, column: 35, scope: !2065)
!2093 = !DILocation(line: 176, column: 9, scope: !2065)
!2094 = distinct !{!2094, !2066, !2095, !307}
!2095 = !DILocation(line: 181, column: 9, scope: !2060)
!2096 = !DILocation(line: 175, column: 35, scope: !2057)
!2097 = !DILocation(line: 175, column: 5, scope: !2057)
!2098 = distinct !{!2098, !1974, !2099, !307}
!2099 = !DILocation(line: 182, column: 5, scope: !1975)
!2100 = !DILocalVariable(name: "i", scope: !1938, file: !327, line: 185, type: !45)
!2101 = !DILocation(line: 186, column: 14, scope: !1938)
!2102 = !DILocation(line: 187, column: 58, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !1938, file: !327, line: 186, column: 23)
!2104 = !DILocation(line: 187, column: 63, scope: !2103)
!2105 = !DILocation(line: 187, column: 54, scope: !2103)
!2106 = !DILocation(line: 187, column: 85, scope: !2103)
!2107 = !DILocation(line: 187, column: 81, scope: !2103)
!2108 = !DILocation(line: 187, column: 9, scope: !2103)
!2109 = !DILocation(line: 188, column: 10, scope: !2103)
!2110 = distinct !{!2110, !2058, !2111, !307}
!2111 = !DILocation(line: 189, column: 5, scope: !1938)
!2112 = !DILocation(line: 191, column: 1, scope: !1938)
!2113 = distinct !DISubprogram(name: "mayo_generic_m_calculate_SPS", scope: !327, file: !327, line: 195, type: !2114, scopeLine: 195, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2114 = !DISubroutineType(types: !2115)
!2115 = !{null, !330, !49, !45, !45, !45, !5}
!2116 = !DILocalVariable(name: "PS", arg: 1, scope: !2113, file: !327, line: 195, type: !330)
!2117 = !DILocation(line: 0, scope: !2113)
!2118 = !DILocalVariable(name: "S", arg: 2, scope: !2113, file: !327, line: 195, type: !49)
!2119 = !DILocalVariable(name: "m", arg: 3, scope: !2113, file: !327, line: 195, type: !45)
!2120 = !DILocalVariable(name: "k", arg: 4, scope: !2113, file: !327, line: 195, type: !45)
!2121 = !DILocalVariable(name: "n", arg: 5, scope: !2113, file: !327, line: 195, type: !45)
!2122 = !DILocalVariable(name: "SPS", arg: 6, scope: !2113, file: !327, line: 195, type: !5)
!2123 = !DILocalVariable(name: "accumulator", scope: !2113, file: !327, line: 196, type: !2124)
!2124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 512000, elements: !2125)
!2125 = !{!2126}
!2126 = !DISubrange(count: 8000)
!2127 = !DILocation(line: 196, column: 14, scope: !2113)
!2128 = !DILocation(line: 197, column: 32, scope: !2113)
!2129 = !DILocation(line: 197, column: 37, scope: !2113)
!2130 = !DILocalVariable(name: "m_vec_limbs", scope: !2113, file: !327, line: 197, type: !243)
!2131 = !DILocalVariable(name: "row", scope: !2132, file: !327, line: 198, type: !45)
!2132 = distinct !DILexicalBlock(scope: !2113, file: !327, line: 198, column: 5)
!2133 = !DILocation(line: 0, scope: !2132)
!2134 = !DILocation(line: 198, column: 10, scope: !2132)
!2135 = !DILocation(line: 198, scope: !2132)
!2136 = !DILocation(line: 198, column: 27, scope: !2137)
!2137 = distinct !DILexicalBlock(scope: !2132, file: !327, line: 198, column: 5)
!2138 = !DILocation(line: 198, column: 5, scope: !2132)
!2139 = !DILocation(line: 208, column: 5, scope: !2113)
!2140 = !DILocation(line: 199, scope: !2141)
!2141 = distinct !DILexicalBlock(scope: !2142, file: !327, line: 199, column: 9)
!2142 = distinct !DILexicalBlock(scope: !2137, file: !327, line: 198, column: 39)
!2143 = !DILocalVariable(name: "j", scope: !2141, file: !327, line: 199, type: !45)
!2144 = !DILocation(line: 0, scope: !2141)
!2145 = !DILocation(line: 199, column: 27, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !2141, file: !327, line: 199, column: 9)
!2147 = !DILocation(line: 199, column: 9, scope: !2141)
!2148 = !DILocation(line: 200, scope: !2149)
!2149 = distinct !DILexicalBlock(scope: !2150, file: !327, line: 200, column: 13)
!2150 = distinct !DILexicalBlock(scope: !2146, file: !327, line: 199, column: 37)
!2151 = !DILocalVariable(name: "col", scope: !2149, file: !327, line: 200, type: !45)
!2152 = !DILocation(line: 0, scope: !2149)
!2153 = !DILocation(line: 200, column: 35, scope: !2154)
!2154 = distinct !DILexicalBlock(scope: !2149, file: !327, line: 200, column: 13)
!2155 = !DILocation(line: 200, column: 13, scope: !2149)
!2156 = !DILocation(line: 201, column: 52, scope: !2157)
!2157 = distinct !DILexicalBlock(scope: !2154, file: !327, line: 200, column: 50)
!2158 = !DILocation(line: 201, column: 56, scope: !2157)
!2159 = !DILocation(line: 201, column: 63, scope: !2157)
!2160 = !DILocation(line: 201, column: 47, scope: !2157)
!2161 = !DILocation(line: 201, column: 99, scope: !2157)
!2162 = !DILocation(line: 201, column: 103, scope: !2157)
!2163 = !DILocation(line: 201, column: 110, scope: !2157)
!2164 = !DILocation(line: 201, column: 123, scope: !2157)
!2165 = !DILocation(line: 201, column: 117, scope: !2157)
!2166 = !DILocation(line: 201, column: 115, scope: !2157)
!2167 = !DILocation(line: 201, column: 133, scope: !2157)
!2168 = !DILocation(line: 201, column: 90, scope: !2157)
!2169 = !DILocation(line: 201, column: 21, scope: !2157)
!2170 = !DILocation(line: 200, column: 44, scope: !2154)
!2171 = !DILocation(line: 200, column: 13, scope: !2154)
!2172 = distinct !{!2172, !2155, !2173, !307}
!2173 = !DILocation(line: 202, column: 13, scope: !2149)
!2174 = !DILocation(line: 199, column: 33, scope: !2146)
!2175 = !DILocation(line: 199, column: 9, scope: !2146)
!2176 = distinct !{!2176, !2147, !2177, !307}
!2177 = !DILocation(line: 203, column: 9, scope: !2141)
!2178 = !DILocation(line: 198, column: 35, scope: !2137)
!2179 = !DILocation(line: 198, column: 5, scope: !2137)
!2180 = distinct !{!2180, !2138, !2181, !307}
!2181 = !DILocation(line: 204, column: 5, scope: !2132)
!2182 = !DILocalVariable(name: "i", scope: !2113, file: !327, line: 207, type: !45)
!2183 = !DILocation(line: 208, column: 14, scope: !2113)
!2184 = !DILocation(line: 209, column: 58, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !2113, file: !327, line: 208, column: 21)
!2186 = !DILocation(line: 209, column: 63, scope: !2185)
!2187 = !DILocation(line: 209, column: 54, scope: !2185)
!2188 = !DILocation(line: 209, column: 86, scope: !2185)
!2189 = !DILocation(line: 209, column: 82, scope: !2185)
!2190 = !DILocation(line: 209, column: 9, scope: !2185)
!2191 = !DILocation(line: 210, column: 10, scope: !2185)
!2192 = distinct !{!2192, !2139, !2193, !307}
!2193 = !DILocation(line: 211, column: 5, scope: !2113)
!2194 = !DILocation(line: 212, column: 1, scope: !2113)
!2195 = distinct !DISubprogram(name: "m_vec_add", scope: !448, file: !448, line: 22, type: !2196, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2196 = !DISubroutineType(types: !2197)
!2197 = !{null, !45, !330, !5}
!2198 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2195, file: !448, line: 22, type: !45)
!2199 = !DILocation(line: 0, scope: !2195)
!2200 = !DILocalVariable(name: "in", arg: 2, scope: !2195, file: !448, line: 22, type: !330)
!2201 = !DILocalVariable(name: "acc", arg: 3, scope: !2195, file: !448, line: 22, type: !5)
!2202 = !DILocalVariable(name: "i", scope: !2203, file: !448, line: 24, type: !15)
!2203 = distinct !DILexicalBlock(scope: !2195, file: !448, line: 24, column: 5)
!2204 = !DILocation(line: 0, scope: !2203)
!2205 = !DILocation(line: 26, column: 19, scope: !2206)
!2206 = distinct !DILexicalBlock(scope: !2207, file: !448, line: 25, column: 5)
!2207 = distinct !DILexicalBlock(scope: !2203, file: !448, line: 24, column: 5)
!2208 = !DILocation(line: 26, column: 16, scope: !2206)
!2209 = !DILocation(line: 26, column: 9, scope: !2206)
!2210 = !DILocation(line: 28, column: 1, scope: !2195)
!2211 = distinct !DISubprogram(name: "m_vec_multiply_bins", scope: !448, file: !448, line: 66, type: !2212, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2212 = !DISubroutineType(types: !2213)
!2213 = !{null, !45, !5, !5}
!2214 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2211, file: !448, line: 66, type: !45)
!2215 = !DILocation(line: 0, scope: !2211)
!2216 = !DILocalVariable(name: "bins", arg: 2, scope: !2211, file: !448, line: 66, type: !5)
!2217 = !DILocalVariable(name: "out", arg: 3, scope: !2211, file: !448, line: 66, type: !5)
!2218 = !DILocation(line: 67, column: 44, scope: !2211)
!2219 = !DILocation(line: 67, column: 73, scope: !2211)
!2220 = !DILocation(line: 67, column: 5, scope: !2211)
!2221 = !DILocation(line: 68, column: 40, scope: !2211)
!2222 = !DILocation(line: 68, column: 69, scope: !2211)
!2223 = !DILocation(line: 68, column: 5, scope: !2211)
!2224 = !DILocation(line: 69, column: 44, scope: !2211)
!2225 = !DILocation(line: 69, column: 74, scope: !2211)
!2226 = !DILocation(line: 69, column: 5, scope: !2211)
!2227 = !DILocation(line: 70, column: 40, scope: !2211)
!2228 = !DILocation(line: 70, column: 69, scope: !2211)
!2229 = !DILocation(line: 70, column: 5, scope: !2211)
!2230 = !DILocation(line: 71, column: 44, scope: !2211)
!2231 = !DILocation(line: 71, column: 73, scope: !2211)
!2232 = !DILocation(line: 71, column: 5, scope: !2211)
!2233 = !DILocation(line: 72, column: 40, scope: !2211)
!2234 = !DILocation(line: 72, column: 69, scope: !2211)
!2235 = !DILocation(line: 72, column: 5, scope: !2211)
!2236 = !DILocation(line: 73, column: 44, scope: !2211)
!2237 = !DILocation(line: 73, column: 74, scope: !2211)
!2238 = !DILocation(line: 73, column: 5, scope: !2211)
!2239 = !DILocation(line: 74, column: 40, scope: !2211)
!2240 = !DILocation(line: 74, column: 69, scope: !2211)
!2241 = !DILocation(line: 74, column: 5, scope: !2211)
!2242 = !DILocation(line: 75, column: 44, scope: !2211)
!2243 = !DILocation(line: 75, column: 74, scope: !2211)
!2244 = !DILocation(line: 75, column: 5, scope: !2211)
!2245 = !DILocation(line: 76, column: 40, scope: !2211)
!2246 = !DILocation(line: 76, column: 69, scope: !2211)
!2247 = !DILocation(line: 76, column: 5, scope: !2211)
!2248 = !DILocation(line: 77, column: 44, scope: !2211)
!2249 = !DILocation(line: 77, column: 74, scope: !2211)
!2250 = !DILocation(line: 77, column: 5, scope: !2211)
!2251 = !DILocation(line: 78, column: 40, scope: !2211)
!2252 = !DILocation(line: 78, column: 69, scope: !2211)
!2253 = !DILocation(line: 78, column: 5, scope: !2211)
!2254 = !DILocation(line: 79, column: 44, scope: !2211)
!2255 = !DILocation(line: 79, column: 74, scope: !2211)
!2256 = !DILocation(line: 79, column: 5, scope: !2211)
!2257 = !DILocation(line: 80, column: 40, scope: !2211)
!2258 = !DILocation(line: 80, column: 69, scope: !2211)
!2259 = !DILocation(line: 80, column: 5, scope: !2211)
!2260 = !DILocation(line: 81, column: 35, scope: !2211)
!2261 = !DILocation(line: 81, column: 5, scope: !2211)
!2262 = !DILocation(line: 82, column: 1, scope: !2211)
!2263 = distinct !DISubprogram(name: "m_vec_mul_add_x_inv", scope: !448, file: !448, line: 56, type: !2196, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2264 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2263, file: !448, line: 56, type: !45)
!2265 = !DILocation(line: 0, scope: !2263)
!2266 = !DILocalVariable(name: "in", arg: 2, scope: !2263, file: !448, line: 56, type: !330)
!2267 = !DILocalVariable(name: "acc", arg: 3, scope: !2263, file: !448, line: 56, type: !5)
!2268 = !DILocalVariable(name: "mask_lsb", scope: !2263, file: !448, line: 58, type: !6)
!2269 = !DILocalVariable(name: "i", scope: !2270, file: !448, line: 59, type: !45)
!2270 = distinct !DILexicalBlock(scope: !2263, file: !448, line: 59, column: 5)
!2271 = !DILocation(line: 0, scope: !2270)
!2272 = !DILocation(line: 60, column: 22, scope: !2273)
!2273 = distinct !DILexicalBlock(scope: !2274, file: !448, line: 59, column: 43)
!2274 = distinct !DILexicalBlock(scope: !2270, file: !448, line: 59, column: 5)
!2275 = !DILocation(line: 60, column: 28, scope: !2273)
!2276 = !DILocalVariable(name: "t", scope: !2273, file: !448, line: 60, type: !6)
!2277 = !DILocation(line: 0, scope: !2273)
!2278 = !DILocation(line: 61, column: 32, scope: !2273)
!2279 = !DILocation(line: 61, column: 43, scope: !2273)
!2280 = !DILocation(line: 61, column: 38, scope: !2273)
!2281 = !DILocation(line: 61, column: 16, scope: !2273)
!2282 = !DILocation(line: 61, column: 9, scope: !2273)
!2283 = !DILocation(line: 63, column: 1, scope: !2263)
!2284 = distinct !DISubprogram(name: "m_vec_mul_add_x", scope: !448, file: !448, line: 46, type: !2196, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2285 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2284, file: !448, line: 46, type: !45)
!2286 = !DILocation(line: 0, scope: !2284)
!2287 = !DILocalVariable(name: "in", arg: 2, scope: !2284, file: !448, line: 46, type: !330)
!2288 = !DILocalVariable(name: "acc", arg: 3, scope: !2284, file: !448, line: 46, type: !5)
!2289 = !DILocalVariable(name: "mask_msb", scope: !2284, file: !448, line: 48, type: !6)
!2290 = !DILocalVariable(name: "i", scope: !2291, file: !448, line: 49, type: !45)
!2291 = distinct !DILexicalBlock(scope: !2284, file: !448, line: 49, column: 5)
!2292 = !DILocation(line: 0, scope: !2291)
!2293 = !DILocation(line: 50, column: 22, scope: !2294)
!2294 = distinct !DILexicalBlock(scope: !2295, file: !448, line: 49, column: 43)
!2295 = distinct !DILexicalBlock(scope: !2291, file: !448, line: 49, column: 5)
!2296 = !DILocalVariable(name: "t", scope: !2294, file: !448, line: 50, type: !6)
!2297 = !DILocation(line: 0, scope: !2294)
!2298 = !DILocation(line: 51, column: 32, scope: !2294)
!2299 = !DILocation(line: 51, column: 44, scope: !2294)
!2300 = !DILocation(line: 51, column: 50, scope: !2294)
!2301 = !DILocation(line: 51, column: 38, scope: !2294)
!2302 = !DILocation(line: 51, column: 16, scope: !2294)
!2303 = !DILocation(line: 51, column: 9, scope: !2294)
!2304 = !DILocation(line: 53, column: 1, scope: !2284)
!2305 = distinct !DISubprogram(name: "m_vec_copy", scope: !448, file: !448, line: 13, type: !2196, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !28)
!2306 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2305, file: !448, line: 13, type: !45)
!2307 = !DILocation(line: 0, scope: !2305)
!2308 = !DILocalVariable(name: "in", arg: 2, scope: !2305, file: !448, line: 13, type: !330)
!2309 = !DILocalVariable(name: "out", arg: 3, scope: !2305, file: !448, line: 13, type: !5)
!2310 = !DILocalVariable(name: "i", scope: !2311, file: !448, line: 15, type: !15)
!2311 = distinct !DILexicalBlock(scope: !2305, file: !448, line: 15, column: 5)
!2312 = !DILocation(line: 0, scope: !2311)
!2313 = !DILocation(line: 17, column: 18, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !2315, file: !448, line: 16, column: 5)
!2315 = distinct !DILexicalBlock(scope: !2311, file: !448, line: 15, column: 5)
!2316 = !DILocation(line: 17, column: 16, scope: !2314)
!2317 = !DILocation(line: 17, column: 9, scope: !2314)
!2318 = !DILocation(line: 19, column: 1, scope: !2305)
!2319 = distinct !DISubprogram(name: "pqmayo_MAYO_1_ref_m_upper", scope: !58, file: !58, line: 14, type: !2320, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2320 = !DISubroutineType(types: !2321)
!2321 = !{null, !2322, !330, !5, !45}
!2322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2323, size: 32)
!2323 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2324)
!2324 = !DIDerivedType(tag: DW_TAG_typedef, name: "mayo_params_t", file: !36, line: 289, baseType: !2325)
!2325 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !36, line: 265, size: 736, elements: !2326)
!2326 = !{!2327, !2328, !2329, !2330, !2331, !2332, !2333, !2334, !2335, !2336, !2337, !2338, !2339, !2340, !2341, !2342, !2343, !2344, !2345, !2346, !2347, !2348, !2349}
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !2325, file: !36, line: 266, baseType: !45, size: 32)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !2325, file: !36, line: 267, baseType: !45, size: 32, offset: 32)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "o", scope: !2325, file: !36, line: 268, baseType: !45, size: 32, offset: 64)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !2325, file: !36, line: 269, baseType: !45, size: 32, offset: 96)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2325, file: !36, line: 270, baseType: !45, size: 32, offset: 128)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "f_tail", scope: !2325, file: !36, line: 271, baseType: !49, size: 32, offset: 160)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "m_bytes", scope: !2325, file: !36, line: 272, baseType: !45, size: 32, offset: 192)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "O_bytes", scope: !2325, file: !36, line: 273, baseType: !45, size: 32, offset: 224)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "v_bytes", scope: !2325, file: !36, line: 274, baseType: !45, size: 32, offset: 256)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "r_bytes", scope: !2325, file: !36, line: 275, baseType: !45, size: 32, offset: 288)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "R_bytes", scope: !2325, file: !36, line: 276, baseType: !45, size: 32, offset: 320)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "P1_bytes", scope: !2325, file: !36, line: 277, baseType: !45, size: 32, offset: 352)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "P2_bytes", scope: !2325, file: !36, line: 278, baseType: !45, size: 32, offset: 384)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "P3_bytes", scope: !2325, file: !36, line: 279, baseType: !45, size: 32, offset: 416)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "csk_bytes", scope: !2325, file: !36, line: 280, baseType: !45, size: 32, offset: 448)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "cpk_bytes", scope: !2325, file: !36, line: 281, baseType: !45, size: 32, offset: 480)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "sig_bytes", scope: !2325, file: !36, line: 282, baseType: !45, size: 32, offset: 512)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "salt_bytes", scope: !2325, file: !36, line: 283, baseType: !45, size: 32, offset: 544)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "sk_seed_bytes", scope: !2325, file: !36, line: 284, baseType: !45, size: 32, offset: 576)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "digest_bytes", scope: !2325, file: !36, line: 285, baseType: !45, size: 32, offset: 608)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "pk_seed_bytes", scope: !2325, file: !36, line: 286, baseType: !45, size: 32, offset: 640)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "m_vec_limbs", scope: !2325, file: !36, line: 287, baseType: !45, size: 32, offset: 672)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2325, file: !36, line: 288, baseType: !108, size: 32, offset: 704)
!2350 = !DILocalVariable(name: "p", arg: 1, scope: !2319, file: !58, line: 14, type: !2322)
!2351 = !DILocation(line: 0, scope: !2319)
!2352 = !DILocalVariable(name: "in", arg: 2, scope: !2319, file: !58, line: 14, type: !330)
!2353 = !DILocalVariable(name: "out", arg: 3, scope: !2319, file: !58, line: 14, type: !5)
!2354 = !DILocalVariable(name: "size", arg: 4, scope: !2319, file: !58, line: 14, type: !45)
!2355 = !DILocalVariable(name: "m_vec_limbs", scope: !2319, file: !58, line: 19, type: !243)
!2356 = !DILocalVariable(name: "m_vecs_stored", scope: !2319, file: !58, line: 20, type: !45)
!2357 = !DILocalVariable(name: "r", scope: !2358, file: !58, line: 21, type: !45)
!2358 = distinct !DILexicalBlock(scope: !2319, file: !58, line: 21, column: 5)
!2359 = !DILocation(line: 0, scope: !2358)
!2360 = !DILocation(line: 21, column: 10, scope: !2358)
!2361 = !DILocation(line: 20, column: 9, scope: !2319)
!2362 = !DILocation(line: 21, scope: !2358)
!2363 = !DILocation(line: 21, column: 23, scope: !2364)
!2364 = distinct !DILexicalBlock(scope: !2358, file: !58, line: 21, column: 5)
!2365 = !DILocation(line: 21, column: 5, scope: !2358)
!2366 = !DILocation(line: 22, column: 9, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !2368, file: !58, line: 22, column: 9)
!2368 = distinct !DILexicalBlock(scope: !2364, file: !58, line: 21, column: 36)
!2369 = !DILocation(line: 22, scope: !2367)
!2370 = !DILocalVariable(name: "c", scope: !2367, file: !58, line: 22, type: !45)
!2371 = !DILocation(line: 0, scope: !2367)
!2372 = !DILocation(line: 22, column: 27, scope: !2373)
!2373 = distinct !DILexicalBlock(scope: !2367, file: !58, line: 22, column: 9)
!2374 = !DILocation(line: 23, column: 59, scope: !2375)
!2375 = distinct !DILexicalBlock(scope: !2373, file: !58, line: 22, column: 40)
!2376 = !DILocation(line: 23, column: 66, scope: !2375)
!2377 = !DILocation(line: 23, column: 40, scope: !2375)
!2378 = !DILocation(line: 23, column: 76, scope: !2375)
!2379 = !DILocation(line: 23, column: 13, scope: !2375)
!2380 = !DILocation(line: 24, column: 19, scope: !2381)
!2381 = distinct !DILexicalBlock(scope: !2375, file: !58, line: 24, column: 17)
!2382 = !DILocation(line: 25, column: 62, scope: !2383)
!2383 = distinct !DILexicalBlock(scope: !2381, file: !58, line: 24, column: 25)
!2384 = !DILocation(line: 25, column: 69, scope: !2383)
!2385 = !DILocation(line: 25, column: 43, scope: !2383)
!2386 = !DILocation(line: 25, column: 79, scope: !2383)
!2387 = !DILocation(line: 25, column: 17, scope: !2383)
!2388 = !DILocation(line: 26, column: 13, scope: !2383)
!2389 = !DILocation(line: 27, column: 27, scope: !2375)
!2390 = !DILocation(line: 22, column: 36, scope: !2373)
!2391 = !DILocation(line: 22, column: 9, scope: !2373)
!2392 = distinct !{!2392, !2366, !2393, !307}
!2393 = !DILocation(line: 28, column: 9, scope: !2367)
!2394 = !DILocation(line: 21, column: 32, scope: !2364)
!2395 = !DILocation(line: 21, column: 5, scope: !2364)
!2396 = distinct !{!2396, !2365, !2397, !307}
!2397 = !DILocation(line: 29, column: 5, scope: !2358)
!2398 = !DILocation(line: 30, column: 1, scope: !2319)
!2399 = distinct !DISubprogram(name: "m_vec_copy", scope: !448, file: !448, line: 13, type: !2196, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2400 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2399, file: !448, line: 13, type: !45)
!2401 = !DILocation(line: 0, scope: !2399)
!2402 = !DILocalVariable(name: "in", arg: 2, scope: !2399, file: !448, line: 13, type: !330)
!2403 = !DILocalVariable(name: "out", arg: 3, scope: !2399, file: !448, line: 13, type: !5)
!2404 = !DILocalVariable(name: "i", scope: !2405, file: !448, line: 15, type: !15)
!2405 = distinct !DILexicalBlock(scope: !2399, file: !448, line: 15, column: 5)
!2406 = !DILocation(line: 0, scope: !2405)
!2407 = !DILocation(line: 17, column: 18, scope: !2408)
!2408 = distinct !DILexicalBlock(scope: !2409, file: !448, line: 16, column: 5)
!2409 = distinct !DILexicalBlock(scope: !2405, file: !448, line: 15, column: 5)
!2410 = !DILocation(line: 17, column: 16, scope: !2408)
!2411 = !DILocation(line: 17, column: 9, scope: !2408)
!2412 = !DILocation(line: 19, column: 1, scope: !2399)
!2413 = distinct !DISubprogram(name: "m_vec_add", scope: !448, file: !448, line: 22, type: !2196, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2414 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2413, file: !448, line: 22, type: !45)
!2415 = !DILocation(line: 0, scope: !2413)
!2416 = !DILocalVariable(name: "in", arg: 2, scope: !2413, file: !448, line: 22, type: !330)
!2417 = !DILocalVariable(name: "acc", arg: 3, scope: !2413, file: !448, line: 22, type: !5)
!2418 = !DILocalVariable(name: "i", scope: !2419, file: !448, line: 24, type: !15)
!2419 = distinct !DILexicalBlock(scope: !2413, file: !448, line: 24, column: 5)
!2420 = !DILocation(line: 0, scope: !2419)
!2421 = !DILocation(line: 26, column: 19, scope: !2422)
!2422 = distinct !DILexicalBlock(scope: !2423, file: !448, line: 25, column: 5)
!2423 = distinct !DILexicalBlock(scope: !2419, file: !448, line: 24, column: 5)
!2424 = !DILocation(line: 26, column: 16, scope: !2422)
!2425 = !DILocation(line: 26, column: 9, scope: !2422)
!2426 = !DILocation(line: 28, column: 1, scope: !2413)
!2427 = distinct !DISubprogram(name: "pqmayo_MAYO_1_ref_sample_solution", scope: !58, file: !58, line: 40, type: !2428, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2428 = !DISubroutineType(types: !2429)
!2429 = !{!45, !2322, !18, !49, !49, !18, !45, !45, !45, !45}
!2430 = !DILocalVariable(name: "p", arg: 1, scope: !2427, file: !58, line: 40, type: !2322)
!2431 = !DILocation(line: 0, scope: !2427)
!2432 = !DILocalVariable(name: "A", arg: 2, scope: !2427, file: !58, line: 40, type: !18)
!2433 = !DILocalVariable(name: "y", arg: 3, scope: !2427, file: !58, line: 41, type: !49)
!2434 = !DILocalVariable(name: "r", arg: 4, scope: !2427, file: !58, line: 41, type: !49)
!2435 = !DILocalVariable(name: "x", arg: 5, scope: !2427, file: !58, line: 42, type: !18)
!2436 = !DILocalVariable(name: "k", arg: 6, scope: !2427, file: !58, line: 42, type: !45)
!2437 = !DILocalVariable(name: "o", arg: 7, scope: !2427, file: !58, line: 42, type: !45)
!2438 = !DILocalVariable(name: "m", arg: 8, scope: !2427, file: !58, line: 42, type: !45)
!2439 = !DILocalVariable(name: "A_cols", arg: 9, scope: !2427, file: !58, line: 42, type: !45)
!2440 = !DILocalVariable(name: "i", scope: !2441, file: !58, line: 51, type: !45)
!2441 = distinct !DILexicalBlock(scope: !2427, file: !58, line: 51, column: 5)
!2442 = !DILocation(line: 0, scope: !2441)
!2443 = !DILocation(line: 51, column: 10, scope: !2441)
!2444 = !DILocation(line: 51, scope: !2441)
!2445 = !DILocation(line: 51, column: 23, scope: !2446)
!2446 = distinct !DILexicalBlock(scope: !2441, file: !58, line: 51, column: 5)
!2447 = !DILocation(line: 51, column: 5, scope: !2441)
!2448 = !DILocation(line: 57, column: 5, scope: !2449)
!2449 = distinct !DILexicalBlock(scope: !2427, file: !58, line: 57, column: 5)
!2450 = !DILocation(line: 52, column: 16, scope: !2451)
!2451 = distinct !DILexicalBlock(scope: !2446, file: !58, line: 51, column: 37)
!2452 = !DILocation(line: 52, column: 9, scope: !2451)
!2453 = !DILocation(line: 52, column: 14, scope: !2451)
!2454 = !DILocation(line: 51, column: 33, scope: !2446)
!2455 = !DILocation(line: 51, column: 5, scope: !2446)
!2456 = distinct !{!2456, !2447, !2457, !307}
!2457 = !DILocation(line: 53, column: 5, scope: !2441)
!2458 = !DILocation(line: 57, scope: !2449)
!2459 = !DILocalVariable(name: "i", scope: !2449, file: !58, line: 57, type: !45)
!2460 = !DILocation(line: 0, scope: !2449)
!2461 = !DILocation(line: 57, column: 23, scope: !2462)
!2462 = distinct !DILexicalBlock(scope: !2449, file: !58, line: 57, column: 5)
!2463 = !DILocation(line: 58, column: 13, scope: !2464)
!2464 = distinct !DILexicalBlock(scope: !2462, file: !58, line: 57, column: 33)
!2465 = !DILocation(line: 58, column: 26, scope: !2464)
!2466 = !DILocation(line: 58, column: 30, scope: !2464)
!2467 = !DILocation(line: 58, column: 21, scope: !2464)
!2468 = !DILocation(line: 58, column: 9, scope: !2464)
!2469 = !DILocation(line: 58, column: 36, scope: !2464)
!2470 = !DILocation(line: 57, column: 29, scope: !2462)
!2471 = !DILocation(line: 57, column: 5, scope: !2462)
!2472 = distinct !{!2472, !2448, !2473, !307}
!2473 = !DILocation(line: 59, column: 5, scope: !2449)
!2474 = !DILocation(line: 60, column: 25, scope: !2427)
!2475 = !DILocation(line: 60, column: 29, scope: !2427)
!2476 = !DILocation(line: 60, column: 5, scope: !2427)
!2477 = !DILocalVariable(name: "i", scope: !2478, file: !58, line: 63, type: !45)
!2478 = distinct !DILexicalBlock(scope: !2427, file: !58, line: 63, column: 5)
!2479 = !DILocation(line: 0, scope: !2478)
!2480 = !DILocation(line: 63, column: 10, scope: !2478)
!2481 = !DILocation(line: 63, scope: !2478)
!2482 = !DILocation(line: 63, column: 23, scope: !2483)
!2483 = distinct !DILexicalBlock(scope: !2478, file: !58, line: 63, column: 5)
!2484 = !DILocation(line: 63, column: 5, scope: !2478)
!2485 = !DILocation(line: 64, column: 44, scope: !2486)
!2486 = distinct !DILexicalBlock(scope: !2483, file: !58, line: 63, column: 33)
!2487 = !DILocation(line: 64, column: 50, scope: !2486)
!2488 = !DILocation(line: 64, column: 38, scope: !2486)
!2489 = !DILocation(line: 64, column: 13, scope: !2486)
!2490 = !DILocation(line: 64, column: 26, scope: !2486)
!2491 = !DILocation(line: 64, column: 30, scope: !2486)
!2492 = !DILocation(line: 64, column: 21, scope: !2486)
!2493 = !DILocation(line: 64, column: 9, scope: !2486)
!2494 = !DILocation(line: 64, column: 36, scope: !2486)
!2495 = !DILocation(line: 63, column: 29, scope: !2483)
!2496 = !DILocation(line: 63, column: 5, scope: !2483)
!2497 = distinct !{!2497, !2484, !2498, !307}
!2498 = !DILocation(line: 65, column: 5, scope: !2478)
!2499 = !DILocation(line: 67, column: 16, scope: !2427)
!2500 = !DILocation(line: 67, column: 20, scope: !2427)
!2501 = !DILocation(line: 67, column: 5, scope: !2427)
!2502 = !DILocalVariable(name: "full_rank", scope: !2427, file: !58, line: 70, type: !14)
!2503 = !DILocalVariable(name: "i", scope: !2504, file: !58, line: 71, type: !45)
!2504 = distinct !DILexicalBlock(scope: !2427, file: !58, line: 71, column: 5)
!2505 = !DILocation(line: 0, scope: !2504)
!2506 = !DILocation(line: 71, column: 10, scope: !2504)
!2507 = !DILocation(line: 71, scope: !2504)
!2508 = !DILocation(line: 71, column: 23, scope: !2509)
!2509 = distinct !DILexicalBlock(scope: !2504, file: !58, line: 71, column: 5)
!2510 = !DILocation(line: 71, column: 5, scope: !2504)
!2511 = !DILocation(line: 72, column: 27, scope: !2512)
!2512 = distinct !DILexicalBlock(scope: !2509, file: !58, line: 71, column: 42)
!2513 = !DILocation(line: 72, column: 32, scope: !2512)
!2514 = !DILocation(line: 72, column: 22, scope: !2512)
!2515 = !DILocation(line: 72, column: 19, scope: !2512)
!2516 = !DILocation(line: 71, column: 38, scope: !2509)
!2517 = !DILocation(line: 71, column: 5, scope: !2509)
!2518 = distinct !{!2518, !2510, !2519, !307}
!2519 = !DILocation(line: 73, column: 5, scope: !2504)
!2520 = !DILocation(line: 80, column: 19, scope: !2521)
!2521 = distinct !DILexicalBlock(scope: !2427, file: !58, line: 80, column: 9)
!2522 = !DILocation(line: 88, scope: !2523)
!2523 = distinct !DILexicalBlock(scope: !2427, file: !58, line: 88, column: 5)
!2524 = !DILocalVariable(name: "row", scope: !2523, file: !58, line: 88, type: !45)
!2525 = !DILocation(line: 0, scope: !2523)
!2526 = !DILocation(line: 88, column: 31, scope: !2527)
!2527 = distinct !DILexicalBlock(scope: !2523, file: !58, line: 88, column: 5)
!2528 = !DILocation(line: 88, column: 5, scope: !2523)
!2529 = !DILocalVariable(name: "finished", scope: !2427, file: !58, line: 46, type: !14)
!2530 = !DILocation(line: 90, column: 27, scope: !2531)
!2531 = distinct !DILexicalBlock(scope: !2527, file: !58, line: 88, column: 44)
!2532 = !DILocalVariable(name: "col_upper_bound", scope: !2427, file: !58, line: 47, type: !45)
!2533 = !DILocalVariable(name: "col", scope: !2534, file: !58, line: 93, type: !45)
!2534 = distinct !DILexicalBlock(scope: !2531, file: !58, line: 93, column: 9)
!2535 = !DILocation(line: 0, scope: !2534)
!2536 = !DILocation(line: 93, column: 14, scope: !2534)
!2537 = !DILocation(line: 0, scope: !2531)
!2538 = !DILocation(line: 93, scope: !2534)
!2539 = !DILocation(line: 93, column: 33, scope: !2540)
!2540 = distinct !DILexicalBlock(scope: !2534, file: !58, line: 93, column: 9)
!2541 = !DILocation(line: 93, column: 9, scope: !2534)
!2542 = distinct !{!2542, !2528, !2543, !307}
!2543 = !DILocation(line: 122, column: 5, scope: !2523)
!2544 = !DILocation(line: 97, column: 50, scope: !2545)
!2545 = distinct !DILexicalBlock(scope: !2540, file: !58, line: 93, column: 60)
!2546 = !DILocation(line: 97, column: 44, scope: !2545)
!2547 = !DILocation(line: 97, column: 30, scope: !2545)
!2548 = !DILocation(line: 97, column: 73, scope: !2545)
!2549 = !DILocalVariable(name: "correct_column", scope: !2427, file: !58, line: 48, type: !14)
!2550 = !DILocation(line: 99, column: 63, scope: !2545)
!2551 = !DILocation(line: 99, column: 48, scope: !2545)
!2552 = !DILocation(line: 99, column: 46, scope: !2545)
!2553 = !DILocalVariable(name: "u", scope: !2545, file: !58, line: 99, type: !14)
!2554 = !DILocation(line: 0, scope: !2545)
!2555 = !DILocation(line: 100, column: 13, scope: !2545)
!2556 = !DILocation(line: 100, column: 20, scope: !2545)
!2557 = !DILocalVariable(name: "i", scope: !2558, file: !58, line: 102, type: !45)
!2558 = distinct !DILexicalBlock(scope: !2545, file: !58, line: 102, column: 13)
!2559 = !DILocation(line: 0, scope: !2558)
!2560 = !DILocation(line: 102, column: 18, scope: !2558)
!2561 = !DILocation(line: 102, scope: !2558)
!2562 = !DILocation(line: 102, column: 31, scope: !2563)
!2563 = distinct !DILexicalBlock(scope: !2558, file: !58, line: 102, column: 13)
!2564 = !DILocation(line: 102, column: 13, scope: !2558)
!2565 = !DILocation(line: 103, column: 53, scope: !2566)
!2566 = distinct !DILexicalBlock(scope: !2563, file: !58, line: 102, column: 46)
!2567 = !DILocation(line: 103, column: 45, scope: !2566)
!2568 = !DILocation(line: 103, column: 34, scope: !2566)
!2569 = !DILocation(line: 103, column: 95, scope: !2566)
!2570 = !DILocation(line: 103, column: 99, scope: !2566)
!2571 = !DILocation(line: 103, column: 91, scope: !2566)
!2572 = !DILocation(line: 103, column: 80, scope: !2566)
!2573 = !DILocation(line: 103, column: 115, scope: !2566)
!2574 = !DILocation(line: 103, column: 76, scope: !2566)
!2575 = !DILocation(line: 104, column: 49, scope: !2566)
!2576 = !DILocation(line: 104, column: 53, scope: !2566)
!2577 = !DILocation(line: 104, column: 45, scope: !2566)
!2578 = !DILocation(line: 104, column: 34, scope: !2566)
!2579 = !DILocation(line: 104, column: 69, scope: !2566)
!2580 = !DILocation(line: 104, column: 30, scope: !2566)
!2581 = !DILocation(line: 104, column: 95, scope: !2566)
!2582 = !DILocation(line: 104, column: 99, scope: !2566)
!2583 = !DILocation(line: 104, column: 91, scope: !2566)
!2584 = !DILocation(line: 104, column: 80, scope: !2566)
!2585 = !DILocation(line: 104, column: 115, scope: !2566)
!2586 = !DILocation(line: 104, column: 76, scope: !2566)
!2587 = !DILocation(line: 105, column: 49, scope: !2566)
!2588 = !DILocation(line: 105, column: 53, scope: !2566)
!2589 = !DILocation(line: 105, column: 45, scope: !2566)
!2590 = !DILocation(line: 105, column: 34, scope: !2566)
!2591 = !DILocation(line: 105, column: 69, scope: !2566)
!2592 = !DILocation(line: 105, column: 30, scope: !2566)
!2593 = !DILocation(line: 105, column: 95, scope: !2566)
!2594 = !DILocation(line: 105, column: 99, scope: !2566)
!2595 = !DILocation(line: 105, column: 91, scope: !2566)
!2596 = !DILocation(line: 105, column: 80, scope: !2566)
!2597 = !DILocation(line: 105, column: 115, scope: !2566)
!2598 = !DILocation(line: 105, column: 76, scope: !2566)
!2599 = !DILocation(line: 106, column: 49, scope: !2566)
!2600 = !DILocation(line: 106, column: 53, scope: !2566)
!2601 = !DILocation(line: 106, column: 45, scope: !2566)
!2602 = !DILocation(line: 106, column: 34, scope: !2566)
!2603 = !DILocation(line: 106, column: 69, scope: !2566)
!2604 = !DILocation(line: 106, column: 30, scope: !2566)
!2605 = !DILocation(line: 106, column: 95, scope: !2566)
!2606 = !DILocation(line: 106, column: 99, scope: !2566)
!2607 = !DILocation(line: 106, column: 91, scope: !2566)
!2608 = !DILocation(line: 106, column: 80, scope: !2566)
!2609 = !DILocation(line: 106, column: 115, scope: !2566)
!2610 = !DILocation(line: 106, column: 76, scope: !2566)
!2611 = !DILocalVariable(name: "tmp", scope: !2566, file: !58, line: 103, type: !6)
!2612 = !DILocation(line: 0, scope: !2566)
!2613 = !DILocation(line: 108, column: 23, scope: !2566)
!2614 = !DILocation(line: 110, column: 34, scope: !2566)
!2615 = !DILocation(line: 110, column: 17, scope: !2566)
!2616 = !DILocation(line: 110, column: 48, scope: !2566)
!2617 = !DILocation(line: 111, column: 56, scope: !2566)
!2618 = !DILocation(line: 111, column: 34, scope: !2566)
!2619 = !DILocation(line: 111, column: 17, scope: !2566)
!2620 = !DILocation(line: 111, column: 48, scope: !2566)
!2621 = !DILocation(line: 112, column: 56, scope: !2566)
!2622 = !DILocation(line: 112, column: 34, scope: !2566)
!2623 = !DILocation(line: 112, column: 17, scope: !2566)
!2624 = !DILocation(line: 112, column: 48, scope: !2566)
!2625 = !DILocation(line: 113, column: 56, scope: !2566)
!2626 = !DILocation(line: 113, column: 34, scope: !2566)
!2627 = !DILocation(line: 113, column: 17, scope: !2566)
!2628 = !DILocation(line: 113, column: 48, scope: !2566)
!2629 = !DILocation(line: 114, column: 56, scope: !2566)
!2630 = !DILocation(line: 114, column: 34, scope: !2566)
!2631 = !DILocation(line: 114, column: 17, scope: !2566)
!2632 = !DILocation(line: 114, column: 48, scope: !2566)
!2633 = !DILocation(line: 115, column: 56, scope: !2566)
!2634 = !DILocation(line: 115, column: 34, scope: !2566)
!2635 = !DILocation(line: 115, column: 17, scope: !2566)
!2636 = !DILocation(line: 115, column: 48, scope: !2566)
!2637 = !DILocation(line: 116, column: 56, scope: !2566)
!2638 = !DILocation(line: 116, column: 34, scope: !2566)
!2639 = !DILocation(line: 116, column: 17, scope: !2566)
!2640 = !DILocation(line: 116, column: 48, scope: !2566)
!2641 = !DILocation(line: 117, column: 56, scope: !2566)
!2642 = !DILocation(line: 117, column: 34, scope: !2566)
!2643 = !DILocation(line: 117, column: 17, scope: !2566)
!2644 = !DILocation(line: 117, column: 48, scope: !2566)
!2645 = !DILocation(line: 102, column: 40, scope: !2563)
!2646 = !DILocation(line: 102, column: 13, scope: !2563)
!2647 = distinct !{!2647, !2564, !2648, !307}
!2648 = !DILocation(line: 118, column: 13, scope: !2558)
!2649 = !DILocation(line: 120, column: 33, scope: !2545)
!2650 = !DILocation(line: 93, column: 56, scope: !2540)
!2651 = !DILocation(line: 93, column: 9, scope: !2540)
!2652 = distinct !{!2652, !2541, !2653, !307}
!2653 = !DILocation(line: 121, column: 9, scope: !2534)
!2654 = !DILocation(line: 124, column: 1, scope: !2427)
!2655 = distinct !DISubprogram(name: "mat_mul", scope: !496, file: !496, line: 79, type: !1379, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2656 = !DILocalVariable(name: "a", arg: 1, scope: !2655, file: !496, line: 79, type: !49)
!2657 = !DILocation(line: 0, scope: !2655)
!2658 = !DILocalVariable(name: "b", arg: 2, scope: !2655, file: !496, line: 79, type: !49)
!2659 = !DILocalVariable(name: "c", arg: 3, scope: !2655, file: !496, line: 80, type: !18)
!2660 = !DILocalVariable(name: "colrow_ab", arg: 4, scope: !2655, file: !496, line: 80, type: !45)
!2661 = !DILocalVariable(name: "row_a", arg: 5, scope: !2655, file: !496, line: 80, type: !45)
!2662 = !DILocalVariable(name: "col_b", arg: 6, scope: !2655, file: !496, line: 80, type: !45)
!2663 = !DILocalVariable(name: "i", scope: !2664, file: !496, line: 81, type: !45)
!2664 = distinct !DILexicalBlock(scope: !2655, file: !496, line: 81, column: 5)
!2665 = !DILocation(line: 0, scope: !2664)
!2666 = !DILocation(line: 81, column: 10, scope: !2664)
!2667 = !DILocation(line: 81, scope: !2664)
!2668 = !DILocation(line: 81, column: 23, scope: !2669)
!2669 = distinct !DILexicalBlock(scope: !2664, file: !496, line: 81, column: 5)
!2670 = !DILocation(line: 81, column: 5, scope: !2664)
!2671 = !DILocation(line: 82, scope: !2672)
!2672 = distinct !DILexicalBlock(scope: !2673, file: !496, line: 82, column: 9)
!2673 = distinct !DILexicalBlock(scope: !2669, file: !496, line: 81, column: 53)
!2674 = !DILocalVariable(name: "j", scope: !2672, file: !496, line: 82, type: !45)
!2675 = !DILocation(line: 0, scope: !2672)
!2676 = !DILocation(line: 82, column: 27, scope: !2677)
!2677 = distinct !DILexicalBlock(scope: !2672, file: !496, line: 82, column: 9)
!2678 = !DILocation(line: 82, column: 9, scope: !2672)
!2679 = !DILocation(line: 83, column: 31, scope: !2680)
!2680 = distinct !DILexicalBlock(scope: !2677, file: !496, line: 82, column: 46)
!2681 = !DILocation(line: 83, column: 18, scope: !2680)
!2682 = !DILocation(line: 83, column: 16, scope: !2680)
!2683 = !DILocation(line: 82, column: 36, scope: !2677)
!2684 = !DILocation(line: 82, column: 41, scope: !2677)
!2685 = !DILocation(line: 82, column: 9, scope: !2677)
!2686 = distinct !{!2686, !2678, !2687, !307}
!2687 = !DILocation(line: 84, column: 9, scope: !2672)
!2688 = !DILocation(line: 81, column: 32, scope: !2669)
!2689 = !DILocation(line: 81, column: 39, scope: !2669)
!2690 = !DILocation(line: 81, column: 5, scope: !2669)
!2691 = distinct !{!2691, !2670, !2692, !307}
!2692 = !DILocation(line: 85, column: 5, scope: !2664)
!2693 = !DILocation(line: 86, column: 1, scope: !2655)
!2694 = distinct !DISubprogram(name: "sub_f", scope: !496, file: !496, line: 48, type: !1502, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2695 = !DILocalVariable(name: "a", arg: 1, scope: !2694, file: !496, line: 48, type: !14)
!2696 = !DILocation(line: 0, scope: !2694)
!2697 = !DILocalVariable(name: "b", arg: 2, scope: !2694, file: !496, line: 48, type: !14)
!2698 = !DILocation(line: 49, column: 14, scope: !2694)
!2699 = !DILocation(line: 49, column: 5, scope: !2694)
!2700 = distinct !DISubprogram(name: "EF", scope: !2701, file: !2701, line: 60, type: !2702, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2701 = !DIFile(filename: "../../../src/generic/echelon_form.h", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!2702 = !DISubroutineType(types: !2703)
!2703 = !{null, !18, !45, !45}
!2704 = !DILocalVariable(name: "A", arg: 1, scope: !2700, file: !2701, line: 60, type: !18)
!2705 = !DILocation(line: 0, scope: !2700)
!2706 = !DILocalVariable(name: "nrows", arg: 2, scope: !2700, file: !2701, line: 60, type: !45)
!2707 = !DILocalVariable(name: "ncols", arg: 3, scope: !2700, file: !2701, line: 60, type: !45)
!2708 = !DILocalVariable(name: "_pivot_row", scope: !2700, file: !2701, line: 62, type: !2709, align: 256)
!2709 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 384, elements: !2710)
!2710 = !{!2711}
!2711 = !DISubrange(count: 6)
!2712 = !DILocation(line: 62, column: 27, scope: !2700)
!2713 = !DILocalVariable(name: "_pivot_row2", scope: !2700, file: !2701, line: 63, type: !2709, align: 256)
!2714 = !DILocation(line: 63, column: 27, scope: !2700)
!2715 = !DILocalVariable(name: "packed_A", scope: !2700, file: !2701, line: 64, type: !2716, align: 256)
!2716 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 29952, elements: !2717)
!2717 = !{!2718}
!2718 = !DISubrange(count: 468)
!2719 = !DILocation(line: 64, column: 27, scope: !2700)
!2720 = !DILocation(line: 66, column: 26, scope: !2700)
!2721 = !DILocation(line: 66, column: 32, scope: !2700)
!2722 = !DILocalVariable(name: "row_len", scope: !2700, file: !2701, line: 66, type: !45)
!2723 = !DILocalVariable(name: "i", scope: !2724, file: !2701, line: 69, type: !45)
!2724 = distinct !DILexicalBlock(scope: !2700, file: !2701, line: 69, column: 5)
!2725 = !DILocation(line: 0, scope: !2724)
!2726 = !DILocation(line: 69, column: 10, scope: !2724)
!2727 = !DILocation(line: 69, scope: !2724)
!2728 = !DILocation(line: 69, column: 23, scope: !2729)
!2729 = distinct !DILexicalBlock(scope: !2724, file: !2701, line: 69, column: 5)
!2730 = !DILocation(line: 69, column: 5, scope: !2724)
!2731 = !DILocation(line: 77, column: 5, scope: !2732)
!2732 = distinct !DILexicalBlock(scope: !2700, file: !2701, line: 77, column: 5)
!2733 = !DILocation(line: 70, column: 29, scope: !2734)
!2734 = distinct !DILexicalBlock(scope: !2729, file: !2701, line: 69, column: 37)
!2735 = !DILocation(line: 70, column: 25, scope: !2734)
!2736 = !DILocation(line: 70, column: 51, scope: !2734)
!2737 = !DILocation(line: 70, column: 47, scope: !2734)
!2738 = !DILocation(line: 70, column: 9, scope: !2734)
!2739 = !DILocation(line: 69, column: 33, scope: !2729)
!2740 = !DILocation(line: 69, column: 5, scope: !2729)
!2741 = distinct !{!2741, !2730, !2742, !307}
!2742 = !DILocation(line: 71, column: 5, scope: !2724)
!2743 = !DILocation(line: 77, scope: !2732)
!2744 = !DILocalVariable(name: "pivot_row", scope: !2700, file: !2701, line: 76, type: !45)
!2745 = !DILocalVariable(name: "pivot_col", scope: !2732, file: !2701, line: 77, type: !45)
!2746 = !DILocation(line: 0, scope: !2732)
!2747 = !DILocation(line: 77, column: 39, scope: !2748)
!2748 = distinct !DILexicalBlock(scope: !2732, file: !2701, line: 77, column: 5)
!2749 = !DILocation(line: 79, column: 37, scope: !2750)
!2750 = distinct !DILexicalBlock(scope: !2748, file: !2701, line: 77, column: 61)
!2751 = !DILocalVariable(name: "pivot_row_lower_bound", scope: !2750, file: !2701, line: 79, type: !45)
!2752 = !DILocation(line: 0, scope: !2750)
!2753 = !DILocation(line: 80, column: 37, scope: !2750)
!2754 = !DILocalVariable(name: "pivot_row_upper_bound", scope: !2750, file: !2701, line: 80, type: !45)
!2755 = !DILocalVariable(name: "i", scope: !2756, file: !2701, line: 85, type: !45)
!2756 = distinct !DILexicalBlock(scope: !2750, file: !2701, line: 85, column: 9)
!2757 = !DILocation(line: 0, scope: !2756)
!2758 = !DILocation(line: 85, column: 14, scope: !2756)
!2759 = !DILocation(line: 85, scope: !2756)
!2760 = !DILocation(line: 85, column: 27, scope: !2761)
!2761 = distinct !DILexicalBlock(scope: !2756, file: !2701, line: 85, column: 9)
!2762 = !DILocation(line: 85, column: 9, scope: !2756)
!2763 = !DILocation(line: 93, column: 9, scope: !2764)
!2764 = distinct !DILexicalBlock(scope: !2750, file: !2701, line: 93, column: 9)
!2765 = !DILocation(line: 86, column: 13, scope: !2766)
!2766 = distinct !DILexicalBlock(scope: !2761, file: !2701, line: 85, column: 43)
!2767 = !DILocation(line: 86, column: 27, scope: !2766)
!2768 = !DILocation(line: 87, column: 13, scope: !2766)
!2769 = !DILocation(line: 87, column: 28, scope: !2766)
!2770 = !DILocation(line: 85, column: 39, scope: !2761)
!2771 = !DILocation(line: 85, column: 9, scope: !2761)
!2772 = distinct !{!2772, !2762, !2773, !307}
!2773 = !DILocation(line: 88, column: 9, scope: !2756)
!2774 = !DILocation(line: 0, scope: !2764)
!2775 = !DILocalVariable(name: "row", scope: !2764, file: !2701, line: 93, type: !45)
!2776 = !DILocalVariable(name: "pivot", scope: !2750, file: !2701, line: 91, type: !14)
!2777 = !DILocalVariable(name: "pivot_is_zero", scope: !2750, file: !2701, line: 92, type: !6)
!2778 = !DILocation(line: 94, column: 24, scope: !2779)
!2779 = distinct !DILexicalBlock(scope: !2764, file: !2701, line: 93, column: 9)
!2780 = !DILocation(line: 94, column: 21, scope: !2779)
!2781 = !DILocation(line: 96, column: 38, scope: !2782)
!2782 = distinct !DILexicalBlock(scope: !2779, file: !2701, line: 94, column: 80)
!2783 = !DILocation(line: 96, column: 37, scope: !2782)
!2784 = !DILocalVariable(name: "is_pivot_row", scope: !2782, file: !2701, line: 96, type: !6)
!2785 = !DILocation(line: 0, scope: !2782)
!2786 = !DILocation(line: 97, column: 40, scope: !2782)
!2787 = !DILocalVariable(name: "below_pivot_row", scope: !2782, file: !2701, line: 97, type: !6)
!2788 = !DILocalVariable(name: "j", scope: !2789, file: !2701, line: 99, type: !45)
!2789 = distinct !DILexicalBlock(scope: !2782, file: !2701, line: 99, column: 13)
!2790 = !DILocation(line: 0, scope: !2789)
!2791 = !DILocation(line: 99, column: 18, scope: !2789)
!2792 = !DILocation(line: 99, scope: !2789)
!2793 = !DILocation(line: 99, column: 31, scope: !2794)
!2794 = distinct !DILexicalBlock(scope: !2789, file: !2701, line: 99, column: 13)
!2795 = !DILocation(line: 99, column: 13, scope: !2789)
!2796 = !DILocation(line: 100, column: 67, scope: !2797)
!2797 = distinct !DILexicalBlock(scope: !2794, file: !2701, line: 99, column: 47)
!2798 = !DILocation(line: 100, column: 48, scope: !2797)
!2799 = !DILocation(line: 101, column: 47, scope: !2797)
!2800 = !DILocation(line: 101, column: 57, scope: !2797)
!2801 = !DILocation(line: 101, column: 34, scope: !2797)
!2802 = !DILocation(line: 100, column: 85, scope: !2797)
!2803 = !DILocation(line: 100, column: 17, scope: !2797)
!2804 = !DILocation(line: 100, column: 31, scope: !2797)
!2805 = !DILocation(line: 99, column: 43, scope: !2794)
!2806 = !DILocation(line: 99, column: 13, scope: !2794)
!2807 = distinct !{!2807, !2795, !2808, !307}
!2808 = !DILocation(line: 102, column: 13, scope: !2789)
!2809 = !DILocation(line: 103, column: 21, scope: !2782)
!2810 = !DILocation(line: 104, column: 44, scope: !2782)
!2811 = !DILocation(line: 104, column: 30, scope: !2782)
!2812 = !DILocation(line: 104, column: 29, scope: !2782)
!2813 = !DILocation(line: 94, column: 76, scope: !2779)
!2814 = !DILocation(line: 93, column: 9, scope: !2779)
!2815 = distinct !{!2815, !2763, !2816, !307}
!2816 = !DILocation(line: 105, column: 9, scope: !2764)
!2817 = !DILocation(line: 108, column: 19, scope: !2750)
!2818 = !DILocalVariable(name: "inverse", scope: !2700, file: !2701, line: 75, type: !14)
!2819 = !DILocation(line: 109, column: 9, scope: !2750)
!2820 = !DILocalVariable(name: "row", scope: !2821, file: !2701, line: 113, type: !45)
!2821 = distinct !DILexicalBlock(scope: !2750, file: !2701, line: 113, column: 9)
!2822 = !DILocation(line: 0, scope: !2821)
!2823 = !DILocation(line: 113, column: 14, scope: !2821)
!2824 = !DILocation(line: 113, scope: !2821)
!2825 = !DILocation(line: 113, column: 51, scope: !2826)
!2826 = distinct !DILexicalBlock(scope: !2821, file: !2701, line: 113, column: 9)
!2827 = !DILocation(line: 113, column: 9, scope: !2821)
!2828 = !DILocation(line: 114, column: 33, scope: !2829)
!2829 = distinct !DILexicalBlock(scope: !2826, file: !2701, line: 113, column: 84)
!2830 = !DILocation(line: 114, column: 63, scope: !2829)
!2831 = !DILocalVariable(name: "do_copy", scope: !2829, file: !2701, line: 114, type: !6)
!2832 = !DILocation(line: 0, scope: !2829)
!2833 = !DILocalVariable(name: "do_not_copy", scope: !2829, file: !2701, line: 115, type: !6)
!2834 = !DILocalVariable(name: "col", scope: !2835, file: !2701, line: 116, type: !45)
!2835 = distinct !DILexicalBlock(scope: !2829, file: !2701, line: 116, column: 13)
!2836 = !DILocation(line: 0, scope: !2835)
!2837 = !DILocation(line: 116, column: 18, scope: !2835)
!2838 = !DILocation(line: 116, scope: !2835)
!2839 = !DILocation(line: 116, column: 35, scope: !2840)
!2840 = distinct !DILexicalBlock(scope: !2835, file: !2701, line: 116, column: 13)
!2841 = !DILocation(line: 116, column: 13, scope: !2835)
!2842 = !DILocation(line: 118, column: 49, scope: !2843)
!2843 = distinct !DILexicalBlock(scope: !2840, file: !2701, line: 116, column: 53)
!2844 = !DILocation(line: 118, column: 59, scope: !2843)
!2845 = !DILocation(line: 118, column: 36, scope: !2843)
!2846 = !DILocation(line: 118, column: 34, scope: !2843)
!2847 = !DILocation(line: 119, column: 32, scope: !2843)
!2848 = !DILocation(line: 119, column: 30, scope: !2843)
!2849 = !DILocation(line: 118, column: 67, scope: !2843)
!2850 = !DILocation(line: 117, column: 30, scope: !2843)
!2851 = !DILocation(line: 117, column: 40, scope: !2843)
!2852 = !DILocation(line: 117, column: 17, scope: !2843)
!2853 = !DILocation(line: 117, column: 47, scope: !2843)
!2854 = !DILocation(line: 116, column: 49, scope: !2840)
!2855 = !DILocation(line: 116, column: 13, scope: !2840)
!2856 = distinct !{!2856, !2841, !2857, !307}
!2857 = !DILocation(line: 120, column: 13, scope: !2835)
!2858 = !DILocation(line: 113, column: 80, scope: !2826)
!2859 = !DILocation(line: 113, column: 9, scope: !2826)
!2860 = distinct !{!2860, !2827, !2861, !307}
!2861 = !DILocation(line: 121, column: 9, scope: !2821)
!2862 = !DILocation(line: 124, scope: !2863)
!2863 = distinct !DILexicalBlock(scope: !2750, file: !2701, line: 124, column: 9)
!2864 = !DILocalVariable(name: "row", scope: !2863, file: !2701, line: 124, type: !45)
!2865 = !DILocation(line: 0, scope: !2863)
!2866 = !DILocation(line: 124, column: 51, scope: !2867)
!2867 = distinct !DILexicalBlock(scope: !2863, file: !2701, line: 124, column: 9)
!2868 = !DILocation(line: 124, column: 9, scope: !2863)
!2869 = !DILocation(line: 125, column: 46, scope: !2870)
!2870 = distinct !DILexicalBlock(scope: !2867, file: !2701, line: 124, column: 67)
!2871 = !DILocalVariable(name: "below_pivot", scope: !2870, file: !2701, line: 125, type: !14)
!2872 = !DILocation(line: 0, scope: !2870)
!2873 = !DILocation(line: 126, column: 74, scope: !2870)
!2874 = !DILocation(line: 126, column: 68, scope: !2870)
!2875 = !DILocation(line: 126, column: 41, scope: !2870)
!2876 = !DILocalVariable(name: "elt_to_elim", scope: !2870, file: !2701, line: 126, type: !14)
!2877 = !DILocation(line: 128, column: 63, scope: !2870)
!2878 = !DILocation(line: 129, column: 52, scope: !2870)
!2879 = !DILocation(line: 129, column: 46, scope: !2870)
!2880 = !DILocation(line: 128, column: 13, scope: !2870)
!2881 = !DILocation(line: 124, column: 63, scope: !2867)
!2882 = !DILocation(line: 124, column: 9, scope: !2867)
!2883 = distinct !{!2883, !2868, !2884, !307}
!2884 = !DILocation(line: 130, column: 9, scope: !2863)
!2885 = !DILocation(line: 132, column: 19, scope: !2750)
!2886 = !DILocation(line: 77, column: 57, scope: !2748)
!2887 = !DILocation(line: 77, column: 5, scope: !2748)
!2888 = distinct !{!2888, !2731, !2889, !307}
!2889 = !DILocation(line: 133, column: 5, scope: !2732)
!2890 = !DILocation(line: 138, scope: !2891)
!2891 = distinct !DILexicalBlock(scope: !2700, file: !2701, line: 138, column: 5)
!2892 = !DILocalVariable(name: "i", scope: !2891, file: !2701, line: 138, type: !45)
!2893 = !DILocation(line: 0, scope: !2891)
!2894 = !DILocation(line: 138, column: 23, scope: !2895)
!2895 = distinct !DILexicalBlock(scope: !2891, file: !2701, line: 138, column: 5)
!2896 = !DILocation(line: 138, column: 5, scope: !2891)
!2897 = !DILocation(line: 139, column: 47, scope: !2898)
!2898 = distinct !DILexicalBlock(scope: !2895, file: !2701, line: 138, column: 37)
!2899 = !DILocation(line: 139, column: 43, scope: !2898)
!2900 = !DILocation(line: 139, column: 9, scope: !2898)
!2901 = !DILocalVariable(name: "j", scope: !2902, file: !2701, line: 140, type: !45)
!2902 = distinct !DILexicalBlock(scope: !2898, file: !2701, line: 140, column: 9)
!2903 = !DILocation(line: 0, scope: !2902)
!2904 = !DILocation(line: 140, column: 14, scope: !2902)
!2905 = !DILocation(line: 140, scope: !2902)
!2906 = !DILocation(line: 140, column: 27, scope: !2907)
!2907 = distinct !DILexicalBlock(scope: !2902, file: !2701, line: 140, column: 9)
!2908 = !DILocation(line: 140, column: 9, scope: !2902)
!2909 = !DILocation(line: 141, column: 32, scope: !2910)
!2910 = distinct !DILexicalBlock(scope: !2907, file: !2701, line: 140, column: 41)
!2911 = !DILocation(line: 141, column: 17, scope: !2910)
!2912 = !DILocation(line: 141, column: 13, scope: !2910)
!2913 = !DILocation(line: 141, column: 30, scope: !2910)
!2914 = !DILocation(line: 140, column: 37, scope: !2907)
!2915 = !DILocation(line: 140, column: 9, scope: !2907)
!2916 = distinct !{!2916, !2908, !2917, !307}
!2917 = !DILocation(line: 142, column: 9, scope: !2902)
!2918 = !DILocation(line: 138, column: 33, scope: !2895)
!2919 = !DILocation(line: 138, column: 5, scope: !2895)
!2920 = distinct !{!2920, !2896, !2921, !307}
!2921 = !DILocation(line: 143, column: 5, scope: !2891)
!2922 = !DILocation(line: 145, column: 5, scope: !2700)
!2923 = !DILocation(line: 146, column: 5, scope: !2700)
!2924 = !DILocation(line: 147, column: 5, scope: !2700)
!2925 = !DILocation(line: 148, column: 5, scope: !2700)
!2926 = !DILocation(line: 149, column: 1, scope: !2700)
!2927 = distinct !DISubprogram(name: "ct_compare_8", scope: !2928, file: !2928, line: 51, type: !1502, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2928 = !DIFile(filename: "../../../src/arithmetic.h", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!2929 = !DILocalVariable(name: "a", arg: 1, scope: !2927, file: !2928, line: 51, type: !14)
!2930 = !DILocation(line: 0, scope: !2927)
!2931 = !DILocalVariable(name: "b", arg: 2, scope: !2927, file: !2928, line: 51, type: !14)
!2932 = !DILocation(line: 52, column: 42, scope: !2927)
!2933 = !DILocation(line: 52, column: 13, scope: !2927)
!2934 = !DILocation(line: 52, column: 71, scope: !2927)
!2935 = !DILocation(line: 52, column: 69, scope: !2927)
!2936 = !DILocation(line: 52, column: 5, scope: !2927)
!2937 = distinct !DISubprogram(name: "mul_fx8", scope: !496, file: !496, line: 28, type: !2938, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2938 = !DISubroutineType(types: !2939)
!2939 = !{!6, !14, !6}
!2940 = !DILocalVariable(name: "a", arg: 1, scope: !2937, file: !496, line: 28, type: !14)
!2941 = !DILocation(line: 0, scope: !2937)
!2942 = !DILocalVariable(name: "b", arg: 2, scope: !2937, file: !496, line: 28, type: !6)
!2943 = !DILocation(line: 31, column: 13, scope: !2937)
!2944 = !DILocation(line: 31, column: 10, scope: !2937)
!2945 = !DILocation(line: 31, column: 17, scope: !2937)
!2946 = !DILocalVariable(name: "p", scope: !2937, file: !496, line: 30, type: !6)
!2947 = !DILocation(line: 32, column: 13, scope: !2937)
!2948 = !DILocation(line: 32, column: 10, scope: !2937)
!2949 = !DILocation(line: 32, column: 17, scope: !2937)
!2950 = !DILocation(line: 32, column: 7, scope: !2937)
!2951 = !DILocation(line: 33, column: 13, scope: !2937)
!2952 = !DILocation(line: 33, column: 10, scope: !2937)
!2953 = !DILocation(line: 33, column: 17, scope: !2937)
!2954 = !DILocation(line: 33, column: 7, scope: !2937)
!2955 = !DILocation(line: 34, column: 13, scope: !2937)
!2956 = !DILocation(line: 34, column: 10, scope: !2937)
!2957 = !DILocation(line: 34, column: 17, scope: !2937)
!2958 = !DILocation(line: 34, column: 7, scope: !2937)
!2959 = !DILocalVariable(name: "top_p", scope: !2937, file: !496, line: 37, type: !6)
!2960 = !DILocation(line: 38, column: 32, scope: !2937)
!2961 = !DILocation(line: 38, column: 47, scope: !2937)
!2962 = !DILocation(line: 38, column: 38, scope: !2937)
!2963 = !DILocation(line: 38, column: 54, scope: !2937)
!2964 = !DILocalVariable(name: "out", scope: !2937, file: !496, line: 38, type: !6)
!2965 = !DILocation(line: 39, column: 5, scope: !2937)
!2966 = distinct !DISubprogram(name: "ef_pack_m_vec", scope: !2701, file: !2701, line: 24, type: !2967, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!2967 = !DISubroutineType(types: !2968)
!2968 = !{null, !49, !5, !45}
!2969 = !DILocalVariable(name: "in", arg: 1, scope: !2966, file: !2701, line: 24, type: !49)
!2970 = !DILocation(line: 0, scope: !2966)
!2971 = !DILocalVariable(name: "out", arg: 2, scope: !2966, file: !2701, line: 24, type: !5)
!2972 = !DILocalVariable(name: "ncols", arg: 3, scope: !2966, file: !2701, line: 24, type: !45)
!2973 = !DILocalVariable(name: "out8", scope: !2966, file: !2701, line: 26, type: !18)
!2974 = !DILocalVariable(name: "i", scope: !2966, file: !2701, line: 25, type: !45)
!2975 = !DILocation(line: 27, column: 9, scope: !2976)
!2976 = distinct !DILexicalBlock(scope: !2966, file: !2701, line: 27, column: 5)
!2977 = !DILocation(line: 27, scope: !2976)
!2978 = !DILocation(line: 27, column: 17, scope: !2979)
!2979 = distinct !DILexicalBlock(scope: !2976, file: !2701, line: 27, column: 5)
!2980 = !DILocation(line: 27, column: 20, scope: !2979)
!2981 = !DILocation(line: 27, column: 5, scope: !2976)
!2982 = !DILocation(line: 31, column: 23, scope: !2983)
!2983 = distinct !DILexicalBlock(scope: !2979, file: !2701, line: 27, column: 36)
!2984 = !DILocation(line: 31, column: 44, scope: !2983)
!2985 = !DILocation(line: 31, column: 40, scope: !2983)
!2986 = !DILocation(line: 31, column: 48, scope: !2983)
!2987 = !DILocation(line: 31, column: 37, scope: !2983)
!2988 = !DILocation(line: 31, column: 15, scope: !2983)
!2989 = !DILocation(line: 31, column: 9, scope: !2983)
!2990 = !DILocation(line: 31, column: 20, scope: !2983)
!2991 = !DILocation(line: 27, column: 31, scope: !2979)
!2992 = !DILocation(line: 27, column: 5, scope: !2979)
!2993 = distinct !{!2993, !2981, !2994, !307}
!2994 = !DILocation(line: 33, column: 5, scope: !2976)
!2995 = !DILocation(line: 34, column: 19, scope: !2996)
!2996 = distinct !DILexicalBlock(scope: !2966, file: !2701, line: 34, column: 9)
!2997 = !DILocation(line: 38, column: 23, scope: !2998)
!2998 = distinct !DILexicalBlock(scope: !2996, file: !2701, line: 34, column: 24)
!2999 = !DILocation(line: 38, column: 15, scope: !2998)
!3000 = !DILocation(line: 38, column: 9, scope: !2998)
!3001 = !DILocation(line: 38, column: 20, scope: !2998)
!3002 = !DILocation(line: 40, column: 5, scope: !2998)
!3003 = !DILocation(line: 41, column: 1, scope: !2966)
!3004 = distinct !DISubprogram(name: "ct_compare_64", scope: !2928, file: !2928, line: 46, type: !3005, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3005 = !DISubroutineType(types: !3006)
!3006 = !{!6, !45, !45}
!3007 = !DILocalVariable(name: "a", arg: 1, scope: !3004, file: !2928, line: 46, type: !45)
!3008 = !DILocation(line: 0, scope: !3004)
!3009 = !DILocalVariable(name: "b", arg: 2, scope: !3004, file: !2928, line: 46, type: !45)
!3010 = !DILocation(line: 47, column: 38, scope: !3004)
!3011 = !DILocation(line: 47, column: 44, scope: !3004)
!3012 = !DILocation(line: 47, column: 73, scope: !3004)
!3013 = !DILocation(line: 47, column: 71, scope: !3004)
!3014 = !DILocation(line: 47, column: 5, scope: !3004)
!3015 = distinct !DISubprogram(name: "ct_64_is_greater_than", scope: !2928, file: !2928, line: 35, type: !3005, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3016 = !DILocalVariable(name: "a", arg: 1, scope: !3015, file: !2928, line: 35, type: !45)
!3017 = !DILocation(line: 0, scope: !3015)
!3018 = !DILocalVariable(name: "b", arg: 2, scope: !3015, file: !2928, line: 35, type: !45)
!3019 = !DILocalVariable(name: "diff", scope: !3015, file: !2928, line: 36, type: !46)
!3020 = !DILocation(line: 37, column: 30, scope: !3015)
!3021 = !DILocation(line: 37, column: 59, scope: !3015)
!3022 = !DILocation(line: 37, column: 57, scope: !3015)
!3023 = !DILocation(line: 37, column: 5, scope: !3015)
!3024 = distinct !DISubprogram(name: "m_extract_element", scope: !2701, file: !2701, line: 16, type: !3025, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3025 = !DISubroutineType(types: !3026)
!3026 = !{!14, !330, !45}
!3027 = !DILocalVariable(name: "in", arg: 1, scope: !3024, file: !2701, line: 16, type: !330)
!3028 = !DILocation(line: 0, scope: !3024)
!3029 = !DILocalVariable(name: "index", arg: 2, scope: !3024, file: !2701, line: 16, type: !45)
!3030 = !DILocation(line: 17, column: 27, scope: !3024)
!3031 = !DILocalVariable(name: "leg", scope: !3024, file: !2701, line: 17, type: !243)
!3032 = !DILocation(line: 18, column: 30, scope: !3024)
!3033 = !DILocalVariable(name: "offset", scope: !3024, file: !2701, line: 18, type: !243)
!3034 = !DILocation(line: 20, column: 13, scope: !3024)
!3035 = !DILocation(line: 20, column: 31, scope: !3024)
!3036 = !DILocation(line: 20, column: 21, scope: !3024)
!3037 = !DILocation(line: 20, column: 12, scope: !3024)
!3038 = !DILocation(line: 20, column: 5, scope: !3024)
!3039 = distinct !DISubprogram(name: "inverse_f", scope: !496, file: !496, line: 57, type: !3040, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3040 = !DISubroutineType(types: !3041)
!3041 = !{!14, !14}
!3042 = !DILocalVariable(name: "a", arg: 1, scope: !3039, file: !496, line: 57, type: !14)
!3043 = !DILocation(line: 0, scope: !3039)
!3044 = !DILocation(line: 61, column: 24, scope: !3039)
!3045 = !DILocalVariable(name: "a2", scope: !3039, file: !496, line: 61, type: !14)
!3046 = !DILocation(line: 62, column: 24, scope: !3039)
!3047 = !DILocalVariable(name: "a4", scope: !3039, file: !496, line: 62, type: !14)
!3048 = !DILocation(line: 63, column: 24, scope: !3039)
!3049 = !DILocalVariable(name: "a8", scope: !3039, file: !496, line: 63, type: !14)
!3050 = !DILocation(line: 64, column: 24, scope: !3039)
!3051 = !DILocalVariable(name: "a6", scope: !3039, file: !496, line: 64, type: !14)
!3052 = !DILocation(line: 65, column: 25, scope: !3039)
!3053 = !DILocalVariable(name: "a14", scope: !3039, file: !496, line: 65, type: !14)
!3054 = !DILocation(line: 67, column: 5, scope: !3039)
!3055 = distinct !DISubprogram(name: "vec_mul_add_u64", scope: !2928, file: !2928, line: 94, type: !3056, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3056 = !DISubroutineType(types: !3057)
!3057 = !{null, !243, !330, !14, !5}
!3058 = !DILocalVariable(name: "legs", arg: 1, scope: !3055, file: !2928, line: 94, type: !243)
!3059 = !DILocation(line: 0, scope: !3055)
!3060 = !DILocalVariable(name: "in", arg: 2, scope: !3055, file: !2928, line: 94, type: !330)
!3061 = !DILocalVariable(name: "a", arg: 3, scope: !3055, file: !2928, line: 94, type: !14)
!3062 = !DILocalVariable(name: "acc", arg: 4, scope: !3055, file: !2928, line: 94, type: !5)
!3063 = !DILocation(line: 95, column: 20, scope: !3055)
!3064 = !DILocalVariable(name: "tab", scope: !3055, file: !2928, line: 95, type: !19)
!3065 = !DILocalVariable(name: "lsb_ask", scope: !3055, file: !2928, line: 97, type: !6)
!3066 = !DILocalVariable(name: "i", scope: !3067, file: !2928, line: 99, type: !45)
!3067 = distinct !DILexicalBlock(scope: !3055, file: !2928, line: 99, column: 5)
!3068 = !DILocation(line: 0, scope: !3067)
!3069 = !DILocation(line: 99, column: 9, scope: !3067)
!3070 = !DILocation(line: 99, scope: !3067)
!3071 = !DILocation(line: 99, column: 20, scope: !3072)
!3072 = distinct !DILexicalBlock(scope: !3067, file: !2928, line: 99, column: 5)
!3073 = !DILocation(line: 99, column: 5, scope: !3067)
!3074 = !DILocation(line: 100, column: 21, scope: !3075)
!3075 = distinct !DILexicalBlock(scope: !3072, file: !2928, line: 99, column: 32)
!3076 = !DILocation(line: 100, column: 33, scope: !3075)
!3077 = !DILocation(line: 100, column: 51, scope: !3075)
!3078 = !DILocation(line: 100, column: 46, scope: !3075)
!3079 = !DILocation(line: 100, column: 44, scope: !3075)
!3080 = !DILocation(line: 101, column: 27, scope: !3075)
!3081 = !DILocation(line: 101, column: 33, scope: !3075)
!3082 = !DILocation(line: 101, column: 52, scope: !3075)
!3083 = !DILocation(line: 101, column: 59, scope: !3075)
!3084 = !DILocation(line: 101, column: 46, scope: !3075)
!3085 = !DILocation(line: 101, column: 44, scope: !3075)
!3086 = !DILocation(line: 101, column: 17, scope: !3075)
!3087 = !DILocation(line: 102, column: 21, scope: !3075)
!3088 = !DILocation(line: 102, column: 27, scope: !3075)
!3089 = !DILocation(line: 102, column: 33, scope: !3075)
!3090 = !DILocation(line: 102, column: 52, scope: !3075)
!3091 = !DILocation(line: 102, column: 59, scope: !3075)
!3092 = !DILocation(line: 102, column: 46, scope: !3075)
!3093 = !DILocation(line: 102, column: 44, scope: !3075)
!3094 = !DILocation(line: 102, column: 17, scope: !3075)
!3095 = !DILocation(line: 103, column: 21, scope: !3075)
!3096 = !DILocation(line: 103, column: 27, scope: !3075)
!3097 = !DILocation(line: 103, column: 33, scope: !3075)
!3098 = !DILocation(line: 103, column: 52, scope: !3075)
!3099 = !DILocation(line: 103, column: 59, scope: !3075)
!3100 = !DILocation(line: 103, column: 46, scope: !3075)
!3101 = !DILocation(line: 103, column: 44, scope: !3075)
!3102 = !DILocation(line: 103, column: 17, scope: !3075)
!3103 = !DILocation(line: 100, column: 9, scope: !3075)
!3104 = !DILocation(line: 100, column: 16, scope: !3075)
!3105 = !DILocation(line: 99, column: 29, scope: !3072)
!3106 = !DILocation(line: 99, column: 5, scope: !3072)
!3107 = distinct !{!3107, !3073, !3108, !307}
!3108 = !DILocation(line: 104, column: 5, scope: !3067)
!3109 = !DILocation(line: 105, column: 1, scope: !3055)
!3110 = distinct !DISubprogram(name: "ef_unpack_m_vec", scope: !2701, file: !2701, line: 44, type: !3111, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3111 = !DISubroutineType(types: !3112)
!3112 = !{null, !45, !330, !18}
!3113 = !DILocalVariable(name: "legs", arg: 1, scope: !3110, file: !2701, line: 44, type: !45)
!3114 = !DILocation(line: 0, scope: !3110)
!3115 = !DILocalVariable(name: "in", arg: 2, scope: !3110, file: !2701, line: 44, type: !330)
!3116 = !DILocalVariable(name: "out", arg: 3, scope: !3110, file: !2701, line: 44, type: !18)
!3117 = !DILocalVariable(name: "in8", scope: !3110, file: !2701, line: 45, type: !49)
!3118 = !DILocalVariable(name: "i", scope: !3119, file: !2701, line: 46, type: !45)
!3119 = distinct !DILexicalBlock(scope: !3110, file: !2701, line: 46, column: 5)
!3120 = !DILocation(line: 0, scope: !3119)
!3121 = !DILocation(line: 46, column: 9, scope: !3119)
!3122 = !DILocation(line: 46, scope: !3119)
!3123 = !DILocation(line: 46, column: 29, scope: !3124)
!3124 = distinct !DILexicalBlock(scope: !3119, file: !2701, line: 46, column: 5)
!3125 = !DILocation(line: 46, column: 22, scope: !3124)
!3126 = !DILocation(line: 46, column: 5, scope: !3119)
!3127 = !DILocation(line: 51, column: 26, scope: !3128)
!3128 = distinct !DILexicalBlock(scope: !3124, file: !2701, line: 46, column: 42)
!3129 = !DILocation(line: 51, column: 21, scope: !3128)
!3130 = !DILocation(line: 51, column: 31, scope: !3128)
!3131 = !DILocation(line: 51, column: 9, scope: !3128)
!3132 = !DILocation(line: 51, column: 18, scope: !3128)
!3133 = !DILocation(line: 52, column: 26, scope: !3128)
!3134 = !DILocation(line: 52, column: 21, scope: !3128)
!3135 = !DILocation(line: 52, column: 30, scope: !3128)
!3136 = !DILocation(line: 52, column: 14, scope: !3128)
!3137 = !DILocation(line: 52, column: 9, scope: !3128)
!3138 = !DILocation(line: 52, column: 18, scope: !3128)
!3139 = !DILocation(line: 46, column: 37, scope: !3124)
!3140 = !DILocation(line: 46, column: 5, scope: !3124)
!3141 = distinct !{!3141, !3126, !3142, !307}
!3142 = !DILocation(line: 54, column: 5, scope: !3119)
!3143 = !DILocation(line: 55, column: 1, scope: !3110)
!3144 = distinct !DISubprogram(name: "mul_table", scope: !496, file: !496, line: 129, type: !497, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3145 = !DILocalVariable(name: "b", arg: 1, scope: !3144, file: !496, line: 129, type: !12)
!3146 = !DILocation(line: 0, scope: !3144)
!3147 = !DILocation(line: 130, column: 19, scope: !3144)
!3148 = !DILocation(line: 130, column: 33, scope: !3144)
!3149 = !DILocalVariable(name: "x", scope: !3144, file: !496, line: 130, type: !19)
!3150 = !DILocalVariable(name: "high_nibble_mask", scope: !3144, file: !496, line: 132, type: !19)
!3151 = !DILocation(line: 134, column: 28, scope: !3144)
!3152 = !DILocalVariable(name: "high_half", scope: !3144, file: !496, line: 134, type: !19)
!3153 = !DILocation(line: 135, column: 28, scope: !3144)
!3154 = !DILocation(line: 135, column: 47, scope: !3144)
!3155 = !DILocation(line: 135, column: 34, scope: !3144)
!3156 = !DILocation(line: 135, column: 5, scope: !3144)
!3157 = distinct !DISubprogram(name: "mul_f", scope: !496, file: !496, line: 9, type: !1502, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3158 = !DILocalVariable(name: "a", arg: 1, scope: !3157, file: !496, line: 9, type: !14)
!3159 = !DILocation(line: 0, scope: !3157)
!3160 = !DILocalVariable(name: "b", arg: 2, scope: !3157, file: !496, line: 9, type: !14)
!3161 = !DILocation(line: 14, column: 10, scope: !3157)
!3162 = !DILocation(line: 14, column: 7, scope: !3157)
!3163 = !DILocation(line: 17, column: 17, scope: !3157)
!3164 = !DILocalVariable(name: "p", scope: !3157, file: !496, line: 11, type: !14)
!3165 = !DILocation(line: 18, column: 13, scope: !3157)
!3166 = !DILocation(line: 18, column: 17, scope: !3157)
!3167 = !DILocation(line: 18, column: 7, scope: !3157)
!3168 = !DILocation(line: 19, column: 13, scope: !3157)
!3169 = !DILocation(line: 19, column: 17, scope: !3157)
!3170 = !DILocation(line: 19, column: 7, scope: !3157)
!3171 = !DILocation(line: 20, column: 13, scope: !3157)
!3172 = !DILocation(line: 20, column: 17, scope: !3157)
!3173 = !DILocation(line: 20, column: 7, scope: !3157)
!3174 = !DILocalVariable(name: "top_p", scope: !3157, file: !496, line: 23, type: !14)
!3175 = !DILocation(line: 24, column: 37, scope: !3157)
!3176 = !DILocation(line: 24, column: 52, scope: !3157)
!3177 = !DILocation(line: 24, column: 43, scope: !3157)
!3178 = !DILocation(line: 24, column: 59, scope: !3157)
!3179 = !DILocalVariable(name: "out", scope: !3157, file: !496, line: 24, type: !14)
!3180 = !DILocation(line: 25, column: 5, scope: !3157)
!3181 = distinct !DISubprogram(name: "lincomb", scope: !496, file: !496, line: 70, type: !1510, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3182 = !DILocalVariable(name: "a", arg: 1, scope: !3181, file: !496, line: 70, type: !49)
!3183 = !DILocation(line: 0, scope: !3181)
!3184 = !DILocalVariable(name: "b", arg: 2, scope: !3181, file: !496, line: 71, type: !49)
!3185 = !DILocalVariable(name: "n", arg: 3, scope: !3181, file: !496, line: 71, type: !45)
!3186 = !DILocalVariable(name: "m", arg: 4, scope: !3181, file: !496, line: 71, type: !45)
!3187 = !DILocalVariable(name: "ret", scope: !3181, file: !496, line: 72, type: !14)
!3188 = !DILocalVariable(name: "i", scope: !3189, file: !496, line: 73, type: !45)
!3189 = distinct !DILexicalBlock(scope: !3181, file: !496, line: 73, column: 5)
!3190 = !DILocation(line: 0, scope: !3189)
!3191 = !DILocation(line: 73, column: 10, scope: !3189)
!3192 = !DILocation(line: 73, scope: !3189)
!3193 = !DILocation(line: 73, column: 23, scope: !3194)
!3194 = distinct !DILexicalBlock(scope: !3189, file: !496, line: 73, column: 5)
!3195 = !DILocation(line: 73, column: 5, scope: !3189)
!3196 = !DILocation(line: 74, column: 27, scope: !3197)
!3197 = distinct !DILexicalBlock(scope: !3194, file: !496, line: 73, column: 41)
!3198 = !DILocation(line: 74, column: 33, scope: !3197)
!3199 = !DILocation(line: 74, column: 21, scope: !3197)
!3200 = !DILocation(line: 74, column: 15, scope: !3197)
!3201 = !DILocation(line: 73, column: 28, scope: !3194)
!3202 = !DILocation(line: 73, column: 35, scope: !3194)
!3203 = !DILocation(line: 73, column: 5, scope: !3194)
!3204 = distinct !{!3204, !3195, !3205, !307}
!3205 = !DILocation(line: 75, column: 5, scope: !3189)
!3206 = !DILocation(line: 76, column: 5, scope: !3181)
!3207 = distinct !DISubprogram(name: "add_f", scope: !496, file: !496, line: 43, type: !1502, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !28)
!3208 = !DILocalVariable(name: "a", arg: 1, scope: !3207, file: !496, line: 43, type: !14)
!3209 = !DILocation(line: 0, scope: !3207)
!3210 = !DILocalVariable(name: "b", arg: 2, scope: !3207, file: !496, line: 43, type: !14)
!3211 = !DILocation(line: 44, column: 14, scope: !3207)
!3212 = !DILocation(line: 44, column: 5, scope: !3207)
