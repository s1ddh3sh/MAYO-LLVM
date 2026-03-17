; ModuleID = 'composite'
source_filename = "composite"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "arm-unknown-none-eabi"

%struct.sk_t = type { [18525 x i64], [624 x i8] }

@__const.example_mayo.msg = private unnamed_addr constant <{ i8, [31 x i8] }> <{ i8 14, [31 x i8] zeroinitializer }>, align 1
@.str = private unnamed_addr constant [17 x i8] c"Example with %s\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [7 x i8] c"MAYO_1\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [17 x i8] c"mayo_keypair -> \00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [6 x i8] c"FAIL\0A\00", align 1, !dbg !14
@.str.4 = private unnamed_addr constant [4 x i8] c"OK\0A\00", align 1, !dbg !19
@.str.5 = private unnamed_addr constant [19 x i8] c"mayo_expand_sk -> \00", align 1, !dbg !24
@.str.6 = private unnamed_addr constant [19 x i8] c"mayo_expand_pk -> \00", align 1, !dbg !29
@.str.7 = private unnamed_addr constant [14 x i8] c"mayo_sign -> \00", align 1, !dbg !31
@.str.8 = private unnamed_addr constant [39 x i8] c"mayo_open (with correct signature) -> \00", align 1, !dbg !36
@.str.9 = private unnamed_addr constant [41 x i8] c"mayo_verify (with correct signature) -> \00", align 1, !dbg !41
@f_tail = internal unnamed_addr constant [4 x i8] c"\08\01\01\00", align 1, !dbg !46
@pqmayo_MAYO_1_ref_uint32_t_blocker = dso_local local_unnamed_addr global i32 0, align 4, !dbg !82
@pqmayo_MAYO_1_ref_uint64_t_blocker = dso_local global i64 0, align 8, !dbg !97
@pqmayo_MAYO_1_ref_unsigned_char_blocker = dso_local global i8 0, align 1, !dbg !101

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
    #dbg_value(i32 486, !155, !DIExpression(), !152)
  store i32 486, ptr %smlen, align 4, !dbg !156
  %call = call dereferenceable_or_null(1420) ptr @calloc(i32 noundef 1420, i32 noundef 1) #7, !dbg !157
    #dbg_value(ptr %call, !158, !DIExpression(), !152)
  %call1 = call dereferenceable_or_null(24) ptr @calloc(i32 noundef 24, i32 noundef 1) #7, !dbg !159
    #dbg_value(ptr %call1, !160, !DIExpression(), !152)
  %call2 = call dereferenceable_or_null(149640) ptr @calloc(i32 noundef 1, i32 noundef 149640) #7, !dbg !161
    #dbg_value(ptr %call2, !162, !DIExpression(), !152)
  %call3 = call dereferenceable_or_null(148824) ptr @calloc(i32 noundef 1, i32 noundef 148824) #7, !dbg !163
    #dbg_value(ptr %call3, !164, !DIExpression(), !152)
  %0 = load i32, ptr %msglen, align 4, !dbg !179
    #dbg_value(i32 %0, !153, !DIExpression(), !152)
  %add4 = add i32 %0, 454, !dbg !180
  %call5 = call ptr @calloc(i32 noundef %add4, i32 noundef 1) #7, !dbg !181
    #dbg_value(ptr %call5, !182, !DIExpression(), !152)
    #dbg_declare(ptr %msg, !183, !DIExpression(), !187)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %msg, ptr noundef nonnull align 1 dereferenceable(32) @__const.example_mayo.msg, i32 32, i1 false), !dbg !187
    #dbg_declare(ptr %msg2, !188, !DIExpression(), !189)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %msg2, i8 0, i32 32, i1 false), !dbg !189
  %call6 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #8, !dbg !190
  %call7 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.2) #8, !dbg !191
  %call8 = call i32 @pqmayo_MAYO_1_ref_mayo_keypair(ptr noundef %p, ptr noundef %call, ptr noundef %call1) #6, !dbg !192
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
  %call12 = call i32 @pqmayo_MAYO_1_ref_mayo_expand_sk(ptr noundef %p, ptr noundef %call1, ptr noundef %call3) #6, !dbg !202
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
  %call20 = call i32 @pqmayo_MAYO_1_ref_mayo_expand_pk(ptr noundef %p, ptr noundef %call, ptr noundef %call2) #6, !dbg !211
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
  %call28 = call i32 @pqmayo_MAYO_1_ref_mayo_sign(ptr noundef %p, ptr noundef %call5, ptr noundef nonnull %smlen, ptr noundef nonnull %msg, i32 noundef %1, ptr noundef %call1) #6, !dbg !221
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
  %call37 = call i32 @pqmayo_MAYO_1_ref_mayo_open(ptr noundef %p, ptr noundef nonnull %msg2, ptr noundef nonnull %msglen, ptr noundef %call5, i32 noundef %2, ptr noundef %call) #6, !dbg !231
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
  %call49 = call i32 @pqmayo_MAYO_1_ref_mayo_verify(ptr noundef %p, ptr noundef nonnull %msg, i32 noundef %4, ptr noundef %call5, ptr noundef %call) #6, !dbg !244
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
  call void @mayo_secure_free(ptr noundef %call3, i32 noundef 148824) #8, !dbg !258
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
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_1_ref_mayo_keypair(ptr noundef %p, ptr noundef %pk, ptr noundef %sk) local_unnamed_addr #0 !dbg !261 {
entry:
    #dbg_value(ptr %p, !292, !DIExpression(), !293)
    #dbg_value(ptr %pk, !294, !DIExpression(), !293)
    #dbg_value(ptr %sk, !295, !DIExpression(), !293)
    #dbg_value(i32 0, !296, !DIExpression(), !293)
  %call = call i32 @pqmayo_MAYO_1_ref_mayo_keypair_compact(ptr noundef %p, ptr noundef %pk, ptr noundef %sk) #6, !dbg !297
    #dbg_value(i32 %call, !296, !DIExpression(), !293)
    #dbg_label(!298, !299)
  ret i32 %call, !dbg !300
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_1_ref_mayo_keypair_compact(ptr noundef %p, ptr noundef %cpk, ptr noundef %csk) local_unnamed_addr #0 !dbg !301 {
entry:
  %S = alloca [328 x i8], align 1
  %P = alloca [18525 x i64], align 8
  %P3 = alloca [320 x i64], align 8
  %O = alloca [624 x i8], align 1
  %P3_upper = alloca [180 x i64], align 8
    #dbg_value(ptr %p, !302, !DIExpression(), !303)
    #dbg_value(ptr %cpk, !304, !DIExpression(), !303)
    #dbg_value(ptr %csk, !305, !DIExpression(), !303)
    #dbg_value(i32 0, !306, !DIExpression(), !303)
    #dbg_value(ptr %csk, !307, !DIExpression(), !303)
    #dbg_declare(ptr %S, !308, !DIExpression(), !312)
    #dbg_declare(ptr %P, !313, !DIExpression(), !314)
    #dbg_declare(ptr %P3, !315, !DIExpression(), !319)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(2560) %P3, i8 0, i32 2560, i1 false), !dbg !319
    #dbg_declare(ptr %O, !320, !DIExpression(), !322)
    #dbg_value(i32 5, !323, !DIExpression(), !303)
    #dbg_value(i32 78, !325, !DIExpression(), !303)
    #dbg_value(i32 78, !326, !DIExpression(), !303)
    #dbg_value(i32 8, !327, !DIExpression(), !303)
    #dbg_value(i32 312, !328, !DIExpression(), !303)
    #dbg_value(i32 15405, !329, !DIExpression(), !303)
    #dbg_value(i32 180, !330, !DIExpression(), !303)
    #dbg_value(i32 16, !331, !DIExpression(), !303)
    #dbg_value(i32 24, !332, !DIExpression(), !303)
    #dbg_value(ptr %P, !333, !DIExpression(), !303)
  %add.ptr = getelementptr inbounds nuw i8, ptr %P, i32 123240, !dbg !334
    #dbg_value(ptr %add.ptr, !335, !DIExpression(), !303)
  %call = call i32 @randombytes(ptr noundef %csk, i32 noundef 24) #8, !dbg !336
  %cmp.not = icmp eq i32 %call, 0, !dbg !338
  br i1 %cmp.not, label %if.end, label %err, !dbg !338

if.end:                                           ; preds = %entry
    #dbg_value(ptr %P, !333, !DIExpression(), !303)
  %call3 = call i32 @shake256(ptr noundef nonnull %S, i32 noundef 328, ptr noundef %csk, i32 noundef 24) #8, !dbg !339
    #dbg_value(ptr %S, !340, !DIExpression(), !303)
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %S, i32 16, !dbg !341
  call fastcc void @decode(ptr noundef nonnull %add.ptr6, ptr noundef nonnull %O, i32 noundef 624) #6, !dbg !342
  call fastcc void @expand_P1_P2(ptr noundef %p, ptr noundef nonnull %P, ptr noundef nonnull %S) #6, !dbg !343
  call fastcc void @compute_P3(ptr noundef %p, ptr noundef nonnull %P, ptr noundef nonnull %add.ptr, ptr noundef nonnull %O, ptr noundef nonnull %P3) #6, !dbg !344
  %call11 = call ptr @memcpy(ptr noundef %cpk, ptr noundef nonnull %S, i32 noundef 16) #8, !dbg !345
    #dbg_declare(ptr %P3_upper, !346, !DIExpression(), !350)
  call void @pqmayo_MAYO_1_ref_m_upper(ptr noundef %p, ptr noundef nonnull %P3, ptr noundef nonnull %P3_upper, i32 noundef 8) #6, !dbg !351
  %add.ptr15 = getelementptr inbounds nuw i8, ptr %cpk, i32 16, !dbg !352
  call fastcc void @pack_m_vecs(ptr noundef nonnull %P3_upper, ptr noundef nonnull %add.ptr15, i32 noundef 36, i32 noundef 78) #6, !dbg !353
  br label %err, !dbg !353

err:                                              ; preds = %entry, %if.end
  %ret.0 = phi i32 [ 0, %if.end ], [ 1, %entry ], !dbg !303
    #dbg_value(i32 %ret.0, !306, !DIExpression(), !303)
    #dbg_label(!354, !355)
  call void @mayo_secure_clear(ptr noundef nonnull %O, i32 noundef 624) #8, !dbg !356
  call void @mayo_secure_clear(ptr noundef nonnull %add.ptr, i32 noundef 24960) #8, !dbg !357
  call void @mayo_secure_clear(ptr noundef nonnull %P3, i32 noundef 2560) #8, !dbg !358
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
  %call = call i32 @AES_128_CTR(ptr noundef %P, i32 noundef 144495, ptr noundef %seed_pk, i32 noundef 16) #8, !dbg !404
  call fastcc void @unpack_m_vecs(ptr noundef %P, ptr noundef %P, i32 noundef 3705, i32 noundef 78) #6, !dbg !405
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
    #dbg_value(i32 5, !418, !DIExpression(), !413)
    #dbg_value(i32 78, !419, !DIExpression(), !413)
    #dbg_value(i32 8, !420, !DIExpression(), !413)
  call fastcc void @P1_times_O(ptr noundef %p, ptr noundef %P1, ptr noundef %O, ptr noundef %P2) #6, !dbg !421
  call fastcc void @mul_add_mat_trans_x_m_mat(i32 noundef 5, ptr noundef %O, ptr noundef %P2, ptr noundef %P3, i32 noundef 78, i32 noundef 8, i32 noundef 8) #6, !dbg !422
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
  call fastcc void @mul_add_m_upper_triangular_mat_x_mat(i32 noundef 5, ptr noundef %P1, ptr noundef %O, ptr noundef %acc, i32 noundef 78, i32 noundef 78, i32 noundef 8, i32 noundef 1) #6, !dbg !466
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
  %exitcond = icmp ne i32 %i.0, 5, !dbg !545
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
  %tmp = alloca [5 x i64], align 8
    #dbg_value(ptr %in, !667, !DIExpression(), !668)
    #dbg_value(ptr %out, !669, !DIExpression(), !668)
    #dbg_value(i32 %vecs, !670, !DIExpression(), !668)
    #dbg_value(i32 %m, !671, !DIExpression(), !668)
  %add = add nsw i32 %m, 15, !dbg !672
  %div = sdiv i32 %add, 16, !dbg !673
    #dbg_value(i32 %div, !674, !DIExpression(), !668)
    #dbg_value(ptr %out, !675, !DIExpression(), !668)
    #dbg_declare(ptr %tmp, !676, !DIExpression(), !680)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %tmp, i8 0, i32 40, i1 false), !dbg !680
    #dbg_value(i32 %vecs, !681, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !683)
  br label %for.cond, !dbg !684

for.cond:                                         ; preds = %for.body, %entry
  %i.0.in = phi i32 [ %vecs, %entry ], [ %i.0, %for.body ]
    #dbg_value(i32 %i.0.in, !681, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !683)
  %cmp = icmp sgt i32 %i.0.in, 0, !dbg !685
  br i1 %cmp, label %for.body, label %for.end, !dbg !687

for.body:                                         ; preds = %for.cond
  %i.0 = add nsw i32 %i.0.in, -1, !dbg !688
    #dbg_value(i32 %i.0, !681, !DIExpression(), !683)
  %mul = mul nsw i32 %i.0, %m, !dbg !689
  %div1 = sdiv i32 %mul, 2, !dbg !691
  %add.ptr = getelementptr inbounds i8, ptr %in, i32 %div1, !dbg !692
  %div2 = sdiv i32 %m, 2, !dbg !693
  %call = call ptr @memcpy(ptr noundef nonnull %tmp, ptr noundef %add.ptr, i32 noundef %div2) #8, !dbg !694
  %mul3 = mul nsw i32 %i.0, %div, !dbg !695
  %mul4 = shl i32 %mul3, 3, !dbg !696
  %add.ptr5 = getelementptr inbounds nuw i8, ptr %out, i32 %mul4, !dbg !697
  %mul7 = shl nsw i32 %div, 3, !dbg !698
  %call8 = call ptr @memcpy(ptr noundef %add.ptr5, ptr noundef nonnull %tmp, i32 noundef %mul7) #8, !dbg !699
    #dbg_value(i32 %i.0, !681, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !683)
  br label %for.cond, !dbg !700, !llvm.loop !701

for.end:                                          ; preds = %for.cond
  ret void, !dbg !703
}

; Function Attrs: nounwind
define dso_local i32 @pqmayo_MAYO_1_ref_mayo_expand_sk(ptr noundef %p, ptr noundef %csk, ptr noundef %sk) local_unnamed_addr #0 !dbg !704 {
entry:
  %S = alloca [328 x i8], align 1
    #dbg_value(ptr %p, !713, !DIExpression(), !714)
    #dbg_value(ptr %csk, !715, !DIExpression(), !714)
    #dbg_value(ptr %sk, !716, !DIExpression(), !714)
    #dbg_value(i32 0, !717, !DIExpression(), !714)
    #dbg_declare(ptr %S, !718, !DIExpression(), !719)
    #dbg_value(ptr %sk, !720, !DIExpression(), !714)
  %O2 = getelementptr inbounds nuw i8, ptr %sk, i32 148200, !dbg !721
    #dbg_value(ptr %O2, !722, !DIExpression(), !714)
    #dbg_value(i32 8, !723, !DIExpression(), !714)
    #dbg_value(i32 78, !724, !DIExpression(), !714)
    #dbg_value(i32 312, !725, !DIExpression(), !714)
    #dbg_value(i32 16, !726, !DIExpression(), !714)
    #dbg_value(i32 24, !727, !DIExpression(), !714)
    #dbg_value(ptr %csk, !728, !DIExpression(), !714)
    #dbg_value(ptr %S, !729, !DIExpression(), !714)
  %call = call i32 @shake256(ptr noundef nonnull %S, i32 noundef 328, ptr noundef %csk, i32 noundef 24) #8, !dbg !730
  %add.ptr = getelementptr inbounds nuw i8, ptr %S, i32 16, !dbg !731
  call fastcc void @decode(ptr noundef nonnull %add.ptr, ptr noundef nonnull %O2, i32 noundef 624) #6, !dbg !732
  call fastcc void @expand_P1_P2(ptr noundef %p, ptr noundef %sk, ptr noundef nonnull %S) #6, !dbg !733
  %add.ptr7 = getelementptr inbounds nuw i8, ptr %sk, i32 123240, !dbg !734
    #dbg_value(ptr %add.ptr7, !735, !DIExpression(), !714)
    #dbg_value(ptr %sk, !736, !DIExpression(), !714)
    #dbg_value(ptr %add.ptr7, !737, !DIExpression(), !714)
  call fastcc void @P1P1t_times_O(ptr noundef %p, ptr noundef %sk, ptr noundef nonnull %O2, ptr noundef nonnull %add.ptr7) #6, !dbg !738
  call void @mayo_secure_clear(ptr noundef nonnull %S, i32 noundef 328) #8, !dbg !739
  ret i32 0, !dbg !740
}

; Function Attrs: nounwind
define internal fastcc void @P1P1t_times_O(ptr noundef %p, ptr noundef %P1, ptr noundef %O, ptr noundef %acc) unnamed_addr #0 !dbg !741 {
entry:
    #dbg_value(ptr %p, !742, !DIExpression(), !743)
    #dbg_value(ptr %P1, !744, !DIExpression(), !743)
    #dbg_value(ptr %O, !745, !DIExpression(), !743)
    #dbg_value(ptr %acc, !746, !DIExpression(), !743)
    #dbg_value(i32 8, !747, !DIExpression(), !743)
    #dbg_value(i32 78, !748, !DIExpression(), !743)
    #dbg_value(i32 5, !749, !DIExpression(), !743)
    #dbg_value(i32 0, !750, !DIExpression(), !743)
    #dbg_value(i32 0, !751, !DIExpression(), !753)
  br label %for.cond, !dbg !754

for.cond:                                         ; preds = %for.inc27, %entry
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc27 ], [ 78, %entry ], !dbg !755
  %bs_mat_entries_used.0 = phi i32 [ 0, %entry ], [ %bs_mat_entries_used.1.lcssa, %for.inc27 ], !dbg !755
  %r.0 = phi i32 [ 0, %entry ], [ %inc28, %for.inc27 ], !dbg !756
    #dbg_value(i32 %r.0, !751, !DIExpression(), !753)
    #dbg_value(i32 %bs_mat_entries_used.0, !750, !DIExpression(), !743)
  %exitcond2 = icmp ne i32 %r.0, 78, !dbg !757
  br i1 %exitcond2, label %for.cond1.preheader, label %for.end29, !dbg !759

for.cond1.preheader:                              ; preds = %for.cond
  %0 = add i32 %bs_mat_entries_used.0, %indvars.iv, !dbg !760
  br label %for.cond1, !dbg !760

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc25
  %bs_mat_entries_used.1 = phi i32 [ %bs_mat_entries_used.2, %for.inc25 ], [ %bs_mat_entries_used.0, %for.cond1.preheader ], !dbg !743
  %c.0 = phi i32 [ %inc, %for.inc25 ], [ %r.0, %for.cond1.preheader ], !dbg !763
    #dbg_value(i32 %c.0, !764, !DIExpression(), !765)
    #dbg_value(i32 %bs_mat_entries_used.1, !750, !DIExpression(), !743)
  %exitcond1 = icmp ne i32 %bs_mat_entries_used.1, %0, !dbg !766
  br i1 %exitcond1, label %for.body3, label %for.inc27, !dbg !760

for.body3:                                        ; preds = %for.cond1
  %cmp4 = icmp eq i32 %c.0, %r.0, !dbg !768
  br i1 %cmp4, label %for.inc25, label %for.cond5.preheader, !dbg !768

for.cond5.preheader:                              ; preds = %for.body3
  br label %for.cond5, !dbg !771

for.cond5:                                        ; preds = %for.cond5.preheader, %for.body7
  %k.0 = phi i32 [ %add23, %for.body7 ], [ 0, %for.cond5.preheader ], !dbg !773
    #dbg_value(i32 %k.0, !774, !DIExpression(), !775)
  %exitcond = icmp ne i32 %k.0, 8, !dbg !776
  br i1 %exitcond, label %for.body7, label %for.inc25.loopexit, !dbg !771

for.body7:                                        ; preds = %for.cond5
  %add.ptr.idx = mul nsw i32 %bs_mat_entries_used.1, 40, !dbg !778
  %add.ptr = getelementptr inbounds i8, ptr %P1, i32 %add.ptr.idx, !dbg !778
  %mul8 = shl nuw nsw i32 %c.0, 3, !dbg !780
  %add9 = or disjoint i32 %mul8, %k.0, !dbg !781
  %arrayidx = getelementptr inbounds nuw i8, ptr %O, i32 %add9, !dbg !782
  %1 = load i8, ptr %arrayidx, align 1, !dbg !782
  %mul10 = shl nuw nsw i32 %r.0, 3, !dbg !783
  %add11 = or disjoint i32 %mul10, %k.0, !dbg !784
  %add.ptr13.idx = mul nuw nsw i32 %add11, 40, !dbg !785
  %add.ptr13 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr13.idx, !dbg !785
  call fastcc void @m_vec_mul_add(i32 noundef 5, ptr noundef %add.ptr, i8 noundef zeroext %1, ptr noundef %add.ptr13) #6, !dbg !786
  %add.ptr15.idx = mul nsw i32 %bs_mat_entries_used.1, 40, !dbg !787
  %add.ptr15 = getelementptr inbounds i8, ptr %P1, i32 %add.ptr15.idx, !dbg !787
  %mul16 = shl nuw nsw i32 %r.0, 3, !dbg !788
  %add17 = or disjoint i32 %mul16, %k.0, !dbg !789
  %arrayidx18 = getelementptr inbounds nuw i8, ptr %O, i32 %add17, !dbg !790
  %2 = load i8, ptr %arrayidx18, align 1, !dbg !790
  %mul19 = shl nuw nsw i32 %c.0, 3, !dbg !791
  %add20 = or disjoint i32 %mul19, %k.0, !dbg !792
  %add.ptr22.idx = mul nuw nsw i32 %add20, 40, !dbg !793
  %add.ptr22 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr22.idx, !dbg !793
  call fastcc void @m_vec_mul_add(i32 noundef 5, ptr noundef %add.ptr15, i8 noundef zeroext %2, ptr noundef %add.ptr22) #6, !dbg !794
  %add23 = add nuw nsw i32 %k.0, 1, !dbg !795
    #dbg_value(i32 %add23, !774, !DIExpression(), !775)
  br label %for.cond5, !dbg !796, !llvm.loop !797

for.inc25.loopexit:                               ; preds = %for.cond5
  br label %for.inc25, !dbg !799

for.inc25:                                        ; preds = %for.inc25.loopexit, %for.body3
  %bs_mat_entries_used.2 = add i32 %bs_mat_entries_used.1, 1, !dbg !799
    #dbg_value(i32 %bs_mat_entries_used.2, !750, !DIExpression(), !743)
  %inc = add nuw nsw i32 %c.0, 1, !dbg !800
    #dbg_value(i32 %inc, !764, !DIExpression(), !765)
  br label %for.cond1, !dbg !801, !llvm.loop !802

for.inc27:                                        ; preds = %for.cond1
  %bs_mat_entries_used.1.lcssa = phi i32 [ %bs_mat_entries_used.1, %for.cond1 ], !dbg !743
  %inc28 = add nuw nsw i32 %r.0, 1, !dbg !804
    #dbg_value(i32 %inc28, !751, !DIExpression(), !753)
  %indvars.iv.next = add nsw i32 %indvars.iv, -1, !dbg !805
  br label %for.cond, !dbg !805, !llvm.loop !806

for.end29:                                        ; preds = %for.cond
  ret void, !dbg !808
}

; Function Attrs: nounwind
define dso_local i32 @pqmayo_MAYO_1_ref_mayo_sign_signature(ptr noundef %p, ptr noundef %sig, ptr noundef %siglen, ptr noundef %m, i32 noundef %mlen, ptr noundef %csk) local_unnamed_addr #0 !dbg !809 {
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
  %sk = alloca %struct.sk_t, align 32
  %Ox = alloca [78 x i8], align 1
  %tmp = alloca [81 x i8], align 1
  %Mtmp = alloca [400 x i64], align 8
    #dbg_value(ptr %p, !813, !DIExpression(), !814)
    #dbg_value(ptr %sig, !815, !DIExpression(), !814)
    #dbg_value(ptr %siglen, !816, !DIExpression(), !814)
    #dbg_value(ptr %m, !817, !DIExpression(), !814)
    #dbg_value(i32 %mlen, !818, !DIExpression(), !814)
    #dbg_value(ptr %csk, !819, !DIExpression(), !814)
    #dbg_value(i32 0, !820, !DIExpression(), !814)
    #dbg_declare(ptr %tenc, !821, !DIExpression(), !823)
    #dbg_declare(ptr %t, !824, !DIExpression(), !828)
    #dbg_declare(ptr %y, !829, !DIExpression(), !830)
    #dbg_declare(ptr %salt, !831, !DIExpression(), !835)
    #dbg_declare(ptr %V, !836, !DIExpression(), !840)
    #dbg_declare(ptr %Vdec, !841, !DIExpression(), !845)
    #dbg_declare(ptr %A, !846, !DIExpression(), !850)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6480) %A, i8 0, i32 6480, i1 false), !dbg !850
    #dbg_declare(ptr %x, !851, !DIExpression(), !855)
    #dbg_declare(ptr %r, !856, !DIExpression(), !860)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(81) %r, i8 0, i32 81, i1 false), !dbg !860
    #dbg_declare(ptr %s, !861, !DIExpression(), !862)
    #dbg_declare(ptr %sk, !863, !DIExpression(), !864)
    #dbg_declare(ptr %Ox, !865, !DIExpression(), !866)
    #dbg_declare(ptr %tmp, !867, !DIExpression(), !868)
    #dbg_value(i32 78, !869, !DIExpression(), !814)
    #dbg_value(i32 86, !870, !DIExpression(), !814)
    #dbg_value(i32 8, !871, !DIExpression(), !814)
    #dbg_value(i32 10, !872, !DIExpression(), !814)
    #dbg_value(i32 78, !873, !DIExpression(), !814)
    #dbg_value(i32 39, !874, !DIExpression(), !814)
    #dbg_value(i32 39, !875, !DIExpression(), !814)
    #dbg_value(i32 40, !876, !DIExpression(), !814)
    #dbg_value(i32 454, !877, !DIExpression(), !814)
    #dbg_value(i32 81, !878, !DIExpression(), !814)
    #dbg_value(i32 32, !879, !DIExpression(), !814)
    #dbg_value(i32 24, !880, !DIExpression(), !814)
    #dbg_value(i32 24, !881, !DIExpression(), !814)
  %call = call i32 @pqmayo_MAYO_1_ref_mayo_expand_sk(ptr noundef %p, ptr noundef %csk, ptr noundef nonnull %sk) #6, !dbg !882
    #dbg_value(i32 %call, !820, !DIExpression(), !814)
  %cmp.not = icmp eq i32 %call, 0, !dbg !883
  br i1 %cmp.not, label %if.end, label %err, !dbg !883

if.end:                                           ; preds = %entry
    #dbg_value(ptr %csk, !885, !DIExpression(), !814)
  %call1 = call i32 @shake256(ptr noundef nonnull %tmp, i32 noundef 32, ptr noundef %m, i32 noundef %mlen) #8, !dbg !886
    #dbg_value(ptr %sk, !887, !DIExpression(), !814)
  %add.ptr = getelementptr inbounds nuw i8, ptr %sk, i32 123240, !dbg !888
    #dbg_value(ptr %add.ptr, !889, !DIExpression(), !814)
    #dbg_declare(ptr %Mtmp, !890, !DIExpression(), !894)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(3200) %Mtmp, i8 0, i32 3200, i1 false), !dbg !894
  %add.ptr5 = getelementptr inbounds nuw i8, ptr %tmp, i32 32, !dbg !895
  %call6 = call i32 @randombytes(ptr noundef nonnull %add.ptr5, i32 noundef 24) #8, !dbg !897
  %cmp7.not = icmp eq i32 %call6, 0, !dbg !898
  br i1 %cmp7.not, label %if.end9, label %err, !dbg !898

if.end9:                                          ; preds = %if.end
  %add.ptr12 = getelementptr inbounds nuw i8, ptr %tmp, i32 56, !dbg !899
  %call13 = call ptr @memcpy(ptr noundef nonnull %add.ptr12, ptr noundef %csk, i32 noundef 24) #8, !dbg !900
  %call16 = call i32 @shake256(ptr noundef nonnull %salt, i32 noundef 24, ptr noundef nonnull %tmp, i32 noundef 80) #8, !dbg !901
  %add.ptr18 = getelementptr inbounds nuw i8, ptr %tmp, i32 32, !dbg !902
  %call20 = call ptr @memcpy(ptr noundef nonnull %add.ptr18, ptr noundef nonnull %salt, i32 noundef 24) #8, !dbg !903
  %add.ptr24 = getelementptr inbounds nuw i8, ptr %tmp, i32 80, !dbg !904
    #dbg_value(ptr %add.ptr24, !905, !DIExpression(), !814)
  %call27 = call i32 @shake256(ptr noundef nonnull %tenc, i32 noundef 39, ptr noundef nonnull %tmp, i32 noundef 56) #8, !dbg !906
  call fastcc void @decode(ptr noundef nonnull %tenc, ptr noundef nonnull %t, i32 noundef 78) #6, !dbg !907
    #dbg_value(i32 0, !908, !DIExpression(), !910)
  %add.ptr61 = getelementptr inbounds nuw i8, ptr %V, i32 390, !dbg !911
  br label %for.cond, !dbg !914

for.cond:                                         ; preds = %if.else, %if.end9
  %ctr.0 = phi i32 [ 0, %if.end9 ], [ %inc75, %if.else ], !dbg !915
    #dbg_value(i32 %ctr.0, !908, !DIExpression(), !910)
  %exitcond2 = icmp ne i32 %ctr.0, 256, !dbg !916
  br i1 %exitcond2, label %for.body, label %for.end76, !dbg !917

for.body:                                         ; preds = %for.cond
  %conv = trunc nuw i32 %ctr.0 to i8, !dbg !918
  store i8 %conv, ptr %add.ptr24, align 1, !dbg !919
  %call33 = call i32 @shake256(ptr noundef nonnull %V, i32 noundef 430, ptr noundef nonnull %tmp, i32 noundef 81) #8, !dbg !920
    #dbg_value(i32 0, !921, !DIExpression(), !923)
  br label %for.cond34, !dbg !924

for.cond34:                                       ; preds = %for.body37, %for.body
  %i.0 = phi i32 [ 0, %for.body ], [ %inc, %for.body37 ], !dbg !925
    #dbg_value(i32 %i.0, !921, !DIExpression(), !923)
  %exitcond = icmp ne i32 %i.0, 10, !dbg !926
  br i1 %exitcond, label %for.body37, label %for.end, !dbg !928

for.body37:                                       ; preds = %for.cond34
  %mul = mul nuw nsw i32 %i.0, 39, !dbg !929
  %add.ptr39 = getelementptr inbounds nuw i8, ptr %V, i32 %mul, !dbg !931
  %mul41 = mul nuw nsw i32 %i.0, 78, !dbg !932
  %add.ptr42 = getelementptr inbounds nuw i8, ptr %Vdec, i32 %mul41, !dbg !933
  call fastcc void @decode(ptr noundef nonnull %add.ptr39, ptr noundef nonnull %add.ptr42, i32 noundef 78) #6, !dbg !934
  %inc = add nuw nsw i32 %i.0, 1, !dbg !935
    #dbg_value(i32 %inc, !921, !DIExpression(), !923)
  br label %for.cond34, !dbg !936, !llvm.loop !937

for.end:                                          ; preds = %for.cond34
  call fastcc void @compute_M_and_VPV(ptr noundef %p, ptr noundef nonnull %Vdec, ptr noundef nonnull %add.ptr, ptr noundef nonnull %sk, ptr noundef nonnull %Mtmp, ptr noundef nonnull %A) #6, !dbg !939
  call fastcc void @compute_rhs(ptr noundef %p, ptr noundef nonnull %A, ptr noundef nonnull %t, ptr noundef nonnull %y) #6, !dbg !940
  call fastcc void @compute_A(ptr noundef %p, ptr noundef nonnull %Mtmp, ptr noundef nonnull %A) #6, !dbg !941
    #dbg_value(i32 0, !942, !DIExpression(), !944)
  br label %for.cond52, !dbg !945

for.cond52:                                       ; preds = %for.body55, %for.end
  %i51.0 = phi i32 [ 0, %for.end ], [ %inc58, %for.body55 ], !dbg !946
    #dbg_value(i32 %i51.0, !942, !DIExpression(), !944)
  %exitcond1 = icmp ne i32 %i51.0, 78, !dbg !947
  br i1 %exitcond1, label %for.body55, label %for.end59, !dbg !949

for.body55:                                       ; preds = %for.cond52
  %0 = mul nuw nsw i32 %i51.0, 81, !dbg !950
  %sub = add nuw nsw i32 %0, 80, !dbg !952
  %arrayidx = getelementptr inbounds nuw [6480 x i8], ptr %A, i32 0, i32 %sub, !dbg !953
  store i8 0, ptr %arrayidx, align 1, !dbg !954
  %inc58 = add nuw nsw i32 %i51.0, 1, !dbg !955
    #dbg_value(i32 %inc58, !942, !DIExpression(), !944)
  br label %for.cond52, !dbg !956, !llvm.loop !957

for.end59:                                        ; preds = %for.cond52
  call fastcc void @decode(ptr noundef nonnull %add.ptr61, ptr noundef nonnull %r, i32 noundef 80) #6, !dbg !959
  %call67 = call i32 @pqmayo_MAYO_1_ref_sample_solution(ptr noundef %p, ptr noundef nonnull %A, ptr noundef nonnull %y, ptr noundef nonnull %r, ptr noundef nonnull %x, i32 noundef 10, i32 noundef 8, i32 noundef 78, i32 noundef 81) #6, !dbg !960
  %tobool.not = icmp eq i32 %call67, 0, !dbg !960
  br i1 %tobool.not, label %if.else, label %for.end76, !dbg !960

if.else:                                          ; preds = %for.end59
  %call70 = call ptr @memset(ptr noundef nonnull %Mtmp, i32 noundef 0, i32 noundef 3200) #8, !dbg !962
  %call72 = call ptr @memset(ptr noundef nonnull %A, i32 noundef 0, i32 noundef 6480) #8, !dbg !964
  %inc75 = add nuw nsw i32 %ctr.0, 1, !dbg !965
    #dbg_value(i32 %inc75, !908, !DIExpression(), !910)
  br label %for.cond, !dbg !966, !llvm.loop !967

for.end76:                                        ; preds = %for.end59, %for.cond
    #dbg_value(i32 0, !969, !DIExpression(), !971)
  br label %for.cond78, !dbg !972

for.cond78:                                       ; preds = %for.body81, %for.end76
  %i77.0 = phi i32 [ 0, %for.end76 ], [ %inc103, %for.body81 ], !dbg !973
    #dbg_value(i32 %i77.0, !969, !DIExpression(), !971)
  %exitcond3 = icmp ne i32 %i77.0, 10, !dbg !974
  br i1 %exitcond3, label %for.body81, label %for.end104, !dbg !976

for.body81:                                       ; preds = %for.cond78
  %mul83 = mul nuw nsw i32 %i77.0, 78, !dbg !977
  %add.ptr84 = getelementptr inbounds nuw i8, ptr %Vdec, i32 %mul83, !dbg !979
    #dbg_value(ptr %add.ptr84, !980, !DIExpression(), !814)
  %O = getelementptr inbounds nuw i8, ptr %sk, i32 148200, !dbg !981
  %mul87 = shl nuw nsw i32 %i77.0, 3, !dbg !982
  %add.ptr88 = getelementptr inbounds nuw i8, ptr %x, i32 %mul87, !dbg !983
  call fastcc void @mat_mul(ptr noundef nonnull %O, ptr noundef nonnull %add.ptr88, ptr noundef nonnull %Ox, i32 noundef 8, i32 noundef 78, i32 noundef 1) #6, !dbg !984
  %mul92 = mul nuw nsw i32 %i77.0, 86, !dbg !985
  %add.ptr93 = getelementptr inbounds nuw i8, ptr %s, i32 %mul92, !dbg !986
  call fastcc void @mat_add(ptr noundef nonnull %add.ptr84, ptr noundef nonnull %Ox, ptr noundef nonnull %add.ptr93, i32 noundef 78, i32 noundef 1) #6, !dbg !987
  %mul95 = mul nuw nsw i32 %i77.0, 86, !dbg !988
  %add.ptr96 = getelementptr inbounds nuw i8, ptr %s, i32 %mul95, !dbg !989
  %add.ptr97 = getelementptr inbounds nuw i8, ptr %add.ptr96, i32 78, !dbg !990
  %mul99 = shl nuw nsw i32 %i77.0, 3, !dbg !991
  %add.ptr100 = getelementptr inbounds nuw i8, ptr %x, i32 %mul99, !dbg !992
  %call101 = call ptr @memcpy(ptr noundef nonnull %add.ptr97, ptr noundef nonnull %add.ptr100, i32 noundef 8) #8, !dbg !993
  %inc103 = add nuw nsw i32 %i77.0, 1, !dbg !994
    #dbg_value(i32 %inc103, !969, !DIExpression(), !971)
  br label %for.cond78, !dbg !995, !llvm.loop !996

for.end104:                                       ; preds = %for.cond78
  call fastcc void @encode(ptr noundef nonnull %s, ptr noundef %sig, i32 noundef 860) #6, !dbg !998
  %add.ptr107 = getelementptr inbounds nuw i8, ptr %sig, i32 430, !dbg !999
  %call109 = call ptr @memcpy(ptr noundef nonnull %add.ptr107, ptr noundef nonnull %salt, i32 noundef 24) #8, !dbg !1000
  store i32 454, ptr %siglen, align 4, !dbg !1001
  br label %err, !dbg !1002

err:                                              ; preds = %if.end, %entry, %for.end104
  %ret.0 = phi i32 [ %call, %for.end104 ], [ %call, %entry ], [ 1, %if.end ], !dbg !814
    #dbg_value(i32 %ret.0, !820, !DIExpression(), !814)
    #dbg_label(!1003, !1004)
  call void @mayo_secure_clear(ptr noundef nonnull %V, i32 noundef 430) #8, !dbg !1005
  call void @mayo_secure_clear(ptr noundef nonnull %Vdec, i32 noundef 780) #8, !dbg !1006
  call void @mayo_secure_clear(ptr noundef nonnull %A, i32 noundef 6480) #8, !dbg !1007
  call void @mayo_secure_clear(ptr noundef nonnull %r, i32 noundef 81) #8, !dbg !1008
  %O114 = getelementptr inbounds nuw i8, ptr %sk, i32 148200, !dbg !1009
  call void @mayo_secure_clear(ptr noundef nonnull %O114, i32 noundef 624) #8, !dbg !1010
  call void @mayo_secure_clear(ptr noundef nonnull %sk, i32 noundef 148824) #8, !dbg !1011
  call void @mayo_secure_clear(ptr noundef nonnull %Ox, i32 noundef 78) #8, !dbg !1012
  call void @mayo_secure_clear(ptr noundef nonnull %tmp, i32 noundef 81) #8, !dbg !1013
  call void @mayo_secure_clear(ptr noundef nonnull %Mtmp, i32 noundef 3200) #8, !dbg !1014
  ret i32 %ret.0, !dbg !1015
}

; Function Attrs: nounwind
define internal fastcc void @compute_M_and_VPV(ptr noundef %p, ptr noundef %Vdec, ptr noundef %L, ptr noundef %P1, ptr noundef %VL, ptr noundef %VP1V) unnamed_addr #0 !dbg !1016 {
entry:
  %Pv = alloca [3900 x i64], align 8
    #dbg_value(ptr %p, !1019, !DIExpression(), !1020)
    #dbg_value(ptr %Vdec, !1021, !DIExpression(), !1020)
    #dbg_value(ptr %L, !1022, !DIExpression(), !1020)
    #dbg_value(ptr %P1, !1023, !DIExpression(), !1020)
    #dbg_value(ptr %VL, !1024, !DIExpression(), !1020)
    #dbg_value(ptr %VP1V, !1025, !DIExpression(), !1020)
    #dbg_value(i32 10, !1026, !DIExpression(), !1020)
    #dbg_value(i32 78, !1027, !DIExpression(), !1020)
    #dbg_value(i32 8, !1028, !DIExpression(), !1020)
  call fastcc void @mul_add_mat_x_m_mat(i32 noundef 5, ptr noundef %Vdec, ptr noundef %L, ptr noundef %VL, i32 noundef 10, i32 noundef 78, i32 noundef 8) #6, !dbg !1029
    #dbg_declare(ptr %Pv, !1030, !DIExpression(), !1034)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(31200) %Pv, i8 0, i32 31200, i1 false), !dbg !1034
  call fastcc void @P1_times_Vt(ptr noundef %p, ptr noundef %P1, ptr noundef %Vdec, ptr noundef nonnull %Pv) #6, !dbg !1035
  call fastcc void @mul_add_mat_x_m_mat(i32 noundef 5, ptr noundef %Vdec, ptr noundef nonnull %Pv, ptr noundef %VP1V, i32 noundef 10, i32 noundef 78, i32 noundef 10) #6, !dbg !1036
  ret void, !dbg !1037
}

; Function Attrs: nounwind
define internal fastcc void @compute_rhs(ptr noundef %p, ptr noundef %vPv, ptr noundef %t, ptr noundef %y) unnamed_addr #0 !dbg !1038 {
entry:
  %temp = alloca [5 x i64], align 8
    #dbg_value(ptr %p, !1041, !DIExpression(), !1042)
    #dbg_value(ptr %vPv, !1043, !DIExpression(), !1042)
    #dbg_value(ptr %t, !1044, !DIExpression(), !1042)
    #dbg_value(ptr %y, !1045, !DIExpression(), !1042)
    #dbg_value(i32 52, !1046, !DIExpression(), !1042)
    #dbg_value(i32 5, !1048, !DIExpression(), !1042)
    #dbg_value(i64 1, !1049, !DIExpression(), !1052)
    #dbg_value(i64 72057594037927936, !1049, !DIExpression(), !1052)
    #dbg_value(i64 72057594037927935, !1049, !DIExpression(), !1052)
    #dbg_value(i32 0, !1053, !DIExpression(), !1055)
  br label %for.cond, !dbg !1056

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1057
    #dbg_value(i32 %i.0, !1053, !DIExpression(), !1055)
  %exitcond = icmp ne i32 %i.0, 100, !dbg !1058
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1060

for.body:                                         ; preds = %for.cond
  %.idx6 = mul nuw nsw i32 %i.0, 40, !dbg !1061
  %0 = getelementptr inbounds nuw i8, ptr %vPv, i32 %.idx6, !dbg !1061
  %arrayidx = getelementptr inbounds nuw i8, ptr %0, i32 32, !dbg !1061
  %1 = load i64, ptr %arrayidx, align 8, !dbg !1063
  %and = and i64 %1, 72057594037927935, !dbg !1063
  store i64 %and, ptr %arrayidx, align 8, !dbg !1063
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1064
    #dbg_value(i32 %inc, !1053, !DIExpression(), !1055)
  br label %for.cond, !dbg !1065, !llvm.loop !1066

for.end:                                          ; preds = %for.cond
    #dbg_declare(ptr %temp, !1068, !DIExpression(), !1069)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %temp, i8 0, i32 40, i1 false), !dbg !1069
    #dbg_value(ptr %temp, !1070, !DIExpression(), !1042)
    #dbg_value(i32 9, !1071, !DIExpression(), !1073)
  br label %for.cond3, !dbg !1074

for.cond3:                                        ; preds = %for.inc77, %for.end
  %i2.0 = phi i32 [ 9, %for.end ], [ %dec78, %for.inc77 ], !dbg !1075
    #dbg_value(i32 %i2.0, !1071, !DIExpression(), !1073)
  %cmp4 = icmp sgt i32 %i2.0, -1, !dbg !1076
  br i1 %cmp4, label %for.cond6.preheader, label %for.cond81.preheader, !dbg !1078

for.cond6.preheader:                              ; preds = %for.cond3
  br label %for.cond6, !dbg !1079

for.cond81.preheader:                             ; preds = %for.cond3
  br label %for.cond81, !dbg !1082

for.cond6:                                        ; preds = %for.cond6.preheader, %for.inc74
  %j.0 = phi i32 [ %inc75, %for.inc74 ], [ %i2.0, %for.cond6.preheader ], !dbg !1084
    #dbg_value(i32 %j.0, !1085, !DIExpression(), !1086)
  %exitcond9 = icmp ne i32 %j.0, 10, !dbg !1087
  br i1 %exitcond9, label %for.body8, label %for.inc77, !dbg !1079

for.body8:                                        ; preds = %for.cond6
  %arrayidx9 = getelementptr inbounds nuw i8, ptr %temp, i32 32, !dbg !1089
  %2 = load i64, ptr %arrayidx9, align 8, !dbg !1089
  %shr = lshr i64 %2, 52, !dbg !1091
  %3 = trunc i64 %shr to i8, !dbg !1092
    #dbg_value(i8 %conv, !1093, !DIExpression(), !1094)
  %arrayidx10 = getelementptr inbounds nuw i8, ptr %temp, i32 32, !dbg !1095
  %shl11 = shl i64 %2, 4, !dbg !1096
  store i64 %shl11, ptr %arrayidx10, align 8, !dbg !1096
    #dbg_value(i32 3, !1097, !DIExpression(), !1099)
  br label %for.cond12, !dbg !1100

for.cond12:                                       ; preds = %for.body15, %for.body8
  %k.0 = phi i32 [ 3, %for.body8 ], [ %dec, %for.body15 ], !dbg !1101
    #dbg_value(i32 %k.0, !1097, !DIExpression(), !1099)
  %cmp13 = icmp sgt i32 %k.0, -1, !dbg !1102
  br i1 %cmp13, label %for.body15, label %for.cond24.preheader, !dbg !1104

for.cond24.preheader:                             ; preds = %for.cond12
  %conv = and i8 %3, 15, !dbg !1092
  br label %for.cond24, !dbg !1105

for.body15:                                       ; preds = %for.cond12
  %arrayidx16 = getelementptr inbounds nuw [5 x i64], ptr %temp, i32 0, i32 %k.0, !dbg !1107
  %4 = load i64, ptr %arrayidx16, align 8, !dbg !1107
  %shr17 = lshr i64 %4, 60, !dbg !1109
  %add18 = add nuw nsw i32 %k.0, 1, !dbg !1110
  %arrayidx19 = getelementptr inbounds nuw [5 x i64], ptr %temp, i32 0, i32 %add18, !dbg !1111
  %5 = load i64, ptr %arrayidx19, align 8, !dbg !1112
  %xor = xor i64 %5, %shr17, !dbg !1112
  store i64 %xor, ptr %arrayidx19, align 8, !dbg !1112
  %arrayidx20 = getelementptr inbounds nuw [5 x i64], ptr %temp, i32 0, i32 %k.0, !dbg !1113
  %6 = load i64, ptr %arrayidx20, align 8, !dbg !1114
  %shl21 = shl i64 %6, 4, !dbg !1114
  store i64 %shl21, ptr %arrayidx20, align 8, !dbg !1114
  %dec = add nsw i32 %k.0, -1, !dbg !1115
    #dbg_value(i32 %dec, !1097, !DIExpression(), !1099)
  br label %for.cond12, !dbg !1116, !llvm.loop !1117

for.cond24:                                       ; preds = %for.cond24.preheader, %for.inc46
  %jj.0 = phi i32 [ %inc47, %for.inc46 ], [ 0, %for.cond24.preheader ], !dbg !1119
    #dbg_value(i32 %jj.0, !1120, !DIExpression(), !1121)
  %exitcond7 = icmp ne i32 %jj.0, 4, !dbg !1122
  br i1 %exitcond7, label %for.body27, label %for.cond50.preheader, !dbg !1105

for.cond50.preheader:                             ; preds = %for.cond24
  br label %for.cond50, !dbg !1124

for.body27:                                       ; preds = %for.cond24
  %rem28 = and i32 %jj.0, 1, !dbg !1126
  %cmp29 = icmp eq i32 %rem28, 0, !dbg !1129
  br i1 %cmp29, label %if.then, label %if.else, !dbg !1129

if.then:                                          ; preds = %for.body27
  %arrayidx31 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %jj.0, !dbg !1130
  %7 = load i8, ptr %arrayidx31, align 1, !dbg !1130
  %call = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %conv, i8 noundef zeroext %7) #6, !dbg !1132
  %div = lshr exact i32 %jj.0, 1, !dbg !1133
  %arrayidx33 = getelementptr inbounds nuw i8, ptr %temp, i32 %div, !dbg !1134
  %8 = load i8, ptr %arrayidx33, align 1, !dbg !1135
  %xor355 = xor i8 %8, %call, !dbg !1135
  store i8 %xor355, ptr %arrayidx33, align 1, !dbg !1135
  br label %for.inc46, !dbg !1136

if.else:                                          ; preds = %for.body27
  %arrayidx37 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %jj.0, !dbg !1137
  %9 = load i8, ptr %arrayidx37, align 1, !dbg !1137
  %call38 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %conv, i8 noundef zeroext %9) #6, !dbg !1139
  %shl40 = shl nuw i8 %call38, 4, !dbg !1140
  %div414 = lshr i32 %jj.0, 1, !dbg !1141
  %arrayidx42 = getelementptr inbounds nuw i8, ptr %temp, i32 %div414, !dbg !1142
  %10 = load i8, ptr %arrayidx42, align 1, !dbg !1143
  %xor44 = xor i8 %shl40, %10, !dbg !1143
  store i8 %xor44, ptr %arrayidx42, align 1, !dbg !1143
  br label %for.inc46

for.inc46:                                        ; preds = %if.then, %if.else
  %inc47 = add nuw nsw i32 %jj.0, 1, !dbg !1144
    #dbg_value(i32 %inc47, !1120, !DIExpression(), !1121)
  br label %for.cond24, !dbg !1145, !llvm.loop !1146

for.cond50:                                       ; preds = %for.cond50.preheader, %for.body53
  %k49.0 = phi i32 [ %inc72, %for.body53 ], [ 0, %for.cond50.preheader ], !dbg !1148
    #dbg_value(i32 %k49.0, !1149, !DIExpression(), !1150)
  %exitcond8 = icmp ne i32 %k49.0, 5, !dbg !1151
  br i1 %exitcond8, label %for.body53, label %for.inc74, !dbg !1124

for.body53:                                       ; preds = %for.cond50
  %mul54 = mul nuw nsw i32 %i2.0, 10, !dbg !1153
  %add55 = add nuw nsw i32 %mul54, %j.0, !dbg !1155
  %.idx = mul nsw i32 %add55, 40, !dbg !1156
  %11 = getelementptr i8, ptr %vPv, i32 %.idx, !dbg !1156
  %arrayidx58 = getelementptr i64, ptr %11, i32 %k49.0, !dbg !1156
  %12 = load i64, ptr %arrayidx58, align 8, !dbg !1156
  %cmp59.not = icmp eq i32 %i2.0, %j.0, !dbg !1157
  %mul62 = mul nuw nsw i32 %j.0, 10, !dbg !1158
  %add63 = add nuw nsw i32 %mul62, %i2.0, !dbg !1159
  %.idx3 = mul nsw i32 %add63, 40, !dbg !1160
  %13 = getelementptr i8, ptr %vPv, i32 %.idx3, !dbg !1160
  %arrayidx66 = getelementptr i64, ptr %13, i32 %k49.0, !dbg !1160
  %14 = load i64, ptr %arrayidx66, align 8, !dbg !1160
  %mul67 = select i1 %cmp59.not, i64 0, i64 %14, !dbg !1161
  %xor68 = xor i64 %12, %mul67, !dbg !1162
  %arrayidx69 = getelementptr inbounds nuw [5 x i64], ptr %temp, i32 0, i32 %k49.0, !dbg !1163
  %15 = load i64, ptr %arrayidx69, align 8, !dbg !1164
  %xor70 = xor i64 %15, %xor68, !dbg !1164
  store i64 %xor70, ptr %arrayidx69, align 8, !dbg !1164
  %inc72 = add nuw nsw i32 %k49.0, 1, !dbg !1165
    #dbg_value(i32 %inc72, !1149, !DIExpression(), !1150)
  br label %for.cond50, !dbg !1166, !llvm.loop !1167

for.inc74:                                        ; preds = %for.cond50
  %inc75 = add nuw nsw i32 %j.0, 1, !dbg !1169
    #dbg_value(i32 %inc75, !1085, !DIExpression(), !1086)
  br label %for.cond6, !dbg !1170, !llvm.loop !1171

for.inc77:                                        ; preds = %for.cond6
  %dec78 = add nsw i32 %i2.0, -1, !dbg !1173
    #dbg_value(i32 %dec78, !1071, !DIExpression(), !1073)
  br label %for.cond3, !dbg !1174, !llvm.loop !1175

for.cond81:                                       ; preds = %for.cond81.preheader, %for.body84
  %i80.0 = phi i32 [ %add106, %for.body84 ], [ 0, %for.cond81.preheader ], !dbg !1177
    #dbg_value(i32 %i80.0, !1178, !DIExpression(), !1179)
  %cmp82 = icmp samesign ult i32 %i80.0, 78, !dbg !1180
  br i1 %cmp82, label %for.body84, label %for.end107, !dbg !1082

for.body84:                                       ; preds = %for.cond81
  %arrayidx85 = getelementptr inbounds nuw i8, ptr %t, i32 %i80.0, !dbg !1182
  %16 = load i8, ptr %arrayidx85, align 1, !dbg !1182
  %div87 = lshr exact i32 %i80.0, 1, !dbg !1184
  %arrayidx88 = getelementptr inbounds nuw i8, ptr %temp, i32 %div87, !dbg !1185
  %17 = load i8, ptr %arrayidx88, align 1, !dbg !1185
  %18 = and i8 %17, 15, !dbg !1186
  %xor911 = xor i8 %16, %18, !dbg !1187
  %arrayidx93 = getelementptr inbounds nuw i8, ptr %y, i32 %i80.0, !dbg !1188
  store i8 %xor911, ptr %arrayidx93, align 1, !dbg !1189
  %add94 = or disjoint i32 %i80.0, 1, !dbg !1190
  %arrayidx95 = getelementptr inbounds nuw i8, ptr %t, i32 %add94, !dbg !1191
  %19 = load i8, ptr %arrayidx95, align 1, !dbg !1191
  %div97 = lshr exact i32 %i80.0, 1, !dbg !1192
  %arrayidx98 = getelementptr inbounds nuw i8, ptr %temp, i32 %div97, !dbg !1193
  %20 = load i8, ptr %arrayidx98, align 1, !dbg !1193
  %21 = lshr i8 %20, 4, !dbg !1194
  %xor1012 = xor i8 %19, %21, !dbg !1195
  %add103 = or disjoint i32 %i80.0, 1, !dbg !1196
  %arrayidx104 = getelementptr inbounds nuw i8, ptr %y, i32 %add103, !dbg !1197
  store i8 %xor1012, ptr %arrayidx104, align 1, !dbg !1198
  %add106 = add nuw nsw i32 %i80.0, 2, !dbg !1199
    #dbg_value(i32 %add106, !1178, !DIExpression(), !1179)
  br label %for.cond81, !dbg !1200, !llvm.loop !1201

for.end107:                                       ; preds = %for.cond81
  ret void, !dbg !1203
}

; Function Attrs: nounwind
define internal fastcc void @compute_A(ptr noundef %p, ptr noundef %VtL, ptr noundef %A_out) unnamed_addr #0 !dbg !1204 {
entry:
  %A = alloca [800 x i64], align 8
  %tab = alloca [16 x i8], align 1
    #dbg_value(ptr %p, !1207, !DIExpression(), !1208)
    #dbg_value(ptr %VtL, !1209, !DIExpression(), !1208)
    #dbg_value(ptr %A_out, !1210, !DIExpression(), !1208)
    #dbg_value(i32 0, !1211, !DIExpression(), !1208)
    #dbg_value(i32 0, !1212, !DIExpression(), !1208)
    #dbg_value(i32 5, !1213, !DIExpression(), !1208)
    #dbg_declare(ptr %A, !1214, !DIExpression(), !1218)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(6400) %A, i8 0, i32 6400, i1 false), !dbg !1218
    #dbg_value(i32 80, !1219, !DIExpression(), !1208)
    #dbg_value(i64 1, !1220, !DIExpression(), !1223)
    #dbg_value(i64 72057594037927936, !1220, !DIExpression(), !1223)
    #dbg_value(i64 72057594037927935, !1220, !DIExpression(), !1223)
    #dbg_value(i32 0, !1224, !DIExpression(), !1226)
  br label %for.cond, !dbg !1227

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1228
    #dbg_value(i32 %i.0, !1224, !DIExpression(), !1226)
  %exitcond = icmp ne i32 %i.0, 80, !dbg !1229
  br i1 %exitcond, label %for.body, label %for.cond3.preheader, !dbg !1231

for.cond3.preheader:                              ; preds = %for.cond
  br label %for.cond3, !dbg !1232

for.body:                                         ; preds = %for.cond
  %.idx = mul nuw nsw i32 %i.0, 40, !dbg !1234
  %0 = getelementptr inbounds nuw i8, ptr %VtL, i32 %.idx, !dbg !1234
  %arrayidx = getelementptr inbounds nuw i8, ptr %0, i32 32, !dbg !1234
  %1 = load i64, ptr %arrayidx, align 8, !dbg !1236
  %and = and i64 %1, 72057594037927935, !dbg !1236
  store i64 %and, ptr %arrayidx, align 8, !dbg !1236
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1237
    #dbg_value(i32 %inc, !1224, !DIExpression(), !1226)
  br label %for.cond, !dbg !1238, !llvm.loop !1239

for.cond3:                                        ; preds = %for.cond3.preheader, %for.inc103
  %i2.0 = phi i32 [ %inc104, %for.inc103 ], [ 0, %for.cond3.preheader ], !dbg !1241
  %words_to_shift.0 = phi i32 [ %words_to_shift.1.lcssa, %for.inc103 ], [ 0, %for.cond3.preheader ], !dbg !1242
  %bits_to_shift.0 = phi i32 [ %bits_to_shift.1.lcssa, %for.inc103 ], [ 0, %for.cond3.preheader ], !dbg !1243
    #dbg_value(i32 %bits_to_shift.0, !1211, !DIExpression(), !1208)
    #dbg_value(i32 %words_to_shift.0, !1212, !DIExpression(), !1208)
    #dbg_value(i32 %i2.0, !1244, !DIExpression(), !1245)
  %exitcond8 = icmp ne i32 %i2.0, 10, !dbg !1246
  br i1 %exitcond8, label %for.cond6.preheader, label %for.cond107.preheader, !dbg !1232

for.cond6.preheader:                              ; preds = %for.cond3
  br label %for.cond6, !dbg !1248

for.cond107.preheader:                            ; preds = %for.cond3
  br label %for.cond107, !dbg !1251

for.cond6:                                        ; preds = %for.cond6.preheader, %if.end95
  %j.0 = phi i32 [ %dec, %if.end95 ], [ 9, %for.cond6.preheader ], !dbg !1253
  %words_to_shift.1 = phi i32 [ %spec.select, %if.end95 ], [ %words_to_shift.0, %for.cond6.preheader ], !dbg !1208
  %bits_to_shift.1 = phi i32 [ %spec.select3, %if.end95 ], [ %bits_to_shift.0, %for.cond6.preheader ], !dbg !1208
    #dbg_value(i32 %bits_to_shift.1, !1211, !DIExpression(), !1208)
    #dbg_value(i32 %words_to_shift.1, !1212, !DIExpression(), !1208)
    #dbg_value(i32 %j.0, !1254, !DIExpression(), !1255)
  %cmp7.not = icmp slt i32 %j.0, %i2.0, !dbg !1256
  br i1 %cmp7.not, label %for.inc103, label %for.body8, !dbg !1248

for.body8:                                        ; preds = %for.cond6
  %add.ptr.idx = mul nsw i32 %j.0, 320, !dbg !1258
  %add.ptr = getelementptr inbounds i8, ptr %VtL, i32 %add.ptr.idx, !dbg !1258
    #dbg_value(ptr %add.ptr, !1260, !DIExpression(), !1208)
    #dbg_value(i32 0, !1261, !DIExpression(), !1263)
  br label %for.cond11, !dbg !1264

for.cond11:                                       ; preds = %for.inc44, %for.body8
  %c.0 = phi i32 [ 0, %for.body8 ], [ %inc45, %for.inc44 ], !dbg !1265
    #dbg_value(i32 %c.0, !1261, !DIExpression(), !1263)
  %exitcond5 = icmp ne i32 %c.0, 8, !dbg !1266
  br i1 %exitcond5, label %for.cond14.preheader, label %for.end46, !dbg !1268

for.cond14.preheader:                             ; preds = %for.cond11
  br label %for.cond14, !dbg !1269

for.cond14:                                       ; preds = %for.cond14.preheader, %for.inc41
  %k.0 = phi i32 [ %inc42, %for.inc41 ], [ 0, %for.cond14.preheader ], !dbg !1272
    #dbg_value(i32 %k.0, !1273, !DIExpression(), !1274)
  %exitcond4 = icmp ne i32 %k.0, 5, !dbg !1275
  br i1 %exitcond4, label %for.body16, label %for.inc44, !dbg !1269

for.body16:                                       ; preds = %for.cond14
  %2 = getelementptr inbounds nuw i64, ptr %add.ptr, i32 %k.0, !dbg !1277
  %arrayidx19.idx = mul nuw nsw i32 %c.0, 40, !dbg !1277
  %arrayidx19 = getelementptr inbounds nuw i8, ptr %2, i32 %arrayidx19.idx, !dbg !1277
  %3 = load i64, ptr %arrayidx19, align 8, !dbg !1277
  %sh_prom = zext nneg i32 %bits_to_shift.1 to i64, !dbg !1279
  %shl20 = shl i64 %3, %sh_prom, !dbg !1279
  %mul21 = shl nuw nsw i32 %i2.0, 3, !dbg !1280
  %add22 = or disjoint i32 %mul21, %c.0, !dbg !1281
  %add23 = add nsw i32 %k.0, %words_to_shift.1, !dbg !1282
  %mul24 = mul i32 %add23, 80, !dbg !1283
  %add25 = add i32 %add22, %mul24, !dbg !1284
  %arrayidx26 = getelementptr inbounds nuw [800 x i64], ptr %A, i32 0, i32 %add25, !dbg !1285
  %4 = load i64, ptr %arrayidx26, align 8, !dbg !1286
  %xor = xor i64 %4, %shl20, !dbg !1286
  store i64 %xor, ptr %arrayidx26, align 8, !dbg !1286
  %cmp27 = icmp sgt i32 %bits_to_shift.1, 0, !dbg !1287
  br i1 %cmp27, label %if.then, label %for.inc41, !dbg !1287

if.then:                                          ; preds = %for.body16
  %5 = getelementptr inbounds nuw i64, ptr %add.ptr, i32 %k.0, !dbg !1289
  %arrayidx30.idx = mul nuw nsw i32 %c.0, 40, !dbg !1289
  %arrayidx30 = getelementptr inbounds nuw i8, ptr %5, i32 %arrayidx30.idx, !dbg !1289
  %6 = load i64, ptr %arrayidx30, align 8, !dbg !1289
  %sub31 = sub nsw i32 64, %bits_to_shift.1, !dbg !1291
  %sh_prom32 = zext nneg i32 %sub31 to i64, !dbg !1292
  %shr = lshr i64 %6, %sh_prom32, !dbg !1292
  %mul33 = shl nuw nsw i32 %i2.0, 3, !dbg !1293
  %add34 = or disjoint i32 %mul33, %c.0, !dbg !1294
  %add35 = add nsw i32 %k.0, %words_to_shift.1, !dbg !1295
  %7 = mul i32 %add35, 80, !dbg !1296
  %mul37 = add i32 %7, 80, !dbg !1296
  %add38 = add i32 %add34, %mul37, !dbg !1297
  %arrayidx39 = getelementptr inbounds nuw [800 x i64], ptr %A, i32 0, i32 %add38, !dbg !1298
  %8 = load i64, ptr %arrayidx39, align 8, !dbg !1299
  %xor40 = xor i64 %8, %shr, !dbg !1299
  store i64 %xor40, ptr %arrayidx39, align 8, !dbg !1299
  br label %for.inc41, !dbg !1300

for.inc41:                                        ; preds = %for.body16, %if.then
  %inc42 = add nuw nsw i32 %k.0, 1, !dbg !1301
    #dbg_value(i32 %inc42, !1273, !DIExpression(), !1274)
  br label %for.cond14, !dbg !1302, !llvm.loop !1303

for.inc44:                                        ; preds = %for.cond14
  %inc45 = add nuw nsw i32 %c.0, 1, !dbg !1305
    #dbg_value(i32 %inc45, !1261, !DIExpression(), !1263)
  br label %for.cond11, !dbg !1306, !llvm.loop !1307

for.end46:                                        ; preds = %for.cond11
  %cmp47.not = icmp eq i32 %i2.0, %j.0, !dbg !1309
  br i1 %cmp47.not, label %if.end95, label %if.then48, !dbg !1309

if.then48:                                        ; preds = %for.end46
  %add.ptr51.idx = mul nuw nsw i32 %i2.0, 320, !dbg !1311
  %add.ptr51 = getelementptr inbounds nuw i8, ptr %VtL, i32 %add.ptr51.idx, !dbg !1311
    #dbg_value(ptr %add.ptr51, !1313, !DIExpression(), !1208)
    #dbg_value(i32 0, !1314, !DIExpression(), !1316)
  br label %for.cond53, !dbg !1317

for.cond53:                                       ; preds = %for.inc92, %if.then48
  %c52.0 = phi i32 [ 0, %if.then48 ], [ %inc93, %for.inc92 ], !dbg !1318
    #dbg_value(i32 %c52.0, !1314, !DIExpression(), !1316)
  %exitcond7 = icmp ne i32 %c52.0, 8, !dbg !1319
  br i1 %exitcond7, label %for.cond57.preheader, label %if.end95.loopexit, !dbg !1321

for.cond57.preheader:                             ; preds = %for.cond53
  br label %for.cond57, !dbg !1322

for.cond57:                                       ; preds = %for.cond57.preheader, %for.inc89
  %k56.0 = phi i32 [ %inc90, %for.inc89 ], [ 0, %for.cond57.preheader ], !dbg !1325
    #dbg_value(i32 %k56.0, !1326, !DIExpression(), !1327)
  %exitcond6 = icmp ne i32 %k56.0, 5, !dbg !1328
  br i1 %exitcond6, label %for.body59, label %for.inc92, !dbg !1322

for.body59:                                       ; preds = %for.cond57
  %9 = getelementptr inbounds nuw i64, ptr %add.ptr51, i32 %k56.0, !dbg !1330
  %arrayidx62.idx = mul nuw nsw i32 %c52.0, 40, !dbg !1330
  %arrayidx62 = getelementptr inbounds nuw i8, ptr %9, i32 %arrayidx62.idx, !dbg !1330
  %10 = load i64, ptr %arrayidx62, align 8, !dbg !1330
  %sh_prom63 = zext nneg i32 %bits_to_shift.1 to i64, !dbg !1332
  %shl64 = shl i64 %10, %sh_prom63, !dbg !1332
  %mul65 = shl nsw i32 %j.0, 3, !dbg !1333
  %add66 = or disjoint i32 %mul65, %c52.0, !dbg !1334
  %add67 = add nsw i32 %k56.0, %words_to_shift.1, !dbg !1335
  %mul68 = mul i32 %add67, 80, !dbg !1336
  %add69 = add i32 %add66, %mul68, !dbg !1337
  %arrayidx70 = getelementptr inbounds nuw [800 x i64], ptr %A, i32 0, i32 %add69, !dbg !1338
  %11 = load i64, ptr %arrayidx70, align 8, !dbg !1339
  %xor71 = xor i64 %11, %shl64, !dbg !1339
  store i64 %xor71, ptr %arrayidx70, align 8, !dbg !1339
  %cmp72 = icmp sgt i32 %bits_to_shift.1, 0, !dbg !1340
  br i1 %cmp72, label %if.then73, label %for.inc89, !dbg !1340

if.then73:                                        ; preds = %for.body59
  %12 = getelementptr inbounds nuw i64, ptr %add.ptr51, i32 %k56.0, !dbg !1342
  %arrayidx76.idx = mul nuw nsw i32 %c52.0, 40, !dbg !1342
  %arrayidx76 = getelementptr inbounds nuw i8, ptr %12, i32 %arrayidx76.idx, !dbg !1342
  %13 = load i64, ptr %arrayidx76, align 8, !dbg !1342
  %sub77 = sub nsw i32 64, %bits_to_shift.1, !dbg !1344
  %sh_prom78 = zext nneg i32 %sub77 to i64, !dbg !1345
  %shr79 = lshr i64 %13, %sh_prom78, !dbg !1345
  %mul80 = shl nsw i32 %j.0, 3, !dbg !1346
  %add81 = or disjoint i32 %mul80, %c52.0, !dbg !1347
  %add82 = add nsw i32 %k56.0, %words_to_shift.1, !dbg !1348
  %14 = mul i32 %add82, 80, !dbg !1349
  %mul84 = add i32 %14, 80, !dbg !1349
  %add85 = add i32 %add81, %mul84, !dbg !1350
  %arrayidx86 = getelementptr inbounds nuw [800 x i64], ptr %A, i32 0, i32 %add85, !dbg !1351
  %15 = load i64, ptr %arrayidx86, align 8, !dbg !1352
  %xor87 = xor i64 %15, %shr79, !dbg !1352
  store i64 %xor87, ptr %arrayidx86, align 8, !dbg !1352
  br label %for.inc89, !dbg !1353

for.inc89:                                        ; preds = %for.body59, %if.then73
  %inc90 = add nuw nsw i32 %k56.0, 1, !dbg !1354
    #dbg_value(i32 %inc90, !1326, !DIExpression(), !1327)
  br label %for.cond57, !dbg !1355, !llvm.loop !1356

for.inc92:                                        ; preds = %for.cond57
  %inc93 = add nuw nsw i32 %c52.0, 1, !dbg !1358
    #dbg_value(i32 %inc93, !1314, !DIExpression(), !1316)
  br label %for.cond53, !dbg !1359, !llvm.loop !1360

if.end95.loopexit:                                ; preds = %for.cond53
  br label %if.end95, !dbg !1362

if.end95:                                         ; preds = %if.end95.loopexit, %for.end46
  %add96 = add nsw i32 %bits_to_shift.1, 4, !dbg !1362
    #dbg_value(i32 %add96, !1211, !DIExpression(), !1208)
  %cmp97 = icmp eq i32 %add96, 64, !dbg !1363
  %inc99 = zext i1 %cmp97 to i32, !dbg !1363
  %spec.select = add nsw i32 %words_to_shift.1, %inc99, !dbg !1363
  %spec.select3 = select i1 %cmp97, i32 0, i32 %add96, !dbg !1363
    #dbg_value(i32 %spec.select3, !1211, !DIExpression(), !1208)
    #dbg_value(i32 %spec.select, !1212, !DIExpression(), !1208)
  %dec = add nsw i32 %j.0, -1, !dbg !1365
    #dbg_value(i32 %dec, !1254, !DIExpression(), !1255)
  br label %for.cond6, !dbg !1366, !llvm.loop !1367

for.inc103:                                       ; preds = %for.cond6
  %words_to_shift.1.lcssa = phi i32 [ %words_to_shift.1, %for.cond6 ], !dbg !1208
  %bits_to_shift.1.lcssa = phi i32 [ %bits_to_shift.1, %for.cond6 ], !dbg !1208
  %inc104 = add nuw nsw i32 %i2.0, 1, !dbg !1369
    #dbg_value(i32 %inc104, !1244, !DIExpression(), !1245)
  br label %for.cond3, !dbg !1370, !llvm.loop !1371

for.cond107:                                      ; preds = %for.cond107.preheader, %for.body110
  %c106.0 = phi i32 [ %add113, %for.body110 ], [ 0, %for.cond107.preheader ], !dbg !1373
    #dbg_value(i32 %c106.0, !1374, !DIExpression(), !1375)
  %cmp109 = icmp samesign ult i32 %c106.0, 720, !dbg !1376
  br i1 %cmp109, label %for.body110, label %for.end114, !dbg !1251

for.body110:                                      ; preds = %for.cond107
  %add.ptr111 = getelementptr inbounds nuw i64, ptr %A, i32 %c106.0, !dbg !1378
  call fastcc void @transpose_16x16_nibbles(ptr noundef nonnull %add.ptr111) #6, !dbg !1380
  %add113 = add nuw nsw i32 %c106.0, 16, !dbg !1381
    #dbg_value(i32 %add113, !1374, !DIExpression(), !1375)
  br label %for.cond107, !dbg !1382, !llvm.loop !1383

for.end114:                                       ; preds = %for.cond107
    #dbg_declare(ptr %tab, !1385, !DIExpression(), !1389)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %tab, i8 0, i32 16, i1 false), !dbg !1389
    #dbg_value(i32 0, !1390, !DIExpression(), !1392)
  br label %for.cond116, !dbg !1393

for.cond116:                                      ; preds = %for.body118, %for.end114
  %i115.0 = phi i32 [ 0, %for.end114 ], [ %inc138, %for.body118 ], !dbg !1394
    #dbg_value(i32 %i115.0, !1390, !DIExpression(), !1392)
  %exitcond9 = icmp ne i32 %i115.0, 4, !dbg !1395
  br i1 %exitcond9, label %for.body118, label %for.cond141.preheader, !dbg !1397

for.cond141.preheader:                            ; preds = %for.cond116
  br label %for.cond141, !dbg !1398

for.body118:                                      ; preds = %for.cond116
  %arrayidx119 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %i115.0, !dbg !1400
  %16 = load i8, ptr %arrayidx119, align 1, !dbg !1400
  %call = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %16, i8 noundef zeroext 1) #6, !dbg !1402
  %mul120 = shl nuw nsw i32 %i115.0, 2, !dbg !1403
  %arrayidx121 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %mul120, !dbg !1404
  store i8 %call, ptr %arrayidx121, align 1, !dbg !1405
  %call123 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %16, i8 noundef zeroext 2) #6, !dbg !1406
  %mul124 = shl nuw nsw i32 %i115.0, 2, !dbg !1407
  %add125 = or disjoint i32 %mul124, 1, !dbg !1408
  %arrayidx126 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add125, !dbg !1409
  store i8 %call123, ptr %arrayidx126, align 1, !dbg !1410
  %arrayidx127 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %i115.0, !dbg !1411
  %17 = load i8, ptr %arrayidx127, align 1, !dbg !1411
  %call128 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %17, i8 noundef zeroext 4) #6, !dbg !1412
  %mul129 = shl nuw nsw i32 %i115.0, 2, !dbg !1413
  %add130 = or disjoint i32 %mul129, 2, !dbg !1414
  %arrayidx131 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add130, !dbg !1415
  store i8 %call128, ptr %arrayidx131, align 1, !dbg !1416
  %arrayidx132 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %i115.0, !dbg !1417
  %18 = load i8, ptr %arrayidx132, align 1, !dbg !1417
  %call133 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %18, i8 noundef zeroext 8) #6, !dbg !1418
  %mul134 = shl nuw nsw i32 %i115.0, 2, !dbg !1419
  %add135 = or disjoint i32 %mul134, 3, !dbg !1420
  %arrayidx136 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add135, !dbg !1421
  store i8 %call133, ptr %arrayidx136, align 1, !dbg !1422
  %inc138 = add nuw nsw i32 %i115.0, 1, !dbg !1423
    #dbg_value(i32 %inc138, !1390, !DIExpression(), !1392)
  br label %for.cond116, !dbg !1424, !llvm.loop !1425

for.cond141:                                      ; preds = %for.cond141.preheader, %for.inc203
  %c140.0 = phi i32 [ %add204, %for.inc203 ], [ 0, %for.cond141.preheader ], !dbg !1427
    #dbg_value(i32 %c140.0, !1428, !DIExpression(), !1429)
  %cmp142 = icmp samesign ult i32 %c140.0, 80, !dbg !1430
  br i1 %cmp142, label %for.cond144.preheader, label %for.cond207.preheader, !dbg !1398

for.cond144.preheader:                            ; preds = %for.cond141
  br label %for.cond144, !dbg !1432

for.cond207.preheader:                            ; preds = %for.cond141
  br label %for.cond207, !dbg !1435

for.cond144:                                      ; preds = %for.cond144.preheader, %for.inc200
  %r.0 = phi i32 [ %inc201, %for.inc200 ], [ 78, %for.cond144.preheader ], !dbg !1437
    #dbg_value(i32 %r.0, !1438, !DIExpression(), !1439)
  %exitcond11 = icmp ne i32 %r.0, 133, !dbg !1440
  br i1 %exitcond11, label %for.body146, label %for.inc203, !dbg !1432

for.body146:                                      ; preds = %for.cond144
  %div1 = lshr i32 %r.0, 4, !dbg !1442
  %mul147 = mul nuw nsw i32 %div1, 80, !dbg !1444
  %add148 = add nuw nsw i32 %mul147, %c140.0, !dbg !1445
  %rem = and i32 %r.0, 15, !dbg !1446
  %add149 = or disjoint i32 %add148, %rem, !dbg !1447
    #dbg_value(i32 %add149, !1448, !DIExpression(), !1449)
  %arrayidx150 = getelementptr inbounds nuw [800 x i64], ptr %A, i32 0, i32 %add149, !dbg !1450
  %19 = load i64, ptr %arrayidx150, align 8, !dbg !1450
  %and151 = and i64 %19, 1229782938247303441, !dbg !1451
    #dbg_value(i64 %and151, !1452, !DIExpression(), !1449)
  %shr153 = lshr i64 %19, 1, !dbg !1453
  %and154 = and i64 %shr153, 1229782938247303441, !dbg !1454
    #dbg_value(i64 %and154, !1455, !DIExpression(), !1449)
  %shr156 = lshr i64 %19, 2, !dbg !1456
  %and157 = and i64 %shr156, 1229782938247303441, !dbg !1457
    #dbg_value(i64 %and157, !1458, !DIExpression(), !1449)
  %arrayidx158 = getelementptr inbounds nuw [800 x i64], ptr %A, i32 0, i32 %add149, !dbg !1459
  %20 = load i64, ptr %arrayidx158, align 8, !dbg !1459
  %shr159 = lshr i64 %20, 3, !dbg !1460
  %and160 = and i64 %shr159, 1229782938247303441, !dbg !1461
    #dbg_value(i64 %and160, !1462, !DIExpression(), !1449)
    #dbg_value(i32 0, !1463, !DIExpression(), !1465)
  br label %for.cond161, !dbg !1466

for.cond161:                                      ; preds = %for.body163, %for.body146
  %t.0 = phi i32 [ 0, %for.body146 ], [ %inc198, %for.body163 ], !dbg !1467
    #dbg_value(i32 %t.0, !1463, !DIExpression(), !1465)
  %exitcond10 = icmp ne i32 %t.0, 4, !dbg !1468
  br i1 %exitcond10, label %for.body163, label %for.inc200, !dbg !1470

for.body163:                                      ; preds = %for.cond161
  %mul164 = shl nuw nsw i32 %t.0, 2, !dbg !1471
  %arrayidx166 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %mul164, !dbg !1473
  %21 = load i8, ptr %arrayidx166, align 1, !dbg !1473
  %conv = zext i8 %21 to i64, !dbg !1473
  %mul167 = mul i64 %and151, %conv, !dbg !1474
  %mul168 = shl nuw nsw i32 %t.0, 2, !dbg !1475
  %add169 = or disjoint i32 %mul168, 1, !dbg !1476
  %arrayidx170 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add169, !dbg !1477
  %22 = load i8, ptr %arrayidx170, align 1, !dbg !1477
  %conv171 = zext i8 %22 to i64, !dbg !1477
  %mul172 = mul i64 %and154, %conv171, !dbg !1478
  %xor173 = xor i64 %mul167, %mul172, !dbg !1479
  %mul174 = shl nuw nsw i32 %t.0, 2, !dbg !1480
  %add175 = or disjoint i32 %mul174, 2, !dbg !1481
  %arrayidx176 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add175, !dbg !1482
  %23 = load i8, ptr %arrayidx176, align 1, !dbg !1482
  %conv177 = zext i8 %23 to i64, !dbg !1482
  %mul178 = mul i64 %and157, %conv177, !dbg !1483
  %xor179 = xor i64 %xor173, %mul178, !dbg !1484
  %mul180 = shl nuw nsw i32 %t.0, 2, !dbg !1485
  %add181 = or disjoint i32 %mul180, 3, !dbg !1486
  %arrayidx182 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add181, !dbg !1487
  %24 = load i8, ptr %arrayidx182, align 1, !dbg !1487
  %conv183 = zext i8 %24 to i64, !dbg !1487
  %mul184 = mul i64 %and160, %conv183, !dbg !1488
  %xor185 = xor i64 %xor179, %mul184, !dbg !1489
  %add186 = add nuw nsw i32 %r.0, %t.0, !dbg !1490
  %sub187 = add nsw i32 %add186, -78, !dbg !1491
  %div1882 = lshr i32 %sub187, 4, !dbg !1492
  %mul189 = mul i32 %div1882, 80, !dbg !1493
  %add190 = add i32 %mul189, %c140.0, !dbg !1494
  %add191 = add nuw nsw i32 %r.0, %t.0, !dbg !1495
  %sub192 = add nuw nsw i32 %add191, 2, !dbg !1496
  %rem193 = and i32 %sub192, 15, !dbg !1497
  %add194 = or disjoint i32 %add190, %rem193, !dbg !1498
  %arrayidx195 = getelementptr inbounds nuw [800 x i64], ptr %A, i32 0, i32 %add194, !dbg !1499
  %25 = load i64, ptr %arrayidx195, align 8, !dbg !1500
  %xor196 = xor i64 %25, %xor185, !dbg !1500
  store i64 %xor196, ptr %arrayidx195, align 8, !dbg !1500
  %inc198 = add nuw nsw i32 %t.0, 1, !dbg !1501
    #dbg_value(i32 %inc198, !1463, !DIExpression(), !1465)
  br label %for.cond161, !dbg !1502, !llvm.loop !1503

for.inc200:                                       ; preds = %for.cond161
  %inc201 = add nuw nsw i32 %r.0, 1, !dbg !1505
    #dbg_value(i32 %inc201, !1438, !DIExpression(), !1439)
  br label %for.cond144, !dbg !1506, !llvm.loop !1507

for.inc203:                                       ; preds = %for.cond144
  %add204 = add nuw nsw i32 %c140.0, 16, !dbg !1509
    #dbg_value(i32 %add204, !1428, !DIExpression(), !1429)
  br label %for.cond141, !dbg !1510, !llvm.loop !1511

for.cond207:                                      ; preds = %for.cond207.preheader, %for.inc241
  %indvars.iv = phi i32 [ 78, %for.cond207.preheader ], [ %indvars.iv.next, %for.inc241 ], !dbg !1513
  %r206.0 = phi i32 [ %add242, %for.inc241 ], [ 0, %for.cond207.preheader ], !dbg !1513
    #dbg_value(i32 %r206.0, !1514, !DIExpression(), !1515)
  %cmp208 = icmp samesign ult i32 %r206.0, 78, !dbg !1516
  br i1 %cmp208, label %for.cond212.preheader, label %for.end243, !dbg !1435

for.cond212.preheader:                            ; preds = %for.cond207
  br label %for.cond212, !dbg !1518

for.cond212:                                      ; preds = %for.cond212.preheader, %for.inc238
  %c211.0 = phi i32 [ %add239, %for.inc238 ], [ 0, %for.cond212.preheader ], !dbg !1521
    #dbg_value(i32 %c211.0, !1522, !DIExpression(), !1523)
  %cmp213 = icmp samesign ult i32 %c211.0, 80, !dbg !1524
  br i1 %cmp213, label %for.cond217.preheader, label %for.inc241, !dbg !1518

for.cond217.preheader:                            ; preds = %for.cond212
  br label %for.cond217, !dbg !1526

for.cond217:                                      ; preds = %for.cond217.preheader, %for.body221
  %i216.0 = phi i32 [ %inc236, %for.body221 ], [ 0, %for.cond217.preheader ], !dbg !1529
    #dbg_value(i32 %i216.0, !1530, !DIExpression(), !1531)
  %exitcond12 = icmp ne i32 %i216.0, %indvars.iv, !dbg !1532
  br i1 %exitcond12, label %for.body221, label %for.inc238, !dbg !1526

for.body221:                                      ; preds = %for.cond217
  %div223 = mul nuw nsw i32 %r206.0, 5, !dbg !1534
  %add224 = add nuw nsw i32 %div223, %c211.0, !dbg !1536
  %add225 = add nuw nsw i32 %add224, %i216.0, !dbg !1537
  %arrayidx226 = getelementptr inbounds nuw [800 x i64], ptr %A, i32 0, i32 %add225, !dbg !1538
  %add227 = add nuw nsw i32 %r206.0, %i216.0, !dbg !1539
  %mul228 = mul nuw nsw i32 %add227, 81, !dbg !1540
  %add.ptr229 = getelementptr inbounds nuw i8, ptr %A_out, i32 %mul228, !dbg !1541
  %add.ptr230 = getelementptr inbounds nuw i8, ptr %add.ptr229, i32 %c211.0, !dbg !1542
  %cmp232 = icmp samesign ult i32 %c211.0, 64, !dbg !1543
  %sub234 = sub nuw nsw i32 80, %c211.0, !dbg !1543
  %cond = select i1 %cmp232, i32 16, i32 %sub234, !dbg !1543
  call fastcc void @decode(ptr noundef nonnull %arrayidx226, ptr noundef %add.ptr230, i32 noundef %cond) #6, !dbg !1544
  %inc236 = add nuw nsw i32 %i216.0, 1, !dbg !1545
    #dbg_value(i32 %inc236, !1530, !DIExpression(), !1531)
  br label %for.cond217, !dbg !1546, !llvm.loop !1547

for.inc238:                                       ; preds = %for.cond217
  %add239 = add nuw nsw i32 %c211.0, 16, !dbg !1549
    #dbg_value(i32 %add239, !1522, !DIExpression(), !1523)
  br label %for.cond212, !dbg !1550, !llvm.loop !1551

for.inc241:                                       ; preds = %for.cond212
  %add242 = add nuw nsw i32 %r206.0, 16, !dbg !1553
    #dbg_value(i32 %add242, !1514, !DIExpression(), !1515)
  %indvars.iv.next = add nsw i32 %indvars.iv, -16, !dbg !1554
  br label %for.cond207, !dbg !1554, !llvm.loop !1555

for.end243:                                       ; preds = %for.cond207
  ret void, !dbg !1557
}

declare dso_local ptr @memset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
define internal fastcc void @mat_mul(ptr noundef %a, ptr noundef %b, ptr noundef %c, i32 noundef %colrow_ab, i32 noundef %row_a, i32 noundef %col_b) unnamed_addr #0 !dbg !1558 {
entry:
    #dbg_value(ptr %a, !1561, !DIExpression(), !1562)
    #dbg_value(ptr %b, !1563, !DIExpression(), !1562)
    #dbg_value(ptr %c, !1564, !DIExpression(), !1562)
    #dbg_value(i32 %colrow_ab, !1565, !DIExpression(), !1562)
    #dbg_value(i32 %row_a, !1566, !DIExpression(), !1562)
    #dbg_value(i32 %col_b, !1567, !DIExpression(), !1562)
    #dbg_value(i32 0, !1568, !DIExpression(), !1570)
  %smax = call i32 @llvm.smax.i32(i32 %col_b, i32 0), !dbg !1571
  %smax1 = call i32 @llvm.smax.i32(i32 %row_a, i32 0), !dbg !1571
  br label %for.cond, !dbg !1571

for.cond:                                         ; preds = %for.inc4, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc5, %for.inc4 ], !dbg !1572
  %c.addr.0 = phi ptr [ %c, %entry ], [ %c.addr.1.lcssa, %for.inc4 ]
  %a.addr.0 = phi ptr [ %a, %entry ], [ %add.ptr6, %for.inc4 ]
    #dbg_value(ptr %a.addr.0, !1561, !DIExpression(), !1562)
    #dbg_value(ptr %c.addr.0, !1564, !DIExpression(), !1562)
    #dbg_value(i32 %i.0, !1568, !DIExpression(), !1570)
  %exitcond2 = icmp ne i32 %i.0, %smax1, !dbg !1573
  br i1 %exitcond2, label %for.cond1.preheader, label %for.end7, !dbg !1575

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !1576

for.cond1:                                        ; preds = %for.cond1.preheader, %for.body3
  %c.addr.1 = phi ptr [ %incdec.ptr, %for.body3 ], [ %c.addr.0, %for.cond1.preheader ]
  %j.0 = phi i32 [ %inc, %for.body3 ], [ 0, %for.cond1.preheader ], !dbg !1579
    #dbg_value(i32 %j.0, !1580, !DIExpression(), !1581)
    #dbg_value(ptr %c.addr.1, !1564, !DIExpression(), !1562)
  %exitcond = icmp ne i32 %j.0, %smax, !dbg !1582
  br i1 %exitcond, label %for.body3, label %for.inc4, !dbg !1576

for.body3:                                        ; preds = %for.cond1
  %add.ptr = getelementptr inbounds nuw i8, ptr %b, i32 %j.0, !dbg !1584
  %call = call fastcc zeroext i8 @lincomb(ptr noundef %a.addr.0, ptr noundef %add.ptr, i32 noundef %colrow_ab, i32 noundef %col_b) #6, !dbg !1586
  store i8 %call, ptr %c.addr.1, align 1, !dbg !1587
  %inc = add nuw i32 %j.0, 1, !dbg !1588
    #dbg_value(i32 %inc, !1580, !DIExpression(), !1581)
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %c.addr.1, i32 1, !dbg !1589
    #dbg_value(ptr %incdec.ptr, !1564, !DIExpression(), !1562)
  br label %for.cond1, !dbg !1590, !llvm.loop !1591

for.inc4:                                         ; preds = %for.cond1
  %c.addr.1.lcssa = phi ptr [ %c.addr.1, %for.cond1 ]
  %inc5 = add nuw i32 %i.0, 1, !dbg !1593
    #dbg_value(i32 %inc5, !1568, !DIExpression(), !1570)
  %add.ptr6 = getelementptr inbounds i8, ptr %a.addr.0, i32 %colrow_ab, !dbg !1594
    #dbg_value(ptr %add.ptr6, !1561, !DIExpression(), !1562)
  br label %for.cond, !dbg !1595, !llvm.loop !1596

for.end7:                                         ; preds = %for.cond
  ret void, !dbg !1598
}

; Function Attrs: nounwind
define internal fastcc void @mat_add(ptr noundef %a, ptr noundef %b, ptr noundef %c, i32 noundef %m, i32 noundef %n) unnamed_addr #0 !dbg !1599 {
entry:
    #dbg_value(ptr %a, !1602, !DIExpression(), !1603)
    #dbg_value(ptr %b, !1604, !DIExpression(), !1603)
    #dbg_value(ptr %c, !1605, !DIExpression(), !1603)
    #dbg_value(i32 %m, !1606, !DIExpression(), !1603)
    #dbg_value(i32 %n, !1607, !DIExpression(), !1603)
    #dbg_value(i32 0, !1608, !DIExpression(), !1610)
  %smax = call i32 @llvm.smax.i32(i32 %n, i32 0), !dbg !1611
  %smax1 = call i32 @llvm.smax.i32(i32 %m, i32 0), !dbg !1611
  br label %for.cond, !dbg !1611

for.cond:                                         ; preds = %for.inc11, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc12, %for.inc11 ], !dbg !1612
    #dbg_value(i32 %i.0, !1608, !DIExpression(), !1610)
  %exitcond2 = icmp ne i32 %i.0, %smax1, !dbg !1613
  br i1 %exitcond2, label %for.cond1.preheader, label %for.end13, !dbg !1615

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !1616

for.cond1:                                        ; preds = %for.cond1.preheader, %for.body3
  %j.0 = phi i32 [ %inc, %for.body3 ], [ 0, %for.cond1.preheader ], !dbg !1619
    #dbg_value(i32 %j.0, !1620, !DIExpression(), !1621)
  %exitcond = icmp ne i32 %j.0, %smax, !dbg !1622
  br i1 %exitcond, label %for.body3, label %for.inc11, !dbg !1616

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %i.0, %n, !dbg !1624
  %add.ptr = getelementptr inbounds i8, ptr %a, i32 %mul, !dbg !1626
  %add.ptr4 = getelementptr inbounds nuw i8, ptr %add.ptr, i32 %j.0, !dbg !1627
  %0 = load i8, ptr %add.ptr4, align 1, !dbg !1628
  %mul5 = mul nsw i32 %i.0, %n, !dbg !1629
  %add.ptr6 = getelementptr inbounds i8, ptr %b, i32 %mul5, !dbg !1630
  %add.ptr7 = getelementptr inbounds nuw i8, ptr %add.ptr6, i32 %j.0, !dbg !1631
  %1 = load i8, ptr %add.ptr7, align 1, !dbg !1632
  %call = call fastcc zeroext i8 @add_f(i8 noundef zeroext %0, i8 noundef zeroext %1) #6, !dbg !1633
  %mul8 = mul nsw i32 %i.0, %n, !dbg !1634
  %add.ptr9 = getelementptr inbounds i8, ptr %c, i32 %mul8, !dbg !1635
  %add.ptr10 = getelementptr inbounds nuw i8, ptr %add.ptr9, i32 %j.0, !dbg !1636
  store i8 %call, ptr %add.ptr10, align 1, !dbg !1637
  %inc = add nuw i32 %j.0, 1, !dbg !1638
    #dbg_value(i32 %inc, !1620, !DIExpression(), !1621)
  br label %for.cond1, !dbg !1639, !llvm.loop !1640

for.inc11:                                        ; preds = %for.cond1
  %inc12 = add nuw i32 %i.0, 1, !dbg !1642
    #dbg_value(i32 %inc12, !1608, !DIExpression(), !1610)
  br label %for.cond, !dbg !1643, !llvm.loop !1644

for.end13:                                        ; preds = %for.cond
  ret void, !dbg !1646
}

; Function Attrs: nounwind
define internal fastcc void @encode(ptr noundef %m, ptr noundef %menc, i32 noundef %mlen) unnamed_addr #0 !dbg !1647 {
entry:
    #dbg_value(ptr %m, !1648, !DIExpression(), !1649)
    #dbg_value(ptr %menc, !1650, !DIExpression(), !1649)
    #dbg_value(i32 %mlen, !1651, !DIExpression(), !1649)
    #dbg_value(i32 0, !1652, !DIExpression(), !1649)
  br label %for.cond, !dbg !1653

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1655
  %m.addr.0 = phi ptr [ %m, %entry ], [ %add.ptr3, %for.body ]
    #dbg_value(ptr %m.addr.0, !1648, !DIExpression(), !1649)
    #dbg_value(i32 %i.0, !1652, !DIExpression(), !1649)
  %div = sdiv i32 %mlen, 2, !dbg !1656
  %cmp = icmp slt i32 %i.0, %div, !dbg !1658
  br i1 %cmp, label %for.body, label %for.end, !dbg !1659

for.body:                                         ; preds = %for.cond
  %0 = load i8, ptr %m.addr.0, align 1, !dbg !1660
  %add.ptr = getelementptr inbounds nuw i8, ptr %m.addr.0, i32 1, !dbg !1662
  %1 = load i8, ptr %add.ptr, align 1, !dbg !1663
  %shl = shl i8 %1, 4, !dbg !1664
  %or = or i8 %shl, %0, !dbg !1665
  %arrayidx = getelementptr inbounds nuw i8, ptr %menc, i32 %i.0, !dbg !1666
  store i8 %or, ptr %arrayidx, align 1, !dbg !1667
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1668
    #dbg_value(i32 %inc, !1652, !DIExpression(), !1649)
  %add.ptr3 = getelementptr inbounds nuw i8, ptr %m.addr.0, i32 2, !dbg !1669
    #dbg_value(ptr %add.ptr3, !1648, !DIExpression(), !1649)
  br label %for.cond, !dbg !1670, !llvm.loop !1671

for.end:                                          ; preds = %for.cond
  %i.0.lcssa = phi i32 [ %i.0, %for.cond ], !dbg !1655
  %m.addr.0.lcssa = phi ptr [ %m.addr.0, %for.cond ]
  %2 = and i32 %mlen, -2147483647, !dbg !1673
  %cmp4 = icmp eq i32 %2, 1, !dbg !1673
  br i1 %cmp4, label %if.then, label %if.end, !dbg !1673

if.then:                                          ; preds = %for.end
  %3 = load i8, ptr %m.addr.0.lcssa, align 1, !dbg !1675
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %menc, i32 %i.0.lcssa, !dbg !1677
  store i8 %3, ptr %arrayidx6, align 1, !dbg !1678
  br label %if.end, !dbg !1679

if.end:                                           ; preds = %if.then, %for.end
  ret void, !dbg !1680
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @add_f(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !1681 {
entry:
    #dbg_value(i8 %a, !1684, !DIExpression(), !1685)
    #dbg_value(i8 %b, !1686, !DIExpression(), !1685)
  %xor1 = xor i8 %a, %b, !dbg !1687
  ret i8 %xor1, !dbg !1688
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @lincomb(ptr noundef %a, ptr noundef %b, i32 noundef %n, i32 noundef %m) unnamed_addr #0 !dbg !1689 {
entry:
    #dbg_value(ptr %a, !1692, !DIExpression(), !1693)
    #dbg_value(ptr %b, !1694, !DIExpression(), !1693)
    #dbg_value(i32 %n, !1695, !DIExpression(), !1693)
    #dbg_value(i32 %m, !1696, !DIExpression(), !1693)
    #dbg_value(i8 0, !1697, !DIExpression(), !1693)
    #dbg_value(i32 0, !1698, !DIExpression(), !1700)
  %smax = call i32 @llvm.smax.i32(i32 %n, i32 0), !dbg !1701
  br label %for.cond, !dbg !1701

for.cond:                                         ; preds = %for.body, %entry
  %ret.0 = phi i8 [ 0, %entry ], [ %call1, %for.body ], !dbg !1693
  %b.addr.0 = phi ptr [ %b, %entry ], [ %add.ptr, %for.body ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1702
    #dbg_value(i32 %i.0, !1698, !DIExpression(), !1700)
    #dbg_value(ptr %b.addr.0, !1694, !DIExpression(), !1693)
    #dbg_value(i8 %ret.0, !1697, !DIExpression(), !1693)
  %exitcond = icmp ne i32 %i.0, %smax, !dbg !1703
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1705

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %a, i32 %i.0, !dbg !1706
  %0 = load i8, ptr %arrayidx, align 1, !dbg !1706
  %1 = load i8, ptr %b.addr.0, align 1, !dbg !1708
  %call = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %0, i8 noundef zeroext %1) #6, !dbg !1709
  %call1 = call fastcc zeroext i8 @add_f(i8 noundef zeroext %call, i8 noundef zeroext %ret.0) #6, !dbg !1710
    #dbg_value(i8 %call1, !1697, !DIExpression(), !1693)
  %inc = add nuw i32 %i.0, 1, !dbg !1711
    #dbg_value(i32 %inc, !1698, !DIExpression(), !1700)
  %add.ptr = getelementptr inbounds i8, ptr %b.addr.0, i32 %m, !dbg !1712
    #dbg_value(ptr %add.ptr, !1694, !DIExpression(), !1693)
  br label %for.cond, !dbg !1713, !llvm.loop !1714

for.end:                                          ; preds = %for.cond
  %ret.0.lcssa = phi i8 [ %ret.0, %for.cond ], !dbg !1693
  ret i8 %ret.0.lcssa, !dbg !1716
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @mul_f(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !1717 {
entry:
    #dbg_value(i8 %a, !1718, !DIExpression(), !1719)
    #dbg_value(i8 %b, !1720, !DIExpression(), !1719)
  %0 = load volatile i8, ptr @pqmayo_MAYO_1_ref_unsigned_char_blocker, align 1, !dbg !1721
  %xor1 = xor i8 %a, %0, !dbg !1722
    #dbg_value(i8 %xor1, !1718, !DIExpression(), !1719)
  %1 = trunc i8 %xor1 to i1, !dbg !1723
    #dbg_value(i8 poison, !1724, !DIExpression(), !1719)
  %2 = and i8 %xor1, 2, !dbg !1725
  %mul9 = mul i8 %2, %b, !dbg !1726
  %conv10 = select i1 %1, i8 %b, i8 0, !dbg !1723
  %xor11 = xor i8 %conv10, %mul9, !dbg !1727
    #dbg_value(i8 %xor11, !1724, !DIExpression(), !1719)
  %3 = and i8 %xor1, 4, !dbg !1728
  %mul16 = mul i8 %3, %b, !dbg !1729
  %xor18 = xor i8 %mul16, %xor11, !dbg !1730
    #dbg_value(i8 %xor18, !1724, !DIExpression(), !1719)
  %4 = and i8 %xor1, 8, !dbg !1731
  %mul23 = mul i8 %4, %b, !dbg !1732
  %xor25 = xor i8 %mul23, %xor18, !dbg !1733
    #dbg_value(i8 %xor25, !1724, !DIExpression(), !1719)
    #dbg_value(i8 %xor25, !1734, !DIExpression(DW_OP_constu, 18446744073709551600, DW_OP_and, DW_OP_stack_value), !1719)
  %5 = lshr i8 %xor25, 4, !dbg !1735
  %6 = lshr i8 %xor25, 3, !dbg !1736
  %7 = and i8 %6, 14, !dbg !1736
  %8 = xor i8 %5, %7, !dbg !1737
  %xor25.masked = and i8 %xor25, 15, !dbg !1738
  %9 = xor i8 %8, %xor25.masked, !dbg !1738
    #dbg_value(i8 %9, !1739, !DIExpression(), !1719)
  ret i8 %9, !dbg !1740
}

; Function Attrs: nounwind
define internal fastcc void @transpose_16x16_nibbles(ptr noundef %M) unnamed_addr #0 !dbg !67 {
entry:
    #dbg_value(ptr %M, !1741, !DIExpression(), !1742)
    #dbg_value(i32 0, !1743, !DIExpression(), !1745)
  br label %for.cond, !dbg !1746

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %add7, %for.body ], !dbg !1747
    #dbg_value(i32 %i.0, !1743, !DIExpression(), !1745)
  %cmp = icmp samesign ult i32 %i.0, 16, !dbg !1748
  br i1 %cmp, label %for.body, label %for.cond9.preheader, !dbg !1750

for.cond9.preheader:                              ; preds = %for.cond
  br label %for.cond9, !dbg !1751

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %M, i32 %i.0, !dbg !1753
  %0 = load i64, ptr %arrayidx, align 8, !dbg !1753
  %shr = lshr i64 %0, 4, !dbg !1755
  %add = or disjoint i32 %i.0, 1, !dbg !1756
  %arrayidx1 = getelementptr inbounds nuw i64, ptr %M, i32 %add, !dbg !1757
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !1757
  %xor = xor i64 %shr, %1, !dbg !1758
  %and = and i64 %xor, 1085102592571150095, !dbg !1759
    #dbg_value(i64 %and, !1760, !DIExpression(), !1761)
  %shl = shl nuw i64 %and, 4, !dbg !1762
  %arrayidx2 = getelementptr inbounds nuw i64, ptr %M, i32 %i.0, !dbg !1763
  %2 = load i64, ptr %arrayidx2, align 8, !dbg !1764
  %xor3 = xor i64 %2, %shl, !dbg !1764
  store i64 %xor3, ptr %arrayidx2, align 8, !dbg !1764
  %add4 = or disjoint i32 %i.0, 1, !dbg !1765
  %arrayidx5 = getelementptr inbounds nuw i64, ptr %M, i32 %add4, !dbg !1766
  %3 = load i64, ptr %arrayidx5, align 8, !dbg !1767
  %xor6 = xor i64 %3, %and, !dbg !1767
  store i64 %xor6, ptr %arrayidx5, align 8, !dbg !1767
  %add7 = add nuw nsw i32 %i.0, 2, !dbg !1768
    #dbg_value(i32 %add7, !1743, !DIExpression(), !1745)
  br label %for.cond, !dbg !1769, !llvm.loop !1770

for.cond9:                                        ; preds = %for.cond9.preheader, %for.body11
  %i8.0 = phi i32 [ %add39, %for.body11 ], [ 0, %for.cond9.preheader ], !dbg !1772
    #dbg_value(i32 %i8.0, !1773, !DIExpression(), !1774)
  %cmp10 = icmp samesign ult i32 %i8.0, 16, !dbg !1775
  br i1 %cmp10, label %for.body11, label %for.cond42.preheader, !dbg !1751

for.cond42.preheader:                             ; preds = %for.cond9
  br label %for.cond42, !dbg !1777

for.body11:                                       ; preds = %for.cond9
  %arrayidx12 = getelementptr inbounds nuw i64, ptr %M, i32 %i8.0, !dbg !1779
  %4 = load i64, ptr %arrayidx12, align 8, !dbg !1779
  %shr13 = lshr i64 %4, 8, !dbg !1781
  %add14 = or disjoint i32 %i8.0, 2, !dbg !1782
  %arrayidx15 = getelementptr inbounds nuw i64, ptr %M, i32 %add14, !dbg !1783
  %5 = load i64, ptr %arrayidx15, align 8, !dbg !1783
  %xor16 = xor i64 %shr13, %5, !dbg !1784
  %and17 = and i64 %xor16, 71777214294589695, !dbg !1785
    #dbg_value(i64 %and17, !1786, !DIExpression(), !1787)
  %add18 = or disjoint i32 %i8.0, 1, !dbg !1788
  %arrayidx19 = getelementptr inbounds nuw i64, ptr %M, i32 %add18, !dbg !1789
  %6 = load i64, ptr %arrayidx19, align 8, !dbg !1789
  %shr20 = lshr i64 %6, 8, !dbg !1790
  %add21 = or disjoint i32 %i8.0, 3, !dbg !1791
  %arrayidx22 = getelementptr inbounds nuw i64, ptr %M, i32 %add21, !dbg !1792
  %7 = load i64, ptr %arrayidx22, align 8, !dbg !1792
  %xor23 = xor i64 %shr20, %7, !dbg !1793
  %and24 = and i64 %xor23, 71777214294589695, !dbg !1794
    #dbg_value(i64 %and24, !1795, !DIExpression(), !1787)
  %shl25 = shl nuw i64 %and17, 8, !dbg !1796
  %arrayidx26 = getelementptr inbounds nuw i64, ptr %M, i32 %i8.0, !dbg !1797
  %8 = load i64, ptr %arrayidx26, align 8, !dbg !1798
  %xor27 = xor i64 %8, %shl25, !dbg !1798
  store i64 %xor27, ptr %arrayidx26, align 8, !dbg !1798
  %shl28 = shl nuw i64 %and24, 8, !dbg !1799
  %add29 = or disjoint i32 %i8.0, 1, !dbg !1800
  %arrayidx30 = getelementptr inbounds nuw i64, ptr %M, i32 %add29, !dbg !1801
  %9 = load i64, ptr %arrayidx30, align 8, !dbg !1802
  %xor31 = xor i64 %9, %shl28, !dbg !1802
  store i64 %xor31, ptr %arrayidx30, align 8, !dbg !1802
  %add32 = or disjoint i32 %i8.0, 2, !dbg !1803
  %arrayidx33 = getelementptr inbounds nuw i64, ptr %M, i32 %add32, !dbg !1804
  %10 = load i64, ptr %arrayidx33, align 8, !dbg !1805
  %xor34 = xor i64 %10, %and17, !dbg !1805
  store i64 %xor34, ptr %arrayidx33, align 8, !dbg !1805
  %add35 = or disjoint i32 %i8.0, 3, !dbg !1806
  %arrayidx36 = getelementptr inbounds nuw i64, ptr %M, i32 %add35, !dbg !1807
  %11 = load i64, ptr %arrayidx36, align 8, !dbg !1808
  %xor37 = xor i64 %11, %and24, !dbg !1808
  store i64 %xor37, ptr %arrayidx36, align 8, !dbg !1808
  %add39 = add nuw nsw i32 %i8.0, 4, !dbg !1809
    #dbg_value(i32 %add39, !1773, !DIExpression(), !1774)
  br label %for.cond9, !dbg !1810, !llvm.loop !1811

for.cond42:                                       ; preds = %for.cond42.preheader, %for.body44
  %i41.0 = phi i32 [ %inc, %for.body44 ], [ 0, %for.cond42.preheader ], !dbg !1813
    #dbg_value(i32 %i41.0, !1814, !DIExpression(), !1815)
  %exitcond = icmp ne i32 %i41.0, 4, !dbg !1816
  br i1 %exitcond, label %for.body44, label %for.cond76.preheader, !dbg !1777

for.cond76.preheader:                             ; preds = %for.cond42
  br label %for.cond76, !dbg !1818

for.body44:                                       ; preds = %for.cond42
  %arrayidx46 = getelementptr inbounds nuw i64, ptr %M, i32 %i41.0, !dbg !1820
  %12 = load i64, ptr %arrayidx46, align 8, !dbg !1820
  %shr47 = lshr i64 %12, 16, !dbg !1822
  %add48 = or disjoint i32 %i41.0, 4, !dbg !1823
  %arrayidx49 = getelementptr inbounds nuw i64, ptr %M, i32 %add48, !dbg !1824
  %13 = load i64, ptr %arrayidx49, align 8, !dbg !1824
  %xor50 = xor i64 %shr47, %13, !dbg !1825
  %and51 = and i64 %xor50, 281470681808895, !dbg !1826
    #dbg_value(i64 %and51, !1827, !DIExpression(), !1828)
  %add53 = or disjoint i32 %i41.0, 8, !dbg !1829
  %arrayidx54 = getelementptr inbounds nuw i64, ptr %M, i32 %add53, !dbg !1830
  %14 = load i64, ptr %arrayidx54, align 8, !dbg !1830
  %shr55 = lshr i64 %14, 16, !dbg !1831
  %add56 = or disjoint i32 %i41.0, 12, !dbg !1832
  %arrayidx57 = getelementptr inbounds nuw i64, ptr %M, i32 %add56, !dbg !1833
  %15 = load i64, ptr %arrayidx57, align 8, !dbg !1833
  %xor58 = xor i64 %shr55, %15, !dbg !1834
  %and59 = and i64 %xor58, 281470681808895, !dbg !1835
    #dbg_value(i64 %and59, !1836, !DIExpression(), !1828)
  %shl60 = shl nuw i64 %and51, 16, !dbg !1837
  %arrayidx61 = getelementptr inbounds nuw i64, ptr %M, i32 %i41.0, !dbg !1838
  %16 = load i64, ptr %arrayidx61, align 8, !dbg !1839
  %xor62 = xor i64 %16, %shl60, !dbg !1839
  store i64 %xor62, ptr %arrayidx61, align 8, !dbg !1839
  %shl63 = shl nuw i64 %and59, 16, !dbg !1840
  %add64 = or disjoint i32 %i41.0, 8, !dbg !1841
  %arrayidx65 = getelementptr inbounds nuw i64, ptr %M, i32 %add64, !dbg !1842
  %17 = load i64, ptr %arrayidx65, align 8, !dbg !1843
  %xor66 = xor i64 %17, %shl63, !dbg !1843
  store i64 %xor66, ptr %arrayidx65, align 8, !dbg !1843
  %add67 = or disjoint i32 %i41.0, 4, !dbg !1844
  %arrayidx68 = getelementptr inbounds nuw i64, ptr %M, i32 %add67, !dbg !1845
  %18 = load i64, ptr %arrayidx68, align 8, !dbg !1846
  %xor69 = xor i64 %18, %and51, !dbg !1846
  store i64 %xor69, ptr %arrayidx68, align 8, !dbg !1846
  %add70 = or disjoint i32 %i41.0, 12, !dbg !1847
  %arrayidx71 = getelementptr inbounds nuw i64, ptr %M, i32 %add70, !dbg !1848
  %19 = load i64, ptr %arrayidx71, align 8, !dbg !1849
  %xor72 = xor i64 %19, %and59, !dbg !1849
  store i64 %xor72, ptr %arrayidx71, align 8, !dbg !1849
  %inc = add nuw nsw i32 %i41.0, 1, !dbg !1850
    #dbg_value(i32 %inc, !1814, !DIExpression(), !1815)
  br label %for.cond42, !dbg !1851, !llvm.loop !1852

for.cond76:                                       ; preds = %for.cond76.preheader, %for.body78
  %i75.0 = phi i32 [ %inc93, %for.body78 ], [ 0, %for.cond76.preheader ], !dbg !1854
    #dbg_value(i32 %i75.0, !1855, !DIExpression(), !1856)
  %exitcond1 = icmp ne i32 %i75.0, 8, !dbg !1857
  br i1 %exitcond1, label %for.body78, label %for.end94, !dbg !1818

for.body78:                                       ; preds = %for.cond76
  %arrayidx80 = getelementptr inbounds nuw i64, ptr %M, i32 %i75.0, !dbg !1859
  %20 = load i64, ptr %arrayidx80, align 8, !dbg !1859
  %shr81 = lshr i64 %20, 32, !dbg !1861
  %add82 = or disjoint i32 %i75.0, 8, !dbg !1862
  %arrayidx83 = getelementptr inbounds nuw i64, ptr %M, i32 %add82, !dbg !1863
  %21 = load i64, ptr %arrayidx83, align 8, !dbg !1863
  %.masked = and i64 %21, 4294967295, !dbg !1864
  %and85 = xor i64 %shr81, %.masked, !dbg !1864
    #dbg_value(i64 %and85, !1865, !DIExpression(), !1866)
  %shl86 = shl nuw i64 %and85, 32, !dbg !1867
  %arrayidx87 = getelementptr inbounds nuw i64, ptr %M, i32 %i75.0, !dbg !1868
  %22 = load i64, ptr %arrayidx87, align 8, !dbg !1869
  %xor88 = xor i64 %22, %shl86, !dbg !1869
  store i64 %xor88, ptr %arrayidx87, align 8, !dbg !1869
  %add89 = or disjoint i32 %i75.0, 8, !dbg !1870
  %arrayidx90 = getelementptr inbounds nuw i64, ptr %M, i32 %add89, !dbg !1871
  %23 = load i64, ptr %arrayidx90, align 8, !dbg !1872
  %xor91 = xor i64 %23, %and85, !dbg !1872
  store i64 %xor91, ptr %arrayidx90, align 8, !dbg !1872
  %inc93 = add nuw nsw i32 %i75.0, 1, !dbg !1873
    #dbg_value(i32 %inc93, !1855, !DIExpression(), !1856)
  br label %for.cond76, !dbg !1874, !llvm.loop !1875

for.end94:                                        ; preds = %for.cond76
  ret void, !dbg !1877
}

; Function Attrs: nounwind
define internal fastcc void @mul_add_mat_x_m_mat(i32 noundef %m_vec_limbs, ptr noundef %mat, ptr noundef %bs_mat, ptr noundef %acc, i32 noundef %mat_rows, i32 noundef %mat_cols, i32 noundef %bs_mat_cols) unnamed_addr #0 !dbg !1878 {
entry:
    #dbg_value(i32 %m_vec_limbs, !1879, !DIExpression(), !1880)
    #dbg_value(ptr %mat, !1881, !DIExpression(), !1880)
    #dbg_value(ptr %bs_mat, !1882, !DIExpression(), !1880)
    #dbg_value(ptr %acc, !1883, !DIExpression(), !1880)
    #dbg_value(i32 %mat_rows, !1884, !DIExpression(), !1880)
    #dbg_value(i32 %mat_cols, !1885, !DIExpression(), !1880)
    #dbg_value(i32 %bs_mat_cols, !1886, !DIExpression(), !1880)
    #dbg_value(i32 0, !1887, !DIExpression(), !1889)
  %smax = call i32 @llvm.smax.i32(i32 %bs_mat_cols, i32 0), !dbg !1890
  %smax1 = call i32 @llvm.smax.i32(i32 %mat_cols, i32 0), !dbg !1890
  %smax3 = call i32 @llvm.smax.i32(i32 %mat_rows, i32 0), !dbg !1890
  br label %for.cond, !dbg !1890

for.cond:                                         ; preds = %for.inc17, %entry
  %r.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ], !dbg !1891
    #dbg_value(i32 %r.0, !1887, !DIExpression(), !1889)
  %exitcond4 = icmp ne i32 %r.0, %smax3, !dbg !1892
  br i1 %exitcond4, label %for.cond1.preheader, label %for.end19, !dbg !1894

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !1895

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc15
  %c.0 = phi i32 [ %inc, %for.inc15 ], [ 0, %for.cond1.preheader ], !dbg !1898
    #dbg_value(i32 %c.0, !1899, !DIExpression(), !1900)
  %exitcond2 = icmp ne i32 %c.0, %smax1, !dbg !1901
  br i1 %exitcond2, label %for.cond4.preheader, label %for.inc17, !dbg !1895

for.cond4.preheader:                              ; preds = %for.cond1
  br label %for.cond4, !dbg !1903

for.cond4:                                        ; preds = %for.cond4.preheader, %for.body6
  %k.0 = phi i32 [ %add14, %for.body6 ], [ 0, %for.cond4.preheader ], !dbg !1906
    #dbg_value(i32 %k.0, !1907, !DIExpression(), !1908)
  %exitcond = icmp ne i32 %k.0, %smax, !dbg !1909
  br i1 %exitcond, label %for.body6, label %for.inc15, !dbg !1903

for.body6:                                        ; preds = %for.cond4
  %mul = mul nsw i32 %c.0, %bs_mat_cols, !dbg !1911
  %add = add nsw i32 %mul, %k.0, !dbg !1913
  %mul7 = mul nsw i32 %m_vec_limbs, %add, !dbg !1914
  %add.ptr = getelementptr inbounds i64, ptr %bs_mat, i32 %mul7, !dbg !1915
  %mul8 = mul nsw i32 %r.0, %mat_cols, !dbg !1916
  %0 = getelementptr i8, ptr %mat, i32 %mul8, !dbg !1917
  %arrayidx = getelementptr i8, ptr %0, i32 %c.0, !dbg !1917
  %1 = load i8, ptr %arrayidx, align 1, !dbg !1917
  %mul10 = mul nsw i32 %r.0, %bs_mat_cols, !dbg !1918
  %add11 = add nsw i32 %mul10, %k.0, !dbg !1919
  %mul12 = mul nsw i32 %m_vec_limbs, %add11, !dbg !1920
  %add.ptr13 = getelementptr inbounds i64, ptr %acc, i32 %mul12, !dbg !1921
  call fastcc void @m_vec_mul_add(i32 noundef %m_vec_limbs, ptr noundef %add.ptr, i8 noundef zeroext %1, ptr noundef %add.ptr13) #6, !dbg !1922
  %add14 = add nuw i32 %k.0, 1, !dbg !1923
    #dbg_value(i32 %add14, !1907, !DIExpression(), !1908)
  br label %for.cond4, !dbg !1924, !llvm.loop !1925

for.inc15:                                        ; preds = %for.cond4
  %inc = add nuw i32 %c.0, 1, !dbg !1927
    #dbg_value(i32 %inc, !1899, !DIExpression(), !1900)
  br label %for.cond1, !dbg !1928, !llvm.loop !1929

for.inc17:                                        ; preds = %for.cond1
  %inc18 = add nuw i32 %r.0, 1, !dbg !1931
    #dbg_value(i32 %inc18, !1887, !DIExpression(), !1889)
  br label %for.cond, !dbg !1932, !llvm.loop !1933

for.end19:                                        ; preds = %for.cond
  ret void, !dbg !1935
}

; Function Attrs: nounwind
define internal fastcc void @P1_times_Vt(ptr noundef %p, ptr noundef %P1, ptr noundef %V, ptr noundef %acc) unnamed_addr #0 !dbg !1936 {
entry:
    #dbg_value(ptr %p, !1937, !DIExpression(), !1938)
    #dbg_value(ptr %P1, !1939, !DIExpression(), !1938)
    #dbg_value(ptr %V, !1940, !DIExpression(), !1938)
    #dbg_value(ptr %acc, !1941, !DIExpression(), !1938)
  call fastcc void @mul_add_m_upper_triangular_mat_x_mat_trans(i32 noundef 5, ptr noundef %P1, ptr noundef %V, ptr noundef %acc, i32 noundef 78, i32 noundef 78, i32 noundef 10, i32 noundef 1) #6, !dbg !1942
  ret void, !dbg !1943
}

; Function Attrs: nounwind
define internal fastcc void @mul_add_m_upper_triangular_mat_x_mat_trans(i32 noundef %m_vec_limbs, ptr noundef %bs_mat, ptr noundef %mat, ptr noundef %acc, i32 noundef %bs_mat_rows, i32 noundef %bs_mat_cols, i32 noundef %mat_rows, i32 noundef %triangular) unnamed_addr #0 !dbg !1944 {
entry:
    #dbg_value(i32 %m_vec_limbs, !1945, !DIExpression(), !1946)
    #dbg_value(ptr %bs_mat, !1947, !DIExpression(), !1946)
    #dbg_value(ptr %mat, !1948, !DIExpression(), !1946)
    #dbg_value(ptr %acc, !1949, !DIExpression(), !1946)
    #dbg_value(i32 %bs_mat_rows, !1950, !DIExpression(), !1946)
    #dbg_value(i32 %bs_mat_cols, !1951, !DIExpression(), !1946)
    #dbg_value(i32 %mat_rows, !1952, !DIExpression(), !1946)
    #dbg_value(i32 %triangular, !1953, !DIExpression(), !1946)
    #dbg_value(i32 0, !1954, !DIExpression(), !1946)
    #dbg_value(i32 0, !1955, !DIExpression(), !1957)
  %smax = call i32 @llvm.smax.i32(i32 %mat_rows, i32 0), !dbg !1958
  %smax1 = call i32 @llvm.smax.i32(i32 %bs_mat_rows, i32 0), !dbg !1958
  br label %for.cond, !dbg !1958

for.cond:                                         ; preds = %for.inc17, %entry
  %bs_mat_entries_used.0 = phi i32 [ 0, %entry ], [ %bs_mat_entries_used.1.lcssa, %for.inc17 ], !dbg !1959
  %r.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ], !dbg !1960
    #dbg_value(i32 %r.0, !1955, !DIExpression(), !1957)
    #dbg_value(i32 %bs_mat_entries_used.0, !1954, !DIExpression(), !1946)
  %exitcond2 = icmp ne i32 %r.0, %smax1, !dbg !1961
  br i1 %exitcond2, label %for.body, label %for.end19, !dbg !1963

for.body:                                         ; preds = %for.cond
  %mul = mul nsw i32 %triangular, %r.0, !dbg !1964
    #dbg_value(i32 %mul, !1967, !DIExpression(), !1968)
  br label %for.cond1, !dbg !1969

for.cond1:                                        ; preds = %for.inc15, %for.body
  %bs_mat_entries_used.1 = phi i32 [ %bs_mat_entries_used.0, %for.body ], [ %add14, %for.inc15 ], !dbg !1946
  %c.0 = phi i32 [ %mul, %for.body ], [ %inc, %for.inc15 ], !dbg !1970
    #dbg_value(i32 %c.0, !1967, !DIExpression(), !1968)
    #dbg_value(i32 %bs_mat_entries_used.1, !1954, !DIExpression(), !1946)
  %cmp2 = icmp slt i32 %c.0, %bs_mat_cols, !dbg !1971
  br i1 %cmp2, label %for.cond4.preheader, label %for.inc17, !dbg !1973

for.cond4.preheader:                              ; preds = %for.cond1
  br label %for.cond4, !dbg !1974

for.cond4:                                        ; preds = %for.cond4.preheader, %for.body6
  %k.0 = phi i32 [ %add13, %for.body6 ], [ 0, %for.cond4.preheader ], !dbg !1977
    #dbg_value(i32 %k.0, !1978, !DIExpression(), !1979)
  %exitcond = icmp ne i32 %k.0, %smax, !dbg !1980
  br i1 %exitcond, label %for.body6, label %for.inc15, !dbg !1974

for.body6:                                        ; preds = %for.cond4
  %mul7 = mul nsw i32 %m_vec_limbs, %bs_mat_entries_used.1, !dbg !1982
  %add.ptr = getelementptr inbounds i64, ptr %bs_mat, i32 %mul7, !dbg !1984
  %mul8 = mul nsw i32 %k.0, %bs_mat_cols, !dbg !1985
  %0 = getelementptr i8, ptr %mat, i32 %mul8, !dbg !1986
  %arrayidx = getelementptr i8, ptr %0, i32 %c.0, !dbg !1986
  %1 = load i8, ptr %arrayidx, align 1, !dbg !1986
  %mul9 = mul nsw i32 %r.0, %mat_rows, !dbg !1987
  %add10 = add nsw i32 %mul9, %k.0, !dbg !1988
  %mul11 = mul nsw i32 %m_vec_limbs, %add10, !dbg !1989
  %add.ptr12 = getelementptr inbounds i64, ptr %acc, i32 %mul11, !dbg !1990
  call fastcc void @m_vec_mul_add(i32 noundef %m_vec_limbs, ptr noundef %add.ptr, i8 noundef zeroext %1, ptr noundef %add.ptr12) #6, !dbg !1991
  %add13 = add nuw i32 %k.0, 1, !dbg !1992
    #dbg_value(i32 %add13, !1978, !DIExpression(), !1979)
  br label %for.cond4, !dbg !1993, !llvm.loop !1994

for.inc15:                                        ; preds = %for.cond4
    #dbg_value(i32 %bs_mat_entries_used.1, !1954, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1946)
  %add14 = add nsw i32 %bs_mat_entries_used.1, 1, !dbg !1996
    #dbg_value(i32 %add14, !1954, !DIExpression(), !1946)
  %inc = add nsw i32 %c.0, 1, !dbg !1997
    #dbg_value(i32 %inc, !1967, !DIExpression(), !1968)
  br label %for.cond1, !dbg !1998, !llvm.loop !1999

for.inc17:                                        ; preds = %for.cond1
  %bs_mat_entries_used.1.lcssa = phi i32 [ %bs_mat_entries_used.1, %for.cond1 ], !dbg !1946
  %inc18 = add nuw i32 %r.0, 1, !dbg !2001
    #dbg_value(i32 %inc18, !1955, !DIExpression(), !1957)
  br label %for.cond, !dbg !2002, !llvm.loop !2003

for.end19:                                        ; preds = %for.cond
  ret void, !dbg !2005
}

; Function Attrs: nounwind
define dso_local i32 @pqmayo_MAYO_1_ref_mayo_sign(ptr noundef %p, ptr noundef %sm, ptr noundef %smlen, ptr noundef %m, i32 noundef %mlen, ptr noundef %csk) local_unnamed_addr #0 !dbg !2006 {
entry:
  %siglen = alloca i32, align 4
    #dbg_value(ptr %p, !2007, !DIExpression(), !2008)
    #dbg_value(ptr %sm, !2009, !DIExpression(), !2008)
    #dbg_value(ptr %smlen, !2010, !DIExpression(), !2008)
    #dbg_value(ptr %m, !2011, !DIExpression(), !2008)
    #dbg_value(i32 %mlen, !2012, !DIExpression(), !2008)
    #dbg_value(ptr %csk, !2013, !DIExpression(), !2008)
    #dbg_value(i32 0, !2014, !DIExpression(), !2008)
    #dbg_value(i32 454, !2015, !DIExpression(), !2008)
  %add.ptr = getelementptr inbounds nuw i8, ptr %sm, i32 454, !dbg !2016
  %call = call ptr @memmove(ptr noundef nonnull %add.ptr, ptr noundef %m, i32 noundef %mlen) #8, !dbg !2017
  %add.ptr1 = getelementptr inbounds nuw i8, ptr %sm, i32 454, !dbg !2018
    #dbg_value(ptr %siglen, !2019, !DIExpression(DW_OP_deref), !2008)
  %call2 = call i32 @pqmayo_MAYO_1_ref_mayo_sign_signature(ptr noundef %p, ptr noundef %sm, ptr noundef nonnull %siglen, ptr noundef nonnull %add.ptr1, i32 noundef %mlen, ptr noundef %csk) #6, !dbg !2020
    #dbg_value(i32 %call2, !2014, !DIExpression(), !2008)
  %cmp.not = icmp eq i32 %call2, 0, !dbg !2021
  %0 = load i32, ptr %siglen, align 4
    #dbg_value(i32 %0, !2019, !DIExpression(), !2008)
  %cmp3.not = icmp eq i32 %0, 454
  %or.cond = select i1 %cmp.not, i1 %cmp3.not, i1 false, !dbg !2023
  br i1 %or.cond, label %if.end, label %if.then, !dbg !2023

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %siglen, align 4, !dbg !2024
    #dbg_value(i32 %1, !2019, !DIExpression(), !2008)
  %add = add i32 %1, %mlen, !dbg !2026
  %call4 = call ptr @memset(ptr noundef %sm, i32 noundef 0, i32 noundef %add) #8, !dbg !2027
  br label %err, !dbg !2028

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %siglen, align 4, !dbg !2029
    #dbg_value(i32 %2, !2019, !DIExpression(), !2008)
  %add5 = add i32 %2, %mlen, !dbg !2030
  store i32 %add5, ptr %smlen, align 4, !dbg !2031
  br label %err, !dbg !2032

err:                                              ; preds = %if.end, %if.then
    #dbg_label(!2033, !2034)
  ret i32 %call2, !dbg !2035
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_1_ref_mayo_open(ptr noundef %p, ptr noundef %m, ptr noundef %mlen, ptr noundef %sm, i32 noundef %smlen, ptr noundef %pk) local_unnamed_addr #0 !dbg !2036 {
entry:
    #dbg_value(ptr %p, !2037, !DIExpression(), !2038)
    #dbg_value(ptr %m, !2039, !DIExpression(), !2038)
    #dbg_value(ptr %mlen, !2040, !DIExpression(), !2038)
    #dbg_value(ptr %sm, !2041, !DIExpression(), !2038)
    #dbg_value(i32 %smlen, !2042, !DIExpression(), !2038)
    #dbg_value(ptr %pk, !2043, !DIExpression(), !2038)
    #dbg_value(i32 454, !2044, !DIExpression(), !2038)
  %cmp = icmp ult i32 %smlen, 454, !dbg !2045
  br i1 %cmp, label %return, label %if.end, !dbg !2045

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr inbounds nuw i8, ptr %sm, i32 454, !dbg !2047
  %sub = add i32 %smlen, -454, !dbg !2048
  %call = call i32 @pqmayo_MAYO_1_ref_mayo_verify(ptr noundef %p, ptr noundef nonnull %add.ptr, i32 noundef %sub, ptr noundef %sm, ptr noundef %pk) #6, !dbg !2049
    #dbg_value(i32 %call, !2050, !DIExpression(), !2038)
  %cmp1 = icmp eq i32 %call, 0, !dbg !2051
  br i1 %cmp1, label %if.then2, label %return, !dbg !2051

if.then2:                                         ; preds = %if.end
  %sub3 = add i32 %smlen, -454, !dbg !2053
  store i32 %sub3, ptr %mlen, align 4, !dbg !2055
  %add.ptr4 = getelementptr inbounds nuw i8, ptr %sm, i32 454, !dbg !2056
  %call5 = call ptr @memmove(ptr noundef %m, ptr noundef nonnull %add.ptr4, i32 noundef %sub3) #8, !dbg !2057
  br label %return, !dbg !2058

return:                                           ; preds = %if.end, %if.then2, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ 0, %if.then2 ], [ 1, %if.end ], !dbg !2038
  ret i32 %retval.0, !dbg !2059
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_1_ref_mayo_verify(ptr noundef %p, ptr noundef %m, i32 noundef %mlen, ptr noundef %sig, ptr noundef %cpk) local_unnamed_addr #0 !dbg !2060 {
entry:
  %tEnc = alloca [39 x i8], align 1
  %t = alloca [78 x i8], align 1
  %y = alloca [156 x i8], align 1
  %s = alloca [860 x i8], align 1
  %pk = alloca [18705 x i64], align 8
  %tmp = alloca [56 x i8], align 1
    #dbg_value(ptr %p, !2063, !DIExpression(), !2064)
    #dbg_value(ptr %m, !2065, !DIExpression(), !2064)
    #dbg_value(i32 %mlen, !2066, !DIExpression(), !2064)
    #dbg_value(ptr %sig, !2067, !DIExpression(), !2064)
    #dbg_value(ptr %cpk, !2068, !DIExpression(), !2064)
    #dbg_declare(ptr %tEnc, !2069, !DIExpression(), !2070)
    #dbg_declare(ptr %t, !2071, !DIExpression(), !2072)
    #dbg_declare(ptr %y, !2073, !DIExpression(), !2077)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(156) %y, i8 0, i32 156, i1 false), !dbg !2077
    #dbg_declare(ptr %s, !2078, !DIExpression(), !2079)
    #dbg_declare(ptr %pk, !2080, !DIExpression(), !2084)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(149640) %pk, i8 0, i32 149640, i1 false), !dbg !2084
    #dbg_declare(ptr %tmp, !2085, !DIExpression(), !2089)
    #dbg_value(i32 78, !2090, !DIExpression(), !2064)
    #dbg_value(i32 86, !2091, !DIExpression(), !2064)
    #dbg_value(i32 10, !2092, !DIExpression(), !2064)
    #dbg_value(i32 39, !2093, !DIExpression(), !2064)
    #dbg_value(i32 454, !2094, !DIExpression(), !2064)
    #dbg_value(i32 32, !2095, !DIExpression(), !2064)
    #dbg_value(i32 24, !2096, !DIExpression(), !2064)
  %call = call i32 @pqmayo_MAYO_1_ref_mayo_expand_pk(ptr noundef %p, ptr noundef %cpk, ptr noundef nonnull %pk) #6, !dbg !2097
    #dbg_value(i32 %call, !2098, !DIExpression(), !2064)
  %cmp.not = icmp eq i32 %call, 0, !dbg !2099
  br i1 %cmp.not, label %if.end, label %return, !dbg !2099

if.end:                                           ; preds = %entry
    #dbg_value(ptr %pk, !2101, !DIExpression(), !2064)
  %add.ptr = getelementptr inbounds nuw i8, ptr %pk, i32 123240, !dbg !2102
    #dbg_value(ptr %add.ptr, !2103, !DIExpression(), !2064)
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %pk, i32 148200, !dbg !2104
    #dbg_value(ptr %add.ptr2, !2105, !DIExpression(), !2064)
  %call4 = call i32 @shake256(ptr noundef nonnull %tmp, i32 noundef 32, ptr noundef %m, i32 noundef %mlen) #8, !dbg !2106
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %tmp, i32 32, !dbg !2107
  %add.ptr8 = getelementptr inbounds nuw i8, ptr %sig, i32 430, !dbg !2108
  %call9 = call ptr @memcpy(ptr noundef nonnull %add.ptr6, ptr noundef nonnull %add.ptr8, i32 noundef 24) #8, !dbg !2109
  %call12 = call i32 @shake256(ptr noundef nonnull %tEnc, i32 noundef 39, ptr noundef nonnull %tmp, i32 noundef 56) #8, !dbg !2110
  call fastcc void @decode(ptr noundef nonnull %tEnc, ptr noundef nonnull %t, i32 noundef 78) #6, !dbg !2111
  call fastcc void @decode(ptr noundef %sig, ptr noundef nonnull %s, i32 noundef 860) #6, !dbg !2112
  call fastcc void @eval_public_map(ptr noundef %p, ptr noundef nonnull %s, ptr noundef nonnull %pk, ptr noundef nonnull %add.ptr, ptr noundef nonnull %add.ptr2, ptr noundef nonnull %y) #6, !dbg !2113
  %call20 = call i32 @memcmp(ptr noundef nonnull %y, ptr noundef nonnull %t, i32 noundef 78) #8, !dbg !2114
  %cmp21 = icmp ne i32 %call20, 0, !dbg !2116
  %. = zext i1 %cmp21 to i32, !dbg !2064
  br label %return, !dbg !2064

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ %., %if.end ], !dbg !2064
  ret i32 %retval.0, !dbg !2117
}

; Function Attrs: nounwind
define dso_local i32 @pqmayo_MAYO_1_ref_mayo_expand_pk(ptr noundef %p, ptr noundef %cpk, ptr noundef %pk) local_unnamed_addr #0 !dbg !2118 {
entry:
    #dbg_value(ptr %p, !2121, !DIExpression(), !2122)
    #dbg_value(ptr %cpk, !2123, !DIExpression(), !2122)
    #dbg_value(ptr %pk, !2124, !DIExpression(), !2122)
  call fastcc void @expand_P1_P2(ptr noundef %p, ptr noundef %pk, ptr noundef %cpk) #6, !dbg !2125
  %add.ptr = getelementptr inbounds nuw i8, ptr %cpk, i32 16, !dbg !2126
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %pk, i32 148200, !dbg !2127
  call fastcc void @unpack_m_vecs(ptr noundef nonnull %add.ptr, ptr noundef nonnull %add.ptr2, i32 noundef 36, i32 noundef 78) #6, !dbg !2128
  ret i32 0, !dbg !2129
}

; Function Attrs: nounwind
define internal fastcc void @eval_public_map(ptr noundef %p, ptr noundef %s, ptr noundef %P1, ptr noundef %P2, ptr noundef %P3, ptr noundef %eval) unnamed_addr #0 !dbg !2130 {
entry:
  %SPS = alloca [500 x i64], align 8
  %zero = alloca [78 x i8], align 1
    #dbg_value(ptr %p, !2133, !DIExpression(), !2134)
    #dbg_value(ptr %s, !2135, !DIExpression(), !2134)
    #dbg_value(ptr %P1, !2136, !DIExpression(), !2134)
    #dbg_value(ptr %P2, !2137, !DIExpression(), !2134)
    #dbg_value(ptr %P3, !2138, !DIExpression(), !2134)
    #dbg_value(ptr %eval, !2139, !DIExpression(), !2134)
    #dbg_declare(ptr %SPS, !2140, !DIExpression(), !2144)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(4000) %SPS, i8 0, i32 4000, i1 false), !dbg !2144
  call fastcc void @m_calculate_PS_SPS(ptr noundef %p, ptr noundef %P1, ptr noundef %P2, ptr noundef %P3, ptr noundef %s, ptr noundef nonnull %SPS) #6, !dbg !2145
    #dbg_declare(ptr %zero, !2146, !DIExpression(), !2147)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(78) %zero, i8 0, i32 78, i1 false), !dbg !2147
  call fastcc void @compute_rhs(ptr noundef %p, ptr noundef nonnull %SPS, ptr noundef nonnull %zero, ptr noundef %eval) #6, !dbg !2148
  ret void, !dbg !2149
}

; Function Attrs: nounwind
define internal fastcc void @m_calculate_PS_SPS(ptr noundef %p, ptr noundef %P1, ptr noundef %P2, ptr noundef %P3, ptr noundef %s, ptr noundef %SPS) unnamed_addr #0 !dbg !2150 {
entry:
  %PS = alloca [4300 x i64], align 8
    #dbg_value(ptr %p, !2153, !DIExpression(), !2154)
    #dbg_value(ptr %P1, !2155, !DIExpression(), !2154)
    #dbg_value(ptr %P2, !2156, !DIExpression(), !2154)
    #dbg_value(ptr %P3, !2157, !DIExpression(), !2154)
    #dbg_value(ptr %s, !2158, !DIExpression(), !2154)
    #dbg_value(ptr %SPS, !2159, !DIExpression(), !2154)
    #dbg_declare(ptr %PS, !2160, !DIExpression(), !2164)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(34400) %PS, i8 0, i32 34400, i1 false), !dbg !2164
  call fastcc void @mayo_generic_m_calculate_PS(ptr noundef %P1, ptr noundef %P2, ptr noundef %P3, ptr noundef %s, i32 noundef 78, i32 noundef 78, i32 noundef 8, i32 noundef 10, ptr noundef nonnull %PS) #6, !dbg !2165
  call fastcc void @mayo_generic_m_calculate_SPS(ptr noundef nonnull %PS, ptr noundef %s, i32 noundef 78, i32 noundef 10, i32 noundef 86, ptr noundef %SPS) #6, !dbg !2166
  ret void, !dbg !2167
}

; Function Attrs: nounwind
define internal fastcc void @mayo_generic_m_calculate_PS(ptr noundef %P1, ptr noundef %P2, ptr noundef %P3, ptr noundef %S, i32 noundef %m, i32 noundef %v, i32 noundef %o, i32 noundef %k, ptr noundef %PS) unnamed_addr #0 !dbg !2168 {
entry:
  %accumulator = alloca [68800 x i64], align 8
    #dbg_value(ptr %P1, !2171, !DIExpression(), !2172)
    #dbg_value(ptr %P2, !2173, !DIExpression(), !2172)
    #dbg_value(ptr %P3, !2174, !DIExpression(), !2172)
    #dbg_value(ptr %S, !2175, !DIExpression(), !2172)
    #dbg_value(i32 %m, !2176, !DIExpression(), !2172)
    #dbg_value(i32 %v, !2177, !DIExpression(), !2172)
    #dbg_value(i32 %o, !2178, !DIExpression(), !2172)
    #dbg_value(i32 %k, !2179, !DIExpression(), !2172)
    #dbg_value(ptr %PS, !2180, !DIExpression(), !2172)
  %add = add i32 %o, %v, !dbg !2181
    #dbg_value(i32 %add, !2182, !DIExpression(), !2172)
  %add1 = add nsw i32 %m, 15, !dbg !2183
  %div = sdiv i32 %add1, 16, !dbg !2184
    #dbg_value(i32 %div, !2185, !DIExpression(), !2172)
    #dbg_declare(ptr %accumulator, !2186, !DIExpression(), !2190)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(550400) %accumulator, i8 0, i32 550400, i1 false), !dbg !2190
    #dbg_value(i32 0, !2191, !DIExpression(), !2172)
    #dbg_value(i32 0, !2192, !DIExpression(), !2194)
  %smax = call i32 @llvm.smax.i32(i32 %k, i32 0), !dbg !2195
  %smax3 = call i32 @llvm.smax.i32(i32 %o, i32 0), !dbg !2195
  %smax5 = call i32 @llvm.smax.i32(i32 %v, i32 0), !dbg !2195
  br label %for.cond, !dbg !2195

for.cond:                                         ; preds = %for.inc52, %entry
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc52 ], [ %v, %entry ], !dbg !2196
  %P1_used.0 = phi i32 [ 0, %entry ], [ %P1_used.1.lcssa, %for.inc52 ], !dbg !2196
  %row.0 = phi i32 [ 0, %entry ], [ %inc53, %for.inc52 ], !dbg !2197
    #dbg_value(i32 %row.0, !2192, !DIExpression(), !2194)
    #dbg_value(i32 %P1_used.0, !2191, !DIExpression(), !2172)
  %exitcond6 = icmp ne i32 %row.0, %smax5, !dbg !2198
  br i1 %exitcond6, label %for.cond2.preheader, label %for.cond56.preheader, !dbg !2200

for.cond2.preheader:                              ; preds = %for.cond
  %0 = add i32 %P1_used.0, %indvars.iv, !dbg !2201
  br label %for.cond2, !dbg !2201

for.cond56.preheader:                             ; preds = %for.cond
  %smax8 = call i32 @llvm.smax.i32(i32 %v, i32 %add), !dbg !2204
  br label %for.cond56, !dbg !2204

for.cond2:                                        ; preds = %for.cond2.preheader, %for.inc17
  %P1_used.1 = phi i32 [ %inc16, %for.inc17 ], [ %P1_used.0, %for.cond2.preheader ], !dbg !2172
  %j.0 = phi i32 [ %inc18, %for.inc17 ], [ %row.0, %for.cond2.preheader ], !dbg !2206
    #dbg_value(i32 %j.0, !2207, !DIExpression(), !2208)
    #dbg_value(i32 %P1_used.1, !2191, !DIExpression(), !2172)
  %exitcond1 = icmp ne i32 %P1_used.1, %0, !dbg !2209
  br i1 %exitcond1, label %for.cond5.preheader, label %for.cond21.preheader, !dbg !2201

for.cond21.preheader:                             ; preds = %for.cond2
  %P1_used.1.lcssa = phi i32 [ %P1_used.1, %for.cond2 ], !dbg !2172
  br label %for.cond21, !dbg !2211

for.cond5.preheader:                              ; preds = %for.cond2
  br label %for.cond5, !dbg !2213

for.cond5:                                        ; preds = %for.cond5.preheader, %for.body7
  %col.0 = phi i32 [ %inc, %for.body7 ], [ 0, %for.cond5.preheader ], !dbg !2216
    #dbg_value(i32 %col.0, !2217, !DIExpression(), !2218)
  %exitcond = icmp ne i32 %col.0, %smax, !dbg !2219
  br i1 %exitcond, label %for.body7, label %for.inc17, !dbg !2213

for.body7:                                        ; preds = %for.cond5
  %mul = mul nsw i32 %P1_used.1, %div, !dbg !2221
  %add.ptr = getelementptr inbounds i64, ptr %P1, i32 %mul, !dbg !2223
  %mul8 = mul nsw i32 %row.0, %k, !dbg !2224
  %add9 = add nsw i32 %mul8, %col.0, !dbg !2225
  %mul10 = shl nsw i32 %add9, 4, !dbg !2226
  %mul11 = mul nsw i32 %col.0, %add, !dbg !2227
  %1 = getelementptr i8, ptr %S, i32 %mul11, !dbg !2228
  %arrayidx = getelementptr i8, ptr %1, i32 %j.0, !dbg !2228
  %2 = load i8, ptr %arrayidx, align 1, !dbg !2228
  %conv = zext i8 %2 to i32, !dbg !2228
  %add13 = add nsw i32 %mul10, %conv, !dbg !2229
  %mul14 = mul nsw i32 %add13, %div, !dbg !2230
  %add.ptr15 = getelementptr inbounds i64, ptr %accumulator, i32 %mul14, !dbg !2231
  call fastcc void @m_vec_add(i32 noundef %div, ptr noundef %add.ptr, ptr noundef nonnull %add.ptr15) #6, !dbg !2232
  %inc = add nuw i32 %col.0, 1, !dbg !2233
    #dbg_value(i32 %inc, !2217, !DIExpression(), !2218)
  br label %for.cond5, !dbg !2234, !llvm.loop !2235

for.inc17:                                        ; preds = %for.cond5
    #dbg_value(i32 %P1_used.1, !2191, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2172)
  %inc16 = add i32 %P1_used.1, 1, !dbg !2237
    #dbg_value(i32 %inc16, !2191, !DIExpression(), !2172)
  %inc18 = add nuw nsw i32 %j.0, 1, !dbg !2238
    #dbg_value(i32 %inc18, !2207, !DIExpression(), !2208)
  br label %for.cond2, !dbg !2239, !llvm.loop !2240

for.cond21:                                       ; preds = %for.cond21.preheader, %for.inc49
  %j20.0 = phi i32 [ %inc50, %for.inc49 ], [ 0, %for.cond21.preheader ], !dbg !2242
    #dbg_value(i32 %j20.0, !2243, !DIExpression(), !2244)
  %exitcond4 = icmp ne i32 %j20.0, %smax3, !dbg !2245
  br i1 %exitcond4, label %for.cond26.preheader, label %for.inc52, !dbg !2211

for.cond26.preheader:                             ; preds = %for.cond21
  br label %for.cond26, !dbg !2247

for.cond26:                                       ; preds = %for.cond26.preheader, %for.body29
  %col25.0 = phi i32 [ %inc47, %for.body29 ], [ 0, %for.cond26.preheader ], !dbg !2250
    #dbg_value(i32 %col25.0, !2251, !DIExpression(), !2252)
  %exitcond2 = icmp ne i32 %col25.0, %smax, !dbg !2253
  br i1 %exitcond2, label %for.body29, label %for.inc49, !dbg !2247

for.body29:                                       ; preds = %for.cond26
  %mul30 = mul nsw i32 %row.0, %o, !dbg !2255
  %add31 = add nsw i32 %mul30, %j20.0, !dbg !2257
  %mul32 = mul nsw i32 %add31, %div, !dbg !2258
  %add.ptr33 = getelementptr inbounds i64, ptr %P2, i32 %mul32, !dbg !2259
  %mul35 = mul nsw i32 %row.0, %k, !dbg !2260
  %add36 = add nsw i32 %mul35, %col25.0, !dbg !2261
  %mul37 = shl nsw i32 %add36, 4, !dbg !2262
  %mul38 = mul nsw i32 %col25.0, %add, !dbg !2263
  %3 = getelementptr i8, ptr %S, i32 %mul38, !dbg !2264
  %4 = getelementptr i8, ptr %3, i32 %j20.0, !dbg !2264
  %arrayidx41 = getelementptr i8, ptr %4, i32 %v, !dbg !2264
  %5 = load i8, ptr %arrayidx41, align 1, !dbg !2264
  %conv42 = zext i8 %5 to i32, !dbg !2264
  %add43 = add nsw i32 %mul37, %conv42, !dbg !2265
  %mul44 = mul nsw i32 %add43, %div, !dbg !2266
  %add.ptr45 = getelementptr inbounds i64, ptr %accumulator, i32 %mul44, !dbg !2267
  call fastcc void @m_vec_add(i32 noundef %div, ptr noundef %add.ptr33, ptr noundef nonnull %add.ptr45) #6, !dbg !2268
  %inc47 = add nuw i32 %col25.0, 1, !dbg !2269
    #dbg_value(i32 %inc47, !2251, !DIExpression(), !2252)
  br label %for.cond26, !dbg !2270, !llvm.loop !2271

for.inc49:                                        ; preds = %for.cond26
  %inc50 = add nuw i32 %j20.0, 1, !dbg !2273
    #dbg_value(i32 %inc50, !2243, !DIExpression(), !2244)
  br label %for.cond21, !dbg !2274, !llvm.loop !2275

for.inc52:                                        ; preds = %for.cond21
  %inc53 = add nuw i32 %row.0, 1, !dbg !2277
    #dbg_value(i32 %inc53, !2192, !DIExpression(), !2194)
  %indvars.iv.next = add i32 %indvars.iv, -1, !dbg !2278
  br label %for.cond, !dbg !2278, !llvm.loop !2279

for.cond56:                                       ; preds = %for.cond56.preheader, %for.inc90
  %P3_used.0 = phi i32 [ %P3_used.1.lcssa, %for.inc90 ], [ 0, %for.cond56.preheader ], !dbg !2281
  %row55.0 = phi i32 [ %inc91, %for.inc90 ], [ %v, %for.cond56.preheader ], !dbg !2282
    #dbg_value(i32 %row55.0, !2283, !DIExpression(), !2284)
    #dbg_value(i32 %P3_used.0, !2285, !DIExpression(), !2172)
  %exitcond9 = icmp ne i32 %row55.0, %smax8, !dbg !2286
  br i1 %exitcond9, label %for.cond61.preheader, label %while.cond.preheader, !dbg !2204

for.cond61.preheader:                             ; preds = %for.cond56
  br label %for.cond61, !dbg !2288

while.cond.preheader:                             ; preds = %for.cond56
  %6 = mul i32 %k, %add, !dbg !2291
  %smax10 = call i32 @llvm.smax.i32(i32 %6, i32 0), !dbg !2291
  br label %while.cond, !dbg !2291

for.cond61:                                       ; preds = %for.cond61.preheader, %for.inc87
  %P3_used.1 = phi i32 [ %inc86, %for.inc87 ], [ %P3_used.0, %for.cond61.preheader ], !dbg !2172
  %j60.0 = phi i32 [ %inc88, %for.inc87 ], [ %row55.0, %for.cond61.preheader ], !dbg !2292
    #dbg_value(i32 %j60.0, !2293, !DIExpression(), !2294)
    #dbg_value(i32 %P3_used.1, !2285, !DIExpression(), !2172)
  %cmp62 = icmp slt i32 %j60.0, %add, !dbg !2295
  br i1 %cmp62, label %for.cond66.preheader, label %for.inc90, !dbg !2288

for.cond66.preheader:                             ; preds = %for.cond61
  br label %for.cond66, !dbg !2297

for.cond66:                                       ; preds = %for.cond66.preheader, %for.body69
  %col65.0 = phi i32 [ %inc84, %for.body69 ], [ 0, %for.cond66.preheader ], !dbg !2300
    #dbg_value(i32 %col65.0, !2301, !DIExpression(), !2302)
  %exitcond7 = icmp ne i32 %col65.0, %smax, !dbg !2303
  br i1 %exitcond7, label %for.body69, label %for.inc87, !dbg !2297

for.body69:                                       ; preds = %for.cond66
  %mul70 = mul nsw i32 %P3_used.1, %div, !dbg !2305
  %add.ptr71 = getelementptr inbounds i64, ptr %P3, i32 %mul70, !dbg !2307
  %mul73 = mul nsw i32 %row55.0, %k, !dbg !2308
  %add74 = add nsw i32 %mul73, %col65.0, !dbg !2309
  %mul75 = shl nsw i32 %add74, 4, !dbg !2310
  %mul76 = mul nsw i32 %col65.0, %add, !dbg !2311
  %7 = getelementptr i8, ptr %S, i32 %mul76, !dbg !2312
  %arrayidx78 = getelementptr i8, ptr %7, i32 %j60.0, !dbg !2312
  %8 = load i8, ptr %arrayidx78, align 1, !dbg !2312
  %conv79 = zext i8 %8 to i32, !dbg !2312
  %add80 = add nsw i32 %mul75, %conv79, !dbg !2313
  %mul81 = mul nsw i32 %add80, %div, !dbg !2314
  %add.ptr82 = getelementptr inbounds i64, ptr %accumulator, i32 %mul81, !dbg !2315
  call fastcc void @m_vec_add(i32 noundef %div, ptr noundef %add.ptr71, ptr noundef nonnull %add.ptr82) #6, !dbg !2316
  %inc84 = add nuw i32 %col65.0, 1, !dbg !2317
    #dbg_value(i32 %inc84, !2301, !DIExpression(), !2302)
  br label %for.cond66, !dbg !2318, !llvm.loop !2319

for.inc87:                                        ; preds = %for.cond66
    #dbg_value(i32 %P3_used.1, !2285, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2172)
  %inc86 = add nsw i32 %P3_used.1, 1, !dbg !2321
    #dbg_value(i32 %inc86, !2285, !DIExpression(), !2172)
  %inc88 = add nsw i32 %j60.0, 1, !dbg !2322
    #dbg_value(i32 %inc88, !2293, !DIExpression(), !2294)
  br label %for.cond61, !dbg !2323, !llvm.loop !2324

for.inc90:                                        ; preds = %for.cond61
  %P3_used.1.lcssa = phi i32 [ %P3_used.1, %for.cond61 ], !dbg !2172
  %inc91 = add i32 %row55.0, 1, !dbg !2326
    #dbg_value(i32 %inc91, !2283, !DIExpression(), !2284)
  br label %for.cond56, !dbg !2327, !llvm.loop !2328

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %i.0 = phi i32 [ %inc102, %while.body ], [ 0, %while.cond.preheader ], !dbg !2172
    #dbg_value(i32 %i.0, !2330, !DIExpression(), !2172)
  %exitcond11 = icmp ne i32 %i.0, %smax10, !dbg !2331
  br i1 %exitcond11, label %while.body, label %while.end, !dbg !2291

while.body:                                       ; preds = %while.cond
  %mul97 = shl nsw i32 %i.0, 4, !dbg !2332
  %mul98 = mul nsw i32 %mul97, %div, !dbg !2334
  %add.ptr99 = getelementptr inbounds i64, ptr %accumulator, i32 %mul98, !dbg !2335
  %mul100 = mul nsw i32 %i.0, %div, !dbg !2336
  %add.ptr101 = getelementptr inbounds i64, ptr %PS, i32 %mul100, !dbg !2337
  call fastcc void @m_vec_multiply_bins(i32 noundef %div, ptr noundef nonnull %add.ptr99, ptr noundef %add.ptr101) #6, !dbg !2338
  %inc102 = add nuw i32 %i.0, 1, !dbg !2339
    #dbg_value(i32 %inc102, !2330, !DIExpression(), !2172)
  br label %while.cond, !dbg !2291, !llvm.loop !2340

while.end:                                        ; preds = %while.cond
  ret void, !dbg !2342
}

; Function Attrs: nounwind
define internal fastcc void @mayo_generic_m_calculate_SPS(ptr noundef %PS, ptr noundef %S, i32 noundef %m, i32 noundef %k, i32 noundef %n, ptr noundef %SPS) unnamed_addr #0 !dbg !2343 {
entry:
  %accumulator = alloca [8000 x i64], align 8
    #dbg_value(ptr %PS, !2346, !DIExpression(), !2347)
    #dbg_value(ptr %S, !2348, !DIExpression(), !2347)
    #dbg_value(i32 %m, !2349, !DIExpression(), !2347)
    #dbg_value(i32 %k, !2350, !DIExpression(), !2347)
    #dbg_value(i32 %n, !2351, !DIExpression(), !2347)
    #dbg_value(ptr %SPS, !2352, !DIExpression(), !2347)
    #dbg_declare(ptr %accumulator, !2353, !DIExpression(), !2357)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(64000) %accumulator, i8 0, i32 64000, i1 false), !dbg !2357
  %add = add nsw i32 %m, 15, !dbg !2358
  %div = sdiv i32 %add, 16, !dbg !2359
    #dbg_value(i32 %div, !2360, !DIExpression(), !2347)
    #dbg_value(i32 0, !2361, !DIExpression(), !2363)
  %smax = call i32 @llvm.smax.i32(i32 %n, i32 0), !dbg !2364
  %smax2 = call i32 @llvm.smax.i32(i32 %k, i32 0), !dbg !2364
  br label %for.cond, !dbg !2364

for.cond:                                         ; preds = %for.inc20, %entry
  %row.0 = phi i32 [ 0, %entry ], [ %inc21, %for.inc20 ], !dbg !2365
    #dbg_value(i32 %row.0, !2361, !DIExpression(), !2363)
  %exitcond3 = icmp ne i32 %row.0, %smax2, !dbg !2366
  br i1 %exitcond3, label %for.cond1.preheader, label %while.cond.preheader, !dbg !2368

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !2369

while.cond.preheader:                             ; preds = %for.cond
  %0 = mul i32 %k, %k, !dbg !2372
  br label %while.cond, !dbg !2372

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc18
  %j.0 = phi i32 [ %inc, %for.inc18 ], [ 0, %for.cond1.preheader ], !dbg !2373
    #dbg_value(i32 %j.0, !2374, !DIExpression(), !2375)
  %exitcond1 = icmp ne i32 %j.0, %smax, !dbg !2376
  br i1 %exitcond1, label %for.cond4.preheader, label %for.inc20, !dbg !2369

for.cond4.preheader:                              ; preds = %for.cond1
  br label %for.cond4, !dbg !2378

for.cond4:                                        ; preds = %for.cond4.preheader, %for.body6
  %col.0 = phi i32 [ %add17, %for.body6 ], [ 0, %for.cond4.preheader ], !dbg !2381
    #dbg_value(i32 %col.0, !2382, !DIExpression(), !2383)
  %exitcond = icmp ne i32 %col.0, %k, !dbg !2384
  br i1 %exitcond, label %for.body6, label %for.inc18, !dbg !2378

for.body6:                                        ; preds = %for.cond4
  %mul = mul nsw i32 %j.0, %k, !dbg !2386
  %add7 = add nsw i32 %mul, %col.0, !dbg !2388
  %mul8 = mul nsw i32 %add7, %div, !dbg !2389
  %add.ptr = getelementptr inbounds i64, ptr %PS, i32 %mul8, !dbg !2390
  %mul9 = mul nsw i32 %row.0, %k, !dbg !2391
  %add10 = add nsw i32 %mul9, %col.0, !dbg !2392
  %mul11 = shl nsw i32 %add10, 4, !dbg !2393
  %mul12 = mul nsw i32 %row.0, %n, !dbg !2394
  %1 = getelementptr i8, ptr %S, i32 %mul12, !dbg !2395
  %arrayidx = getelementptr i8, ptr %1, i32 %j.0, !dbg !2395
  %2 = load i8, ptr %arrayidx, align 1, !dbg !2395
  %conv = zext i8 %2 to i32, !dbg !2395
  %add14 = add nsw i32 %mul11, %conv, !dbg !2396
  %mul15 = mul nsw i32 %add14, %div, !dbg !2397
  %add.ptr16 = getelementptr inbounds i64, ptr %accumulator, i32 %mul15, !dbg !2398
  call fastcc void @m_vec_add(i32 noundef %div, ptr noundef %add.ptr, ptr noundef nonnull %add.ptr16) #6, !dbg !2399
  %add17 = add nuw i32 %col.0, 1, !dbg !2400
    #dbg_value(i32 %add17, !2382, !DIExpression(), !2383)
  br label %for.cond4, !dbg !2401, !llvm.loop !2402

for.inc18:                                        ; preds = %for.cond4
  %inc = add nuw i32 %j.0, 1, !dbg !2404
    #dbg_value(i32 %inc, !2374, !DIExpression(), !2375)
  br label %for.cond1, !dbg !2405, !llvm.loop !2406

for.inc20:                                        ; preds = %for.cond1
  %inc21 = add nuw i32 %row.0, 1, !dbg !2408
    #dbg_value(i32 %inc21, !2361, !DIExpression(), !2363)
  br label %for.cond, !dbg !2409, !llvm.loop !2410

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %i.0 = phi i32 [ %inc32, %while.body ], [ 0, %while.cond.preheader ], !dbg !2347
    #dbg_value(i32 %i.0, !2412, !DIExpression(), !2347)
  %exitcond4 = icmp ne i32 %i.0, %0, !dbg !2413
  br i1 %exitcond4, label %while.body, label %while.end, !dbg !2372

while.body:                                       ; preds = %while.cond
  %mul27 = shl nsw i32 %i.0, 4, !dbg !2414
  %mul28 = mul nsw i32 %mul27, %div, !dbg !2416
  %add.ptr29 = getelementptr inbounds i64, ptr %accumulator, i32 %mul28, !dbg !2417
  %mul30 = mul nsw i32 %i.0, %div, !dbg !2418
  %add.ptr31 = getelementptr inbounds i64, ptr %SPS, i32 %mul30, !dbg !2419
  call fastcc void @m_vec_multiply_bins(i32 noundef %div, ptr noundef nonnull %add.ptr29, ptr noundef %add.ptr31) #6, !dbg !2420
  %inc32 = add nuw i32 %i.0, 1, !dbg !2421
    #dbg_value(i32 %inc32, !2412, !DIExpression(), !2347)
  br label %while.cond, !dbg !2372, !llvm.loop !2422

while.end:                                        ; preds = %while.cond
  ret void, !dbg !2424
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_add(i32 noundef %m_vec_limbs, ptr noundef %in, ptr noundef %acc) unnamed_addr #0 !dbg !2425 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2428, !DIExpression(), !2429)
    #dbg_value(ptr %in, !2430, !DIExpression(), !2429)
    #dbg_value(ptr %acc, !2431, !DIExpression(), !2429)
    #dbg_value(i32 0, !2432, !DIExpression(), !2434)
  br label %for.cond, !dbg !2435

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2436
    #dbg_value(i32 %i.0, !2432, !DIExpression(), !2434)
  %exitcond = icmp ne i32 %i.0, 5, !dbg !2437
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2439

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2440
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2440
  %arrayidx1 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !2442
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !2443
  %xor = xor i64 %1, %0, !dbg !2443
  store i64 %xor, ptr %arrayidx1, align 8, !dbg !2443
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2444
    #dbg_value(i32 %inc, !2432, !DIExpression(), !2434)
  br label %for.cond, !dbg !2445, !llvm.loop !2446

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2448
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_multiply_bins(i32 noundef %m_vec_limbs, ptr noundef %bins, ptr noundef %out) unnamed_addr #0 !dbg !2449 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2452, !DIExpression(), !2453)
    #dbg_value(ptr %bins, !2454, !DIExpression(), !2453)
    #dbg_value(ptr %out, !2455, !DIExpression(), !2453)
  %add.ptr = getelementptr inbounds nuw i8, ptr %bins, i32 200, !dbg !2456
  %add.ptr1 = getelementptr inbounds nuw i8, ptr %bins, i32 400, !dbg !2457
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr, ptr noundef nonnull %add.ptr1) #6, !dbg !2458
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %bins, i32 440, !dbg !2459
  %add.ptr3 = getelementptr inbounds nuw i8, ptr %bins, i32 480, !dbg !2460
  call fastcc void @m_vec_mul_add_x(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr2, ptr noundef nonnull %add.ptr3) #6, !dbg !2461
  %add.ptr4 = getelementptr inbounds nuw i8, ptr %bins, i32 400, !dbg !2462
  %add.ptr5 = getelementptr inbounds nuw i8, ptr %bins, i32 280, !dbg !2463
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr4, ptr noundef nonnull %add.ptr5) #6, !dbg !2464
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %bins, i32 480, !dbg !2465
  %add.ptr7 = getelementptr inbounds nuw i8, ptr %bins, i32 240, !dbg !2466
  call fastcc void @m_vec_mul_add_x(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr6, ptr noundef nonnull %add.ptr7) #6, !dbg !2467
  %add.ptr8 = getelementptr inbounds nuw i8, ptr %bins, i32 280, !dbg !2468
  %add.ptr9 = getelementptr inbounds nuw i8, ptr %bins, i32 560, !dbg !2469
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr8, ptr noundef nonnull %add.ptr9) #6, !dbg !2470
  %add.ptr10 = getelementptr inbounds nuw i8, ptr %bins, i32 240, !dbg !2471
  %add.ptr11 = getelementptr inbounds nuw i8, ptr %bins, i32 120, !dbg !2472
  call fastcc void @m_vec_mul_add_x(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr10, ptr noundef nonnull %add.ptr11) #6, !dbg !2473
  %add.ptr12 = getelementptr inbounds nuw i8, ptr %bins, i32 560, !dbg !2474
  %add.ptr13 = getelementptr inbounds nuw i8, ptr %bins, i32 600, !dbg !2475
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr12, ptr noundef nonnull %add.ptr13) #6, !dbg !2476
  %add.ptr14 = getelementptr inbounds nuw i8, ptr %bins, i32 120, !dbg !2477
  %add.ptr15 = getelementptr inbounds nuw i8, ptr %bins, i32 320, !dbg !2478
  call fastcc void @m_vec_mul_add_x(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr14, ptr noundef nonnull %add.ptr15) #6, !dbg !2479
  %add.ptr16 = getelementptr inbounds nuw i8, ptr %bins, i32 600, !dbg !2480
  %add.ptr17 = getelementptr inbounds nuw i8, ptr %bins, i32 520, !dbg !2481
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr16, ptr noundef nonnull %add.ptr17) #6, !dbg !2482
  %add.ptr18 = getelementptr inbounds nuw i8, ptr %bins, i32 320, !dbg !2483
  %add.ptr19 = getelementptr inbounds nuw i8, ptr %bins, i32 160, !dbg !2484
  call fastcc void @m_vec_mul_add_x(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr18, ptr noundef nonnull %add.ptr19) #6, !dbg !2485
  %add.ptr20 = getelementptr inbounds nuw i8, ptr %bins, i32 520, !dbg !2486
  %add.ptr21 = getelementptr inbounds nuw i8, ptr %bins, i32 360, !dbg !2487
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr20, ptr noundef nonnull %add.ptr21) #6, !dbg !2488
  %add.ptr22 = getelementptr inbounds nuw i8, ptr %bins, i32 160, !dbg !2489
  %add.ptr23 = getelementptr inbounds nuw i8, ptr %bins, i32 80, !dbg !2490
  call fastcc void @m_vec_mul_add_x(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr22, ptr noundef nonnull %add.ptr23) #6, !dbg !2491
  %add.ptr24 = getelementptr inbounds nuw i8, ptr %bins, i32 360, !dbg !2492
  %add.ptr25 = getelementptr inbounds nuw i8, ptr %bins, i32 40, !dbg !2493
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr24, ptr noundef nonnull %add.ptr25) #6, !dbg !2494
  %add.ptr26 = getelementptr inbounds nuw i8, ptr %bins, i32 80, !dbg !2495
  %add.ptr27 = getelementptr inbounds nuw i8, ptr %bins, i32 40, !dbg !2496
  call fastcc void @m_vec_mul_add_x(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr26, ptr noundef nonnull %add.ptr27) #6, !dbg !2497
  %add.ptr28 = getelementptr inbounds nuw i8, ptr %bins, i32 40, !dbg !2498
  call fastcc void @m_vec_copy(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr28, ptr noundef %out) #6, !dbg !2499
  ret void, !dbg !2500
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_mul_add_x_inv(i32 noundef %m_vec_limbs, ptr noundef %in, ptr noundef %acc) unnamed_addr #0 !dbg !2501 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2502, !DIExpression(), !2503)
    #dbg_value(ptr %in, !2504, !DIExpression(), !2503)
    #dbg_value(ptr %acc, !2505, !DIExpression(), !2503)
    #dbg_value(i64 1229782938247303441, !2506, !DIExpression(), !2503)
    #dbg_value(i32 0, !2507, !DIExpression(), !2509)
  br label %for.cond, !dbg !2510

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2511
    #dbg_value(i32 %i.0, !2507, !DIExpression(), !2509)
  %exitcond = icmp ne i32 %i.0, 5, !dbg !2512
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2514

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2515
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2515
  %and = and i64 %0, 1229782938247303441, !dbg !2517
    #dbg_value(i64 %and, !2518, !DIExpression(), !2519)
  %xor = lshr i64 %0, 1, !dbg !2520
  %shr = and i64 %xor, 8608480567731124087, !dbg !2520
  %mul = mul nuw i64 %and, 9, !dbg !2521
  %xor2 = xor i64 %shr, %mul, !dbg !2522
  %arrayidx3 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !2523
  %1 = load i64, ptr %arrayidx3, align 8, !dbg !2524
  %xor4 = xor i64 %1, %xor2, !dbg !2524
  store i64 %xor4, ptr %arrayidx3, align 8, !dbg !2524
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2525
    #dbg_value(i32 %inc, !2507, !DIExpression(), !2509)
  br label %for.cond, !dbg !2526, !llvm.loop !2527

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2529
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_mul_add_x(i32 noundef %m_vec_limbs, ptr noundef %in, ptr noundef %acc) unnamed_addr #0 !dbg !2530 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2531, !DIExpression(), !2532)
    #dbg_value(ptr %in, !2533, !DIExpression(), !2532)
    #dbg_value(ptr %acc, !2534, !DIExpression(), !2532)
    #dbg_value(i64 -8608480567731124088, !2535, !DIExpression(), !2532)
    #dbg_value(i32 0, !2536, !DIExpression(), !2538)
  br label %for.cond, !dbg !2539

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2540
    #dbg_value(i32 %i.0, !2536, !DIExpression(), !2538)
  %exitcond = icmp ne i32 %i.0, 5, !dbg !2541
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2543

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2544
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2544
    #dbg_value(i64 %0, !2546, !DIExpression(DW_OP_constu, 9838263505978427528, DW_OP_and, DW_OP_stack_value), !2547)
  %xor = shl i64 %0, 1, !dbg !2548
  %shl = and i64 %xor, -1229782938247303442, !dbg !2548
  %and = lshr i64 %0, 3, !dbg !2549
  %shr = and i64 %and, 1229782938247303441, !dbg !2549
  %mul = mul nuw nsw i64 %shr, 3, !dbg !2550
  %xor2 = xor i64 %shl, %mul, !dbg !2551
  %arrayidx3 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !2552
  %1 = load i64, ptr %arrayidx3, align 8, !dbg !2553
  %xor4 = xor i64 %1, %xor2, !dbg !2553
  store i64 %xor4, ptr %arrayidx3, align 8, !dbg !2553
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2554
    #dbg_value(i32 %inc, !2536, !DIExpression(), !2538)
  br label %for.cond, !dbg !2555, !llvm.loop !2556

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2558
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_copy(i32 noundef %m_vec_limbs, ptr noundef %in, ptr noundef %out) unnamed_addr #0 !dbg !2559 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2560, !DIExpression(), !2561)
    #dbg_value(ptr %in, !2562, !DIExpression(), !2561)
    #dbg_value(ptr %out, !2563, !DIExpression(), !2561)
    #dbg_value(i32 0, !2564, !DIExpression(), !2566)
  br label %for.cond, !dbg !2567

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2568
    #dbg_value(i32 %i.0, !2564, !DIExpression(), !2566)
  %exitcond = icmp ne i32 %i.0, 5, !dbg !2569
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2571

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2572
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2572
  %arrayidx1 = getelementptr inbounds nuw i64, ptr %out, i32 %i.0, !dbg !2574
  store i64 %0, ptr %arrayidx1, align 8, !dbg !2575
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2576
    #dbg_value(i32 %inc, !2564, !DIExpression(), !2566)
  br label %for.cond, !dbg !2577, !llvm.loop !2578

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2580
}

; Function Attrs: nounwind
define dso_local void @pqmayo_MAYO_1_ref_m_upper(ptr noundef %p, ptr noundef %in, ptr noundef %out, i32 noundef %size) local_unnamed_addr #0 !dbg !2581 {
entry:
    #dbg_value(ptr %p, !2612, !DIExpression(), !2613)
    #dbg_value(ptr %in, !2614, !DIExpression(), !2613)
    #dbg_value(ptr %out, !2615, !DIExpression(), !2613)
    #dbg_value(i32 %size, !2616, !DIExpression(), !2613)
    #dbg_value(i32 5, !2617, !DIExpression(), !2613)
    #dbg_value(i32 0, !2618, !DIExpression(), !2613)
    #dbg_value(i32 0, !2619, !DIExpression(), !2621)
  %smax = call i32 @llvm.smax.i32(i32 %size, i32 0), !dbg !2622
  br label %for.cond, !dbg !2622

for.cond:                                         ; preds = %for.inc15, %entry
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc15 ], [ %size, %entry ], !dbg !2623
  %m_vecs_stored.0 = phi i32 [ 0, %entry ], [ %m_vecs_stored.1.lcssa, %for.inc15 ], !dbg !2623
  %r.0 = phi i32 [ 0, %entry ], [ %inc16, %for.inc15 ], !dbg !2624
    #dbg_value(i32 %r.0, !2619, !DIExpression(), !2621)
    #dbg_value(i32 %m_vecs_stored.0, !2618, !DIExpression(), !2613)
  %exitcond1 = icmp ne i32 %r.0, %smax, !dbg !2625
  br i1 %exitcond1, label %for.cond1.preheader, label %for.end17, !dbg !2627

for.cond1.preheader:                              ; preds = %for.cond
  %0 = add i32 %m_vecs_stored.0, %indvars.iv, !dbg !2628
  br label %for.cond1, !dbg !2628

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc
  %m_vecs_stored.1 = phi i32 [ %inc, %for.inc ], [ %m_vecs_stored.0, %for.cond1.preheader ], !dbg !2613
  %c.0 = phi i32 [ %inc14, %for.inc ], [ %r.0, %for.cond1.preheader ], !dbg !2631
    #dbg_value(i32 %c.0, !2632, !DIExpression(), !2633)
    #dbg_value(i32 %m_vecs_stored.1, !2618, !DIExpression(), !2613)
  %exitcond = icmp ne i32 %m_vecs_stored.1, %0, !dbg !2634
  br i1 %exitcond, label %for.body3, label %for.inc15, !dbg !2628

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %r.0, %size, !dbg !2636
  %add = add nsw i32 %mul, %c.0, !dbg !2638
  %add.ptr.idx = mul nsw i32 %add, 40, !dbg !2639
  %add.ptr = getelementptr inbounds i8, ptr %in, i32 %add.ptr.idx, !dbg !2639
  %add.ptr6.idx = mul nsw i32 %m_vecs_stored.1, 40, !dbg !2640
  %add.ptr6 = getelementptr inbounds i8, ptr %out, i32 %add.ptr6.idx, !dbg !2640
  call fastcc void @m_vec_copy.17(i32 noundef 5, ptr noundef %add.ptr, ptr noundef %add.ptr6) #6, !dbg !2641
  %cmp7.not = icmp eq i32 %r.0, %c.0, !dbg !2642
  br i1 %cmp7.not, label %for.inc, label %if.then, !dbg !2642

if.then:                                          ; preds = %for.body3
  %mul8 = mul nsw i32 %c.0, %size, !dbg !2644
  %add9 = add nsw i32 %mul8, %r.0, !dbg !2646
  %add.ptr11.idx = mul nsw i32 %add9, 40, !dbg !2647
  %add.ptr11 = getelementptr inbounds i8, ptr %in, i32 %add.ptr11.idx, !dbg !2647
  %add.ptr13.idx = mul nsw i32 %m_vecs_stored.1, 40, !dbg !2648
  %add.ptr13 = getelementptr inbounds i8, ptr %out, i32 %add.ptr13.idx, !dbg !2648
  call fastcc void @m_vec_add.18(i32 noundef 5, ptr noundef %add.ptr11, ptr noundef %add.ptr13) #6, !dbg !2649
  br label %for.inc, !dbg !2650

for.inc:                                          ; preds = %for.body3, %if.then
    #dbg_value(i32 %m_vecs_stored.1, !2618, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2613)
  %inc = add i32 %m_vecs_stored.1, 1, !dbg !2651
    #dbg_value(i32 %inc, !2618, !DIExpression(), !2613)
  %inc14 = add nuw nsw i32 %c.0, 1, !dbg !2652
    #dbg_value(i32 %inc14, !2632, !DIExpression(), !2633)
  br label %for.cond1, !dbg !2653, !llvm.loop !2654

for.inc15:                                        ; preds = %for.cond1
  %m_vecs_stored.1.lcssa = phi i32 [ %m_vecs_stored.1, %for.cond1 ], !dbg !2613
  %inc16 = add nuw i32 %r.0, 1, !dbg !2656
    #dbg_value(i32 %inc16, !2619, !DIExpression(), !2621)
  %indvars.iv.next = add i32 %indvars.iv, -1, !dbg !2657
  br label %for.cond, !dbg !2657, !llvm.loop !2658

for.end17:                                        ; preds = %for.cond
  ret void, !dbg !2660
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_copy.17(i32 noundef %m_vec_limbs, ptr noundef %in, ptr noundef %out) unnamed_addr #0 !dbg !2661 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2662, !DIExpression(), !2663)
    #dbg_value(ptr %in, !2664, !DIExpression(), !2663)
    #dbg_value(ptr %out, !2665, !DIExpression(), !2663)
    #dbg_value(i32 0, !2666, !DIExpression(), !2668)
  br label %for.cond, !dbg !2669

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2670
    #dbg_value(i32 %i.0, !2666, !DIExpression(), !2668)
  %exitcond = icmp ne i32 %i.0, 5, !dbg !2671
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2673

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2674
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2674
  %arrayidx1 = getelementptr inbounds nuw i64, ptr %out, i32 %i.0, !dbg !2676
  store i64 %0, ptr %arrayidx1, align 8, !dbg !2677
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2678
    #dbg_value(i32 %inc, !2666, !DIExpression(), !2668)
  br label %for.cond, !dbg !2679, !llvm.loop !2680

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2682
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_add.18(i32 noundef %m_vec_limbs, ptr noundef %in, ptr noundef %acc) unnamed_addr #0 !dbg !2683 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2684, !DIExpression(), !2685)
    #dbg_value(ptr %in, !2686, !DIExpression(), !2685)
    #dbg_value(ptr %acc, !2687, !DIExpression(), !2685)
    #dbg_value(i32 0, !2688, !DIExpression(), !2690)
  br label %for.cond, !dbg !2691

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2692
    #dbg_value(i32 %i.0, !2688, !DIExpression(), !2690)
  %exitcond = icmp ne i32 %i.0, 5, !dbg !2693
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2695

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2696
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2696
  %arrayidx1 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !2698
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !2699
  %xor = xor i64 %1, %0, !dbg !2699
  store i64 %xor, ptr %arrayidx1, align 8, !dbg !2699
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2700
    #dbg_value(i32 %inc, !2688, !DIExpression(), !2690)
  br label %for.cond, !dbg !2701, !llvm.loop !2702

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2704
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_1_ref_sample_solution(ptr noundef %p, ptr noundef %A, ptr noundef %y, ptr noundef %r, ptr noundef %x, i32 noundef %k, i32 noundef %o, i32 noundef %m, i32 noundef %A_cols) local_unnamed_addr #0 !dbg !2705 {
entry:
  %Ar = alloca [78 x i8], align 1
    #dbg_value(ptr %p, !2708, !DIExpression(), !2709)
    #dbg_value(ptr %A, !2710, !DIExpression(), !2709)
    #dbg_value(ptr %y, !2711, !DIExpression(), !2709)
    #dbg_value(ptr %r, !2712, !DIExpression(), !2709)
    #dbg_value(ptr %x, !2713, !DIExpression(), !2709)
    #dbg_value(i32 %k, !2714, !DIExpression(), !2709)
    #dbg_value(i32 %o, !2715, !DIExpression(), !2709)
    #dbg_value(i32 %m, !2716, !DIExpression(), !2709)
    #dbg_value(i32 %A_cols, !2717, !DIExpression(), !2709)
    #dbg_value(i32 0, !2718, !DIExpression(), !2720)
  %0 = mul nsw i32 %o, %k, !dbg !2721
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0), !dbg !2721
  br label %for.cond, !dbg !2721

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2722
    #dbg_value(i32 %i.0, !2718, !DIExpression(), !2720)
  %exitcond = icmp ne i32 %i.0, %smax, !dbg !2723
  br i1 %exitcond, label %for.body, label %for.cond3.preheader, !dbg !2725

for.cond3.preheader:                              ; preds = %for.cond
  %smax13 = call i32 @llvm.smax.i32(i32 %m, i32 0), !dbg !2726
  br label %for.cond3, !dbg !2726

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %r, i32 %i.0, !dbg !2728
  %1 = load i8, ptr %arrayidx, align 1, !dbg !2728
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %x, i32 %i.0, !dbg !2730
  store i8 %1, ptr %arrayidx1, align 1, !dbg !2731
  %inc = add nuw i32 %i.0, 1, !dbg !2732
    #dbg_value(i32 %inc, !2718, !DIExpression(), !2720)
  br label %for.cond, !dbg !2733, !llvm.loop !2734

for.cond3:                                        ; preds = %for.cond3.preheader, %for.body5
  %i2.0 = phi i32 [ %inc12, %for.body5 ], [ 0, %for.cond3.preheader ], !dbg !2736
    #dbg_value(i32 %i2.0, !2737, !DIExpression(), !2738)
  %exitcond14 = icmp ne i32 %i2.0, %smax13, !dbg !2739
  br i1 %exitcond14, label %for.body5, label %for.end13, !dbg !2726

for.body5:                                        ; preds = %for.cond3
  %mul6 = mul nsw i32 %k, %o, !dbg !2741
  %mul7 = mul nsw i32 %k, %o, !dbg !2743
  %add = add nsw i32 %mul7, 1, !dbg !2744
  %mul8 = mul nsw i32 %i2.0, %add, !dbg !2745
  %2 = getelementptr i8, ptr %A, i32 %mul6, !dbg !2746
  %arrayidx10 = getelementptr i8, ptr %2, i32 %mul8, !dbg !2746
  store i8 0, ptr %arrayidx10, align 1, !dbg !2747
  %inc12 = add nuw i32 %i2.0, 1, !dbg !2748
    #dbg_value(i32 %inc12, !2737, !DIExpression(), !2738)
  br label %for.cond3, !dbg !2749, !llvm.loop !2750

for.end13:                                        ; preds = %for.cond3
  %mul14 = mul nsw i32 %k, %o, !dbg !2752
  %add15 = add nsw i32 %mul14, 1, !dbg !2753
  call fastcc void @mat_mul.21(ptr noundef %A, ptr noundef %r, ptr noundef nonnull %Ar, i32 noundef %add15, i32 noundef %m, i32 noundef 1) #6, !dbg !2754
    #dbg_value(i32 0, !2755, !DIExpression(), !2757)
  br label %for.cond17, !dbg !2758

for.cond17:                                       ; preds = %for.body19, %for.end13
  %i16.0 = phi i32 [ 0, %for.end13 ], [ %inc29, %for.body19 ], !dbg !2759
    #dbg_value(i32 %i16.0, !2755, !DIExpression(), !2757)
  %exitcond15 = icmp ne i32 %i16.0, %smax13, !dbg !2760
  br i1 %exitcond15, label %for.body19, label %for.end30, !dbg !2762

for.body19:                                       ; preds = %for.cond17
  %arrayidx20 = getelementptr inbounds nuw i8, ptr %y, i32 %i16.0, !dbg !2763
  %3 = load i8, ptr %arrayidx20, align 1, !dbg !2763
  %arrayidx21 = getelementptr inbounds nuw [78 x i8], ptr %Ar, i32 0, i32 %i16.0, !dbg !2765
  %4 = load i8, ptr %arrayidx21, align 1, !dbg !2765
  %call = call fastcc zeroext i8 @sub_f(i8 noundef zeroext %3, i8 noundef zeroext %4) #6, !dbg !2766
  %mul22 = mul nsw i32 %k, %o, !dbg !2767
  %mul23 = mul nsw i32 %k, %o, !dbg !2768
  %add24 = add nsw i32 %mul23, 1, !dbg !2769
  %mul25 = mul nsw i32 %i16.0, %add24, !dbg !2770
  %5 = getelementptr i8, ptr %A, i32 %mul22, !dbg !2771
  %arrayidx27 = getelementptr i8, ptr %5, i32 %mul25, !dbg !2771
  store i8 %call, ptr %arrayidx27, align 1, !dbg !2772
  %inc29 = add nuw i32 %i16.0, 1, !dbg !2773
    #dbg_value(i32 %inc29, !2755, !DIExpression(), !2757)
  br label %for.cond17, !dbg !2774, !llvm.loop !2775

for.end30:                                        ; preds = %for.cond17
  %mul31 = mul nsw i32 %k, %o, !dbg !2777
  %add32 = add nsw i32 %mul31, 1, !dbg !2778
  call fastcc void @EF(ptr noundef %A, i32 noundef %m, i32 noundef %add32) #6, !dbg !2779
    #dbg_value(i8 0, !2780, !DIExpression(), !2709)
    #dbg_value(i32 0, !2781, !DIExpression(), !2783)
  %6 = add i32 %A_cols, -1, !dbg !2784
  %smax16 = call i32 @llvm.smax.i32(i32 %6, i32 0), !dbg !2784
  br label %for.cond34, !dbg !2784

for.cond34:                                       ; preds = %for.inc43, %for.end30
  %full_rank.0 = phi i8 [ 0, %for.end30 ], [ %or12, %for.inc43 ], !dbg !2709
  %i33.0 = phi i32 [ 0, %for.end30 ], [ %inc44, %for.inc43 ], !dbg !2785
    #dbg_value(i32 %i33.0, !2781, !DIExpression(), !2783)
    #dbg_value(i8 %full_rank.0, !2780, !DIExpression(), !2709)
  %exitcond17 = icmp ne i32 %i33.0, %smax16, !dbg !2786
  br i1 %exitcond17, label %for.inc43, label %for.end45, !dbg !2788

for.inc43:                                        ; preds = %for.cond34
    #dbg_value(!DIArgList(i8 poison, i8 poison), !2780, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2709)
  %sub37 = add nsw i32 %m, -1, !dbg !2789
  %mul38 = mul nsw i32 %sub37, %A_cols, !dbg !2791
  %7 = getelementptr i8, ptr %A, i32 %mul38, !dbg !2792
  %arrayidx40 = getelementptr i8, ptr %7, i32 %i33.0, !dbg !2792
  %8 = load i8, ptr %arrayidx40, align 1, !dbg !2792
    #dbg_value(!DIArgList(i8 %full_rank.0, i8 %8), !2780, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2709)
  %or12 = or i8 %full_rank.0, %8, !dbg !2793
    #dbg_value(i8 %or12, !2780, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2709)
    #dbg_value(i8 %or12, !2780, !DIExpression(), !2709)
  %inc44 = add nuw i32 %i33.0, 1, !dbg !2794
    #dbg_value(i32 %inc44, !2781, !DIExpression(), !2783)
  br label %for.cond34, !dbg !2795, !llvm.loop !2796

for.end45:                                        ; preds = %for.cond34
  %full_rank.0.lcssa = phi i8 [ %full_rank.0, %for.cond34 ], !dbg !2709
  %cmp47 = icmp eq i8 %full_rank.0.lcssa, 0, !dbg !2798
  br i1 %cmp47, label %return, label %for.cond50.preheader, !dbg !2798

for.cond50.preheader:                             ; preds = %for.end45
  br label %for.cond50, !dbg !2800

for.cond50.loopexit:                              ; preds = %for.cond63
  br label %for.cond50, !dbg !2800, !llvm.loop !2802

for.cond50:                                       ; preds = %for.cond50.preheader, %for.cond50.loopexit
  %row.0.in = phi i32 [ %row.0, %for.cond50.loopexit ], [ %m, %for.cond50.preheader ]
  %row.0 = add nsw i32 %row.0.in, -1, !dbg !2804
    #dbg_value(i32 %row.0, !2805, !DIExpression(), !2806)
  %cmp51 = icmp sgt i32 %row.0.in, 0, !dbg !2807
  br i1 %cmp51, label %for.body53, label %return.loopexit, !dbg !2800

for.body53:                                       ; preds = %for.cond50
    #dbg_value(i8 0, !2809, !DIExpression(), !2709)
  %sub54 = sub nsw i32 %m, %row.0, !dbg !2810
  %div = sdiv i32 32, %sub54, !dbg !2810
  %add55 = add nsw i32 %row.0, %div, !dbg !2810
  %mul56 = mul nsw i32 %k, %o, !dbg !2810
  %cmp57 = icmp slt i32 %add55, %mul56, !dbg !2810
  br i1 %cmp57, label %cond.true, label %cond.false, !dbg !2810

cond.true:                                        ; preds = %for.body53
  %sub59 = sub nsw i32 %m, %row.0, !dbg !2810
  %div60 = sdiv i32 32, %sub59, !dbg !2810
  %add61 = add nsw i32 %row.0, %div60, !dbg !2810
  br label %cond.end, !dbg !2810

cond.false:                                       ; preds = %for.body53
  %mul62 = mul nsw i32 %k, %o, !dbg !2810
  br label %cond.end, !dbg !2810

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add61, %cond.true ], [ %mul62, %cond.false ], !dbg !2810
    #dbg_value(i32 %cond, !2812, !DIExpression(), !2709)
    #dbg_value(i32 %row.0, !2813, !DIExpression(), !2815)
  br label %for.cond63, !dbg !2816

for.cond63:                                       ; preds = %for.inc229, %cond.end
  %finished.0 = phi i8 [ 0, %cond.end ], [ %or2273, %for.inc229 ], !dbg !2817
  %col.0 = phi i32 [ %row.0, %cond.end ], [ %inc230, %for.inc229 ], !dbg !2818
    #dbg_value(i32 %col.0, !2813, !DIExpression(), !2815)
    #dbg_value(i8 %finished.0, !2809, !DIExpression(), !2709)
  %cmp64.not = icmp sgt i32 %col.0, %cond, !dbg !2819
  br i1 %cmp64.not, label %for.cond50.loopexit, label %for.body66, !dbg !2821

for.body66:                                       ; preds = %for.cond63
  %mul67 = mul nsw i32 %row.0, %A_cols, !dbg !2822
  %9 = getelementptr i8, ptr %A, i32 %mul67, !dbg !2824
  %arrayidx69 = getelementptr i8, ptr %9, i32 %col.0, !dbg !2824
  %10 = load i8, ptr %arrayidx69, align 1, !dbg !2824
  %call70 = call fastcc zeroext i8 @ct_compare_8(i8 noundef zeroext %10, i8 noundef zeroext 0) #6, !dbg !2825
  %not = xor i8 %finished.0, -1, !dbg !2826
    #dbg_value(!DIArgList(i8 %call70, i8 %not), !2827, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value), !2709)
  %add76 = mul i32 %row.0.in, %A_cols, !dbg !2828
  %11 = getelementptr i8, ptr %A, i32 %add76, !dbg !2829
  %arrayidx78 = getelementptr i8, ptr %11, i32 -1, !dbg !2829
  %12 = load i8, ptr %arrayidx78, align 1, !dbg !2829
  %13 = and i8 %12, %not, !dbg !2830
  %and801 = and i8 %13, %call70, !dbg !2830
    #dbg_value(i8 %and801, !2831, !DIExpression(), !2832)
  %arrayidx83 = getelementptr inbounds i8, ptr %x, i32 %col.0, !dbg !2833
  %14 = load i8, ptr %arrayidx83, align 1, !dbg !2834
  %xor2 = xor i8 %14, %and801, !dbg !2834
  store i8 %xor2, ptr %arrayidx83, align 1, !dbg !2834
    #dbg_value(i32 0, !2835, !DIExpression(), !2837)
  br label %for.cond87, !dbg !2838

for.cond87:                                       ; preds = %for.body90, %for.body66
  %i86.0 = phi i32 [ 0, %for.body66 ], [ %add223, %for.body90 ], !dbg !2839
    #dbg_value(i32 %i86.0, !2835, !DIExpression(), !2837)
  %cmp88 = icmp slt i32 %i86.0, %row.0, !dbg !2840
  br i1 %cmp88, label %for.body90, label %for.inc229, !dbg !2842

for.body90:                                       ; preds = %for.cond87
  %mul91 = mul nsw i32 %i86.0, %A_cols, !dbg !2843
  %15 = getelementptr i8, ptr %A, i32 %mul91, !dbg !2845
  %arrayidx93 = getelementptr i8, ptr %15, i32 %col.0, !dbg !2845
  %16 = load i8, ptr %arrayidx93, align 1, !dbg !2845
  %conv94 = zext i8 %16 to i64, !dbg !2846
  %add95 = or disjoint i32 %i86.0, 1, !dbg !2847
  %mul96 = mul nsw i32 %add95, %A_cols, !dbg !2848
  %17 = getelementptr i8, ptr %A, i32 %mul96, !dbg !2849
  %arrayidx98 = getelementptr i8, ptr %17, i32 %col.0, !dbg !2849
  %18 = load i8, ptr %arrayidx98, align 1, !dbg !2849
  %conv99 = zext i8 %18 to i64, !dbg !2850
  %shl100 = shl nuw nsw i64 %conv99, 8, !dbg !2851
  %xor101 = or disjoint i64 %shl100, %conv94, !dbg !2852
  %add102 = or disjoint i32 %i86.0, 2, !dbg !2853
  %mul103 = mul nsw i32 %add102, %A_cols, !dbg !2854
  %19 = getelementptr i8, ptr %A, i32 %mul103, !dbg !2855
  %arrayidx105 = getelementptr i8, ptr %19, i32 %col.0, !dbg !2855
  %20 = load i8, ptr %arrayidx105, align 1, !dbg !2855
  %conv106 = zext i8 %20 to i64, !dbg !2856
  %shl107 = shl nuw nsw i64 %conv106, 16, !dbg !2857
  %xor108 = or disjoint i64 %xor101, %shl107, !dbg !2858
  %add109 = or disjoint i32 %i86.0, 3, !dbg !2859
  %mul110 = mul nsw i32 %add109, %A_cols, !dbg !2860
  %21 = getelementptr i8, ptr %A, i32 %mul110, !dbg !2861
  %arrayidx112 = getelementptr i8, ptr %21, i32 %col.0, !dbg !2861
  %22 = load i8, ptr %arrayidx112, align 1, !dbg !2861
  %conv113 = zext i8 %22 to i64, !dbg !2862
  %shl114 = shl nuw nsw i64 %conv113, 24, !dbg !2863
  %xor115 = or disjoint i64 %xor108, %shl114, !dbg !2864
  %add116 = or disjoint i32 %i86.0, 4, !dbg !2865
  %mul117 = mul nsw i32 %add116, %A_cols, !dbg !2866
  %23 = getelementptr i8, ptr %A, i32 %mul117, !dbg !2867
  %arrayidx119 = getelementptr i8, ptr %23, i32 %col.0, !dbg !2867
  %24 = load i8, ptr %arrayidx119, align 1, !dbg !2867
  %conv120 = zext i8 %24 to i64, !dbg !2868
  %shl121 = shl nuw nsw i64 %conv120, 32, !dbg !2869
  %xor122 = or disjoint i64 %xor115, %shl121, !dbg !2870
  %add123 = or disjoint i32 %i86.0, 5, !dbg !2871
  %mul124 = mul nsw i32 %add123, %A_cols, !dbg !2872
  %25 = getelementptr i8, ptr %A, i32 %mul124, !dbg !2873
  %arrayidx126 = getelementptr i8, ptr %25, i32 %col.0, !dbg !2873
  %26 = load i8, ptr %arrayidx126, align 1, !dbg !2873
  %conv127 = zext i8 %26 to i64, !dbg !2874
  %shl128 = shl nuw nsw i64 %conv127, 40, !dbg !2875
  %xor129 = xor i64 %xor122, %shl128, !dbg !2876
  %add130 = or disjoint i32 %i86.0, 6, !dbg !2877
  %mul131 = mul nsw i32 %add130, %A_cols, !dbg !2878
  %27 = getelementptr i8, ptr %A, i32 %mul131, !dbg !2879
  %arrayidx133 = getelementptr i8, ptr %27, i32 %col.0, !dbg !2879
  %28 = load i8, ptr %arrayidx133, align 1, !dbg !2879
  %conv134 = zext i8 %28 to i64, !dbg !2880
  %shl135 = shl nuw nsw i64 %conv134, 48, !dbg !2881
  %xor136 = xor i64 %xor129, %shl135, !dbg !2882
  %add137 = or disjoint i32 %i86.0, 7, !dbg !2883
  %mul138 = mul nsw i32 %add137, %A_cols, !dbg !2884
  %29 = getelementptr i8, ptr %A, i32 %mul138, !dbg !2885
  %arrayidx140 = getelementptr i8, ptr %29, i32 %col.0, !dbg !2885
  %30 = load i8, ptr %arrayidx140, align 1, !dbg !2885
  %conv141 = zext i8 %30 to i64, !dbg !2886
  %shl142 = shl nuw i64 %conv141, 56, !dbg !2887
  %xor143 = xor i64 %xor136, %shl142, !dbg !2888
    #dbg_value(i64 %xor143, !2889, !DIExpression(), !2890)
  %call144 = call fastcc i64 @mul_fx8(i8 noundef zeroext %and801, i64 noundef %xor143) #6, !dbg !2891
    #dbg_value(i64 %call144, !2889, !DIExpression(), !2890)
  %mul1464 = or disjoint i32 %i86.0, 1, !dbg !2892
  %add147 = mul i32 %mul1464, %A_cols, !dbg !2892
  %31 = getelementptr i8, ptr %A, i32 %add147, !dbg !2893
  %arrayidx149 = getelementptr i8, ptr %31, i32 -1, !dbg !2893
  %32 = load i8, ptr %arrayidx149, align 1, !dbg !2894
  %33 = trunc i64 %call144 to i8, !dbg !2894
  %34 = and i8 %33, 15, !dbg !2894
  %conv152 = xor i8 %34, %32, !dbg !2894
  store i8 %conv152, ptr %arrayidx149, align 1, !dbg !2894
  %shr = lshr i64 %call144, 8, !dbg !2895
  %mul1555 = or disjoint i32 %i86.0, 2, !dbg !2896
  %add156 = mul i32 %mul1555, %A_cols, !dbg !2896
  %35 = getelementptr i8, ptr %A, i32 %add156, !dbg !2897
  %arrayidx158 = getelementptr i8, ptr %35, i32 -1, !dbg !2897
  %36 = load i8, ptr %arrayidx158, align 1, !dbg !2898
  %37 = trunc i64 %shr to i8, !dbg !2898
  %38 = and i8 %37, 15, !dbg !2898
  %conv161 = xor i8 %38, %36, !dbg !2898
  store i8 %conv161, ptr %arrayidx158, align 1, !dbg !2898
  %shr162 = lshr i64 %call144, 16, !dbg !2899
  %mul1656 = or disjoint i32 %i86.0, 3, !dbg !2900
  %add166 = mul i32 %mul1656, %A_cols, !dbg !2900
  %39 = getelementptr i8, ptr %A, i32 %add166, !dbg !2901
  %arrayidx168 = getelementptr i8, ptr %39, i32 -1, !dbg !2901
  %40 = load i8, ptr %arrayidx168, align 1, !dbg !2902
  %41 = trunc i64 %shr162 to i8, !dbg !2902
  %42 = and i8 %41, 15, !dbg !2902
  %conv171 = xor i8 %42, %40, !dbg !2902
  store i8 %conv171, ptr %arrayidx168, align 1, !dbg !2902
  %shr172 = lshr i64 %call144, 24, !dbg !2903
  %mul1757 = or disjoint i32 %i86.0, 4, !dbg !2904
  %add176 = mul i32 %mul1757, %A_cols, !dbg !2904
  %43 = getelementptr i8, ptr %A, i32 %add176, !dbg !2905
  %arrayidx178 = getelementptr i8, ptr %43, i32 -1, !dbg !2905
  %44 = load i8, ptr %arrayidx178, align 1, !dbg !2906
  %45 = trunc i64 %shr172 to i8, !dbg !2906
  %46 = and i8 %45, 15, !dbg !2906
  %conv181 = xor i8 %46, %44, !dbg !2906
  store i8 %conv181, ptr %arrayidx178, align 1, !dbg !2906
  %shr182 = lshr i64 %call144, 32, !dbg !2907
  %mul1858 = or disjoint i32 %i86.0, 5, !dbg !2908
  %add186 = mul i32 %mul1858, %A_cols, !dbg !2908
  %47 = getelementptr i8, ptr %A, i32 %add186, !dbg !2909
  %arrayidx188 = getelementptr i8, ptr %47, i32 -1, !dbg !2909
  %48 = load i8, ptr %arrayidx188, align 1, !dbg !2910
  %49 = trunc i64 %shr182 to i8, !dbg !2910
  %50 = and i8 %49, 15, !dbg !2910
  %conv191 = xor i8 %50, %48, !dbg !2910
  store i8 %conv191, ptr %arrayidx188, align 1, !dbg !2910
  %shr192 = lshr i64 %call144, 40, !dbg !2911
  %mul1959 = or disjoint i32 %i86.0, 6, !dbg !2912
  %add196 = mul i32 %mul1959, %A_cols, !dbg !2912
  %51 = getelementptr i8, ptr %A, i32 %add196, !dbg !2913
  %arrayidx198 = getelementptr i8, ptr %51, i32 -1, !dbg !2913
  %52 = load i8, ptr %arrayidx198, align 1, !dbg !2914
  %53 = trunc i64 %shr192 to i8, !dbg !2914
  %54 = and i8 %53, 15, !dbg !2914
  %conv201 = xor i8 %54, %52, !dbg !2914
  store i8 %conv201, ptr %arrayidx198, align 1, !dbg !2914
  %shr202 = lshr i64 %call144, 48, !dbg !2915
  %mul20510 = or disjoint i32 %i86.0, 7, !dbg !2916
  %add206 = mul i32 %mul20510, %A_cols, !dbg !2916
  %55 = getelementptr i8, ptr %A, i32 %add206, !dbg !2917
  %arrayidx208 = getelementptr i8, ptr %55, i32 -1, !dbg !2917
  %56 = load i8, ptr %arrayidx208, align 1, !dbg !2918
  %57 = trunc i64 %shr202 to i8, !dbg !2918
  %58 = and i8 %57, 15, !dbg !2918
  %conv211 = xor i8 %58, %56, !dbg !2918
  store i8 %conv211, ptr %arrayidx208, align 1, !dbg !2918
  %shr212 = lshr i64 %call144, 56, !dbg !2919
  %mul21511 = add nuw i32 %i86.0, 8, !dbg !2920
  %add216 = mul i32 %mul21511, %A_cols, !dbg !2920
  %59 = getelementptr i8, ptr %A, i32 %add216, !dbg !2921
  %arrayidx218 = getelementptr i8, ptr %59, i32 -1, !dbg !2921
  %60 = load i8, ptr %arrayidx218, align 1, !dbg !2922
  %61 = trunc nuw nsw i64 %shr212 to i8, !dbg !2922
  %conv221 = xor i8 %60, %61, !dbg !2922
  store i8 %conv221, ptr %arrayidx218, align 1, !dbg !2922
  %add223 = add nuw nsw i32 %i86.0, 8, !dbg !2923
    #dbg_value(i32 %add223, !2835, !DIExpression(), !2837)
  br label %for.cond87, !dbg !2924, !llvm.loop !2925

for.inc229:                                       ; preds = %for.cond87
    #dbg_value(!DIArgList(i8 %finished.0, i8 %call70), !2809, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2709)
  %or2273 = or i8 %finished.0, %call70, !dbg !2927
    #dbg_value(i8 %or2273, !2809, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2709)
    #dbg_value(i8 %or2273, !2809, !DIExpression(), !2709)
  %inc230 = add nsw i32 %col.0, 1, !dbg !2928
    #dbg_value(i32 %inc230, !2813, !DIExpression(), !2815)
  br label %for.cond63, !dbg !2929, !llvm.loop !2930

return.loopexit:                                  ; preds = %for.cond50
  br label %return, !dbg !2932

return:                                           ; preds = %return.loopexit, %for.end45
  %retval.0 = phi i32 [ 0, %for.end45 ], [ 1, %return.loopexit ], !dbg !2709
  ret i32 %retval.0, !dbg !2932
}

; Function Attrs: nounwind
define internal fastcc void @mat_mul.21(ptr noundef %a, ptr noundef %b, ptr noundef %c, i32 noundef %colrow_ab, i32 noundef %row_a, i32 noundef %col_b) unnamed_addr #0 !dbg !2933 {
entry:
    #dbg_value(ptr %a, !2934, !DIExpression(), !2935)
    #dbg_value(ptr %b, !2936, !DIExpression(), !2935)
    #dbg_value(ptr %c, !2937, !DIExpression(), !2935)
    #dbg_value(i32 %colrow_ab, !2938, !DIExpression(), !2935)
    #dbg_value(i32 %row_a, !2939, !DIExpression(), !2935)
    #dbg_value(i32 %col_b, !2940, !DIExpression(), !2935)
    #dbg_value(i32 0, !2941, !DIExpression(), !2943)
  %smax = call i32 @llvm.smax.i32(i32 %col_b, i32 0), !dbg !2944
  %smax1 = call i32 @llvm.smax.i32(i32 %row_a, i32 0), !dbg !2944
  br label %for.cond, !dbg !2944

for.cond:                                         ; preds = %for.inc4, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc5, %for.inc4 ], !dbg !2945
  %c.addr.0 = phi ptr [ %c, %entry ], [ %c.addr.1.lcssa, %for.inc4 ]
  %a.addr.0 = phi ptr [ %a, %entry ], [ %add.ptr6, %for.inc4 ]
    #dbg_value(ptr %a.addr.0, !2934, !DIExpression(), !2935)
    #dbg_value(ptr %c.addr.0, !2937, !DIExpression(), !2935)
    #dbg_value(i32 %i.0, !2941, !DIExpression(), !2943)
  %exitcond2 = icmp ne i32 %i.0, %smax1, !dbg !2946
  br i1 %exitcond2, label %for.cond1.preheader, label %for.end7, !dbg !2948

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !2949

for.cond1:                                        ; preds = %for.cond1.preheader, %for.body3
  %c.addr.1 = phi ptr [ %incdec.ptr, %for.body3 ], [ %c.addr.0, %for.cond1.preheader ]
  %j.0 = phi i32 [ %inc, %for.body3 ], [ 0, %for.cond1.preheader ], !dbg !2952
    #dbg_value(i32 %j.0, !2953, !DIExpression(), !2954)
    #dbg_value(ptr %c.addr.1, !2937, !DIExpression(), !2935)
  %exitcond = icmp ne i32 %j.0, %smax, !dbg !2955
  br i1 %exitcond, label %for.body3, label %for.inc4, !dbg !2949

for.body3:                                        ; preds = %for.cond1
  %add.ptr = getelementptr inbounds nuw i8, ptr %b, i32 %j.0, !dbg !2957
  %call = call fastcc zeroext i8 @lincomb.24(ptr noundef %a.addr.0, ptr noundef %add.ptr, i32 noundef %colrow_ab, i32 noundef %col_b) #6, !dbg !2959
  store i8 %call, ptr %c.addr.1, align 1, !dbg !2960
  %inc = add nuw i32 %j.0, 1, !dbg !2961
    #dbg_value(i32 %inc, !2953, !DIExpression(), !2954)
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %c.addr.1, i32 1, !dbg !2962
    #dbg_value(ptr %incdec.ptr, !2937, !DIExpression(), !2935)
  br label %for.cond1, !dbg !2963, !llvm.loop !2964

for.inc4:                                         ; preds = %for.cond1
  %c.addr.1.lcssa = phi ptr [ %c.addr.1, %for.cond1 ]
  %inc5 = add nuw i32 %i.0, 1, !dbg !2966
    #dbg_value(i32 %inc5, !2941, !DIExpression(), !2943)
  %add.ptr6 = getelementptr inbounds i8, ptr %a.addr.0, i32 %colrow_ab, !dbg !2967
    #dbg_value(ptr %add.ptr6, !2934, !DIExpression(), !2935)
  br label %for.cond, !dbg !2968, !llvm.loop !2969

for.end7:                                         ; preds = %for.cond
  ret void, !dbg !2971
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @sub_f(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !2972 {
entry:
    #dbg_value(i8 %a, !2973, !DIExpression(), !2974)
    #dbg_value(i8 %b, !2975, !DIExpression(), !2974)
  %xor1 = xor i8 %a, %b, !dbg !2976
  ret i8 %xor1, !dbg !2977
}

; Function Attrs: nounwind
define internal fastcc void @EF(ptr noundef %A, i32 noundef %nrows, i32 noundef %ncols) unnamed_addr #0 !dbg !2978 {
entry:
  %_pivot_row = alloca [6 x i64], align 32
  %_pivot_row2 = alloca [6 x i64], align 32
  %packed_A = alloca [468 x i64], align 32
  %temp = alloca [96 x i8], align 1
    #dbg_value(ptr %A, !2982, !DIExpression(), !2983)
    #dbg_value(i32 %nrows, !2984, !DIExpression(), !2983)
    #dbg_value(i32 %ncols, !2985, !DIExpression(), !2983)
    #dbg_declare(ptr %_pivot_row, !2986, !DIExpression(), !2988)
    #dbg_declare(ptr %_pivot_row2, !2989, !DIExpression(), !2990)
    #dbg_declare(ptr %packed_A, !2991, !DIExpression(), !2995)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 32 dereferenceable(3744) %packed_A, i8 0, i32 3744, i1 false), !dbg !2995
  %add = add nsw i32 %ncols, 15, !dbg !2996
  %div = sdiv i32 %add, 16, !dbg !2997
    #dbg_value(i32 %div, !2998, !DIExpression(), !2983)
    #dbg_value(i32 0, !2999, !DIExpression(), !3001)
  %smax = call i32 @llvm.smax.i32(i32 %nrows, i32 0), !dbg !3002
  br label %for.cond, !dbg !3002

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !3003
    #dbg_value(i32 %i.0, !2999, !DIExpression(), !3001)
  %exitcond = icmp ne i32 %i.0, %smax, !dbg !3004
  br i1 %exitcond, label %for.body, label %for.cond3.preheader, !dbg !3006

for.cond3.preheader:                              ; preds = %for.cond
  %smax1 = call i32 @llvm.smax.i32(i32 %div, i32 0), !dbg !3007
  %smax5 = call i32 @llvm.smax.i32(i32 %ncols, i32 0), !dbg !3007
  br label %for.cond3, !dbg !3007

for.body:                                         ; preds = %for.cond
  %mul = mul nsw i32 %i.0, %ncols, !dbg !3009
  %add.ptr = getelementptr inbounds i8, ptr %A, i32 %mul, !dbg !3011
  %mul1 = mul nsw i32 %i.0, %div, !dbg !3012
  %add.ptr2 = getelementptr inbounds i64, ptr %packed_A, i32 %mul1, !dbg !3013
  call fastcc void @ef_pack_m_vec(ptr noundef %add.ptr, ptr noundef nonnull %add.ptr2, i32 noundef %ncols) #6, !dbg !3014
  %inc = add nuw i32 %i.0, 1, !dbg !3015
    #dbg_value(i32 %inc, !2999, !DIExpression(), !3001)
  br label %for.cond, !dbg !3016, !llvm.loop !3017

for.cond3:                                        ; preds = %for.cond3.preheader, %for.inc117
  %pivot_col.0 = phi i32 [ %inc118, %for.inc117 ], [ 0, %for.cond3.preheader ], !dbg !3019
  %pivot_row.0 = phi i32 [ %conv116, %for.inc117 ], [ 0, %for.cond3.preheader ], !dbg !2983
    #dbg_value(i32 %pivot_row.0, !3020, !DIExpression(), !2983)
    #dbg_value(i32 %pivot_col.0, !3021, !DIExpression(), !3022)
  %exitcond6 = icmp ne i32 %pivot_col.0, %smax5, !dbg !3023
  br i1 %exitcond6, label %for.body5, label %for.cond121.preheader, !dbg !3007

for.cond121.preheader:                            ; preds = %for.cond3
  br label %for.cond121, !dbg !3025

for.body5:                                        ; preds = %for.cond3
  %add6 = add nsw i32 %pivot_col.0, %nrows, !dbg !3027
  %cmp7 = icmp slt i32 %add6, %ncols, !dbg !3027
  %add8 = add nsw i32 %pivot_col.0, %nrows, !dbg !3027
  %sub9 = sub nsw i32 %add8, %ncols, !dbg !3027
  %cond = select i1 %cmp7, i32 0, i32 %sub9, !dbg !3027
    #dbg_value(i32 %cond, !3029, !DIExpression(), !3030)
  %sub13 = add nsw i32 %nrows, -1, !dbg !3031
    #dbg_value(i32 %cond16, !3032, !DIExpression(), !3030)
    #dbg_value(i32 0, !3033, !DIExpression(), !3035)
  br label %for.cond18, !dbg !3036

for.cond18:                                       ; preds = %for.body20, %for.body5
  %i17.0 = phi i32 [ 0, %for.body5 ], [ %inc23, %for.body20 ], !dbg !3037
    #dbg_value(i32 %i17.0, !3033, !DIExpression(), !3035)
  %exitcond2 = icmp ne i32 %i17.0, %smax1, !dbg !3038
  br i1 %exitcond2, label %for.body20, label %for.cond25.preheader, !dbg !3040

for.cond25.preheader:                             ; preds = %for.cond18
  %cmp11.not = icmp sgt i32 %nrows, %pivot_col.0, !dbg !3031
  %cond16 = select i1 %cmp11.not, i32 %pivot_col.0, i32 %sub13, !dbg !3031
  br label %for.cond25, !dbg !3041

for.body20:                                       ; preds = %for.cond18
  %arrayidx = getelementptr inbounds nuw [6 x i64], ptr %_pivot_row, i32 0, i32 %i17.0, !dbg !3043
  store i64 0, ptr %arrayidx, align 8, !dbg !3045
  %arrayidx21 = getelementptr inbounds nuw [6 x i64], ptr %_pivot_row2, i32 0, i32 %i17.0, !dbg !3046
  store i64 0, ptr %arrayidx21, align 8, !dbg !3047
  %inc23 = add nuw nsw i32 %i17.0, 1, !dbg !3048
    #dbg_value(i32 %inc23, !3033, !DIExpression(), !3035)
  br label %for.cond18, !dbg !3049, !llvm.loop !3050

for.cond25:                                       ; preds = %for.cond25.preheader, %for.end48
  %pivot_is_zero.0 = phi i64 [ %not52, %for.end48 ], [ -1, %for.cond25.preheader ], !dbg !3030
  %pivot.0 = phi i8 [ %call50, %for.end48 ], [ 0, %for.cond25.preheader ], !dbg !3030
  %row.0 = phi i32 [ %inc54, %for.end48 ], [ %cond, %for.cond25.preheader ], !dbg !3052
    #dbg_value(i32 %row.0, !3053, !DIExpression(), !3052)
    #dbg_value(i8 %pivot.0, !3054, !DIExpression(), !3030)
    #dbg_value(i64 %pivot_is_zero.0, !3055, !DIExpression(), !3030)
  %add27 = add nsw i32 %cond16, 32, !dbg !3056
  %cmp28.not = icmp sgt i32 %nrows, %add27, !dbg !3056
  %sub30 = add nsw i32 %nrows, -1, !dbg !3056
  %add32 = add nsw i32 %cond16, 32, !dbg !3056
  %cond34 = select i1 %cmp28.not, i32 %add32, i32 %sub30, !dbg !3056
  %cmp35.not = icmp sgt i32 %row.0, %cond34, !dbg !3058
  br i1 %cmp35.not, label %for.end55, label %for.body36, !dbg !3041

for.body36:                                       ; preds = %for.cond25
  %call = call fastcc i64 @ct_compare_64(i32 noundef %row.0, i32 noundef %pivot_row.0) #6, !dbg !3059
  %not = xor i64 %call, -1, !dbg !3061
    #dbg_value(i64 %not, !3062, !DIExpression(), !3063)
  %call37 = call fastcc i64 @ct_64_is_greater_than(i32 noundef %row.0, i32 noundef %pivot_row.0) #6, !dbg !3064
    #dbg_value(i64 %call37, !3065, !DIExpression(), !3063)
    #dbg_value(i32 0, !3066, !DIExpression(), !3068)
  br label %for.cond38, !dbg !3069

for.cond38:                                       ; preds = %for.body40, %for.body36
  %j.0 = phi i32 [ 0, %for.body36 ], [ %inc47, %for.body40 ], !dbg !3070
    #dbg_value(i32 %j.0, !3066, !DIExpression(), !3068)
  %exitcond3 = icmp ne i32 %j.0, %smax1, !dbg !3071
  br i1 %exitcond3, label %for.body40, label %for.end48, !dbg !3073

for.body40:                                       ; preds = %for.cond38
  %and = and i64 %call37, %pivot_is_zero.0, !dbg !3074
  %or = or i64 %and, %not, !dbg !3076
  %mul41 = mul nsw i32 %row.0, %div, !dbg !3077
  %add42 = add nsw i32 %mul41, %j.0, !dbg !3078
  %arrayidx43 = getelementptr inbounds [468 x i64], ptr %packed_A, i32 0, i32 %add42, !dbg !3079
  %0 = load i64, ptr %arrayidx43, align 8, !dbg !3079
  %and44 = and i64 %or, %0, !dbg !3080
  %arrayidx45 = getelementptr inbounds nuw [6 x i64], ptr %_pivot_row, i32 0, i32 %j.0, !dbg !3081
  %1 = load i64, ptr %arrayidx45, align 8, !dbg !3082
  %xor = xor i64 %1, %and44, !dbg !3082
  store i64 %xor, ptr %arrayidx45, align 8, !dbg !3082
  %inc47 = add nuw nsw i32 %j.0, 1, !dbg !3083
    #dbg_value(i32 %inc47, !3066, !DIExpression(), !3068)
  br label %for.cond38, !dbg !3084, !llvm.loop !3085

for.end48:                                        ; preds = %for.cond38
  %call50 = call fastcc zeroext i8 @m_extract_element(ptr noundef nonnull %_pivot_row, i32 noundef %pivot_col.0) #6, !dbg !3087
    #dbg_value(i8 %call50, !3054, !DIExpression(), !3030)
  %conv = zext nneg i8 %call50 to i32, !dbg !3088
  %call51 = call fastcc i64 @ct_compare_64(i32 noundef %conv, i32 noundef 0) #6, !dbg !3089
    #dbg_value(i64 %call51, !3055, !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_stack_value), !3030)
  %not52 = xor i64 %call51, -1, !dbg !3090
    #dbg_value(i64 %not52, !3055, !DIExpression(), !3030)
  %inc54 = add nsw i32 %row.0, 1, !dbg !3091
    #dbg_value(i32 %inc54, !3053, !DIExpression(), !3052)
  br label %for.cond25, !dbg !3092, !llvm.loop !3093

for.end55:                                        ; preds = %for.cond25
  %pivot_is_zero.0.lcssa = phi i64 [ %pivot_is_zero.0, %for.cond25 ], !dbg !3030
  %pivot.0.lcssa = phi i8 [ %pivot.0, %for.cond25 ], !dbg !3030
  %call56 = call fastcc zeroext i8 @inverse_f(i8 noundef zeroext %pivot.0.lcssa) #6, !dbg !3095
    #dbg_value(i8 %call56, !3096, !DIExpression(), !2983)
  call fastcc void @vec_mul_add_u64(i32 noundef %div, ptr noundef nonnull %_pivot_row, i8 noundef zeroext %call56, ptr noundef nonnull %_pivot_row2) #6, !dbg !3097
    #dbg_value(i32 %cond, !3098, !DIExpression(), !3100)
  br label %for.cond60, !dbg !3101

for.cond60:                                       ; preds = %for.inc86, %for.end55
  %row59.0 = phi i32 [ %cond, %for.end55 ], [ %inc87, %for.inc86 ], !dbg !3102
    #dbg_value(i32 %row59.0, !3098, !DIExpression(), !3100)
  %cmp61.not = icmp sgt i32 %row59.0, %cond16, !dbg !3103
  br i1 %cmp61.not, label %for.cond90.preheader, label %for.body63, !dbg !3105

for.cond90.preheader:                             ; preds = %for.cond60
  br label %for.cond90, !dbg !3106

for.body63:                                       ; preds = %for.cond60
  %call64 = call fastcc i64 @ct_compare_64(i32 noundef %row59.0, i32 noundef %pivot_row.0) #6, !dbg !3108
  %and67.demorgan = or i64 %call64, %pivot_is_zero.0.lcssa, !dbg !3110
  %and67 = xor i64 %and67.demorgan, -1, !dbg !3110
    #dbg_value(i64 %and67, !3111, !DIExpression(), !3112)
    #dbg_value(i64 %and67.demorgan, !3113, !DIExpression(), !3112)
    #dbg_value(i32 0, !3114, !DIExpression(), !3116)
  br label %for.cond69, !dbg !3117

for.cond69:                                       ; preds = %for.body72, %for.body63
  %col.0 = phi i32 [ 0, %for.body63 ], [ %inc84, %for.body72 ], !dbg !3118
    #dbg_value(i32 %col.0, !3114, !DIExpression(), !3116)
  %exitcond4 = icmp ne i32 %col.0, %smax1, !dbg !3119
  br i1 %exitcond4, label %for.body72, label %for.inc86, !dbg !3121

for.body72:                                       ; preds = %for.cond69
  %mul73 = mul nsw i32 %row59.0, %div, !dbg !3122
  %add74 = add nsw i32 %mul73, %col.0, !dbg !3124
  %arrayidx75 = getelementptr inbounds [468 x i64], ptr %packed_A, i32 0, i32 %add74, !dbg !3125
  %2 = load i64, ptr %arrayidx75, align 8, !dbg !3125
  %and76 = and i64 %and67.demorgan, %2, !dbg !3126
  %arrayidx77 = getelementptr inbounds nuw [6 x i64], ptr %_pivot_row2, i32 0, i32 %col.0, !dbg !3127
  %3 = load i64, ptr %arrayidx77, align 8, !dbg !3127
  %and78 = and i64 %3, %and67, !dbg !3128
  %add79 = add i64 %and76, %and78, !dbg !3129
  %mul80 = mul nsw i32 %row59.0, %div, !dbg !3130
  %add81 = add nsw i32 %mul80, %col.0, !dbg !3131
  %arrayidx82 = getelementptr inbounds [468 x i64], ptr %packed_A, i32 0, i32 %add81, !dbg !3132
  store i64 %add79, ptr %arrayidx82, align 8, !dbg !3133
  %inc84 = add nuw nsw i32 %col.0, 1, !dbg !3134
    #dbg_value(i32 %inc84, !3114, !DIExpression(), !3116)
  br label %for.cond69, !dbg !3135, !llvm.loop !3136

for.inc86:                                        ; preds = %for.cond69
  %inc87 = add nsw i32 %row59.0, 1, !dbg !3138
    #dbg_value(i32 %inc87, !3098, !DIExpression(), !3100)
  br label %for.cond60, !dbg !3139, !llvm.loop !3140

for.cond90:                                       ; preds = %for.cond90.preheader, %for.body93
  %row89.0 = phi i32 [ %inc110, %for.body93 ], [ %cond, %for.cond90.preheader ], !dbg !3142
    #dbg_value(i32 %row89.0, !3143, !DIExpression(), !3144)
  %cmp91 = icmp slt i32 %row89.0, %nrows, !dbg !3145
  br i1 %cmp91, label %for.body93, label %for.inc117, !dbg !3106

for.body93:                                       ; preds = %for.cond90
  %cmp94 = icmp sgt i32 %row89.0, %pivot_row.0, !dbg !3147
    #dbg_value(i1 %cmp94, !3149, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !3150)
  %mul98 = mul nsw i32 %row89.0, %div, !dbg !3151
  %add.ptr99 = getelementptr inbounds i64, ptr %packed_A, i32 %mul98, !dbg !3152
  %call100 = call fastcc zeroext i8 @m_extract_element(ptr noundef nonnull %add.ptr99, i32 noundef %pivot_col.0) #6, !dbg !3153
    #dbg_value(i8 %call100, !3154, !DIExpression(), !3150)
  %conv105 = select i1 %cmp94, i8 %call100, i8 0, !dbg !3155
  %mul107 = mul nsw i32 %row89.0, %div, !dbg !3156
  %add.ptr108 = getelementptr inbounds i64, ptr %packed_A, i32 %mul107, !dbg !3157
  call fastcc void @vec_mul_add_u64(i32 noundef %div, ptr noundef nonnull %_pivot_row2, i8 noundef zeroext %conv105, ptr noundef nonnull %add.ptr108) #6, !dbg !3158
  %inc110 = add nsw i32 %row89.0, 1, !dbg !3159
    #dbg_value(i32 %inc110, !3143, !DIExpression(), !3144)
  br label %for.cond90, !dbg !3160, !llvm.loop !3161

for.inc117:                                       ; preds = %for.cond90
    #dbg_value(!DIArgList(i64 %pivot_is_zero.0.lcssa, i32 %pivot_row.0), !3020, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_plus_uconst, 1, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2983)
  %4 = trunc i64 %pivot_is_zero.0.lcssa to i32, !dbg !3163
  %5 = add i32 %4, 1, !dbg !3163
  %conv116 = add i32 %5, %pivot_row.0, !dbg !3163
    #dbg_value(i32 %conv116, !3020, !DIExpression(), !2983)
  %inc118 = add nuw i32 %pivot_col.0, 1, !dbg !3164
    #dbg_value(i32 %inc118, !3021, !DIExpression(), !3022)
  br label %for.cond3, !dbg !3165, !llvm.loop !3166

for.cond121:                                      ; preds = %for.cond121.preheader, %for.inc141
  %i120.0 = phi i32 [ %inc142, %for.inc141 ], [ 0, %for.cond121.preheader ], !dbg !3168
    #dbg_value(i32 %i120.0, !3169, !DIExpression(), !3170)
  %exitcond8 = icmp ne i32 %i120.0, %smax, !dbg !3171
  br i1 %exitcond8, label %for.body124, label %for.end143, !dbg !3025

for.body124:                                      ; preds = %for.cond121
  %mul126 = mul nsw i32 %i120.0, %div, !dbg !3173
  %add.ptr127 = getelementptr inbounds i64, ptr %packed_A, i32 %mul126, !dbg !3175
  call fastcc void @ef_unpack_m_vec(i32 noundef %div, ptr noundef nonnull %add.ptr127, ptr noundef nonnull %temp) #6, !dbg !3176
    #dbg_value(i32 0, !3177, !DIExpression(), !3179)
  br label %for.cond130, !dbg !3180

for.cond130:                                      ; preds = %for.body133, %for.body124
  %j129.0 = phi i32 [ 0, %for.body124 ], [ %inc139, %for.body133 ], !dbg !3181
    #dbg_value(i32 %j129.0, !3177, !DIExpression(), !3179)
  %exitcond7 = icmp ne i32 %j129.0, %smax5, !dbg !3182
  br i1 %exitcond7, label %for.body133, label %for.inc141, !dbg !3184

for.body133:                                      ; preds = %for.cond130
  %arrayidx134 = getelementptr inbounds nuw [96 x i8], ptr %temp, i32 0, i32 %j129.0, !dbg !3185
  %6 = load i8, ptr %arrayidx134, align 1, !dbg !3185
  %mul135 = mul nsw i32 %i120.0, %ncols, !dbg !3187
  %7 = getelementptr i8, ptr %A, i32 %mul135, !dbg !3188
  %arrayidx137 = getelementptr i8, ptr %7, i32 %j129.0, !dbg !3188
  store i8 %6, ptr %arrayidx137, align 1, !dbg !3189
  %inc139 = add nuw i32 %j129.0, 1, !dbg !3190
    #dbg_value(i32 %inc139, !3177, !DIExpression(), !3179)
  br label %for.cond130, !dbg !3191, !llvm.loop !3192

for.inc141:                                       ; preds = %for.cond130
  %inc142 = add nuw i32 %i120.0, 1, !dbg !3194
    #dbg_value(i32 %inc142, !3169, !DIExpression(), !3170)
  br label %for.cond121, !dbg !3195, !llvm.loop !3196

for.end143:                                       ; preds = %for.cond121
  call void @mayo_secure_clear(ptr noundef nonnull %temp, i32 noundef 96) #8, !dbg !3198
  call void @mayo_secure_clear(ptr noundef nonnull %_pivot_row, i32 noundef 48) #8, !dbg !3199
  call void @mayo_secure_clear(ptr noundef nonnull %_pivot_row2, i32 noundef 48) #8, !dbg !3200
  call void @mayo_secure_clear(ptr noundef nonnull %packed_A, i32 noundef 3744) #8, !dbg !3201
  ret void, !dbg !3202
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @ct_compare_8(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !3203 {
entry:
    #dbg_value(i8 %a, !3205, !DIExpression(), !3206)
    #dbg_value(i8 %b, !3207, !DIExpression(), !3206)
  %0 = icmp ne i8 %a, %b, !dbg !3208
  %conv3 = sext i1 %0 to i8, !dbg !3209
  %1 = load volatile i8, ptr @pqmayo_MAYO_1_ref_unsigned_char_blocker, align 1, !dbg !3210
  %xor5 = xor i8 %1, %conv3, !dbg !3211
  ret i8 %xor5, !dbg !3212
}

; Function Attrs: nounwind
define internal fastcc range(i64 0, 1085102592571150096) i64 @mul_fx8(i8 noundef zeroext %a, i64 noundef %b) unnamed_addr #0 !dbg !3213 {
entry:
    #dbg_value(i8 %a, !3216, !DIExpression(), !3217)
    #dbg_value(i64 %b, !3218, !DIExpression(), !3217)
  %0 = and i8 %a, 1, !dbg !3219
  %conv1 = zext nneg i8 %0 to i64, !dbg !3220
  %mul = mul nuw nsw i64 %b, %conv1, !dbg !3221
    #dbg_value(i64 %mul, !3222, !DIExpression(), !3217)
  %1 = and i8 %a, 2, !dbg !3223
  %conv4 = zext nneg i8 %1 to i64, !dbg !3224
  %mul5 = mul i64 %b, %conv4, !dbg !3225
  %xor = xor i64 %mul, %mul5, !dbg !3226
    #dbg_value(i64 %xor, !3222, !DIExpression(), !3217)
  %2 = and i8 %a, 4, !dbg !3227
  %conv8 = zext nneg i8 %2 to i64, !dbg !3228
  %mul9 = mul i64 %b, %conv8, !dbg !3229
  %xor10 = xor i64 %xor, %mul9, !dbg !3230
    #dbg_value(i64 %xor10, !3222, !DIExpression(), !3217)
  %3 = and i8 %a, 8, !dbg !3231
  %conv13 = zext nneg i8 %3 to i64, !dbg !3232
  %mul14 = mul i64 %b, %conv13, !dbg !3233
  %xor15 = xor i64 %xor10, %mul14, !dbg !3234
    #dbg_value(i64 %xor15, !3222, !DIExpression(), !3217)
    #dbg_value(i64 %xor15, !3235, !DIExpression(DW_OP_constu, 17361641481138401520, DW_OP_and, DW_OP_stack_value), !3217)
  %shr = lshr i64 %xor15, 4, !dbg !3236
  %and16 = lshr i64 %xor15, 3, !dbg !3237
  %shr18 = and i64 %and16, 1012762419733073422, !dbg !3237
  %4 = xor i64 %shr, %shr18, !dbg !3238
  %xor19 = xor i64 %4, %xor15, !dbg !3238
  %and20 = and i64 %xor19, 1085102592571150095, !dbg !3239
    #dbg_value(i64 %and20, !3240, !DIExpression(), !3217)
  ret i64 %and20, !dbg !3241
}

; Function Attrs: nounwind
define internal fastcc void @ef_pack_m_vec(ptr noundef %in, ptr noundef %out, i32 noundef %ncols) unnamed_addr #0 !dbg !3242 {
entry:
    #dbg_value(ptr %in, !3245, !DIExpression(), !3246)
    #dbg_value(ptr %out, !3247, !DIExpression(), !3246)
    #dbg_value(i32 %ncols, !3248, !DIExpression(), !3246)
    #dbg_value(ptr %out, !3249, !DIExpression(), !3246)
    #dbg_value(i32 0, !3250, !DIExpression(), !3246)
  br label %for.cond, !dbg !3251

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %add8, %for.body ], !dbg !3253
    #dbg_value(i32 %i.0, !3250, !DIExpression(), !3246)
  %add = or disjoint i32 %i.0, 1, !dbg !3254
  %cmp = icmp slt i32 %add, %ncols, !dbg !3256
  br i1 %cmp, label %for.body, label %for.end, !dbg !3257

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %in, i32 %i.0, !dbg !3258
  %0 = load i8, ptr %arrayidx, align 1, !dbg !3258
  %add2 = or disjoint i32 %i.0, 1, !dbg !3260
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %in, i32 %add2, !dbg !3261
  %1 = load i8, ptr %arrayidx3, align 1, !dbg !3261
  %shl5 = shl i8 %1, 4, !dbg !3262
  %or = or i8 %shl5, %0, !dbg !3263
  %div = lshr exact i32 %i.0, 1, !dbg !3264
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %out, i32 %div, !dbg !3265
  store i8 %or, ptr %arrayidx7, align 1, !dbg !3266
  %add8 = add nuw nsw i32 %i.0, 2, !dbg !3267
    #dbg_value(i32 %add8, !3250, !DIExpression(), !3246)
  br label %for.cond, !dbg !3268, !llvm.loop !3269

for.end:                                          ; preds = %for.cond
  %i.0.lcssa = phi i32 [ %i.0, %for.cond ], !dbg !3253
  %2 = and i32 %ncols, -2147483647, !dbg !3271
  %cmp9 = icmp eq i32 %2, 1, !dbg !3271
  br i1 %cmp9, label %if.then, label %if.end, !dbg !3271

if.then:                                          ; preds = %for.end
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %in, i32 %i.0.lcssa, !dbg !3273
  %3 = load i8, ptr %arrayidx12, align 1, !dbg !3273
  %div16 = lshr exact i32 %i.0.lcssa, 1, !dbg !3275
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %out, i32 %div16, !dbg !3276
  store i8 %3, ptr %arrayidx17, align 1, !dbg !3277
  br label %if.end, !dbg !3278

if.end:                                           ; preds = %if.then, %for.end
  ret void, !dbg !3279
}

; Function Attrs: nounwind
define internal fastcc i64 @ct_compare_64(i32 noundef %a, i32 noundef %b) unnamed_addr #0 !dbg !3280 {
entry:
    #dbg_value(i32 %a, !3283, !DIExpression(), !3284)
    #dbg_value(i32 %b, !3285, !DIExpression(), !3284)
  %xor = xor i32 %a, %b, !dbg !3286
  %0 = icmp sgt i32 %xor, 0, !dbg !3287
  %shr = sext i1 %0 to i64, !dbg !3287
  %1 = load volatile i64, ptr @pqmayo_MAYO_1_ref_uint64_t_blocker, align 8, !dbg !3288
  %xor1 = xor i64 %1, %shr, !dbg !3289
  ret i64 %xor1, !dbg !3290
}

; Function Attrs: nounwind
define internal fastcc i64 @ct_64_is_greater_than(i32 noundef %a, i32 noundef %b) unnamed_addr #0 !dbg !3291 {
entry:
    #dbg_value(i32 %a, !3292, !DIExpression(), !3293)
    #dbg_value(i32 %b, !3294, !DIExpression(), !3293)
    #dbg_value(!DIArgList(i32 %b, i32 %a), !3295, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_minus, DW_OP_stack_value), !3293)
  %0 = icmp slt i32 %b, %a, !dbg !3296
  %shr = sext i1 %0 to i64, !dbg !3296
  %1 = load volatile i64, ptr @pqmayo_MAYO_1_ref_uint64_t_blocker, align 8, !dbg !3297
  %xor = xor i64 %1, %shr, !dbg !3298
  ret i64 %xor, !dbg !3299
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @m_extract_element(ptr noundef %in, i32 noundef %index) unnamed_addr #0 !dbg !3300 {
entry:
    #dbg_value(ptr %in, !3303, !DIExpression(), !3304)
    #dbg_value(i32 %index, !3305, !DIExpression(), !3304)
  %div = sdiv i32 %index, 16, !dbg !3306
    #dbg_value(i32 %div, !3307, !DIExpression(), !3304)
  %rem = srem i32 %index, 16, !dbg !3308
    #dbg_value(i32 %rem, !3309, !DIExpression(), !3304)
  %arrayidx = getelementptr inbounds i64, ptr %in, i32 %div, !dbg !3310
  %0 = load i64, ptr %arrayidx, align 8, !dbg !3310
  %mul = shl nsw i32 %rem, 2, !dbg !3311
  %sh_prom = zext nneg i32 %mul to i64, !dbg !3312
  %shr = lshr i64 %0, %sh_prom, !dbg !3312
  %1 = trunc i64 %shr to i8, !dbg !3313
  %conv = and i8 %1, 15, !dbg !3313
  ret i8 %conv, !dbg !3314
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @inverse_f(i8 noundef zeroext %a) unnamed_addr #0 !dbg !3315 {
entry:
    #dbg_value(i8 %a, !3318, !DIExpression(), !3319)
  %call = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %a, i8 noundef zeroext %a) #6, !dbg !3320
    #dbg_value(i8 %call, !3321, !DIExpression(), !3319)
  %call1 = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %call, i8 noundef zeroext %call) #6, !dbg !3322
    #dbg_value(i8 %call1, !3323, !DIExpression(), !3319)
  %call2 = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %call1, i8 noundef zeroext %call1) #6, !dbg !3324
    #dbg_value(i8 %call2, !3325, !DIExpression(), !3319)
  %call3 = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %call, i8 noundef zeroext %call1) #6, !dbg !3326
    #dbg_value(i8 %call3, !3327, !DIExpression(), !3319)
  %call4 = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %call2, i8 noundef zeroext %call3) #6, !dbg !3328
    #dbg_value(i8 %call4, !3329, !DIExpression(), !3319)
  ret i8 %call4, !dbg !3330
}

; Function Attrs: nounwind
define internal fastcc void @vec_mul_add_u64(i32 noundef %legs, ptr noundef %in, i8 noundef zeroext %a, ptr noundef %acc) unnamed_addr #0 !dbg !3331 {
entry:
    #dbg_value(i32 %legs, !3334, !DIExpression(), !3335)
    #dbg_value(ptr %in, !3336, !DIExpression(), !3335)
    #dbg_value(i8 %a, !3337, !DIExpression(), !3335)
    #dbg_value(ptr %acc, !3338, !DIExpression(), !3335)
  %call = call fastcc i32 @mul_table.22(i8 noundef zeroext %a) #6, !dbg !3339
    #dbg_value(i32 %call, !3340, !DIExpression(), !3335)
    #dbg_value(i64 1229782938247303441, !3341, !DIExpression(), !3335)
    #dbg_value(i32 0, !3342, !DIExpression(), !3344)
  %smax = call i32 @llvm.smax.i32(i32 %legs, i32 0), !dbg !3345
  br label %for.cond, !dbg !3345

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !3346
    #dbg_value(i32 %i.0, !3342, !DIExpression(), !3344)
  %exitcond = icmp ne i32 %i.0, %smax, !dbg !3347
  br i1 %exitcond, label %for.body, label %for.end, !dbg !3349

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !3350
  %0 = load i64, ptr %arrayidx, align 8, !dbg !3350
  %and = and i64 %0, 1229782938247303441, !dbg !3352
  %and1 = and i32 %call, 255, !dbg !3353
  %conv = zext nneg i32 %and1 to i64, !dbg !3354
  %mul = mul i64 %and, %conv, !dbg !3355
  %shr = lshr i64 %0, 1, !dbg !3356
  %and3 = and i64 %shr, 1229782938247303441, !dbg !3357
  %shr4 = lshr i32 %call, 8, !dbg !3358
  %and5 = and i32 %shr4, 15, !dbg !3359
  %conv6 = zext nneg i32 %and5 to i64, !dbg !3360
  %mul7 = mul nuw i64 %and3, %conv6, !dbg !3361
  %xor = xor i64 %mul, %mul7, !dbg !3362
  %arrayidx8 = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !3363
  %1 = load i64, ptr %arrayidx8, align 8, !dbg !3363
  %shr9 = lshr i64 %1, 2, !dbg !3364
  %and10 = and i64 %shr9, 1229782938247303441, !dbg !3365
  %shr11 = lshr i32 %call, 16, !dbg !3366
  %and12 = and i32 %shr11, 15, !dbg !3367
  %conv13 = zext nneg i32 %and12 to i64, !dbg !3368
  %mul14 = mul nuw i64 %and10, %conv13, !dbg !3369
  %xor15 = xor i64 %xor, %mul14, !dbg !3370
  %arrayidx16 = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !3371
  %2 = load i64, ptr %arrayidx16, align 8, !dbg !3371
  %shr17 = lshr i64 %2, 3, !dbg !3372
  %and18 = and i64 %shr17, 1229782938247303441, !dbg !3373
  %shr19 = lshr i32 %call, 24, !dbg !3374
  %and20 = and i32 %shr19, 15, !dbg !3375
  %conv21 = zext nneg i32 %and20 to i64, !dbg !3376
  %mul22 = mul nuw i64 %and18, %conv21, !dbg !3377
  %xor23 = xor i64 %xor15, %mul22, !dbg !3378
  %arrayidx24 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !3379
  %3 = load i64, ptr %arrayidx24, align 8, !dbg !3380
  %xor25 = xor i64 %3, %xor23, !dbg !3380
  store i64 %xor25, ptr %arrayidx24, align 8, !dbg !3380
  %inc = add nuw i32 %i.0, 1, !dbg !3381
    #dbg_value(i32 %inc, !3342, !DIExpression(), !3344)
  br label %for.cond, !dbg !3382, !llvm.loop !3383

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3385
}

; Function Attrs: nounwind
define internal fastcc void @ef_unpack_m_vec(i32 noundef %legs, ptr noundef %in, ptr noundef %out) unnamed_addr #0 !dbg !3386 {
entry:
    #dbg_value(i32 %legs, !3389, !DIExpression(), !3390)
    #dbg_value(ptr %in, !3391, !DIExpression(), !3390)
    #dbg_value(ptr %out, !3392, !DIExpression(), !3390)
    #dbg_value(ptr %in, !3393, !DIExpression(), !3390)
    #dbg_value(i32 0, !3394, !DIExpression(), !3396)
  br label %for.cond, !dbg !3397

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %add8, %for.body ], !dbg !3398
    #dbg_value(i32 %i.0, !3394, !DIExpression(), !3396)
  %mul = shl nsw i32 %legs, 4, !dbg !3399
  %cmp = icmp slt i32 %i.0, %mul, !dbg !3401
  br i1 %cmp, label %for.body, label %for.end, !dbg !3402

for.body:                                         ; preds = %for.cond
  %div = lshr exact i32 %i.0, 1, !dbg !3403
  %arrayidx = getelementptr inbounds nuw i8, ptr %in, i32 %div, !dbg !3405
  %0 = load i8, ptr %arrayidx, align 1, !dbg !3405
  %1 = and i8 %0, 15, !dbg !3406
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %out, i32 %i.0, !dbg !3407
  store i8 %1, ptr %arrayidx2, align 1, !dbg !3408
  %div3 = lshr exact i32 %i.0, 1, !dbg !3409
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %in, i32 %div3, !dbg !3410
  %2 = load i8, ptr %arrayidx4, align 1, !dbg !3410
  %3 = lshr i8 %2, 4, !dbg !3411
  %add = or disjoint i32 %i.0, 1, !dbg !3412
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %out, i32 %add, !dbg !3413
  store i8 %3, ptr %arrayidx7, align 1, !dbg !3414
  %add8 = add nuw nsw i32 %i.0, 2, !dbg !3415
    #dbg_value(i32 %add8, !3394, !DIExpression(), !3396)
  br label %for.cond, !dbg !3416, !llvm.loop !3417

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3419
}

; Function Attrs: nounwind
define internal fastcc i32 @mul_table.22(i8 noundef zeroext %b) unnamed_addr #0 !dbg !3420 {
entry:
    #dbg_value(i8 %b, !3421, !DIExpression(), !3422)
  %conv = zext i8 %b to i32, !dbg !3423
  %mul = mul i32 %conv, 134480385, !dbg !3424
    #dbg_value(i32 %mul, !3425, !DIExpression(), !3422)
    #dbg_value(i32 -252645136, !3426, !DIExpression(), !3422)
  %and = and i32 %mul, -252645136, !dbg !3427
    #dbg_value(i32 %and, !3428, !DIExpression(), !3422)
  %shr = lshr exact i32 %and, 4, !dbg !3429
  %shr1 = lshr exact i32 %and, 3, !dbg !3430
  %0 = xor i32 %shr, %shr1, !dbg !3431
  %xor2 = xor i32 %0, %mul, !dbg !3431
  ret i32 %xor2, !dbg !3432
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @mul_f.23(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !3433 {
entry:
    #dbg_value(i8 %a, !3434, !DIExpression(), !3435)
    #dbg_value(i8 %b, !3436, !DIExpression(), !3435)
  %0 = load volatile i8, ptr @pqmayo_MAYO_1_ref_unsigned_char_blocker, align 1, !dbg !3437
  %xor1 = xor i8 %a, %0, !dbg !3438
    #dbg_value(i8 %xor1, !3434, !DIExpression(), !3435)
  %1 = trunc i8 %xor1 to i1, !dbg !3439
    #dbg_value(i8 poison, !3440, !DIExpression(), !3435)
  %2 = and i8 %xor1, 2, !dbg !3441
  %mul9 = mul i8 %2, %b, !dbg !3442
  %conv10 = select i1 %1, i8 %b, i8 0, !dbg !3439
  %xor11 = xor i8 %conv10, %mul9, !dbg !3443
    #dbg_value(i8 %xor11, !3440, !DIExpression(), !3435)
  %3 = and i8 %xor1, 4, !dbg !3444
  %mul16 = mul i8 %3, %b, !dbg !3445
  %xor18 = xor i8 %mul16, %xor11, !dbg !3446
    #dbg_value(i8 %xor18, !3440, !DIExpression(), !3435)
  %4 = and i8 %xor1, 8, !dbg !3447
  %mul23 = mul i8 %4, %b, !dbg !3448
  %xor25 = xor i8 %mul23, %xor18, !dbg !3449
    #dbg_value(i8 %xor25, !3440, !DIExpression(), !3435)
    #dbg_value(i8 %xor25, !3450, !DIExpression(DW_OP_constu, 18446744073709551600, DW_OP_and, DW_OP_stack_value), !3435)
  %5 = lshr i8 %xor25, 4, !dbg !3451
  %6 = lshr i8 %xor25, 3, !dbg !3452
  %7 = and i8 %6, 14, !dbg !3452
  %8 = xor i8 %5, %7, !dbg !3453
  %xor25.masked = and i8 %xor25, 15, !dbg !3454
  %9 = xor i8 %8, %xor25.masked, !dbg !3454
    #dbg_value(i8 %9, !3455, !DIExpression(), !3435)
  ret i8 %9, !dbg !3456
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @lincomb.24(ptr noundef %a, ptr noundef %b, i32 noundef %n, i32 noundef %m) unnamed_addr #0 !dbg !3457 {
entry:
    #dbg_value(ptr %a, !3458, !DIExpression(), !3459)
    #dbg_value(ptr %b, !3460, !DIExpression(), !3459)
    #dbg_value(i32 %n, !3461, !DIExpression(), !3459)
    #dbg_value(i32 %m, !3462, !DIExpression(), !3459)
    #dbg_value(i8 0, !3463, !DIExpression(), !3459)
    #dbg_value(i32 0, !3464, !DIExpression(), !3466)
  %smax = call i32 @llvm.smax.i32(i32 %n, i32 0), !dbg !3467
  br label %for.cond, !dbg !3467

for.cond:                                         ; preds = %for.body, %entry
  %ret.0 = phi i8 [ 0, %entry ], [ %call1, %for.body ], !dbg !3459
  %b.addr.0 = phi ptr [ %b, %entry ], [ %add.ptr, %for.body ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !3468
    #dbg_value(i32 %i.0, !3464, !DIExpression(), !3466)
    #dbg_value(ptr %b.addr.0, !3460, !DIExpression(), !3459)
    #dbg_value(i8 %ret.0, !3463, !DIExpression(), !3459)
  %exitcond = icmp ne i32 %i.0, %smax, !dbg !3469
  br i1 %exitcond, label %for.body, label %for.end, !dbg !3471

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %a, i32 %i.0, !dbg !3472
  %0 = load i8, ptr %arrayidx, align 1, !dbg !3472
  %1 = load i8, ptr %b.addr.0, align 1, !dbg !3474
  %call = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %0, i8 noundef zeroext %1) #6, !dbg !3475
  %call1 = call fastcc zeroext i8 @add_f.25(i8 noundef zeroext %call, i8 noundef zeroext %ret.0) #6, !dbg !3476
    #dbg_value(i8 %call1, !3463, !DIExpression(), !3459)
  %inc = add nuw i32 %i.0, 1, !dbg !3477
    #dbg_value(i32 %inc, !3464, !DIExpression(), !3466)
  %add.ptr = getelementptr inbounds i8, ptr %b.addr.0, i32 %m, !dbg !3478
    #dbg_value(ptr %add.ptr, !3460, !DIExpression(), !3459)
  br label %for.cond, !dbg !3479, !llvm.loop !3480

for.end:                                          ; preds = %for.cond
  %ret.0.lcssa = phi i8 [ %ret.0, %for.cond ], !dbg !3459
  ret i8 %ret.0.lcssa, !dbg !3482
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @add_f.25(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !3483 {
entry:
    #dbg_value(i8 %a, !3484, !DIExpression(), !3485)
    #dbg_value(i8 %b, !3486, !DIExpression(), !3485)
  %xor1 = xor i8 %a, %b, !dbg !3487
  ret i8 %xor1, !dbg !3488
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
!83 = distinct !DIGlobalVariable(name: "pqmayo_MAYO_1_ref_uint32_t_blocker", scope: !84, file: !99, line: 126, type: !104, isLocal: false, isDefinition: true)
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
!98 = distinct !DIGlobalVariable(name: "pqmayo_MAYO_1_ref_uint64_t_blocker", scope: !84, file: !99, line: 127, type: !100, isLocal: false, isDefinition: true)
!99 = !DIFile(filename: "../../../src/arithmetic.c", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!100 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !53)
!101 = !DIGlobalVariableExpression(var: !102, expr: !DIExpression())
!102 = distinct !DIGlobalVariable(name: "pqmayo_MAYO_1_ref_unsigned_char_blocker", scope: !84, file: !99, line: 128, type: !103, isLocal: false, isDefinition: true)
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
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sk_t", file: !79, line: 291, size: 1190592, elements: !168)
!168 = !{!169, !173}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !167, file: !79, line: 292, baseType: !170, size: 1185600)
!170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 1185600, elements: !171)
!171 = !{!172}
!172 = !DISubrange(count: 18525)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "O", scope: !167, file: !79, line: 293, baseType: !174, size: 4992, offset: 1185600)
!174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !175, size: 4992, elements: !177)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !54, line: 24, baseType: !176)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !56, line: 43, baseType: !51)
!177 = !{!178}
!178 = !DISubrange(count: 624)
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
!261 = distinct !DISubprogram(name: "pqmayo_MAYO_1_ref_mayo_keypair", scope: !68, file: !68, line: 298, type: !262, scopeLine: 298, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !71)
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
!301 = distinct !DISubprogram(name: "pqmayo_MAYO_1_ref_mayo_keypair_compact", scope: !68, file: !68, line: 538, type: !262, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !71)
!302 = !DILocalVariable(name: "p", arg: 1, scope: !301, file: !68, line: 538, type: !264)
!303 = !DILocation(line: 0, scope: !301)
!304 = !DILocalVariable(name: "cpk", arg: 2, scope: !301, file: !68, line: 538, type: !61)
!305 = !DILocalVariable(name: "csk", arg: 3, scope: !301, file: !68, line: 539, type: !61)
!306 = !DILocalVariable(name: "ret", scope: !301, file: !68, line: 540, type: !86)
!307 = !DILocalVariable(name: "seed_sk", scope: !301, file: !68, line: 541, type: !61)
!308 = !DILocalVariable(name: "S", scope: !301, file: !68, line: 542, type: !309)
!309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 2624, elements: !310)
!310 = !{!311}
!311 = !DISubrange(count: 328)
!312 = !DILocation(line: 542, column: 19, scope: !301)
!313 = !DILocalVariable(name: "P", scope: !301, file: !68, line: 543, type: !170)
!314 = !DILocation(line: 543, column: 14, scope: !301)
!315 = !DILocalVariable(name: "P3", scope: !301, file: !68, line: 544, type: !316)
!316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 20480, elements: !317)
!317 = !{!318}
!318 = !DISubrange(count: 320)
!319 = !DILocation(line: 544, column: 14, scope: !301)
!320 = !DILocalVariable(name: "O", scope: !301, file: !68, line: 547, type: !321)
!321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 4992, elements: !177)
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
!347 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 11520, elements: !348)
!348 = !{!349}
!349 = !DISubrange(count: 180)
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
!677 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 320, elements: !678)
!678 = !{!679}
!679 = !DISubrange(count: 5)
!680 = !DILocation(line: 265, column: 14, scope: !664)
!681 = !DILocalVariable(name: "i", scope: !682, file: !68, line: 266, type: !86)
!682 = distinct !DILexicalBlock(scope: !664, file: !68, line: 266, column: 5)
!683 = !DILocation(line: 0, scope: !682)
!684 = !DILocation(line: 266, column: 10, scope: !682)
!685 = !DILocation(line: 266, column: 28, scope: !686)
!686 = distinct !DILexicalBlock(scope: !682, file: !68, line: 266, column: 5)
!687 = !DILocation(line: 266, column: 5, scope: !682)
!688 = !DILocation(line: 266, scope: !682)
!689 = !DILocation(line: 268, column: 27, scope: !690)
!690 = distinct !DILexicalBlock(scope: !686, file: !68, line: 267, column: 5)
!691 = !DILocation(line: 268, column: 29, scope: !690)
!692 = !DILocation(line: 268, column: 24, scope: !690)
!693 = !DILocation(line: 268, column: 34, scope: !690)
!694 = !DILocation(line: 268, column: 9, scope: !690)
!695 = !DILocation(line: 269, column: 24, scope: !690)
!696 = !DILocation(line: 269, column: 36, scope: !690)
!697 = !DILocation(line: 269, column: 21, scope: !690)
!698 = !DILocation(line: 269, column: 71, scope: !690)
!699 = !DILocation(line: 269, column: 9, scope: !690)
!700 = !DILocation(line: 266, column: 5, scope: !686)
!701 = distinct !{!701, !687, !702, !388}
!702 = !DILocation(line: 270, column: 5, scope: !682)
!703 = !DILocation(line: 271, column: 1, scope: !664)
!704 = distinct !DISubprogram(name: "pqmayo_MAYO_1_ref_mayo_expand_sk", scope: !68, file: !68, line: 310, type: !705, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !71)
!705 = !DISubroutineType(types: !706)
!706 = !{!86, !264, !90, !707}
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 32)
!708 = !DIDerivedType(tag: DW_TAG_typedef, name: "sk_t", file: !79, line: 294, baseType: !709)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sk_t", file: !79, line: 291, size: 1190592, elements: !710)
!710 = !{!711, !712}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !709, file: !79, line: 292, baseType: !170, size: 1185600)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "O", scope: !709, file: !79, line: 293, baseType: !174, size: 4992, offset: 1185600)
!713 = !DILocalVariable(name: "p", arg: 1, scope: !704, file: !68, line: 310, type: !264)
!714 = !DILocation(line: 0, scope: !704)
!715 = !DILocalVariable(name: "csk", arg: 2, scope: !704, file: !68, line: 310, type: !90)
!716 = !DILocalVariable(name: "sk", arg: 3, scope: !704, file: !68, line: 311, type: !707)
!717 = !DILocalVariable(name: "ret", scope: !704, file: !68, line: 312, type: !86)
!718 = !DILocalVariable(name: "S", scope: !704, file: !68, line: 313, type: !309)
!719 = !DILocation(line: 313, column: 19, scope: !704)
!720 = !DILocalVariable(name: "P", scope: !704, file: !68, line: 314, type: !52)
!721 = !DILocation(line: 315, column: 28, scope: !704)
!722 = !DILocalVariable(name: "O", scope: !704, file: !68, line: 315, type: !61)
!723 = !DILocalVariable(name: "param_o", scope: !704, file: !68, line: 317, type: !324)
!724 = !DILocalVariable(name: "param_v", scope: !704, file: !68, line: 318, type: !324)
!725 = !DILocalVariable(name: "param_O_bytes", scope: !704, file: !68, line: 319, type: !324)
!726 = !DILocalVariable(name: "param_pk_seed_bytes", scope: !704, file: !68, line: 320, type: !324)
!727 = !DILocalVariable(name: "param_sk_seed_bytes", scope: !704, file: !68, line: 321, type: !324)
!728 = !DILocalVariable(name: "seed_sk", scope: !704, file: !68, line: 323, type: !90)
!729 = !DILocalVariable(name: "seed_pk", scope: !704, file: !68, line: 324, type: !61)
!730 = !DILocation(line: 326, column: 5, scope: !704)
!731 = !DILocation(line: 328, column: 14, scope: !704)
!732 = !DILocation(line: 328, column: 5, scope: !704)
!733 = !DILocation(line: 334, column: 5, scope: !704)
!734 = !DILocation(line: 341, column: 22, scope: !704)
!735 = !DILocalVariable(name: "P2", scope: !704, file: !68, line: 341, type: !52)
!736 = !DILocalVariable(name: "P1", scope: !704, file: !68, line: 343, type: !52)
!737 = !DILocalVariable(name: "L", scope: !704, file: !68, line: 346, type: !52)
!738 = !DILocation(line: 347, column: 5, scope: !704)
!739 = !DILocation(line: 355, column: 5, scope: !704)
!740 = !DILocation(line: 356, column: 5, scope: !704)
!741 = distinct !DISubprogram(name: "P1P1t_times_O", scope: !408, file: !408, line: 218, type: !459, scopeLine: 218, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !71)
!742 = !DILocalVariable(name: "p", arg: 1, scope: !741, file: !408, line: 218, type: !264)
!743 = !DILocation(line: 0, scope: !741)
!744 = !DILocalVariable(name: "P1", arg: 2, scope: !741, file: !408, line: 218, type: !411)
!745 = !DILocalVariable(name: "O", arg: 3, scope: !741, file: !408, line: 218, type: !90)
!746 = !DILocalVariable(name: "acc", arg: 4, scope: !741, file: !408, line: 218, type: !52)
!747 = !DILocalVariable(name: "param_o", scope: !741, file: !408, line: 222, type: !324)
!748 = !DILocalVariable(name: "param_v", scope: !741, file: !408, line: 223, type: !324)
!749 = !DILocalVariable(name: "m_vec_limbs", scope: !741, file: !408, line: 224, type: !324)
!750 = !DILocalVariable(name: "bs_mat_entries_used", scope: !741, file: !408, line: 226, type: !86)
!751 = !DILocalVariable(name: "r", scope: !752, file: !408, line: 227, type: !86)
!752 = distinct !DILexicalBlock(scope: !741, file: !408, line: 227, column: 5)
!753 = !DILocation(line: 0, scope: !752)
!754 = !DILocation(line: 227, column: 10, scope: !752)
!755 = !DILocation(line: 226, column: 9, scope: !741)
!756 = !DILocation(line: 227, scope: !752)
!757 = !DILocation(line: 227, column: 23, scope: !758)
!758 = distinct !DILexicalBlock(scope: !752, file: !408, line: 227, column: 5)
!759 = !DILocation(line: 227, column: 5, scope: !752)
!760 = !DILocation(line: 228, column: 9, scope: !761)
!761 = distinct !DILexicalBlock(scope: !762, file: !408, line: 228, column: 9)
!762 = distinct !DILexicalBlock(scope: !758, file: !408, line: 227, column: 39)
!763 = !DILocation(line: 228, scope: !761)
!764 = !DILocalVariable(name: "c", scope: !761, file: !408, line: 228, type: !86)
!765 = !DILocation(line: 0, scope: !761)
!766 = !DILocation(line: 228, column: 27, scope: !767)
!767 = distinct !DILexicalBlock(scope: !761, file: !408, line: 228, column: 9)
!768 = !DILocation(line: 229, column: 17, scope: !769)
!769 = distinct !DILexicalBlock(scope: !770, file: !408, line: 229, column: 16)
!770 = distinct !DILexicalBlock(scope: !767, file: !408, line: 228, column: 43)
!771 = !DILocation(line: 233, column: 13, scope: !772)
!772 = distinct !DILexicalBlock(scope: !770, file: !408, line: 233, column: 13)
!773 = !DILocation(line: 233, scope: !772)
!774 = !DILocalVariable(name: "k", scope: !772, file: !408, line: 233, type: !86)
!775 = !DILocation(line: 0, scope: !772)
!776 = !DILocation(line: 233, column: 31, scope: !777)
!777 = distinct !DILexicalBlock(scope: !772, file: !408, line: 233, column: 13)
!778 = !DILocation(line: 234, column: 47, scope: !779)
!779 = distinct !DILexicalBlock(scope: !777, file: !408, line: 233, column: 50)
!780 = !DILocation(line: 234, column: 88, scope: !779)
!781 = !DILocation(line: 234, column: 98, scope: !779)
!782 = !DILocation(line: 234, column: 84, scope: !779)
!783 = !DILocation(line: 234, column: 127, scope: !779)
!784 = !DILocation(line: 234, column: 137, scope: !779)
!785 = !DILocation(line: 234, column: 108, scope: !779)
!786 = !DILocation(line: 234, column: 17, scope: !779)
!787 = !DILocation(line: 235, column: 47, scope: !779)
!788 = !DILocation(line: 235, column: 88, scope: !779)
!789 = !DILocation(line: 235, column: 98, scope: !779)
!790 = !DILocation(line: 235, column: 84, scope: !779)
!791 = !DILocation(line: 235, column: 127, scope: !779)
!792 = !DILocation(line: 235, column: 137, scope: !779)
!793 = !DILocation(line: 235, column: 108, scope: !779)
!794 = !DILocation(line: 235, column: 17, scope: !779)
!795 = !DILocation(line: 233, column: 44, scope: !777)
!796 = !DILocation(line: 233, column: 13, scope: !777)
!797 = distinct !{!797, !771, !798, !388}
!798 = !DILocation(line: 236, column: 13, scope: !772)
!799 = !DILocation(line: 0, scope: !770)
!800 = !DILocation(line: 228, column: 39, scope: !767)
!801 = !DILocation(line: 228, column: 9, scope: !767)
!802 = distinct !{!802, !760, !803, !388}
!803 = !DILocation(line: 238, column: 9, scope: !761)
!804 = !DILocation(line: 227, column: 35, scope: !758)
!805 = !DILocation(line: 227, column: 5, scope: !758)
!806 = distinct !{!806, !759, !807, !388}
!807 = !DILocation(line: 239, column: 5, scope: !752)
!808 = !DILocation(line: 240, column: 1, scope: !741)
!809 = distinct !DISubprogram(name: "pqmayo_MAYO_1_ref_mayo_sign_signature", scope: !68, file: !68, line: 359, type: !810, scopeLine: 361, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !71)
!810 = !DISubroutineType(types: !811)
!811 = !{!86, !264, !61, !812, !90, !58, !90}
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 32)
!813 = !DILocalVariable(name: "p", arg: 1, scope: !809, file: !68, line: 359, type: !264)
!814 = !DILocation(line: 0, scope: !809)
!815 = !DILocalVariable(name: "sig", arg: 2, scope: !809, file: !68, line: 359, type: !61)
!816 = !DILocalVariable(name: "siglen", arg: 3, scope: !809, file: !68, line: 360, type: !812)
!817 = !DILocalVariable(name: "m", arg: 4, scope: !809, file: !68, line: 360, type: !90)
!818 = !DILocalVariable(name: "mlen", arg: 5, scope: !809, file: !68, line: 361, type: !58)
!819 = !DILocalVariable(name: "csk", arg: 6, scope: !809, file: !68, line: 361, type: !90)
!820 = !DILocalVariable(name: "ret", scope: !809, file: !68, line: 362, type: !86)
!821 = !DILocalVariable(name: "tenc", scope: !809, file: !68, line: 363, type: !822)
!822 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 312, elements: !39)
!823 = !DILocation(line: 363, column: 19, scope: !809)
!824 = !DILocalVariable(name: "t", scope: !809, file: !68, line: 363, type: !825)
!825 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 624, elements: !826)
!826 = !{!827}
!827 = !DISubrange(count: 78)
!828 = !DILocation(line: 363, column: 38, scope: !809)
!829 = !DILocalVariable(name: "y", scope: !809, file: !68, line: 364, type: !825)
!830 = !DILocation(line: 364, column: 19, scope: !809)
!831 = !DILocalVariable(name: "salt", scope: !809, file: !68, line: 365, type: !832)
!832 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 192, elements: !833)
!833 = !{!834}
!834 = !DISubrange(count: 24)
!835 = !DILocation(line: 365, column: 19, scope: !809)
!836 = !DILocalVariable(name: "V", scope: !809, file: !68, line: 366, type: !837)
!837 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 3440, elements: !838)
!838 = !{!839}
!839 = !DISubrange(count: 430)
!840 = !DILocation(line: 366, column: 19, scope: !809)
!841 = !DILocalVariable(name: "Vdec", scope: !809, file: !68, line: 366, type: !842)
!842 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 6240, elements: !843)
!843 = !{!844}
!844 = !DISubrange(count: 780)
!845 = !DILocation(line: 366, column: 57, scope: !809)
!846 = !DILocalVariable(name: "A", scope: !809, file: !68, line: 367, type: !847)
!847 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 51840, elements: !848)
!848 = !{!849}
!849 = !DISubrange(count: 6480)
!850 = !DILocation(line: 367, column: 19, scope: !809)
!851 = !DILocalVariable(name: "x", scope: !809, file: !68, line: 368, type: !852)
!852 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 6880, elements: !853)
!853 = !{!854}
!854 = !DISubrange(count: 860)
!855 = !DILocation(line: 368, column: 19, scope: !809)
!856 = !DILocalVariable(name: "r", scope: !809, file: !68, line: 369, type: !857)
!857 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 648, elements: !858)
!858 = !{!859}
!859 = !DISubrange(count: 81)
!860 = !DILocation(line: 369, column: 19, scope: !809)
!861 = !DILocalVariable(name: "s", scope: !809, file: !68, line: 370, type: !852)
!862 = !DILocation(line: 370, column: 19, scope: !809)
!863 = !DILocalVariable(name: "sk", scope: !809, file: !68, line: 372, type: !708, align: 256)
!864 = !DILocation(line: 372, column: 22, scope: !809)
!865 = !DILocalVariable(name: "Ox", scope: !809, file: !68, line: 373, type: !825)
!866 = !DILocation(line: 373, column: 19, scope: !809)
!867 = !DILocalVariable(name: "tmp", scope: !809, file: !68, line: 374, type: !857)
!868 = !DILocation(line: 374, column: 19, scope: !809)
!869 = !DILocalVariable(name: "param_m", scope: !809, file: !68, line: 378, type: !324)
!870 = !DILocalVariable(name: "param_n", scope: !809, file: !68, line: 379, type: !324)
!871 = !DILocalVariable(name: "param_o", scope: !809, file: !68, line: 380, type: !324)
!872 = !DILocalVariable(name: "param_k", scope: !809, file: !68, line: 381, type: !324)
!873 = !DILocalVariable(name: "param_v", scope: !809, file: !68, line: 382, type: !324)
!874 = !DILocalVariable(name: "param_m_bytes", scope: !809, file: !68, line: 383, type: !324)
!875 = !DILocalVariable(name: "param_v_bytes", scope: !809, file: !68, line: 384, type: !324)
!876 = !DILocalVariable(name: "param_r_bytes", scope: !809, file: !68, line: 385, type: !324)
!877 = !DILocalVariable(name: "param_sig_bytes", scope: !809, file: !68, line: 386, type: !324)
!878 = !DILocalVariable(name: "param_A_cols", scope: !809, file: !68, line: 387, type: !324)
!879 = !DILocalVariable(name: "param_digest_bytes", scope: !809, file: !68, line: 388, type: !324)
!880 = !DILocalVariable(name: "param_sk_seed_bytes", scope: !809, file: !68, line: 389, type: !324)
!881 = !DILocalVariable(name: "param_salt_bytes", scope: !809, file: !68, line: 390, type: !324)
!882 = !DILocation(line: 392, column: 11, scope: !809)
!883 = !DILocation(line: 393, column: 13, scope: !884)
!884 = distinct !DILexicalBlock(scope: !809, file: !68, line: 393, column: 9)
!885 = !DILocalVariable(name: "seed_sk", scope: !809, file: !68, line: 371, type: !90)
!886 = !DILocation(line: 401, column: 5, scope: !809)
!887 = !DILocalVariable(name: "P1", scope: !809, file: !68, line: 403, type: !52)
!888 = !DILocation(line: 404, column: 23, scope: !809)
!889 = !DILocalVariable(name: "L", scope: !809, file: !68, line: 404, type: !52)
!890 = !DILocalVariable(name: "Mtmp", scope: !809, file: !68, line: 405, type: !891)
!891 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 25600, elements: !892)
!892 = !{!893}
!893 = !DISubrange(count: 400)
!894 = !DILocation(line: 405, column: 14, scope: !809)
!895 = !DILocation(line: 420, column: 25, scope: !896)
!896 = distinct !DILexicalBlock(scope: !809, file: !68, line: 420, column: 9)
!897 = !DILocation(line: 420, column: 9, scope: !896)
!898 = !DILocation(line: 420, column: 65, scope: !896)
!899 = !DILocation(line: 427, column: 37, scope: !809)
!900 = !DILocation(line: 427, column: 5, scope: !809)
!901 = !DILocation(line: 429, column: 5, scope: !809)
!902 = !DILocation(line: 437, column: 16, scope: !809)
!903 = !DILocation(line: 437, column: 5, scope: !809)
!904 = !DILocation(line: 438, column: 59, scope: !809)
!905 = !DILocalVariable(name: "ctrbyte", scope: !809, file: !68, line: 375, type: !61)
!906 = !DILocation(line: 440, column: 5, scope: !809)
!907 = !DILocation(line: 442, column: 5, scope: !809)
!908 = !DILocalVariable(name: "ctr", scope: !909, file: !68, line: 444, type: !86)
!909 = distinct !DILexicalBlock(scope: !809, file: !68, line: 444, column: 5)
!910 = !DILocation(line: 0, scope: !909)
!911 = !DILocation(line: 466, column: 18, scope: !912)
!912 = distinct !DILexicalBlock(scope: !913, file: !68, line: 444, column: 42)
!913 = distinct !DILexicalBlock(scope: !909, file: !68, line: 444, column: 5)
!914 = !DILocation(line: 444, column: 10, scope: !909)
!915 = !DILocation(line: 444, scope: !909)
!916 = !DILocation(line: 444, column: 27, scope: !913)
!917 = !DILocation(line: 444, column: 5, scope: !909)
!918 = !DILocation(line: 445, column: 20, scope: !912)
!919 = !DILocation(line: 445, column: 18, scope: !912)
!920 = !DILocation(line: 447, column: 9, scope: !912)
!921 = !DILocalVariable(name: "i", scope: !922, file: !68, line: 451, type: !86)
!922 = distinct !DILexicalBlock(scope: !912, file: !68, line: 451, column: 9)
!923 = !DILocation(line: 0, scope: !922)
!924 = !DILocation(line: 451, column: 14, scope: !922)
!925 = !DILocation(line: 451, scope: !922)
!926 = !DILocation(line: 451, column: 27, scope: !927)
!927 = distinct !DILexicalBlock(scope: !922, file: !68, line: 451, column: 9)
!928 = !DILocation(line: 451, column: 9, scope: !922)
!929 = !DILocation(line: 452, column: 26, scope: !930)
!930 = distinct !DILexicalBlock(scope: !927, file: !68, line: 451, column: 48)
!931 = !DILocation(line: 452, column: 22, scope: !930)
!932 = !DILocation(line: 452, column: 52, scope: !930)
!933 = !DILocation(line: 452, column: 48, scope: !930)
!934 = !DILocation(line: 452, column: 13, scope: !930)
!935 = !DILocation(line: 451, column: 43, scope: !927)
!936 = !DILocation(line: 451, column: 9, scope: !927)
!937 = distinct !{!937, !928, !938, !388}
!938 = !DILocation(line: 453, column: 9, scope: !922)
!939 = !DILocation(line: 456, column: 9, scope: !912)
!940 = !DILocation(line: 458, column: 9, scope: !912)
!941 = !DILocation(line: 459, column: 9, scope: !912)
!942 = !DILocalVariable(name: "i", scope: !943, file: !68, line: 461, type: !86)
!943 = distinct !DILexicalBlock(scope: !912, file: !68, line: 461, column: 9)
!944 = !DILocation(line: 0, scope: !943)
!945 = !DILocation(line: 461, column: 14, scope: !943)
!946 = !DILocation(line: 461, scope: !943)
!947 = !DILocation(line: 461, column: 27, scope: !948)
!948 = distinct !DILexicalBlock(scope: !943, file: !68, line: 461, column: 9)
!949 = !DILocation(line: 461, column: 9, scope: !943)
!950 = !DILocation(line: 463, column: 20, scope: !951)
!951 = distinct !DILexicalBlock(scope: !948, file: !68, line: 462, column: 9)
!952 = !DILocation(line: 463, column: 43, scope: !951)
!953 = !DILocation(line: 463, column: 13, scope: !951)
!954 = !DILocation(line: 463, column: 48, scope: !951)
!955 = !DILocation(line: 461, column: 39, scope: !948)
!956 = !DILocation(line: 461, column: 9, scope: !948)
!957 = distinct !{!957, !949, !958, !388}
!958 = !DILocation(line: 464, column: 9, scope: !943)
!959 = !DILocation(line: 466, column: 9, scope: !912)
!960 = !DILocation(line: 470, column: 13, scope: !961)
!961 = distinct !DILexicalBlock(scope: !912, file: !68, line: 470, column: 13)
!962 = !DILocation(line: 473, column: 13, scope: !963)
!963 = distinct !DILexicalBlock(scope: !961, file: !68, line: 472, column: 16)
!964 = !DILocation(line: 474, column: 13, scope: !963)
!965 = !DILocation(line: 444, column: 35, scope: !913)
!966 = !DILocation(line: 444, column: 5, scope: !913)
!967 = distinct !{!967, !917, !968, !388}
!968 = !DILocation(line: 476, column: 5, scope: !909)
!969 = !DILocalVariable(name: "i", scope: !970, file: !68, line: 478, type: !86)
!970 = distinct !DILexicalBlock(scope: !809, file: !68, line: 478, column: 5)
!971 = !DILocation(line: 0, scope: !970)
!972 = !DILocation(line: 478, column: 10, scope: !970)
!973 = !DILocation(line: 478, scope: !970)
!974 = !DILocation(line: 478, column: 23, scope: !975)
!975 = distinct !DILexicalBlock(scope: !970, file: !68, line: 478, column: 5)
!976 = !DILocation(line: 478, column: 5, scope: !970)
!977 = !DILocation(line: 479, column: 23, scope: !978)
!978 = distinct !DILexicalBlock(scope: !975, file: !68, line: 478, column: 44)
!979 = !DILocation(line: 479, column: 19, scope: !978)
!980 = !DILocalVariable(name: "vi", scope: !809, file: !68, line: 376, type: !61)
!981 = !DILocation(line: 480, column: 20, scope: !978)
!982 = !DILocation(line: 480, column: 29, scope: !978)
!983 = !DILocation(line: 480, column: 25, scope: !978)
!984 = !DILocation(line: 480, column: 9, scope: !978)
!985 = !DILocation(line: 481, column: 31, scope: !978)
!986 = !DILocation(line: 481, column: 27, scope: !978)
!987 = !DILocation(line: 481, column: 9, scope: !978)
!988 = !DILocation(line: 482, column: 22, scope: !978)
!989 = !DILocation(line: 482, column: 18, scope: !978)
!990 = !DILocation(line: 482, column: 32, scope: !978)
!991 = !DILocation(line: 482, column: 61, scope: !978)
!992 = !DILocation(line: 482, column: 57, scope: !978)
!993 = !DILocation(line: 482, column: 9, scope: !978)
!994 = !DILocation(line: 478, column: 39, scope: !975)
!995 = !DILocation(line: 478, column: 5, scope: !975)
!996 = distinct !{!996, !976, !997, !388}
!997 = !DILocation(line: 483, column: 5, scope: !970)
!998 = !DILocation(line: 484, column: 5, scope: !809)
!999 = !DILocation(line: 486, column: 34, scope: !809)
!1000 = !DILocation(line: 486, column: 5, scope: !809)
!1001 = !DILocation(line: 487, column: 13, scope: !809)
!1002 = !DILocation(line: 487, column: 5, scope: !809)
!1003 = !DILabel(scope: !809, name: "err", file: !68, line: 489)
!1004 = !DILocation(line: 489, column: 1, scope: !809)
!1005 = !DILocation(line: 490, column: 5, scope: !809)
!1006 = !DILocation(line: 491, column: 5, scope: !809)
!1007 = !DILocation(line: 492, column: 5, scope: !809)
!1008 = !DILocation(line: 493, column: 5, scope: !809)
!1009 = !DILocation(line: 494, column: 26, scope: !809)
!1010 = !DILocation(line: 494, column: 5, scope: !809)
!1011 = !DILocation(line: 495, column: 5, scope: !809)
!1012 = !DILocation(line: 496, column: 5, scope: !809)
!1013 = !DILocation(line: 497, column: 5, scope: !809)
!1014 = !DILocation(line: 498, column: 5, scope: !809)
!1015 = !DILocation(line: 499, column: 5, scope: !809)
!1016 = distinct !DISubprogram(name: "compute_M_and_VPV", scope: !408, file: !408, line: 244, type: !1017, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !71)
!1017 = !DISubroutineType(types: !1018)
!1018 = !{null, !264, !90, !411, !411, !52, !52}
!1019 = !DILocalVariable(name: "p", arg: 1, scope: !1016, file: !408, line: 244, type: !264)
!1020 = !DILocation(line: 0, scope: !1016)
!1021 = !DILocalVariable(name: "Vdec", arg: 2, scope: !1016, file: !408, line: 244, type: !90)
!1022 = !DILocalVariable(name: "L", arg: 3, scope: !1016, file: !408, line: 244, type: !411)
!1023 = !DILocalVariable(name: "P1", arg: 4, scope: !1016, file: !408, line: 244, type: !411)
!1024 = !DILocalVariable(name: "VL", arg: 5, scope: !1016, file: !408, line: 244, type: !52)
!1025 = !DILocalVariable(name: "VP1V", arg: 6, scope: !1016, file: !408, line: 244, type: !52)
!1026 = !DILocalVariable(name: "param_k", scope: !1016, file: !408, line: 246, type: !324)
!1027 = !DILocalVariable(name: "param_v", scope: !1016, file: !408, line: 247, type: !324)
!1028 = !DILocalVariable(name: "param_o", scope: !1016, file: !408, line: 248, type: !324)
!1029 = !DILocation(line: 251, column: 5, scope: !1016)
!1030 = !DILocalVariable(name: "Pv", scope: !1016, file: !408, line: 254, type: !1031)
!1031 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 249600, elements: !1032)
!1032 = !{!1033}
!1033 = !DISubrange(count: 3900)
!1034 = !DILocation(line: 254, column: 14, scope: !1016)
!1035 = !DILocation(line: 255, column: 5, scope: !1016)
!1036 = !DILocation(line: 256, column: 5, scope: !1016)
!1037 = !DILocation(line: 257, column: 1, scope: !1016)
!1038 = distinct !DISubprogram(name: "compute_rhs", scope: !68, file: !68, line: 43, type: !1039, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !71)
!1039 = !DISubroutineType(types: !1040)
!1040 = !{null, !264, !52, !90, !61}
!1041 = !DILocalVariable(name: "p", arg: 1, scope: !1038, file: !68, line: 43, type: !264)
!1042 = !DILocation(line: 0, scope: !1038)
!1043 = !DILocalVariable(name: "vPv", arg: 2, scope: !1038, file: !68, line: 43, type: !52)
!1044 = !DILocalVariable(name: "t", arg: 3, scope: !1038, file: !68, line: 43, type: !90)
!1045 = !DILocalVariable(name: "y", arg: 4, scope: !1038, file: !68, line: 43, type: !61)
!1046 = !DILocalVariable(name: "top_pos", scope: !1038, file: !68, line: 48, type: !1047)
!1047 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!1048 = !DILocalVariable(name: "m_vec_limbs", scope: !1038, file: !68, line: 49, type: !1047)
!1049 = !DILocalVariable(name: "mask", scope: !1050, file: !68, line: 53, type: !53)
!1050 = distinct !DILexicalBlock(scope: !1051, file: !68, line: 52, column: 29)
!1051 = distinct !DILexicalBlock(scope: !1038, file: !68, line: 52, column: 8)
!1052 = !DILocation(line: 0, scope: !1050)
!1053 = !DILocalVariable(name: "i", scope: !1054, file: !68, line: 56, type: !86)
!1054 = distinct !DILexicalBlock(scope: !1050, file: !68, line: 56, column: 9)
!1055 = !DILocation(line: 0, scope: !1054)
!1056 = !DILocation(line: 56, column: 14, scope: !1054)
!1057 = !DILocation(line: 56, scope: !1054)
!1058 = !DILocation(line: 56, column: 27, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1054, file: !68, line: 56, column: 9)
!1060 = !DILocation(line: 56, column: 9, scope: !1054)
!1061 = !DILocation(line: 58, column: 13, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1059, file: !68, line: 57, column: 9)
!1063 = !DILocation(line: 58, column: 50, scope: !1062)
!1064 = !DILocation(line: 56, column: 53, scope: !1059)
!1065 = !DILocation(line: 56, column: 9, scope: !1059)
!1066 = distinct !{!1066, !1060, !1067, !388}
!1067 = !DILocation(line: 59, column: 9, scope: !1054)
!1068 = !DILocalVariable(name: "temp", scope: !1038, file: !68, line: 62, type: !677)
!1069 = !DILocation(line: 62, column: 14, scope: !1038)
!1070 = !DILocalVariable(name: "temp_bytes", scope: !1038, file: !68, line: 63, type: !61)
!1071 = !DILocalVariable(name: "i", scope: !1072, file: !68, line: 64, type: !86)
!1072 = distinct !DILexicalBlock(scope: !1038, file: !68, line: 64, column: 5)
!1073 = !DILocation(line: 0, scope: !1072)
!1074 = !DILocation(line: 64, column: 10, scope: !1072)
!1075 = !DILocation(line: 64, scope: !1072)
!1076 = !DILocation(line: 64, column: 36, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !1072, file: !68, line: 64, column: 5)
!1078 = !DILocation(line: 64, column: 5, scope: !1072)
!1079 = !DILocation(line: 65, column: 9, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1081, file: !68, line: 65, column: 9)
!1081 = distinct !DILexicalBlock(scope: !1077, file: !68, line: 64, column: 48)
!1082 = !DILocation(line: 99, column: 5, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1038, file: !68, line: 99, column: 5)
!1084 = !DILocation(line: 65, scope: !1080)
!1085 = !DILocalVariable(name: "j", scope: !1080, file: !68, line: 65, type: !86)
!1086 = !DILocation(line: 0, scope: !1080)
!1087 = !DILocation(line: 65, column: 27, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1080, file: !68, line: 65, column: 9)
!1089 = !DILocation(line: 67, column: 34, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1088, file: !68, line: 65, column: 46)
!1091 = !DILocation(line: 67, column: 54, scope: !1090)
!1092 = !DILocation(line: 67, column: 33, scope: !1090)
!1093 = !DILocalVariable(name: "top", scope: !1090, file: !68, line: 67, type: !51)
!1094 = !DILocation(line: 0, scope: !1090)
!1095 = !DILocation(line: 68, column: 13, scope: !1090)
!1096 = !DILocation(line: 68, column: 33, scope: !1090)
!1097 = !DILocalVariable(name: "k", scope: !1098, file: !68, line: 69, type: !86)
!1098 = distinct !DILexicalBlock(scope: !1090, file: !68, line: 69, column: 13)
!1099 = !DILocation(line: 0, scope: !1098)
!1100 = !DILocation(line: 69, column: 17, scope: !1098)
!1101 = !DILocation(line: 69, scope: !1098)
!1102 = !DILocation(line: 69, column: 43, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1098, file: !68, line: 69, column: 13)
!1104 = !DILocation(line: 69, column: 13, scope: !1098)
!1105 = !DILocation(line: 74, column: 13, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1090, file: !68, line: 74, column: 13)
!1107 = !DILocation(line: 70, column: 30, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1103, file: !68, line: 69, column: 52)
!1109 = !DILocation(line: 70, column: 38, scope: !1108)
!1110 = !DILocation(line: 70, column: 23, scope: !1108)
!1111 = !DILocation(line: 70, column: 17, scope: !1108)
!1112 = !DILocation(line: 70, column: 27, scope: !1108)
!1113 = !DILocation(line: 71, column: 17, scope: !1108)
!1114 = !DILocation(line: 71, column: 25, scope: !1108)
!1115 = !DILocation(line: 69, column: 49, scope: !1103)
!1116 = !DILocation(line: 69, column: 13, scope: !1103)
!1117 = distinct !{!1117, !1104, !1118, !388}
!1118 = !DILocation(line: 72, column: 13, scope: !1098)
!1119 = !DILocation(line: 74, scope: !1106)
!1120 = !DILocalVariable(name: "jj", scope: !1106, file: !68, line: 74, type: !86)
!1121 = !DILocation(line: 0, scope: !1106)
!1122 = !DILocation(line: 74, column: 33, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1106, file: !68, line: 74, column: 13)
!1124 = !DILocation(line: 92, column: 13, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1090, file: !68, line: 92, column: 13)
!1126 = !DILocation(line: 75, column: 22, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1128, file: !68, line: 75, column: 20)
!1128 = distinct !DILexicalBlock(scope: !1123, file: !68, line: 74, column: 53)
!1129 = !DILocation(line: 75, column: 25, scope: !1127)
!1130 = !DILocation(line: 79, column: 52, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1127, file: !68, line: 75, column: 30)
!1132 = !DILocation(line: 79, column: 41, scope: !1131)
!1133 = !DILocation(line: 79, column: 34, scope: !1131)
!1134 = !DILocation(line: 79, column: 21, scope: !1131)
!1135 = !DILocation(line: 79, column: 38, scope: !1131)
!1136 = !DILocation(line: 81, column: 17, scope: !1131)
!1137 = !DILocation(line: 86, column: 52, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !1127, file: !68, line: 82, column: 22)
!1139 = !DILocation(line: 86, column: 41, scope: !1138)
!1140 = !DILocation(line: 86, column: 73, scope: !1138)
!1141 = !DILocation(line: 86, column: 34, scope: !1138)
!1142 = !DILocation(line: 86, column: 21, scope: !1138)
!1143 = !DILocation(line: 86, column: 38, scope: !1138)
!1144 = !DILocation(line: 74, column: 49, scope: !1123)
!1145 = !DILocation(line: 74, column: 13, scope: !1123)
!1146 = distinct !{!1146, !1105, !1147, !388}
!1147 = !DILocation(line: 89, column: 13, scope: !1106)
!1148 = !DILocation(line: 92, scope: !1125)
!1149 = !DILocalVariable(name: "k", scope: !1125, file: !68, line: 92, type: !58)
!1150 = !DILocation(line: 0, scope: !1125)
!1151 = !DILocation(line: 92, column: 31, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1125, file: !68, line: 92, column: 13)
!1153 = !DILocation(line: 93, column: 36, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !1152, file: !68, line: 92, column: 51)
!1155 = !DILocation(line: 93, column: 49, scope: !1154)
!1156 = !DILocation(line: 93, column: 28, scope: !1154)
!1157 = !DILocation(line: 93, column: 78, scope: !1154)
!1158 = !DILocation(line: 93, column: 91, scope: !1154)
!1159 = !DILocation(line: 93, column: 104, scope: !1154)
!1160 = !DILocation(line: 93, column: 83, scope: !1154)
!1161 = !DILocation(line: 93, column: 82, scope: !1154)
!1162 = !DILocation(line: 93, column: 73, scope: !1154)
!1163 = !DILocation(line: 93, column: 17, scope: !1154)
!1164 = !DILocation(line: 93, column: 25, scope: !1154)
!1165 = !DILocation(line: 92, column: 48, scope: !1152)
!1166 = !DILocation(line: 92, column: 13, scope: !1152)
!1167 = distinct !{!1167, !1124, !1168, !388}
!1168 = !DILocation(line: 94, column: 13, scope: !1125)
!1169 = !DILocation(line: 65, column: 42, scope: !1088)
!1170 = !DILocation(line: 65, column: 9, scope: !1088)
!1171 = distinct !{!1171, !1079, !1172, !388}
!1172 = !DILocation(line: 95, column: 9, scope: !1080)
!1173 = !DILocation(line: 64, column: 44, scope: !1077)
!1174 = !DILocation(line: 64, column: 5, scope: !1077)
!1175 = distinct !{!1175, !1078, !1176, !388}
!1176 = !DILocation(line: 96, column: 5, scope: !1072)
!1177 = !DILocation(line: 99, scope: !1083)
!1178 = !DILocalVariable(name: "i", scope: !1083, file: !68, line: 99, type: !86)
!1179 = !DILocation(line: 0, scope: !1083)
!1180 = !DILocation(line: 99, column: 23, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !1083, file: !68, line: 99, column: 5)
!1182 = !DILocation(line: 105, column: 18, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1181, file: !68, line: 100, column: 5)
!1184 = !DILocation(line: 105, column: 40, scope: !1183)
!1185 = !DILocation(line: 105, column: 28, scope: !1183)
!1186 = !DILocation(line: 105, column: 44, scope: !1183)
!1187 = !DILocation(line: 105, column: 25, scope: !1183)
!1188 = !DILocation(line: 105, column: 9, scope: !1183)
!1189 = !DILocation(line: 105, column: 16, scope: !1183)
!1190 = !DILocation(line: 106, column: 21, scope: !1183)
!1191 = !DILocation(line: 106, column: 18, scope: !1183)
!1192 = !DILocation(line: 106, column: 40, scope: !1183)
!1193 = !DILocation(line: 106, column: 28, scope: !1183)
!1194 = !DILocation(line: 106, column: 44, scope: !1183)
!1195 = !DILocation(line: 106, column: 25, scope: !1183)
!1196 = !DILocation(line: 106, column: 12, scope: !1183)
!1197 = !DILocation(line: 106, column: 9, scope: !1183)
!1198 = !DILocation(line: 106, column: 16, scope: !1183)
!1199 = !DILocation(line: 99, column: 38, scope: !1181)
!1200 = !DILocation(line: 99, column: 5, scope: !1181)
!1201 = distinct !{!1201, !1082, !1202, !388}
!1202 = !DILocation(line: 108, column: 5, scope: !1083)
!1203 = !DILocation(line: 109, column: 1, scope: !1038)
!1204 = distinct !DISubprogram(name: "compute_A", scope: !68, file: !68, line: 154, type: !1205, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !71)
!1205 = !DISubroutineType(types: !1206)
!1206 = !{null, !264, !52, !61}
!1207 = !DILocalVariable(name: "p", arg: 1, scope: !1204, file: !68, line: 154, type: !264)
!1208 = !DILocation(line: 0, scope: !1204)
!1209 = !DILocalVariable(name: "VtL", arg: 2, scope: !1204, file: !68, line: 154, type: !52)
!1210 = !DILocalVariable(name: "A_out", arg: 3, scope: !1204, file: !68, line: 154, type: !61)
!1211 = !DILocalVariable(name: "bits_to_shift", scope: !1204, file: !68, line: 159, type: !86)
!1212 = !DILocalVariable(name: "words_to_shift", scope: !1204, file: !68, line: 160, type: !86)
!1213 = !DILocalVariable(name: "m_vec_limbs", scope: !1204, file: !68, line: 161, type: !324)
!1214 = !DILocalVariable(name: "A", scope: !1204, file: !68, line: 162, type: !1215)
!1215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 51200, elements: !1216)
!1216 = !{!1217}
!1217 = !DISubrange(count: 800)
!1218 = !DILocation(line: 162, column: 14, scope: !1204)
!1219 = !DILocalVariable(name: "A_width", scope: !1204, file: !68, line: 163, type: !58)
!1220 = !DILocalVariable(name: "mask", scope: !1221, file: !68, line: 168, type: !53)
!1221 = distinct !DILexicalBlock(scope: !1222, file: !68, line: 167, column: 29)
!1222 = distinct !DILexicalBlock(scope: !1204, file: !68, line: 167, column: 8)
!1223 = !DILocation(line: 0, scope: !1221)
!1224 = !DILocalVariable(name: "i", scope: !1225, file: !68, line: 171, type: !86)
!1225 = distinct !DILexicalBlock(scope: !1221, file: !68, line: 171, column: 9)
!1226 = !DILocation(line: 0, scope: !1225)
!1227 = !DILocation(line: 171, column: 14, scope: !1225)
!1228 = !DILocation(line: 171, scope: !1225)
!1229 = !DILocation(line: 171, column: 27, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1225, file: !68, line: 171, column: 9)
!1231 = !DILocation(line: 171, column: 9, scope: !1225)
!1232 = !DILocation(line: 177, column: 5, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1204, file: !68, line: 177, column: 5)
!1234 = !DILocation(line: 173, column: 13, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1230, file: !68, line: 172, column: 9)
!1236 = !DILocation(line: 173, column: 50, scope: !1235)
!1237 = !DILocation(line: 171, column: 53, scope: !1230)
!1238 = !DILocation(line: 171, column: 9, scope: !1230)
!1239 = distinct !{!1239, !1231, !1240, !388}
!1240 = !DILocation(line: 174, column: 9, scope: !1225)
!1241 = !DILocation(line: 177, scope: !1233)
!1242 = !DILocation(line: 160, column: 9, scope: !1204)
!1243 = !DILocation(line: 159, column: 9, scope: !1204)
!1244 = !DILocalVariable(name: "i", scope: !1233, file: !68, line: 177, type: !86)
!1245 = !DILocation(line: 0, scope: !1233)
!1246 = !DILocation(line: 177, column: 23, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1233, file: !68, line: 177, column: 5)
!1248 = !DILocation(line: 178, column: 9, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1250, file: !68, line: 178, column: 9)
!1250 = distinct !DILexicalBlock(scope: !1247, file: !68, line: 177, column: 47)
!1251 = !DILocation(line: 212, column: 5, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1204, file: !68, line: 212, column: 5)
!1253 = !DILocation(line: 178, scope: !1249)
!1254 = !DILocalVariable(name: "j", scope: !1249, file: !68, line: 178, type: !86)
!1255 = !DILocation(line: 0, scope: !1249)
!1256 = !DILocation(line: 178, column: 40, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1249, file: !68, line: 178, column: 9)
!1258 = !DILocation(line: 180, column: 22, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1257, file: !68, line: 178, column: 51)
!1260 = !DILocalVariable(name: "Mj", scope: !1204, file: !68, line: 164, type: !411)
!1261 = !DILocalVariable(name: "c", scope: !1262, file: !68, line: 181, type: !86)
!1262 = distinct !DILexicalBlock(scope: !1259, file: !68, line: 181, column: 13)
!1263 = !DILocation(line: 0, scope: !1262)
!1264 = !DILocation(line: 181, column: 18, scope: !1262)
!1265 = !DILocation(line: 181, scope: !1262)
!1266 = !DILocation(line: 181, column: 31, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !1262, file: !68, line: 181, column: 13)
!1268 = !DILocation(line: 181, column: 13, scope: !1262)
!1269 = !DILocation(line: 182, column: 17, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1271, file: !68, line: 182, column: 17)
!1271 = distinct !DILexicalBlock(scope: !1267, file: !68, line: 181, column: 50)
!1272 = !DILocation(line: 182, scope: !1270)
!1273 = !DILocalVariable(name: "k", scope: !1270, file: !68, line: 182, type: !86)
!1274 = !DILocation(line: 0, scope: !1270)
!1275 = !DILocation(line: 182, column: 35, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1270, file: !68, line: 182, column: 17)
!1277 = !DILocation(line: 184, column: 78, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !1276, file: !68, line: 183, column: 17)
!1279 = !DILocation(line: 184, column: 100, scope: !1278)
!1280 = !DILocation(line: 184, column: 35, scope: !1278)
!1281 = !DILocation(line: 184, column: 39, scope: !1278)
!1282 = !DILocation(line: 184, column: 48, scope: !1278)
!1283 = !DILocation(line: 184, column: 65, scope: !1278)
!1284 = !DILocation(line: 184, column: 43, scope: !1278)
!1285 = !DILocation(line: 184, column: 21, scope: !1278)
!1286 = !DILocation(line: 184, column: 75, scope: !1278)
!1287 = !DILocation(line: 185, column: 38, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1278, file: !68, line: 185, column: 24)
!1289 = !DILocation(line: 186, column: 86, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1288, file: !68, line: 185, column: 42)
!1291 = !DILocation(line: 186, column: 114, scope: !1290)
!1292 = !DILocation(line: 186, column: 108, scope: !1290)
!1293 = !DILocation(line: 186, column: 39, scope: !1290)
!1294 = !DILocation(line: 186, column: 43, scope: !1290)
!1295 = !DILocation(line: 186, column: 52, scope: !1290)
!1296 = !DILocation(line: 186, column: 73, scope: !1290)
!1297 = !DILocation(line: 186, column: 47, scope: !1290)
!1298 = !DILocation(line: 186, column: 25, scope: !1290)
!1299 = !DILocation(line: 186, column: 83, scope: !1290)
!1300 = !DILocation(line: 187, column: 21, scope: !1290)
!1301 = !DILocation(line: 182, column: 51, scope: !1276)
!1302 = !DILocation(line: 182, column: 17, scope: !1276)
!1303 = distinct !{!1303, !1269, !1304, !388}
!1304 = !DILocation(line: 188, column: 17, scope: !1270)
!1305 = !DILocation(line: 181, column: 46, scope: !1267)
!1306 = !DILocation(line: 181, column: 13, scope: !1267)
!1307 = distinct !{!1307, !1268, !1308, !388}
!1308 = !DILocation(line: 189, column: 13, scope: !1262)
!1309 = !DILocation(line: 191, column: 19, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1259, file: !68, line: 191, column: 17)
!1311 = !DILocation(line: 192, column: 26, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1310, file: !68, line: 191, column: 25)
!1313 = !DILocalVariable(name: "Mi", scope: !1204, file: !68, line: 164, type: !411)
!1314 = !DILocalVariable(name: "c", scope: !1315, file: !68, line: 193, type: !86)
!1315 = distinct !DILexicalBlock(scope: !1312, file: !68, line: 193, column: 17)
!1316 = !DILocation(line: 0, scope: !1315)
!1317 = !DILocation(line: 193, column: 22, scope: !1315)
!1318 = !DILocation(line: 193, scope: !1315)
!1319 = !DILocation(line: 193, column: 35, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1315, file: !68, line: 193, column: 17)
!1321 = !DILocation(line: 193, column: 17, scope: !1315)
!1322 = !DILocation(line: 194, column: 21, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1324, file: !68, line: 194, column: 21)
!1324 = distinct !DILexicalBlock(scope: !1320, file: !68, line: 193, column: 54)
!1325 = !DILocation(line: 194, scope: !1323)
!1326 = !DILocalVariable(name: "k", scope: !1323, file: !68, line: 194, type: !86)
!1327 = !DILocation(line: 0, scope: !1323)
!1328 = !DILocation(line: 194, column: 39, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1323, file: !68, line: 194, column: 21)
!1330 = !DILocation(line: 196, column: 81, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1329, file: !68, line: 195, column: 21)
!1332 = !DILocation(line: 196, column: 103, scope: !1331)
!1333 = !DILocation(line: 196, column: 38, scope: !1331)
!1334 = !DILocation(line: 196, column: 42, scope: !1331)
!1335 = !DILocation(line: 196, column: 51, scope: !1331)
!1336 = !DILocation(line: 196, column: 68, scope: !1331)
!1337 = !DILocation(line: 196, column: 46, scope: !1331)
!1338 = !DILocation(line: 196, column: 25, scope: !1331)
!1339 = !DILocation(line: 196, column: 78, scope: !1331)
!1340 = !DILocation(line: 197, column: 42, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1331, file: !68, line: 197, column: 28)
!1342 = !DILocation(line: 198, column: 89, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1341, file: !68, line: 197, column: 46)
!1344 = !DILocation(line: 198, column: 117, scope: !1343)
!1345 = !DILocation(line: 198, column: 111, scope: !1343)
!1346 = !DILocation(line: 198, column: 42, scope: !1343)
!1347 = !DILocation(line: 198, column: 46, scope: !1343)
!1348 = !DILocation(line: 198, column: 55, scope: !1343)
!1349 = !DILocation(line: 198, column: 76, scope: !1343)
!1350 = !DILocation(line: 198, column: 50, scope: !1343)
!1351 = !DILocation(line: 198, column: 29, scope: !1343)
!1352 = !DILocation(line: 198, column: 86, scope: !1343)
!1353 = !DILocation(line: 199, column: 25, scope: !1343)
!1354 = !DILocation(line: 194, column: 55, scope: !1329)
!1355 = !DILocation(line: 194, column: 21, scope: !1329)
!1356 = distinct !{!1356, !1322, !1357, !388}
!1357 = !DILocation(line: 200, column: 21, scope: !1323)
!1358 = !DILocation(line: 193, column: 50, scope: !1320)
!1359 = !DILocation(line: 193, column: 17, scope: !1320)
!1360 = distinct !{!1360, !1321, !1361, !388}
!1361 = !DILocation(line: 201, column: 17, scope: !1315)
!1362 = !DILocation(line: 204, column: 27, scope: !1259)
!1363 = !DILocation(line: 205, column: 30, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !1259, file: !68, line: 205, column: 16)
!1365 = !DILocation(line: 178, column: 46, scope: !1257)
!1366 = !DILocation(line: 178, column: 9, scope: !1257)
!1367 = distinct !{!1367, !1248, !1368, !388}
!1368 = !DILocation(line: 209, column: 9, scope: !1249)
!1369 = !DILocation(line: 177, column: 42, scope: !1247)
!1370 = !DILocation(line: 177, column: 5, scope: !1247)
!1371 = distinct !{!1371, !1232, !1372, !388}
!1372 = !DILocation(line: 210, column: 5, scope: !1233)
!1373 = !DILocation(line: 212, scope: !1252)
!1374 = !DILocalVariable(name: "c", scope: !1252, file: !68, line: 212, type: !58)
!1375 = !DILocation(line: 0, scope: !1252)
!1376 = !DILocation(line: 212, column: 26, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1252, file: !68, line: 212, column: 5)
!1378 = !DILocation(line: 214, column: 35, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1377, file: !68, line: 213, column: 5)
!1380 = !DILocation(line: 214, column: 9, scope: !1379)
!1381 = !DILocation(line: 212, column: 91, scope: !1377)
!1382 = !DILocation(line: 212, column: 5, scope: !1377)
!1383 = distinct !{!1383, !1251, !1384, !388}
!1384 = !DILocation(line: 215, column: 5, scope: !1252)
!1385 = !DILocalVariable(name: "tab", scope: !1204, file: !68, line: 217, type: !1386)
!1386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 128, elements: !1387)
!1387 = !{!1388}
!1388 = !DISubrange(count: 16)
!1389 = !DILocation(line: 217, column: 19, scope: !1204)
!1390 = !DILocalVariable(name: "i", scope: !1391, file: !68, line: 218, type: !58)
!1391 = distinct !DILexicalBlock(scope: !1204, file: !68, line: 218, column: 5)
!1392 = !DILocation(line: 0, scope: !1391)
!1393 = !DILocation(line: 218, column: 10, scope: !1391)
!1394 = !DILocation(line: 218, scope: !1391)
!1395 = !DILocation(line: 218, column: 26, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1391, file: !68, line: 218, column: 5)
!1397 = !DILocation(line: 218, column: 5, scope: !1391)
!1398 = !DILocation(line: 228, column: 5, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1204, file: !68, line: 228, column: 5)
!1400 = !DILocation(line: 220, column: 28, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !1396, file: !68, line: 219, column: 5)
!1402 = !DILocation(line: 220, column: 22, scope: !1401)
!1403 = !DILocation(line: 220, column: 14, scope: !1401)
!1404 = !DILocation(line: 220, column: 9, scope: !1401)
!1405 = !DILocation(line: 220, column: 20, scope: !1401)
!1406 = !DILocation(line: 221, column: 22, scope: !1401)
!1407 = !DILocation(line: 221, column: 14, scope: !1401)
!1408 = !DILocation(line: 221, column: 16, scope: !1401)
!1409 = !DILocation(line: 221, column: 9, scope: !1401)
!1410 = !DILocation(line: 221, column: 20, scope: !1401)
!1411 = !DILocation(line: 222, column: 28, scope: !1401)
!1412 = !DILocation(line: 222, column: 22, scope: !1401)
!1413 = !DILocation(line: 222, column: 14, scope: !1401)
!1414 = !DILocation(line: 222, column: 16, scope: !1401)
!1415 = !DILocation(line: 222, column: 9, scope: !1401)
!1416 = !DILocation(line: 222, column: 20, scope: !1401)
!1417 = !DILocation(line: 223, column: 28, scope: !1401)
!1418 = !DILocation(line: 223, column: 22, scope: !1401)
!1419 = !DILocation(line: 223, column: 14, scope: !1401)
!1420 = !DILocation(line: 223, column: 16, scope: !1401)
!1421 = !DILocation(line: 223, column: 9, scope: !1401)
!1422 = !DILocation(line: 223, column: 20, scope: !1401)
!1423 = !DILocation(line: 218, column: 41, scope: !1396)
!1424 = !DILocation(line: 218, column: 5, scope: !1396)
!1425 = distinct !{!1425, !1397, !1426, !388}
!1426 = !DILocation(line: 224, column: 5, scope: !1391)
!1427 = !DILocation(line: 228, scope: !1399)
!1428 = !DILocalVariable(name: "c", scope: !1399, file: !68, line: 228, type: !58)
!1429 = !DILocation(line: 0, scope: !1399)
!1430 = !DILocation(line: 228, column: 26, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1399, file: !68, line: 228, column: 5)
!1432 = !DILocation(line: 230, column: 9, scope: !1433)
!1433 = distinct !DILexicalBlock(scope: !1434, file: !68, line: 230, column: 9)
!1434 = distinct !DILexicalBlock(scope: !1431, file: !68, line: 229, column: 5)
!1435 = !DILocation(line: 250, column: 5, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1204, file: !68, line: 250, column: 5)
!1437 = !DILocation(line: 230, scope: !1433)
!1438 = !DILocalVariable(name: "r", scope: !1433, file: !68, line: 230, type: !86)
!1439 = !DILocation(line: 0, scope: !1433)
!1440 = !DILocation(line: 230, column: 36, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1433, file: !68, line: 230, column: 9)
!1442 = !DILocation(line: 232, column: 28, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1441, file: !68, line: 231, column: 9)
!1444 = !DILocation(line: 232, column: 32, scope: !1443)
!1445 = !DILocation(line: 232, column: 41, scope: !1443)
!1446 = !DILocation(line: 232, column: 49, scope: !1443)
!1447 = !DILocation(line: 232, column: 45, scope: !1443)
!1448 = !DILocalVariable(name: "pos", scope: !1443, file: !68, line: 232, type: !58)
!1449 = !DILocation(line: 0, scope: !1443)
!1450 = !DILocation(line: 233, column: 28, scope: !1443)
!1451 = !DILocation(line: 233, column: 41, scope: !1443)
!1452 = !DILocalVariable(name: "t0", scope: !1443, file: !68, line: 233, type: !53)
!1453 = !DILocation(line: 234, column: 35, scope: !1443)
!1454 = !DILocation(line: 234, column: 41, scope: !1443)
!1455 = !DILocalVariable(name: "t1", scope: !1443, file: !68, line: 234, type: !53)
!1456 = !DILocation(line: 235, column: 35, scope: !1443)
!1457 = !DILocation(line: 235, column: 41, scope: !1443)
!1458 = !DILocalVariable(name: "t2", scope: !1443, file: !68, line: 235, type: !53)
!1459 = !DILocation(line: 236, column: 28, scope: !1443)
!1460 = !DILocation(line: 236, column: 35, scope: !1443)
!1461 = !DILocation(line: 236, column: 41, scope: !1443)
!1462 = !DILocalVariable(name: "t3", scope: !1443, file: !68, line: 236, type: !53)
!1463 = !DILocalVariable(name: "t", scope: !1464, file: !68, line: 237, type: !58)
!1464 = distinct !DILexicalBlock(scope: !1443, file: !68, line: 237, column: 13)
!1465 = !DILocation(line: 0, scope: !1464)
!1466 = !DILocation(line: 237, column: 18, scope: !1464)
!1467 = !DILocation(line: 237, scope: !1464)
!1468 = !DILocation(line: 237, column: 34, scope: !1469)
!1469 = distinct !DILexicalBlock(scope: !1464, file: !68, line: 237, column: 13)
!1470 = !DILocation(line: 237, column: 13, scope: !1464)
!1471 = !DILocation(line: 239, column: 89, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1469, file: !68, line: 238, column: 13)
!1473 = !DILocation(line: 239, column: 84, scope: !1472)
!1474 = !DILocation(line: 239, column: 83, scope: !1472)
!1475 = !DILocation(line: 239, column: 105, scope: !1472)
!1476 = !DILocation(line: 239, column: 107, scope: !1472)
!1477 = !DILocation(line: 239, column: 100, scope: !1472)
!1478 = !DILocation(line: 239, column: 99, scope: !1472)
!1479 = !DILocation(line: 239, column: 95, scope: !1472)
!1480 = !DILocation(line: 239, column: 121, scope: !1472)
!1481 = !DILocation(line: 239, column: 123, scope: !1472)
!1482 = !DILocation(line: 239, column: 116, scope: !1472)
!1483 = !DILocation(line: 239, column: 115, scope: !1472)
!1484 = !DILocation(line: 239, column: 111, scope: !1472)
!1485 = !DILocation(line: 239, column: 137, scope: !1472)
!1486 = !DILocation(line: 239, column: 139, scope: !1472)
!1487 = !DILocation(line: 239, column: 132, scope: !1472)
!1488 = !DILocation(line: 239, column: 131, scope: !1472)
!1489 = !DILocation(line: 239, column: 127, scope: !1472)
!1490 = !DILocation(line: 239, column: 22, scope: !1472)
!1491 = !DILocation(line: 239, column: 24, scope: !1472)
!1492 = !DILocation(line: 239, column: 36, scope: !1472)
!1493 = !DILocation(line: 239, column: 40, scope: !1472)
!1494 = !DILocation(line: 239, column: 49, scope: !1472)
!1495 = !DILocation(line: 239, column: 58, scope: !1472)
!1496 = !DILocation(line: 239, column: 60, scope: !1472)
!1497 = !DILocation(line: 239, column: 72, scope: !1472)
!1498 = !DILocation(line: 239, column: 53, scope: !1472)
!1499 = !DILocation(line: 239, column: 17, scope: !1472)
!1500 = !DILocation(line: 239, column: 78, scope: !1472)
!1501 = !DILocation(line: 237, column: 49, scope: !1469)
!1502 = !DILocation(line: 237, column: 13, scope: !1469)
!1503 = distinct !{!1503, !1470, !1504, !388}
!1504 = !DILocation(line: 240, column: 13, scope: !1464)
!1505 = !DILocation(line: 230, column: 82, scope: !1441)
!1506 = !DILocation(line: 230, column: 9, scope: !1441)
!1507 = distinct !{!1507, !1432, !1508, !388}
!1508 = !DILocation(line: 241, column: 9, scope: !1433)
!1509 = !DILocation(line: 228, column: 38, scope: !1431)
!1510 = !DILocation(line: 228, column: 5, scope: !1431)
!1511 = distinct !{!1511, !1398, !1512, !388}
!1512 = !DILocation(line: 242, column: 5, scope: !1399)
!1513 = !DILocation(line: 250, scope: !1436)
!1514 = !DILocalVariable(name: "r", scope: !1436, file: !68, line: 250, type: !86)
!1515 = !DILocation(line: 0, scope: !1436)
!1516 = !DILocation(line: 250, column: 23, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1436, file: !68, line: 250, column: 5)
!1518 = !DILocation(line: 252, column: 9, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !1520, file: !68, line: 252, column: 9)
!1520 = distinct !DILexicalBlock(scope: !1517, file: !68, line: 251, column: 5)
!1521 = !DILocation(line: 252, scope: !1519)
!1522 = !DILocalVariable(name: "c", scope: !1519, file: !68, line: 252, type: !86)
!1523 = !DILocation(line: 0, scope: !1519)
!1524 = !DILocation(line: 252, column: 27, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !1519, file: !68, line: 252, column: 9)
!1526 = !DILocation(line: 254, column: 13, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1528, file: !68, line: 254, column: 13)
!1528 = distinct !DILexicalBlock(scope: !1525, file: !68, line: 253, column: 9)
!1529 = !DILocation(line: 254, scope: !1527)
!1530 = !DILocalVariable(name: "i", scope: !1527, file: !68, line: 254, type: !86)
!1531 = !DILocation(line: 0, scope: !1527)
!1532 = !DILocation(line: 254, column: 35, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1527, file: !68, line: 254, column: 13)
!1534 = !DILocation(line: 256, column: 55, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1533, file: !68, line: 255, column: 13)
!1536 = !DILocation(line: 256, column: 59, scope: !1535)
!1537 = !DILocation(line: 256, column: 63, scope: !1535)
!1538 = !DILocation(line: 256, column: 44, scope: !1535)
!1539 = !DILocation(line: 256, column: 95, scope: !1535)
!1540 = !DILocation(line: 256, column: 92, scope: !1535)
!1541 = !DILocation(line: 256, column: 75, scope: !1535)
!1542 = !DILocation(line: 256, column: 99, scope: !1535)
!1543 = !DILocation(line: 256, column: 104, scope: !1535)
!1544 = !DILocation(line: 256, column: 17, scope: !1535)
!1545 = !DILocation(line: 254, column: 50, scope: !1533)
!1546 = !DILocation(line: 254, column: 13, scope: !1533)
!1547 = distinct !{!1547, !1526, !1548, !388}
!1548 = !DILocation(line: 257, column: 13, scope: !1527)
!1549 = !DILocation(line: 252, column: 50, scope: !1525)
!1550 = !DILocation(line: 252, column: 9, scope: !1525)
!1551 = distinct !{!1551, !1518, !1552, !388}
!1552 = !DILocation(line: 258, column: 9, scope: !1519)
!1553 = !DILocation(line: 250, column: 38, scope: !1517)
!1554 = !DILocation(line: 250, column: 5, scope: !1517)
!1555 = distinct !{!1555, !1435, !1556, !388}
!1556 = !DILocation(line: 259, column: 5, scope: !1436)
!1557 = !DILocation(line: 260, column: 1, scope: !1204)
!1558 = distinct !DISubprogram(name: "mat_mul", scope: !585, file: !585, line: 78, type: !1559, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !71)
!1559 = !DISubroutineType(types: !1560)
!1560 = !{null, !90, !90, !61, !86, !86, !86}
!1561 = !DILocalVariable(name: "a", arg: 1, scope: !1558, file: !585, line: 78, type: !90)
!1562 = !DILocation(line: 0, scope: !1558)
!1563 = !DILocalVariable(name: "b", arg: 2, scope: !1558, file: !585, line: 78, type: !90)
!1564 = !DILocalVariable(name: "c", arg: 3, scope: !1558, file: !585, line: 79, type: !61)
!1565 = !DILocalVariable(name: "colrow_ab", arg: 4, scope: !1558, file: !585, line: 79, type: !86)
!1566 = !DILocalVariable(name: "row_a", arg: 5, scope: !1558, file: !585, line: 79, type: !86)
!1567 = !DILocalVariable(name: "col_b", arg: 6, scope: !1558, file: !585, line: 79, type: !86)
!1568 = !DILocalVariable(name: "i", scope: !1569, file: !585, line: 80, type: !86)
!1569 = distinct !DILexicalBlock(scope: !1558, file: !585, line: 80, column: 5)
!1570 = !DILocation(line: 0, scope: !1569)
!1571 = !DILocation(line: 80, column: 10, scope: !1569)
!1572 = !DILocation(line: 80, scope: !1569)
!1573 = !DILocation(line: 80, column: 23, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1569, file: !585, line: 80, column: 5)
!1575 = !DILocation(line: 80, column: 5, scope: !1569)
!1576 = !DILocation(line: 81, column: 9, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1578, file: !585, line: 81, column: 9)
!1578 = distinct !DILexicalBlock(scope: !1574, file: !585, line: 80, column: 53)
!1579 = !DILocation(line: 81, scope: !1577)
!1580 = !DILocalVariable(name: "j", scope: !1577, file: !585, line: 81, type: !86)
!1581 = !DILocation(line: 0, scope: !1577)
!1582 = !DILocation(line: 81, column: 27, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1577, file: !585, line: 81, column: 9)
!1584 = !DILocation(line: 82, column: 31, scope: !1585)
!1585 = distinct !DILexicalBlock(scope: !1583, file: !585, line: 81, column: 46)
!1586 = !DILocation(line: 82, column: 18, scope: !1585)
!1587 = !DILocation(line: 82, column: 16, scope: !1585)
!1588 = !DILocation(line: 81, column: 36, scope: !1583)
!1589 = !DILocation(line: 81, column: 41, scope: !1583)
!1590 = !DILocation(line: 81, column: 9, scope: !1583)
!1591 = distinct !{!1591, !1576, !1592, !388}
!1592 = !DILocation(line: 83, column: 9, scope: !1577)
!1593 = !DILocation(line: 80, column: 32, scope: !1574)
!1594 = !DILocation(line: 80, column: 39, scope: !1574)
!1595 = !DILocation(line: 80, column: 5, scope: !1574)
!1596 = distinct !{!1596, !1575, !1597, !388}
!1597 = !DILocation(line: 84, column: 5, scope: !1569)
!1598 = !DILocation(line: 85, column: 1, scope: !1558)
!1599 = distinct !DISubprogram(name: "mat_add", scope: !585, file: !585, line: 87, type: !1600, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !71)
!1600 = !DISubroutineType(types: !1601)
!1601 = !{null, !90, !90, !61, !86, !86}
!1602 = !DILocalVariable(name: "a", arg: 1, scope: !1599, file: !585, line: 87, type: !90)
!1603 = !DILocation(line: 0, scope: !1599)
!1604 = !DILocalVariable(name: "b", arg: 2, scope: !1599, file: !585, line: 87, type: !90)
!1605 = !DILocalVariable(name: "c", arg: 3, scope: !1599, file: !585, line: 88, type: !61)
!1606 = !DILocalVariable(name: "m", arg: 4, scope: !1599, file: !585, line: 88, type: !86)
!1607 = !DILocalVariable(name: "n", arg: 5, scope: !1599, file: !585, line: 88, type: !86)
!1608 = !DILocalVariable(name: "i", scope: !1609, file: !585, line: 89, type: !86)
!1609 = distinct !DILexicalBlock(scope: !1599, file: !585, line: 89, column: 5)
!1610 = !DILocation(line: 0, scope: !1609)
!1611 = !DILocation(line: 89, column: 10, scope: !1609)
!1612 = !DILocation(line: 89, scope: !1609)
!1613 = !DILocation(line: 89, column: 23, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1609, file: !585, line: 89, column: 5)
!1615 = !DILocation(line: 89, column: 5, scope: !1609)
!1616 = !DILocation(line: 90, column: 9, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1618, file: !585, line: 90, column: 9)
!1618 = distinct !DILexicalBlock(scope: !1614, file: !585, line: 89, column: 33)
!1619 = !DILocation(line: 90, scope: !1617)
!1620 = !DILocalVariable(name: "j", scope: !1617, file: !585, line: 90, type: !86)
!1621 = !DILocation(line: 0, scope: !1617)
!1622 = !DILocation(line: 90, column: 27, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1617, file: !585, line: 90, column: 9)
!1624 = !DILocation(line: 91, column: 46, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1623, file: !585, line: 90, column: 37)
!1626 = !DILocation(line: 91, column: 42, scope: !1625)
!1627 = !DILocation(line: 91, column: 50, scope: !1625)
!1628 = !DILocation(line: 91, column: 38, scope: !1625)
!1629 = !DILocation(line: 91, column: 64, scope: !1625)
!1630 = !DILocation(line: 91, column: 60, scope: !1625)
!1631 = !DILocation(line: 91, column: 68, scope: !1625)
!1632 = !DILocation(line: 91, column: 56, scope: !1625)
!1633 = !DILocation(line: 91, column: 32, scope: !1625)
!1634 = !DILocation(line: 91, column: 21, scope: !1625)
!1635 = !DILocation(line: 91, column: 17, scope: !1625)
!1636 = !DILocation(line: 91, column: 25, scope: !1625)
!1637 = !DILocation(line: 91, column: 30, scope: !1625)
!1638 = !DILocation(line: 90, column: 32, scope: !1623)
!1639 = !DILocation(line: 90, column: 9, scope: !1623)
!1640 = distinct !{!1640, !1616, !1641, !388}
!1641 = !DILocation(line: 92, column: 9, scope: !1617)
!1642 = !DILocation(line: 89, column: 28, scope: !1614)
!1643 = !DILocation(line: 89, column: 5, scope: !1614)
!1644 = distinct !{!1644, !1615, !1645, !388}
!1645 = !DILocation(line: 93, column: 5, scope: !1609)
!1646 = !DILocation(line: 94, column: 1, scope: !1599)
!1647 = distinct !DISubprogram(name: "encode", scope: !68, file: !68, line: 32, type: !361, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !71)
!1648 = !DILocalVariable(name: "m", arg: 1, scope: !1647, file: !68, line: 32, type: !90)
!1649 = !DILocation(line: 0, scope: !1647)
!1650 = !DILocalVariable(name: "menc", arg: 2, scope: !1647, file: !68, line: 32, type: !61)
!1651 = !DILocalVariable(name: "mlen", arg: 3, scope: !1647, file: !68, line: 32, type: !86)
!1652 = !DILocalVariable(name: "i", scope: !1647, file: !68, line: 33, type: !86)
!1653 = !DILocation(line: 34, column: 10, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1647, file: !68, line: 34, column: 5)
!1655 = !DILocation(line: 34, scope: !1654)
!1656 = !DILocation(line: 34, column: 26, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1654, file: !68, line: 34, column: 5)
!1658 = !DILocation(line: 34, column: 19, scope: !1657)
!1659 = !DILocation(line: 34, column: 5, scope: !1654)
!1660 = !DILocation(line: 35, column: 20, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1657, file: !68, line: 34, column: 44)
!1662 = !DILocation(line: 35, column: 31, scope: !1661)
!1663 = !DILocation(line: 35, column: 27, scope: !1661)
!1664 = !DILocation(line: 35, column: 36, scope: !1661)
!1665 = !DILocation(line: 35, column: 24, scope: !1661)
!1666 = !DILocation(line: 35, column: 9, scope: !1661)
!1667 = !DILocation(line: 35, column: 17, scope: !1661)
!1668 = !DILocation(line: 34, column: 31, scope: !1657)
!1669 = !DILocation(line: 34, column: 38, scope: !1657)
!1670 = !DILocation(line: 34, column: 5, scope: !1657)
!1671 = distinct !{!1671, !1659, !1672, !388}
!1672 = !DILocation(line: 36, column: 5, scope: !1654)
!1673 = !DILocation(line: 38, column: 18, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1647, file: !68, line: 38, column: 9)
!1675 = !DILocation(line: 39, column: 20, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !1674, file: !68, line: 38, column: 24)
!1677 = !DILocation(line: 39, column: 9, scope: !1676)
!1678 = !DILocation(line: 39, column: 17, scope: !1676)
!1679 = !DILocation(line: 40, column: 5, scope: !1676)
!1680 = !DILocation(line: 41, column: 1, scope: !1647)
!1681 = distinct !DISubprogram(name: "add_f", scope: !585, file: !585, line: 42, type: !1682, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !71)
!1682 = !DISubroutineType(types: !1683)
!1683 = !{!51, !51, !51}
!1684 = !DILocalVariable(name: "a", arg: 1, scope: !1681, file: !585, line: 42, type: !51)
!1685 = !DILocation(line: 0, scope: !1681)
!1686 = !DILocalVariable(name: "b", arg: 2, scope: !1681, file: !585, line: 42, type: !51)
!1687 = !DILocation(line: 43, column: 14, scope: !1681)
!1688 = !DILocation(line: 43, column: 5, scope: !1681)
!1689 = distinct !DISubprogram(name: "lincomb", scope: !585, file: !585, line: 69, type: !1690, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !71)
!1690 = !DISubroutineType(types: !1691)
!1691 = !{!51, !90, !90, !86, !86}
!1692 = !DILocalVariable(name: "a", arg: 1, scope: !1689, file: !585, line: 69, type: !90)
!1693 = !DILocation(line: 0, scope: !1689)
!1694 = !DILocalVariable(name: "b", arg: 2, scope: !1689, file: !585, line: 70, type: !90)
!1695 = !DILocalVariable(name: "n", arg: 3, scope: !1689, file: !585, line: 70, type: !86)
!1696 = !DILocalVariable(name: "m", arg: 4, scope: !1689, file: !585, line: 70, type: !86)
!1697 = !DILocalVariable(name: "ret", scope: !1689, file: !585, line: 71, type: !51)
!1698 = !DILocalVariable(name: "i", scope: !1699, file: !585, line: 72, type: !86)
!1699 = distinct !DILexicalBlock(scope: !1689, file: !585, line: 72, column: 5)
!1700 = !DILocation(line: 0, scope: !1699)
!1701 = !DILocation(line: 72, column: 10, scope: !1699)
!1702 = !DILocation(line: 72, scope: !1699)
!1703 = !DILocation(line: 72, column: 23, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !1699, file: !585, line: 72, column: 5)
!1705 = !DILocation(line: 72, column: 5, scope: !1699)
!1706 = !DILocation(line: 73, column: 27, scope: !1707)
!1707 = distinct !DILexicalBlock(scope: !1704, file: !585, line: 72, column: 41)
!1708 = !DILocation(line: 73, column: 33, scope: !1707)
!1709 = !DILocation(line: 73, column: 21, scope: !1707)
!1710 = !DILocation(line: 73, column: 15, scope: !1707)
!1711 = !DILocation(line: 72, column: 28, scope: !1704)
!1712 = !DILocation(line: 72, column: 35, scope: !1704)
!1713 = !DILocation(line: 72, column: 5, scope: !1704)
!1714 = distinct !{!1714, !1705, !1715, !388}
!1715 = !DILocation(line: 74, column: 5, scope: !1699)
!1716 = !DILocation(line: 75, column: 5, scope: !1689)
!1717 = distinct !DISubprogram(name: "mul_f", scope: !585, file: !585, line: 8, type: !1682, scopeLine: 8, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !71)
!1718 = !DILocalVariable(name: "a", arg: 1, scope: !1717, file: !585, line: 8, type: !51)
!1719 = !DILocation(line: 0, scope: !1717)
!1720 = !DILocalVariable(name: "b", arg: 2, scope: !1717, file: !585, line: 8, type: !51)
!1721 = !DILocation(line: 13, column: 10, scope: !1717)
!1722 = !DILocation(line: 13, column: 7, scope: !1717)
!1723 = !DILocation(line: 16, column: 17, scope: !1717)
!1724 = !DILocalVariable(name: "p", scope: !1717, file: !585, line: 10, type: !51)
!1725 = !DILocation(line: 17, column: 13, scope: !1717)
!1726 = !DILocation(line: 17, column: 17, scope: !1717)
!1727 = !DILocation(line: 17, column: 7, scope: !1717)
!1728 = !DILocation(line: 18, column: 13, scope: !1717)
!1729 = !DILocation(line: 18, column: 17, scope: !1717)
!1730 = !DILocation(line: 18, column: 7, scope: !1717)
!1731 = !DILocation(line: 19, column: 13, scope: !1717)
!1732 = !DILocation(line: 19, column: 17, scope: !1717)
!1733 = !DILocation(line: 19, column: 7, scope: !1717)
!1734 = !DILocalVariable(name: "top_p", scope: !1717, file: !585, line: 22, type: !51)
!1735 = !DILocation(line: 23, column: 37, scope: !1717)
!1736 = !DILocation(line: 23, column: 52, scope: !1717)
!1737 = !DILocation(line: 23, column: 43, scope: !1717)
!1738 = !DILocation(line: 23, column: 59, scope: !1717)
!1739 = !DILocalVariable(name: "out", scope: !1717, file: !585, line: 23, type: !51)
!1740 = !DILocation(line: 24, column: 5, scope: !1717)
!1741 = !DILocalVariable(name: "M", arg: 1, scope: !67, file: !68, line: 111, type: !52)
!1742 = !DILocation(line: 0, scope: !67)
!1743 = !DILocalVariable(name: "i", scope: !1744, file: !68, line: 117, type: !58)
!1744 = distinct !DILexicalBlock(scope: !67, file: !68, line: 117, column: 5)
!1745 = !DILocation(line: 0, scope: !1744)
!1746 = !DILocation(line: 117, column: 10, scope: !1744)
!1747 = !DILocation(line: 117, scope: !1744)
!1748 = !DILocation(line: 117, column: 26, scope: !1749)
!1749 = distinct !DILexicalBlock(scope: !1744, file: !68, line: 117, column: 5)
!1750 = !DILocation(line: 117, column: 5, scope: !1744)
!1751 = !DILocation(line: 124, column: 5, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !67, file: !68, line: 124, column: 5)
!1753 = !DILocation(line: 119, column: 24, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !1749, file: !68, line: 118, column: 5)
!1755 = !DILocation(line: 119, column: 29, scope: !1754)
!1756 = !DILocation(line: 119, column: 41, scope: !1754)
!1757 = !DILocation(line: 119, column: 38, scope: !1754)
!1758 = !DILocation(line: 119, column: 36, scope: !1754)
!1759 = !DILocation(line: 119, column: 46, scope: !1754)
!1760 = !DILocalVariable(name: "t", scope: !1754, file: !68, line: 119, type: !53)
!1761 = !DILocation(line: 0, scope: !1754)
!1762 = !DILocation(line: 120, column: 21, scope: !1754)
!1763 = !DILocation(line: 120, column: 9, scope: !1754)
!1764 = !DILocation(line: 120, column: 16, scope: !1754)
!1765 = !DILocation(line: 121, column: 12, scope: !1754)
!1766 = !DILocation(line: 121, column: 9, scope: !1754)
!1767 = !DILocation(line: 121, column: 16, scope: !1754)
!1768 = !DILocation(line: 117, column: 33, scope: !1749)
!1769 = !DILocation(line: 117, column: 5, scope: !1749)
!1770 = distinct !{!1770, !1750, !1771, !388}
!1771 = !DILocation(line: 122, column: 5, scope: !1744)
!1772 = !DILocation(line: 124, scope: !1752)
!1773 = !DILocalVariable(name: "i", scope: !1752, file: !68, line: 124, type: !58)
!1774 = !DILocation(line: 0, scope: !1752)
!1775 = !DILocation(line: 124, column: 26, scope: !1776)
!1776 = distinct !DILexicalBlock(scope: !1752, file: !68, line: 124, column: 5)
!1777 = !DILocation(line: 134, column: 5, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !67, file: !68, line: 134, column: 5)
!1779 = !DILocation(line: 126, column: 25, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1776, file: !68, line: 125, column: 5)
!1781 = !DILocation(line: 126, column: 32, scope: !1780)
!1782 = !DILocation(line: 126, column: 43, scope: !1780)
!1783 = !DILocation(line: 126, column: 40, scope: !1780)
!1784 = !DILocation(line: 126, column: 38, scope: !1780)
!1785 = !DILocation(line: 126, column: 48, scope: !1780)
!1786 = !DILocalVariable(name: "t0", scope: !1780, file: !68, line: 126, type: !53)
!1787 = !DILocation(line: 0, scope: !1780)
!1788 = !DILocation(line: 127, column: 28, scope: !1780)
!1789 = !DILocation(line: 127, column: 25, scope: !1780)
!1790 = !DILocation(line: 127, column: 32, scope: !1780)
!1791 = !DILocation(line: 127, column: 43, scope: !1780)
!1792 = !DILocation(line: 127, column: 40, scope: !1780)
!1793 = !DILocation(line: 127, column: 38, scope: !1780)
!1794 = !DILocation(line: 127, column: 48, scope: !1780)
!1795 = !DILocalVariable(name: "t1", scope: !1780, file: !68, line: 127, type: !53)
!1796 = !DILocation(line: 128, column: 23, scope: !1780)
!1797 = !DILocation(line: 128, column: 9, scope: !1780)
!1798 = !DILocation(line: 128, column: 16, scope: !1780)
!1799 = !DILocation(line: 129, column: 23, scope: !1780)
!1800 = !DILocation(line: 129, column: 12, scope: !1780)
!1801 = !DILocation(line: 129, column: 9, scope: !1780)
!1802 = !DILocation(line: 129, column: 16, scope: !1780)
!1803 = !DILocation(line: 130, column: 12, scope: !1780)
!1804 = !DILocation(line: 130, column: 9, scope: !1780)
!1805 = !DILocation(line: 130, column: 16, scope: !1780)
!1806 = !DILocation(line: 131, column: 12, scope: !1780)
!1807 = !DILocation(line: 131, column: 9, scope: !1780)
!1808 = !DILocation(line: 131, column: 16, scope: !1780)
!1809 = !DILocation(line: 124, column: 33, scope: !1776)
!1810 = !DILocation(line: 124, column: 5, scope: !1776)
!1811 = distinct !{!1811, !1751, !1812, !388}
!1812 = !DILocation(line: 132, column: 5, scope: !1752)
!1813 = !DILocation(line: 134, scope: !1778)
!1814 = !DILocalVariable(name: "i", scope: !1778, file: !68, line: 134, type: !58)
!1815 = !DILocation(line: 0, scope: !1778)
!1816 = !DILocation(line: 134, column: 26, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1778, file: !68, line: 134, column: 5)
!1818 = !DILocation(line: 145, column: 5, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !67, file: !68, line: 145, column: 5)
!1820 = !DILocation(line: 136, column: 25, scope: !1821)
!1821 = distinct !DILexicalBlock(scope: !1817, file: !68, line: 135, column: 5)
!1822 = !DILocation(line: 136, column: 32, scope: !1821)
!1823 = !DILocation(line: 136, column: 44, scope: !1821)
!1824 = !DILocation(line: 136, column: 41, scope: !1821)
!1825 = !DILocation(line: 136, column: 39, scope: !1821)
!1826 = !DILocation(line: 136, column: 50, scope: !1821)
!1827 = !DILocalVariable(name: "t0", scope: !1821, file: !68, line: 136, type: !53)
!1828 = !DILocation(line: 0, scope: !1821)
!1829 = !DILocation(line: 137, column: 28, scope: !1821)
!1830 = !DILocation(line: 137, column: 25, scope: !1821)
!1831 = !DILocation(line: 137, column: 32, scope: !1821)
!1832 = !DILocation(line: 137, column: 44, scope: !1821)
!1833 = !DILocation(line: 137, column: 41, scope: !1821)
!1834 = !DILocation(line: 137, column: 39, scope: !1821)
!1835 = !DILocation(line: 137, column: 50, scope: !1821)
!1836 = !DILocalVariable(name: "t1", scope: !1821, file: !68, line: 137, type: !53)
!1837 = !DILocation(line: 139, column: 23, scope: !1821)
!1838 = !DILocation(line: 139, column: 9, scope: !1821)
!1839 = !DILocation(line: 139, column: 17, scope: !1821)
!1840 = !DILocation(line: 140, column: 23, scope: !1821)
!1841 = !DILocation(line: 140, column: 12, scope: !1821)
!1842 = !DILocation(line: 140, column: 9, scope: !1821)
!1843 = !DILocation(line: 140, column: 17, scope: !1821)
!1844 = !DILocation(line: 141, column: 12, scope: !1821)
!1845 = !DILocation(line: 141, column: 9, scope: !1821)
!1846 = !DILocation(line: 141, column: 17, scope: !1821)
!1847 = !DILocation(line: 142, column: 12, scope: !1821)
!1848 = !DILocation(line: 142, column: 9, scope: !1821)
!1849 = !DILocation(line: 142, column: 17, scope: !1821)
!1850 = !DILocation(line: 134, column: 32, scope: !1817)
!1851 = !DILocation(line: 134, column: 5, scope: !1817)
!1852 = distinct !{!1852, !1777, !1853, !388}
!1853 = !DILocation(line: 143, column: 5, scope: !1778)
!1854 = !DILocation(line: 145, scope: !1819)
!1855 = !DILocalVariable(name: "i", scope: !1819, file: !68, line: 145, type: !58)
!1856 = !DILocation(line: 0, scope: !1819)
!1857 = !DILocation(line: 145, column: 26, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !1819, file: !68, line: 145, column: 5)
!1859 = !DILocation(line: 147, column: 24, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1858, file: !68, line: 146, column: 5)
!1861 = !DILocation(line: 147, column: 28, scope: !1860)
!1862 = !DILocation(line: 147, column: 39, scope: !1860)
!1863 = !DILocation(line: 147, column: 36, scope: !1860)
!1864 = !DILocation(line: 147, column: 44, scope: !1860)
!1865 = !DILocalVariable(name: "t", scope: !1860, file: !68, line: 147, type: !53)
!1866 = !DILocation(line: 0, scope: !1860)
!1867 = !DILocation(line: 148, column: 21, scope: !1860)
!1868 = !DILocation(line: 148, column: 9, scope: !1860)
!1869 = !DILocation(line: 148, column: 16, scope: !1860)
!1870 = !DILocation(line: 149, column: 12, scope: !1860)
!1871 = !DILocation(line: 149, column: 9, scope: !1860)
!1872 = !DILocation(line: 149, column: 16, scope: !1860)
!1873 = !DILocation(line: 145, column: 32, scope: !1858)
!1874 = !DILocation(line: 145, column: 5, scope: !1858)
!1875 = distinct !{!1875, !1818, !1876, !388}
!1876 = !DILocation(line: 150, column: 5, scope: !1819)
!1877 = !DILocation(line: 151, column: 1, scope: !67)
!1878 = distinct !DISubprogram(name: "mul_add_mat_x_m_mat", scope: !408, file: !408, line: 61, type: !469, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !71)
!1879 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !1878, file: !408, line: 61, type: !324)
!1880 = !DILocation(line: 0, scope: !1878)
!1881 = !DILocalVariable(name: "mat", arg: 2, scope: !1878, file: !408, line: 61, type: !90)
!1882 = !DILocalVariable(name: "bs_mat", arg: 3, scope: !1878, file: !408, line: 61, type: !411)
!1883 = !DILocalVariable(name: "acc", arg: 4, scope: !1878, file: !408, line: 61, type: !52)
!1884 = !DILocalVariable(name: "mat_rows", arg: 5, scope: !1878, file: !408, line: 62, type: !324)
!1885 = !DILocalVariable(name: "mat_cols", arg: 6, scope: !1878, file: !408, line: 62, type: !324)
!1886 = !DILocalVariable(name: "bs_mat_cols", arg: 7, scope: !1878, file: !408, line: 62, type: !324)
!1887 = !DILocalVariable(name: "r", scope: !1888, file: !408, line: 64, type: !86)
!1888 = distinct !DILexicalBlock(scope: !1878, file: !408, line: 64, column: 5)
!1889 = !DILocation(line: 0, scope: !1888)
!1890 = !DILocation(line: 64, column: 10, scope: !1888)
!1891 = !DILocation(line: 64, scope: !1888)
!1892 = !DILocation(line: 64, column: 23, scope: !1893)
!1893 = distinct !DILexicalBlock(scope: !1888, file: !408, line: 64, column: 5)
!1894 = !DILocation(line: 64, column: 5, scope: !1888)
!1895 = !DILocation(line: 65, column: 9, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !1897, file: !408, line: 65, column: 9)
!1897 = distinct !DILexicalBlock(scope: !1893, file: !408, line: 64, column: 40)
!1898 = !DILocation(line: 65, scope: !1896)
!1899 = !DILocalVariable(name: "c", scope: !1896, file: !408, line: 65, type: !86)
!1900 = !DILocation(line: 0, scope: !1896)
!1901 = !DILocation(line: 65, column: 27, scope: !1902)
!1902 = distinct !DILexicalBlock(scope: !1896, file: !408, line: 65, column: 9)
!1903 = !DILocation(line: 66, column: 13, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1905, file: !408, line: 66, column: 13)
!1905 = distinct !DILexicalBlock(scope: !1902, file: !408, line: 65, column: 44)
!1906 = !DILocation(line: 66, scope: !1904)
!1907 = !DILocalVariable(name: "k", scope: !1904, file: !408, line: 66, type: !86)
!1908 = !DILocation(line: 0, scope: !1904)
!1909 = !DILocation(line: 66, column: 31, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1904, file: !408, line: 66, column: 13)
!1911 = !DILocation(line: 67, column: 70, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1910, file: !408, line: 66, column: 54)
!1913 = !DILocation(line: 67, column: 84, scope: !1912)
!1914 = !DILocation(line: 67, column: 65, scope: !1912)
!1915 = !DILocation(line: 67, column: 51, scope: !1912)
!1916 = !DILocation(line: 67, column: 96, scope: !1912)
!1917 = !DILocation(line: 67, column: 90, scope: !1912)
!1918 = !DILocation(line: 67, column: 136, scope: !1912)
!1919 = !DILocation(line: 67, column: 150, scope: !1912)
!1920 = !DILocation(line: 67, column: 131, scope: !1912)
!1921 = !DILocation(line: 67, column: 117, scope: !1912)
!1922 = !DILocation(line: 67, column: 17, scope: !1912)
!1923 = !DILocation(line: 66, column: 48, scope: !1910)
!1924 = !DILocation(line: 66, column: 13, scope: !1910)
!1925 = distinct !{!1925, !1903, !1926, !388}
!1926 = !DILocation(line: 68, column: 13, scope: !1904)
!1927 = !DILocation(line: 65, column: 40, scope: !1902)
!1928 = !DILocation(line: 65, column: 9, scope: !1902)
!1929 = distinct !{!1929, !1895, !1930, !388}
!1930 = !DILocation(line: 69, column: 9, scope: !1896)
!1931 = !DILocation(line: 64, column: 36, scope: !1893)
!1932 = !DILocation(line: 64, column: 5, scope: !1893)
!1933 = distinct !{!1933, !1894, !1934, !388}
!1934 = !DILocation(line: 70, column: 5, scope: !1888)
!1935 = !DILocation(line: 71, column: 1, scope: !1878)
!1936 = distinct !DISubprogram(name: "P1_times_Vt", scope: !408, file: !408, line: 82, type: !459, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !71)
!1937 = !DILocalVariable(name: "p", arg: 1, scope: !1936, file: !408, line: 82, type: !264)
!1938 = !DILocation(line: 0, scope: !1936)
!1939 = !DILocalVariable(name: "P1", arg: 2, scope: !1936, file: !408, line: 82, type: !411)
!1940 = !DILocalVariable(name: "V", arg: 3, scope: !1936, file: !408, line: 82, type: !90)
!1941 = !DILocalVariable(name: "acc", arg: 4, scope: !1936, file: !408, line: 82, type: !52)
!1942 = !DILocation(line: 86, column: 5, scope: !1936)
!1943 = !DILocation(line: 87, column: 1, scope: !1936)
!1944 = distinct !DISubprogram(name: "mul_add_m_upper_triangular_mat_x_mat_trans", scope: !408, file: !408, line: 32, type: !601, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !71)
!1945 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !1944, file: !408, line: 32, type: !324)
!1946 = !DILocation(line: 0, scope: !1944)
!1947 = !DILocalVariable(name: "bs_mat", arg: 2, scope: !1944, file: !408, line: 32, type: !411)
!1948 = !DILocalVariable(name: "mat", arg: 3, scope: !1944, file: !408, line: 32, type: !90)
!1949 = !DILocalVariable(name: "acc", arg: 4, scope: !1944, file: !408, line: 32, type: !52)
!1950 = !DILocalVariable(name: "bs_mat_rows", arg: 5, scope: !1944, file: !408, line: 33, type: !324)
!1951 = !DILocalVariable(name: "bs_mat_cols", arg: 6, scope: !1944, file: !408, line: 33, type: !324)
!1952 = !DILocalVariable(name: "mat_rows", arg: 7, scope: !1944, file: !408, line: 33, type: !324)
!1953 = !DILocalVariable(name: "triangular", arg: 8, scope: !1944, file: !408, line: 33, type: !324)
!1954 = !DILocalVariable(name: "bs_mat_entries_used", scope: !1944, file: !408, line: 34, type: !86)
!1955 = !DILocalVariable(name: "r", scope: !1956, file: !408, line: 35, type: !86)
!1956 = distinct !DILexicalBlock(scope: !1944, file: !408, line: 35, column: 5)
!1957 = !DILocation(line: 0, scope: !1956)
!1958 = !DILocation(line: 35, column: 10, scope: !1956)
!1959 = !DILocation(line: 34, column: 9, scope: !1944)
!1960 = !DILocation(line: 35, scope: !1956)
!1961 = !DILocation(line: 35, column: 23, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1956, file: !408, line: 35, column: 5)
!1963 = !DILocation(line: 35, column: 5, scope: !1956)
!1964 = !DILocation(line: 36, column: 33, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1966, file: !408, line: 36, column: 9)
!1966 = distinct !DILexicalBlock(scope: !1962, file: !408, line: 35, column: 43)
!1967 = !DILocalVariable(name: "c", scope: !1965, file: !408, line: 36, type: !86)
!1968 = !DILocation(line: 0, scope: !1965)
!1969 = !DILocation(line: 36, column: 14, scope: !1965)
!1970 = !DILocation(line: 36, scope: !1965)
!1971 = !DILocation(line: 36, column: 40, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1965, file: !408, line: 36, column: 9)
!1973 = !DILocation(line: 36, column: 9, scope: !1965)
!1974 = !DILocation(line: 37, column: 13, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !1976, file: !408, line: 37, column: 13)
!1976 = distinct !DILexicalBlock(scope: !1972, file: !408, line: 36, column: 60)
!1977 = !DILocation(line: 37, scope: !1975)
!1978 = !DILocalVariable(name: "k", scope: !1975, file: !408, line: 37, type: !86)
!1979 = !DILocation(line: 0, scope: !1975)
!1980 = !DILocation(line: 37, column: 31, scope: !1981)
!1981 = distinct !DILexicalBlock(scope: !1975, file: !408, line: 37, column: 13)
!1982 = !DILocation(line: 38, column: 65, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1981, file: !408, line: 37, column: 51)
!1984 = !DILocation(line: 38, column: 51, scope: !1983)
!1985 = !DILocation(line: 38, column: 94, scope: !1983)
!1986 = !DILocation(line: 38, column: 88, scope: !1983)
!1987 = !DILocation(line: 38, column: 137, scope: !1983)
!1988 = !DILocation(line: 38, column: 148, scope: !1983)
!1989 = !DILocation(line: 38, column: 132, scope: !1983)
!1990 = !DILocation(line: 38, column: 118, scope: !1983)
!1991 = !DILocation(line: 38, column: 17, scope: !1983)
!1992 = !DILocation(line: 37, column: 45, scope: !1981)
!1993 = !DILocation(line: 37, column: 13, scope: !1981)
!1994 = distinct !{!1994, !1974, !1995, !388}
!1995 = !DILocation(line: 39, column: 13, scope: !1975)
!1996 = !DILocation(line: 40, column: 33, scope: !1976)
!1997 = !DILocation(line: 36, column: 56, scope: !1972)
!1998 = !DILocation(line: 36, column: 9, scope: !1972)
!1999 = distinct !{!1999, !1973, !2000, !388}
!2000 = !DILocation(line: 41, column: 9, scope: !1965)
!2001 = !DILocation(line: 35, column: 39, scope: !1962)
!2002 = !DILocation(line: 35, column: 5, scope: !1962)
!2003 = distinct !{!2003, !1963, !2004, !388}
!2004 = !DILocation(line: 42, column: 5, scope: !1956)
!2005 = !DILocation(line: 43, column: 1, scope: !1944)
!2006 = distinct !DISubprogram(name: "pqmayo_MAYO_1_ref_mayo_sign", scope: !68, file: !68, line: 502, type: !810, scopeLine: 504, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !71)
!2007 = !DILocalVariable(name: "p", arg: 1, scope: !2006, file: !68, line: 502, type: !264)
!2008 = !DILocation(line: 0, scope: !2006)
!2009 = !DILocalVariable(name: "sm", arg: 2, scope: !2006, file: !68, line: 502, type: !61)
!2010 = !DILocalVariable(name: "smlen", arg: 3, scope: !2006, file: !68, line: 503, type: !812)
!2011 = !DILocalVariable(name: "m", arg: 4, scope: !2006, file: !68, line: 503, type: !90)
!2012 = !DILocalVariable(name: "mlen", arg: 5, scope: !2006, file: !68, line: 504, type: !58)
!2013 = !DILocalVariable(name: "csk", arg: 6, scope: !2006, file: !68, line: 504, type: !90)
!2014 = !DILocalVariable(name: "ret", scope: !2006, file: !68, line: 505, type: !86)
!2015 = !DILocalVariable(name: "param_sig_bytes", scope: !2006, file: !68, line: 506, type: !324)
!2016 = !DILocation(line: 508, column: 16, scope: !2006)
!2017 = !DILocation(line: 508, column: 5, scope: !2006)
!2018 = !DILocation(line: 509, column: 50, scope: !2006)
!2019 = !DILocalVariable(name: "siglen", scope: !2006, file: !68, line: 507, type: !58)
!2020 = !DILocation(line: 509, column: 11, scope: !2006)
!2021 = !DILocation(line: 510, column: 13, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !2006, file: !68, line: 510, column: 9)
!2023 = !DILocation(line: 510, column: 24, scope: !2022)
!2024 = !DILocation(line: 511, column: 23, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !2022, file: !68, line: 510, column: 62)
!2026 = !DILocation(line: 511, column: 30, scope: !2025)
!2027 = !DILocation(line: 511, column: 9, scope: !2025)
!2028 = !DILocation(line: 512, column: 9, scope: !2025)
!2029 = !DILocation(line: 515, column: 14, scope: !2006)
!2030 = !DILocation(line: 515, column: 21, scope: !2006)
!2031 = !DILocation(line: 515, column: 12, scope: !2006)
!2032 = !DILocation(line: 515, column: 5, scope: !2006)
!2033 = !DILabel(scope: !2006, name: "err", file: !68, line: 516)
!2034 = !DILocation(line: 516, column: 1, scope: !2006)
!2035 = !DILocation(line: 517, column: 5, scope: !2006)
!2036 = distinct !DISubprogram(name: "pqmayo_MAYO_1_ref_mayo_open", scope: !68, file: !68, line: 520, type: !810, scopeLine: 522, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !71)
!2037 = !DILocalVariable(name: "p", arg: 1, scope: !2036, file: !68, line: 520, type: !264)
!2038 = !DILocation(line: 0, scope: !2036)
!2039 = !DILocalVariable(name: "m", arg: 2, scope: !2036, file: !68, line: 520, type: !61)
!2040 = !DILocalVariable(name: "mlen", arg: 3, scope: !2036, file: !68, line: 521, type: !812)
!2041 = !DILocalVariable(name: "sm", arg: 4, scope: !2036, file: !68, line: 521, type: !90)
!2042 = !DILocalVariable(name: "smlen", arg: 5, scope: !2036, file: !68, line: 522, type: !58)
!2043 = !DILocalVariable(name: "pk", arg: 6, scope: !2036, file: !68, line: 522, type: !90)
!2044 = !DILocalVariable(name: "param_sig_bytes", scope: !2036, file: !68, line: 523, type: !324)
!2045 = !DILocation(line: 524, column: 15, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !2036, file: !68, line: 524, column: 9)
!2047 = !DILocation(line: 527, column: 36, scope: !2036)
!2048 = !DILocation(line: 527, column: 61, scope: !2036)
!2049 = !DILocation(line: 527, column: 18, scope: !2036)
!2050 = !DILocalVariable(name: "result", scope: !2036, file: !68, line: 527, type: !86)
!2051 = !DILocation(line: 530, column: 16, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !2036, file: !68, line: 530, column: 9)
!2053 = !DILocation(line: 531, column: 23, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !2052, file: !68, line: 530, column: 28)
!2055 = !DILocation(line: 531, column: 15, scope: !2054)
!2056 = !DILocation(line: 532, column: 23, scope: !2054)
!2057 = !DILocation(line: 532, column: 9, scope: !2054)
!2058 = !DILocation(line: 533, column: 5, scope: !2054)
!2059 = !DILocation(line: 536, column: 1, scope: !2036)
!2060 = distinct !DISubprogram(name: "pqmayo_MAYO_1_ref_mayo_verify", scope: !68, file: !68, line: 617, type: !2061, scopeLine: 619, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !71)
!2061 = !DISubroutineType(types: !2062)
!2062 = !{!86, !264, !90, !58, !90, !90}
!2063 = !DILocalVariable(name: "p", arg: 1, scope: !2060, file: !68, line: 617, type: !264)
!2064 = !DILocation(line: 0, scope: !2060)
!2065 = !DILocalVariable(name: "m", arg: 2, scope: !2060, file: !68, line: 617, type: !90)
!2066 = !DILocalVariable(name: "mlen", arg: 3, scope: !2060, file: !68, line: 618, type: !58)
!2067 = !DILocalVariable(name: "sig", arg: 4, scope: !2060, file: !68, line: 618, type: !90)
!2068 = !DILocalVariable(name: "cpk", arg: 5, scope: !2060, file: !68, line: 619, type: !90)
!2069 = !DILocalVariable(name: "tEnc", scope: !2060, file: !68, line: 620, type: !822)
!2070 = !DILocation(line: 620, column: 19, scope: !2060)
!2071 = !DILocalVariable(name: "t", scope: !2060, file: !68, line: 621, type: !825)
!2072 = !DILocation(line: 621, column: 19, scope: !2060)
!2073 = !DILocalVariable(name: "y", scope: !2060, file: !68, line: 622, type: !2074)
!2074 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 1248, elements: !2075)
!2075 = !{!2076}
!2076 = !DISubrange(count: 156)
!2077 = !DILocation(line: 622, column: 19, scope: !2060)
!2078 = !DILocalVariable(name: "s", scope: !2060, file: !68, line: 623, type: !852)
!2079 = !DILocation(line: 623, column: 19, scope: !2060)
!2080 = !DILocalVariable(name: "pk", scope: !2060, file: !68, line: 624, type: !2081)
!2081 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 1197120, elements: !2082)
!2082 = !{!2083}
!2083 = !DISubrange(count: 18705)
!2084 = !DILocation(line: 624, column: 14, scope: !2060)
!2085 = !DILocalVariable(name: "tmp", scope: !2060, file: !68, line: 625, type: !2086)
!2086 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 448, elements: !2087)
!2087 = !{!2088}
!2088 = !DISubrange(count: 56)
!2089 = !DILocation(line: 625, column: 19, scope: !2060)
!2090 = !DILocalVariable(name: "param_m", scope: !2060, file: !68, line: 627, type: !324)
!2091 = !DILocalVariable(name: "param_n", scope: !2060, file: !68, line: 628, type: !324)
!2092 = !DILocalVariable(name: "param_k", scope: !2060, file: !68, line: 629, type: !324)
!2093 = !DILocalVariable(name: "param_m_bytes", scope: !2060, file: !68, line: 630, type: !324)
!2094 = !DILocalVariable(name: "param_sig_bytes", scope: !2060, file: !68, line: 631, type: !324)
!2095 = !DILocalVariable(name: "param_digest_bytes", scope: !2060, file: !68, line: 632, type: !324)
!2096 = !DILocalVariable(name: "param_salt_bytes", scope: !2060, file: !68, line: 633, type: !324)
!2097 = !DILocation(line: 635, column: 15, scope: !2060)
!2098 = !DILocalVariable(name: "ret", scope: !2060, file: !68, line: 635, type: !86)
!2099 = !DILocation(line: 636, column: 13, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !2060, file: !68, line: 636, column: 9)
!2101 = !DILocalVariable(name: "P1", scope: !2060, file: !68, line: 640, type: !52)
!2102 = !DILocation(line: 641, column: 23, scope: !2060)
!2103 = !DILocalVariable(name: "P2", scope: !2060, file: !68, line: 641, type: !52)
!2104 = !DILocation(line: 642, column: 23, scope: !2060)
!2105 = !DILocalVariable(name: "P3", scope: !2060, file: !68, line: 642, type: !52)
!2106 = !DILocation(line: 657, column: 5, scope: !2060)
!2107 = !DILocation(line: 660, column: 16, scope: !2060)
!2108 = !DILocation(line: 660, column: 60, scope: !2060)
!2109 = !DILocation(line: 660, column: 5, scope: !2060)
!2110 = !DILocation(line: 662, column: 5, scope: !2060)
!2111 = !DILocation(line: 663, column: 5, scope: !2060)
!2112 = !DILocation(line: 666, column: 5, scope: !2060)
!2113 = !DILocation(line: 668, column: 5, scope: !2060)
!2114 = !DILocation(line: 670, column: 9, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !2060, file: !68, line: 670, column: 9)
!2116 = !DILocation(line: 670, column: 31, scope: !2115)
!2117 = !DILocation(line: 674, column: 1, scope: !2060)
!2118 = distinct !DISubprogram(name: "pqmayo_MAYO_1_ref_mayo_expand_pk", scope: !68, file: !68, line: 608, type: !2119, scopeLine: 609, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !71)
!2119 = !DISubroutineType(types: !2120)
!2120 = !{!86, !264, !90, !52}
!2121 = !DILocalVariable(name: "p", arg: 1, scope: !2118, file: !68, line: 608, type: !264)
!2122 = !DILocation(line: 0, scope: !2118)
!2123 = !DILocalVariable(name: "cpk", arg: 2, scope: !2118, file: !68, line: 608, type: !90)
!2124 = !DILocalVariable(name: "pk", arg: 3, scope: !2118, file: !68, line: 609, type: !52)
!2125 = !DILocation(line: 610, column: 5, scope: !2118)
!2126 = !DILocation(line: 612, column: 23, scope: !2118)
!2127 = !DILocation(line: 612, column: 72, scope: !2118)
!2128 = !DILocation(line: 612, column: 5, scope: !2118)
!2129 = !DILocation(line: 614, column: 5, scope: !2118)
!2130 = distinct !DISubprogram(name: "eval_public_map", scope: !68, file: !68, line: 288, type: !2131, scopeLine: 288, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !71)
!2131 = !DISubroutineType(types: !2132)
!2132 = !{null, !264, !90, !411, !411, !411, !61}
!2133 = !DILocalVariable(name: "p", arg: 1, scope: !2130, file: !68, line: 288, type: !264)
!2134 = !DILocation(line: 0, scope: !2130)
!2135 = !DILocalVariable(name: "s", arg: 2, scope: !2130, file: !68, line: 288, type: !90)
!2136 = !DILocalVariable(name: "P1", arg: 3, scope: !2130, file: !68, line: 288, type: !411)
!2137 = !DILocalVariable(name: "P2", arg: 4, scope: !2130, file: !68, line: 288, type: !411)
!2138 = !DILocalVariable(name: "P3", arg: 5, scope: !2130, file: !68, line: 288, type: !411)
!2139 = !DILocalVariable(name: "eval", arg: 6, scope: !2130, file: !68, line: 288, type: !61)
!2140 = !DILocalVariable(name: "SPS", scope: !2130, file: !68, line: 289, type: !2141)
!2141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 32000, elements: !2142)
!2142 = !{!2143}
!2143 = !DISubrange(count: 500)
!2144 = !DILocation(line: 289, column: 14, scope: !2130)
!2145 = !DILocation(line: 291, column: 5, scope: !2130)
!2146 = !DILocalVariable(name: "zero", scope: !2130, file: !68, line: 292, type: !825)
!2147 = !DILocation(line: 292, column: 19, scope: !2130)
!2148 = !DILocation(line: 293, column: 5, scope: !2130)
!2149 = !DILocation(line: 294, column: 1, scope: !2130)
!2150 = distinct !DISubprogram(name: "m_calculate_PS_SPS", scope: !408, file: !408, line: 277, type: !2151, scopeLine: 278, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !71)
!2151 = !DISubroutineType(types: !2152)
!2152 = !{null, !264, !411, !411, !411, !90, !52}
!2153 = !DILocalVariable(name: "p", arg: 1, scope: !2150, file: !408, line: 277, type: !264)
!2154 = !DILocation(line: 0, scope: !2150)
!2155 = !DILocalVariable(name: "P1", arg: 2, scope: !2150, file: !408, line: 277, type: !411)
!2156 = !DILocalVariable(name: "P2", arg: 3, scope: !2150, file: !408, line: 277, type: !411)
!2157 = !DILocalVariable(name: "P3", arg: 4, scope: !2150, file: !408, line: 277, type: !411)
!2158 = !DILocalVariable(name: "s", arg: 5, scope: !2150, file: !408, line: 277, type: !90)
!2159 = !DILocalVariable(name: "SPS", arg: 6, scope: !2150, file: !408, line: 278, type: !52)
!2160 = !DILocalVariable(name: "PS", scope: !2150, file: !408, line: 286, type: !2161)
!2161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 275200, elements: !2162)
!2162 = !{!2163}
!2163 = !DISubrange(count: 4300)
!2164 = !DILocation(line: 286, column: 14, scope: !2150)
!2165 = !DILocation(line: 287, column: 5, scope: !2150)
!2166 = !DILocation(line: 290, column: 5, scope: !2150)
!2167 = !DILocation(line: 292, column: 1, scope: !2150)
!2168 = distinct !DISubprogram(name: "mayo_generic_m_calculate_PS", scope: !408, file: !408, line: 151, type: !2169, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !71)
!2169 = !DISubroutineType(types: !2170)
!2170 = !{null, !411, !411, !411, !90, !324, !324, !324, !324, !52}
!2171 = !DILocalVariable(name: "P1", arg: 1, scope: !2168, file: !408, line: 151, type: !411)
!2172 = !DILocation(line: 0, scope: !2168)
!2173 = !DILocalVariable(name: "P2", arg: 2, scope: !2168, file: !408, line: 151, type: !411)
!2174 = !DILocalVariable(name: "P3", arg: 3, scope: !2168, file: !408, line: 151, type: !411)
!2175 = !DILocalVariable(name: "S", arg: 4, scope: !2168, file: !408, line: 151, type: !90)
!2176 = !DILocalVariable(name: "m", arg: 5, scope: !2168, file: !408, line: 152, type: !324)
!2177 = !DILocalVariable(name: "v", arg: 6, scope: !2168, file: !408, line: 152, type: !324)
!2178 = !DILocalVariable(name: "o", arg: 7, scope: !2168, file: !408, line: 152, type: !324)
!2179 = !DILocalVariable(name: "k", arg: 8, scope: !2168, file: !408, line: 152, type: !324)
!2180 = !DILocalVariable(name: "PS", arg: 9, scope: !2168, file: !408, line: 152, type: !52)
!2181 = !DILocation(line: 154, column: 21, scope: !2168)
!2182 = !DILocalVariable(name: "n", scope: !2168, file: !408, line: 154, type: !324)
!2183 = !DILocation(line: 155, column: 32, scope: !2168)
!2184 = !DILocation(line: 155, column: 37, scope: !2168)
!2185 = !DILocalVariable(name: "m_vec_limbs", scope: !2168, file: !408, line: 155, type: !324)
!2186 = !DILocalVariable(name: "accumulator", scope: !2168, file: !408, line: 157, type: !2187)
!2187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 4403200, elements: !2188)
!2188 = !{!2189}
!2189 = !DISubrange(count: 68800)
!2190 = !DILocation(line: 157, column: 14, scope: !2168)
!2191 = !DILocalVariable(name: "P1_used", scope: !2168, file: !408, line: 158, type: !86)
!2192 = !DILocalVariable(name: "row", scope: !2193, file: !408, line: 159, type: !86)
!2193 = distinct !DILexicalBlock(scope: !2168, file: !408, line: 159, column: 5)
!2194 = !DILocation(line: 0, scope: !2193)
!2195 = !DILocation(line: 159, column: 10, scope: !2193)
!2196 = !DILocation(line: 158, column: 9, scope: !2168)
!2197 = !DILocation(line: 159, scope: !2193)
!2198 = !DILocation(line: 159, column: 27, scope: !2199)
!2199 = distinct !DILexicalBlock(scope: !2193, file: !408, line: 159, column: 5)
!2200 = !DILocation(line: 159, column: 5, scope: !2193)
!2201 = !DILocation(line: 160, column: 9, scope: !2202)
!2202 = distinct !DILexicalBlock(scope: !2203, file: !408, line: 160, column: 9)
!2203 = distinct !DILexicalBlock(scope: !2199, file: !408, line: 159, column: 39)
!2204 = !DILocation(line: 175, column: 5, scope: !2205)
!2205 = distinct !DILexicalBlock(scope: !2168, file: !408, line: 175, column: 5)
!2206 = !DILocation(line: 160, scope: !2202)
!2207 = !DILocalVariable(name: "j", scope: !2202, file: !408, line: 160, type: !86)
!2208 = !DILocation(line: 0, scope: !2202)
!2209 = !DILocation(line: 160, column: 29, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !2202, file: !408, line: 160, column: 9)
!2211 = !DILocation(line: 167, column: 9, scope: !2212)
!2212 = distinct !DILexicalBlock(scope: !2203, file: !408, line: 167, column: 9)
!2213 = !DILocation(line: 161, column: 13, scope: !2214)
!2214 = distinct !DILexicalBlock(scope: !2215, file: !408, line: 161, column: 13)
!2215 = distinct !DILexicalBlock(scope: !2210, file: !408, line: 160, column: 39)
!2216 = !DILocation(line: 161, scope: !2214)
!2217 = !DILocalVariable(name: "col", scope: !2214, file: !408, line: 161, type: !86)
!2218 = !DILocation(line: 0, scope: !2214)
!2219 = !DILocation(line: 161, column: 35, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !2214, file: !408, line: 161, column: 13)
!2221 = !DILocation(line: 162, column: 54, scope: !2222)
!2222 = distinct !DILexicalBlock(scope: !2220, file: !408, line: 161, column: 47)
!2223 = !DILocation(line: 162, column: 43, scope: !2222)
!2224 = !DILocation(line: 162, column: 91, scope: !2222)
!2225 = !DILocation(line: 162, column: 95, scope: !2222)
!2226 = !DILocation(line: 162, column: 102, scope: !2222)
!2227 = !DILocation(line: 162, column: 115, scope: !2222)
!2228 = !DILocation(line: 162, column: 109, scope: !2222)
!2229 = !DILocation(line: 162, column: 107, scope: !2222)
!2230 = !DILocation(line: 162, column: 125, scope: !2222)
!2231 = !DILocation(line: 162, column: 82, scope: !2222)
!2232 = !DILocation(line: 162, column: 17, scope: !2222)
!2233 = !DILocation(line: 161, column: 43, scope: !2220)
!2234 = !DILocation(line: 161, column: 13, scope: !2220)
!2235 = distinct !{!2235, !2213, !2236, !388}
!2236 = !DILocation(line: 163, column: 13, scope: !2214)
!2237 = !DILocation(line: 164, column: 21, scope: !2215)
!2238 = !DILocation(line: 160, column: 35, scope: !2210)
!2239 = !DILocation(line: 160, column: 9, scope: !2210)
!2240 = distinct !{!2240, !2201, !2241, !388}
!2241 = !DILocation(line: 165, column: 9, scope: !2202)
!2242 = !DILocation(line: 167, scope: !2212)
!2243 = !DILocalVariable(name: "j", scope: !2212, file: !408, line: 167, type: !86)
!2244 = !DILocation(line: 0, scope: !2212)
!2245 = !DILocation(line: 167, column: 27, scope: !2246)
!2246 = distinct !DILexicalBlock(scope: !2212, file: !408, line: 167, column: 9)
!2247 = !DILocation(line: 168, column: 13, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !2249, file: !408, line: 168, column: 13)
!2249 = distinct !DILexicalBlock(scope: !2246, file: !408, line: 167, column: 37)
!2250 = !DILocation(line: 168, scope: !2248)
!2251 = !DILocalVariable(name: "col", scope: !2248, file: !408, line: 168, type: !86)
!2252 = !DILocation(line: 0, scope: !2248)
!2253 = !DILocation(line: 168, column: 35, scope: !2254)
!2254 = distinct !DILexicalBlock(scope: !2248, file: !408, line: 168, column: 13)
!2255 = !DILocation(line: 169, column: 50, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !2254, file: !408, line: 168, column: 47)
!2257 = !DILocation(line: 169, column: 54, scope: !2256)
!2258 = !DILocation(line: 169, column: 58, scope: !2256)
!2259 = !DILocation(line: 169, column: 43, scope: !2256)
!2260 = !DILocation(line: 169, column: 93, scope: !2256)
!2261 = !DILocation(line: 169, column: 97, scope: !2256)
!2262 = !DILocation(line: 169, column: 104, scope: !2256)
!2263 = !DILocation(line: 169, column: 118, scope: !2256)
!2264 = !DILocation(line: 169, column: 111, scope: !2256)
!2265 = !DILocation(line: 169, column: 109, scope: !2256)
!2266 = !DILocation(line: 169, column: 133, scope: !2256)
!2267 = !DILocation(line: 169, column: 84, scope: !2256)
!2268 = !DILocation(line: 169, column: 17, scope: !2256)
!2269 = !DILocation(line: 168, column: 43, scope: !2254)
!2270 = !DILocation(line: 168, column: 13, scope: !2254)
!2271 = distinct !{!2271, !2247, !2272, !388}
!2272 = !DILocation(line: 170, column: 13, scope: !2248)
!2273 = !DILocation(line: 167, column: 33, scope: !2246)
!2274 = !DILocation(line: 167, column: 9, scope: !2246)
!2275 = distinct !{!2275, !2211, !2276, !388}
!2276 = !DILocation(line: 171, column: 9, scope: !2212)
!2277 = !DILocation(line: 159, column: 35, scope: !2199)
!2278 = !DILocation(line: 159, column: 5, scope: !2199)
!2279 = distinct !{!2279, !2200, !2280, !388}
!2280 = !DILocation(line: 172, column: 5, scope: !2193)
!2281 = !DILocation(line: 174, column: 9, scope: !2168)
!2282 = !DILocation(line: 175, scope: !2205)
!2283 = !DILocalVariable(name: "row", scope: !2205, file: !408, line: 175, type: !86)
!2284 = !DILocation(line: 0, scope: !2205)
!2285 = !DILocalVariable(name: "P3_used", scope: !2168, file: !408, line: 174, type: !86)
!2286 = !DILocation(line: 175, column: 27, scope: !2287)
!2287 = distinct !DILexicalBlock(scope: !2205, file: !408, line: 175, column: 5)
!2288 = !DILocation(line: 176, column: 9, scope: !2289)
!2289 = distinct !DILexicalBlock(scope: !2290, file: !408, line: 176, column: 9)
!2290 = distinct !DILexicalBlock(scope: !2287, file: !408, line: 175, column: 39)
!2291 = !DILocation(line: 186, column: 5, scope: !2168)
!2292 = !DILocation(line: 176, scope: !2289)
!2293 = !DILocalVariable(name: "j", scope: !2289, file: !408, line: 176, type: !86)
!2294 = !DILocation(line: 0, scope: !2289)
!2295 = !DILocation(line: 176, column: 29, scope: !2296)
!2296 = distinct !DILexicalBlock(scope: !2289, file: !408, line: 176, column: 9)
!2297 = !DILocation(line: 177, column: 13, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !2299, file: !408, line: 177, column: 13)
!2299 = distinct !DILexicalBlock(scope: !2296, file: !408, line: 176, column: 39)
!2300 = !DILocation(line: 177, scope: !2298)
!2301 = !DILocalVariable(name: "col", scope: !2298, file: !408, line: 177, type: !86)
!2302 = !DILocation(line: 0, scope: !2298)
!2303 = !DILocation(line: 177, column: 35, scope: !2304)
!2304 = distinct !DILexicalBlock(scope: !2298, file: !408, line: 177, column: 13)
!2305 = !DILocation(line: 178, column: 53, scope: !2306)
!2306 = distinct !DILexicalBlock(scope: !2304, file: !408, line: 177, column: 47)
!2307 = !DILocation(line: 178, column: 43, scope: !2306)
!2308 = !DILocation(line: 178, column: 89, scope: !2306)
!2309 = !DILocation(line: 178, column: 93, scope: !2306)
!2310 = !DILocation(line: 178, column: 100, scope: !2306)
!2311 = !DILocation(line: 178, column: 113, scope: !2306)
!2312 = !DILocation(line: 178, column: 107, scope: !2306)
!2313 = !DILocation(line: 178, column: 105, scope: !2306)
!2314 = !DILocation(line: 178, column: 123, scope: !2306)
!2315 = !DILocation(line: 178, column: 80, scope: !2306)
!2316 = !DILocation(line: 178, column: 17, scope: !2306)
!2317 = !DILocation(line: 177, column: 43, scope: !2304)
!2318 = !DILocation(line: 177, column: 13, scope: !2304)
!2319 = distinct !{!2319, !2297, !2320, !388}
!2320 = !DILocation(line: 179, column: 13, scope: !2298)
!2321 = !DILocation(line: 180, column: 21, scope: !2299)
!2322 = !DILocation(line: 176, column: 35, scope: !2296)
!2323 = !DILocation(line: 176, column: 9, scope: !2296)
!2324 = distinct !{!2324, !2288, !2325, !388}
!2325 = !DILocation(line: 181, column: 9, scope: !2289)
!2326 = !DILocation(line: 175, column: 35, scope: !2287)
!2327 = !DILocation(line: 175, column: 5, scope: !2287)
!2328 = distinct !{!2328, !2204, !2329, !388}
!2329 = !DILocation(line: 182, column: 5, scope: !2205)
!2330 = !DILocalVariable(name: "i", scope: !2168, file: !408, line: 185, type: !86)
!2331 = !DILocation(line: 186, column: 14, scope: !2168)
!2332 = !DILocation(line: 187, column: 58, scope: !2333)
!2333 = distinct !DILexicalBlock(scope: !2168, file: !408, line: 186, column: 23)
!2334 = !DILocation(line: 187, column: 63, scope: !2333)
!2335 = !DILocation(line: 187, column: 54, scope: !2333)
!2336 = !DILocation(line: 187, column: 85, scope: !2333)
!2337 = !DILocation(line: 187, column: 81, scope: !2333)
!2338 = !DILocation(line: 187, column: 9, scope: !2333)
!2339 = !DILocation(line: 188, column: 10, scope: !2333)
!2340 = distinct !{!2340, !2291, !2341, !388}
!2341 = !DILocation(line: 189, column: 5, scope: !2168)
!2342 = !DILocation(line: 191, column: 1, scope: !2168)
!2343 = distinct !DISubprogram(name: "mayo_generic_m_calculate_SPS", scope: !408, file: !408, line: 195, type: !2344, scopeLine: 195, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !71)
!2344 = !DISubroutineType(types: !2345)
!2345 = !{null, !411, !90, !86, !86, !86, !52}
!2346 = !DILocalVariable(name: "PS", arg: 1, scope: !2343, file: !408, line: 195, type: !411)
!2347 = !DILocation(line: 0, scope: !2343)
!2348 = !DILocalVariable(name: "S", arg: 2, scope: !2343, file: !408, line: 195, type: !90)
!2349 = !DILocalVariable(name: "m", arg: 3, scope: !2343, file: !408, line: 195, type: !86)
!2350 = !DILocalVariable(name: "k", arg: 4, scope: !2343, file: !408, line: 195, type: !86)
!2351 = !DILocalVariable(name: "n", arg: 5, scope: !2343, file: !408, line: 195, type: !86)
!2352 = !DILocalVariable(name: "SPS", arg: 6, scope: !2343, file: !408, line: 195, type: !52)
!2353 = !DILocalVariable(name: "accumulator", scope: !2343, file: !408, line: 196, type: !2354)
!2354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 512000, elements: !2355)
!2355 = !{!2356}
!2356 = !DISubrange(count: 8000)
!2357 = !DILocation(line: 196, column: 14, scope: !2343)
!2358 = !DILocation(line: 197, column: 32, scope: !2343)
!2359 = !DILocation(line: 197, column: 37, scope: !2343)
!2360 = !DILocalVariable(name: "m_vec_limbs", scope: !2343, file: !408, line: 197, type: !324)
!2361 = !DILocalVariable(name: "row", scope: !2362, file: !408, line: 198, type: !86)
!2362 = distinct !DILexicalBlock(scope: !2343, file: !408, line: 198, column: 5)
!2363 = !DILocation(line: 0, scope: !2362)
!2364 = !DILocation(line: 198, column: 10, scope: !2362)
!2365 = !DILocation(line: 198, scope: !2362)
!2366 = !DILocation(line: 198, column: 27, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !2362, file: !408, line: 198, column: 5)
!2368 = !DILocation(line: 198, column: 5, scope: !2362)
!2369 = !DILocation(line: 199, column: 9, scope: !2370)
!2370 = distinct !DILexicalBlock(scope: !2371, file: !408, line: 199, column: 9)
!2371 = distinct !DILexicalBlock(scope: !2367, file: !408, line: 198, column: 39)
!2372 = !DILocation(line: 208, column: 5, scope: !2343)
!2373 = !DILocation(line: 199, scope: !2370)
!2374 = !DILocalVariable(name: "j", scope: !2370, file: !408, line: 199, type: !86)
!2375 = !DILocation(line: 0, scope: !2370)
!2376 = !DILocation(line: 199, column: 27, scope: !2377)
!2377 = distinct !DILexicalBlock(scope: !2370, file: !408, line: 199, column: 9)
!2378 = !DILocation(line: 200, column: 13, scope: !2379)
!2379 = distinct !DILexicalBlock(scope: !2380, file: !408, line: 200, column: 13)
!2380 = distinct !DILexicalBlock(scope: !2377, file: !408, line: 199, column: 37)
!2381 = !DILocation(line: 200, scope: !2379)
!2382 = !DILocalVariable(name: "col", scope: !2379, file: !408, line: 200, type: !86)
!2383 = !DILocation(line: 0, scope: !2379)
!2384 = !DILocation(line: 200, column: 35, scope: !2385)
!2385 = distinct !DILexicalBlock(scope: !2379, file: !408, line: 200, column: 13)
!2386 = !DILocation(line: 201, column: 52, scope: !2387)
!2387 = distinct !DILexicalBlock(scope: !2385, file: !408, line: 200, column: 50)
!2388 = !DILocation(line: 201, column: 56, scope: !2387)
!2389 = !DILocation(line: 201, column: 63, scope: !2387)
!2390 = !DILocation(line: 201, column: 47, scope: !2387)
!2391 = !DILocation(line: 201, column: 99, scope: !2387)
!2392 = !DILocation(line: 201, column: 103, scope: !2387)
!2393 = !DILocation(line: 201, column: 110, scope: !2387)
!2394 = !DILocation(line: 201, column: 123, scope: !2387)
!2395 = !DILocation(line: 201, column: 117, scope: !2387)
!2396 = !DILocation(line: 201, column: 115, scope: !2387)
!2397 = !DILocation(line: 201, column: 133, scope: !2387)
!2398 = !DILocation(line: 201, column: 90, scope: !2387)
!2399 = !DILocation(line: 201, column: 21, scope: !2387)
!2400 = !DILocation(line: 200, column: 44, scope: !2385)
!2401 = !DILocation(line: 200, column: 13, scope: !2385)
!2402 = distinct !{!2402, !2378, !2403, !388}
!2403 = !DILocation(line: 202, column: 13, scope: !2379)
!2404 = !DILocation(line: 199, column: 33, scope: !2377)
!2405 = !DILocation(line: 199, column: 9, scope: !2377)
!2406 = distinct !{!2406, !2369, !2407, !388}
!2407 = !DILocation(line: 203, column: 9, scope: !2370)
!2408 = !DILocation(line: 198, column: 35, scope: !2367)
!2409 = !DILocation(line: 198, column: 5, scope: !2367)
!2410 = distinct !{!2410, !2368, !2411, !388}
!2411 = !DILocation(line: 204, column: 5, scope: !2362)
!2412 = !DILocalVariable(name: "i", scope: !2343, file: !408, line: 207, type: !86)
!2413 = !DILocation(line: 208, column: 14, scope: !2343)
!2414 = !DILocation(line: 209, column: 58, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !2343, file: !408, line: 208, column: 21)
!2416 = !DILocation(line: 209, column: 63, scope: !2415)
!2417 = !DILocation(line: 209, column: 54, scope: !2415)
!2418 = !DILocation(line: 209, column: 86, scope: !2415)
!2419 = !DILocation(line: 209, column: 82, scope: !2415)
!2420 = !DILocation(line: 209, column: 9, scope: !2415)
!2421 = !DILocation(line: 210, column: 10, scope: !2415)
!2422 = distinct !{!2422, !2372, !2423, !388}
!2423 = !DILocation(line: 211, column: 5, scope: !2343)
!2424 = !DILocation(line: 212, column: 1, scope: !2343)
!2425 = distinct !DISubprogram(name: "m_vec_add", scope: !529, file: !529, line: 22, type: !2426, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !71)
!2426 = !DISubroutineType(types: !2427)
!2427 = !{null, !86, !411, !52}
!2428 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2425, file: !529, line: 22, type: !86)
!2429 = !DILocation(line: 0, scope: !2425)
!2430 = !DILocalVariable(name: "in", arg: 2, scope: !2425, file: !529, line: 22, type: !411)
!2431 = !DILocalVariable(name: "acc", arg: 3, scope: !2425, file: !529, line: 22, type: !52)
!2432 = !DILocalVariable(name: "i", scope: !2433, file: !529, line: 24, type: !58)
!2433 = distinct !DILexicalBlock(scope: !2425, file: !529, line: 24, column: 5)
!2434 = !DILocation(line: 0, scope: !2433)
!2435 = !DILocation(line: 24, column: 10, scope: !2433)
!2436 = !DILocation(line: 24, scope: !2433)
!2437 = !DILocation(line: 24, column: 26, scope: !2438)
!2438 = distinct !DILexicalBlock(scope: !2433, file: !529, line: 24, column: 5)
!2439 = !DILocation(line: 24, column: 5, scope: !2433)
!2440 = !DILocation(line: 26, column: 19, scope: !2441)
!2441 = distinct !DILexicalBlock(scope: !2438, file: !529, line: 25, column: 5)
!2442 = !DILocation(line: 26, column: 9, scope: !2441)
!2443 = !DILocation(line: 26, column: 16, scope: !2441)
!2444 = !DILocation(line: 24, column: 46, scope: !2438)
!2445 = !DILocation(line: 24, column: 5, scope: !2438)
!2446 = distinct !{!2446, !2439, !2447, !388}
!2447 = !DILocation(line: 27, column: 5, scope: !2433)
!2448 = !DILocation(line: 28, column: 1, scope: !2425)
!2449 = distinct !DISubprogram(name: "m_vec_multiply_bins", scope: !529, file: !529, line: 66, type: !2450, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !71)
!2450 = !DISubroutineType(types: !2451)
!2451 = !{null, !86, !52, !52}
!2452 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2449, file: !529, line: 66, type: !86)
!2453 = !DILocation(line: 0, scope: !2449)
!2454 = !DILocalVariable(name: "bins", arg: 2, scope: !2449, file: !529, line: 66, type: !52)
!2455 = !DILocalVariable(name: "out", arg: 3, scope: !2449, file: !529, line: 66, type: !52)
!2456 = !DILocation(line: 67, column: 44, scope: !2449)
!2457 = !DILocation(line: 67, column: 73, scope: !2449)
!2458 = !DILocation(line: 67, column: 5, scope: !2449)
!2459 = !DILocation(line: 68, column: 40, scope: !2449)
!2460 = !DILocation(line: 68, column: 69, scope: !2449)
!2461 = !DILocation(line: 68, column: 5, scope: !2449)
!2462 = !DILocation(line: 69, column: 44, scope: !2449)
!2463 = !DILocation(line: 69, column: 74, scope: !2449)
!2464 = !DILocation(line: 69, column: 5, scope: !2449)
!2465 = !DILocation(line: 70, column: 40, scope: !2449)
!2466 = !DILocation(line: 70, column: 69, scope: !2449)
!2467 = !DILocation(line: 70, column: 5, scope: !2449)
!2468 = !DILocation(line: 71, column: 44, scope: !2449)
!2469 = !DILocation(line: 71, column: 73, scope: !2449)
!2470 = !DILocation(line: 71, column: 5, scope: !2449)
!2471 = !DILocation(line: 72, column: 40, scope: !2449)
!2472 = !DILocation(line: 72, column: 69, scope: !2449)
!2473 = !DILocation(line: 72, column: 5, scope: !2449)
!2474 = !DILocation(line: 73, column: 44, scope: !2449)
!2475 = !DILocation(line: 73, column: 74, scope: !2449)
!2476 = !DILocation(line: 73, column: 5, scope: !2449)
!2477 = !DILocation(line: 74, column: 40, scope: !2449)
!2478 = !DILocation(line: 74, column: 69, scope: !2449)
!2479 = !DILocation(line: 74, column: 5, scope: !2449)
!2480 = !DILocation(line: 75, column: 44, scope: !2449)
!2481 = !DILocation(line: 75, column: 74, scope: !2449)
!2482 = !DILocation(line: 75, column: 5, scope: !2449)
!2483 = !DILocation(line: 76, column: 40, scope: !2449)
!2484 = !DILocation(line: 76, column: 69, scope: !2449)
!2485 = !DILocation(line: 76, column: 5, scope: !2449)
!2486 = !DILocation(line: 77, column: 44, scope: !2449)
!2487 = !DILocation(line: 77, column: 74, scope: !2449)
!2488 = !DILocation(line: 77, column: 5, scope: !2449)
!2489 = !DILocation(line: 78, column: 40, scope: !2449)
!2490 = !DILocation(line: 78, column: 69, scope: !2449)
!2491 = !DILocation(line: 78, column: 5, scope: !2449)
!2492 = !DILocation(line: 79, column: 44, scope: !2449)
!2493 = !DILocation(line: 79, column: 74, scope: !2449)
!2494 = !DILocation(line: 79, column: 5, scope: !2449)
!2495 = !DILocation(line: 80, column: 40, scope: !2449)
!2496 = !DILocation(line: 80, column: 69, scope: !2449)
!2497 = !DILocation(line: 80, column: 5, scope: !2449)
!2498 = !DILocation(line: 81, column: 35, scope: !2449)
!2499 = !DILocation(line: 81, column: 5, scope: !2449)
!2500 = !DILocation(line: 82, column: 1, scope: !2449)
!2501 = distinct !DISubprogram(name: "m_vec_mul_add_x_inv", scope: !529, file: !529, line: 56, type: !2426, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !71)
!2502 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2501, file: !529, line: 56, type: !86)
!2503 = !DILocation(line: 0, scope: !2501)
!2504 = !DILocalVariable(name: "in", arg: 2, scope: !2501, file: !529, line: 56, type: !411)
!2505 = !DILocalVariable(name: "acc", arg: 3, scope: !2501, file: !529, line: 56, type: !52)
!2506 = !DILocalVariable(name: "mask_lsb", scope: !2501, file: !529, line: 58, type: !53)
!2507 = !DILocalVariable(name: "i", scope: !2508, file: !529, line: 59, type: !86)
!2508 = distinct !DILexicalBlock(scope: !2501, file: !529, line: 59, column: 5)
!2509 = !DILocation(line: 0, scope: !2508)
!2510 = !DILocation(line: 59, column: 9, scope: !2508)
!2511 = !DILocation(line: 59, scope: !2508)
!2512 = !DILocation(line: 59, column: 20, scope: !2513)
!2513 = distinct !DILexicalBlock(scope: !2508, file: !529, line: 59, column: 5)
!2514 = !DILocation(line: 59, column: 5, scope: !2508)
!2515 = !DILocation(line: 60, column: 22, scope: !2516)
!2516 = distinct !DILexicalBlock(scope: !2513, file: !529, line: 59, column: 43)
!2517 = !DILocation(line: 60, column: 28, scope: !2516)
!2518 = !DILocalVariable(name: "t", scope: !2516, file: !529, line: 60, type: !53)
!2519 = !DILocation(line: 0, scope: !2516)
!2520 = !DILocation(line: 61, column: 32, scope: !2516)
!2521 = !DILocation(line: 61, column: 43, scope: !2516)
!2522 = !DILocation(line: 61, column: 38, scope: !2516)
!2523 = !DILocation(line: 61, column: 9, scope: !2516)
!2524 = !DILocation(line: 61, column: 16, scope: !2516)
!2525 = !DILocation(line: 59, column: 40, scope: !2513)
!2526 = !DILocation(line: 59, column: 5, scope: !2513)
!2527 = distinct !{!2527, !2514, !2528, !388}
!2528 = !DILocation(line: 62, column: 5, scope: !2508)
!2529 = !DILocation(line: 63, column: 1, scope: !2501)
!2530 = distinct !DISubprogram(name: "m_vec_mul_add_x", scope: !529, file: !529, line: 46, type: !2426, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !71)
!2531 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2530, file: !529, line: 46, type: !86)
!2532 = !DILocation(line: 0, scope: !2530)
!2533 = !DILocalVariable(name: "in", arg: 2, scope: !2530, file: !529, line: 46, type: !411)
!2534 = !DILocalVariable(name: "acc", arg: 3, scope: !2530, file: !529, line: 46, type: !52)
!2535 = !DILocalVariable(name: "mask_msb", scope: !2530, file: !529, line: 48, type: !53)
!2536 = !DILocalVariable(name: "i", scope: !2537, file: !529, line: 49, type: !86)
!2537 = distinct !DILexicalBlock(scope: !2530, file: !529, line: 49, column: 5)
!2538 = !DILocation(line: 0, scope: !2537)
!2539 = !DILocation(line: 49, column: 9, scope: !2537)
!2540 = !DILocation(line: 49, scope: !2537)
!2541 = !DILocation(line: 49, column: 20, scope: !2542)
!2542 = distinct !DILexicalBlock(scope: !2537, file: !529, line: 49, column: 5)
!2543 = !DILocation(line: 49, column: 5, scope: !2537)
!2544 = !DILocation(line: 50, column: 22, scope: !2545)
!2545 = distinct !DILexicalBlock(scope: !2542, file: !529, line: 49, column: 43)
!2546 = !DILocalVariable(name: "t", scope: !2545, file: !529, line: 50, type: !53)
!2547 = !DILocation(line: 0, scope: !2545)
!2548 = !DILocation(line: 51, column: 32, scope: !2545)
!2549 = !DILocation(line: 51, column: 44, scope: !2545)
!2550 = !DILocation(line: 51, column: 50, scope: !2545)
!2551 = !DILocation(line: 51, column: 38, scope: !2545)
!2552 = !DILocation(line: 51, column: 9, scope: !2545)
!2553 = !DILocation(line: 51, column: 16, scope: !2545)
!2554 = !DILocation(line: 49, column: 40, scope: !2542)
!2555 = !DILocation(line: 49, column: 5, scope: !2542)
!2556 = distinct !{!2556, !2543, !2557, !388}
!2557 = !DILocation(line: 52, column: 5, scope: !2537)
!2558 = !DILocation(line: 53, column: 1, scope: !2530)
!2559 = distinct !DISubprogram(name: "m_vec_copy", scope: !529, file: !529, line: 13, type: !2426, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !71)
!2560 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2559, file: !529, line: 13, type: !86)
!2561 = !DILocation(line: 0, scope: !2559)
!2562 = !DILocalVariable(name: "in", arg: 2, scope: !2559, file: !529, line: 13, type: !411)
!2563 = !DILocalVariable(name: "out", arg: 3, scope: !2559, file: !529, line: 13, type: !52)
!2564 = !DILocalVariable(name: "i", scope: !2565, file: !529, line: 15, type: !58)
!2565 = distinct !DILexicalBlock(scope: !2559, file: !529, line: 15, column: 5)
!2566 = !DILocation(line: 0, scope: !2565)
!2567 = !DILocation(line: 15, column: 10, scope: !2565)
!2568 = !DILocation(line: 15, scope: !2565)
!2569 = !DILocation(line: 15, column: 26, scope: !2570)
!2570 = distinct !DILexicalBlock(scope: !2565, file: !529, line: 15, column: 5)
!2571 = !DILocation(line: 15, column: 5, scope: !2565)
!2572 = !DILocation(line: 17, column: 18, scope: !2573)
!2573 = distinct !DILexicalBlock(scope: !2570, file: !529, line: 16, column: 5)
!2574 = !DILocation(line: 17, column: 9, scope: !2573)
!2575 = !DILocation(line: 17, column: 16, scope: !2573)
!2576 = !DILocation(line: 15, column: 46, scope: !2570)
!2577 = !DILocation(line: 15, column: 5, scope: !2570)
!2578 = distinct !{!2578, !2571, !2579, !388}
!2579 = !DILocation(line: 18, column: 5, scope: !2565)
!2580 = !DILocation(line: 19, column: 1, scope: !2559)
!2581 = distinct !DISubprogram(name: "pqmayo_MAYO_1_ref_m_upper", scope: !99, file: !99, line: 14, type: !2582, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !84, retainedNodes: !71)
!2582 = !DISubroutineType(types: !2583)
!2583 = !{null, !2584, !411, !52, !86}
!2584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2585, size: 32)
!2585 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2586)
!2586 = !DIDerivedType(tag: DW_TAG_typedef, name: "mayo_params_t", file: !79, line: 289, baseType: !2587)
!2587 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !79, line: 265, size: 736, elements: !2588)
!2588 = !{!2589, !2590, !2591, !2592, !2593, !2594, !2595, !2596, !2597, !2598, !2599, !2600, !2601, !2602, !2603, !2604, !2605, !2606, !2607, !2608, !2609, !2610, !2611}
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !2587, file: !79, line: 266, baseType: !86, size: 32)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !2587, file: !79, line: 267, baseType: !86, size: 32, offset: 32)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "o", scope: !2587, file: !79, line: 268, baseType: !86, size: 32, offset: 64)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !2587, file: !79, line: 269, baseType: !86, size: 32, offset: 96)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2587, file: !79, line: 270, baseType: !86, size: 32, offset: 128)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "f_tail", scope: !2587, file: !79, line: 271, baseType: !90, size: 32, offset: 160)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "m_bytes", scope: !2587, file: !79, line: 272, baseType: !86, size: 32, offset: 192)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "O_bytes", scope: !2587, file: !79, line: 273, baseType: !86, size: 32, offset: 224)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "v_bytes", scope: !2587, file: !79, line: 274, baseType: !86, size: 32, offset: 256)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "r_bytes", scope: !2587, file: !79, line: 275, baseType: !86, size: 32, offset: 288)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "R_bytes", scope: !2587, file: !79, line: 276, baseType: !86, size: 32, offset: 320)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "P1_bytes", scope: !2587, file: !79, line: 277, baseType: !86, size: 32, offset: 352)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "P2_bytes", scope: !2587, file: !79, line: 278, baseType: !86, size: 32, offset: 384)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "P3_bytes", scope: !2587, file: !79, line: 279, baseType: !86, size: 32, offset: 416)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "csk_bytes", scope: !2587, file: !79, line: 280, baseType: !86, size: 32, offset: 448)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "cpk_bytes", scope: !2587, file: !79, line: 281, baseType: !86, size: 32, offset: 480)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "sig_bytes", scope: !2587, file: !79, line: 282, baseType: !86, size: 32, offset: 512)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "salt_bytes", scope: !2587, file: !79, line: 283, baseType: !86, size: 32, offset: 544)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "sk_seed_bytes", scope: !2587, file: !79, line: 284, baseType: !86, size: 32, offset: 576)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "digest_bytes", scope: !2587, file: !79, line: 285, baseType: !86, size: 32, offset: 608)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "pk_seed_bytes", scope: !2587, file: !79, line: 286, baseType: !86, size: 32, offset: 640)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "m_vec_limbs", scope: !2587, file: !79, line: 287, baseType: !86, size: 32, offset: 672)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2587, file: !79, line: 288, baseType: !149, size: 32, offset: 704)
!2612 = !DILocalVariable(name: "p", arg: 1, scope: !2581, file: !99, line: 14, type: !2584)
!2613 = !DILocation(line: 0, scope: !2581)
!2614 = !DILocalVariable(name: "in", arg: 2, scope: !2581, file: !99, line: 14, type: !411)
!2615 = !DILocalVariable(name: "out", arg: 3, scope: !2581, file: !99, line: 14, type: !52)
!2616 = !DILocalVariable(name: "size", arg: 4, scope: !2581, file: !99, line: 14, type: !86)
!2617 = !DILocalVariable(name: "m_vec_limbs", scope: !2581, file: !99, line: 19, type: !324)
!2618 = !DILocalVariable(name: "m_vecs_stored", scope: !2581, file: !99, line: 20, type: !86)
!2619 = !DILocalVariable(name: "r", scope: !2620, file: !99, line: 21, type: !86)
!2620 = distinct !DILexicalBlock(scope: !2581, file: !99, line: 21, column: 5)
!2621 = !DILocation(line: 0, scope: !2620)
!2622 = !DILocation(line: 21, column: 10, scope: !2620)
!2623 = !DILocation(line: 20, column: 9, scope: !2581)
!2624 = !DILocation(line: 21, scope: !2620)
!2625 = !DILocation(line: 21, column: 23, scope: !2626)
!2626 = distinct !DILexicalBlock(scope: !2620, file: !99, line: 21, column: 5)
!2627 = !DILocation(line: 21, column: 5, scope: !2620)
!2628 = !DILocation(line: 22, column: 9, scope: !2629)
!2629 = distinct !DILexicalBlock(scope: !2630, file: !99, line: 22, column: 9)
!2630 = distinct !DILexicalBlock(scope: !2626, file: !99, line: 21, column: 36)
!2631 = !DILocation(line: 22, scope: !2629)
!2632 = !DILocalVariable(name: "c", scope: !2629, file: !99, line: 22, type: !86)
!2633 = !DILocation(line: 0, scope: !2629)
!2634 = !DILocation(line: 22, column: 27, scope: !2635)
!2635 = distinct !DILexicalBlock(scope: !2629, file: !99, line: 22, column: 9)
!2636 = !DILocation(line: 23, column: 59, scope: !2637)
!2637 = distinct !DILexicalBlock(scope: !2635, file: !99, line: 22, column: 40)
!2638 = !DILocation(line: 23, column: 66, scope: !2637)
!2639 = !DILocation(line: 23, column: 40, scope: !2637)
!2640 = !DILocation(line: 23, column: 76, scope: !2637)
!2641 = !DILocation(line: 23, column: 13, scope: !2637)
!2642 = !DILocation(line: 24, column: 19, scope: !2643)
!2643 = distinct !DILexicalBlock(scope: !2637, file: !99, line: 24, column: 17)
!2644 = !DILocation(line: 25, column: 62, scope: !2645)
!2645 = distinct !DILexicalBlock(scope: !2643, file: !99, line: 24, column: 25)
!2646 = !DILocation(line: 25, column: 69, scope: !2645)
!2647 = !DILocation(line: 25, column: 43, scope: !2645)
!2648 = !DILocation(line: 25, column: 79, scope: !2645)
!2649 = !DILocation(line: 25, column: 17, scope: !2645)
!2650 = !DILocation(line: 26, column: 13, scope: !2645)
!2651 = !DILocation(line: 27, column: 27, scope: !2637)
!2652 = !DILocation(line: 22, column: 36, scope: !2635)
!2653 = !DILocation(line: 22, column: 9, scope: !2635)
!2654 = distinct !{!2654, !2628, !2655, !388}
!2655 = !DILocation(line: 28, column: 9, scope: !2629)
!2656 = !DILocation(line: 21, column: 32, scope: !2626)
!2657 = !DILocation(line: 21, column: 5, scope: !2626)
!2658 = distinct !{!2658, !2627, !2659, !388}
!2659 = !DILocation(line: 29, column: 5, scope: !2620)
!2660 = !DILocation(line: 30, column: 1, scope: !2581)
!2661 = distinct !DISubprogram(name: "m_vec_copy", scope: !529, file: !529, line: 13, type: !2426, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !84, retainedNodes: !71)
!2662 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2661, file: !529, line: 13, type: !86)
!2663 = !DILocation(line: 0, scope: !2661)
!2664 = !DILocalVariable(name: "in", arg: 2, scope: !2661, file: !529, line: 13, type: !411)
!2665 = !DILocalVariable(name: "out", arg: 3, scope: !2661, file: !529, line: 13, type: !52)
!2666 = !DILocalVariable(name: "i", scope: !2667, file: !529, line: 15, type: !58)
!2667 = distinct !DILexicalBlock(scope: !2661, file: !529, line: 15, column: 5)
!2668 = !DILocation(line: 0, scope: !2667)
!2669 = !DILocation(line: 15, column: 10, scope: !2667)
!2670 = !DILocation(line: 15, scope: !2667)
!2671 = !DILocation(line: 15, column: 26, scope: !2672)
!2672 = distinct !DILexicalBlock(scope: !2667, file: !529, line: 15, column: 5)
!2673 = !DILocation(line: 15, column: 5, scope: !2667)
!2674 = !DILocation(line: 17, column: 18, scope: !2675)
!2675 = distinct !DILexicalBlock(scope: !2672, file: !529, line: 16, column: 5)
!2676 = !DILocation(line: 17, column: 9, scope: !2675)
!2677 = !DILocation(line: 17, column: 16, scope: !2675)
!2678 = !DILocation(line: 15, column: 46, scope: !2672)
!2679 = !DILocation(line: 15, column: 5, scope: !2672)
!2680 = distinct !{!2680, !2673, !2681, !388}
!2681 = !DILocation(line: 18, column: 5, scope: !2667)
!2682 = !DILocation(line: 19, column: 1, scope: !2661)
!2683 = distinct !DISubprogram(name: "m_vec_add", scope: !529, file: !529, line: 22, type: !2426, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !84, retainedNodes: !71)
!2684 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2683, file: !529, line: 22, type: !86)
!2685 = !DILocation(line: 0, scope: !2683)
!2686 = !DILocalVariable(name: "in", arg: 2, scope: !2683, file: !529, line: 22, type: !411)
!2687 = !DILocalVariable(name: "acc", arg: 3, scope: !2683, file: !529, line: 22, type: !52)
!2688 = !DILocalVariable(name: "i", scope: !2689, file: !529, line: 24, type: !58)
!2689 = distinct !DILexicalBlock(scope: !2683, file: !529, line: 24, column: 5)
!2690 = !DILocation(line: 0, scope: !2689)
!2691 = !DILocation(line: 24, column: 10, scope: !2689)
!2692 = !DILocation(line: 24, scope: !2689)
!2693 = !DILocation(line: 24, column: 26, scope: !2694)
!2694 = distinct !DILexicalBlock(scope: !2689, file: !529, line: 24, column: 5)
!2695 = !DILocation(line: 24, column: 5, scope: !2689)
!2696 = !DILocation(line: 26, column: 19, scope: !2697)
!2697 = distinct !DILexicalBlock(scope: !2694, file: !529, line: 25, column: 5)
!2698 = !DILocation(line: 26, column: 9, scope: !2697)
!2699 = !DILocation(line: 26, column: 16, scope: !2697)
!2700 = !DILocation(line: 24, column: 46, scope: !2694)
!2701 = !DILocation(line: 24, column: 5, scope: !2694)
!2702 = distinct !{!2702, !2695, !2703, !388}
!2703 = !DILocation(line: 27, column: 5, scope: !2689)
!2704 = !DILocation(line: 28, column: 1, scope: !2683)
!2705 = distinct !DISubprogram(name: "pqmayo_MAYO_1_ref_sample_solution", scope: !99, file: !99, line: 40, type: !2706, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !84, retainedNodes: !71)
!2706 = !DISubroutineType(types: !2707)
!2707 = !{!86, !2584, !61, !90, !90, !61, !86, !86, !86, !86}
!2708 = !DILocalVariable(name: "p", arg: 1, scope: !2705, file: !99, line: 40, type: !2584)
!2709 = !DILocation(line: 0, scope: !2705)
!2710 = !DILocalVariable(name: "A", arg: 2, scope: !2705, file: !99, line: 40, type: !61)
!2711 = !DILocalVariable(name: "y", arg: 3, scope: !2705, file: !99, line: 41, type: !90)
!2712 = !DILocalVariable(name: "r", arg: 4, scope: !2705, file: !99, line: 41, type: !90)
!2713 = !DILocalVariable(name: "x", arg: 5, scope: !2705, file: !99, line: 42, type: !61)
!2714 = !DILocalVariable(name: "k", arg: 6, scope: !2705, file: !99, line: 42, type: !86)
!2715 = !DILocalVariable(name: "o", arg: 7, scope: !2705, file: !99, line: 42, type: !86)
!2716 = !DILocalVariable(name: "m", arg: 8, scope: !2705, file: !99, line: 42, type: !86)
!2717 = !DILocalVariable(name: "A_cols", arg: 9, scope: !2705, file: !99, line: 42, type: !86)
!2718 = !DILocalVariable(name: "i", scope: !2719, file: !99, line: 51, type: !86)
!2719 = distinct !DILexicalBlock(scope: !2705, file: !99, line: 51, column: 5)
!2720 = !DILocation(line: 0, scope: !2719)
!2721 = !DILocation(line: 51, column: 10, scope: !2719)
!2722 = !DILocation(line: 51, scope: !2719)
!2723 = !DILocation(line: 51, column: 23, scope: !2724)
!2724 = distinct !DILexicalBlock(scope: !2719, file: !99, line: 51, column: 5)
!2725 = !DILocation(line: 51, column: 5, scope: !2719)
!2726 = !DILocation(line: 57, column: 5, scope: !2727)
!2727 = distinct !DILexicalBlock(scope: !2705, file: !99, line: 57, column: 5)
!2728 = !DILocation(line: 52, column: 16, scope: !2729)
!2729 = distinct !DILexicalBlock(scope: !2724, file: !99, line: 51, column: 37)
!2730 = !DILocation(line: 52, column: 9, scope: !2729)
!2731 = !DILocation(line: 52, column: 14, scope: !2729)
!2732 = !DILocation(line: 51, column: 33, scope: !2724)
!2733 = !DILocation(line: 51, column: 5, scope: !2724)
!2734 = distinct !{!2734, !2725, !2735, !388}
!2735 = !DILocation(line: 53, column: 5, scope: !2719)
!2736 = !DILocation(line: 57, scope: !2727)
!2737 = !DILocalVariable(name: "i", scope: !2727, file: !99, line: 57, type: !86)
!2738 = !DILocation(line: 0, scope: !2727)
!2739 = !DILocation(line: 57, column: 23, scope: !2740)
!2740 = distinct !DILexicalBlock(scope: !2727, file: !99, line: 57, column: 5)
!2741 = !DILocation(line: 58, column: 13, scope: !2742)
!2742 = distinct !DILexicalBlock(scope: !2740, file: !99, line: 57, column: 33)
!2743 = !DILocation(line: 58, column: 26, scope: !2742)
!2744 = !DILocation(line: 58, column: 30, scope: !2742)
!2745 = !DILocation(line: 58, column: 21, scope: !2742)
!2746 = !DILocation(line: 58, column: 9, scope: !2742)
!2747 = !DILocation(line: 58, column: 36, scope: !2742)
!2748 = !DILocation(line: 57, column: 29, scope: !2740)
!2749 = !DILocation(line: 57, column: 5, scope: !2740)
!2750 = distinct !{!2750, !2726, !2751, !388}
!2751 = !DILocation(line: 59, column: 5, scope: !2727)
!2752 = !DILocation(line: 60, column: 25, scope: !2705)
!2753 = !DILocation(line: 60, column: 29, scope: !2705)
!2754 = !DILocation(line: 60, column: 5, scope: !2705)
!2755 = !DILocalVariable(name: "i", scope: !2756, file: !99, line: 63, type: !86)
!2756 = distinct !DILexicalBlock(scope: !2705, file: !99, line: 63, column: 5)
!2757 = !DILocation(line: 0, scope: !2756)
!2758 = !DILocation(line: 63, column: 10, scope: !2756)
!2759 = !DILocation(line: 63, scope: !2756)
!2760 = !DILocation(line: 63, column: 23, scope: !2761)
!2761 = distinct !DILexicalBlock(scope: !2756, file: !99, line: 63, column: 5)
!2762 = !DILocation(line: 63, column: 5, scope: !2756)
!2763 = !DILocation(line: 64, column: 44, scope: !2764)
!2764 = distinct !DILexicalBlock(scope: !2761, file: !99, line: 63, column: 33)
!2765 = !DILocation(line: 64, column: 50, scope: !2764)
!2766 = !DILocation(line: 64, column: 38, scope: !2764)
!2767 = !DILocation(line: 64, column: 13, scope: !2764)
!2768 = !DILocation(line: 64, column: 26, scope: !2764)
!2769 = !DILocation(line: 64, column: 30, scope: !2764)
!2770 = !DILocation(line: 64, column: 21, scope: !2764)
!2771 = !DILocation(line: 64, column: 9, scope: !2764)
!2772 = !DILocation(line: 64, column: 36, scope: !2764)
!2773 = !DILocation(line: 63, column: 29, scope: !2761)
!2774 = !DILocation(line: 63, column: 5, scope: !2761)
!2775 = distinct !{!2775, !2762, !2776, !388}
!2776 = !DILocation(line: 65, column: 5, scope: !2756)
!2777 = !DILocation(line: 67, column: 16, scope: !2705)
!2778 = !DILocation(line: 67, column: 20, scope: !2705)
!2779 = !DILocation(line: 67, column: 5, scope: !2705)
!2780 = !DILocalVariable(name: "full_rank", scope: !2705, file: !99, line: 70, type: !51)
!2781 = !DILocalVariable(name: "i", scope: !2782, file: !99, line: 71, type: !86)
!2782 = distinct !DILexicalBlock(scope: !2705, file: !99, line: 71, column: 5)
!2783 = !DILocation(line: 0, scope: !2782)
!2784 = !DILocation(line: 71, column: 10, scope: !2782)
!2785 = !DILocation(line: 71, scope: !2782)
!2786 = !DILocation(line: 71, column: 23, scope: !2787)
!2787 = distinct !DILexicalBlock(scope: !2782, file: !99, line: 71, column: 5)
!2788 = !DILocation(line: 71, column: 5, scope: !2782)
!2789 = !DILocation(line: 72, column: 27, scope: !2790)
!2790 = distinct !DILexicalBlock(scope: !2787, file: !99, line: 71, column: 42)
!2791 = !DILocation(line: 72, column: 32, scope: !2790)
!2792 = !DILocation(line: 72, column: 22, scope: !2790)
!2793 = !DILocation(line: 72, column: 19, scope: !2790)
!2794 = !DILocation(line: 71, column: 38, scope: !2787)
!2795 = !DILocation(line: 71, column: 5, scope: !2787)
!2796 = distinct !{!2796, !2788, !2797, !388}
!2797 = !DILocation(line: 73, column: 5, scope: !2782)
!2798 = !DILocation(line: 80, column: 19, scope: !2799)
!2799 = distinct !DILexicalBlock(scope: !2705, file: !99, line: 80, column: 9)
!2800 = !DILocation(line: 88, column: 5, scope: !2801)
!2801 = distinct !DILexicalBlock(scope: !2705, file: !99, line: 88, column: 5)
!2802 = distinct !{!2802, !2800, !2803, !388}
!2803 = !DILocation(line: 122, column: 5, scope: !2801)
!2804 = !DILocation(line: 88, scope: !2801)
!2805 = !DILocalVariable(name: "row", scope: !2801, file: !99, line: 88, type: !86)
!2806 = !DILocation(line: 0, scope: !2801)
!2807 = !DILocation(line: 88, column: 31, scope: !2808)
!2808 = distinct !DILexicalBlock(scope: !2801, file: !99, line: 88, column: 5)
!2809 = !DILocalVariable(name: "finished", scope: !2705, file: !99, line: 46, type: !51)
!2810 = !DILocation(line: 90, column: 27, scope: !2811)
!2811 = distinct !DILexicalBlock(scope: !2808, file: !99, line: 88, column: 44)
!2812 = !DILocalVariable(name: "col_upper_bound", scope: !2705, file: !99, line: 47, type: !86)
!2813 = !DILocalVariable(name: "col", scope: !2814, file: !99, line: 93, type: !86)
!2814 = distinct !DILexicalBlock(scope: !2811, file: !99, line: 93, column: 9)
!2815 = !DILocation(line: 0, scope: !2814)
!2816 = !DILocation(line: 93, column: 14, scope: !2814)
!2817 = !DILocation(line: 0, scope: !2811)
!2818 = !DILocation(line: 93, scope: !2814)
!2819 = !DILocation(line: 93, column: 33, scope: !2820)
!2820 = distinct !DILexicalBlock(scope: !2814, file: !99, line: 93, column: 9)
!2821 = !DILocation(line: 93, column: 9, scope: !2814)
!2822 = !DILocation(line: 97, column: 50, scope: !2823)
!2823 = distinct !DILexicalBlock(scope: !2820, file: !99, line: 93, column: 60)
!2824 = !DILocation(line: 97, column: 44, scope: !2823)
!2825 = !DILocation(line: 97, column: 30, scope: !2823)
!2826 = !DILocation(line: 97, column: 73, scope: !2823)
!2827 = !DILocalVariable(name: "correct_column", scope: !2705, file: !99, line: 48, type: !51)
!2828 = !DILocation(line: 99, column: 63, scope: !2823)
!2829 = !DILocation(line: 99, column: 48, scope: !2823)
!2830 = !DILocation(line: 99, column: 46, scope: !2823)
!2831 = !DILocalVariable(name: "u", scope: !2823, file: !99, line: 99, type: !51)
!2832 = !DILocation(line: 0, scope: !2823)
!2833 = !DILocation(line: 100, column: 13, scope: !2823)
!2834 = !DILocation(line: 100, column: 20, scope: !2823)
!2835 = !DILocalVariable(name: "i", scope: !2836, file: !99, line: 102, type: !86)
!2836 = distinct !DILexicalBlock(scope: !2823, file: !99, line: 102, column: 13)
!2837 = !DILocation(line: 0, scope: !2836)
!2838 = !DILocation(line: 102, column: 18, scope: !2836)
!2839 = !DILocation(line: 102, scope: !2836)
!2840 = !DILocation(line: 102, column: 31, scope: !2841)
!2841 = distinct !DILexicalBlock(scope: !2836, file: !99, line: 102, column: 13)
!2842 = !DILocation(line: 102, column: 13, scope: !2836)
!2843 = !DILocation(line: 103, column: 53, scope: !2844)
!2844 = distinct !DILexicalBlock(scope: !2841, file: !99, line: 102, column: 46)
!2845 = !DILocation(line: 103, column: 45, scope: !2844)
!2846 = !DILocation(line: 103, column: 34, scope: !2844)
!2847 = !DILocation(line: 103, column: 95, scope: !2844)
!2848 = !DILocation(line: 103, column: 99, scope: !2844)
!2849 = !DILocation(line: 103, column: 91, scope: !2844)
!2850 = !DILocation(line: 103, column: 80, scope: !2844)
!2851 = !DILocation(line: 103, column: 115, scope: !2844)
!2852 = !DILocation(line: 103, column: 76, scope: !2844)
!2853 = !DILocation(line: 104, column: 49, scope: !2844)
!2854 = !DILocation(line: 104, column: 53, scope: !2844)
!2855 = !DILocation(line: 104, column: 45, scope: !2844)
!2856 = !DILocation(line: 104, column: 34, scope: !2844)
!2857 = !DILocation(line: 104, column: 69, scope: !2844)
!2858 = !DILocation(line: 104, column: 30, scope: !2844)
!2859 = !DILocation(line: 104, column: 95, scope: !2844)
!2860 = !DILocation(line: 104, column: 99, scope: !2844)
!2861 = !DILocation(line: 104, column: 91, scope: !2844)
!2862 = !DILocation(line: 104, column: 80, scope: !2844)
!2863 = !DILocation(line: 104, column: 115, scope: !2844)
!2864 = !DILocation(line: 104, column: 76, scope: !2844)
!2865 = !DILocation(line: 105, column: 49, scope: !2844)
!2866 = !DILocation(line: 105, column: 53, scope: !2844)
!2867 = !DILocation(line: 105, column: 45, scope: !2844)
!2868 = !DILocation(line: 105, column: 34, scope: !2844)
!2869 = !DILocation(line: 105, column: 69, scope: !2844)
!2870 = !DILocation(line: 105, column: 30, scope: !2844)
!2871 = !DILocation(line: 105, column: 95, scope: !2844)
!2872 = !DILocation(line: 105, column: 99, scope: !2844)
!2873 = !DILocation(line: 105, column: 91, scope: !2844)
!2874 = !DILocation(line: 105, column: 80, scope: !2844)
!2875 = !DILocation(line: 105, column: 115, scope: !2844)
!2876 = !DILocation(line: 105, column: 76, scope: !2844)
!2877 = !DILocation(line: 106, column: 49, scope: !2844)
!2878 = !DILocation(line: 106, column: 53, scope: !2844)
!2879 = !DILocation(line: 106, column: 45, scope: !2844)
!2880 = !DILocation(line: 106, column: 34, scope: !2844)
!2881 = !DILocation(line: 106, column: 69, scope: !2844)
!2882 = !DILocation(line: 106, column: 30, scope: !2844)
!2883 = !DILocation(line: 106, column: 95, scope: !2844)
!2884 = !DILocation(line: 106, column: 99, scope: !2844)
!2885 = !DILocation(line: 106, column: 91, scope: !2844)
!2886 = !DILocation(line: 106, column: 80, scope: !2844)
!2887 = !DILocation(line: 106, column: 115, scope: !2844)
!2888 = !DILocation(line: 106, column: 76, scope: !2844)
!2889 = !DILocalVariable(name: "tmp", scope: !2844, file: !99, line: 103, type: !53)
!2890 = !DILocation(line: 0, scope: !2844)
!2891 = !DILocation(line: 108, column: 23, scope: !2844)
!2892 = !DILocation(line: 110, column: 34, scope: !2844)
!2893 = !DILocation(line: 110, column: 17, scope: !2844)
!2894 = !DILocation(line: 110, column: 48, scope: !2844)
!2895 = !DILocation(line: 111, column: 56, scope: !2844)
!2896 = !DILocation(line: 111, column: 34, scope: !2844)
!2897 = !DILocation(line: 111, column: 17, scope: !2844)
!2898 = !DILocation(line: 111, column: 48, scope: !2844)
!2899 = !DILocation(line: 112, column: 56, scope: !2844)
!2900 = !DILocation(line: 112, column: 34, scope: !2844)
!2901 = !DILocation(line: 112, column: 17, scope: !2844)
!2902 = !DILocation(line: 112, column: 48, scope: !2844)
!2903 = !DILocation(line: 113, column: 56, scope: !2844)
!2904 = !DILocation(line: 113, column: 34, scope: !2844)
!2905 = !DILocation(line: 113, column: 17, scope: !2844)
!2906 = !DILocation(line: 113, column: 48, scope: !2844)
!2907 = !DILocation(line: 114, column: 56, scope: !2844)
!2908 = !DILocation(line: 114, column: 34, scope: !2844)
!2909 = !DILocation(line: 114, column: 17, scope: !2844)
!2910 = !DILocation(line: 114, column: 48, scope: !2844)
!2911 = !DILocation(line: 115, column: 56, scope: !2844)
!2912 = !DILocation(line: 115, column: 34, scope: !2844)
!2913 = !DILocation(line: 115, column: 17, scope: !2844)
!2914 = !DILocation(line: 115, column: 48, scope: !2844)
!2915 = !DILocation(line: 116, column: 56, scope: !2844)
!2916 = !DILocation(line: 116, column: 34, scope: !2844)
!2917 = !DILocation(line: 116, column: 17, scope: !2844)
!2918 = !DILocation(line: 116, column: 48, scope: !2844)
!2919 = !DILocation(line: 117, column: 56, scope: !2844)
!2920 = !DILocation(line: 117, column: 34, scope: !2844)
!2921 = !DILocation(line: 117, column: 17, scope: !2844)
!2922 = !DILocation(line: 117, column: 48, scope: !2844)
!2923 = !DILocation(line: 102, column: 40, scope: !2841)
!2924 = !DILocation(line: 102, column: 13, scope: !2841)
!2925 = distinct !{!2925, !2842, !2926, !388}
!2926 = !DILocation(line: 118, column: 13, scope: !2836)
!2927 = !DILocation(line: 120, column: 33, scope: !2823)
!2928 = !DILocation(line: 93, column: 56, scope: !2820)
!2929 = !DILocation(line: 93, column: 9, scope: !2820)
!2930 = distinct !{!2930, !2821, !2931, !388}
!2931 = !DILocation(line: 121, column: 9, scope: !2814)
!2932 = !DILocation(line: 124, column: 1, scope: !2705)
!2933 = distinct !DISubprogram(name: "mat_mul", scope: !585, file: !585, line: 78, type: !1559, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !84, retainedNodes: !71)
!2934 = !DILocalVariable(name: "a", arg: 1, scope: !2933, file: !585, line: 78, type: !90)
!2935 = !DILocation(line: 0, scope: !2933)
!2936 = !DILocalVariable(name: "b", arg: 2, scope: !2933, file: !585, line: 78, type: !90)
!2937 = !DILocalVariable(name: "c", arg: 3, scope: !2933, file: !585, line: 79, type: !61)
!2938 = !DILocalVariable(name: "colrow_ab", arg: 4, scope: !2933, file: !585, line: 79, type: !86)
!2939 = !DILocalVariable(name: "row_a", arg: 5, scope: !2933, file: !585, line: 79, type: !86)
!2940 = !DILocalVariable(name: "col_b", arg: 6, scope: !2933, file: !585, line: 79, type: !86)
!2941 = !DILocalVariable(name: "i", scope: !2942, file: !585, line: 80, type: !86)
!2942 = distinct !DILexicalBlock(scope: !2933, file: !585, line: 80, column: 5)
!2943 = !DILocation(line: 0, scope: !2942)
!2944 = !DILocation(line: 80, column: 10, scope: !2942)
!2945 = !DILocation(line: 80, scope: !2942)
!2946 = !DILocation(line: 80, column: 23, scope: !2947)
!2947 = distinct !DILexicalBlock(scope: !2942, file: !585, line: 80, column: 5)
!2948 = !DILocation(line: 80, column: 5, scope: !2942)
!2949 = !DILocation(line: 81, column: 9, scope: !2950)
!2950 = distinct !DILexicalBlock(scope: !2951, file: !585, line: 81, column: 9)
!2951 = distinct !DILexicalBlock(scope: !2947, file: !585, line: 80, column: 53)
!2952 = !DILocation(line: 81, scope: !2950)
!2953 = !DILocalVariable(name: "j", scope: !2950, file: !585, line: 81, type: !86)
!2954 = !DILocation(line: 0, scope: !2950)
!2955 = !DILocation(line: 81, column: 27, scope: !2956)
!2956 = distinct !DILexicalBlock(scope: !2950, file: !585, line: 81, column: 9)
!2957 = !DILocation(line: 82, column: 31, scope: !2958)
!2958 = distinct !DILexicalBlock(scope: !2956, file: !585, line: 81, column: 46)
!2959 = !DILocation(line: 82, column: 18, scope: !2958)
!2960 = !DILocation(line: 82, column: 16, scope: !2958)
!2961 = !DILocation(line: 81, column: 36, scope: !2956)
!2962 = !DILocation(line: 81, column: 41, scope: !2956)
!2963 = !DILocation(line: 81, column: 9, scope: !2956)
!2964 = distinct !{!2964, !2949, !2965, !388}
!2965 = !DILocation(line: 83, column: 9, scope: !2950)
!2966 = !DILocation(line: 80, column: 32, scope: !2947)
!2967 = !DILocation(line: 80, column: 39, scope: !2947)
!2968 = !DILocation(line: 80, column: 5, scope: !2947)
!2969 = distinct !{!2969, !2948, !2970, !388}
!2970 = !DILocation(line: 84, column: 5, scope: !2942)
!2971 = !DILocation(line: 85, column: 1, scope: !2933)
!2972 = distinct !DISubprogram(name: "sub_f", scope: !585, file: !585, line: 47, type: !1682, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !84, retainedNodes: !71)
!2973 = !DILocalVariable(name: "a", arg: 1, scope: !2972, file: !585, line: 47, type: !51)
!2974 = !DILocation(line: 0, scope: !2972)
!2975 = !DILocalVariable(name: "b", arg: 2, scope: !2972, file: !585, line: 47, type: !51)
!2976 = !DILocation(line: 48, column: 14, scope: !2972)
!2977 = !DILocation(line: 48, column: 5, scope: !2972)
!2978 = distinct !DISubprogram(name: "EF", scope: !2979, file: !2979, line: 60, type: !2980, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !84, retainedNodes: !71)
!2979 = !DIFile(filename: "../../../src/generic/echelon_form.h", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!2980 = !DISubroutineType(types: !2981)
!2981 = !{null, !61, !86, !86}
!2982 = !DILocalVariable(name: "A", arg: 1, scope: !2978, file: !2979, line: 60, type: !61)
!2983 = !DILocation(line: 0, scope: !2978)
!2984 = !DILocalVariable(name: "nrows", arg: 2, scope: !2978, file: !2979, line: 60, type: !86)
!2985 = !DILocalVariable(name: "ncols", arg: 3, scope: !2978, file: !2979, line: 60, type: !86)
!2986 = !DILocalVariable(name: "_pivot_row", scope: !2978, file: !2979, line: 62, type: !2987, align: 256)
!2987 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 384, elements: !17)
!2988 = !DILocation(line: 62, column: 27, scope: !2978)
!2989 = !DILocalVariable(name: "_pivot_row2", scope: !2978, file: !2979, line: 63, type: !2987, align: 256)
!2990 = !DILocation(line: 63, column: 27, scope: !2978)
!2991 = !DILocalVariable(name: "packed_A", scope: !2978, file: !2979, line: 64, type: !2992, align: 256)
!2992 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 29952, elements: !2993)
!2993 = !{!2994}
!2994 = !DISubrange(count: 468)
!2995 = !DILocation(line: 64, column: 27, scope: !2978)
!2996 = !DILocation(line: 66, column: 26, scope: !2978)
!2997 = !DILocation(line: 66, column: 32, scope: !2978)
!2998 = !DILocalVariable(name: "row_len", scope: !2978, file: !2979, line: 66, type: !86)
!2999 = !DILocalVariable(name: "i", scope: !3000, file: !2979, line: 69, type: !86)
!3000 = distinct !DILexicalBlock(scope: !2978, file: !2979, line: 69, column: 5)
!3001 = !DILocation(line: 0, scope: !3000)
!3002 = !DILocation(line: 69, column: 10, scope: !3000)
!3003 = !DILocation(line: 69, scope: !3000)
!3004 = !DILocation(line: 69, column: 23, scope: !3005)
!3005 = distinct !DILexicalBlock(scope: !3000, file: !2979, line: 69, column: 5)
!3006 = !DILocation(line: 69, column: 5, scope: !3000)
!3007 = !DILocation(line: 77, column: 5, scope: !3008)
!3008 = distinct !DILexicalBlock(scope: !2978, file: !2979, line: 77, column: 5)
!3009 = !DILocation(line: 70, column: 29, scope: !3010)
!3010 = distinct !DILexicalBlock(scope: !3005, file: !2979, line: 69, column: 37)
!3011 = !DILocation(line: 70, column: 25, scope: !3010)
!3012 = !DILocation(line: 70, column: 51, scope: !3010)
!3013 = !DILocation(line: 70, column: 47, scope: !3010)
!3014 = !DILocation(line: 70, column: 9, scope: !3010)
!3015 = !DILocation(line: 69, column: 33, scope: !3005)
!3016 = !DILocation(line: 69, column: 5, scope: !3005)
!3017 = distinct !{!3017, !3006, !3018, !388}
!3018 = !DILocation(line: 71, column: 5, scope: !3000)
!3019 = !DILocation(line: 77, scope: !3008)
!3020 = !DILocalVariable(name: "pivot_row", scope: !2978, file: !2979, line: 76, type: !86)
!3021 = !DILocalVariable(name: "pivot_col", scope: !3008, file: !2979, line: 77, type: !86)
!3022 = !DILocation(line: 0, scope: !3008)
!3023 = !DILocation(line: 77, column: 39, scope: !3024)
!3024 = distinct !DILexicalBlock(scope: !3008, file: !2979, line: 77, column: 5)
!3025 = !DILocation(line: 138, column: 5, scope: !3026)
!3026 = distinct !DILexicalBlock(scope: !2978, file: !2979, line: 138, column: 5)
!3027 = !DILocation(line: 79, column: 37, scope: !3028)
!3028 = distinct !DILexicalBlock(scope: !3024, file: !2979, line: 77, column: 61)
!3029 = !DILocalVariable(name: "pivot_row_lower_bound", scope: !3028, file: !2979, line: 79, type: !86)
!3030 = !DILocation(line: 0, scope: !3028)
!3031 = !DILocation(line: 80, column: 37, scope: !3028)
!3032 = !DILocalVariable(name: "pivot_row_upper_bound", scope: !3028, file: !2979, line: 80, type: !86)
!3033 = !DILocalVariable(name: "i", scope: !3034, file: !2979, line: 85, type: !86)
!3034 = distinct !DILexicalBlock(scope: !3028, file: !2979, line: 85, column: 9)
!3035 = !DILocation(line: 0, scope: !3034)
!3036 = !DILocation(line: 85, column: 14, scope: !3034)
!3037 = !DILocation(line: 85, scope: !3034)
!3038 = !DILocation(line: 85, column: 27, scope: !3039)
!3039 = distinct !DILexicalBlock(scope: !3034, file: !2979, line: 85, column: 9)
!3040 = !DILocation(line: 85, column: 9, scope: !3034)
!3041 = !DILocation(line: 93, column: 9, scope: !3042)
!3042 = distinct !DILexicalBlock(scope: !3028, file: !2979, line: 93, column: 9)
!3043 = !DILocation(line: 86, column: 13, scope: !3044)
!3044 = distinct !DILexicalBlock(scope: !3039, file: !2979, line: 85, column: 43)
!3045 = !DILocation(line: 86, column: 27, scope: !3044)
!3046 = !DILocation(line: 87, column: 13, scope: !3044)
!3047 = !DILocation(line: 87, column: 28, scope: !3044)
!3048 = !DILocation(line: 85, column: 39, scope: !3039)
!3049 = !DILocation(line: 85, column: 9, scope: !3039)
!3050 = distinct !{!3050, !3040, !3051, !388}
!3051 = !DILocation(line: 88, column: 9, scope: !3034)
!3052 = !DILocation(line: 0, scope: !3042)
!3053 = !DILocalVariable(name: "row", scope: !3042, file: !2979, line: 93, type: !86)
!3054 = !DILocalVariable(name: "pivot", scope: !3028, file: !2979, line: 91, type: !51)
!3055 = !DILocalVariable(name: "pivot_is_zero", scope: !3028, file: !2979, line: 92, type: !53)
!3056 = !DILocation(line: 94, column: 24, scope: !3057)
!3057 = distinct !DILexicalBlock(scope: !3042, file: !2979, line: 93, column: 9)
!3058 = !DILocation(line: 94, column: 21, scope: !3057)
!3059 = !DILocation(line: 96, column: 38, scope: !3060)
!3060 = distinct !DILexicalBlock(scope: !3057, file: !2979, line: 94, column: 80)
!3061 = !DILocation(line: 96, column: 37, scope: !3060)
!3062 = !DILocalVariable(name: "is_pivot_row", scope: !3060, file: !2979, line: 96, type: !53)
!3063 = !DILocation(line: 0, scope: !3060)
!3064 = !DILocation(line: 97, column: 40, scope: !3060)
!3065 = !DILocalVariable(name: "below_pivot_row", scope: !3060, file: !2979, line: 97, type: !53)
!3066 = !DILocalVariable(name: "j", scope: !3067, file: !2979, line: 99, type: !86)
!3067 = distinct !DILexicalBlock(scope: !3060, file: !2979, line: 99, column: 13)
!3068 = !DILocation(line: 0, scope: !3067)
!3069 = !DILocation(line: 99, column: 18, scope: !3067)
!3070 = !DILocation(line: 99, scope: !3067)
!3071 = !DILocation(line: 99, column: 31, scope: !3072)
!3072 = distinct !DILexicalBlock(scope: !3067, file: !2979, line: 99, column: 13)
!3073 = !DILocation(line: 99, column: 13, scope: !3067)
!3074 = !DILocation(line: 100, column: 67, scope: !3075)
!3075 = distinct !DILexicalBlock(scope: !3072, file: !2979, line: 99, column: 47)
!3076 = !DILocation(line: 100, column: 48, scope: !3075)
!3077 = !DILocation(line: 101, column: 47, scope: !3075)
!3078 = !DILocation(line: 101, column: 57, scope: !3075)
!3079 = !DILocation(line: 101, column: 34, scope: !3075)
!3080 = !DILocation(line: 100, column: 85, scope: !3075)
!3081 = !DILocation(line: 100, column: 17, scope: !3075)
!3082 = !DILocation(line: 100, column: 31, scope: !3075)
!3083 = !DILocation(line: 99, column: 43, scope: !3072)
!3084 = !DILocation(line: 99, column: 13, scope: !3072)
!3085 = distinct !{!3085, !3073, !3086, !388}
!3086 = !DILocation(line: 102, column: 13, scope: !3067)
!3087 = !DILocation(line: 103, column: 21, scope: !3060)
!3088 = !DILocation(line: 104, column: 44, scope: !3060)
!3089 = !DILocation(line: 104, column: 30, scope: !3060)
!3090 = !DILocation(line: 104, column: 29, scope: !3060)
!3091 = !DILocation(line: 94, column: 76, scope: !3057)
!3092 = !DILocation(line: 93, column: 9, scope: !3057)
!3093 = distinct !{!3093, !3041, !3094, !388}
!3094 = !DILocation(line: 105, column: 9, scope: !3042)
!3095 = !DILocation(line: 108, column: 19, scope: !3028)
!3096 = !DILocalVariable(name: "inverse", scope: !2978, file: !2979, line: 75, type: !51)
!3097 = !DILocation(line: 109, column: 9, scope: !3028)
!3098 = !DILocalVariable(name: "row", scope: !3099, file: !2979, line: 113, type: !86)
!3099 = distinct !DILexicalBlock(scope: !3028, file: !2979, line: 113, column: 9)
!3100 = !DILocation(line: 0, scope: !3099)
!3101 = !DILocation(line: 113, column: 14, scope: !3099)
!3102 = !DILocation(line: 113, scope: !3099)
!3103 = !DILocation(line: 113, column: 51, scope: !3104)
!3104 = distinct !DILexicalBlock(scope: !3099, file: !2979, line: 113, column: 9)
!3105 = !DILocation(line: 113, column: 9, scope: !3099)
!3106 = !DILocation(line: 124, column: 9, scope: !3107)
!3107 = distinct !DILexicalBlock(scope: !3028, file: !2979, line: 124, column: 9)
!3108 = !DILocation(line: 114, column: 33, scope: !3109)
!3109 = distinct !DILexicalBlock(scope: !3104, file: !2979, line: 113, column: 84)
!3110 = !DILocation(line: 114, column: 63, scope: !3109)
!3111 = !DILocalVariable(name: "do_copy", scope: !3109, file: !2979, line: 114, type: !53)
!3112 = !DILocation(line: 0, scope: !3109)
!3113 = !DILocalVariable(name: "do_not_copy", scope: !3109, file: !2979, line: 115, type: !53)
!3114 = !DILocalVariable(name: "col", scope: !3115, file: !2979, line: 116, type: !86)
!3115 = distinct !DILexicalBlock(scope: !3109, file: !2979, line: 116, column: 13)
!3116 = !DILocation(line: 0, scope: !3115)
!3117 = !DILocation(line: 116, column: 18, scope: !3115)
!3118 = !DILocation(line: 116, scope: !3115)
!3119 = !DILocation(line: 116, column: 35, scope: !3120)
!3120 = distinct !DILexicalBlock(scope: !3115, file: !2979, line: 116, column: 13)
!3121 = !DILocation(line: 116, column: 13, scope: !3115)
!3122 = !DILocation(line: 118, column: 49, scope: !3123)
!3123 = distinct !DILexicalBlock(scope: !3120, file: !2979, line: 116, column: 53)
!3124 = !DILocation(line: 118, column: 59, scope: !3123)
!3125 = !DILocation(line: 118, column: 36, scope: !3123)
!3126 = !DILocation(line: 118, column: 34, scope: !3123)
!3127 = !DILocation(line: 119, column: 32, scope: !3123)
!3128 = !DILocation(line: 119, column: 30, scope: !3123)
!3129 = !DILocation(line: 118, column: 67, scope: !3123)
!3130 = !DILocation(line: 117, column: 30, scope: !3123)
!3131 = !DILocation(line: 117, column: 40, scope: !3123)
!3132 = !DILocation(line: 117, column: 17, scope: !3123)
!3133 = !DILocation(line: 117, column: 47, scope: !3123)
!3134 = !DILocation(line: 116, column: 49, scope: !3120)
!3135 = !DILocation(line: 116, column: 13, scope: !3120)
!3136 = distinct !{!3136, !3121, !3137, !388}
!3137 = !DILocation(line: 120, column: 13, scope: !3115)
!3138 = !DILocation(line: 113, column: 80, scope: !3104)
!3139 = !DILocation(line: 113, column: 9, scope: !3104)
!3140 = distinct !{!3140, !3105, !3141, !388}
!3141 = !DILocation(line: 121, column: 9, scope: !3099)
!3142 = !DILocation(line: 124, scope: !3107)
!3143 = !DILocalVariable(name: "row", scope: !3107, file: !2979, line: 124, type: !86)
!3144 = !DILocation(line: 0, scope: !3107)
!3145 = !DILocation(line: 124, column: 51, scope: !3146)
!3146 = distinct !DILexicalBlock(scope: !3107, file: !2979, line: 124, column: 9)
!3147 = !DILocation(line: 125, column: 46, scope: !3148)
!3148 = distinct !DILexicalBlock(scope: !3146, file: !2979, line: 124, column: 67)
!3149 = !DILocalVariable(name: "below_pivot", scope: !3148, file: !2979, line: 125, type: !51)
!3150 = !DILocation(line: 0, scope: !3148)
!3151 = !DILocation(line: 126, column: 74, scope: !3148)
!3152 = !DILocation(line: 126, column: 68, scope: !3148)
!3153 = !DILocation(line: 126, column: 41, scope: !3148)
!3154 = !DILocalVariable(name: "elt_to_elim", scope: !3148, file: !2979, line: 126, type: !51)
!3155 = !DILocation(line: 128, column: 63, scope: !3148)
!3156 = !DILocation(line: 129, column: 52, scope: !3148)
!3157 = !DILocation(line: 129, column: 46, scope: !3148)
!3158 = !DILocation(line: 128, column: 13, scope: !3148)
!3159 = !DILocation(line: 124, column: 63, scope: !3146)
!3160 = !DILocation(line: 124, column: 9, scope: !3146)
!3161 = distinct !{!3161, !3106, !3162, !388}
!3162 = !DILocation(line: 130, column: 9, scope: !3107)
!3163 = !DILocation(line: 132, column: 19, scope: !3028)
!3164 = !DILocation(line: 77, column: 57, scope: !3024)
!3165 = !DILocation(line: 77, column: 5, scope: !3024)
!3166 = distinct !{!3166, !3007, !3167, !388}
!3167 = !DILocation(line: 133, column: 5, scope: !3008)
!3168 = !DILocation(line: 138, scope: !3026)
!3169 = !DILocalVariable(name: "i", scope: !3026, file: !2979, line: 138, type: !86)
!3170 = !DILocation(line: 0, scope: !3026)
!3171 = !DILocation(line: 138, column: 23, scope: !3172)
!3172 = distinct !DILexicalBlock(scope: !3026, file: !2979, line: 138, column: 5)
!3173 = !DILocation(line: 139, column: 47, scope: !3174)
!3174 = distinct !DILexicalBlock(scope: !3172, file: !2979, line: 138, column: 37)
!3175 = !DILocation(line: 139, column: 43, scope: !3174)
!3176 = !DILocation(line: 139, column: 9, scope: !3174)
!3177 = !DILocalVariable(name: "j", scope: !3178, file: !2979, line: 140, type: !86)
!3178 = distinct !DILexicalBlock(scope: !3174, file: !2979, line: 140, column: 9)
!3179 = !DILocation(line: 0, scope: !3178)
!3180 = !DILocation(line: 140, column: 14, scope: !3178)
!3181 = !DILocation(line: 140, scope: !3178)
!3182 = !DILocation(line: 140, column: 27, scope: !3183)
!3183 = distinct !DILexicalBlock(scope: !3178, file: !2979, line: 140, column: 9)
!3184 = !DILocation(line: 140, column: 9, scope: !3178)
!3185 = !DILocation(line: 141, column: 32, scope: !3186)
!3186 = distinct !DILexicalBlock(scope: !3183, file: !2979, line: 140, column: 41)
!3187 = !DILocation(line: 141, column: 17, scope: !3186)
!3188 = !DILocation(line: 141, column: 13, scope: !3186)
!3189 = !DILocation(line: 141, column: 30, scope: !3186)
!3190 = !DILocation(line: 140, column: 37, scope: !3183)
!3191 = !DILocation(line: 140, column: 9, scope: !3183)
!3192 = distinct !{!3192, !3184, !3193, !388}
!3193 = !DILocation(line: 142, column: 9, scope: !3178)
!3194 = !DILocation(line: 138, column: 33, scope: !3172)
!3195 = !DILocation(line: 138, column: 5, scope: !3172)
!3196 = distinct !{!3196, !3025, !3197, !388}
!3197 = !DILocation(line: 143, column: 5, scope: !3026)
!3198 = !DILocation(line: 145, column: 5, scope: !2978)
!3199 = !DILocation(line: 146, column: 5, scope: !2978)
!3200 = !DILocation(line: 147, column: 5, scope: !2978)
!3201 = !DILocation(line: 148, column: 5, scope: !2978)
!3202 = !DILocation(line: 149, column: 1, scope: !2978)
!3203 = distinct !DISubprogram(name: "ct_compare_8", scope: !3204, file: !3204, line: 51, type: !1682, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !84, retainedNodes: !71)
!3204 = !DIFile(filename: "../../../src/arithmetic.h", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!3205 = !DILocalVariable(name: "a", arg: 1, scope: !3203, file: !3204, line: 51, type: !51)
!3206 = !DILocation(line: 0, scope: !3203)
!3207 = !DILocalVariable(name: "b", arg: 2, scope: !3203, file: !3204, line: 51, type: !51)
!3208 = !DILocation(line: 52, column: 42, scope: !3203)
!3209 = !DILocation(line: 52, column: 13, scope: !3203)
!3210 = !DILocation(line: 52, column: 71, scope: !3203)
!3211 = !DILocation(line: 52, column: 69, scope: !3203)
!3212 = !DILocation(line: 52, column: 5, scope: !3203)
!3213 = distinct !DISubprogram(name: "mul_fx8", scope: !585, file: !585, line: 27, type: !3214, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !84, retainedNodes: !71)
!3214 = !DISubroutineType(types: !3215)
!3215 = !{!53, !51, !53}
!3216 = !DILocalVariable(name: "a", arg: 1, scope: !3213, file: !585, line: 27, type: !51)
!3217 = !DILocation(line: 0, scope: !3213)
!3218 = !DILocalVariable(name: "b", arg: 2, scope: !3213, file: !585, line: 27, type: !53)
!3219 = !DILocation(line: 30, column: 13, scope: !3213)
!3220 = !DILocation(line: 30, column: 10, scope: !3213)
!3221 = !DILocation(line: 30, column: 17, scope: !3213)
!3222 = !DILocalVariable(name: "p", scope: !3213, file: !585, line: 29, type: !53)
!3223 = !DILocation(line: 31, column: 13, scope: !3213)
!3224 = !DILocation(line: 31, column: 10, scope: !3213)
!3225 = !DILocation(line: 31, column: 17, scope: !3213)
!3226 = !DILocation(line: 31, column: 7, scope: !3213)
!3227 = !DILocation(line: 32, column: 13, scope: !3213)
!3228 = !DILocation(line: 32, column: 10, scope: !3213)
!3229 = !DILocation(line: 32, column: 17, scope: !3213)
!3230 = !DILocation(line: 32, column: 7, scope: !3213)
!3231 = !DILocation(line: 33, column: 13, scope: !3213)
!3232 = !DILocation(line: 33, column: 10, scope: !3213)
!3233 = !DILocation(line: 33, column: 17, scope: !3213)
!3234 = !DILocation(line: 33, column: 7, scope: !3213)
!3235 = !DILocalVariable(name: "top_p", scope: !3213, file: !585, line: 36, type: !53)
!3236 = !DILocation(line: 37, column: 32, scope: !3213)
!3237 = !DILocation(line: 37, column: 47, scope: !3213)
!3238 = !DILocation(line: 37, column: 38, scope: !3213)
!3239 = !DILocation(line: 37, column: 54, scope: !3213)
!3240 = !DILocalVariable(name: "out", scope: !3213, file: !585, line: 37, type: !53)
!3241 = !DILocation(line: 38, column: 5, scope: !3213)
!3242 = distinct !DISubprogram(name: "ef_pack_m_vec", scope: !2979, file: !2979, line: 24, type: !3243, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !84, retainedNodes: !71)
!3243 = !DISubroutineType(types: !3244)
!3244 = !{null, !90, !52, !86}
!3245 = !DILocalVariable(name: "in", arg: 1, scope: !3242, file: !2979, line: 24, type: !90)
!3246 = !DILocation(line: 0, scope: !3242)
!3247 = !DILocalVariable(name: "out", arg: 2, scope: !3242, file: !2979, line: 24, type: !52)
!3248 = !DILocalVariable(name: "ncols", arg: 3, scope: !3242, file: !2979, line: 24, type: !86)
!3249 = !DILocalVariable(name: "out8", scope: !3242, file: !2979, line: 26, type: !61)
!3250 = !DILocalVariable(name: "i", scope: !3242, file: !2979, line: 25, type: !86)
!3251 = !DILocation(line: 27, column: 9, scope: !3252)
!3252 = distinct !DILexicalBlock(scope: !3242, file: !2979, line: 27, column: 5)
!3253 = !DILocation(line: 27, scope: !3252)
!3254 = !DILocation(line: 27, column: 17, scope: !3255)
!3255 = distinct !DILexicalBlock(scope: !3252, file: !2979, line: 27, column: 5)
!3256 = !DILocation(line: 27, column: 20, scope: !3255)
!3257 = !DILocation(line: 27, column: 5, scope: !3252)
!3258 = !DILocation(line: 31, column: 23, scope: !3259)
!3259 = distinct !DILexicalBlock(scope: !3255, file: !2979, line: 27, column: 36)
!3260 = !DILocation(line: 31, column: 44, scope: !3259)
!3261 = !DILocation(line: 31, column: 40, scope: !3259)
!3262 = !DILocation(line: 31, column: 48, scope: !3259)
!3263 = !DILocation(line: 31, column: 37, scope: !3259)
!3264 = !DILocation(line: 31, column: 15, scope: !3259)
!3265 = !DILocation(line: 31, column: 9, scope: !3259)
!3266 = !DILocation(line: 31, column: 20, scope: !3259)
!3267 = !DILocation(line: 27, column: 31, scope: !3255)
!3268 = !DILocation(line: 27, column: 5, scope: !3255)
!3269 = distinct !{!3269, !3257, !3270, !388}
!3270 = !DILocation(line: 33, column: 5, scope: !3252)
!3271 = !DILocation(line: 34, column: 19, scope: !3272)
!3272 = distinct !DILexicalBlock(scope: !3242, file: !2979, line: 34, column: 9)
!3273 = !DILocation(line: 38, column: 23, scope: !3274)
!3274 = distinct !DILexicalBlock(scope: !3272, file: !2979, line: 34, column: 24)
!3275 = !DILocation(line: 38, column: 15, scope: !3274)
!3276 = !DILocation(line: 38, column: 9, scope: !3274)
!3277 = !DILocation(line: 38, column: 20, scope: !3274)
!3278 = !DILocation(line: 40, column: 5, scope: !3274)
!3279 = !DILocation(line: 41, column: 1, scope: !3242)
!3280 = distinct !DISubprogram(name: "ct_compare_64", scope: !3204, file: !3204, line: 46, type: !3281, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !84, retainedNodes: !71)
!3281 = !DISubroutineType(types: !3282)
!3282 = !{!53, !86, !86}
!3283 = !DILocalVariable(name: "a", arg: 1, scope: !3280, file: !3204, line: 46, type: !86)
!3284 = !DILocation(line: 0, scope: !3280)
!3285 = !DILocalVariable(name: "b", arg: 2, scope: !3280, file: !3204, line: 46, type: !86)
!3286 = !DILocation(line: 47, column: 38, scope: !3280)
!3287 = !DILocation(line: 47, column: 44, scope: !3280)
!3288 = !DILocation(line: 47, column: 73, scope: !3280)
!3289 = !DILocation(line: 47, column: 71, scope: !3280)
!3290 = !DILocation(line: 47, column: 5, scope: !3280)
!3291 = distinct !DISubprogram(name: "ct_64_is_greater_than", scope: !3204, file: !3204, line: 35, type: !3281, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !84, retainedNodes: !71)
!3292 = !DILocalVariable(name: "a", arg: 1, scope: !3291, file: !3204, line: 35, type: !86)
!3293 = !DILocation(line: 0, scope: !3291)
!3294 = !DILocalVariable(name: "b", arg: 2, scope: !3291, file: !3204, line: 35, type: !86)
!3295 = !DILocalVariable(name: "diff", scope: !3291, file: !3204, line: 36, type: !87)
!3296 = !DILocation(line: 37, column: 30, scope: !3291)
!3297 = !DILocation(line: 37, column: 59, scope: !3291)
!3298 = !DILocation(line: 37, column: 57, scope: !3291)
!3299 = !DILocation(line: 37, column: 5, scope: !3291)
!3300 = distinct !DISubprogram(name: "m_extract_element", scope: !2979, file: !2979, line: 16, type: !3301, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !84, retainedNodes: !71)
!3301 = !DISubroutineType(types: !3302)
!3302 = !{!51, !411, !86}
!3303 = !DILocalVariable(name: "in", arg: 1, scope: !3300, file: !2979, line: 16, type: !411)
!3304 = !DILocation(line: 0, scope: !3300)
!3305 = !DILocalVariable(name: "index", arg: 2, scope: !3300, file: !2979, line: 16, type: !86)
!3306 = !DILocation(line: 17, column: 27, scope: !3300)
!3307 = !DILocalVariable(name: "leg", scope: !3300, file: !2979, line: 17, type: !324)
!3308 = !DILocation(line: 18, column: 30, scope: !3300)
!3309 = !DILocalVariable(name: "offset", scope: !3300, file: !2979, line: 18, type: !324)
!3310 = !DILocation(line: 20, column: 13, scope: !3300)
!3311 = !DILocation(line: 20, column: 31, scope: !3300)
!3312 = !DILocation(line: 20, column: 21, scope: !3300)
!3313 = !DILocation(line: 20, column: 12, scope: !3300)
!3314 = !DILocation(line: 20, column: 5, scope: !3300)
!3315 = distinct !DISubprogram(name: "inverse_f", scope: !585, file: !585, line: 56, type: !3316, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !84, retainedNodes: !71)
!3316 = !DISubroutineType(types: !3317)
!3317 = !{!51, !51}
!3318 = !DILocalVariable(name: "a", arg: 1, scope: !3315, file: !585, line: 56, type: !51)
!3319 = !DILocation(line: 0, scope: !3315)
!3320 = !DILocation(line: 60, column: 24, scope: !3315)
!3321 = !DILocalVariable(name: "a2", scope: !3315, file: !585, line: 60, type: !51)
!3322 = !DILocation(line: 61, column: 24, scope: !3315)
!3323 = !DILocalVariable(name: "a4", scope: !3315, file: !585, line: 61, type: !51)
!3324 = !DILocation(line: 62, column: 24, scope: !3315)
!3325 = !DILocalVariable(name: "a8", scope: !3315, file: !585, line: 62, type: !51)
!3326 = !DILocation(line: 63, column: 24, scope: !3315)
!3327 = !DILocalVariable(name: "a6", scope: !3315, file: !585, line: 63, type: !51)
!3328 = !DILocation(line: 64, column: 25, scope: !3315)
!3329 = !DILocalVariable(name: "a14", scope: !3315, file: !585, line: 64, type: !51)
!3330 = !DILocation(line: 66, column: 5, scope: !3315)
!3331 = distinct !DISubprogram(name: "vec_mul_add_u64", scope: !3204, file: !3204, line: 94, type: !3332, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !84, retainedNodes: !71)
!3332 = !DISubroutineType(types: !3333)
!3333 = !{null, !324, !411, !51, !52}
!3334 = !DILocalVariable(name: "legs", arg: 1, scope: !3331, file: !3204, line: 94, type: !324)
!3335 = !DILocation(line: 0, scope: !3331)
!3336 = !DILocalVariable(name: "in", arg: 2, scope: !3331, file: !3204, line: 94, type: !411)
!3337 = !DILocalVariable(name: "a", arg: 3, scope: !3331, file: !3204, line: 94, type: !51)
!3338 = !DILocalVariable(name: "acc", arg: 4, scope: !3331, file: !3204, line: 94, type: !52)
!3339 = !DILocation(line: 95, column: 20, scope: !3331)
!3340 = !DILocalVariable(name: "tab", scope: !3331, file: !3204, line: 95, type: !62)
!3341 = !DILocalVariable(name: "lsb_ask", scope: !3331, file: !3204, line: 97, type: !53)
!3342 = !DILocalVariable(name: "i", scope: !3343, file: !3204, line: 99, type: !86)
!3343 = distinct !DILexicalBlock(scope: !3331, file: !3204, line: 99, column: 5)
!3344 = !DILocation(line: 0, scope: !3343)
!3345 = !DILocation(line: 99, column: 9, scope: !3343)
!3346 = !DILocation(line: 99, scope: !3343)
!3347 = !DILocation(line: 99, column: 20, scope: !3348)
!3348 = distinct !DILexicalBlock(scope: !3343, file: !3204, line: 99, column: 5)
!3349 = !DILocation(line: 99, column: 5, scope: !3343)
!3350 = !DILocation(line: 100, column: 21, scope: !3351)
!3351 = distinct !DILexicalBlock(scope: !3348, file: !3204, line: 99, column: 32)
!3352 = !DILocation(line: 100, column: 33, scope: !3351)
!3353 = !DILocation(line: 100, column: 51, scope: !3351)
!3354 = !DILocation(line: 100, column: 46, scope: !3351)
!3355 = !DILocation(line: 100, column: 44, scope: !3351)
!3356 = !DILocation(line: 101, column: 27, scope: !3351)
!3357 = !DILocation(line: 101, column: 33, scope: !3351)
!3358 = !DILocation(line: 101, column: 52, scope: !3351)
!3359 = !DILocation(line: 101, column: 59, scope: !3351)
!3360 = !DILocation(line: 101, column: 46, scope: !3351)
!3361 = !DILocation(line: 101, column: 44, scope: !3351)
!3362 = !DILocation(line: 101, column: 17, scope: !3351)
!3363 = !DILocation(line: 102, column: 21, scope: !3351)
!3364 = !DILocation(line: 102, column: 27, scope: !3351)
!3365 = !DILocation(line: 102, column: 33, scope: !3351)
!3366 = !DILocation(line: 102, column: 52, scope: !3351)
!3367 = !DILocation(line: 102, column: 59, scope: !3351)
!3368 = !DILocation(line: 102, column: 46, scope: !3351)
!3369 = !DILocation(line: 102, column: 44, scope: !3351)
!3370 = !DILocation(line: 102, column: 17, scope: !3351)
!3371 = !DILocation(line: 103, column: 21, scope: !3351)
!3372 = !DILocation(line: 103, column: 27, scope: !3351)
!3373 = !DILocation(line: 103, column: 33, scope: !3351)
!3374 = !DILocation(line: 103, column: 52, scope: !3351)
!3375 = !DILocation(line: 103, column: 59, scope: !3351)
!3376 = !DILocation(line: 103, column: 46, scope: !3351)
!3377 = !DILocation(line: 103, column: 44, scope: !3351)
!3378 = !DILocation(line: 103, column: 17, scope: !3351)
!3379 = !DILocation(line: 100, column: 9, scope: !3351)
!3380 = !DILocation(line: 100, column: 16, scope: !3351)
!3381 = !DILocation(line: 99, column: 29, scope: !3348)
!3382 = !DILocation(line: 99, column: 5, scope: !3348)
!3383 = distinct !{!3383, !3349, !3384, !388}
!3384 = !DILocation(line: 104, column: 5, scope: !3343)
!3385 = !DILocation(line: 105, column: 1, scope: !3331)
!3386 = distinct !DISubprogram(name: "ef_unpack_m_vec", scope: !2979, file: !2979, line: 44, type: !3387, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !84, retainedNodes: !71)
!3387 = !DISubroutineType(types: !3388)
!3388 = !{null, !86, !411, !61}
!3389 = !DILocalVariable(name: "legs", arg: 1, scope: !3386, file: !2979, line: 44, type: !86)
!3390 = !DILocation(line: 0, scope: !3386)
!3391 = !DILocalVariable(name: "in", arg: 2, scope: !3386, file: !2979, line: 44, type: !411)
!3392 = !DILocalVariable(name: "out", arg: 3, scope: !3386, file: !2979, line: 44, type: !61)
!3393 = !DILocalVariable(name: "in8", scope: !3386, file: !2979, line: 45, type: !90)
!3394 = !DILocalVariable(name: "i", scope: !3395, file: !2979, line: 46, type: !86)
!3395 = distinct !DILexicalBlock(scope: !3386, file: !2979, line: 46, column: 5)
!3396 = !DILocation(line: 0, scope: !3395)
!3397 = !DILocation(line: 46, column: 9, scope: !3395)
!3398 = !DILocation(line: 46, scope: !3395)
!3399 = !DILocation(line: 46, column: 29, scope: !3400)
!3400 = distinct !DILexicalBlock(scope: !3395, file: !2979, line: 46, column: 5)
!3401 = !DILocation(line: 46, column: 22, scope: !3400)
!3402 = !DILocation(line: 46, column: 5, scope: !3395)
!3403 = !DILocation(line: 51, column: 26, scope: !3404)
!3404 = distinct !DILexicalBlock(scope: !3400, file: !2979, line: 46, column: 42)
!3405 = !DILocation(line: 51, column: 21, scope: !3404)
!3406 = !DILocation(line: 51, column: 31, scope: !3404)
!3407 = !DILocation(line: 51, column: 9, scope: !3404)
!3408 = !DILocation(line: 51, column: 18, scope: !3404)
!3409 = !DILocation(line: 52, column: 26, scope: !3404)
!3410 = !DILocation(line: 52, column: 21, scope: !3404)
!3411 = !DILocation(line: 52, column: 30, scope: !3404)
!3412 = !DILocation(line: 52, column: 14, scope: !3404)
!3413 = !DILocation(line: 52, column: 9, scope: !3404)
!3414 = !DILocation(line: 52, column: 18, scope: !3404)
!3415 = !DILocation(line: 46, column: 37, scope: !3400)
!3416 = !DILocation(line: 46, column: 5, scope: !3400)
!3417 = distinct !{!3417, !3402, !3418, !388}
!3418 = !DILocation(line: 54, column: 5, scope: !3395)
!3419 = !DILocation(line: 55, column: 1, scope: !3386)
!3420 = distinct !DISubprogram(name: "mul_table", scope: !585, file: !585, line: 128, type: !586, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !84, retainedNodes: !71)
!3421 = !DILocalVariable(name: "b", arg: 1, scope: !3420, file: !585, line: 128, type: !175)
!3422 = !DILocation(line: 0, scope: !3420)
!3423 = !DILocation(line: 129, column: 19, scope: !3420)
!3424 = !DILocation(line: 129, column: 33, scope: !3420)
!3425 = !DILocalVariable(name: "x", scope: !3420, file: !585, line: 129, type: !62)
!3426 = !DILocalVariable(name: "high_nibble_mask", scope: !3420, file: !585, line: 131, type: !62)
!3427 = !DILocation(line: 133, column: 28, scope: !3420)
!3428 = !DILocalVariable(name: "high_half", scope: !3420, file: !585, line: 133, type: !62)
!3429 = !DILocation(line: 134, column: 28, scope: !3420)
!3430 = !DILocation(line: 134, column: 47, scope: !3420)
!3431 = !DILocation(line: 134, column: 34, scope: !3420)
!3432 = !DILocation(line: 134, column: 5, scope: !3420)
!3433 = distinct !DISubprogram(name: "mul_f", scope: !585, file: !585, line: 8, type: !1682, scopeLine: 8, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !84, retainedNodes: !71)
!3434 = !DILocalVariable(name: "a", arg: 1, scope: !3433, file: !585, line: 8, type: !51)
!3435 = !DILocation(line: 0, scope: !3433)
!3436 = !DILocalVariable(name: "b", arg: 2, scope: !3433, file: !585, line: 8, type: !51)
!3437 = !DILocation(line: 13, column: 10, scope: !3433)
!3438 = !DILocation(line: 13, column: 7, scope: !3433)
!3439 = !DILocation(line: 16, column: 17, scope: !3433)
!3440 = !DILocalVariable(name: "p", scope: !3433, file: !585, line: 10, type: !51)
!3441 = !DILocation(line: 17, column: 13, scope: !3433)
!3442 = !DILocation(line: 17, column: 17, scope: !3433)
!3443 = !DILocation(line: 17, column: 7, scope: !3433)
!3444 = !DILocation(line: 18, column: 13, scope: !3433)
!3445 = !DILocation(line: 18, column: 17, scope: !3433)
!3446 = !DILocation(line: 18, column: 7, scope: !3433)
!3447 = !DILocation(line: 19, column: 13, scope: !3433)
!3448 = !DILocation(line: 19, column: 17, scope: !3433)
!3449 = !DILocation(line: 19, column: 7, scope: !3433)
!3450 = !DILocalVariable(name: "top_p", scope: !3433, file: !585, line: 22, type: !51)
!3451 = !DILocation(line: 23, column: 37, scope: !3433)
!3452 = !DILocation(line: 23, column: 52, scope: !3433)
!3453 = !DILocation(line: 23, column: 43, scope: !3433)
!3454 = !DILocation(line: 23, column: 59, scope: !3433)
!3455 = !DILocalVariable(name: "out", scope: !3433, file: !585, line: 23, type: !51)
!3456 = !DILocation(line: 24, column: 5, scope: !3433)
!3457 = distinct !DISubprogram(name: "lincomb", scope: !585, file: !585, line: 69, type: !1690, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !84, retainedNodes: !71)
!3458 = !DILocalVariable(name: "a", arg: 1, scope: !3457, file: !585, line: 69, type: !90)
!3459 = !DILocation(line: 0, scope: !3457)
!3460 = !DILocalVariable(name: "b", arg: 2, scope: !3457, file: !585, line: 70, type: !90)
!3461 = !DILocalVariable(name: "n", arg: 3, scope: !3457, file: !585, line: 70, type: !86)
!3462 = !DILocalVariable(name: "m", arg: 4, scope: !3457, file: !585, line: 70, type: !86)
!3463 = !DILocalVariable(name: "ret", scope: !3457, file: !585, line: 71, type: !51)
!3464 = !DILocalVariable(name: "i", scope: !3465, file: !585, line: 72, type: !86)
!3465 = distinct !DILexicalBlock(scope: !3457, file: !585, line: 72, column: 5)
!3466 = !DILocation(line: 0, scope: !3465)
!3467 = !DILocation(line: 72, column: 10, scope: !3465)
!3468 = !DILocation(line: 72, scope: !3465)
!3469 = !DILocation(line: 72, column: 23, scope: !3470)
!3470 = distinct !DILexicalBlock(scope: !3465, file: !585, line: 72, column: 5)
!3471 = !DILocation(line: 72, column: 5, scope: !3465)
!3472 = !DILocation(line: 73, column: 27, scope: !3473)
!3473 = distinct !DILexicalBlock(scope: !3470, file: !585, line: 72, column: 41)
!3474 = !DILocation(line: 73, column: 33, scope: !3473)
!3475 = !DILocation(line: 73, column: 21, scope: !3473)
!3476 = !DILocation(line: 73, column: 15, scope: !3473)
!3477 = !DILocation(line: 72, column: 28, scope: !3470)
!3478 = !DILocation(line: 72, column: 35, scope: !3470)
!3479 = !DILocation(line: 72, column: 5, scope: !3470)
!3480 = distinct !{!3480, !3471, !3481, !388}
!3481 = !DILocation(line: 74, column: 5, scope: !3465)
!3482 = !DILocation(line: 75, column: 5, scope: !3457)
!3483 = distinct !DISubprogram(name: "add_f", scope: !585, file: !585, line: 42, type: !1682, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !84, retainedNodes: !71)
!3484 = !DILocalVariable(name: "a", arg: 1, scope: !3483, file: !585, line: 42, type: !51)
!3485 = !DILocation(line: 0, scope: !3483)
!3486 = !DILocalVariable(name: "b", arg: 2, scope: !3483, file: !585, line: 42, type: !51)
!3487 = !DILocation(line: 43, column: 14, scope: !3483)
!3488 = !DILocation(line: 43, column: 5, scope: !3483)
