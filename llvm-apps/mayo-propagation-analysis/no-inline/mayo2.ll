; ModuleID = 'composite'
source_filename = "composite"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "arm-unknown-none-eabi"

%struct.sk_t = type { [12672 x i64], [1088 x i8] }

@__const.example_mayo.msg = private unnamed_addr constant <{ i8, [31 x i8] }> <{ i8 14, [31 x i8] zeroinitializer }>, align 1
@.str = private unnamed_addr constant [17 x i8] c"Example with %s\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [7 x i8] c"MAYO_2\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [17 x i8] c"mayo_keypair -> \00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [6 x i8] c"FAIL\0A\00", align 1, !dbg !14
@.str.4 = private unnamed_addr constant [4 x i8] c"OK\0A\00", align 1, !dbg !19
@.str.5 = private unnamed_addr constant [19 x i8] c"mayo_expand_sk -> \00", align 1, !dbg !24
@.str.6 = private unnamed_addr constant [19 x i8] c"mayo_expand_pk -> \00", align 1, !dbg !29
@.str.7 = private unnamed_addr constant [14 x i8] c"mayo_sign -> \00", align 1, !dbg !31
@.str.8 = private unnamed_addr constant [39 x i8] c"mayo_open (with correct signature) -> \00", align 1, !dbg !36
@.str.9 = private unnamed_addr constant [41 x i8] c"mayo_verify (with correct signature) -> \00", align 1, !dbg !41
@f_tail = internal unnamed_addr constant [4 x i8] c"\08\00\02\08", align 1, !dbg !46
@pqmayo_MAYO_2_ref_uint32_t_blocker = dso_local local_unnamed_addr global i32 0, align 4, !dbg !82
@pqmayo_MAYO_2_ref_uint64_t_blocker = dso_local global i64 0, align 8, !dbg !97
@pqmayo_MAYO_2_ref_unsigned_char_blocker = dso_local global i8 0, align 1, !dbg !101

; Function Attrs: nounwind
define dso_local range(i32 -1, 1) i32 @main() local_unnamed_addr #0 !dbg !113 {
entry:
  %call = call fastcc i32 @example_mayo(ptr noundef null) #6, !dbg !116
  ret i32 %call, !dbg !117
}

; Function Attrs: nounwind
define internal fastcc range(i32 -1, 1) i32 @example_mayo(ptr noundef %p) unnamed_addr #0 !dbg !118 {
entry:
  %msglen = alloca i32, align 4
  %smlen = alloca i32, align 4
  %msg = alloca [32 x i8], align 1
  %msg2 = alloca [32 x i8], align 1
    #dbg_value(ptr %p, !151, !DIExpression(), !152)
    #dbg_value(i32 32, !153, !DIExpression(), !152)
  store i32 32, ptr %msglen, align 4, !dbg !154
    #dbg_value(i32 32, !153, !DIExpression(), !152)
    #dbg_value(i32 218, !155, !DIExpression(), !152)
  store i32 218, ptr %smlen, align 4, !dbg !156
  %call = call dereferenceable_or_null(4912) ptr @calloc(i32 noundef 4912, i32 noundef 1) #7, !dbg !157
    #dbg_value(ptr %call, !158, !DIExpression(), !152)
  %call1 = call dereferenceable_or_null(24) ptr @calloc(i32 noundef 24, i32 noundef 1) #7, !dbg !159
    #dbg_value(ptr %call1, !160, !DIExpression(), !152)
  %call2 = call dereferenceable_or_null(106272) ptr @calloc(i32 noundef 1, i32 noundef 106272) #7, !dbg !161
    #dbg_value(ptr %call2, !162, !DIExpression(), !152)
  %call3 = call dereferenceable_or_null(102464) ptr @calloc(i32 noundef 1, i32 noundef 102464) #7, !dbg !163
    #dbg_value(ptr %call3, !164, !DIExpression(), !152)
  %0 = load i32, ptr %msglen, align 4, !dbg !179
    #dbg_value(i32 %0, !153, !DIExpression(), !152)
  %add4 = add i32 %0, 186, !dbg !180
  %call5 = call ptr @calloc(i32 noundef %add4, i32 noundef 1) #7, !dbg !181
    #dbg_value(ptr %call5, !182, !DIExpression(), !152)
    #dbg_declare(ptr %msg, !183, !DIExpression(), !187)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %msg, ptr noundef nonnull align 1 dereferenceable(32) @__const.example_mayo.msg, i32 32, i1 false), !dbg !187
    #dbg_declare(ptr %msg2, !188, !DIExpression(), !189)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %msg2, i8 0, i32 32, i1 false), !dbg !189
  %call6 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #8, !dbg !190
  %call7 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.2) #8, !dbg !191
  %call8 = call i32 @pqmayo_MAYO_2_ref_mayo_keypair(ptr noundef %p, ptr noundef %call, ptr noundef %call1) #6, !dbg !192
    #dbg_value(i32 %call8, !193, !DIExpression(), !152)
  %cmp.not = icmp eq i32 %call8, 0, !dbg !194
  br i1 %cmp.not, label %if.else, label %if.then, !dbg !194

if.then:                                          ; preds = %entry
  %call9 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.3) #8, !dbg !196
    #dbg_value(i32 -1, !193, !DIExpression(), !152)
  br label %err, !dbg !198

if.else:                                          ; preds = %entry
  %call10 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4) #8, !dbg !199
  %call11 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.5) #8, !dbg !201
  %call12 = call i32 @pqmayo_MAYO_2_ref_mayo_expand_sk(ptr noundef %p, ptr noundef %call1, ptr noundef %call3) #6, !dbg !202
    #dbg_value(i32 %call12, !193, !DIExpression(), !152)
  %cmp13.not = icmp eq i32 %call12, 0, !dbg !203
  br i1 %cmp13.not, label %if.else16, label %if.then14, !dbg !203

if.then14:                                        ; preds = %if.else
  %call15 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.3) #8, !dbg !205
    #dbg_value(i32 -1, !193, !DIExpression(), !152)
  br label %err, !dbg !207

if.else16:                                        ; preds = %if.else
  %call17 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4) #8, !dbg !208
  %call19 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.6) #8, !dbg !210
  %call20 = call i32 @pqmayo_MAYO_2_ref_mayo_expand_pk(ptr noundef %p, ptr noundef %call, ptr noundef %call2) #6, !dbg !211
    #dbg_value(i32 %call20, !193, !DIExpression(), !152)
  %cmp21.not = icmp eq i32 %call20, 0, !dbg !212
  br i1 %cmp21.not, label %if.else24, label %if.then22, !dbg !212

if.then22:                                        ; preds = %if.else16
  %call23 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.3) #8, !dbg !214
    #dbg_value(i32 -1, !193, !DIExpression(), !152)
  br label %err, !dbg !216

if.else24:                                        ; preds = %if.else16
  %call25 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4) #8, !dbg !217
  %call27 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.7) #8, !dbg !219
  %1 = load i32, ptr %msglen, align 4, !dbg !220
    #dbg_value(i32 %1, !153, !DIExpression(), !152)
    #dbg_value(ptr %smlen, !155, !DIExpression(DW_OP_deref), !152)
  %call28 = call i32 @pqmayo_MAYO_2_ref_mayo_sign(ptr noundef %p, ptr noundef %call5, ptr noundef nonnull %smlen, ptr noundef nonnull %msg, i32 noundef %1, ptr noundef %call1) #6, !dbg !221
    #dbg_value(i32 %call28, !193, !DIExpression(), !152)
  %cmp29.not = icmp eq i32 %call28, 0, !dbg !222
  br i1 %cmp29.not, label %if.else32, label %if.then30, !dbg !222

if.then30:                                        ; preds = %if.else24
  %call31 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.3) #8, !dbg !224
    #dbg_value(i32 -1, !193, !DIExpression(), !152)
  br label %err, !dbg !226

if.else32:                                        ; preds = %if.else24
  %call33 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4) #8, !dbg !227
  %call35 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.8) #8, !dbg !229
  %2 = load i32, ptr %smlen, align 4, !dbg !230
    #dbg_value(i32 %2, !155, !DIExpression(), !152)
    #dbg_value(ptr %msglen, !153, !DIExpression(DW_OP_deref), !152)
  %call37 = call i32 @pqmayo_MAYO_2_ref_mayo_open(ptr noundef %p, ptr noundef nonnull %msg2, ptr noundef nonnull %msglen, ptr noundef %call5, i32 noundef %2, ptr noundef %call) #6, !dbg !231
    #dbg_value(i32 %call37, !193, !DIExpression(), !152)
  %cmp38.not = icmp eq i32 %call37, 0, !dbg !232
  br i1 %cmp38.not, label %lor.lhs.false, label %if.then42, !dbg !234

lor.lhs.false:                                    ; preds = %if.else32
  %3 = load i32, ptr %msglen, align 4, !dbg !235
    #dbg_value(i32 %3, !153, !DIExpression(), !152)
  %call41 = call i32 @memcmp(ptr noundef nonnull %msg, ptr noundef nonnull %msg2, i32 noundef %3) #8, !dbg !236
  %tobool.not = icmp eq i32 %call41, 0, !dbg !236
  br i1 %tobool.not, label %if.else44, label %if.then42, !dbg !234

if.then42:                                        ; preds = %lor.lhs.false, %if.else32
  %call43 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.3) #8, !dbg !237
    #dbg_value(i32 -1, !193, !DIExpression(), !152)
  br label %err, !dbg !239

if.else44:                                        ; preds = %lor.lhs.false
    #dbg_value(i32 0, !193, !DIExpression(), !152)
  %call45 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4) #8, !dbg !240
  %call47 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.9) #8, !dbg !242
  %4 = load i32, ptr %msglen, align 4, !dbg !243
    #dbg_value(i32 %4, !153, !DIExpression(), !152)
  %call49 = call i32 @pqmayo_MAYO_2_ref_mayo_verify(ptr noundef %p, ptr noundef nonnull %msg, i32 noundef %4, ptr noundef %call5, ptr noundef %call) #6, !dbg !244
    #dbg_value(i32 %call49, !193, !DIExpression(), !152)
  %cmp50.not = icmp eq i32 %call49, 0, !dbg !245
  br i1 %cmp50.not, label %if.else53, label %if.then51, !dbg !245

if.then51:                                        ; preds = %if.else44
  %call52 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.3) #8, !dbg !247
    #dbg_value(i32 -1, !193, !DIExpression(), !152)
  br label %err, !dbg !249

if.else53:                                        ; preds = %if.else44
    #dbg_value(i32 0, !193, !DIExpression(), !152)
  %call54 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4) #8, !dbg !250
  br label %err, !dbg !252

err:                                              ; preds = %if.else53, %if.then51, %if.then42, %if.then30, %if.then22, %if.then14, %if.then
  %res.0 = phi i32 [ -1, %if.then ], [ -1, %if.then14 ], [ -1, %if.then22 ], [ -1, %if.then30 ], [ -1, %if.then42 ], [ -1, %if.then51 ], [ 0, %if.else53 ], !dbg !152
    #dbg_value(i32 %res.0, !193, !DIExpression(), !152)
    #dbg_label(!253, !254)
  call void @free(ptr noundef %call) #8, !dbg !255
  call void @free(ptr noundef %call2) #8, !dbg !256
  call void @mayo_secure_free(ptr noundef %call1, i32 noundef 24) #8, !dbg !257
  call void @mayo_secure_free(ptr noundef %call3, i32 noundef 102464) #8, !dbg !258
  call void @free(ptr noundef %call5) #8, !dbg !259
  ret i32 %res.0, !dbg !260
}

; Function Attrs: allocsize(0,1)
declare dso_local ptr @calloc(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

declare dso_local i32 @printf(ptr noundef, ...) local_unnamed_addr #4

declare dso_local i32 @memcmp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare dso_local void @free(ptr noundef) local_unnamed_addr #4

declare dso_local void @mayo_secure_free(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_2_ref_mayo_keypair(ptr noundef %p, ptr noundef %pk, ptr noundef %sk) local_unnamed_addr #0 !dbg !261 {
entry:
    #dbg_value(ptr %p, !292, !DIExpression(), !293)
    #dbg_value(ptr %pk, !294, !DIExpression(), !293)
    #dbg_value(ptr %sk, !295, !DIExpression(), !293)
    #dbg_value(i32 0, !296, !DIExpression(), !293)
  %call = call i32 @pqmayo_MAYO_2_ref_mayo_keypair_compact(ptr noundef %p, ptr noundef %pk, ptr noundef %sk) #6, !dbg !297
    #dbg_value(i32 %call, !296, !DIExpression(), !293)
    #dbg_label(!298, !299)
  ret i32 %call, !dbg !300
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_2_ref_mayo_keypair_compact(ptr noundef %p, ptr noundef %cpk, ptr noundef %csk) local_unnamed_addr #0 !dbg !301 {
entry:
  %S = alloca [560 x i8], align 1
  %P = alloca [12672 x i64], align 8
  %P3 = alloca [1156 x i64], align 8
  %O = alloca [1088 x i8], align 1
  %P3_upper = alloca [612 x i64], align 8
    #dbg_value(ptr %p, !302, !DIExpression(), !303)
    #dbg_value(ptr %cpk, !304, !DIExpression(), !303)
    #dbg_value(ptr %csk, !305, !DIExpression(), !303)
    #dbg_value(i32 0, !306, !DIExpression(), !303)
    #dbg_value(ptr %csk, !307, !DIExpression(), !303)
    #dbg_declare(ptr %S, !308, !DIExpression(), !312)
    #dbg_declare(ptr %P, !313, !DIExpression(), !314)
    #dbg_declare(ptr %P3, !315, !DIExpression(), !319)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(9248) %P3, i8 0, i32 9248, i1 false), !dbg !319
    #dbg_declare(ptr %O, !320, !DIExpression(), !322)
    #dbg_value(i32 4, !323, !DIExpression(), !303)
    #dbg_value(i32 64, !325, !DIExpression(), !303)
    #dbg_value(i32 64, !326, !DIExpression(), !303)
    #dbg_value(i32 17, !327, !DIExpression(), !303)
    #dbg_value(i32 544, !328, !DIExpression(), !303)
    #dbg_value(i32 8320, !329, !DIExpression(), !303)
    #dbg_value(i32 612, !330, !DIExpression(), !303)
    #dbg_value(i32 16, !331, !DIExpression(), !303)
    #dbg_value(i32 24, !332, !DIExpression(), !303)
    #dbg_value(ptr %P, !333, !DIExpression(), !303)
  %add.ptr = getelementptr inbounds nuw i8, ptr %P, i32 66560, !dbg !334
    #dbg_value(ptr %add.ptr, !335, !DIExpression(), !303)
  %call = call i32 @randombytes(ptr noundef %csk, i32 noundef 24) #8, !dbg !336
  %cmp.not = icmp eq i32 %call, 0, !dbg !338
  br i1 %cmp.not, label %if.end, label %err, !dbg !338

if.end:                                           ; preds = %entry
    #dbg_value(ptr %P, !333, !DIExpression(), !303)
  %call3 = call i32 @shake256(ptr noundef nonnull %S, i32 noundef 560, ptr noundef %csk, i32 noundef 24) #8, !dbg !339
    #dbg_value(ptr %S, !340, !DIExpression(), !303)
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %S, i32 16, !dbg !341
  call fastcc void @decode(ptr noundef nonnull %add.ptr6, ptr noundef nonnull %O, i32 noundef 1088) #6, !dbg !342
  call fastcc void @expand_P1_P2(ptr noundef %p, ptr noundef nonnull %P, ptr noundef nonnull %S) #6, !dbg !343
  call fastcc void @compute_P3(ptr noundef %p, ptr noundef nonnull %P, ptr noundef nonnull %add.ptr, ptr noundef nonnull %O, ptr noundef nonnull %P3) #6, !dbg !344
  %call11 = call ptr @memcpy(ptr noundef %cpk, ptr noundef nonnull %S, i32 noundef 16) #8, !dbg !345
    #dbg_declare(ptr %P3_upper, !346, !DIExpression(), !350)
  call void @pqmayo_MAYO_2_ref_m_upper(ptr noundef %p, ptr noundef nonnull %P3, ptr noundef nonnull %P3_upper, i32 noundef 17) #6, !dbg !351
  %add.ptr15 = getelementptr inbounds nuw i8, ptr %cpk, i32 16, !dbg !352
  call fastcc void @pack_m_vecs(ptr noundef nonnull %P3_upper, ptr noundef nonnull %add.ptr15, i32 noundef 153, i32 noundef 64) #6, !dbg !353
  br label %err, !dbg !353

err:                                              ; preds = %entry, %if.end
  %ret.0 = phi i32 [ 0, %if.end ], [ 1, %entry ], !dbg !303
    #dbg_value(i32 %ret.0, !306, !DIExpression(), !303)
    #dbg_label(!354, !355)
  call void @mayo_secure_clear(ptr noundef nonnull %O, i32 noundef 1088) #8, !dbg !356
  call void @mayo_secure_clear(ptr noundef nonnull %add.ptr, i32 noundef 34816) #8, !dbg !357
  call void @mayo_secure_clear(ptr noundef nonnull %P3, i32 noundef 9248) #8, !dbg !358
  ret i32 %ret.0, !dbg !359
}

declare dso_local i32 @randombytes(ptr noundef, i32 noundef) local_unnamed_addr #4

declare dso_local i32 @shake256(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
define internal fastcc void @decode(ptr noundef %m, ptr noundef %mdec, i32 noundef %mdeclen) unnamed_addr #0 !dbg !360 {
entry:
    #dbg_value(ptr %m, !363, !DIExpression(), !364)
    #dbg_value(ptr %mdec, !365, !DIExpression(), !364)
    #dbg_value(i32 %mdeclen, !366, !DIExpression(), !364)
    #dbg_value(i32 0, !367, !DIExpression(), !364)
  br label %for.cond, !dbg !368

for.cond:                                         ; preds = %for.body, %entry
  %mdec.addr.0 = phi ptr [ %mdec, %entry ], [ %incdec.ptr5, %for.body ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !370
    #dbg_value(i32 %i.0, !367, !DIExpression(), !364)
    #dbg_value(ptr %mdec.addr.0, !365, !DIExpression(), !364)
  %div = sdiv i32 %mdeclen, 2, !dbg !371
  %cmp = icmp slt i32 %i.0, %div, !dbg !373
  br i1 %cmp, label %for.body, label %for.end, !dbg !374

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %m, i32 %i.0, !dbg !375
  %0 = load i8, ptr %arrayidx, align 1, !dbg !375
  %1 = and i8 %0, 15, !dbg !377
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %mdec.addr.0, i32 1, !dbg !378
    #dbg_value(ptr %incdec.ptr, !365, !DIExpression(), !364)
  store i8 %1, ptr %mdec.addr.0, align 1, !dbg !379
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %m, i32 %i.0, !dbg !380
  %2 = load i8, ptr %arrayidx2, align 1, !dbg !380
  %3 = lshr i8 %2, 4, !dbg !381
    #dbg_value(ptr %incdec.ptr, !365, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !364)
  store i8 %3, ptr %incdec.ptr, align 1, !dbg !382
  %incdec.ptr5 = getelementptr inbounds nuw i8, ptr %mdec.addr.0, i32 2, !dbg !383
    #dbg_value(ptr %incdec.ptr5, !365, !DIExpression(), !364)
  %inc = add nuw nsw i32 %i.0, 1, !dbg !384
    #dbg_value(i32 %inc, !367, !DIExpression(), !364)
  br label %for.cond, !dbg !385, !llvm.loop !386

for.end:                                          ; preds = %for.cond
  %mdec.addr.0.lcssa = phi ptr [ %mdec.addr.0, %for.cond ]
  %i.0.lcssa = phi i32 [ %i.0, %for.cond ], !dbg !370
  %4 = and i32 %mdeclen, -2147483647, !dbg !389
  %cmp6 = icmp eq i32 %4, 1, !dbg !389
  br i1 %cmp6, label %if.then, label %if.end, !dbg !389

if.then:                                          ; preds = %for.end
  %arrayidx8 = getelementptr inbounds nuw i8, ptr %m, i32 %i.0.lcssa, !dbg !391
  %5 = load i8, ptr %arrayidx8, align 1, !dbg !391
  %6 = and i8 %5, 15, !dbg !393
    #dbg_value(ptr %mdec.addr.0.lcssa, !365, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !364)
  store i8 %6, ptr %mdec.addr.0.lcssa, align 1, !dbg !394
  br label %if.end, !dbg !395

if.end:                                           ; preds = %if.then, %for.end
  ret void, !dbg !396
}

; Function Attrs: nounwind
define internal fastcc void @expand_P1_P2(ptr noundef %p, ptr noundef %P, ptr noundef %seed_pk) unnamed_addr #0 !dbg !397 {
entry:
    #dbg_value(ptr %p, !400, !DIExpression(), !401)
    #dbg_value(ptr %P, !402, !DIExpression(), !401)
    #dbg_value(ptr %seed_pk, !403, !DIExpression(), !401)
  %call = call i32 @AES_128_CTR(ptr noundef %P, i32 noundef 101376, ptr noundef %seed_pk, i32 noundef 16) #8, !dbg !404
  call fastcc void @unpack_m_vecs(ptr noundef %P, ptr noundef %P, i32 noundef 3168, i32 noundef 64) #6, !dbg !405
  ret void, !dbg !406
}

; Function Attrs: nounwind
define internal fastcc void @compute_P3(ptr noundef %p, ptr noundef %P1, ptr noundef %P2, ptr noundef %O, ptr noundef %P3) unnamed_addr #0 !dbg !407 {
entry:
    #dbg_value(ptr %p, !412, !DIExpression(), !413)
    #dbg_value(ptr %P1, !414, !DIExpression(), !413)
    #dbg_value(ptr %P2, !415, !DIExpression(), !413)
    #dbg_value(ptr %O, !416, !DIExpression(), !413)
    #dbg_value(ptr %P3, !417, !DIExpression(), !413)
    #dbg_value(i32 4, !418, !DIExpression(), !413)
    #dbg_value(i32 64, !419, !DIExpression(), !413)
    #dbg_value(i32 17, !420, !DIExpression(), !413)
  call fastcc void @P1_times_O(ptr noundef %p, ptr noundef %P1, ptr noundef %O, ptr noundef %P2) #6, !dbg !421
  call fastcc void @mul_add_mat_trans_x_m_mat(i32 noundef 4, ptr noundef %O, ptr noundef %P2, ptr noundef %P3, i32 noundef 64, i32 noundef 17, i32 noundef 17) #6, !dbg !422
  ret void, !dbg !423
}

declare dso_local ptr @memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
define internal fastcc void @pack_m_vecs(ptr noundef %in, ptr noundef %out, i32 noundef %vecs, i32 noundef %m) unnamed_addr #0 !dbg !424 {
entry:
    #dbg_value(ptr %in, !427, !DIExpression(), !428)
    #dbg_value(ptr %out, !429, !DIExpression(), !428)
    #dbg_value(i32 %vecs, !430, !DIExpression(), !428)
    #dbg_value(i32 %m, !431, !DIExpression(), !428)
  %add = add nsw i32 %m, 15, !dbg !432
  %div = sdiv i32 %add, 16, !dbg !433
    #dbg_value(i32 %div, !434, !DIExpression(), !428)
    #dbg_value(ptr %in, !435, !DIExpression(), !428)
    #dbg_value(i32 0, !436, !DIExpression(), !438)
  %smax = call i32 @llvm.smax.i32(i32 %vecs, i32 0), !dbg !439
  br label %for.cond, !dbg !439

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !440
    #dbg_value(i32 %i.0, !436, !DIExpression(), !438)
  %exitcond = icmp ne i32 %i.0, %smax, !dbg !441
  br i1 %exitcond, label %for.body, label %for.end, !dbg !443

for.body:                                         ; preds = %for.cond
  %mul = mul nsw i32 %i.0, %m, !dbg !444
  %div1 = sdiv i32 %mul, 2, !dbg !446
  %add.ptr = getelementptr inbounds i8, ptr %out, i32 %div1, !dbg !447
  %mul2 = mul nsw i32 %i.0, %div, !dbg !448
  %mul3 = shl i32 %mul2, 3, !dbg !449
  %add.ptr4 = getelementptr inbounds nuw i8, ptr %in, i32 %mul3, !dbg !450
  %div5 = sdiv i32 %m, 2, !dbg !451
  %call = call ptr @memmove(ptr noundef %add.ptr, ptr noundef %add.ptr4, i32 noundef %div5) #8, !dbg !452
  %inc = add nuw i32 %i.0, 1, !dbg !453
    #dbg_value(i32 %inc, !436, !DIExpression(), !438)
  br label %for.cond, !dbg !454, !llvm.loop !455

for.end:                                          ; preds = %for.cond
  ret void, !dbg !457
}

declare dso_local void @mayo_secure_clear(ptr noundef, i32 noundef) local_unnamed_addr #4

declare dso_local ptr @memmove(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
define internal fastcc void @P1_times_O(ptr noundef %p, ptr noundef %P1, ptr noundef %O, ptr noundef %acc) unnamed_addr #0 !dbg !458 {
entry:
    #dbg_value(ptr %p, !461, !DIExpression(), !462)
    #dbg_value(ptr %P1, !463, !DIExpression(), !462)
    #dbg_value(ptr %O, !464, !DIExpression(), !462)
    #dbg_value(ptr %acc, !465, !DIExpression(), !462)
  call fastcc void @mul_add_m_upper_triangular_mat_x_mat(i32 noundef 4, ptr noundef %P1, ptr noundef %O, ptr noundef %acc, i32 noundef 64, i32 noundef 64, i32 noundef 17, i32 noundef 1) #6, !dbg !466
  ret void, !dbg !467
}

; Function Attrs: nounwind
define internal fastcc void @mul_add_mat_trans_x_m_mat(i32 noundef %m_vec_limbs, ptr noundef %mat, ptr noundef %bs_mat, ptr noundef %acc, i32 noundef %mat_rows, i32 noundef %mat_cols, i32 noundef %bs_mat_cols) unnamed_addr #0 !dbg !468 {
entry:
    #dbg_value(i32 %m_vec_limbs, !471, !DIExpression(), !472)
    #dbg_value(ptr %mat, !473, !DIExpression(), !472)
    #dbg_value(ptr %bs_mat, !474, !DIExpression(), !472)
    #dbg_value(ptr %acc, !475, !DIExpression(), !472)
    #dbg_value(i32 %mat_rows, !476, !DIExpression(), !472)
    #dbg_value(i32 %mat_cols, !477, !DIExpression(), !472)
    #dbg_value(i32 %bs_mat_cols, !478, !DIExpression(), !472)
    #dbg_value(i32 0, !479, !DIExpression(), !481)
  %smax = call i32 @llvm.smax.i32(i32 %bs_mat_cols, i32 0), !dbg !482
  %smax1 = call i32 @llvm.smax.i32(i32 %mat_rows, i32 0), !dbg !482
  %smax3 = call i32 @llvm.smax.i32(i32 %mat_cols, i32 0), !dbg !482
  br label %for.cond, !dbg !482

for.cond:                                         ; preds = %for.inc17, %entry
  %r.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ], !dbg !483
    #dbg_value(i32 %r.0, !479, !DIExpression(), !481)
  %exitcond4 = icmp ne i32 %r.0, %smax3, !dbg !484
  br i1 %exitcond4, label %for.cond1.preheader, label %for.end19, !dbg !486

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !487

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc15
  %c.0 = phi i32 [ %inc, %for.inc15 ], [ 0, %for.cond1.preheader ], !dbg !490
    #dbg_value(i32 %c.0, !491, !DIExpression(), !492)
  %exitcond2 = icmp ne i32 %c.0, %smax1, !dbg !493
  br i1 %exitcond2, label %for.cond4.preheader, label %for.inc17, !dbg !487

for.cond4.preheader:                              ; preds = %for.cond1
  br label %for.cond4, !dbg !495

for.cond4:                                        ; preds = %for.cond4.preheader, %for.body6
  %k.0 = phi i32 [ %add14, %for.body6 ], [ 0, %for.cond4.preheader ], !dbg !498
    #dbg_value(i32 %k.0, !499, !DIExpression(), !500)
  %exitcond = icmp ne i32 %k.0, %smax, !dbg !501
  br i1 %exitcond, label %for.body6, label %for.inc15, !dbg !495

for.body6:                                        ; preds = %for.cond4
  %mul = mul nsw i32 %c.0, %bs_mat_cols, !dbg !503
  %add = add nsw i32 %mul, %k.0, !dbg !505
  %mul7 = mul nsw i32 %m_vec_limbs, %add, !dbg !506
  %add.ptr = getelementptr inbounds i64, ptr %bs_mat, i32 %mul7, !dbg !507
  %mul8 = mul nsw i32 %c.0, %mat_cols, !dbg !508
  %0 = getelementptr i8, ptr %mat, i32 %mul8, !dbg !509
  %arrayidx = getelementptr i8, ptr %0, i32 %r.0, !dbg !509
  %1 = load i8, ptr %arrayidx, align 1, !dbg !509
  %mul10 = mul nsw i32 %r.0, %bs_mat_cols, !dbg !510
  %add11 = add nsw i32 %mul10, %k.0, !dbg !511
  %mul12 = mul nsw i32 %m_vec_limbs, %add11, !dbg !512
  %add.ptr13 = getelementptr inbounds i64, ptr %acc, i32 %mul12, !dbg !513
  call fastcc void @m_vec_mul_add(i32 noundef %m_vec_limbs, ptr noundef %add.ptr, i8 noundef zeroext %1, ptr noundef %add.ptr13) #6, !dbg !514
  %add14 = add nuw i32 %k.0, 1, !dbg !515
    #dbg_value(i32 %add14, !499, !DIExpression(), !500)
  br label %for.cond4, !dbg !516, !llvm.loop !517

for.inc15:                                        ; preds = %for.cond4
  %inc = add nuw i32 %c.0, 1, !dbg !519
    #dbg_value(i32 %inc, !491, !DIExpression(), !492)
  br label %for.cond1, !dbg !520, !llvm.loop !521

for.inc17:                                        ; preds = %for.cond1
  %inc18 = add nuw i32 %r.0, 1, !dbg !523
    #dbg_value(i32 %inc18, !479, !DIExpression(), !481)
  br label %for.cond, !dbg !524, !llvm.loop !525

for.end19:                                        ; preds = %for.cond
  ret void, !dbg !527
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_mul_add(i32 noundef %m_vec_limbs, ptr noundef %in, i8 noundef zeroext %a, ptr noundef %acc) unnamed_addr #0 !dbg !528 {
entry:
    #dbg_value(i32 %m_vec_limbs, !532, !DIExpression(), !533)
    #dbg_value(ptr %in, !534, !DIExpression(), !533)
    #dbg_value(i8 %a, !535, !DIExpression(), !533)
    #dbg_value(ptr %acc, !536, !DIExpression(), !533)
  %call = call fastcc i32 @mul_table(i8 noundef zeroext %a) #6, !dbg !537
    #dbg_value(i32 %call, !538, !DIExpression(), !533)
    #dbg_value(i64 1229782938247303441, !539, !DIExpression(), !533)
    #dbg_value(i32 0, !540, !DIExpression(), !542)
  br label %for.cond, !dbg !543

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !544
    #dbg_value(i32 %i.0, !540, !DIExpression(), !542)
  %exitcond = icmp ne i32 %i.0, 4, !dbg !545
  br i1 %exitcond, label %for.body, label %for.end, !dbg !547

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !548
  %0 = load i64, ptr %arrayidx, align 8, !dbg !548
  %and = and i64 %0, 1229782938247303441, !dbg !550
  %and1 = and i32 %call, 255, !dbg !551
  %conv = zext nneg i32 %and1 to i64, !dbg !552
  %mul = mul i64 %and, %conv, !dbg !553
  %shr = lshr i64 %0, 1, !dbg !554
  %and3 = and i64 %shr, 1229782938247303441, !dbg !555
  %shr4 = lshr i32 %call, 8, !dbg !556
  %and5 = and i32 %shr4, 15, !dbg !557
  %conv6 = zext nneg i32 %and5 to i64, !dbg !558
  %mul7 = mul nuw i64 %and3, %conv6, !dbg !559
  %xor = xor i64 %mul, %mul7, !dbg !560
  %arrayidx8 = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !561
  %1 = load i64, ptr %arrayidx8, align 8, !dbg !561
  %shr9 = lshr i64 %1, 2, !dbg !562
  %and10 = and i64 %shr9, 1229782938247303441, !dbg !563
  %shr11 = lshr i32 %call, 16, !dbg !564
  %and12 = and i32 %shr11, 15, !dbg !565
  %conv13 = zext nneg i32 %and12 to i64, !dbg !566
  %mul14 = mul nuw i64 %and10, %conv13, !dbg !567
  %xor15 = xor i64 %xor, %mul14, !dbg !568
  %arrayidx16 = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !569
  %2 = load i64, ptr %arrayidx16, align 8, !dbg !569
  %shr17 = lshr i64 %2, 3, !dbg !570
  %and18 = and i64 %shr17, 1229782938247303441, !dbg !571
  %shr19 = lshr i32 %call, 24, !dbg !572
  %and20 = and i32 %shr19, 15, !dbg !573
  %conv21 = zext nneg i32 %and20 to i64, !dbg !574
  %mul22 = mul nuw i64 %and18, %conv21, !dbg !575
  %xor23 = xor i64 %xor15, %mul22, !dbg !576
  %arrayidx24 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !577
  %3 = load i64, ptr %arrayidx24, align 8, !dbg !578
  %xor25 = xor i64 %3, %xor23, !dbg !578
  store i64 %xor25, ptr %arrayidx24, align 8, !dbg !578
  %inc = add nuw nsw i32 %i.0, 1, !dbg !579
    #dbg_value(i32 %inc, !540, !DIExpression(), !542)
  br label %for.cond, !dbg !580, !llvm.loop !581

for.end:                                          ; preds = %for.cond
  ret void, !dbg !583
}

; Function Attrs: nounwind
define internal fastcc i32 @mul_table(i8 noundef zeroext %b) unnamed_addr #0 !dbg !584 {
entry:
    #dbg_value(i8 %b, !588, !DIExpression(), !589)
  %conv = zext i8 %b to i32, !dbg !590
  %mul = mul i32 %conv, 134480385, !dbg !591
    #dbg_value(i32 %mul, !592, !DIExpression(), !589)
    #dbg_value(i32 -252645136, !593, !DIExpression(), !589)
  %and = and i32 %mul, -252645136, !dbg !594
    #dbg_value(i32 %and, !595, !DIExpression(), !589)
  %shr = lshr exact i32 %and, 4, !dbg !596
  %shr1 = lshr exact i32 %and, 3, !dbg !597
  %0 = xor i32 %shr, %shr1, !dbg !598
  %xor2 = xor i32 %0, %mul, !dbg !598
  ret i32 %xor2, !dbg !599
}

; Function Attrs: nounwind
define internal fastcc void @mul_add_m_upper_triangular_mat_x_mat(i32 noundef %m_vec_limbs, ptr noundef %bs_mat, ptr noundef %mat, ptr noundef %acc, i32 noundef %bs_mat_rows, i32 noundef %bs_mat_cols, i32 noundef %mat_cols, i32 noundef %triangular) unnamed_addr #0 !dbg !600 {
entry:
    #dbg_value(i32 %m_vec_limbs, !603, !DIExpression(), !604)
    #dbg_value(ptr %bs_mat, !605, !DIExpression(), !604)
    #dbg_value(ptr %mat, !606, !DIExpression(), !604)
    #dbg_value(ptr %acc, !607, !DIExpression(), !604)
    #dbg_value(i32 %bs_mat_rows, !608, !DIExpression(), !604)
    #dbg_value(i32 %bs_mat_cols, !609, !DIExpression(), !604)
    #dbg_value(i32 %mat_cols, !610, !DIExpression(), !604)
    #dbg_value(i32 %triangular, !611, !DIExpression(), !604)
    #dbg_value(i32 0, !612, !DIExpression(), !604)
    #dbg_value(i32 0, !613, !DIExpression(), !615)
  %smax = call i32 @llvm.smax.i32(i32 %mat_cols, i32 0), !dbg !616
  %smax1 = call i32 @llvm.smax.i32(i32 %bs_mat_rows, i32 0), !dbg !616
  br label %for.cond, !dbg !616

for.cond:                                         ; preds = %for.inc17, %entry
  %bs_mat_entries_used.0 = phi i32 [ 0, %entry ], [ %bs_mat_entries_used.1.lcssa, %for.inc17 ], !dbg !617
  %r.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ], !dbg !618
    #dbg_value(i32 %r.0, !613, !DIExpression(), !615)
    #dbg_value(i32 %bs_mat_entries_used.0, !612, !DIExpression(), !604)
  %exitcond2 = icmp ne i32 %r.0, %smax1, !dbg !619
  br i1 %exitcond2, label %for.body, label %for.end19, !dbg !621

for.body:                                         ; preds = %for.cond
  %mul = mul nsw i32 %triangular, %r.0, !dbg !622
    #dbg_value(i32 %mul, !625, !DIExpression(), !626)
  br label %for.cond1, !dbg !627

for.cond1:                                        ; preds = %for.inc15, %for.body
  %bs_mat_entries_used.1 = phi i32 [ %bs_mat_entries_used.0, %for.body ], [ %add14, %for.inc15 ], !dbg !604
  %c.0 = phi i32 [ %mul, %for.body ], [ %inc, %for.inc15 ], !dbg !628
    #dbg_value(i32 %c.0, !625, !DIExpression(), !626)
    #dbg_value(i32 %bs_mat_entries_used.1, !612, !DIExpression(), !604)
  %cmp2 = icmp slt i32 %c.0, %bs_mat_cols, !dbg !629
  br i1 %cmp2, label %for.cond4.preheader, label %for.inc17, !dbg !631

for.cond4.preheader:                              ; preds = %for.cond1
  br label %for.cond4, !dbg !632

for.cond4:                                        ; preds = %for.cond4.preheader, %for.body6
  %k.0 = phi i32 [ %add13, %for.body6 ], [ 0, %for.cond4.preheader ], !dbg !635
    #dbg_value(i32 %k.0, !636, !DIExpression(), !637)
  %exitcond = icmp ne i32 %k.0, %smax, !dbg !638
  br i1 %exitcond, label %for.body6, label %for.inc15, !dbg !632

for.body6:                                        ; preds = %for.cond4
  %mul7 = mul nsw i32 %m_vec_limbs, %bs_mat_entries_used.1, !dbg !640
  %add.ptr = getelementptr inbounds i64, ptr %bs_mat, i32 %mul7, !dbg !642
  %mul8 = mul nsw i32 %c.0, %mat_cols, !dbg !643
  %0 = getelementptr i8, ptr %mat, i32 %mul8, !dbg !644
  %arrayidx = getelementptr i8, ptr %0, i32 %k.0, !dbg !644
  %1 = load i8, ptr %arrayidx, align 1, !dbg !644
  %mul9 = mul nsw i32 %r.0, %mat_cols, !dbg !645
  %add10 = add nsw i32 %mul9, %k.0, !dbg !646
  %mul11 = mul nsw i32 %m_vec_limbs, %add10, !dbg !647
  %add.ptr12 = getelementptr inbounds i64, ptr %acc, i32 %mul11, !dbg !648
  call fastcc void @m_vec_mul_add(i32 noundef %m_vec_limbs, ptr noundef %add.ptr, i8 noundef zeroext %1, ptr noundef %add.ptr12) #6, !dbg !649
  %add13 = add nuw i32 %k.0, 1, !dbg !650
    #dbg_value(i32 %add13, !636, !DIExpression(), !637)
  br label %for.cond4, !dbg !651, !llvm.loop !652

for.inc15:                                        ; preds = %for.cond4
    #dbg_value(i32 %bs_mat_entries_used.1, !612, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !604)
  %add14 = add nsw i32 %bs_mat_entries_used.1, 1, !dbg !654
    #dbg_value(i32 %add14, !612, !DIExpression(), !604)
  %inc = add nsw i32 %c.0, 1, !dbg !655
    #dbg_value(i32 %inc, !625, !DIExpression(), !626)
  br label %for.cond1, !dbg !656, !llvm.loop !657

for.inc17:                                        ; preds = %for.cond1
  %bs_mat_entries_used.1.lcssa = phi i32 [ %bs_mat_entries_used.1, %for.cond1 ], !dbg !604
  %inc18 = add nuw i32 %r.0, 1, !dbg !659
    #dbg_value(i32 %inc18, !613, !DIExpression(), !615)
  br label %for.cond, !dbg !660, !llvm.loop !661

for.end19:                                        ; preds = %for.cond
  ret void, !dbg !663
}

declare dso_local i32 @AES_128_CTR(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
define internal fastcc void @unpack_m_vecs(ptr noundef %in, ptr noundef %out, i32 noundef %vecs, i32 noundef %m) unnamed_addr #0 !dbg !664 {
entry:
  %tmp = alloca [4 x i64], align 8
    #dbg_value(ptr %in, !667, !DIExpression(), !668)
    #dbg_value(ptr %out, !669, !DIExpression(), !668)
    #dbg_value(i32 %vecs, !670, !DIExpression(), !668)
    #dbg_value(i32 %m, !671, !DIExpression(), !668)
  %add = add nsw i32 %m, 15, !dbg !672
  %div = sdiv i32 %add, 16, !dbg !673
    #dbg_value(i32 %div, !674, !DIExpression(), !668)
    #dbg_value(ptr %out, !675, !DIExpression(), !668)
    #dbg_declare(ptr %tmp, !676, !DIExpression(), !678)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %tmp, i8 0, i32 32, i1 false), !dbg !678
    #dbg_value(i32 %vecs, !679, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !681)
  br label %for.cond, !dbg !682

for.cond:                                         ; preds = %for.body, %entry
  %i.0.in = phi i32 [ %vecs, %entry ], [ %i.0, %for.body ]
    #dbg_value(i32 %i.0.in, !679, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !681)
  %cmp = icmp sgt i32 %i.0.in, 0, !dbg !683
  br i1 %cmp, label %for.body, label %for.end, !dbg !685

for.body:                                         ; preds = %for.cond
  %i.0 = add nsw i32 %i.0.in, -1, !dbg !686
    #dbg_value(i32 %i.0, !679, !DIExpression(), !681)
  %mul = mul nsw i32 %i.0, %m, !dbg !687
  %div1 = sdiv i32 %mul, 2, !dbg !689
  %add.ptr = getelementptr inbounds i8, ptr %in, i32 %div1, !dbg !690
  %div2 = sdiv i32 %m, 2, !dbg !691
  %call = call ptr @memcpy(ptr noundef nonnull %tmp, ptr noundef %add.ptr, i32 noundef %div2) #8, !dbg !692
  %mul3 = mul nsw i32 %i.0, %div, !dbg !693
  %mul4 = shl i32 %mul3, 3, !dbg !694
  %add.ptr5 = getelementptr inbounds nuw i8, ptr %out, i32 %mul4, !dbg !695
  %mul7 = shl nsw i32 %div, 3, !dbg !696
  %call8 = call ptr @memcpy(ptr noundef %add.ptr5, ptr noundef nonnull %tmp, i32 noundef %mul7) #8, !dbg !697
    #dbg_value(i32 %i.0, !679, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !681)
  br label %for.cond, !dbg !698, !llvm.loop !699

for.end:                                          ; preds = %for.cond
  ret void, !dbg !701
}

; Function Attrs: nounwind
define dso_local i32 @pqmayo_MAYO_2_ref_mayo_expand_sk(ptr noundef %p, ptr noundef %csk, ptr noundef %sk) local_unnamed_addr #0 !dbg !702 {
entry:
  %S = alloca [560 x i8], align 1
    #dbg_value(ptr %p, !711, !DIExpression(), !712)
    #dbg_value(ptr %csk, !713, !DIExpression(), !712)
    #dbg_value(ptr %sk, !714, !DIExpression(), !712)
    #dbg_value(i32 0, !715, !DIExpression(), !712)
    #dbg_declare(ptr %S, !716, !DIExpression(), !717)
    #dbg_value(ptr %sk, !718, !DIExpression(), !712)
  %O2 = getelementptr inbounds nuw i8, ptr %sk, i32 101376, !dbg !719
    #dbg_value(ptr %O2, !720, !DIExpression(), !712)
    #dbg_value(i32 17, !721, !DIExpression(), !712)
    #dbg_value(i32 64, !722, !DIExpression(), !712)
    #dbg_value(i32 544, !723, !DIExpression(), !712)
    #dbg_value(i32 16, !724, !DIExpression(), !712)
    #dbg_value(i32 24, !725, !DIExpression(), !712)
    #dbg_value(ptr %csk, !726, !DIExpression(), !712)
    #dbg_value(ptr %S, !727, !DIExpression(), !712)
  %call = call i32 @shake256(ptr noundef nonnull %S, i32 noundef 560, ptr noundef %csk, i32 noundef 24) #8, !dbg !728
  %add.ptr = getelementptr inbounds nuw i8, ptr %S, i32 16, !dbg !729
  call fastcc void @decode(ptr noundef nonnull %add.ptr, ptr noundef nonnull %O2, i32 noundef 1088) #6, !dbg !730
  call fastcc void @expand_P1_P2(ptr noundef %p, ptr noundef %sk, ptr noundef nonnull %S) #6, !dbg !731
  %add.ptr7 = getelementptr inbounds nuw i8, ptr %sk, i32 66560, !dbg !732
    #dbg_value(ptr %add.ptr7, !733, !DIExpression(), !712)
    #dbg_value(ptr %sk, !734, !DIExpression(), !712)
    #dbg_value(ptr %add.ptr7, !735, !DIExpression(), !712)
  call fastcc void @P1P1t_times_O(ptr noundef %p, ptr noundef %sk, ptr noundef nonnull %O2, ptr noundef nonnull %add.ptr7) #6, !dbg !736
  call void @mayo_secure_clear(ptr noundef nonnull %S, i32 noundef 560) #8, !dbg !737
  ret i32 0, !dbg !738
}

; Function Attrs: nounwind
define internal fastcc void @P1P1t_times_O(ptr noundef %p, ptr noundef %P1, ptr noundef %O, ptr noundef %acc) unnamed_addr #0 !dbg !739 {
entry:
    #dbg_value(ptr %p, !740, !DIExpression(), !741)
    #dbg_value(ptr %P1, !742, !DIExpression(), !741)
    #dbg_value(ptr %O, !743, !DIExpression(), !741)
    #dbg_value(ptr %acc, !744, !DIExpression(), !741)
    #dbg_value(i32 17, !745, !DIExpression(), !741)
    #dbg_value(i32 64, !746, !DIExpression(), !741)
    #dbg_value(i32 4, !747, !DIExpression(), !741)
    #dbg_value(i32 0, !748, !DIExpression(), !741)
    #dbg_value(i32 0, !749, !DIExpression(), !751)
  br label %for.cond, !dbg !752

for.cond:                                         ; preds = %for.inc27, %entry
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc27 ], [ 64, %entry ], !dbg !753
  %bs_mat_entries_used.0 = phi i32 [ 0, %entry ], [ %bs_mat_entries_used.1.lcssa, %for.inc27 ], !dbg !753
  %r.0 = phi i32 [ 0, %entry ], [ %inc28, %for.inc27 ], !dbg !754
    #dbg_value(i32 %r.0, !749, !DIExpression(), !751)
    #dbg_value(i32 %bs_mat_entries_used.0, !748, !DIExpression(), !741)
  %exitcond2 = icmp ne i32 %r.0, 64, !dbg !755
  br i1 %exitcond2, label %for.cond1.preheader, label %for.end29, !dbg !757

for.cond1.preheader:                              ; preds = %for.cond
  %0 = add i32 %bs_mat_entries_used.0, %indvars.iv, !dbg !758
  br label %for.cond1, !dbg !758

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc25
  %bs_mat_entries_used.1 = phi i32 [ %bs_mat_entries_used.2, %for.inc25 ], [ %bs_mat_entries_used.0, %for.cond1.preheader ], !dbg !741
  %c.0 = phi i32 [ %inc, %for.inc25 ], [ %r.0, %for.cond1.preheader ], !dbg !761
    #dbg_value(i32 %c.0, !762, !DIExpression(), !763)
    #dbg_value(i32 %bs_mat_entries_used.1, !748, !DIExpression(), !741)
  %exitcond1 = icmp ne i32 %bs_mat_entries_used.1, %0, !dbg !764
  br i1 %exitcond1, label %for.body3, label %for.inc27, !dbg !758

for.body3:                                        ; preds = %for.cond1
  %cmp4 = icmp eq i32 %c.0, %r.0, !dbg !766
  br i1 %cmp4, label %for.inc25, label %for.cond5.preheader, !dbg !766

for.cond5.preheader:                              ; preds = %for.body3
  br label %for.cond5, !dbg !769

for.cond5:                                        ; preds = %for.cond5.preheader, %for.body7
  %k.0 = phi i32 [ %add23, %for.body7 ], [ 0, %for.cond5.preheader ], !dbg !771
    #dbg_value(i32 %k.0, !772, !DIExpression(), !773)
  %exitcond = icmp ne i32 %k.0, 17, !dbg !774
  br i1 %exitcond, label %for.body7, label %for.inc25.loopexit, !dbg !769

for.body7:                                        ; preds = %for.cond5
  %add.ptr.idx = shl nsw i32 %bs_mat_entries_used.1, 5, !dbg !776
  %add.ptr = getelementptr inbounds i8, ptr %P1, i32 %add.ptr.idx, !dbg !776
  %mul8 = mul nuw nsw i32 %c.0, 17, !dbg !778
  %1 = getelementptr inbounds nuw i8, ptr %O, i32 %mul8, !dbg !779
  %arrayidx = getelementptr inbounds nuw i8, ptr %1, i32 %k.0, !dbg !779
  %2 = load i8, ptr %arrayidx, align 1, !dbg !779
  %mul10 = mul nuw nsw i32 %r.0, 17, !dbg !780
  %add11 = add nuw nsw i32 %mul10, %k.0, !dbg !781
  %add.ptr13.idx = shl nuw nsw i32 %add11, 5, !dbg !782
  %add.ptr13 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr13.idx, !dbg !782
  call fastcc void @m_vec_mul_add(i32 noundef 4, ptr noundef %add.ptr, i8 noundef zeroext %2, ptr noundef %add.ptr13) #6, !dbg !783
  %add.ptr15.idx = shl nsw i32 %bs_mat_entries_used.1, 5, !dbg !784
  %add.ptr15 = getelementptr inbounds i8, ptr %P1, i32 %add.ptr15.idx, !dbg !784
  %mul16 = mul nuw nsw i32 %r.0, 17, !dbg !785
  %3 = getelementptr inbounds nuw i8, ptr %O, i32 %mul16, !dbg !786
  %arrayidx18 = getelementptr inbounds nuw i8, ptr %3, i32 %k.0, !dbg !786
  %4 = load i8, ptr %arrayidx18, align 1, !dbg !786
  %mul19 = mul nuw nsw i32 %c.0, 17, !dbg !787
  %add20 = add nuw nsw i32 %mul19, %k.0, !dbg !788
  %add.ptr22.idx = shl nuw nsw i32 %add20, 5, !dbg !789
  %add.ptr22 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr22.idx, !dbg !789
  call fastcc void @m_vec_mul_add(i32 noundef 4, ptr noundef %add.ptr15, i8 noundef zeroext %4, ptr noundef %add.ptr22) #6, !dbg !790
  %add23 = add nuw nsw i32 %k.0, 1, !dbg !791
    #dbg_value(i32 %add23, !772, !DIExpression(), !773)
  br label %for.cond5, !dbg !792, !llvm.loop !793

for.inc25.loopexit:                               ; preds = %for.cond5
  br label %for.inc25, !dbg !795

for.inc25:                                        ; preds = %for.inc25.loopexit, %for.body3
  %bs_mat_entries_used.2 = add i32 %bs_mat_entries_used.1, 1, !dbg !795
    #dbg_value(i32 %bs_mat_entries_used.2, !748, !DIExpression(), !741)
  %inc = add nuw nsw i32 %c.0, 1, !dbg !796
    #dbg_value(i32 %inc, !762, !DIExpression(), !763)
  br label %for.cond1, !dbg !797, !llvm.loop !798

for.inc27:                                        ; preds = %for.cond1
  %bs_mat_entries_used.1.lcssa = phi i32 [ %bs_mat_entries_used.1, %for.cond1 ], !dbg !741
  %inc28 = add nuw nsw i32 %r.0, 1, !dbg !800
    #dbg_value(i32 %inc28, !749, !DIExpression(), !751)
  %indvars.iv.next = add nsw i32 %indvars.iv, -1, !dbg !801
  br label %for.cond, !dbg !801, !llvm.loop !802

for.end29:                                        ; preds = %for.cond
  ret void, !dbg !804
}

; Function Attrs: nounwind
define dso_local i32 @pqmayo_MAYO_2_ref_mayo_sign_signature(ptr noundef %p, ptr noundef %sig, ptr noundef %siglen, ptr noundef %m, i32 noundef %mlen, ptr noundef %csk) local_unnamed_addr #0 !dbg !805 {
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
  %sk = alloca %struct.sk_t, align 32
  %Ox = alloca [64 x i8], align 1
  %tmp = alloca [81 x i8], align 1
  %Mtmp = alloca [272 x i64], align 8
    #dbg_value(ptr %p, !809, !DIExpression(), !810)
    #dbg_value(ptr %sig, !811, !DIExpression(), !810)
    #dbg_value(ptr %siglen, !812, !DIExpression(), !810)
    #dbg_value(ptr %m, !813, !DIExpression(), !810)
    #dbg_value(i32 %mlen, !814, !DIExpression(), !810)
    #dbg_value(ptr %csk, !815, !DIExpression(), !810)
    #dbg_value(i32 0, !816, !DIExpression(), !810)
    #dbg_declare(ptr %tenc, !817, !DIExpression(), !818)
    #dbg_declare(ptr %t, !819, !DIExpression(), !823)
    #dbg_declare(ptr %y, !824, !DIExpression(), !825)
    #dbg_declare(ptr %salt, !826, !DIExpression(), !830)
    #dbg_declare(ptr %V, !831, !DIExpression(), !835)
    #dbg_declare(ptr %Vdec, !836, !DIExpression(), !840)
    #dbg_declare(ptr %A, !841, !DIExpression(), !845)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(4416) %A, i8 0, i32 4416, i1 false), !dbg !845
    #dbg_declare(ptr %x, !846, !DIExpression(), !850)
    #dbg_declare(ptr %r, !851, !DIExpression(), !855)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(69) %r, i8 0, i32 69, i1 false), !dbg !855
    #dbg_declare(ptr %s, !856, !DIExpression(), !857)
    #dbg_declare(ptr %sk, !858, !DIExpression(), !859)
    #dbg_declare(ptr %Ox, !860, !DIExpression(), !861)
    #dbg_declare(ptr %tmp, !862, !DIExpression(), !866)
    #dbg_value(i32 64, !867, !DIExpression(), !810)
    #dbg_value(i32 81, !868, !DIExpression(), !810)
    #dbg_value(i32 17, !869, !DIExpression(), !810)
    #dbg_value(i32 4, !870, !DIExpression(), !810)
    #dbg_value(i32 64, !871, !DIExpression(), !810)
    #dbg_value(i32 32, !872, !DIExpression(), !810)
    #dbg_value(i32 32, !873, !DIExpression(), !810)
    #dbg_value(i32 34, !874, !DIExpression(), !810)
    #dbg_value(i32 186, !875, !DIExpression(), !810)
    #dbg_value(i32 69, !876, !DIExpression(), !810)
    #dbg_value(i32 32, !877, !DIExpression(), !810)
    #dbg_value(i32 24, !878, !DIExpression(), !810)
    #dbg_value(i32 24, !879, !DIExpression(), !810)
  %call = call i32 @pqmayo_MAYO_2_ref_mayo_expand_sk(ptr noundef %p, ptr noundef %csk, ptr noundef nonnull %sk) #6, !dbg !880
    #dbg_value(i32 %call, !816, !DIExpression(), !810)
  %cmp.not = icmp eq i32 %call, 0, !dbg !881
  br i1 %cmp.not, label %if.end, label %err, !dbg !881

if.end:                                           ; preds = %entry
    #dbg_value(ptr %csk, !883, !DIExpression(), !810)
  %call1 = call i32 @shake256(ptr noundef nonnull %tmp, i32 noundef 32, ptr noundef %m, i32 noundef %mlen) #8, !dbg !884
    #dbg_value(ptr %sk, !885, !DIExpression(), !810)
  %add.ptr = getelementptr inbounds nuw i8, ptr %sk, i32 66560, !dbg !886
    #dbg_value(ptr %add.ptr, !887, !DIExpression(), !810)
    #dbg_declare(ptr %Mtmp, !888, !DIExpression(), !892)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(2176) %Mtmp, i8 0, i32 2176, i1 false), !dbg !892
  %add.ptr5 = getelementptr inbounds nuw i8, ptr %tmp, i32 32, !dbg !893
  %call6 = call i32 @randombytes(ptr noundef nonnull %add.ptr5, i32 noundef 24) #8, !dbg !895
  %cmp7.not = icmp eq i32 %call6, 0, !dbg !896
  br i1 %cmp7.not, label %if.end9, label %err, !dbg !896

if.end9:                                          ; preds = %if.end
  %add.ptr12 = getelementptr inbounds nuw i8, ptr %tmp, i32 56, !dbg !897
  %call13 = call ptr @memcpy(ptr noundef nonnull %add.ptr12, ptr noundef %csk, i32 noundef 24) #8, !dbg !898
  %call16 = call i32 @shake256(ptr noundef nonnull %salt, i32 noundef 24, ptr noundef nonnull %tmp, i32 noundef 80) #8, !dbg !899
  %add.ptr18 = getelementptr inbounds nuw i8, ptr %tmp, i32 32, !dbg !900
  %call20 = call ptr @memcpy(ptr noundef nonnull %add.ptr18, ptr noundef nonnull %salt, i32 noundef 24) #8, !dbg !901
  %add.ptr24 = getelementptr inbounds nuw i8, ptr %tmp, i32 80, !dbg !902
    #dbg_value(ptr %add.ptr24, !903, !DIExpression(), !810)
  %call27 = call i32 @shake256(ptr noundef nonnull %tenc, i32 noundef 32, ptr noundef nonnull %tmp, i32 noundef 56) #8, !dbg !904
  call fastcc void @decode(ptr noundef nonnull %tenc, ptr noundef nonnull %t, i32 noundef 64) #6, !dbg !905
    #dbg_value(i32 0, !906, !DIExpression(), !908)
  %add.ptr61 = getelementptr inbounds nuw i8, ptr %V, i32 128, !dbg !909
  br label %for.cond, !dbg !912

for.cond:                                         ; preds = %if.else, %if.end9
  %ctr.0 = phi i32 [ 0, %if.end9 ], [ %inc75, %if.else ], !dbg !913
    #dbg_value(i32 %ctr.0, !906, !DIExpression(), !908)
  %exitcond2 = icmp ne i32 %ctr.0, 256, !dbg !914
  br i1 %exitcond2, label %for.body, label %for.end76, !dbg !915

for.body:                                         ; preds = %for.cond
  %conv = trunc nuw i32 %ctr.0 to i8, !dbg !916
  store i8 %conv, ptr %add.ptr24, align 1, !dbg !917
  %call33 = call i32 @shake256(ptr noundef nonnull %V, i32 noundef 162, ptr noundef nonnull %tmp, i32 noundef 81) #8, !dbg !918
    #dbg_value(i32 0, !919, !DIExpression(), !921)
  br label %for.cond34, !dbg !922

for.cond34:                                       ; preds = %for.body37, %for.body
  %i.0 = phi i32 [ 0, %for.body ], [ %inc, %for.body37 ], !dbg !923
    #dbg_value(i32 %i.0, !919, !DIExpression(), !921)
  %exitcond = icmp ne i32 %i.0, 4, !dbg !924
  br i1 %exitcond, label %for.body37, label %for.end, !dbg !926

for.body37:                                       ; preds = %for.cond34
  %mul = shl nuw nsw i32 %i.0, 5, !dbg !927
  %add.ptr39 = getelementptr inbounds nuw i8, ptr %V, i32 %mul, !dbg !929
  %mul41 = shl nuw nsw i32 %i.0, 6, !dbg !930
  %add.ptr42 = getelementptr inbounds nuw i8, ptr %Vdec, i32 %mul41, !dbg !931
  call fastcc void @decode(ptr noundef nonnull %add.ptr39, ptr noundef nonnull %add.ptr42, i32 noundef 64) #6, !dbg !932
  %inc = add nuw nsw i32 %i.0, 1, !dbg !933
    #dbg_value(i32 %inc, !919, !DIExpression(), !921)
  br label %for.cond34, !dbg !934, !llvm.loop !935

for.end:                                          ; preds = %for.cond34
  call fastcc void @compute_M_and_VPV(ptr noundef %p, ptr noundef nonnull %Vdec, ptr noundef nonnull %add.ptr, ptr noundef nonnull %sk, ptr noundef nonnull %Mtmp, ptr noundef nonnull %A) #6, !dbg !937
  call fastcc void @compute_rhs(ptr noundef %p, ptr noundef nonnull %A, ptr noundef nonnull %t, ptr noundef nonnull %y) #6, !dbg !938
  call fastcc void @compute_A(ptr noundef %p, ptr noundef nonnull %Mtmp, ptr noundef nonnull %A) #6, !dbg !939
    #dbg_value(i32 0, !940, !DIExpression(), !942)
  br label %for.cond52, !dbg !943

for.cond52:                                       ; preds = %for.body55, %for.end
  %i51.0 = phi i32 [ 0, %for.end ], [ %inc58, %for.body55 ], !dbg !944
    #dbg_value(i32 %i51.0, !940, !DIExpression(), !942)
  %exitcond1 = icmp ne i32 %i51.0, 64, !dbg !945
  br i1 %exitcond1, label %for.body55, label %for.end59, !dbg !947

for.body55:                                       ; preds = %for.cond52
  %0 = mul nuw nsw i32 %i51.0, 69, !dbg !948
  %sub = add nuw nsw i32 %0, 68, !dbg !950
  %arrayidx = getelementptr inbounds nuw [4416 x i8], ptr %A, i32 0, i32 %sub, !dbg !951
  store i8 0, ptr %arrayidx, align 1, !dbg !952
  %inc58 = add nuw nsw i32 %i51.0, 1, !dbg !953
    #dbg_value(i32 %inc58, !940, !DIExpression(), !942)
  br label %for.cond52, !dbg !954, !llvm.loop !955

for.end59:                                        ; preds = %for.cond52
  call fastcc void @decode(ptr noundef nonnull %add.ptr61, ptr noundef nonnull %r, i32 noundef 68) #6, !dbg !957
  %call67 = call i32 @pqmayo_MAYO_2_ref_sample_solution(ptr noundef %p, ptr noundef nonnull %A, ptr noundef nonnull %y, ptr noundef nonnull %r, ptr noundef nonnull %x, i32 noundef 4, i32 noundef 17, i32 noundef 64, i32 noundef 69) #6, !dbg !958
  %tobool.not = icmp eq i32 %call67, 0, !dbg !958
  br i1 %tobool.not, label %if.else, label %for.end76, !dbg !958

if.else:                                          ; preds = %for.end59
  %call70 = call ptr @memset(ptr noundef nonnull %Mtmp, i32 noundef 0, i32 noundef 2176) #8, !dbg !960
  %call72 = call ptr @memset(ptr noundef nonnull %A, i32 noundef 0, i32 noundef 4416) #8, !dbg !962
  %inc75 = add nuw nsw i32 %ctr.0, 1, !dbg !963
    #dbg_value(i32 %inc75, !906, !DIExpression(), !908)
  br label %for.cond, !dbg !964, !llvm.loop !965

for.end76:                                        ; preds = %for.end59, %for.cond
    #dbg_value(i32 0, !967, !DIExpression(), !969)
  br label %for.cond78, !dbg !970

for.cond78:                                       ; preds = %for.body81, %for.end76
  %i77.0 = phi i32 [ 0, %for.end76 ], [ %inc103, %for.body81 ], !dbg !971
    #dbg_value(i32 %i77.0, !967, !DIExpression(), !969)
  %exitcond3 = icmp ne i32 %i77.0, 4, !dbg !972
  br i1 %exitcond3, label %for.body81, label %for.end104, !dbg !974

for.body81:                                       ; preds = %for.cond78
  %mul83 = shl nuw nsw i32 %i77.0, 6, !dbg !975
  %add.ptr84 = getelementptr inbounds nuw i8, ptr %Vdec, i32 %mul83, !dbg !977
    #dbg_value(ptr %add.ptr84, !978, !DIExpression(), !810)
  %O = getelementptr inbounds nuw i8, ptr %sk, i32 101376, !dbg !979
  %mul87 = mul nuw nsw i32 %i77.0, 17, !dbg !980
  %add.ptr88 = getelementptr inbounds nuw i8, ptr %x, i32 %mul87, !dbg !981
  call fastcc void @mat_mul(ptr noundef nonnull %O, ptr noundef nonnull %add.ptr88, ptr noundef nonnull %Ox, i32 noundef 17, i32 noundef 64, i32 noundef 1) #6, !dbg !982
  %mul92 = mul nuw nsw i32 %i77.0, 81, !dbg !983
  %add.ptr93 = getelementptr inbounds nuw i8, ptr %s, i32 %mul92, !dbg !984
  call fastcc void @mat_add(ptr noundef nonnull %add.ptr84, ptr noundef nonnull %Ox, ptr noundef nonnull %add.ptr93, i32 noundef 64, i32 noundef 1) #6, !dbg !985
  %mul95 = mul nuw nsw i32 %i77.0, 81, !dbg !986
  %add.ptr96 = getelementptr inbounds nuw i8, ptr %s, i32 %mul95, !dbg !987
  %add.ptr97 = getelementptr inbounds nuw i8, ptr %add.ptr96, i32 64, !dbg !988
  %mul99 = mul nuw nsw i32 %i77.0, 17, !dbg !989
  %add.ptr100 = getelementptr inbounds nuw i8, ptr %x, i32 %mul99, !dbg !990
  %call101 = call ptr @memcpy(ptr noundef nonnull %add.ptr97, ptr noundef nonnull %add.ptr100, i32 noundef 17) #8, !dbg !991
  %inc103 = add nuw nsw i32 %i77.0, 1, !dbg !992
    #dbg_value(i32 %inc103, !967, !DIExpression(), !969)
  br label %for.cond78, !dbg !993, !llvm.loop !994

for.end104:                                       ; preds = %for.cond78
  call fastcc void @encode(ptr noundef nonnull %s, ptr noundef %sig, i32 noundef 324) #6, !dbg !996
  %add.ptr107 = getelementptr inbounds nuw i8, ptr %sig, i32 162, !dbg !997
  %call109 = call ptr @memcpy(ptr noundef nonnull %add.ptr107, ptr noundef nonnull %salt, i32 noundef 24) #8, !dbg !998
  store i32 186, ptr %siglen, align 4, !dbg !999
  br label %err, !dbg !1000

err:                                              ; preds = %if.end, %entry, %for.end104
  %ret.0 = phi i32 [ %call, %for.end104 ], [ %call, %entry ], [ 1, %if.end ], !dbg !810
    #dbg_value(i32 %ret.0, !816, !DIExpression(), !810)
    #dbg_label(!1001, !1002)
  call void @mayo_secure_clear(ptr noundef nonnull %V, i32 noundef 162) #8, !dbg !1003
  call void @mayo_secure_clear(ptr noundef nonnull %Vdec, i32 noundef 256) #8, !dbg !1004
  call void @mayo_secure_clear(ptr noundef nonnull %A, i32 noundef 4416) #8, !dbg !1005
  call void @mayo_secure_clear(ptr noundef nonnull %r, i32 noundef 69) #8, !dbg !1006
  %O114 = getelementptr inbounds nuw i8, ptr %sk, i32 101376, !dbg !1007
  call void @mayo_secure_clear(ptr noundef nonnull %O114, i32 noundef 1088) #8, !dbg !1008
  call void @mayo_secure_clear(ptr noundef nonnull %sk, i32 noundef 102464) #8, !dbg !1009
  call void @mayo_secure_clear(ptr noundef nonnull %Ox, i32 noundef 64) #8, !dbg !1010
  call void @mayo_secure_clear(ptr noundef nonnull %tmp, i32 noundef 81) #8, !dbg !1011
  call void @mayo_secure_clear(ptr noundef nonnull %Mtmp, i32 noundef 2176) #8, !dbg !1012
  ret i32 %ret.0, !dbg !1013
}

; Function Attrs: nounwind
define internal fastcc void @compute_M_and_VPV(ptr noundef %p, ptr noundef %Vdec, ptr noundef %L, ptr noundef %P1, ptr noundef %VL, ptr noundef %VP1V) unnamed_addr #0 !dbg !1014 {
entry:
  %Pv = alloca [1024 x i64], align 8
    #dbg_value(ptr %p, !1017, !DIExpression(), !1018)
    #dbg_value(ptr %Vdec, !1019, !DIExpression(), !1018)
    #dbg_value(ptr %L, !1020, !DIExpression(), !1018)
    #dbg_value(ptr %P1, !1021, !DIExpression(), !1018)
    #dbg_value(ptr %VL, !1022, !DIExpression(), !1018)
    #dbg_value(ptr %VP1V, !1023, !DIExpression(), !1018)
    #dbg_value(i32 4, !1024, !DIExpression(), !1018)
    #dbg_value(i32 64, !1025, !DIExpression(), !1018)
    #dbg_value(i32 17, !1026, !DIExpression(), !1018)
  call fastcc void @mul_add_mat_x_m_mat(i32 noundef 4, ptr noundef %Vdec, ptr noundef %L, ptr noundef %VL, i32 noundef 4, i32 noundef 64, i32 noundef 17) #6, !dbg !1027
    #dbg_declare(ptr %Pv, !1028, !DIExpression(), !1032)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(8192) %Pv, i8 0, i32 8192, i1 false), !dbg !1032
  call fastcc void @P1_times_Vt(ptr noundef %p, ptr noundef %P1, ptr noundef %Vdec, ptr noundef nonnull %Pv) #6, !dbg !1033
  call fastcc void @mul_add_mat_x_m_mat(i32 noundef 4, ptr noundef %Vdec, ptr noundef nonnull %Pv, ptr noundef %VP1V, i32 noundef 4, i32 noundef 64, i32 noundef 4) #6, !dbg !1034
  ret void, !dbg !1035
}

; Function Attrs: nounwind
define internal fastcc void @compute_rhs(ptr noundef %p, ptr noundef %vPv, ptr noundef %t, ptr noundef %y) unnamed_addr #0 !dbg !1036 {
entry:
  %temp = alloca [4 x i64], align 8
    #dbg_value(ptr %p, !1039, !DIExpression(), !1040)
    #dbg_value(ptr %vPv, !1041, !DIExpression(), !1040)
    #dbg_value(ptr %t, !1042, !DIExpression(), !1040)
    #dbg_value(ptr %y, !1043, !DIExpression(), !1040)
    #dbg_value(i32 60, !1044, !DIExpression(), !1040)
    #dbg_value(i32 4, !1046, !DIExpression(), !1040)
    #dbg_declare(ptr %temp, !1047, !DIExpression(), !1048)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %temp, i8 0, i32 32, i1 false), !dbg !1048
    #dbg_value(ptr %temp, !1049, !DIExpression(), !1040)
    #dbg_value(i32 3, !1050, !DIExpression(), !1052)
  br label %for.cond, !dbg !1053

for.cond:                                         ; preds = %for.inc65, %entry
  %i.0 = phi i32 [ 3, %entry ], [ %dec66, %for.inc65 ], !dbg !1054
    #dbg_value(i32 %i.0, !1050, !DIExpression(), !1052)
  %cmp = icmp sgt i32 %i.0, -1, !dbg !1055
  br i1 %cmp, label %for.cond1.preheader, label %for.cond69.preheader, !dbg !1057

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !1058

for.cond69.preheader:                             ; preds = %for.cond
  br label %for.cond69, !dbg !1061

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc62
  %j.0 = phi i32 [ %inc63, %for.inc62 ], [ %i.0, %for.cond1.preheader ], !dbg !1063
    #dbg_value(i32 %j.0, !1064, !DIExpression(), !1065)
  %exitcond6 = icmp ne i32 %j.0, 4, !dbg !1066
  br i1 %exitcond6, label %for.body3, label %for.inc65, !dbg !1058

for.body3:                                        ; preds = %for.cond1
  %arrayidx = getelementptr inbounds nuw i8, ptr %temp, i32 24, !dbg !1068
  %0 = load i64, ptr %arrayidx, align 8, !dbg !1068
  %shr = lshr i64 %0, 60, !dbg !1070
    #dbg_value(i8 %conv, !1071, !DIExpression(), !1072)
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %temp, i32 24, !dbg !1073
  %shl = shl i64 %0, 4, !dbg !1074
  store i64 %shl, ptr %arrayidx4, align 8, !dbg !1074
    #dbg_value(i32 2, !1075, !DIExpression(), !1077)
  br label %for.cond5, !dbg !1078

for.cond5:                                        ; preds = %for.body8, %for.body3
  %k.0 = phi i32 [ 2, %for.body3 ], [ %dec, %for.body8 ], !dbg !1079
    #dbg_value(i32 %k.0, !1075, !DIExpression(), !1077)
  %cmp6 = icmp sgt i32 %k.0, -1, !dbg !1080
  br i1 %cmp6, label %for.body8, label %for.cond14.preheader, !dbg !1082

for.cond14.preheader:                             ; preds = %for.cond5
  %conv = trunc nuw nsw i64 %shr to i8, !dbg !1083
  br label %for.cond14, !dbg !1084

for.body8:                                        ; preds = %for.cond5
  %arrayidx9 = getelementptr inbounds nuw [4 x i64], ptr %temp, i32 0, i32 %k.0, !dbg !1086
  %1 = load i64, ptr %arrayidx9, align 8, !dbg !1086
  %shr10 = lshr i64 %1, 60, !dbg !1088
  %add = add nuw nsw i32 %k.0, 1, !dbg !1089
  %arrayidx11 = getelementptr inbounds nuw [4 x i64], ptr %temp, i32 0, i32 %add, !dbg !1090
  %2 = load i64, ptr %arrayidx11, align 8, !dbg !1091
  %xor = xor i64 %2, %shr10, !dbg !1091
  store i64 %xor, ptr %arrayidx11, align 8, !dbg !1091
  %arrayidx12 = getelementptr inbounds nuw [4 x i64], ptr %temp, i32 0, i32 %k.0, !dbg !1092
  %3 = load i64, ptr %arrayidx12, align 8, !dbg !1093
  %shl13 = shl i64 %3, 4, !dbg !1093
  store i64 %shl13, ptr %arrayidx12, align 8, !dbg !1093
  %dec = add nsw i32 %k.0, -1, !dbg !1094
    #dbg_value(i32 %dec, !1075, !DIExpression(), !1077)
  br label %for.cond5, !dbg !1095, !llvm.loop !1096

for.cond14:                                       ; preds = %for.cond14.preheader, %for.inc36
  %jj.0 = phi i32 [ %inc, %for.inc36 ], [ 0, %for.cond14.preheader ], !dbg !1098
    #dbg_value(i32 %jj.0, !1099, !DIExpression(), !1100)
  %exitcond = icmp ne i32 %jj.0, 4, !dbg !1101
  br i1 %exitcond, label %for.body17, label %for.cond39.preheader, !dbg !1084

for.cond39.preheader:                             ; preds = %for.cond14
  br label %for.cond39, !dbg !1103

for.body17:                                       ; preds = %for.cond14
  %rem18 = and i32 %jj.0, 1, !dbg !1105
  %cmp19 = icmp eq i32 %rem18, 0, !dbg !1108
  br i1 %cmp19, label %if.then, label %if.else, !dbg !1108

if.then:                                          ; preds = %for.body17
  %arrayidx21 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %jj.0, !dbg !1109
  %4 = load i8, ptr %arrayidx21, align 1, !dbg !1109
  %call = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %conv, i8 noundef zeroext %4) #6, !dbg !1111
  %div = lshr exact i32 %jj.0, 1, !dbg !1112
  %arrayidx23 = getelementptr inbounds nuw i8, ptr %temp, i32 %div, !dbg !1113
  %5 = load i8, ptr %arrayidx23, align 1, !dbg !1114
  %xor254 = xor i8 %5, %call, !dbg !1114
  store i8 %xor254, ptr %arrayidx23, align 1, !dbg !1114
  br label %for.inc36, !dbg !1115

if.else:                                          ; preds = %for.body17
  %arrayidx27 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %jj.0, !dbg !1116
  %6 = load i8, ptr %arrayidx27, align 1, !dbg !1116
  %call28 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %conv, i8 noundef zeroext %6) #6, !dbg !1118
  %shl30 = shl nuw i8 %call28, 4, !dbg !1119
  %div313 = lshr i32 %jj.0, 1, !dbg !1120
  %arrayidx32 = getelementptr inbounds nuw i8, ptr %temp, i32 %div313, !dbg !1121
  %7 = load i8, ptr %arrayidx32, align 1, !dbg !1122
  %xor34 = xor i8 %shl30, %7, !dbg !1122
  store i8 %xor34, ptr %arrayidx32, align 1, !dbg !1122
  br label %for.inc36

for.inc36:                                        ; preds = %if.then, %if.else
  %inc = add nuw nsw i32 %jj.0, 1, !dbg !1123
    #dbg_value(i32 %inc, !1099, !DIExpression(), !1100)
  br label %for.cond14, !dbg !1124, !llvm.loop !1125

for.cond39:                                       ; preds = %for.cond39.preheader, %for.body42
  %k38.0 = phi i32 [ %inc60, %for.body42 ], [ 0, %for.cond39.preheader ], !dbg !1127
    #dbg_value(i32 %k38.0, !1128, !DIExpression(), !1129)
  %exitcond5 = icmp ne i32 %k38.0, 4, !dbg !1130
  br i1 %exitcond5, label %for.body42, label %for.inc62, !dbg !1103

for.body42:                                       ; preds = %for.cond39
  %8 = shl i32 %i.0, 4, !dbg !1132
  %9 = shl i32 %j.0, 2, !dbg !1132
  %mul44 = add nsw i32 %8, %9, !dbg !1132
  %add45 = or disjoint i32 %mul44, %k38.0, !dbg !1134
  %arrayidx46 = getelementptr inbounds nuw i64, ptr %vPv, i32 %add45, !dbg !1135
  %10 = load i64, ptr %arrayidx46, align 8, !dbg !1135
  %cmp47.not = icmp eq i32 %i.0, %j.0, !dbg !1136
  %11 = shl i32 %j.0, 4, !dbg !1137
  %12 = shl i32 %i.0, 2, !dbg !1137
  %mul52 = add nsw i32 %11, %12, !dbg !1137
  %add53 = or disjoint i32 %mul52, %k38.0, !dbg !1138
  %arrayidx54 = getelementptr inbounds nuw i64, ptr %vPv, i32 %add53, !dbg !1139
  %13 = load i64, ptr %arrayidx54, align 8, !dbg !1139
  %mul55 = select i1 %cmp47.not, i64 0, i64 %13, !dbg !1140
  %xor56 = xor i64 %10, %mul55, !dbg !1141
  %arrayidx57 = getelementptr inbounds nuw [4 x i64], ptr %temp, i32 0, i32 %k38.0, !dbg !1142
  %14 = load i64, ptr %arrayidx57, align 8, !dbg !1143
  %xor58 = xor i64 %14, %xor56, !dbg !1143
  store i64 %xor58, ptr %arrayidx57, align 8, !dbg !1143
  %inc60 = add nuw nsw i32 %k38.0, 1, !dbg !1144
    #dbg_value(i32 %inc60, !1128, !DIExpression(), !1129)
  br label %for.cond39, !dbg !1145, !llvm.loop !1146

for.inc62:                                        ; preds = %for.cond39
  %inc63 = add nuw nsw i32 %j.0, 1, !dbg !1148
    #dbg_value(i32 %inc63, !1064, !DIExpression(), !1065)
  br label %for.cond1, !dbg !1149, !llvm.loop !1150

for.inc65:                                        ; preds = %for.cond1
  %dec66 = add nsw i32 %i.0, -1, !dbg !1152
    #dbg_value(i32 %dec66, !1050, !DIExpression(), !1052)
  br label %for.cond, !dbg !1153, !llvm.loop !1154

for.cond69:                                       ; preds = %for.cond69.preheader, %for.body72
  %i68.0 = phi i32 [ %add93, %for.body72 ], [ 0, %for.cond69.preheader ], !dbg !1156
    #dbg_value(i32 %i68.0, !1157, !DIExpression(), !1158)
  %cmp70 = icmp samesign ult i32 %i68.0, 64, !dbg !1159
  br i1 %cmp70, label %for.body72, label %for.end94, !dbg !1061

for.body72:                                       ; preds = %for.cond69
  %arrayidx73 = getelementptr inbounds nuw i8, ptr %t, i32 %i68.0, !dbg !1161
  %15 = load i8, ptr %arrayidx73, align 1, !dbg !1161
  %div75 = lshr exact i32 %i68.0, 1, !dbg !1163
  %arrayidx76 = getelementptr inbounds nuw i8, ptr %temp, i32 %div75, !dbg !1164
  %16 = load i8, ptr %arrayidx76, align 1, !dbg !1164
  %17 = and i8 %16, 15, !dbg !1165
  %xor781 = xor i8 %15, %17, !dbg !1166
  %arrayidx80 = getelementptr inbounds nuw i8, ptr %y, i32 %i68.0, !dbg !1167
  store i8 %xor781, ptr %arrayidx80, align 1, !dbg !1168
  %add81 = or disjoint i32 %i68.0, 1, !dbg !1169
  %arrayidx82 = getelementptr inbounds nuw i8, ptr %t, i32 %add81, !dbg !1170
  %18 = load i8, ptr %arrayidx82, align 1, !dbg !1170
  %div84 = lshr exact i32 %i68.0, 1, !dbg !1171
  %arrayidx85 = getelementptr inbounds nuw i8, ptr %temp, i32 %div84, !dbg !1172
  %19 = load i8, ptr %arrayidx85, align 1, !dbg !1172
  %20 = lshr i8 %19, 4, !dbg !1173
  %xor882 = xor i8 %18, %20, !dbg !1174
  %add90 = or disjoint i32 %i68.0, 1, !dbg !1175
  %arrayidx91 = getelementptr inbounds nuw i8, ptr %y, i32 %add90, !dbg !1176
  store i8 %xor882, ptr %arrayidx91, align 1, !dbg !1177
  %add93 = add nuw nsw i32 %i68.0, 2, !dbg !1178
    #dbg_value(i32 %add93, !1157, !DIExpression(), !1158)
  br label %for.cond69, !dbg !1179, !llvm.loop !1180

for.end94:                                        ; preds = %for.cond69
  ret void, !dbg !1182
}

; Function Attrs: nounwind
define internal fastcc void @compute_A(ptr noundef %p, ptr noundef %VtL, ptr noundef %A_out) unnamed_addr #0 !dbg !1183 {
entry:
  %A = alloca [640 x i64], align 8
  %tab = alloca [16 x i8], align 1
    #dbg_value(ptr %p, !1186, !DIExpression(), !1187)
    #dbg_value(ptr %VtL, !1188, !DIExpression(), !1187)
    #dbg_value(ptr %A_out, !1189, !DIExpression(), !1187)
    #dbg_value(i32 0, !1190, !DIExpression(), !1187)
    #dbg_value(i32 0, !1191, !DIExpression(), !1187)
    #dbg_value(i32 4, !1192, !DIExpression(), !1187)
    #dbg_declare(ptr %A, !1193, !DIExpression(), !1197)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(5120) %A, i8 0, i32 5120, i1 false), !dbg !1197
    #dbg_value(i32 80, !1198, !DIExpression(), !1187)
    #dbg_value(i32 0, !1199, !DIExpression(), !1201)
  br label %for.cond, !dbg !1202

for.cond:                                         ; preds = %for.inc90, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc91, %for.inc90 ], !dbg !1203
  %words_to_shift.0 = phi i32 [ 0, %entry ], [ %words_to_shift.1.lcssa, %for.inc90 ], !dbg !1204
  %bits_to_shift.0 = phi i32 [ 0, %entry ], [ %bits_to_shift.1.lcssa, %for.inc90 ], !dbg !1205
    #dbg_value(i32 %bits_to_shift.0, !1190, !DIExpression(), !1187)
    #dbg_value(i32 %words_to_shift.0, !1191, !DIExpression(), !1187)
    #dbg_value(i32 %i.0, !1199, !DIExpression(), !1201)
  %exitcond7 = icmp ne i32 %i.0, 4, !dbg !1206
  br i1 %exitcond7, label %for.cond1.preheader, label %for.cond94.preheader, !dbg !1208

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !1209

for.cond94.preheader:                             ; preds = %for.cond
  br label %for.cond94, !dbg !1212

for.cond1:                                        ; preds = %for.cond1.preheader, %if.end82
  %j.0 = phi i32 [ %dec, %if.end82 ], [ 3, %for.cond1.preheader ], !dbg !1214
  %words_to_shift.1 = phi i32 [ %spec.select, %if.end82 ], [ %words_to_shift.0, %for.cond1.preheader ], !dbg !1187
  %bits_to_shift.1 = phi i32 [ %spec.select3, %if.end82 ], [ %bits_to_shift.0, %for.cond1.preheader ], !dbg !1187
    #dbg_value(i32 %bits_to_shift.1, !1190, !DIExpression(), !1187)
    #dbg_value(i32 %words_to_shift.1, !1191, !DIExpression(), !1187)
    #dbg_value(i32 %j.0, !1215, !DIExpression(), !1216)
  %cmp2.not = icmp slt i32 %j.0, %i.0, !dbg !1217
  br i1 %cmp2.not, label %for.inc90, label %for.body3, !dbg !1209

for.body3:                                        ; preds = %for.cond1
  %add.ptr.idx = mul nsw i32 %j.0, 544, !dbg !1219
  %add.ptr = getelementptr inbounds i8, ptr %VtL, i32 %add.ptr.idx, !dbg !1219
    #dbg_value(ptr %add.ptr, !1221, !DIExpression(), !1187)
    #dbg_value(i32 0, !1222, !DIExpression(), !1224)
  br label %for.cond5, !dbg !1225

for.cond5:                                        ; preds = %for.inc31, %for.body3
  %c.0 = phi i32 [ 0, %for.body3 ], [ %inc32, %for.inc31 ], !dbg !1226
    #dbg_value(i32 %c.0, !1222, !DIExpression(), !1224)
  %exitcond4 = icmp ne i32 %c.0, 17, !dbg !1227
  br i1 %exitcond4, label %for.cond8.preheader, label %for.end33, !dbg !1229

for.cond8.preheader:                              ; preds = %for.cond5
  br label %for.cond8, !dbg !1230

for.cond8:                                        ; preds = %for.cond8.preheader, %for.inc
  %k.0 = phi i32 [ %inc, %for.inc ], [ 0, %for.cond8.preheader ], !dbg !1233
    #dbg_value(i32 %k.0, !1234, !DIExpression(), !1235)
  %exitcond = icmp ne i32 %k.0, 4, !dbg !1236
  br i1 %exitcond, label %for.body10, label %for.inc31, !dbg !1230

for.body10:                                       ; preds = %for.cond8
  %mul11 = shl nuw nsw i32 %c.0, 2, !dbg !1238
  %add = or disjoint i32 %k.0, %mul11, !dbg !1240
  %arrayidx = getelementptr inbounds nuw i64, ptr %add.ptr, i32 %add, !dbg !1241
  %0 = load i64, ptr %arrayidx, align 8, !dbg !1241
  %sh_prom = zext nneg i32 %bits_to_shift.1 to i64, !dbg !1242
  %shl = shl i64 %0, %sh_prom, !dbg !1242
  %mul12 = mul nuw nsw i32 %i.0, 17, !dbg !1243
  %add13 = add nuw nsw i32 %mul12, %c.0, !dbg !1244
  %add14 = add nsw i32 %k.0, %words_to_shift.1, !dbg !1245
  %mul15 = mul i32 %add14, 80, !dbg !1246
  %add16 = add i32 %add13, %mul15, !dbg !1247
  %arrayidx17 = getelementptr inbounds nuw [640 x i64], ptr %A, i32 0, i32 %add16, !dbg !1248
  %1 = load i64, ptr %arrayidx17, align 8, !dbg !1249
  %xor = xor i64 %1, %shl, !dbg !1249
  store i64 %xor, ptr %arrayidx17, align 8, !dbg !1249
  %cmp18 = icmp sgt i32 %bits_to_shift.1, 0, !dbg !1250
  br i1 %cmp18, label %if.then, label %for.inc, !dbg !1250

if.then:                                          ; preds = %for.body10
  %mul19 = shl nuw nsw i32 %c.0, 2, !dbg !1252
  %add20 = or disjoint i32 %k.0, %mul19, !dbg !1254
  %arrayidx21 = getelementptr inbounds nuw i64, ptr %add.ptr, i32 %add20, !dbg !1255
  %2 = load i64, ptr %arrayidx21, align 8, !dbg !1255
  %sub = sub nsw i32 64, %bits_to_shift.1, !dbg !1256
  %sh_prom22 = zext nneg i32 %sub to i64, !dbg !1257
  %shr = lshr i64 %2, %sh_prom22, !dbg !1257
  %mul23 = mul nuw nsw i32 %i.0, 17, !dbg !1258
  %add24 = add nuw nsw i32 %mul23, %c.0, !dbg !1259
  %add25 = add nsw i32 %k.0, %words_to_shift.1, !dbg !1260
  %3 = mul i32 %add25, 80, !dbg !1261
  %mul27 = add i32 %3, 80, !dbg !1261
  %add28 = add i32 %add24, %mul27, !dbg !1262
  %arrayidx29 = getelementptr inbounds nuw [640 x i64], ptr %A, i32 0, i32 %add28, !dbg !1263
  %4 = load i64, ptr %arrayidx29, align 8, !dbg !1264
  %xor30 = xor i64 %4, %shr, !dbg !1264
  store i64 %xor30, ptr %arrayidx29, align 8, !dbg !1264
  br label %for.inc, !dbg !1265

for.inc:                                          ; preds = %for.body10, %if.then
  %inc = add nuw nsw i32 %k.0, 1, !dbg !1266
    #dbg_value(i32 %inc, !1234, !DIExpression(), !1235)
  br label %for.cond8, !dbg !1267, !llvm.loop !1268

for.inc31:                                        ; preds = %for.cond8
  %inc32 = add nuw nsw i32 %c.0, 1, !dbg !1270
    #dbg_value(i32 %inc32, !1222, !DIExpression(), !1224)
  br label %for.cond5, !dbg !1271, !llvm.loop !1272

for.end33:                                        ; preds = %for.cond5
  %cmp34.not = icmp eq i32 %i.0, %j.0, !dbg !1274
  br i1 %cmp34.not, label %if.end82, label %if.then35, !dbg !1274

if.then35:                                        ; preds = %for.end33
  %add.ptr38.idx = mul nuw nsw i32 %i.0, 544, !dbg !1276
  %add.ptr38 = getelementptr inbounds nuw i8, ptr %VtL, i32 %add.ptr38.idx, !dbg !1276
    #dbg_value(ptr %add.ptr38, !1278, !DIExpression(), !1187)
    #dbg_value(i32 0, !1279, !DIExpression(), !1281)
  br label %for.cond40, !dbg !1282

for.cond40:                                       ; preds = %for.inc79, %if.then35
  %c39.0 = phi i32 [ 0, %if.then35 ], [ %inc80, %for.inc79 ], !dbg !1283
    #dbg_value(i32 %c39.0, !1279, !DIExpression(), !1281)
  %exitcond6 = icmp ne i32 %c39.0, 17, !dbg !1284
  br i1 %exitcond6, label %for.cond44.preheader, label %if.end82.loopexit, !dbg !1286

for.cond44.preheader:                             ; preds = %for.cond40
  br label %for.cond44, !dbg !1287

for.cond44:                                       ; preds = %for.cond44.preheader, %for.inc76
  %k43.0 = phi i32 [ %inc77, %for.inc76 ], [ 0, %for.cond44.preheader ], !dbg !1290
    #dbg_value(i32 %k43.0, !1291, !DIExpression(), !1292)
  %exitcond5 = icmp ne i32 %k43.0, 4, !dbg !1293
  br i1 %exitcond5, label %for.body46, label %for.inc79, !dbg !1287

for.body46:                                       ; preds = %for.cond44
  %mul47 = shl nuw nsw i32 %c39.0, 2, !dbg !1295
  %add48 = or disjoint i32 %k43.0, %mul47, !dbg !1297
  %arrayidx49 = getelementptr inbounds nuw i64, ptr %add.ptr38, i32 %add48, !dbg !1298
  %5 = load i64, ptr %arrayidx49, align 8, !dbg !1298
  %sh_prom50 = zext nneg i32 %bits_to_shift.1 to i64, !dbg !1299
  %shl51 = shl i64 %5, %sh_prom50, !dbg !1299
  %mul52 = mul nsw i32 %j.0, 17, !dbg !1300
  %add53 = add nsw i32 %mul52, %c39.0, !dbg !1301
  %add54 = add nsw i32 %k43.0, %words_to_shift.1, !dbg !1302
  %mul55 = mul i32 %add54, 80, !dbg !1303
  %add56 = add i32 %add53, %mul55, !dbg !1304
  %arrayidx57 = getelementptr inbounds nuw [640 x i64], ptr %A, i32 0, i32 %add56, !dbg !1305
  %6 = load i64, ptr %arrayidx57, align 8, !dbg !1306
  %xor58 = xor i64 %6, %shl51, !dbg !1306
  store i64 %xor58, ptr %arrayidx57, align 8, !dbg !1306
  %cmp59 = icmp sgt i32 %bits_to_shift.1, 0, !dbg !1307
  br i1 %cmp59, label %if.then60, label %for.inc76, !dbg !1307

if.then60:                                        ; preds = %for.body46
  %mul61 = shl nuw nsw i32 %c39.0, 2, !dbg !1309
  %add62 = or disjoint i32 %k43.0, %mul61, !dbg !1311
  %arrayidx63 = getelementptr inbounds nuw i64, ptr %add.ptr38, i32 %add62, !dbg !1312
  %7 = load i64, ptr %arrayidx63, align 8, !dbg !1312
  %sub64 = sub nsw i32 64, %bits_to_shift.1, !dbg !1313
  %sh_prom65 = zext nneg i32 %sub64 to i64, !dbg !1314
  %shr66 = lshr i64 %7, %sh_prom65, !dbg !1314
  %mul67 = mul nsw i32 %j.0, 17, !dbg !1315
  %add68 = add nsw i32 %mul67, %c39.0, !dbg !1316
  %add69 = add nsw i32 %k43.0, %words_to_shift.1, !dbg !1317
  %8 = mul i32 %add69, 80, !dbg !1318
  %mul71 = add i32 %8, 80, !dbg !1318
  %add72 = add i32 %add68, %mul71, !dbg !1319
  %arrayidx73 = getelementptr inbounds nuw [640 x i64], ptr %A, i32 0, i32 %add72, !dbg !1320
  %9 = load i64, ptr %arrayidx73, align 8, !dbg !1321
  %xor74 = xor i64 %9, %shr66, !dbg !1321
  store i64 %xor74, ptr %arrayidx73, align 8, !dbg !1321
  br label %for.inc76, !dbg !1322

for.inc76:                                        ; preds = %for.body46, %if.then60
  %inc77 = add nuw nsw i32 %k43.0, 1, !dbg !1323
    #dbg_value(i32 %inc77, !1291, !DIExpression(), !1292)
  br label %for.cond44, !dbg !1324, !llvm.loop !1325

for.inc79:                                        ; preds = %for.cond44
  %inc80 = add nuw nsw i32 %c39.0, 1, !dbg !1327
    #dbg_value(i32 %inc80, !1279, !DIExpression(), !1281)
  br label %for.cond40, !dbg !1328, !llvm.loop !1329

if.end82.loopexit:                                ; preds = %for.cond40
  br label %if.end82, !dbg !1331

if.end82:                                         ; preds = %if.end82.loopexit, %for.end33
  %add83 = add nsw i32 %bits_to_shift.1, 4, !dbg !1331
    #dbg_value(i32 %add83, !1190, !DIExpression(), !1187)
  %cmp84 = icmp eq i32 %add83, 64, !dbg !1332
  %inc86 = zext i1 %cmp84 to i32, !dbg !1332
  %spec.select = add nsw i32 %words_to_shift.1, %inc86, !dbg !1332
  %spec.select3 = select i1 %cmp84, i32 0, i32 %add83, !dbg !1332
    #dbg_value(i32 %spec.select3, !1190, !DIExpression(), !1187)
    #dbg_value(i32 %spec.select, !1191, !DIExpression(), !1187)
  %dec = add nsw i32 %j.0, -1, !dbg !1334
    #dbg_value(i32 %dec, !1215, !DIExpression(), !1216)
  br label %for.cond1, !dbg !1335, !llvm.loop !1336

for.inc90:                                        ; preds = %for.cond1
  %words_to_shift.1.lcssa = phi i32 [ %words_to_shift.1, %for.cond1 ], !dbg !1187
  %bits_to_shift.1.lcssa = phi i32 [ %bits_to_shift.1, %for.cond1 ], !dbg !1187
  %inc91 = add nuw nsw i32 %i.0, 1, !dbg !1338
    #dbg_value(i32 %inc91, !1199, !DIExpression(), !1201)
  br label %for.cond, !dbg !1339, !llvm.loop !1340

for.cond94:                                       ; preds = %for.cond94.preheader, %for.body97
  %c93.0 = phi i32 [ %add100, %for.body97 ], [ 0, %for.cond94.preheader ], !dbg !1342
    #dbg_value(i32 %c93.0, !1343, !DIExpression(), !1344)
  %cmp96 = icmp samesign ult i32 %c93.0, 400, !dbg !1345
  br i1 %cmp96, label %for.body97, label %for.end101, !dbg !1212

for.body97:                                       ; preds = %for.cond94
  %add.ptr98 = getelementptr inbounds nuw i64, ptr %A, i32 %c93.0, !dbg !1347
  call fastcc void @transpose_16x16_nibbles(ptr noundef nonnull %add.ptr98) #6, !dbg !1349
  %add100 = add nuw nsw i32 %c93.0, 16, !dbg !1350
    #dbg_value(i32 %add100, !1343, !DIExpression(), !1344)
  br label %for.cond94, !dbg !1351, !llvm.loop !1352

for.end101:                                       ; preds = %for.cond94
    #dbg_declare(ptr %tab, !1354, !DIExpression(), !1358)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %tab, i8 0, i32 16, i1 false), !dbg !1358
    #dbg_value(i32 0, !1359, !DIExpression(), !1361)
  br label %for.cond103, !dbg !1362

for.cond103:                                      ; preds = %for.body105, %for.end101
  %i102.0 = phi i32 [ 0, %for.end101 ], [ %inc125, %for.body105 ], !dbg !1363
    #dbg_value(i32 %i102.0, !1359, !DIExpression(), !1361)
  %exitcond8 = icmp ne i32 %i102.0, 4, !dbg !1364
  br i1 %exitcond8, label %for.body105, label %for.cond128.preheader, !dbg !1366

for.cond128.preheader:                            ; preds = %for.cond103
  br label %for.cond128, !dbg !1367

for.body105:                                      ; preds = %for.cond103
  %arrayidx106 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %i102.0, !dbg !1369
  %10 = load i8, ptr %arrayidx106, align 1, !dbg !1369
  %call = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %10, i8 noundef zeroext 1) #6, !dbg !1371
  %mul107 = shl nuw nsw i32 %i102.0, 2, !dbg !1372
  %arrayidx108 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %mul107, !dbg !1373
  store i8 %call, ptr %arrayidx108, align 1, !dbg !1374
  %call110 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %10, i8 noundef zeroext 2) #6, !dbg !1375
  %mul111 = shl nuw nsw i32 %i102.0, 2, !dbg !1376
  %add112 = or disjoint i32 %mul111, 1, !dbg !1377
  %arrayidx113 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add112, !dbg !1378
  store i8 %call110, ptr %arrayidx113, align 1, !dbg !1379
  %arrayidx114 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %i102.0, !dbg !1380
  %11 = load i8, ptr %arrayidx114, align 1, !dbg !1380
  %call115 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %11, i8 noundef zeroext 4) #6, !dbg !1381
  %mul116 = shl nuw nsw i32 %i102.0, 2, !dbg !1382
  %add117 = or disjoint i32 %mul116, 2, !dbg !1383
  %arrayidx118 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add117, !dbg !1384
  store i8 %call115, ptr %arrayidx118, align 1, !dbg !1385
  %arrayidx119 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %i102.0, !dbg !1386
  %12 = load i8, ptr %arrayidx119, align 1, !dbg !1386
  %call120 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %12, i8 noundef zeroext 8) #6, !dbg !1387
  %mul121 = shl nuw nsw i32 %i102.0, 2, !dbg !1388
  %add122 = or disjoint i32 %mul121, 3, !dbg !1389
  %arrayidx123 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add122, !dbg !1390
  store i8 %call120, ptr %arrayidx123, align 1, !dbg !1391
  %inc125 = add nuw nsw i32 %i102.0, 1, !dbg !1392
    #dbg_value(i32 %inc125, !1359, !DIExpression(), !1361)
  br label %for.cond103, !dbg !1393, !llvm.loop !1394

for.cond128:                                      ; preds = %for.cond128.preheader, %for.inc189
  %c127.0 = phi i32 [ %add190, %for.inc189 ], [ 0, %for.cond128.preheader ], !dbg !1396
    #dbg_value(i32 %c127.0, !1397, !DIExpression(), !1398)
  %cmp129 = icmp samesign ult i32 %c127.0, 80, !dbg !1399
  br i1 %cmp129, label %for.cond131.preheader, label %for.cond193.preheader, !dbg !1367

for.cond131.preheader:                            ; preds = %for.cond128
  br label %for.cond131, !dbg !1401

for.cond193.preheader:                            ; preds = %for.cond128
  br label %for.cond193, !dbg !1404

for.cond131:                                      ; preds = %for.cond131.preheader, %for.inc186
  %r.0 = phi i32 [ %inc187, %for.inc186 ], [ 64, %for.cond131.preheader ], !dbg !1406
    #dbg_value(i32 %r.0, !1407, !DIExpression(), !1408)
  %exitcond10 = icmp ne i32 %r.0, 74, !dbg !1409
  br i1 %exitcond10, label %for.body133, label %for.inc189, !dbg !1401

for.body133:                                      ; preds = %for.cond131
  %div1 = lshr i32 %r.0, 4, !dbg !1411
  %mul134 = mul nuw nsw i32 %div1, 80, !dbg !1413
  %add135 = add nuw nsw i32 %mul134, %c127.0, !dbg !1414
  %rem = and i32 %r.0, 15, !dbg !1415
  %add136 = or disjoint i32 %add135, %rem, !dbg !1416
    #dbg_value(i32 %add136, !1417, !DIExpression(), !1418)
  %arrayidx137 = getelementptr inbounds nuw [640 x i64], ptr %A, i32 0, i32 %add136, !dbg !1419
  %13 = load i64, ptr %arrayidx137, align 8, !dbg !1419
  %and = and i64 %13, 1229782938247303441, !dbg !1420
    #dbg_value(i64 %and, !1421, !DIExpression(), !1418)
  %shr139 = lshr i64 %13, 1, !dbg !1422
  %and140 = and i64 %shr139, 1229782938247303441, !dbg !1423
    #dbg_value(i64 %and140, !1424, !DIExpression(), !1418)
  %shr142 = lshr i64 %13, 2, !dbg !1425
  %and143 = and i64 %shr142, 1229782938247303441, !dbg !1426
    #dbg_value(i64 %and143, !1427, !DIExpression(), !1418)
  %arrayidx144 = getelementptr inbounds nuw [640 x i64], ptr %A, i32 0, i32 %add136, !dbg !1428
  %14 = load i64, ptr %arrayidx144, align 8, !dbg !1428
  %shr145 = lshr i64 %14, 3, !dbg !1429
  %and146 = and i64 %shr145, 1229782938247303441, !dbg !1430
    #dbg_value(i64 %and146, !1431, !DIExpression(), !1418)
    #dbg_value(i32 0, !1432, !DIExpression(), !1434)
  br label %for.cond147, !dbg !1435

for.cond147:                                      ; preds = %for.body149, %for.body133
  %t.0 = phi i32 [ 0, %for.body133 ], [ %inc184, %for.body149 ], !dbg !1436
    #dbg_value(i32 %t.0, !1432, !DIExpression(), !1434)
  %exitcond9 = icmp ne i32 %t.0, 4, !dbg !1437
  br i1 %exitcond9, label %for.body149, label %for.inc186, !dbg !1439

for.body149:                                      ; preds = %for.cond147
  %mul150 = shl nuw nsw i32 %t.0, 2, !dbg !1440
  %arrayidx152 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %mul150, !dbg !1442
  %15 = load i8, ptr %arrayidx152, align 1, !dbg !1442
  %conv = zext i8 %15 to i64, !dbg !1442
  %mul153 = mul i64 %and, %conv, !dbg !1443
  %mul154 = shl nuw nsw i32 %t.0, 2, !dbg !1444
  %add155 = or disjoint i32 %mul154, 1, !dbg !1445
  %arrayidx156 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add155, !dbg !1446
  %16 = load i8, ptr %arrayidx156, align 1, !dbg !1446
  %conv157 = zext i8 %16 to i64, !dbg !1446
  %mul158 = mul i64 %and140, %conv157, !dbg !1447
  %xor159 = xor i64 %mul153, %mul158, !dbg !1448
  %mul160 = shl nuw nsw i32 %t.0, 2, !dbg !1449
  %add161 = or disjoint i32 %mul160, 2, !dbg !1450
  %arrayidx162 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add161, !dbg !1451
  %17 = load i8, ptr %arrayidx162, align 1, !dbg !1451
  %conv163 = zext i8 %17 to i64, !dbg !1451
  %mul164 = mul i64 %and143, %conv163, !dbg !1452
  %xor165 = xor i64 %xor159, %mul164, !dbg !1453
  %mul166 = shl nuw nsw i32 %t.0, 2, !dbg !1454
  %add167 = or disjoint i32 %mul166, 3, !dbg !1455
  %arrayidx168 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add167, !dbg !1456
  %18 = load i8, ptr %arrayidx168, align 1, !dbg !1456
  %conv169 = zext i8 %18 to i64, !dbg !1456
  %mul170 = mul i64 %and146, %conv169, !dbg !1457
  %xor171 = xor i64 %xor165, %mul170, !dbg !1458
  %add172 = add nuw nsw i32 %r.0, %t.0, !dbg !1459
  %sub173 = add nsw i32 %add172, -64, !dbg !1460
  %div1742 = lshr i32 %sub173, 4, !dbg !1461
  %mul175 = mul i32 %div1742, 80, !dbg !1462
  %add176 = add i32 %mul175, %c127.0, !dbg !1463
  %add177 = add nuw nsw i32 %r.0, %t.0, !dbg !1464
  %rem179 = and i32 %add177, 15, !dbg !1465
  %add180 = or disjoint i32 %add176, %rem179, !dbg !1466
  %arrayidx181 = getelementptr inbounds nuw [640 x i64], ptr %A, i32 0, i32 %add180, !dbg !1467
  %19 = load i64, ptr %arrayidx181, align 8, !dbg !1468
  %xor182 = xor i64 %19, %xor171, !dbg !1468
  store i64 %xor182, ptr %arrayidx181, align 8, !dbg !1468
  %inc184 = add nuw nsw i32 %t.0, 1, !dbg !1469
    #dbg_value(i32 %inc184, !1432, !DIExpression(), !1434)
  br label %for.cond147, !dbg !1470, !llvm.loop !1471

for.inc186:                                       ; preds = %for.cond147
  %inc187 = add nuw nsw i32 %r.0, 1, !dbg !1473
    #dbg_value(i32 %inc187, !1407, !DIExpression(), !1408)
  br label %for.cond131, !dbg !1474, !llvm.loop !1475

for.inc189:                                       ; preds = %for.cond131
  %add190 = add nuw nsw i32 %c127.0, 16, !dbg !1477
    #dbg_value(i32 %add190, !1397, !DIExpression(), !1398)
  br label %for.cond128, !dbg !1478, !llvm.loop !1479

for.cond193:                                      ; preds = %for.cond193.preheader, %for.inc227
  %indvars.iv = phi i32 [ 64, %for.cond193.preheader ], [ %indvars.iv.next, %for.inc227 ], !dbg !1481
  %r192.0 = phi i32 [ %add228, %for.inc227 ], [ 0, %for.cond193.preheader ], !dbg !1481
    #dbg_value(i32 %r192.0, !1482, !DIExpression(), !1483)
  %cmp194 = icmp samesign ult i32 %r192.0, 64, !dbg !1484
  br i1 %cmp194, label %for.cond198.preheader, label %for.end229, !dbg !1404

for.cond198.preheader:                            ; preds = %for.cond193
  br label %for.cond198, !dbg !1486

for.cond198:                                      ; preds = %for.cond198.preheader, %for.inc224
  %c197.0 = phi i32 [ %add225, %for.inc224 ], [ 0, %for.cond198.preheader ], !dbg !1489
    #dbg_value(i32 %c197.0, !1490, !DIExpression(), !1491)
  %cmp199 = icmp samesign ult i32 %c197.0, 68, !dbg !1492
  br i1 %cmp199, label %for.cond203.preheader, label %for.inc227, !dbg !1486

for.cond203.preheader:                            ; preds = %for.cond198
  br label %for.cond203, !dbg !1494

for.cond203:                                      ; preds = %for.cond203.preheader, %for.body207
  %i202.0 = phi i32 [ %inc222, %for.body207 ], [ 0, %for.cond203.preheader ], !dbg !1497
    #dbg_value(i32 %i202.0, !1498, !DIExpression(), !1499)
  %exitcond11 = icmp ne i32 %i202.0, %indvars.iv, !dbg !1500
  br i1 %exitcond11, label %for.body207, label %for.inc224, !dbg !1494

for.body207:                                      ; preds = %for.cond203
  %div209 = mul nuw nsw i32 %r192.0, 5, !dbg !1502
  %add210 = add nuw nsw i32 %div209, %c197.0, !dbg !1504
  %add211 = add nuw nsw i32 %add210, %i202.0, !dbg !1505
  %arrayidx212 = getelementptr inbounds nuw [640 x i64], ptr %A, i32 0, i32 %add211, !dbg !1506
  %add213 = add nuw nsw i32 %r192.0, %i202.0, !dbg !1507
  %mul214 = mul nuw nsw i32 %add213, 69, !dbg !1508
  %add.ptr215 = getelementptr inbounds nuw i8, ptr %A_out, i32 %mul214, !dbg !1509
  %add.ptr216 = getelementptr inbounds nuw i8, ptr %add.ptr215, i32 %c197.0, !dbg !1510
  %cmp218 = icmp samesign ult i32 %c197.0, 52, !dbg !1511
  %sub220 = sub nsw i32 68, %c197.0, !dbg !1511
  %cond = select i1 %cmp218, i32 16, i32 %sub220, !dbg !1511
  call fastcc void @decode(ptr noundef nonnull %arrayidx212, ptr noundef %add.ptr216, i32 noundef %cond) #6, !dbg !1512
  %inc222 = add nuw nsw i32 %i202.0, 1, !dbg !1513
    #dbg_value(i32 %inc222, !1498, !DIExpression(), !1499)
  br label %for.cond203, !dbg !1514, !llvm.loop !1515

for.inc224:                                       ; preds = %for.cond203
  %add225 = add nuw nsw i32 %c197.0, 16, !dbg !1517
    #dbg_value(i32 %add225, !1490, !DIExpression(), !1491)
  br label %for.cond198, !dbg !1518, !llvm.loop !1519

for.inc227:                                       ; preds = %for.cond198
  %add228 = add nuw nsw i32 %r192.0, 16, !dbg !1521
    #dbg_value(i32 %add228, !1482, !DIExpression(), !1483)
  %indvars.iv.next = add nsw i32 %indvars.iv, -16, !dbg !1522
  br label %for.cond193, !dbg !1522, !llvm.loop !1523

for.end229:                                       ; preds = %for.cond193
  ret void, !dbg !1525
}

declare dso_local ptr @memset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
define internal fastcc void @mat_mul(ptr noundef %a, ptr noundef %b, ptr noundef %c, i32 noundef %colrow_ab, i32 noundef %row_a, i32 noundef %col_b) unnamed_addr #0 !dbg !1526 {
entry:
    #dbg_value(ptr %a, !1529, !DIExpression(), !1530)
    #dbg_value(ptr %b, !1531, !DIExpression(), !1530)
    #dbg_value(ptr %c, !1532, !DIExpression(), !1530)
    #dbg_value(i32 %colrow_ab, !1533, !DIExpression(), !1530)
    #dbg_value(i32 %row_a, !1534, !DIExpression(), !1530)
    #dbg_value(i32 %col_b, !1535, !DIExpression(), !1530)
    #dbg_value(i32 0, !1536, !DIExpression(), !1538)
  %smax = call i32 @llvm.smax.i32(i32 %col_b, i32 0), !dbg !1539
  %smax1 = call i32 @llvm.smax.i32(i32 %row_a, i32 0), !dbg !1539
  br label %for.cond, !dbg !1539

for.cond:                                         ; preds = %for.inc4, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc5, %for.inc4 ], !dbg !1540
  %c.addr.0 = phi ptr [ %c, %entry ], [ %c.addr.1.lcssa, %for.inc4 ]
  %a.addr.0 = phi ptr [ %a, %entry ], [ %add.ptr6, %for.inc4 ]
    #dbg_value(ptr %a.addr.0, !1529, !DIExpression(), !1530)
    #dbg_value(ptr %c.addr.0, !1532, !DIExpression(), !1530)
    #dbg_value(i32 %i.0, !1536, !DIExpression(), !1538)
  %exitcond2 = icmp ne i32 %i.0, %smax1, !dbg !1541
  br i1 %exitcond2, label %for.cond1.preheader, label %for.end7, !dbg !1543

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !1544

for.cond1:                                        ; preds = %for.cond1.preheader, %for.body3
  %c.addr.1 = phi ptr [ %incdec.ptr, %for.body3 ], [ %c.addr.0, %for.cond1.preheader ]
  %j.0 = phi i32 [ %inc, %for.body3 ], [ 0, %for.cond1.preheader ], !dbg !1547
    #dbg_value(i32 %j.0, !1548, !DIExpression(), !1549)
    #dbg_value(ptr %c.addr.1, !1532, !DIExpression(), !1530)
  %exitcond = icmp ne i32 %j.0, %smax, !dbg !1550
  br i1 %exitcond, label %for.body3, label %for.inc4, !dbg !1544

for.body3:                                        ; preds = %for.cond1
  %add.ptr = getelementptr inbounds nuw i8, ptr %b, i32 %j.0, !dbg !1552
  %call = call fastcc zeroext i8 @lincomb(ptr noundef %a.addr.0, ptr noundef %add.ptr, i32 noundef %colrow_ab, i32 noundef %col_b) #6, !dbg !1554
  store i8 %call, ptr %c.addr.1, align 1, !dbg !1555
  %inc = add nuw i32 %j.0, 1, !dbg !1556
    #dbg_value(i32 %inc, !1548, !DIExpression(), !1549)
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %c.addr.1, i32 1, !dbg !1557
    #dbg_value(ptr %incdec.ptr, !1532, !DIExpression(), !1530)
  br label %for.cond1, !dbg !1558, !llvm.loop !1559

for.inc4:                                         ; preds = %for.cond1
  %c.addr.1.lcssa = phi ptr [ %c.addr.1, %for.cond1 ]
  %inc5 = add nuw i32 %i.0, 1, !dbg !1561
    #dbg_value(i32 %inc5, !1536, !DIExpression(), !1538)
  %add.ptr6 = getelementptr inbounds i8, ptr %a.addr.0, i32 %colrow_ab, !dbg !1562
    #dbg_value(ptr %add.ptr6, !1529, !DIExpression(), !1530)
  br label %for.cond, !dbg !1563, !llvm.loop !1564

for.end7:                                         ; preds = %for.cond
  ret void, !dbg !1566
}

; Function Attrs: nounwind
define internal fastcc void @mat_add(ptr noundef %a, ptr noundef %b, ptr noundef %c, i32 noundef %m, i32 noundef %n) unnamed_addr #0 !dbg !1567 {
entry:
    #dbg_value(ptr %a, !1570, !DIExpression(), !1571)
    #dbg_value(ptr %b, !1572, !DIExpression(), !1571)
    #dbg_value(ptr %c, !1573, !DIExpression(), !1571)
    #dbg_value(i32 %m, !1574, !DIExpression(), !1571)
    #dbg_value(i32 %n, !1575, !DIExpression(), !1571)
    #dbg_value(i32 0, !1576, !DIExpression(), !1578)
  %smax = call i32 @llvm.smax.i32(i32 %n, i32 0), !dbg !1579
  %smax1 = call i32 @llvm.smax.i32(i32 %m, i32 0), !dbg !1579
  br label %for.cond, !dbg !1579

for.cond:                                         ; preds = %for.inc11, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc12, %for.inc11 ], !dbg !1580
    #dbg_value(i32 %i.0, !1576, !DIExpression(), !1578)
  %exitcond2 = icmp ne i32 %i.0, %smax1, !dbg !1581
  br i1 %exitcond2, label %for.cond1.preheader, label %for.end13, !dbg !1583

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !1584

for.cond1:                                        ; preds = %for.cond1.preheader, %for.body3
  %j.0 = phi i32 [ %inc, %for.body3 ], [ 0, %for.cond1.preheader ], !dbg !1587
    #dbg_value(i32 %j.0, !1588, !DIExpression(), !1589)
  %exitcond = icmp ne i32 %j.0, %smax, !dbg !1590
  br i1 %exitcond, label %for.body3, label %for.inc11, !dbg !1584

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %i.0, %n, !dbg !1592
  %add.ptr = getelementptr inbounds i8, ptr %a, i32 %mul, !dbg !1594
  %add.ptr4 = getelementptr inbounds nuw i8, ptr %add.ptr, i32 %j.0, !dbg !1595
  %0 = load i8, ptr %add.ptr4, align 1, !dbg !1596
  %mul5 = mul nsw i32 %i.0, %n, !dbg !1597
  %add.ptr6 = getelementptr inbounds i8, ptr %b, i32 %mul5, !dbg !1598
  %add.ptr7 = getelementptr inbounds nuw i8, ptr %add.ptr6, i32 %j.0, !dbg !1599
  %1 = load i8, ptr %add.ptr7, align 1, !dbg !1600
  %call = call fastcc zeroext i8 @add_f(i8 noundef zeroext %0, i8 noundef zeroext %1) #6, !dbg !1601
  %mul8 = mul nsw i32 %i.0, %n, !dbg !1602
  %add.ptr9 = getelementptr inbounds i8, ptr %c, i32 %mul8, !dbg !1603
  %add.ptr10 = getelementptr inbounds nuw i8, ptr %add.ptr9, i32 %j.0, !dbg !1604
  store i8 %call, ptr %add.ptr10, align 1, !dbg !1605
  %inc = add nuw i32 %j.0, 1, !dbg !1606
    #dbg_value(i32 %inc, !1588, !DIExpression(), !1589)
  br label %for.cond1, !dbg !1607, !llvm.loop !1608

for.inc11:                                        ; preds = %for.cond1
  %inc12 = add nuw i32 %i.0, 1, !dbg !1610
    #dbg_value(i32 %inc12, !1576, !DIExpression(), !1578)
  br label %for.cond, !dbg !1611, !llvm.loop !1612

for.end13:                                        ; preds = %for.cond
  ret void, !dbg !1614
}

; Function Attrs: nounwind
define internal fastcc void @encode(ptr noundef %m, ptr noundef %menc, i32 noundef %mlen) unnamed_addr #0 !dbg !1615 {
entry:
    #dbg_value(ptr %m, !1616, !DIExpression(), !1617)
    #dbg_value(ptr %menc, !1618, !DIExpression(), !1617)
    #dbg_value(i32 %mlen, !1619, !DIExpression(), !1617)
    #dbg_value(i32 0, !1620, !DIExpression(), !1617)
  br label %for.cond, !dbg !1621

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1623
  %m.addr.0 = phi ptr [ %m, %entry ], [ %add.ptr3, %for.body ]
    #dbg_value(ptr %m.addr.0, !1616, !DIExpression(), !1617)
    #dbg_value(i32 %i.0, !1620, !DIExpression(), !1617)
  %div = sdiv i32 %mlen, 2, !dbg !1624
  %cmp = icmp slt i32 %i.0, %div, !dbg !1626
  br i1 %cmp, label %for.body, label %for.end, !dbg !1627

for.body:                                         ; preds = %for.cond
  %0 = load i8, ptr %m.addr.0, align 1, !dbg !1628
  %add.ptr = getelementptr inbounds nuw i8, ptr %m.addr.0, i32 1, !dbg !1630
  %1 = load i8, ptr %add.ptr, align 1, !dbg !1631
  %shl = shl i8 %1, 4, !dbg !1632
  %or = or i8 %shl, %0, !dbg !1633
  %arrayidx = getelementptr inbounds nuw i8, ptr %menc, i32 %i.0, !dbg !1634
  store i8 %or, ptr %arrayidx, align 1, !dbg !1635
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1636
    #dbg_value(i32 %inc, !1620, !DIExpression(), !1617)
  %add.ptr3 = getelementptr inbounds nuw i8, ptr %m.addr.0, i32 2, !dbg !1637
    #dbg_value(ptr %add.ptr3, !1616, !DIExpression(), !1617)
  br label %for.cond, !dbg !1638, !llvm.loop !1639

for.end:                                          ; preds = %for.cond
  %i.0.lcssa = phi i32 [ %i.0, %for.cond ], !dbg !1623
  %m.addr.0.lcssa = phi ptr [ %m.addr.0, %for.cond ]
  %2 = and i32 %mlen, -2147483647, !dbg !1641
  %cmp4 = icmp eq i32 %2, 1, !dbg !1641
  br i1 %cmp4, label %if.then, label %if.end, !dbg !1641

if.then:                                          ; preds = %for.end
  %3 = load i8, ptr %m.addr.0.lcssa, align 1, !dbg !1643
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %menc, i32 %i.0.lcssa, !dbg !1645
  store i8 %3, ptr %arrayidx6, align 1, !dbg !1646
  br label %if.end, !dbg !1647

if.end:                                           ; preds = %if.then, %for.end
  ret void, !dbg !1648
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @add_f(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !1649 {
entry:
    #dbg_value(i8 %a, !1652, !DIExpression(), !1653)
    #dbg_value(i8 %b, !1654, !DIExpression(), !1653)
  %xor1 = xor i8 %a, %b, !dbg !1655
  ret i8 %xor1, !dbg !1656
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @lincomb(ptr noundef %a, ptr noundef %b, i32 noundef %n, i32 noundef %m) unnamed_addr #0 !dbg !1657 {
entry:
    #dbg_value(ptr %a, !1660, !DIExpression(), !1661)
    #dbg_value(ptr %b, !1662, !DIExpression(), !1661)
    #dbg_value(i32 %n, !1663, !DIExpression(), !1661)
    #dbg_value(i32 %m, !1664, !DIExpression(), !1661)
    #dbg_value(i8 0, !1665, !DIExpression(), !1661)
    #dbg_value(i32 0, !1666, !DIExpression(), !1668)
  %smax = call i32 @llvm.smax.i32(i32 %n, i32 0), !dbg !1669
  br label %for.cond, !dbg !1669

for.cond:                                         ; preds = %for.body, %entry
  %ret.0 = phi i8 [ 0, %entry ], [ %call1, %for.body ], !dbg !1661
  %b.addr.0 = phi ptr [ %b, %entry ], [ %add.ptr, %for.body ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1670
    #dbg_value(i32 %i.0, !1666, !DIExpression(), !1668)
    #dbg_value(ptr %b.addr.0, !1662, !DIExpression(), !1661)
    #dbg_value(i8 %ret.0, !1665, !DIExpression(), !1661)
  %exitcond = icmp ne i32 %i.0, %smax, !dbg !1671
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1673

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %a, i32 %i.0, !dbg !1674
  %0 = load i8, ptr %arrayidx, align 1, !dbg !1674
  %1 = load i8, ptr %b.addr.0, align 1, !dbg !1676
  %call = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %0, i8 noundef zeroext %1) #6, !dbg !1677
  %call1 = call fastcc zeroext i8 @add_f(i8 noundef zeroext %call, i8 noundef zeroext %ret.0) #6, !dbg !1678
    #dbg_value(i8 %call1, !1665, !DIExpression(), !1661)
  %inc = add nuw i32 %i.0, 1, !dbg !1679
    #dbg_value(i32 %inc, !1666, !DIExpression(), !1668)
  %add.ptr = getelementptr inbounds i8, ptr %b.addr.0, i32 %m, !dbg !1680
    #dbg_value(ptr %add.ptr, !1662, !DIExpression(), !1661)
  br label %for.cond, !dbg !1681, !llvm.loop !1682

for.end:                                          ; preds = %for.cond
  %ret.0.lcssa = phi i8 [ %ret.0, %for.cond ], !dbg !1661
  ret i8 %ret.0.lcssa, !dbg !1684
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @mul_f(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !1685 {
entry:
    #dbg_value(i8 %a, !1686, !DIExpression(), !1687)
    #dbg_value(i8 %b, !1688, !DIExpression(), !1687)
  %0 = load volatile i8, ptr @pqmayo_MAYO_2_ref_unsigned_char_blocker, align 1, !dbg !1689
  %xor1 = xor i8 %a, %0, !dbg !1690
    #dbg_value(i8 %xor1, !1686, !DIExpression(), !1687)
  %1 = trunc i8 %xor1 to i1, !dbg !1691
    #dbg_value(i8 poison, !1692, !DIExpression(), !1687)
  %2 = and i8 %xor1, 2, !dbg !1693
  %mul9 = mul i8 %2, %b, !dbg !1694
  %conv10 = select i1 %1, i8 %b, i8 0, !dbg !1691
  %xor11 = xor i8 %conv10, %mul9, !dbg !1695
    #dbg_value(i8 %xor11, !1692, !DIExpression(), !1687)
  %3 = and i8 %xor1, 4, !dbg !1696
  %mul16 = mul i8 %3, %b, !dbg !1697
  %xor18 = xor i8 %mul16, %xor11, !dbg !1698
    #dbg_value(i8 %xor18, !1692, !DIExpression(), !1687)
  %4 = and i8 %xor1, 8, !dbg !1699
  %mul23 = mul i8 %4, %b, !dbg !1700
  %xor25 = xor i8 %mul23, %xor18, !dbg !1701
    #dbg_value(i8 %xor25, !1692, !DIExpression(), !1687)
    #dbg_value(i8 %xor25, !1702, !DIExpression(DW_OP_constu, 18446744073709551600, DW_OP_and, DW_OP_stack_value), !1687)
  %5 = lshr i8 %xor25, 4, !dbg !1703
  %6 = lshr i8 %xor25, 3, !dbg !1704
  %7 = and i8 %6, 14, !dbg !1704
  %8 = xor i8 %5, %7, !dbg !1705
  %xor25.masked = and i8 %xor25, 15, !dbg !1706
  %9 = xor i8 %8, %xor25.masked, !dbg !1706
    #dbg_value(i8 %9, !1707, !DIExpression(), !1687)
  ret i8 %9, !dbg !1708
}

; Function Attrs: nounwind
define internal fastcc void @transpose_16x16_nibbles(ptr noundef %M) unnamed_addr #0 !dbg !67 {
entry:
    #dbg_value(ptr %M, !1709, !DIExpression(), !1710)
    #dbg_value(i32 0, !1711, !DIExpression(), !1713)
  br label %for.cond, !dbg !1714

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %add7, %for.body ], !dbg !1715
    #dbg_value(i32 %i.0, !1711, !DIExpression(), !1713)
  %cmp = icmp samesign ult i32 %i.0, 16, !dbg !1716
  br i1 %cmp, label %for.body, label %for.cond9.preheader, !dbg !1718

for.cond9.preheader:                              ; preds = %for.cond
  br label %for.cond9, !dbg !1719

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %M, i32 %i.0, !dbg !1721
  %0 = load i64, ptr %arrayidx, align 8, !dbg !1721
  %shr = lshr i64 %0, 4, !dbg !1723
  %add = or disjoint i32 %i.0, 1, !dbg !1724
  %arrayidx1 = getelementptr inbounds nuw i64, ptr %M, i32 %add, !dbg !1725
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !1725
  %xor = xor i64 %shr, %1, !dbg !1726
  %and = and i64 %xor, 1085102592571150095, !dbg !1727
    #dbg_value(i64 %and, !1728, !DIExpression(), !1729)
  %shl = shl nuw i64 %and, 4, !dbg !1730
  %arrayidx2 = getelementptr inbounds nuw i64, ptr %M, i32 %i.0, !dbg !1731
  %2 = load i64, ptr %arrayidx2, align 8, !dbg !1732
  %xor3 = xor i64 %2, %shl, !dbg !1732
  store i64 %xor3, ptr %arrayidx2, align 8, !dbg !1732
  %add4 = or disjoint i32 %i.0, 1, !dbg !1733
  %arrayidx5 = getelementptr inbounds nuw i64, ptr %M, i32 %add4, !dbg !1734
  %3 = load i64, ptr %arrayidx5, align 8, !dbg !1735
  %xor6 = xor i64 %3, %and, !dbg !1735
  store i64 %xor6, ptr %arrayidx5, align 8, !dbg !1735
  %add7 = add nuw nsw i32 %i.0, 2, !dbg !1736
    #dbg_value(i32 %add7, !1711, !DIExpression(), !1713)
  br label %for.cond, !dbg !1737, !llvm.loop !1738

for.cond9:                                        ; preds = %for.cond9.preheader, %for.body11
  %i8.0 = phi i32 [ %add39, %for.body11 ], [ 0, %for.cond9.preheader ], !dbg !1740
    #dbg_value(i32 %i8.0, !1741, !DIExpression(), !1742)
  %cmp10 = icmp samesign ult i32 %i8.0, 16, !dbg !1743
  br i1 %cmp10, label %for.body11, label %for.cond42.preheader, !dbg !1719

for.cond42.preheader:                             ; preds = %for.cond9
  br label %for.cond42, !dbg !1745

for.body11:                                       ; preds = %for.cond9
  %arrayidx12 = getelementptr inbounds nuw i64, ptr %M, i32 %i8.0, !dbg !1747
  %4 = load i64, ptr %arrayidx12, align 8, !dbg !1747
  %shr13 = lshr i64 %4, 8, !dbg !1749
  %add14 = or disjoint i32 %i8.0, 2, !dbg !1750
  %arrayidx15 = getelementptr inbounds nuw i64, ptr %M, i32 %add14, !dbg !1751
  %5 = load i64, ptr %arrayidx15, align 8, !dbg !1751
  %xor16 = xor i64 %shr13, %5, !dbg !1752
  %and17 = and i64 %xor16, 71777214294589695, !dbg !1753
    #dbg_value(i64 %and17, !1754, !DIExpression(), !1755)
  %add18 = or disjoint i32 %i8.0, 1, !dbg !1756
  %arrayidx19 = getelementptr inbounds nuw i64, ptr %M, i32 %add18, !dbg !1757
  %6 = load i64, ptr %arrayidx19, align 8, !dbg !1757
  %shr20 = lshr i64 %6, 8, !dbg !1758
  %add21 = or disjoint i32 %i8.0, 3, !dbg !1759
  %arrayidx22 = getelementptr inbounds nuw i64, ptr %M, i32 %add21, !dbg !1760
  %7 = load i64, ptr %arrayidx22, align 8, !dbg !1760
  %xor23 = xor i64 %shr20, %7, !dbg !1761
  %and24 = and i64 %xor23, 71777214294589695, !dbg !1762
    #dbg_value(i64 %and24, !1763, !DIExpression(), !1755)
  %shl25 = shl nuw i64 %and17, 8, !dbg !1764
  %arrayidx26 = getelementptr inbounds nuw i64, ptr %M, i32 %i8.0, !dbg !1765
  %8 = load i64, ptr %arrayidx26, align 8, !dbg !1766
  %xor27 = xor i64 %8, %shl25, !dbg !1766
  store i64 %xor27, ptr %arrayidx26, align 8, !dbg !1766
  %shl28 = shl nuw i64 %and24, 8, !dbg !1767
  %add29 = or disjoint i32 %i8.0, 1, !dbg !1768
  %arrayidx30 = getelementptr inbounds nuw i64, ptr %M, i32 %add29, !dbg !1769
  %9 = load i64, ptr %arrayidx30, align 8, !dbg !1770
  %xor31 = xor i64 %9, %shl28, !dbg !1770
  store i64 %xor31, ptr %arrayidx30, align 8, !dbg !1770
  %add32 = or disjoint i32 %i8.0, 2, !dbg !1771
  %arrayidx33 = getelementptr inbounds nuw i64, ptr %M, i32 %add32, !dbg !1772
  %10 = load i64, ptr %arrayidx33, align 8, !dbg !1773
  %xor34 = xor i64 %10, %and17, !dbg !1773
  store i64 %xor34, ptr %arrayidx33, align 8, !dbg !1773
  %add35 = or disjoint i32 %i8.0, 3, !dbg !1774
  %arrayidx36 = getelementptr inbounds nuw i64, ptr %M, i32 %add35, !dbg !1775
  %11 = load i64, ptr %arrayidx36, align 8, !dbg !1776
  %xor37 = xor i64 %11, %and24, !dbg !1776
  store i64 %xor37, ptr %arrayidx36, align 8, !dbg !1776
  %add39 = add nuw nsw i32 %i8.0, 4, !dbg !1777
    #dbg_value(i32 %add39, !1741, !DIExpression(), !1742)
  br label %for.cond9, !dbg !1778, !llvm.loop !1779

for.cond42:                                       ; preds = %for.cond42.preheader, %for.body44
  %i41.0 = phi i32 [ %inc, %for.body44 ], [ 0, %for.cond42.preheader ], !dbg !1781
    #dbg_value(i32 %i41.0, !1782, !DIExpression(), !1783)
  %exitcond = icmp ne i32 %i41.0, 4, !dbg !1784
  br i1 %exitcond, label %for.body44, label %for.cond76.preheader, !dbg !1745

for.cond76.preheader:                             ; preds = %for.cond42
  br label %for.cond76, !dbg !1786

for.body44:                                       ; preds = %for.cond42
  %arrayidx46 = getelementptr inbounds nuw i64, ptr %M, i32 %i41.0, !dbg !1788
  %12 = load i64, ptr %arrayidx46, align 8, !dbg !1788
  %shr47 = lshr i64 %12, 16, !dbg !1790
  %add48 = or disjoint i32 %i41.0, 4, !dbg !1791
  %arrayidx49 = getelementptr inbounds nuw i64, ptr %M, i32 %add48, !dbg !1792
  %13 = load i64, ptr %arrayidx49, align 8, !dbg !1792
  %xor50 = xor i64 %shr47, %13, !dbg !1793
  %and51 = and i64 %xor50, 281470681808895, !dbg !1794
    #dbg_value(i64 %and51, !1795, !DIExpression(), !1796)
  %add53 = or disjoint i32 %i41.0, 8, !dbg !1797
  %arrayidx54 = getelementptr inbounds nuw i64, ptr %M, i32 %add53, !dbg !1798
  %14 = load i64, ptr %arrayidx54, align 8, !dbg !1798
  %shr55 = lshr i64 %14, 16, !dbg !1799
  %add56 = or disjoint i32 %i41.0, 12, !dbg !1800
  %arrayidx57 = getelementptr inbounds nuw i64, ptr %M, i32 %add56, !dbg !1801
  %15 = load i64, ptr %arrayidx57, align 8, !dbg !1801
  %xor58 = xor i64 %shr55, %15, !dbg !1802
  %and59 = and i64 %xor58, 281470681808895, !dbg !1803
    #dbg_value(i64 %and59, !1804, !DIExpression(), !1796)
  %shl60 = shl nuw i64 %and51, 16, !dbg !1805
  %arrayidx61 = getelementptr inbounds nuw i64, ptr %M, i32 %i41.0, !dbg !1806
  %16 = load i64, ptr %arrayidx61, align 8, !dbg !1807
  %xor62 = xor i64 %16, %shl60, !dbg !1807
  store i64 %xor62, ptr %arrayidx61, align 8, !dbg !1807
  %shl63 = shl nuw i64 %and59, 16, !dbg !1808
  %add64 = or disjoint i32 %i41.0, 8, !dbg !1809
  %arrayidx65 = getelementptr inbounds nuw i64, ptr %M, i32 %add64, !dbg !1810
  %17 = load i64, ptr %arrayidx65, align 8, !dbg !1811
  %xor66 = xor i64 %17, %shl63, !dbg !1811
  store i64 %xor66, ptr %arrayidx65, align 8, !dbg !1811
  %add67 = or disjoint i32 %i41.0, 4, !dbg !1812
  %arrayidx68 = getelementptr inbounds nuw i64, ptr %M, i32 %add67, !dbg !1813
  %18 = load i64, ptr %arrayidx68, align 8, !dbg !1814
  %xor69 = xor i64 %18, %and51, !dbg !1814
  store i64 %xor69, ptr %arrayidx68, align 8, !dbg !1814
  %add70 = or disjoint i32 %i41.0, 12, !dbg !1815
  %arrayidx71 = getelementptr inbounds nuw i64, ptr %M, i32 %add70, !dbg !1816
  %19 = load i64, ptr %arrayidx71, align 8, !dbg !1817
  %xor72 = xor i64 %19, %and59, !dbg !1817
  store i64 %xor72, ptr %arrayidx71, align 8, !dbg !1817
  %inc = add nuw nsw i32 %i41.0, 1, !dbg !1818
    #dbg_value(i32 %inc, !1782, !DIExpression(), !1783)
  br label %for.cond42, !dbg !1819, !llvm.loop !1820

for.cond76:                                       ; preds = %for.cond76.preheader, %for.body78
  %i75.0 = phi i32 [ %inc93, %for.body78 ], [ 0, %for.cond76.preheader ], !dbg !1822
    #dbg_value(i32 %i75.0, !1823, !DIExpression(), !1824)
  %exitcond1 = icmp ne i32 %i75.0, 8, !dbg !1825
  br i1 %exitcond1, label %for.body78, label %for.end94, !dbg !1786

for.body78:                                       ; preds = %for.cond76
  %arrayidx80 = getelementptr inbounds nuw i64, ptr %M, i32 %i75.0, !dbg !1827
  %20 = load i64, ptr %arrayidx80, align 8, !dbg !1827
  %shr81 = lshr i64 %20, 32, !dbg !1829
  %add82 = or disjoint i32 %i75.0, 8, !dbg !1830
  %arrayidx83 = getelementptr inbounds nuw i64, ptr %M, i32 %add82, !dbg !1831
  %21 = load i64, ptr %arrayidx83, align 8, !dbg !1831
  %.masked = and i64 %21, 4294967295, !dbg !1832
  %and85 = xor i64 %shr81, %.masked, !dbg !1832
    #dbg_value(i64 %and85, !1833, !DIExpression(), !1834)
  %shl86 = shl nuw i64 %and85, 32, !dbg !1835
  %arrayidx87 = getelementptr inbounds nuw i64, ptr %M, i32 %i75.0, !dbg !1836
  %22 = load i64, ptr %arrayidx87, align 8, !dbg !1837
  %xor88 = xor i64 %22, %shl86, !dbg !1837
  store i64 %xor88, ptr %arrayidx87, align 8, !dbg !1837
  %add89 = or disjoint i32 %i75.0, 8, !dbg !1838
  %arrayidx90 = getelementptr inbounds nuw i64, ptr %M, i32 %add89, !dbg !1839
  %23 = load i64, ptr %arrayidx90, align 8, !dbg !1840
  %xor91 = xor i64 %23, %and85, !dbg !1840
  store i64 %xor91, ptr %arrayidx90, align 8, !dbg !1840
  %inc93 = add nuw nsw i32 %i75.0, 1, !dbg !1841
    #dbg_value(i32 %inc93, !1823, !DIExpression(), !1824)
  br label %for.cond76, !dbg !1842, !llvm.loop !1843

for.end94:                                        ; preds = %for.cond76
  ret void, !dbg !1845
}

; Function Attrs: nounwind
define internal fastcc void @mul_add_mat_x_m_mat(i32 noundef %m_vec_limbs, ptr noundef %mat, ptr noundef %bs_mat, ptr noundef %acc, i32 noundef %mat_rows, i32 noundef %mat_cols, i32 noundef %bs_mat_cols) unnamed_addr #0 !dbg !1846 {
entry:
    #dbg_value(i32 %m_vec_limbs, !1847, !DIExpression(), !1848)
    #dbg_value(ptr %mat, !1849, !DIExpression(), !1848)
    #dbg_value(ptr %bs_mat, !1850, !DIExpression(), !1848)
    #dbg_value(ptr %acc, !1851, !DIExpression(), !1848)
    #dbg_value(i32 %mat_rows, !1852, !DIExpression(), !1848)
    #dbg_value(i32 %mat_cols, !1853, !DIExpression(), !1848)
    #dbg_value(i32 %bs_mat_cols, !1854, !DIExpression(), !1848)
    #dbg_value(i32 0, !1855, !DIExpression(), !1857)
  %smax = call i32 @llvm.smax.i32(i32 %bs_mat_cols, i32 0), !dbg !1858
  %smax1 = call i32 @llvm.smax.i32(i32 %mat_cols, i32 0), !dbg !1858
  %smax3 = call i32 @llvm.smax.i32(i32 %mat_rows, i32 0), !dbg !1858
  br label %for.cond, !dbg !1858

for.cond:                                         ; preds = %for.inc17, %entry
  %r.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ], !dbg !1859
    #dbg_value(i32 %r.0, !1855, !DIExpression(), !1857)
  %exitcond4 = icmp ne i32 %r.0, %smax3, !dbg !1860
  br i1 %exitcond4, label %for.cond1.preheader, label %for.end19, !dbg !1862

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !1863

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc15
  %c.0 = phi i32 [ %inc, %for.inc15 ], [ 0, %for.cond1.preheader ], !dbg !1866
    #dbg_value(i32 %c.0, !1867, !DIExpression(), !1868)
  %exitcond2 = icmp ne i32 %c.0, %smax1, !dbg !1869
  br i1 %exitcond2, label %for.cond4.preheader, label %for.inc17, !dbg !1863

for.cond4.preheader:                              ; preds = %for.cond1
  br label %for.cond4, !dbg !1871

for.cond4:                                        ; preds = %for.cond4.preheader, %for.body6
  %k.0 = phi i32 [ %add14, %for.body6 ], [ 0, %for.cond4.preheader ], !dbg !1874
    #dbg_value(i32 %k.0, !1875, !DIExpression(), !1876)
  %exitcond = icmp ne i32 %k.0, %smax, !dbg !1877
  br i1 %exitcond, label %for.body6, label %for.inc15, !dbg !1871

for.body6:                                        ; preds = %for.cond4
  %mul = mul nsw i32 %c.0, %bs_mat_cols, !dbg !1879
  %add = add nsw i32 %mul, %k.0, !dbg !1881
  %mul7 = mul nsw i32 %m_vec_limbs, %add, !dbg !1882
  %add.ptr = getelementptr inbounds i64, ptr %bs_mat, i32 %mul7, !dbg !1883
  %mul8 = mul nsw i32 %r.0, %mat_cols, !dbg !1884
  %0 = getelementptr i8, ptr %mat, i32 %mul8, !dbg !1885
  %arrayidx = getelementptr i8, ptr %0, i32 %c.0, !dbg !1885
  %1 = load i8, ptr %arrayidx, align 1, !dbg !1885
  %mul10 = mul nsw i32 %r.0, %bs_mat_cols, !dbg !1886
  %add11 = add nsw i32 %mul10, %k.0, !dbg !1887
  %mul12 = mul nsw i32 %m_vec_limbs, %add11, !dbg !1888
  %add.ptr13 = getelementptr inbounds i64, ptr %acc, i32 %mul12, !dbg !1889
  call fastcc void @m_vec_mul_add(i32 noundef %m_vec_limbs, ptr noundef %add.ptr, i8 noundef zeroext %1, ptr noundef %add.ptr13) #6, !dbg !1890
  %add14 = add nuw i32 %k.0, 1, !dbg !1891
    #dbg_value(i32 %add14, !1875, !DIExpression(), !1876)
  br label %for.cond4, !dbg !1892, !llvm.loop !1893

for.inc15:                                        ; preds = %for.cond4
  %inc = add nuw i32 %c.0, 1, !dbg !1895
    #dbg_value(i32 %inc, !1867, !DIExpression(), !1868)
  br label %for.cond1, !dbg !1896, !llvm.loop !1897

for.inc17:                                        ; preds = %for.cond1
  %inc18 = add nuw i32 %r.0, 1, !dbg !1899
    #dbg_value(i32 %inc18, !1855, !DIExpression(), !1857)
  br label %for.cond, !dbg !1900, !llvm.loop !1901

for.end19:                                        ; preds = %for.cond
  ret void, !dbg !1903
}

; Function Attrs: nounwind
define internal fastcc void @P1_times_Vt(ptr noundef %p, ptr noundef %P1, ptr noundef %V, ptr noundef %acc) unnamed_addr #0 !dbg !1904 {
entry:
    #dbg_value(ptr %p, !1905, !DIExpression(), !1906)
    #dbg_value(ptr %P1, !1907, !DIExpression(), !1906)
    #dbg_value(ptr %V, !1908, !DIExpression(), !1906)
    #dbg_value(ptr %acc, !1909, !DIExpression(), !1906)
  call fastcc void @mul_add_m_upper_triangular_mat_x_mat_trans(i32 noundef 4, ptr noundef %P1, ptr noundef %V, ptr noundef %acc, i32 noundef 64, i32 noundef 64, i32 noundef 4, i32 noundef 1) #6, !dbg !1910
  ret void, !dbg !1911
}

; Function Attrs: nounwind
define internal fastcc void @mul_add_m_upper_triangular_mat_x_mat_trans(i32 noundef %m_vec_limbs, ptr noundef %bs_mat, ptr noundef %mat, ptr noundef %acc, i32 noundef %bs_mat_rows, i32 noundef %bs_mat_cols, i32 noundef %mat_rows, i32 noundef %triangular) unnamed_addr #0 !dbg !1912 {
entry:
    #dbg_value(i32 %m_vec_limbs, !1913, !DIExpression(), !1914)
    #dbg_value(ptr %bs_mat, !1915, !DIExpression(), !1914)
    #dbg_value(ptr %mat, !1916, !DIExpression(), !1914)
    #dbg_value(ptr %acc, !1917, !DIExpression(), !1914)
    #dbg_value(i32 %bs_mat_rows, !1918, !DIExpression(), !1914)
    #dbg_value(i32 %bs_mat_cols, !1919, !DIExpression(), !1914)
    #dbg_value(i32 %mat_rows, !1920, !DIExpression(), !1914)
    #dbg_value(i32 %triangular, !1921, !DIExpression(), !1914)
    #dbg_value(i32 0, !1922, !DIExpression(), !1914)
    #dbg_value(i32 0, !1923, !DIExpression(), !1925)
  %smax = call i32 @llvm.smax.i32(i32 %mat_rows, i32 0), !dbg !1926
  %smax1 = call i32 @llvm.smax.i32(i32 %bs_mat_rows, i32 0), !dbg !1926
  br label %for.cond, !dbg !1926

for.cond:                                         ; preds = %for.inc17, %entry
  %bs_mat_entries_used.0 = phi i32 [ 0, %entry ], [ %bs_mat_entries_used.1.lcssa, %for.inc17 ], !dbg !1927
  %r.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ], !dbg !1928
    #dbg_value(i32 %r.0, !1923, !DIExpression(), !1925)
    #dbg_value(i32 %bs_mat_entries_used.0, !1922, !DIExpression(), !1914)
  %exitcond2 = icmp ne i32 %r.0, %smax1, !dbg !1929
  br i1 %exitcond2, label %for.body, label %for.end19, !dbg !1931

for.body:                                         ; preds = %for.cond
  %mul = mul nsw i32 %triangular, %r.0, !dbg !1932
    #dbg_value(i32 %mul, !1935, !DIExpression(), !1936)
  br label %for.cond1, !dbg !1937

for.cond1:                                        ; preds = %for.inc15, %for.body
  %bs_mat_entries_used.1 = phi i32 [ %bs_mat_entries_used.0, %for.body ], [ %add14, %for.inc15 ], !dbg !1914
  %c.0 = phi i32 [ %mul, %for.body ], [ %inc, %for.inc15 ], !dbg !1938
    #dbg_value(i32 %c.0, !1935, !DIExpression(), !1936)
    #dbg_value(i32 %bs_mat_entries_used.1, !1922, !DIExpression(), !1914)
  %cmp2 = icmp slt i32 %c.0, %bs_mat_cols, !dbg !1939
  br i1 %cmp2, label %for.cond4.preheader, label %for.inc17, !dbg !1941

for.cond4.preheader:                              ; preds = %for.cond1
  br label %for.cond4, !dbg !1942

for.cond4:                                        ; preds = %for.cond4.preheader, %for.body6
  %k.0 = phi i32 [ %add13, %for.body6 ], [ 0, %for.cond4.preheader ], !dbg !1945
    #dbg_value(i32 %k.0, !1946, !DIExpression(), !1947)
  %exitcond = icmp ne i32 %k.0, %smax, !dbg !1948
  br i1 %exitcond, label %for.body6, label %for.inc15, !dbg !1942

for.body6:                                        ; preds = %for.cond4
  %mul7 = mul nsw i32 %m_vec_limbs, %bs_mat_entries_used.1, !dbg !1950
  %add.ptr = getelementptr inbounds i64, ptr %bs_mat, i32 %mul7, !dbg !1952
  %mul8 = mul nsw i32 %k.0, %bs_mat_cols, !dbg !1953
  %0 = getelementptr i8, ptr %mat, i32 %mul8, !dbg !1954
  %arrayidx = getelementptr i8, ptr %0, i32 %c.0, !dbg !1954
  %1 = load i8, ptr %arrayidx, align 1, !dbg !1954
  %mul9 = mul nsw i32 %r.0, %mat_rows, !dbg !1955
  %add10 = add nsw i32 %mul9, %k.0, !dbg !1956
  %mul11 = mul nsw i32 %m_vec_limbs, %add10, !dbg !1957
  %add.ptr12 = getelementptr inbounds i64, ptr %acc, i32 %mul11, !dbg !1958
  call fastcc void @m_vec_mul_add(i32 noundef %m_vec_limbs, ptr noundef %add.ptr, i8 noundef zeroext %1, ptr noundef %add.ptr12) #6, !dbg !1959
  %add13 = add nuw i32 %k.0, 1, !dbg !1960
    #dbg_value(i32 %add13, !1946, !DIExpression(), !1947)
  br label %for.cond4, !dbg !1961, !llvm.loop !1962

for.inc15:                                        ; preds = %for.cond4
    #dbg_value(i32 %bs_mat_entries_used.1, !1922, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1914)
  %add14 = add nsw i32 %bs_mat_entries_used.1, 1, !dbg !1964
    #dbg_value(i32 %add14, !1922, !DIExpression(), !1914)
  %inc = add nsw i32 %c.0, 1, !dbg !1965
    #dbg_value(i32 %inc, !1935, !DIExpression(), !1936)
  br label %for.cond1, !dbg !1966, !llvm.loop !1967

for.inc17:                                        ; preds = %for.cond1
  %bs_mat_entries_used.1.lcssa = phi i32 [ %bs_mat_entries_used.1, %for.cond1 ], !dbg !1914
  %inc18 = add nuw i32 %r.0, 1, !dbg !1969
    #dbg_value(i32 %inc18, !1923, !DIExpression(), !1925)
  br label %for.cond, !dbg !1970, !llvm.loop !1971

for.end19:                                        ; preds = %for.cond
  ret void, !dbg !1973
}

; Function Attrs: nounwind
define dso_local i32 @pqmayo_MAYO_2_ref_mayo_sign(ptr noundef %p, ptr noundef %sm, ptr noundef %smlen, ptr noundef %m, i32 noundef %mlen, ptr noundef %csk) local_unnamed_addr #0 !dbg !1974 {
entry:
  %siglen = alloca i32, align 4
    #dbg_value(ptr %p, !1975, !DIExpression(), !1976)
    #dbg_value(ptr %sm, !1977, !DIExpression(), !1976)
    #dbg_value(ptr %smlen, !1978, !DIExpression(), !1976)
    #dbg_value(ptr %m, !1979, !DIExpression(), !1976)
    #dbg_value(i32 %mlen, !1980, !DIExpression(), !1976)
    #dbg_value(ptr %csk, !1981, !DIExpression(), !1976)
    #dbg_value(i32 0, !1982, !DIExpression(), !1976)
    #dbg_value(i32 186, !1983, !DIExpression(), !1976)
  %add.ptr = getelementptr inbounds nuw i8, ptr %sm, i32 186, !dbg !1984
  %call = call ptr @memmove(ptr noundef nonnull %add.ptr, ptr noundef %m, i32 noundef %mlen) #8, !dbg !1985
  %add.ptr1 = getelementptr inbounds nuw i8, ptr %sm, i32 186, !dbg !1986
    #dbg_value(ptr %siglen, !1987, !DIExpression(DW_OP_deref), !1976)
  %call2 = call i32 @pqmayo_MAYO_2_ref_mayo_sign_signature(ptr noundef %p, ptr noundef %sm, ptr noundef nonnull %siglen, ptr noundef nonnull %add.ptr1, i32 noundef %mlen, ptr noundef %csk) #6, !dbg !1988
    #dbg_value(i32 %call2, !1982, !DIExpression(), !1976)
  %cmp.not = icmp eq i32 %call2, 0, !dbg !1989
  %0 = load i32, ptr %siglen, align 4
    #dbg_value(i32 %0, !1987, !DIExpression(), !1976)
  %cmp3.not = icmp eq i32 %0, 186
  %or.cond = select i1 %cmp.not, i1 %cmp3.not, i1 false, !dbg !1991
  br i1 %or.cond, label %if.end, label %if.then, !dbg !1991

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %siglen, align 4, !dbg !1992
    #dbg_value(i32 %1, !1987, !DIExpression(), !1976)
  %add = add i32 %1, %mlen, !dbg !1994
  %call4 = call ptr @memset(ptr noundef %sm, i32 noundef 0, i32 noundef %add) #8, !dbg !1995
  br label %err, !dbg !1996

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %siglen, align 4, !dbg !1997
    #dbg_value(i32 %2, !1987, !DIExpression(), !1976)
  %add5 = add i32 %2, %mlen, !dbg !1998
  store i32 %add5, ptr %smlen, align 4, !dbg !1999
  br label %err, !dbg !2000

err:                                              ; preds = %if.end, %if.then
    #dbg_label(!2001, !2002)
  ret i32 %call2, !dbg !2003
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_2_ref_mayo_open(ptr noundef %p, ptr noundef %m, ptr noundef %mlen, ptr noundef %sm, i32 noundef %smlen, ptr noundef %pk) local_unnamed_addr #0 !dbg !2004 {
entry:
    #dbg_value(ptr %p, !2005, !DIExpression(), !2006)
    #dbg_value(ptr %m, !2007, !DIExpression(), !2006)
    #dbg_value(ptr %mlen, !2008, !DIExpression(), !2006)
    #dbg_value(ptr %sm, !2009, !DIExpression(), !2006)
    #dbg_value(i32 %smlen, !2010, !DIExpression(), !2006)
    #dbg_value(ptr %pk, !2011, !DIExpression(), !2006)
    #dbg_value(i32 186, !2012, !DIExpression(), !2006)
  %cmp = icmp ult i32 %smlen, 186, !dbg !2013
  br i1 %cmp, label %return, label %if.end, !dbg !2013

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr inbounds nuw i8, ptr %sm, i32 186, !dbg !2015
  %sub = add i32 %smlen, -186, !dbg !2016
  %call = call i32 @pqmayo_MAYO_2_ref_mayo_verify(ptr noundef %p, ptr noundef nonnull %add.ptr, i32 noundef %sub, ptr noundef %sm, ptr noundef %pk) #6, !dbg !2017
    #dbg_value(i32 %call, !2018, !DIExpression(), !2006)
  %cmp1 = icmp eq i32 %call, 0, !dbg !2019
  br i1 %cmp1, label %if.then2, label %return, !dbg !2019

if.then2:                                         ; preds = %if.end
  %sub3 = add i32 %smlen, -186, !dbg !2021
  store i32 %sub3, ptr %mlen, align 4, !dbg !2023
  %add.ptr4 = getelementptr inbounds nuw i8, ptr %sm, i32 186, !dbg !2024
  %call5 = call ptr @memmove(ptr noundef %m, ptr noundef nonnull %add.ptr4, i32 noundef %sub3) #8, !dbg !2025
  br label %return, !dbg !2026

return:                                           ; preds = %if.end, %if.then2, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ 0, %if.then2 ], [ 1, %if.end ], !dbg !2006
  ret i32 %retval.0, !dbg !2027
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_2_ref_mayo_verify(ptr noundef %p, ptr noundef %m, i32 noundef %mlen, ptr noundef %sig, ptr noundef %cpk) local_unnamed_addr #0 !dbg !2028 {
entry:
  %tEnc = alloca [32 x i8], align 1
  %t = alloca [64 x i8], align 1
  %y = alloca [128 x i8], align 1
  %s = alloca [324 x i8], align 1
  %pk = alloca [13284 x i64], align 8
  %tmp = alloca [56 x i8], align 1
    #dbg_value(ptr %p, !2031, !DIExpression(), !2032)
    #dbg_value(ptr %m, !2033, !DIExpression(), !2032)
    #dbg_value(i32 %mlen, !2034, !DIExpression(), !2032)
    #dbg_value(ptr %sig, !2035, !DIExpression(), !2032)
    #dbg_value(ptr %cpk, !2036, !DIExpression(), !2032)
    #dbg_declare(ptr %tEnc, !2037, !DIExpression(), !2038)
    #dbg_declare(ptr %t, !2039, !DIExpression(), !2040)
    #dbg_declare(ptr %y, !2041, !DIExpression(), !2045)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(128) %y, i8 0, i32 128, i1 false), !dbg !2045
    #dbg_declare(ptr %s, !2046, !DIExpression(), !2047)
    #dbg_declare(ptr %pk, !2048, !DIExpression(), !2052)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(106272) %pk, i8 0, i32 106272, i1 false), !dbg !2052
    #dbg_declare(ptr %tmp, !2053, !DIExpression(), !2057)
    #dbg_value(i32 64, !2058, !DIExpression(), !2032)
    #dbg_value(i32 81, !2059, !DIExpression(), !2032)
    #dbg_value(i32 4, !2060, !DIExpression(), !2032)
    #dbg_value(i32 32, !2061, !DIExpression(), !2032)
    #dbg_value(i32 186, !2062, !DIExpression(), !2032)
    #dbg_value(i32 32, !2063, !DIExpression(), !2032)
    #dbg_value(i32 24, !2064, !DIExpression(), !2032)
  %call = call i32 @pqmayo_MAYO_2_ref_mayo_expand_pk(ptr noundef %p, ptr noundef %cpk, ptr noundef nonnull %pk) #6, !dbg !2065
    #dbg_value(i32 %call, !2066, !DIExpression(), !2032)
  %cmp.not = icmp eq i32 %call, 0, !dbg !2067
  br i1 %cmp.not, label %if.end, label %return, !dbg !2067

if.end:                                           ; preds = %entry
    #dbg_value(ptr %pk, !2069, !DIExpression(), !2032)
  %add.ptr = getelementptr inbounds nuw i8, ptr %pk, i32 66560, !dbg !2070
    #dbg_value(ptr %add.ptr, !2071, !DIExpression(), !2032)
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %pk, i32 101376, !dbg !2072
    #dbg_value(ptr %add.ptr2, !2073, !DIExpression(), !2032)
  %call4 = call i32 @shake256(ptr noundef nonnull %tmp, i32 noundef 32, ptr noundef %m, i32 noundef %mlen) #8, !dbg !2074
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %tmp, i32 32, !dbg !2075
  %add.ptr8 = getelementptr inbounds nuw i8, ptr %sig, i32 162, !dbg !2076
  %call9 = call ptr @memcpy(ptr noundef nonnull %add.ptr6, ptr noundef nonnull %add.ptr8, i32 noundef 24) #8, !dbg !2077
  %call12 = call i32 @shake256(ptr noundef nonnull %tEnc, i32 noundef 32, ptr noundef nonnull %tmp, i32 noundef 56) #8, !dbg !2078
  call fastcc void @decode(ptr noundef nonnull %tEnc, ptr noundef nonnull %t, i32 noundef 64) #6, !dbg !2079
  call fastcc void @decode(ptr noundef %sig, ptr noundef nonnull %s, i32 noundef 324) #6, !dbg !2080
  call fastcc void @eval_public_map(ptr noundef %p, ptr noundef nonnull %s, ptr noundef nonnull %pk, ptr noundef nonnull %add.ptr, ptr noundef nonnull %add.ptr2, ptr noundef nonnull %y) #6, !dbg !2081
  %call20 = call i32 @memcmp(ptr noundef nonnull %y, ptr noundef nonnull %t, i32 noundef 64) #8, !dbg !2082
  %cmp21 = icmp ne i32 %call20, 0, !dbg !2084
  %. = zext i1 %cmp21 to i32, !dbg !2032
  br label %return, !dbg !2032

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ %., %if.end ], !dbg !2032
  ret i32 %retval.0, !dbg !2085
}

; Function Attrs: nounwind
define dso_local i32 @pqmayo_MAYO_2_ref_mayo_expand_pk(ptr noundef %p, ptr noundef %cpk, ptr noundef %pk) local_unnamed_addr #0 !dbg !2086 {
entry:
    #dbg_value(ptr %p, !2089, !DIExpression(), !2090)
    #dbg_value(ptr %cpk, !2091, !DIExpression(), !2090)
    #dbg_value(ptr %pk, !2092, !DIExpression(), !2090)
  call fastcc void @expand_P1_P2(ptr noundef %p, ptr noundef %pk, ptr noundef %cpk) #6, !dbg !2093
  %add.ptr = getelementptr inbounds nuw i8, ptr %cpk, i32 16, !dbg !2094
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %pk, i32 101376, !dbg !2095
  call fastcc void @unpack_m_vecs(ptr noundef nonnull %add.ptr, ptr noundef nonnull %add.ptr2, i32 noundef 153, i32 noundef 64) #6, !dbg !2096
  ret i32 0, !dbg !2097
}

; Function Attrs: nounwind
define internal fastcc void @eval_public_map(ptr noundef %p, ptr noundef %s, ptr noundef %P1, ptr noundef %P2, ptr noundef %P3, ptr noundef %eval) unnamed_addr #0 !dbg !2098 {
entry:
  %SPS = alloca [64 x i64], align 8
  %zero = alloca [64 x i8], align 1
    #dbg_value(ptr %p, !2101, !DIExpression(), !2102)
    #dbg_value(ptr %s, !2103, !DIExpression(), !2102)
    #dbg_value(ptr %P1, !2104, !DIExpression(), !2102)
    #dbg_value(ptr %P2, !2105, !DIExpression(), !2102)
    #dbg_value(ptr %P3, !2106, !DIExpression(), !2102)
    #dbg_value(ptr %eval, !2107, !DIExpression(), !2102)
    #dbg_declare(ptr %SPS, !2108, !DIExpression(), !2110)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(512) %SPS, i8 0, i32 512, i1 false), !dbg !2110
  call fastcc void @m_calculate_PS_SPS(ptr noundef %p, ptr noundef %P1, ptr noundef %P2, ptr noundef %P3, ptr noundef %s, ptr noundef nonnull %SPS) #6, !dbg !2111
    #dbg_declare(ptr %zero, !2112, !DIExpression(), !2113)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %zero, i8 0, i32 64, i1 false), !dbg !2113
  call fastcc void @compute_rhs(ptr noundef %p, ptr noundef nonnull %SPS, ptr noundef nonnull %zero, ptr noundef %eval) #6, !dbg !2114
  ret void, !dbg !2115
}

; Function Attrs: nounwind
define internal fastcc void @m_calculate_PS_SPS(ptr noundef %p, ptr noundef %P1, ptr noundef %P2, ptr noundef %P3, ptr noundef %s, ptr noundef %SPS) unnamed_addr #0 !dbg !2116 {
entry:
  %PS = alloca [1296 x i64], align 8
    #dbg_value(ptr %p, !2119, !DIExpression(), !2120)
    #dbg_value(ptr %P1, !2121, !DIExpression(), !2120)
    #dbg_value(ptr %P2, !2122, !DIExpression(), !2120)
    #dbg_value(ptr %P3, !2123, !DIExpression(), !2120)
    #dbg_value(ptr %s, !2124, !DIExpression(), !2120)
    #dbg_value(ptr %SPS, !2125, !DIExpression(), !2120)
    #dbg_declare(ptr %PS, !2126, !DIExpression(), !2130)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(10368) %PS, i8 0, i32 10368, i1 false), !dbg !2130
  call fastcc void @mayo_generic_m_calculate_PS(ptr noundef %P1, ptr noundef %P2, ptr noundef %P3, ptr noundef %s, i32 noundef 64, i32 noundef 64, i32 noundef 17, i32 noundef 4, ptr noundef nonnull %PS) #6, !dbg !2131
  call fastcc void @mayo_generic_m_calculate_SPS(ptr noundef nonnull %PS, ptr noundef %s, i32 noundef 64, i32 noundef 4, i32 noundef 81, ptr noundef %SPS) #6, !dbg !2132
  ret void, !dbg !2133
}

; Function Attrs: nounwind
define internal fastcc void @mayo_generic_m_calculate_PS(ptr noundef %P1, ptr noundef %P2, ptr noundef %P3, ptr noundef %S, i32 noundef %m, i32 noundef %v, i32 noundef %o, i32 noundef %k, ptr noundef %PS) unnamed_addr #0 !dbg !2134 {
entry:
  %accumulator = alloca [20736 x i64], align 8
    #dbg_value(ptr %P1, !2137, !DIExpression(), !2138)
    #dbg_value(ptr %P2, !2139, !DIExpression(), !2138)
    #dbg_value(ptr %P3, !2140, !DIExpression(), !2138)
    #dbg_value(ptr %S, !2141, !DIExpression(), !2138)
    #dbg_value(i32 %m, !2142, !DIExpression(), !2138)
    #dbg_value(i32 %v, !2143, !DIExpression(), !2138)
    #dbg_value(i32 %o, !2144, !DIExpression(), !2138)
    #dbg_value(i32 %k, !2145, !DIExpression(), !2138)
    #dbg_value(ptr %PS, !2146, !DIExpression(), !2138)
  %add = add i32 %o, %v, !dbg !2147
    #dbg_value(i32 %add, !2148, !DIExpression(), !2138)
  %add1 = add nsw i32 %m, 15, !dbg !2149
  %div = sdiv i32 %add1, 16, !dbg !2150
    #dbg_value(i32 %div, !2151, !DIExpression(), !2138)
    #dbg_declare(ptr %accumulator, !2152, !DIExpression(), !2156)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(165888) %accumulator, i8 0, i32 165888, i1 false), !dbg !2156
    #dbg_value(i32 0, !2157, !DIExpression(), !2138)
    #dbg_value(i32 0, !2158, !DIExpression(), !2160)
  %smax = call i32 @llvm.smax.i32(i32 %k, i32 0), !dbg !2161
  %smax3 = call i32 @llvm.smax.i32(i32 %o, i32 0), !dbg !2161
  %smax5 = call i32 @llvm.smax.i32(i32 %v, i32 0), !dbg !2161
  br label %for.cond, !dbg !2161

for.cond:                                         ; preds = %for.inc52, %entry
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc52 ], [ %v, %entry ], !dbg !2162
  %P1_used.0 = phi i32 [ 0, %entry ], [ %P1_used.1.lcssa, %for.inc52 ], !dbg !2162
  %row.0 = phi i32 [ 0, %entry ], [ %inc53, %for.inc52 ], !dbg !2163
    #dbg_value(i32 %row.0, !2158, !DIExpression(), !2160)
    #dbg_value(i32 %P1_used.0, !2157, !DIExpression(), !2138)
  %exitcond6 = icmp ne i32 %row.0, %smax5, !dbg !2164
  br i1 %exitcond6, label %for.cond2.preheader, label %for.cond56.preheader, !dbg !2166

for.cond2.preheader:                              ; preds = %for.cond
  %0 = add i32 %P1_used.0, %indvars.iv, !dbg !2167
  br label %for.cond2, !dbg !2167

for.cond56.preheader:                             ; preds = %for.cond
  %smax8 = call i32 @llvm.smax.i32(i32 %v, i32 %add), !dbg !2170
  br label %for.cond56, !dbg !2170

for.cond2:                                        ; preds = %for.cond2.preheader, %for.inc17
  %P1_used.1 = phi i32 [ %inc16, %for.inc17 ], [ %P1_used.0, %for.cond2.preheader ], !dbg !2138
  %j.0 = phi i32 [ %inc18, %for.inc17 ], [ %row.0, %for.cond2.preheader ], !dbg !2172
    #dbg_value(i32 %j.0, !2173, !DIExpression(), !2174)
    #dbg_value(i32 %P1_used.1, !2157, !DIExpression(), !2138)
  %exitcond1 = icmp ne i32 %P1_used.1, %0, !dbg !2175
  br i1 %exitcond1, label %for.cond5.preheader, label %for.cond21.preheader, !dbg !2167

for.cond21.preheader:                             ; preds = %for.cond2
  %P1_used.1.lcssa = phi i32 [ %P1_used.1, %for.cond2 ], !dbg !2138
  br label %for.cond21, !dbg !2177

for.cond5.preheader:                              ; preds = %for.cond2
  br label %for.cond5, !dbg !2179

for.cond5:                                        ; preds = %for.cond5.preheader, %for.body7
  %col.0 = phi i32 [ %inc, %for.body7 ], [ 0, %for.cond5.preheader ], !dbg !2182
    #dbg_value(i32 %col.0, !2183, !DIExpression(), !2184)
  %exitcond = icmp ne i32 %col.0, %smax, !dbg !2185
  br i1 %exitcond, label %for.body7, label %for.inc17, !dbg !2179

for.body7:                                        ; preds = %for.cond5
  %mul = mul nsw i32 %P1_used.1, %div, !dbg !2187
  %add.ptr = getelementptr inbounds i64, ptr %P1, i32 %mul, !dbg !2189
  %mul8 = mul nsw i32 %row.0, %k, !dbg !2190
  %add9 = add nsw i32 %mul8, %col.0, !dbg !2191
  %mul10 = shl nsw i32 %add9, 4, !dbg !2192
  %mul11 = mul nsw i32 %col.0, %add, !dbg !2193
  %1 = getelementptr i8, ptr %S, i32 %mul11, !dbg !2194
  %arrayidx = getelementptr i8, ptr %1, i32 %j.0, !dbg !2194
  %2 = load i8, ptr %arrayidx, align 1, !dbg !2194
  %conv = zext i8 %2 to i32, !dbg !2194
  %add13 = add nsw i32 %mul10, %conv, !dbg !2195
  %mul14 = mul nsw i32 %add13, %div, !dbg !2196
  %add.ptr15 = getelementptr inbounds i64, ptr %accumulator, i32 %mul14, !dbg !2197
  call fastcc void @m_vec_add(i32 noundef %div, ptr noundef %add.ptr, ptr noundef nonnull %add.ptr15) #6, !dbg !2198
  %inc = add nuw i32 %col.0, 1, !dbg !2199
    #dbg_value(i32 %inc, !2183, !DIExpression(), !2184)
  br label %for.cond5, !dbg !2200, !llvm.loop !2201

for.inc17:                                        ; preds = %for.cond5
    #dbg_value(i32 %P1_used.1, !2157, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2138)
  %inc16 = add i32 %P1_used.1, 1, !dbg !2203
    #dbg_value(i32 %inc16, !2157, !DIExpression(), !2138)
  %inc18 = add nuw nsw i32 %j.0, 1, !dbg !2204
    #dbg_value(i32 %inc18, !2173, !DIExpression(), !2174)
  br label %for.cond2, !dbg !2205, !llvm.loop !2206

for.cond21:                                       ; preds = %for.cond21.preheader, %for.inc49
  %j20.0 = phi i32 [ %inc50, %for.inc49 ], [ 0, %for.cond21.preheader ], !dbg !2208
    #dbg_value(i32 %j20.0, !2209, !DIExpression(), !2210)
  %exitcond4 = icmp ne i32 %j20.0, %smax3, !dbg !2211
  br i1 %exitcond4, label %for.cond26.preheader, label %for.inc52, !dbg !2177

for.cond26.preheader:                             ; preds = %for.cond21
  br label %for.cond26, !dbg !2213

for.cond26:                                       ; preds = %for.cond26.preheader, %for.body29
  %col25.0 = phi i32 [ %inc47, %for.body29 ], [ 0, %for.cond26.preheader ], !dbg !2216
    #dbg_value(i32 %col25.0, !2217, !DIExpression(), !2218)
  %exitcond2 = icmp ne i32 %col25.0, %smax, !dbg !2219
  br i1 %exitcond2, label %for.body29, label %for.inc49, !dbg !2213

for.body29:                                       ; preds = %for.cond26
  %mul30 = mul nsw i32 %row.0, %o, !dbg !2221
  %add31 = add nsw i32 %mul30, %j20.0, !dbg !2223
  %mul32 = mul nsw i32 %add31, %div, !dbg !2224
  %add.ptr33 = getelementptr inbounds i64, ptr %P2, i32 %mul32, !dbg !2225
  %mul35 = mul nsw i32 %row.0, %k, !dbg !2226
  %add36 = add nsw i32 %mul35, %col25.0, !dbg !2227
  %mul37 = shl nsw i32 %add36, 4, !dbg !2228
  %mul38 = mul nsw i32 %col25.0, %add, !dbg !2229
  %3 = getelementptr i8, ptr %S, i32 %mul38, !dbg !2230
  %4 = getelementptr i8, ptr %3, i32 %j20.0, !dbg !2230
  %arrayidx41 = getelementptr i8, ptr %4, i32 %v, !dbg !2230
  %5 = load i8, ptr %arrayidx41, align 1, !dbg !2230
  %conv42 = zext i8 %5 to i32, !dbg !2230
  %add43 = add nsw i32 %mul37, %conv42, !dbg !2231
  %mul44 = mul nsw i32 %add43, %div, !dbg !2232
  %add.ptr45 = getelementptr inbounds i64, ptr %accumulator, i32 %mul44, !dbg !2233
  call fastcc void @m_vec_add(i32 noundef %div, ptr noundef %add.ptr33, ptr noundef nonnull %add.ptr45) #6, !dbg !2234
  %inc47 = add nuw i32 %col25.0, 1, !dbg !2235
    #dbg_value(i32 %inc47, !2217, !DIExpression(), !2218)
  br label %for.cond26, !dbg !2236, !llvm.loop !2237

for.inc49:                                        ; preds = %for.cond26
  %inc50 = add nuw i32 %j20.0, 1, !dbg !2239
    #dbg_value(i32 %inc50, !2209, !DIExpression(), !2210)
  br label %for.cond21, !dbg !2240, !llvm.loop !2241

for.inc52:                                        ; preds = %for.cond21
  %inc53 = add nuw i32 %row.0, 1, !dbg !2243
    #dbg_value(i32 %inc53, !2158, !DIExpression(), !2160)
  %indvars.iv.next = add i32 %indvars.iv, -1, !dbg !2244
  br label %for.cond, !dbg !2244, !llvm.loop !2245

for.cond56:                                       ; preds = %for.cond56.preheader, %for.inc90
  %P3_used.0 = phi i32 [ %P3_used.1.lcssa, %for.inc90 ], [ 0, %for.cond56.preheader ], !dbg !2247
  %row55.0 = phi i32 [ %inc91, %for.inc90 ], [ %v, %for.cond56.preheader ], !dbg !2248
    #dbg_value(i32 %row55.0, !2249, !DIExpression(), !2250)
    #dbg_value(i32 %P3_used.0, !2251, !DIExpression(), !2138)
  %exitcond9 = icmp ne i32 %row55.0, %smax8, !dbg !2252
  br i1 %exitcond9, label %for.cond61.preheader, label %while.cond.preheader, !dbg !2170

for.cond61.preheader:                             ; preds = %for.cond56
  br label %for.cond61, !dbg !2254

while.cond.preheader:                             ; preds = %for.cond56
  %6 = mul i32 %k, %add, !dbg !2257
  %smax10 = call i32 @llvm.smax.i32(i32 %6, i32 0), !dbg !2257
  br label %while.cond, !dbg !2257

for.cond61:                                       ; preds = %for.cond61.preheader, %for.inc87
  %P3_used.1 = phi i32 [ %inc86, %for.inc87 ], [ %P3_used.0, %for.cond61.preheader ], !dbg !2138
  %j60.0 = phi i32 [ %inc88, %for.inc87 ], [ %row55.0, %for.cond61.preheader ], !dbg !2258
    #dbg_value(i32 %j60.0, !2259, !DIExpression(), !2260)
    #dbg_value(i32 %P3_used.1, !2251, !DIExpression(), !2138)
  %cmp62 = icmp slt i32 %j60.0, %add, !dbg !2261
  br i1 %cmp62, label %for.cond66.preheader, label %for.inc90, !dbg !2254

for.cond66.preheader:                             ; preds = %for.cond61
  br label %for.cond66, !dbg !2263

for.cond66:                                       ; preds = %for.cond66.preheader, %for.body69
  %col65.0 = phi i32 [ %inc84, %for.body69 ], [ 0, %for.cond66.preheader ], !dbg !2266
    #dbg_value(i32 %col65.0, !2267, !DIExpression(), !2268)
  %exitcond7 = icmp ne i32 %col65.0, %smax, !dbg !2269
  br i1 %exitcond7, label %for.body69, label %for.inc87, !dbg !2263

for.body69:                                       ; preds = %for.cond66
  %mul70 = mul nsw i32 %P3_used.1, %div, !dbg !2271
  %add.ptr71 = getelementptr inbounds i64, ptr %P3, i32 %mul70, !dbg !2273
  %mul73 = mul nsw i32 %row55.0, %k, !dbg !2274
  %add74 = add nsw i32 %mul73, %col65.0, !dbg !2275
  %mul75 = shl nsw i32 %add74, 4, !dbg !2276
  %mul76 = mul nsw i32 %col65.0, %add, !dbg !2277
  %7 = getelementptr i8, ptr %S, i32 %mul76, !dbg !2278
  %arrayidx78 = getelementptr i8, ptr %7, i32 %j60.0, !dbg !2278
  %8 = load i8, ptr %arrayidx78, align 1, !dbg !2278
  %conv79 = zext i8 %8 to i32, !dbg !2278
  %add80 = add nsw i32 %mul75, %conv79, !dbg !2279
  %mul81 = mul nsw i32 %add80, %div, !dbg !2280
  %add.ptr82 = getelementptr inbounds i64, ptr %accumulator, i32 %mul81, !dbg !2281
  call fastcc void @m_vec_add(i32 noundef %div, ptr noundef %add.ptr71, ptr noundef nonnull %add.ptr82) #6, !dbg !2282
  %inc84 = add nuw i32 %col65.0, 1, !dbg !2283
    #dbg_value(i32 %inc84, !2267, !DIExpression(), !2268)
  br label %for.cond66, !dbg !2284, !llvm.loop !2285

for.inc87:                                        ; preds = %for.cond66
    #dbg_value(i32 %P3_used.1, !2251, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2138)
  %inc86 = add nsw i32 %P3_used.1, 1, !dbg !2287
    #dbg_value(i32 %inc86, !2251, !DIExpression(), !2138)
  %inc88 = add nsw i32 %j60.0, 1, !dbg !2288
    #dbg_value(i32 %inc88, !2259, !DIExpression(), !2260)
  br label %for.cond61, !dbg !2289, !llvm.loop !2290

for.inc90:                                        ; preds = %for.cond61
  %P3_used.1.lcssa = phi i32 [ %P3_used.1, %for.cond61 ], !dbg !2138
  %inc91 = add i32 %row55.0, 1, !dbg !2292
    #dbg_value(i32 %inc91, !2249, !DIExpression(), !2250)
  br label %for.cond56, !dbg !2293, !llvm.loop !2294

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %i.0 = phi i32 [ %inc102, %while.body ], [ 0, %while.cond.preheader ], !dbg !2138
    #dbg_value(i32 %i.0, !2296, !DIExpression(), !2138)
  %exitcond11 = icmp ne i32 %i.0, %smax10, !dbg !2297
  br i1 %exitcond11, label %while.body, label %while.end, !dbg !2257

while.body:                                       ; preds = %while.cond
  %mul97 = shl nsw i32 %i.0, 4, !dbg !2298
  %mul98 = mul nsw i32 %mul97, %div, !dbg !2300
  %add.ptr99 = getelementptr inbounds i64, ptr %accumulator, i32 %mul98, !dbg !2301
  %mul100 = mul nsw i32 %i.0, %div, !dbg !2302
  %add.ptr101 = getelementptr inbounds i64, ptr %PS, i32 %mul100, !dbg !2303
  call fastcc void @m_vec_multiply_bins(i32 noundef %div, ptr noundef nonnull %add.ptr99, ptr noundef %add.ptr101) #6, !dbg !2304
  %inc102 = add nuw i32 %i.0, 1, !dbg !2305
    #dbg_value(i32 %inc102, !2296, !DIExpression(), !2138)
  br label %while.cond, !dbg !2257, !llvm.loop !2306

while.end:                                        ; preds = %while.cond
  ret void, !dbg !2308
}

; Function Attrs: nounwind
define internal fastcc void @mayo_generic_m_calculate_SPS(ptr noundef %PS, ptr noundef %S, i32 noundef %m, i32 noundef %k, i32 noundef %n, ptr noundef %SPS) unnamed_addr #0 !dbg !2309 {
entry:
  %accumulator = alloca [1024 x i64], align 8
    #dbg_value(ptr %PS, !2312, !DIExpression(), !2313)
    #dbg_value(ptr %S, !2314, !DIExpression(), !2313)
    #dbg_value(i32 %m, !2315, !DIExpression(), !2313)
    #dbg_value(i32 %k, !2316, !DIExpression(), !2313)
    #dbg_value(i32 %n, !2317, !DIExpression(), !2313)
    #dbg_value(ptr %SPS, !2318, !DIExpression(), !2313)
    #dbg_declare(ptr %accumulator, !2319, !DIExpression(), !2320)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(8192) %accumulator, i8 0, i32 8192, i1 false), !dbg !2320
  %add = add nsw i32 %m, 15, !dbg !2321
  %div = sdiv i32 %add, 16, !dbg !2322
    #dbg_value(i32 %div, !2323, !DIExpression(), !2313)
    #dbg_value(i32 0, !2324, !DIExpression(), !2326)
  %smax = call i32 @llvm.smax.i32(i32 %n, i32 0), !dbg !2327
  %smax2 = call i32 @llvm.smax.i32(i32 %k, i32 0), !dbg !2327
  br label %for.cond, !dbg !2327

for.cond:                                         ; preds = %for.inc20, %entry
  %row.0 = phi i32 [ 0, %entry ], [ %inc21, %for.inc20 ], !dbg !2328
    #dbg_value(i32 %row.0, !2324, !DIExpression(), !2326)
  %exitcond3 = icmp ne i32 %row.0, %smax2, !dbg !2329
  br i1 %exitcond3, label %for.cond1.preheader, label %while.cond.preheader, !dbg !2331

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !2332

while.cond.preheader:                             ; preds = %for.cond
  %0 = mul i32 %k, %k, !dbg !2335
  br label %while.cond, !dbg !2335

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc18
  %j.0 = phi i32 [ %inc, %for.inc18 ], [ 0, %for.cond1.preheader ], !dbg !2336
    #dbg_value(i32 %j.0, !2337, !DIExpression(), !2338)
  %exitcond1 = icmp ne i32 %j.0, %smax, !dbg !2339
  br i1 %exitcond1, label %for.cond4.preheader, label %for.inc20, !dbg !2332

for.cond4.preheader:                              ; preds = %for.cond1
  br label %for.cond4, !dbg !2341

for.cond4:                                        ; preds = %for.cond4.preheader, %for.body6
  %col.0 = phi i32 [ %add17, %for.body6 ], [ 0, %for.cond4.preheader ], !dbg !2344
    #dbg_value(i32 %col.0, !2345, !DIExpression(), !2346)
  %exitcond = icmp ne i32 %col.0, %k, !dbg !2347
  br i1 %exitcond, label %for.body6, label %for.inc18, !dbg !2341

for.body6:                                        ; preds = %for.cond4
  %mul = mul nsw i32 %j.0, %k, !dbg !2349
  %add7 = add nsw i32 %mul, %col.0, !dbg !2351
  %mul8 = mul nsw i32 %add7, %div, !dbg !2352
  %add.ptr = getelementptr inbounds i64, ptr %PS, i32 %mul8, !dbg !2353
  %mul9 = mul nsw i32 %row.0, %k, !dbg !2354
  %add10 = add nsw i32 %mul9, %col.0, !dbg !2355
  %mul11 = shl nsw i32 %add10, 4, !dbg !2356
  %mul12 = mul nsw i32 %row.0, %n, !dbg !2357
  %1 = getelementptr i8, ptr %S, i32 %mul12, !dbg !2358
  %arrayidx = getelementptr i8, ptr %1, i32 %j.0, !dbg !2358
  %2 = load i8, ptr %arrayidx, align 1, !dbg !2358
  %conv = zext i8 %2 to i32, !dbg !2358
  %add14 = add nsw i32 %mul11, %conv, !dbg !2359
  %mul15 = mul nsw i32 %add14, %div, !dbg !2360
  %add.ptr16 = getelementptr inbounds i64, ptr %accumulator, i32 %mul15, !dbg !2361
  call fastcc void @m_vec_add(i32 noundef %div, ptr noundef %add.ptr, ptr noundef nonnull %add.ptr16) #6, !dbg !2362
  %add17 = add nuw i32 %col.0, 1, !dbg !2363
    #dbg_value(i32 %add17, !2345, !DIExpression(), !2346)
  br label %for.cond4, !dbg !2364, !llvm.loop !2365

for.inc18:                                        ; preds = %for.cond4
  %inc = add nuw i32 %j.0, 1, !dbg !2367
    #dbg_value(i32 %inc, !2337, !DIExpression(), !2338)
  br label %for.cond1, !dbg !2368, !llvm.loop !2369

for.inc20:                                        ; preds = %for.cond1
  %inc21 = add nuw i32 %row.0, 1, !dbg !2371
    #dbg_value(i32 %inc21, !2324, !DIExpression(), !2326)
  br label %for.cond, !dbg !2372, !llvm.loop !2373

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %i.0 = phi i32 [ %inc32, %while.body ], [ 0, %while.cond.preheader ], !dbg !2313
    #dbg_value(i32 %i.0, !2375, !DIExpression(), !2313)
  %exitcond4 = icmp ne i32 %i.0, %0, !dbg !2376
  br i1 %exitcond4, label %while.body, label %while.end, !dbg !2335

while.body:                                       ; preds = %while.cond
  %mul27 = shl nsw i32 %i.0, 4, !dbg !2377
  %mul28 = mul nsw i32 %mul27, %div, !dbg !2379
  %add.ptr29 = getelementptr inbounds i64, ptr %accumulator, i32 %mul28, !dbg !2380
  %mul30 = mul nsw i32 %i.0, %div, !dbg !2381
  %add.ptr31 = getelementptr inbounds i64, ptr %SPS, i32 %mul30, !dbg !2382
  call fastcc void @m_vec_multiply_bins(i32 noundef %div, ptr noundef nonnull %add.ptr29, ptr noundef %add.ptr31) #6, !dbg !2383
  %inc32 = add nuw i32 %i.0, 1, !dbg !2384
    #dbg_value(i32 %inc32, !2375, !DIExpression(), !2313)
  br label %while.cond, !dbg !2335, !llvm.loop !2385

while.end:                                        ; preds = %while.cond
  ret void, !dbg !2387
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_add(i32 noundef %m_vec_limbs, ptr noundef %in, ptr noundef %acc) unnamed_addr #0 !dbg !2388 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2391, !DIExpression(), !2392)
    #dbg_value(ptr %in, !2393, !DIExpression(), !2392)
    #dbg_value(ptr %acc, !2394, !DIExpression(), !2392)
    #dbg_value(i32 0, !2395, !DIExpression(), !2397)
  br label %for.cond, !dbg !2398

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2399
    #dbg_value(i32 %i.0, !2395, !DIExpression(), !2397)
  %exitcond = icmp ne i32 %i.0, 4, !dbg !2400
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2402

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2403
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2403
  %arrayidx1 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !2405
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !2406
  %xor = xor i64 %1, %0, !dbg !2406
  store i64 %xor, ptr %arrayidx1, align 8, !dbg !2406
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2407
    #dbg_value(i32 %inc, !2395, !DIExpression(), !2397)
  br label %for.cond, !dbg !2408, !llvm.loop !2409

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2411
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_multiply_bins(i32 noundef %m_vec_limbs, ptr noundef %bins, ptr noundef %out) unnamed_addr #0 !dbg !2412 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2415, !DIExpression(), !2416)
    #dbg_value(ptr %bins, !2417, !DIExpression(), !2416)
    #dbg_value(ptr %out, !2418, !DIExpression(), !2416)
  %add.ptr = getelementptr inbounds nuw i8, ptr %bins, i32 160, !dbg !2419
  %add.ptr1 = getelementptr inbounds nuw i8, ptr %bins, i32 320, !dbg !2420
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr, ptr noundef nonnull %add.ptr1) #6, !dbg !2421
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %bins, i32 352, !dbg !2422
  %add.ptr3 = getelementptr inbounds nuw i8, ptr %bins, i32 384, !dbg !2423
  call fastcc void @m_vec_mul_add_x(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr2, ptr noundef nonnull %add.ptr3) #6, !dbg !2424
  %add.ptr4 = getelementptr inbounds nuw i8, ptr %bins, i32 320, !dbg !2425
  %add.ptr5 = getelementptr inbounds nuw i8, ptr %bins, i32 224, !dbg !2426
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr4, ptr noundef nonnull %add.ptr5) #6, !dbg !2427
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %bins, i32 384, !dbg !2428
  %add.ptr7 = getelementptr inbounds nuw i8, ptr %bins, i32 192, !dbg !2429
  call fastcc void @m_vec_mul_add_x(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr6, ptr noundef nonnull %add.ptr7) #6, !dbg !2430
  %add.ptr8 = getelementptr inbounds nuw i8, ptr %bins, i32 224, !dbg !2431
  %add.ptr9 = getelementptr inbounds nuw i8, ptr %bins, i32 448, !dbg !2432
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr8, ptr noundef nonnull %add.ptr9) #6, !dbg !2433
  %add.ptr10 = getelementptr inbounds nuw i8, ptr %bins, i32 192, !dbg !2434
  %add.ptr11 = getelementptr inbounds nuw i8, ptr %bins, i32 96, !dbg !2435
  call fastcc void @m_vec_mul_add_x(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr10, ptr noundef nonnull %add.ptr11) #6, !dbg !2436
  %add.ptr12 = getelementptr inbounds nuw i8, ptr %bins, i32 448, !dbg !2437
  %add.ptr13 = getelementptr inbounds nuw i8, ptr %bins, i32 480, !dbg !2438
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr12, ptr noundef nonnull %add.ptr13) #6, !dbg !2439
  %add.ptr14 = getelementptr inbounds nuw i8, ptr %bins, i32 96, !dbg !2440
  %add.ptr15 = getelementptr inbounds nuw i8, ptr %bins, i32 256, !dbg !2441
  call fastcc void @m_vec_mul_add_x(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr14, ptr noundef nonnull %add.ptr15) #6, !dbg !2442
  %add.ptr16 = getelementptr inbounds nuw i8, ptr %bins, i32 480, !dbg !2443
  %add.ptr17 = getelementptr inbounds nuw i8, ptr %bins, i32 416, !dbg !2444
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr16, ptr noundef nonnull %add.ptr17) #6, !dbg !2445
  %add.ptr18 = getelementptr inbounds nuw i8, ptr %bins, i32 256, !dbg !2446
  %add.ptr19 = getelementptr inbounds nuw i8, ptr %bins, i32 128, !dbg !2447
  call fastcc void @m_vec_mul_add_x(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr18, ptr noundef nonnull %add.ptr19) #6, !dbg !2448
  %add.ptr20 = getelementptr inbounds nuw i8, ptr %bins, i32 416, !dbg !2449
  %add.ptr21 = getelementptr inbounds nuw i8, ptr %bins, i32 288, !dbg !2450
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr20, ptr noundef nonnull %add.ptr21) #6, !dbg !2451
  %add.ptr22 = getelementptr inbounds nuw i8, ptr %bins, i32 128, !dbg !2452
  %add.ptr23 = getelementptr inbounds nuw i8, ptr %bins, i32 64, !dbg !2453
  call fastcc void @m_vec_mul_add_x(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr22, ptr noundef nonnull %add.ptr23) #6, !dbg !2454
  %add.ptr24 = getelementptr inbounds nuw i8, ptr %bins, i32 288, !dbg !2455
  %add.ptr25 = getelementptr inbounds nuw i8, ptr %bins, i32 32, !dbg !2456
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr24, ptr noundef nonnull %add.ptr25) #6, !dbg !2457
  %add.ptr26 = getelementptr inbounds nuw i8, ptr %bins, i32 64, !dbg !2458
  %add.ptr27 = getelementptr inbounds nuw i8, ptr %bins, i32 32, !dbg !2459
  call fastcc void @m_vec_mul_add_x(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr26, ptr noundef nonnull %add.ptr27) #6, !dbg !2460
  %add.ptr28 = getelementptr inbounds nuw i8, ptr %bins, i32 32, !dbg !2461
  call fastcc void @m_vec_copy(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr28, ptr noundef %out) #6, !dbg !2462
  ret void, !dbg !2463
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_mul_add_x_inv(i32 noundef %m_vec_limbs, ptr noundef %in, ptr noundef %acc) unnamed_addr #0 !dbg !2464 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2465, !DIExpression(), !2466)
    #dbg_value(ptr %in, !2467, !DIExpression(), !2466)
    #dbg_value(ptr %acc, !2468, !DIExpression(), !2466)
    #dbg_value(i64 1229782938247303441, !2469, !DIExpression(), !2466)
    #dbg_value(i32 0, !2470, !DIExpression(), !2472)
  br label %for.cond, !dbg !2473

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2474
    #dbg_value(i32 %i.0, !2470, !DIExpression(), !2472)
  %exitcond = icmp ne i32 %i.0, 4, !dbg !2475
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2477

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2478
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2478
  %and = and i64 %0, 1229782938247303441, !dbg !2480
    #dbg_value(i64 %and, !2481, !DIExpression(), !2482)
  %xor = lshr i64 %0, 1, !dbg !2483
  %shr = and i64 %xor, 8608480567731124087, !dbg !2483
  %mul = mul nuw i64 %and, 9, !dbg !2484
  %xor2 = xor i64 %shr, %mul, !dbg !2485
  %arrayidx3 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !2486
  %1 = load i64, ptr %arrayidx3, align 8, !dbg !2487
  %xor4 = xor i64 %1, %xor2, !dbg !2487
  store i64 %xor4, ptr %arrayidx3, align 8, !dbg !2487
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2488
    #dbg_value(i32 %inc, !2470, !DIExpression(), !2472)
  br label %for.cond, !dbg !2489, !llvm.loop !2490

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2492
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_mul_add_x(i32 noundef %m_vec_limbs, ptr noundef %in, ptr noundef %acc) unnamed_addr #0 !dbg !2493 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2494, !DIExpression(), !2495)
    #dbg_value(ptr %in, !2496, !DIExpression(), !2495)
    #dbg_value(ptr %acc, !2497, !DIExpression(), !2495)
    #dbg_value(i64 -8608480567731124088, !2498, !DIExpression(), !2495)
    #dbg_value(i32 0, !2499, !DIExpression(), !2501)
  br label %for.cond, !dbg !2502

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2503
    #dbg_value(i32 %i.0, !2499, !DIExpression(), !2501)
  %exitcond = icmp ne i32 %i.0, 4, !dbg !2504
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2506

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2507
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2507
    #dbg_value(i64 %0, !2509, !DIExpression(DW_OP_constu, 9838263505978427528, DW_OP_and, DW_OP_stack_value), !2510)
  %xor = shl i64 %0, 1, !dbg !2511
  %shl = and i64 %xor, -1229782938247303442, !dbg !2511
  %and = lshr i64 %0, 3, !dbg !2512
  %shr = and i64 %and, 1229782938247303441, !dbg !2512
  %mul = mul nuw nsw i64 %shr, 3, !dbg !2513
  %xor2 = xor i64 %shl, %mul, !dbg !2514
  %arrayidx3 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !2515
  %1 = load i64, ptr %arrayidx3, align 8, !dbg !2516
  %xor4 = xor i64 %1, %xor2, !dbg !2516
  store i64 %xor4, ptr %arrayidx3, align 8, !dbg !2516
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2517
    #dbg_value(i32 %inc, !2499, !DIExpression(), !2501)
  br label %for.cond, !dbg !2518, !llvm.loop !2519

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2521
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_copy(i32 noundef %m_vec_limbs, ptr noundef %in, ptr noundef %out) unnamed_addr #0 !dbg !2522 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2523, !DIExpression(), !2524)
    #dbg_value(ptr %in, !2525, !DIExpression(), !2524)
    #dbg_value(ptr %out, !2526, !DIExpression(), !2524)
    #dbg_value(i32 0, !2527, !DIExpression(), !2529)
  br label %for.cond, !dbg !2530

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2531
    #dbg_value(i32 %i.0, !2527, !DIExpression(), !2529)
  %exitcond = icmp ne i32 %i.0, 4, !dbg !2532
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2534

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2535
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2535
  %arrayidx1 = getelementptr inbounds nuw i64, ptr %out, i32 %i.0, !dbg !2537
  store i64 %0, ptr %arrayidx1, align 8, !dbg !2538
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2539
    #dbg_value(i32 %inc, !2527, !DIExpression(), !2529)
  br label %for.cond, !dbg !2540, !llvm.loop !2541

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2543
}

; Function Attrs: nounwind
define dso_local void @pqmayo_MAYO_2_ref_m_upper(ptr noundef %p, ptr noundef %in, ptr noundef %out, i32 noundef %size) local_unnamed_addr #0 !dbg !2544 {
entry:
    #dbg_value(ptr %p, !2575, !DIExpression(), !2576)
    #dbg_value(ptr %in, !2577, !DIExpression(), !2576)
    #dbg_value(ptr %out, !2578, !DIExpression(), !2576)
    #dbg_value(i32 %size, !2579, !DIExpression(), !2576)
    #dbg_value(i32 4, !2580, !DIExpression(), !2576)
    #dbg_value(i32 0, !2581, !DIExpression(), !2576)
    #dbg_value(i32 0, !2582, !DIExpression(), !2584)
  %smax = call i32 @llvm.smax.i32(i32 %size, i32 0), !dbg !2585
  br label %for.cond, !dbg !2585

for.cond:                                         ; preds = %for.inc15, %entry
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc15 ], [ %size, %entry ], !dbg !2586
  %m_vecs_stored.0 = phi i32 [ 0, %entry ], [ %m_vecs_stored.1.lcssa, %for.inc15 ], !dbg !2586
  %r.0 = phi i32 [ 0, %entry ], [ %inc16, %for.inc15 ], !dbg !2587
    #dbg_value(i32 %r.0, !2582, !DIExpression(), !2584)
    #dbg_value(i32 %m_vecs_stored.0, !2581, !DIExpression(), !2576)
  %exitcond1 = icmp ne i32 %r.0, %smax, !dbg !2588
  br i1 %exitcond1, label %for.cond1.preheader, label %for.end17, !dbg !2590

for.cond1.preheader:                              ; preds = %for.cond
  %0 = add i32 %m_vecs_stored.0, %indvars.iv, !dbg !2591
  br label %for.cond1, !dbg !2591

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc
  %m_vecs_stored.1 = phi i32 [ %inc, %for.inc ], [ %m_vecs_stored.0, %for.cond1.preheader ], !dbg !2576
  %c.0 = phi i32 [ %inc14, %for.inc ], [ %r.0, %for.cond1.preheader ], !dbg !2594
    #dbg_value(i32 %c.0, !2595, !DIExpression(), !2596)
    #dbg_value(i32 %m_vecs_stored.1, !2581, !DIExpression(), !2576)
  %exitcond = icmp ne i32 %m_vecs_stored.1, %0, !dbg !2597
  br i1 %exitcond, label %for.body3, label %for.inc15, !dbg !2591

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %r.0, %size, !dbg !2599
  %add = add nsw i32 %mul, %c.0, !dbg !2601
  %add.ptr.idx = shl nsw i32 %add, 5, !dbg !2602
  %add.ptr = getelementptr inbounds i8, ptr %in, i32 %add.ptr.idx, !dbg !2602
  %add.ptr6.idx = shl nsw i32 %m_vecs_stored.1, 5, !dbg !2603
  %add.ptr6 = getelementptr inbounds i8, ptr %out, i32 %add.ptr6.idx, !dbg !2603
  call fastcc void @m_vec_copy.17(i32 noundef 4, ptr noundef %add.ptr, ptr noundef %add.ptr6) #6, !dbg !2604
  %cmp7.not = icmp eq i32 %r.0, %c.0, !dbg !2605
  br i1 %cmp7.not, label %for.inc, label %if.then, !dbg !2605

if.then:                                          ; preds = %for.body3
  %mul8 = mul nsw i32 %c.0, %size, !dbg !2607
  %add9 = add nsw i32 %mul8, %r.0, !dbg !2609
  %add.ptr11.idx = shl nsw i32 %add9, 5, !dbg !2610
  %add.ptr11 = getelementptr inbounds i8, ptr %in, i32 %add.ptr11.idx, !dbg !2610
  %add.ptr13.idx = shl nsw i32 %m_vecs_stored.1, 5, !dbg !2611
  %add.ptr13 = getelementptr inbounds i8, ptr %out, i32 %add.ptr13.idx, !dbg !2611
  call fastcc void @m_vec_add.18(i32 noundef 4, ptr noundef %add.ptr11, ptr noundef %add.ptr13) #6, !dbg !2612
  br label %for.inc, !dbg !2613

for.inc:                                          ; preds = %for.body3, %if.then
    #dbg_value(i32 %m_vecs_stored.1, !2581, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2576)
  %inc = add i32 %m_vecs_stored.1, 1, !dbg !2614
    #dbg_value(i32 %inc, !2581, !DIExpression(), !2576)
  %inc14 = add nuw nsw i32 %c.0, 1, !dbg !2615
    #dbg_value(i32 %inc14, !2595, !DIExpression(), !2596)
  br label %for.cond1, !dbg !2616, !llvm.loop !2617

for.inc15:                                        ; preds = %for.cond1
  %m_vecs_stored.1.lcssa = phi i32 [ %m_vecs_stored.1, %for.cond1 ], !dbg !2576
  %inc16 = add nuw i32 %r.0, 1, !dbg !2619
    #dbg_value(i32 %inc16, !2582, !DIExpression(), !2584)
  %indvars.iv.next = add i32 %indvars.iv, -1, !dbg !2620
  br label %for.cond, !dbg !2620, !llvm.loop !2621

for.end17:                                        ; preds = %for.cond
  ret void, !dbg !2623
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_copy.17(i32 noundef %m_vec_limbs, ptr noundef %in, ptr noundef %out) unnamed_addr #0 !dbg !2624 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2625, !DIExpression(), !2626)
    #dbg_value(ptr %in, !2627, !DIExpression(), !2626)
    #dbg_value(ptr %out, !2628, !DIExpression(), !2626)
    #dbg_value(i32 0, !2629, !DIExpression(), !2631)
  br label %for.cond, !dbg !2632

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2633
    #dbg_value(i32 %i.0, !2629, !DIExpression(), !2631)
  %exitcond = icmp ne i32 %i.0, 4, !dbg !2634
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2636

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2637
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2637
  %arrayidx1 = getelementptr inbounds nuw i64, ptr %out, i32 %i.0, !dbg !2639
  store i64 %0, ptr %arrayidx1, align 8, !dbg !2640
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2641
    #dbg_value(i32 %inc, !2629, !DIExpression(), !2631)
  br label %for.cond, !dbg !2642, !llvm.loop !2643

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2645
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_add.18(i32 noundef %m_vec_limbs, ptr noundef %in, ptr noundef %acc) unnamed_addr #0 !dbg !2646 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2647, !DIExpression(), !2648)
    #dbg_value(ptr %in, !2649, !DIExpression(), !2648)
    #dbg_value(ptr %acc, !2650, !DIExpression(), !2648)
    #dbg_value(i32 0, !2651, !DIExpression(), !2653)
  br label %for.cond, !dbg !2654

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2655
    #dbg_value(i32 %i.0, !2651, !DIExpression(), !2653)
  %exitcond = icmp ne i32 %i.0, 4, !dbg !2656
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2658

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2659
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2659
  %arrayidx1 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !2661
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !2662
  %xor = xor i64 %1, %0, !dbg !2662
  store i64 %xor, ptr %arrayidx1, align 8, !dbg !2662
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2663
    #dbg_value(i32 %inc, !2651, !DIExpression(), !2653)
  br label %for.cond, !dbg !2664, !llvm.loop !2665

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2667
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_2_ref_sample_solution(ptr noundef %p, ptr noundef %A, ptr noundef %y, ptr noundef %r, ptr noundef %x, i32 noundef %k, i32 noundef %o, i32 noundef %m, i32 noundef %A_cols) local_unnamed_addr #0 !dbg !2668 {
entry:
  %Ar = alloca [64 x i8], align 1
    #dbg_value(ptr %p, !2671, !DIExpression(), !2672)
    #dbg_value(ptr %A, !2673, !DIExpression(), !2672)
    #dbg_value(ptr %y, !2674, !DIExpression(), !2672)
    #dbg_value(ptr %r, !2675, !DIExpression(), !2672)
    #dbg_value(ptr %x, !2676, !DIExpression(), !2672)
    #dbg_value(i32 %k, !2677, !DIExpression(), !2672)
    #dbg_value(i32 %o, !2678, !DIExpression(), !2672)
    #dbg_value(i32 %m, !2679, !DIExpression(), !2672)
    #dbg_value(i32 %A_cols, !2680, !DIExpression(), !2672)
    #dbg_value(i32 0, !2681, !DIExpression(), !2683)
  %0 = mul nsw i32 %o, %k, !dbg !2684
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0), !dbg !2684
  br label %for.cond, !dbg !2684

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2685
    #dbg_value(i32 %i.0, !2681, !DIExpression(), !2683)
  %exitcond = icmp ne i32 %i.0, %smax, !dbg !2686
  br i1 %exitcond, label %for.body, label %for.cond3.preheader, !dbg !2688

for.cond3.preheader:                              ; preds = %for.cond
  %smax13 = call i32 @llvm.smax.i32(i32 %m, i32 0), !dbg !2689
  br label %for.cond3, !dbg !2689

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %r, i32 %i.0, !dbg !2691
  %1 = load i8, ptr %arrayidx, align 1, !dbg !2691
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %x, i32 %i.0, !dbg !2693
  store i8 %1, ptr %arrayidx1, align 1, !dbg !2694
  %inc = add nuw i32 %i.0, 1, !dbg !2695
    #dbg_value(i32 %inc, !2681, !DIExpression(), !2683)
  br label %for.cond, !dbg !2696, !llvm.loop !2697

for.cond3:                                        ; preds = %for.cond3.preheader, %for.body5
  %i2.0 = phi i32 [ %inc12, %for.body5 ], [ 0, %for.cond3.preheader ], !dbg !2699
    #dbg_value(i32 %i2.0, !2700, !DIExpression(), !2701)
  %exitcond14 = icmp ne i32 %i2.0, %smax13, !dbg !2702
  br i1 %exitcond14, label %for.body5, label %for.end13, !dbg !2689

for.body5:                                        ; preds = %for.cond3
  %mul6 = mul nsw i32 %k, %o, !dbg !2704
  %mul7 = mul nsw i32 %k, %o, !dbg !2706
  %add = add nsw i32 %mul7, 1, !dbg !2707
  %mul8 = mul nsw i32 %i2.0, %add, !dbg !2708
  %2 = getelementptr i8, ptr %A, i32 %mul6, !dbg !2709
  %arrayidx10 = getelementptr i8, ptr %2, i32 %mul8, !dbg !2709
  store i8 0, ptr %arrayidx10, align 1, !dbg !2710
  %inc12 = add nuw i32 %i2.0, 1, !dbg !2711
    #dbg_value(i32 %inc12, !2700, !DIExpression(), !2701)
  br label %for.cond3, !dbg !2712, !llvm.loop !2713

for.end13:                                        ; preds = %for.cond3
  %mul14 = mul nsw i32 %k, %o, !dbg !2715
  %add15 = add nsw i32 %mul14, 1, !dbg !2716
  call fastcc void @mat_mul.21(ptr noundef %A, ptr noundef %r, ptr noundef nonnull %Ar, i32 noundef %add15, i32 noundef %m, i32 noundef 1) #6, !dbg !2717
    #dbg_value(i32 0, !2718, !DIExpression(), !2720)
  br label %for.cond17, !dbg !2721

for.cond17:                                       ; preds = %for.body19, %for.end13
  %i16.0 = phi i32 [ 0, %for.end13 ], [ %inc29, %for.body19 ], !dbg !2722
    #dbg_value(i32 %i16.0, !2718, !DIExpression(), !2720)
  %exitcond15 = icmp ne i32 %i16.0, %smax13, !dbg !2723
  br i1 %exitcond15, label %for.body19, label %for.end30, !dbg !2725

for.body19:                                       ; preds = %for.cond17
  %arrayidx20 = getelementptr inbounds nuw i8, ptr %y, i32 %i16.0, !dbg !2726
  %3 = load i8, ptr %arrayidx20, align 1, !dbg !2726
  %arrayidx21 = getelementptr inbounds nuw [64 x i8], ptr %Ar, i32 0, i32 %i16.0, !dbg !2728
  %4 = load i8, ptr %arrayidx21, align 1, !dbg !2728
  %call = call fastcc zeroext i8 @sub_f(i8 noundef zeroext %3, i8 noundef zeroext %4) #6, !dbg !2729
  %mul22 = mul nsw i32 %k, %o, !dbg !2730
  %mul23 = mul nsw i32 %k, %o, !dbg !2731
  %add24 = add nsw i32 %mul23, 1, !dbg !2732
  %mul25 = mul nsw i32 %i16.0, %add24, !dbg !2733
  %5 = getelementptr i8, ptr %A, i32 %mul22, !dbg !2734
  %arrayidx27 = getelementptr i8, ptr %5, i32 %mul25, !dbg !2734
  store i8 %call, ptr %arrayidx27, align 1, !dbg !2735
  %inc29 = add nuw i32 %i16.0, 1, !dbg !2736
    #dbg_value(i32 %inc29, !2718, !DIExpression(), !2720)
  br label %for.cond17, !dbg !2737, !llvm.loop !2738

for.end30:                                        ; preds = %for.cond17
  %mul31 = mul nsw i32 %k, %o, !dbg !2740
  %add32 = add nsw i32 %mul31, 1, !dbg !2741
  call fastcc void @EF(ptr noundef %A, i32 noundef %m, i32 noundef %add32) #6, !dbg !2742
    #dbg_value(i8 0, !2743, !DIExpression(), !2672)
    #dbg_value(i32 0, !2744, !DIExpression(), !2746)
  %6 = add i32 %A_cols, -1, !dbg !2747
  %smax16 = call i32 @llvm.smax.i32(i32 %6, i32 0), !dbg !2747
  br label %for.cond34, !dbg !2747

for.cond34:                                       ; preds = %for.inc43, %for.end30
  %full_rank.0 = phi i8 [ 0, %for.end30 ], [ %or12, %for.inc43 ], !dbg !2672
  %i33.0 = phi i32 [ 0, %for.end30 ], [ %inc44, %for.inc43 ], !dbg !2748
    #dbg_value(i32 %i33.0, !2744, !DIExpression(), !2746)
    #dbg_value(i8 %full_rank.0, !2743, !DIExpression(), !2672)
  %exitcond17 = icmp ne i32 %i33.0, %smax16, !dbg !2749
  br i1 %exitcond17, label %for.inc43, label %for.end45, !dbg !2751

for.inc43:                                        ; preds = %for.cond34
    #dbg_value(!DIArgList(i8 poison, i8 poison), !2743, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2672)
  %sub37 = add nsw i32 %m, -1, !dbg !2752
  %mul38 = mul nsw i32 %sub37, %A_cols, !dbg !2754
  %7 = getelementptr i8, ptr %A, i32 %mul38, !dbg !2755
  %arrayidx40 = getelementptr i8, ptr %7, i32 %i33.0, !dbg !2755
  %8 = load i8, ptr %arrayidx40, align 1, !dbg !2755
    #dbg_value(!DIArgList(i8 %full_rank.0, i8 %8), !2743, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2672)
  %or12 = or i8 %full_rank.0, %8, !dbg !2756
    #dbg_value(i8 %or12, !2743, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2672)
    #dbg_value(i8 %or12, !2743, !DIExpression(), !2672)
  %inc44 = add nuw i32 %i33.0, 1, !dbg !2757
    #dbg_value(i32 %inc44, !2744, !DIExpression(), !2746)
  br label %for.cond34, !dbg !2758, !llvm.loop !2759

for.end45:                                        ; preds = %for.cond34
  %full_rank.0.lcssa = phi i8 [ %full_rank.0, %for.cond34 ], !dbg !2672
  %cmp47 = icmp eq i8 %full_rank.0.lcssa, 0, !dbg !2761
  br i1 %cmp47, label %return, label %for.cond50.preheader, !dbg !2761

for.cond50.preheader:                             ; preds = %for.end45
  br label %for.cond50, !dbg !2763

for.cond50.loopexit:                              ; preds = %for.cond63
  br label %for.cond50, !dbg !2763, !llvm.loop !2765

for.cond50:                                       ; preds = %for.cond50.preheader, %for.cond50.loopexit
  %row.0.in = phi i32 [ %row.0, %for.cond50.loopexit ], [ %m, %for.cond50.preheader ]
  %row.0 = add nsw i32 %row.0.in, -1, !dbg !2767
    #dbg_value(i32 %row.0, !2768, !DIExpression(), !2769)
  %cmp51 = icmp sgt i32 %row.0.in, 0, !dbg !2770
  br i1 %cmp51, label %for.body53, label %return.loopexit, !dbg !2763

for.body53:                                       ; preds = %for.cond50
    #dbg_value(i8 0, !2772, !DIExpression(), !2672)
  %sub54 = sub nsw i32 %m, %row.0, !dbg !2773
  %div = sdiv i32 32, %sub54, !dbg !2773
  %add55 = add nsw i32 %row.0, %div, !dbg !2773
  %mul56 = mul nsw i32 %k, %o, !dbg !2773
  %cmp57 = icmp slt i32 %add55, %mul56, !dbg !2773
  br i1 %cmp57, label %cond.true, label %cond.false, !dbg !2773

cond.true:                                        ; preds = %for.body53
  %sub59 = sub nsw i32 %m, %row.0, !dbg !2773
  %div60 = sdiv i32 32, %sub59, !dbg !2773
  %add61 = add nsw i32 %row.0, %div60, !dbg !2773
  br label %cond.end, !dbg !2773

cond.false:                                       ; preds = %for.body53
  %mul62 = mul nsw i32 %k, %o, !dbg !2773
  br label %cond.end, !dbg !2773

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add61, %cond.true ], [ %mul62, %cond.false ], !dbg !2773
    #dbg_value(i32 %cond, !2775, !DIExpression(), !2672)
    #dbg_value(i32 %row.0, !2776, !DIExpression(), !2778)
  br label %for.cond63, !dbg !2779

for.cond63:                                       ; preds = %for.inc229, %cond.end
  %finished.0 = phi i8 [ 0, %cond.end ], [ %or2273, %for.inc229 ], !dbg !2780
  %col.0 = phi i32 [ %row.0, %cond.end ], [ %inc230, %for.inc229 ], !dbg !2781
    #dbg_value(i32 %col.0, !2776, !DIExpression(), !2778)
    #dbg_value(i8 %finished.0, !2772, !DIExpression(), !2672)
  %cmp64.not = icmp sgt i32 %col.0, %cond, !dbg !2782
  br i1 %cmp64.not, label %for.cond50.loopexit, label %for.body66, !dbg !2784

for.body66:                                       ; preds = %for.cond63
  %mul67 = mul nsw i32 %row.0, %A_cols, !dbg !2785
  %9 = getelementptr i8, ptr %A, i32 %mul67, !dbg !2787
  %arrayidx69 = getelementptr i8, ptr %9, i32 %col.0, !dbg !2787
  %10 = load i8, ptr %arrayidx69, align 1, !dbg !2787
  %call70 = call fastcc zeroext i8 @ct_compare_8(i8 noundef zeroext %10, i8 noundef zeroext 0) #6, !dbg !2788
  %not = xor i8 %finished.0, -1, !dbg !2789
    #dbg_value(!DIArgList(i8 %call70, i8 %not), !2790, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value), !2672)
  %add76 = mul i32 %row.0.in, %A_cols, !dbg !2791
  %11 = getelementptr i8, ptr %A, i32 %add76, !dbg !2792
  %arrayidx78 = getelementptr i8, ptr %11, i32 -1, !dbg !2792
  %12 = load i8, ptr %arrayidx78, align 1, !dbg !2792
  %13 = and i8 %12, %not, !dbg !2793
  %and801 = and i8 %13, %call70, !dbg !2793
    #dbg_value(i8 %and801, !2794, !DIExpression(), !2795)
  %arrayidx83 = getelementptr inbounds i8, ptr %x, i32 %col.0, !dbg !2796
  %14 = load i8, ptr %arrayidx83, align 1, !dbg !2797
  %xor2 = xor i8 %14, %and801, !dbg !2797
  store i8 %xor2, ptr %arrayidx83, align 1, !dbg !2797
    #dbg_value(i32 0, !2798, !DIExpression(), !2800)
  br label %for.cond87, !dbg !2801

for.cond87:                                       ; preds = %for.body90, %for.body66
  %i86.0 = phi i32 [ 0, %for.body66 ], [ %add223, %for.body90 ], !dbg !2802
    #dbg_value(i32 %i86.0, !2798, !DIExpression(), !2800)
  %cmp88 = icmp slt i32 %i86.0, %row.0, !dbg !2803
  br i1 %cmp88, label %for.body90, label %for.inc229, !dbg !2805

for.body90:                                       ; preds = %for.cond87
  %mul91 = mul nsw i32 %i86.0, %A_cols, !dbg !2806
  %15 = getelementptr i8, ptr %A, i32 %mul91, !dbg !2808
  %arrayidx93 = getelementptr i8, ptr %15, i32 %col.0, !dbg !2808
  %16 = load i8, ptr %arrayidx93, align 1, !dbg !2808
  %conv94 = zext i8 %16 to i64, !dbg !2809
  %add95 = or disjoint i32 %i86.0, 1, !dbg !2810
  %mul96 = mul nsw i32 %add95, %A_cols, !dbg !2811
  %17 = getelementptr i8, ptr %A, i32 %mul96, !dbg !2812
  %arrayidx98 = getelementptr i8, ptr %17, i32 %col.0, !dbg !2812
  %18 = load i8, ptr %arrayidx98, align 1, !dbg !2812
  %conv99 = zext i8 %18 to i64, !dbg !2813
  %shl100 = shl nuw nsw i64 %conv99, 8, !dbg !2814
  %xor101 = or disjoint i64 %shl100, %conv94, !dbg !2815
  %add102 = or disjoint i32 %i86.0, 2, !dbg !2816
  %mul103 = mul nsw i32 %add102, %A_cols, !dbg !2817
  %19 = getelementptr i8, ptr %A, i32 %mul103, !dbg !2818
  %arrayidx105 = getelementptr i8, ptr %19, i32 %col.0, !dbg !2818
  %20 = load i8, ptr %arrayidx105, align 1, !dbg !2818
  %conv106 = zext i8 %20 to i64, !dbg !2819
  %shl107 = shl nuw nsw i64 %conv106, 16, !dbg !2820
  %xor108 = or disjoint i64 %xor101, %shl107, !dbg !2821
  %add109 = or disjoint i32 %i86.0, 3, !dbg !2822
  %mul110 = mul nsw i32 %add109, %A_cols, !dbg !2823
  %21 = getelementptr i8, ptr %A, i32 %mul110, !dbg !2824
  %arrayidx112 = getelementptr i8, ptr %21, i32 %col.0, !dbg !2824
  %22 = load i8, ptr %arrayidx112, align 1, !dbg !2824
  %conv113 = zext i8 %22 to i64, !dbg !2825
  %shl114 = shl nuw nsw i64 %conv113, 24, !dbg !2826
  %xor115 = or disjoint i64 %xor108, %shl114, !dbg !2827
  %add116 = or disjoint i32 %i86.0, 4, !dbg !2828
  %mul117 = mul nsw i32 %add116, %A_cols, !dbg !2829
  %23 = getelementptr i8, ptr %A, i32 %mul117, !dbg !2830
  %arrayidx119 = getelementptr i8, ptr %23, i32 %col.0, !dbg !2830
  %24 = load i8, ptr %arrayidx119, align 1, !dbg !2830
  %conv120 = zext i8 %24 to i64, !dbg !2831
  %shl121 = shl nuw nsw i64 %conv120, 32, !dbg !2832
  %xor122 = or disjoint i64 %xor115, %shl121, !dbg !2833
  %add123 = or disjoint i32 %i86.0, 5, !dbg !2834
  %mul124 = mul nsw i32 %add123, %A_cols, !dbg !2835
  %25 = getelementptr i8, ptr %A, i32 %mul124, !dbg !2836
  %arrayidx126 = getelementptr i8, ptr %25, i32 %col.0, !dbg !2836
  %26 = load i8, ptr %arrayidx126, align 1, !dbg !2836
  %conv127 = zext i8 %26 to i64, !dbg !2837
  %shl128 = shl nuw nsw i64 %conv127, 40, !dbg !2838
  %xor129 = xor i64 %xor122, %shl128, !dbg !2839
  %add130 = or disjoint i32 %i86.0, 6, !dbg !2840
  %mul131 = mul nsw i32 %add130, %A_cols, !dbg !2841
  %27 = getelementptr i8, ptr %A, i32 %mul131, !dbg !2842
  %arrayidx133 = getelementptr i8, ptr %27, i32 %col.0, !dbg !2842
  %28 = load i8, ptr %arrayidx133, align 1, !dbg !2842
  %conv134 = zext i8 %28 to i64, !dbg !2843
  %shl135 = shl nuw nsw i64 %conv134, 48, !dbg !2844
  %xor136 = xor i64 %xor129, %shl135, !dbg !2845
  %add137 = or disjoint i32 %i86.0, 7, !dbg !2846
  %mul138 = mul nsw i32 %add137, %A_cols, !dbg !2847
  %29 = getelementptr i8, ptr %A, i32 %mul138, !dbg !2848
  %arrayidx140 = getelementptr i8, ptr %29, i32 %col.0, !dbg !2848
  %30 = load i8, ptr %arrayidx140, align 1, !dbg !2848
  %conv141 = zext i8 %30 to i64, !dbg !2849
  %shl142 = shl nuw i64 %conv141, 56, !dbg !2850
  %xor143 = xor i64 %xor136, %shl142, !dbg !2851
    #dbg_value(i64 %xor143, !2852, !DIExpression(), !2853)
  %call144 = call fastcc i64 @mul_fx8(i8 noundef zeroext %and801, i64 noundef %xor143) #6, !dbg !2854
    #dbg_value(i64 %call144, !2852, !DIExpression(), !2853)
  %mul1464 = or disjoint i32 %i86.0, 1, !dbg !2855
  %add147 = mul i32 %mul1464, %A_cols, !dbg !2855
  %31 = getelementptr i8, ptr %A, i32 %add147, !dbg !2856
  %arrayidx149 = getelementptr i8, ptr %31, i32 -1, !dbg !2856
  %32 = load i8, ptr %arrayidx149, align 1, !dbg !2857
  %33 = trunc i64 %call144 to i8, !dbg !2857
  %34 = and i8 %33, 15, !dbg !2857
  %conv152 = xor i8 %34, %32, !dbg !2857
  store i8 %conv152, ptr %arrayidx149, align 1, !dbg !2857
  %shr = lshr i64 %call144, 8, !dbg !2858
  %mul1555 = or disjoint i32 %i86.0, 2, !dbg !2859
  %add156 = mul i32 %mul1555, %A_cols, !dbg !2859
  %35 = getelementptr i8, ptr %A, i32 %add156, !dbg !2860
  %arrayidx158 = getelementptr i8, ptr %35, i32 -1, !dbg !2860
  %36 = load i8, ptr %arrayidx158, align 1, !dbg !2861
  %37 = trunc i64 %shr to i8, !dbg !2861
  %38 = and i8 %37, 15, !dbg !2861
  %conv161 = xor i8 %38, %36, !dbg !2861
  store i8 %conv161, ptr %arrayidx158, align 1, !dbg !2861
  %shr162 = lshr i64 %call144, 16, !dbg !2862
  %mul1656 = or disjoint i32 %i86.0, 3, !dbg !2863
  %add166 = mul i32 %mul1656, %A_cols, !dbg !2863
  %39 = getelementptr i8, ptr %A, i32 %add166, !dbg !2864
  %arrayidx168 = getelementptr i8, ptr %39, i32 -1, !dbg !2864
  %40 = load i8, ptr %arrayidx168, align 1, !dbg !2865
  %41 = trunc i64 %shr162 to i8, !dbg !2865
  %42 = and i8 %41, 15, !dbg !2865
  %conv171 = xor i8 %42, %40, !dbg !2865
  store i8 %conv171, ptr %arrayidx168, align 1, !dbg !2865
  %shr172 = lshr i64 %call144, 24, !dbg !2866
  %mul1757 = or disjoint i32 %i86.0, 4, !dbg !2867
  %add176 = mul i32 %mul1757, %A_cols, !dbg !2867
  %43 = getelementptr i8, ptr %A, i32 %add176, !dbg !2868
  %arrayidx178 = getelementptr i8, ptr %43, i32 -1, !dbg !2868
  %44 = load i8, ptr %arrayidx178, align 1, !dbg !2869
  %45 = trunc i64 %shr172 to i8, !dbg !2869
  %46 = and i8 %45, 15, !dbg !2869
  %conv181 = xor i8 %46, %44, !dbg !2869
  store i8 %conv181, ptr %arrayidx178, align 1, !dbg !2869
  %shr182 = lshr i64 %call144, 32, !dbg !2870
  %mul1858 = or disjoint i32 %i86.0, 5, !dbg !2871
  %add186 = mul i32 %mul1858, %A_cols, !dbg !2871
  %47 = getelementptr i8, ptr %A, i32 %add186, !dbg !2872
  %arrayidx188 = getelementptr i8, ptr %47, i32 -1, !dbg !2872
  %48 = load i8, ptr %arrayidx188, align 1, !dbg !2873
  %49 = trunc i64 %shr182 to i8, !dbg !2873
  %50 = and i8 %49, 15, !dbg !2873
  %conv191 = xor i8 %50, %48, !dbg !2873
  store i8 %conv191, ptr %arrayidx188, align 1, !dbg !2873
  %shr192 = lshr i64 %call144, 40, !dbg !2874
  %mul1959 = or disjoint i32 %i86.0, 6, !dbg !2875
  %add196 = mul i32 %mul1959, %A_cols, !dbg !2875
  %51 = getelementptr i8, ptr %A, i32 %add196, !dbg !2876
  %arrayidx198 = getelementptr i8, ptr %51, i32 -1, !dbg !2876
  %52 = load i8, ptr %arrayidx198, align 1, !dbg !2877
  %53 = trunc i64 %shr192 to i8, !dbg !2877
  %54 = and i8 %53, 15, !dbg !2877
  %conv201 = xor i8 %54, %52, !dbg !2877
  store i8 %conv201, ptr %arrayidx198, align 1, !dbg !2877
  %shr202 = lshr i64 %call144, 48, !dbg !2878
  %mul20510 = or disjoint i32 %i86.0, 7, !dbg !2879
  %add206 = mul i32 %mul20510, %A_cols, !dbg !2879
  %55 = getelementptr i8, ptr %A, i32 %add206, !dbg !2880
  %arrayidx208 = getelementptr i8, ptr %55, i32 -1, !dbg !2880
  %56 = load i8, ptr %arrayidx208, align 1, !dbg !2881
  %57 = trunc i64 %shr202 to i8, !dbg !2881
  %58 = and i8 %57, 15, !dbg !2881
  %conv211 = xor i8 %58, %56, !dbg !2881
  store i8 %conv211, ptr %arrayidx208, align 1, !dbg !2881
  %shr212 = lshr i64 %call144, 56, !dbg !2882
  %mul21511 = add nuw i32 %i86.0, 8, !dbg !2883
  %add216 = mul i32 %mul21511, %A_cols, !dbg !2883
  %59 = getelementptr i8, ptr %A, i32 %add216, !dbg !2884
  %arrayidx218 = getelementptr i8, ptr %59, i32 -1, !dbg !2884
  %60 = load i8, ptr %arrayidx218, align 1, !dbg !2885
  %61 = trunc nuw nsw i64 %shr212 to i8, !dbg !2885
  %conv221 = xor i8 %60, %61, !dbg !2885
  store i8 %conv221, ptr %arrayidx218, align 1, !dbg !2885
  %add223 = add nuw nsw i32 %i86.0, 8, !dbg !2886
    #dbg_value(i32 %add223, !2798, !DIExpression(), !2800)
  br label %for.cond87, !dbg !2887, !llvm.loop !2888

for.inc229:                                       ; preds = %for.cond87
    #dbg_value(!DIArgList(i8 %finished.0, i8 %call70), !2772, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2672)
  %or2273 = or i8 %finished.0, %call70, !dbg !2890
    #dbg_value(i8 %or2273, !2772, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2672)
    #dbg_value(i8 %or2273, !2772, !DIExpression(), !2672)
  %inc230 = add nsw i32 %col.0, 1, !dbg !2891
    #dbg_value(i32 %inc230, !2776, !DIExpression(), !2778)
  br label %for.cond63, !dbg !2892, !llvm.loop !2893

return.loopexit:                                  ; preds = %for.cond50
  br label %return, !dbg !2895

return:                                           ; preds = %return.loopexit, %for.end45
  %retval.0 = phi i32 [ 0, %for.end45 ], [ 1, %return.loopexit ], !dbg !2672
  ret i32 %retval.0, !dbg !2895
}

; Function Attrs: nounwind
define internal fastcc void @mat_mul.21(ptr noundef %a, ptr noundef %b, ptr noundef %c, i32 noundef %colrow_ab, i32 noundef %row_a, i32 noundef %col_b) unnamed_addr #0 !dbg !2896 {
entry:
    #dbg_value(ptr %a, !2897, !DIExpression(), !2898)
    #dbg_value(ptr %b, !2899, !DIExpression(), !2898)
    #dbg_value(ptr %c, !2900, !DIExpression(), !2898)
    #dbg_value(i32 %colrow_ab, !2901, !DIExpression(), !2898)
    #dbg_value(i32 %row_a, !2902, !DIExpression(), !2898)
    #dbg_value(i32 %col_b, !2903, !DIExpression(), !2898)
    #dbg_value(i32 0, !2904, !DIExpression(), !2906)
  %smax = call i32 @llvm.smax.i32(i32 %col_b, i32 0), !dbg !2907
  %smax1 = call i32 @llvm.smax.i32(i32 %row_a, i32 0), !dbg !2907
  br label %for.cond, !dbg !2907

for.cond:                                         ; preds = %for.inc4, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc5, %for.inc4 ], !dbg !2908
  %c.addr.0 = phi ptr [ %c, %entry ], [ %c.addr.1.lcssa, %for.inc4 ]
  %a.addr.0 = phi ptr [ %a, %entry ], [ %add.ptr6, %for.inc4 ]
    #dbg_value(ptr %a.addr.0, !2897, !DIExpression(), !2898)
    #dbg_value(ptr %c.addr.0, !2900, !DIExpression(), !2898)
    #dbg_value(i32 %i.0, !2904, !DIExpression(), !2906)
  %exitcond2 = icmp ne i32 %i.0, %smax1, !dbg !2909
  br i1 %exitcond2, label %for.cond1.preheader, label %for.end7, !dbg !2911

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !2912

for.cond1:                                        ; preds = %for.cond1.preheader, %for.body3
  %c.addr.1 = phi ptr [ %incdec.ptr, %for.body3 ], [ %c.addr.0, %for.cond1.preheader ]
  %j.0 = phi i32 [ %inc, %for.body3 ], [ 0, %for.cond1.preheader ], !dbg !2915
    #dbg_value(i32 %j.0, !2916, !DIExpression(), !2917)
    #dbg_value(ptr %c.addr.1, !2900, !DIExpression(), !2898)
  %exitcond = icmp ne i32 %j.0, %smax, !dbg !2918
  br i1 %exitcond, label %for.body3, label %for.inc4, !dbg !2912

for.body3:                                        ; preds = %for.cond1
  %add.ptr = getelementptr inbounds nuw i8, ptr %b, i32 %j.0, !dbg !2920
  %call = call fastcc zeroext i8 @lincomb.24(ptr noundef %a.addr.0, ptr noundef %add.ptr, i32 noundef %colrow_ab, i32 noundef %col_b) #6, !dbg !2922
  store i8 %call, ptr %c.addr.1, align 1, !dbg !2923
  %inc = add nuw i32 %j.0, 1, !dbg !2924
    #dbg_value(i32 %inc, !2916, !DIExpression(), !2917)
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %c.addr.1, i32 1, !dbg !2925
    #dbg_value(ptr %incdec.ptr, !2900, !DIExpression(), !2898)
  br label %for.cond1, !dbg !2926, !llvm.loop !2927

for.inc4:                                         ; preds = %for.cond1
  %c.addr.1.lcssa = phi ptr [ %c.addr.1, %for.cond1 ]
  %inc5 = add nuw i32 %i.0, 1, !dbg !2929
    #dbg_value(i32 %inc5, !2904, !DIExpression(), !2906)
  %add.ptr6 = getelementptr inbounds i8, ptr %a.addr.0, i32 %colrow_ab, !dbg !2930
    #dbg_value(ptr %add.ptr6, !2897, !DIExpression(), !2898)
  br label %for.cond, !dbg !2931, !llvm.loop !2932

for.end7:                                         ; preds = %for.cond
  ret void, !dbg !2934
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @sub_f(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !2935 {
entry:
    #dbg_value(i8 %a, !2936, !DIExpression(), !2937)
    #dbg_value(i8 %b, !2938, !DIExpression(), !2937)
  %xor1 = xor i8 %a, %b, !dbg !2939
  ret i8 %xor1, !dbg !2940
}

; Function Attrs: nounwind
define internal fastcc void @EF(ptr noundef %A, i32 noundef %nrows, i32 noundef %ncols) unnamed_addr #0 !dbg !2941 {
entry:
  %_pivot_row = alloca [5 x i64], align 32
  %_pivot_row2 = alloca [5 x i64], align 32
  %packed_A = alloca [320 x i64], align 32
  %temp = alloca [84 x i8], align 1
    #dbg_value(ptr %A, !2945, !DIExpression(), !2946)
    #dbg_value(i32 %nrows, !2947, !DIExpression(), !2946)
    #dbg_value(i32 %ncols, !2948, !DIExpression(), !2946)
    #dbg_declare(ptr %_pivot_row, !2949, !DIExpression(), !2953)
    #dbg_declare(ptr %_pivot_row2, !2954, !DIExpression(), !2955)
    #dbg_declare(ptr %packed_A, !2956, !DIExpression(), !2960)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 32 dereferenceable(2560) %packed_A, i8 0, i32 2560, i1 false), !dbg !2960
  %add = add nsw i32 %ncols, 15, !dbg !2961
  %div = sdiv i32 %add, 16, !dbg !2962
    #dbg_value(i32 %div, !2963, !DIExpression(), !2946)
    #dbg_value(i32 0, !2964, !DIExpression(), !2966)
  %smax = call i32 @llvm.smax.i32(i32 %nrows, i32 0), !dbg !2967
  br label %for.cond, !dbg !2967

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2968
    #dbg_value(i32 %i.0, !2964, !DIExpression(), !2966)
  %exitcond = icmp ne i32 %i.0, %smax, !dbg !2969
  br i1 %exitcond, label %for.body, label %for.cond3.preheader, !dbg !2971

for.cond3.preheader:                              ; preds = %for.cond
  %smax1 = call i32 @llvm.smax.i32(i32 %div, i32 0), !dbg !2972
  %smax5 = call i32 @llvm.smax.i32(i32 %ncols, i32 0), !dbg !2972
  br label %for.cond3, !dbg !2972

for.body:                                         ; preds = %for.cond
  %mul = mul nsw i32 %i.0, %ncols, !dbg !2974
  %add.ptr = getelementptr inbounds i8, ptr %A, i32 %mul, !dbg !2976
  %mul1 = mul nsw i32 %i.0, %div, !dbg !2977
  %add.ptr2 = getelementptr inbounds i64, ptr %packed_A, i32 %mul1, !dbg !2978
  call fastcc void @ef_pack_m_vec(ptr noundef %add.ptr, ptr noundef nonnull %add.ptr2, i32 noundef %ncols) #6, !dbg !2979
  %inc = add nuw i32 %i.0, 1, !dbg !2980
    #dbg_value(i32 %inc, !2964, !DIExpression(), !2966)
  br label %for.cond, !dbg !2981, !llvm.loop !2982

for.cond3:                                        ; preds = %for.cond3.preheader, %for.inc117
  %pivot_col.0 = phi i32 [ %inc118, %for.inc117 ], [ 0, %for.cond3.preheader ], !dbg !2984
  %pivot_row.0 = phi i32 [ %conv116, %for.inc117 ], [ 0, %for.cond3.preheader ], !dbg !2946
    #dbg_value(i32 %pivot_row.0, !2985, !DIExpression(), !2946)
    #dbg_value(i32 %pivot_col.0, !2986, !DIExpression(), !2987)
  %exitcond6 = icmp ne i32 %pivot_col.0, %smax5, !dbg !2988
  br i1 %exitcond6, label %for.body5, label %for.cond121.preheader, !dbg !2972

for.cond121.preheader:                            ; preds = %for.cond3
  br label %for.cond121, !dbg !2990

for.body5:                                        ; preds = %for.cond3
  %add6 = add nsw i32 %pivot_col.0, %nrows, !dbg !2992
  %cmp7 = icmp slt i32 %add6, %ncols, !dbg !2992
  %add8 = add nsw i32 %pivot_col.0, %nrows, !dbg !2992
  %sub9 = sub nsw i32 %add8, %ncols, !dbg !2992
  %cond = select i1 %cmp7, i32 0, i32 %sub9, !dbg !2992
    #dbg_value(i32 %cond, !2994, !DIExpression(), !2995)
  %sub13 = add nsw i32 %nrows, -1, !dbg !2996
    #dbg_value(i32 %cond16, !2997, !DIExpression(), !2995)
    #dbg_value(i32 0, !2998, !DIExpression(), !3000)
  br label %for.cond18, !dbg !3001

for.cond18:                                       ; preds = %for.body20, %for.body5
  %i17.0 = phi i32 [ 0, %for.body5 ], [ %inc23, %for.body20 ], !dbg !3002
    #dbg_value(i32 %i17.0, !2998, !DIExpression(), !3000)
  %exitcond2 = icmp ne i32 %i17.0, %smax1, !dbg !3003
  br i1 %exitcond2, label %for.body20, label %for.cond25.preheader, !dbg !3005

for.cond25.preheader:                             ; preds = %for.cond18
  %cmp11.not = icmp sgt i32 %nrows, %pivot_col.0, !dbg !2996
  %cond16 = select i1 %cmp11.not, i32 %pivot_col.0, i32 %sub13, !dbg !2996
  br label %for.cond25, !dbg !3006

for.body20:                                       ; preds = %for.cond18
  %arrayidx = getelementptr inbounds nuw [5 x i64], ptr %_pivot_row, i32 0, i32 %i17.0, !dbg !3008
  store i64 0, ptr %arrayidx, align 8, !dbg !3010
  %arrayidx21 = getelementptr inbounds nuw [5 x i64], ptr %_pivot_row2, i32 0, i32 %i17.0, !dbg !3011
  store i64 0, ptr %arrayidx21, align 8, !dbg !3012
  %inc23 = add nuw nsw i32 %i17.0, 1, !dbg !3013
    #dbg_value(i32 %inc23, !2998, !DIExpression(), !3000)
  br label %for.cond18, !dbg !3014, !llvm.loop !3015

for.cond25:                                       ; preds = %for.cond25.preheader, %for.end48
  %pivot_is_zero.0 = phi i64 [ %not52, %for.end48 ], [ -1, %for.cond25.preheader ], !dbg !2995
  %pivot.0 = phi i8 [ %call50, %for.end48 ], [ 0, %for.cond25.preheader ], !dbg !2995
  %row.0 = phi i32 [ %inc54, %for.end48 ], [ %cond, %for.cond25.preheader ], !dbg !3017
    #dbg_value(i32 %row.0, !3018, !DIExpression(), !3017)
    #dbg_value(i8 %pivot.0, !3019, !DIExpression(), !2995)
    #dbg_value(i64 %pivot_is_zero.0, !3020, !DIExpression(), !2995)
  %add27 = add nsw i32 %cond16, 32, !dbg !3021
  %cmp28.not = icmp sgt i32 %nrows, %add27, !dbg !3021
  %sub30 = add nsw i32 %nrows, -1, !dbg !3021
  %add32 = add nsw i32 %cond16, 32, !dbg !3021
  %cond34 = select i1 %cmp28.not, i32 %add32, i32 %sub30, !dbg !3021
  %cmp35.not = icmp sgt i32 %row.0, %cond34, !dbg !3023
  br i1 %cmp35.not, label %for.end55, label %for.body36, !dbg !3006

for.body36:                                       ; preds = %for.cond25
  %call = call fastcc i64 @ct_compare_64(i32 noundef %row.0, i32 noundef %pivot_row.0) #6, !dbg !3024
  %not = xor i64 %call, -1, !dbg !3026
    #dbg_value(i64 %not, !3027, !DIExpression(), !3028)
  %call37 = call fastcc i64 @ct_64_is_greater_than(i32 noundef %row.0, i32 noundef %pivot_row.0) #6, !dbg !3029
    #dbg_value(i64 %call37, !3030, !DIExpression(), !3028)
    #dbg_value(i32 0, !3031, !DIExpression(), !3033)
  br label %for.cond38, !dbg !3034

for.cond38:                                       ; preds = %for.body40, %for.body36
  %j.0 = phi i32 [ 0, %for.body36 ], [ %inc47, %for.body40 ], !dbg !3035
    #dbg_value(i32 %j.0, !3031, !DIExpression(), !3033)
  %exitcond3 = icmp ne i32 %j.0, %smax1, !dbg !3036
  br i1 %exitcond3, label %for.body40, label %for.end48, !dbg !3038

for.body40:                                       ; preds = %for.cond38
  %and = and i64 %call37, %pivot_is_zero.0, !dbg !3039
  %or = or i64 %and, %not, !dbg !3041
  %mul41 = mul nsw i32 %row.0, %div, !dbg !3042
  %add42 = add nsw i32 %mul41, %j.0, !dbg !3043
  %arrayidx43 = getelementptr inbounds [320 x i64], ptr %packed_A, i32 0, i32 %add42, !dbg !3044
  %0 = load i64, ptr %arrayidx43, align 8, !dbg !3044
  %and44 = and i64 %or, %0, !dbg !3045
  %arrayidx45 = getelementptr inbounds nuw [5 x i64], ptr %_pivot_row, i32 0, i32 %j.0, !dbg !3046
  %1 = load i64, ptr %arrayidx45, align 8, !dbg !3047
  %xor = xor i64 %1, %and44, !dbg !3047
  store i64 %xor, ptr %arrayidx45, align 8, !dbg !3047
  %inc47 = add nuw nsw i32 %j.0, 1, !dbg !3048
    #dbg_value(i32 %inc47, !3031, !DIExpression(), !3033)
  br label %for.cond38, !dbg !3049, !llvm.loop !3050

for.end48:                                        ; preds = %for.cond38
  %call50 = call fastcc zeroext i8 @m_extract_element(ptr noundef nonnull %_pivot_row, i32 noundef %pivot_col.0) #6, !dbg !3052
    #dbg_value(i8 %call50, !3019, !DIExpression(), !2995)
  %conv = zext nneg i8 %call50 to i32, !dbg !3053
  %call51 = call fastcc i64 @ct_compare_64(i32 noundef %conv, i32 noundef 0) #6, !dbg !3054
    #dbg_value(i64 %call51, !3020, !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_stack_value), !2995)
  %not52 = xor i64 %call51, -1, !dbg !3055
    #dbg_value(i64 %not52, !3020, !DIExpression(), !2995)
  %inc54 = add nsw i32 %row.0, 1, !dbg !3056
    #dbg_value(i32 %inc54, !3018, !DIExpression(), !3017)
  br label %for.cond25, !dbg !3057, !llvm.loop !3058

for.end55:                                        ; preds = %for.cond25
  %pivot_is_zero.0.lcssa = phi i64 [ %pivot_is_zero.0, %for.cond25 ], !dbg !2995
  %pivot.0.lcssa = phi i8 [ %pivot.0, %for.cond25 ], !dbg !2995
  %call56 = call fastcc zeroext i8 @inverse_f(i8 noundef zeroext %pivot.0.lcssa) #6, !dbg !3060
    #dbg_value(i8 %call56, !3061, !DIExpression(), !2946)
  call fastcc void @vec_mul_add_u64(i32 noundef %div, ptr noundef nonnull %_pivot_row, i8 noundef zeroext %call56, ptr noundef nonnull %_pivot_row2) #6, !dbg !3062
    #dbg_value(i32 %cond, !3063, !DIExpression(), !3065)
  br label %for.cond60, !dbg !3066

for.cond60:                                       ; preds = %for.inc86, %for.end55
  %row59.0 = phi i32 [ %cond, %for.end55 ], [ %inc87, %for.inc86 ], !dbg !3067
    #dbg_value(i32 %row59.0, !3063, !DIExpression(), !3065)
  %cmp61.not = icmp sgt i32 %row59.0, %cond16, !dbg !3068
  br i1 %cmp61.not, label %for.cond90.preheader, label %for.body63, !dbg !3070

for.cond90.preheader:                             ; preds = %for.cond60
  br label %for.cond90, !dbg !3071

for.body63:                                       ; preds = %for.cond60
  %call64 = call fastcc i64 @ct_compare_64(i32 noundef %row59.0, i32 noundef %pivot_row.0) #6, !dbg !3073
  %and67.demorgan = or i64 %call64, %pivot_is_zero.0.lcssa, !dbg !3075
  %and67 = xor i64 %and67.demorgan, -1, !dbg !3075
    #dbg_value(i64 %and67, !3076, !DIExpression(), !3077)
    #dbg_value(i64 %and67.demorgan, !3078, !DIExpression(), !3077)
    #dbg_value(i32 0, !3079, !DIExpression(), !3081)
  br label %for.cond69, !dbg !3082

for.cond69:                                       ; preds = %for.body72, %for.body63
  %col.0 = phi i32 [ 0, %for.body63 ], [ %inc84, %for.body72 ], !dbg !3083
    #dbg_value(i32 %col.0, !3079, !DIExpression(), !3081)
  %exitcond4 = icmp ne i32 %col.0, %smax1, !dbg !3084
  br i1 %exitcond4, label %for.body72, label %for.inc86, !dbg !3086

for.body72:                                       ; preds = %for.cond69
  %mul73 = mul nsw i32 %row59.0, %div, !dbg !3087
  %add74 = add nsw i32 %mul73, %col.0, !dbg !3089
  %arrayidx75 = getelementptr inbounds [320 x i64], ptr %packed_A, i32 0, i32 %add74, !dbg !3090
  %2 = load i64, ptr %arrayidx75, align 8, !dbg !3090
  %and76 = and i64 %and67.demorgan, %2, !dbg !3091
  %arrayidx77 = getelementptr inbounds nuw [5 x i64], ptr %_pivot_row2, i32 0, i32 %col.0, !dbg !3092
  %3 = load i64, ptr %arrayidx77, align 8, !dbg !3092
  %and78 = and i64 %3, %and67, !dbg !3093
  %add79 = add i64 %and76, %and78, !dbg !3094
  %mul80 = mul nsw i32 %row59.0, %div, !dbg !3095
  %add81 = add nsw i32 %mul80, %col.0, !dbg !3096
  %arrayidx82 = getelementptr inbounds [320 x i64], ptr %packed_A, i32 0, i32 %add81, !dbg !3097
  store i64 %add79, ptr %arrayidx82, align 8, !dbg !3098
  %inc84 = add nuw nsw i32 %col.0, 1, !dbg !3099
    #dbg_value(i32 %inc84, !3079, !DIExpression(), !3081)
  br label %for.cond69, !dbg !3100, !llvm.loop !3101

for.inc86:                                        ; preds = %for.cond69
  %inc87 = add nsw i32 %row59.0, 1, !dbg !3103
    #dbg_value(i32 %inc87, !3063, !DIExpression(), !3065)
  br label %for.cond60, !dbg !3104, !llvm.loop !3105

for.cond90:                                       ; preds = %for.cond90.preheader, %for.body93
  %row89.0 = phi i32 [ %inc110, %for.body93 ], [ %cond, %for.cond90.preheader ], !dbg !3107
    #dbg_value(i32 %row89.0, !3108, !DIExpression(), !3109)
  %cmp91 = icmp slt i32 %row89.0, %nrows, !dbg !3110
  br i1 %cmp91, label %for.body93, label %for.inc117, !dbg !3071

for.body93:                                       ; preds = %for.cond90
  %cmp94 = icmp sgt i32 %row89.0, %pivot_row.0, !dbg !3112
    #dbg_value(i1 %cmp94, !3114, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !3115)
  %mul98 = mul nsw i32 %row89.0, %div, !dbg !3116
  %add.ptr99 = getelementptr inbounds i64, ptr %packed_A, i32 %mul98, !dbg !3117
  %call100 = call fastcc zeroext i8 @m_extract_element(ptr noundef nonnull %add.ptr99, i32 noundef %pivot_col.0) #6, !dbg !3118
    #dbg_value(i8 %call100, !3119, !DIExpression(), !3115)
  %conv105 = select i1 %cmp94, i8 %call100, i8 0, !dbg !3120
  %mul107 = mul nsw i32 %row89.0, %div, !dbg !3121
  %add.ptr108 = getelementptr inbounds i64, ptr %packed_A, i32 %mul107, !dbg !3122
  call fastcc void @vec_mul_add_u64(i32 noundef %div, ptr noundef nonnull %_pivot_row2, i8 noundef zeroext %conv105, ptr noundef nonnull %add.ptr108) #6, !dbg !3123
  %inc110 = add nsw i32 %row89.0, 1, !dbg !3124
    #dbg_value(i32 %inc110, !3108, !DIExpression(), !3109)
  br label %for.cond90, !dbg !3125, !llvm.loop !3126

for.inc117:                                       ; preds = %for.cond90
    #dbg_value(!DIArgList(i64 %pivot_is_zero.0.lcssa, i32 %pivot_row.0), !2985, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_plus_uconst, 1, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2946)
  %4 = trunc i64 %pivot_is_zero.0.lcssa to i32, !dbg !3128
  %5 = add i32 %4, 1, !dbg !3128
  %conv116 = add i32 %5, %pivot_row.0, !dbg !3128
    #dbg_value(i32 %conv116, !2985, !DIExpression(), !2946)
  %inc118 = add nuw i32 %pivot_col.0, 1, !dbg !3129
    #dbg_value(i32 %inc118, !2986, !DIExpression(), !2987)
  br label %for.cond3, !dbg !3130, !llvm.loop !3131

for.cond121:                                      ; preds = %for.cond121.preheader, %for.inc141
  %i120.0 = phi i32 [ %inc142, %for.inc141 ], [ 0, %for.cond121.preheader ], !dbg !3133
    #dbg_value(i32 %i120.0, !3134, !DIExpression(), !3135)
  %exitcond8 = icmp ne i32 %i120.0, %smax, !dbg !3136
  br i1 %exitcond8, label %for.body124, label %for.end143, !dbg !2990

for.body124:                                      ; preds = %for.cond121
  %mul126 = mul nsw i32 %i120.0, %div, !dbg !3138
  %add.ptr127 = getelementptr inbounds i64, ptr %packed_A, i32 %mul126, !dbg !3140
  call fastcc void @ef_unpack_m_vec(i32 noundef %div, ptr noundef nonnull %add.ptr127, ptr noundef nonnull %temp) #6, !dbg !3141
    #dbg_value(i32 0, !3142, !DIExpression(), !3144)
  br label %for.cond130, !dbg !3145

for.cond130:                                      ; preds = %for.body133, %for.body124
  %j129.0 = phi i32 [ 0, %for.body124 ], [ %inc139, %for.body133 ], !dbg !3146
    #dbg_value(i32 %j129.0, !3142, !DIExpression(), !3144)
  %exitcond7 = icmp ne i32 %j129.0, %smax5, !dbg !3147
  br i1 %exitcond7, label %for.body133, label %for.inc141, !dbg !3149

for.body133:                                      ; preds = %for.cond130
  %arrayidx134 = getelementptr inbounds nuw [84 x i8], ptr %temp, i32 0, i32 %j129.0, !dbg !3150
  %6 = load i8, ptr %arrayidx134, align 1, !dbg !3150
  %mul135 = mul nsw i32 %i120.0, %ncols, !dbg !3152
  %7 = getelementptr i8, ptr %A, i32 %mul135, !dbg !3153
  %arrayidx137 = getelementptr i8, ptr %7, i32 %j129.0, !dbg !3153
  store i8 %6, ptr %arrayidx137, align 1, !dbg !3154
  %inc139 = add nuw i32 %j129.0, 1, !dbg !3155
    #dbg_value(i32 %inc139, !3142, !DIExpression(), !3144)
  br label %for.cond130, !dbg !3156, !llvm.loop !3157

for.inc141:                                       ; preds = %for.cond130
  %inc142 = add nuw i32 %i120.0, 1, !dbg !3159
    #dbg_value(i32 %inc142, !3134, !DIExpression(), !3135)
  br label %for.cond121, !dbg !3160, !llvm.loop !3161

for.end143:                                       ; preds = %for.cond121
  call void @mayo_secure_clear(ptr noundef nonnull %temp, i32 noundef 84) #8, !dbg !3163
  call void @mayo_secure_clear(ptr noundef nonnull %_pivot_row, i32 noundef 40) #8, !dbg !3164
  call void @mayo_secure_clear(ptr noundef nonnull %_pivot_row2, i32 noundef 40) #8, !dbg !3165
  call void @mayo_secure_clear(ptr noundef nonnull %packed_A, i32 noundef 2560) #8, !dbg !3166
  ret void, !dbg !3167
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @ct_compare_8(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !3168 {
entry:
    #dbg_value(i8 %a, !3170, !DIExpression(), !3171)
    #dbg_value(i8 %b, !3172, !DIExpression(), !3171)
  %0 = icmp ne i8 %a, %b, !dbg !3173
  %conv3 = sext i1 %0 to i8, !dbg !3174
  %1 = load volatile i8, ptr @pqmayo_MAYO_2_ref_unsigned_char_blocker, align 1, !dbg !3175
  %xor5 = xor i8 %1, %conv3, !dbg !3176
  ret i8 %xor5, !dbg !3177
}

; Function Attrs: nounwind
define internal fastcc range(i64 0, 1085102592571150096) i64 @mul_fx8(i8 noundef zeroext %a, i64 noundef %b) unnamed_addr #0 !dbg !3178 {
entry:
    #dbg_value(i8 %a, !3181, !DIExpression(), !3182)
    #dbg_value(i64 %b, !3183, !DIExpression(), !3182)
  %0 = and i8 %a, 1, !dbg !3184
  %conv1 = zext nneg i8 %0 to i64, !dbg !3185
  %mul = mul nuw nsw i64 %b, %conv1, !dbg !3186
    #dbg_value(i64 %mul, !3187, !DIExpression(), !3182)
  %1 = and i8 %a, 2, !dbg !3188
  %conv4 = zext nneg i8 %1 to i64, !dbg !3189
  %mul5 = mul i64 %b, %conv4, !dbg !3190
  %xor = xor i64 %mul, %mul5, !dbg !3191
    #dbg_value(i64 %xor, !3187, !DIExpression(), !3182)
  %2 = and i8 %a, 4, !dbg !3192
  %conv8 = zext nneg i8 %2 to i64, !dbg !3193
  %mul9 = mul i64 %b, %conv8, !dbg !3194
  %xor10 = xor i64 %xor, %mul9, !dbg !3195
    #dbg_value(i64 %xor10, !3187, !DIExpression(), !3182)
  %3 = and i8 %a, 8, !dbg !3196
  %conv13 = zext nneg i8 %3 to i64, !dbg !3197
  %mul14 = mul i64 %b, %conv13, !dbg !3198
  %xor15 = xor i64 %xor10, %mul14, !dbg !3199
    #dbg_value(i64 %xor15, !3187, !DIExpression(), !3182)
    #dbg_value(i64 %xor15, !3200, !DIExpression(DW_OP_constu, 17361641481138401520, DW_OP_and, DW_OP_stack_value), !3182)
  %shr = lshr i64 %xor15, 4, !dbg !3201
  %and16 = lshr i64 %xor15, 3, !dbg !3202
  %shr18 = and i64 %and16, 1012762419733073422, !dbg !3202
  %4 = xor i64 %shr, %shr18, !dbg !3203
  %xor19 = xor i64 %4, %xor15, !dbg !3203
  %and20 = and i64 %xor19, 1085102592571150095, !dbg !3204
    #dbg_value(i64 %and20, !3205, !DIExpression(), !3182)
  ret i64 %and20, !dbg !3206
}

; Function Attrs: nounwind
define internal fastcc void @ef_pack_m_vec(ptr noundef %in, ptr noundef %out, i32 noundef %ncols) unnamed_addr #0 !dbg !3207 {
entry:
    #dbg_value(ptr %in, !3210, !DIExpression(), !3211)
    #dbg_value(ptr %out, !3212, !DIExpression(), !3211)
    #dbg_value(i32 %ncols, !3213, !DIExpression(), !3211)
    #dbg_value(ptr %out, !3214, !DIExpression(), !3211)
    #dbg_value(i32 0, !3215, !DIExpression(), !3211)
  br label %for.cond, !dbg !3216

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %add8, %for.body ], !dbg !3218
    #dbg_value(i32 %i.0, !3215, !DIExpression(), !3211)
  %add = or disjoint i32 %i.0, 1, !dbg !3219
  %cmp = icmp slt i32 %add, %ncols, !dbg !3221
  br i1 %cmp, label %for.body, label %for.end, !dbg !3222

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %in, i32 %i.0, !dbg !3223
  %0 = load i8, ptr %arrayidx, align 1, !dbg !3223
  %add2 = or disjoint i32 %i.0, 1, !dbg !3225
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %in, i32 %add2, !dbg !3226
  %1 = load i8, ptr %arrayidx3, align 1, !dbg !3226
  %shl5 = shl i8 %1, 4, !dbg !3227
  %or = or i8 %shl5, %0, !dbg !3228
  %div = lshr exact i32 %i.0, 1, !dbg !3229
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %out, i32 %div, !dbg !3230
  store i8 %or, ptr %arrayidx7, align 1, !dbg !3231
  %add8 = add nuw nsw i32 %i.0, 2, !dbg !3232
    #dbg_value(i32 %add8, !3215, !DIExpression(), !3211)
  br label %for.cond, !dbg !3233, !llvm.loop !3234

for.end:                                          ; preds = %for.cond
  %i.0.lcssa = phi i32 [ %i.0, %for.cond ], !dbg !3218
  %2 = and i32 %ncols, -2147483647, !dbg !3236
  %cmp9 = icmp eq i32 %2, 1, !dbg !3236
  br i1 %cmp9, label %if.then, label %if.end, !dbg !3236

if.then:                                          ; preds = %for.end
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %in, i32 %i.0.lcssa, !dbg !3238
  %3 = load i8, ptr %arrayidx12, align 1, !dbg !3238
  %div16 = lshr exact i32 %i.0.lcssa, 1, !dbg !3240
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %out, i32 %div16, !dbg !3241
  store i8 %3, ptr %arrayidx17, align 1, !dbg !3242
  br label %if.end, !dbg !3243

if.end:                                           ; preds = %if.then, %for.end
  ret void, !dbg !3244
}

; Function Attrs: nounwind
define internal fastcc i64 @ct_compare_64(i32 noundef %a, i32 noundef %b) unnamed_addr #0 !dbg !3245 {
entry:
    #dbg_value(i32 %a, !3248, !DIExpression(), !3249)
    #dbg_value(i32 %b, !3250, !DIExpression(), !3249)
  %xor = xor i32 %a, %b, !dbg !3251
  %0 = icmp sgt i32 %xor, 0, !dbg !3252
  %shr = sext i1 %0 to i64, !dbg !3252
  %1 = load volatile i64, ptr @pqmayo_MAYO_2_ref_uint64_t_blocker, align 8, !dbg !3253
  %xor1 = xor i64 %1, %shr, !dbg !3254
  ret i64 %xor1, !dbg !3255
}

; Function Attrs: nounwind
define internal fastcc i64 @ct_64_is_greater_than(i32 noundef %a, i32 noundef %b) unnamed_addr #0 !dbg !3256 {
entry:
    #dbg_value(i32 %a, !3257, !DIExpression(), !3258)
    #dbg_value(i32 %b, !3259, !DIExpression(), !3258)
    #dbg_value(!DIArgList(i32 %b, i32 %a), !3260, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_minus, DW_OP_stack_value), !3258)
  %0 = icmp slt i32 %b, %a, !dbg !3261
  %shr = sext i1 %0 to i64, !dbg !3261
  %1 = load volatile i64, ptr @pqmayo_MAYO_2_ref_uint64_t_blocker, align 8, !dbg !3262
  %xor = xor i64 %1, %shr, !dbg !3263
  ret i64 %xor, !dbg !3264
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @m_extract_element(ptr noundef %in, i32 noundef %index) unnamed_addr #0 !dbg !3265 {
entry:
    #dbg_value(ptr %in, !3268, !DIExpression(), !3269)
    #dbg_value(i32 %index, !3270, !DIExpression(), !3269)
  %div = sdiv i32 %index, 16, !dbg !3271
    #dbg_value(i32 %div, !3272, !DIExpression(), !3269)
  %rem = srem i32 %index, 16, !dbg !3273
    #dbg_value(i32 %rem, !3274, !DIExpression(), !3269)
  %arrayidx = getelementptr inbounds i64, ptr %in, i32 %div, !dbg !3275
  %0 = load i64, ptr %arrayidx, align 8, !dbg !3275
  %mul = shl nsw i32 %rem, 2, !dbg !3276
  %sh_prom = zext nneg i32 %mul to i64, !dbg !3277
  %shr = lshr i64 %0, %sh_prom, !dbg !3277
  %1 = trunc i64 %shr to i8, !dbg !3278
  %conv = and i8 %1, 15, !dbg !3278
  ret i8 %conv, !dbg !3279
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @inverse_f(i8 noundef zeroext %a) unnamed_addr #0 !dbg !3280 {
entry:
    #dbg_value(i8 %a, !3283, !DIExpression(), !3284)
  %call = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %a, i8 noundef zeroext %a) #6, !dbg !3285
    #dbg_value(i8 %call, !3286, !DIExpression(), !3284)
  %call1 = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %call, i8 noundef zeroext %call) #6, !dbg !3287
    #dbg_value(i8 %call1, !3288, !DIExpression(), !3284)
  %call2 = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %call1, i8 noundef zeroext %call1) #6, !dbg !3289
    #dbg_value(i8 %call2, !3290, !DIExpression(), !3284)
  %call3 = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %call, i8 noundef zeroext %call1) #6, !dbg !3291
    #dbg_value(i8 %call3, !3292, !DIExpression(), !3284)
  %call4 = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %call2, i8 noundef zeroext %call3) #6, !dbg !3293
    #dbg_value(i8 %call4, !3294, !DIExpression(), !3284)
  ret i8 %call4, !dbg !3295
}

; Function Attrs: nounwind
define internal fastcc void @vec_mul_add_u64(i32 noundef %legs, ptr noundef %in, i8 noundef zeroext %a, ptr noundef %acc) unnamed_addr #0 !dbg !3296 {
entry:
    #dbg_value(i32 %legs, !3299, !DIExpression(), !3300)
    #dbg_value(ptr %in, !3301, !DIExpression(), !3300)
    #dbg_value(i8 %a, !3302, !DIExpression(), !3300)
    #dbg_value(ptr %acc, !3303, !DIExpression(), !3300)
  %call = call fastcc i32 @mul_table.22(i8 noundef zeroext %a) #6, !dbg !3304
    #dbg_value(i32 %call, !3305, !DIExpression(), !3300)
    #dbg_value(i64 1229782938247303441, !3306, !DIExpression(), !3300)
    #dbg_value(i32 0, !3307, !DIExpression(), !3309)
  %smax = call i32 @llvm.smax.i32(i32 %legs, i32 0), !dbg !3310
  br label %for.cond, !dbg !3310

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !3311
    #dbg_value(i32 %i.0, !3307, !DIExpression(), !3309)
  %exitcond = icmp ne i32 %i.0, %smax, !dbg !3312
  br i1 %exitcond, label %for.body, label %for.end, !dbg !3314

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !3315
  %0 = load i64, ptr %arrayidx, align 8, !dbg !3315
  %and = and i64 %0, 1229782938247303441, !dbg !3317
  %and1 = and i32 %call, 255, !dbg !3318
  %conv = zext nneg i32 %and1 to i64, !dbg !3319
  %mul = mul i64 %and, %conv, !dbg !3320
  %shr = lshr i64 %0, 1, !dbg !3321
  %and3 = and i64 %shr, 1229782938247303441, !dbg !3322
  %shr4 = lshr i32 %call, 8, !dbg !3323
  %and5 = and i32 %shr4, 15, !dbg !3324
  %conv6 = zext nneg i32 %and5 to i64, !dbg !3325
  %mul7 = mul nuw i64 %and3, %conv6, !dbg !3326
  %xor = xor i64 %mul, %mul7, !dbg !3327
  %arrayidx8 = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !3328
  %1 = load i64, ptr %arrayidx8, align 8, !dbg !3328
  %shr9 = lshr i64 %1, 2, !dbg !3329
  %and10 = and i64 %shr9, 1229782938247303441, !dbg !3330
  %shr11 = lshr i32 %call, 16, !dbg !3331
  %and12 = and i32 %shr11, 15, !dbg !3332
  %conv13 = zext nneg i32 %and12 to i64, !dbg !3333
  %mul14 = mul nuw i64 %and10, %conv13, !dbg !3334
  %xor15 = xor i64 %xor, %mul14, !dbg !3335
  %arrayidx16 = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !3336
  %2 = load i64, ptr %arrayidx16, align 8, !dbg !3336
  %shr17 = lshr i64 %2, 3, !dbg !3337
  %and18 = and i64 %shr17, 1229782938247303441, !dbg !3338
  %shr19 = lshr i32 %call, 24, !dbg !3339
  %and20 = and i32 %shr19, 15, !dbg !3340
  %conv21 = zext nneg i32 %and20 to i64, !dbg !3341
  %mul22 = mul nuw i64 %and18, %conv21, !dbg !3342
  %xor23 = xor i64 %xor15, %mul22, !dbg !3343
  %arrayidx24 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !3344
  %3 = load i64, ptr %arrayidx24, align 8, !dbg !3345
  %xor25 = xor i64 %3, %xor23, !dbg !3345
  store i64 %xor25, ptr %arrayidx24, align 8, !dbg !3345
  %inc = add nuw i32 %i.0, 1, !dbg !3346
    #dbg_value(i32 %inc, !3307, !DIExpression(), !3309)
  br label %for.cond, !dbg !3347, !llvm.loop !3348

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3350
}

; Function Attrs: nounwind
define internal fastcc void @ef_unpack_m_vec(i32 noundef %legs, ptr noundef %in, ptr noundef %out) unnamed_addr #0 !dbg !3351 {
entry:
    #dbg_value(i32 %legs, !3354, !DIExpression(), !3355)
    #dbg_value(ptr %in, !3356, !DIExpression(), !3355)
    #dbg_value(ptr %out, !3357, !DIExpression(), !3355)
    #dbg_value(ptr %in, !3358, !DIExpression(), !3355)
    #dbg_value(i32 0, !3359, !DIExpression(), !3361)
  br label %for.cond, !dbg !3362

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %add8, %for.body ], !dbg !3363
    #dbg_value(i32 %i.0, !3359, !DIExpression(), !3361)
  %mul = shl nsw i32 %legs, 4, !dbg !3364
  %cmp = icmp slt i32 %i.0, %mul, !dbg !3366
  br i1 %cmp, label %for.body, label %for.end, !dbg !3367

for.body:                                         ; preds = %for.cond
  %div = lshr exact i32 %i.0, 1, !dbg !3368
  %arrayidx = getelementptr inbounds nuw i8, ptr %in, i32 %div, !dbg !3370
  %0 = load i8, ptr %arrayidx, align 1, !dbg !3370
  %1 = and i8 %0, 15, !dbg !3371
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %out, i32 %i.0, !dbg !3372
  store i8 %1, ptr %arrayidx2, align 1, !dbg !3373
  %div3 = lshr exact i32 %i.0, 1, !dbg !3374
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %in, i32 %div3, !dbg !3375
  %2 = load i8, ptr %arrayidx4, align 1, !dbg !3375
  %3 = lshr i8 %2, 4, !dbg !3376
  %add = or disjoint i32 %i.0, 1, !dbg !3377
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %out, i32 %add, !dbg !3378
  store i8 %3, ptr %arrayidx7, align 1, !dbg !3379
  %add8 = add nuw nsw i32 %i.0, 2, !dbg !3380
    #dbg_value(i32 %add8, !3359, !DIExpression(), !3361)
  br label %for.cond, !dbg !3381, !llvm.loop !3382

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3384
}

; Function Attrs: nounwind
define internal fastcc i32 @mul_table.22(i8 noundef zeroext %b) unnamed_addr #0 !dbg !3385 {
entry:
    #dbg_value(i8 %b, !3386, !DIExpression(), !3387)
  %conv = zext i8 %b to i32, !dbg !3388
  %mul = mul i32 %conv, 134480385, !dbg !3389
    #dbg_value(i32 %mul, !3390, !DIExpression(), !3387)
    #dbg_value(i32 -252645136, !3391, !DIExpression(), !3387)
  %and = and i32 %mul, -252645136, !dbg !3392
    #dbg_value(i32 %and, !3393, !DIExpression(), !3387)
  %shr = lshr exact i32 %and, 4, !dbg !3394
  %shr1 = lshr exact i32 %and, 3, !dbg !3395
  %0 = xor i32 %shr, %shr1, !dbg !3396
  %xor2 = xor i32 %0, %mul, !dbg !3396
  ret i32 %xor2, !dbg !3397
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @mul_f.23(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !3398 {
entry:
    #dbg_value(i8 %a, !3399, !DIExpression(), !3400)
    #dbg_value(i8 %b, !3401, !DIExpression(), !3400)
  %0 = load volatile i8, ptr @pqmayo_MAYO_2_ref_unsigned_char_blocker, align 1, !dbg !3402
  %xor1 = xor i8 %a, %0, !dbg !3403
    #dbg_value(i8 %xor1, !3399, !DIExpression(), !3400)
  %1 = trunc i8 %xor1 to i1, !dbg !3404
    #dbg_value(i8 poison, !3405, !DIExpression(), !3400)
  %2 = and i8 %xor1, 2, !dbg !3406
  %mul9 = mul i8 %2, %b, !dbg !3407
  %conv10 = select i1 %1, i8 %b, i8 0, !dbg !3404
  %xor11 = xor i8 %conv10, %mul9, !dbg !3408
    #dbg_value(i8 %xor11, !3405, !DIExpression(), !3400)
  %3 = and i8 %xor1, 4, !dbg !3409
  %mul16 = mul i8 %3, %b, !dbg !3410
  %xor18 = xor i8 %mul16, %xor11, !dbg !3411
    #dbg_value(i8 %xor18, !3405, !DIExpression(), !3400)
  %4 = and i8 %xor1, 8, !dbg !3412
  %mul23 = mul i8 %4, %b, !dbg !3413
  %xor25 = xor i8 %mul23, %xor18, !dbg !3414
    #dbg_value(i8 %xor25, !3405, !DIExpression(), !3400)
    #dbg_value(i8 %xor25, !3415, !DIExpression(DW_OP_constu, 18446744073709551600, DW_OP_and, DW_OP_stack_value), !3400)
  %5 = lshr i8 %xor25, 4, !dbg !3416
  %6 = lshr i8 %xor25, 3, !dbg !3417
  %7 = and i8 %6, 14, !dbg !3417
  %8 = xor i8 %5, %7, !dbg !3418
  %xor25.masked = and i8 %xor25, 15, !dbg !3419
  %9 = xor i8 %8, %xor25.masked, !dbg !3419
    #dbg_value(i8 %9, !3420, !DIExpression(), !3400)
  ret i8 %9, !dbg !3421
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @lincomb.24(ptr noundef %a, ptr noundef %b, i32 noundef %n, i32 noundef %m) unnamed_addr #0 !dbg !3422 {
entry:
    #dbg_value(ptr %a, !3423, !DIExpression(), !3424)
    #dbg_value(ptr %b, !3425, !DIExpression(), !3424)
    #dbg_value(i32 %n, !3426, !DIExpression(), !3424)
    #dbg_value(i32 %m, !3427, !DIExpression(), !3424)
    #dbg_value(i8 0, !3428, !DIExpression(), !3424)
    #dbg_value(i32 0, !3429, !DIExpression(), !3431)
  %smax = call i32 @llvm.smax.i32(i32 %n, i32 0), !dbg !3432
  br label %for.cond, !dbg !3432

for.cond:                                         ; preds = %for.body, %entry
  %ret.0 = phi i8 [ 0, %entry ], [ %call1, %for.body ], !dbg !3424
  %b.addr.0 = phi ptr [ %b, %entry ], [ %add.ptr, %for.body ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !3433
    #dbg_value(i32 %i.0, !3429, !DIExpression(), !3431)
    #dbg_value(ptr %b.addr.0, !3425, !DIExpression(), !3424)
    #dbg_value(i8 %ret.0, !3428, !DIExpression(), !3424)
  %exitcond = icmp ne i32 %i.0, %smax, !dbg !3434
  br i1 %exitcond, label %for.body, label %for.end, !dbg !3436

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %a, i32 %i.0, !dbg !3437
  %0 = load i8, ptr %arrayidx, align 1, !dbg !3437
  %1 = load i8, ptr %b.addr.0, align 1, !dbg !3439
  %call = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %0, i8 noundef zeroext %1) #6, !dbg !3440
  %call1 = call fastcc zeroext i8 @add_f.25(i8 noundef zeroext %call, i8 noundef zeroext %ret.0) #6, !dbg !3441
    #dbg_value(i8 %call1, !3428, !DIExpression(), !3424)
  %inc = add nuw i32 %i.0, 1, !dbg !3442
    #dbg_value(i32 %inc, !3429, !DIExpression(), !3431)
  %add.ptr = getelementptr inbounds i8, ptr %b.addr.0, i32 %m, !dbg !3443
    #dbg_value(ptr %add.ptr, !3425, !DIExpression(), !3424)
  br label %for.cond, !dbg !3444, !llvm.loop !3445

for.end:                                          ; preds = %for.cond
  %ret.0.lcssa = phi i8 [ %ret.0, %for.cond ], !dbg !3424
  ret i8 %ret.0.lcssa, !dbg !3447
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @add_f.25(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !3448 {
entry:
    #dbg_value(i8 %a, !3449, !DIExpression(), !3450)
    #dbg_value(i8 %b, !3451, !DIExpression(), !3450)
  %xor1 = xor i8 %a, %b, !dbg !3452
  ret i8 %xor1, !dbg !3453
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

!llvm.dbg.cu = !{!105, !48, !84}
!llvm.ident = !{!108, !108, !108}
!llvm.module.flags = !{!109, !110, !111, !112}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 41, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "../example.c", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 17)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 41, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 7)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 43, type: !3, isLocal: true, isDefinition: true)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(scope: null, file: !2, line: 46, type: !16, isLocal: true, isDefinition: true)
!16 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !17)
!17 = !{!18}
!18 = !DISubrange(count: 6)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(scope: null, file: !2, line: 50, type: !21, isLocal: true, isDefinition: true)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !22)
!22 = !{!23}
!23 = !DISubrange(count: 4)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(scope: null, file: !2, line: 53, type: !26, isLocal: true, isDefinition: true)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !27)
!27 = !{!28}
!28 = !DISubrange(count: 19)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(scope: null, file: !2, line: 63, type: !26, isLocal: true, isDefinition: true)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(scope: null, file: !2, line: 73, type: !33, isLocal: true, isDefinition: true)
!33 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !34)
!34 = !{!35}
!35 = !DISubrange(count: 14)
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(scope: null, file: !2, line: 83, type: !38, isLocal: true, isDefinition: true)
!38 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !39)
!39 = !{!40}
!40 = !DISubrange(count: 39)
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(scope: null, file: !2, line: 94, type: !43, isLocal: true, isDefinition: true)
!43 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 328, elements: !44)
!44 = !{!45}
!45 = !DISubrange(count: 41)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(name: "f_tail", scope: !48, file: !79, line: 247, type: !80, isLocal: true, isDefinition: true)
!48 = distinct !DICompileUnit(language: DW_LANG_C11, file: !49, producer: "Ubuntu clang version 20.1.2 (0ubuntu1~24.04.2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !50, globals: !64, splitDebugInlining: false, nameTableKind: None)
!49 = !DIFile(filename: "../../../src/<stdin>", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!50 = !{!51, !52, !58, !61, !62}
!51 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 32)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !54, line: 60, baseType: !55)
!54 = !DIFile(filename: "/usr/lib/arm-none-eabi/include/sys/_stdint.h", directory: "")
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !56, line: 105, baseType: !57)
!56 = !DIFile(filename: "/usr/lib/arm-none-eabi/include/machine/_default_types.h", directory: "")
!57 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !59, line: 214, baseType: !60)
!59 = !DIFile(filename: "/usr/lib/gcc/arm-none-eabi/13.2.1/include/stddef.h", directory: "")
!60 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 32)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !54, line: 48, baseType: !63)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !56, line: 79, baseType: !60)
!64 = !{!46, !65, !73, !75, !77}
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(name: "even_nibbles", scope: !67, file: !68, line: 112, type: !72, isLocal: true, isDefinition: true)
!67 = distinct !DISubprogram(name: "transpose_16x16_nibbles", scope: !68, file: !68, line: 111, type: !69, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !71)
!68 = !DIFile(filename: "../../../src/mayo.c", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!69 = !DISubroutineType(types: !70)
!70 = !{null, !52}
!71 = !{}
!72 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !53)
!73 = !DIGlobalVariableExpression(var: !74, expr: !DIExpression())
!74 = distinct !DIGlobalVariable(name: "even_bytes", scope: !67, file: !68, line: 113, type: !72, isLocal: true, isDefinition: true)
!75 = !DIGlobalVariableExpression(var: !76, expr: !DIExpression())
!76 = distinct !DIGlobalVariable(name: "even_2bytes", scope: !67, file: !68, line: 114, type: !72, isLocal: true, isDefinition: true)
!77 = !DIGlobalVariableExpression(var: !78, expr: !DIExpression())
!78 = distinct !DIGlobalVariable(name: "even_half", scope: !67, file: !68, line: 115, type: !72, isLocal: true, isDefinition: true)
!79 = !DIFile(filename: "../../../include/mayo.h", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!80 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 32, elements: !22)
!81 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!82 = !DIGlobalVariableExpression(var: !83, expr: !DIExpression())
!83 = distinct !DIGlobalVariable(name: "pqmayo_MAYO_2_ref_uint32_t_blocker", scope: !84, file: !99, line: 126, type: !104, isLocal: false, isDefinition: true)
!84 = distinct !DICompileUnit(language: DW_LANG_C11, file: !49, producer: "Ubuntu clang version 20.1.2 (0ubuntu1~24.04.2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !85, globals: !96, splitDebugInlining: false, nameTableKind: None)
!85 = !{!53, !86, !87, !61, !62, !90, !91, !94}
!86 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !54, line: 56, baseType: !88)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !56, line: 103, baseType: !89)
!89 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 32)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !54, line: 20, baseType: !92)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !56, line: 41, baseType: !93)
!93 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !54, line: 44, baseType: !95)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !56, line: 77, baseType: !86)
!96 = !{!82, !97, !101}
!97 = !DIGlobalVariableExpression(var: !98, expr: !DIExpression())
!98 = distinct !DIGlobalVariable(name: "pqmayo_MAYO_2_ref_uint64_t_blocker", scope: !84, file: !99, line: 127, type: !100, isLocal: false, isDefinition: true)
!99 = !DIFile(filename: "../../../src/arithmetic.c", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!100 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !53)
!101 = !DIGlobalVariableExpression(var: !102, expr: !DIExpression())
!102 = distinct !DIGlobalVariable(name: "pqmayo_MAYO_2_ref_unsigned_char_blocker", scope: !84, file: !99, line: 128, type: !103, isLocal: false, isDefinition: true)
!103 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !51)
!104 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !62)
!105 = distinct !DICompileUnit(language: DW_LANG_C11, file: !106, producer: "Ubuntu clang version 20.1.2 (0ubuntu1~24.04.2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !107, splitDebugInlining: false, nameTableKind: None)
!106 = !DIFile(filename: "../<stdin>", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!107 = !{!0, !7, !12, !14, !19, !24, !29, !31, !36, !41}
!108 = !{!"Ubuntu clang version 20.1.2 (0ubuntu1~24.04.2)"}
!109 = !{i32 2, !"Debug Info Version", i32 3}
!110 = !{i32 1, !"wchar_size", i32 4}
!111 = !{i32 1, !"min_enum_size", i32 4}
!112 = !{i32 1, !"Code Model", i32 1}
!113 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 138, type: !114, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105)
!114 = !DISubroutineType(types: !115)
!115 = !{!86}
!116 = !DILocation(line: 148, column: 12, scope: !113)
!117 = !DILocation(line: 148, column: 5, scope: !113)
!118 = distinct !DISubprogram(name: "example_mayo", scope: !2, file: !2, line: 25, type: !119, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !105, retainedNodes: !71)
!119 = !DISubroutineType(types: !120)
!120 = !{!86, !121}
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 32)
!122 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !123)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "mayo_params_t", file: !79, line: 289, baseType: !124)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !79, line: 265, size: 736, elements: !125)
!125 = !{!126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !124, file: !79, line: 266, baseType: !86, size: 32)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !124, file: !79, line: 267, baseType: !86, size: 32, offset: 32)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "o", scope: !124, file: !79, line: 268, baseType: !86, size: 32, offset: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !124, file: !79, line: 269, baseType: !86, size: 32, offset: 96)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !124, file: !79, line: 270, baseType: !86, size: 32, offset: 128)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "f_tail", scope: !124, file: !79, line: 271, baseType: !90, size: 32, offset: 160)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "m_bytes", scope: !124, file: !79, line: 272, baseType: !86, size: 32, offset: 192)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "O_bytes", scope: !124, file: !79, line: 273, baseType: !86, size: 32, offset: 224)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "v_bytes", scope: !124, file: !79, line: 274, baseType: !86, size: 32, offset: 256)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "r_bytes", scope: !124, file: !79, line: 275, baseType: !86, size: 32, offset: 288)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "R_bytes", scope: !124, file: !79, line: 276, baseType: !86, size: 32, offset: 320)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "P1_bytes", scope: !124, file: !79, line: 277, baseType: !86, size: 32, offset: 352)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "P2_bytes", scope: !124, file: !79, line: 278, baseType: !86, size: 32, offset: 384)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "P3_bytes", scope: !124, file: !79, line: 279, baseType: !86, size: 32, offset: 416)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "csk_bytes", scope: !124, file: !79, line: 280, baseType: !86, size: 32, offset: 448)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "cpk_bytes", scope: !124, file: !79, line: 281, baseType: !86, size: 32, offset: 480)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "sig_bytes", scope: !124, file: !79, line: 282, baseType: !86, size: 32, offset: 512)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "salt_bytes", scope: !124, file: !79, line: 283, baseType: !86, size: 32, offset: 544)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "sk_seed_bytes", scope: !124, file: !79, line: 284, baseType: !86, size: 32, offset: 576)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "digest_bytes", scope: !124, file: !79, line: 285, baseType: !86, size: 32, offset: 608)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "pk_seed_bytes", scope: !124, file: !79, line: 286, baseType: !86, size: 32, offset: 640)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "m_vec_limbs", scope: !124, file: !79, line: 287, baseType: !86, size: 32, offset: 672)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !124, file: !79, line: 288, baseType: !149, size: 32, offset: 704)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 32)
!150 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!151 = !DILocalVariable(name: "p", arg: 1, scope: !118, file: !2, line: 25, type: !121)
!152 = !DILocation(line: 0, scope: !118)
!153 = !DILocalVariable(name: "msglen", scope: !118, file: !2, line: 27, type: !58)
!154 = !DILocation(line: 27, column: 12, scope: !118)
!155 = !DILocalVariable(name: "smlen", scope: !118, file: !2, line: 28, type: !58)
!156 = !DILocation(line: 28, column: 12, scope: !118)
!157 = !DILocation(line: 30, column: 26, scope: !118)
!158 = !DILocalVariable(name: "pk", scope: !118, file: !2, line: 30, type: !61)
!159 = !DILocation(line: 31, column: 26, scope: !118)
!160 = !DILocalVariable(name: "sk", scope: !118, file: !2, line: 31, type: !61)
!161 = !DILocation(line: 33, column: 21, scope: !118)
!162 = !DILocalVariable(name: "epk", scope: !118, file: !2, line: 33, type: !52)
!163 = !DILocation(line: 34, column: 17, scope: !118)
!164 = !DILocalVariable(name: "esk", scope: !118, file: !2, line: 34, type: !165)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 32)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "sk_t", file: !79, line: 294, baseType: !167)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sk_t", file: !79, line: 291, size: 819712, elements: !168)
!168 = !{!169, !173}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !167, file: !79, line: 292, baseType: !170, size: 811008)
!170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 811008, elements: !171)
!171 = !{!172}
!172 = !DISubrange(count: 12672)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "O", scope: !167, file: !79, line: 293, baseType: !174, size: 8704, offset: 811008)
!174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !175, size: 8704, elements: !177)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !54, line: 24, baseType: !176)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !56, line: 43, baseType: !51)
!177 = !{!178}
!178 = !DISubrange(count: 1088)
!179 = !DILocation(line: 36, column: 54, scope: !118)
!180 = !DILocation(line: 36, column: 52, scope: !118)
!181 = !DILocation(line: 36, column: 26, scope: !118)
!182 = !DILocalVariable(name: "sig", scope: !118, file: !2, line: 36, type: !61)
!183 = !DILocalVariable(name: "msg", scope: !118, file: !2, line: 38, type: !184)
!184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 256, elements: !185)
!185 = !{!186}
!186 = !DISubrange(count: 32)
!187 = !DILocation(line: 38, column: 19, scope: !118)
!188 = !DILocalVariable(name: "msg2", scope: !118, file: !2, line: 39, type: !184)
!189 = !DILocation(line: 39, column: 19, scope: !118)
!190 = !DILocation(line: 41, column: 5, scope: !118)
!191 = !DILocation(line: 43, column: 5, scope: !118)
!192 = !DILocation(line: 44, column: 15, scope: !118)
!193 = !DILocalVariable(name: "res", scope: !118, file: !2, line: 44, type: !86)
!194 = !DILocation(line: 45, column: 13, scope: !195)
!195 = distinct !DILexicalBlock(scope: !118, file: !2, line: 45, column: 9)
!196 = !DILocation(line: 46, column: 9, scope: !197)
!197 = distinct !DILexicalBlock(scope: !195, file: !2, line: 45, column: 25)
!198 = !DILocation(line: 48, column: 9, scope: !197)
!199 = !DILocation(line: 50, column: 9, scope: !200)
!200 = distinct !DILexicalBlock(scope: !195, file: !2, line: 49, column: 12)
!201 = !DILocation(line: 53, column: 5, scope: !118)
!202 = !DILocation(line: 54, column: 11, scope: !118)
!203 = !DILocation(line: 55, column: 13, scope: !204)
!204 = distinct !DILexicalBlock(scope: !118, file: !2, line: 55, column: 9)
!205 = !DILocation(line: 56, column: 9, scope: !206)
!206 = distinct !DILexicalBlock(scope: !204, file: !2, line: 55, column: 25)
!207 = !DILocation(line: 58, column: 9, scope: !206)
!208 = !DILocation(line: 60, column: 9, scope: !209)
!209 = distinct !DILexicalBlock(scope: !204, file: !2, line: 59, column: 12)
!210 = !DILocation(line: 63, column: 5, scope: !118)
!211 = !DILocation(line: 64, column: 11, scope: !118)
!212 = !DILocation(line: 65, column: 13, scope: !213)
!213 = distinct !DILexicalBlock(scope: !118, file: !2, line: 65, column: 9)
!214 = !DILocation(line: 66, column: 9, scope: !215)
!215 = distinct !DILexicalBlock(scope: !213, file: !2, line: 65, column: 25)
!216 = !DILocation(line: 68, column: 9, scope: !215)
!217 = !DILocation(line: 70, column: 9, scope: !218)
!218 = distinct !DILexicalBlock(scope: !213, file: !2, line: 69, column: 12)
!219 = !DILocation(line: 73, column: 5, scope: !118)
!220 = !DILocation(line: 74, column: 42, scope: !118)
!221 = !DILocation(line: 74, column: 11, scope: !118)
!222 = !DILocation(line: 75, column: 13, scope: !223)
!223 = distinct !DILexicalBlock(scope: !118, file: !2, line: 75, column: 9)
!224 = !DILocation(line: 76, column: 9, scope: !225)
!225 = distinct !DILexicalBlock(scope: !223, file: !2, line: 75, column: 25)
!226 = !DILocation(line: 78, column: 9, scope: !225)
!227 = !DILocation(line: 80, column: 9, scope: !228)
!228 = distinct !DILexicalBlock(scope: !223, file: !2, line: 79, column: 12)
!229 = !DILocation(line: 83, column: 5, scope: !118)
!230 = !DILocation(line: 84, column: 44, scope: !118)
!231 = !DILocation(line: 84, column: 11, scope: !118)
!232 = !DILocation(line: 85, column: 13, scope: !233)
!233 = distinct !DILexicalBlock(scope: !118, file: !2, line: 85, column: 9)
!234 = !DILocation(line: 85, column: 24, scope: !233)
!235 = !DILocation(line: 85, column: 45, scope: !233)
!236 = !DILocation(line: 85, column: 27, scope: !233)
!237 = !DILocation(line: 86, column: 9, scope: !238)
!238 = distinct !DILexicalBlock(scope: !233, file: !2, line: 85, column: 54)
!239 = !DILocation(line: 88, column: 9, scope: !238)
!240 = !DILocation(line: 91, column: 9, scope: !241)
!241 = distinct !DILexicalBlock(scope: !233, file: !2, line: 89, column: 12)
!242 = !DILocation(line: 94, column: 5, scope: !118)
!243 = !DILocation(line: 95, column: 31, scope: !118)
!244 = !DILocation(line: 95, column: 11, scope: !118)
!245 = !DILocation(line: 96, column: 13, scope: !246)
!246 = distinct !DILexicalBlock(scope: !118, file: !2, line: 96, column: 9)
!247 = !DILocation(line: 97, column: 9, scope: !248)
!248 = distinct !DILexicalBlock(scope: !246, file: !2, line: 96, column: 25)
!249 = !DILocation(line: 99, column: 9, scope: !248)
!250 = !DILocation(line: 102, column: 9, scope: !251)
!251 = distinct !DILexicalBlock(scope: !246, file: !2, line: 100, column: 12)
!252 = !DILocation(line: 96, column: 16, scope: !246)
!253 = !DILabel(scope: !118, name: "err", file: !2, line: 129)
!254 = !DILocation(line: 129, column: 1, scope: !118)
!255 = !DILocation(line: 130, column: 5, scope: !118)
!256 = !DILocation(line: 131, column: 5, scope: !118)
!257 = !DILocation(line: 132, column: 5, scope: !118)
!258 = !DILocation(line: 133, column: 5, scope: !118)
!259 = !DILocation(line: 134, column: 5, scope: !118)
!260 = !DILocation(line: 135, column: 5, scope: !118)
!261 = distinct !DISubprogram(name: "pqmayo_MAYO_2_ref_mayo_keypair", scope: !68, file: !68, line: 298, type: !262, scopeLine: 298, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !71)
!262 = !DISubroutineType(types: !263)
!263 = !{!86, !264, !61, !61}
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 32)
!265 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !266)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "mayo_params_t", file: !79, line: 289, baseType: !267)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !79, line: 265, size: 736, elements: !268)
!268 = !{!269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !267, file: !79, line: 266, baseType: !86, size: 32)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !267, file: !79, line: 267, baseType: !86, size: 32, offset: 32)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "o", scope: !267, file: !79, line: 268, baseType: !86, size: 32, offset: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !267, file: !79, line: 269, baseType: !86, size: 32, offset: 96)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !267, file: !79, line: 270, baseType: !86, size: 32, offset: 128)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "f_tail", scope: !267, file: !79, line: 271, baseType: !90, size: 32, offset: 160)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "m_bytes", scope: !267, file: !79, line: 272, baseType: !86, size: 32, offset: 192)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "O_bytes", scope: !267, file: !79, line: 273, baseType: !86, size: 32, offset: 224)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "v_bytes", scope: !267, file: !79, line: 274, baseType: !86, size: 32, offset: 256)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "r_bytes", scope: !267, file: !79, line: 275, baseType: !86, size: 32, offset: 288)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "R_bytes", scope: !267, file: !79, line: 276, baseType: !86, size: 32, offset: 320)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "P1_bytes", scope: !267, file: !79, line: 277, baseType: !86, size: 32, offset: 352)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "P2_bytes", scope: !267, file: !79, line: 278, baseType: !86, size: 32, offset: 384)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "P3_bytes", scope: !267, file: !79, line: 279, baseType: !86, size: 32, offset: 416)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "csk_bytes", scope: !267, file: !79, line: 280, baseType: !86, size: 32, offset: 448)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "cpk_bytes", scope: !267, file: !79, line: 281, baseType: !86, size: 32, offset: 480)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "sig_bytes", scope: !267, file: !79, line: 282, baseType: !86, size: 32, offset: 512)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "salt_bytes", scope: !267, file: !79, line: 283, baseType: !86, size: 32, offset: 544)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "sk_seed_bytes", scope: !267, file: !79, line: 284, baseType: !86, size: 32, offset: 576)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "digest_bytes", scope: !267, file: !79, line: 285, baseType: !86, size: 32, offset: 608)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "pk_seed_bytes", scope: !267, file: !79, line: 286, baseType: !86, size: 32, offset: 640)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "m_vec_limbs", scope: !267, file: !79, line: 287, baseType: !86, size: 32, offset: 672)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !267, file: !79, line: 288, baseType: !149, size: 32, offset: 704)
!292 = !DILocalVariable(name: "p", arg: 1, scope: !261, file: !68, line: 298, type: !264)
!293 = !DILocation(line: 0, scope: !261)
!294 = !DILocalVariable(name: "pk", arg: 2, scope: !261, file: !68, line: 298, type: !61)
!295 = !DILocalVariable(name: "sk", arg: 3, scope: !261, file: !68, line: 298, type: !61)
!296 = !DILocalVariable(name: "ret", scope: !261, file: !68, line: 299, type: !86)
!297 = !DILocation(line: 301, column: 11, scope: !261)
!298 = !DILabel(scope: !261, name: "err", file: !68, line: 306)
!299 = !DILocation(line: 306, column: 1, scope: !261)
!300 = !DILocation(line: 307, column: 5, scope: !261)
!301 = distinct !DISubprogram(name: "pqmayo_MAYO_2_ref_mayo_keypair_compact", scope: !68, file: !68, line: 538, type: !262, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !71)
!302 = !DILocalVariable(name: "p", arg: 1, scope: !301, file: !68, line: 538, type: !264)
!303 = !DILocation(line: 0, scope: !301)
!304 = !DILocalVariable(name: "cpk", arg: 2, scope: !301, file: !68, line: 538, type: !61)
!305 = !DILocalVariable(name: "csk", arg: 3, scope: !301, file: !68, line: 539, type: !61)
!306 = !DILocalVariable(name: "ret", scope: !301, file: !68, line: 540, type: !86)
!307 = !DILocalVariable(name: "seed_sk", scope: !301, file: !68, line: 541, type: !61)
!308 = !DILocalVariable(name: "S", scope: !301, file: !68, line: 542, type: !309)
!309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 4480, elements: !310)
!310 = !{!311}
!311 = !DISubrange(count: 560)
!312 = !DILocation(line: 542, column: 19, scope: !301)
!313 = !DILocalVariable(name: "P", scope: !301, file: !68, line: 543, type: !170)
!314 = !DILocation(line: 543, column: 14, scope: !301)
!315 = !DILocalVariable(name: "P3", scope: !301, file: !68, line: 544, type: !316)
!316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 73984, elements: !317)
!317 = !{!318}
!318 = !DISubrange(count: 1156)
!319 = !DILocation(line: 544, column: 14, scope: !301)
!320 = !DILocalVariable(name: "O", scope: !301, file: !68, line: 547, type: !321)
!321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 8704, elements: !177)
!322 = !DILocation(line: 547, column: 19, scope: !301)
!323 = !DILocalVariable(name: "m_vec_limbs", scope: !301, file: !68, line: 549, type: !324)
!324 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !86)
!325 = !DILocalVariable(name: "param_m", scope: !301, file: !68, line: 550, type: !324)
!326 = !DILocalVariable(name: "param_v", scope: !301, file: !68, line: 551, type: !324)
!327 = !DILocalVariable(name: "param_o", scope: !301, file: !68, line: 552, type: !324)
!328 = !DILocalVariable(name: "param_O_bytes", scope: !301, file: !68, line: 553, type: !324)
!329 = !DILocalVariable(name: "param_P1_limbs", scope: !301, file: !68, line: 554, type: !324)
!330 = !DILocalVariable(name: "param_P3_limbs", scope: !301, file: !68, line: 555, type: !324)
!331 = !DILocalVariable(name: "param_pk_seed_bytes", scope: !301, file: !68, line: 556, type: !324)
!332 = !DILocalVariable(name: "param_sk_seed_bytes", scope: !301, file: !68, line: 557, type: !324)
!333 = !DILocalVariable(name: "P1", scope: !301, file: !68, line: 559, type: !52)
!334 = !DILocation(line: 560, column: 22, scope: !301)
!335 = !DILocalVariable(name: "P2", scope: !301, file: !68, line: 560, type: !52)
!336 = !DILocation(line: 566, column: 9, scope: !337)
!337 = distinct !DILexicalBlock(scope: !301, file: !68, line: 566, column: 9)
!338 = !DILocation(line: 566, column: 51, scope: !337)
!339 = !DILocation(line: 573, column: 5, scope: !301)
!340 = !DILocalVariable(name: "seed_pk", scope: !301, file: !68, line: 546, type: !61)
!341 = !DILocation(line: 579, column: 14, scope: !301)
!342 = !DILocation(line: 579, column: 5, scope: !301)
!343 = !DILocation(line: 585, column: 5, scope: !301)
!344 = !DILocation(line: 588, column: 5, scope: !301)
!345 = !DILocation(line: 591, column: 5, scope: !301)
!346 = !DILocalVariable(name: "P3_upper", scope: !301, file: !68, line: 593, type: !347)
!347 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 39168, elements: !348)
!348 = !{!349}
!349 = !DISubrange(count: 612)
!350 = !DILocation(line: 593, column: 14, scope: !301)
!351 = !DILocation(line: 596, column: 5, scope: !301)
!352 = !DILocation(line: 597, column: 31, scope: !301)
!353 = !DILocation(line: 597, column: 5, scope: !301)
!354 = !DILabel(scope: !301, name: "err", file: !68, line: 600)
!355 = !DILocation(line: 600, column: 5, scope: !301)
!356 = !DILocation(line: 602, column: 5, scope: !301)
!357 = !DILocation(line: 603, column: 5, scope: !301)
!358 = !DILocation(line: 604, column: 5, scope: !301)
!359 = !DILocation(line: 605, column: 5, scope: !301)
!360 = distinct !DISubprogram(name: "decode", scope: !68, file: !68, line: 20, type: !361, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !71)
!361 = !DISubroutineType(types: !362)
!362 = !{null, !90, !61, !86}
!363 = !DILocalVariable(name: "m", arg: 1, scope: !360, file: !68, line: 20, type: !90)
!364 = !DILocation(line: 0, scope: !360)
!365 = !DILocalVariable(name: "mdec", arg: 2, scope: !360, file: !68, line: 20, type: !61)
!366 = !DILocalVariable(name: "mdeclen", arg: 3, scope: !360, file: !68, line: 20, type: !86)
!367 = !DILocalVariable(name: "i", scope: !360, file: !68, line: 21, type: !86)
!368 = !DILocation(line: 22, column: 10, scope: !369)
!369 = distinct !DILexicalBlock(scope: !360, file: !68, line: 22, column: 5)
!370 = !DILocation(line: 22, scope: !369)
!371 = !DILocation(line: 22, column: 29, scope: !372)
!372 = distinct !DILexicalBlock(scope: !369, file: !68, line: 22, column: 5)
!373 = !DILocation(line: 22, column: 19, scope: !372)
!374 = !DILocation(line: 22, column: 5, scope: !369)
!375 = !DILocation(line: 23, column: 19, scope: !376)
!376 = distinct !DILexicalBlock(scope: !372, file: !68, line: 22, column: 39)
!377 = !DILocation(line: 23, column: 24, scope: !376)
!378 = !DILocation(line: 23, column: 14, scope: !376)
!379 = !DILocation(line: 23, column: 17, scope: !376)
!380 = !DILocation(line: 24, column: 19, scope: !376)
!381 = !DILocation(line: 24, column: 24, scope: !376)
!382 = !DILocation(line: 24, column: 17, scope: !376)
!383 = !DILocation(line: 24, column: 14, scope: !376)
!384 = !DILocation(line: 22, column: 34, scope: !372)
!385 = !DILocation(line: 22, column: 5, scope: !372)
!386 = distinct !{!386, !374, !387, !388}
!387 = !DILocation(line: 25, column: 5, scope: !369)
!388 = !{!"llvm.loop.mustprogress"}
!389 = !DILocation(line: 27, column: 21, scope: !390)
!390 = distinct !DILexicalBlock(scope: !360, file: !68, line: 27, column: 9)
!391 = !DILocation(line: 28, column: 19, scope: !392)
!392 = distinct !DILexicalBlock(scope: !390, file: !68, line: 27, column: 27)
!393 = !DILocation(line: 28, column: 24, scope: !392)
!394 = !DILocation(line: 28, column: 17, scope: !392)
!395 = !DILocation(line: 29, column: 5, scope: !392)
!396 = !DILocation(line: 30, column: 1, scope: !360)
!397 = distinct !DISubprogram(name: "expand_P1_P2", scope: !68, file: !68, line: 280, type: !398, scopeLine: 280, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !71)
!398 = !DISubroutineType(types: !399)
!399 = !{null, !264, !52, !90}
!400 = !DILocalVariable(name: "p", arg: 1, scope: !397, file: !68, line: 280, type: !264)
!401 = !DILocation(line: 0, scope: !397)
!402 = !DILocalVariable(name: "P", arg: 2, scope: !397, file: !68, line: 280, type: !52)
!403 = !DILocalVariable(name: "seed_pk", arg: 3, scope: !397, file: !68, line: 280, type: !90)
!404 = !DILocation(line: 284, column: 5, scope: !397)
!405 = !DILocation(line: 285, column: 5, scope: !397)
!406 = !DILocation(line: 286, column: 1, scope: !397)
!407 = distinct !DISubprogram(name: "compute_P3", scope: !408, file: !408, line: 260, type: !409, scopeLine: 260, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !71)
!408 = !DIFile(filename: "../../../src/generic/generic_arithmetic.h", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!409 = !DISubroutineType(types: !410)
!410 = !{null, !264, !411, !52, !90, !52}
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 32)
!412 = !DILocalVariable(name: "p", arg: 1, scope: !407, file: !408, line: 260, type: !264)
!413 = !DILocation(line: 0, scope: !407)
!414 = !DILocalVariable(name: "P1", arg: 2, scope: !407, file: !408, line: 260, type: !411)
!415 = !DILocalVariable(name: "P2", arg: 3, scope: !407, file: !408, line: 260, type: !52)
!416 = !DILocalVariable(name: "O", arg: 4, scope: !407, file: !408, line: 260, type: !90)
!417 = !DILocalVariable(name: "P3", arg: 5, scope: !407, file: !408, line: 260, type: !52)
!418 = !DILocalVariable(name: "m_vec_limbs", scope: !407, file: !408, line: 262, type: !324)
!419 = !DILocalVariable(name: "param_v", scope: !407, file: !408, line: 263, type: !324)
!420 = !DILocalVariable(name: "param_o", scope: !407, file: !408, line: 264, type: !324)
!421 = !DILocation(line: 267, column: 5, scope: !407)
!422 = !DILocation(line: 270, column: 5, scope: !407)
!423 = !DILocation(line: 271, column: 1, scope: !407)
!424 = distinct !DISubprogram(name: "pack_m_vecs", scope: !68, file: !68, line: 272, type: !425, scopeLine: 272, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !71)
!425 = !DISubroutineType(types: !426)
!426 = !{null, !411, !61, !86, !86}
!427 = !DILocalVariable(name: "in", arg: 1, scope: !424, file: !68, line: 272, type: !411)
!428 = !DILocation(line: 0, scope: !424)
!429 = !DILocalVariable(name: "out", arg: 2, scope: !424, file: !68, line: 272, type: !61)
!430 = !DILocalVariable(name: "vecs", arg: 3, scope: !424, file: !68, line: 272, type: !86)
!431 = !DILocalVariable(name: "m", arg: 4, scope: !424, file: !68, line: 272, type: !86)
!432 = !DILocation(line: 273, column: 32, scope: !424)
!433 = !DILocation(line: 273, column: 38, scope: !424)
!434 = !DILocalVariable(name: "m_vec_limbs", scope: !424, file: !68, line: 273, type: !324)
!435 = !DILocalVariable(name: "_in", scope: !424, file: !68, line: 274, type: !61)
!436 = !DILocalVariable(name: "i", scope: !437, file: !68, line: 275, type: !86)
!437 = distinct !DILexicalBlock(scope: !424, file: !68, line: 275, column: 5)
!438 = !DILocation(line: 0, scope: !437)
!439 = !DILocation(line: 275, column: 10, scope: !437)
!440 = !DILocation(line: 275, scope: !437)
!441 = !DILocation(line: 275, column: 23, scope: !442)
!442 = distinct !DILexicalBlock(scope: !437, file: !68, line: 275, column: 5)
!443 = !DILocation(line: 275, column: 5, scope: !437)
!444 = !DILocation(line: 277, column: 25, scope: !445)
!445 = distinct !DILexicalBlock(scope: !442, file: !68, line: 276, column: 5)
!446 = !DILocation(line: 277, column: 27, scope: !445)
!447 = !DILocation(line: 277, column: 21, scope: !445)
!448 = !DILocation(line: 277, column: 39, scope: !445)
!449 = !DILocation(line: 277, column: 51, scope: !445)
!450 = !DILocation(line: 277, column: 36, scope: !445)
!451 = !DILocation(line: 277, column: 71, scope: !445)
!452 = !DILocation(line: 277, column: 9, scope: !445)
!453 = !DILocation(line: 275, column: 32, scope: !442)
!454 = !DILocation(line: 275, column: 5, scope: !442)
!455 = distinct !{!455, !443, !456, !388}
!456 = !DILocation(line: 278, column: 5, scope: !437)
!457 = !DILocation(line: 279, column: 1, scope: !424)
!458 = distinct !DISubprogram(name: "P1_times_O", scope: !408, file: !408, line: 74, type: !459, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !71)
!459 = !DISubroutineType(types: !460)
!460 = !{null, !264, !411, !90, !52}
!461 = !DILocalVariable(name: "p", arg: 1, scope: !458, file: !408, line: 74, type: !264)
!462 = !DILocation(line: 0, scope: !458)
!463 = !DILocalVariable(name: "P1", arg: 2, scope: !458, file: !408, line: 74, type: !411)
!464 = !DILocalVariable(name: "O", arg: 3, scope: !458, file: !408, line: 74, type: !90)
!465 = !DILocalVariable(name: "acc", arg: 4, scope: !458, file: !408, line: 74, type: !52)
!466 = !DILocation(line: 78, column: 5, scope: !458)
!467 = !DILocation(line: 79, column: 1, scope: !458)
!468 = distinct !DISubprogram(name: "mul_add_mat_trans_x_m_mat", scope: !408, file: !408, line: 47, type: !469, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !71)
!469 = !DISubroutineType(types: !470)
!470 = !{null, !324, !90, !411, !52, !324, !324, !324}
!471 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !468, file: !408, line: 47, type: !324)
!472 = !DILocation(line: 0, scope: !468)
!473 = !DILocalVariable(name: "mat", arg: 2, scope: !468, file: !408, line: 47, type: !90)
!474 = !DILocalVariable(name: "bs_mat", arg: 3, scope: !468, file: !408, line: 47, type: !411)
!475 = !DILocalVariable(name: "acc", arg: 4, scope: !468, file: !408, line: 47, type: !52)
!476 = !DILocalVariable(name: "mat_rows", arg: 5, scope: !468, file: !408, line: 48, type: !324)
!477 = !DILocalVariable(name: "mat_cols", arg: 6, scope: !468, file: !408, line: 48, type: !324)
!478 = !DILocalVariable(name: "bs_mat_cols", arg: 7, scope: !468, file: !408, line: 48, type: !324)
!479 = !DILocalVariable(name: "r", scope: !480, file: !408, line: 50, type: !86)
!480 = distinct !DILexicalBlock(scope: !468, file: !408, line: 50, column: 5)
!481 = !DILocation(line: 0, scope: !480)
!482 = !DILocation(line: 50, column: 10, scope: !480)
!483 = !DILocation(line: 50, scope: !480)
!484 = !DILocation(line: 50, column: 23, scope: !485)
!485 = distinct !DILexicalBlock(scope: !480, file: !408, line: 50, column: 5)
!486 = !DILocation(line: 50, column: 5, scope: !480)
!487 = !DILocation(line: 51, column: 9, scope: !488)
!488 = distinct !DILexicalBlock(scope: !489, file: !408, line: 51, column: 9)
!489 = distinct !DILexicalBlock(scope: !485, file: !408, line: 50, column: 40)
!490 = !DILocation(line: 51, scope: !488)
!491 = !DILocalVariable(name: "c", scope: !488, file: !408, line: 51, type: !86)
!492 = !DILocation(line: 0, scope: !488)
!493 = !DILocation(line: 51, column: 27, scope: !494)
!494 = distinct !DILexicalBlock(scope: !488, file: !408, line: 51, column: 9)
!495 = !DILocation(line: 52, column: 13, scope: !496)
!496 = distinct !DILexicalBlock(scope: !497, file: !408, line: 52, column: 13)
!497 = distinct !DILexicalBlock(scope: !494, file: !408, line: 51, column: 44)
!498 = !DILocation(line: 52, scope: !496)
!499 = !DILocalVariable(name: "k", scope: !496, file: !408, line: 52, type: !86)
!500 = !DILocation(line: 0, scope: !496)
!501 = !DILocation(line: 52, column: 31, scope: !502)
!502 = distinct !DILexicalBlock(scope: !496, file: !408, line: 52, column: 13)
!503 = !DILocation(line: 53, column: 70, scope: !504)
!504 = distinct !DILexicalBlock(scope: !502, file: !408, line: 52, column: 54)
!505 = !DILocation(line: 53, column: 84, scope: !504)
!506 = !DILocation(line: 53, column: 65, scope: !504)
!507 = !DILocation(line: 53, column: 51, scope: !504)
!508 = !DILocation(line: 53, column: 96, scope: !504)
!509 = !DILocation(line: 53, column: 90, scope: !504)
!510 = !DILocation(line: 53, column: 136, scope: !504)
!511 = !DILocation(line: 53, column: 150, scope: !504)
!512 = !DILocation(line: 53, column: 131, scope: !504)
!513 = !DILocation(line: 53, column: 117, scope: !504)
!514 = !DILocation(line: 53, column: 17, scope: !504)
!515 = !DILocation(line: 52, column: 48, scope: !502)
!516 = !DILocation(line: 52, column: 13, scope: !502)
!517 = distinct !{!517, !495, !518, !388}
!518 = !DILocation(line: 54, column: 13, scope: !496)
!519 = !DILocation(line: 51, column: 40, scope: !494)
!520 = !DILocation(line: 51, column: 9, scope: !494)
!521 = distinct !{!521, !487, !522, !388}
!522 = !DILocation(line: 55, column: 9, scope: !488)
!523 = !DILocation(line: 50, column: 36, scope: !485)
!524 = !DILocation(line: 50, column: 5, scope: !485)
!525 = distinct !{!525, !486, !526, !388}
!526 = !DILocation(line: 56, column: 5, scope: !480)
!527 = !DILocation(line: 57, column: 1, scope: !468)
!528 = distinct !DISubprogram(name: "m_vec_mul_add", scope: !529, file: !529, line: 31, type: !530, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !71)
!529 = !DIFile(filename: "../../../src/generic/arithmetic_fixed.h", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!530 = !DISubroutineType(types: !531)
!531 = !{null, !86, !411, !51, !52}
!532 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !528, file: !529, line: 31, type: !86)
!533 = !DILocation(line: 0, scope: !528)
!534 = !DILocalVariable(name: "in", arg: 2, scope: !528, file: !529, line: 31, type: !411)
!535 = !DILocalVariable(name: "a", arg: 3, scope: !528, file: !529, line: 31, type: !51)
!536 = !DILocalVariable(name: "acc", arg: 4, scope: !528, file: !529, line: 31, type: !52)
!537 = !DILocation(line: 33, column: 20, scope: !528)
!538 = !DILocalVariable(name: "tab", scope: !528, file: !529, line: 33, type: !62)
!539 = !DILocalVariable(name: "lsb_ask", scope: !528, file: !529, line: 35, type: !53)
!540 = !DILocalVariable(name: "i", scope: !541, file: !529, line: 37, type: !86)
!541 = distinct !DILexicalBlock(scope: !528, file: !529, line: 37, column: 5)
!542 = !DILocation(line: 0, scope: !541)
!543 = !DILocation(line: 37, column: 9, scope: !541)
!544 = !DILocation(line: 37, scope: !541)
!545 = !DILocation(line: 37, column: 20, scope: !546)
!546 = distinct !DILexicalBlock(scope: !541, file: !529, line: 37, column: 5)
!547 = !DILocation(line: 37, column: 5, scope: !541)
!548 = !DILocation(line: 38, column: 21, scope: !549)
!549 = distinct !DILexicalBlock(scope: !546, file: !529, line: 37, column: 43)
!550 = !DILocation(line: 38, column: 33, scope: !549)
!551 = !DILocation(line: 38, column: 51, scope: !549)
!552 = !DILocation(line: 38, column: 46, scope: !549)
!553 = !DILocation(line: 38, column: 44, scope: !549)
!554 = !DILocation(line: 39, column: 27, scope: !549)
!555 = !DILocation(line: 39, column: 33, scope: !549)
!556 = !DILocation(line: 39, column: 52, scope: !549)
!557 = !DILocation(line: 39, column: 59, scope: !549)
!558 = !DILocation(line: 39, column: 46, scope: !549)
!559 = !DILocation(line: 39, column: 44, scope: !549)
!560 = !DILocation(line: 39, column: 17, scope: !549)
!561 = !DILocation(line: 40, column: 21, scope: !549)
!562 = !DILocation(line: 40, column: 27, scope: !549)
!563 = !DILocation(line: 40, column: 33, scope: !549)
!564 = !DILocation(line: 40, column: 52, scope: !549)
!565 = !DILocation(line: 40, column: 59, scope: !549)
!566 = !DILocation(line: 40, column: 46, scope: !549)
!567 = !DILocation(line: 40, column: 44, scope: !549)
!568 = !DILocation(line: 40, column: 17, scope: !549)
!569 = !DILocation(line: 41, column: 21, scope: !549)
!570 = !DILocation(line: 41, column: 27, scope: !549)
!571 = !DILocation(line: 41, column: 33, scope: !549)
!572 = !DILocation(line: 41, column: 52, scope: !549)
!573 = !DILocation(line: 41, column: 59, scope: !549)
!574 = !DILocation(line: 41, column: 46, scope: !549)
!575 = !DILocation(line: 41, column: 44, scope: !549)
!576 = !DILocation(line: 41, column: 17, scope: !549)
!577 = !DILocation(line: 38, column: 9, scope: !549)
!578 = !DILocation(line: 38, column: 16, scope: !549)
!579 = !DILocation(line: 37, column: 40, scope: !546)
!580 = !DILocation(line: 37, column: 5, scope: !546)
!581 = distinct !{!581, !547, !582, !388}
!582 = !DILocation(line: 42, column: 5, scope: !541)
!583 = !DILocation(line: 43, column: 1, scope: !528)
!584 = distinct !DISubprogram(name: "mul_table", scope: !585, file: !585, line: 128, type: !586, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !71)
!585 = !DIFile(filename: "../../../src/simple_arithmetic.h", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!586 = !DISubroutineType(types: !587)
!587 = !{!62, !175}
!588 = !DILocalVariable(name: "b", arg: 1, scope: !584, file: !585, line: 128, type: !175)
!589 = !DILocation(line: 0, scope: !584)
!590 = !DILocation(line: 129, column: 19, scope: !584)
!591 = !DILocation(line: 129, column: 33, scope: !584)
!592 = !DILocalVariable(name: "x", scope: !584, file: !585, line: 129, type: !62)
!593 = !DILocalVariable(name: "high_nibble_mask", scope: !584, file: !585, line: 131, type: !62)
!594 = !DILocation(line: 133, column: 28, scope: !584)
!595 = !DILocalVariable(name: "high_half", scope: !584, file: !585, line: 133, type: !62)
!596 = !DILocation(line: 134, column: 28, scope: !584)
!597 = !DILocation(line: 134, column: 47, scope: !584)
!598 = !DILocation(line: 134, column: 34, scope: !584)
!599 = !DILocation(line: 134, column: 5, scope: !584)
!600 = distinct !DISubprogram(name: "mul_add_m_upper_triangular_mat_x_mat", scope: !408, file: !408, line: 16, type: !601, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !71)
!601 = !DISubroutineType(types: !602)
!602 = !{null, !324, !411, !90, !52, !324, !324, !324, !324}
!603 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !600, file: !408, line: 16, type: !324)
!604 = !DILocation(line: 0, scope: !600)
!605 = !DILocalVariable(name: "bs_mat", arg: 2, scope: !600, file: !408, line: 16, type: !411)
!606 = !DILocalVariable(name: "mat", arg: 3, scope: !600, file: !408, line: 16, type: !90)
!607 = !DILocalVariable(name: "acc", arg: 4, scope: !600, file: !408, line: 16, type: !52)
!608 = !DILocalVariable(name: "bs_mat_rows", arg: 5, scope: !600, file: !408, line: 17, type: !324)
!609 = !DILocalVariable(name: "bs_mat_cols", arg: 6, scope: !600, file: !408, line: 17, type: !324)
!610 = !DILocalVariable(name: "mat_cols", arg: 7, scope: !600, file: !408, line: 17, type: !324)
!611 = !DILocalVariable(name: "triangular", arg: 8, scope: !600, file: !408, line: 17, type: !324)
!612 = !DILocalVariable(name: "bs_mat_entries_used", scope: !600, file: !408, line: 19, type: !86)
!613 = !DILocalVariable(name: "r", scope: !614, file: !408, line: 20, type: !86)
!614 = distinct !DILexicalBlock(scope: !600, file: !408, line: 20, column: 5)
!615 = !DILocation(line: 0, scope: !614)
!616 = !DILocation(line: 20, column: 10, scope: !614)
!617 = !DILocation(line: 19, column: 9, scope: !600)
!618 = !DILocation(line: 20, scope: !614)
!619 = !DILocation(line: 20, column: 23, scope: !620)
!620 = distinct !DILexicalBlock(scope: !614, file: !408, line: 20, column: 5)
!621 = !DILocation(line: 20, column: 5, scope: !614)
!622 = !DILocation(line: 21, column: 33, scope: !623)
!623 = distinct !DILexicalBlock(scope: !624, file: !408, line: 21, column: 9)
!624 = distinct !DILexicalBlock(scope: !620, file: !408, line: 20, column: 43)
!625 = !DILocalVariable(name: "c", scope: !623, file: !408, line: 21, type: !86)
!626 = !DILocation(line: 0, scope: !623)
!627 = !DILocation(line: 21, column: 14, scope: !623)
!628 = !DILocation(line: 21, scope: !623)
!629 = !DILocation(line: 21, column: 40, scope: !630)
!630 = distinct !DILexicalBlock(scope: !623, file: !408, line: 21, column: 9)
!631 = !DILocation(line: 21, column: 9, scope: !623)
!632 = !DILocation(line: 22, column: 13, scope: !633)
!633 = distinct !DILexicalBlock(scope: !634, file: !408, line: 22, column: 13)
!634 = distinct !DILexicalBlock(scope: !630, file: !408, line: 21, column: 60)
!635 = !DILocation(line: 22, scope: !633)
!636 = !DILocalVariable(name: "k", scope: !633, file: !408, line: 22, type: !86)
!637 = !DILocation(line: 0, scope: !633)
!638 = !DILocation(line: 22, column: 31, scope: !639)
!639 = distinct !DILexicalBlock(scope: !633, file: !408, line: 22, column: 13)
!640 = !DILocation(line: 23, column: 65, scope: !641)
!641 = distinct !DILexicalBlock(scope: !639, file: !408, line: 22, column: 51)
!642 = !DILocation(line: 23, column: 51, scope: !641)
!643 = !DILocation(line: 23, column: 94, scope: !641)
!644 = !DILocation(line: 23, column: 88, scope: !641)
!645 = !DILocation(line: 23, column: 134, scope: !641)
!646 = !DILocation(line: 23, column: 145, scope: !641)
!647 = !DILocation(line: 23, column: 129, scope: !641)
!648 = !DILocation(line: 23, column: 115, scope: !641)
!649 = !DILocation(line: 23, column: 17, scope: !641)
!650 = !DILocation(line: 22, column: 45, scope: !639)
!651 = !DILocation(line: 22, column: 13, scope: !639)
!652 = distinct !{!652, !632, !653, !388}
!653 = !DILocation(line: 24, column: 13, scope: !633)
!654 = !DILocation(line: 25, column: 33, scope: !634)
!655 = !DILocation(line: 21, column: 56, scope: !630)
!656 = !DILocation(line: 21, column: 9, scope: !630)
!657 = distinct !{!657, !631, !658, !388}
!658 = !DILocation(line: 26, column: 9, scope: !623)
!659 = !DILocation(line: 20, column: 39, scope: !620)
!660 = !DILocation(line: 20, column: 5, scope: !620)
!661 = distinct !{!661, !621, !662, !388}
!662 = !DILocation(line: 27, column: 5, scope: !614)
!663 = !DILocation(line: 28, column: 1, scope: !600)
!664 = distinct !DISubprogram(name: "unpack_m_vecs", scope: !68, file: !68, line: 262, type: !665, scopeLine: 262, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !71)
!665 = !DISubroutineType(types: !666)
!666 = !{null, !90, !52, !86, !86}
!667 = !DILocalVariable(name: "in", arg: 1, scope: !664, file: !68, line: 262, type: !90)
!668 = !DILocation(line: 0, scope: !664)
!669 = !DILocalVariable(name: "out", arg: 2, scope: !664, file: !68, line: 262, type: !52)
!670 = !DILocalVariable(name: "vecs", arg: 3, scope: !664, file: !68, line: 262, type: !86)
!671 = !DILocalVariable(name: "m", arg: 4, scope: !664, file: !68, line: 262, type: !86)
!672 = !DILocation(line: 263, column: 32, scope: !664)
!673 = !DILocation(line: 263, column: 38, scope: !664)
!674 = !DILocalVariable(name: "m_vec_limbs", scope: !664, file: !68, line: 263, type: !324)
!675 = !DILocalVariable(name: "_out", scope: !664, file: !68, line: 264, type: !61)
!676 = !DILocalVariable(name: "tmp", scope: !664, file: !68, line: 265, type: !677)
!677 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 256, elements: !22)
!678 = !DILocation(line: 265, column: 14, scope: !664)
!679 = !DILocalVariable(name: "i", scope: !680, file: !68, line: 266, type: !86)
!680 = distinct !DILexicalBlock(scope: !664, file: !68, line: 266, column: 5)
!681 = !DILocation(line: 0, scope: !680)
!682 = !DILocation(line: 266, column: 10, scope: !680)
!683 = !DILocation(line: 266, column: 28, scope: !684)
!684 = distinct !DILexicalBlock(scope: !680, file: !68, line: 266, column: 5)
!685 = !DILocation(line: 266, column: 5, scope: !680)
!686 = !DILocation(line: 266, scope: !680)
!687 = !DILocation(line: 268, column: 27, scope: !688)
!688 = distinct !DILexicalBlock(scope: !684, file: !68, line: 267, column: 5)
!689 = !DILocation(line: 268, column: 29, scope: !688)
!690 = !DILocation(line: 268, column: 24, scope: !688)
!691 = !DILocation(line: 268, column: 34, scope: !688)
!692 = !DILocation(line: 268, column: 9, scope: !688)
!693 = !DILocation(line: 269, column: 24, scope: !688)
!694 = !DILocation(line: 269, column: 36, scope: !688)
!695 = !DILocation(line: 269, column: 21, scope: !688)
!696 = !DILocation(line: 269, column: 71, scope: !688)
!697 = !DILocation(line: 269, column: 9, scope: !688)
!698 = !DILocation(line: 266, column: 5, scope: !684)
!699 = distinct !{!699, !685, !700, !388}
!700 = !DILocation(line: 270, column: 5, scope: !680)
!701 = !DILocation(line: 271, column: 1, scope: !664)
!702 = distinct !DISubprogram(name: "pqmayo_MAYO_2_ref_mayo_expand_sk", scope: !68, file: !68, line: 310, type: !703, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !71)
!703 = !DISubroutineType(types: !704)
!704 = !{!86, !264, !90, !705}
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 32)
!706 = !DIDerivedType(tag: DW_TAG_typedef, name: "sk_t", file: !79, line: 294, baseType: !707)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sk_t", file: !79, line: 291, size: 819712, elements: !708)
!708 = !{!709, !710}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !707, file: !79, line: 292, baseType: !170, size: 811008)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "O", scope: !707, file: !79, line: 293, baseType: !174, size: 8704, offset: 811008)
!711 = !DILocalVariable(name: "p", arg: 1, scope: !702, file: !68, line: 310, type: !264)
!712 = !DILocation(line: 0, scope: !702)
!713 = !DILocalVariable(name: "csk", arg: 2, scope: !702, file: !68, line: 310, type: !90)
!714 = !DILocalVariable(name: "sk", arg: 3, scope: !702, file: !68, line: 311, type: !705)
!715 = !DILocalVariable(name: "ret", scope: !702, file: !68, line: 312, type: !86)
!716 = !DILocalVariable(name: "S", scope: !702, file: !68, line: 313, type: !309)
!717 = !DILocation(line: 313, column: 19, scope: !702)
!718 = !DILocalVariable(name: "P", scope: !702, file: !68, line: 314, type: !52)
!719 = !DILocation(line: 315, column: 28, scope: !702)
!720 = !DILocalVariable(name: "O", scope: !702, file: !68, line: 315, type: !61)
!721 = !DILocalVariable(name: "param_o", scope: !702, file: !68, line: 317, type: !324)
!722 = !DILocalVariable(name: "param_v", scope: !702, file: !68, line: 318, type: !324)
!723 = !DILocalVariable(name: "param_O_bytes", scope: !702, file: !68, line: 319, type: !324)
!724 = !DILocalVariable(name: "param_pk_seed_bytes", scope: !702, file: !68, line: 320, type: !324)
!725 = !DILocalVariable(name: "param_sk_seed_bytes", scope: !702, file: !68, line: 321, type: !324)
!726 = !DILocalVariable(name: "seed_sk", scope: !702, file: !68, line: 323, type: !90)
!727 = !DILocalVariable(name: "seed_pk", scope: !702, file: !68, line: 324, type: !61)
!728 = !DILocation(line: 326, column: 5, scope: !702)
!729 = !DILocation(line: 328, column: 14, scope: !702)
!730 = !DILocation(line: 328, column: 5, scope: !702)
!731 = !DILocation(line: 334, column: 5, scope: !702)
!732 = !DILocation(line: 341, column: 22, scope: !702)
!733 = !DILocalVariable(name: "P2", scope: !702, file: !68, line: 341, type: !52)
!734 = !DILocalVariable(name: "P1", scope: !702, file: !68, line: 343, type: !52)
!735 = !DILocalVariable(name: "L", scope: !702, file: !68, line: 346, type: !52)
!736 = !DILocation(line: 347, column: 5, scope: !702)
!737 = !DILocation(line: 355, column: 5, scope: !702)
!738 = !DILocation(line: 356, column: 5, scope: !702)
!739 = distinct !DISubprogram(name: "P1P1t_times_O", scope: !408, file: !408, line: 218, type: !459, scopeLine: 218, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !71)
!740 = !DILocalVariable(name: "p", arg: 1, scope: !739, file: !408, line: 218, type: !264)
!741 = !DILocation(line: 0, scope: !739)
!742 = !DILocalVariable(name: "P1", arg: 2, scope: !739, file: !408, line: 218, type: !411)
!743 = !DILocalVariable(name: "O", arg: 3, scope: !739, file: !408, line: 218, type: !90)
!744 = !DILocalVariable(name: "acc", arg: 4, scope: !739, file: !408, line: 218, type: !52)
!745 = !DILocalVariable(name: "param_o", scope: !739, file: !408, line: 222, type: !324)
!746 = !DILocalVariable(name: "param_v", scope: !739, file: !408, line: 223, type: !324)
!747 = !DILocalVariable(name: "m_vec_limbs", scope: !739, file: !408, line: 224, type: !324)
!748 = !DILocalVariable(name: "bs_mat_entries_used", scope: !739, file: !408, line: 226, type: !86)
!749 = !DILocalVariable(name: "r", scope: !750, file: !408, line: 227, type: !86)
!750 = distinct !DILexicalBlock(scope: !739, file: !408, line: 227, column: 5)
!751 = !DILocation(line: 0, scope: !750)
!752 = !DILocation(line: 227, column: 10, scope: !750)
!753 = !DILocation(line: 226, column: 9, scope: !739)
!754 = !DILocation(line: 227, scope: !750)
!755 = !DILocation(line: 227, column: 23, scope: !756)
!756 = distinct !DILexicalBlock(scope: !750, file: !408, line: 227, column: 5)
!757 = !DILocation(line: 227, column: 5, scope: !750)
!758 = !DILocation(line: 228, column: 9, scope: !759)
!759 = distinct !DILexicalBlock(scope: !760, file: !408, line: 228, column: 9)
!760 = distinct !DILexicalBlock(scope: !756, file: !408, line: 227, column: 39)
!761 = !DILocation(line: 228, scope: !759)
!762 = !DILocalVariable(name: "c", scope: !759, file: !408, line: 228, type: !86)
!763 = !DILocation(line: 0, scope: !759)
!764 = !DILocation(line: 228, column: 27, scope: !765)
!765 = distinct !DILexicalBlock(scope: !759, file: !408, line: 228, column: 9)
!766 = !DILocation(line: 229, column: 17, scope: !767)
!767 = distinct !DILexicalBlock(scope: !768, file: !408, line: 229, column: 16)
!768 = distinct !DILexicalBlock(scope: !765, file: !408, line: 228, column: 43)
!769 = !DILocation(line: 233, column: 13, scope: !770)
!770 = distinct !DILexicalBlock(scope: !768, file: !408, line: 233, column: 13)
!771 = !DILocation(line: 233, scope: !770)
!772 = !DILocalVariable(name: "k", scope: !770, file: !408, line: 233, type: !86)
!773 = !DILocation(line: 0, scope: !770)
!774 = !DILocation(line: 233, column: 31, scope: !775)
!775 = distinct !DILexicalBlock(scope: !770, file: !408, line: 233, column: 13)
!776 = !DILocation(line: 234, column: 47, scope: !777)
!777 = distinct !DILexicalBlock(scope: !775, file: !408, line: 233, column: 50)
!778 = !DILocation(line: 234, column: 88, scope: !777)
!779 = !DILocation(line: 234, column: 84, scope: !777)
!780 = !DILocation(line: 234, column: 127, scope: !777)
!781 = !DILocation(line: 234, column: 137, scope: !777)
!782 = !DILocation(line: 234, column: 108, scope: !777)
!783 = !DILocation(line: 234, column: 17, scope: !777)
!784 = !DILocation(line: 235, column: 47, scope: !777)
!785 = !DILocation(line: 235, column: 88, scope: !777)
!786 = !DILocation(line: 235, column: 84, scope: !777)
!787 = !DILocation(line: 235, column: 127, scope: !777)
!788 = !DILocation(line: 235, column: 137, scope: !777)
!789 = !DILocation(line: 235, column: 108, scope: !777)
!790 = !DILocation(line: 235, column: 17, scope: !777)
!791 = !DILocation(line: 233, column: 44, scope: !775)
!792 = !DILocation(line: 233, column: 13, scope: !775)
!793 = distinct !{!793, !769, !794, !388}
!794 = !DILocation(line: 236, column: 13, scope: !770)
!795 = !DILocation(line: 0, scope: !768)
!796 = !DILocation(line: 228, column: 39, scope: !765)
!797 = !DILocation(line: 228, column: 9, scope: !765)
!798 = distinct !{!798, !758, !799, !388}
!799 = !DILocation(line: 238, column: 9, scope: !759)
!800 = !DILocation(line: 227, column: 35, scope: !756)
!801 = !DILocation(line: 227, column: 5, scope: !756)
!802 = distinct !{!802, !757, !803, !388}
!803 = !DILocation(line: 239, column: 5, scope: !750)
!804 = !DILocation(line: 240, column: 1, scope: !739)
!805 = distinct !DISubprogram(name: "pqmayo_MAYO_2_ref_mayo_sign_signature", scope: !68, file: !68, line: 359, type: !806, scopeLine: 361, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !71)
!806 = !DISubroutineType(types: !807)
!807 = !{!86, !264, !61, !808, !90, !58, !90}
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 32)
!809 = !DILocalVariable(name: "p", arg: 1, scope: !805, file: !68, line: 359, type: !264)
!810 = !DILocation(line: 0, scope: !805)
!811 = !DILocalVariable(name: "sig", arg: 2, scope: !805, file: !68, line: 359, type: !61)
!812 = !DILocalVariable(name: "siglen", arg: 3, scope: !805, file: !68, line: 360, type: !808)
!813 = !DILocalVariable(name: "m", arg: 4, scope: !805, file: !68, line: 360, type: !90)
!814 = !DILocalVariable(name: "mlen", arg: 5, scope: !805, file: !68, line: 361, type: !58)
!815 = !DILocalVariable(name: "csk", arg: 6, scope: !805, file: !68, line: 361, type: !90)
!816 = !DILocalVariable(name: "ret", scope: !805, file: !68, line: 362, type: !86)
!817 = !DILocalVariable(name: "tenc", scope: !805, file: !68, line: 363, type: !184)
!818 = !DILocation(line: 363, column: 19, scope: !805)
!819 = !DILocalVariable(name: "t", scope: !805, file: !68, line: 363, type: !820)
!820 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 512, elements: !821)
!821 = !{!822}
!822 = !DISubrange(count: 64)
!823 = !DILocation(line: 363, column: 38, scope: !805)
!824 = !DILocalVariable(name: "y", scope: !805, file: !68, line: 364, type: !820)
!825 = !DILocation(line: 364, column: 19, scope: !805)
!826 = !DILocalVariable(name: "salt", scope: !805, file: !68, line: 365, type: !827)
!827 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 192, elements: !828)
!828 = !{!829}
!829 = !DISubrange(count: 24)
!830 = !DILocation(line: 365, column: 19, scope: !805)
!831 = !DILocalVariable(name: "V", scope: !805, file: !68, line: 366, type: !832)
!832 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 1296, elements: !833)
!833 = !{!834}
!834 = !DISubrange(count: 162)
!835 = !DILocation(line: 366, column: 19, scope: !805)
!836 = !DILocalVariable(name: "Vdec", scope: !805, file: !68, line: 366, type: !837)
!837 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 2048, elements: !838)
!838 = !{!839}
!839 = !DISubrange(count: 256)
!840 = !DILocation(line: 366, column: 57, scope: !805)
!841 = !DILocalVariable(name: "A", scope: !805, file: !68, line: 367, type: !842)
!842 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 35328, elements: !843)
!843 = !{!844}
!844 = !DISubrange(count: 4416)
!845 = !DILocation(line: 367, column: 19, scope: !805)
!846 = !DILocalVariable(name: "x", scope: !805, file: !68, line: 368, type: !847)
!847 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 2592, elements: !848)
!848 = !{!849}
!849 = !DISubrange(count: 324)
!850 = !DILocation(line: 368, column: 19, scope: !805)
!851 = !DILocalVariable(name: "r", scope: !805, file: !68, line: 369, type: !852)
!852 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 552, elements: !853)
!853 = !{!854}
!854 = !DISubrange(count: 69)
!855 = !DILocation(line: 369, column: 19, scope: !805)
!856 = !DILocalVariable(name: "s", scope: !805, file: !68, line: 370, type: !847)
!857 = !DILocation(line: 370, column: 19, scope: !805)
!858 = !DILocalVariable(name: "sk", scope: !805, file: !68, line: 372, type: !706, align: 256)
!859 = !DILocation(line: 372, column: 22, scope: !805)
!860 = !DILocalVariable(name: "Ox", scope: !805, file: !68, line: 373, type: !820)
!861 = !DILocation(line: 373, column: 19, scope: !805)
!862 = !DILocalVariable(name: "tmp", scope: !805, file: !68, line: 374, type: !863)
!863 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 648, elements: !864)
!864 = !{!865}
!865 = !DISubrange(count: 81)
!866 = !DILocation(line: 374, column: 19, scope: !805)
!867 = !DILocalVariable(name: "param_m", scope: !805, file: !68, line: 378, type: !324)
!868 = !DILocalVariable(name: "param_n", scope: !805, file: !68, line: 379, type: !324)
!869 = !DILocalVariable(name: "param_o", scope: !805, file: !68, line: 380, type: !324)
!870 = !DILocalVariable(name: "param_k", scope: !805, file: !68, line: 381, type: !324)
!871 = !DILocalVariable(name: "param_v", scope: !805, file: !68, line: 382, type: !324)
!872 = !DILocalVariable(name: "param_m_bytes", scope: !805, file: !68, line: 383, type: !324)
!873 = !DILocalVariable(name: "param_v_bytes", scope: !805, file: !68, line: 384, type: !324)
!874 = !DILocalVariable(name: "param_r_bytes", scope: !805, file: !68, line: 385, type: !324)
!875 = !DILocalVariable(name: "param_sig_bytes", scope: !805, file: !68, line: 386, type: !324)
!876 = !DILocalVariable(name: "param_A_cols", scope: !805, file: !68, line: 387, type: !324)
!877 = !DILocalVariable(name: "param_digest_bytes", scope: !805, file: !68, line: 388, type: !324)
!878 = !DILocalVariable(name: "param_sk_seed_bytes", scope: !805, file: !68, line: 389, type: !324)
!879 = !DILocalVariable(name: "param_salt_bytes", scope: !805, file: !68, line: 390, type: !324)
!880 = !DILocation(line: 392, column: 11, scope: !805)
!881 = !DILocation(line: 393, column: 13, scope: !882)
!882 = distinct !DILexicalBlock(scope: !805, file: !68, line: 393, column: 9)
!883 = !DILocalVariable(name: "seed_sk", scope: !805, file: !68, line: 371, type: !90)
!884 = !DILocation(line: 401, column: 5, scope: !805)
!885 = !DILocalVariable(name: "P1", scope: !805, file: !68, line: 403, type: !52)
!886 = !DILocation(line: 404, column: 23, scope: !805)
!887 = !DILocalVariable(name: "L", scope: !805, file: !68, line: 404, type: !52)
!888 = !DILocalVariable(name: "Mtmp", scope: !805, file: !68, line: 405, type: !889)
!889 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 17408, elements: !890)
!890 = !{!891}
!891 = !DISubrange(count: 272)
!892 = !DILocation(line: 405, column: 14, scope: !805)
!893 = !DILocation(line: 420, column: 25, scope: !894)
!894 = distinct !DILexicalBlock(scope: !805, file: !68, line: 420, column: 9)
!895 = !DILocation(line: 420, column: 9, scope: !894)
!896 = !DILocation(line: 420, column: 65, scope: !894)
!897 = !DILocation(line: 427, column: 37, scope: !805)
!898 = !DILocation(line: 427, column: 5, scope: !805)
!899 = !DILocation(line: 429, column: 5, scope: !805)
!900 = !DILocation(line: 437, column: 16, scope: !805)
!901 = !DILocation(line: 437, column: 5, scope: !805)
!902 = !DILocation(line: 438, column: 59, scope: !805)
!903 = !DILocalVariable(name: "ctrbyte", scope: !805, file: !68, line: 375, type: !61)
!904 = !DILocation(line: 440, column: 5, scope: !805)
!905 = !DILocation(line: 442, column: 5, scope: !805)
!906 = !DILocalVariable(name: "ctr", scope: !907, file: !68, line: 444, type: !86)
!907 = distinct !DILexicalBlock(scope: !805, file: !68, line: 444, column: 5)
!908 = !DILocation(line: 0, scope: !907)
!909 = !DILocation(line: 466, column: 18, scope: !910)
!910 = distinct !DILexicalBlock(scope: !911, file: !68, line: 444, column: 42)
!911 = distinct !DILexicalBlock(scope: !907, file: !68, line: 444, column: 5)
!912 = !DILocation(line: 444, column: 10, scope: !907)
!913 = !DILocation(line: 444, scope: !907)
!914 = !DILocation(line: 444, column: 27, scope: !911)
!915 = !DILocation(line: 444, column: 5, scope: !907)
!916 = !DILocation(line: 445, column: 20, scope: !910)
!917 = !DILocation(line: 445, column: 18, scope: !910)
!918 = !DILocation(line: 447, column: 9, scope: !910)
!919 = !DILocalVariable(name: "i", scope: !920, file: !68, line: 451, type: !86)
!920 = distinct !DILexicalBlock(scope: !910, file: !68, line: 451, column: 9)
!921 = !DILocation(line: 0, scope: !920)
!922 = !DILocation(line: 451, column: 14, scope: !920)
!923 = !DILocation(line: 451, scope: !920)
!924 = !DILocation(line: 451, column: 27, scope: !925)
!925 = distinct !DILexicalBlock(scope: !920, file: !68, line: 451, column: 9)
!926 = !DILocation(line: 451, column: 9, scope: !920)
!927 = !DILocation(line: 452, column: 26, scope: !928)
!928 = distinct !DILexicalBlock(scope: !925, file: !68, line: 451, column: 48)
!929 = !DILocation(line: 452, column: 22, scope: !928)
!930 = !DILocation(line: 452, column: 52, scope: !928)
!931 = !DILocation(line: 452, column: 48, scope: !928)
!932 = !DILocation(line: 452, column: 13, scope: !928)
!933 = !DILocation(line: 451, column: 43, scope: !925)
!934 = !DILocation(line: 451, column: 9, scope: !925)
!935 = distinct !{!935, !926, !936, !388}
!936 = !DILocation(line: 453, column: 9, scope: !920)
!937 = !DILocation(line: 456, column: 9, scope: !910)
!938 = !DILocation(line: 458, column: 9, scope: !910)
!939 = !DILocation(line: 459, column: 9, scope: !910)
!940 = !DILocalVariable(name: "i", scope: !941, file: !68, line: 461, type: !86)
!941 = distinct !DILexicalBlock(scope: !910, file: !68, line: 461, column: 9)
!942 = !DILocation(line: 0, scope: !941)
!943 = !DILocation(line: 461, column: 14, scope: !941)
!944 = !DILocation(line: 461, scope: !941)
!945 = !DILocation(line: 461, column: 27, scope: !946)
!946 = distinct !DILexicalBlock(scope: !941, file: !68, line: 461, column: 9)
!947 = !DILocation(line: 461, column: 9, scope: !941)
!948 = !DILocation(line: 463, column: 20, scope: !949)
!949 = distinct !DILexicalBlock(scope: !946, file: !68, line: 462, column: 9)
!950 = !DILocation(line: 463, column: 43, scope: !949)
!951 = !DILocation(line: 463, column: 13, scope: !949)
!952 = !DILocation(line: 463, column: 48, scope: !949)
!953 = !DILocation(line: 461, column: 39, scope: !946)
!954 = !DILocation(line: 461, column: 9, scope: !946)
!955 = distinct !{!955, !947, !956, !388}
!956 = !DILocation(line: 464, column: 9, scope: !941)
!957 = !DILocation(line: 466, column: 9, scope: !910)
!958 = !DILocation(line: 470, column: 13, scope: !959)
!959 = distinct !DILexicalBlock(scope: !910, file: !68, line: 470, column: 13)
!960 = !DILocation(line: 473, column: 13, scope: !961)
!961 = distinct !DILexicalBlock(scope: !959, file: !68, line: 472, column: 16)
!962 = !DILocation(line: 474, column: 13, scope: !961)
!963 = !DILocation(line: 444, column: 35, scope: !911)
!964 = !DILocation(line: 444, column: 5, scope: !911)
!965 = distinct !{!965, !915, !966, !388}
!966 = !DILocation(line: 476, column: 5, scope: !907)
!967 = !DILocalVariable(name: "i", scope: !968, file: !68, line: 478, type: !86)
!968 = distinct !DILexicalBlock(scope: !805, file: !68, line: 478, column: 5)
!969 = !DILocation(line: 0, scope: !968)
!970 = !DILocation(line: 478, column: 10, scope: !968)
!971 = !DILocation(line: 478, scope: !968)
!972 = !DILocation(line: 478, column: 23, scope: !973)
!973 = distinct !DILexicalBlock(scope: !968, file: !68, line: 478, column: 5)
!974 = !DILocation(line: 478, column: 5, scope: !968)
!975 = !DILocation(line: 479, column: 23, scope: !976)
!976 = distinct !DILexicalBlock(scope: !973, file: !68, line: 478, column: 44)
!977 = !DILocation(line: 479, column: 19, scope: !976)
!978 = !DILocalVariable(name: "vi", scope: !805, file: !68, line: 376, type: !61)
!979 = !DILocation(line: 480, column: 20, scope: !976)
!980 = !DILocation(line: 480, column: 29, scope: !976)
!981 = !DILocation(line: 480, column: 25, scope: !976)
!982 = !DILocation(line: 480, column: 9, scope: !976)
!983 = !DILocation(line: 481, column: 31, scope: !976)
!984 = !DILocation(line: 481, column: 27, scope: !976)
!985 = !DILocation(line: 481, column: 9, scope: !976)
!986 = !DILocation(line: 482, column: 22, scope: !976)
!987 = !DILocation(line: 482, column: 18, scope: !976)
!988 = !DILocation(line: 482, column: 32, scope: !976)
!989 = !DILocation(line: 482, column: 61, scope: !976)
!990 = !DILocation(line: 482, column: 57, scope: !976)
!991 = !DILocation(line: 482, column: 9, scope: !976)
!992 = !DILocation(line: 478, column: 39, scope: !973)
!993 = !DILocation(line: 478, column: 5, scope: !973)
!994 = distinct !{!994, !974, !995, !388}
!995 = !DILocation(line: 483, column: 5, scope: !968)
!996 = !DILocation(line: 484, column: 5, scope: !805)
!997 = !DILocation(line: 486, column: 34, scope: !805)
!998 = !DILocation(line: 486, column: 5, scope: !805)
!999 = !DILocation(line: 487, column: 13, scope: !805)
!1000 = !DILocation(line: 487, column: 5, scope: !805)
!1001 = !DILabel(scope: !805, name: "err", file: !68, line: 489)
!1002 = !DILocation(line: 489, column: 1, scope: !805)
!1003 = !DILocation(line: 490, column: 5, scope: !805)
!1004 = !DILocation(line: 491, column: 5, scope: !805)
!1005 = !DILocation(line: 492, column: 5, scope: !805)
!1006 = !DILocation(line: 493, column: 5, scope: !805)
!1007 = !DILocation(line: 494, column: 26, scope: !805)
!1008 = !DILocation(line: 494, column: 5, scope: !805)
!1009 = !DILocation(line: 495, column: 5, scope: !805)
!1010 = !DILocation(line: 496, column: 5, scope: !805)
!1011 = !DILocation(line: 497, column: 5, scope: !805)
!1012 = !DILocation(line: 498, column: 5, scope: !805)
!1013 = !DILocation(line: 499, column: 5, scope: !805)
!1014 = distinct !DISubprogram(name: "compute_M_and_VPV", scope: !408, file: !408, line: 244, type: !1015, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !71)
!1015 = !DISubroutineType(types: !1016)
!1016 = !{null, !264, !90, !411, !411, !52, !52}
!1017 = !DILocalVariable(name: "p", arg: 1, scope: !1014, file: !408, line: 244, type: !264)
!1018 = !DILocation(line: 0, scope: !1014)
!1019 = !DILocalVariable(name: "Vdec", arg: 2, scope: !1014, file: !408, line: 244, type: !90)
!1020 = !DILocalVariable(name: "L", arg: 3, scope: !1014, file: !408, line: 244, type: !411)
!1021 = !DILocalVariable(name: "P1", arg: 4, scope: !1014, file: !408, line: 244, type: !411)
!1022 = !DILocalVariable(name: "VL", arg: 5, scope: !1014, file: !408, line: 244, type: !52)
!1023 = !DILocalVariable(name: "VP1V", arg: 6, scope: !1014, file: !408, line: 244, type: !52)
!1024 = !DILocalVariable(name: "param_k", scope: !1014, file: !408, line: 246, type: !324)
!1025 = !DILocalVariable(name: "param_v", scope: !1014, file: !408, line: 247, type: !324)
!1026 = !DILocalVariable(name: "param_o", scope: !1014, file: !408, line: 248, type: !324)
!1027 = !DILocation(line: 251, column: 5, scope: !1014)
!1028 = !DILocalVariable(name: "Pv", scope: !1014, file: !408, line: 254, type: !1029)
!1029 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 65536, elements: !1030)
!1030 = !{!1031}
!1031 = !DISubrange(count: 1024)
!1032 = !DILocation(line: 254, column: 14, scope: !1014)
!1033 = !DILocation(line: 255, column: 5, scope: !1014)
!1034 = !DILocation(line: 256, column: 5, scope: !1014)
!1035 = !DILocation(line: 257, column: 1, scope: !1014)
!1036 = distinct !DISubprogram(name: "compute_rhs", scope: !68, file: !68, line: 43, type: !1037, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !71)
!1037 = !DISubroutineType(types: !1038)
!1038 = !{null, !264, !52, !90, !61}
!1039 = !DILocalVariable(name: "p", arg: 1, scope: !1036, file: !68, line: 43, type: !264)
!1040 = !DILocation(line: 0, scope: !1036)
!1041 = !DILocalVariable(name: "vPv", arg: 2, scope: !1036, file: !68, line: 43, type: !52)
!1042 = !DILocalVariable(name: "t", arg: 3, scope: !1036, file: !68, line: 43, type: !90)
!1043 = !DILocalVariable(name: "y", arg: 4, scope: !1036, file: !68, line: 43, type: !61)
!1044 = !DILocalVariable(name: "top_pos", scope: !1036, file: !68, line: 48, type: !1045)
!1045 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!1046 = !DILocalVariable(name: "m_vec_limbs", scope: !1036, file: !68, line: 49, type: !1045)
!1047 = !DILocalVariable(name: "temp", scope: !1036, file: !68, line: 62, type: !677)
!1048 = !DILocation(line: 62, column: 14, scope: !1036)
!1049 = !DILocalVariable(name: "temp_bytes", scope: !1036, file: !68, line: 63, type: !61)
!1050 = !DILocalVariable(name: "i", scope: !1051, file: !68, line: 64, type: !86)
!1051 = distinct !DILexicalBlock(scope: !1036, file: !68, line: 64, column: 5)
!1052 = !DILocation(line: 0, scope: !1051)
!1053 = !DILocation(line: 64, column: 10, scope: !1051)
!1054 = !DILocation(line: 64, scope: !1051)
!1055 = !DILocation(line: 64, column: 36, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1051, file: !68, line: 64, column: 5)
!1057 = !DILocation(line: 64, column: 5, scope: !1051)
!1058 = !DILocation(line: 65, column: 9, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1060, file: !68, line: 65, column: 9)
!1060 = distinct !DILexicalBlock(scope: !1056, file: !68, line: 64, column: 48)
!1061 = !DILocation(line: 99, column: 5, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1036, file: !68, line: 99, column: 5)
!1063 = !DILocation(line: 65, scope: !1059)
!1064 = !DILocalVariable(name: "j", scope: !1059, file: !68, line: 65, type: !86)
!1065 = !DILocation(line: 0, scope: !1059)
!1066 = !DILocation(line: 65, column: 27, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !1059, file: !68, line: 65, column: 9)
!1068 = !DILocation(line: 67, column: 34, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !1067, file: !68, line: 65, column: 46)
!1070 = !DILocation(line: 67, column: 54, scope: !1069)
!1071 = !DILocalVariable(name: "top", scope: !1069, file: !68, line: 67, type: !51)
!1072 = !DILocation(line: 0, scope: !1069)
!1073 = !DILocation(line: 68, column: 13, scope: !1069)
!1074 = !DILocation(line: 68, column: 33, scope: !1069)
!1075 = !DILocalVariable(name: "k", scope: !1076, file: !68, line: 69, type: !86)
!1076 = distinct !DILexicalBlock(scope: !1069, file: !68, line: 69, column: 13)
!1077 = !DILocation(line: 0, scope: !1076)
!1078 = !DILocation(line: 69, column: 17, scope: !1076)
!1079 = !DILocation(line: 69, scope: !1076)
!1080 = !DILocation(line: 69, column: 43, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1076, file: !68, line: 69, column: 13)
!1082 = !DILocation(line: 69, column: 13, scope: !1076)
!1083 = !DILocation(line: 67, column: 33, scope: !1069)
!1084 = !DILocation(line: 74, column: 13, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1069, file: !68, line: 74, column: 13)
!1086 = !DILocation(line: 70, column: 30, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1081, file: !68, line: 69, column: 52)
!1088 = !DILocation(line: 70, column: 38, scope: !1087)
!1089 = !DILocation(line: 70, column: 23, scope: !1087)
!1090 = !DILocation(line: 70, column: 17, scope: !1087)
!1091 = !DILocation(line: 70, column: 27, scope: !1087)
!1092 = !DILocation(line: 71, column: 17, scope: !1087)
!1093 = !DILocation(line: 71, column: 25, scope: !1087)
!1094 = !DILocation(line: 69, column: 49, scope: !1081)
!1095 = !DILocation(line: 69, column: 13, scope: !1081)
!1096 = distinct !{!1096, !1082, !1097, !388}
!1097 = !DILocation(line: 72, column: 13, scope: !1076)
!1098 = !DILocation(line: 74, scope: !1085)
!1099 = !DILocalVariable(name: "jj", scope: !1085, file: !68, line: 74, type: !86)
!1100 = !DILocation(line: 0, scope: !1085)
!1101 = !DILocation(line: 74, column: 33, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1085, file: !68, line: 74, column: 13)
!1103 = !DILocation(line: 92, column: 13, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1069, file: !68, line: 92, column: 13)
!1105 = !DILocation(line: 75, column: 22, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1107, file: !68, line: 75, column: 20)
!1107 = distinct !DILexicalBlock(scope: !1102, file: !68, line: 74, column: 53)
!1108 = !DILocation(line: 75, column: 25, scope: !1106)
!1109 = !DILocation(line: 79, column: 52, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !1106, file: !68, line: 75, column: 30)
!1111 = !DILocation(line: 79, column: 41, scope: !1110)
!1112 = !DILocation(line: 79, column: 34, scope: !1110)
!1113 = !DILocation(line: 79, column: 21, scope: !1110)
!1114 = !DILocation(line: 79, column: 38, scope: !1110)
!1115 = !DILocation(line: 81, column: 17, scope: !1110)
!1116 = !DILocation(line: 86, column: 52, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !1106, file: !68, line: 82, column: 22)
!1118 = !DILocation(line: 86, column: 41, scope: !1117)
!1119 = !DILocation(line: 86, column: 73, scope: !1117)
!1120 = !DILocation(line: 86, column: 34, scope: !1117)
!1121 = !DILocation(line: 86, column: 21, scope: !1117)
!1122 = !DILocation(line: 86, column: 38, scope: !1117)
!1123 = !DILocation(line: 74, column: 49, scope: !1102)
!1124 = !DILocation(line: 74, column: 13, scope: !1102)
!1125 = distinct !{!1125, !1084, !1126, !388}
!1126 = !DILocation(line: 89, column: 13, scope: !1085)
!1127 = !DILocation(line: 92, scope: !1104)
!1128 = !DILocalVariable(name: "k", scope: !1104, file: !68, line: 92, type: !58)
!1129 = !DILocation(line: 0, scope: !1104)
!1130 = !DILocation(line: 92, column: 31, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1104, file: !68, line: 92, column: 13)
!1132 = !DILocation(line: 93, column: 54, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1131, file: !68, line: 92, column: 51)
!1134 = !DILocation(line: 93, column: 68, scope: !1133)
!1135 = !DILocation(line: 93, column: 28, scope: !1133)
!1136 = !DILocation(line: 93, column: 78, scope: !1133)
!1137 = !DILocation(line: 93, column: 109, scope: !1133)
!1138 = !DILocation(line: 93, column: 123, scope: !1133)
!1139 = !DILocation(line: 93, column: 83, scope: !1133)
!1140 = !DILocation(line: 93, column: 82, scope: !1133)
!1141 = !DILocation(line: 93, column: 73, scope: !1133)
!1142 = !DILocation(line: 93, column: 17, scope: !1133)
!1143 = !DILocation(line: 93, column: 25, scope: !1133)
!1144 = !DILocation(line: 92, column: 48, scope: !1131)
!1145 = !DILocation(line: 92, column: 13, scope: !1131)
!1146 = distinct !{!1146, !1103, !1147, !388}
!1147 = !DILocation(line: 94, column: 13, scope: !1104)
!1148 = !DILocation(line: 65, column: 42, scope: !1067)
!1149 = !DILocation(line: 65, column: 9, scope: !1067)
!1150 = distinct !{!1150, !1058, !1151, !388}
!1151 = !DILocation(line: 95, column: 9, scope: !1059)
!1152 = !DILocation(line: 64, column: 44, scope: !1056)
!1153 = !DILocation(line: 64, column: 5, scope: !1056)
!1154 = distinct !{!1154, !1057, !1155, !388}
!1155 = !DILocation(line: 96, column: 5, scope: !1051)
!1156 = !DILocation(line: 99, scope: !1062)
!1157 = !DILocalVariable(name: "i", scope: !1062, file: !68, line: 99, type: !86)
!1158 = !DILocation(line: 0, scope: !1062)
!1159 = !DILocation(line: 99, column: 23, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1062, file: !68, line: 99, column: 5)
!1161 = !DILocation(line: 105, column: 18, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1160, file: !68, line: 100, column: 5)
!1163 = !DILocation(line: 105, column: 40, scope: !1162)
!1164 = !DILocation(line: 105, column: 28, scope: !1162)
!1165 = !DILocation(line: 105, column: 44, scope: !1162)
!1166 = !DILocation(line: 105, column: 25, scope: !1162)
!1167 = !DILocation(line: 105, column: 9, scope: !1162)
!1168 = !DILocation(line: 105, column: 16, scope: !1162)
!1169 = !DILocation(line: 106, column: 21, scope: !1162)
!1170 = !DILocation(line: 106, column: 18, scope: !1162)
!1171 = !DILocation(line: 106, column: 40, scope: !1162)
!1172 = !DILocation(line: 106, column: 28, scope: !1162)
!1173 = !DILocation(line: 106, column: 44, scope: !1162)
!1174 = !DILocation(line: 106, column: 25, scope: !1162)
!1175 = !DILocation(line: 106, column: 12, scope: !1162)
!1176 = !DILocation(line: 106, column: 9, scope: !1162)
!1177 = !DILocation(line: 106, column: 16, scope: !1162)
!1178 = !DILocation(line: 99, column: 38, scope: !1160)
!1179 = !DILocation(line: 99, column: 5, scope: !1160)
!1180 = distinct !{!1180, !1061, !1181, !388}
!1181 = !DILocation(line: 108, column: 5, scope: !1062)
!1182 = !DILocation(line: 109, column: 1, scope: !1036)
!1183 = distinct !DISubprogram(name: "compute_A", scope: !68, file: !68, line: 154, type: !1184, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !71)
!1184 = !DISubroutineType(types: !1185)
!1185 = !{null, !264, !52, !61}
!1186 = !DILocalVariable(name: "p", arg: 1, scope: !1183, file: !68, line: 154, type: !264)
!1187 = !DILocation(line: 0, scope: !1183)
!1188 = !DILocalVariable(name: "VtL", arg: 2, scope: !1183, file: !68, line: 154, type: !52)
!1189 = !DILocalVariable(name: "A_out", arg: 3, scope: !1183, file: !68, line: 154, type: !61)
!1190 = !DILocalVariable(name: "bits_to_shift", scope: !1183, file: !68, line: 159, type: !86)
!1191 = !DILocalVariable(name: "words_to_shift", scope: !1183, file: !68, line: 160, type: !86)
!1192 = !DILocalVariable(name: "m_vec_limbs", scope: !1183, file: !68, line: 161, type: !324)
!1193 = !DILocalVariable(name: "A", scope: !1183, file: !68, line: 162, type: !1194)
!1194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 40960, elements: !1195)
!1195 = !{!1196}
!1196 = !DISubrange(count: 640)
!1197 = !DILocation(line: 162, column: 14, scope: !1183)
!1198 = !DILocalVariable(name: "A_width", scope: !1183, file: !68, line: 163, type: !58)
!1199 = !DILocalVariable(name: "i", scope: !1200, file: !68, line: 177, type: !86)
!1200 = distinct !DILexicalBlock(scope: !1183, file: !68, line: 177, column: 5)
!1201 = !DILocation(line: 0, scope: !1200)
!1202 = !DILocation(line: 177, column: 10, scope: !1200)
!1203 = !DILocation(line: 177, scope: !1200)
!1204 = !DILocation(line: 160, column: 9, scope: !1183)
!1205 = !DILocation(line: 159, column: 9, scope: !1183)
!1206 = !DILocation(line: 177, column: 23, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1200, file: !68, line: 177, column: 5)
!1208 = !DILocation(line: 177, column: 5, scope: !1200)
!1209 = !DILocation(line: 178, column: 9, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1211, file: !68, line: 178, column: 9)
!1211 = distinct !DILexicalBlock(scope: !1207, file: !68, line: 177, column: 47)
!1212 = !DILocation(line: 212, column: 5, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1183, file: !68, line: 212, column: 5)
!1214 = !DILocation(line: 178, scope: !1210)
!1215 = !DILocalVariable(name: "j", scope: !1210, file: !68, line: 178, type: !86)
!1216 = !DILocation(line: 0, scope: !1210)
!1217 = !DILocation(line: 178, column: 40, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1210, file: !68, line: 178, column: 9)
!1219 = !DILocation(line: 180, column: 22, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1218, file: !68, line: 178, column: 51)
!1221 = !DILocalVariable(name: "Mj", scope: !1183, file: !68, line: 164, type: !411)
!1222 = !DILocalVariable(name: "c", scope: !1223, file: !68, line: 181, type: !86)
!1223 = distinct !DILexicalBlock(scope: !1220, file: !68, line: 181, column: 13)
!1224 = !DILocation(line: 0, scope: !1223)
!1225 = !DILocation(line: 181, column: 18, scope: !1223)
!1226 = !DILocation(line: 181, scope: !1223)
!1227 = !DILocation(line: 181, column: 31, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1223, file: !68, line: 181, column: 13)
!1229 = !DILocation(line: 181, column: 13, scope: !1223)
!1230 = !DILocation(line: 182, column: 17, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1232, file: !68, line: 182, column: 17)
!1232 = distinct !DILexicalBlock(scope: !1228, file: !68, line: 181, column: 50)
!1233 = !DILocation(line: 182, scope: !1231)
!1234 = !DILocalVariable(name: "k", scope: !1231, file: !68, line: 182, type: !86)
!1235 = !DILocation(line: 0, scope: !1231)
!1236 = !DILocation(line: 182, column: 35, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1231, file: !68, line: 182, column: 17)
!1238 = !DILocation(line: 184, column: 86, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1237, file: !68, line: 183, column: 17)
!1240 = !DILocation(line: 184, column: 83, scope: !1239)
!1241 = !DILocation(line: 184, column: 78, scope: !1239)
!1242 = !DILocation(line: 184, column: 100, scope: !1239)
!1243 = !DILocation(line: 184, column: 35, scope: !1239)
!1244 = !DILocation(line: 184, column: 39, scope: !1239)
!1245 = !DILocation(line: 184, column: 48, scope: !1239)
!1246 = !DILocation(line: 184, column: 65, scope: !1239)
!1247 = !DILocation(line: 184, column: 43, scope: !1239)
!1248 = !DILocation(line: 184, column: 21, scope: !1239)
!1249 = !DILocation(line: 184, column: 75, scope: !1239)
!1250 = !DILocation(line: 185, column: 38, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1239, file: !68, line: 185, column: 24)
!1252 = !DILocation(line: 186, column: 94, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1251, file: !68, line: 185, column: 42)
!1254 = !DILocation(line: 186, column: 91, scope: !1253)
!1255 = !DILocation(line: 186, column: 86, scope: !1253)
!1256 = !DILocation(line: 186, column: 114, scope: !1253)
!1257 = !DILocation(line: 186, column: 108, scope: !1253)
!1258 = !DILocation(line: 186, column: 39, scope: !1253)
!1259 = !DILocation(line: 186, column: 43, scope: !1253)
!1260 = !DILocation(line: 186, column: 52, scope: !1253)
!1261 = !DILocation(line: 186, column: 73, scope: !1253)
!1262 = !DILocation(line: 186, column: 47, scope: !1253)
!1263 = !DILocation(line: 186, column: 25, scope: !1253)
!1264 = !DILocation(line: 186, column: 83, scope: !1253)
!1265 = !DILocation(line: 187, column: 21, scope: !1253)
!1266 = !DILocation(line: 182, column: 51, scope: !1237)
!1267 = !DILocation(line: 182, column: 17, scope: !1237)
!1268 = distinct !{!1268, !1230, !1269, !388}
!1269 = !DILocation(line: 188, column: 17, scope: !1231)
!1270 = !DILocation(line: 181, column: 46, scope: !1228)
!1271 = !DILocation(line: 181, column: 13, scope: !1228)
!1272 = distinct !{!1272, !1229, !1273, !388}
!1273 = !DILocation(line: 189, column: 13, scope: !1223)
!1274 = !DILocation(line: 191, column: 19, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1220, file: !68, line: 191, column: 17)
!1276 = !DILocation(line: 192, column: 26, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1275, file: !68, line: 191, column: 25)
!1278 = !DILocalVariable(name: "Mi", scope: !1183, file: !68, line: 164, type: !411)
!1279 = !DILocalVariable(name: "c", scope: !1280, file: !68, line: 193, type: !86)
!1280 = distinct !DILexicalBlock(scope: !1277, file: !68, line: 193, column: 17)
!1281 = !DILocation(line: 0, scope: !1280)
!1282 = !DILocation(line: 193, column: 22, scope: !1280)
!1283 = !DILocation(line: 193, scope: !1280)
!1284 = !DILocation(line: 193, column: 35, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1280, file: !68, line: 193, column: 17)
!1286 = !DILocation(line: 193, column: 17, scope: !1280)
!1287 = !DILocation(line: 194, column: 21, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1289, file: !68, line: 194, column: 21)
!1289 = distinct !DILexicalBlock(scope: !1285, file: !68, line: 193, column: 54)
!1290 = !DILocation(line: 194, scope: !1288)
!1291 = !DILocalVariable(name: "k", scope: !1288, file: !68, line: 194, type: !86)
!1292 = !DILocation(line: 0, scope: !1288)
!1293 = !DILocation(line: 194, column: 39, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1288, file: !68, line: 194, column: 21)
!1295 = !DILocation(line: 196, column: 89, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1294, file: !68, line: 195, column: 21)
!1297 = !DILocation(line: 196, column: 86, scope: !1296)
!1298 = !DILocation(line: 196, column: 81, scope: !1296)
!1299 = !DILocation(line: 196, column: 103, scope: !1296)
!1300 = !DILocation(line: 196, column: 38, scope: !1296)
!1301 = !DILocation(line: 196, column: 42, scope: !1296)
!1302 = !DILocation(line: 196, column: 51, scope: !1296)
!1303 = !DILocation(line: 196, column: 68, scope: !1296)
!1304 = !DILocation(line: 196, column: 46, scope: !1296)
!1305 = !DILocation(line: 196, column: 25, scope: !1296)
!1306 = !DILocation(line: 196, column: 78, scope: !1296)
!1307 = !DILocation(line: 197, column: 42, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1296, file: !68, line: 197, column: 28)
!1309 = !DILocation(line: 198, column: 97, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1308, file: !68, line: 197, column: 46)
!1311 = !DILocation(line: 198, column: 94, scope: !1310)
!1312 = !DILocation(line: 198, column: 89, scope: !1310)
!1313 = !DILocation(line: 198, column: 117, scope: !1310)
!1314 = !DILocation(line: 198, column: 111, scope: !1310)
!1315 = !DILocation(line: 198, column: 42, scope: !1310)
!1316 = !DILocation(line: 198, column: 46, scope: !1310)
!1317 = !DILocation(line: 198, column: 55, scope: !1310)
!1318 = !DILocation(line: 198, column: 76, scope: !1310)
!1319 = !DILocation(line: 198, column: 50, scope: !1310)
!1320 = !DILocation(line: 198, column: 29, scope: !1310)
!1321 = !DILocation(line: 198, column: 86, scope: !1310)
!1322 = !DILocation(line: 199, column: 25, scope: !1310)
!1323 = !DILocation(line: 194, column: 55, scope: !1294)
!1324 = !DILocation(line: 194, column: 21, scope: !1294)
!1325 = distinct !{!1325, !1287, !1326, !388}
!1326 = !DILocation(line: 200, column: 21, scope: !1288)
!1327 = !DILocation(line: 193, column: 50, scope: !1285)
!1328 = !DILocation(line: 193, column: 17, scope: !1285)
!1329 = distinct !{!1329, !1286, !1330, !388}
!1330 = !DILocation(line: 201, column: 17, scope: !1280)
!1331 = !DILocation(line: 204, column: 27, scope: !1220)
!1332 = !DILocation(line: 205, column: 30, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !1220, file: !68, line: 205, column: 16)
!1334 = !DILocation(line: 178, column: 46, scope: !1218)
!1335 = !DILocation(line: 178, column: 9, scope: !1218)
!1336 = distinct !{!1336, !1209, !1337, !388}
!1337 = !DILocation(line: 209, column: 9, scope: !1210)
!1338 = !DILocation(line: 177, column: 42, scope: !1207)
!1339 = !DILocation(line: 177, column: 5, scope: !1207)
!1340 = distinct !{!1340, !1208, !1341, !388}
!1341 = !DILocation(line: 210, column: 5, scope: !1200)
!1342 = !DILocation(line: 212, scope: !1213)
!1343 = !DILocalVariable(name: "c", scope: !1213, file: !68, line: 212, type: !58)
!1344 = !DILocation(line: 0, scope: !1213)
!1345 = !DILocation(line: 212, column: 26, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1213, file: !68, line: 212, column: 5)
!1347 = !DILocation(line: 214, column: 35, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1346, file: !68, line: 213, column: 5)
!1349 = !DILocation(line: 214, column: 9, scope: !1348)
!1350 = !DILocation(line: 212, column: 91, scope: !1346)
!1351 = !DILocation(line: 212, column: 5, scope: !1346)
!1352 = distinct !{!1352, !1212, !1353, !388}
!1353 = !DILocation(line: 215, column: 5, scope: !1213)
!1354 = !DILocalVariable(name: "tab", scope: !1183, file: !68, line: 217, type: !1355)
!1355 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 128, elements: !1356)
!1356 = !{!1357}
!1357 = !DISubrange(count: 16)
!1358 = !DILocation(line: 217, column: 19, scope: !1183)
!1359 = !DILocalVariable(name: "i", scope: !1360, file: !68, line: 218, type: !58)
!1360 = distinct !DILexicalBlock(scope: !1183, file: !68, line: 218, column: 5)
!1361 = !DILocation(line: 0, scope: !1360)
!1362 = !DILocation(line: 218, column: 10, scope: !1360)
!1363 = !DILocation(line: 218, scope: !1360)
!1364 = !DILocation(line: 218, column: 26, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1360, file: !68, line: 218, column: 5)
!1366 = !DILocation(line: 218, column: 5, scope: !1360)
!1367 = !DILocation(line: 228, column: 5, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1183, file: !68, line: 228, column: 5)
!1369 = !DILocation(line: 220, column: 28, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1365, file: !68, line: 219, column: 5)
!1371 = !DILocation(line: 220, column: 22, scope: !1370)
!1372 = !DILocation(line: 220, column: 14, scope: !1370)
!1373 = !DILocation(line: 220, column: 9, scope: !1370)
!1374 = !DILocation(line: 220, column: 20, scope: !1370)
!1375 = !DILocation(line: 221, column: 22, scope: !1370)
!1376 = !DILocation(line: 221, column: 14, scope: !1370)
!1377 = !DILocation(line: 221, column: 16, scope: !1370)
!1378 = !DILocation(line: 221, column: 9, scope: !1370)
!1379 = !DILocation(line: 221, column: 20, scope: !1370)
!1380 = !DILocation(line: 222, column: 28, scope: !1370)
!1381 = !DILocation(line: 222, column: 22, scope: !1370)
!1382 = !DILocation(line: 222, column: 14, scope: !1370)
!1383 = !DILocation(line: 222, column: 16, scope: !1370)
!1384 = !DILocation(line: 222, column: 9, scope: !1370)
!1385 = !DILocation(line: 222, column: 20, scope: !1370)
!1386 = !DILocation(line: 223, column: 28, scope: !1370)
!1387 = !DILocation(line: 223, column: 22, scope: !1370)
!1388 = !DILocation(line: 223, column: 14, scope: !1370)
!1389 = !DILocation(line: 223, column: 16, scope: !1370)
!1390 = !DILocation(line: 223, column: 9, scope: !1370)
!1391 = !DILocation(line: 223, column: 20, scope: !1370)
!1392 = !DILocation(line: 218, column: 41, scope: !1365)
!1393 = !DILocation(line: 218, column: 5, scope: !1365)
!1394 = distinct !{!1394, !1366, !1395, !388}
!1395 = !DILocation(line: 224, column: 5, scope: !1360)
!1396 = !DILocation(line: 228, scope: !1368)
!1397 = !DILocalVariable(name: "c", scope: !1368, file: !68, line: 228, type: !58)
!1398 = !DILocation(line: 0, scope: !1368)
!1399 = !DILocation(line: 228, column: 26, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1368, file: !68, line: 228, column: 5)
!1401 = !DILocation(line: 230, column: 9, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1403, file: !68, line: 230, column: 9)
!1403 = distinct !DILexicalBlock(scope: !1400, file: !68, line: 229, column: 5)
!1404 = !DILocation(line: 250, column: 5, scope: !1405)
!1405 = distinct !DILexicalBlock(scope: !1183, file: !68, line: 250, column: 5)
!1406 = !DILocation(line: 230, scope: !1402)
!1407 = !DILocalVariable(name: "r", scope: !1402, file: !68, line: 230, type: !86)
!1408 = !DILocation(line: 0, scope: !1402)
!1409 = !DILocation(line: 230, column: 36, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1402, file: !68, line: 230, column: 9)
!1411 = !DILocation(line: 232, column: 28, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1410, file: !68, line: 231, column: 9)
!1413 = !DILocation(line: 232, column: 32, scope: !1412)
!1414 = !DILocation(line: 232, column: 41, scope: !1412)
!1415 = !DILocation(line: 232, column: 49, scope: !1412)
!1416 = !DILocation(line: 232, column: 45, scope: !1412)
!1417 = !DILocalVariable(name: "pos", scope: !1412, file: !68, line: 232, type: !58)
!1418 = !DILocation(line: 0, scope: !1412)
!1419 = !DILocation(line: 233, column: 28, scope: !1412)
!1420 = !DILocation(line: 233, column: 41, scope: !1412)
!1421 = !DILocalVariable(name: "t0", scope: !1412, file: !68, line: 233, type: !53)
!1422 = !DILocation(line: 234, column: 35, scope: !1412)
!1423 = !DILocation(line: 234, column: 41, scope: !1412)
!1424 = !DILocalVariable(name: "t1", scope: !1412, file: !68, line: 234, type: !53)
!1425 = !DILocation(line: 235, column: 35, scope: !1412)
!1426 = !DILocation(line: 235, column: 41, scope: !1412)
!1427 = !DILocalVariable(name: "t2", scope: !1412, file: !68, line: 235, type: !53)
!1428 = !DILocation(line: 236, column: 28, scope: !1412)
!1429 = !DILocation(line: 236, column: 35, scope: !1412)
!1430 = !DILocation(line: 236, column: 41, scope: !1412)
!1431 = !DILocalVariable(name: "t3", scope: !1412, file: !68, line: 236, type: !53)
!1432 = !DILocalVariable(name: "t", scope: !1433, file: !68, line: 237, type: !58)
!1433 = distinct !DILexicalBlock(scope: !1412, file: !68, line: 237, column: 13)
!1434 = !DILocation(line: 0, scope: !1433)
!1435 = !DILocation(line: 237, column: 18, scope: !1433)
!1436 = !DILocation(line: 237, scope: !1433)
!1437 = !DILocation(line: 237, column: 34, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !1433, file: !68, line: 237, column: 13)
!1439 = !DILocation(line: 237, column: 13, scope: !1433)
!1440 = !DILocation(line: 239, column: 89, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1438, file: !68, line: 238, column: 13)
!1442 = !DILocation(line: 239, column: 84, scope: !1441)
!1443 = !DILocation(line: 239, column: 83, scope: !1441)
!1444 = !DILocation(line: 239, column: 105, scope: !1441)
!1445 = !DILocation(line: 239, column: 107, scope: !1441)
!1446 = !DILocation(line: 239, column: 100, scope: !1441)
!1447 = !DILocation(line: 239, column: 99, scope: !1441)
!1448 = !DILocation(line: 239, column: 95, scope: !1441)
!1449 = !DILocation(line: 239, column: 121, scope: !1441)
!1450 = !DILocation(line: 239, column: 123, scope: !1441)
!1451 = !DILocation(line: 239, column: 116, scope: !1441)
!1452 = !DILocation(line: 239, column: 115, scope: !1441)
!1453 = !DILocation(line: 239, column: 111, scope: !1441)
!1454 = !DILocation(line: 239, column: 137, scope: !1441)
!1455 = !DILocation(line: 239, column: 139, scope: !1441)
!1456 = !DILocation(line: 239, column: 132, scope: !1441)
!1457 = !DILocation(line: 239, column: 131, scope: !1441)
!1458 = !DILocation(line: 239, column: 127, scope: !1441)
!1459 = !DILocation(line: 239, column: 22, scope: !1441)
!1460 = !DILocation(line: 239, column: 24, scope: !1441)
!1461 = !DILocation(line: 239, column: 36, scope: !1441)
!1462 = !DILocation(line: 239, column: 40, scope: !1441)
!1463 = !DILocation(line: 239, column: 49, scope: !1441)
!1464 = !DILocation(line: 239, column: 58, scope: !1441)
!1465 = !DILocation(line: 239, column: 72, scope: !1441)
!1466 = !DILocation(line: 239, column: 53, scope: !1441)
!1467 = !DILocation(line: 239, column: 17, scope: !1441)
!1468 = !DILocation(line: 239, column: 78, scope: !1441)
!1469 = !DILocation(line: 237, column: 49, scope: !1438)
!1470 = !DILocation(line: 237, column: 13, scope: !1438)
!1471 = distinct !{!1471, !1439, !1472, !388}
!1472 = !DILocation(line: 240, column: 13, scope: !1433)
!1473 = !DILocation(line: 230, column: 82, scope: !1410)
!1474 = !DILocation(line: 230, column: 9, scope: !1410)
!1475 = distinct !{!1475, !1401, !1476, !388}
!1476 = !DILocation(line: 241, column: 9, scope: !1402)
!1477 = !DILocation(line: 228, column: 38, scope: !1400)
!1478 = !DILocation(line: 228, column: 5, scope: !1400)
!1479 = distinct !{!1479, !1367, !1480, !388}
!1480 = !DILocation(line: 242, column: 5, scope: !1368)
!1481 = !DILocation(line: 250, scope: !1405)
!1482 = !DILocalVariable(name: "r", scope: !1405, file: !68, line: 250, type: !86)
!1483 = !DILocation(line: 0, scope: !1405)
!1484 = !DILocation(line: 250, column: 23, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1405, file: !68, line: 250, column: 5)
!1486 = !DILocation(line: 252, column: 9, scope: !1487)
!1487 = distinct !DILexicalBlock(scope: !1488, file: !68, line: 252, column: 9)
!1488 = distinct !DILexicalBlock(scope: !1485, file: !68, line: 251, column: 5)
!1489 = !DILocation(line: 252, scope: !1487)
!1490 = !DILocalVariable(name: "c", scope: !1487, file: !68, line: 252, type: !86)
!1491 = !DILocation(line: 0, scope: !1487)
!1492 = !DILocation(line: 252, column: 27, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1487, file: !68, line: 252, column: 9)
!1494 = !DILocation(line: 254, column: 13, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !1496, file: !68, line: 254, column: 13)
!1496 = distinct !DILexicalBlock(scope: !1493, file: !68, line: 253, column: 9)
!1497 = !DILocation(line: 254, scope: !1495)
!1498 = !DILocalVariable(name: "i", scope: !1495, file: !68, line: 254, type: !86)
!1499 = !DILocation(line: 0, scope: !1495)
!1500 = !DILocation(line: 254, column: 35, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1495, file: !68, line: 254, column: 13)
!1502 = !DILocation(line: 256, column: 55, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !1501, file: !68, line: 255, column: 13)
!1504 = !DILocation(line: 256, column: 59, scope: !1503)
!1505 = !DILocation(line: 256, column: 63, scope: !1503)
!1506 = !DILocation(line: 256, column: 44, scope: !1503)
!1507 = !DILocation(line: 256, column: 95, scope: !1503)
!1508 = !DILocation(line: 256, column: 92, scope: !1503)
!1509 = !DILocation(line: 256, column: 75, scope: !1503)
!1510 = !DILocation(line: 256, column: 99, scope: !1503)
!1511 = !DILocation(line: 256, column: 104, scope: !1503)
!1512 = !DILocation(line: 256, column: 17, scope: !1503)
!1513 = !DILocation(line: 254, column: 50, scope: !1501)
!1514 = !DILocation(line: 254, column: 13, scope: !1501)
!1515 = distinct !{!1515, !1494, !1516, !388}
!1516 = !DILocation(line: 257, column: 13, scope: !1495)
!1517 = !DILocation(line: 252, column: 50, scope: !1493)
!1518 = !DILocation(line: 252, column: 9, scope: !1493)
!1519 = distinct !{!1519, !1486, !1520, !388}
!1520 = !DILocation(line: 258, column: 9, scope: !1487)
!1521 = !DILocation(line: 250, column: 38, scope: !1485)
!1522 = !DILocation(line: 250, column: 5, scope: !1485)
!1523 = distinct !{!1523, !1404, !1524, !388}
!1524 = !DILocation(line: 259, column: 5, scope: !1405)
!1525 = !DILocation(line: 260, column: 1, scope: !1183)
!1526 = distinct !DISubprogram(name: "mat_mul", scope: !585, file: !585, line: 78, type: !1527, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !71)
!1527 = !DISubroutineType(types: !1528)
!1528 = !{null, !90, !90, !61, !86, !86, !86}
!1529 = !DILocalVariable(name: "a", arg: 1, scope: !1526, file: !585, line: 78, type: !90)
!1530 = !DILocation(line: 0, scope: !1526)
!1531 = !DILocalVariable(name: "b", arg: 2, scope: !1526, file: !585, line: 78, type: !90)
!1532 = !DILocalVariable(name: "c", arg: 3, scope: !1526, file: !585, line: 79, type: !61)
!1533 = !DILocalVariable(name: "colrow_ab", arg: 4, scope: !1526, file: !585, line: 79, type: !86)
!1534 = !DILocalVariable(name: "row_a", arg: 5, scope: !1526, file: !585, line: 79, type: !86)
!1535 = !DILocalVariable(name: "col_b", arg: 6, scope: !1526, file: !585, line: 79, type: !86)
!1536 = !DILocalVariable(name: "i", scope: !1537, file: !585, line: 80, type: !86)
!1537 = distinct !DILexicalBlock(scope: !1526, file: !585, line: 80, column: 5)
!1538 = !DILocation(line: 0, scope: !1537)
!1539 = !DILocation(line: 80, column: 10, scope: !1537)
!1540 = !DILocation(line: 80, scope: !1537)
!1541 = !DILocation(line: 80, column: 23, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1537, file: !585, line: 80, column: 5)
!1543 = !DILocation(line: 80, column: 5, scope: !1537)
!1544 = !DILocation(line: 81, column: 9, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1546, file: !585, line: 81, column: 9)
!1546 = distinct !DILexicalBlock(scope: !1542, file: !585, line: 80, column: 53)
!1547 = !DILocation(line: 81, scope: !1545)
!1548 = !DILocalVariable(name: "j", scope: !1545, file: !585, line: 81, type: !86)
!1549 = !DILocation(line: 0, scope: !1545)
!1550 = !DILocation(line: 81, column: 27, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !1545, file: !585, line: 81, column: 9)
!1552 = !DILocation(line: 82, column: 31, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !1551, file: !585, line: 81, column: 46)
!1554 = !DILocation(line: 82, column: 18, scope: !1553)
!1555 = !DILocation(line: 82, column: 16, scope: !1553)
!1556 = !DILocation(line: 81, column: 36, scope: !1551)
!1557 = !DILocation(line: 81, column: 41, scope: !1551)
!1558 = !DILocation(line: 81, column: 9, scope: !1551)
!1559 = distinct !{!1559, !1544, !1560, !388}
!1560 = !DILocation(line: 83, column: 9, scope: !1545)
!1561 = !DILocation(line: 80, column: 32, scope: !1542)
!1562 = !DILocation(line: 80, column: 39, scope: !1542)
!1563 = !DILocation(line: 80, column: 5, scope: !1542)
!1564 = distinct !{!1564, !1543, !1565, !388}
!1565 = !DILocation(line: 84, column: 5, scope: !1537)
!1566 = !DILocation(line: 85, column: 1, scope: !1526)
!1567 = distinct !DISubprogram(name: "mat_add", scope: !585, file: !585, line: 87, type: !1568, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !71)
!1568 = !DISubroutineType(types: !1569)
!1569 = !{null, !90, !90, !61, !86, !86}
!1570 = !DILocalVariable(name: "a", arg: 1, scope: !1567, file: !585, line: 87, type: !90)
!1571 = !DILocation(line: 0, scope: !1567)
!1572 = !DILocalVariable(name: "b", arg: 2, scope: !1567, file: !585, line: 87, type: !90)
!1573 = !DILocalVariable(name: "c", arg: 3, scope: !1567, file: !585, line: 88, type: !61)
!1574 = !DILocalVariable(name: "m", arg: 4, scope: !1567, file: !585, line: 88, type: !86)
!1575 = !DILocalVariable(name: "n", arg: 5, scope: !1567, file: !585, line: 88, type: !86)
!1576 = !DILocalVariable(name: "i", scope: !1577, file: !585, line: 89, type: !86)
!1577 = distinct !DILexicalBlock(scope: !1567, file: !585, line: 89, column: 5)
!1578 = !DILocation(line: 0, scope: !1577)
!1579 = !DILocation(line: 89, column: 10, scope: !1577)
!1580 = !DILocation(line: 89, scope: !1577)
!1581 = !DILocation(line: 89, column: 23, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1577, file: !585, line: 89, column: 5)
!1583 = !DILocation(line: 89, column: 5, scope: !1577)
!1584 = !DILocation(line: 90, column: 9, scope: !1585)
!1585 = distinct !DILexicalBlock(scope: !1586, file: !585, line: 90, column: 9)
!1586 = distinct !DILexicalBlock(scope: !1582, file: !585, line: 89, column: 33)
!1587 = !DILocation(line: 90, scope: !1585)
!1588 = !DILocalVariable(name: "j", scope: !1585, file: !585, line: 90, type: !86)
!1589 = !DILocation(line: 0, scope: !1585)
!1590 = !DILocation(line: 90, column: 27, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !1585, file: !585, line: 90, column: 9)
!1592 = !DILocation(line: 91, column: 46, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1591, file: !585, line: 90, column: 37)
!1594 = !DILocation(line: 91, column: 42, scope: !1593)
!1595 = !DILocation(line: 91, column: 50, scope: !1593)
!1596 = !DILocation(line: 91, column: 38, scope: !1593)
!1597 = !DILocation(line: 91, column: 64, scope: !1593)
!1598 = !DILocation(line: 91, column: 60, scope: !1593)
!1599 = !DILocation(line: 91, column: 68, scope: !1593)
!1600 = !DILocation(line: 91, column: 56, scope: !1593)
!1601 = !DILocation(line: 91, column: 32, scope: !1593)
!1602 = !DILocation(line: 91, column: 21, scope: !1593)
!1603 = !DILocation(line: 91, column: 17, scope: !1593)
!1604 = !DILocation(line: 91, column: 25, scope: !1593)
!1605 = !DILocation(line: 91, column: 30, scope: !1593)
!1606 = !DILocation(line: 90, column: 32, scope: !1591)
!1607 = !DILocation(line: 90, column: 9, scope: !1591)
!1608 = distinct !{!1608, !1584, !1609, !388}
!1609 = !DILocation(line: 92, column: 9, scope: !1585)
!1610 = !DILocation(line: 89, column: 28, scope: !1582)
!1611 = !DILocation(line: 89, column: 5, scope: !1582)
!1612 = distinct !{!1612, !1583, !1613, !388}
!1613 = !DILocation(line: 93, column: 5, scope: !1577)
!1614 = !DILocation(line: 94, column: 1, scope: !1567)
!1615 = distinct !DISubprogram(name: "encode", scope: !68, file: !68, line: 32, type: !361, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !71)
!1616 = !DILocalVariable(name: "m", arg: 1, scope: !1615, file: !68, line: 32, type: !90)
!1617 = !DILocation(line: 0, scope: !1615)
!1618 = !DILocalVariable(name: "menc", arg: 2, scope: !1615, file: !68, line: 32, type: !61)
!1619 = !DILocalVariable(name: "mlen", arg: 3, scope: !1615, file: !68, line: 32, type: !86)
!1620 = !DILocalVariable(name: "i", scope: !1615, file: !68, line: 33, type: !86)
!1621 = !DILocation(line: 34, column: 10, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !1615, file: !68, line: 34, column: 5)
!1623 = !DILocation(line: 34, scope: !1622)
!1624 = !DILocation(line: 34, column: 26, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1622, file: !68, line: 34, column: 5)
!1626 = !DILocation(line: 34, column: 19, scope: !1625)
!1627 = !DILocation(line: 34, column: 5, scope: !1622)
!1628 = !DILocation(line: 35, column: 20, scope: !1629)
!1629 = distinct !DILexicalBlock(scope: !1625, file: !68, line: 34, column: 44)
!1630 = !DILocation(line: 35, column: 31, scope: !1629)
!1631 = !DILocation(line: 35, column: 27, scope: !1629)
!1632 = !DILocation(line: 35, column: 36, scope: !1629)
!1633 = !DILocation(line: 35, column: 24, scope: !1629)
!1634 = !DILocation(line: 35, column: 9, scope: !1629)
!1635 = !DILocation(line: 35, column: 17, scope: !1629)
!1636 = !DILocation(line: 34, column: 31, scope: !1625)
!1637 = !DILocation(line: 34, column: 38, scope: !1625)
!1638 = !DILocation(line: 34, column: 5, scope: !1625)
!1639 = distinct !{!1639, !1627, !1640, !388}
!1640 = !DILocation(line: 36, column: 5, scope: !1622)
!1641 = !DILocation(line: 38, column: 18, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !1615, file: !68, line: 38, column: 9)
!1643 = !DILocation(line: 39, column: 20, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1642, file: !68, line: 38, column: 24)
!1645 = !DILocation(line: 39, column: 9, scope: !1644)
!1646 = !DILocation(line: 39, column: 17, scope: !1644)
!1647 = !DILocation(line: 40, column: 5, scope: !1644)
!1648 = !DILocation(line: 41, column: 1, scope: !1615)
!1649 = distinct !DISubprogram(name: "add_f", scope: !585, file: !585, line: 42, type: !1650, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !71)
!1650 = !DISubroutineType(types: !1651)
!1651 = !{!51, !51, !51}
!1652 = !DILocalVariable(name: "a", arg: 1, scope: !1649, file: !585, line: 42, type: !51)
!1653 = !DILocation(line: 0, scope: !1649)
!1654 = !DILocalVariable(name: "b", arg: 2, scope: !1649, file: !585, line: 42, type: !51)
!1655 = !DILocation(line: 43, column: 14, scope: !1649)
!1656 = !DILocation(line: 43, column: 5, scope: !1649)
!1657 = distinct !DISubprogram(name: "lincomb", scope: !585, file: !585, line: 69, type: !1658, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !71)
!1658 = !DISubroutineType(types: !1659)
!1659 = !{!51, !90, !90, !86, !86}
!1660 = !DILocalVariable(name: "a", arg: 1, scope: !1657, file: !585, line: 69, type: !90)
!1661 = !DILocation(line: 0, scope: !1657)
!1662 = !DILocalVariable(name: "b", arg: 2, scope: !1657, file: !585, line: 70, type: !90)
!1663 = !DILocalVariable(name: "n", arg: 3, scope: !1657, file: !585, line: 70, type: !86)
!1664 = !DILocalVariable(name: "m", arg: 4, scope: !1657, file: !585, line: 70, type: !86)
!1665 = !DILocalVariable(name: "ret", scope: !1657, file: !585, line: 71, type: !51)
!1666 = !DILocalVariable(name: "i", scope: !1667, file: !585, line: 72, type: !86)
!1667 = distinct !DILexicalBlock(scope: !1657, file: !585, line: 72, column: 5)
!1668 = !DILocation(line: 0, scope: !1667)
!1669 = !DILocation(line: 72, column: 10, scope: !1667)
!1670 = !DILocation(line: 72, scope: !1667)
!1671 = !DILocation(line: 72, column: 23, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1667, file: !585, line: 72, column: 5)
!1673 = !DILocation(line: 72, column: 5, scope: !1667)
!1674 = !DILocation(line: 73, column: 27, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !1672, file: !585, line: 72, column: 41)
!1676 = !DILocation(line: 73, column: 33, scope: !1675)
!1677 = !DILocation(line: 73, column: 21, scope: !1675)
!1678 = !DILocation(line: 73, column: 15, scope: !1675)
!1679 = !DILocation(line: 72, column: 28, scope: !1672)
!1680 = !DILocation(line: 72, column: 35, scope: !1672)
!1681 = !DILocation(line: 72, column: 5, scope: !1672)
!1682 = distinct !{!1682, !1673, !1683, !388}
!1683 = !DILocation(line: 74, column: 5, scope: !1667)
!1684 = !DILocation(line: 75, column: 5, scope: !1657)
!1685 = distinct !DISubprogram(name: "mul_f", scope: !585, file: !585, line: 8, type: !1650, scopeLine: 8, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !71)
!1686 = !DILocalVariable(name: "a", arg: 1, scope: !1685, file: !585, line: 8, type: !51)
!1687 = !DILocation(line: 0, scope: !1685)
!1688 = !DILocalVariable(name: "b", arg: 2, scope: !1685, file: !585, line: 8, type: !51)
!1689 = !DILocation(line: 13, column: 10, scope: !1685)
!1690 = !DILocation(line: 13, column: 7, scope: !1685)
!1691 = !DILocation(line: 16, column: 17, scope: !1685)
!1692 = !DILocalVariable(name: "p", scope: !1685, file: !585, line: 10, type: !51)
!1693 = !DILocation(line: 17, column: 13, scope: !1685)
!1694 = !DILocation(line: 17, column: 17, scope: !1685)
!1695 = !DILocation(line: 17, column: 7, scope: !1685)
!1696 = !DILocation(line: 18, column: 13, scope: !1685)
!1697 = !DILocation(line: 18, column: 17, scope: !1685)
!1698 = !DILocation(line: 18, column: 7, scope: !1685)
!1699 = !DILocation(line: 19, column: 13, scope: !1685)
!1700 = !DILocation(line: 19, column: 17, scope: !1685)
!1701 = !DILocation(line: 19, column: 7, scope: !1685)
!1702 = !DILocalVariable(name: "top_p", scope: !1685, file: !585, line: 22, type: !51)
!1703 = !DILocation(line: 23, column: 37, scope: !1685)
!1704 = !DILocation(line: 23, column: 52, scope: !1685)
!1705 = !DILocation(line: 23, column: 43, scope: !1685)
!1706 = !DILocation(line: 23, column: 59, scope: !1685)
!1707 = !DILocalVariable(name: "out", scope: !1685, file: !585, line: 23, type: !51)
!1708 = !DILocation(line: 24, column: 5, scope: !1685)
!1709 = !DILocalVariable(name: "M", arg: 1, scope: !67, file: !68, line: 111, type: !52)
!1710 = !DILocation(line: 0, scope: !67)
!1711 = !DILocalVariable(name: "i", scope: !1712, file: !68, line: 117, type: !58)
!1712 = distinct !DILexicalBlock(scope: !67, file: !68, line: 117, column: 5)
!1713 = !DILocation(line: 0, scope: !1712)
!1714 = !DILocation(line: 117, column: 10, scope: !1712)
!1715 = !DILocation(line: 117, scope: !1712)
!1716 = !DILocation(line: 117, column: 26, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1712, file: !68, line: 117, column: 5)
!1718 = !DILocation(line: 117, column: 5, scope: !1712)
!1719 = !DILocation(line: 124, column: 5, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !67, file: !68, line: 124, column: 5)
!1721 = !DILocation(line: 119, column: 24, scope: !1722)
!1722 = distinct !DILexicalBlock(scope: !1717, file: !68, line: 118, column: 5)
!1723 = !DILocation(line: 119, column: 29, scope: !1722)
!1724 = !DILocation(line: 119, column: 41, scope: !1722)
!1725 = !DILocation(line: 119, column: 38, scope: !1722)
!1726 = !DILocation(line: 119, column: 36, scope: !1722)
!1727 = !DILocation(line: 119, column: 46, scope: !1722)
!1728 = !DILocalVariable(name: "t", scope: !1722, file: !68, line: 119, type: !53)
!1729 = !DILocation(line: 0, scope: !1722)
!1730 = !DILocation(line: 120, column: 21, scope: !1722)
!1731 = !DILocation(line: 120, column: 9, scope: !1722)
!1732 = !DILocation(line: 120, column: 16, scope: !1722)
!1733 = !DILocation(line: 121, column: 12, scope: !1722)
!1734 = !DILocation(line: 121, column: 9, scope: !1722)
!1735 = !DILocation(line: 121, column: 16, scope: !1722)
!1736 = !DILocation(line: 117, column: 33, scope: !1717)
!1737 = !DILocation(line: 117, column: 5, scope: !1717)
!1738 = distinct !{!1738, !1718, !1739, !388}
!1739 = !DILocation(line: 122, column: 5, scope: !1712)
!1740 = !DILocation(line: 124, scope: !1720)
!1741 = !DILocalVariable(name: "i", scope: !1720, file: !68, line: 124, type: !58)
!1742 = !DILocation(line: 0, scope: !1720)
!1743 = !DILocation(line: 124, column: 26, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !1720, file: !68, line: 124, column: 5)
!1745 = !DILocation(line: 134, column: 5, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !67, file: !68, line: 134, column: 5)
!1747 = !DILocation(line: 126, column: 25, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1744, file: !68, line: 125, column: 5)
!1749 = !DILocation(line: 126, column: 32, scope: !1748)
!1750 = !DILocation(line: 126, column: 43, scope: !1748)
!1751 = !DILocation(line: 126, column: 40, scope: !1748)
!1752 = !DILocation(line: 126, column: 38, scope: !1748)
!1753 = !DILocation(line: 126, column: 48, scope: !1748)
!1754 = !DILocalVariable(name: "t0", scope: !1748, file: !68, line: 126, type: !53)
!1755 = !DILocation(line: 0, scope: !1748)
!1756 = !DILocation(line: 127, column: 28, scope: !1748)
!1757 = !DILocation(line: 127, column: 25, scope: !1748)
!1758 = !DILocation(line: 127, column: 32, scope: !1748)
!1759 = !DILocation(line: 127, column: 43, scope: !1748)
!1760 = !DILocation(line: 127, column: 40, scope: !1748)
!1761 = !DILocation(line: 127, column: 38, scope: !1748)
!1762 = !DILocation(line: 127, column: 48, scope: !1748)
!1763 = !DILocalVariable(name: "t1", scope: !1748, file: !68, line: 127, type: !53)
!1764 = !DILocation(line: 128, column: 23, scope: !1748)
!1765 = !DILocation(line: 128, column: 9, scope: !1748)
!1766 = !DILocation(line: 128, column: 16, scope: !1748)
!1767 = !DILocation(line: 129, column: 23, scope: !1748)
!1768 = !DILocation(line: 129, column: 12, scope: !1748)
!1769 = !DILocation(line: 129, column: 9, scope: !1748)
!1770 = !DILocation(line: 129, column: 16, scope: !1748)
!1771 = !DILocation(line: 130, column: 12, scope: !1748)
!1772 = !DILocation(line: 130, column: 9, scope: !1748)
!1773 = !DILocation(line: 130, column: 16, scope: !1748)
!1774 = !DILocation(line: 131, column: 12, scope: !1748)
!1775 = !DILocation(line: 131, column: 9, scope: !1748)
!1776 = !DILocation(line: 131, column: 16, scope: !1748)
!1777 = !DILocation(line: 124, column: 33, scope: !1744)
!1778 = !DILocation(line: 124, column: 5, scope: !1744)
!1779 = distinct !{!1779, !1719, !1780, !388}
!1780 = !DILocation(line: 132, column: 5, scope: !1720)
!1781 = !DILocation(line: 134, scope: !1746)
!1782 = !DILocalVariable(name: "i", scope: !1746, file: !68, line: 134, type: !58)
!1783 = !DILocation(line: 0, scope: !1746)
!1784 = !DILocation(line: 134, column: 26, scope: !1785)
!1785 = distinct !DILexicalBlock(scope: !1746, file: !68, line: 134, column: 5)
!1786 = !DILocation(line: 145, column: 5, scope: !1787)
!1787 = distinct !DILexicalBlock(scope: !67, file: !68, line: 145, column: 5)
!1788 = !DILocation(line: 136, column: 25, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1785, file: !68, line: 135, column: 5)
!1790 = !DILocation(line: 136, column: 32, scope: !1789)
!1791 = !DILocation(line: 136, column: 44, scope: !1789)
!1792 = !DILocation(line: 136, column: 41, scope: !1789)
!1793 = !DILocation(line: 136, column: 39, scope: !1789)
!1794 = !DILocation(line: 136, column: 50, scope: !1789)
!1795 = !DILocalVariable(name: "t0", scope: !1789, file: !68, line: 136, type: !53)
!1796 = !DILocation(line: 0, scope: !1789)
!1797 = !DILocation(line: 137, column: 28, scope: !1789)
!1798 = !DILocation(line: 137, column: 25, scope: !1789)
!1799 = !DILocation(line: 137, column: 32, scope: !1789)
!1800 = !DILocation(line: 137, column: 44, scope: !1789)
!1801 = !DILocation(line: 137, column: 41, scope: !1789)
!1802 = !DILocation(line: 137, column: 39, scope: !1789)
!1803 = !DILocation(line: 137, column: 50, scope: !1789)
!1804 = !DILocalVariable(name: "t1", scope: !1789, file: !68, line: 137, type: !53)
!1805 = !DILocation(line: 139, column: 23, scope: !1789)
!1806 = !DILocation(line: 139, column: 9, scope: !1789)
!1807 = !DILocation(line: 139, column: 17, scope: !1789)
!1808 = !DILocation(line: 140, column: 23, scope: !1789)
!1809 = !DILocation(line: 140, column: 12, scope: !1789)
!1810 = !DILocation(line: 140, column: 9, scope: !1789)
!1811 = !DILocation(line: 140, column: 17, scope: !1789)
!1812 = !DILocation(line: 141, column: 12, scope: !1789)
!1813 = !DILocation(line: 141, column: 9, scope: !1789)
!1814 = !DILocation(line: 141, column: 17, scope: !1789)
!1815 = !DILocation(line: 142, column: 12, scope: !1789)
!1816 = !DILocation(line: 142, column: 9, scope: !1789)
!1817 = !DILocation(line: 142, column: 17, scope: !1789)
!1818 = !DILocation(line: 134, column: 32, scope: !1785)
!1819 = !DILocation(line: 134, column: 5, scope: !1785)
!1820 = distinct !{!1820, !1745, !1821, !388}
!1821 = !DILocation(line: 143, column: 5, scope: !1746)
!1822 = !DILocation(line: 145, scope: !1787)
!1823 = !DILocalVariable(name: "i", scope: !1787, file: !68, line: 145, type: !58)
!1824 = !DILocation(line: 0, scope: !1787)
!1825 = !DILocation(line: 145, column: 26, scope: !1826)
!1826 = distinct !DILexicalBlock(scope: !1787, file: !68, line: 145, column: 5)
!1827 = !DILocation(line: 147, column: 24, scope: !1828)
!1828 = distinct !DILexicalBlock(scope: !1826, file: !68, line: 146, column: 5)
!1829 = !DILocation(line: 147, column: 28, scope: !1828)
!1830 = !DILocation(line: 147, column: 39, scope: !1828)
!1831 = !DILocation(line: 147, column: 36, scope: !1828)
!1832 = !DILocation(line: 147, column: 44, scope: !1828)
!1833 = !DILocalVariable(name: "t", scope: !1828, file: !68, line: 147, type: !53)
!1834 = !DILocation(line: 0, scope: !1828)
!1835 = !DILocation(line: 148, column: 21, scope: !1828)
!1836 = !DILocation(line: 148, column: 9, scope: !1828)
!1837 = !DILocation(line: 148, column: 16, scope: !1828)
!1838 = !DILocation(line: 149, column: 12, scope: !1828)
!1839 = !DILocation(line: 149, column: 9, scope: !1828)
!1840 = !DILocation(line: 149, column: 16, scope: !1828)
!1841 = !DILocation(line: 145, column: 32, scope: !1826)
!1842 = !DILocation(line: 145, column: 5, scope: !1826)
!1843 = distinct !{!1843, !1786, !1844, !388}
!1844 = !DILocation(line: 150, column: 5, scope: !1787)
!1845 = !DILocation(line: 151, column: 1, scope: !67)
!1846 = distinct !DISubprogram(name: "mul_add_mat_x_m_mat", scope: !408, file: !408, line: 61, type: !469, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !71)
!1847 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !1846, file: !408, line: 61, type: !324)
!1848 = !DILocation(line: 0, scope: !1846)
!1849 = !DILocalVariable(name: "mat", arg: 2, scope: !1846, file: !408, line: 61, type: !90)
!1850 = !DILocalVariable(name: "bs_mat", arg: 3, scope: !1846, file: !408, line: 61, type: !411)
!1851 = !DILocalVariable(name: "acc", arg: 4, scope: !1846, file: !408, line: 61, type: !52)
!1852 = !DILocalVariable(name: "mat_rows", arg: 5, scope: !1846, file: !408, line: 62, type: !324)
!1853 = !DILocalVariable(name: "mat_cols", arg: 6, scope: !1846, file: !408, line: 62, type: !324)
!1854 = !DILocalVariable(name: "bs_mat_cols", arg: 7, scope: !1846, file: !408, line: 62, type: !324)
!1855 = !DILocalVariable(name: "r", scope: !1856, file: !408, line: 64, type: !86)
!1856 = distinct !DILexicalBlock(scope: !1846, file: !408, line: 64, column: 5)
!1857 = !DILocation(line: 0, scope: !1856)
!1858 = !DILocation(line: 64, column: 10, scope: !1856)
!1859 = !DILocation(line: 64, scope: !1856)
!1860 = !DILocation(line: 64, column: 23, scope: !1861)
!1861 = distinct !DILexicalBlock(scope: !1856, file: !408, line: 64, column: 5)
!1862 = !DILocation(line: 64, column: 5, scope: !1856)
!1863 = !DILocation(line: 65, column: 9, scope: !1864)
!1864 = distinct !DILexicalBlock(scope: !1865, file: !408, line: 65, column: 9)
!1865 = distinct !DILexicalBlock(scope: !1861, file: !408, line: 64, column: 40)
!1866 = !DILocation(line: 65, scope: !1864)
!1867 = !DILocalVariable(name: "c", scope: !1864, file: !408, line: 65, type: !86)
!1868 = !DILocation(line: 0, scope: !1864)
!1869 = !DILocation(line: 65, column: 27, scope: !1870)
!1870 = distinct !DILexicalBlock(scope: !1864, file: !408, line: 65, column: 9)
!1871 = !DILocation(line: 66, column: 13, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !1873, file: !408, line: 66, column: 13)
!1873 = distinct !DILexicalBlock(scope: !1870, file: !408, line: 65, column: 44)
!1874 = !DILocation(line: 66, scope: !1872)
!1875 = !DILocalVariable(name: "k", scope: !1872, file: !408, line: 66, type: !86)
!1876 = !DILocation(line: 0, scope: !1872)
!1877 = !DILocation(line: 66, column: 31, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !1872, file: !408, line: 66, column: 13)
!1879 = !DILocation(line: 67, column: 70, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1878, file: !408, line: 66, column: 54)
!1881 = !DILocation(line: 67, column: 84, scope: !1880)
!1882 = !DILocation(line: 67, column: 65, scope: !1880)
!1883 = !DILocation(line: 67, column: 51, scope: !1880)
!1884 = !DILocation(line: 67, column: 96, scope: !1880)
!1885 = !DILocation(line: 67, column: 90, scope: !1880)
!1886 = !DILocation(line: 67, column: 136, scope: !1880)
!1887 = !DILocation(line: 67, column: 150, scope: !1880)
!1888 = !DILocation(line: 67, column: 131, scope: !1880)
!1889 = !DILocation(line: 67, column: 117, scope: !1880)
!1890 = !DILocation(line: 67, column: 17, scope: !1880)
!1891 = !DILocation(line: 66, column: 48, scope: !1878)
!1892 = !DILocation(line: 66, column: 13, scope: !1878)
!1893 = distinct !{!1893, !1871, !1894, !388}
!1894 = !DILocation(line: 68, column: 13, scope: !1872)
!1895 = !DILocation(line: 65, column: 40, scope: !1870)
!1896 = !DILocation(line: 65, column: 9, scope: !1870)
!1897 = distinct !{!1897, !1863, !1898, !388}
!1898 = !DILocation(line: 69, column: 9, scope: !1864)
!1899 = !DILocation(line: 64, column: 36, scope: !1861)
!1900 = !DILocation(line: 64, column: 5, scope: !1861)
!1901 = distinct !{!1901, !1862, !1902, !388}
!1902 = !DILocation(line: 70, column: 5, scope: !1856)
!1903 = !DILocation(line: 71, column: 1, scope: !1846)
!1904 = distinct !DISubprogram(name: "P1_times_Vt", scope: !408, file: !408, line: 82, type: !459, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !71)
!1905 = !DILocalVariable(name: "p", arg: 1, scope: !1904, file: !408, line: 82, type: !264)
!1906 = !DILocation(line: 0, scope: !1904)
!1907 = !DILocalVariable(name: "P1", arg: 2, scope: !1904, file: !408, line: 82, type: !411)
!1908 = !DILocalVariable(name: "V", arg: 3, scope: !1904, file: !408, line: 82, type: !90)
!1909 = !DILocalVariable(name: "acc", arg: 4, scope: !1904, file: !408, line: 82, type: !52)
!1910 = !DILocation(line: 86, column: 5, scope: !1904)
!1911 = !DILocation(line: 87, column: 1, scope: !1904)
!1912 = distinct !DISubprogram(name: "mul_add_m_upper_triangular_mat_x_mat_trans", scope: !408, file: !408, line: 32, type: !601, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !71)
!1913 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !1912, file: !408, line: 32, type: !324)
!1914 = !DILocation(line: 0, scope: !1912)
!1915 = !DILocalVariable(name: "bs_mat", arg: 2, scope: !1912, file: !408, line: 32, type: !411)
!1916 = !DILocalVariable(name: "mat", arg: 3, scope: !1912, file: !408, line: 32, type: !90)
!1917 = !DILocalVariable(name: "acc", arg: 4, scope: !1912, file: !408, line: 32, type: !52)
!1918 = !DILocalVariable(name: "bs_mat_rows", arg: 5, scope: !1912, file: !408, line: 33, type: !324)
!1919 = !DILocalVariable(name: "bs_mat_cols", arg: 6, scope: !1912, file: !408, line: 33, type: !324)
!1920 = !DILocalVariable(name: "mat_rows", arg: 7, scope: !1912, file: !408, line: 33, type: !324)
!1921 = !DILocalVariable(name: "triangular", arg: 8, scope: !1912, file: !408, line: 33, type: !324)
!1922 = !DILocalVariable(name: "bs_mat_entries_used", scope: !1912, file: !408, line: 34, type: !86)
!1923 = !DILocalVariable(name: "r", scope: !1924, file: !408, line: 35, type: !86)
!1924 = distinct !DILexicalBlock(scope: !1912, file: !408, line: 35, column: 5)
!1925 = !DILocation(line: 0, scope: !1924)
!1926 = !DILocation(line: 35, column: 10, scope: !1924)
!1927 = !DILocation(line: 34, column: 9, scope: !1912)
!1928 = !DILocation(line: 35, scope: !1924)
!1929 = !DILocation(line: 35, column: 23, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !1924, file: !408, line: 35, column: 5)
!1931 = !DILocation(line: 35, column: 5, scope: !1924)
!1932 = !DILocation(line: 36, column: 33, scope: !1933)
!1933 = distinct !DILexicalBlock(scope: !1934, file: !408, line: 36, column: 9)
!1934 = distinct !DILexicalBlock(scope: !1930, file: !408, line: 35, column: 43)
!1935 = !DILocalVariable(name: "c", scope: !1933, file: !408, line: 36, type: !86)
!1936 = !DILocation(line: 0, scope: !1933)
!1937 = !DILocation(line: 36, column: 14, scope: !1933)
!1938 = !DILocation(line: 36, scope: !1933)
!1939 = !DILocation(line: 36, column: 40, scope: !1940)
!1940 = distinct !DILexicalBlock(scope: !1933, file: !408, line: 36, column: 9)
!1941 = !DILocation(line: 36, column: 9, scope: !1933)
!1942 = !DILocation(line: 37, column: 13, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !1944, file: !408, line: 37, column: 13)
!1944 = distinct !DILexicalBlock(scope: !1940, file: !408, line: 36, column: 60)
!1945 = !DILocation(line: 37, scope: !1943)
!1946 = !DILocalVariable(name: "k", scope: !1943, file: !408, line: 37, type: !86)
!1947 = !DILocation(line: 0, scope: !1943)
!1948 = !DILocation(line: 37, column: 31, scope: !1949)
!1949 = distinct !DILexicalBlock(scope: !1943, file: !408, line: 37, column: 13)
!1950 = !DILocation(line: 38, column: 65, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1949, file: !408, line: 37, column: 51)
!1952 = !DILocation(line: 38, column: 51, scope: !1951)
!1953 = !DILocation(line: 38, column: 94, scope: !1951)
!1954 = !DILocation(line: 38, column: 88, scope: !1951)
!1955 = !DILocation(line: 38, column: 137, scope: !1951)
!1956 = !DILocation(line: 38, column: 148, scope: !1951)
!1957 = !DILocation(line: 38, column: 132, scope: !1951)
!1958 = !DILocation(line: 38, column: 118, scope: !1951)
!1959 = !DILocation(line: 38, column: 17, scope: !1951)
!1960 = !DILocation(line: 37, column: 45, scope: !1949)
!1961 = !DILocation(line: 37, column: 13, scope: !1949)
!1962 = distinct !{!1962, !1942, !1963, !388}
!1963 = !DILocation(line: 39, column: 13, scope: !1943)
!1964 = !DILocation(line: 40, column: 33, scope: !1944)
!1965 = !DILocation(line: 36, column: 56, scope: !1940)
!1966 = !DILocation(line: 36, column: 9, scope: !1940)
!1967 = distinct !{!1967, !1941, !1968, !388}
!1968 = !DILocation(line: 41, column: 9, scope: !1933)
!1969 = !DILocation(line: 35, column: 39, scope: !1930)
!1970 = !DILocation(line: 35, column: 5, scope: !1930)
!1971 = distinct !{!1971, !1931, !1972, !388}
!1972 = !DILocation(line: 42, column: 5, scope: !1924)
!1973 = !DILocation(line: 43, column: 1, scope: !1912)
!1974 = distinct !DISubprogram(name: "pqmayo_MAYO_2_ref_mayo_sign", scope: !68, file: !68, line: 502, type: !806, scopeLine: 504, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !71)
!1975 = !DILocalVariable(name: "p", arg: 1, scope: !1974, file: !68, line: 502, type: !264)
!1976 = !DILocation(line: 0, scope: !1974)
!1977 = !DILocalVariable(name: "sm", arg: 2, scope: !1974, file: !68, line: 502, type: !61)
!1978 = !DILocalVariable(name: "smlen", arg: 3, scope: !1974, file: !68, line: 503, type: !808)
!1979 = !DILocalVariable(name: "m", arg: 4, scope: !1974, file: !68, line: 503, type: !90)
!1980 = !DILocalVariable(name: "mlen", arg: 5, scope: !1974, file: !68, line: 504, type: !58)
!1981 = !DILocalVariable(name: "csk", arg: 6, scope: !1974, file: !68, line: 504, type: !90)
!1982 = !DILocalVariable(name: "ret", scope: !1974, file: !68, line: 505, type: !86)
!1983 = !DILocalVariable(name: "param_sig_bytes", scope: !1974, file: !68, line: 506, type: !324)
!1984 = !DILocation(line: 508, column: 16, scope: !1974)
!1985 = !DILocation(line: 508, column: 5, scope: !1974)
!1986 = !DILocation(line: 509, column: 50, scope: !1974)
!1987 = !DILocalVariable(name: "siglen", scope: !1974, file: !68, line: 507, type: !58)
!1988 = !DILocation(line: 509, column: 11, scope: !1974)
!1989 = !DILocation(line: 510, column: 13, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1974, file: !68, line: 510, column: 9)
!1991 = !DILocation(line: 510, column: 24, scope: !1990)
!1992 = !DILocation(line: 511, column: 23, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1990, file: !68, line: 510, column: 62)
!1994 = !DILocation(line: 511, column: 30, scope: !1993)
!1995 = !DILocation(line: 511, column: 9, scope: !1993)
!1996 = !DILocation(line: 512, column: 9, scope: !1993)
!1997 = !DILocation(line: 515, column: 14, scope: !1974)
!1998 = !DILocation(line: 515, column: 21, scope: !1974)
!1999 = !DILocation(line: 515, column: 12, scope: !1974)
!2000 = !DILocation(line: 515, column: 5, scope: !1974)
!2001 = !DILabel(scope: !1974, name: "err", file: !68, line: 516)
!2002 = !DILocation(line: 516, column: 1, scope: !1974)
!2003 = !DILocation(line: 517, column: 5, scope: !1974)
!2004 = distinct !DISubprogram(name: "pqmayo_MAYO_2_ref_mayo_open", scope: !68, file: !68, line: 520, type: !806, scopeLine: 522, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !71)
!2005 = !DILocalVariable(name: "p", arg: 1, scope: !2004, file: !68, line: 520, type: !264)
!2006 = !DILocation(line: 0, scope: !2004)
!2007 = !DILocalVariable(name: "m", arg: 2, scope: !2004, file: !68, line: 520, type: !61)
!2008 = !DILocalVariable(name: "mlen", arg: 3, scope: !2004, file: !68, line: 521, type: !808)
!2009 = !DILocalVariable(name: "sm", arg: 4, scope: !2004, file: !68, line: 521, type: !90)
!2010 = !DILocalVariable(name: "smlen", arg: 5, scope: !2004, file: !68, line: 522, type: !58)
!2011 = !DILocalVariable(name: "pk", arg: 6, scope: !2004, file: !68, line: 522, type: !90)
!2012 = !DILocalVariable(name: "param_sig_bytes", scope: !2004, file: !68, line: 523, type: !324)
!2013 = !DILocation(line: 524, column: 15, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !2004, file: !68, line: 524, column: 9)
!2015 = !DILocation(line: 527, column: 36, scope: !2004)
!2016 = !DILocation(line: 527, column: 61, scope: !2004)
!2017 = !DILocation(line: 527, column: 18, scope: !2004)
!2018 = !DILocalVariable(name: "result", scope: !2004, file: !68, line: 527, type: !86)
!2019 = !DILocation(line: 530, column: 16, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !2004, file: !68, line: 530, column: 9)
!2021 = !DILocation(line: 531, column: 23, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !2020, file: !68, line: 530, column: 28)
!2023 = !DILocation(line: 531, column: 15, scope: !2022)
!2024 = !DILocation(line: 532, column: 23, scope: !2022)
!2025 = !DILocation(line: 532, column: 9, scope: !2022)
!2026 = !DILocation(line: 533, column: 5, scope: !2022)
!2027 = !DILocation(line: 536, column: 1, scope: !2004)
!2028 = distinct !DISubprogram(name: "pqmayo_MAYO_2_ref_mayo_verify", scope: !68, file: !68, line: 617, type: !2029, scopeLine: 619, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !71)
!2029 = !DISubroutineType(types: !2030)
!2030 = !{!86, !264, !90, !58, !90, !90}
!2031 = !DILocalVariable(name: "p", arg: 1, scope: !2028, file: !68, line: 617, type: !264)
!2032 = !DILocation(line: 0, scope: !2028)
!2033 = !DILocalVariable(name: "m", arg: 2, scope: !2028, file: !68, line: 617, type: !90)
!2034 = !DILocalVariable(name: "mlen", arg: 3, scope: !2028, file: !68, line: 618, type: !58)
!2035 = !DILocalVariable(name: "sig", arg: 4, scope: !2028, file: !68, line: 618, type: !90)
!2036 = !DILocalVariable(name: "cpk", arg: 5, scope: !2028, file: !68, line: 619, type: !90)
!2037 = !DILocalVariable(name: "tEnc", scope: !2028, file: !68, line: 620, type: !184)
!2038 = !DILocation(line: 620, column: 19, scope: !2028)
!2039 = !DILocalVariable(name: "t", scope: !2028, file: !68, line: 621, type: !820)
!2040 = !DILocation(line: 621, column: 19, scope: !2028)
!2041 = !DILocalVariable(name: "y", scope: !2028, file: !68, line: 622, type: !2042)
!2042 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 1024, elements: !2043)
!2043 = !{!2044}
!2044 = !DISubrange(count: 128)
!2045 = !DILocation(line: 622, column: 19, scope: !2028)
!2046 = !DILocalVariable(name: "s", scope: !2028, file: !68, line: 623, type: !847)
!2047 = !DILocation(line: 623, column: 19, scope: !2028)
!2048 = !DILocalVariable(name: "pk", scope: !2028, file: !68, line: 624, type: !2049)
!2049 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 850176, elements: !2050)
!2050 = !{!2051}
!2051 = !DISubrange(count: 13284)
!2052 = !DILocation(line: 624, column: 14, scope: !2028)
!2053 = !DILocalVariable(name: "tmp", scope: !2028, file: !68, line: 625, type: !2054)
!2054 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 448, elements: !2055)
!2055 = !{!2056}
!2056 = !DISubrange(count: 56)
!2057 = !DILocation(line: 625, column: 19, scope: !2028)
!2058 = !DILocalVariable(name: "param_m", scope: !2028, file: !68, line: 627, type: !324)
!2059 = !DILocalVariable(name: "param_n", scope: !2028, file: !68, line: 628, type: !324)
!2060 = !DILocalVariable(name: "param_k", scope: !2028, file: !68, line: 629, type: !324)
!2061 = !DILocalVariable(name: "param_m_bytes", scope: !2028, file: !68, line: 630, type: !324)
!2062 = !DILocalVariable(name: "param_sig_bytes", scope: !2028, file: !68, line: 631, type: !324)
!2063 = !DILocalVariable(name: "param_digest_bytes", scope: !2028, file: !68, line: 632, type: !324)
!2064 = !DILocalVariable(name: "param_salt_bytes", scope: !2028, file: !68, line: 633, type: !324)
!2065 = !DILocation(line: 635, column: 15, scope: !2028)
!2066 = !DILocalVariable(name: "ret", scope: !2028, file: !68, line: 635, type: !86)
!2067 = !DILocation(line: 636, column: 13, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !2028, file: !68, line: 636, column: 9)
!2069 = !DILocalVariable(name: "P1", scope: !2028, file: !68, line: 640, type: !52)
!2070 = !DILocation(line: 641, column: 23, scope: !2028)
!2071 = !DILocalVariable(name: "P2", scope: !2028, file: !68, line: 641, type: !52)
!2072 = !DILocation(line: 642, column: 23, scope: !2028)
!2073 = !DILocalVariable(name: "P3", scope: !2028, file: !68, line: 642, type: !52)
!2074 = !DILocation(line: 657, column: 5, scope: !2028)
!2075 = !DILocation(line: 660, column: 16, scope: !2028)
!2076 = !DILocation(line: 660, column: 60, scope: !2028)
!2077 = !DILocation(line: 660, column: 5, scope: !2028)
!2078 = !DILocation(line: 662, column: 5, scope: !2028)
!2079 = !DILocation(line: 663, column: 5, scope: !2028)
!2080 = !DILocation(line: 666, column: 5, scope: !2028)
!2081 = !DILocation(line: 668, column: 5, scope: !2028)
!2082 = !DILocation(line: 670, column: 9, scope: !2083)
!2083 = distinct !DILexicalBlock(scope: !2028, file: !68, line: 670, column: 9)
!2084 = !DILocation(line: 670, column: 31, scope: !2083)
!2085 = !DILocation(line: 674, column: 1, scope: !2028)
!2086 = distinct !DISubprogram(name: "pqmayo_MAYO_2_ref_mayo_expand_pk", scope: !68, file: !68, line: 608, type: !2087, scopeLine: 609, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !71)
!2087 = !DISubroutineType(types: !2088)
!2088 = !{!86, !264, !90, !52}
!2089 = !DILocalVariable(name: "p", arg: 1, scope: !2086, file: !68, line: 608, type: !264)
!2090 = !DILocation(line: 0, scope: !2086)
!2091 = !DILocalVariable(name: "cpk", arg: 2, scope: !2086, file: !68, line: 608, type: !90)
!2092 = !DILocalVariable(name: "pk", arg: 3, scope: !2086, file: !68, line: 609, type: !52)
!2093 = !DILocation(line: 610, column: 5, scope: !2086)
!2094 = !DILocation(line: 612, column: 23, scope: !2086)
!2095 = !DILocation(line: 612, column: 72, scope: !2086)
!2096 = !DILocation(line: 612, column: 5, scope: !2086)
!2097 = !DILocation(line: 614, column: 5, scope: !2086)
!2098 = distinct !DISubprogram(name: "eval_public_map", scope: !68, file: !68, line: 288, type: !2099, scopeLine: 288, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !71)
!2099 = !DISubroutineType(types: !2100)
!2100 = !{null, !264, !90, !411, !411, !411, !61}
!2101 = !DILocalVariable(name: "p", arg: 1, scope: !2098, file: !68, line: 288, type: !264)
!2102 = !DILocation(line: 0, scope: !2098)
!2103 = !DILocalVariable(name: "s", arg: 2, scope: !2098, file: !68, line: 288, type: !90)
!2104 = !DILocalVariable(name: "P1", arg: 3, scope: !2098, file: !68, line: 288, type: !411)
!2105 = !DILocalVariable(name: "P2", arg: 4, scope: !2098, file: !68, line: 288, type: !411)
!2106 = !DILocalVariable(name: "P3", arg: 5, scope: !2098, file: !68, line: 288, type: !411)
!2107 = !DILocalVariable(name: "eval", arg: 6, scope: !2098, file: !68, line: 288, type: !61)
!2108 = !DILocalVariable(name: "SPS", scope: !2098, file: !68, line: 289, type: !2109)
!2109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 4096, elements: !821)
!2110 = !DILocation(line: 289, column: 14, scope: !2098)
!2111 = !DILocation(line: 291, column: 5, scope: !2098)
!2112 = !DILocalVariable(name: "zero", scope: !2098, file: !68, line: 292, type: !820)
!2113 = !DILocation(line: 292, column: 19, scope: !2098)
!2114 = !DILocation(line: 293, column: 5, scope: !2098)
!2115 = !DILocation(line: 294, column: 1, scope: !2098)
!2116 = distinct !DISubprogram(name: "m_calculate_PS_SPS", scope: !408, file: !408, line: 277, type: !2117, scopeLine: 278, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !71)
!2117 = !DISubroutineType(types: !2118)
!2118 = !{null, !264, !411, !411, !411, !90, !52}
!2119 = !DILocalVariable(name: "p", arg: 1, scope: !2116, file: !408, line: 277, type: !264)
!2120 = !DILocation(line: 0, scope: !2116)
!2121 = !DILocalVariable(name: "P1", arg: 2, scope: !2116, file: !408, line: 277, type: !411)
!2122 = !DILocalVariable(name: "P2", arg: 3, scope: !2116, file: !408, line: 277, type: !411)
!2123 = !DILocalVariable(name: "P3", arg: 4, scope: !2116, file: !408, line: 277, type: !411)
!2124 = !DILocalVariable(name: "s", arg: 5, scope: !2116, file: !408, line: 277, type: !90)
!2125 = !DILocalVariable(name: "SPS", arg: 6, scope: !2116, file: !408, line: 278, type: !52)
!2126 = !DILocalVariable(name: "PS", scope: !2116, file: !408, line: 286, type: !2127)
!2127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 82944, elements: !2128)
!2128 = !{!2129}
!2129 = !DISubrange(count: 1296)
!2130 = !DILocation(line: 286, column: 14, scope: !2116)
!2131 = !DILocation(line: 287, column: 5, scope: !2116)
!2132 = !DILocation(line: 290, column: 5, scope: !2116)
!2133 = !DILocation(line: 292, column: 1, scope: !2116)
!2134 = distinct !DISubprogram(name: "mayo_generic_m_calculate_PS", scope: !408, file: !408, line: 151, type: !2135, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !71)
!2135 = !DISubroutineType(types: !2136)
!2136 = !{null, !411, !411, !411, !90, !324, !324, !324, !324, !52}
!2137 = !DILocalVariable(name: "P1", arg: 1, scope: !2134, file: !408, line: 151, type: !411)
!2138 = !DILocation(line: 0, scope: !2134)
!2139 = !DILocalVariable(name: "P2", arg: 2, scope: !2134, file: !408, line: 151, type: !411)
!2140 = !DILocalVariable(name: "P3", arg: 3, scope: !2134, file: !408, line: 151, type: !411)
!2141 = !DILocalVariable(name: "S", arg: 4, scope: !2134, file: !408, line: 151, type: !90)
!2142 = !DILocalVariable(name: "m", arg: 5, scope: !2134, file: !408, line: 152, type: !324)
!2143 = !DILocalVariable(name: "v", arg: 6, scope: !2134, file: !408, line: 152, type: !324)
!2144 = !DILocalVariable(name: "o", arg: 7, scope: !2134, file: !408, line: 152, type: !324)
!2145 = !DILocalVariable(name: "k", arg: 8, scope: !2134, file: !408, line: 152, type: !324)
!2146 = !DILocalVariable(name: "PS", arg: 9, scope: !2134, file: !408, line: 152, type: !52)
!2147 = !DILocation(line: 154, column: 21, scope: !2134)
!2148 = !DILocalVariable(name: "n", scope: !2134, file: !408, line: 154, type: !324)
!2149 = !DILocation(line: 155, column: 32, scope: !2134)
!2150 = !DILocation(line: 155, column: 37, scope: !2134)
!2151 = !DILocalVariable(name: "m_vec_limbs", scope: !2134, file: !408, line: 155, type: !324)
!2152 = !DILocalVariable(name: "accumulator", scope: !2134, file: !408, line: 157, type: !2153)
!2153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 1327104, elements: !2154)
!2154 = !{!2155}
!2155 = !DISubrange(count: 20736)
!2156 = !DILocation(line: 157, column: 14, scope: !2134)
!2157 = !DILocalVariable(name: "P1_used", scope: !2134, file: !408, line: 158, type: !86)
!2158 = !DILocalVariable(name: "row", scope: !2159, file: !408, line: 159, type: !86)
!2159 = distinct !DILexicalBlock(scope: !2134, file: !408, line: 159, column: 5)
!2160 = !DILocation(line: 0, scope: !2159)
!2161 = !DILocation(line: 159, column: 10, scope: !2159)
!2162 = !DILocation(line: 158, column: 9, scope: !2134)
!2163 = !DILocation(line: 159, scope: !2159)
!2164 = !DILocation(line: 159, column: 27, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2159, file: !408, line: 159, column: 5)
!2166 = !DILocation(line: 159, column: 5, scope: !2159)
!2167 = !DILocation(line: 160, column: 9, scope: !2168)
!2168 = distinct !DILexicalBlock(scope: !2169, file: !408, line: 160, column: 9)
!2169 = distinct !DILexicalBlock(scope: !2165, file: !408, line: 159, column: 39)
!2170 = !DILocation(line: 175, column: 5, scope: !2171)
!2171 = distinct !DILexicalBlock(scope: !2134, file: !408, line: 175, column: 5)
!2172 = !DILocation(line: 160, scope: !2168)
!2173 = !DILocalVariable(name: "j", scope: !2168, file: !408, line: 160, type: !86)
!2174 = !DILocation(line: 0, scope: !2168)
!2175 = !DILocation(line: 160, column: 29, scope: !2176)
!2176 = distinct !DILexicalBlock(scope: !2168, file: !408, line: 160, column: 9)
!2177 = !DILocation(line: 167, column: 9, scope: !2178)
!2178 = distinct !DILexicalBlock(scope: !2169, file: !408, line: 167, column: 9)
!2179 = !DILocation(line: 161, column: 13, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !2181, file: !408, line: 161, column: 13)
!2181 = distinct !DILexicalBlock(scope: !2176, file: !408, line: 160, column: 39)
!2182 = !DILocation(line: 161, scope: !2180)
!2183 = !DILocalVariable(name: "col", scope: !2180, file: !408, line: 161, type: !86)
!2184 = !DILocation(line: 0, scope: !2180)
!2185 = !DILocation(line: 161, column: 35, scope: !2186)
!2186 = distinct !DILexicalBlock(scope: !2180, file: !408, line: 161, column: 13)
!2187 = !DILocation(line: 162, column: 54, scope: !2188)
!2188 = distinct !DILexicalBlock(scope: !2186, file: !408, line: 161, column: 47)
!2189 = !DILocation(line: 162, column: 43, scope: !2188)
!2190 = !DILocation(line: 162, column: 91, scope: !2188)
!2191 = !DILocation(line: 162, column: 95, scope: !2188)
!2192 = !DILocation(line: 162, column: 102, scope: !2188)
!2193 = !DILocation(line: 162, column: 115, scope: !2188)
!2194 = !DILocation(line: 162, column: 109, scope: !2188)
!2195 = !DILocation(line: 162, column: 107, scope: !2188)
!2196 = !DILocation(line: 162, column: 125, scope: !2188)
!2197 = !DILocation(line: 162, column: 82, scope: !2188)
!2198 = !DILocation(line: 162, column: 17, scope: !2188)
!2199 = !DILocation(line: 161, column: 43, scope: !2186)
!2200 = !DILocation(line: 161, column: 13, scope: !2186)
!2201 = distinct !{!2201, !2179, !2202, !388}
!2202 = !DILocation(line: 163, column: 13, scope: !2180)
!2203 = !DILocation(line: 164, column: 21, scope: !2181)
!2204 = !DILocation(line: 160, column: 35, scope: !2176)
!2205 = !DILocation(line: 160, column: 9, scope: !2176)
!2206 = distinct !{!2206, !2167, !2207, !388}
!2207 = !DILocation(line: 165, column: 9, scope: !2168)
!2208 = !DILocation(line: 167, scope: !2178)
!2209 = !DILocalVariable(name: "j", scope: !2178, file: !408, line: 167, type: !86)
!2210 = !DILocation(line: 0, scope: !2178)
!2211 = !DILocation(line: 167, column: 27, scope: !2212)
!2212 = distinct !DILexicalBlock(scope: !2178, file: !408, line: 167, column: 9)
!2213 = !DILocation(line: 168, column: 13, scope: !2214)
!2214 = distinct !DILexicalBlock(scope: !2215, file: !408, line: 168, column: 13)
!2215 = distinct !DILexicalBlock(scope: !2212, file: !408, line: 167, column: 37)
!2216 = !DILocation(line: 168, scope: !2214)
!2217 = !DILocalVariable(name: "col", scope: !2214, file: !408, line: 168, type: !86)
!2218 = !DILocation(line: 0, scope: !2214)
!2219 = !DILocation(line: 168, column: 35, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !2214, file: !408, line: 168, column: 13)
!2221 = !DILocation(line: 169, column: 50, scope: !2222)
!2222 = distinct !DILexicalBlock(scope: !2220, file: !408, line: 168, column: 47)
!2223 = !DILocation(line: 169, column: 54, scope: !2222)
!2224 = !DILocation(line: 169, column: 58, scope: !2222)
!2225 = !DILocation(line: 169, column: 43, scope: !2222)
!2226 = !DILocation(line: 169, column: 93, scope: !2222)
!2227 = !DILocation(line: 169, column: 97, scope: !2222)
!2228 = !DILocation(line: 169, column: 104, scope: !2222)
!2229 = !DILocation(line: 169, column: 118, scope: !2222)
!2230 = !DILocation(line: 169, column: 111, scope: !2222)
!2231 = !DILocation(line: 169, column: 109, scope: !2222)
!2232 = !DILocation(line: 169, column: 133, scope: !2222)
!2233 = !DILocation(line: 169, column: 84, scope: !2222)
!2234 = !DILocation(line: 169, column: 17, scope: !2222)
!2235 = !DILocation(line: 168, column: 43, scope: !2220)
!2236 = !DILocation(line: 168, column: 13, scope: !2220)
!2237 = distinct !{!2237, !2213, !2238, !388}
!2238 = !DILocation(line: 170, column: 13, scope: !2214)
!2239 = !DILocation(line: 167, column: 33, scope: !2212)
!2240 = !DILocation(line: 167, column: 9, scope: !2212)
!2241 = distinct !{!2241, !2177, !2242, !388}
!2242 = !DILocation(line: 171, column: 9, scope: !2178)
!2243 = !DILocation(line: 159, column: 35, scope: !2165)
!2244 = !DILocation(line: 159, column: 5, scope: !2165)
!2245 = distinct !{!2245, !2166, !2246, !388}
!2246 = !DILocation(line: 172, column: 5, scope: !2159)
!2247 = !DILocation(line: 174, column: 9, scope: !2134)
!2248 = !DILocation(line: 175, scope: !2171)
!2249 = !DILocalVariable(name: "row", scope: !2171, file: !408, line: 175, type: !86)
!2250 = !DILocation(line: 0, scope: !2171)
!2251 = !DILocalVariable(name: "P3_used", scope: !2134, file: !408, line: 174, type: !86)
!2252 = !DILocation(line: 175, column: 27, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !2171, file: !408, line: 175, column: 5)
!2254 = !DILocation(line: 176, column: 9, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !2256, file: !408, line: 176, column: 9)
!2256 = distinct !DILexicalBlock(scope: !2253, file: !408, line: 175, column: 39)
!2257 = !DILocation(line: 186, column: 5, scope: !2134)
!2258 = !DILocation(line: 176, scope: !2255)
!2259 = !DILocalVariable(name: "j", scope: !2255, file: !408, line: 176, type: !86)
!2260 = !DILocation(line: 0, scope: !2255)
!2261 = !DILocation(line: 176, column: 29, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !2255, file: !408, line: 176, column: 9)
!2263 = !DILocation(line: 177, column: 13, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2265, file: !408, line: 177, column: 13)
!2265 = distinct !DILexicalBlock(scope: !2262, file: !408, line: 176, column: 39)
!2266 = !DILocation(line: 177, scope: !2264)
!2267 = !DILocalVariable(name: "col", scope: !2264, file: !408, line: 177, type: !86)
!2268 = !DILocation(line: 0, scope: !2264)
!2269 = !DILocation(line: 177, column: 35, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !2264, file: !408, line: 177, column: 13)
!2271 = !DILocation(line: 178, column: 53, scope: !2272)
!2272 = distinct !DILexicalBlock(scope: !2270, file: !408, line: 177, column: 47)
!2273 = !DILocation(line: 178, column: 43, scope: !2272)
!2274 = !DILocation(line: 178, column: 89, scope: !2272)
!2275 = !DILocation(line: 178, column: 93, scope: !2272)
!2276 = !DILocation(line: 178, column: 100, scope: !2272)
!2277 = !DILocation(line: 178, column: 113, scope: !2272)
!2278 = !DILocation(line: 178, column: 107, scope: !2272)
!2279 = !DILocation(line: 178, column: 105, scope: !2272)
!2280 = !DILocation(line: 178, column: 123, scope: !2272)
!2281 = !DILocation(line: 178, column: 80, scope: !2272)
!2282 = !DILocation(line: 178, column: 17, scope: !2272)
!2283 = !DILocation(line: 177, column: 43, scope: !2270)
!2284 = !DILocation(line: 177, column: 13, scope: !2270)
!2285 = distinct !{!2285, !2263, !2286, !388}
!2286 = !DILocation(line: 179, column: 13, scope: !2264)
!2287 = !DILocation(line: 180, column: 21, scope: !2265)
!2288 = !DILocation(line: 176, column: 35, scope: !2262)
!2289 = !DILocation(line: 176, column: 9, scope: !2262)
!2290 = distinct !{!2290, !2254, !2291, !388}
!2291 = !DILocation(line: 181, column: 9, scope: !2255)
!2292 = !DILocation(line: 175, column: 35, scope: !2253)
!2293 = !DILocation(line: 175, column: 5, scope: !2253)
!2294 = distinct !{!2294, !2170, !2295, !388}
!2295 = !DILocation(line: 182, column: 5, scope: !2171)
!2296 = !DILocalVariable(name: "i", scope: !2134, file: !408, line: 185, type: !86)
!2297 = !DILocation(line: 186, column: 14, scope: !2134)
!2298 = !DILocation(line: 187, column: 58, scope: !2299)
!2299 = distinct !DILexicalBlock(scope: !2134, file: !408, line: 186, column: 23)
!2300 = !DILocation(line: 187, column: 63, scope: !2299)
!2301 = !DILocation(line: 187, column: 54, scope: !2299)
!2302 = !DILocation(line: 187, column: 85, scope: !2299)
!2303 = !DILocation(line: 187, column: 81, scope: !2299)
!2304 = !DILocation(line: 187, column: 9, scope: !2299)
!2305 = !DILocation(line: 188, column: 10, scope: !2299)
!2306 = distinct !{!2306, !2257, !2307, !388}
!2307 = !DILocation(line: 189, column: 5, scope: !2134)
!2308 = !DILocation(line: 191, column: 1, scope: !2134)
!2309 = distinct !DISubprogram(name: "mayo_generic_m_calculate_SPS", scope: !408, file: !408, line: 195, type: !2310, scopeLine: 195, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !71)
!2310 = !DISubroutineType(types: !2311)
!2311 = !{null, !411, !90, !86, !86, !86, !52}
!2312 = !DILocalVariable(name: "PS", arg: 1, scope: !2309, file: !408, line: 195, type: !411)
!2313 = !DILocation(line: 0, scope: !2309)
!2314 = !DILocalVariable(name: "S", arg: 2, scope: !2309, file: !408, line: 195, type: !90)
!2315 = !DILocalVariable(name: "m", arg: 3, scope: !2309, file: !408, line: 195, type: !86)
!2316 = !DILocalVariable(name: "k", arg: 4, scope: !2309, file: !408, line: 195, type: !86)
!2317 = !DILocalVariable(name: "n", arg: 5, scope: !2309, file: !408, line: 195, type: !86)
!2318 = !DILocalVariable(name: "SPS", arg: 6, scope: !2309, file: !408, line: 195, type: !52)
!2319 = !DILocalVariable(name: "accumulator", scope: !2309, file: !408, line: 196, type: !1029)
!2320 = !DILocation(line: 196, column: 14, scope: !2309)
!2321 = !DILocation(line: 197, column: 32, scope: !2309)
!2322 = !DILocation(line: 197, column: 37, scope: !2309)
!2323 = !DILocalVariable(name: "m_vec_limbs", scope: !2309, file: !408, line: 197, type: !324)
!2324 = !DILocalVariable(name: "row", scope: !2325, file: !408, line: 198, type: !86)
!2325 = distinct !DILexicalBlock(scope: !2309, file: !408, line: 198, column: 5)
!2326 = !DILocation(line: 0, scope: !2325)
!2327 = !DILocation(line: 198, column: 10, scope: !2325)
!2328 = !DILocation(line: 198, scope: !2325)
!2329 = !DILocation(line: 198, column: 27, scope: !2330)
!2330 = distinct !DILexicalBlock(scope: !2325, file: !408, line: 198, column: 5)
!2331 = !DILocation(line: 198, column: 5, scope: !2325)
!2332 = !DILocation(line: 199, column: 9, scope: !2333)
!2333 = distinct !DILexicalBlock(scope: !2334, file: !408, line: 199, column: 9)
!2334 = distinct !DILexicalBlock(scope: !2330, file: !408, line: 198, column: 39)
!2335 = !DILocation(line: 208, column: 5, scope: !2309)
!2336 = !DILocation(line: 199, scope: !2333)
!2337 = !DILocalVariable(name: "j", scope: !2333, file: !408, line: 199, type: !86)
!2338 = !DILocation(line: 0, scope: !2333)
!2339 = !DILocation(line: 199, column: 27, scope: !2340)
!2340 = distinct !DILexicalBlock(scope: !2333, file: !408, line: 199, column: 9)
!2341 = !DILocation(line: 200, column: 13, scope: !2342)
!2342 = distinct !DILexicalBlock(scope: !2343, file: !408, line: 200, column: 13)
!2343 = distinct !DILexicalBlock(scope: !2340, file: !408, line: 199, column: 37)
!2344 = !DILocation(line: 200, scope: !2342)
!2345 = !DILocalVariable(name: "col", scope: !2342, file: !408, line: 200, type: !86)
!2346 = !DILocation(line: 0, scope: !2342)
!2347 = !DILocation(line: 200, column: 35, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !2342, file: !408, line: 200, column: 13)
!2349 = !DILocation(line: 201, column: 52, scope: !2350)
!2350 = distinct !DILexicalBlock(scope: !2348, file: !408, line: 200, column: 50)
!2351 = !DILocation(line: 201, column: 56, scope: !2350)
!2352 = !DILocation(line: 201, column: 63, scope: !2350)
!2353 = !DILocation(line: 201, column: 47, scope: !2350)
!2354 = !DILocation(line: 201, column: 99, scope: !2350)
!2355 = !DILocation(line: 201, column: 103, scope: !2350)
!2356 = !DILocation(line: 201, column: 110, scope: !2350)
!2357 = !DILocation(line: 201, column: 123, scope: !2350)
!2358 = !DILocation(line: 201, column: 117, scope: !2350)
!2359 = !DILocation(line: 201, column: 115, scope: !2350)
!2360 = !DILocation(line: 201, column: 133, scope: !2350)
!2361 = !DILocation(line: 201, column: 90, scope: !2350)
!2362 = !DILocation(line: 201, column: 21, scope: !2350)
!2363 = !DILocation(line: 200, column: 44, scope: !2348)
!2364 = !DILocation(line: 200, column: 13, scope: !2348)
!2365 = distinct !{!2365, !2341, !2366, !388}
!2366 = !DILocation(line: 202, column: 13, scope: !2342)
!2367 = !DILocation(line: 199, column: 33, scope: !2340)
!2368 = !DILocation(line: 199, column: 9, scope: !2340)
!2369 = distinct !{!2369, !2332, !2370, !388}
!2370 = !DILocation(line: 203, column: 9, scope: !2333)
!2371 = !DILocation(line: 198, column: 35, scope: !2330)
!2372 = !DILocation(line: 198, column: 5, scope: !2330)
!2373 = distinct !{!2373, !2331, !2374, !388}
!2374 = !DILocation(line: 204, column: 5, scope: !2325)
!2375 = !DILocalVariable(name: "i", scope: !2309, file: !408, line: 207, type: !86)
!2376 = !DILocation(line: 208, column: 14, scope: !2309)
!2377 = !DILocation(line: 209, column: 58, scope: !2378)
!2378 = distinct !DILexicalBlock(scope: !2309, file: !408, line: 208, column: 21)
!2379 = !DILocation(line: 209, column: 63, scope: !2378)
!2380 = !DILocation(line: 209, column: 54, scope: !2378)
!2381 = !DILocation(line: 209, column: 86, scope: !2378)
!2382 = !DILocation(line: 209, column: 82, scope: !2378)
!2383 = !DILocation(line: 209, column: 9, scope: !2378)
!2384 = !DILocation(line: 210, column: 10, scope: !2378)
!2385 = distinct !{!2385, !2335, !2386, !388}
!2386 = !DILocation(line: 211, column: 5, scope: !2309)
!2387 = !DILocation(line: 212, column: 1, scope: !2309)
!2388 = distinct !DISubprogram(name: "m_vec_add", scope: !529, file: !529, line: 22, type: !2389, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !71)
!2389 = !DISubroutineType(types: !2390)
!2390 = !{null, !86, !411, !52}
!2391 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2388, file: !529, line: 22, type: !86)
!2392 = !DILocation(line: 0, scope: !2388)
!2393 = !DILocalVariable(name: "in", arg: 2, scope: !2388, file: !529, line: 22, type: !411)
!2394 = !DILocalVariable(name: "acc", arg: 3, scope: !2388, file: !529, line: 22, type: !52)
!2395 = !DILocalVariable(name: "i", scope: !2396, file: !529, line: 24, type: !58)
!2396 = distinct !DILexicalBlock(scope: !2388, file: !529, line: 24, column: 5)
!2397 = !DILocation(line: 0, scope: !2396)
!2398 = !DILocation(line: 24, column: 10, scope: !2396)
!2399 = !DILocation(line: 24, scope: !2396)
!2400 = !DILocation(line: 24, column: 26, scope: !2401)
!2401 = distinct !DILexicalBlock(scope: !2396, file: !529, line: 24, column: 5)
!2402 = !DILocation(line: 24, column: 5, scope: !2396)
!2403 = !DILocation(line: 26, column: 19, scope: !2404)
!2404 = distinct !DILexicalBlock(scope: !2401, file: !529, line: 25, column: 5)
!2405 = !DILocation(line: 26, column: 9, scope: !2404)
!2406 = !DILocation(line: 26, column: 16, scope: !2404)
!2407 = !DILocation(line: 24, column: 46, scope: !2401)
!2408 = !DILocation(line: 24, column: 5, scope: !2401)
!2409 = distinct !{!2409, !2402, !2410, !388}
!2410 = !DILocation(line: 27, column: 5, scope: !2396)
!2411 = !DILocation(line: 28, column: 1, scope: !2388)
!2412 = distinct !DISubprogram(name: "m_vec_multiply_bins", scope: !529, file: !529, line: 66, type: !2413, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !71)
!2413 = !DISubroutineType(types: !2414)
!2414 = !{null, !86, !52, !52}
!2415 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2412, file: !529, line: 66, type: !86)
!2416 = !DILocation(line: 0, scope: !2412)
!2417 = !DILocalVariable(name: "bins", arg: 2, scope: !2412, file: !529, line: 66, type: !52)
!2418 = !DILocalVariable(name: "out", arg: 3, scope: !2412, file: !529, line: 66, type: !52)
!2419 = !DILocation(line: 67, column: 44, scope: !2412)
!2420 = !DILocation(line: 67, column: 73, scope: !2412)
!2421 = !DILocation(line: 67, column: 5, scope: !2412)
!2422 = !DILocation(line: 68, column: 40, scope: !2412)
!2423 = !DILocation(line: 68, column: 69, scope: !2412)
!2424 = !DILocation(line: 68, column: 5, scope: !2412)
!2425 = !DILocation(line: 69, column: 44, scope: !2412)
!2426 = !DILocation(line: 69, column: 74, scope: !2412)
!2427 = !DILocation(line: 69, column: 5, scope: !2412)
!2428 = !DILocation(line: 70, column: 40, scope: !2412)
!2429 = !DILocation(line: 70, column: 69, scope: !2412)
!2430 = !DILocation(line: 70, column: 5, scope: !2412)
!2431 = !DILocation(line: 71, column: 44, scope: !2412)
!2432 = !DILocation(line: 71, column: 73, scope: !2412)
!2433 = !DILocation(line: 71, column: 5, scope: !2412)
!2434 = !DILocation(line: 72, column: 40, scope: !2412)
!2435 = !DILocation(line: 72, column: 69, scope: !2412)
!2436 = !DILocation(line: 72, column: 5, scope: !2412)
!2437 = !DILocation(line: 73, column: 44, scope: !2412)
!2438 = !DILocation(line: 73, column: 74, scope: !2412)
!2439 = !DILocation(line: 73, column: 5, scope: !2412)
!2440 = !DILocation(line: 74, column: 40, scope: !2412)
!2441 = !DILocation(line: 74, column: 69, scope: !2412)
!2442 = !DILocation(line: 74, column: 5, scope: !2412)
!2443 = !DILocation(line: 75, column: 44, scope: !2412)
!2444 = !DILocation(line: 75, column: 74, scope: !2412)
!2445 = !DILocation(line: 75, column: 5, scope: !2412)
!2446 = !DILocation(line: 76, column: 40, scope: !2412)
!2447 = !DILocation(line: 76, column: 69, scope: !2412)
!2448 = !DILocation(line: 76, column: 5, scope: !2412)
!2449 = !DILocation(line: 77, column: 44, scope: !2412)
!2450 = !DILocation(line: 77, column: 74, scope: !2412)
!2451 = !DILocation(line: 77, column: 5, scope: !2412)
!2452 = !DILocation(line: 78, column: 40, scope: !2412)
!2453 = !DILocation(line: 78, column: 69, scope: !2412)
!2454 = !DILocation(line: 78, column: 5, scope: !2412)
!2455 = !DILocation(line: 79, column: 44, scope: !2412)
!2456 = !DILocation(line: 79, column: 74, scope: !2412)
!2457 = !DILocation(line: 79, column: 5, scope: !2412)
!2458 = !DILocation(line: 80, column: 40, scope: !2412)
!2459 = !DILocation(line: 80, column: 69, scope: !2412)
!2460 = !DILocation(line: 80, column: 5, scope: !2412)
!2461 = !DILocation(line: 81, column: 35, scope: !2412)
!2462 = !DILocation(line: 81, column: 5, scope: !2412)
!2463 = !DILocation(line: 82, column: 1, scope: !2412)
!2464 = distinct !DISubprogram(name: "m_vec_mul_add_x_inv", scope: !529, file: !529, line: 56, type: !2389, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !71)
!2465 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2464, file: !529, line: 56, type: !86)
!2466 = !DILocation(line: 0, scope: !2464)
!2467 = !DILocalVariable(name: "in", arg: 2, scope: !2464, file: !529, line: 56, type: !411)
!2468 = !DILocalVariable(name: "acc", arg: 3, scope: !2464, file: !529, line: 56, type: !52)
!2469 = !DILocalVariable(name: "mask_lsb", scope: !2464, file: !529, line: 58, type: !53)
!2470 = !DILocalVariable(name: "i", scope: !2471, file: !529, line: 59, type: !86)
!2471 = distinct !DILexicalBlock(scope: !2464, file: !529, line: 59, column: 5)
!2472 = !DILocation(line: 0, scope: !2471)
!2473 = !DILocation(line: 59, column: 9, scope: !2471)
!2474 = !DILocation(line: 59, scope: !2471)
!2475 = !DILocation(line: 59, column: 20, scope: !2476)
!2476 = distinct !DILexicalBlock(scope: !2471, file: !529, line: 59, column: 5)
!2477 = !DILocation(line: 59, column: 5, scope: !2471)
!2478 = !DILocation(line: 60, column: 22, scope: !2479)
!2479 = distinct !DILexicalBlock(scope: !2476, file: !529, line: 59, column: 43)
!2480 = !DILocation(line: 60, column: 28, scope: !2479)
!2481 = !DILocalVariable(name: "t", scope: !2479, file: !529, line: 60, type: !53)
!2482 = !DILocation(line: 0, scope: !2479)
!2483 = !DILocation(line: 61, column: 32, scope: !2479)
!2484 = !DILocation(line: 61, column: 43, scope: !2479)
!2485 = !DILocation(line: 61, column: 38, scope: !2479)
!2486 = !DILocation(line: 61, column: 9, scope: !2479)
!2487 = !DILocation(line: 61, column: 16, scope: !2479)
!2488 = !DILocation(line: 59, column: 40, scope: !2476)
!2489 = !DILocation(line: 59, column: 5, scope: !2476)
!2490 = distinct !{!2490, !2477, !2491, !388}
!2491 = !DILocation(line: 62, column: 5, scope: !2471)
!2492 = !DILocation(line: 63, column: 1, scope: !2464)
!2493 = distinct !DISubprogram(name: "m_vec_mul_add_x", scope: !529, file: !529, line: 46, type: !2389, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !71)
!2494 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2493, file: !529, line: 46, type: !86)
!2495 = !DILocation(line: 0, scope: !2493)
!2496 = !DILocalVariable(name: "in", arg: 2, scope: !2493, file: !529, line: 46, type: !411)
!2497 = !DILocalVariable(name: "acc", arg: 3, scope: !2493, file: !529, line: 46, type: !52)
!2498 = !DILocalVariable(name: "mask_msb", scope: !2493, file: !529, line: 48, type: !53)
!2499 = !DILocalVariable(name: "i", scope: !2500, file: !529, line: 49, type: !86)
!2500 = distinct !DILexicalBlock(scope: !2493, file: !529, line: 49, column: 5)
!2501 = !DILocation(line: 0, scope: !2500)
!2502 = !DILocation(line: 49, column: 9, scope: !2500)
!2503 = !DILocation(line: 49, scope: !2500)
!2504 = !DILocation(line: 49, column: 20, scope: !2505)
!2505 = distinct !DILexicalBlock(scope: !2500, file: !529, line: 49, column: 5)
!2506 = !DILocation(line: 49, column: 5, scope: !2500)
!2507 = !DILocation(line: 50, column: 22, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !2505, file: !529, line: 49, column: 43)
!2509 = !DILocalVariable(name: "t", scope: !2508, file: !529, line: 50, type: !53)
!2510 = !DILocation(line: 0, scope: !2508)
!2511 = !DILocation(line: 51, column: 32, scope: !2508)
!2512 = !DILocation(line: 51, column: 44, scope: !2508)
!2513 = !DILocation(line: 51, column: 50, scope: !2508)
!2514 = !DILocation(line: 51, column: 38, scope: !2508)
!2515 = !DILocation(line: 51, column: 9, scope: !2508)
!2516 = !DILocation(line: 51, column: 16, scope: !2508)
!2517 = !DILocation(line: 49, column: 40, scope: !2505)
!2518 = !DILocation(line: 49, column: 5, scope: !2505)
!2519 = distinct !{!2519, !2506, !2520, !388}
!2520 = !DILocation(line: 52, column: 5, scope: !2500)
!2521 = !DILocation(line: 53, column: 1, scope: !2493)
!2522 = distinct !DISubprogram(name: "m_vec_copy", scope: !529, file: !529, line: 13, type: !2389, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !71)
!2523 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2522, file: !529, line: 13, type: !86)
!2524 = !DILocation(line: 0, scope: !2522)
!2525 = !DILocalVariable(name: "in", arg: 2, scope: !2522, file: !529, line: 13, type: !411)
!2526 = !DILocalVariable(name: "out", arg: 3, scope: !2522, file: !529, line: 13, type: !52)
!2527 = !DILocalVariable(name: "i", scope: !2528, file: !529, line: 15, type: !58)
!2528 = distinct !DILexicalBlock(scope: !2522, file: !529, line: 15, column: 5)
!2529 = !DILocation(line: 0, scope: !2528)
!2530 = !DILocation(line: 15, column: 10, scope: !2528)
!2531 = !DILocation(line: 15, scope: !2528)
!2532 = !DILocation(line: 15, column: 26, scope: !2533)
!2533 = distinct !DILexicalBlock(scope: !2528, file: !529, line: 15, column: 5)
!2534 = !DILocation(line: 15, column: 5, scope: !2528)
!2535 = !DILocation(line: 17, column: 18, scope: !2536)
!2536 = distinct !DILexicalBlock(scope: !2533, file: !529, line: 16, column: 5)
!2537 = !DILocation(line: 17, column: 9, scope: !2536)
!2538 = !DILocation(line: 17, column: 16, scope: !2536)
!2539 = !DILocation(line: 15, column: 46, scope: !2533)
!2540 = !DILocation(line: 15, column: 5, scope: !2533)
!2541 = distinct !{!2541, !2534, !2542, !388}
!2542 = !DILocation(line: 18, column: 5, scope: !2528)
!2543 = !DILocation(line: 19, column: 1, scope: !2522)
!2544 = distinct !DISubprogram(name: "pqmayo_MAYO_2_ref_m_upper", scope: !99, file: !99, line: 14, type: !2545, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !84, retainedNodes: !71)
!2545 = !DISubroutineType(types: !2546)
!2546 = !{null, !2547, !411, !52, !86}
!2547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2548, size: 32)
!2548 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2549)
!2549 = !DIDerivedType(tag: DW_TAG_typedef, name: "mayo_params_t", file: !79, line: 289, baseType: !2550)
!2550 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !79, line: 265, size: 736, elements: !2551)
!2551 = !{!2552, !2553, !2554, !2555, !2556, !2557, !2558, !2559, !2560, !2561, !2562, !2563, !2564, !2565, !2566, !2567, !2568, !2569, !2570, !2571, !2572, !2573, !2574}
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !2550, file: !79, line: 266, baseType: !86, size: 32)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !2550, file: !79, line: 267, baseType: !86, size: 32, offset: 32)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "o", scope: !2550, file: !79, line: 268, baseType: !86, size: 32, offset: 64)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !2550, file: !79, line: 269, baseType: !86, size: 32, offset: 96)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2550, file: !79, line: 270, baseType: !86, size: 32, offset: 128)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "f_tail", scope: !2550, file: !79, line: 271, baseType: !90, size: 32, offset: 160)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "m_bytes", scope: !2550, file: !79, line: 272, baseType: !86, size: 32, offset: 192)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "O_bytes", scope: !2550, file: !79, line: 273, baseType: !86, size: 32, offset: 224)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "v_bytes", scope: !2550, file: !79, line: 274, baseType: !86, size: 32, offset: 256)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "r_bytes", scope: !2550, file: !79, line: 275, baseType: !86, size: 32, offset: 288)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "R_bytes", scope: !2550, file: !79, line: 276, baseType: !86, size: 32, offset: 320)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "P1_bytes", scope: !2550, file: !79, line: 277, baseType: !86, size: 32, offset: 352)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "P2_bytes", scope: !2550, file: !79, line: 278, baseType: !86, size: 32, offset: 384)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "P3_bytes", scope: !2550, file: !79, line: 279, baseType: !86, size: 32, offset: 416)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "csk_bytes", scope: !2550, file: !79, line: 280, baseType: !86, size: 32, offset: 448)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "cpk_bytes", scope: !2550, file: !79, line: 281, baseType: !86, size: 32, offset: 480)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "sig_bytes", scope: !2550, file: !79, line: 282, baseType: !86, size: 32, offset: 512)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "salt_bytes", scope: !2550, file: !79, line: 283, baseType: !86, size: 32, offset: 544)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "sk_seed_bytes", scope: !2550, file: !79, line: 284, baseType: !86, size: 32, offset: 576)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "digest_bytes", scope: !2550, file: !79, line: 285, baseType: !86, size: 32, offset: 608)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "pk_seed_bytes", scope: !2550, file: !79, line: 286, baseType: !86, size: 32, offset: 640)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "m_vec_limbs", scope: !2550, file: !79, line: 287, baseType: !86, size: 32, offset: 672)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2550, file: !79, line: 288, baseType: !149, size: 32, offset: 704)
!2575 = !DILocalVariable(name: "p", arg: 1, scope: !2544, file: !99, line: 14, type: !2547)
!2576 = !DILocation(line: 0, scope: !2544)
!2577 = !DILocalVariable(name: "in", arg: 2, scope: !2544, file: !99, line: 14, type: !411)
!2578 = !DILocalVariable(name: "out", arg: 3, scope: !2544, file: !99, line: 14, type: !52)
!2579 = !DILocalVariable(name: "size", arg: 4, scope: !2544, file: !99, line: 14, type: !86)
!2580 = !DILocalVariable(name: "m_vec_limbs", scope: !2544, file: !99, line: 19, type: !324)
!2581 = !DILocalVariable(name: "m_vecs_stored", scope: !2544, file: !99, line: 20, type: !86)
!2582 = !DILocalVariable(name: "r", scope: !2583, file: !99, line: 21, type: !86)
!2583 = distinct !DILexicalBlock(scope: !2544, file: !99, line: 21, column: 5)
!2584 = !DILocation(line: 0, scope: !2583)
!2585 = !DILocation(line: 21, column: 10, scope: !2583)
!2586 = !DILocation(line: 20, column: 9, scope: !2544)
!2587 = !DILocation(line: 21, scope: !2583)
!2588 = !DILocation(line: 21, column: 23, scope: !2589)
!2589 = distinct !DILexicalBlock(scope: !2583, file: !99, line: 21, column: 5)
!2590 = !DILocation(line: 21, column: 5, scope: !2583)
!2591 = !DILocation(line: 22, column: 9, scope: !2592)
!2592 = distinct !DILexicalBlock(scope: !2593, file: !99, line: 22, column: 9)
!2593 = distinct !DILexicalBlock(scope: !2589, file: !99, line: 21, column: 36)
!2594 = !DILocation(line: 22, scope: !2592)
!2595 = !DILocalVariable(name: "c", scope: !2592, file: !99, line: 22, type: !86)
!2596 = !DILocation(line: 0, scope: !2592)
!2597 = !DILocation(line: 22, column: 27, scope: !2598)
!2598 = distinct !DILexicalBlock(scope: !2592, file: !99, line: 22, column: 9)
!2599 = !DILocation(line: 23, column: 59, scope: !2600)
!2600 = distinct !DILexicalBlock(scope: !2598, file: !99, line: 22, column: 40)
!2601 = !DILocation(line: 23, column: 66, scope: !2600)
!2602 = !DILocation(line: 23, column: 40, scope: !2600)
!2603 = !DILocation(line: 23, column: 76, scope: !2600)
!2604 = !DILocation(line: 23, column: 13, scope: !2600)
!2605 = !DILocation(line: 24, column: 19, scope: !2606)
!2606 = distinct !DILexicalBlock(scope: !2600, file: !99, line: 24, column: 17)
!2607 = !DILocation(line: 25, column: 62, scope: !2608)
!2608 = distinct !DILexicalBlock(scope: !2606, file: !99, line: 24, column: 25)
!2609 = !DILocation(line: 25, column: 69, scope: !2608)
!2610 = !DILocation(line: 25, column: 43, scope: !2608)
!2611 = !DILocation(line: 25, column: 79, scope: !2608)
!2612 = !DILocation(line: 25, column: 17, scope: !2608)
!2613 = !DILocation(line: 26, column: 13, scope: !2608)
!2614 = !DILocation(line: 27, column: 27, scope: !2600)
!2615 = !DILocation(line: 22, column: 36, scope: !2598)
!2616 = !DILocation(line: 22, column: 9, scope: !2598)
!2617 = distinct !{!2617, !2591, !2618, !388}
!2618 = !DILocation(line: 28, column: 9, scope: !2592)
!2619 = !DILocation(line: 21, column: 32, scope: !2589)
!2620 = !DILocation(line: 21, column: 5, scope: !2589)
!2621 = distinct !{!2621, !2590, !2622, !388}
!2622 = !DILocation(line: 29, column: 5, scope: !2583)
!2623 = !DILocation(line: 30, column: 1, scope: !2544)
!2624 = distinct !DISubprogram(name: "m_vec_copy", scope: !529, file: !529, line: 13, type: !2389, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !84, retainedNodes: !71)
!2625 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2624, file: !529, line: 13, type: !86)
!2626 = !DILocation(line: 0, scope: !2624)
!2627 = !DILocalVariable(name: "in", arg: 2, scope: !2624, file: !529, line: 13, type: !411)
!2628 = !DILocalVariable(name: "out", arg: 3, scope: !2624, file: !529, line: 13, type: !52)
!2629 = !DILocalVariable(name: "i", scope: !2630, file: !529, line: 15, type: !58)
!2630 = distinct !DILexicalBlock(scope: !2624, file: !529, line: 15, column: 5)
!2631 = !DILocation(line: 0, scope: !2630)
!2632 = !DILocation(line: 15, column: 10, scope: !2630)
!2633 = !DILocation(line: 15, scope: !2630)
!2634 = !DILocation(line: 15, column: 26, scope: !2635)
!2635 = distinct !DILexicalBlock(scope: !2630, file: !529, line: 15, column: 5)
!2636 = !DILocation(line: 15, column: 5, scope: !2630)
!2637 = !DILocation(line: 17, column: 18, scope: !2638)
!2638 = distinct !DILexicalBlock(scope: !2635, file: !529, line: 16, column: 5)
!2639 = !DILocation(line: 17, column: 9, scope: !2638)
!2640 = !DILocation(line: 17, column: 16, scope: !2638)
!2641 = !DILocation(line: 15, column: 46, scope: !2635)
!2642 = !DILocation(line: 15, column: 5, scope: !2635)
!2643 = distinct !{!2643, !2636, !2644, !388}
!2644 = !DILocation(line: 18, column: 5, scope: !2630)
!2645 = !DILocation(line: 19, column: 1, scope: !2624)
!2646 = distinct !DISubprogram(name: "m_vec_add", scope: !529, file: !529, line: 22, type: !2389, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !84, retainedNodes: !71)
!2647 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2646, file: !529, line: 22, type: !86)
!2648 = !DILocation(line: 0, scope: !2646)
!2649 = !DILocalVariable(name: "in", arg: 2, scope: !2646, file: !529, line: 22, type: !411)
!2650 = !DILocalVariable(name: "acc", arg: 3, scope: !2646, file: !529, line: 22, type: !52)
!2651 = !DILocalVariable(name: "i", scope: !2652, file: !529, line: 24, type: !58)
!2652 = distinct !DILexicalBlock(scope: !2646, file: !529, line: 24, column: 5)
!2653 = !DILocation(line: 0, scope: !2652)
!2654 = !DILocation(line: 24, column: 10, scope: !2652)
!2655 = !DILocation(line: 24, scope: !2652)
!2656 = !DILocation(line: 24, column: 26, scope: !2657)
!2657 = distinct !DILexicalBlock(scope: !2652, file: !529, line: 24, column: 5)
!2658 = !DILocation(line: 24, column: 5, scope: !2652)
!2659 = !DILocation(line: 26, column: 19, scope: !2660)
!2660 = distinct !DILexicalBlock(scope: !2657, file: !529, line: 25, column: 5)
!2661 = !DILocation(line: 26, column: 9, scope: !2660)
!2662 = !DILocation(line: 26, column: 16, scope: !2660)
!2663 = !DILocation(line: 24, column: 46, scope: !2657)
!2664 = !DILocation(line: 24, column: 5, scope: !2657)
!2665 = distinct !{!2665, !2658, !2666, !388}
!2666 = !DILocation(line: 27, column: 5, scope: !2652)
!2667 = !DILocation(line: 28, column: 1, scope: !2646)
!2668 = distinct !DISubprogram(name: "pqmayo_MAYO_2_ref_sample_solution", scope: !99, file: !99, line: 40, type: !2669, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !84, retainedNodes: !71)
!2669 = !DISubroutineType(types: !2670)
!2670 = !{!86, !2547, !61, !90, !90, !61, !86, !86, !86, !86}
!2671 = !DILocalVariable(name: "p", arg: 1, scope: !2668, file: !99, line: 40, type: !2547)
!2672 = !DILocation(line: 0, scope: !2668)
!2673 = !DILocalVariable(name: "A", arg: 2, scope: !2668, file: !99, line: 40, type: !61)
!2674 = !DILocalVariable(name: "y", arg: 3, scope: !2668, file: !99, line: 41, type: !90)
!2675 = !DILocalVariable(name: "r", arg: 4, scope: !2668, file: !99, line: 41, type: !90)
!2676 = !DILocalVariable(name: "x", arg: 5, scope: !2668, file: !99, line: 42, type: !61)
!2677 = !DILocalVariable(name: "k", arg: 6, scope: !2668, file: !99, line: 42, type: !86)
!2678 = !DILocalVariable(name: "o", arg: 7, scope: !2668, file: !99, line: 42, type: !86)
!2679 = !DILocalVariable(name: "m", arg: 8, scope: !2668, file: !99, line: 42, type: !86)
!2680 = !DILocalVariable(name: "A_cols", arg: 9, scope: !2668, file: !99, line: 42, type: !86)
!2681 = !DILocalVariable(name: "i", scope: !2682, file: !99, line: 51, type: !86)
!2682 = distinct !DILexicalBlock(scope: !2668, file: !99, line: 51, column: 5)
!2683 = !DILocation(line: 0, scope: !2682)
!2684 = !DILocation(line: 51, column: 10, scope: !2682)
!2685 = !DILocation(line: 51, scope: !2682)
!2686 = !DILocation(line: 51, column: 23, scope: !2687)
!2687 = distinct !DILexicalBlock(scope: !2682, file: !99, line: 51, column: 5)
!2688 = !DILocation(line: 51, column: 5, scope: !2682)
!2689 = !DILocation(line: 57, column: 5, scope: !2690)
!2690 = distinct !DILexicalBlock(scope: !2668, file: !99, line: 57, column: 5)
!2691 = !DILocation(line: 52, column: 16, scope: !2692)
!2692 = distinct !DILexicalBlock(scope: !2687, file: !99, line: 51, column: 37)
!2693 = !DILocation(line: 52, column: 9, scope: !2692)
!2694 = !DILocation(line: 52, column: 14, scope: !2692)
!2695 = !DILocation(line: 51, column: 33, scope: !2687)
!2696 = !DILocation(line: 51, column: 5, scope: !2687)
!2697 = distinct !{!2697, !2688, !2698, !388}
!2698 = !DILocation(line: 53, column: 5, scope: !2682)
!2699 = !DILocation(line: 57, scope: !2690)
!2700 = !DILocalVariable(name: "i", scope: !2690, file: !99, line: 57, type: !86)
!2701 = !DILocation(line: 0, scope: !2690)
!2702 = !DILocation(line: 57, column: 23, scope: !2703)
!2703 = distinct !DILexicalBlock(scope: !2690, file: !99, line: 57, column: 5)
!2704 = !DILocation(line: 58, column: 13, scope: !2705)
!2705 = distinct !DILexicalBlock(scope: !2703, file: !99, line: 57, column: 33)
!2706 = !DILocation(line: 58, column: 26, scope: !2705)
!2707 = !DILocation(line: 58, column: 30, scope: !2705)
!2708 = !DILocation(line: 58, column: 21, scope: !2705)
!2709 = !DILocation(line: 58, column: 9, scope: !2705)
!2710 = !DILocation(line: 58, column: 36, scope: !2705)
!2711 = !DILocation(line: 57, column: 29, scope: !2703)
!2712 = !DILocation(line: 57, column: 5, scope: !2703)
!2713 = distinct !{!2713, !2689, !2714, !388}
!2714 = !DILocation(line: 59, column: 5, scope: !2690)
!2715 = !DILocation(line: 60, column: 25, scope: !2668)
!2716 = !DILocation(line: 60, column: 29, scope: !2668)
!2717 = !DILocation(line: 60, column: 5, scope: !2668)
!2718 = !DILocalVariable(name: "i", scope: !2719, file: !99, line: 63, type: !86)
!2719 = distinct !DILexicalBlock(scope: !2668, file: !99, line: 63, column: 5)
!2720 = !DILocation(line: 0, scope: !2719)
!2721 = !DILocation(line: 63, column: 10, scope: !2719)
!2722 = !DILocation(line: 63, scope: !2719)
!2723 = !DILocation(line: 63, column: 23, scope: !2724)
!2724 = distinct !DILexicalBlock(scope: !2719, file: !99, line: 63, column: 5)
!2725 = !DILocation(line: 63, column: 5, scope: !2719)
!2726 = !DILocation(line: 64, column: 44, scope: !2727)
!2727 = distinct !DILexicalBlock(scope: !2724, file: !99, line: 63, column: 33)
!2728 = !DILocation(line: 64, column: 50, scope: !2727)
!2729 = !DILocation(line: 64, column: 38, scope: !2727)
!2730 = !DILocation(line: 64, column: 13, scope: !2727)
!2731 = !DILocation(line: 64, column: 26, scope: !2727)
!2732 = !DILocation(line: 64, column: 30, scope: !2727)
!2733 = !DILocation(line: 64, column: 21, scope: !2727)
!2734 = !DILocation(line: 64, column: 9, scope: !2727)
!2735 = !DILocation(line: 64, column: 36, scope: !2727)
!2736 = !DILocation(line: 63, column: 29, scope: !2724)
!2737 = !DILocation(line: 63, column: 5, scope: !2724)
!2738 = distinct !{!2738, !2725, !2739, !388}
!2739 = !DILocation(line: 65, column: 5, scope: !2719)
!2740 = !DILocation(line: 67, column: 16, scope: !2668)
!2741 = !DILocation(line: 67, column: 20, scope: !2668)
!2742 = !DILocation(line: 67, column: 5, scope: !2668)
!2743 = !DILocalVariable(name: "full_rank", scope: !2668, file: !99, line: 70, type: !51)
!2744 = !DILocalVariable(name: "i", scope: !2745, file: !99, line: 71, type: !86)
!2745 = distinct !DILexicalBlock(scope: !2668, file: !99, line: 71, column: 5)
!2746 = !DILocation(line: 0, scope: !2745)
!2747 = !DILocation(line: 71, column: 10, scope: !2745)
!2748 = !DILocation(line: 71, scope: !2745)
!2749 = !DILocation(line: 71, column: 23, scope: !2750)
!2750 = distinct !DILexicalBlock(scope: !2745, file: !99, line: 71, column: 5)
!2751 = !DILocation(line: 71, column: 5, scope: !2745)
!2752 = !DILocation(line: 72, column: 27, scope: !2753)
!2753 = distinct !DILexicalBlock(scope: !2750, file: !99, line: 71, column: 42)
!2754 = !DILocation(line: 72, column: 32, scope: !2753)
!2755 = !DILocation(line: 72, column: 22, scope: !2753)
!2756 = !DILocation(line: 72, column: 19, scope: !2753)
!2757 = !DILocation(line: 71, column: 38, scope: !2750)
!2758 = !DILocation(line: 71, column: 5, scope: !2750)
!2759 = distinct !{!2759, !2751, !2760, !388}
!2760 = !DILocation(line: 73, column: 5, scope: !2745)
!2761 = !DILocation(line: 80, column: 19, scope: !2762)
!2762 = distinct !DILexicalBlock(scope: !2668, file: !99, line: 80, column: 9)
!2763 = !DILocation(line: 88, column: 5, scope: !2764)
!2764 = distinct !DILexicalBlock(scope: !2668, file: !99, line: 88, column: 5)
!2765 = distinct !{!2765, !2763, !2766, !388}
!2766 = !DILocation(line: 122, column: 5, scope: !2764)
!2767 = !DILocation(line: 88, scope: !2764)
!2768 = !DILocalVariable(name: "row", scope: !2764, file: !99, line: 88, type: !86)
!2769 = !DILocation(line: 0, scope: !2764)
!2770 = !DILocation(line: 88, column: 31, scope: !2771)
!2771 = distinct !DILexicalBlock(scope: !2764, file: !99, line: 88, column: 5)
!2772 = !DILocalVariable(name: "finished", scope: !2668, file: !99, line: 46, type: !51)
!2773 = !DILocation(line: 90, column: 27, scope: !2774)
!2774 = distinct !DILexicalBlock(scope: !2771, file: !99, line: 88, column: 44)
!2775 = !DILocalVariable(name: "col_upper_bound", scope: !2668, file: !99, line: 47, type: !86)
!2776 = !DILocalVariable(name: "col", scope: !2777, file: !99, line: 93, type: !86)
!2777 = distinct !DILexicalBlock(scope: !2774, file: !99, line: 93, column: 9)
!2778 = !DILocation(line: 0, scope: !2777)
!2779 = !DILocation(line: 93, column: 14, scope: !2777)
!2780 = !DILocation(line: 0, scope: !2774)
!2781 = !DILocation(line: 93, scope: !2777)
!2782 = !DILocation(line: 93, column: 33, scope: !2783)
!2783 = distinct !DILexicalBlock(scope: !2777, file: !99, line: 93, column: 9)
!2784 = !DILocation(line: 93, column: 9, scope: !2777)
!2785 = !DILocation(line: 97, column: 50, scope: !2786)
!2786 = distinct !DILexicalBlock(scope: !2783, file: !99, line: 93, column: 60)
!2787 = !DILocation(line: 97, column: 44, scope: !2786)
!2788 = !DILocation(line: 97, column: 30, scope: !2786)
!2789 = !DILocation(line: 97, column: 73, scope: !2786)
!2790 = !DILocalVariable(name: "correct_column", scope: !2668, file: !99, line: 48, type: !51)
!2791 = !DILocation(line: 99, column: 63, scope: !2786)
!2792 = !DILocation(line: 99, column: 48, scope: !2786)
!2793 = !DILocation(line: 99, column: 46, scope: !2786)
!2794 = !DILocalVariable(name: "u", scope: !2786, file: !99, line: 99, type: !51)
!2795 = !DILocation(line: 0, scope: !2786)
!2796 = !DILocation(line: 100, column: 13, scope: !2786)
!2797 = !DILocation(line: 100, column: 20, scope: !2786)
!2798 = !DILocalVariable(name: "i", scope: !2799, file: !99, line: 102, type: !86)
!2799 = distinct !DILexicalBlock(scope: !2786, file: !99, line: 102, column: 13)
!2800 = !DILocation(line: 0, scope: !2799)
!2801 = !DILocation(line: 102, column: 18, scope: !2799)
!2802 = !DILocation(line: 102, scope: !2799)
!2803 = !DILocation(line: 102, column: 31, scope: !2804)
!2804 = distinct !DILexicalBlock(scope: !2799, file: !99, line: 102, column: 13)
!2805 = !DILocation(line: 102, column: 13, scope: !2799)
!2806 = !DILocation(line: 103, column: 53, scope: !2807)
!2807 = distinct !DILexicalBlock(scope: !2804, file: !99, line: 102, column: 46)
!2808 = !DILocation(line: 103, column: 45, scope: !2807)
!2809 = !DILocation(line: 103, column: 34, scope: !2807)
!2810 = !DILocation(line: 103, column: 95, scope: !2807)
!2811 = !DILocation(line: 103, column: 99, scope: !2807)
!2812 = !DILocation(line: 103, column: 91, scope: !2807)
!2813 = !DILocation(line: 103, column: 80, scope: !2807)
!2814 = !DILocation(line: 103, column: 115, scope: !2807)
!2815 = !DILocation(line: 103, column: 76, scope: !2807)
!2816 = !DILocation(line: 104, column: 49, scope: !2807)
!2817 = !DILocation(line: 104, column: 53, scope: !2807)
!2818 = !DILocation(line: 104, column: 45, scope: !2807)
!2819 = !DILocation(line: 104, column: 34, scope: !2807)
!2820 = !DILocation(line: 104, column: 69, scope: !2807)
!2821 = !DILocation(line: 104, column: 30, scope: !2807)
!2822 = !DILocation(line: 104, column: 95, scope: !2807)
!2823 = !DILocation(line: 104, column: 99, scope: !2807)
!2824 = !DILocation(line: 104, column: 91, scope: !2807)
!2825 = !DILocation(line: 104, column: 80, scope: !2807)
!2826 = !DILocation(line: 104, column: 115, scope: !2807)
!2827 = !DILocation(line: 104, column: 76, scope: !2807)
!2828 = !DILocation(line: 105, column: 49, scope: !2807)
!2829 = !DILocation(line: 105, column: 53, scope: !2807)
!2830 = !DILocation(line: 105, column: 45, scope: !2807)
!2831 = !DILocation(line: 105, column: 34, scope: !2807)
!2832 = !DILocation(line: 105, column: 69, scope: !2807)
!2833 = !DILocation(line: 105, column: 30, scope: !2807)
!2834 = !DILocation(line: 105, column: 95, scope: !2807)
!2835 = !DILocation(line: 105, column: 99, scope: !2807)
!2836 = !DILocation(line: 105, column: 91, scope: !2807)
!2837 = !DILocation(line: 105, column: 80, scope: !2807)
!2838 = !DILocation(line: 105, column: 115, scope: !2807)
!2839 = !DILocation(line: 105, column: 76, scope: !2807)
!2840 = !DILocation(line: 106, column: 49, scope: !2807)
!2841 = !DILocation(line: 106, column: 53, scope: !2807)
!2842 = !DILocation(line: 106, column: 45, scope: !2807)
!2843 = !DILocation(line: 106, column: 34, scope: !2807)
!2844 = !DILocation(line: 106, column: 69, scope: !2807)
!2845 = !DILocation(line: 106, column: 30, scope: !2807)
!2846 = !DILocation(line: 106, column: 95, scope: !2807)
!2847 = !DILocation(line: 106, column: 99, scope: !2807)
!2848 = !DILocation(line: 106, column: 91, scope: !2807)
!2849 = !DILocation(line: 106, column: 80, scope: !2807)
!2850 = !DILocation(line: 106, column: 115, scope: !2807)
!2851 = !DILocation(line: 106, column: 76, scope: !2807)
!2852 = !DILocalVariable(name: "tmp", scope: !2807, file: !99, line: 103, type: !53)
!2853 = !DILocation(line: 0, scope: !2807)
!2854 = !DILocation(line: 108, column: 23, scope: !2807)
!2855 = !DILocation(line: 110, column: 34, scope: !2807)
!2856 = !DILocation(line: 110, column: 17, scope: !2807)
!2857 = !DILocation(line: 110, column: 48, scope: !2807)
!2858 = !DILocation(line: 111, column: 56, scope: !2807)
!2859 = !DILocation(line: 111, column: 34, scope: !2807)
!2860 = !DILocation(line: 111, column: 17, scope: !2807)
!2861 = !DILocation(line: 111, column: 48, scope: !2807)
!2862 = !DILocation(line: 112, column: 56, scope: !2807)
!2863 = !DILocation(line: 112, column: 34, scope: !2807)
!2864 = !DILocation(line: 112, column: 17, scope: !2807)
!2865 = !DILocation(line: 112, column: 48, scope: !2807)
!2866 = !DILocation(line: 113, column: 56, scope: !2807)
!2867 = !DILocation(line: 113, column: 34, scope: !2807)
!2868 = !DILocation(line: 113, column: 17, scope: !2807)
!2869 = !DILocation(line: 113, column: 48, scope: !2807)
!2870 = !DILocation(line: 114, column: 56, scope: !2807)
!2871 = !DILocation(line: 114, column: 34, scope: !2807)
!2872 = !DILocation(line: 114, column: 17, scope: !2807)
!2873 = !DILocation(line: 114, column: 48, scope: !2807)
!2874 = !DILocation(line: 115, column: 56, scope: !2807)
!2875 = !DILocation(line: 115, column: 34, scope: !2807)
!2876 = !DILocation(line: 115, column: 17, scope: !2807)
!2877 = !DILocation(line: 115, column: 48, scope: !2807)
!2878 = !DILocation(line: 116, column: 56, scope: !2807)
!2879 = !DILocation(line: 116, column: 34, scope: !2807)
!2880 = !DILocation(line: 116, column: 17, scope: !2807)
!2881 = !DILocation(line: 116, column: 48, scope: !2807)
!2882 = !DILocation(line: 117, column: 56, scope: !2807)
!2883 = !DILocation(line: 117, column: 34, scope: !2807)
!2884 = !DILocation(line: 117, column: 17, scope: !2807)
!2885 = !DILocation(line: 117, column: 48, scope: !2807)
!2886 = !DILocation(line: 102, column: 40, scope: !2804)
!2887 = !DILocation(line: 102, column: 13, scope: !2804)
!2888 = distinct !{!2888, !2805, !2889, !388}
!2889 = !DILocation(line: 118, column: 13, scope: !2799)
!2890 = !DILocation(line: 120, column: 33, scope: !2786)
!2891 = !DILocation(line: 93, column: 56, scope: !2783)
!2892 = !DILocation(line: 93, column: 9, scope: !2783)
!2893 = distinct !{!2893, !2784, !2894, !388}
!2894 = !DILocation(line: 121, column: 9, scope: !2777)
!2895 = !DILocation(line: 124, column: 1, scope: !2668)
!2896 = distinct !DISubprogram(name: "mat_mul", scope: !585, file: !585, line: 78, type: !1527, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !84, retainedNodes: !71)
!2897 = !DILocalVariable(name: "a", arg: 1, scope: !2896, file: !585, line: 78, type: !90)
!2898 = !DILocation(line: 0, scope: !2896)
!2899 = !DILocalVariable(name: "b", arg: 2, scope: !2896, file: !585, line: 78, type: !90)
!2900 = !DILocalVariable(name: "c", arg: 3, scope: !2896, file: !585, line: 79, type: !61)
!2901 = !DILocalVariable(name: "colrow_ab", arg: 4, scope: !2896, file: !585, line: 79, type: !86)
!2902 = !DILocalVariable(name: "row_a", arg: 5, scope: !2896, file: !585, line: 79, type: !86)
!2903 = !DILocalVariable(name: "col_b", arg: 6, scope: !2896, file: !585, line: 79, type: !86)
!2904 = !DILocalVariable(name: "i", scope: !2905, file: !585, line: 80, type: !86)
!2905 = distinct !DILexicalBlock(scope: !2896, file: !585, line: 80, column: 5)
!2906 = !DILocation(line: 0, scope: !2905)
!2907 = !DILocation(line: 80, column: 10, scope: !2905)
!2908 = !DILocation(line: 80, scope: !2905)
!2909 = !DILocation(line: 80, column: 23, scope: !2910)
!2910 = distinct !DILexicalBlock(scope: !2905, file: !585, line: 80, column: 5)
!2911 = !DILocation(line: 80, column: 5, scope: !2905)
!2912 = !DILocation(line: 81, column: 9, scope: !2913)
!2913 = distinct !DILexicalBlock(scope: !2914, file: !585, line: 81, column: 9)
!2914 = distinct !DILexicalBlock(scope: !2910, file: !585, line: 80, column: 53)
!2915 = !DILocation(line: 81, scope: !2913)
!2916 = !DILocalVariable(name: "j", scope: !2913, file: !585, line: 81, type: !86)
!2917 = !DILocation(line: 0, scope: !2913)
!2918 = !DILocation(line: 81, column: 27, scope: !2919)
!2919 = distinct !DILexicalBlock(scope: !2913, file: !585, line: 81, column: 9)
!2920 = !DILocation(line: 82, column: 31, scope: !2921)
!2921 = distinct !DILexicalBlock(scope: !2919, file: !585, line: 81, column: 46)
!2922 = !DILocation(line: 82, column: 18, scope: !2921)
!2923 = !DILocation(line: 82, column: 16, scope: !2921)
!2924 = !DILocation(line: 81, column: 36, scope: !2919)
!2925 = !DILocation(line: 81, column: 41, scope: !2919)
!2926 = !DILocation(line: 81, column: 9, scope: !2919)
!2927 = distinct !{!2927, !2912, !2928, !388}
!2928 = !DILocation(line: 83, column: 9, scope: !2913)
!2929 = !DILocation(line: 80, column: 32, scope: !2910)
!2930 = !DILocation(line: 80, column: 39, scope: !2910)
!2931 = !DILocation(line: 80, column: 5, scope: !2910)
!2932 = distinct !{!2932, !2911, !2933, !388}
!2933 = !DILocation(line: 84, column: 5, scope: !2905)
!2934 = !DILocation(line: 85, column: 1, scope: !2896)
!2935 = distinct !DISubprogram(name: "sub_f", scope: !585, file: !585, line: 47, type: !1650, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !84, retainedNodes: !71)
!2936 = !DILocalVariable(name: "a", arg: 1, scope: !2935, file: !585, line: 47, type: !51)
!2937 = !DILocation(line: 0, scope: !2935)
!2938 = !DILocalVariable(name: "b", arg: 2, scope: !2935, file: !585, line: 47, type: !51)
!2939 = !DILocation(line: 48, column: 14, scope: !2935)
!2940 = !DILocation(line: 48, column: 5, scope: !2935)
!2941 = distinct !DISubprogram(name: "EF", scope: !2942, file: !2942, line: 60, type: !2943, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !84, retainedNodes: !71)
!2942 = !DIFile(filename: "../../../src/generic/echelon_form.h", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!2943 = !DISubroutineType(types: !2944)
!2944 = !{null, !61, !86, !86}
!2945 = !DILocalVariable(name: "A", arg: 1, scope: !2941, file: !2942, line: 60, type: !61)
!2946 = !DILocation(line: 0, scope: !2941)
!2947 = !DILocalVariable(name: "nrows", arg: 2, scope: !2941, file: !2942, line: 60, type: !86)
!2948 = !DILocalVariable(name: "ncols", arg: 3, scope: !2941, file: !2942, line: 60, type: !86)
!2949 = !DILocalVariable(name: "_pivot_row", scope: !2941, file: !2942, line: 62, type: !2950, align: 256)
!2950 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 320, elements: !2951)
!2951 = !{!2952}
!2952 = !DISubrange(count: 5)
!2953 = !DILocation(line: 62, column: 27, scope: !2941)
!2954 = !DILocalVariable(name: "_pivot_row2", scope: !2941, file: !2942, line: 63, type: !2950, align: 256)
!2955 = !DILocation(line: 63, column: 27, scope: !2941)
!2956 = !DILocalVariable(name: "packed_A", scope: !2941, file: !2942, line: 64, type: !2957, align: 256)
!2957 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 20480, elements: !2958)
!2958 = !{!2959}
!2959 = !DISubrange(count: 320)
!2960 = !DILocation(line: 64, column: 27, scope: !2941)
!2961 = !DILocation(line: 66, column: 26, scope: !2941)
!2962 = !DILocation(line: 66, column: 32, scope: !2941)
!2963 = !DILocalVariable(name: "row_len", scope: !2941, file: !2942, line: 66, type: !86)
!2964 = !DILocalVariable(name: "i", scope: !2965, file: !2942, line: 69, type: !86)
!2965 = distinct !DILexicalBlock(scope: !2941, file: !2942, line: 69, column: 5)
!2966 = !DILocation(line: 0, scope: !2965)
!2967 = !DILocation(line: 69, column: 10, scope: !2965)
!2968 = !DILocation(line: 69, scope: !2965)
!2969 = !DILocation(line: 69, column: 23, scope: !2970)
!2970 = distinct !DILexicalBlock(scope: !2965, file: !2942, line: 69, column: 5)
!2971 = !DILocation(line: 69, column: 5, scope: !2965)
!2972 = !DILocation(line: 77, column: 5, scope: !2973)
!2973 = distinct !DILexicalBlock(scope: !2941, file: !2942, line: 77, column: 5)
!2974 = !DILocation(line: 70, column: 29, scope: !2975)
!2975 = distinct !DILexicalBlock(scope: !2970, file: !2942, line: 69, column: 37)
!2976 = !DILocation(line: 70, column: 25, scope: !2975)
!2977 = !DILocation(line: 70, column: 51, scope: !2975)
!2978 = !DILocation(line: 70, column: 47, scope: !2975)
!2979 = !DILocation(line: 70, column: 9, scope: !2975)
!2980 = !DILocation(line: 69, column: 33, scope: !2970)
!2981 = !DILocation(line: 69, column: 5, scope: !2970)
!2982 = distinct !{!2982, !2971, !2983, !388}
!2983 = !DILocation(line: 71, column: 5, scope: !2965)
!2984 = !DILocation(line: 77, scope: !2973)
!2985 = !DILocalVariable(name: "pivot_row", scope: !2941, file: !2942, line: 76, type: !86)
!2986 = !DILocalVariable(name: "pivot_col", scope: !2973, file: !2942, line: 77, type: !86)
!2987 = !DILocation(line: 0, scope: !2973)
!2988 = !DILocation(line: 77, column: 39, scope: !2989)
!2989 = distinct !DILexicalBlock(scope: !2973, file: !2942, line: 77, column: 5)
!2990 = !DILocation(line: 138, column: 5, scope: !2991)
!2991 = distinct !DILexicalBlock(scope: !2941, file: !2942, line: 138, column: 5)
!2992 = !DILocation(line: 79, column: 37, scope: !2993)
!2993 = distinct !DILexicalBlock(scope: !2989, file: !2942, line: 77, column: 61)
!2994 = !DILocalVariable(name: "pivot_row_lower_bound", scope: !2993, file: !2942, line: 79, type: !86)
!2995 = !DILocation(line: 0, scope: !2993)
!2996 = !DILocation(line: 80, column: 37, scope: !2993)
!2997 = !DILocalVariable(name: "pivot_row_upper_bound", scope: !2993, file: !2942, line: 80, type: !86)
!2998 = !DILocalVariable(name: "i", scope: !2999, file: !2942, line: 85, type: !86)
!2999 = distinct !DILexicalBlock(scope: !2993, file: !2942, line: 85, column: 9)
!3000 = !DILocation(line: 0, scope: !2999)
!3001 = !DILocation(line: 85, column: 14, scope: !2999)
!3002 = !DILocation(line: 85, scope: !2999)
!3003 = !DILocation(line: 85, column: 27, scope: !3004)
!3004 = distinct !DILexicalBlock(scope: !2999, file: !2942, line: 85, column: 9)
!3005 = !DILocation(line: 85, column: 9, scope: !2999)
!3006 = !DILocation(line: 93, column: 9, scope: !3007)
!3007 = distinct !DILexicalBlock(scope: !2993, file: !2942, line: 93, column: 9)
!3008 = !DILocation(line: 86, column: 13, scope: !3009)
!3009 = distinct !DILexicalBlock(scope: !3004, file: !2942, line: 85, column: 43)
!3010 = !DILocation(line: 86, column: 27, scope: !3009)
!3011 = !DILocation(line: 87, column: 13, scope: !3009)
!3012 = !DILocation(line: 87, column: 28, scope: !3009)
!3013 = !DILocation(line: 85, column: 39, scope: !3004)
!3014 = !DILocation(line: 85, column: 9, scope: !3004)
!3015 = distinct !{!3015, !3005, !3016, !388}
!3016 = !DILocation(line: 88, column: 9, scope: !2999)
!3017 = !DILocation(line: 0, scope: !3007)
!3018 = !DILocalVariable(name: "row", scope: !3007, file: !2942, line: 93, type: !86)
!3019 = !DILocalVariable(name: "pivot", scope: !2993, file: !2942, line: 91, type: !51)
!3020 = !DILocalVariable(name: "pivot_is_zero", scope: !2993, file: !2942, line: 92, type: !53)
!3021 = !DILocation(line: 94, column: 24, scope: !3022)
!3022 = distinct !DILexicalBlock(scope: !3007, file: !2942, line: 93, column: 9)
!3023 = !DILocation(line: 94, column: 21, scope: !3022)
!3024 = !DILocation(line: 96, column: 38, scope: !3025)
!3025 = distinct !DILexicalBlock(scope: !3022, file: !2942, line: 94, column: 80)
!3026 = !DILocation(line: 96, column: 37, scope: !3025)
!3027 = !DILocalVariable(name: "is_pivot_row", scope: !3025, file: !2942, line: 96, type: !53)
!3028 = !DILocation(line: 0, scope: !3025)
!3029 = !DILocation(line: 97, column: 40, scope: !3025)
!3030 = !DILocalVariable(name: "below_pivot_row", scope: !3025, file: !2942, line: 97, type: !53)
!3031 = !DILocalVariable(name: "j", scope: !3032, file: !2942, line: 99, type: !86)
!3032 = distinct !DILexicalBlock(scope: !3025, file: !2942, line: 99, column: 13)
!3033 = !DILocation(line: 0, scope: !3032)
!3034 = !DILocation(line: 99, column: 18, scope: !3032)
!3035 = !DILocation(line: 99, scope: !3032)
!3036 = !DILocation(line: 99, column: 31, scope: !3037)
!3037 = distinct !DILexicalBlock(scope: !3032, file: !2942, line: 99, column: 13)
!3038 = !DILocation(line: 99, column: 13, scope: !3032)
!3039 = !DILocation(line: 100, column: 67, scope: !3040)
!3040 = distinct !DILexicalBlock(scope: !3037, file: !2942, line: 99, column: 47)
!3041 = !DILocation(line: 100, column: 48, scope: !3040)
!3042 = !DILocation(line: 101, column: 47, scope: !3040)
!3043 = !DILocation(line: 101, column: 57, scope: !3040)
!3044 = !DILocation(line: 101, column: 34, scope: !3040)
!3045 = !DILocation(line: 100, column: 85, scope: !3040)
!3046 = !DILocation(line: 100, column: 17, scope: !3040)
!3047 = !DILocation(line: 100, column: 31, scope: !3040)
!3048 = !DILocation(line: 99, column: 43, scope: !3037)
!3049 = !DILocation(line: 99, column: 13, scope: !3037)
!3050 = distinct !{!3050, !3038, !3051, !388}
!3051 = !DILocation(line: 102, column: 13, scope: !3032)
!3052 = !DILocation(line: 103, column: 21, scope: !3025)
!3053 = !DILocation(line: 104, column: 44, scope: !3025)
!3054 = !DILocation(line: 104, column: 30, scope: !3025)
!3055 = !DILocation(line: 104, column: 29, scope: !3025)
!3056 = !DILocation(line: 94, column: 76, scope: !3022)
!3057 = !DILocation(line: 93, column: 9, scope: !3022)
!3058 = distinct !{!3058, !3006, !3059, !388}
!3059 = !DILocation(line: 105, column: 9, scope: !3007)
!3060 = !DILocation(line: 108, column: 19, scope: !2993)
!3061 = !DILocalVariable(name: "inverse", scope: !2941, file: !2942, line: 75, type: !51)
!3062 = !DILocation(line: 109, column: 9, scope: !2993)
!3063 = !DILocalVariable(name: "row", scope: !3064, file: !2942, line: 113, type: !86)
!3064 = distinct !DILexicalBlock(scope: !2993, file: !2942, line: 113, column: 9)
!3065 = !DILocation(line: 0, scope: !3064)
!3066 = !DILocation(line: 113, column: 14, scope: !3064)
!3067 = !DILocation(line: 113, scope: !3064)
!3068 = !DILocation(line: 113, column: 51, scope: !3069)
!3069 = distinct !DILexicalBlock(scope: !3064, file: !2942, line: 113, column: 9)
!3070 = !DILocation(line: 113, column: 9, scope: !3064)
!3071 = !DILocation(line: 124, column: 9, scope: !3072)
!3072 = distinct !DILexicalBlock(scope: !2993, file: !2942, line: 124, column: 9)
!3073 = !DILocation(line: 114, column: 33, scope: !3074)
!3074 = distinct !DILexicalBlock(scope: !3069, file: !2942, line: 113, column: 84)
!3075 = !DILocation(line: 114, column: 63, scope: !3074)
!3076 = !DILocalVariable(name: "do_copy", scope: !3074, file: !2942, line: 114, type: !53)
!3077 = !DILocation(line: 0, scope: !3074)
!3078 = !DILocalVariable(name: "do_not_copy", scope: !3074, file: !2942, line: 115, type: !53)
!3079 = !DILocalVariable(name: "col", scope: !3080, file: !2942, line: 116, type: !86)
!3080 = distinct !DILexicalBlock(scope: !3074, file: !2942, line: 116, column: 13)
!3081 = !DILocation(line: 0, scope: !3080)
!3082 = !DILocation(line: 116, column: 18, scope: !3080)
!3083 = !DILocation(line: 116, scope: !3080)
!3084 = !DILocation(line: 116, column: 35, scope: !3085)
!3085 = distinct !DILexicalBlock(scope: !3080, file: !2942, line: 116, column: 13)
!3086 = !DILocation(line: 116, column: 13, scope: !3080)
!3087 = !DILocation(line: 118, column: 49, scope: !3088)
!3088 = distinct !DILexicalBlock(scope: !3085, file: !2942, line: 116, column: 53)
!3089 = !DILocation(line: 118, column: 59, scope: !3088)
!3090 = !DILocation(line: 118, column: 36, scope: !3088)
!3091 = !DILocation(line: 118, column: 34, scope: !3088)
!3092 = !DILocation(line: 119, column: 32, scope: !3088)
!3093 = !DILocation(line: 119, column: 30, scope: !3088)
!3094 = !DILocation(line: 118, column: 67, scope: !3088)
!3095 = !DILocation(line: 117, column: 30, scope: !3088)
!3096 = !DILocation(line: 117, column: 40, scope: !3088)
!3097 = !DILocation(line: 117, column: 17, scope: !3088)
!3098 = !DILocation(line: 117, column: 47, scope: !3088)
!3099 = !DILocation(line: 116, column: 49, scope: !3085)
!3100 = !DILocation(line: 116, column: 13, scope: !3085)
!3101 = distinct !{!3101, !3086, !3102, !388}
!3102 = !DILocation(line: 120, column: 13, scope: !3080)
!3103 = !DILocation(line: 113, column: 80, scope: !3069)
!3104 = !DILocation(line: 113, column: 9, scope: !3069)
!3105 = distinct !{!3105, !3070, !3106, !388}
!3106 = !DILocation(line: 121, column: 9, scope: !3064)
!3107 = !DILocation(line: 124, scope: !3072)
!3108 = !DILocalVariable(name: "row", scope: !3072, file: !2942, line: 124, type: !86)
!3109 = !DILocation(line: 0, scope: !3072)
!3110 = !DILocation(line: 124, column: 51, scope: !3111)
!3111 = distinct !DILexicalBlock(scope: !3072, file: !2942, line: 124, column: 9)
!3112 = !DILocation(line: 125, column: 46, scope: !3113)
!3113 = distinct !DILexicalBlock(scope: !3111, file: !2942, line: 124, column: 67)
!3114 = !DILocalVariable(name: "below_pivot", scope: !3113, file: !2942, line: 125, type: !51)
!3115 = !DILocation(line: 0, scope: !3113)
!3116 = !DILocation(line: 126, column: 74, scope: !3113)
!3117 = !DILocation(line: 126, column: 68, scope: !3113)
!3118 = !DILocation(line: 126, column: 41, scope: !3113)
!3119 = !DILocalVariable(name: "elt_to_elim", scope: !3113, file: !2942, line: 126, type: !51)
!3120 = !DILocation(line: 128, column: 63, scope: !3113)
!3121 = !DILocation(line: 129, column: 52, scope: !3113)
!3122 = !DILocation(line: 129, column: 46, scope: !3113)
!3123 = !DILocation(line: 128, column: 13, scope: !3113)
!3124 = !DILocation(line: 124, column: 63, scope: !3111)
!3125 = !DILocation(line: 124, column: 9, scope: !3111)
!3126 = distinct !{!3126, !3071, !3127, !388}
!3127 = !DILocation(line: 130, column: 9, scope: !3072)
!3128 = !DILocation(line: 132, column: 19, scope: !2993)
!3129 = !DILocation(line: 77, column: 57, scope: !2989)
!3130 = !DILocation(line: 77, column: 5, scope: !2989)
!3131 = distinct !{!3131, !2972, !3132, !388}
!3132 = !DILocation(line: 133, column: 5, scope: !2973)
!3133 = !DILocation(line: 138, scope: !2991)
!3134 = !DILocalVariable(name: "i", scope: !2991, file: !2942, line: 138, type: !86)
!3135 = !DILocation(line: 0, scope: !2991)
!3136 = !DILocation(line: 138, column: 23, scope: !3137)
!3137 = distinct !DILexicalBlock(scope: !2991, file: !2942, line: 138, column: 5)
!3138 = !DILocation(line: 139, column: 47, scope: !3139)
!3139 = distinct !DILexicalBlock(scope: !3137, file: !2942, line: 138, column: 37)
!3140 = !DILocation(line: 139, column: 43, scope: !3139)
!3141 = !DILocation(line: 139, column: 9, scope: !3139)
!3142 = !DILocalVariable(name: "j", scope: !3143, file: !2942, line: 140, type: !86)
!3143 = distinct !DILexicalBlock(scope: !3139, file: !2942, line: 140, column: 9)
!3144 = !DILocation(line: 0, scope: !3143)
!3145 = !DILocation(line: 140, column: 14, scope: !3143)
!3146 = !DILocation(line: 140, scope: !3143)
!3147 = !DILocation(line: 140, column: 27, scope: !3148)
!3148 = distinct !DILexicalBlock(scope: !3143, file: !2942, line: 140, column: 9)
!3149 = !DILocation(line: 140, column: 9, scope: !3143)
!3150 = !DILocation(line: 141, column: 32, scope: !3151)
!3151 = distinct !DILexicalBlock(scope: !3148, file: !2942, line: 140, column: 41)
!3152 = !DILocation(line: 141, column: 17, scope: !3151)
!3153 = !DILocation(line: 141, column: 13, scope: !3151)
!3154 = !DILocation(line: 141, column: 30, scope: !3151)
!3155 = !DILocation(line: 140, column: 37, scope: !3148)
!3156 = !DILocation(line: 140, column: 9, scope: !3148)
!3157 = distinct !{!3157, !3149, !3158, !388}
!3158 = !DILocation(line: 142, column: 9, scope: !3143)
!3159 = !DILocation(line: 138, column: 33, scope: !3137)
!3160 = !DILocation(line: 138, column: 5, scope: !3137)
!3161 = distinct !{!3161, !2990, !3162, !388}
!3162 = !DILocation(line: 143, column: 5, scope: !2991)
!3163 = !DILocation(line: 145, column: 5, scope: !2941)
!3164 = !DILocation(line: 146, column: 5, scope: !2941)
!3165 = !DILocation(line: 147, column: 5, scope: !2941)
!3166 = !DILocation(line: 148, column: 5, scope: !2941)
!3167 = !DILocation(line: 149, column: 1, scope: !2941)
!3168 = distinct !DISubprogram(name: "ct_compare_8", scope: !3169, file: !3169, line: 51, type: !1650, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !84, retainedNodes: !71)
!3169 = !DIFile(filename: "../../../src/arithmetic.h", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!3170 = !DILocalVariable(name: "a", arg: 1, scope: !3168, file: !3169, line: 51, type: !51)
!3171 = !DILocation(line: 0, scope: !3168)
!3172 = !DILocalVariable(name: "b", arg: 2, scope: !3168, file: !3169, line: 51, type: !51)
!3173 = !DILocation(line: 52, column: 42, scope: !3168)
!3174 = !DILocation(line: 52, column: 13, scope: !3168)
!3175 = !DILocation(line: 52, column: 71, scope: !3168)
!3176 = !DILocation(line: 52, column: 69, scope: !3168)
!3177 = !DILocation(line: 52, column: 5, scope: !3168)
!3178 = distinct !DISubprogram(name: "mul_fx8", scope: !585, file: !585, line: 27, type: !3179, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !84, retainedNodes: !71)
!3179 = !DISubroutineType(types: !3180)
!3180 = !{!53, !51, !53}
!3181 = !DILocalVariable(name: "a", arg: 1, scope: !3178, file: !585, line: 27, type: !51)
!3182 = !DILocation(line: 0, scope: !3178)
!3183 = !DILocalVariable(name: "b", arg: 2, scope: !3178, file: !585, line: 27, type: !53)
!3184 = !DILocation(line: 30, column: 13, scope: !3178)
!3185 = !DILocation(line: 30, column: 10, scope: !3178)
!3186 = !DILocation(line: 30, column: 17, scope: !3178)
!3187 = !DILocalVariable(name: "p", scope: !3178, file: !585, line: 29, type: !53)
!3188 = !DILocation(line: 31, column: 13, scope: !3178)
!3189 = !DILocation(line: 31, column: 10, scope: !3178)
!3190 = !DILocation(line: 31, column: 17, scope: !3178)
!3191 = !DILocation(line: 31, column: 7, scope: !3178)
!3192 = !DILocation(line: 32, column: 13, scope: !3178)
!3193 = !DILocation(line: 32, column: 10, scope: !3178)
!3194 = !DILocation(line: 32, column: 17, scope: !3178)
!3195 = !DILocation(line: 32, column: 7, scope: !3178)
!3196 = !DILocation(line: 33, column: 13, scope: !3178)
!3197 = !DILocation(line: 33, column: 10, scope: !3178)
!3198 = !DILocation(line: 33, column: 17, scope: !3178)
!3199 = !DILocation(line: 33, column: 7, scope: !3178)
!3200 = !DILocalVariable(name: "top_p", scope: !3178, file: !585, line: 36, type: !53)
!3201 = !DILocation(line: 37, column: 32, scope: !3178)
!3202 = !DILocation(line: 37, column: 47, scope: !3178)
!3203 = !DILocation(line: 37, column: 38, scope: !3178)
!3204 = !DILocation(line: 37, column: 54, scope: !3178)
!3205 = !DILocalVariable(name: "out", scope: !3178, file: !585, line: 37, type: !53)
!3206 = !DILocation(line: 38, column: 5, scope: !3178)
!3207 = distinct !DISubprogram(name: "ef_pack_m_vec", scope: !2942, file: !2942, line: 24, type: !3208, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !84, retainedNodes: !71)
!3208 = !DISubroutineType(types: !3209)
!3209 = !{null, !90, !52, !86}
!3210 = !DILocalVariable(name: "in", arg: 1, scope: !3207, file: !2942, line: 24, type: !90)
!3211 = !DILocation(line: 0, scope: !3207)
!3212 = !DILocalVariable(name: "out", arg: 2, scope: !3207, file: !2942, line: 24, type: !52)
!3213 = !DILocalVariable(name: "ncols", arg: 3, scope: !3207, file: !2942, line: 24, type: !86)
!3214 = !DILocalVariable(name: "out8", scope: !3207, file: !2942, line: 26, type: !61)
!3215 = !DILocalVariable(name: "i", scope: !3207, file: !2942, line: 25, type: !86)
!3216 = !DILocation(line: 27, column: 9, scope: !3217)
!3217 = distinct !DILexicalBlock(scope: !3207, file: !2942, line: 27, column: 5)
!3218 = !DILocation(line: 27, scope: !3217)
!3219 = !DILocation(line: 27, column: 17, scope: !3220)
!3220 = distinct !DILexicalBlock(scope: !3217, file: !2942, line: 27, column: 5)
!3221 = !DILocation(line: 27, column: 20, scope: !3220)
!3222 = !DILocation(line: 27, column: 5, scope: !3217)
!3223 = !DILocation(line: 31, column: 23, scope: !3224)
!3224 = distinct !DILexicalBlock(scope: !3220, file: !2942, line: 27, column: 36)
!3225 = !DILocation(line: 31, column: 44, scope: !3224)
!3226 = !DILocation(line: 31, column: 40, scope: !3224)
!3227 = !DILocation(line: 31, column: 48, scope: !3224)
!3228 = !DILocation(line: 31, column: 37, scope: !3224)
!3229 = !DILocation(line: 31, column: 15, scope: !3224)
!3230 = !DILocation(line: 31, column: 9, scope: !3224)
!3231 = !DILocation(line: 31, column: 20, scope: !3224)
!3232 = !DILocation(line: 27, column: 31, scope: !3220)
!3233 = !DILocation(line: 27, column: 5, scope: !3220)
!3234 = distinct !{!3234, !3222, !3235, !388}
!3235 = !DILocation(line: 33, column: 5, scope: !3217)
!3236 = !DILocation(line: 34, column: 19, scope: !3237)
!3237 = distinct !DILexicalBlock(scope: !3207, file: !2942, line: 34, column: 9)
!3238 = !DILocation(line: 38, column: 23, scope: !3239)
!3239 = distinct !DILexicalBlock(scope: !3237, file: !2942, line: 34, column: 24)
!3240 = !DILocation(line: 38, column: 15, scope: !3239)
!3241 = !DILocation(line: 38, column: 9, scope: !3239)
!3242 = !DILocation(line: 38, column: 20, scope: !3239)
!3243 = !DILocation(line: 40, column: 5, scope: !3239)
!3244 = !DILocation(line: 41, column: 1, scope: !3207)
!3245 = distinct !DISubprogram(name: "ct_compare_64", scope: !3169, file: !3169, line: 46, type: !3246, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !84, retainedNodes: !71)
!3246 = !DISubroutineType(types: !3247)
!3247 = !{!53, !86, !86}
!3248 = !DILocalVariable(name: "a", arg: 1, scope: !3245, file: !3169, line: 46, type: !86)
!3249 = !DILocation(line: 0, scope: !3245)
!3250 = !DILocalVariable(name: "b", arg: 2, scope: !3245, file: !3169, line: 46, type: !86)
!3251 = !DILocation(line: 47, column: 38, scope: !3245)
!3252 = !DILocation(line: 47, column: 44, scope: !3245)
!3253 = !DILocation(line: 47, column: 73, scope: !3245)
!3254 = !DILocation(line: 47, column: 71, scope: !3245)
!3255 = !DILocation(line: 47, column: 5, scope: !3245)
!3256 = distinct !DISubprogram(name: "ct_64_is_greater_than", scope: !3169, file: !3169, line: 35, type: !3246, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !84, retainedNodes: !71)
!3257 = !DILocalVariable(name: "a", arg: 1, scope: !3256, file: !3169, line: 35, type: !86)
!3258 = !DILocation(line: 0, scope: !3256)
!3259 = !DILocalVariable(name: "b", arg: 2, scope: !3256, file: !3169, line: 35, type: !86)
!3260 = !DILocalVariable(name: "diff", scope: !3256, file: !3169, line: 36, type: !87)
!3261 = !DILocation(line: 37, column: 30, scope: !3256)
!3262 = !DILocation(line: 37, column: 59, scope: !3256)
!3263 = !DILocation(line: 37, column: 57, scope: !3256)
!3264 = !DILocation(line: 37, column: 5, scope: !3256)
!3265 = distinct !DISubprogram(name: "m_extract_element", scope: !2942, file: !2942, line: 16, type: !3266, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !84, retainedNodes: !71)
!3266 = !DISubroutineType(types: !3267)
!3267 = !{!51, !411, !86}
!3268 = !DILocalVariable(name: "in", arg: 1, scope: !3265, file: !2942, line: 16, type: !411)
!3269 = !DILocation(line: 0, scope: !3265)
!3270 = !DILocalVariable(name: "index", arg: 2, scope: !3265, file: !2942, line: 16, type: !86)
!3271 = !DILocation(line: 17, column: 27, scope: !3265)
!3272 = !DILocalVariable(name: "leg", scope: !3265, file: !2942, line: 17, type: !324)
!3273 = !DILocation(line: 18, column: 30, scope: !3265)
!3274 = !DILocalVariable(name: "offset", scope: !3265, file: !2942, line: 18, type: !324)
!3275 = !DILocation(line: 20, column: 13, scope: !3265)
!3276 = !DILocation(line: 20, column: 31, scope: !3265)
!3277 = !DILocation(line: 20, column: 21, scope: !3265)
!3278 = !DILocation(line: 20, column: 12, scope: !3265)
!3279 = !DILocation(line: 20, column: 5, scope: !3265)
!3280 = distinct !DISubprogram(name: "inverse_f", scope: !585, file: !585, line: 56, type: !3281, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !84, retainedNodes: !71)
!3281 = !DISubroutineType(types: !3282)
!3282 = !{!51, !51}
!3283 = !DILocalVariable(name: "a", arg: 1, scope: !3280, file: !585, line: 56, type: !51)
!3284 = !DILocation(line: 0, scope: !3280)
!3285 = !DILocation(line: 60, column: 24, scope: !3280)
!3286 = !DILocalVariable(name: "a2", scope: !3280, file: !585, line: 60, type: !51)
!3287 = !DILocation(line: 61, column: 24, scope: !3280)
!3288 = !DILocalVariable(name: "a4", scope: !3280, file: !585, line: 61, type: !51)
!3289 = !DILocation(line: 62, column: 24, scope: !3280)
!3290 = !DILocalVariable(name: "a8", scope: !3280, file: !585, line: 62, type: !51)
!3291 = !DILocation(line: 63, column: 24, scope: !3280)
!3292 = !DILocalVariable(name: "a6", scope: !3280, file: !585, line: 63, type: !51)
!3293 = !DILocation(line: 64, column: 25, scope: !3280)
!3294 = !DILocalVariable(name: "a14", scope: !3280, file: !585, line: 64, type: !51)
!3295 = !DILocation(line: 66, column: 5, scope: !3280)
!3296 = distinct !DISubprogram(name: "vec_mul_add_u64", scope: !3169, file: !3169, line: 94, type: !3297, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !84, retainedNodes: !71)
!3297 = !DISubroutineType(types: !3298)
!3298 = !{null, !324, !411, !51, !52}
!3299 = !DILocalVariable(name: "legs", arg: 1, scope: !3296, file: !3169, line: 94, type: !324)
!3300 = !DILocation(line: 0, scope: !3296)
!3301 = !DILocalVariable(name: "in", arg: 2, scope: !3296, file: !3169, line: 94, type: !411)
!3302 = !DILocalVariable(name: "a", arg: 3, scope: !3296, file: !3169, line: 94, type: !51)
!3303 = !DILocalVariable(name: "acc", arg: 4, scope: !3296, file: !3169, line: 94, type: !52)
!3304 = !DILocation(line: 95, column: 20, scope: !3296)
!3305 = !DILocalVariable(name: "tab", scope: !3296, file: !3169, line: 95, type: !62)
!3306 = !DILocalVariable(name: "lsb_ask", scope: !3296, file: !3169, line: 97, type: !53)
!3307 = !DILocalVariable(name: "i", scope: !3308, file: !3169, line: 99, type: !86)
!3308 = distinct !DILexicalBlock(scope: !3296, file: !3169, line: 99, column: 5)
!3309 = !DILocation(line: 0, scope: !3308)
!3310 = !DILocation(line: 99, column: 9, scope: !3308)
!3311 = !DILocation(line: 99, scope: !3308)
!3312 = !DILocation(line: 99, column: 20, scope: !3313)
!3313 = distinct !DILexicalBlock(scope: !3308, file: !3169, line: 99, column: 5)
!3314 = !DILocation(line: 99, column: 5, scope: !3308)
!3315 = !DILocation(line: 100, column: 21, scope: !3316)
!3316 = distinct !DILexicalBlock(scope: !3313, file: !3169, line: 99, column: 32)
!3317 = !DILocation(line: 100, column: 33, scope: !3316)
!3318 = !DILocation(line: 100, column: 51, scope: !3316)
!3319 = !DILocation(line: 100, column: 46, scope: !3316)
!3320 = !DILocation(line: 100, column: 44, scope: !3316)
!3321 = !DILocation(line: 101, column: 27, scope: !3316)
!3322 = !DILocation(line: 101, column: 33, scope: !3316)
!3323 = !DILocation(line: 101, column: 52, scope: !3316)
!3324 = !DILocation(line: 101, column: 59, scope: !3316)
!3325 = !DILocation(line: 101, column: 46, scope: !3316)
!3326 = !DILocation(line: 101, column: 44, scope: !3316)
!3327 = !DILocation(line: 101, column: 17, scope: !3316)
!3328 = !DILocation(line: 102, column: 21, scope: !3316)
!3329 = !DILocation(line: 102, column: 27, scope: !3316)
!3330 = !DILocation(line: 102, column: 33, scope: !3316)
!3331 = !DILocation(line: 102, column: 52, scope: !3316)
!3332 = !DILocation(line: 102, column: 59, scope: !3316)
!3333 = !DILocation(line: 102, column: 46, scope: !3316)
!3334 = !DILocation(line: 102, column: 44, scope: !3316)
!3335 = !DILocation(line: 102, column: 17, scope: !3316)
!3336 = !DILocation(line: 103, column: 21, scope: !3316)
!3337 = !DILocation(line: 103, column: 27, scope: !3316)
!3338 = !DILocation(line: 103, column: 33, scope: !3316)
!3339 = !DILocation(line: 103, column: 52, scope: !3316)
!3340 = !DILocation(line: 103, column: 59, scope: !3316)
!3341 = !DILocation(line: 103, column: 46, scope: !3316)
!3342 = !DILocation(line: 103, column: 44, scope: !3316)
!3343 = !DILocation(line: 103, column: 17, scope: !3316)
!3344 = !DILocation(line: 100, column: 9, scope: !3316)
!3345 = !DILocation(line: 100, column: 16, scope: !3316)
!3346 = !DILocation(line: 99, column: 29, scope: !3313)
!3347 = !DILocation(line: 99, column: 5, scope: !3313)
!3348 = distinct !{!3348, !3314, !3349, !388}
!3349 = !DILocation(line: 104, column: 5, scope: !3308)
!3350 = !DILocation(line: 105, column: 1, scope: !3296)
!3351 = distinct !DISubprogram(name: "ef_unpack_m_vec", scope: !2942, file: !2942, line: 44, type: !3352, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !84, retainedNodes: !71)
!3352 = !DISubroutineType(types: !3353)
!3353 = !{null, !86, !411, !61}
!3354 = !DILocalVariable(name: "legs", arg: 1, scope: !3351, file: !2942, line: 44, type: !86)
!3355 = !DILocation(line: 0, scope: !3351)
!3356 = !DILocalVariable(name: "in", arg: 2, scope: !3351, file: !2942, line: 44, type: !411)
!3357 = !DILocalVariable(name: "out", arg: 3, scope: !3351, file: !2942, line: 44, type: !61)
!3358 = !DILocalVariable(name: "in8", scope: !3351, file: !2942, line: 45, type: !90)
!3359 = !DILocalVariable(name: "i", scope: !3360, file: !2942, line: 46, type: !86)
!3360 = distinct !DILexicalBlock(scope: !3351, file: !2942, line: 46, column: 5)
!3361 = !DILocation(line: 0, scope: !3360)
!3362 = !DILocation(line: 46, column: 9, scope: !3360)
!3363 = !DILocation(line: 46, scope: !3360)
!3364 = !DILocation(line: 46, column: 29, scope: !3365)
!3365 = distinct !DILexicalBlock(scope: !3360, file: !2942, line: 46, column: 5)
!3366 = !DILocation(line: 46, column: 22, scope: !3365)
!3367 = !DILocation(line: 46, column: 5, scope: !3360)
!3368 = !DILocation(line: 51, column: 26, scope: !3369)
!3369 = distinct !DILexicalBlock(scope: !3365, file: !2942, line: 46, column: 42)
!3370 = !DILocation(line: 51, column: 21, scope: !3369)
!3371 = !DILocation(line: 51, column: 31, scope: !3369)
!3372 = !DILocation(line: 51, column: 9, scope: !3369)
!3373 = !DILocation(line: 51, column: 18, scope: !3369)
!3374 = !DILocation(line: 52, column: 26, scope: !3369)
!3375 = !DILocation(line: 52, column: 21, scope: !3369)
!3376 = !DILocation(line: 52, column: 30, scope: !3369)
!3377 = !DILocation(line: 52, column: 14, scope: !3369)
!3378 = !DILocation(line: 52, column: 9, scope: !3369)
!3379 = !DILocation(line: 52, column: 18, scope: !3369)
!3380 = !DILocation(line: 46, column: 37, scope: !3365)
!3381 = !DILocation(line: 46, column: 5, scope: !3365)
!3382 = distinct !{!3382, !3367, !3383, !388}
!3383 = !DILocation(line: 54, column: 5, scope: !3360)
!3384 = !DILocation(line: 55, column: 1, scope: !3351)
!3385 = distinct !DISubprogram(name: "mul_table", scope: !585, file: !585, line: 128, type: !586, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !84, retainedNodes: !71)
!3386 = !DILocalVariable(name: "b", arg: 1, scope: !3385, file: !585, line: 128, type: !175)
!3387 = !DILocation(line: 0, scope: !3385)
!3388 = !DILocation(line: 129, column: 19, scope: !3385)
!3389 = !DILocation(line: 129, column: 33, scope: !3385)
!3390 = !DILocalVariable(name: "x", scope: !3385, file: !585, line: 129, type: !62)
!3391 = !DILocalVariable(name: "high_nibble_mask", scope: !3385, file: !585, line: 131, type: !62)
!3392 = !DILocation(line: 133, column: 28, scope: !3385)
!3393 = !DILocalVariable(name: "high_half", scope: !3385, file: !585, line: 133, type: !62)
!3394 = !DILocation(line: 134, column: 28, scope: !3385)
!3395 = !DILocation(line: 134, column: 47, scope: !3385)
!3396 = !DILocation(line: 134, column: 34, scope: !3385)
!3397 = !DILocation(line: 134, column: 5, scope: !3385)
!3398 = distinct !DISubprogram(name: "mul_f", scope: !585, file: !585, line: 8, type: !1650, scopeLine: 8, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !84, retainedNodes: !71)
!3399 = !DILocalVariable(name: "a", arg: 1, scope: !3398, file: !585, line: 8, type: !51)
!3400 = !DILocation(line: 0, scope: !3398)
!3401 = !DILocalVariable(name: "b", arg: 2, scope: !3398, file: !585, line: 8, type: !51)
!3402 = !DILocation(line: 13, column: 10, scope: !3398)
!3403 = !DILocation(line: 13, column: 7, scope: !3398)
!3404 = !DILocation(line: 16, column: 17, scope: !3398)
!3405 = !DILocalVariable(name: "p", scope: !3398, file: !585, line: 10, type: !51)
!3406 = !DILocation(line: 17, column: 13, scope: !3398)
!3407 = !DILocation(line: 17, column: 17, scope: !3398)
!3408 = !DILocation(line: 17, column: 7, scope: !3398)
!3409 = !DILocation(line: 18, column: 13, scope: !3398)
!3410 = !DILocation(line: 18, column: 17, scope: !3398)
!3411 = !DILocation(line: 18, column: 7, scope: !3398)
!3412 = !DILocation(line: 19, column: 13, scope: !3398)
!3413 = !DILocation(line: 19, column: 17, scope: !3398)
!3414 = !DILocation(line: 19, column: 7, scope: !3398)
!3415 = !DILocalVariable(name: "top_p", scope: !3398, file: !585, line: 22, type: !51)
!3416 = !DILocation(line: 23, column: 37, scope: !3398)
!3417 = !DILocation(line: 23, column: 52, scope: !3398)
!3418 = !DILocation(line: 23, column: 43, scope: !3398)
!3419 = !DILocation(line: 23, column: 59, scope: !3398)
!3420 = !DILocalVariable(name: "out", scope: !3398, file: !585, line: 23, type: !51)
!3421 = !DILocation(line: 24, column: 5, scope: !3398)
!3422 = distinct !DISubprogram(name: "lincomb", scope: !585, file: !585, line: 69, type: !1658, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !84, retainedNodes: !71)
!3423 = !DILocalVariable(name: "a", arg: 1, scope: !3422, file: !585, line: 69, type: !90)
!3424 = !DILocation(line: 0, scope: !3422)
!3425 = !DILocalVariable(name: "b", arg: 2, scope: !3422, file: !585, line: 70, type: !90)
!3426 = !DILocalVariable(name: "n", arg: 3, scope: !3422, file: !585, line: 70, type: !86)
!3427 = !DILocalVariable(name: "m", arg: 4, scope: !3422, file: !585, line: 70, type: !86)
!3428 = !DILocalVariable(name: "ret", scope: !3422, file: !585, line: 71, type: !51)
!3429 = !DILocalVariable(name: "i", scope: !3430, file: !585, line: 72, type: !86)
!3430 = distinct !DILexicalBlock(scope: !3422, file: !585, line: 72, column: 5)
!3431 = !DILocation(line: 0, scope: !3430)
!3432 = !DILocation(line: 72, column: 10, scope: !3430)
!3433 = !DILocation(line: 72, scope: !3430)
!3434 = !DILocation(line: 72, column: 23, scope: !3435)
!3435 = distinct !DILexicalBlock(scope: !3430, file: !585, line: 72, column: 5)
!3436 = !DILocation(line: 72, column: 5, scope: !3430)
!3437 = !DILocation(line: 73, column: 27, scope: !3438)
!3438 = distinct !DILexicalBlock(scope: !3435, file: !585, line: 72, column: 41)
!3439 = !DILocation(line: 73, column: 33, scope: !3438)
!3440 = !DILocation(line: 73, column: 21, scope: !3438)
!3441 = !DILocation(line: 73, column: 15, scope: !3438)
!3442 = !DILocation(line: 72, column: 28, scope: !3435)
!3443 = !DILocation(line: 72, column: 35, scope: !3435)
!3444 = !DILocation(line: 72, column: 5, scope: !3435)
!3445 = distinct !{!3445, !3436, !3446, !388}
!3446 = !DILocation(line: 74, column: 5, scope: !3430)
!3447 = !DILocation(line: 75, column: 5, scope: !3422)
!3448 = distinct !DISubprogram(name: "add_f", scope: !585, file: !585, line: 42, type: !1650, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !84, retainedNodes: !71)
!3449 = !DILocalVariable(name: "a", arg: 1, scope: !3448, file: !585, line: 42, type: !51)
!3450 = !DILocation(line: 0, scope: !3448)
!3451 = !DILocalVariable(name: "b", arg: 2, scope: !3448, file: !585, line: 42, type: !51)
!3452 = !DILocation(line: 43, column: 14, scope: !3448)
!3453 = !DILocation(line: 43, column: 5, scope: !3448)
