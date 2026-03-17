; ModuleID = 'composite'
source_filename = "composite"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "arm-unknown-none-eabi"

%struct.sk_t = type { [106713 x i64], [1704 x i8] }

@__const.example_mayo.msg = private unnamed_addr constant <{ i8, [31 x i8] }> <{ i8 14, [31 x i8] zeroinitializer }>, align 1
@.str = private unnamed_addr constant [17 x i8] c"Example with %s\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [7 x i8] c"MAYO_5\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [17 x i8] c"mayo_keypair -> \00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [6 x i8] c"FAIL\0A\00", align 1, !dbg !14
@.str.4 = private unnamed_addr constant [4 x i8] c"OK\0A\00", align 1, !dbg !19
@.str.5 = private unnamed_addr constant [19 x i8] c"mayo_expand_sk -> \00", align 1, !dbg !24
@.str.6 = private unnamed_addr constant [19 x i8] c"mayo_expand_pk -> \00", align 1, !dbg !29
@.str.7 = private unnamed_addr constant [14 x i8] c"mayo_sign -> \00", align 1, !dbg !31
@.str.8 = private unnamed_addr constant [39 x i8] c"mayo_open (with correct signature) -> \00", align 1, !dbg !36
@.str.9 = private unnamed_addr constant [41 x i8] c"mayo_verify (with correct signature) -> \00", align 1, !dbg !41
@f_tail = internal unnamed_addr constant [4 x i8] c"\04\00\08\01", align 1, !dbg !46
@pqmayo_MAYO_5_ref_uint32_t_blocker = dso_local local_unnamed_addr global i32 0, align 4, !dbg !82
@pqmayo_MAYO_5_ref_uint64_t_blocker = dso_local global i64 0, align 8, !dbg !97
@pqmayo_MAYO_5_ref_unsigned_char_blocker = dso_local global i8 0, align 1, !dbg !101

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
    #dbg_value(i32 996, !155, !DIExpression(), !152)
  store i32 996, ptr %smlen, align 4, !dbg !156
  %call = call dereferenceable_or_null(5554) ptr @calloc(i32 noundef 5554, i32 noundef 1) #7, !dbg !157
    #dbg_value(ptr %call, !158, !DIExpression(), !152)
  %call1 = call dereferenceable_or_null(40) ptr @calloc(i32 noundef 40, i32 noundef 1) #7, !dbg !159
    #dbg_value(ptr %call1, !160, !DIExpression(), !152)
  %call2 = call dereferenceable_or_null(859320) ptr @calloc(i32 noundef 1, i32 noundef 859320) #7, !dbg !161
    #dbg_value(ptr %call2, !162, !DIExpression(), !152)
  %call3 = call dereferenceable_or_null(855408) ptr @calloc(i32 noundef 1, i32 noundef 855408) #7, !dbg !163
    #dbg_value(ptr %call3, !164, !DIExpression(), !152)
  %0 = load i32, ptr %msglen, align 4, !dbg !179
    #dbg_value(i32 %0, !153, !DIExpression(), !152)
  %add4 = add i32 %0, 964, !dbg !180
  %call5 = call ptr @calloc(i32 noundef %add4, i32 noundef 1) #7, !dbg !181
    #dbg_value(ptr %call5, !182, !DIExpression(), !152)
    #dbg_declare(ptr %msg, !183, !DIExpression(), !187)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %msg, ptr noundef nonnull align 1 dereferenceable(32) @__const.example_mayo.msg, i32 32, i1 false), !dbg !187
    #dbg_declare(ptr %msg2, !188, !DIExpression(), !189)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %msg2, i8 0, i32 32, i1 false), !dbg !189
  %call6 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #8, !dbg !190
  %call7 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.2) #8, !dbg !191
  %call8 = call i32 @pqmayo_MAYO_5_ref_mayo_keypair(ptr noundef %p, ptr noundef %call, ptr noundef %call1) #6, !dbg !192
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
  %call12 = call i32 @pqmayo_MAYO_5_ref_mayo_expand_sk(ptr noundef %p, ptr noundef %call1, ptr noundef %call3) #6, !dbg !202
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
  %call20 = call i32 @pqmayo_MAYO_5_ref_mayo_expand_pk(ptr noundef %p, ptr noundef %call, ptr noundef %call2) #6, !dbg !211
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
  %call28 = call i32 @pqmayo_MAYO_5_ref_mayo_sign(ptr noundef %p, ptr noundef %call5, ptr noundef nonnull %smlen, ptr noundef nonnull %msg, i32 noundef %1, ptr noundef %call1) #6, !dbg !221
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
  %call37 = call i32 @pqmayo_MAYO_5_ref_mayo_open(ptr noundef %p, ptr noundef nonnull %msg2, ptr noundef nonnull %msglen, ptr noundef %call5, i32 noundef %2, ptr noundef %call) #6, !dbg !231
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
  %call49 = call i32 @pqmayo_MAYO_5_ref_mayo_verify(ptr noundef %p, ptr noundef nonnull %msg, i32 noundef %4, ptr noundef %call5, ptr noundef %call) #6, !dbg !244
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
  call void @mayo_secure_free(ptr noundef %call1, i32 noundef 40) #8, !dbg !257
  call void @mayo_secure_free(ptr noundef %call3, i32 noundef 855408) #8, !dbg !258
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
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_5_ref_mayo_keypair(ptr noundef %p, ptr noundef %pk, ptr noundef %sk) local_unnamed_addr #0 !dbg !261 {
entry:
    #dbg_value(ptr %p, !292, !DIExpression(), !293)
    #dbg_value(ptr %pk, !294, !DIExpression(), !293)
    #dbg_value(ptr %sk, !295, !DIExpression(), !293)
    #dbg_value(i32 0, !296, !DIExpression(), !293)
  %call = call i32 @pqmayo_MAYO_5_ref_mayo_keypair_compact(ptr noundef %p, ptr noundef %pk, ptr noundef %sk) #6, !dbg !297
    #dbg_value(i32 %call, !296, !DIExpression(), !293)
    #dbg_label(!298, !299)
  ret i32 %call, !dbg !300
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_5_ref_mayo_keypair_compact(ptr noundef %p, ptr noundef %cpk, ptr noundef %csk) local_unnamed_addr #0 !dbg !301 {
entry:
  %S = alloca [868 x i8], align 1
  %P = alloca [106713 x i64], align 8
  %P3 = alloca [1296 x i64], align 8
  %O = alloca [1704 x i8], align 1
  %P3_upper = alloca [702 x i64], align 8
    #dbg_value(ptr %p, !302, !DIExpression(), !303)
    #dbg_value(ptr %cpk, !304, !DIExpression(), !303)
    #dbg_value(ptr %csk, !305, !DIExpression(), !303)
    #dbg_value(i32 0, !306, !DIExpression(), !303)
    #dbg_value(ptr %csk, !307, !DIExpression(), !303)
    #dbg_declare(ptr %S, !308, !DIExpression(), !312)
    #dbg_declare(ptr %P, !313, !DIExpression(), !314)
    #dbg_declare(ptr %P3, !315, !DIExpression(), !319)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(10368) %P3, i8 0, i32 10368, i1 false), !dbg !319
    #dbg_declare(ptr %O, !320, !DIExpression(), !322)
    #dbg_value(i32 9, !323, !DIExpression(), !303)
    #dbg_value(i32 142, !325, !DIExpression(), !303)
    #dbg_value(i32 142, !326, !DIExpression(), !303)
    #dbg_value(i32 12, !327, !DIExpression(), !303)
    #dbg_value(i32 852, !328, !DIExpression(), !303)
    #dbg_value(i32 91377, !329, !DIExpression(), !303)
    #dbg_value(i32 702, !330, !DIExpression(), !303)
    #dbg_value(i32 16, !331, !DIExpression(), !303)
    #dbg_value(i32 40, !332, !DIExpression(), !303)
    #dbg_value(ptr %P, !333, !DIExpression(), !303)
  %add.ptr = getelementptr inbounds nuw i8, ptr %P, i32 731016, !dbg !334
    #dbg_value(ptr %add.ptr, !335, !DIExpression(), !303)
  %call = call i32 @randombytes(ptr noundef %csk, i32 noundef 40) #8, !dbg !336
  %cmp.not = icmp eq i32 %call, 0, !dbg !338
  br i1 %cmp.not, label %if.end, label %err, !dbg !338

if.end:                                           ; preds = %entry
    #dbg_value(ptr %P, !333, !DIExpression(), !303)
  %call3 = call i32 @shake256(ptr noundef nonnull %S, i32 noundef 868, ptr noundef %csk, i32 noundef 40) #8, !dbg !339
    #dbg_value(ptr %S, !340, !DIExpression(), !303)
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %S, i32 16, !dbg !341
  call fastcc void @decode(ptr noundef nonnull %add.ptr6, ptr noundef nonnull %O, i32 noundef 1704) #6, !dbg !342
  call fastcc void @expand_P1_P2(ptr noundef %p, ptr noundef nonnull %P, ptr noundef nonnull %S) #6, !dbg !343
  call fastcc void @compute_P3(ptr noundef %p, ptr noundef nonnull %P, ptr noundef nonnull %add.ptr, ptr noundef nonnull %O, ptr noundef nonnull %P3) #6, !dbg !344
  %call11 = call ptr @memcpy(ptr noundef %cpk, ptr noundef nonnull %S, i32 noundef 16) #8, !dbg !345
    #dbg_declare(ptr %P3_upper, !346, !DIExpression(), !350)
  call void @pqmayo_MAYO_5_ref_m_upper(ptr noundef %p, ptr noundef nonnull %P3, ptr noundef nonnull %P3_upper, i32 noundef 12) #6, !dbg !351
  %add.ptr15 = getelementptr inbounds nuw i8, ptr %cpk, i32 16, !dbg !352
  call fastcc void @pack_m_vecs(ptr noundef nonnull %P3_upper, ptr noundef nonnull %add.ptr15, i32 noundef 78, i32 noundef 142) #6, !dbg !353
  br label %err, !dbg !353

err:                                              ; preds = %entry, %if.end
  %ret.0 = phi i32 [ 0, %if.end ], [ 1, %entry ], !dbg !303
    #dbg_value(i32 %ret.0, !306, !DIExpression(), !303)
    #dbg_label(!354, !355)
  call void @mayo_secure_clear(ptr noundef nonnull %O, i32 noundef 1704) #8, !dbg !356
  call void @mayo_secure_clear(ptr noundef nonnull %add.ptr, i32 noundef 122688) #8, !dbg !357
  call void @mayo_secure_clear(ptr noundef nonnull %P3, i32 noundef 10368) #8, !dbg !358
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
  %call = call i32 @AES_128_CTR(ptr noundef %P, i32 noundef 841847, ptr noundef %seed_pk, i32 noundef 16) #8, !dbg !404
  call fastcc void @unpack_m_vecs(ptr noundef %P, ptr noundef %P, i32 noundef 11857, i32 noundef 142) #6, !dbg !405
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
    #dbg_value(i32 9, !418, !DIExpression(), !413)
    #dbg_value(i32 142, !419, !DIExpression(), !413)
    #dbg_value(i32 12, !420, !DIExpression(), !413)
  call fastcc void @P1_times_O(ptr noundef %p, ptr noundef %P1, ptr noundef %O, ptr noundef %P2) #6, !dbg !421
  call fastcc void @mul_add_mat_trans_x_m_mat(i32 noundef 9, ptr noundef %O, ptr noundef %P2, ptr noundef %P3, i32 noundef 142, i32 noundef 12, i32 noundef 12) #6, !dbg !422
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
  call fastcc void @mul_add_m_upper_triangular_mat_x_mat(i32 noundef 9, ptr noundef %P1, ptr noundef %O, ptr noundef %acc, i32 noundef 142, i32 noundef 142, i32 noundef 12, i32 noundef 1) #6, !dbg !466
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
  %exitcond = icmp ne i32 %i.0, 9, !dbg !545
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
  %tmp = alloca [9 x i64], align 8
    #dbg_value(ptr %in, !667, !DIExpression(), !668)
    #dbg_value(ptr %out, !669, !DIExpression(), !668)
    #dbg_value(i32 %vecs, !670, !DIExpression(), !668)
    #dbg_value(i32 %m, !671, !DIExpression(), !668)
  %add = add nsw i32 %m, 15, !dbg !672
  %div = sdiv i32 %add, 16, !dbg !673
    #dbg_value(i32 %div, !674, !DIExpression(), !668)
    #dbg_value(ptr %out, !675, !DIExpression(), !668)
    #dbg_declare(ptr %tmp, !676, !DIExpression(), !680)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(72) %tmp, i8 0, i32 72, i1 false), !dbg !680
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
define dso_local i32 @pqmayo_MAYO_5_ref_mayo_expand_sk(ptr noundef %p, ptr noundef %csk, ptr noundef %sk) local_unnamed_addr #0 !dbg !704 {
entry:
  %S = alloca [868 x i8], align 1
    #dbg_value(ptr %p, !713, !DIExpression(), !714)
    #dbg_value(ptr %csk, !715, !DIExpression(), !714)
    #dbg_value(ptr %sk, !716, !DIExpression(), !714)
    #dbg_value(i32 0, !717, !DIExpression(), !714)
    #dbg_declare(ptr %S, !718, !DIExpression(), !719)
    #dbg_value(ptr %sk, !720, !DIExpression(), !714)
  %O2 = getelementptr inbounds nuw i8, ptr %sk, i32 853704, !dbg !721
    #dbg_value(ptr %O2, !722, !DIExpression(), !714)
    #dbg_value(i32 12, !723, !DIExpression(), !714)
    #dbg_value(i32 142, !724, !DIExpression(), !714)
    #dbg_value(i32 852, !725, !DIExpression(), !714)
    #dbg_value(i32 16, !726, !DIExpression(), !714)
    #dbg_value(i32 40, !727, !DIExpression(), !714)
    #dbg_value(ptr %csk, !728, !DIExpression(), !714)
    #dbg_value(ptr %S, !729, !DIExpression(), !714)
  %call = call i32 @shake256(ptr noundef nonnull %S, i32 noundef 868, ptr noundef %csk, i32 noundef 40) #8, !dbg !730
  %add.ptr = getelementptr inbounds nuw i8, ptr %S, i32 16, !dbg !731
  call fastcc void @decode(ptr noundef nonnull %add.ptr, ptr noundef nonnull %O2, i32 noundef 1704) #6, !dbg !732
  call fastcc void @expand_P1_P2(ptr noundef %p, ptr noundef %sk, ptr noundef nonnull %S) #6, !dbg !733
  %add.ptr7 = getelementptr inbounds nuw i8, ptr %sk, i32 731016, !dbg !734
    #dbg_value(ptr %add.ptr7, !735, !DIExpression(), !714)
    #dbg_value(ptr %sk, !736, !DIExpression(), !714)
    #dbg_value(ptr %add.ptr7, !737, !DIExpression(), !714)
  call fastcc void @P1P1t_times_O(ptr noundef %p, ptr noundef %sk, ptr noundef nonnull %O2, ptr noundef nonnull %add.ptr7) #6, !dbg !738
  call void @mayo_secure_clear(ptr noundef nonnull %S, i32 noundef 868) #8, !dbg !739
  ret i32 0, !dbg !740
}

; Function Attrs: nounwind
define internal fastcc void @P1P1t_times_O(ptr noundef %p, ptr noundef %P1, ptr noundef %O, ptr noundef %acc) unnamed_addr #0 !dbg !741 {
entry:
    #dbg_value(ptr %p, !742, !DIExpression(), !743)
    #dbg_value(ptr %P1, !744, !DIExpression(), !743)
    #dbg_value(ptr %O, !745, !DIExpression(), !743)
    #dbg_value(ptr %acc, !746, !DIExpression(), !743)
    #dbg_value(i32 12, !747, !DIExpression(), !743)
    #dbg_value(i32 142, !748, !DIExpression(), !743)
    #dbg_value(i32 9, !749, !DIExpression(), !743)
    #dbg_value(i32 0, !750, !DIExpression(), !743)
    #dbg_value(i32 0, !751, !DIExpression(), !753)
  br label %for.cond, !dbg !754

for.cond:                                         ; preds = %for.inc27, %entry
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc27 ], [ 142, %entry ], !dbg !755
  %bs_mat_entries_used.0 = phi i32 [ 0, %entry ], [ %bs_mat_entries_used.1.lcssa, %for.inc27 ], !dbg !755
  %r.0 = phi i32 [ 0, %entry ], [ %inc28, %for.inc27 ], !dbg !756
    #dbg_value(i32 %r.0, !751, !DIExpression(), !753)
    #dbg_value(i32 %bs_mat_entries_used.0, !750, !DIExpression(), !743)
  %exitcond2 = icmp ne i32 %r.0, 142, !dbg !757
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
  %exitcond = icmp ne i32 %k.0, 12, !dbg !776
  br i1 %exitcond, label %for.body7, label %for.inc25.loopexit, !dbg !771

for.body7:                                        ; preds = %for.cond5
  %add.ptr.idx = mul nsw i32 %bs_mat_entries_used.1, 72, !dbg !778
  %add.ptr = getelementptr inbounds i8, ptr %P1, i32 %add.ptr.idx, !dbg !778
  %mul8 = mul nuw nsw i32 %c.0, 12, !dbg !780
  %1 = getelementptr inbounds nuw i8, ptr %O, i32 %mul8, !dbg !781
  %arrayidx = getelementptr inbounds nuw i8, ptr %1, i32 %k.0, !dbg !781
  %2 = load i8, ptr %arrayidx, align 1, !dbg !781
  %mul10 = mul nuw nsw i32 %r.0, 12, !dbg !782
  %add11 = add nuw nsw i32 %mul10, %k.0, !dbg !783
  %add.ptr13.idx = mul nuw nsw i32 %add11, 72, !dbg !784
  %add.ptr13 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr13.idx, !dbg !784
  call fastcc void @m_vec_mul_add(i32 noundef 9, ptr noundef %add.ptr, i8 noundef zeroext %2, ptr noundef %add.ptr13) #6, !dbg !785
  %add.ptr15.idx = mul nsw i32 %bs_mat_entries_used.1, 72, !dbg !786
  %add.ptr15 = getelementptr inbounds i8, ptr %P1, i32 %add.ptr15.idx, !dbg !786
  %mul16 = mul nuw nsw i32 %r.0, 12, !dbg !787
  %3 = getelementptr inbounds nuw i8, ptr %O, i32 %mul16, !dbg !788
  %arrayidx18 = getelementptr inbounds nuw i8, ptr %3, i32 %k.0, !dbg !788
  %4 = load i8, ptr %arrayidx18, align 1, !dbg !788
  %mul19 = mul nuw nsw i32 %c.0, 12, !dbg !789
  %add20 = add nuw nsw i32 %mul19, %k.0, !dbg !790
  %add.ptr22.idx = mul nuw nsw i32 %add20, 72, !dbg !791
  %add.ptr22 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr22.idx, !dbg !791
  call fastcc void @m_vec_mul_add(i32 noundef 9, ptr noundef %add.ptr15, i8 noundef zeroext %4, ptr noundef %add.ptr22) #6, !dbg !792
  %add23 = add nuw nsw i32 %k.0, 1, !dbg !793
    #dbg_value(i32 %add23, !774, !DIExpression(), !775)
  br label %for.cond5, !dbg !794, !llvm.loop !795

for.inc25.loopexit:                               ; preds = %for.cond5
  br label %for.inc25, !dbg !797

for.inc25:                                        ; preds = %for.inc25.loopexit, %for.body3
  %bs_mat_entries_used.2 = add i32 %bs_mat_entries_used.1, 1, !dbg !797
    #dbg_value(i32 %bs_mat_entries_used.2, !750, !DIExpression(), !743)
  %inc = add nuw nsw i32 %c.0, 1, !dbg !798
    #dbg_value(i32 %inc, !764, !DIExpression(), !765)
  br label %for.cond1, !dbg !799, !llvm.loop !800

for.inc27:                                        ; preds = %for.cond1
  %bs_mat_entries_used.1.lcssa = phi i32 [ %bs_mat_entries_used.1, %for.cond1 ], !dbg !743
  %inc28 = add nuw nsw i32 %r.0, 1, !dbg !802
    #dbg_value(i32 %inc28, !751, !DIExpression(), !753)
  %indvars.iv.next = add nsw i32 %indvars.iv, -1, !dbg !803
  br label %for.cond, !dbg !803, !llvm.loop !804

for.end29:                                        ; preds = %for.cond
  ret void, !dbg !806
}

; Function Attrs: nounwind
define dso_local i32 @pqmayo_MAYO_5_ref_mayo_sign_signature(ptr noundef %p, ptr noundef %sig, ptr noundef %siglen, ptr noundef %m, i32 noundef %mlen, ptr noundef %csk) local_unnamed_addr #0 !dbg !807 {
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
  %sk = alloca %struct.sk_t, align 32
  %Ox = alloca [142 x i8], align 1
  %tmp = alloca [145 x i8], align 1
  %Mtmp = alloca [1296 x i64], align 8
    #dbg_value(ptr %p, !811, !DIExpression(), !812)
    #dbg_value(ptr %sig, !813, !DIExpression(), !812)
    #dbg_value(ptr %siglen, !814, !DIExpression(), !812)
    #dbg_value(ptr %m, !815, !DIExpression(), !812)
    #dbg_value(i32 %mlen, !816, !DIExpression(), !812)
    #dbg_value(ptr %csk, !817, !DIExpression(), !812)
    #dbg_value(i32 0, !818, !DIExpression(), !812)
    #dbg_declare(ptr %tenc, !819, !DIExpression(), !823)
    #dbg_declare(ptr %t, !824, !DIExpression(), !828)
    #dbg_declare(ptr %y, !829, !DIExpression(), !830)
    #dbg_declare(ptr %salt, !831, !DIExpression(), !835)
    #dbg_declare(ptr %V, !836, !DIExpression(), !840)
    #dbg_declare(ptr %Vdec, !841, !DIExpression(), !842)
    #dbg_declare(ptr %A, !843, !DIExpression(), !847)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(20880) %A, i8 0, i32 20880, i1 false), !dbg !847
    #dbg_declare(ptr %x, !848, !DIExpression(), !852)
    #dbg_declare(ptr %r, !853, !DIExpression(), !857)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(145) %r, i8 0, i32 145, i1 false), !dbg !857
    #dbg_declare(ptr %s, !858, !DIExpression(), !859)
    #dbg_declare(ptr %sk, !860, !DIExpression(), !861)
    #dbg_declare(ptr %Ox, !862, !DIExpression(), !863)
    #dbg_declare(ptr %tmp, !864, !DIExpression(), !865)
    #dbg_value(i32 142, !866, !DIExpression(), !812)
    #dbg_value(i32 154, !867, !DIExpression(), !812)
    #dbg_value(i32 12, !868, !DIExpression(), !812)
    #dbg_value(i32 12, !869, !DIExpression(), !812)
    #dbg_value(i32 142, !870, !DIExpression(), !812)
    #dbg_value(i32 71, !871, !DIExpression(), !812)
    #dbg_value(i32 71, !872, !DIExpression(), !812)
    #dbg_value(i32 72, !873, !DIExpression(), !812)
    #dbg_value(i32 964, !874, !DIExpression(), !812)
    #dbg_value(i32 145, !875, !DIExpression(), !812)
    #dbg_value(i32 64, !876, !DIExpression(), !812)
    #dbg_value(i32 40, !877, !DIExpression(), !812)
    #dbg_value(i32 40, !878, !DIExpression(), !812)
  %call = call i32 @pqmayo_MAYO_5_ref_mayo_expand_sk(ptr noundef %p, ptr noundef %csk, ptr noundef nonnull %sk) #6, !dbg !879
    #dbg_value(i32 %call, !818, !DIExpression(), !812)
  %cmp.not = icmp eq i32 %call, 0, !dbg !880
  br i1 %cmp.not, label %if.end, label %err, !dbg !880

if.end:                                           ; preds = %entry
    #dbg_value(ptr %csk, !882, !DIExpression(), !812)
  %call1 = call i32 @shake256(ptr noundef nonnull %tmp, i32 noundef 64, ptr noundef %m, i32 noundef %mlen) #8, !dbg !883
    #dbg_value(ptr %sk, !884, !DIExpression(), !812)
  %add.ptr = getelementptr inbounds nuw i8, ptr %sk, i32 731016, !dbg !885
    #dbg_value(ptr %add.ptr, !886, !DIExpression(), !812)
    #dbg_declare(ptr %Mtmp, !887, !DIExpression(), !888)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(10368) %Mtmp, i8 0, i32 10368, i1 false), !dbg !888
  %add.ptr5 = getelementptr inbounds nuw i8, ptr %tmp, i32 64, !dbg !889
  %call6 = call i32 @randombytes(ptr noundef nonnull %add.ptr5, i32 noundef 40) #8, !dbg !891
  %cmp7.not = icmp eq i32 %call6, 0, !dbg !892
  br i1 %cmp7.not, label %if.end9, label %err, !dbg !892

if.end9:                                          ; preds = %if.end
  %add.ptr12 = getelementptr inbounds nuw i8, ptr %tmp, i32 104, !dbg !893
  %call13 = call ptr @memcpy(ptr noundef nonnull %add.ptr12, ptr noundef %csk, i32 noundef 40) #8, !dbg !894
  %call16 = call i32 @shake256(ptr noundef nonnull %salt, i32 noundef 40, ptr noundef nonnull %tmp, i32 noundef 144) #8, !dbg !895
  %add.ptr18 = getelementptr inbounds nuw i8, ptr %tmp, i32 64, !dbg !896
  %call20 = call ptr @memcpy(ptr noundef nonnull %add.ptr18, ptr noundef nonnull %salt, i32 noundef 40) #8, !dbg !897
  %add.ptr24 = getelementptr inbounds nuw i8, ptr %tmp, i32 144, !dbg !898
    #dbg_value(ptr %add.ptr24, !899, !DIExpression(), !812)
  %call27 = call i32 @shake256(ptr noundef nonnull %tenc, i32 noundef 71, ptr noundef nonnull %tmp, i32 noundef 104) #8, !dbg !900
  call fastcc void @decode(ptr noundef nonnull %tenc, ptr noundef nonnull %t, i32 noundef 142) #6, !dbg !901
    #dbg_value(i32 0, !902, !DIExpression(), !904)
  %add.ptr61 = getelementptr inbounds nuw i8, ptr %V, i32 852, !dbg !905
  br label %for.cond, !dbg !908

for.cond:                                         ; preds = %if.else, %if.end9
  %ctr.0 = phi i32 [ 0, %if.end9 ], [ %inc75, %if.else ], !dbg !909
    #dbg_value(i32 %ctr.0, !902, !DIExpression(), !904)
  %exitcond2 = icmp ne i32 %ctr.0, 256, !dbg !910
  br i1 %exitcond2, label %for.body, label %for.end76, !dbg !911

for.body:                                         ; preds = %for.cond
  %conv = trunc nuw i32 %ctr.0 to i8, !dbg !912
  store i8 %conv, ptr %add.ptr24, align 1, !dbg !913
  %call33 = call i32 @shake256(ptr noundef nonnull %V, i32 noundef 924, ptr noundef nonnull %tmp, i32 noundef 145) #8, !dbg !914
    #dbg_value(i32 0, !915, !DIExpression(), !917)
  br label %for.cond34, !dbg !918

for.cond34:                                       ; preds = %for.body37, %for.body
  %i.0 = phi i32 [ 0, %for.body ], [ %inc, %for.body37 ], !dbg !919
    #dbg_value(i32 %i.0, !915, !DIExpression(), !917)
  %exitcond = icmp ne i32 %i.0, 12, !dbg !920
  br i1 %exitcond, label %for.body37, label %for.end, !dbg !922

for.body37:                                       ; preds = %for.cond34
  %mul = mul nuw nsw i32 %i.0, 71, !dbg !923
  %add.ptr39 = getelementptr inbounds nuw i8, ptr %V, i32 %mul, !dbg !925
  %mul41 = mul nuw nsw i32 %i.0, 142, !dbg !926
  %add.ptr42 = getelementptr inbounds nuw i8, ptr %Vdec, i32 %mul41, !dbg !927
  call fastcc void @decode(ptr noundef nonnull %add.ptr39, ptr noundef nonnull %add.ptr42, i32 noundef 142) #6, !dbg !928
  %inc = add nuw nsw i32 %i.0, 1, !dbg !929
    #dbg_value(i32 %inc, !915, !DIExpression(), !917)
  br label %for.cond34, !dbg !930, !llvm.loop !931

for.end:                                          ; preds = %for.cond34
  call fastcc void @compute_M_and_VPV(ptr noundef %p, ptr noundef nonnull %Vdec, ptr noundef nonnull %add.ptr, ptr noundef nonnull %sk, ptr noundef nonnull %Mtmp, ptr noundef nonnull %A) #6, !dbg !933
  call fastcc void @compute_rhs(ptr noundef %p, ptr noundef nonnull %A, ptr noundef nonnull %t, ptr noundef nonnull %y) #6, !dbg !934
  call fastcc void @compute_A(ptr noundef %p, ptr noundef nonnull %Mtmp, ptr noundef nonnull %A) #6, !dbg !935
    #dbg_value(i32 0, !936, !DIExpression(), !938)
  br label %for.cond52, !dbg !939

for.cond52:                                       ; preds = %for.body55, %for.end
  %i51.0 = phi i32 [ 0, %for.end ], [ %inc58, %for.body55 ], !dbg !940
    #dbg_value(i32 %i51.0, !936, !DIExpression(), !938)
  %exitcond1 = icmp ne i32 %i51.0, 142, !dbg !941
  br i1 %exitcond1, label %for.body55, label %for.end59, !dbg !943

for.body55:                                       ; preds = %for.cond52
  %0 = mul nuw nsw i32 %i51.0, 145, !dbg !944
  %sub = add nuw nsw i32 %0, 144, !dbg !946
  %arrayidx = getelementptr inbounds nuw [20880 x i8], ptr %A, i32 0, i32 %sub, !dbg !947
  store i8 0, ptr %arrayidx, align 1, !dbg !948
  %inc58 = add nuw nsw i32 %i51.0, 1, !dbg !949
    #dbg_value(i32 %inc58, !936, !DIExpression(), !938)
  br label %for.cond52, !dbg !950, !llvm.loop !951

for.end59:                                        ; preds = %for.cond52
  call fastcc void @decode(ptr noundef nonnull %add.ptr61, ptr noundef nonnull %r, i32 noundef 144) #6, !dbg !953
  %call67 = call i32 @pqmayo_MAYO_5_ref_sample_solution(ptr noundef %p, ptr noundef nonnull %A, ptr noundef nonnull %y, ptr noundef nonnull %r, ptr noundef nonnull %x, i32 noundef 12, i32 noundef 12, i32 noundef 142, i32 noundef 145) #6, !dbg !954
  %tobool.not = icmp eq i32 %call67, 0, !dbg !954
  br i1 %tobool.not, label %if.else, label %for.end76, !dbg !954

if.else:                                          ; preds = %for.end59
  %call70 = call ptr @memset(ptr noundef nonnull %Mtmp, i32 noundef 0, i32 noundef 10368) #8, !dbg !956
  %call72 = call ptr @memset(ptr noundef nonnull %A, i32 noundef 0, i32 noundef 20880) #8, !dbg !958
  %inc75 = add nuw nsw i32 %ctr.0, 1, !dbg !959
    #dbg_value(i32 %inc75, !902, !DIExpression(), !904)
  br label %for.cond, !dbg !960, !llvm.loop !961

for.end76:                                        ; preds = %for.end59, %for.cond
    #dbg_value(i32 0, !963, !DIExpression(), !965)
  br label %for.cond78, !dbg !966

for.cond78:                                       ; preds = %for.body81, %for.end76
  %i77.0 = phi i32 [ 0, %for.end76 ], [ %inc103, %for.body81 ], !dbg !967
    #dbg_value(i32 %i77.0, !963, !DIExpression(), !965)
  %exitcond3 = icmp ne i32 %i77.0, 12, !dbg !968
  br i1 %exitcond3, label %for.body81, label %for.end104, !dbg !970

for.body81:                                       ; preds = %for.cond78
  %mul83 = mul nuw nsw i32 %i77.0, 142, !dbg !971
  %add.ptr84 = getelementptr inbounds nuw i8, ptr %Vdec, i32 %mul83, !dbg !973
    #dbg_value(ptr %add.ptr84, !974, !DIExpression(), !812)
  %O = getelementptr inbounds nuw i8, ptr %sk, i32 853704, !dbg !975
  %mul87 = mul nuw nsw i32 %i77.0, 12, !dbg !976
  %add.ptr88 = getelementptr inbounds nuw i8, ptr %x, i32 %mul87, !dbg !977
  call fastcc void @mat_mul(ptr noundef nonnull %O, ptr noundef nonnull %add.ptr88, ptr noundef nonnull %Ox, i32 noundef 12, i32 noundef 142, i32 noundef 1) #6, !dbg !978
  %mul92 = mul nuw nsw i32 %i77.0, 154, !dbg !979
  %add.ptr93 = getelementptr inbounds nuw i8, ptr %s, i32 %mul92, !dbg !980
  call fastcc void @mat_add(ptr noundef nonnull %add.ptr84, ptr noundef nonnull %Ox, ptr noundef nonnull %add.ptr93, i32 noundef 142, i32 noundef 1) #6, !dbg !981
  %mul95 = mul nuw nsw i32 %i77.0, 154, !dbg !982
  %add.ptr96 = getelementptr inbounds nuw i8, ptr %s, i32 %mul95, !dbg !983
  %add.ptr97 = getelementptr inbounds nuw i8, ptr %add.ptr96, i32 142, !dbg !984
  %mul99 = mul nuw nsw i32 %i77.0, 12, !dbg !985
  %add.ptr100 = getelementptr inbounds nuw i8, ptr %x, i32 %mul99, !dbg !986
  %call101 = call ptr @memcpy(ptr noundef nonnull %add.ptr97, ptr noundef nonnull %add.ptr100, i32 noundef 12) #8, !dbg !987
  %inc103 = add nuw nsw i32 %i77.0, 1, !dbg !988
    #dbg_value(i32 %inc103, !963, !DIExpression(), !965)
  br label %for.cond78, !dbg !989, !llvm.loop !990

for.end104:                                       ; preds = %for.cond78
  call fastcc void @encode(ptr noundef nonnull %s, ptr noundef %sig, i32 noundef 1848) #6, !dbg !992
  %add.ptr107 = getelementptr inbounds nuw i8, ptr %sig, i32 924, !dbg !993
  %call109 = call ptr @memcpy(ptr noundef nonnull %add.ptr107, ptr noundef nonnull %salt, i32 noundef 40) #8, !dbg !994
  store i32 964, ptr %siglen, align 4, !dbg !995
  br label %err, !dbg !996

err:                                              ; preds = %if.end, %entry, %for.end104
  %ret.0 = phi i32 [ %call, %for.end104 ], [ %call, %entry ], [ 1, %if.end ], !dbg !812
    #dbg_value(i32 %ret.0, !818, !DIExpression(), !812)
    #dbg_label(!997, !998)
  call void @mayo_secure_clear(ptr noundef nonnull %V, i32 noundef 924) #8, !dbg !999
  call void @mayo_secure_clear(ptr noundef nonnull %Vdec, i32 noundef 1704) #8, !dbg !1000
  call void @mayo_secure_clear(ptr noundef nonnull %A, i32 noundef 20880) #8, !dbg !1001
  call void @mayo_secure_clear(ptr noundef nonnull %r, i32 noundef 145) #8, !dbg !1002
  %O114 = getelementptr inbounds nuw i8, ptr %sk, i32 853704, !dbg !1003
  call void @mayo_secure_clear(ptr noundef nonnull %O114, i32 noundef 1704) #8, !dbg !1004
  call void @mayo_secure_clear(ptr noundef nonnull %sk, i32 noundef 855408) #8, !dbg !1005
  call void @mayo_secure_clear(ptr noundef nonnull %Ox, i32 noundef 142) #8, !dbg !1006
  call void @mayo_secure_clear(ptr noundef nonnull %tmp, i32 noundef 145) #8, !dbg !1007
  call void @mayo_secure_clear(ptr noundef nonnull %Mtmp, i32 noundef 10368) #8, !dbg !1008
  ret i32 %ret.0, !dbg !1009
}

; Function Attrs: nounwind
define internal fastcc void @compute_M_and_VPV(ptr noundef %p, ptr noundef %Vdec, ptr noundef %L, ptr noundef %P1, ptr noundef %VL, ptr noundef %VP1V) unnamed_addr #0 !dbg !1010 {
entry:
  %Pv = alloca [15336 x i64], align 8
    #dbg_value(ptr %p, !1013, !DIExpression(), !1014)
    #dbg_value(ptr %Vdec, !1015, !DIExpression(), !1014)
    #dbg_value(ptr %L, !1016, !DIExpression(), !1014)
    #dbg_value(ptr %P1, !1017, !DIExpression(), !1014)
    #dbg_value(ptr %VL, !1018, !DIExpression(), !1014)
    #dbg_value(ptr %VP1V, !1019, !DIExpression(), !1014)
    #dbg_value(i32 12, !1020, !DIExpression(), !1014)
    #dbg_value(i32 142, !1021, !DIExpression(), !1014)
    #dbg_value(i32 12, !1022, !DIExpression(), !1014)
  call fastcc void @mul_add_mat_x_m_mat(i32 noundef 9, ptr noundef %Vdec, ptr noundef %L, ptr noundef %VL, i32 noundef 12, i32 noundef 142, i32 noundef 12) #6, !dbg !1023
    #dbg_declare(ptr %Pv, !1024, !DIExpression(), !1028)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(122688) %Pv, i8 0, i32 122688, i1 false), !dbg !1028
  call fastcc void @P1_times_Vt(ptr noundef %p, ptr noundef %P1, ptr noundef %Vdec, ptr noundef nonnull %Pv) #6, !dbg !1029
  call fastcc void @mul_add_mat_x_m_mat(i32 noundef 9, ptr noundef %Vdec, ptr noundef nonnull %Pv, ptr noundef %VP1V, i32 noundef 12, i32 noundef 142, i32 noundef 12) #6, !dbg !1030
  ret void, !dbg !1031
}

; Function Attrs: nounwind
define internal fastcc void @compute_rhs(ptr noundef %p, ptr noundef %vPv, ptr noundef %t, ptr noundef %y) unnamed_addr #0 !dbg !1032 {
entry:
  %temp = alloca [9 x i64], align 8
    #dbg_value(ptr %p, !1035, !DIExpression(), !1036)
    #dbg_value(ptr %vPv, !1037, !DIExpression(), !1036)
    #dbg_value(ptr %t, !1038, !DIExpression(), !1036)
    #dbg_value(ptr %y, !1039, !DIExpression(), !1036)
    #dbg_value(i32 52, !1040, !DIExpression(), !1036)
    #dbg_value(i32 9, !1042, !DIExpression(), !1036)
    #dbg_value(i64 1, !1043, !DIExpression(), !1046)
    #dbg_value(i64 72057594037927936, !1043, !DIExpression(), !1046)
    #dbg_value(i64 72057594037927935, !1043, !DIExpression(), !1046)
    #dbg_value(i32 0, !1047, !DIExpression(), !1049)
  br label %for.cond, !dbg !1050

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1051
    #dbg_value(i32 %i.0, !1047, !DIExpression(), !1049)
  %exitcond = icmp ne i32 %i.0, 144, !dbg !1052
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1054

for.body:                                         ; preds = %for.cond
  %.idx6 = mul nuw nsw i32 %i.0, 72, !dbg !1055
  %0 = getelementptr inbounds nuw i8, ptr %vPv, i32 %.idx6, !dbg !1055
  %arrayidx = getelementptr inbounds nuw i8, ptr %0, i32 64, !dbg !1055
  %1 = load i64, ptr %arrayidx, align 8, !dbg !1057
  %and = and i64 %1, 72057594037927935, !dbg !1057
  store i64 %and, ptr %arrayidx, align 8, !dbg !1057
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1058
    #dbg_value(i32 %inc, !1047, !DIExpression(), !1049)
  br label %for.cond, !dbg !1059, !llvm.loop !1060

for.end:                                          ; preds = %for.cond
    #dbg_declare(ptr %temp, !1062, !DIExpression(), !1063)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(72) %temp, i8 0, i32 72, i1 false), !dbg !1063
    #dbg_value(ptr %temp, !1064, !DIExpression(), !1036)
    #dbg_value(i32 11, !1065, !DIExpression(), !1067)
  br label %for.cond3, !dbg !1068

for.cond3:                                        ; preds = %for.inc77, %for.end
  %i2.0 = phi i32 [ 11, %for.end ], [ %dec78, %for.inc77 ], !dbg !1069
    #dbg_value(i32 %i2.0, !1065, !DIExpression(), !1067)
  %cmp4 = icmp sgt i32 %i2.0, -1, !dbg !1070
  br i1 %cmp4, label %for.cond6.preheader, label %for.cond81.preheader, !dbg !1072

for.cond6.preheader:                              ; preds = %for.cond3
  br label %for.cond6, !dbg !1073

for.cond81.preheader:                             ; preds = %for.cond3
  br label %for.cond81, !dbg !1076

for.cond6:                                        ; preds = %for.cond6.preheader, %for.inc74
  %j.0 = phi i32 [ %inc75, %for.inc74 ], [ %i2.0, %for.cond6.preheader ], !dbg !1078
    #dbg_value(i32 %j.0, !1079, !DIExpression(), !1080)
  %exitcond9 = icmp ne i32 %j.0, 12, !dbg !1081
  br i1 %exitcond9, label %for.body8, label %for.inc77, !dbg !1073

for.body8:                                        ; preds = %for.cond6
  %arrayidx9 = getelementptr inbounds nuw i8, ptr %temp, i32 64, !dbg !1083
  %2 = load i64, ptr %arrayidx9, align 8, !dbg !1083
  %shr = lshr i64 %2, 52, !dbg !1085
  %3 = trunc i64 %shr to i8, !dbg !1086
    #dbg_value(i8 %conv, !1087, !DIExpression(), !1088)
  %arrayidx10 = getelementptr inbounds nuw i8, ptr %temp, i32 64, !dbg !1089
  %shl11 = shl i64 %2, 4, !dbg !1090
  store i64 %shl11, ptr %arrayidx10, align 8, !dbg !1090
    #dbg_value(i32 7, !1091, !DIExpression(), !1093)
  br label %for.cond12, !dbg !1094

for.cond12:                                       ; preds = %for.body15, %for.body8
  %k.0 = phi i32 [ 7, %for.body8 ], [ %dec, %for.body15 ], !dbg !1095
    #dbg_value(i32 %k.0, !1091, !DIExpression(), !1093)
  %cmp13 = icmp sgt i32 %k.0, -1, !dbg !1096
  br i1 %cmp13, label %for.body15, label %for.cond24.preheader, !dbg !1098

for.cond24.preheader:                             ; preds = %for.cond12
  %conv = and i8 %3, 15, !dbg !1086
  br label %for.cond24, !dbg !1099

for.body15:                                       ; preds = %for.cond12
  %arrayidx16 = getelementptr inbounds nuw [9 x i64], ptr %temp, i32 0, i32 %k.0, !dbg !1101
  %4 = load i64, ptr %arrayidx16, align 8, !dbg !1101
  %shr17 = lshr i64 %4, 60, !dbg !1103
  %add18 = add nuw nsw i32 %k.0, 1, !dbg !1104
  %arrayidx19 = getelementptr inbounds nuw [9 x i64], ptr %temp, i32 0, i32 %add18, !dbg !1105
  %5 = load i64, ptr %arrayidx19, align 8, !dbg !1106
  %xor = xor i64 %5, %shr17, !dbg !1106
  store i64 %xor, ptr %arrayidx19, align 8, !dbg !1106
  %arrayidx20 = getelementptr inbounds nuw [9 x i64], ptr %temp, i32 0, i32 %k.0, !dbg !1107
  %6 = load i64, ptr %arrayidx20, align 8, !dbg !1108
  %shl21 = shl i64 %6, 4, !dbg !1108
  store i64 %shl21, ptr %arrayidx20, align 8, !dbg !1108
  %dec = add nsw i32 %k.0, -1, !dbg !1109
    #dbg_value(i32 %dec, !1091, !DIExpression(), !1093)
  br label %for.cond12, !dbg !1110, !llvm.loop !1111

for.cond24:                                       ; preds = %for.cond24.preheader, %for.inc46
  %jj.0 = phi i32 [ %inc47, %for.inc46 ], [ 0, %for.cond24.preheader ], !dbg !1113
    #dbg_value(i32 %jj.0, !1114, !DIExpression(), !1115)
  %exitcond7 = icmp ne i32 %jj.0, 4, !dbg !1116
  br i1 %exitcond7, label %for.body27, label %for.cond50.preheader, !dbg !1099

for.cond50.preheader:                             ; preds = %for.cond24
  br label %for.cond50, !dbg !1118

for.body27:                                       ; preds = %for.cond24
  %rem28 = and i32 %jj.0, 1, !dbg !1120
  %cmp29 = icmp eq i32 %rem28, 0, !dbg !1123
  br i1 %cmp29, label %if.then, label %if.else, !dbg !1123

if.then:                                          ; preds = %for.body27
  %arrayidx31 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %jj.0, !dbg !1124
  %7 = load i8, ptr %arrayidx31, align 1, !dbg !1124
  %call = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %conv, i8 noundef zeroext %7) #6, !dbg !1126
  %div = lshr exact i32 %jj.0, 1, !dbg !1127
  %arrayidx33 = getelementptr inbounds nuw i8, ptr %temp, i32 %div, !dbg !1128
  %8 = load i8, ptr %arrayidx33, align 1, !dbg !1129
  %xor355 = xor i8 %8, %call, !dbg !1129
  store i8 %xor355, ptr %arrayidx33, align 1, !dbg !1129
  br label %for.inc46, !dbg !1130

if.else:                                          ; preds = %for.body27
  %arrayidx37 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %jj.0, !dbg !1131
  %9 = load i8, ptr %arrayidx37, align 1, !dbg !1131
  %call38 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %conv, i8 noundef zeroext %9) #6, !dbg !1133
  %shl40 = shl nuw i8 %call38, 4, !dbg !1134
  %div414 = lshr i32 %jj.0, 1, !dbg !1135
  %arrayidx42 = getelementptr inbounds nuw i8, ptr %temp, i32 %div414, !dbg !1136
  %10 = load i8, ptr %arrayidx42, align 1, !dbg !1137
  %xor44 = xor i8 %shl40, %10, !dbg !1137
  store i8 %xor44, ptr %arrayidx42, align 1, !dbg !1137
  br label %for.inc46

for.inc46:                                        ; preds = %if.then, %if.else
  %inc47 = add nuw nsw i32 %jj.0, 1, !dbg !1138
    #dbg_value(i32 %inc47, !1114, !DIExpression(), !1115)
  br label %for.cond24, !dbg !1139, !llvm.loop !1140

for.cond50:                                       ; preds = %for.cond50.preheader, %for.body53
  %k49.0 = phi i32 [ %inc72, %for.body53 ], [ 0, %for.cond50.preheader ], !dbg !1142
    #dbg_value(i32 %k49.0, !1143, !DIExpression(), !1144)
  %exitcond8 = icmp ne i32 %k49.0, 9, !dbg !1145
  br i1 %exitcond8, label %for.body53, label %for.inc74, !dbg !1118

for.body53:                                       ; preds = %for.cond50
  %mul54 = mul nuw nsw i32 %i2.0, 12, !dbg !1147
  %add55 = add nuw nsw i32 %mul54, %j.0, !dbg !1149
  %.idx = mul nsw i32 %add55, 72, !dbg !1150
  %11 = getelementptr i8, ptr %vPv, i32 %.idx, !dbg !1150
  %arrayidx58 = getelementptr i64, ptr %11, i32 %k49.0, !dbg !1150
  %12 = load i64, ptr %arrayidx58, align 8, !dbg !1150
  %cmp59.not = icmp eq i32 %i2.0, %j.0, !dbg !1151
  %mul62 = mul nuw nsw i32 %j.0, 12, !dbg !1152
  %add63 = add nuw nsw i32 %mul62, %i2.0, !dbg !1153
  %.idx3 = mul nsw i32 %add63, 72, !dbg !1154
  %13 = getelementptr i8, ptr %vPv, i32 %.idx3, !dbg !1154
  %arrayidx66 = getelementptr i64, ptr %13, i32 %k49.0, !dbg !1154
  %14 = load i64, ptr %arrayidx66, align 8, !dbg !1154
  %mul67 = select i1 %cmp59.not, i64 0, i64 %14, !dbg !1155
  %xor68 = xor i64 %12, %mul67, !dbg !1156
  %arrayidx69 = getelementptr inbounds nuw [9 x i64], ptr %temp, i32 0, i32 %k49.0, !dbg !1157
  %15 = load i64, ptr %arrayidx69, align 8, !dbg !1158
  %xor70 = xor i64 %15, %xor68, !dbg !1158
  store i64 %xor70, ptr %arrayidx69, align 8, !dbg !1158
  %inc72 = add nuw nsw i32 %k49.0, 1, !dbg !1159
    #dbg_value(i32 %inc72, !1143, !DIExpression(), !1144)
  br label %for.cond50, !dbg !1160, !llvm.loop !1161

for.inc74:                                        ; preds = %for.cond50
  %inc75 = add nuw nsw i32 %j.0, 1, !dbg !1163
    #dbg_value(i32 %inc75, !1079, !DIExpression(), !1080)
  br label %for.cond6, !dbg !1164, !llvm.loop !1165

for.inc77:                                        ; preds = %for.cond6
  %dec78 = add nsw i32 %i2.0, -1, !dbg !1167
    #dbg_value(i32 %dec78, !1065, !DIExpression(), !1067)
  br label %for.cond3, !dbg !1168, !llvm.loop !1169

for.cond81:                                       ; preds = %for.cond81.preheader, %for.body84
  %i80.0 = phi i32 [ %add106, %for.body84 ], [ 0, %for.cond81.preheader ], !dbg !1171
    #dbg_value(i32 %i80.0, !1172, !DIExpression(), !1173)
  %cmp82 = icmp samesign ult i32 %i80.0, 142, !dbg !1174
  br i1 %cmp82, label %for.body84, label %for.end107, !dbg !1076

for.body84:                                       ; preds = %for.cond81
  %arrayidx85 = getelementptr inbounds nuw i8, ptr %t, i32 %i80.0, !dbg !1176
  %16 = load i8, ptr %arrayidx85, align 1, !dbg !1176
  %div87 = lshr exact i32 %i80.0, 1, !dbg !1178
  %arrayidx88 = getelementptr inbounds nuw i8, ptr %temp, i32 %div87, !dbg !1179
  %17 = load i8, ptr %arrayidx88, align 1, !dbg !1179
  %18 = and i8 %17, 15, !dbg !1180
  %xor911 = xor i8 %16, %18, !dbg !1181
  %arrayidx93 = getelementptr inbounds nuw i8, ptr %y, i32 %i80.0, !dbg !1182
  store i8 %xor911, ptr %arrayidx93, align 1, !dbg !1183
  %add94 = or disjoint i32 %i80.0, 1, !dbg !1184
  %arrayidx95 = getelementptr inbounds nuw i8, ptr %t, i32 %add94, !dbg !1185
  %19 = load i8, ptr %arrayidx95, align 1, !dbg !1185
  %div97 = lshr exact i32 %i80.0, 1, !dbg !1186
  %arrayidx98 = getelementptr inbounds nuw i8, ptr %temp, i32 %div97, !dbg !1187
  %20 = load i8, ptr %arrayidx98, align 1, !dbg !1187
  %21 = lshr i8 %20, 4, !dbg !1188
  %xor1012 = xor i8 %19, %21, !dbg !1189
  %add103 = or disjoint i32 %i80.0, 1, !dbg !1190
  %arrayidx104 = getelementptr inbounds nuw i8, ptr %y, i32 %add103, !dbg !1191
  store i8 %xor1012, ptr %arrayidx104, align 1, !dbg !1192
  %add106 = add nuw nsw i32 %i80.0, 2, !dbg !1193
    #dbg_value(i32 %add106, !1172, !DIExpression(), !1173)
  br label %for.cond81, !dbg !1194, !llvm.loop !1195

for.end107:                                       ; preds = %for.cond81
  ret void, !dbg !1197
}

; Function Attrs: nounwind
define internal fastcc void @compute_A(ptr noundef %p, ptr noundef %VtL, ptr noundef %A_out) unnamed_addr #0 !dbg !1198 {
entry:
  %A = alloca [2592 x i64], align 8
  %tab = alloca [16 x i8], align 1
    #dbg_value(ptr %p, !1201, !DIExpression(), !1202)
    #dbg_value(ptr %VtL, !1203, !DIExpression(), !1202)
    #dbg_value(ptr %A_out, !1204, !DIExpression(), !1202)
    #dbg_value(i32 0, !1205, !DIExpression(), !1202)
    #dbg_value(i32 0, !1206, !DIExpression(), !1202)
    #dbg_value(i32 9, !1207, !DIExpression(), !1202)
    #dbg_declare(ptr %A, !1208, !DIExpression(), !1212)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(20736) %A, i8 0, i32 20736, i1 false), !dbg !1212
    #dbg_value(i32 144, !1213, !DIExpression(), !1202)
    #dbg_value(i64 1, !1214, !DIExpression(), !1217)
    #dbg_value(i64 72057594037927936, !1214, !DIExpression(), !1217)
    #dbg_value(i64 72057594037927935, !1214, !DIExpression(), !1217)
    #dbg_value(i32 0, !1218, !DIExpression(), !1220)
  br label %for.cond, !dbg !1221

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1222
    #dbg_value(i32 %i.0, !1218, !DIExpression(), !1220)
  %exitcond = icmp ne i32 %i.0, 144, !dbg !1223
  br i1 %exitcond, label %for.body, label %for.cond3.preheader, !dbg !1225

for.cond3.preheader:                              ; preds = %for.cond
  br label %for.cond3, !dbg !1226

for.body:                                         ; preds = %for.cond
  %.idx = mul nuw nsw i32 %i.0, 72, !dbg !1228
  %0 = getelementptr inbounds nuw i8, ptr %VtL, i32 %.idx, !dbg !1228
  %arrayidx = getelementptr inbounds nuw i8, ptr %0, i32 64, !dbg !1228
  %1 = load i64, ptr %arrayidx, align 8, !dbg !1230
  %and = and i64 %1, 72057594037927935, !dbg !1230
  store i64 %and, ptr %arrayidx, align 8, !dbg !1230
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1231
    #dbg_value(i32 %inc, !1218, !DIExpression(), !1220)
  br label %for.cond, !dbg !1232, !llvm.loop !1233

for.cond3:                                        ; preds = %for.cond3.preheader, %for.inc103
  %i2.0 = phi i32 [ %inc104, %for.inc103 ], [ 0, %for.cond3.preheader ], !dbg !1235
  %words_to_shift.0 = phi i32 [ %words_to_shift.1.lcssa, %for.inc103 ], [ 0, %for.cond3.preheader ], !dbg !1236
  %bits_to_shift.0 = phi i32 [ %bits_to_shift.1.lcssa, %for.inc103 ], [ 0, %for.cond3.preheader ], !dbg !1237
    #dbg_value(i32 %bits_to_shift.0, !1205, !DIExpression(), !1202)
    #dbg_value(i32 %words_to_shift.0, !1206, !DIExpression(), !1202)
    #dbg_value(i32 %i2.0, !1238, !DIExpression(), !1239)
  %exitcond8 = icmp ne i32 %i2.0, 12, !dbg !1240
  br i1 %exitcond8, label %for.cond6.preheader, label %for.cond107.preheader, !dbg !1226

for.cond6.preheader:                              ; preds = %for.cond3
  br label %for.cond6, !dbg !1242

for.cond107.preheader:                            ; preds = %for.cond3
  br label %for.cond107, !dbg !1245

for.cond6:                                        ; preds = %for.cond6.preheader, %if.end95
  %j.0 = phi i32 [ %dec, %if.end95 ], [ 11, %for.cond6.preheader ], !dbg !1247
  %words_to_shift.1 = phi i32 [ %spec.select, %if.end95 ], [ %words_to_shift.0, %for.cond6.preheader ], !dbg !1202
  %bits_to_shift.1 = phi i32 [ %spec.select3, %if.end95 ], [ %bits_to_shift.0, %for.cond6.preheader ], !dbg !1202
    #dbg_value(i32 %bits_to_shift.1, !1205, !DIExpression(), !1202)
    #dbg_value(i32 %words_to_shift.1, !1206, !DIExpression(), !1202)
    #dbg_value(i32 %j.0, !1248, !DIExpression(), !1249)
  %cmp7.not = icmp slt i32 %j.0, %i2.0, !dbg !1250
  br i1 %cmp7.not, label %for.inc103, label %for.body8, !dbg !1242

for.body8:                                        ; preds = %for.cond6
  %add.ptr.idx = mul nsw i32 %j.0, 864, !dbg !1252
  %add.ptr = getelementptr inbounds i8, ptr %VtL, i32 %add.ptr.idx, !dbg !1252
    #dbg_value(ptr %add.ptr, !1254, !DIExpression(), !1202)
    #dbg_value(i32 0, !1255, !DIExpression(), !1257)
  br label %for.cond11, !dbg !1258

for.cond11:                                       ; preds = %for.inc44, %for.body8
  %c.0 = phi i32 [ 0, %for.body8 ], [ %inc45, %for.inc44 ], !dbg !1259
    #dbg_value(i32 %c.0, !1255, !DIExpression(), !1257)
  %exitcond5 = icmp ne i32 %c.0, 12, !dbg !1260
  br i1 %exitcond5, label %for.cond14.preheader, label %for.end46, !dbg !1262

for.cond14.preheader:                             ; preds = %for.cond11
  br label %for.cond14, !dbg !1263

for.cond14:                                       ; preds = %for.cond14.preheader, %for.inc41
  %k.0 = phi i32 [ %inc42, %for.inc41 ], [ 0, %for.cond14.preheader ], !dbg !1266
    #dbg_value(i32 %k.0, !1267, !DIExpression(), !1268)
  %exitcond4 = icmp ne i32 %k.0, 9, !dbg !1269
  br i1 %exitcond4, label %for.body16, label %for.inc44, !dbg !1263

for.body16:                                       ; preds = %for.cond14
  %2 = getelementptr inbounds nuw i64, ptr %add.ptr, i32 %k.0, !dbg !1271
  %arrayidx19.idx = mul nuw nsw i32 %c.0, 72, !dbg !1271
  %arrayidx19 = getelementptr inbounds nuw i8, ptr %2, i32 %arrayidx19.idx, !dbg !1271
  %3 = load i64, ptr %arrayidx19, align 8, !dbg !1271
  %sh_prom = zext nneg i32 %bits_to_shift.1 to i64, !dbg !1273
  %shl20 = shl i64 %3, %sh_prom, !dbg !1273
  %mul21 = mul nuw nsw i32 %i2.0, 12, !dbg !1274
  %add22 = add nuw nsw i32 %mul21, %c.0, !dbg !1275
  %add23 = add nsw i32 %k.0, %words_to_shift.1, !dbg !1276
  %mul24 = mul i32 %add23, 144, !dbg !1277
  %add25 = add i32 %add22, %mul24, !dbg !1278
  %arrayidx26 = getelementptr inbounds nuw [2592 x i64], ptr %A, i32 0, i32 %add25, !dbg !1279
  %4 = load i64, ptr %arrayidx26, align 8, !dbg !1280
  %xor = xor i64 %4, %shl20, !dbg !1280
  store i64 %xor, ptr %arrayidx26, align 8, !dbg !1280
  %cmp27 = icmp sgt i32 %bits_to_shift.1, 0, !dbg !1281
  br i1 %cmp27, label %if.then, label %for.inc41, !dbg !1281

if.then:                                          ; preds = %for.body16
  %5 = getelementptr inbounds nuw i64, ptr %add.ptr, i32 %k.0, !dbg !1283
  %arrayidx30.idx = mul nuw nsw i32 %c.0, 72, !dbg !1283
  %arrayidx30 = getelementptr inbounds nuw i8, ptr %5, i32 %arrayidx30.idx, !dbg !1283
  %6 = load i64, ptr %arrayidx30, align 8, !dbg !1283
  %sub31 = sub nsw i32 64, %bits_to_shift.1, !dbg !1285
  %sh_prom32 = zext nneg i32 %sub31 to i64, !dbg !1286
  %shr = lshr i64 %6, %sh_prom32, !dbg !1286
  %mul33 = mul nuw nsw i32 %i2.0, 12, !dbg !1287
  %add34 = add nuw nsw i32 %mul33, %c.0, !dbg !1288
  %add35 = add nsw i32 %k.0, %words_to_shift.1, !dbg !1289
  %7 = mul i32 %add35, 144, !dbg !1290
  %mul37 = add i32 %7, 144, !dbg !1290
  %add38 = add i32 %add34, %mul37, !dbg !1291
  %arrayidx39 = getelementptr inbounds nuw [2592 x i64], ptr %A, i32 0, i32 %add38, !dbg !1292
  %8 = load i64, ptr %arrayidx39, align 8, !dbg !1293
  %xor40 = xor i64 %8, %shr, !dbg !1293
  store i64 %xor40, ptr %arrayidx39, align 8, !dbg !1293
  br label %for.inc41, !dbg !1294

for.inc41:                                        ; preds = %for.body16, %if.then
  %inc42 = add nuw nsw i32 %k.0, 1, !dbg !1295
    #dbg_value(i32 %inc42, !1267, !DIExpression(), !1268)
  br label %for.cond14, !dbg !1296, !llvm.loop !1297

for.inc44:                                        ; preds = %for.cond14
  %inc45 = add nuw nsw i32 %c.0, 1, !dbg !1299
    #dbg_value(i32 %inc45, !1255, !DIExpression(), !1257)
  br label %for.cond11, !dbg !1300, !llvm.loop !1301

for.end46:                                        ; preds = %for.cond11
  %cmp47.not = icmp eq i32 %i2.0, %j.0, !dbg !1303
  br i1 %cmp47.not, label %if.end95, label %if.then48, !dbg !1303

if.then48:                                        ; preds = %for.end46
  %add.ptr51.idx = mul nuw nsw i32 %i2.0, 864, !dbg !1305
  %add.ptr51 = getelementptr inbounds nuw i8, ptr %VtL, i32 %add.ptr51.idx, !dbg !1305
    #dbg_value(ptr %add.ptr51, !1307, !DIExpression(), !1202)
    #dbg_value(i32 0, !1308, !DIExpression(), !1310)
  br label %for.cond53, !dbg !1311

for.cond53:                                       ; preds = %for.inc92, %if.then48
  %c52.0 = phi i32 [ 0, %if.then48 ], [ %inc93, %for.inc92 ], !dbg !1312
    #dbg_value(i32 %c52.0, !1308, !DIExpression(), !1310)
  %exitcond7 = icmp ne i32 %c52.0, 12, !dbg !1313
  br i1 %exitcond7, label %for.cond57.preheader, label %if.end95.loopexit, !dbg !1315

for.cond57.preheader:                             ; preds = %for.cond53
  br label %for.cond57, !dbg !1316

for.cond57:                                       ; preds = %for.cond57.preheader, %for.inc89
  %k56.0 = phi i32 [ %inc90, %for.inc89 ], [ 0, %for.cond57.preheader ], !dbg !1319
    #dbg_value(i32 %k56.0, !1320, !DIExpression(), !1321)
  %exitcond6 = icmp ne i32 %k56.0, 9, !dbg !1322
  br i1 %exitcond6, label %for.body59, label %for.inc92, !dbg !1316

for.body59:                                       ; preds = %for.cond57
  %9 = getelementptr inbounds nuw i64, ptr %add.ptr51, i32 %k56.0, !dbg !1324
  %arrayidx62.idx = mul nuw nsw i32 %c52.0, 72, !dbg !1324
  %arrayidx62 = getelementptr inbounds nuw i8, ptr %9, i32 %arrayidx62.idx, !dbg !1324
  %10 = load i64, ptr %arrayidx62, align 8, !dbg !1324
  %sh_prom63 = zext nneg i32 %bits_to_shift.1 to i64, !dbg !1326
  %shl64 = shl i64 %10, %sh_prom63, !dbg !1326
  %mul65 = mul nsw i32 %j.0, 12, !dbg !1327
  %add66 = add nsw i32 %mul65, %c52.0, !dbg !1328
  %add67 = add nsw i32 %k56.0, %words_to_shift.1, !dbg !1329
  %mul68 = mul i32 %add67, 144, !dbg !1330
  %add69 = add i32 %add66, %mul68, !dbg !1331
  %arrayidx70 = getelementptr inbounds nuw [2592 x i64], ptr %A, i32 0, i32 %add69, !dbg !1332
  %11 = load i64, ptr %arrayidx70, align 8, !dbg !1333
  %xor71 = xor i64 %11, %shl64, !dbg !1333
  store i64 %xor71, ptr %arrayidx70, align 8, !dbg !1333
  %cmp72 = icmp sgt i32 %bits_to_shift.1, 0, !dbg !1334
  br i1 %cmp72, label %if.then73, label %for.inc89, !dbg !1334

if.then73:                                        ; preds = %for.body59
  %12 = getelementptr inbounds nuw i64, ptr %add.ptr51, i32 %k56.0, !dbg !1336
  %arrayidx76.idx = mul nuw nsw i32 %c52.0, 72, !dbg !1336
  %arrayidx76 = getelementptr inbounds nuw i8, ptr %12, i32 %arrayidx76.idx, !dbg !1336
  %13 = load i64, ptr %arrayidx76, align 8, !dbg !1336
  %sub77 = sub nsw i32 64, %bits_to_shift.1, !dbg !1338
  %sh_prom78 = zext nneg i32 %sub77 to i64, !dbg !1339
  %shr79 = lshr i64 %13, %sh_prom78, !dbg !1339
  %mul80 = mul nsw i32 %j.0, 12, !dbg !1340
  %add81 = add nsw i32 %mul80, %c52.0, !dbg !1341
  %add82 = add nsw i32 %k56.0, %words_to_shift.1, !dbg !1342
  %14 = mul i32 %add82, 144, !dbg !1343
  %mul84 = add i32 %14, 144, !dbg !1343
  %add85 = add i32 %add81, %mul84, !dbg !1344
  %arrayidx86 = getelementptr inbounds nuw [2592 x i64], ptr %A, i32 0, i32 %add85, !dbg !1345
  %15 = load i64, ptr %arrayidx86, align 8, !dbg !1346
  %xor87 = xor i64 %15, %shr79, !dbg !1346
  store i64 %xor87, ptr %arrayidx86, align 8, !dbg !1346
  br label %for.inc89, !dbg !1347

for.inc89:                                        ; preds = %for.body59, %if.then73
  %inc90 = add nuw nsw i32 %k56.0, 1, !dbg !1348
    #dbg_value(i32 %inc90, !1320, !DIExpression(), !1321)
  br label %for.cond57, !dbg !1349, !llvm.loop !1350

for.inc92:                                        ; preds = %for.cond57
  %inc93 = add nuw nsw i32 %c52.0, 1, !dbg !1352
    #dbg_value(i32 %inc93, !1308, !DIExpression(), !1310)
  br label %for.cond53, !dbg !1353, !llvm.loop !1354

if.end95.loopexit:                                ; preds = %for.cond53
  br label %if.end95, !dbg !1356

if.end95:                                         ; preds = %if.end95.loopexit, %for.end46
  %add96 = add nsw i32 %bits_to_shift.1, 4, !dbg !1356
    #dbg_value(i32 %add96, !1205, !DIExpression(), !1202)
  %cmp97 = icmp eq i32 %add96, 64, !dbg !1357
  %inc99 = zext i1 %cmp97 to i32, !dbg !1357
  %spec.select = add nsw i32 %words_to_shift.1, %inc99, !dbg !1357
  %spec.select3 = select i1 %cmp97, i32 0, i32 %add96, !dbg !1357
    #dbg_value(i32 %spec.select3, !1205, !DIExpression(), !1202)
    #dbg_value(i32 %spec.select, !1206, !DIExpression(), !1202)
  %dec = add nsw i32 %j.0, -1, !dbg !1359
    #dbg_value(i32 %dec, !1248, !DIExpression(), !1249)
  br label %for.cond6, !dbg !1360, !llvm.loop !1361

for.inc103:                                       ; preds = %for.cond6
  %words_to_shift.1.lcssa = phi i32 [ %words_to_shift.1, %for.cond6 ], !dbg !1202
  %bits_to_shift.1.lcssa = phi i32 [ %bits_to_shift.1, %for.cond6 ], !dbg !1202
  %inc104 = add nuw nsw i32 %i2.0, 1, !dbg !1363
    #dbg_value(i32 %inc104, !1238, !DIExpression(), !1239)
  br label %for.cond3, !dbg !1364, !llvm.loop !1365

for.cond107:                                      ; preds = %for.cond107.preheader, %for.body110
  %c106.0 = phi i32 [ %add113, %for.body110 ], [ 0, %for.cond107.preheader ], !dbg !1367
    #dbg_value(i32 %c106.0, !1368, !DIExpression(), !1369)
  %cmp109 = icmp samesign ult i32 %c106.0, 2016, !dbg !1370
  br i1 %cmp109, label %for.body110, label %for.end114, !dbg !1245

for.body110:                                      ; preds = %for.cond107
  %add.ptr111 = getelementptr inbounds nuw i64, ptr %A, i32 %c106.0, !dbg !1372
  call fastcc void @transpose_16x16_nibbles(ptr noundef nonnull %add.ptr111) #6, !dbg !1374
  %add113 = add nuw nsw i32 %c106.0, 16, !dbg !1375
    #dbg_value(i32 %add113, !1368, !DIExpression(), !1369)
  br label %for.cond107, !dbg !1376, !llvm.loop !1377

for.end114:                                       ; preds = %for.cond107
    #dbg_declare(ptr %tab, !1379, !DIExpression(), !1383)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %tab, i8 0, i32 16, i1 false), !dbg !1383
    #dbg_value(i32 0, !1384, !DIExpression(), !1386)
  br label %for.cond116, !dbg !1387

for.cond116:                                      ; preds = %for.body118, %for.end114
  %i115.0 = phi i32 [ 0, %for.end114 ], [ %inc138, %for.body118 ], !dbg !1388
    #dbg_value(i32 %i115.0, !1384, !DIExpression(), !1386)
  %exitcond9 = icmp ne i32 %i115.0, 4, !dbg !1389
  br i1 %exitcond9, label %for.body118, label %for.cond141.preheader, !dbg !1391

for.cond141.preheader:                            ; preds = %for.cond116
  br label %for.cond141, !dbg !1392

for.body118:                                      ; preds = %for.cond116
  %arrayidx119 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %i115.0, !dbg !1394
  %16 = load i8, ptr %arrayidx119, align 1, !dbg !1394
  %call = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %16, i8 noundef zeroext 1) #6, !dbg !1396
  %mul120 = shl nuw nsw i32 %i115.0, 2, !dbg !1397
  %arrayidx121 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %mul120, !dbg !1398
  store i8 %call, ptr %arrayidx121, align 1, !dbg !1399
  %call123 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %16, i8 noundef zeroext 2) #6, !dbg !1400
  %mul124 = shl nuw nsw i32 %i115.0, 2, !dbg !1401
  %add125 = or disjoint i32 %mul124, 1, !dbg !1402
  %arrayidx126 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add125, !dbg !1403
  store i8 %call123, ptr %arrayidx126, align 1, !dbg !1404
  %arrayidx127 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %i115.0, !dbg !1405
  %17 = load i8, ptr %arrayidx127, align 1, !dbg !1405
  %call128 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %17, i8 noundef zeroext 4) #6, !dbg !1406
  %mul129 = shl nuw nsw i32 %i115.0, 2, !dbg !1407
  %add130 = or disjoint i32 %mul129, 2, !dbg !1408
  %arrayidx131 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add130, !dbg !1409
  store i8 %call128, ptr %arrayidx131, align 1, !dbg !1410
  %arrayidx132 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %i115.0, !dbg !1411
  %18 = load i8, ptr %arrayidx132, align 1, !dbg !1411
  %call133 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %18, i8 noundef zeroext 8) #6, !dbg !1412
  %mul134 = shl nuw nsw i32 %i115.0, 2, !dbg !1413
  %add135 = or disjoint i32 %mul134, 3, !dbg !1414
  %arrayidx136 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add135, !dbg !1415
  store i8 %call133, ptr %arrayidx136, align 1, !dbg !1416
  %inc138 = add nuw nsw i32 %i115.0, 1, !dbg !1417
    #dbg_value(i32 %inc138, !1384, !DIExpression(), !1386)
  br label %for.cond116, !dbg !1418, !llvm.loop !1419

for.cond141:                                      ; preds = %for.cond141.preheader, %for.inc203
  %c140.0 = phi i32 [ %add204, %for.inc203 ], [ 0, %for.cond141.preheader ], !dbg !1421
    #dbg_value(i32 %c140.0, !1422, !DIExpression(), !1423)
  %cmp142 = icmp samesign ult i32 %c140.0, 144, !dbg !1424
  br i1 %cmp142, label %for.cond144.preheader, label %for.cond207.preheader, !dbg !1392

for.cond144.preheader:                            ; preds = %for.cond141
  br label %for.cond144, !dbg !1426

for.cond207.preheader:                            ; preds = %for.cond141
  br label %for.cond207, !dbg !1429

for.cond144:                                      ; preds = %for.cond144.preheader, %for.inc200
  %r.0 = phi i32 [ %inc201, %for.inc200 ], [ 142, %for.cond144.preheader ], !dbg !1431
    #dbg_value(i32 %r.0, !1432, !DIExpression(), !1433)
  %exitcond11 = icmp ne i32 %r.0, 220, !dbg !1434
  br i1 %exitcond11, label %for.body146, label %for.inc203, !dbg !1426

for.body146:                                      ; preds = %for.cond144
  %div1 = lshr i32 %r.0, 4, !dbg !1436
  %mul147 = mul nuw nsw i32 %div1, 144, !dbg !1438
  %add148 = add nuw nsw i32 %mul147, %c140.0, !dbg !1439
  %rem = and i32 %r.0, 15, !dbg !1440
  %add149 = or disjoint i32 %add148, %rem, !dbg !1441
    #dbg_value(i32 %add149, !1442, !DIExpression(), !1443)
  %arrayidx150 = getelementptr inbounds nuw [2592 x i64], ptr %A, i32 0, i32 %add149, !dbg !1444
  %19 = load i64, ptr %arrayidx150, align 8, !dbg !1444
  %and151 = and i64 %19, 1229782938247303441, !dbg !1445
    #dbg_value(i64 %and151, !1446, !DIExpression(), !1443)
  %shr153 = lshr i64 %19, 1, !dbg !1447
  %and154 = and i64 %shr153, 1229782938247303441, !dbg !1448
    #dbg_value(i64 %and154, !1449, !DIExpression(), !1443)
  %shr156 = lshr i64 %19, 2, !dbg !1450
  %and157 = and i64 %shr156, 1229782938247303441, !dbg !1451
    #dbg_value(i64 %and157, !1452, !DIExpression(), !1443)
  %arrayidx158 = getelementptr inbounds nuw [2592 x i64], ptr %A, i32 0, i32 %add149, !dbg !1453
  %20 = load i64, ptr %arrayidx158, align 8, !dbg !1453
  %shr159 = lshr i64 %20, 3, !dbg !1454
  %and160 = and i64 %shr159, 1229782938247303441, !dbg !1455
    #dbg_value(i64 %and160, !1456, !DIExpression(), !1443)
    #dbg_value(i32 0, !1457, !DIExpression(), !1459)
  br label %for.cond161, !dbg !1460

for.cond161:                                      ; preds = %for.body163, %for.body146
  %t.0 = phi i32 [ 0, %for.body146 ], [ %inc198, %for.body163 ], !dbg !1461
    #dbg_value(i32 %t.0, !1457, !DIExpression(), !1459)
  %exitcond10 = icmp ne i32 %t.0, 4, !dbg !1462
  br i1 %exitcond10, label %for.body163, label %for.inc200, !dbg !1464

for.body163:                                      ; preds = %for.cond161
  %mul164 = shl nuw nsw i32 %t.0, 2, !dbg !1465
  %arrayidx166 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %mul164, !dbg !1467
  %21 = load i8, ptr %arrayidx166, align 1, !dbg !1467
  %conv = zext i8 %21 to i64, !dbg !1467
  %mul167 = mul i64 %and151, %conv, !dbg !1468
  %mul168 = shl nuw nsw i32 %t.0, 2, !dbg !1469
  %add169 = or disjoint i32 %mul168, 1, !dbg !1470
  %arrayidx170 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add169, !dbg !1471
  %22 = load i8, ptr %arrayidx170, align 1, !dbg !1471
  %conv171 = zext i8 %22 to i64, !dbg !1471
  %mul172 = mul i64 %and154, %conv171, !dbg !1472
  %xor173 = xor i64 %mul167, %mul172, !dbg !1473
  %mul174 = shl nuw nsw i32 %t.0, 2, !dbg !1474
  %add175 = or disjoint i32 %mul174, 2, !dbg !1475
  %arrayidx176 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add175, !dbg !1476
  %23 = load i8, ptr %arrayidx176, align 1, !dbg !1476
  %conv177 = zext i8 %23 to i64, !dbg !1476
  %mul178 = mul i64 %and157, %conv177, !dbg !1477
  %xor179 = xor i64 %xor173, %mul178, !dbg !1478
  %mul180 = shl nuw nsw i32 %t.0, 2, !dbg !1479
  %add181 = or disjoint i32 %mul180, 3, !dbg !1480
  %arrayidx182 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add181, !dbg !1481
  %24 = load i8, ptr %arrayidx182, align 1, !dbg !1481
  %conv183 = zext i8 %24 to i64, !dbg !1481
  %mul184 = mul i64 %and160, %conv183, !dbg !1482
  %xor185 = xor i64 %xor179, %mul184, !dbg !1483
  %add186 = add nuw nsw i32 %r.0, %t.0, !dbg !1484
  %sub187 = add nsw i32 %add186, -142, !dbg !1485
  %div1882 = lshr i32 %sub187, 4, !dbg !1486
  %mul189 = mul i32 %div1882, 144, !dbg !1487
  %add190 = add i32 %mul189, %c140.0, !dbg !1488
  %add191 = add nuw nsw i32 %r.0, %t.0, !dbg !1489
  %sub192 = add nuw nsw i32 %add191, 2, !dbg !1490
  %rem193 = and i32 %sub192, 15, !dbg !1491
  %add194 = or disjoint i32 %add190, %rem193, !dbg !1492
  %arrayidx195 = getelementptr inbounds nuw [2592 x i64], ptr %A, i32 0, i32 %add194, !dbg !1493
  %25 = load i64, ptr %arrayidx195, align 8, !dbg !1494
  %xor196 = xor i64 %25, %xor185, !dbg !1494
  store i64 %xor196, ptr %arrayidx195, align 8, !dbg !1494
  %inc198 = add nuw nsw i32 %t.0, 1, !dbg !1495
    #dbg_value(i32 %inc198, !1457, !DIExpression(), !1459)
  br label %for.cond161, !dbg !1496, !llvm.loop !1497

for.inc200:                                       ; preds = %for.cond161
  %inc201 = add nuw nsw i32 %r.0, 1, !dbg !1499
    #dbg_value(i32 %inc201, !1432, !DIExpression(), !1433)
  br label %for.cond144, !dbg !1500, !llvm.loop !1501

for.inc203:                                       ; preds = %for.cond144
  %add204 = add nuw nsw i32 %c140.0, 16, !dbg !1503
    #dbg_value(i32 %add204, !1422, !DIExpression(), !1423)
  br label %for.cond141, !dbg !1504, !llvm.loop !1505

for.cond207:                                      ; preds = %for.cond207.preheader, %for.inc241
  %indvars.iv = phi i32 [ 142, %for.cond207.preheader ], [ %indvars.iv.next, %for.inc241 ], !dbg !1507
  %r206.0 = phi i32 [ %add242, %for.inc241 ], [ 0, %for.cond207.preheader ], !dbg !1507
    #dbg_value(i32 %r206.0, !1508, !DIExpression(), !1509)
  %cmp208 = icmp samesign ult i32 %r206.0, 142, !dbg !1510
  br i1 %cmp208, label %for.cond212.preheader, label %for.end243, !dbg !1429

for.cond212.preheader:                            ; preds = %for.cond207
  br label %for.cond212, !dbg !1512

for.cond212:                                      ; preds = %for.cond212.preheader, %for.inc238
  %c211.0 = phi i32 [ %add239, %for.inc238 ], [ 0, %for.cond212.preheader ], !dbg !1515
    #dbg_value(i32 %c211.0, !1516, !DIExpression(), !1517)
  %cmp213 = icmp samesign ult i32 %c211.0, 144, !dbg !1518
  br i1 %cmp213, label %for.cond217.preheader, label %for.inc241, !dbg !1512

for.cond217.preheader:                            ; preds = %for.cond212
  br label %for.cond217, !dbg !1520

for.cond217:                                      ; preds = %for.cond217.preheader, %for.body221
  %i216.0 = phi i32 [ %inc236, %for.body221 ], [ 0, %for.cond217.preheader ], !dbg !1523
    #dbg_value(i32 %i216.0, !1524, !DIExpression(), !1525)
  %exitcond12 = icmp ne i32 %i216.0, %indvars.iv, !dbg !1526
  br i1 %exitcond12, label %for.body221, label %for.inc238, !dbg !1520

for.body221:                                      ; preds = %for.cond217
  %div223 = mul nuw nsw i32 %r206.0, 9, !dbg !1528
  %add224 = add nuw nsw i32 %div223, %c211.0, !dbg !1530
  %add225 = add nuw nsw i32 %add224, %i216.0, !dbg !1531
  %arrayidx226 = getelementptr inbounds nuw [2592 x i64], ptr %A, i32 0, i32 %add225, !dbg !1532
  %add227 = add nuw nsw i32 %r206.0, %i216.0, !dbg !1533
  %mul228 = mul nuw nsw i32 %add227, 145, !dbg !1534
  %add.ptr229 = getelementptr inbounds nuw i8, ptr %A_out, i32 %mul228, !dbg !1535
  %add.ptr230 = getelementptr inbounds nuw i8, ptr %add.ptr229, i32 %c211.0, !dbg !1536
  %cmp232 = icmp samesign ult i32 %c211.0, 128, !dbg !1537
  %sub234 = sub nuw nsw i32 144, %c211.0, !dbg !1537
  %cond = select i1 %cmp232, i32 16, i32 %sub234, !dbg !1537
  call fastcc void @decode(ptr noundef nonnull %arrayidx226, ptr noundef %add.ptr230, i32 noundef %cond) #6, !dbg !1538
  %inc236 = add nuw nsw i32 %i216.0, 1, !dbg !1539
    #dbg_value(i32 %inc236, !1524, !DIExpression(), !1525)
  br label %for.cond217, !dbg !1540, !llvm.loop !1541

for.inc238:                                       ; preds = %for.cond217
  %add239 = add nuw nsw i32 %c211.0, 16, !dbg !1543
    #dbg_value(i32 %add239, !1516, !DIExpression(), !1517)
  br label %for.cond212, !dbg !1544, !llvm.loop !1545

for.inc241:                                       ; preds = %for.cond212
  %add242 = add nuw nsw i32 %r206.0, 16, !dbg !1547
    #dbg_value(i32 %add242, !1508, !DIExpression(), !1509)
  %indvars.iv.next = add nsw i32 %indvars.iv, -16, !dbg !1548
  br label %for.cond207, !dbg !1548, !llvm.loop !1549

for.end243:                                       ; preds = %for.cond207
  ret void, !dbg !1551
}

declare dso_local ptr @memset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
define internal fastcc void @mat_mul(ptr noundef %a, ptr noundef %b, ptr noundef %c, i32 noundef %colrow_ab, i32 noundef %row_a, i32 noundef %col_b) unnamed_addr #0 !dbg !1552 {
entry:
    #dbg_value(ptr %a, !1555, !DIExpression(), !1556)
    #dbg_value(ptr %b, !1557, !DIExpression(), !1556)
    #dbg_value(ptr %c, !1558, !DIExpression(), !1556)
    #dbg_value(i32 %colrow_ab, !1559, !DIExpression(), !1556)
    #dbg_value(i32 %row_a, !1560, !DIExpression(), !1556)
    #dbg_value(i32 %col_b, !1561, !DIExpression(), !1556)
    #dbg_value(i32 0, !1562, !DIExpression(), !1564)
  %smax = call i32 @llvm.smax.i32(i32 %col_b, i32 0), !dbg !1565
  %smax1 = call i32 @llvm.smax.i32(i32 %row_a, i32 0), !dbg !1565
  br label %for.cond, !dbg !1565

for.cond:                                         ; preds = %for.inc4, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc5, %for.inc4 ], !dbg !1566
  %c.addr.0 = phi ptr [ %c, %entry ], [ %c.addr.1.lcssa, %for.inc4 ]
  %a.addr.0 = phi ptr [ %a, %entry ], [ %add.ptr6, %for.inc4 ]
    #dbg_value(ptr %a.addr.0, !1555, !DIExpression(), !1556)
    #dbg_value(ptr %c.addr.0, !1558, !DIExpression(), !1556)
    #dbg_value(i32 %i.0, !1562, !DIExpression(), !1564)
  %exitcond2 = icmp ne i32 %i.0, %smax1, !dbg !1567
  br i1 %exitcond2, label %for.cond1.preheader, label %for.end7, !dbg !1569

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !1570

for.cond1:                                        ; preds = %for.cond1.preheader, %for.body3
  %c.addr.1 = phi ptr [ %incdec.ptr, %for.body3 ], [ %c.addr.0, %for.cond1.preheader ]
  %j.0 = phi i32 [ %inc, %for.body3 ], [ 0, %for.cond1.preheader ], !dbg !1573
    #dbg_value(i32 %j.0, !1574, !DIExpression(), !1575)
    #dbg_value(ptr %c.addr.1, !1558, !DIExpression(), !1556)
  %exitcond = icmp ne i32 %j.0, %smax, !dbg !1576
  br i1 %exitcond, label %for.body3, label %for.inc4, !dbg !1570

for.body3:                                        ; preds = %for.cond1
  %add.ptr = getelementptr inbounds nuw i8, ptr %b, i32 %j.0, !dbg !1578
  %call = call fastcc zeroext i8 @lincomb(ptr noundef %a.addr.0, ptr noundef %add.ptr, i32 noundef %colrow_ab, i32 noundef %col_b) #6, !dbg !1580
  store i8 %call, ptr %c.addr.1, align 1, !dbg !1581
  %inc = add nuw i32 %j.0, 1, !dbg !1582
    #dbg_value(i32 %inc, !1574, !DIExpression(), !1575)
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %c.addr.1, i32 1, !dbg !1583
    #dbg_value(ptr %incdec.ptr, !1558, !DIExpression(), !1556)
  br label %for.cond1, !dbg !1584, !llvm.loop !1585

for.inc4:                                         ; preds = %for.cond1
  %c.addr.1.lcssa = phi ptr [ %c.addr.1, %for.cond1 ]
  %inc5 = add nuw i32 %i.0, 1, !dbg !1587
    #dbg_value(i32 %inc5, !1562, !DIExpression(), !1564)
  %add.ptr6 = getelementptr inbounds i8, ptr %a.addr.0, i32 %colrow_ab, !dbg !1588
    #dbg_value(ptr %add.ptr6, !1555, !DIExpression(), !1556)
  br label %for.cond, !dbg !1589, !llvm.loop !1590

for.end7:                                         ; preds = %for.cond
  ret void, !dbg !1592
}

; Function Attrs: nounwind
define internal fastcc void @mat_add(ptr noundef %a, ptr noundef %b, ptr noundef %c, i32 noundef %m, i32 noundef %n) unnamed_addr #0 !dbg !1593 {
entry:
    #dbg_value(ptr %a, !1596, !DIExpression(), !1597)
    #dbg_value(ptr %b, !1598, !DIExpression(), !1597)
    #dbg_value(ptr %c, !1599, !DIExpression(), !1597)
    #dbg_value(i32 %m, !1600, !DIExpression(), !1597)
    #dbg_value(i32 %n, !1601, !DIExpression(), !1597)
    #dbg_value(i32 0, !1602, !DIExpression(), !1604)
  %smax = call i32 @llvm.smax.i32(i32 %n, i32 0), !dbg !1605
  %smax1 = call i32 @llvm.smax.i32(i32 %m, i32 0), !dbg !1605
  br label %for.cond, !dbg !1605

for.cond:                                         ; preds = %for.inc11, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc12, %for.inc11 ], !dbg !1606
    #dbg_value(i32 %i.0, !1602, !DIExpression(), !1604)
  %exitcond2 = icmp ne i32 %i.0, %smax1, !dbg !1607
  br i1 %exitcond2, label %for.cond1.preheader, label %for.end13, !dbg !1609

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !1610

for.cond1:                                        ; preds = %for.cond1.preheader, %for.body3
  %j.0 = phi i32 [ %inc, %for.body3 ], [ 0, %for.cond1.preheader ], !dbg !1613
    #dbg_value(i32 %j.0, !1614, !DIExpression(), !1615)
  %exitcond = icmp ne i32 %j.0, %smax, !dbg !1616
  br i1 %exitcond, label %for.body3, label %for.inc11, !dbg !1610

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %i.0, %n, !dbg !1618
  %add.ptr = getelementptr inbounds i8, ptr %a, i32 %mul, !dbg !1620
  %add.ptr4 = getelementptr inbounds nuw i8, ptr %add.ptr, i32 %j.0, !dbg !1621
  %0 = load i8, ptr %add.ptr4, align 1, !dbg !1622
  %mul5 = mul nsw i32 %i.0, %n, !dbg !1623
  %add.ptr6 = getelementptr inbounds i8, ptr %b, i32 %mul5, !dbg !1624
  %add.ptr7 = getelementptr inbounds nuw i8, ptr %add.ptr6, i32 %j.0, !dbg !1625
  %1 = load i8, ptr %add.ptr7, align 1, !dbg !1626
  %call = call fastcc zeroext i8 @add_f(i8 noundef zeroext %0, i8 noundef zeroext %1) #6, !dbg !1627
  %mul8 = mul nsw i32 %i.0, %n, !dbg !1628
  %add.ptr9 = getelementptr inbounds i8, ptr %c, i32 %mul8, !dbg !1629
  %add.ptr10 = getelementptr inbounds nuw i8, ptr %add.ptr9, i32 %j.0, !dbg !1630
  store i8 %call, ptr %add.ptr10, align 1, !dbg !1631
  %inc = add nuw i32 %j.0, 1, !dbg !1632
    #dbg_value(i32 %inc, !1614, !DIExpression(), !1615)
  br label %for.cond1, !dbg !1633, !llvm.loop !1634

for.inc11:                                        ; preds = %for.cond1
  %inc12 = add nuw i32 %i.0, 1, !dbg !1636
    #dbg_value(i32 %inc12, !1602, !DIExpression(), !1604)
  br label %for.cond, !dbg !1637, !llvm.loop !1638

for.end13:                                        ; preds = %for.cond
  ret void, !dbg !1640
}

; Function Attrs: nounwind
define internal fastcc void @encode(ptr noundef %m, ptr noundef %menc, i32 noundef %mlen) unnamed_addr #0 !dbg !1641 {
entry:
    #dbg_value(ptr %m, !1642, !DIExpression(), !1643)
    #dbg_value(ptr %menc, !1644, !DIExpression(), !1643)
    #dbg_value(i32 %mlen, !1645, !DIExpression(), !1643)
    #dbg_value(i32 0, !1646, !DIExpression(), !1643)
  br label %for.cond, !dbg !1647

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1649
  %m.addr.0 = phi ptr [ %m, %entry ], [ %add.ptr3, %for.body ]
    #dbg_value(ptr %m.addr.0, !1642, !DIExpression(), !1643)
    #dbg_value(i32 %i.0, !1646, !DIExpression(), !1643)
  %div = sdiv i32 %mlen, 2, !dbg !1650
  %cmp = icmp slt i32 %i.0, %div, !dbg !1652
  br i1 %cmp, label %for.body, label %for.end, !dbg !1653

for.body:                                         ; preds = %for.cond
  %0 = load i8, ptr %m.addr.0, align 1, !dbg !1654
  %add.ptr = getelementptr inbounds nuw i8, ptr %m.addr.0, i32 1, !dbg !1656
  %1 = load i8, ptr %add.ptr, align 1, !dbg !1657
  %shl = shl i8 %1, 4, !dbg !1658
  %or = or i8 %shl, %0, !dbg !1659
  %arrayidx = getelementptr inbounds nuw i8, ptr %menc, i32 %i.0, !dbg !1660
  store i8 %or, ptr %arrayidx, align 1, !dbg !1661
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1662
    #dbg_value(i32 %inc, !1646, !DIExpression(), !1643)
  %add.ptr3 = getelementptr inbounds nuw i8, ptr %m.addr.0, i32 2, !dbg !1663
    #dbg_value(ptr %add.ptr3, !1642, !DIExpression(), !1643)
  br label %for.cond, !dbg !1664, !llvm.loop !1665

for.end:                                          ; preds = %for.cond
  %i.0.lcssa = phi i32 [ %i.0, %for.cond ], !dbg !1649
  %m.addr.0.lcssa = phi ptr [ %m.addr.0, %for.cond ]
  %2 = and i32 %mlen, -2147483647, !dbg !1667
  %cmp4 = icmp eq i32 %2, 1, !dbg !1667
  br i1 %cmp4, label %if.then, label %if.end, !dbg !1667

if.then:                                          ; preds = %for.end
  %3 = load i8, ptr %m.addr.0.lcssa, align 1, !dbg !1669
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %menc, i32 %i.0.lcssa, !dbg !1671
  store i8 %3, ptr %arrayidx6, align 1, !dbg !1672
  br label %if.end, !dbg !1673

if.end:                                           ; preds = %if.then, %for.end
  ret void, !dbg !1674
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @add_f(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !1675 {
entry:
    #dbg_value(i8 %a, !1678, !DIExpression(), !1679)
    #dbg_value(i8 %b, !1680, !DIExpression(), !1679)
  %xor1 = xor i8 %a, %b, !dbg !1681
  ret i8 %xor1, !dbg !1682
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @lincomb(ptr noundef %a, ptr noundef %b, i32 noundef %n, i32 noundef %m) unnamed_addr #0 !dbg !1683 {
entry:
    #dbg_value(ptr %a, !1686, !DIExpression(), !1687)
    #dbg_value(ptr %b, !1688, !DIExpression(), !1687)
    #dbg_value(i32 %n, !1689, !DIExpression(), !1687)
    #dbg_value(i32 %m, !1690, !DIExpression(), !1687)
    #dbg_value(i8 0, !1691, !DIExpression(), !1687)
    #dbg_value(i32 0, !1692, !DIExpression(), !1694)
  %smax = call i32 @llvm.smax.i32(i32 %n, i32 0), !dbg !1695
  br label %for.cond, !dbg !1695

for.cond:                                         ; preds = %for.body, %entry
  %ret.0 = phi i8 [ 0, %entry ], [ %call1, %for.body ], !dbg !1687
  %b.addr.0 = phi ptr [ %b, %entry ], [ %add.ptr, %for.body ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1696
    #dbg_value(i32 %i.0, !1692, !DIExpression(), !1694)
    #dbg_value(ptr %b.addr.0, !1688, !DIExpression(), !1687)
    #dbg_value(i8 %ret.0, !1691, !DIExpression(), !1687)
  %exitcond = icmp ne i32 %i.0, %smax, !dbg !1697
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1699

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %a, i32 %i.0, !dbg !1700
  %0 = load i8, ptr %arrayidx, align 1, !dbg !1700
  %1 = load i8, ptr %b.addr.0, align 1, !dbg !1702
  %call = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %0, i8 noundef zeroext %1) #6, !dbg !1703
  %call1 = call fastcc zeroext i8 @add_f(i8 noundef zeroext %call, i8 noundef zeroext %ret.0) #6, !dbg !1704
    #dbg_value(i8 %call1, !1691, !DIExpression(), !1687)
  %inc = add nuw i32 %i.0, 1, !dbg !1705
    #dbg_value(i32 %inc, !1692, !DIExpression(), !1694)
  %add.ptr = getelementptr inbounds i8, ptr %b.addr.0, i32 %m, !dbg !1706
    #dbg_value(ptr %add.ptr, !1688, !DIExpression(), !1687)
  br label %for.cond, !dbg !1707, !llvm.loop !1708

for.end:                                          ; preds = %for.cond
  %ret.0.lcssa = phi i8 [ %ret.0, %for.cond ], !dbg !1687
  ret i8 %ret.0.lcssa, !dbg !1710
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @mul_f(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !1711 {
entry:
    #dbg_value(i8 %a, !1712, !DIExpression(), !1713)
    #dbg_value(i8 %b, !1714, !DIExpression(), !1713)
  %0 = load volatile i8, ptr @pqmayo_MAYO_5_ref_unsigned_char_blocker, align 1, !dbg !1715
  %xor1 = xor i8 %a, %0, !dbg !1716
    #dbg_value(i8 %xor1, !1712, !DIExpression(), !1713)
  %1 = trunc i8 %xor1 to i1, !dbg !1717
    #dbg_value(i8 poison, !1718, !DIExpression(), !1713)
  %2 = and i8 %xor1, 2, !dbg !1719
  %mul9 = mul i8 %2, %b, !dbg !1720
  %conv10 = select i1 %1, i8 %b, i8 0, !dbg !1717
  %xor11 = xor i8 %conv10, %mul9, !dbg !1721
    #dbg_value(i8 %xor11, !1718, !DIExpression(), !1713)
  %3 = and i8 %xor1, 4, !dbg !1722
  %mul16 = mul i8 %3, %b, !dbg !1723
  %xor18 = xor i8 %mul16, %xor11, !dbg !1724
    #dbg_value(i8 %xor18, !1718, !DIExpression(), !1713)
  %4 = and i8 %xor1, 8, !dbg !1725
  %mul23 = mul i8 %4, %b, !dbg !1726
  %xor25 = xor i8 %mul23, %xor18, !dbg !1727
    #dbg_value(i8 %xor25, !1718, !DIExpression(), !1713)
    #dbg_value(i8 %xor25, !1728, !DIExpression(DW_OP_constu, 18446744073709551600, DW_OP_and, DW_OP_stack_value), !1713)
  %5 = lshr i8 %xor25, 4, !dbg !1729
  %6 = lshr i8 %xor25, 3, !dbg !1730
  %7 = and i8 %6, 14, !dbg !1730
  %8 = xor i8 %5, %7, !dbg !1731
  %xor25.masked = and i8 %xor25, 15, !dbg !1732
  %9 = xor i8 %8, %xor25.masked, !dbg !1732
    #dbg_value(i8 %9, !1733, !DIExpression(), !1713)
  ret i8 %9, !dbg !1734
}

; Function Attrs: nounwind
define internal fastcc void @transpose_16x16_nibbles(ptr noundef %M) unnamed_addr #0 !dbg !67 {
entry:
    #dbg_value(ptr %M, !1735, !DIExpression(), !1736)
    #dbg_value(i32 0, !1737, !DIExpression(), !1739)
  br label %for.cond, !dbg !1740

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %add7, %for.body ], !dbg !1741
    #dbg_value(i32 %i.0, !1737, !DIExpression(), !1739)
  %cmp = icmp samesign ult i32 %i.0, 16, !dbg !1742
  br i1 %cmp, label %for.body, label %for.cond9.preheader, !dbg !1744

for.cond9.preheader:                              ; preds = %for.cond
  br label %for.cond9, !dbg !1745

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %M, i32 %i.0, !dbg !1747
  %0 = load i64, ptr %arrayidx, align 8, !dbg !1747
  %shr = lshr i64 %0, 4, !dbg !1749
  %add = or disjoint i32 %i.0, 1, !dbg !1750
  %arrayidx1 = getelementptr inbounds nuw i64, ptr %M, i32 %add, !dbg !1751
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !1751
  %xor = xor i64 %shr, %1, !dbg !1752
  %and = and i64 %xor, 1085102592571150095, !dbg !1753
    #dbg_value(i64 %and, !1754, !DIExpression(), !1755)
  %shl = shl nuw i64 %and, 4, !dbg !1756
  %arrayidx2 = getelementptr inbounds nuw i64, ptr %M, i32 %i.0, !dbg !1757
  %2 = load i64, ptr %arrayidx2, align 8, !dbg !1758
  %xor3 = xor i64 %2, %shl, !dbg !1758
  store i64 %xor3, ptr %arrayidx2, align 8, !dbg !1758
  %add4 = or disjoint i32 %i.0, 1, !dbg !1759
  %arrayidx5 = getelementptr inbounds nuw i64, ptr %M, i32 %add4, !dbg !1760
  %3 = load i64, ptr %arrayidx5, align 8, !dbg !1761
  %xor6 = xor i64 %3, %and, !dbg !1761
  store i64 %xor6, ptr %arrayidx5, align 8, !dbg !1761
  %add7 = add nuw nsw i32 %i.0, 2, !dbg !1762
    #dbg_value(i32 %add7, !1737, !DIExpression(), !1739)
  br label %for.cond, !dbg !1763, !llvm.loop !1764

for.cond9:                                        ; preds = %for.cond9.preheader, %for.body11
  %i8.0 = phi i32 [ %add39, %for.body11 ], [ 0, %for.cond9.preheader ], !dbg !1766
    #dbg_value(i32 %i8.0, !1767, !DIExpression(), !1768)
  %cmp10 = icmp samesign ult i32 %i8.0, 16, !dbg !1769
  br i1 %cmp10, label %for.body11, label %for.cond42.preheader, !dbg !1745

for.cond42.preheader:                             ; preds = %for.cond9
  br label %for.cond42, !dbg !1771

for.body11:                                       ; preds = %for.cond9
  %arrayidx12 = getelementptr inbounds nuw i64, ptr %M, i32 %i8.0, !dbg !1773
  %4 = load i64, ptr %arrayidx12, align 8, !dbg !1773
  %shr13 = lshr i64 %4, 8, !dbg !1775
  %add14 = or disjoint i32 %i8.0, 2, !dbg !1776
  %arrayidx15 = getelementptr inbounds nuw i64, ptr %M, i32 %add14, !dbg !1777
  %5 = load i64, ptr %arrayidx15, align 8, !dbg !1777
  %xor16 = xor i64 %shr13, %5, !dbg !1778
  %and17 = and i64 %xor16, 71777214294589695, !dbg !1779
    #dbg_value(i64 %and17, !1780, !DIExpression(), !1781)
  %add18 = or disjoint i32 %i8.0, 1, !dbg !1782
  %arrayidx19 = getelementptr inbounds nuw i64, ptr %M, i32 %add18, !dbg !1783
  %6 = load i64, ptr %arrayidx19, align 8, !dbg !1783
  %shr20 = lshr i64 %6, 8, !dbg !1784
  %add21 = or disjoint i32 %i8.0, 3, !dbg !1785
  %arrayidx22 = getelementptr inbounds nuw i64, ptr %M, i32 %add21, !dbg !1786
  %7 = load i64, ptr %arrayidx22, align 8, !dbg !1786
  %xor23 = xor i64 %shr20, %7, !dbg !1787
  %and24 = and i64 %xor23, 71777214294589695, !dbg !1788
    #dbg_value(i64 %and24, !1789, !DIExpression(), !1781)
  %shl25 = shl nuw i64 %and17, 8, !dbg !1790
  %arrayidx26 = getelementptr inbounds nuw i64, ptr %M, i32 %i8.0, !dbg !1791
  %8 = load i64, ptr %arrayidx26, align 8, !dbg !1792
  %xor27 = xor i64 %8, %shl25, !dbg !1792
  store i64 %xor27, ptr %arrayidx26, align 8, !dbg !1792
  %shl28 = shl nuw i64 %and24, 8, !dbg !1793
  %add29 = or disjoint i32 %i8.0, 1, !dbg !1794
  %arrayidx30 = getelementptr inbounds nuw i64, ptr %M, i32 %add29, !dbg !1795
  %9 = load i64, ptr %arrayidx30, align 8, !dbg !1796
  %xor31 = xor i64 %9, %shl28, !dbg !1796
  store i64 %xor31, ptr %arrayidx30, align 8, !dbg !1796
  %add32 = or disjoint i32 %i8.0, 2, !dbg !1797
  %arrayidx33 = getelementptr inbounds nuw i64, ptr %M, i32 %add32, !dbg !1798
  %10 = load i64, ptr %arrayidx33, align 8, !dbg !1799
  %xor34 = xor i64 %10, %and17, !dbg !1799
  store i64 %xor34, ptr %arrayidx33, align 8, !dbg !1799
  %add35 = or disjoint i32 %i8.0, 3, !dbg !1800
  %arrayidx36 = getelementptr inbounds nuw i64, ptr %M, i32 %add35, !dbg !1801
  %11 = load i64, ptr %arrayidx36, align 8, !dbg !1802
  %xor37 = xor i64 %11, %and24, !dbg !1802
  store i64 %xor37, ptr %arrayidx36, align 8, !dbg !1802
  %add39 = add nuw nsw i32 %i8.0, 4, !dbg !1803
    #dbg_value(i32 %add39, !1767, !DIExpression(), !1768)
  br label %for.cond9, !dbg !1804, !llvm.loop !1805

for.cond42:                                       ; preds = %for.cond42.preheader, %for.body44
  %i41.0 = phi i32 [ %inc, %for.body44 ], [ 0, %for.cond42.preheader ], !dbg !1807
    #dbg_value(i32 %i41.0, !1808, !DIExpression(), !1809)
  %exitcond = icmp ne i32 %i41.0, 4, !dbg !1810
  br i1 %exitcond, label %for.body44, label %for.cond76.preheader, !dbg !1771

for.cond76.preheader:                             ; preds = %for.cond42
  br label %for.cond76, !dbg !1812

for.body44:                                       ; preds = %for.cond42
  %arrayidx46 = getelementptr inbounds nuw i64, ptr %M, i32 %i41.0, !dbg !1814
  %12 = load i64, ptr %arrayidx46, align 8, !dbg !1814
  %shr47 = lshr i64 %12, 16, !dbg !1816
  %add48 = or disjoint i32 %i41.0, 4, !dbg !1817
  %arrayidx49 = getelementptr inbounds nuw i64, ptr %M, i32 %add48, !dbg !1818
  %13 = load i64, ptr %arrayidx49, align 8, !dbg !1818
  %xor50 = xor i64 %shr47, %13, !dbg !1819
  %and51 = and i64 %xor50, 281470681808895, !dbg !1820
    #dbg_value(i64 %and51, !1821, !DIExpression(), !1822)
  %add53 = or disjoint i32 %i41.0, 8, !dbg !1823
  %arrayidx54 = getelementptr inbounds nuw i64, ptr %M, i32 %add53, !dbg !1824
  %14 = load i64, ptr %arrayidx54, align 8, !dbg !1824
  %shr55 = lshr i64 %14, 16, !dbg !1825
  %add56 = or disjoint i32 %i41.0, 12, !dbg !1826
  %arrayidx57 = getelementptr inbounds nuw i64, ptr %M, i32 %add56, !dbg !1827
  %15 = load i64, ptr %arrayidx57, align 8, !dbg !1827
  %xor58 = xor i64 %shr55, %15, !dbg !1828
  %and59 = and i64 %xor58, 281470681808895, !dbg !1829
    #dbg_value(i64 %and59, !1830, !DIExpression(), !1822)
  %shl60 = shl nuw i64 %and51, 16, !dbg !1831
  %arrayidx61 = getelementptr inbounds nuw i64, ptr %M, i32 %i41.0, !dbg !1832
  %16 = load i64, ptr %arrayidx61, align 8, !dbg !1833
  %xor62 = xor i64 %16, %shl60, !dbg !1833
  store i64 %xor62, ptr %arrayidx61, align 8, !dbg !1833
  %shl63 = shl nuw i64 %and59, 16, !dbg !1834
  %add64 = or disjoint i32 %i41.0, 8, !dbg !1835
  %arrayidx65 = getelementptr inbounds nuw i64, ptr %M, i32 %add64, !dbg !1836
  %17 = load i64, ptr %arrayidx65, align 8, !dbg !1837
  %xor66 = xor i64 %17, %shl63, !dbg !1837
  store i64 %xor66, ptr %arrayidx65, align 8, !dbg !1837
  %add67 = or disjoint i32 %i41.0, 4, !dbg !1838
  %arrayidx68 = getelementptr inbounds nuw i64, ptr %M, i32 %add67, !dbg !1839
  %18 = load i64, ptr %arrayidx68, align 8, !dbg !1840
  %xor69 = xor i64 %18, %and51, !dbg !1840
  store i64 %xor69, ptr %arrayidx68, align 8, !dbg !1840
  %add70 = or disjoint i32 %i41.0, 12, !dbg !1841
  %arrayidx71 = getelementptr inbounds nuw i64, ptr %M, i32 %add70, !dbg !1842
  %19 = load i64, ptr %arrayidx71, align 8, !dbg !1843
  %xor72 = xor i64 %19, %and59, !dbg !1843
  store i64 %xor72, ptr %arrayidx71, align 8, !dbg !1843
  %inc = add nuw nsw i32 %i41.0, 1, !dbg !1844
    #dbg_value(i32 %inc, !1808, !DIExpression(), !1809)
  br label %for.cond42, !dbg !1845, !llvm.loop !1846

for.cond76:                                       ; preds = %for.cond76.preheader, %for.body78
  %i75.0 = phi i32 [ %inc93, %for.body78 ], [ 0, %for.cond76.preheader ], !dbg !1848
    #dbg_value(i32 %i75.0, !1849, !DIExpression(), !1850)
  %exitcond1 = icmp ne i32 %i75.0, 8, !dbg !1851
  br i1 %exitcond1, label %for.body78, label %for.end94, !dbg !1812

for.body78:                                       ; preds = %for.cond76
  %arrayidx80 = getelementptr inbounds nuw i64, ptr %M, i32 %i75.0, !dbg !1853
  %20 = load i64, ptr %arrayidx80, align 8, !dbg !1853
  %shr81 = lshr i64 %20, 32, !dbg !1855
  %add82 = or disjoint i32 %i75.0, 8, !dbg !1856
  %arrayidx83 = getelementptr inbounds nuw i64, ptr %M, i32 %add82, !dbg !1857
  %21 = load i64, ptr %arrayidx83, align 8, !dbg !1857
  %.masked = and i64 %21, 4294967295, !dbg !1858
  %and85 = xor i64 %shr81, %.masked, !dbg !1858
    #dbg_value(i64 %and85, !1859, !DIExpression(), !1860)
  %shl86 = shl nuw i64 %and85, 32, !dbg !1861
  %arrayidx87 = getelementptr inbounds nuw i64, ptr %M, i32 %i75.0, !dbg !1862
  %22 = load i64, ptr %arrayidx87, align 8, !dbg !1863
  %xor88 = xor i64 %22, %shl86, !dbg !1863
  store i64 %xor88, ptr %arrayidx87, align 8, !dbg !1863
  %add89 = or disjoint i32 %i75.0, 8, !dbg !1864
  %arrayidx90 = getelementptr inbounds nuw i64, ptr %M, i32 %add89, !dbg !1865
  %23 = load i64, ptr %arrayidx90, align 8, !dbg !1866
  %xor91 = xor i64 %23, %and85, !dbg !1866
  store i64 %xor91, ptr %arrayidx90, align 8, !dbg !1866
  %inc93 = add nuw nsw i32 %i75.0, 1, !dbg !1867
    #dbg_value(i32 %inc93, !1849, !DIExpression(), !1850)
  br label %for.cond76, !dbg !1868, !llvm.loop !1869

for.end94:                                        ; preds = %for.cond76
  ret void, !dbg !1871
}

; Function Attrs: nounwind
define internal fastcc void @mul_add_mat_x_m_mat(i32 noundef %m_vec_limbs, ptr noundef %mat, ptr noundef %bs_mat, ptr noundef %acc, i32 noundef %mat_rows, i32 noundef %mat_cols, i32 noundef %bs_mat_cols) unnamed_addr #0 !dbg !1872 {
entry:
    #dbg_value(i32 %m_vec_limbs, !1873, !DIExpression(), !1874)
    #dbg_value(ptr %mat, !1875, !DIExpression(), !1874)
    #dbg_value(ptr %bs_mat, !1876, !DIExpression(), !1874)
    #dbg_value(ptr %acc, !1877, !DIExpression(), !1874)
    #dbg_value(i32 %mat_rows, !1878, !DIExpression(), !1874)
    #dbg_value(i32 %mat_cols, !1879, !DIExpression(), !1874)
    #dbg_value(i32 %bs_mat_cols, !1880, !DIExpression(), !1874)
    #dbg_value(i32 0, !1881, !DIExpression(), !1883)
  %smax = call i32 @llvm.smax.i32(i32 %bs_mat_cols, i32 0), !dbg !1884
  %smax1 = call i32 @llvm.smax.i32(i32 %mat_cols, i32 0), !dbg !1884
  %smax3 = call i32 @llvm.smax.i32(i32 %mat_rows, i32 0), !dbg !1884
  br label %for.cond, !dbg !1884

for.cond:                                         ; preds = %for.inc17, %entry
  %r.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ], !dbg !1885
    #dbg_value(i32 %r.0, !1881, !DIExpression(), !1883)
  %exitcond4 = icmp ne i32 %r.0, %smax3, !dbg !1886
  br i1 %exitcond4, label %for.cond1.preheader, label %for.end19, !dbg !1888

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !1889

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc15
  %c.0 = phi i32 [ %inc, %for.inc15 ], [ 0, %for.cond1.preheader ], !dbg !1892
    #dbg_value(i32 %c.0, !1893, !DIExpression(), !1894)
  %exitcond2 = icmp ne i32 %c.0, %smax1, !dbg !1895
  br i1 %exitcond2, label %for.cond4.preheader, label %for.inc17, !dbg !1889

for.cond4.preheader:                              ; preds = %for.cond1
  br label %for.cond4, !dbg !1897

for.cond4:                                        ; preds = %for.cond4.preheader, %for.body6
  %k.0 = phi i32 [ %add14, %for.body6 ], [ 0, %for.cond4.preheader ], !dbg !1900
    #dbg_value(i32 %k.0, !1901, !DIExpression(), !1902)
  %exitcond = icmp ne i32 %k.0, %smax, !dbg !1903
  br i1 %exitcond, label %for.body6, label %for.inc15, !dbg !1897

for.body6:                                        ; preds = %for.cond4
  %mul = mul nsw i32 %c.0, %bs_mat_cols, !dbg !1905
  %add = add nsw i32 %mul, %k.0, !dbg !1907
  %mul7 = mul nsw i32 %m_vec_limbs, %add, !dbg !1908
  %add.ptr = getelementptr inbounds i64, ptr %bs_mat, i32 %mul7, !dbg !1909
  %mul8 = mul nsw i32 %r.0, %mat_cols, !dbg !1910
  %0 = getelementptr i8, ptr %mat, i32 %mul8, !dbg !1911
  %arrayidx = getelementptr i8, ptr %0, i32 %c.0, !dbg !1911
  %1 = load i8, ptr %arrayidx, align 1, !dbg !1911
  %mul10 = mul nsw i32 %r.0, %bs_mat_cols, !dbg !1912
  %add11 = add nsw i32 %mul10, %k.0, !dbg !1913
  %mul12 = mul nsw i32 %m_vec_limbs, %add11, !dbg !1914
  %add.ptr13 = getelementptr inbounds i64, ptr %acc, i32 %mul12, !dbg !1915
  call fastcc void @m_vec_mul_add(i32 noundef %m_vec_limbs, ptr noundef %add.ptr, i8 noundef zeroext %1, ptr noundef %add.ptr13) #6, !dbg !1916
  %add14 = add nuw i32 %k.0, 1, !dbg !1917
    #dbg_value(i32 %add14, !1901, !DIExpression(), !1902)
  br label %for.cond4, !dbg !1918, !llvm.loop !1919

for.inc15:                                        ; preds = %for.cond4
  %inc = add nuw i32 %c.0, 1, !dbg !1921
    #dbg_value(i32 %inc, !1893, !DIExpression(), !1894)
  br label %for.cond1, !dbg !1922, !llvm.loop !1923

for.inc17:                                        ; preds = %for.cond1
  %inc18 = add nuw i32 %r.0, 1, !dbg !1925
    #dbg_value(i32 %inc18, !1881, !DIExpression(), !1883)
  br label %for.cond, !dbg !1926, !llvm.loop !1927

for.end19:                                        ; preds = %for.cond
  ret void, !dbg !1929
}

; Function Attrs: nounwind
define internal fastcc void @P1_times_Vt(ptr noundef %p, ptr noundef %P1, ptr noundef %V, ptr noundef %acc) unnamed_addr #0 !dbg !1930 {
entry:
    #dbg_value(ptr %p, !1931, !DIExpression(), !1932)
    #dbg_value(ptr %P1, !1933, !DIExpression(), !1932)
    #dbg_value(ptr %V, !1934, !DIExpression(), !1932)
    #dbg_value(ptr %acc, !1935, !DIExpression(), !1932)
  call fastcc void @mul_add_m_upper_triangular_mat_x_mat_trans(i32 noundef 9, ptr noundef %P1, ptr noundef %V, ptr noundef %acc, i32 noundef 142, i32 noundef 142, i32 noundef 12, i32 noundef 1) #6, !dbg !1936
  ret void, !dbg !1937
}

; Function Attrs: nounwind
define internal fastcc void @mul_add_m_upper_triangular_mat_x_mat_trans(i32 noundef %m_vec_limbs, ptr noundef %bs_mat, ptr noundef %mat, ptr noundef %acc, i32 noundef %bs_mat_rows, i32 noundef %bs_mat_cols, i32 noundef %mat_rows, i32 noundef %triangular) unnamed_addr #0 !dbg !1938 {
entry:
    #dbg_value(i32 %m_vec_limbs, !1939, !DIExpression(), !1940)
    #dbg_value(ptr %bs_mat, !1941, !DIExpression(), !1940)
    #dbg_value(ptr %mat, !1942, !DIExpression(), !1940)
    #dbg_value(ptr %acc, !1943, !DIExpression(), !1940)
    #dbg_value(i32 %bs_mat_rows, !1944, !DIExpression(), !1940)
    #dbg_value(i32 %bs_mat_cols, !1945, !DIExpression(), !1940)
    #dbg_value(i32 %mat_rows, !1946, !DIExpression(), !1940)
    #dbg_value(i32 %triangular, !1947, !DIExpression(), !1940)
    #dbg_value(i32 0, !1948, !DIExpression(), !1940)
    #dbg_value(i32 0, !1949, !DIExpression(), !1951)
  %smax = call i32 @llvm.smax.i32(i32 %mat_rows, i32 0), !dbg !1952
  %smax1 = call i32 @llvm.smax.i32(i32 %bs_mat_rows, i32 0), !dbg !1952
  br label %for.cond, !dbg !1952

for.cond:                                         ; preds = %for.inc17, %entry
  %bs_mat_entries_used.0 = phi i32 [ 0, %entry ], [ %bs_mat_entries_used.1.lcssa, %for.inc17 ], !dbg !1953
  %r.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ], !dbg !1954
    #dbg_value(i32 %r.0, !1949, !DIExpression(), !1951)
    #dbg_value(i32 %bs_mat_entries_used.0, !1948, !DIExpression(), !1940)
  %exitcond2 = icmp ne i32 %r.0, %smax1, !dbg !1955
  br i1 %exitcond2, label %for.body, label %for.end19, !dbg !1957

for.body:                                         ; preds = %for.cond
  %mul = mul nsw i32 %triangular, %r.0, !dbg !1958
    #dbg_value(i32 %mul, !1961, !DIExpression(), !1962)
  br label %for.cond1, !dbg !1963

for.cond1:                                        ; preds = %for.inc15, %for.body
  %bs_mat_entries_used.1 = phi i32 [ %bs_mat_entries_used.0, %for.body ], [ %add14, %for.inc15 ], !dbg !1940
  %c.0 = phi i32 [ %mul, %for.body ], [ %inc, %for.inc15 ], !dbg !1964
    #dbg_value(i32 %c.0, !1961, !DIExpression(), !1962)
    #dbg_value(i32 %bs_mat_entries_used.1, !1948, !DIExpression(), !1940)
  %cmp2 = icmp slt i32 %c.0, %bs_mat_cols, !dbg !1965
  br i1 %cmp2, label %for.cond4.preheader, label %for.inc17, !dbg !1967

for.cond4.preheader:                              ; preds = %for.cond1
  br label %for.cond4, !dbg !1968

for.cond4:                                        ; preds = %for.cond4.preheader, %for.body6
  %k.0 = phi i32 [ %add13, %for.body6 ], [ 0, %for.cond4.preheader ], !dbg !1971
    #dbg_value(i32 %k.0, !1972, !DIExpression(), !1973)
  %exitcond = icmp ne i32 %k.0, %smax, !dbg !1974
  br i1 %exitcond, label %for.body6, label %for.inc15, !dbg !1968

for.body6:                                        ; preds = %for.cond4
  %mul7 = mul nsw i32 %m_vec_limbs, %bs_mat_entries_used.1, !dbg !1976
  %add.ptr = getelementptr inbounds i64, ptr %bs_mat, i32 %mul7, !dbg !1978
  %mul8 = mul nsw i32 %k.0, %bs_mat_cols, !dbg !1979
  %0 = getelementptr i8, ptr %mat, i32 %mul8, !dbg !1980
  %arrayidx = getelementptr i8, ptr %0, i32 %c.0, !dbg !1980
  %1 = load i8, ptr %arrayidx, align 1, !dbg !1980
  %mul9 = mul nsw i32 %r.0, %mat_rows, !dbg !1981
  %add10 = add nsw i32 %mul9, %k.0, !dbg !1982
  %mul11 = mul nsw i32 %m_vec_limbs, %add10, !dbg !1983
  %add.ptr12 = getelementptr inbounds i64, ptr %acc, i32 %mul11, !dbg !1984
  call fastcc void @m_vec_mul_add(i32 noundef %m_vec_limbs, ptr noundef %add.ptr, i8 noundef zeroext %1, ptr noundef %add.ptr12) #6, !dbg !1985
  %add13 = add nuw i32 %k.0, 1, !dbg !1986
    #dbg_value(i32 %add13, !1972, !DIExpression(), !1973)
  br label %for.cond4, !dbg !1987, !llvm.loop !1988

for.inc15:                                        ; preds = %for.cond4
    #dbg_value(i32 %bs_mat_entries_used.1, !1948, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1940)
  %add14 = add nsw i32 %bs_mat_entries_used.1, 1, !dbg !1990
    #dbg_value(i32 %add14, !1948, !DIExpression(), !1940)
  %inc = add nsw i32 %c.0, 1, !dbg !1991
    #dbg_value(i32 %inc, !1961, !DIExpression(), !1962)
  br label %for.cond1, !dbg !1992, !llvm.loop !1993

for.inc17:                                        ; preds = %for.cond1
  %bs_mat_entries_used.1.lcssa = phi i32 [ %bs_mat_entries_used.1, %for.cond1 ], !dbg !1940
  %inc18 = add nuw i32 %r.0, 1, !dbg !1995
    #dbg_value(i32 %inc18, !1949, !DIExpression(), !1951)
  br label %for.cond, !dbg !1996, !llvm.loop !1997

for.end19:                                        ; preds = %for.cond
  ret void, !dbg !1999
}

; Function Attrs: nounwind
define dso_local i32 @pqmayo_MAYO_5_ref_mayo_sign(ptr noundef %p, ptr noundef %sm, ptr noundef %smlen, ptr noundef %m, i32 noundef %mlen, ptr noundef %csk) local_unnamed_addr #0 !dbg !2000 {
entry:
  %siglen = alloca i32, align 4
    #dbg_value(ptr %p, !2001, !DIExpression(), !2002)
    #dbg_value(ptr %sm, !2003, !DIExpression(), !2002)
    #dbg_value(ptr %smlen, !2004, !DIExpression(), !2002)
    #dbg_value(ptr %m, !2005, !DIExpression(), !2002)
    #dbg_value(i32 %mlen, !2006, !DIExpression(), !2002)
    #dbg_value(ptr %csk, !2007, !DIExpression(), !2002)
    #dbg_value(i32 0, !2008, !DIExpression(), !2002)
    #dbg_value(i32 964, !2009, !DIExpression(), !2002)
  %add.ptr = getelementptr inbounds nuw i8, ptr %sm, i32 964, !dbg !2010
  %call = call ptr @memmove(ptr noundef nonnull %add.ptr, ptr noundef %m, i32 noundef %mlen) #8, !dbg !2011
  %add.ptr1 = getelementptr inbounds nuw i8, ptr %sm, i32 964, !dbg !2012
    #dbg_value(ptr %siglen, !2013, !DIExpression(DW_OP_deref), !2002)
  %call2 = call i32 @pqmayo_MAYO_5_ref_mayo_sign_signature(ptr noundef %p, ptr noundef %sm, ptr noundef nonnull %siglen, ptr noundef nonnull %add.ptr1, i32 noundef %mlen, ptr noundef %csk) #6, !dbg !2014
    #dbg_value(i32 %call2, !2008, !DIExpression(), !2002)
  %cmp.not = icmp eq i32 %call2, 0, !dbg !2015
  %0 = load i32, ptr %siglen, align 4
    #dbg_value(i32 %0, !2013, !DIExpression(), !2002)
  %cmp3.not = icmp eq i32 %0, 964
  %or.cond = select i1 %cmp.not, i1 %cmp3.not, i1 false, !dbg !2017
  br i1 %or.cond, label %if.end, label %if.then, !dbg !2017

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %siglen, align 4, !dbg !2018
    #dbg_value(i32 %1, !2013, !DIExpression(), !2002)
  %add = add i32 %1, %mlen, !dbg !2020
  %call4 = call ptr @memset(ptr noundef %sm, i32 noundef 0, i32 noundef %add) #8, !dbg !2021
  br label %err, !dbg !2022

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %siglen, align 4, !dbg !2023
    #dbg_value(i32 %2, !2013, !DIExpression(), !2002)
  %add5 = add i32 %2, %mlen, !dbg !2024
  store i32 %add5, ptr %smlen, align 4, !dbg !2025
  br label %err, !dbg !2026

err:                                              ; preds = %if.end, %if.then
    #dbg_label(!2027, !2028)
  ret i32 %call2, !dbg !2029
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_5_ref_mayo_open(ptr noundef %p, ptr noundef %m, ptr noundef %mlen, ptr noundef %sm, i32 noundef %smlen, ptr noundef %pk) local_unnamed_addr #0 !dbg !2030 {
entry:
    #dbg_value(ptr %p, !2031, !DIExpression(), !2032)
    #dbg_value(ptr %m, !2033, !DIExpression(), !2032)
    #dbg_value(ptr %mlen, !2034, !DIExpression(), !2032)
    #dbg_value(ptr %sm, !2035, !DIExpression(), !2032)
    #dbg_value(i32 %smlen, !2036, !DIExpression(), !2032)
    #dbg_value(ptr %pk, !2037, !DIExpression(), !2032)
    #dbg_value(i32 964, !2038, !DIExpression(), !2032)
  %cmp = icmp ult i32 %smlen, 964, !dbg !2039
  br i1 %cmp, label %return, label %if.end, !dbg !2039

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr inbounds nuw i8, ptr %sm, i32 964, !dbg !2041
  %sub = add i32 %smlen, -964, !dbg !2042
  %call = call i32 @pqmayo_MAYO_5_ref_mayo_verify(ptr noundef %p, ptr noundef nonnull %add.ptr, i32 noundef %sub, ptr noundef %sm, ptr noundef %pk) #6, !dbg !2043
    #dbg_value(i32 %call, !2044, !DIExpression(), !2032)
  %cmp1 = icmp eq i32 %call, 0, !dbg !2045
  br i1 %cmp1, label %if.then2, label %return, !dbg !2045

if.then2:                                         ; preds = %if.end
  %sub3 = add i32 %smlen, -964, !dbg !2047
  store i32 %sub3, ptr %mlen, align 4, !dbg !2049
  %add.ptr4 = getelementptr inbounds nuw i8, ptr %sm, i32 964, !dbg !2050
  %call5 = call ptr @memmove(ptr noundef %m, ptr noundef nonnull %add.ptr4, i32 noundef %sub3) #8, !dbg !2051
  br label %return, !dbg !2052

return:                                           ; preds = %if.end, %if.then2, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ 0, %if.then2 ], [ 1, %if.end ], !dbg !2032
  ret i32 %retval.0, !dbg !2053
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_5_ref_mayo_verify(ptr noundef %p, ptr noundef %m, i32 noundef %mlen, ptr noundef %sig, ptr noundef %cpk) local_unnamed_addr #0 !dbg !2054 {
entry:
  %tEnc = alloca [71 x i8], align 1
  %t = alloca [142 x i8], align 1
  %y = alloca [284 x i8], align 1
  %s = alloca [1848 x i8], align 1
  %pk = alloca [107415 x i64], align 8
  %tmp = alloca [104 x i8], align 1
    #dbg_value(ptr %p, !2057, !DIExpression(), !2058)
    #dbg_value(ptr %m, !2059, !DIExpression(), !2058)
    #dbg_value(i32 %mlen, !2060, !DIExpression(), !2058)
    #dbg_value(ptr %sig, !2061, !DIExpression(), !2058)
    #dbg_value(ptr %cpk, !2062, !DIExpression(), !2058)
    #dbg_declare(ptr %tEnc, !2063, !DIExpression(), !2064)
    #dbg_declare(ptr %t, !2065, !DIExpression(), !2066)
    #dbg_declare(ptr %y, !2067, !DIExpression(), !2071)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(284) %y, i8 0, i32 284, i1 false), !dbg !2071
    #dbg_declare(ptr %s, !2072, !DIExpression(), !2073)
    #dbg_declare(ptr %pk, !2074, !DIExpression(), !2078)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(859320) %pk, i8 0, i32 859320, i1 false), !dbg !2078
    #dbg_declare(ptr %tmp, !2079, !DIExpression(), !2083)
    #dbg_value(i32 142, !2084, !DIExpression(), !2058)
    #dbg_value(i32 154, !2085, !DIExpression(), !2058)
    #dbg_value(i32 12, !2086, !DIExpression(), !2058)
    #dbg_value(i32 71, !2087, !DIExpression(), !2058)
    #dbg_value(i32 964, !2088, !DIExpression(), !2058)
    #dbg_value(i32 64, !2089, !DIExpression(), !2058)
    #dbg_value(i32 40, !2090, !DIExpression(), !2058)
  %call = call i32 @pqmayo_MAYO_5_ref_mayo_expand_pk(ptr noundef %p, ptr noundef %cpk, ptr noundef nonnull %pk) #6, !dbg !2091
    #dbg_value(i32 %call, !2092, !DIExpression(), !2058)
  %cmp.not = icmp eq i32 %call, 0, !dbg !2093
  br i1 %cmp.not, label %if.end, label %return, !dbg !2093

if.end:                                           ; preds = %entry
    #dbg_value(ptr %pk, !2095, !DIExpression(), !2058)
  %add.ptr = getelementptr inbounds nuw i8, ptr %pk, i32 731016, !dbg !2096
    #dbg_value(ptr %add.ptr, !2097, !DIExpression(), !2058)
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %pk, i32 853704, !dbg !2098
    #dbg_value(ptr %add.ptr2, !2099, !DIExpression(), !2058)
  %call4 = call i32 @shake256(ptr noundef nonnull %tmp, i32 noundef 64, ptr noundef %m, i32 noundef %mlen) #8, !dbg !2100
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %tmp, i32 64, !dbg !2101
  %add.ptr8 = getelementptr inbounds nuw i8, ptr %sig, i32 924, !dbg !2102
  %call9 = call ptr @memcpy(ptr noundef nonnull %add.ptr6, ptr noundef nonnull %add.ptr8, i32 noundef 40) #8, !dbg !2103
  %call12 = call i32 @shake256(ptr noundef nonnull %tEnc, i32 noundef 71, ptr noundef nonnull %tmp, i32 noundef 104) #8, !dbg !2104
  call fastcc void @decode(ptr noundef nonnull %tEnc, ptr noundef nonnull %t, i32 noundef 142) #6, !dbg !2105
  call fastcc void @decode(ptr noundef %sig, ptr noundef nonnull %s, i32 noundef 1848) #6, !dbg !2106
  call fastcc void @eval_public_map(ptr noundef %p, ptr noundef nonnull %s, ptr noundef nonnull %pk, ptr noundef nonnull %add.ptr, ptr noundef nonnull %add.ptr2, ptr noundef nonnull %y) #6, !dbg !2107
  %call20 = call i32 @memcmp(ptr noundef nonnull %y, ptr noundef nonnull %t, i32 noundef 142) #8, !dbg !2108
  %cmp21 = icmp ne i32 %call20, 0, !dbg !2110
  %. = zext i1 %cmp21 to i32, !dbg !2058
  br label %return, !dbg !2058

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ %., %if.end ], !dbg !2058
  ret i32 %retval.0, !dbg !2111
}

; Function Attrs: nounwind
define dso_local i32 @pqmayo_MAYO_5_ref_mayo_expand_pk(ptr noundef %p, ptr noundef %cpk, ptr noundef %pk) local_unnamed_addr #0 !dbg !2112 {
entry:
    #dbg_value(ptr %p, !2115, !DIExpression(), !2116)
    #dbg_value(ptr %cpk, !2117, !DIExpression(), !2116)
    #dbg_value(ptr %pk, !2118, !DIExpression(), !2116)
  call fastcc void @expand_P1_P2(ptr noundef %p, ptr noundef %pk, ptr noundef %cpk) #6, !dbg !2119
  %add.ptr = getelementptr inbounds nuw i8, ptr %cpk, i32 16, !dbg !2120
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %pk, i32 853704, !dbg !2121
  call fastcc void @unpack_m_vecs(ptr noundef nonnull %add.ptr, ptr noundef nonnull %add.ptr2, i32 noundef 78, i32 noundef 142) #6, !dbg !2122
  ret i32 0, !dbg !2123
}

; Function Attrs: nounwind
define internal fastcc void @eval_public_map(ptr noundef %p, ptr noundef %s, ptr noundef %P1, ptr noundef %P2, ptr noundef %P3, ptr noundef %eval) unnamed_addr #0 !dbg !2124 {
entry:
  %SPS = alloca [1296 x i64], align 8
  %zero = alloca [142 x i8], align 1
    #dbg_value(ptr %p, !2127, !DIExpression(), !2128)
    #dbg_value(ptr %s, !2129, !DIExpression(), !2128)
    #dbg_value(ptr %P1, !2130, !DIExpression(), !2128)
    #dbg_value(ptr %P2, !2131, !DIExpression(), !2128)
    #dbg_value(ptr %P3, !2132, !DIExpression(), !2128)
    #dbg_value(ptr %eval, !2133, !DIExpression(), !2128)
    #dbg_declare(ptr %SPS, !2134, !DIExpression(), !2135)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(10368) %SPS, i8 0, i32 10368, i1 false), !dbg !2135
  call fastcc void @m_calculate_PS_SPS(ptr noundef %p, ptr noundef %P1, ptr noundef %P2, ptr noundef %P3, ptr noundef %s, ptr noundef nonnull %SPS) #6, !dbg !2136
    #dbg_declare(ptr %zero, !2137, !DIExpression(), !2138)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(142) %zero, i8 0, i32 142, i1 false), !dbg !2138
  call fastcc void @compute_rhs(ptr noundef %p, ptr noundef nonnull %SPS, ptr noundef nonnull %zero, ptr noundef %eval) #6, !dbg !2139
  ret void, !dbg !2140
}

; Function Attrs: nounwind
define internal fastcc void @m_calculate_PS_SPS(ptr noundef %p, ptr noundef %P1, ptr noundef %P2, ptr noundef %P3, ptr noundef %s, ptr noundef %SPS) unnamed_addr #0 !dbg !2141 {
entry:
  %PS = alloca [16632 x i64], align 8
    #dbg_value(ptr %p, !2144, !DIExpression(), !2145)
    #dbg_value(ptr %P1, !2146, !DIExpression(), !2145)
    #dbg_value(ptr %P2, !2147, !DIExpression(), !2145)
    #dbg_value(ptr %P3, !2148, !DIExpression(), !2145)
    #dbg_value(ptr %s, !2149, !DIExpression(), !2145)
    #dbg_value(ptr %SPS, !2150, !DIExpression(), !2145)
    #dbg_declare(ptr %PS, !2151, !DIExpression(), !2155)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(133056) %PS, i8 0, i32 133056, i1 false), !dbg !2155
  call fastcc void @mayo_generic_m_calculate_PS(ptr noundef %P1, ptr noundef %P2, ptr noundef %P3, ptr noundef %s, i32 noundef 142, i32 noundef 142, i32 noundef 12, i32 noundef 12, ptr noundef nonnull %PS) #6, !dbg !2156
  call fastcc void @mayo_generic_m_calculate_SPS(ptr noundef nonnull %PS, ptr noundef %s, i32 noundef 142, i32 noundef 12, i32 noundef 154, ptr noundef %SPS) #6, !dbg !2157
  ret void, !dbg !2158
}

; Function Attrs: nounwind
define internal fastcc void @mayo_generic_m_calculate_PS(ptr noundef %P1, ptr noundef %P2, ptr noundef %P3, ptr noundef %S, i32 noundef %m, i32 noundef %v, i32 noundef %o, i32 noundef %k, ptr noundef %PS) unnamed_addr #0 !dbg !2159 {
entry:
  %accumulator = alloca [266112 x i64], align 8
    #dbg_value(ptr %P1, !2162, !DIExpression(), !2163)
    #dbg_value(ptr %P2, !2164, !DIExpression(), !2163)
    #dbg_value(ptr %P3, !2165, !DIExpression(), !2163)
    #dbg_value(ptr %S, !2166, !DIExpression(), !2163)
    #dbg_value(i32 %m, !2167, !DIExpression(), !2163)
    #dbg_value(i32 %v, !2168, !DIExpression(), !2163)
    #dbg_value(i32 %o, !2169, !DIExpression(), !2163)
    #dbg_value(i32 %k, !2170, !DIExpression(), !2163)
    #dbg_value(ptr %PS, !2171, !DIExpression(), !2163)
  %add = add i32 %o, %v, !dbg !2172
    #dbg_value(i32 %add, !2173, !DIExpression(), !2163)
  %add1 = add nsw i32 %m, 15, !dbg !2174
  %div = sdiv i32 %add1, 16, !dbg !2175
    #dbg_value(i32 %div, !2176, !DIExpression(), !2163)
    #dbg_declare(ptr %accumulator, !2177, !DIExpression(), !2181)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(2128896) %accumulator, i8 0, i32 2128896, i1 false), !dbg !2181
    #dbg_value(i32 0, !2182, !DIExpression(), !2163)
    #dbg_value(i32 0, !2183, !DIExpression(), !2185)
  %smax = call i32 @llvm.smax.i32(i32 %k, i32 0), !dbg !2186
  %smax3 = call i32 @llvm.smax.i32(i32 %o, i32 0), !dbg !2186
  %smax5 = call i32 @llvm.smax.i32(i32 %v, i32 0), !dbg !2186
  br label %for.cond, !dbg !2186

for.cond:                                         ; preds = %for.inc52, %entry
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc52 ], [ %v, %entry ], !dbg !2187
  %P1_used.0 = phi i32 [ 0, %entry ], [ %P1_used.1.lcssa, %for.inc52 ], !dbg !2187
  %row.0 = phi i32 [ 0, %entry ], [ %inc53, %for.inc52 ], !dbg !2188
    #dbg_value(i32 %row.0, !2183, !DIExpression(), !2185)
    #dbg_value(i32 %P1_used.0, !2182, !DIExpression(), !2163)
  %exitcond6 = icmp ne i32 %row.0, %smax5, !dbg !2189
  br i1 %exitcond6, label %for.cond2.preheader, label %for.cond56.preheader, !dbg !2191

for.cond2.preheader:                              ; preds = %for.cond
  %0 = add i32 %P1_used.0, %indvars.iv, !dbg !2192
  br label %for.cond2, !dbg !2192

for.cond56.preheader:                             ; preds = %for.cond
  %smax8 = call i32 @llvm.smax.i32(i32 %v, i32 %add), !dbg !2195
  br label %for.cond56, !dbg !2195

for.cond2:                                        ; preds = %for.cond2.preheader, %for.inc17
  %P1_used.1 = phi i32 [ %inc16, %for.inc17 ], [ %P1_used.0, %for.cond2.preheader ], !dbg !2163
  %j.0 = phi i32 [ %inc18, %for.inc17 ], [ %row.0, %for.cond2.preheader ], !dbg !2197
    #dbg_value(i32 %j.0, !2198, !DIExpression(), !2199)
    #dbg_value(i32 %P1_used.1, !2182, !DIExpression(), !2163)
  %exitcond1 = icmp ne i32 %P1_used.1, %0, !dbg !2200
  br i1 %exitcond1, label %for.cond5.preheader, label %for.cond21.preheader, !dbg !2192

for.cond21.preheader:                             ; preds = %for.cond2
  %P1_used.1.lcssa = phi i32 [ %P1_used.1, %for.cond2 ], !dbg !2163
  br label %for.cond21, !dbg !2202

for.cond5.preheader:                              ; preds = %for.cond2
  br label %for.cond5, !dbg !2204

for.cond5:                                        ; preds = %for.cond5.preheader, %for.body7
  %col.0 = phi i32 [ %inc, %for.body7 ], [ 0, %for.cond5.preheader ], !dbg !2207
    #dbg_value(i32 %col.0, !2208, !DIExpression(), !2209)
  %exitcond = icmp ne i32 %col.0, %smax, !dbg !2210
  br i1 %exitcond, label %for.body7, label %for.inc17, !dbg !2204

for.body7:                                        ; preds = %for.cond5
  %mul = mul nsw i32 %P1_used.1, %div, !dbg !2212
  %add.ptr = getelementptr inbounds i64, ptr %P1, i32 %mul, !dbg !2214
  %mul8 = mul nsw i32 %row.0, %k, !dbg !2215
  %add9 = add nsw i32 %mul8, %col.0, !dbg !2216
  %mul10 = shl nsw i32 %add9, 4, !dbg !2217
  %mul11 = mul nsw i32 %col.0, %add, !dbg !2218
  %1 = getelementptr i8, ptr %S, i32 %mul11, !dbg !2219
  %arrayidx = getelementptr i8, ptr %1, i32 %j.0, !dbg !2219
  %2 = load i8, ptr %arrayidx, align 1, !dbg !2219
  %conv = zext i8 %2 to i32, !dbg !2219
  %add13 = add nsw i32 %mul10, %conv, !dbg !2220
  %mul14 = mul nsw i32 %add13, %div, !dbg !2221
  %add.ptr15 = getelementptr inbounds i64, ptr %accumulator, i32 %mul14, !dbg !2222
  call fastcc void @m_vec_add(i32 noundef %div, ptr noundef %add.ptr, ptr noundef nonnull %add.ptr15) #6, !dbg !2223
  %inc = add nuw i32 %col.0, 1, !dbg !2224
    #dbg_value(i32 %inc, !2208, !DIExpression(), !2209)
  br label %for.cond5, !dbg !2225, !llvm.loop !2226

for.inc17:                                        ; preds = %for.cond5
    #dbg_value(i32 %P1_used.1, !2182, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2163)
  %inc16 = add i32 %P1_used.1, 1, !dbg !2228
    #dbg_value(i32 %inc16, !2182, !DIExpression(), !2163)
  %inc18 = add nuw nsw i32 %j.0, 1, !dbg !2229
    #dbg_value(i32 %inc18, !2198, !DIExpression(), !2199)
  br label %for.cond2, !dbg !2230, !llvm.loop !2231

for.cond21:                                       ; preds = %for.cond21.preheader, %for.inc49
  %j20.0 = phi i32 [ %inc50, %for.inc49 ], [ 0, %for.cond21.preheader ], !dbg !2233
    #dbg_value(i32 %j20.0, !2234, !DIExpression(), !2235)
  %exitcond4 = icmp ne i32 %j20.0, %smax3, !dbg !2236
  br i1 %exitcond4, label %for.cond26.preheader, label %for.inc52, !dbg !2202

for.cond26.preheader:                             ; preds = %for.cond21
  br label %for.cond26, !dbg !2238

for.cond26:                                       ; preds = %for.cond26.preheader, %for.body29
  %col25.0 = phi i32 [ %inc47, %for.body29 ], [ 0, %for.cond26.preheader ], !dbg !2241
    #dbg_value(i32 %col25.0, !2242, !DIExpression(), !2243)
  %exitcond2 = icmp ne i32 %col25.0, %smax, !dbg !2244
  br i1 %exitcond2, label %for.body29, label %for.inc49, !dbg !2238

for.body29:                                       ; preds = %for.cond26
  %mul30 = mul nsw i32 %row.0, %o, !dbg !2246
  %add31 = add nsw i32 %mul30, %j20.0, !dbg !2248
  %mul32 = mul nsw i32 %add31, %div, !dbg !2249
  %add.ptr33 = getelementptr inbounds i64, ptr %P2, i32 %mul32, !dbg !2250
  %mul35 = mul nsw i32 %row.0, %k, !dbg !2251
  %add36 = add nsw i32 %mul35, %col25.0, !dbg !2252
  %mul37 = shl nsw i32 %add36, 4, !dbg !2253
  %mul38 = mul nsw i32 %col25.0, %add, !dbg !2254
  %3 = getelementptr i8, ptr %S, i32 %mul38, !dbg !2255
  %4 = getelementptr i8, ptr %3, i32 %j20.0, !dbg !2255
  %arrayidx41 = getelementptr i8, ptr %4, i32 %v, !dbg !2255
  %5 = load i8, ptr %arrayidx41, align 1, !dbg !2255
  %conv42 = zext i8 %5 to i32, !dbg !2255
  %add43 = add nsw i32 %mul37, %conv42, !dbg !2256
  %mul44 = mul nsw i32 %add43, %div, !dbg !2257
  %add.ptr45 = getelementptr inbounds i64, ptr %accumulator, i32 %mul44, !dbg !2258
  call fastcc void @m_vec_add(i32 noundef %div, ptr noundef %add.ptr33, ptr noundef nonnull %add.ptr45) #6, !dbg !2259
  %inc47 = add nuw i32 %col25.0, 1, !dbg !2260
    #dbg_value(i32 %inc47, !2242, !DIExpression(), !2243)
  br label %for.cond26, !dbg !2261, !llvm.loop !2262

for.inc49:                                        ; preds = %for.cond26
  %inc50 = add nuw i32 %j20.0, 1, !dbg !2264
    #dbg_value(i32 %inc50, !2234, !DIExpression(), !2235)
  br label %for.cond21, !dbg !2265, !llvm.loop !2266

for.inc52:                                        ; preds = %for.cond21
  %inc53 = add nuw i32 %row.0, 1, !dbg !2268
    #dbg_value(i32 %inc53, !2183, !DIExpression(), !2185)
  %indvars.iv.next = add i32 %indvars.iv, -1, !dbg !2269
  br label %for.cond, !dbg !2269, !llvm.loop !2270

for.cond56:                                       ; preds = %for.cond56.preheader, %for.inc90
  %P3_used.0 = phi i32 [ %P3_used.1.lcssa, %for.inc90 ], [ 0, %for.cond56.preheader ], !dbg !2272
  %row55.0 = phi i32 [ %inc91, %for.inc90 ], [ %v, %for.cond56.preheader ], !dbg !2273
    #dbg_value(i32 %row55.0, !2274, !DIExpression(), !2275)
    #dbg_value(i32 %P3_used.0, !2276, !DIExpression(), !2163)
  %exitcond9 = icmp ne i32 %row55.0, %smax8, !dbg !2277
  br i1 %exitcond9, label %for.cond61.preheader, label %while.cond.preheader, !dbg !2195

for.cond61.preheader:                             ; preds = %for.cond56
  br label %for.cond61, !dbg !2279

while.cond.preheader:                             ; preds = %for.cond56
  %6 = mul i32 %k, %add, !dbg !2282
  %smax10 = call i32 @llvm.smax.i32(i32 %6, i32 0), !dbg !2282
  br label %while.cond, !dbg !2282

for.cond61:                                       ; preds = %for.cond61.preheader, %for.inc87
  %P3_used.1 = phi i32 [ %inc86, %for.inc87 ], [ %P3_used.0, %for.cond61.preheader ], !dbg !2163
  %j60.0 = phi i32 [ %inc88, %for.inc87 ], [ %row55.0, %for.cond61.preheader ], !dbg !2283
    #dbg_value(i32 %j60.0, !2284, !DIExpression(), !2285)
    #dbg_value(i32 %P3_used.1, !2276, !DIExpression(), !2163)
  %cmp62 = icmp slt i32 %j60.0, %add, !dbg !2286
  br i1 %cmp62, label %for.cond66.preheader, label %for.inc90, !dbg !2279

for.cond66.preheader:                             ; preds = %for.cond61
  br label %for.cond66, !dbg !2288

for.cond66:                                       ; preds = %for.cond66.preheader, %for.body69
  %col65.0 = phi i32 [ %inc84, %for.body69 ], [ 0, %for.cond66.preheader ], !dbg !2291
    #dbg_value(i32 %col65.0, !2292, !DIExpression(), !2293)
  %exitcond7 = icmp ne i32 %col65.0, %smax, !dbg !2294
  br i1 %exitcond7, label %for.body69, label %for.inc87, !dbg !2288

for.body69:                                       ; preds = %for.cond66
  %mul70 = mul nsw i32 %P3_used.1, %div, !dbg !2296
  %add.ptr71 = getelementptr inbounds i64, ptr %P3, i32 %mul70, !dbg !2298
  %mul73 = mul nsw i32 %row55.0, %k, !dbg !2299
  %add74 = add nsw i32 %mul73, %col65.0, !dbg !2300
  %mul75 = shl nsw i32 %add74, 4, !dbg !2301
  %mul76 = mul nsw i32 %col65.0, %add, !dbg !2302
  %7 = getelementptr i8, ptr %S, i32 %mul76, !dbg !2303
  %arrayidx78 = getelementptr i8, ptr %7, i32 %j60.0, !dbg !2303
  %8 = load i8, ptr %arrayidx78, align 1, !dbg !2303
  %conv79 = zext i8 %8 to i32, !dbg !2303
  %add80 = add nsw i32 %mul75, %conv79, !dbg !2304
  %mul81 = mul nsw i32 %add80, %div, !dbg !2305
  %add.ptr82 = getelementptr inbounds i64, ptr %accumulator, i32 %mul81, !dbg !2306
  call fastcc void @m_vec_add(i32 noundef %div, ptr noundef %add.ptr71, ptr noundef nonnull %add.ptr82) #6, !dbg !2307
  %inc84 = add nuw i32 %col65.0, 1, !dbg !2308
    #dbg_value(i32 %inc84, !2292, !DIExpression(), !2293)
  br label %for.cond66, !dbg !2309, !llvm.loop !2310

for.inc87:                                        ; preds = %for.cond66
    #dbg_value(i32 %P3_used.1, !2276, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2163)
  %inc86 = add nsw i32 %P3_used.1, 1, !dbg !2312
    #dbg_value(i32 %inc86, !2276, !DIExpression(), !2163)
  %inc88 = add nsw i32 %j60.0, 1, !dbg !2313
    #dbg_value(i32 %inc88, !2284, !DIExpression(), !2285)
  br label %for.cond61, !dbg !2314, !llvm.loop !2315

for.inc90:                                        ; preds = %for.cond61
  %P3_used.1.lcssa = phi i32 [ %P3_used.1, %for.cond61 ], !dbg !2163
  %inc91 = add i32 %row55.0, 1, !dbg !2317
    #dbg_value(i32 %inc91, !2274, !DIExpression(), !2275)
  br label %for.cond56, !dbg !2318, !llvm.loop !2319

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %i.0 = phi i32 [ %inc102, %while.body ], [ 0, %while.cond.preheader ], !dbg !2163
    #dbg_value(i32 %i.0, !2321, !DIExpression(), !2163)
  %exitcond11 = icmp ne i32 %i.0, %smax10, !dbg !2322
  br i1 %exitcond11, label %while.body, label %while.end, !dbg !2282

while.body:                                       ; preds = %while.cond
  %mul97 = shl nsw i32 %i.0, 4, !dbg !2323
  %mul98 = mul nsw i32 %mul97, %div, !dbg !2325
  %add.ptr99 = getelementptr inbounds i64, ptr %accumulator, i32 %mul98, !dbg !2326
  %mul100 = mul nsw i32 %i.0, %div, !dbg !2327
  %add.ptr101 = getelementptr inbounds i64, ptr %PS, i32 %mul100, !dbg !2328
  call fastcc void @m_vec_multiply_bins(i32 noundef %div, ptr noundef nonnull %add.ptr99, ptr noundef %add.ptr101) #6, !dbg !2329
  %inc102 = add nuw i32 %i.0, 1, !dbg !2330
    #dbg_value(i32 %inc102, !2321, !DIExpression(), !2163)
  br label %while.cond, !dbg !2282, !llvm.loop !2331

while.end:                                        ; preds = %while.cond
  ret void, !dbg !2333
}

; Function Attrs: nounwind
define internal fastcc void @mayo_generic_m_calculate_SPS(ptr noundef %PS, ptr noundef %S, i32 noundef %m, i32 noundef %k, i32 noundef %n, ptr noundef %SPS) unnamed_addr #0 !dbg !2334 {
entry:
  %accumulator = alloca [20736 x i64], align 8
    #dbg_value(ptr %PS, !2337, !DIExpression(), !2338)
    #dbg_value(ptr %S, !2339, !DIExpression(), !2338)
    #dbg_value(i32 %m, !2340, !DIExpression(), !2338)
    #dbg_value(i32 %k, !2341, !DIExpression(), !2338)
    #dbg_value(i32 %n, !2342, !DIExpression(), !2338)
    #dbg_value(ptr %SPS, !2343, !DIExpression(), !2338)
    #dbg_declare(ptr %accumulator, !2344, !DIExpression(), !2348)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(165888) %accumulator, i8 0, i32 165888, i1 false), !dbg !2348
  %add = add nsw i32 %m, 15, !dbg !2349
  %div = sdiv i32 %add, 16, !dbg !2350
    #dbg_value(i32 %div, !2351, !DIExpression(), !2338)
    #dbg_value(i32 0, !2352, !DIExpression(), !2354)
  %smax = call i32 @llvm.smax.i32(i32 %n, i32 0), !dbg !2355
  %smax2 = call i32 @llvm.smax.i32(i32 %k, i32 0), !dbg !2355
  br label %for.cond, !dbg !2355

for.cond:                                         ; preds = %for.inc20, %entry
  %row.0 = phi i32 [ 0, %entry ], [ %inc21, %for.inc20 ], !dbg !2356
    #dbg_value(i32 %row.0, !2352, !DIExpression(), !2354)
  %exitcond3 = icmp ne i32 %row.0, %smax2, !dbg !2357
  br i1 %exitcond3, label %for.cond1.preheader, label %while.cond.preheader, !dbg !2359

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !2360

while.cond.preheader:                             ; preds = %for.cond
  %0 = mul i32 %k, %k, !dbg !2363
  br label %while.cond, !dbg !2363

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc18
  %j.0 = phi i32 [ %inc, %for.inc18 ], [ 0, %for.cond1.preheader ], !dbg !2364
    #dbg_value(i32 %j.0, !2365, !DIExpression(), !2366)
  %exitcond1 = icmp ne i32 %j.0, %smax, !dbg !2367
  br i1 %exitcond1, label %for.cond4.preheader, label %for.inc20, !dbg !2360

for.cond4.preheader:                              ; preds = %for.cond1
  br label %for.cond4, !dbg !2369

for.cond4:                                        ; preds = %for.cond4.preheader, %for.body6
  %col.0 = phi i32 [ %add17, %for.body6 ], [ 0, %for.cond4.preheader ], !dbg !2372
    #dbg_value(i32 %col.0, !2373, !DIExpression(), !2374)
  %exitcond = icmp ne i32 %col.0, %k, !dbg !2375
  br i1 %exitcond, label %for.body6, label %for.inc18, !dbg !2369

for.body6:                                        ; preds = %for.cond4
  %mul = mul nsw i32 %j.0, %k, !dbg !2377
  %add7 = add nsw i32 %mul, %col.0, !dbg !2379
  %mul8 = mul nsw i32 %add7, %div, !dbg !2380
  %add.ptr = getelementptr inbounds i64, ptr %PS, i32 %mul8, !dbg !2381
  %mul9 = mul nsw i32 %row.0, %k, !dbg !2382
  %add10 = add nsw i32 %mul9, %col.0, !dbg !2383
  %mul11 = shl nsw i32 %add10, 4, !dbg !2384
  %mul12 = mul nsw i32 %row.0, %n, !dbg !2385
  %1 = getelementptr i8, ptr %S, i32 %mul12, !dbg !2386
  %arrayidx = getelementptr i8, ptr %1, i32 %j.0, !dbg !2386
  %2 = load i8, ptr %arrayidx, align 1, !dbg !2386
  %conv = zext i8 %2 to i32, !dbg !2386
  %add14 = add nsw i32 %mul11, %conv, !dbg !2387
  %mul15 = mul nsw i32 %add14, %div, !dbg !2388
  %add.ptr16 = getelementptr inbounds i64, ptr %accumulator, i32 %mul15, !dbg !2389
  call fastcc void @m_vec_add(i32 noundef %div, ptr noundef %add.ptr, ptr noundef nonnull %add.ptr16) #6, !dbg !2390
  %add17 = add nuw i32 %col.0, 1, !dbg !2391
    #dbg_value(i32 %add17, !2373, !DIExpression(), !2374)
  br label %for.cond4, !dbg !2392, !llvm.loop !2393

for.inc18:                                        ; preds = %for.cond4
  %inc = add nuw i32 %j.0, 1, !dbg !2395
    #dbg_value(i32 %inc, !2365, !DIExpression(), !2366)
  br label %for.cond1, !dbg !2396, !llvm.loop !2397

for.inc20:                                        ; preds = %for.cond1
  %inc21 = add nuw i32 %row.0, 1, !dbg !2399
    #dbg_value(i32 %inc21, !2352, !DIExpression(), !2354)
  br label %for.cond, !dbg !2400, !llvm.loop !2401

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %i.0 = phi i32 [ %inc32, %while.body ], [ 0, %while.cond.preheader ], !dbg !2338
    #dbg_value(i32 %i.0, !2403, !DIExpression(), !2338)
  %exitcond4 = icmp ne i32 %i.0, %0, !dbg !2404
  br i1 %exitcond4, label %while.body, label %while.end, !dbg !2363

while.body:                                       ; preds = %while.cond
  %mul27 = shl nsw i32 %i.0, 4, !dbg !2405
  %mul28 = mul nsw i32 %mul27, %div, !dbg !2407
  %add.ptr29 = getelementptr inbounds i64, ptr %accumulator, i32 %mul28, !dbg !2408
  %mul30 = mul nsw i32 %i.0, %div, !dbg !2409
  %add.ptr31 = getelementptr inbounds i64, ptr %SPS, i32 %mul30, !dbg !2410
  call fastcc void @m_vec_multiply_bins(i32 noundef %div, ptr noundef nonnull %add.ptr29, ptr noundef %add.ptr31) #6, !dbg !2411
  %inc32 = add nuw i32 %i.0, 1, !dbg !2412
    #dbg_value(i32 %inc32, !2403, !DIExpression(), !2338)
  br label %while.cond, !dbg !2363, !llvm.loop !2413

while.end:                                        ; preds = %while.cond
  ret void, !dbg !2415
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_add(i32 noundef %m_vec_limbs, ptr noundef %in, ptr noundef %acc) unnamed_addr #0 !dbg !2416 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2419, !DIExpression(), !2420)
    #dbg_value(ptr %in, !2421, !DIExpression(), !2420)
    #dbg_value(ptr %acc, !2422, !DIExpression(), !2420)
    #dbg_value(i32 0, !2423, !DIExpression(), !2425)
  br label %for.cond, !dbg !2426

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2427
    #dbg_value(i32 %i.0, !2423, !DIExpression(), !2425)
  %exitcond = icmp ne i32 %i.0, 9, !dbg !2428
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2430

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2431
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2431
  %arrayidx1 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !2433
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !2434
  %xor = xor i64 %1, %0, !dbg !2434
  store i64 %xor, ptr %arrayidx1, align 8, !dbg !2434
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2435
    #dbg_value(i32 %inc, !2423, !DIExpression(), !2425)
  br label %for.cond, !dbg !2436, !llvm.loop !2437

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2439
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_multiply_bins(i32 noundef %m_vec_limbs, ptr noundef %bins, ptr noundef %out) unnamed_addr #0 !dbg !2440 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2443, !DIExpression(), !2444)
    #dbg_value(ptr %bins, !2445, !DIExpression(), !2444)
    #dbg_value(ptr %out, !2446, !DIExpression(), !2444)
  %add.ptr = getelementptr inbounds nuw i8, ptr %bins, i32 360, !dbg !2447
  %add.ptr1 = getelementptr inbounds nuw i8, ptr %bins, i32 720, !dbg !2448
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr, ptr noundef nonnull %add.ptr1) #6, !dbg !2449
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %bins, i32 792, !dbg !2450
  %add.ptr3 = getelementptr inbounds nuw i8, ptr %bins, i32 864, !dbg !2451
  call fastcc void @m_vec_mul_add_x(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr2, ptr noundef nonnull %add.ptr3) #6, !dbg !2452
  %add.ptr4 = getelementptr inbounds nuw i8, ptr %bins, i32 720, !dbg !2453
  %add.ptr5 = getelementptr inbounds nuw i8, ptr %bins, i32 504, !dbg !2454
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr4, ptr noundef nonnull %add.ptr5) #6, !dbg !2455
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %bins, i32 864, !dbg !2456
  %add.ptr7 = getelementptr inbounds nuw i8, ptr %bins, i32 432, !dbg !2457
  call fastcc void @m_vec_mul_add_x(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr6, ptr noundef nonnull %add.ptr7) #6, !dbg !2458
  %add.ptr8 = getelementptr inbounds nuw i8, ptr %bins, i32 504, !dbg !2459
  %add.ptr9 = getelementptr inbounds nuw i8, ptr %bins, i32 1008, !dbg !2460
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr8, ptr noundef nonnull %add.ptr9) #6, !dbg !2461
  %add.ptr10 = getelementptr inbounds nuw i8, ptr %bins, i32 432, !dbg !2462
  %add.ptr11 = getelementptr inbounds nuw i8, ptr %bins, i32 216, !dbg !2463
  call fastcc void @m_vec_mul_add_x(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr10, ptr noundef nonnull %add.ptr11) #6, !dbg !2464
  %add.ptr12 = getelementptr inbounds nuw i8, ptr %bins, i32 1008, !dbg !2465
  %add.ptr13 = getelementptr inbounds nuw i8, ptr %bins, i32 1080, !dbg !2466
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr12, ptr noundef nonnull %add.ptr13) #6, !dbg !2467
  %add.ptr14 = getelementptr inbounds nuw i8, ptr %bins, i32 216, !dbg !2468
  %add.ptr15 = getelementptr inbounds nuw i8, ptr %bins, i32 576, !dbg !2469
  call fastcc void @m_vec_mul_add_x(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr14, ptr noundef nonnull %add.ptr15) #6, !dbg !2470
  %add.ptr16 = getelementptr inbounds nuw i8, ptr %bins, i32 1080, !dbg !2471
  %add.ptr17 = getelementptr inbounds nuw i8, ptr %bins, i32 936, !dbg !2472
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr16, ptr noundef nonnull %add.ptr17) #6, !dbg !2473
  %add.ptr18 = getelementptr inbounds nuw i8, ptr %bins, i32 576, !dbg !2474
  %add.ptr19 = getelementptr inbounds nuw i8, ptr %bins, i32 288, !dbg !2475
  call fastcc void @m_vec_mul_add_x(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr18, ptr noundef nonnull %add.ptr19) #6, !dbg !2476
  %add.ptr20 = getelementptr inbounds nuw i8, ptr %bins, i32 936, !dbg !2477
  %add.ptr21 = getelementptr inbounds nuw i8, ptr %bins, i32 648, !dbg !2478
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr20, ptr noundef nonnull %add.ptr21) #6, !dbg !2479
  %add.ptr22 = getelementptr inbounds nuw i8, ptr %bins, i32 288, !dbg !2480
  %add.ptr23 = getelementptr inbounds nuw i8, ptr %bins, i32 144, !dbg !2481
  call fastcc void @m_vec_mul_add_x(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr22, ptr noundef nonnull %add.ptr23) #6, !dbg !2482
  %add.ptr24 = getelementptr inbounds nuw i8, ptr %bins, i32 648, !dbg !2483
  %add.ptr25 = getelementptr inbounds nuw i8, ptr %bins, i32 72, !dbg !2484
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr24, ptr noundef nonnull %add.ptr25) #6, !dbg !2485
  %add.ptr26 = getelementptr inbounds nuw i8, ptr %bins, i32 144, !dbg !2486
  %add.ptr27 = getelementptr inbounds nuw i8, ptr %bins, i32 72, !dbg !2487
  call fastcc void @m_vec_mul_add_x(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr26, ptr noundef nonnull %add.ptr27) #6, !dbg !2488
  %add.ptr28 = getelementptr inbounds nuw i8, ptr %bins, i32 72, !dbg !2489
  call fastcc void @m_vec_copy(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr28, ptr noundef %out) #6, !dbg !2490
  ret void, !dbg !2491
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_mul_add_x_inv(i32 noundef %m_vec_limbs, ptr noundef %in, ptr noundef %acc) unnamed_addr #0 !dbg !2492 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2493, !DIExpression(), !2494)
    #dbg_value(ptr %in, !2495, !DIExpression(), !2494)
    #dbg_value(ptr %acc, !2496, !DIExpression(), !2494)
    #dbg_value(i64 1229782938247303441, !2497, !DIExpression(), !2494)
    #dbg_value(i32 0, !2498, !DIExpression(), !2500)
  br label %for.cond, !dbg !2501

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2502
    #dbg_value(i32 %i.0, !2498, !DIExpression(), !2500)
  %exitcond = icmp ne i32 %i.0, 9, !dbg !2503
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2505

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2506
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2506
  %and = and i64 %0, 1229782938247303441, !dbg !2508
    #dbg_value(i64 %and, !2509, !DIExpression(), !2510)
  %xor = lshr i64 %0, 1, !dbg !2511
  %shr = and i64 %xor, 8608480567731124087, !dbg !2511
  %mul = mul nuw i64 %and, 9, !dbg !2512
  %xor2 = xor i64 %shr, %mul, !dbg !2513
  %arrayidx3 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !2514
  %1 = load i64, ptr %arrayidx3, align 8, !dbg !2515
  %xor4 = xor i64 %1, %xor2, !dbg !2515
  store i64 %xor4, ptr %arrayidx3, align 8, !dbg !2515
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2516
    #dbg_value(i32 %inc, !2498, !DIExpression(), !2500)
  br label %for.cond, !dbg !2517, !llvm.loop !2518

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2520
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_mul_add_x(i32 noundef %m_vec_limbs, ptr noundef %in, ptr noundef %acc) unnamed_addr #0 !dbg !2521 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2522, !DIExpression(), !2523)
    #dbg_value(ptr %in, !2524, !DIExpression(), !2523)
    #dbg_value(ptr %acc, !2525, !DIExpression(), !2523)
    #dbg_value(i64 -8608480567731124088, !2526, !DIExpression(), !2523)
    #dbg_value(i32 0, !2527, !DIExpression(), !2529)
  br label %for.cond, !dbg !2530

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2531
    #dbg_value(i32 %i.0, !2527, !DIExpression(), !2529)
  %exitcond = icmp ne i32 %i.0, 9, !dbg !2532
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2534

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2535
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2535
    #dbg_value(i64 %0, !2537, !DIExpression(DW_OP_constu, 9838263505978427528, DW_OP_and, DW_OP_stack_value), !2538)
  %xor = shl i64 %0, 1, !dbg !2539
  %shl = and i64 %xor, -1229782938247303442, !dbg !2539
  %and = lshr i64 %0, 3, !dbg !2540
  %shr = and i64 %and, 1229782938247303441, !dbg !2540
  %mul = mul nuw nsw i64 %shr, 3, !dbg !2541
  %xor2 = xor i64 %shl, %mul, !dbg !2542
  %arrayidx3 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !2543
  %1 = load i64, ptr %arrayidx3, align 8, !dbg !2544
  %xor4 = xor i64 %1, %xor2, !dbg !2544
  store i64 %xor4, ptr %arrayidx3, align 8, !dbg !2544
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2545
    #dbg_value(i32 %inc, !2527, !DIExpression(), !2529)
  br label %for.cond, !dbg !2546, !llvm.loop !2547

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2549
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_copy(i32 noundef %m_vec_limbs, ptr noundef %in, ptr noundef %out) unnamed_addr #0 !dbg !2550 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2551, !DIExpression(), !2552)
    #dbg_value(ptr %in, !2553, !DIExpression(), !2552)
    #dbg_value(ptr %out, !2554, !DIExpression(), !2552)
    #dbg_value(i32 0, !2555, !DIExpression(), !2557)
  br label %for.cond, !dbg !2558

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2559
    #dbg_value(i32 %i.0, !2555, !DIExpression(), !2557)
  %exitcond = icmp ne i32 %i.0, 9, !dbg !2560
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2562

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2563
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2563
  %arrayidx1 = getelementptr inbounds nuw i64, ptr %out, i32 %i.0, !dbg !2565
  store i64 %0, ptr %arrayidx1, align 8, !dbg !2566
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2567
    #dbg_value(i32 %inc, !2555, !DIExpression(), !2557)
  br label %for.cond, !dbg !2568, !llvm.loop !2569

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2571
}

; Function Attrs: nounwind
define dso_local void @pqmayo_MAYO_5_ref_m_upper(ptr noundef %p, ptr noundef %in, ptr noundef %out, i32 noundef %size) local_unnamed_addr #0 !dbg !2572 {
entry:
    #dbg_value(ptr %p, !2603, !DIExpression(), !2604)
    #dbg_value(ptr %in, !2605, !DIExpression(), !2604)
    #dbg_value(ptr %out, !2606, !DIExpression(), !2604)
    #dbg_value(i32 %size, !2607, !DIExpression(), !2604)
    #dbg_value(i32 9, !2608, !DIExpression(), !2604)
    #dbg_value(i32 0, !2609, !DIExpression(), !2604)
    #dbg_value(i32 0, !2610, !DIExpression(), !2612)
  %smax = call i32 @llvm.smax.i32(i32 %size, i32 0), !dbg !2613
  br label %for.cond, !dbg !2613

for.cond:                                         ; preds = %for.inc15, %entry
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc15 ], [ %size, %entry ], !dbg !2614
  %m_vecs_stored.0 = phi i32 [ 0, %entry ], [ %m_vecs_stored.1.lcssa, %for.inc15 ], !dbg !2614
  %r.0 = phi i32 [ 0, %entry ], [ %inc16, %for.inc15 ], !dbg !2615
    #dbg_value(i32 %r.0, !2610, !DIExpression(), !2612)
    #dbg_value(i32 %m_vecs_stored.0, !2609, !DIExpression(), !2604)
  %exitcond1 = icmp ne i32 %r.0, %smax, !dbg !2616
  br i1 %exitcond1, label %for.cond1.preheader, label %for.end17, !dbg !2618

for.cond1.preheader:                              ; preds = %for.cond
  %0 = add i32 %m_vecs_stored.0, %indvars.iv, !dbg !2619
  br label %for.cond1, !dbg !2619

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc
  %m_vecs_stored.1 = phi i32 [ %inc, %for.inc ], [ %m_vecs_stored.0, %for.cond1.preheader ], !dbg !2604
  %c.0 = phi i32 [ %inc14, %for.inc ], [ %r.0, %for.cond1.preheader ], !dbg !2622
    #dbg_value(i32 %c.0, !2623, !DIExpression(), !2624)
    #dbg_value(i32 %m_vecs_stored.1, !2609, !DIExpression(), !2604)
  %exitcond = icmp ne i32 %m_vecs_stored.1, %0, !dbg !2625
  br i1 %exitcond, label %for.body3, label %for.inc15, !dbg !2619

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %r.0, %size, !dbg !2627
  %add = add nsw i32 %mul, %c.0, !dbg !2629
  %add.ptr.idx = mul nsw i32 %add, 72, !dbg !2630
  %add.ptr = getelementptr inbounds i8, ptr %in, i32 %add.ptr.idx, !dbg !2630
  %add.ptr6.idx = mul nsw i32 %m_vecs_stored.1, 72, !dbg !2631
  %add.ptr6 = getelementptr inbounds i8, ptr %out, i32 %add.ptr6.idx, !dbg !2631
  call fastcc void @m_vec_copy.17(i32 noundef 9, ptr noundef %add.ptr, ptr noundef %add.ptr6) #6, !dbg !2632
  %cmp7.not = icmp eq i32 %r.0, %c.0, !dbg !2633
  br i1 %cmp7.not, label %for.inc, label %if.then, !dbg !2633

if.then:                                          ; preds = %for.body3
  %mul8 = mul nsw i32 %c.0, %size, !dbg !2635
  %add9 = add nsw i32 %mul8, %r.0, !dbg !2637
  %add.ptr11.idx = mul nsw i32 %add9, 72, !dbg !2638
  %add.ptr11 = getelementptr inbounds i8, ptr %in, i32 %add.ptr11.idx, !dbg !2638
  %add.ptr13.idx = mul nsw i32 %m_vecs_stored.1, 72, !dbg !2639
  %add.ptr13 = getelementptr inbounds i8, ptr %out, i32 %add.ptr13.idx, !dbg !2639
  call fastcc void @m_vec_add.18(i32 noundef 9, ptr noundef %add.ptr11, ptr noundef %add.ptr13) #6, !dbg !2640
  br label %for.inc, !dbg !2641

for.inc:                                          ; preds = %for.body3, %if.then
    #dbg_value(i32 %m_vecs_stored.1, !2609, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2604)
  %inc = add i32 %m_vecs_stored.1, 1, !dbg !2642
    #dbg_value(i32 %inc, !2609, !DIExpression(), !2604)
  %inc14 = add nuw nsw i32 %c.0, 1, !dbg !2643
    #dbg_value(i32 %inc14, !2623, !DIExpression(), !2624)
  br label %for.cond1, !dbg !2644, !llvm.loop !2645

for.inc15:                                        ; preds = %for.cond1
  %m_vecs_stored.1.lcssa = phi i32 [ %m_vecs_stored.1, %for.cond1 ], !dbg !2604
  %inc16 = add nuw i32 %r.0, 1, !dbg !2647
    #dbg_value(i32 %inc16, !2610, !DIExpression(), !2612)
  %indvars.iv.next = add i32 %indvars.iv, -1, !dbg !2648
  br label %for.cond, !dbg !2648, !llvm.loop !2649

for.end17:                                        ; preds = %for.cond
  ret void, !dbg !2651
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_copy.17(i32 noundef %m_vec_limbs, ptr noundef %in, ptr noundef %out) unnamed_addr #0 !dbg !2652 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2653, !DIExpression(), !2654)
    #dbg_value(ptr %in, !2655, !DIExpression(), !2654)
    #dbg_value(ptr %out, !2656, !DIExpression(), !2654)
    #dbg_value(i32 0, !2657, !DIExpression(), !2659)
  br label %for.cond, !dbg !2660

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2661
    #dbg_value(i32 %i.0, !2657, !DIExpression(), !2659)
  %exitcond = icmp ne i32 %i.0, 9, !dbg !2662
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2664

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2665
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2665
  %arrayidx1 = getelementptr inbounds nuw i64, ptr %out, i32 %i.0, !dbg !2667
  store i64 %0, ptr %arrayidx1, align 8, !dbg !2668
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2669
    #dbg_value(i32 %inc, !2657, !DIExpression(), !2659)
  br label %for.cond, !dbg !2670, !llvm.loop !2671

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2673
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_add.18(i32 noundef %m_vec_limbs, ptr noundef %in, ptr noundef %acc) unnamed_addr #0 !dbg !2674 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2675, !DIExpression(), !2676)
    #dbg_value(ptr %in, !2677, !DIExpression(), !2676)
    #dbg_value(ptr %acc, !2678, !DIExpression(), !2676)
    #dbg_value(i32 0, !2679, !DIExpression(), !2681)
  br label %for.cond, !dbg !2682

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2683
    #dbg_value(i32 %i.0, !2679, !DIExpression(), !2681)
  %exitcond = icmp ne i32 %i.0, 9, !dbg !2684
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2686

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2687
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2687
  %arrayidx1 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !2689
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !2690
  %xor = xor i64 %1, %0, !dbg !2690
  store i64 %xor, ptr %arrayidx1, align 8, !dbg !2690
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2691
    #dbg_value(i32 %inc, !2679, !DIExpression(), !2681)
  br label %for.cond, !dbg !2692, !llvm.loop !2693

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2695
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_5_ref_sample_solution(ptr noundef %p, ptr noundef %A, ptr noundef %y, ptr noundef %r, ptr noundef %x, i32 noundef %k, i32 noundef %o, i32 noundef %m, i32 noundef %A_cols) local_unnamed_addr #0 !dbg !2696 {
entry:
  %Ar = alloca [142 x i8], align 1
    #dbg_value(ptr %p, !2699, !DIExpression(), !2700)
    #dbg_value(ptr %A, !2701, !DIExpression(), !2700)
    #dbg_value(ptr %y, !2702, !DIExpression(), !2700)
    #dbg_value(ptr %r, !2703, !DIExpression(), !2700)
    #dbg_value(ptr %x, !2704, !DIExpression(), !2700)
    #dbg_value(i32 %k, !2705, !DIExpression(), !2700)
    #dbg_value(i32 %o, !2706, !DIExpression(), !2700)
    #dbg_value(i32 %m, !2707, !DIExpression(), !2700)
    #dbg_value(i32 %A_cols, !2708, !DIExpression(), !2700)
    #dbg_value(i32 0, !2709, !DIExpression(), !2711)
  %0 = mul nsw i32 %o, %k, !dbg !2712
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0), !dbg !2712
  br label %for.cond, !dbg !2712

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2713
    #dbg_value(i32 %i.0, !2709, !DIExpression(), !2711)
  %exitcond = icmp ne i32 %i.0, %smax, !dbg !2714
  br i1 %exitcond, label %for.body, label %for.cond3.preheader, !dbg !2716

for.cond3.preheader:                              ; preds = %for.cond
  %smax13 = call i32 @llvm.smax.i32(i32 %m, i32 0), !dbg !2717
  br label %for.cond3, !dbg !2717

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %r, i32 %i.0, !dbg !2719
  %1 = load i8, ptr %arrayidx, align 1, !dbg !2719
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %x, i32 %i.0, !dbg !2721
  store i8 %1, ptr %arrayidx1, align 1, !dbg !2722
  %inc = add nuw i32 %i.0, 1, !dbg !2723
    #dbg_value(i32 %inc, !2709, !DIExpression(), !2711)
  br label %for.cond, !dbg !2724, !llvm.loop !2725

for.cond3:                                        ; preds = %for.cond3.preheader, %for.body5
  %i2.0 = phi i32 [ %inc12, %for.body5 ], [ 0, %for.cond3.preheader ], !dbg !2727
    #dbg_value(i32 %i2.0, !2728, !DIExpression(), !2729)
  %exitcond14 = icmp ne i32 %i2.0, %smax13, !dbg !2730
  br i1 %exitcond14, label %for.body5, label %for.end13, !dbg !2717

for.body5:                                        ; preds = %for.cond3
  %mul6 = mul nsw i32 %k, %o, !dbg !2732
  %mul7 = mul nsw i32 %k, %o, !dbg !2734
  %add = add nsw i32 %mul7, 1, !dbg !2735
  %mul8 = mul nsw i32 %i2.0, %add, !dbg !2736
  %2 = getelementptr i8, ptr %A, i32 %mul6, !dbg !2737
  %arrayidx10 = getelementptr i8, ptr %2, i32 %mul8, !dbg !2737
  store i8 0, ptr %arrayidx10, align 1, !dbg !2738
  %inc12 = add nuw i32 %i2.0, 1, !dbg !2739
    #dbg_value(i32 %inc12, !2728, !DIExpression(), !2729)
  br label %for.cond3, !dbg !2740, !llvm.loop !2741

for.end13:                                        ; preds = %for.cond3
  %mul14 = mul nsw i32 %k, %o, !dbg !2743
  %add15 = add nsw i32 %mul14, 1, !dbg !2744
  call fastcc void @mat_mul.21(ptr noundef %A, ptr noundef %r, ptr noundef nonnull %Ar, i32 noundef %add15, i32 noundef %m, i32 noundef 1) #6, !dbg !2745
    #dbg_value(i32 0, !2746, !DIExpression(), !2748)
  br label %for.cond17, !dbg !2749

for.cond17:                                       ; preds = %for.body19, %for.end13
  %i16.0 = phi i32 [ 0, %for.end13 ], [ %inc29, %for.body19 ], !dbg !2750
    #dbg_value(i32 %i16.0, !2746, !DIExpression(), !2748)
  %exitcond15 = icmp ne i32 %i16.0, %smax13, !dbg !2751
  br i1 %exitcond15, label %for.body19, label %for.end30, !dbg !2753

for.body19:                                       ; preds = %for.cond17
  %arrayidx20 = getelementptr inbounds nuw i8, ptr %y, i32 %i16.0, !dbg !2754
  %3 = load i8, ptr %arrayidx20, align 1, !dbg !2754
  %arrayidx21 = getelementptr inbounds nuw [142 x i8], ptr %Ar, i32 0, i32 %i16.0, !dbg !2756
  %4 = load i8, ptr %arrayidx21, align 1, !dbg !2756
  %call = call fastcc zeroext i8 @sub_f(i8 noundef zeroext %3, i8 noundef zeroext %4) #6, !dbg !2757
  %mul22 = mul nsw i32 %k, %o, !dbg !2758
  %mul23 = mul nsw i32 %k, %o, !dbg !2759
  %add24 = add nsw i32 %mul23, 1, !dbg !2760
  %mul25 = mul nsw i32 %i16.0, %add24, !dbg !2761
  %5 = getelementptr i8, ptr %A, i32 %mul22, !dbg !2762
  %arrayidx27 = getelementptr i8, ptr %5, i32 %mul25, !dbg !2762
  store i8 %call, ptr %arrayidx27, align 1, !dbg !2763
  %inc29 = add nuw i32 %i16.0, 1, !dbg !2764
    #dbg_value(i32 %inc29, !2746, !DIExpression(), !2748)
  br label %for.cond17, !dbg !2765, !llvm.loop !2766

for.end30:                                        ; preds = %for.cond17
  %mul31 = mul nsw i32 %k, %o, !dbg !2768
  %add32 = add nsw i32 %mul31, 1, !dbg !2769
  call fastcc void @EF(ptr noundef %A, i32 noundef %m, i32 noundef %add32) #6, !dbg !2770
    #dbg_value(i8 0, !2771, !DIExpression(), !2700)
    #dbg_value(i32 0, !2772, !DIExpression(), !2774)
  %6 = add i32 %A_cols, -1, !dbg !2775
  %smax16 = call i32 @llvm.smax.i32(i32 %6, i32 0), !dbg !2775
  br label %for.cond34, !dbg !2775

for.cond34:                                       ; preds = %for.inc43, %for.end30
  %full_rank.0 = phi i8 [ 0, %for.end30 ], [ %or12, %for.inc43 ], !dbg !2700
  %i33.0 = phi i32 [ 0, %for.end30 ], [ %inc44, %for.inc43 ], !dbg !2776
    #dbg_value(i32 %i33.0, !2772, !DIExpression(), !2774)
    #dbg_value(i8 %full_rank.0, !2771, !DIExpression(), !2700)
  %exitcond17 = icmp ne i32 %i33.0, %smax16, !dbg !2777
  br i1 %exitcond17, label %for.inc43, label %for.end45, !dbg !2779

for.inc43:                                        ; preds = %for.cond34
    #dbg_value(!DIArgList(i8 poison, i8 poison), !2771, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2700)
  %sub37 = add nsw i32 %m, -1, !dbg !2780
  %mul38 = mul nsw i32 %sub37, %A_cols, !dbg !2782
  %7 = getelementptr i8, ptr %A, i32 %mul38, !dbg !2783
  %arrayidx40 = getelementptr i8, ptr %7, i32 %i33.0, !dbg !2783
  %8 = load i8, ptr %arrayidx40, align 1, !dbg !2783
    #dbg_value(!DIArgList(i8 %full_rank.0, i8 %8), !2771, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2700)
  %or12 = or i8 %full_rank.0, %8, !dbg !2784
    #dbg_value(i8 %or12, !2771, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2700)
    #dbg_value(i8 %or12, !2771, !DIExpression(), !2700)
  %inc44 = add nuw i32 %i33.0, 1, !dbg !2785
    #dbg_value(i32 %inc44, !2772, !DIExpression(), !2774)
  br label %for.cond34, !dbg !2786, !llvm.loop !2787

for.end45:                                        ; preds = %for.cond34
  %full_rank.0.lcssa = phi i8 [ %full_rank.0, %for.cond34 ], !dbg !2700
  %cmp47 = icmp eq i8 %full_rank.0.lcssa, 0, !dbg !2789
  br i1 %cmp47, label %return, label %for.cond50.preheader, !dbg !2789

for.cond50.preheader:                             ; preds = %for.end45
  br label %for.cond50, !dbg !2791

for.cond50.loopexit:                              ; preds = %for.cond63
  br label %for.cond50, !dbg !2791, !llvm.loop !2793

for.cond50:                                       ; preds = %for.cond50.preheader, %for.cond50.loopexit
  %row.0.in = phi i32 [ %row.0, %for.cond50.loopexit ], [ %m, %for.cond50.preheader ]
  %row.0 = add nsw i32 %row.0.in, -1, !dbg !2795
    #dbg_value(i32 %row.0, !2796, !DIExpression(), !2797)
  %cmp51 = icmp sgt i32 %row.0.in, 0, !dbg !2798
  br i1 %cmp51, label %for.body53, label %return.loopexit, !dbg !2791

for.body53:                                       ; preds = %for.cond50
    #dbg_value(i8 0, !2800, !DIExpression(), !2700)
  %sub54 = sub nsw i32 %m, %row.0, !dbg !2801
  %div = sdiv i32 32, %sub54, !dbg !2801
  %add55 = add nsw i32 %row.0, %div, !dbg !2801
  %mul56 = mul nsw i32 %k, %o, !dbg !2801
  %cmp57 = icmp slt i32 %add55, %mul56, !dbg !2801
  br i1 %cmp57, label %cond.true, label %cond.false, !dbg !2801

cond.true:                                        ; preds = %for.body53
  %sub59 = sub nsw i32 %m, %row.0, !dbg !2801
  %div60 = sdiv i32 32, %sub59, !dbg !2801
  %add61 = add nsw i32 %row.0, %div60, !dbg !2801
  br label %cond.end, !dbg !2801

cond.false:                                       ; preds = %for.body53
  %mul62 = mul nsw i32 %k, %o, !dbg !2801
  br label %cond.end, !dbg !2801

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add61, %cond.true ], [ %mul62, %cond.false ], !dbg !2801
    #dbg_value(i32 %cond, !2803, !DIExpression(), !2700)
    #dbg_value(i32 %row.0, !2804, !DIExpression(), !2806)
  br label %for.cond63, !dbg !2807

for.cond63:                                       ; preds = %for.inc229, %cond.end
  %finished.0 = phi i8 [ 0, %cond.end ], [ %or2273, %for.inc229 ], !dbg !2808
  %col.0 = phi i32 [ %row.0, %cond.end ], [ %inc230, %for.inc229 ], !dbg !2809
    #dbg_value(i32 %col.0, !2804, !DIExpression(), !2806)
    #dbg_value(i8 %finished.0, !2800, !DIExpression(), !2700)
  %cmp64.not = icmp sgt i32 %col.0, %cond, !dbg !2810
  br i1 %cmp64.not, label %for.cond50.loopexit, label %for.body66, !dbg !2812

for.body66:                                       ; preds = %for.cond63
  %mul67 = mul nsw i32 %row.0, %A_cols, !dbg !2813
  %9 = getelementptr i8, ptr %A, i32 %mul67, !dbg !2815
  %arrayidx69 = getelementptr i8, ptr %9, i32 %col.0, !dbg !2815
  %10 = load i8, ptr %arrayidx69, align 1, !dbg !2815
  %call70 = call fastcc zeroext i8 @ct_compare_8(i8 noundef zeroext %10, i8 noundef zeroext 0) #6, !dbg !2816
  %not = xor i8 %finished.0, -1, !dbg !2817
    #dbg_value(!DIArgList(i8 %call70, i8 %not), !2818, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value), !2700)
  %add76 = mul i32 %row.0.in, %A_cols, !dbg !2819
  %11 = getelementptr i8, ptr %A, i32 %add76, !dbg !2820
  %arrayidx78 = getelementptr i8, ptr %11, i32 -1, !dbg !2820
  %12 = load i8, ptr %arrayidx78, align 1, !dbg !2820
  %13 = and i8 %12, %not, !dbg !2821
  %and801 = and i8 %13, %call70, !dbg !2821
    #dbg_value(i8 %and801, !2822, !DIExpression(), !2823)
  %arrayidx83 = getelementptr inbounds i8, ptr %x, i32 %col.0, !dbg !2824
  %14 = load i8, ptr %arrayidx83, align 1, !dbg !2825
  %xor2 = xor i8 %14, %and801, !dbg !2825
  store i8 %xor2, ptr %arrayidx83, align 1, !dbg !2825
    #dbg_value(i32 0, !2826, !DIExpression(), !2828)
  br label %for.cond87, !dbg !2829

for.cond87:                                       ; preds = %for.body90, %for.body66
  %i86.0 = phi i32 [ 0, %for.body66 ], [ %add223, %for.body90 ], !dbg !2830
    #dbg_value(i32 %i86.0, !2826, !DIExpression(), !2828)
  %cmp88 = icmp slt i32 %i86.0, %row.0, !dbg !2831
  br i1 %cmp88, label %for.body90, label %for.inc229, !dbg !2833

for.body90:                                       ; preds = %for.cond87
  %mul91 = mul nsw i32 %i86.0, %A_cols, !dbg !2834
  %15 = getelementptr i8, ptr %A, i32 %mul91, !dbg !2836
  %arrayidx93 = getelementptr i8, ptr %15, i32 %col.0, !dbg !2836
  %16 = load i8, ptr %arrayidx93, align 1, !dbg !2836
  %conv94 = zext i8 %16 to i64, !dbg !2837
  %add95 = or disjoint i32 %i86.0, 1, !dbg !2838
  %mul96 = mul nsw i32 %add95, %A_cols, !dbg !2839
  %17 = getelementptr i8, ptr %A, i32 %mul96, !dbg !2840
  %arrayidx98 = getelementptr i8, ptr %17, i32 %col.0, !dbg !2840
  %18 = load i8, ptr %arrayidx98, align 1, !dbg !2840
  %conv99 = zext i8 %18 to i64, !dbg !2841
  %shl100 = shl nuw nsw i64 %conv99, 8, !dbg !2842
  %xor101 = or disjoint i64 %shl100, %conv94, !dbg !2843
  %add102 = or disjoint i32 %i86.0, 2, !dbg !2844
  %mul103 = mul nsw i32 %add102, %A_cols, !dbg !2845
  %19 = getelementptr i8, ptr %A, i32 %mul103, !dbg !2846
  %arrayidx105 = getelementptr i8, ptr %19, i32 %col.0, !dbg !2846
  %20 = load i8, ptr %arrayidx105, align 1, !dbg !2846
  %conv106 = zext i8 %20 to i64, !dbg !2847
  %shl107 = shl nuw nsw i64 %conv106, 16, !dbg !2848
  %xor108 = or disjoint i64 %xor101, %shl107, !dbg !2849
  %add109 = or disjoint i32 %i86.0, 3, !dbg !2850
  %mul110 = mul nsw i32 %add109, %A_cols, !dbg !2851
  %21 = getelementptr i8, ptr %A, i32 %mul110, !dbg !2852
  %arrayidx112 = getelementptr i8, ptr %21, i32 %col.0, !dbg !2852
  %22 = load i8, ptr %arrayidx112, align 1, !dbg !2852
  %conv113 = zext i8 %22 to i64, !dbg !2853
  %shl114 = shl nuw nsw i64 %conv113, 24, !dbg !2854
  %xor115 = or disjoint i64 %xor108, %shl114, !dbg !2855
  %add116 = or disjoint i32 %i86.0, 4, !dbg !2856
  %mul117 = mul nsw i32 %add116, %A_cols, !dbg !2857
  %23 = getelementptr i8, ptr %A, i32 %mul117, !dbg !2858
  %arrayidx119 = getelementptr i8, ptr %23, i32 %col.0, !dbg !2858
  %24 = load i8, ptr %arrayidx119, align 1, !dbg !2858
  %conv120 = zext i8 %24 to i64, !dbg !2859
  %shl121 = shl nuw nsw i64 %conv120, 32, !dbg !2860
  %xor122 = or disjoint i64 %xor115, %shl121, !dbg !2861
  %add123 = or disjoint i32 %i86.0, 5, !dbg !2862
  %mul124 = mul nsw i32 %add123, %A_cols, !dbg !2863
  %25 = getelementptr i8, ptr %A, i32 %mul124, !dbg !2864
  %arrayidx126 = getelementptr i8, ptr %25, i32 %col.0, !dbg !2864
  %26 = load i8, ptr %arrayidx126, align 1, !dbg !2864
  %conv127 = zext i8 %26 to i64, !dbg !2865
  %shl128 = shl nuw nsw i64 %conv127, 40, !dbg !2866
  %xor129 = xor i64 %xor122, %shl128, !dbg !2867
  %add130 = or disjoint i32 %i86.0, 6, !dbg !2868
  %mul131 = mul nsw i32 %add130, %A_cols, !dbg !2869
  %27 = getelementptr i8, ptr %A, i32 %mul131, !dbg !2870
  %arrayidx133 = getelementptr i8, ptr %27, i32 %col.0, !dbg !2870
  %28 = load i8, ptr %arrayidx133, align 1, !dbg !2870
  %conv134 = zext i8 %28 to i64, !dbg !2871
  %shl135 = shl nuw nsw i64 %conv134, 48, !dbg !2872
  %xor136 = xor i64 %xor129, %shl135, !dbg !2873
  %add137 = or disjoint i32 %i86.0, 7, !dbg !2874
  %mul138 = mul nsw i32 %add137, %A_cols, !dbg !2875
  %29 = getelementptr i8, ptr %A, i32 %mul138, !dbg !2876
  %arrayidx140 = getelementptr i8, ptr %29, i32 %col.0, !dbg !2876
  %30 = load i8, ptr %arrayidx140, align 1, !dbg !2876
  %conv141 = zext i8 %30 to i64, !dbg !2877
  %shl142 = shl nuw i64 %conv141, 56, !dbg !2878
  %xor143 = xor i64 %xor136, %shl142, !dbg !2879
    #dbg_value(i64 %xor143, !2880, !DIExpression(), !2881)
  %call144 = call fastcc i64 @mul_fx8(i8 noundef zeroext %and801, i64 noundef %xor143) #6, !dbg !2882
    #dbg_value(i64 %call144, !2880, !DIExpression(), !2881)
  %mul1464 = or disjoint i32 %i86.0, 1, !dbg !2883
  %add147 = mul i32 %mul1464, %A_cols, !dbg !2883
  %31 = getelementptr i8, ptr %A, i32 %add147, !dbg !2884
  %arrayidx149 = getelementptr i8, ptr %31, i32 -1, !dbg !2884
  %32 = load i8, ptr %arrayidx149, align 1, !dbg !2885
  %33 = trunc i64 %call144 to i8, !dbg !2885
  %34 = and i8 %33, 15, !dbg !2885
  %conv152 = xor i8 %34, %32, !dbg !2885
  store i8 %conv152, ptr %arrayidx149, align 1, !dbg !2885
  %shr = lshr i64 %call144, 8, !dbg !2886
  %mul1555 = or disjoint i32 %i86.0, 2, !dbg !2887
  %add156 = mul i32 %mul1555, %A_cols, !dbg !2887
  %35 = getelementptr i8, ptr %A, i32 %add156, !dbg !2888
  %arrayidx158 = getelementptr i8, ptr %35, i32 -1, !dbg !2888
  %36 = load i8, ptr %arrayidx158, align 1, !dbg !2889
  %37 = trunc i64 %shr to i8, !dbg !2889
  %38 = and i8 %37, 15, !dbg !2889
  %conv161 = xor i8 %38, %36, !dbg !2889
  store i8 %conv161, ptr %arrayidx158, align 1, !dbg !2889
  %shr162 = lshr i64 %call144, 16, !dbg !2890
  %mul1656 = or disjoint i32 %i86.0, 3, !dbg !2891
  %add166 = mul i32 %mul1656, %A_cols, !dbg !2891
  %39 = getelementptr i8, ptr %A, i32 %add166, !dbg !2892
  %arrayidx168 = getelementptr i8, ptr %39, i32 -1, !dbg !2892
  %40 = load i8, ptr %arrayidx168, align 1, !dbg !2893
  %41 = trunc i64 %shr162 to i8, !dbg !2893
  %42 = and i8 %41, 15, !dbg !2893
  %conv171 = xor i8 %42, %40, !dbg !2893
  store i8 %conv171, ptr %arrayidx168, align 1, !dbg !2893
  %shr172 = lshr i64 %call144, 24, !dbg !2894
  %mul1757 = or disjoint i32 %i86.0, 4, !dbg !2895
  %add176 = mul i32 %mul1757, %A_cols, !dbg !2895
  %43 = getelementptr i8, ptr %A, i32 %add176, !dbg !2896
  %arrayidx178 = getelementptr i8, ptr %43, i32 -1, !dbg !2896
  %44 = load i8, ptr %arrayidx178, align 1, !dbg !2897
  %45 = trunc i64 %shr172 to i8, !dbg !2897
  %46 = and i8 %45, 15, !dbg !2897
  %conv181 = xor i8 %46, %44, !dbg !2897
  store i8 %conv181, ptr %arrayidx178, align 1, !dbg !2897
  %shr182 = lshr i64 %call144, 32, !dbg !2898
  %mul1858 = or disjoint i32 %i86.0, 5, !dbg !2899
  %add186 = mul i32 %mul1858, %A_cols, !dbg !2899
  %47 = getelementptr i8, ptr %A, i32 %add186, !dbg !2900
  %arrayidx188 = getelementptr i8, ptr %47, i32 -1, !dbg !2900
  %48 = load i8, ptr %arrayidx188, align 1, !dbg !2901
  %49 = trunc i64 %shr182 to i8, !dbg !2901
  %50 = and i8 %49, 15, !dbg !2901
  %conv191 = xor i8 %50, %48, !dbg !2901
  store i8 %conv191, ptr %arrayidx188, align 1, !dbg !2901
  %shr192 = lshr i64 %call144, 40, !dbg !2902
  %mul1959 = or disjoint i32 %i86.0, 6, !dbg !2903
  %add196 = mul i32 %mul1959, %A_cols, !dbg !2903
  %51 = getelementptr i8, ptr %A, i32 %add196, !dbg !2904
  %arrayidx198 = getelementptr i8, ptr %51, i32 -1, !dbg !2904
  %52 = load i8, ptr %arrayidx198, align 1, !dbg !2905
  %53 = trunc i64 %shr192 to i8, !dbg !2905
  %54 = and i8 %53, 15, !dbg !2905
  %conv201 = xor i8 %54, %52, !dbg !2905
  store i8 %conv201, ptr %arrayidx198, align 1, !dbg !2905
  %shr202 = lshr i64 %call144, 48, !dbg !2906
  %mul20510 = or disjoint i32 %i86.0, 7, !dbg !2907
  %add206 = mul i32 %mul20510, %A_cols, !dbg !2907
  %55 = getelementptr i8, ptr %A, i32 %add206, !dbg !2908
  %arrayidx208 = getelementptr i8, ptr %55, i32 -1, !dbg !2908
  %56 = load i8, ptr %arrayidx208, align 1, !dbg !2909
  %57 = trunc i64 %shr202 to i8, !dbg !2909
  %58 = and i8 %57, 15, !dbg !2909
  %conv211 = xor i8 %58, %56, !dbg !2909
  store i8 %conv211, ptr %arrayidx208, align 1, !dbg !2909
  %shr212 = lshr i64 %call144, 56, !dbg !2910
  %mul21511 = add nuw i32 %i86.0, 8, !dbg !2911
  %add216 = mul i32 %mul21511, %A_cols, !dbg !2911
  %59 = getelementptr i8, ptr %A, i32 %add216, !dbg !2912
  %arrayidx218 = getelementptr i8, ptr %59, i32 -1, !dbg !2912
  %60 = load i8, ptr %arrayidx218, align 1, !dbg !2913
  %61 = trunc nuw nsw i64 %shr212 to i8, !dbg !2913
  %conv221 = xor i8 %60, %61, !dbg !2913
  store i8 %conv221, ptr %arrayidx218, align 1, !dbg !2913
  %add223 = add nuw nsw i32 %i86.0, 8, !dbg !2914
    #dbg_value(i32 %add223, !2826, !DIExpression(), !2828)
  br label %for.cond87, !dbg !2915, !llvm.loop !2916

for.inc229:                                       ; preds = %for.cond87
    #dbg_value(!DIArgList(i8 %finished.0, i8 %call70), !2800, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2700)
  %or2273 = or i8 %finished.0, %call70, !dbg !2918
    #dbg_value(i8 %or2273, !2800, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2700)
    #dbg_value(i8 %or2273, !2800, !DIExpression(), !2700)
  %inc230 = add nsw i32 %col.0, 1, !dbg !2919
    #dbg_value(i32 %inc230, !2804, !DIExpression(), !2806)
  br label %for.cond63, !dbg !2920, !llvm.loop !2921

return.loopexit:                                  ; preds = %for.cond50
  br label %return, !dbg !2923

return:                                           ; preds = %return.loopexit, %for.end45
  %retval.0 = phi i32 [ 0, %for.end45 ], [ 1, %return.loopexit ], !dbg !2700
  ret i32 %retval.0, !dbg !2923
}

; Function Attrs: nounwind
define internal fastcc void @mat_mul.21(ptr noundef %a, ptr noundef %b, ptr noundef %c, i32 noundef %colrow_ab, i32 noundef %row_a, i32 noundef %col_b) unnamed_addr #0 !dbg !2924 {
entry:
    #dbg_value(ptr %a, !2925, !DIExpression(), !2926)
    #dbg_value(ptr %b, !2927, !DIExpression(), !2926)
    #dbg_value(ptr %c, !2928, !DIExpression(), !2926)
    #dbg_value(i32 %colrow_ab, !2929, !DIExpression(), !2926)
    #dbg_value(i32 %row_a, !2930, !DIExpression(), !2926)
    #dbg_value(i32 %col_b, !2931, !DIExpression(), !2926)
    #dbg_value(i32 0, !2932, !DIExpression(), !2934)
  %smax = call i32 @llvm.smax.i32(i32 %col_b, i32 0), !dbg !2935
  %smax1 = call i32 @llvm.smax.i32(i32 %row_a, i32 0), !dbg !2935
  br label %for.cond, !dbg !2935

for.cond:                                         ; preds = %for.inc4, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc5, %for.inc4 ], !dbg !2936
  %c.addr.0 = phi ptr [ %c, %entry ], [ %c.addr.1.lcssa, %for.inc4 ]
  %a.addr.0 = phi ptr [ %a, %entry ], [ %add.ptr6, %for.inc4 ]
    #dbg_value(ptr %a.addr.0, !2925, !DIExpression(), !2926)
    #dbg_value(ptr %c.addr.0, !2928, !DIExpression(), !2926)
    #dbg_value(i32 %i.0, !2932, !DIExpression(), !2934)
  %exitcond2 = icmp ne i32 %i.0, %smax1, !dbg !2937
  br i1 %exitcond2, label %for.cond1.preheader, label %for.end7, !dbg !2939

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !2940

for.cond1:                                        ; preds = %for.cond1.preheader, %for.body3
  %c.addr.1 = phi ptr [ %incdec.ptr, %for.body3 ], [ %c.addr.0, %for.cond1.preheader ]
  %j.0 = phi i32 [ %inc, %for.body3 ], [ 0, %for.cond1.preheader ], !dbg !2943
    #dbg_value(i32 %j.0, !2944, !DIExpression(), !2945)
    #dbg_value(ptr %c.addr.1, !2928, !DIExpression(), !2926)
  %exitcond = icmp ne i32 %j.0, %smax, !dbg !2946
  br i1 %exitcond, label %for.body3, label %for.inc4, !dbg !2940

for.body3:                                        ; preds = %for.cond1
  %add.ptr = getelementptr inbounds nuw i8, ptr %b, i32 %j.0, !dbg !2948
  %call = call fastcc zeroext i8 @lincomb.24(ptr noundef %a.addr.0, ptr noundef %add.ptr, i32 noundef %colrow_ab, i32 noundef %col_b) #6, !dbg !2950
  store i8 %call, ptr %c.addr.1, align 1, !dbg !2951
  %inc = add nuw i32 %j.0, 1, !dbg !2952
    #dbg_value(i32 %inc, !2944, !DIExpression(), !2945)
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %c.addr.1, i32 1, !dbg !2953
    #dbg_value(ptr %incdec.ptr, !2928, !DIExpression(), !2926)
  br label %for.cond1, !dbg !2954, !llvm.loop !2955

for.inc4:                                         ; preds = %for.cond1
  %c.addr.1.lcssa = phi ptr [ %c.addr.1, %for.cond1 ]
  %inc5 = add nuw i32 %i.0, 1, !dbg !2957
    #dbg_value(i32 %inc5, !2932, !DIExpression(), !2934)
  %add.ptr6 = getelementptr inbounds i8, ptr %a.addr.0, i32 %colrow_ab, !dbg !2958
    #dbg_value(ptr %add.ptr6, !2925, !DIExpression(), !2926)
  br label %for.cond, !dbg !2959, !llvm.loop !2960

for.end7:                                         ; preds = %for.cond
  ret void, !dbg !2962
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @sub_f(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !2963 {
entry:
    #dbg_value(i8 %a, !2964, !DIExpression(), !2965)
    #dbg_value(i8 %b, !2966, !DIExpression(), !2965)
  %xor1 = xor i8 %a, %b, !dbg !2967
  ret i8 %xor1, !dbg !2968
}

; Function Attrs: nounwind
define internal fastcc void @EF(ptr noundef %A, i32 noundef %nrows, i32 noundef %ncols) unnamed_addr #0 !dbg !2969 {
entry:
  %_pivot_row = alloca [10 x i64], align 32
  %_pivot_row2 = alloca [10 x i64], align 32
  %packed_A = alloca [1420 x i64], align 32
  %temp = alloca [160 x i8], align 1
    #dbg_value(ptr %A, !2973, !DIExpression(), !2974)
    #dbg_value(i32 %nrows, !2975, !DIExpression(), !2974)
    #dbg_value(i32 %ncols, !2976, !DIExpression(), !2974)
    #dbg_declare(ptr %_pivot_row, !2977, !DIExpression(), !2981)
    #dbg_declare(ptr %_pivot_row2, !2982, !DIExpression(), !2983)
    #dbg_declare(ptr %packed_A, !2984, !DIExpression(), !2988)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 32 dereferenceable(11360) %packed_A, i8 0, i32 11360, i1 false), !dbg !2988
  %add = add nsw i32 %ncols, 15, !dbg !2989
  %div = sdiv i32 %add, 16, !dbg !2990
    #dbg_value(i32 %div, !2991, !DIExpression(), !2974)
    #dbg_value(i32 0, !2992, !DIExpression(), !2994)
  %smax = call i32 @llvm.smax.i32(i32 %nrows, i32 0), !dbg !2995
  br label %for.cond, !dbg !2995

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2996
    #dbg_value(i32 %i.0, !2992, !DIExpression(), !2994)
  %exitcond = icmp ne i32 %i.0, %smax, !dbg !2997
  br i1 %exitcond, label %for.body, label %for.cond3.preheader, !dbg !2999

for.cond3.preheader:                              ; preds = %for.cond
  %smax1 = call i32 @llvm.smax.i32(i32 %div, i32 0), !dbg !3000
  %smax5 = call i32 @llvm.smax.i32(i32 %ncols, i32 0), !dbg !3000
  br label %for.cond3, !dbg !3000

for.body:                                         ; preds = %for.cond
  %mul = mul nsw i32 %i.0, %ncols, !dbg !3002
  %add.ptr = getelementptr inbounds i8, ptr %A, i32 %mul, !dbg !3004
  %mul1 = mul nsw i32 %i.0, %div, !dbg !3005
  %add.ptr2 = getelementptr inbounds i64, ptr %packed_A, i32 %mul1, !dbg !3006
  call fastcc void @ef_pack_m_vec(ptr noundef %add.ptr, ptr noundef nonnull %add.ptr2, i32 noundef %ncols) #6, !dbg !3007
  %inc = add nuw i32 %i.0, 1, !dbg !3008
    #dbg_value(i32 %inc, !2992, !DIExpression(), !2994)
  br label %for.cond, !dbg !3009, !llvm.loop !3010

for.cond3:                                        ; preds = %for.cond3.preheader, %for.inc117
  %pivot_col.0 = phi i32 [ %inc118, %for.inc117 ], [ 0, %for.cond3.preheader ], !dbg !3012
  %pivot_row.0 = phi i32 [ %conv116, %for.inc117 ], [ 0, %for.cond3.preheader ], !dbg !2974
    #dbg_value(i32 %pivot_row.0, !3013, !DIExpression(), !2974)
    #dbg_value(i32 %pivot_col.0, !3014, !DIExpression(), !3015)
  %exitcond6 = icmp ne i32 %pivot_col.0, %smax5, !dbg !3016
  br i1 %exitcond6, label %for.body5, label %for.cond121.preheader, !dbg !3000

for.cond121.preheader:                            ; preds = %for.cond3
  br label %for.cond121, !dbg !3018

for.body5:                                        ; preds = %for.cond3
  %add6 = add nsw i32 %pivot_col.0, %nrows, !dbg !3020
  %cmp7 = icmp slt i32 %add6, %ncols, !dbg !3020
  %add8 = add nsw i32 %pivot_col.0, %nrows, !dbg !3020
  %sub9 = sub nsw i32 %add8, %ncols, !dbg !3020
  %cond = select i1 %cmp7, i32 0, i32 %sub9, !dbg !3020
    #dbg_value(i32 %cond, !3022, !DIExpression(), !3023)
  %sub13 = add nsw i32 %nrows, -1, !dbg !3024
    #dbg_value(i32 %cond16, !3025, !DIExpression(), !3023)
    #dbg_value(i32 0, !3026, !DIExpression(), !3028)
  br label %for.cond18, !dbg !3029

for.cond18:                                       ; preds = %for.body20, %for.body5
  %i17.0 = phi i32 [ 0, %for.body5 ], [ %inc23, %for.body20 ], !dbg !3030
    #dbg_value(i32 %i17.0, !3026, !DIExpression(), !3028)
  %exitcond2 = icmp ne i32 %i17.0, %smax1, !dbg !3031
  br i1 %exitcond2, label %for.body20, label %for.cond25.preheader, !dbg !3033

for.cond25.preheader:                             ; preds = %for.cond18
  %cmp11.not = icmp sgt i32 %nrows, %pivot_col.0, !dbg !3024
  %cond16 = select i1 %cmp11.not, i32 %pivot_col.0, i32 %sub13, !dbg !3024
  br label %for.cond25, !dbg !3034

for.body20:                                       ; preds = %for.cond18
  %arrayidx = getelementptr inbounds nuw [10 x i64], ptr %_pivot_row, i32 0, i32 %i17.0, !dbg !3036
  store i64 0, ptr %arrayidx, align 8, !dbg !3038
  %arrayidx21 = getelementptr inbounds nuw [10 x i64], ptr %_pivot_row2, i32 0, i32 %i17.0, !dbg !3039
  store i64 0, ptr %arrayidx21, align 8, !dbg !3040
  %inc23 = add nuw nsw i32 %i17.0, 1, !dbg !3041
    #dbg_value(i32 %inc23, !3026, !DIExpression(), !3028)
  br label %for.cond18, !dbg !3042, !llvm.loop !3043

for.cond25:                                       ; preds = %for.cond25.preheader, %for.end48
  %pivot_is_zero.0 = phi i64 [ %not52, %for.end48 ], [ -1, %for.cond25.preheader ], !dbg !3023
  %pivot.0 = phi i8 [ %call50, %for.end48 ], [ 0, %for.cond25.preheader ], !dbg !3023
  %row.0 = phi i32 [ %inc54, %for.end48 ], [ %cond, %for.cond25.preheader ], !dbg !3045
    #dbg_value(i32 %row.0, !3046, !DIExpression(), !3045)
    #dbg_value(i8 %pivot.0, !3047, !DIExpression(), !3023)
    #dbg_value(i64 %pivot_is_zero.0, !3048, !DIExpression(), !3023)
  %add27 = add nsw i32 %cond16, 32, !dbg !3049
  %cmp28.not = icmp sgt i32 %nrows, %add27, !dbg !3049
  %sub30 = add nsw i32 %nrows, -1, !dbg !3049
  %add32 = add nsw i32 %cond16, 32, !dbg !3049
  %cond34 = select i1 %cmp28.not, i32 %add32, i32 %sub30, !dbg !3049
  %cmp35.not = icmp sgt i32 %row.0, %cond34, !dbg !3051
  br i1 %cmp35.not, label %for.end55, label %for.body36, !dbg !3034

for.body36:                                       ; preds = %for.cond25
  %call = call fastcc i64 @ct_compare_64(i32 noundef %row.0, i32 noundef %pivot_row.0) #6, !dbg !3052
  %not = xor i64 %call, -1, !dbg !3054
    #dbg_value(i64 %not, !3055, !DIExpression(), !3056)
  %call37 = call fastcc i64 @ct_64_is_greater_than(i32 noundef %row.0, i32 noundef %pivot_row.0) #6, !dbg !3057
    #dbg_value(i64 %call37, !3058, !DIExpression(), !3056)
    #dbg_value(i32 0, !3059, !DIExpression(), !3061)
  br label %for.cond38, !dbg !3062

for.cond38:                                       ; preds = %for.body40, %for.body36
  %j.0 = phi i32 [ 0, %for.body36 ], [ %inc47, %for.body40 ], !dbg !3063
    #dbg_value(i32 %j.0, !3059, !DIExpression(), !3061)
  %exitcond3 = icmp ne i32 %j.0, %smax1, !dbg !3064
  br i1 %exitcond3, label %for.body40, label %for.end48, !dbg !3066

for.body40:                                       ; preds = %for.cond38
  %and = and i64 %call37, %pivot_is_zero.0, !dbg !3067
  %or = or i64 %and, %not, !dbg !3069
  %mul41 = mul nsw i32 %row.0, %div, !dbg !3070
  %add42 = add nsw i32 %mul41, %j.0, !dbg !3071
  %arrayidx43 = getelementptr inbounds [1420 x i64], ptr %packed_A, i32 0, i32 %add42, !dbg !3072
  %0 = load i64, ptr %arrayidx43, align 8, !dbg !3072
  %and44 = and i64 %or, %0, !dbg !3073
  %arrayidx45 = getelementptr inbounds nuw [10 x i64], ptr %_pivot_row, i32 0, i32 %j.0, !dbg !3074
  %1 = load i64, ptr %arrayidx45, align 8, !dbg !3075
  %xor = xor i64 %1, %and44, !dbg !3075
  store i64 %xor, ptr %arrayidx45, align 8, !dbg !3075
  %inc47 = add nuw nsw i32 %j.0, 1, !dbg !3076
    #dbg_value(i32 %inc47, !3059, !DIExpression(), !3061)
  br label %for.cond38, !dbg !3077, !llvm.loop !3078

for.end48:                                        ; preds = %for.cond38
  %call50 = call fastcc zeroext i8 @m_extract_element(ptr noundef nonnull %_pivot_row, i32 noundef %pivot_col.0) #6, !dbg !3080
    #dbg_value(i8 %call50, !3047, !DIExpression(), !3023)
  %conv = zext nneg i8 %call50 to i32, !dbg !3081
  %call51 = call fastcc i64 @ct_compare_64(i32 noundef %conv, i32 noundef 0) #6, !dbg !3082
    #dbg_value(i64 %call51, !3048, !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_stack_value), !3023)
  %not52 = xor i64 %call51, -1, !dbg !3083
    #dbg_value(i64 %not52, !3048, !DIExpression(), !3023)
  %inc54 = add nsw i32 %row.0, 1, !dbg !3084
    #dbg_value(i32 %inc54, !3046, !DIExpression(), !3045)
  br label %for.cond25, !dbg !3085, !llvm.loop !3086

for.end55:                                        ; preds = %for.cond25
  %pivot_is_zero.0.lcssa = phi i64 [ %pivot_is_zero.0, %for.cond25 ], !dbg !3023
  %pivot.0.lcssa = phi i8 [ %pivot.0, %for.cond25 ], !dbg !3023
  %call56 = call fastcc zeroext i8 @inverse_f(i8 noundef zeroext %pivot.0.lcssa) #6, !dbg !3088
    #dbg_value(i8 %call56, !3089, !DIExpression(), !2974)
  call fastcc void @vec_mul_add_u64(i32 noundef %div, ptr noundef nonnull %_pivot_row, i8 noundef zeroext %call56, ptr noundef nonnull %_pivot_row2) #6, !dbg !3090
    #dbg_value(i32 %cond, !3091, !DIExpression(), !3093)
  br label %for.cond60, !dbg !3094

for.cond60:                                       ; preds = %for.inc86, %for.end55
  %row59.0 = phi i32 [ %cond, %for.end55 ], [ %inc87, %for.inc86 ], !dbg !3095
    #dbg_value(i32 %row59.0, !3091, !DIExpression(), !3093)
  %cmp61.not = icmp sgt i32 %row59.0, %cond16, !dbg !3096
  br i1 %cmp61.not, label %for.cond90.preheader, label %for.body63, !dbg !3098

for.cond90.preheader:                             ; preds = %for.cond60
  br label %for.cond90, !dbg !3099

for.body63:                                       ; preds = %for.cond60
  %call64 = call fastcc i64 @ct_compare_64(i32 noundef %row59.0, i32 noundef %pivot_row.0) #6, !dbg !3101
  %and67.demorgan = or i64 %call64, %pivot_is_zero.0.lcssa, !dbg !3103
  %and67 = xor i64 %and67.demorgan, -1, !dbg !3103
    #dbg_value(i64 %and67, !3104, !DIExpression(), !3105)
    #dbg_value(i64 %and67.demorgan, !3106, !DIExpression(), !3105)
    #dbg_value(i32 0, !3107, !DIExpression(), !3109)
  br label %for.cond69, !dbg !3110

for.cond69:                                       ; preds = %for.body72, %for.body63
  %col.0 = phi i32 [ 0, %for.body63 ], [ %inc84, %for.body72 ], !dbg !3111
    #dbg_value(i32 %col.0, !3107, !DIExpression(), !3109)
  %exitcond4 = icmp ne i32 %col.0, %smax1, !dbg !3112
  br i1 %exitcond4, label %for.body72, label %for.inc86, !dbg !3114

for.body72:                                       ; preds = %for.cond69
  %mul73 = mul nsw i32 %row59.0, %div, !dbg !3115
  %add74 = add nsw i32 %mul73, %col.0, !dbg !3117
  %arrayidx75 = getelementptr inbounds [1420 x i64], ptr %packed_A, i32 0, i32 %add74, !dbg !3118
  %2 = load i64, ptr %arrayidx75, align 8, !dbg !3118
  %and76 = and i64 %and67.demorgan, %2, !dbg !3119
  %arrayidx77 = getelementptr inbounds nuw [10 x i64], ptr %_pivot_row2, i32 0, i32 %col.0, !dbg !3120
  %3 = load i64, ptr %arrayidx77, align 8, !dbg !3120
  %and78 = and i64 %3, %and67, !dbg !3121
  %add79 = add i64 %and76, %and78, !dbg !3122
  %mul80 = mul nsw i32 %row59.0, %div, !dbg !3123
  %add81 = add nsw i32 %mul80, %col.0, !dbg !3124
  %arrayidx82 = getelementptr inbounds [1420 x i64], ptr %packed_A, i32 0, i32 %add81, !dbg !3125
  store i64 %add79, ptr %arrayidx82, align 8, !dbg !3126
  %inc84 = add nuw nsw i32 %col.0, 1, !dbg !3127
    #dbg_value(i32 %inc84, !3107, !DIExpression(), !3109)
  br label %for.cond69, !dbg !3128, !llvm.loop !3129

for.inc86:                                        ; preds = %for.cond69
  %inc87 = add nsw i32 %row59.0, 1, !dbg !3131
    #dbg_value(i32 %inc87, !3091, !DIExpression(), !3093)
  br label %for.cond60, !dbg !3132, !llvm.loop !3133

for.cond90:                                       ; preds = %for.cond90.preheader, %for.body93
  %row89.0 = phi i32 [ %inc110, %for.body93 ], [ %cond, %for.cond90.preheader ], !dbg !3135
    #dbg_value(i32 %row89.0, !3136, !DIExpression(), !3137)
  %cmp91 = icmp slt i32 %row89.0, %nrows, !dbg !3138
  br i1 %cmp91, label %for.body93, label %for.inc117, !dbg !3099

for.body93:                                       ; preds = %for.cond90
  %cmp94 = icmp sgt i32 %row89.0, %pivot_row.0, !dbg !3140
    #dbg_value(i1 %cmp94, !3142, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !3143)
  %mul98 = mul nsw i32 %row89.0, %div, !dbg !3144
  %add.ptr99 = getelementptr inbounds i64, ptr %packed_A, i32 %mul98, !dbg !3145
  %call100 = call fastcc zeroext i8 @m_extract_element(ptr noundef nonnull %add.ptr99, i32 noundef %pivot_col.0) #6, !dbg !3146
    #dbg_value(i8 %call100, !3147, !DIExpression(), !3143)
  %conv105 = select i1 %cmp94, i8 %call100, i8 0, !dbg !3148
  %mul107 = mul nsw i32 %row89.0, %div, !dbg !3149
  %add.ptr108 = getelementptr inbounds i64, ptr %packed_A, i32 %mul107, !dbg !3150
  call fastcc void @vec_mul_add_u64(i32 noundef %div, ptr noundef nonnull %_pivot_row2, i8 noundef zeroext %conv105, ptr noundef nonnull %add.ptr108) #6, !dbg !3151
  %inc110 = add nsw i32 %row89.0, 1, !dbg !3152
    #dbg_value(i32 %inc110, !3136, !DIExpression(), !3137)
  br label %for.cond90, !dbg !3153, !llvm.loop !3154

for.inc117:                                       ; preds = %for.cond90
    #dbg_value(!DIArgList(i64 %pivot_is_zero.0.lcssa, i32 %pivot_row.0), !3013, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_plus_uconst, 1, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2974)
  %4 = trunc i64 %pivot_is_zero.0.lcssa to i32, !dbg !3156
  %5 = add i32 %4, 1, !dbg !3156
  %conv116 = add i32 %5, %pivot_row.0, !dbg !3156
    #dbg_value(i32 %conv116, !3013, !DIExpression(), !2974)
  %inc118 = add nuw i32 %pivot_col.0, 1, !dbg !3157
    #dbg_value(i32 %inc118, !3014, !DIExpression(), !3015)
  br label %for.cond3, !dbg !3158, !llvm.loop !3159

for.cond121:                                      ; preds = %for.cond121.preheader, %for.inc141
  %i120.0 = phi i32 [ %inc142, %for.inc141 ], [ 0, %for.cond121.preheader ], !dbg !3161
    #dbg_value(i32 %i120.0, !3162, !DIExpression(), !3163)
  %exitcond8 = icmp ne i32 %i120.0, %smax, !dbg !3164
  br i1 %exitcond8, label %for.body124, label %for.end143, !dbg !3018

for.body124:                                      ; preds = %for.cond121
  %mul126 = mul nsw i32 %i120.0, %div, !dbg !3166
  %add.ptr127 = getelementptr inbounds i64, ptr %packed_A, i32 %mul126, !dbg !3168
  call fastcc void @ef_unpack_m_vec(i32 noundef %div, ptr noundef nonnull %add.ptr127, ptr noundef nonnull %temp) #6, !dbg !3169
    #dbg_value(i32 0, !3170, !DIExpression(), !3172)
  br label %for.cond130, !dbg !3173

for.cond130:                                      ; preds = %for.body133, %for.body124
  %j129.0 = phi i32 [ 0, %for.body124 ], [ %inc139, %for.body133 ], !dbg !3174
    #dbg_value(i32 %j129.0, !3170, !DIExpression(), !3172)
  %exitcond7 = icmp ne i32 %j129.0, %smax5, !dbg !3175
  br i1 %exitcond7, label %for.body133, label %for.inc141, !dbg !3177

for.body133:                                      ; preds = %for.cond130
  %arrayidx134 = getelementptr inbounds nuw [160 x i8], ptr %temp, i32 0, i32 %j129.0, !dbg !3178
  %6 = load i8, ptr %arrayidx134, align 1, !dbg !3178
  %mul135 = mul nsw i32 %i120.0, %ncols, !dbg !3180
  %7 = getelementptr i8, ptr %A, i32 %mul135, !dbg !3181
  %arrayidx137 = getelementptr i8, ptr %7, i32 %j129.0, !dbg !3181
  store i8 %6, ptr %arrayidx137, align 1, !dbg !3182
  %inc139 = add nuw i32 %j129.0, 1, !dbg !3183
    #dbg_value(i32 %inc139, !3170, !DIExpression(), !3172)
  br label %for.cond130, !dbg !3184, !llvm.loop !3185

for.inc141:                                       ; preds = %for.cond130
  %inc142 = add nuw i32 %i120.0, 1, !dbg !3187
    #dbg_value(i32 %inc142, !3162, !DIExpression(), !3163)
  br label %for.cond121, !dbg !3188, !llvm.loop !3189

for.end143:                                       ; preds = %for.cond121
  call void @mayo_secure_clear(ptr noundef nonnull %temp, i32 noundef 160) #8, !dbg !3191
  call void @mayo_secure_clear(ptr noundef nonnull %_pivot_row, i32 noundef 80) #8, !dbg !3192
  call void @mayo_secure_clear(ptr noundef nonnull %_pivot_row2, i32 noundef 80) #8, !dbg !3193
  call void @mayo_secure_clear(ptr noundef nonnull %packed_A, i32 noundef 11360) #8, !dbg !3194
  ret void, !dbg !3195
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @ct_compare_8(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !3196 {
entry:
    #dbg_value(i8 %a, !3198, !DIExpression(), !3199)
    #dbg_value(i8 %b, !3200, !DIExpression(), !3199)
  %0 = icmp ne i8 %a, %b, !dbg !3201
  %conv3 = sext i1 %0 to i8, !dbg !3202
  %1 = load volatile i8, ptr @pqmayo_MAYO_5_ref_unsigned_char_blocker, align 1, !dbg !3203
  %xor5 = xor i8 %1, %conv3, !dbg !3204
  ret i8 %xor5, !dbg !3205
}

; Function Attrs: nounwind
define internal fastcc range(i64 0, 1085102592571150096) i64 @mul_fx8(i8 noundef zeroext %a, i64 noundef %b) unnamed_addr #0 !dbg !3206 {
entry:
    #dbg_value(i8 %a, !3209, !DIExpression(), !3210)
    #dbg_value(i64 %b, !3211, !DIExpression(), !3210)
  %0 = and i8 %a, 1, !dbg !3212
  %conv1 = zext nneg i8 %0 to i64, !dbg !3213
  %mul = mul nuw nsw i64 %b, %conv1, !dbg !3214
    #dbg_value(i64 %mul, !3215, !DIExpression(), !3210)
  %1 = and i8 %a, 2, !dbg !3216
  %conv4 = zext nneg i8 %1 to i64, !dbg !3217
  %mul5 = mul i64 %b, %conv4, !dbg !3218
  %xor = xor i64 %mul, %mul5, !dbg !3219
    #dbg_value(i64 %xor, !3215, !DIExpression(), !3210)
  %2 = and i8 %a, 4, !dbg !3220
  %conv8 = zext nneg i8 %2 to i64, !dbg !3221
  %mul9 = mul i64 %b, %conv8, !dbg !3222
  %xor10 = xor i64 %xor, %mul9, !dbg !3223
    #dbg_value(i64 %xor10, !3215, !DIExpression(), !3210)
  %3 = and i8 %a, 8, !dbg !3224
  %conv13 = zext nneg i8 %3 to i64, !dbg !3225
  %mul14 = mul i64 %b, %conv13, !dbg !3226
  %xor15 = xor i64 %xor10, %mul14, !dbg !3227
    #dbg_value(i64 %xor15, !3215, !DIExpression(), !3210)
    #dbg_value(i64 %xor15, !3228, !DIExpression(DW_OP_constu, 17361641481138401520, DW_OP_and, DW_OP_stack_value), !3210)
  %shr = lshr i64 %xor15, 4, !dbg !3229
  %and16 = lshr i64 %xor15, 3, !dbg !3230
  %shr18 = and i64 %and16, 1012762419733073422, !dbg !3230
  %4 = xor i64 %shr, %shr18, !dbg !3231
  %xor19 = xor i64 %4, %xor15, !dbg !3231
  %and20 = and i64 %xor19, 1085102592571150095, !dbg !3232
    #dbg_value(i64 %and20, !3233, !DIExpression(), !3210)
  ret i64 %and20, !dbg !3234
}

; Function Attrs: nounwind
define internal fastcc void @ef_pack_m_vec(ptr noundef %in, ptr noundef %out, i32 noundef %ncols) unnamed_addr #0 !dbg !3235 {
entry:
    #dbg_value(ptr %in, !3238, !DIExpression(), !3239)
    #dbg_value(ptr %out, !3240, !DIExpression(), !3239)
    #dbg_value(i32 %ncols, !3241, !DIExpression(), !3239)
    #dbg_value(ptr %out, !3242, !DIExpression(), !3239)
    #dbg_value(i32 0, !3243, !DIExpression(), !3239)
  br label %for.cond, !dbg !3244

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %add8, %for.body ], !dbg !3246
    #dbg_value(i32 %i.0, !3243, !DIExpression(), !3239)
  %add = or disjoint i32 %i.0, 1, !dbg !3247
  %cmp = icmp slt i32 %add, %ncols, !dbg !3249
  br i1 %cmp, label %for.body, label %for.end, !dbg !3250

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %in, i32 %i.0, !dbg !3251
  %0 = load i8, ptr %arrayidx, align 1, !dbg !3251
  %add2 = or disjoint i32 %i.0, 1, !dbg !3253
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %in, i32 %add2, !dbg !3254
  %1 = load i8, ptr %arrayidx3, align 1, !dbg !3254
  %shl5 = shl i8 %1, 4, !dbg !3255
  %or = or i8 %shl5, %0, !dbg !3256
  %div = lshr exact i32 %i.0, 1, !dbg !3257
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %out, i32 %div, !dbg !3258
  store i8 %or, ptr %arrayidx7, align 1, !dbg !3259
  %add8 = add nuw nsw i32 %i.0, 2, !dbg !3260
    #dbg_value(i32 %add8, !3243, !DIExpression(), !3239)
  br label %for.cond, !dbg !3261, !llvm.loop !3262

for.end:                                          ; preds = %for.cond
  %i.0.lcssa = phi i32 [ %i.0, %for.cond ], !dbg !3246
  %2 = and i32 %ncols, -2147483647, !dbg !3264
  %cmp9 = icmp eq i32 %2, 1, !dbg !3264
  br i1 %cmp9, label %if.then, label %if.end, !dbg !3264

if.then:                                          ; preds = %for.end
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %in, i32 %i.0.lcssa, !dbg !3266
  %3 = load i8, ptr %arrayidx12, align 1, !dbg !3266
  %div16 = lshr exact i32 %i.0.lcssa, 1, !dbg !3268
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %out, i32 %div16, !dbg !3269
  store i8 %3, ptr %arrayidx17, align 1, !dbg !3270
  br label %if.end, !dbg !3271

if.end:                                           ; preds = %if.then, %for.end
  ret void, !dbg !3272
}

; Function Attrs: nounwind
define internal fastcc i64 @ct_compare_64(i32 noundef %a, i32 noundef %b) unnamed_addr #0 !dbg !3273 {
entry:
    #dbg_value(i32 %a, !3276, !DIExpression(), !3277)
    #dbg_value(i32 %b, !3278, !DIExpression(), !3277)
  %xor = xor i32 %a, %b, !dbg !3279
  %0 = icmp sgt i32 %xor, 0, !dbg !3280
  %shr = sext i1 %0 to i64, !dbg !3280
  %1 = load volatile i64, ptr @pqmayo_MAYO_5_ref_uint64_t_blocker, align 8, !dbg !3281
  %xor1 = xor i64 %1, %shr, !dbg !3282
  ret i64 %xor1, !dbg !3283
}

; Function Attrs: nounwind
define internal fastcc i64 @ct_64_is_greater_than(i32 noundef %a, i32 noundef %b) unnamed_addr #0 !dbg !3284 {
entry:
    #dbg_value(i32 %a, !3285, !DIExpression(), !3286)
    #dbg_value(i32 %b, !3287, !DIExpression(), !3286)
    #dbg_value(!DIArgList(i32 %b, i32 %a), !3288, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_minus, DW_OP_stack_value), !3286)
  %0 = icmp slt i32 %b, %a, !dbg !3289
  %shr = sext i1 %0 to i64, !dbg !3289
  %1 = load volatile i64, ptr @pqmayo_MAYO_5_ref_uint64_t_blocker, align 8, !dbg !3290
  %xor = xor i64 %1, %shr, !dbg !3291
  ret i64 %xor, !dbg !3292
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @m_extract_element(ptr noundef %in, i32 noundef %index) unnamed_addr #0 !dbg !3293 {
entry:
    #dbg_value(ptr %in, !3296, !DIExpression(), !3297)
    #dbg_value(i32 %index, !3298, !DIExpression(), !3297)
  %div = sdiv i32 %index, 16, !dbg !3299
    #dbg_value(i32 %div, !3300, !DIExpression(), !3297)
  %rem = srem i32 %index, 16, !dbg !3301
    #dbg_value(i32 %rem, !3302, !DIExpression(), !3297)
  %arrayidx = getelementptr inbounds i64, ptr %in, i32 %div, !dbg !3303
  %0 = load i64, ptr %arrayidx, align 8, !dbg !3303
  %mul = shl nsw i32 %rem, 2, !dbg !3304
  %sh_prom = zext nneg i32 %mul to i64, !dbg !3305
  %shr = lshr i64 %0, %sh_prom, !dbg !3305
  %1 = trunc i64 %shr to i8, !dbg !3306
  %conv = and i8 %1, 15, !dbg !3306
  ret i8 %conv, !dbg !3307
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @inverse_f(i8 noundef zeroext %a) unnamed_addr #0 !dbg !3308 {
entry:
    #dbg_value(i8 %a, !3311, !DIExpression(), !3312)
  %call = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %a, i8 noundef zeroext %a) #6, !dbg !3313
    #dbg_value(i8 %call, !3314, !DIExpression(), !3312)
  %call1 = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %call, i8 noundef zeroext %call) #6, !dbg !3315
    #dbg_value(i8 %call1, !3316, !DIExpression(), !3312)
  %call2 = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %call1, i8 noundef zeroext %call1) #6, !dbg !3317
    #dbg_value(i8 %call2, !3318, !DIExpression(), !3312)
  %call3 = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %call, i8 noundef zeroext %call1) #6, !dbg !3319
    #dbg_value(i8 %call3, !3320, !DIExpression(), !3312)
  %call4 = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %call2, i8 noundef zeroext %call3) #6, !dbg !3321
    #dbg_value(i8 %call4, !3322, !DIExpression(), !3312)
  ret i8 %call4, !dbg !3323
}

; Function Attrs: nounwind
define internal fastcc void @vec_mul_add_u64(i32 noundef %legs, ptr noundef %in, i8 noundef zeroext %a, ptr noundef %acc) unnamed_addr #0 !dbg !3324 {
entry:
    #dbg_value(i32 %legs, !3327, !DIExpression(), !3328)
    #dbg_value(ptr %in, !3329, !DIExpression(), !3328)
    #dbg_value(i8 %a, !3330, !DIExpression(), !3328)
    #dbg_value(ptr %acc, !3331, !DIExpression(), !3328)
  %call = call fastcc i32 @mul_table.22(i8 noundef zeroext %a) #6, !dbg !3332
    #dbg_value(i32 %call, !3333, !DIExpression(), !3328)
    #dbg_value(i64 1229782938247303441, !3334, !DIExpression(), !3328)
    #dbg_value(i32 0, !3335, !DIExpression(), !3337)
  %smax = call i32 @llvm.smax.i32(i32 %legs, i32 0), !dbg !3338
  br label %for.cond, !dbg !3338

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !3339
    #dbg_value(i32 %i.0, !3335, !DIExpression(), !3337)
  %exitcond = icmp ne i32 %i.0, %smax, !dbg !3340
  br i1 %exitcond, label %for.body, label %for.end, !dbg !3342

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !3343
  %0 = load i64, ptr %arrayidx, align 8, !dbg !3343
  %and = and i64 %0, 1229782938247303441, !dbg !3345
  %and1 = and i32 %call, 255, !dbg !3346
  %conv = zext nneg i32 %and1 to i64, !dbg !3347
  %mul = mul i64 %and, %conv, !dbg !3348
  %shr = lshr i64 %0, 1, !dbg !3349
  %and3 = and i64 %shr, 1229782938247303441, !dbg !3350
  %shr4 = lshr i32 %call, 8, !dbg !3351
  %and5 = and i32 %shr4, 15, !dbg !3352
  %conv6 = zext nneg i32 %and5 to i64, !dbg !3353
  %mul7 = mul nuw i64 %and3, %conv6, !dbg !3354
  %xor = xor i64 %mul, %mul7, !dbg !3355
  %arrayidx8 = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !3356
  %1 = load i64, ptr %arrayidx8, align 8, !dbg !3356
  %shr9 = lshr i64 %1, 2, !dbg !3357
  %and10 = and i64 %shr9, 1229782938247303441, !dbg !3358
  %shr11 = lshr i32 %call, 16, !dbg !3359
  %and12 = and i32 %shr11, 15, !dbg !3360
  %conv13 = zext nneg i32 %and12 to i64, !dbg !3361
  %mul14 = mul nuw i64 %and10, %conv13, !dbg !3362
  %xor15 = xor i64 %xor, %mul14, !dbg !3363
  %arrayidx16 = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !3364
  %2 = load i64, ptr %arrayidx16, align 8, !dbg !3364
  %shr17 = lshr i64 %2, 3, !dbg !3365
  %and18 = and i64 %shr17, 1229782938247303441, !dbg !3366
  %shr19 = lshr i32 %call, 24, !dbg !3367
  %and20 = and i32 %shr19, 15, !dbg !3368
  %conv21 = zext nneg i32 %and20 to i64, !dbg !3369
  %mul22 = mul nuw i64 %and18, %conv21, !dbg !3370
  %xor23 = xor i64 %xor15, %mul22, !dbg !3371
  %arrayidx24 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !3372
  %3 = load i64, ptr %arrayidx24, align 8, !dbg !3373
  %xor25 = xor i64 %3, %xor23, !dbg !3373
  store i64 %xor25, ptr %arrayidx24, align 8, !dbg !3373
  %inc = add nuw i32 %i.0, 1, !dbg !3374
    #dbg_value(i32 %inc, !3335, !DIExpression(), !3337)
  br label %for.cond, !dbg !3375, !llvm.loop !3376

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3378
}

; Function Attrs: nounwind
define internal fastcc void @ef_unpack_m_vec(i32 noundef %legs, ptr noundef %in, ptr noundef %out) unnamed_addr #0 !dbg !3379 {
entry:
    #dbg_value(i32 %legs, !3382, !DIExpression(), !3383)
    #dbg_value(ptr %in, !3384, !DIExpression(), !3383)
    #dbg_value(ptr %out, !3385, !DIExpression(), !3383)
    #dbg_value(ptr %in, !3386, !DIExpression(), !3383)
    #dbg_value(i32 0, !3387, !DIExpression(), !3389)
  br label %for.cond, !dbg !3390

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %add8, %for.body ], !dbg !3391
    #dbg_value(i32 %i.0, !3387, !DIExpression(), !3389)
  %mul = shl nsw i32 %legs, 4, !dbg !3392
  %cmp = icmp slt i32 %i.0, %mul, !dbg !3394
  br i1 %cmp, label %for.body, label %for.end, !dbg !3395

for.body:                                         ; preds = %for.cond
  %div = lshr exact i32 %i.0, 1, !dbg !3396
  %arrayidx = getelementptr inbounds nuw i8, ptr %in, i32 %div, !dbg !3398
  %0 = load i8, ptr %arrayidx, align 1, !dbg !3398
  %1 = and i8 %0, 15, !dbg !3399
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %out, i32 %i.0, !dbg !3400
  store i8 %1, ptr %arrayidx2, align 1, !dbg !3401
  %div3 = lshr exact i32 %i.0, 1, !dbg !3402
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %in, i32 %div3, !dbg !3403
  %2 = load i8, ptr %arrayidx4, align 1, !dbg !3403
  %3 = lshr i8 %2, 4, !dbg !3404
  %add = or disjoint i32 %i.0, 1, !dbg !3405
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %out, i32 %add, !dbg !3406
  store i8 %3, ptr %arrayidx7, align 1, !dbg !3407
  %add8 = add nuw nsw i32 %i.0, 2, !dbg !3408
    #dbg_value(i32 %add8, !3387, !DIExpression(), !3389)
  br label %for.cond, !dbg !3409, !llvm.loop !3410

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3412
}

; Function Attrs: nounwind
define internal fastcc i32 @mul_table.22(i8 noundef zeroext %b) unnamed_addr #0 !dbg !3413 {
entry:
    #dbg_value(i8 %b, !3414, !DIExpression(), !3415)
  %conv = zext i8 %b to i32, !dbg !3416
  %mul = mul i32 %conv, 134480385, !dbg !3417
    #dbg_value(i32 %mul, !3418, !DIExpression(), !3415)
    #dbg_value(i32 -252645136, !3419, !DIExpression(), !3415)
  %and = and i32 %mul, -252645136, !dbg !3420
    #dbg_value(i32 %and, !3421, !DIExpression(), !3415)
  %shr = lshr exact i32 %and, 4, !dbg !3422
  %shr1 = lshr exact i32 %and, 3, !dbg !3423
  %0 = xor i32 %shr, %shr1, !dbg !3424
  %xor2 = xor i32 %0, %mul, !dbg !3424
  ret i32 %xor2, !dbg !3425
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @mul_f.23(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !3426 {
entry:
    #dbg_value(i8 %a, !3427, !DIExpression(), !3428)
    #dbg_value(i8 %b, !3429, !DIExpression(), !3428)
  %0 = load volatile i8, ptr @pqmayo_MAYO_5_ref_unsigned_char_blocker, align 1, !dbg !3430
  %xor1 = xor i8 %a, %0, !dbg !3431
    #dbg_value(i8 %xor1, !3427, !DIExpression(), !3428)
  %1 = trunc i8 %xor1 to i1, !dbg !3432
    #dbg_value(i8 poison, !3433, !DIExpression(), !3428)
  %2 = and i8 %xor1, 2, !dbg !3434
  %mul9 = mul i8 %2, %b, !dbg !3435
  %conv10 = select i1 %1, i8 %b, i8 0, !dbg !3432
  %xor11 = xor i8 %conv10, %mul9, !dbg !3436
    #dbg_value(i8 %xor11, !3433, !DIExpression(), !3428)
  %3 = and i8 %xor1, 4, !dbg !3437
  %mul16 = mul i8 %3, %b, !dbg !3438
  %xor18 = xor i8 %mul16, %xor11, !dbg !3439
    #dbg_value(i8 %xor18, !3433, !DIExpression(), !3428)
  %4 = and i8 %xor1, 8, !dbg !3440
  %mul23 = mul i8 %4, %b, !dbg !3441
  %xor25 = xor i8 %mul23, %xor18, !dbg !3442
    #dbg_value(i8 %xor25, !3433, !DIExpression(), !3428)
    #dbg_value(i8 %xor25, !3443, !DIExpression(DW_OP_constu, 18446744073709551600, DW_OP_and, DW_OP_stack_value), !3428)
  %5 = lshr i8 %xor25, 4, !dbg !3444
  %6 = lshr i8 %xor25, 3, !dbg !3445
  %7 = and i8 %6, 14, !dbg !3445
  %8 = xor i8 %5, %7, !dbg !3446
  %xor25.masked = and i8 %xor25, 15, !dbg !3447
  %9 = xor i8 %8, %xor25.masked, !dbg !3447
    #dbg_value(i8 %9, !3448, !DIExpression(), !3428)
  ret i8 %9, !dbg !3449
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @lincomb.24(ptr noundef %a, ptr noundef %b, i32 noundef %n, i32 noundef %m) unnamed_addr #0 !dbg !3450 {
entry:
    #dbg_value(ptr %a, !3451, !DIExpression(), !3452)
    #dbg_value(ptr %b, !3453, !DIExpression(), !3452)
    #dbg_value(i32 %n, !3454, !DIExpression(), !3452)
    #dbg_value(i32 %m, !3455, !DIExpression(), !3452)
    #dbg_value(i8 0, !3456, !DIExpression(), !3452)
    #dbg_value(i32 0, !3457, !DIExpression(), !3459)
  %smax = call i32 @llvm.smax.i32(i32 %n, i32 0), !dbg !3460
  br label %for.cond, !dbg !3460

for.cond:                                         ; preds = %for.body, %entry
  %ret.0 = phi i8 [ 0, %entry ], [ %call1, %for.body ], !dbg !3452
  %b.addr.0 = phi ptr [ %b, %entry ], [ %add.ptr, %for.body ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !3461
    #dbg_value(i32 %i.0, !3457, !DIExpression(), !3459)
    #dbg_value(ptr %b.addr.0, !3453, !DIExpression(), !3452)
    #dbg_value(i8 %ret.0, !3456, !DIExpression(), !3452)
  %exitcond = icmp ne i32 %i.0, %smax, !dbg !3462
  br i1 %exitcond, label %for.body, label %for.end, !dbg !3464

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %a, i32 %i.0, !dbg !3465
  %0 = load i8, ptr %arrayidx, align 1, !dbg !3465
  %1 = load i8, ptr %b.addr.0, align 1, !dbg !3467
  %call = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %0, i8 noundef zeroext %1) #6, !dbg !3468
  %call1 = call fastcc zeroext i8 @add_f.25(i8 noundef zeroext %call, i8 noundef zeroext %ret.0) #6, !dbg !3469
    #dbg_value(i8 %call1, !3456, !DIExpression(), !3452)
  %inc = add nuw i32 %i.0, 1, !dbg !3470
    #dbg_value(i32 %inc, !3457, !DIExpression(), !3459)
  %add.ptr = getelementptr inbounds i8, ptr %b.addr.0, i32 %m, !dbg !3471
    #dbg_value(ptr %add.ptr, !3453, !DIExpression(), !3452)
  br label %for.cond, !dbg !3472, !llvm.loop !3473

for.end:                                          ; preds = %for.cond
  %ret.0.lcssa = phi i8 [ %ret.0, %for.cond ], !dbg !3452
  ret i8 %ret.0.lcssa, !dbg !3475
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @add_f.25(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !3476 {
entry:
    #dbg_value(i8 %a, !3477, !DIExpression(), !3478)
    #dbg_value(i8 %b, !3479, !DIExpression(), !3478)
  %xor1 = xor i8 %a, %b, !dbg !3480
  ret i8 %xor1, !dbg !3481
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
!83 = distinct !DIGlobalVariable(name: "pqmayo_MAYO_5_ref_uint32_t_blocker", scope: !84, file: !99, line: 126, type: !104, isLocal: false, isDefinition: true)
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
!98 = distinct !DIGlobalVariable(name: "pqmayo_MAYO_5_ref_uint64_t_blocker", scope: !84, file: !99, line: 127, type: !100, isLocal: false, isDefinition: true)
!99 = !DIFile(filename: "../../../src/arithmetic.c", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!100 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !53)
!101 = !DIGlobalVariableExpression(var: !102, expr: !DIExpression())
!102 = distinct !DIGlobalVariable(name: "pqmayo_MAYO_5_ref_unsigned_char_blocker", scope: !84, file: !99, line: 128, type: !103, isLocal: false, isDefinition: true)
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
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sk_t", file: !79, line: 291, size: 6843264, elements: !168)
!168 = !{!169, !173}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !167, file: !79, line: 292, baseType: !170, size: 6829632)
!170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 6829632, elements: !171)
!171 = !{!172}
!172 = !DISubrange(count: 106713)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "O", scope: !167, file: !79, line: 293, baseType: !174, size: 13632, offset: 6829632)
!174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !175, size: 13632, elements: !177)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !54, line: 24, baseType: !176)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !56, line: 43, baseType: !51)
!177 = !{!178}
!178 = !DISubrange(count: 1704)
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
!261 = distinct !DISubprogram(name: "pqmayo_MAYO_5_ref_mayo_keypair", scope: !68, file: !68, line: 298, type: !262, scopeLine: 298, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !71)
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
!301 = distinct !DISubprogram(name: "pqmayo_MAYO_5_ref_mayo_keypair_compact", scope: !68, file: !68, line: 538, type: !262, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !71)
!302 = !DILocalVariable(name: "p", arg: 1, scope: !301, file: !68, line: 538, type: !264)
!303 = !DILocation(line: 0, scope: !301)
!304 = !DILocalVariable(name: "cpk", arg: 2, scope: !301, file: !68, line: 538, type: !61)
!305 = !DILocalVariable(name: "csk", arg: 3, scope: !301, file: !68, line: 539, type: !61)
!306 = !DILocalVariable(name: "ret", scope: !301, file: !68, line: 540, type: !86)
!307 = !DILocalVariable(name: "seed_sk", scope: !301, file: !68, line: 541, type: !61)
!308 = !DILocalVariable(name: "S", scope: !301, file: !68, line: 542, type: !309)
!309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 6944, elements: !310)
!310 = !{!311}
!311 = !DISubrange(count: 868)
!312 = !DILocation(line: 542, column: 19, scope: !301)
!313 = !DILocalVariable(name: "P", scope: !301, file: !68, line: 543, type: !170)
!314 = !DILocation(line: 543, column: 14, scope: !301)
!315 = !DILocalVariable(name: "P3", scope: !301, file: !68, line: 544, type: !316)
!316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 82944, elements: !317)
!317 = !{!318}
!318 = !DISubrange(count: 1296)
!319 = !DILocation(line: 544, column: 14, scope: !301)
!320 = !DILocalVariable(name: "O", scope: !301, file: !68, line: 547, type: !321)
!321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 13632, elements: !177)
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
!347 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 44928, elements: !348)
!348 = !{!349}
!349 = !DISubrange(count: 702)
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
!677 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 576, elements: !678)
!678 = !{!679}
!679 = !DISubrange(count: 9)
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
!704 = distinct !DISubprogram(name: "pqmayo_MAYO_5_ref_mayo_expand_sk", scope: !68, file: !68, line: 310, type: !705, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !71)
!705 = !DISubroutineType(types: !706)
!706 = !{!86, !264, !90, !707}
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 32)
!708 = !DIDerivedType(tag: DW_TAG_typedef, name: "sk_t", file: !79, line: 294, baseType: !709)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sk_t", file: !79, line: 291, size: 6843264, elements: !710)
!710 = !{!711, !712}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !709, file: !79, line: 292, baseType: !170, size: 6829632)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "O", scope: !709, file: !79, line: 293, baseType: !174, size: 13632, offset: 6829632)
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
!781 = !DILocation(line: 234, column: 84, scope: !779)
!782 = !DILocation(line: 234, column: 127, scope: !779)
!783 = !DILocation(line: 234, column: 137, scope: !779)
!784 = !DILocation(line: 234, column: 108, scope: !779)
!785 = !DILocation(line: 234, column: 17, scope: !779)
!786 = !DILocation(line: 235, column: 47, scope: !779)
!787 = !DILocation(line: 235, column: 88, scope: !779)
!788 = !DILocation(line: 235, column: 84, scope: !779)
!789 = !DILocation(line: 235, column: 127, scope: !779)
!790 = !DILocation(line: 235, column: 137, scope: !779)
!791 = !DILocation(line: 235, column: 108, scope: !779)
!792 = !DILocation(line: 235, column: 17, scope: !779)
!793 = !DILocation(line: 233, column: 44, scope: !777)
!794 = !DILocation(line: 233, column: 13, scope: !777)
!795 = distinct !{!795, !771, !796, !388}
!796 = !DILocation(line: 236, column: 13, scope: !772)
!797 = !DILocation(line: 0, scope: !770)
!798 = !DILocation(line: 228, column: 39, scope: !767)
!799 = !DILocation(line: 228, column: 9, scope: !767)
!800 = distinct !{!800, !760, !801, !388}
!801 = !DILocation(line: 238, column: 9, scope: !761)
!802 = !DILocation(line: 227, column: 35, scope: !758)
!803 = !DILocation(line: 227, column: 5, scope: !758)
!804 = distinct !{!804, !759, !805, !388}
!805 = !DILocation(line: 239, column: 5, scope: !752)
!806 = !DILocation(line: 240, column: 1, scope: !741)
!807 = distinct !DISubprogram(name: "pqmayo_MAYO_5_ref_mayo_sign_signature", scope: !68, file: !68, line: 359, type: !808, scopeLine: 361, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !71)
!808 = !DISubroutineType(types: !809)
!809 = !{!86, !264, !61, !810, !90, !58, !90}
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 32)
!811 = !DILocalVariable(name: "p", arg: 1, scope: !807, file: !68, line: 359, type: !264)
!812 = !DILocation(line: 0, scope: !807)
!813 = !DILocalVariable(name: "sig", arg: 2, scope: !807, file: !68, line: 359, type: !61)
!814 = !DILocalVariable(name: "siglen", arg: 3, scope: !807, file: !68, line: 360, type: !810)
!815 = !DILocalVariable(name: "m", arg: 4, scope: !807, file: !68, line: 360, type: !90)
!816 = !DILocalVariable(name: "mlen", arg: 5, scope: !807, file: !68, line: 361, type: !58)
!817 = !DILocalVariable(name: "csk", arg: 6, scope: !807, file: !68, line: 361, type: !90)
!818 = !DILocalVariable(name: "ret", scope: !807, file: !68, line: 362, type: !86)
!819 = !DILocalVariable(name: "tenc", scope: !807, file: !68, line: 363, type: !820)
!820 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 568, elements: !821)
!821 = !{!822}
!822 = !DISubrange(count: 71)
!823 = !DILocation(line: 363, column: 19, scope: !807)
!824 = !DILocalVariable(name: "t", scope: !807, file: !68, line: 363, type: !825)
!825 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 1136, elements: !826)
!826 = !{!827}
!827 = !DISubrange(count: 142)
!828 = !DILocation(line: 363, column: 38, scope: !807)
!829 = !DILocalVariable(name: "y", scope: !807, file: !68, line: 364, type: !825)
!830 = !DILocation(line: 364, column: 19, scope: !807)
!831 = !DILocalVariable(name: "salt", scope: !807, file: !68, line: 365, type: !832)
!832 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 320, elements: !833)
!833 = !{!834}
!834 = !DISubrange(count: 40)
!835 = !DILocation(line: 365, column: 19, scope: !807)
!836 = !DILocalVariable(name: "V", scope: !807, file: !68, line: 366, type: !837)
!837 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 7392, elements: !838)
!838 = !{!839}
!839 = !DISubrange(count: 924)
!840 = !DILocation(line: 366, column: 19, scope: !807)
!841 = !DILocalVariable(name: "Vdec", scope: !807, file: !68, line: 366, type: !321)
!842 = !DILocation(line: 366, column: 57, scope: !807)
!843 = !DILocalVariable(name: "A", scope: !807, file: !68, line: 367, type: !844)
!844 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 167040, elements: !845)
!845 = !{!846}
!846 = !DISubrange(count: 20880)
!847 = !DILocation(line: 367, column: 19, scope: !807)
!848 = !DILocalVariable(name: "x", scope: !807, file: !68, line: 368, type: !849)
!849 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 14784, elements: !850)
!850 = !{!851}
!851 = !DISubrange(count: 1848)
!852 = !DILocation(line: 368, column: 19, scope: !807)
!853 = !DILocalVariable(name: "r", scope: !807, file: !68, line: 369, type: !854)
!854 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 1160, elements: !855)
!855 = !{!856}
!856 = !DISubrange(count: 145)
!857 = !DILocation(line: 369, column: 19, scope: !807)
!858 = !DILocalVariable(name: "s", scope: !807, file: !68, line: 370, type: !849)
!859 = !DILocation(line: 370, column: 19, scope: !807)
!860 = !DILocalVariable(name: "sk", scope: !807, file: !68, line: 372, type: !708, align: 256)
!861 = !DILocation(line: 372, column: 22, scope: !807)
!862 = !DILocalVariable(name: "Ox", scope: !807, file: !68, line: 373, type: !825)
!863 = !DILocation(line: 373, column: 19, scope: !807)
!864 = !DILocalVariable(name: "tmp", scope: !807, file: !68, line: 374, type: !854)
!865 = !DILocation(line: 374, column: 19, scope: !807)
!866 = !DILocalVariable(name: "param_m", scope: !807, file: !68, line: 378, type: !324)
!867 = !DILocalVariable(name: "param_n", scope: !807, file: !68, line: 379, type: !324)
!868 = !DILocalVariable(name: "param_o", scope: !807, file: !68, line: 380, type: !324)
!869 = !DILocalVariable(name: "param_k", scope: !807, file: !68, line: 381, type: !324)
!870 = !DILocalVariable(name: "param_v", scope: !807, file: !68, line: 382, type: !324)
!871 = !DILocalVariable(name: "param_m_bytes", scope: !807, file: !68, line: 383, type: !324)
!872 = !DILocalVariable(name: "param_v_bytes", scope: !807, file: !68, line: 384, type: !324)
!873 = !DILocalVariable(name: "param_r_bytes", scope: !807, file: !68, line: 385, type: !324)
!874 = !DILocalVariable(name: "param_sig_bytes", scope: !807, file: !68, line: 386, type: !324)
!875 = !DILocalVariable(name: "param_A_cols", scope: !807, file: !68, line: 387, type: !324)
!876 = !DILocalVariable(name: "param_digest_bytes", scope: !807, file: !68, line: 388, type: !324)
!877 = !DILocalVariable(name: "param_sk_seed_bytes", scope: !807, file: !68, line: 389, type: !324)
!878 = !DILocalVariable(name: "param_salt_bytes", scope: !807, file: !68, line: 390, type: !324)
!879 = !DILocation(line: 392, column: 11, scope: !807)
!880 = !DILocation(line: 393, column: 13, scope: !881)
!881 = distinct !DILexicalBlock(scope: !807, file: !68, line: 393, column: 9)
!882 = !DILocalVariable(name: "seed_sk", scope: !807, file: !68, line: 371, type: !90)
!883 = !DILocation(line: 401, column: 5, scope: !807)
!884 = !DILocalVariable(name: "P1", scope: !807, file: !68, line: 403, type: !52)
!885 = !DILocation(line: 404, column: 23, scope: !807)
!886 = !DILocalVariable(name: "L", scope: !807, file: !68, line: 404, type: !52)
!887 = !DILocalVariable(name: "Mtmp", scope: !807, file: !68, line: 405, type: !316)
!888 = !DILocation(line: 405, column: 14, scope: !807)
!889 = !DILocation(line: 420, column: 25, scope: !890)
!890 = distinct !DILexicalBlock(scope: !807, file: !68, line: 420, column: 9)
!891 = !DILocation(line: 420, column: 9, scope: !890)
!892 = !DILocation(line: 420, column: 65, scope: !890)
!893 = !DILocation(line: 427, column: 37, scope: !807)
!894 = !DILocation(line: 427, column: 5, scope: !807)
!895 = !DILocation(line: 429, column: 5, scope: !807)
!896 = !DILocation(line: 437, column: 16, scope: !807)
!897 = !DILocation(line: 437, column: 5, scope: !807)
!898 = !DILocation(line: 438, column: 59, scope: !807)
!899 = !DILocalVariable(name: "ctrbyte", scope: !807, file: !68, line: 375, type: !61)
!900 = !DILocation(line: 440, column: 5, scope: !807)
!901 = !DILocation(line: 442, column: 5, scope: !807)
!902 = !DILocalVariable(name: "ctr", scope: !903, file: !68, line: 444, type: !86)
!903 = distinct !DILexicalBlock(scope: !807, file: !68, line: 444, column: 5)
!904 = !DILocation(line: 0, scope: !903)
!905 = !DILocation(line: 466, column: 18, scope: !906)
!906 = distinct !DILexicalBlock(scope: !907, file: !68, line: 444, column: 42)
!907 = distinct !DILexicalBlock(scope: !903, file: !68, line: 444, column: 5)
!908 = !DILocation(line: 444, column: 10, scope: !903)
!909 = !DILocation(line: 444, scope: !903)
!910 = !DILocation(line: 444, column: 27, scope: !907)
!911 = !DILocation(line: 444, column: 5, scope: !903)
!912 = !DILocation(line: 445, column: 20, scope: !906)
!913 = !DILocation(line: 445, column: 18, scope: !906)
!914 = !DILocation(line: 447, column: 9, scope: !906)
!915 = !DILocalVariable(name: "i", scope: !916, file: !68, line: 451, type: !86)
!916 = distinct !DILexicalBlock(scope: !906, file: !68, line: 451, column: 9)
!917 = !DILocation(line: 0, scope: !916)
!918 = !DILocation(line: 451, column: 14, scope: !916)
!919 = !DILocation(line: 451, scope: !916)
!920 = !DILocation(line: 451, column: 27, scope: !921)
!921 = distinct !DILexicalBlock(scope: !916, file: !68, line: 451, column: 9)
!922 = !DILocation(line: 451, column: 9, scope: !916)
!923 = !DILocation(line: 452, column: 26, scope: !924)
!924 = distinct !DILexicalBlock(scope: !921, file: !68, line: 451, column: 48)
!925 = !DILocation(line: 452, column: 22, scope: !924)
!926 = !DILocation(line: 452, column: 52, scope: !924)
!927 = !DILocation(line: 452, column: 48, scope: !924)
!928 = !DILocation(line: 452, column: 13, scope: !924)
!929 = !DILocation(line: 451, column: 43, scope: !921)
!930 = !DILocation(line: 451, column: 9, scope: !921)
!931 = distinct !{!931, !922, !932, !388}
!932 = !DILocation(line: 453, column: 9, scope: !916)
!933 = !DILocation(line: 456, column: 9, scope: !906)
!934 = !DILocation(line: 458, column: 9, scope: !906)
!935 = !DILocation(line: 459, column: 9, scope: !906)
!936 = !DILocalVariable(name: "i", scope: !937, file: !68, line: 461, type: !86)
!937 = distinct !DILexicalBlock(scope: !906, file: !68, line: 461, column: 9)
!938 = !DILocation(line: 0, scope: !937)
!939 = !DILocation(line: 461, column: 14, scope: !937)
!940 = !DILocation(line: 461, scope: !937)
!941 = !DILocation(line: 461, column: 27, scope: !942)
!942 = distinct !DILexicalBlock(scope: !937, file: !68, line: 461, column: 9)
!943 = !DILocation(line: 461, column: 9, scope: !937)
!944 = !DILocation(line: 463, column: 20, scope: !945)
!945 = distinct !DILexicalBlock(scope: !942, file: !68, line: 462, column: 9)
!946 = !DILocation(line: 463, column: 43, scope: !945)
!947 = !DILocation(line: 463, column: 13, scope: !945)
!948 = !DILocation(line: 463, column: 48, scope: !945)
!949 = !DILocation(line: 461, column: 39, scope: !942)
!950 = !DILocation(line: 461, column: 9, scope: !942)
!951 = distinct !{!951, !943, !952, !388}
!952 = !DILocation(line: 464, column: 9, scope: !937)
!953 = !DILocation(line: 466, column: 9, scope: !906)
!954 = !DILocation(line: 470, column: 13, scope: !955)
!955 = distinct !DILexicalBlock(scope: !906, file: !68, line: 470, column: 13)
!956 = !DILocation(line: 473, column: 13, scope: !957)
!957 = distinct !DILexicalBlock(scope: !955, file: !68, line: 472, column: 16)
!958 = !DILocation(line: 474, column: 13, scope: !957)
!959 = !DILocation(line: 444, column: 35, scope: !907)
!960 = !DILocation(line: 444, column: 5, scope: !907)
!961 = distinct !{!961, !911, !962, !388}
!962 = !DILocation(line: 476, column: 5, scope: !903)
!963 = !DILocalVariable(name: "i", scope: !964, file: !68, line: 478, type: !86)
!964 = distinct !DILexicalBlock(scope: !807, file: !68, line: 478, column: 5)
!965 = !DILocation(line: 0, scope: !964)
!966 = !DILocation(line: 478, column: 10, scope: !964)
!967 = !DILocation(line: 478, scope: !964)
!968 = !DILocation(line: 478, column: 23, scope: !969)
!969 = distinct !DILexicalBlock(scope: !964, file: !68, line: 478, column: 5)
!970 = !DILocation(line: 478, column: 5, scope: !964)
!971 = !DILocation(line: 479, column: 23, scope: !972)
!972 = distinct !DILexicalBlock(scope: !969, file: !68, line: 478, column: 44)
!973 = !DILocation(line: 479, column: 19, scope: !972)
!974 = !DILocalVariable(name: "vi", scope: !807, file: !68, line: 376, type: !61)
!975 = !DILocation(line: 480, column: 20, scope: !972)
!976 = !DILocation(line: 480, column: 29, scope: !972)
!977 = !DILocation(line: 480, column: 25, scope: !972)
!978 = !DILocation(line: 480, column: 9, scope: !972)
!979 = !DILocation(line: 481, column: 31, scope: !972)
!980 = !DILocation(line: 481, column: 27, scope: !972)
!981 = !DILocation(line: 481, column: 9, scope: !972)
!982 = !DILocation(line: 482, column: 22, scope: !972)
!983 = !DILocation(line: 482, column: 18, scope: !972)
!984 = !DILocation(line: 482, column: 32, scope: !972)
!985 = !DILocation(line: 482, column: 61, scope: !972)
!986 = !DILocation(line: 482, column: 57, scope: !972)
!987 = !DILocation(line: 482, column: 9, scope: !972)
!988 = !DILocation(line: 478, column: 39, scope: !969)
!989 = !DILocation(line: 478, column: 5, scope: !969)
!990 = distinct !{!990, !970, !991, !388}
!991 = !DILocation(line: 483, column: 5, scope: !964)
!992 = !DILocation(line: 484, column: 5, scope: !807)
!993 = !DILocation(line: 486, column: 34, scope: !807)
!994 = !DILocation(line: 486, column: 5, scope: !807)
!995 = !DILocation(line: 487, column: 13, scope: !807)
!996 = !DILocation(line: 487, column: 5, scope: !807)
!997 = !DILabel(scope: !807, name: "err", file: !68, line: 489)
!998 = !DILocation(line: 489, column: 1, scope: !807)
!999 = !DILocation(line: 490, column: 5, scope: !807)
!1000 = !DILocation(line: 491, column: 5, scope: !807)
!1001 = !DILocation(line: 492, column: 5, scope: !807)
!1002 = !DILocation(line: 493, column: 5, scope: !807)
!1003 = !DILocation(line: 494, column: 26, scope: !807)
!1004 = !DILocation(line: 494, column: 5, scope: !807)
!1005 = !DILocation(line: 495, column: 5, scope: !807)
!1006 = !DILocation(line: 496, column: 5, scope: !807)
!1007 = !DILocation(line: 497, column: 5, scope: !807)
!1008 = !DILocation(line: 498, column: 5, scope: !807)
!1009 = !DILocation(line: 499, column: 5, scope: !807)
!1010 = distinct !DISubprogram(name: "compute_M_and_VPV", scope: !408, file: !408, line: 244, type: !1011, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !71)
!1011 = !DISubroutineType(types: !1012)
!1012 = !{null, !264, !90, !411, !411, !52, !52}
!1013 = !DILocalVariable(name: "p", arg: 1, scope: !1010, file: !408, line: 244, type: !264)
!1014 = !DILocation(line: 0, scope: !1010)
!1015 = !DILocalVariable(name: "Vdec", arg: 2, scope: !1010, file: !408, line: 244, type: !90)
!1016 = !DILocalVariable(name: "L", arg: 3, scope: !1010, file: !408, line: 244, type: !411)
!1017 = !DILocalVariable(name: "P1", arg: 4, scope: !1010, file: !408, line: 244, type: !411)
!1018 = !DILocalVariable(name: "VL", arg: 5, scope: !1010, file: !408, line: 244, type: !52)
!1019 = !DILocalVariable(name: "VP1V", arg: 6, scope: !1010, file: !408, line: 244, type: !52)
!1020 = !DILocalVariable(name: "param_k", scope: !1010, file: !408, line: 246, type: !324)
!1021 = !DILocalVariable(name: "param_v", scope: !1010, file: !408, line: 247, type: !324)
!1022 = !DILocalVariable(name: "param_o", scope: !1010, file: !408, line: 248, type: !324)
!1023 = !DILocation(line: 251, column: 5, scope: !1010)
!1024 = !DILocalVariable(name: "Pv", scope: !1010, file: !408, line: 254, type: !1025)
!1025 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 981504, elements: !1026)
!1026 = !{!1027}
!1027 = !DISubrange(count: 15336)
!1028 = !DILocation(line: 254, column: 14, scope: !1010)
!1029 = !DILocation(line: 255, column: 5, scope: !1010)
!1030 = !DILocation(line: 256, column: 5, scope: !1010)
!1031 = !DILocation(line: 257, column: 1, scope: !1010)
!1032 = distinct !DISubprogram(name: "compute_rhs", scope: !68, file: !68, line: 43, type: !1033, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !71)
!1033 = !DISubroutineType(types: !1034)
!1034 = !{null, !264, !52, !90, !61}
!1035 = !DILocalVariable(name: "p", arg: 1, scope: !1032, file: !68, line: 43, type: !264)
!1036 = !DILocation(line: 0, scope: !1032)
!1037 = !DILocalVariable(name: "vPv", arg: 2, scope: !1032, file: !68, line: 43, type: !52)
!1038 = !DILocalVariable(name: "t", arg: 3, scope: !1032, file: !68, line: 43, type: !90)
!1039 = !DILocalVariable(name: "y", arg: 4, scope: !1032, file: !68, line: 43, type: !61)
!1040 = !DILocalVariable(name: "top_pos", scope: !1032, file: !68, line: 48, type: !1041)
!1041 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!1042 = !DILocalVariable(name: "m_vec_limbs", scope: !1032, file: !68, line: 49, type: !1041)
!1043 = !DILocalVariable(name: "mask", scope: !1044, file: !68, line: 53, type: !53)
!1044 = distinct !DILexicalBlock(scope: !1045, file: !68, line: 52, column: 29)
!1045 = distinct !DILexicalBlock(scope: !1032, file: !68, line: 52, column: 8)
!1046 = !DILocation(line: 0, scope: !1044)
!1047 = !DILocalVariable(name: "i", scope: !1048, file: !68, line: 56, type: !86)
!1048 = distinct !DILexicalBlock(scope: !1044, file: !68, line: 56, column: 9)
!1049 = !DILocation(line: 0, scope: !1048)
!1050 = !DILocation(line: 56, column: 14, scope: !1048)
!1051 = !DILocation(line: 56, scope: !1048)
!1052 = !DILocation(line: 56, column: 27, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1048, file: !68, line: 56, column: 9)
!1054 = !DILocation(line: 56, column: 9, scope: !1048)
!1055 = !DILocation(line: 58, column: 13, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1053, file: !68, line: 57, column: 9)
!1057 = !DILocation(line: 58, column: 50, scope: !1056)
!1058 = !DILocation(line: 56, column: 53, scope: !1053)
!1059 = !DILocation(line: 56, column: 9, scope: !1053)
!1060 = distinct !{!1060, !1054, !1061, !388}
!1061 = !DILocation(line: 59, column: 9, scope: !1048)
!1062 = !DILocalVariable(name: "temp", scope: !1032, file: !68, line: 62, type: !677)
!1063 = !DILocation(line: 62, column: 14, scope: !1032)
!1064 = !DILocalVariable(name: "temp_bytes", scope: !1032, file: !68, line: 63, type: !61)
!1065 = !DILocalVariable(name: "i", scope: !1066, file: !68, line: 64, type: !86)
!1066 = distinct !DILexicalBlock(scope: !1032, file: !68, line: 64, column: 5)
!1067 = !DILocation(line: 0, scope: !1066)
!1068 = !DILocation(line: 64, column: 10, scope: !1066)
!1069 = !DILocation(line: 64, scope: !1066)
!1070 = !DILocation(line: 64, column: 36, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1066, file: !68, line: 64, column: 5)
!1072 = !DILocation(line: 64, column: 5, scope: !1066)
!1073 = !DILocation(line: 65, column: 9, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !1075, file: !68, line: 65, column: 9)
!1075 = distinct !DILexicalBlock(scope: !1071, file: !68, line: 64, column: 48)
!1076 = !DILocation(line: 99, column: 5, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !1032, file: !68, line: 99, column: 5)
!1078 = !DILocation(line: 65, scope: !1074)
!1079 = !DILocalVariable(name: "j", scope: !1074, file: !68, line: 65, type: !86)
!1080 = !DILocation(line: 0, scope: !1074)
!1081 = !DILocation(line: 65, column: 27, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1074, file: !68, line: 65, column: 9)
!1083 = !DILocation(line: 67, column: 34, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1082, file: !68, line: 65, column: 46)
!1085 = !DILocation(line: 67, column: 54, scope: !1084)
!1086 = !DILocation(line: 67, column: 33, scope: !1084)
!1087 = !DILocalVariable(name: "top", scope: !1084, file: !68, line: 67, type: !51)
!1088 = !DILocation(line: 0, scope: !1084)
!1089 = !DILocation(line: 68, column: 13, scope: !1084)
!1090 = !DILocation(line: 68, column: 33, scope: !1084)
!1091 = !DILocalVariable(name: "k", scope: !1092, file: !68, line: 69, type: !86)
!1092 = distinct !DILexicalBlock(scope: !1084, file: !68, line: 69, column: 13)
!1093 = !DILocation(line: 0, scope: !1092)
!1094 = !DILocation(line: 69, column: 17, scope: !1092)
!1095 = !DILocation(line: 69, scope: !1092)
!1096 = !DILocation(line: 69, column: 43, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1092, file: !68, line: 69, column: 13)
!1098 = !DILocation(line: 69, column: 13, scope: !1092)
!1099 = !DILocation(line: 74, column: 13, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !1084, file: !68, line: 74, column: 13)
!1101 = !DILocation(line: 70, column: 30, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1097, file: !68, line: 69, column: 52)
!1103 = !DILocation(line: 70, column: 38, scope: !1102)
!1104 = !DILocation(line: 70, column: 23, scope: !1102)
!1105 = !DILocation(line: 70, column: 17, scope: !1102)
!1106 = !DILocation(line: 70, column: 27, scope: !1102)
!1107 = !DILocation(line: 71, column: 17, scope: !1102)
!1108 = !DILocation(line: 71, column: 25, scope: !1102)
!1109 = !DILocation(line: 69, column: 49, scope: !1097)
!1110 = !DILocation(line: 69, column: 13, scope: !1097)
!1111 = distinct !{!1111, !1098, !1112, !388}
!1112 = !DILocation(line: 72, column: 13, scope: !1092)
!1113 = !DILocation(line: 74, scope: !1100)
!1114 = !DILocalVariable(name: "jj", scope: !1100, file: !68, line: 74, type: !86)
!1115 = !DILocation(line: 0, scope: !1100)
!1116 = !DILocation(line: 74, column: 33, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !1100, file: !68, line: 74, column: 13)
!1118 = !DILocation(line: 92, column: 13, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !1084, file: !68, line: 92, column: 13)
!1120 = !DILocation(line: 75, column: 22, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1122, file: !68, line: 75, column: 20)
!1122 = distinct !DILexicalBlock(scope: !1117, file: !68, line: 74, column: 53)
!1123 = !DILocation(line: 75, column: 25, scope: !1121)
!1124 = !DILocation(line: 79, column: 52, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1121, file: !68, line: 75, column: 30)
!1126 = !DILocation(line: 79, column: 41, scope: !1125)
!1127 = !DILocation(line: 79, column: 34, scope: !1125)
!1128 = !DILocation(line: 79, column: 21, scope: !1125)
!1129 = !DILocation(line: 79, column: 38, scope: !1125)
!1130 = !DILocation(line: 81, column: 17, scope: !1125)
!1131 = !DILocation(line: 86, column: 52, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !1121, file: !68, line: 82, column: 22)
!1133 = !DILocation(line: 86, column: 41, scope: !1132)
!1134 = !DILocation(line: 86, column: 73, scope: !1132)
!1135 = !DILocation(line: 86, column: 34, scope: !1132)
!1136 = !DILocation(line: 86, column: 21, scope: !1132)
!1137 = !DILocation(line: 86, column: 38, scope: !1132)
!1138 = !DILocation(line: 74, column: 49, scope: !1117)
!1139 = !DILocation(line: 74, column: 13, scope: !1117)
!1140 = distinct !{!1140, !1099, !1141, !388}
!1141 = !DILocation(line: 89, column: 13, scope: !1100)
!1142 = !DILocation(line: 92, scope: !1119)
!1143 = !DILocalVariable(name: "k", scope: !1119, file: !68, line: 92, type: !58)
!1144 = !DILocation(line: 0, scope: !1119)
!1145 = !DILocation(line: 92, column: 31, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1119, file: !68, line: 92, column: 13)
!1147 = !DILocation(line: 93, column: 36, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !1146, file: !68, line: 92, column: 51)
!1149 = !DILocation(line: 93, column: 49, scope: !1148)
!1150 = !DILocation(line: 93, column: 28, scope: !1148)
!1151 = !DILocation(line: 93, column: 78, scope: !1148)
!1152 = !DILocation(line: 93, column: 91, scope: !1148)
!1153 = !DILocation(line: 93, column: 104, scope: !1148)
!1154 = !DILocation(line: 93, column: 83, scope: !1148)
!1155 = !DILocation(line: 93, column: 82, scope: !1148)
!1156 = !DILocation(line: 93, column: 73, scope: !1148)
!1157 = !DILocation(line: 93, column: 17, scope: !1148)
!1158 = !DILocation(line: 93, column: 25, scope: !1148)
!1159 = !DILocation(line: 92, column: 48, scope: !1146)
!1160 = !DILocation(line: 92, column: 13, scope: !1146)
!1161 = distinct !{!1161, !1118, !1162, !388}
!1162 = !DILocation(line: 94, column: 13, scope: !1119)
!1163 = !DILocation(line: 65, column: 42, scope: !1082)
!1164 = !DILocation(line: 65, column: 9, scope: !1082)
!1165 = distinct !{!1165, !1073, !1166, !388}
!1166 = !DILocation(line: 95, column: 9, scope: !1074)
!1167 = !DILocation(line: 64, column: 44, scope: !1071)
!1168 = !DILocation(line: 64, column: 5, scope: !1071)
!1169 = distinct !{!1169, !1072, !1170, !388}
!1170 = !DILocation(line: 96, column: 5, scope: !1066)
!1171 = !DILocation(line: 99, scope: !1077)
!1172 = !DILocalVariable(name: "i", scope: !1077, file: !68, line: 99, type: !86)
!1173 = !DILocation(line: 0, scope: !1077)
!1174 = !DILocation(line: 99, column: 23, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !1077, file: !68, line: 99, column: 5)
!1176 = !DILocation(line: 105, column: 18, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1175, file: !68, line: 100, column: 5)
!1178 = !DILocation(line: 105, column: 40, scope: !1177)
!1179 = !DILocation(line: 105, column: 28, scope: !1177)
!1180 = !DILocation(line: 105, column: 44, scope: !1177)
!1181 = !DILocation(line: 105, column: 25, scope: !1177)
!1182 = !DILocation(line: 105, column: 9, scope: !1177)
!1183 = !DILocation(line: 105, column: 16, scope: !1177)
!1184 = !DILocation(line: 106, column: 21, scope: !1177)
!1185 = !DILocation(line: 106, column: 18, scope: !1177)
!1186 = !DILocation(line: 106, column: 40, scope: !1177)
!1187 = !DILocation(line: 106, column: 28, scope: !1177)
!1188 = !DILocation(line: 106, column: 44, scope: !1177)
!1189 = !DILocation(line: 106, column: 25, scope: !1177)
!1190 = !DILocation(line: 106, column: 12, scope: !1177)
!1191 = !DILocation(line: 106, column: 9, scope: !1177)
!1192 = !DILocation(line: 106, column: 16, scope: !1177)
!1193 = !DILocation(line: 99, column: 38, scope: !1175)
!1194 = !DILocation(line: 99, column: 5, scope: !1175)
!1195 = distinct !{!1195, !1076, !1196, !388}
!1196 = !DILocation(line: 108, column: 5, scope: !1077)
!1197 = !DILocation(line: 109, column: 1, scope: !1032)
!1198 = distinct !DISubprogram(name: "compute_A", scope: !68, file: !68, line: 154, type: !1199, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !71)
!1199 = !DISubroutineType(types: !1200)
!1200 = !{null, !264, !52, !61}
!1201 = !DILocalVariable(name: "p", arg: 1, scope: !1198, file: !68, line: 154, type: !264)
!1202 = !DILocation(line: 0, scope: !1198)
!1203 = !DILocalVariable(name: "VtL", arg: 2, scope: !1198, file: !68, line: 154, type: !52)
!1204 = !DILocalVariable(name: "A_out", arg: 3, scope: !1198, file: !68, line: 154, type: !61)
!1205 = !DILocalVariable(name: "bits_to_shift", scope: !1198, file: !68, line: 159, type: !86)
!1206 = !DILocalVariable(name: "words_to_shift", scope: !1198, file: !68, line: 160, type: !86)
!1207 = !DILocalVariable(name: "m_vec_limbs", scope: !1198, file: !68, line: 161, type: !324)
!1208 = !DILocalVariable(name: "A", scope: !1198, file: !68, line: 162, type: !1209)
!1209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 165888, elements: !1210)
!1210 = !{!1211}
!1211 = !DISubrange(count: 2592)
!1212 = !DILocation(line: 162, column: 14, scope: !1198)
!1213 = !DILocalVariable(name: "A_width", scope: !1198, file: !68, line: 163, type: !58)
!1214 = !DILocalVariable(name: "mask", scope: !1215, file: !68, line: 168, type: !53)
!1215 = distinct !DILexicalBlock(scope: !1216, file: !68, line: 167, column: 29)
!1216 = distinct !DILexicalBlock(scope: !1198, file: !68, line: 167, column: 8)
!1217 = !DILocation(line: 0, scope: !1215)
!1218 = !DILocalVariable(name: "i", scope: !1219, file: !68, line: 171, type: !86)
!1219 = distinct !DILexicalBlock(scope: !1215, file: !68, line: 171, column: 9)
!1220 = !DILocation(line: 0, scope: !1219)
!1221 = !DILocation(line: 171, column: 14, scope: !1219)
!1222 = !DILocation(line: 171, scope: !1219)
!1223 = !DILocation(line: 171, column: 27, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1219, file: !68, line: 171, column: 9)
!1225 = !DILocation(line: 171, column: 9, scope: !1219)
!1226 = !DILocation(line: 177, column: 5, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1198, file: !68, line: 177, column: 5)
!1228 = !DILocation(line: 173, column: 13, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !1224, file: !68, line: 172, column: 9)
!1230 = !DILocation(line: 173, column: 50, scope: !1229)
!1231 = !DILocation(line: 171, column: 53, scope: !1224)
!1232 = !DILocation(line: 171, column: 9, scope: !1224)
!1233 = distinct !{!1233, !1225, !1234, !388}
!1234 = !DILocation(line: 174, column: 9, scope: !1219)
!1235 = !DILocation(line: 177, scope: !1227)
!1236 = !DILocation(line: 160, column: 9, scope: !1198)
!1237 = !DILocation(line: 159, column: 9, scope: !1198)
!1238 = !DILocalVariable(name: "i", scope: !1227, file: !68, line: 177, type: !86)
!1239 = !DILocation(line: 0, scope: !1227)
!1240 = !DILocation(line: 177, column: 23, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1227, file: !68, line: 177, column: 5)
!1242 = !DILocation(line: 178, column: 9, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1244, file: !68, line: 178, column: 9)
!1244 = distinct !DILexicalBlock(scope: !1241, file: !68, line: 177, column: 47)
!1245 = !DILocation(line: 212, column: 5, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1198, file: !68, line: 212, column: 5)
!1247 = !DILocation(line: 178, scope: !1243)
!1248 = !DILocalVariable(name: "j", scope: !1243, file: !68, line: 178, type: !86)
!1249 = !DILocation(line: 0, scope: !1243)
!1250 = !DILocation(line: 178, column: 40, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1243, file: !68, line: 178, column: 9)
!1252 = !DILocation(line: 180, column: 22, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1251, file: !68, line: 178, column: 51)
!1254 = !DILocalVariable(name: "Mj", scope: !1198, file: !68, line: 164, type: !411)
!1255 = !DILocalVariable(name: "c", scope: !1256, file: !68, line: 181, type: !86)
!1256 = distinct !DILexicalBlock(scope: !1253, file: !68, line: 181, column: 13)
!1257 = !DILocation(line: 0, scope: !1256)
!1258 = !DILocation(line: 181, column: 18, scope: !1256)
!1259 = !DILocation(line: 181, scope: !1256)
!1260 = !DILocation(line: 181, column: 31, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1256, file: !68, line: 181, column: 13)
!1262 = !DILocation(line: 181, column: 13, scope: !1256)
!1263 = !DILocation(line: 182, column: 17, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1265, file: !68, line: 182, column: 17)
!1265 = distinct !DILexicalBlock(scope: !1261, file: !68, line: 181, column: 50)
!1266 = !DILocation(line: 182, scope: !1264)
!1267 = !DILocalVariable(name: "k", scope: !1264, file: !68, line: 182, type: !86)
!1268 = !DILocation(line: 0, scope: !1264)
!1269 = !DILocation(line: 182, column: 35, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1264, file: !68, line: 182, column: 17)
!1271 = !DILocation(line: 184, column: 78, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1270, file: !68, line: 183, column: 17)
!1273 = !DILocation(line: 184, column: 100, scope: !1272)
!1274 = !DILocation(line: 184, column: 35, scope: !1272)
!1275 = !DILocation(line: 184, column: 39, scope: !1272)
!1276 = !DILocation(line: 184, column: 48, scope: !1272)
!1277 = !DILocation(line: 184, column: 65, scope: !1272)
!1278 = !DILocation(line: 184, column: 43, scope: !1272)
!1279 = !DILocation(line: 184, column: 21, scope: !1272)
!1280 = !DILocation(line: 184, column: 75, scope: !1272)
!1281 = !DILocation(line: 185, column: 38, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1272, file: !68, line: 185, column: 24)
!1283 = !DILocation(line: 186, column: 86, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1282, file: !68, line: 185, column: 42)
!1285 = !DILocation(line: 186, column: 114, scope: !1284)
!1286 = !DILocation(line: 186, column: 108, scope: !1284)
!1287 = !DILocation(line: 186, column: 39, scope: !1284)
!1288 = !DILocation(line: 186, column: 43, scope: !1284)
!1289 = !DILocation(line: 186, column: 52, scope: !1284)
!1290 = !DILocation(line: 186, column: 73, scope: !1284)
!1291 = !DILocation(line: 186, column: 47, scope: !1284)
!1292 = !DILocation(line: 186, column: 25, scope: !1284)
!1293 = !DILocation(line: 186, column: 83, scope: !1284)
!1294 = !DILocation(line: 187, column: 21, scope: !1284)
!1295 = !DILocation(line: 182, column: 51, scope: !1270)
!1296 = !DILocation(line: 182, column: 17, scope: !1270)
!1297 = distinct !{!1297, !1263, !1298, !388}
!1298 = !DILocation(line: 188, column: 17, scope: !1264)
!1299 = !DILocation(line: 181, column: 46, scope: !1261)
!1300 = !DILocation(line: 181, column: 13, scope: !1261)
!1301 = distinct !{!1301, !1262, !1302, !388}
!1302 = !DILocation(line: 189, column: 13, scope: !1256)
!1303 = !DILocation(line: 191, column: 19, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !1253, file: !68, line: 191, column: 17)
!1305 = !DILocation(line: 192, column: 26, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1304, file: !68, line: 191, column: 25)
!1307 = !DILocalVariable(name: "Mi", scope: !1198, file: !68, line: 164, type: !411)
!1308 = !DILocalVariable(name: "c", scope: !1309, file: !68, line: 193, type: !86)
!1309 = distinct !DILexicalBlock(scope: !1306, file: !68, line: 193, column: 17)
!1310 = !DILocation(line: 0, scope: !1309)
!1311 = !DILocation(line: 193, column: 22, scope: !1309)
!1312 = !DILocation(line: 193, scope: !1309)
!1313 = !DILocation(line: 193, column: 35, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1309, file: !68, line: 193, column: 17)
!1315 = !DILocation(line: 193, column: 17, scope: !1309)
!1316 = !DILocation(line: 194, column: 21, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1318, file: !68, line: 194, column: 21)
!1318 = distinct !DILexicalBlock(scope: !1314, file: !68, line: 193, column: 54)
!1319 = !DILocation(line: 194, scope: !1317)
!1320 = !DILocalVariable(name: "k", scope: !1317, file: !68, line: 194, type: !86)
!1321 = !DILocation(line: 0, scope: !1317)
!1322 = !DILocation(line: 194, column: 39, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1317, file: !68, line: 194, column: 21)
!1324 = !DILocation(line: 196, column: 81, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1323, file: !68, line: 195, column: 21)
!1326 = !DILocation(line: 196, column: 103, scope: !1325)
!1327 = !DILocation(line: 196, column: 38, scope: !1325)
!1328 = !DILocation(line: 196, column: 42, scope: !1325)
!1329 = !DILocation(line: 196, column: 51, scope: !1325)
!1330 = !DILocation(line: 196, column: 68, scope: !1325)
!1331 = !DILocation(line: 196, column: 46, scope: !1325)
!1332 = !DILocation(line: 196, column: 25, scope: !1325)
!1333 = !DILocation(line: 196, column: 78, scope: !1325)
!1334 = !DILocation(line: 197, column: 42, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1325, file: !68, line: 197, column: 28)
!1336 = !DILocation(line: 198, column: 89, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1335, file: !68, line: 197, column: 46)
!1338 = !DILocation(line: 198, column: 117, scope: !1337)
!1339 = !DILocation(line: 198, column: 111, scope: !1337)
!1340 = !DILocation(line: 198, column: 42, scope: !1337)
!1341 = !DILocation(line: 198, column: 46, scope: !1337)
!1342 = !DILocation(line: 198, column: 55, scope: !1337)
!1343 = !DILocation(line: 198, column: 76, scope: !1337)
!1344 = !DILocation(line: 198, column: 50, scope: !1337)
!1345 = !DILocation(line: 198, column: 29, scope: !1337)
!1346 = !DILocation(line: 198, column: 86, scope: !1337)
!1347 = !DILocation(line: 199, column: 25, scope: !1337)
!1348 = !DILocation(line: 194, column: 55, scope: !1323)
!1349 = !DILocation(line: 194, column: 21, scope: !1323)
!1350 = distinct !{!1350, !1316, !1351, !388}
!1351 = !DILocation(line: 200, column: 21, scope: !1317)
!1352 = !DILocation(line: 193, column: 50, scope: !1314)
!1353 = !DILocation(line: 193, column: 17, scope: !1314)
!1354 = distinct !{!1354, !1315, !1355, !388}
!1355 = !DILocation(line: 201, column: 17, scope: !1309)
!1356 = !DILocation(line: 204, column: 27, scope: !1253)
!1357 = !DILocation(line: 205, column: 30, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1253, file: !68, line: 205, column: 16)
!1359 = !DILocation(line: 178, column: 46, scope: !1251)
!1360 = !DILocation(line: 178, column: 9, scope: !1251)
!1361 = distinct !{!1361, !1242, !1362, !388}
!1362 = !DILocation(line: 209, column: 9, scope: !1243)
!1363 = !DILocation(line: 177, column: 42, scope: !1241)
!1364 = !DILocation(line: 177, column: 5, scope: !1241)
!1365 = distinct !{!1365, !1226, !1366, !388}
!1366 = !DILocation(line: 210, column: 5, scope: !1227)
!1367 = !DILocation(line: 212, scope: !1246)
!1368 = !DILocalVariable(name: "c", scope: !1246, file: !68, line: 212, type: !58)
!1369 = !DILocation(line: 0, scope: !1246)
!1370 = !DILocation(line: 212, column: 26, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1246, file: !68, line: 212, column: 5)
!1372 = !DILocation(line: 214, column: 35, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1371, file: !68, line: 213, column: 5)
!1374 = !DILocation(line: 214, column: 9, scope: !1373)
!1375 = !DILocation(line: 212, column: 91, scope: !1371)
!1376 = !DILocation(line: 212, column: 5, scope: !1371)
!1377 = distinct !{!1377, !1245, !1378, !388}
!1378 = !DILocation(line: 215, column: 5, scope: !1246)
!1379 = !DILocalVariable(name: "tab", scope: !1198, file: !68, line: 217, type: !1380)
!1380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 128, elements: !1381)
!1381 = !{!1382}
!1382 = !DISubrange(count: 16)
!1383 = !DILocation(line: 217, column: 19, scope: !1198)
!1384 = !DILocalVariable(name: "i", scope: !1385, file: !68, line: 218, type: !58)
!1385 = distinct !DILexicalBlock(scope: !1198, file: !68, line: 218, column: 5)
!1386 = !DILocation(line: 0, scope: !1385)
!1387 = !DILocation(line: 218, column: 10, scope: !1385)
!1388 = !DILocation(line: 218, scope: !1385)
!1389 = !DILocation(line: 218, column: 26, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1385, file: !68, line: 218, column: 5)
!1391 = !DILocation(line: 218, column: 5, scope: !1385)
!1392 = !DILocation(line: 228, column: 5, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1198, file: !68, line: 228, column: 5)
!1394 = !DILocation(line: 220, column: 28, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1390, file: !68, line: 219, column: 5)
!1396 = !DILocation(line: 220, column: 22, scope: !1395)
!1397 = !DILocation(line: 220, column: 14, scope: !1395)
!1398 = !DILocation(line: 220, column: 9, scope: !1395)
!1399 = !DILocation(line: 220, column: 20, scope: !1395)
!1400 = !DILocation(line: 221, column: 22, scope: !1395)
!1401 = !DILocation(line: 221, column: 14, scope: !1395)
!1402 = !DILocation(line: 221, column: 16, scope: !1395)
!1403 = !DILocation(line: 221, column: 9, scope: !1395)
!1404 = !DILocation(line: 221, column: 20, scope: !1395)
!1405 = !DILocation(line: 222, column: 28, scope: !1395)
!1406 = !DILocation(line: 222, column: 22, scope: !1395)
!1407 = !DILocation(line: 222, column: 14, scope: !1395)
!1408 = !DILocation(line: 222, column: 16, scope: !1395)
!1409 = !DILocation(line: 222, column: 9, scope: !1395)
!1410 = !DILocation(line: 222, column: 20, scope: !1395)
!1411 = !DILocation(line: 223, column: 28, scope: !1395)
!1412 = !DILocation(line: 223, column: 22, scope: !1395)
!1413 = !DILocation(line: 223, column: 14, scope: !1395)
!1414 = !DILocation(line: 223, column: 16, scope: !1395)
!1415 = !DILocation(line: 223, column: 9, scope: !1395)
!1416 = !DILocation(line: 223, column: 20, scope: !1395)
!1417 = !DILocation(line: 218, column: 41, scope: !1390)
!1418 = !DILocation(line: 218, column: 5, scope: !1390)
!1419 = distinct !{!1419, !1391, !1420, !388}
!1420 = !DILocation(line: 224, column: 5, scope: !1385)
!1421 = !DILocation(line: 228, scope: !1393)
!1422 = !DILocalVariable(name: "c", scope: !1393, file: !68, line: 228, type: !58)
!1423 = !DILocation(line: 0, scope: !1393)
!1424 = !DILocation(line: 228, column: 26, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1393, file: !68, line: 228, column: 5)
!1426 = !DILocation(line: 230, column: 9, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1428, file: !68, line: 230, column: 9)
!1428 = distinct !DILexicalBlock(scope: !1425, file: !68, line: 229, column: 5)
!1429 = !DILocation(line: 250, column: 5, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !1198, file: !68, line: 250, column: 5)
!1431 = !DILocation(line: 230, scope: !1427)
!1432 = !DILocalVariable(name: "r", scope: !1427, file: !68, line: 230, type: !86)
!1433 = !DILocation(line: 0, scope: !1427)
!1434 = !DILocation(line: 230, column: 36, scope: !1435)
!1435 = distinct !DILexicalBlock(scope: !1427, file: !68, line: 230, column: 9)
!1436 = !DILocation(line: 232, column: 28, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !1435, file: !68, line: 231, column: 9)
!1438 = !DILocation(line: 232, column: 32, scope: !1437)
!1439 = !DILocation(line: 232, column: 41, scope: !1437)
!1440 = !DILocation(line: 232, column: 49, scope: !1437)
!1441 = !DILocation(line: 232, column: 45, scope: !1437)
!1442 = !DILocalVariable(name: "pos", scope: !1437, file: !68, line: 232, type: !58)
!1443 = !DILocation(line: 0, scope: !1437)
!1444 = !DILocation(line: 233, column: 28, scope: !1437)
!1445 = !DILocation(line: 233, column: 41, scope: !1437)
!1446 = !DILocalVariable(name: "t0", scope: !1437, file: !68, line: 233, type: !53)
!1447 = !DILocation(line: 234, column: 35, scope: !1437)
!1448 = !DILocation(line: 234, column: 41, scope: !1437)
!1449 = !DILocalVariable(name: "t1", scope: !1437, file: !68, line: 234, type: !53)
!1450 = !DILocation(line: 235, column: 35, scope: !1437)
!1451 = !DILocation(line: 235, column: 41, scope: !1437)
!1452 = !DILocalVariable(name: "t2", scope: !1437, file: !68, line: 235, type: !53)
!1453 = !DILocation(line: 236, column: 28, scope: !1437)
!1454 = !DILocation(line: 236, column: 35, scope: !1437)
!1455 = !DILocation(line: 236, column: 41, scope: !1437)
!1456 = !DILocalVariable(name: "t3", scope: !1437, file: !68, line: 236, type: !53)
!1457 = !DILocalVariable(name: "t", scope: !1458, file: !68, line: 237, type: !58)
!1458 = distinct !DILexicalBlock(scope: !1437, file: !68, line: 237, column: 13)
!1459 = !DILocation(line: 0, scope: !1458)
!1460 = !DILocation(line: 237, column: 18, scope: !1458)
!1461 = !DILocation(line: 237, scope: !1458)
!1462 = !DILocation(line: 237, column: 34, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !1458, file: !68, line: 237, column: 13)
!1464 = !DILocation(line: 237, column: 13, scope: !1458)
!1465 = !DILocation(line: 239, column: 89, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1463, file: !68, line: 238, column: 13)
!1467 = !DILocation(line: 239, column: 84, scope: !1466)
!1468 = !DILocation(line: 239, column: 83, scope: !1466)
!1469 = !DILocation(line: 239, column: 105, scope: !1466)
!1470 = !DILocation(line: 239, column: 107, scope: !1466)
!1471 = !DILocation(line: 239, column: 100, scope: !1466)
!1472 = !DILocation(line: 239, column: 99, scope: !1466)
!1473 = !DILocation(line: 239, column: 95, scope: !1466)
!1474 = !DILocation(line: 239, column: 121, scope: !1466)
!1475 = !DILocation(line: 239, column: 123, scope: !1466)
!1476 = !DILocation(line: 239, column: 116, scope: !1466)
!1477 = !DILocation(line: 239, column: 115, scope: !1466)
!1478 = !DILocation(line: 239, column: 111, scope: !1466)
!1479 = !DILocation(line: 239, column: 137, scope: !1466)
!1480 = !DILocation(line: 239, column: 139, scope: !1466)
!1481 = !DILocation(line: 239, column: 132, scope: !1466)
!1482 = !DILocation(line: 239, column: 131, scope: !1466)
!1483 = !DILocation(line: 239, column: 127, scope: !1466)
!1484 = !DILocation(line: 239, column: 22, scope: !1466)
!1485 = !DILocation(line: 239, column: 24, scope: !1466)
!1486 = !DILocation(line: 239, column: 36, scope: !1466)
!1487 = !DILocation(line: 239, column: 40, scope: !1466)
!1488 = !DILocation(line: 239, column: 49, scope: !1466)
!1489 = !DILocation(line: 239, column: 58, scope: !1466)
!1490 = !DILocation(line: 239, column: 60, scope: !1466)
!1491 = !DILocation(line: 239, column: 72, scope: !1466)
!1492 = !DILocation(line: 239, column: 53, scope: !1466)
!1493 = !DILocation(line: 239, column: 17, scope: !1466)
!1494 = !DILocation(line: 239, column: 78, scope: !1466)
!1495 = !DILocation(line: 237, column: 49, scope: !1463)
!1496 = !DILocation(line: 237, column: 13, scope: !1463)
!1497 = distinct !{!1497, !1464, !1498, !388}
!1498 = !DILocation(line: 240, column: 13, scope: !1458)
!1499 = !DILocation(line: 230, column: 82, scope: !1435)
!1500 = !DILocation(line: 230, column: 9, scope: !1435)
!1501 = distinct !{!1501, !1426, !1502, !388}
!1502 = !DILocation(line: 241, column: 9, scope: !1427)
!1503 = !DILocation(line: 228, column: 38, scope: !1425)
!1504 = !DILocation(line: 228, column: 5, scope: !1425)
!1505 = distinct !{!1505, !1392, !1506, !388}
!1506 = !DILocation(line: 242, column: 5, scope: !1393)
!1507 = !DILocation(line: 250, scope: !1430)
!1508 = !DILocalVariable(name: "r", scope: !1430, file: !68, line: 250, type: !86)
!1509 = !DILocation(line: 0, scope: !1430)
!1510 = !DILocation(line: 250, column: 23, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1430, file: !68, line: 250, column: 5)
!1512 = !DILocation(line: 252, column: 9, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1514, file: !68, line: 252, column: 9)
!1514 = distinct !DILexicalBlock(scope: !1511, file: !68, line: 251, column: 5)
!1515 = !DILocation(line: 252, scope: !1513)
!1516 = !DILocalVariable(name: "c", scope: !1513, file: !68, line: 252, type: !86)
!1517 = !DILocation(line: 0, scope: !1513)
!1518 = !DILocation(line: 252, column: 27, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !1513, file: !68, line: 252, column: 9)
!1520 = !DILocation(line: 254, column: 13, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1522, file: !68, line: 254, column: 13)
!1522 = distinct !DILexicalBlock(scope: !1519, file: !68, line: 253, column: 9)
!1523 = !DILocation(line: 254, scope: !1521)
!1524 = !DILocalVariable(name: "i", scope: !1521, file: !68, line: 254, type: !86)
!1525 = !DILocation(line: 0, scope: !1521)
!1526 = !DILocation(line: 254, column: 35, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1521, file: !68, line: 254, column: 13)
!1528 = !DILocation(line: 256, column: 55, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !1527, file: !68, line: 255, column: 13)
!1530 = !DILocation(line: 256, column: 59, scope: !1529)
!1531 = !DILocation(line: 256, column: 63, scope: !1529)
!1532 = !DILocation(line: 256, column: 44, scope: !1529)
!1533 = !DILocation(line: 256, column: 95, scope: !1529)
!1534 = !DILocation(line: 256, column: 92, scope: !1529)
!1535 = !DILocation(line: 256, column: 75, scope: !1529)
!1536 = !DILocation(line: 256, column: 99, scope: !1529)
!1537 = !DILocation(line: 256, column: 104, scope: !1529)
!1538 = !DILocation(line: 256, column: 17, scope: !1529)
!1539 = !DILocation(line: 254, column: 50, scope: !1527)
!1540 = !DILocation(line: 254, column: 13, scope: !1527)
!1541 = distinct !{!1541, !1520, !1542, !388}
!1542 = !DILocation(line: 257, column: 13, scope: !1521)
!1543 = !DILocation(line: 252, column: 50, scope: !1519)
!1544 = !DILocation(line: 252, column: 9, scope: !1519)
!1545 = distinct !{!1545, !1512, !1546, !388}
!1546 = !DILocation(line: 258, column: 9, scope: !1513)
!1547 = !DILocation(line: 250, column: 38, scope: !1511)
!1548 = !DILocation(line: 250, column: 5, scope: !1511)
!1549 = distinct !{!1549, !1429, !1550, !388}
!1550 = !DILocation(line: 259, column: 5, scope: !1430)
!1551 = !DILocation(line: 260, column: 1, scope: !1198)
!1552 = distinct !DISubprogram(name: "mat_mul", scope: !585, file: !585, line: 78, type: !1553, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !71)
!1553 = !DISubroutineType(types: !1554)
!1554 = !{null, !90, !90, !61, !86, !86, !86}
!1555 = !DILocalVariable(name: "a", arg: 1, scope: !1552, file: !585, line: 78, type: !90)
!1556 = !DILocation(line: 0, scope: !1552)
!1557 = !DILocalVariable(name: "b", arg: 2, scope: !1552, file: !585, line: 78, type: !90)
!1558 = !DILocalVariable(name: "c", arg: 3, scope: !1552, file: !585, line: 79, type: !61)
!1559 = !DILocalVariable(name: "colrow_ab", arg: 4, scope: !1552, file: !585, line: 79, type: !86)
!1560 = !DILocalVariable(name: "row_a", arg: 5, scope: !1552, file: !585, line: 79, type: !86)
!1561 = !DILocalVariable(name: "col_b", arg: 6, scope: !1552, file: !585, line: 79, type: !86)
!1562 = !DILocalVariable(name: "i", scope: !1563, file: !585, line: 80, type: !86)
!1563 = distinct !DILexicalBlock(scope: !1552, file: !585, line: 80, column: 5)
!1564 = !DILocation(line: 0, scope: !1563)
!1565 = !DILocation(line: 80, column: 10, scope: !1563)
!1566 = !DILocation(line: 80, scope: !1563)
!1567 = !DILocation(line: 80, column: 23, scope: !1568)
!1568 = distinct !DILexicalBlock(scope: !1563, file: !585, line: 80, column: 5)
!1569 = !DILocation(line: 80, column: 5, scope: !1563)
!1570 = !DILocation(line: 81, column: 9, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1572, file: !585, line: 81, column: 9)
!1572 = distinct !DILexicalBlock(scope: !1568, file: !585, line: 80, column: 53)
!1573 = !DILocation(line: 81, scope: !1571)
!1574 = !DILocalVariable(name: "j", scope: !1571, file: !585, line: 81, type: !86)
!1575 = !DILocation(line: 0, scope: !1571)
!1576 = !DILocation(line: 81, column: 27, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1571, file: !585, line: 81, column: 9)
!1578 = !DILocation(line: 82, column: 31, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !1577, file: !585, line: 81, column: 46)
!1580 = !DILocation(line: 82, column: 18, scope: !1579)
!1581 = !DILocation(line: 82, column: 16, scope: !1579)
!1582 = !DILocation(line: 81, column: 36, scope: !1577)
!1583 = !DILocation(line: 81, column: 41, scope: !1577)
!1584 = !DILocation(line: 81, column: 9, scope: !1577)
!1585 = distinct !{!1585, !1570, !1586, !388}
!1586 = !DILocation(line: 83, column: 9, scope: !1571)
!1587 = !DILocation(line: 80, column: 32, scope: !1568)
!1588 = !DILocation(line: 80, column: 39, scope: !1568)
!1589 = !DILocation(line: 80, column: 5, scope: !1568)
!1590 = distinct !{!1590, !1569, !1591, !388}
!1591 = !DILocation(line: 84, column: 5, scope: !1563)
!1592 = !DILocation(line: 85, column: 1, scope: !1552)
!1593 = distinct !DISubprogram(name: "mat_add", scope: !585, file: !585, line: 87, type: !1594, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !71)
!1594 = !DISubroutineType(types: !1595)
!1595 = !{null, !90, !90, !61, !86, !86}
!1596 = !DILocalVariable(name: "a", arg: 1, scope: !1593, file: !585, line: 87, type: !90)
!1597 = !DILocation(line: 0, scope: !1593)
!1598 = !DILocalVariable(name: "b", arg: 2, scope: !1593, file: !585, line: 87, type: !90)
!1599 = !DILocalVariable(name: "c", arg: 3, scope: !1593, file: !585, line: 88, type: !61)
!1600 = !DILocalVariable(name: "m", arg: 4, scope: !1593, file: !585, line: 88, type: !86)
!1601 = !DILocalVariable(name: "n", arg: 5, scope: !1593, file: !585, line: 88, type: !86)
!1602 = !DILocalVariable(name: "i", scope: !1603, file: !585, line: 89, type: !86)
!1603 = distinct !DILexicalBlock(scope: !1593, file: !585, line: 89, column: 5)
!1604 = !DILocation(line: 0, scope: !1603)
!1605 = !DILocation(line: 89, column: 10, scope: !1603)
!1606 = !DILocation(line: 89, scope: !1603)
!1607 = !DILocation(line: 89, column: 23, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1603, file: !585, line: 89, column: 5)
!1609 = !DILocation(line: 89, column: 5, scope: !1603)
!1610 = !DILocation(line: 90, column: 9, scope: !1611)
!1611 = distinct !DILexicalBlock(scope: !1612, file: !585, line: 90, column: 9)
!1612 = distinct !DILexicalBlock(scope: !1608, file: !585, line: 89, column: 33)
!1613 = !DILocation(line: 90, scope: !1611)
!1614 = !DILocalVariable(name: "j", scope: !1611, file: !585, line: 90, type: !86)
!1615 = !DILocation(line: 0, scope: !1611)
!1616 = !DILocation(line: 90, column: 27, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1611, file: !585, line: 90, column: 9)
!1618 = !DILocation(line: 91, column: 46, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1617, file: !585, line: 90, column: 37)
!1620 = !DILocation(line: 91, column: 42, scope: !1619)
!1621 = !DILocation(line: 91, column: 50, scope: !1619)
!1622 = !DILocation(line: 91, column: 38, scope: !1619)
!1623 = !DILocation(line: 91, column: 64, scope: !1619)
!1624 = !DILocation(line: 91, column: 60, scope: !1619)
!1625 = !DILocation(line: 91, column: 68, scope: !1619)
!1626 = !DILocation(line: 91, column: 56, scope: !1619)
!1627 = !DILocation(line: 91, column: 32, scope: !1619)
!1628 = !DILocation(line: 91, column: 21, scope: !1619)
!1629 = !DILocation(line: 91, column: 17, scope: !1619)
!1630 = !DILocation(line: 91, column: 25, scope: !1619)
!1631 = !DILocation(line: 91, column: 30, scope: !1619)
!1632 = !DILocation(line: 90, column: 32, scope: !1617)
!1633 = !DILocation(line: 90, column: 9, scope: !1617)
!1634 = distinct !{!1634, !1610, !1635, !388}
!1635 = !DILocation(line: 92, column: 9, scope: !1611)
!1636 = !DILocation(line: 89, column: 28, scope: !1608)
!1637 = !DILocation(line: 89, column: 5, scope: !1608)
!1638 = distinct !{!1638, !1609, !1639, !388}
!1639 = !DILocation(line: 93, column: 5, scope: !1603)
!1640 = !DILocation(line: 94, column: 1, scope: !1593)
!1641 = distinct !DISubprogram(name: "encode", scope: !68, file: !68, line: 32, type: !361, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !71)
!1642 = !DILocalVariable(name: "m", arg: 1, scope: !1641, file: !68, line: 32, type: !90)
!1643 = !DILocation(line: 0, scope: !1641)
!1644 = !DILocalVariable(name: "menc", arg: 2, scope: !1641, file: !68, line: 32, type: !61)
!1645 = !DILocalVariable(name: "mlen", arg: 3, scope: !1641, file: !68, line: 32, type: !86)
!1646 = !DILocalVariable(name: "i", scope: !1641, file: !68, line: 33, type: !86)
!1647 = !DILocation(line: 34, column: 10, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1641, file: !68, line: 34, column: 5)
!1649 = !DILocation(line: 34, scope: !1648)
!1650 = !DILocation(line: 34, column: 26, scope: !1651)
!1651 = distinct !DILexicalBlock(scope: !1648, file: !68, line: 34, column: 5)
!1652 = !DILocation(line: 34, column: 19, scope: !1651)
!1653 = !DILocation(line: 34, column: 5, scope: !1648)
!1654 = !DILocation(line: 35, column: 20, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1651, file: !68, line: 34, column: 44)
!1656 = !DILocation(line: 35, column: 31, scope: !1655)
!1657 = !DILocation(line: 35, column: 27, scope: !1655)
!1658 = !DILocation(line: 35, column: 36, scope: !1655)
!1659 = !DILocation(line: 35, column: 24, scope: !1655)
!1660 = !DILocation(line: 35, column: 9, scope: !1655)
!1661 = !DILocation(line: 35, column: 17, scope: !1655)
!1662 = !DILocation(line: 34, column: 31, scope: !1651)
!1663 = !DILocation(line: 34, column: 38, scope: !1651)
!1664 = !DILocation(line: 34, column: 5, scope: !1651)
!1665 = distinct !{!1665, !1653, !1666, !388}
!1666 = !DILocation(line: 36, column: 5, scope: !1648)
!1667 = !DILocation(line: 38, column: 18, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !1641, file: !68, line: 38, column: 9)
!1669 = !DILocation(line: 39, column: 20, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1668, file: !68, line: 38, column: 24)
!1671 = !DILocation(line: 39, column: 9, scope: !1670)
!1672 = !DILocation(line: 39, column: 17, scope: !1670)
!1673 = !DILocation(line: 40, column: 5, scope: !1670)
!1674 = !DILocation(line: 41, column: 1, scope: !1641)
!1675 = distinct !DISubprogram(name: "add_f", scope: !585, file: !585, line: 42, type: !1676, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !71)
!1676 = !DISubroutineType(types: !1677)
!1677 = !{!51, !51, !51}
!1678 = !DILocalVariable(name: "a", arg: 1, scope: !1675, file: !585, line: 42, type: !51)
!1679 = !DILocation(line: 0, scope: !1675)
!1680 = !DILocalVariable(name: "b", arg: 2, scope: !1675, file: !585, line: 42, type: !51)
!1681 = !DILocation(line: 43, column: 14, scope: !1675)
!1682 = !DILocation(line: 43, column: 5, scope: !1675)
!1683 = distinct !DISubprogram(name: "lincomb", scope: !585, file: !585, line: 69, type: !1684, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !71)
!1684 = !DISubroutineType(types: !1685)
!1685 = !{!51, !90, !90, !86, !86}
!1686 = !DILocalVariable(name: "a", arg: 1, scope: !1683, file: !585, line: 69, type: !90)
!1687 = !DILocation(line: 0, scope: !1683)
!1688 = !DILocalVariable(name: "b", arg: 2, scope: !1683, file: !585, line: 70, type: !90)
!1689 = !DILocalVariable(name: "n", arg: 3, scope: !1683, file: !585, line: 70, type: !86)
!1690 = !DILocalVariable(name: "m", arg: 4, scope: !1683, file: !585, line: 70, type: !86)
!1691 = !DILocalVariable(name: "ret", scope: !1683, file: !585, line: 71, type: !51)
!1692 = !DILocalVariable(name: "i", scope: !1693, file: !585, line: 72, type: !86)
!1693 = distinct !DILexicalBlock(scope: !1683, file: !585, line: 72, column: 5)
!1694 = !DILocation(line: 0, scope: !1693)
!1695 = !DILocation(line: 72, column: 10, scope: !1693)
!1696 = !DILocation(line: 72, scope: !1693)
!1697 = !DILocation(line: 72, column: 23, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !1693, file: !585, line: 72, column: 5)
!1699 = !DILocation(line: 72, column: 5, scope: !1693)
!1700 = !DILocation(line: 73, column: 27, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !1698, file: !585, line: 72, column: 41)
!1702 = !DILocation(line: 73, column: 33, scope: !1701)
!1703 = !DILocation(line: 73, column: 21, scope: !1701)
!1704 = !DILocation(line: 73, column: 15, scope: !1701)
!1705 = !DILocation(line: 72, column: 28, scope: !1698)
!1706 = !DILocation(line: 72, column: 35, scope: !1698)
!1707 = !DILocation(line: 72, column: 5, scope: !1698)
!1708 = distinct !{!1708, !1699, !1709, !388}
!1709 = !DILocation(line: 74, column: 5, scope: !1693)
!1710 = !DILocation(line: 75, column: 5, scope: !1683)
!1711 = distinct !DISubprogram(name: "mul_f", scope: !585, file: !585, line: 8, type: !1676, scopeLine: 8, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !71)
!1712 = !DILocalVariable(name: "a", arg: 1, scope: !1711, file: !585, line: 8, type: !51)
!1713 = !DILocation(line: 0, scope: !1711)
!1714 = !DILocalVariable(name: "b", arg: 2, scope: !1711, file: !585, line: 8, type: !51)
!1715 = !DILocation(line: 13, column: 10, scope: !1711)
!1716 = !DILocation(line: 13, column: 7, scope: !1711)
!1717 = !DILocation(line: 16, column: 17, scope: !1711)
!1718 = !DILocalVariable(name: "p", scope: !1711, file: !585, line: 10, type: !51)
!1719 = !DILocation(line: 17, column: 13, scope: !1711)
!1720 = !DILocation(line: 17, column: 17, scope: !1711)
!1721 = !DILocation(line: 17, column: 7, scope: !1711)
!1722 = !DILocation(line: 18, column: 13, scope: !1711)
!1723 = !DILocation(line: 18, column: 17, scope: !1711)
!1724 = !DILocation(line: 18, column: 7, scope: !1711)
!1725 = !DILocation(line: 19, column: 13, scope: !1711)
!1726 = !DILocation(line: 19, column: 17, scope: !1711)
!1727 = !DILocation(line: 19, column: 7, scope: !1711)
!1728 = !DILocalVariable(name: "top_p", scope: !1711, file: !585, line: 22, type: !51)
!1729 = !DILocation(line: 23, column: 37, scope: !1711)
!1730 = !DILocation(line: 23, column: 52, scope: !1711)
!1731 = !DILocation(line: 23, column: 43, scope: !1711)
!1732 = !DILocation(line: 23, column: 59, scope: !1711)
!1733 = !DILocalVariable(name: "out", scope: !1711, file: !585, line: 23, type: !51)
!1734 = !DILocation(line: 24, column: 5, scope: !1711)
!1735 = !DILocalVariable(name: "M", arg: 1, scope: !67, file: !68, line: 111, type: !52)
!1736 = !DILocation(line: 0, scope: !67)
!1737 = !DILocalVariable(name: "i", scope: !1738, file: !68, line: 117, type: !58)
!1738 = distinct !DILexicalBlock(scope: !67, file: !68, line: 117, column: 5)
!1739 = !DILocation(line: 0, scope: !1738)
!1740 = !DILocation(line: 117, column: 10, scope: !1738)
!1741 = !DILocation(line: 117, scope: !1738)
!1742 = !DILocation(line: 117, column: 26, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !1738, file: !68, line: 117, column: 5)
!1744 = !DILocation(line: 117, column: 5, scope: !1738)
!1745 = !DILocation(line: 124, column: 5, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !67, file: !68, line: 124, column: 5)
!1747 = !DILocation(line: 119, column: 24, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1743, file: !68, line: 118, column: 5)
!1749 = !DILocation(line: 119, column: 29, scope: !1748)
!1750 = !DILocation(line: 119, column: 41, scope: !1748)
!1751 = !DILocation(line: 119, column: 38, scope: !1748)
!1752 = !DILocation(line: 119, column: 36, scope: !1748)
!1753 = !DILocation(line: 119, column: 46, scope: !1748)
!1754 = !DILocalVariable(name: "t", scope: !1748, file: !68, line: 119, type: !53)
!1755 = !DILocation(line: 0, scope: !1748)
!1756 = !DILocation(line: 120, column: 21, scope: !1748)
!1757 = !DILocation(line: 120, column: 9, scope: !1748)
!1758 = !DILocation(line: 120, column: 16, scope: !1748)
!1759 = !DILocation(line: 121, column: 12, scope: !1748)
!1760 = !DILocation(line: 121, column: 9, scope: !1748)
!1761 = !DILocation(line: 121, column: 16, scope: !1748)
!1762 = !DILocation(line: 117, column: 33, scope: !1743)
!1763 = !DILocation(line: 117, column: 5, scope: !1743)
!1764 = distinct !{!1764, !1744, !1765, !388}
!1765 = !DILocation(line: 122, column: 5, scope: !1738)
!1766 = !DILocation(line: 124, scope: !1746)
!1767 = !DILocalVariable(name: "i", scope: !1746, file: !68, line: 124, type: !58)
!1768 = !DILocation(line: 0, scope: !1746)
!1769 = !DILocation(line: 124, column: 26, scope: !1770)
!1770 = distinct !DILexicalBlock(scope: !1746, file: !68, line: 124, column: 5)
!1771 = !DILocation(line: 134, column: 5, scope: !1772)
!1772 = distinct !DILexicalBlock(scope: !67, file: !68, line: 134, column: 5)
!1773 = !DILocation(line: 126, column: 25, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1770, file: !68, line: 125, column: 5)
!1775 = !DILocation(line: 126, column: 32, scope: !1774)
!1776 = !DILocation(line: 126, column: 43, scope: !1774)
!1777 = !DILocation(line: 126, column: 40, scope: !1774)
!1778 = !DILocation(line: 126, column: 38, scope: !1774)
!1779 = !DILocation(line: 126, column: 48, scope: !1774)
!1780 = !DILocalVariable(name: "t0", scope: !1774, file: !68, line: 126, type: !53)
!1781 = !DILocation(line: 0, scope: !1774)
!1782 = !DILocation(line: 127, column: 28, scope: !1774)
!1783 = !DILocation(line: 127, column: 25, scope: !1774)
!1784 = !DILocation(line: 127, column: 32, scope: !1774)
!1785 = !DILocation(line: 127, column: 43, scope: !1774)
!1786 = !DILocation(line: 127, column: 40, scope: !1774)
!1787 = !DILocation(line: 127, column: 38, scope: !1774)
!1788 = !DILocation(line: 127, column: 48, scope: !1774)
!1789 = !DILocalVariable(name: "t1", scope: !1774, file: !68, line: 127, type: !53)
!1790 = !DILocation(line: 128, column: 23, scope: !1774)
!1791 = !DILocation(line: 128, column: 9, scope: !1774)
!1792 = !DILocation(line: 128, column: 16, scope: !1774)
!1793 = !DILocation(line: 129, column: 23, scope: !1774)
!1794 = !DILocation(line: 129, column: 12, scope: !1774)
!1795 = !DILocation(line: 129, column: 9, scope: !1774)
!1796 = !DILocation(line: 129, column: 16, scope: !1774)
!1797 = !DILocation(line: 130, column: 12, scope: !1774)
!1798 = !DILocation(line: 130, column: 9, scope: !1774)
!1799 = !DILocation(line: 130, column: 16, scope: !1774)
!1800 = !DILocation(line: 131, column: 12, scope: !1774)
!1801 = !DILocation(line: 131, column: 9, scope: !1774)
!1802 = !DILocation(line: 131, column: 16, scope: !1774)
!1803 = !DILocation(line: 124, column: 33, scope: !1770)
!1804 = !DILocation(line: 124, column: 5, scope: !1770)
!1805 = distinct !{!1805, !1745, !1806, !388}
!1806 = !DILocation(line: 132, column: 5, scope: !1746)
!1807 = !DILocation(line: 134, scope: !1772)
!1808 = !DILocalVariable(name: "i", scope: !1772, file: !68, line: 134, type: !58)
!1809 = !DILocation(line: 0, scope: !1772)
!1810 = !DILocation(line: 134, column: 26, scope: !1811)
!1811 = distinct !DILexicalBlock(scope: !1772, file: !68, line: 134, column: 5)
!1812 = !DILocation(line: 145, column: 5, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !67, file: !68, line: 145, column: 5)
!1814 = !DILocation(line: 136, column: 25, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !1811, file: !68, line: 135, column: 5)
!1816 = !DILocation(line: 136, column: 32, scope: !1815)
!1817 = !DILocation(line: 136, column: 44, scope: !1815)
!1818 = !DILocation(line: 136, column: 41, scope: !1815)
!1819 = !DILocation(line: 136, column: 39, scope: !1815)
!1820 = !DILocation(line: 136, column: 50, scope: !1815)
!1821 = !DILocalVariable(name: "t0", scope: !1815, file: !68, line: 136, type: !53)
!1822 = !DILocation(line: 0, scope: !1815)
!1823 = !DILocation(line: 137, column: 28, scope: !1815)
!1824 = !DILocation(line: 137, column: 25, scope: !1815)
!1825 = !DILocation(line: 137, column: 32, scope: !1815)
!1826 = !DILocation(line: 137, column: 44, scope: !1815)
!1827 = !DILocation(line: 137, column: 41, scope: !1815)
!1828 = !DILocation(line: 137, column: 39, scope: !1815)
!1829 = !DILocation(line: 137, column: 50, scope: !1815)
!1830 = !DILocalVariable(name: "t1", scope: !1815, file: !68, line: 137, type: !53)
!1831 = !DILocation(line: 139, column: 23, scope: !1815)
!1832 = !DILocation(line: 139, column: 9, scope: !1815)
!1833 = !DILocation(line: 139, column: 17, scope: !1815)
!1834 = !DILocation(line: 140, column: 23, scope: !1815)
!1835 = !DILocation(line: 140, column: 12, scope: !1815)
!1836 = !DILocation(line: 140, column: 9, scope: !1815)
!1837 = !DILocation(line: 140, column: 17, scope: !1815)
!1838 = !DILocation(line: 141, column: 12, scope: !1815)
!1839 = !DILocation(line: 141, column: 9, scope: !1815)
!1840 = !DILocation(line: 141, column: 17, scope: !1815)
!1841 = !DILocation(line: 142, column: 12, scope: !1815)
!1842 = !DILocation(line: 142, column: 9, scope: !1815)
!1843 = !DILocation(line: 142, column: 17, scope: !1815)
!1844 = !DILocation(line: 134, column: 32, scope: !1811)
!1845 = !DILocation(line: 134, column: 5, scope: !1811)
!1846 = distinct !{!1846, !1771, !1847, !388}
!1847 = !DILocation(line: 143, column: 5, scope: !1772)
!1848 = !DILocation(line: 145, scope: !1813)
!1849 = !DILocalVariable(name: "i", scope: !1813, file: !68, line: 145, type: !58)
!1850 = !DILocation(line: 0, scope: !1813)
!1851 = !DILocation(line: 145, column: 26, scope: !1852)
!1852 = distinct !DILexicalBlock(scope: !1813, file: !68, line: 145, column: 5)
!1853 = !DILocation(line: 147, column: 24, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !1852, file: !68, line: 146, column: 5)
!1855 = !DILocation(line: 147, column: 28, scope: !1854)
!1856 = !DILocation(line: 147, column: 39, scope: !1854)
!1857 = !DILocation(line: 147, column: 36, scope: !1854)
!1858 = !DILocation(line: 147, column: 44, scope: !1854)
!1859 = !DILocalVariable(name: "t", scope: !1854, file: !68, line: 147, type: !53)
!1860 = !DILocation(line: 0, scope: !1854)
!1861 = !DILocation(line: 148, column: 21, scope: !1854)
!1862 = !DILocation(line: 148, column: 9, scope: !1854)
!1863 = !DILocation(line: 148, column: 16, scope: !1854)
!1864 = !DILocation(line: 149, column: 12, scope: !1854)
!1865 = !DILocation(line: 149, column: 9, scope: !1854)
!1866 = !DILocation(line: 149, column: 16, scope: !1854)
!1867 = !DILocation(line: 145, column: 32, scope: !1852)
!1868 = !DILocation(line: 145, column: 5, scope: !1852)
!1869 = distinct !{!1869, !1812, !1870, !388}
!1870 = !DILocation(line: 150, column: 5, scope: !1813)
!1871 = !DILocation(line: 151, column: 1, scope: !67)
!1872 = distinct !DISubprogram(name: "mul_add_mat_x_m_mat", scope: !408, file: !408, line: 61, type: !469, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !71)
!1873 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !1872, file: !408, line: 61, type: !324)
!1874 = !DILocation(line: 0, scope: !1872)
!1875 = !DILocalVariable(name: "mat", arg: 2, scope: !1872, file: !408, line: 61, type: !90)
!1876 = !DILocalVariable(name: "bs_mat", arg: 3, scope: !1872, file: !408, line: 61, type: !411)
!1877 = !DILocalVariable(name: "acc", arg: 4, scope: !1872, file: !408, line: 61, type: !52)
!1878 = !DILocalVariable(name: "mat_rows", arg: 5, scope: !1872, file: !408, line: 62, type: !324)
!1879 = !DILocalVariable(name: "mat_cols", arg: 6, scope: !1872, file: !408, line: 62, type: !324)
!1880 = !DILocalVariable(name: "bs_mat_cols", arg: 7, scope: !1872, file: !408, line: 62, type: !324)
!1881 = !DILocalVariable(name: "r", scope: !1882, file: !408, line: 64, type: !86)
!1882 = distinct !DILexicalBlock(scope: !1872, file: !408, line: 64, column: 5)
!1883 = !DILocation(line: 0, scope: !1882)
!1884 = !DILocation(line: 64, column: 10, scope: !1882)
!1885 = !DILocation(line: 64, scope: !1882)
!1886 = !DILocation(line: 64, column: 23, scope: !1887)
!1887 = distinct !DILexicalBlock(scope: !1882, file: !408, line: 64, column: 5)
!1888 = !DILocation(line: 64, column: 5, scope: !1882)
!1889 = !DILocation(line: 65, column: 9, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !1891, file: !408, line: 65, column: 9)
!1891 = distinct !DILexicalBlock(scope: !1887, file: !408, line: 64, column: 40)
!1892 = !DILocation(line: 65, scope: !1890)
!1893 = !DILocalVariable(name: "c", scope: !1890, file: !408, line: 65, type: !86)
!1894 = !DILocation(line: 0, scope: !1890)
!1895 = !DILocation(line: 65, column: 27, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !1890, file: !408, line: 65, column: 9)
!1897 = !DILocation(line: 66, column: 13, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !1899, file: !408, line: 66, column: 13)
!1899 = distinct !DILexicalBlock(scope: !1896, file: !408, line: 65, column: 44)
!1900 = !DILocation(line: 66, scope: !1898)
!1901 = !DILocalVariable(name: "k", scope: !1898, file: !408, line: 66, type: !86)
!1902 = !DILocation(line: 0, scope: !1898)
!1903 = !DILocation(line: 66, column: 31, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1898, file: !408, line: 66, column: 13)
!1905 = !DILocation(line: 67, column: 70, scope: !1906)
!1906 = distinct !DILexicalBlock(scope: !1904, file: !408, line: 66, column: 54)
!1907 = !DILocation(line: 67, column: 84, scope: !1906)
!1908 = !DILocation(line: 67, column: 65, scope: !1906)
!1909 = !DILocation(line: 67, column: 51, scope: !1906)
!1910 = !DILocation(line: 67, column: 96, scope: !1906)
!1911 = !DILocation(line: 67, column: 90, scope: !1906)
!1912 = !DILocation(line: 67, column: 136, scope: !1906)
!1913 = !DILocation(line: 67, column: 150, scope: !1906)
!1914 = !DILocation(line: 67, column: 131, scope: !1906)
!1915 = !DILocation(line: 67, column: 117, scope: !1906)
!1916 = !DILocation(line: 67, column: 17, scope: !1906)
!1917 = !DILocation(line: 66, column: 48, scope: !1904)
!1918 = !DILocation(line: 66, column: 13, scope: !1904)
!1919 = distinct !{!1919, !1897, !1920, !388}
!1920 = !DILocation(line: 68, column: 13, scope: !1898)
!1921 = !DILocation(line: 65, column: 40, scope: !1896)
!1922 = !DILocation(line: 65, column: 9, scope: !1896)
!1923 = distinct !{!1923, !1889, !1924, !388}
!1924 = !DILocation(line: 69, column: 9, scope: !1890)
!1925 = !DILocation(line: 64, column: 36, scope: !1887)
!1926 = !DILocation(line: 64, column: 5, scope: !1887)
!1927 = distinct !{!1927, !1888, !1928, !388}
!1928 = !DILocation(line: 70, column: 5, scope: !1882)
!1929 = !DILocation(line: 71, column: 1, scope: !1872)
!1930 = distinct !DISubprogram(name: "P1_times_Vt", scope: !408, file: !408, line: 82, type: !459, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !71)
!1931 = !DILocalVariable(name: "p", arg: 1, scope: !1930, file: !408, line: 82, type: !264)
!1932 = !DILocation(line: 0, scope: !1930)
!1933 = !DILocalVariable(name: "P1", arg: 2, scope: !1930, file: !408, line: 82, type: !411)
!1934 = !DILocalVariable(name: "V", arg: 3, scope: !1930, file: !408, line: 82, type: !90)
!1935 = !DILocalVariable(name: "acc", arg: 4, scope: !1930, file: !408, line: 82, type: !52)
!1936 = !DILocation(line: 86, column: 5, scope: !1930)
!1937 = !DILocation(line: 87, column: 1, scope: !1930)
!1938 = distinct !DISubprogram(name: "mul_add_m_upper_triangular_mat_x_mat_trans", scope: !408, file: !408, line: 32, type: !601, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !71)
!1939 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !1938, file: !408, line: 32, type: !324)
!1940 = !DILocation(line: 0, scope: !1938)
!1941 = !DILocalVariable(name: "bs_mat", arg: 2, scope: !1938, file: !408, line: 32, type: !411)
!1942 = !DILocalVariable(name: "mat", arg: 3, scope: !1938, file: !408, line: 32, type: !90)
!1943 = !DILocalVariable(name: "acc", arg: 4, scope: !1938, file: !408, line: 32, type: !52)
!1944 = !DILocalVariable(name: "bs_mat_rows", arg: 5, scope: !1938, file: !408, line: 33, type: !324)
!1945 = !DILocalVariable(name: "bs_mat_cols", arg: 6, scope: !1938, file: !408, line: 33, type: !324)
!1946 = !DILocalVariable(name: "mat_rows", arg: 7, scope: !1938, file: !408, line: 33, type: !324)
!1947 = !DILocalVariable(name: "triangular", arg: 8, scope: !1938, file: !408, line: 33, type: !324)
!1948 = !DILocalVariable(name: "bs_mat_entries_used", scope: !1938, file: !408, line: 34, type: !86)
!1949 = !DILocalVariable(name: "r", scope: !1950, file: !408, line: 35, type: !86)
!1950 = distinct !DILexicalBlock(scope: !1938, file: !408, line: 35, column: 5)
!1951 = !DILocation(line: 0, scope: !1950)
!1952 = !DILocation(line: 35, column: 10, scope: !1950)
!1953 = !DILocation(line: 34, column: 9, scope: !1938)
!1954 = !DILocation(line: 35, scope: !1950)
!1955 = !DILocation(line: 35, column: 23, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1950, file: !408, line: 35, column: 5)
!1957 = !DILocation(line: 35, column: 5, scope: !1950)
!1958 = !DILocation(line: 36, column: 33, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1960, file: !408, line: 36, column: 9)
!1960 = distinct !DILexicalBlock(scope: !1956, file: !408, line: 35, column: 43)
!1961 = !DILocalVariable(name: "c", scope: !1959, file: !408, line: 36, type: !86)
!1962 = !DILocation(line: 0, scope: !1959)
!1963 = !DILocation(line: 36, column: 14, scope: !1959)
!1964 = !DILocation(line: 36, scope: !1959)
!1965 = !DILocation(line: 36, column: 40, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1959, file: !408, line: 36, column: 9)
!1967 = !DILocation(line: 36, column: 9, scope: !1959)
!1968 = !DILocation(line: 37, column: 13, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !1970, file: !408, line: 37, column: 13)
!1970 = distinct !DILexicalBlock(scope: !1966, file: !408, line: 36, column: 60)
!1971 = !DILocation(line: 37, scope: !1969)
!1972 = !DILocalVariable(name: "k", scope: !1969, file: !408, line: 37, type: !86)
!1973 = !DILocation(line: 0, scope: !1969)
!1974 = !DILocation(line: 37, column: 31, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !1969, file: !408, line: 37, column: 13)
!1976 = !DILocation(line: 38, column: 65, scope: !1977)
!1977 = distinct !DILexicalBlock(scope: !1975, file: !408, line: 37, column: 51)
!1978 = !DILocation(line: 38, column: 51, scope: !1977)
!1979 = !DILocation(line: 38, column: 94, scope: !1977)
!1980 = !DILocation(line: 38, column: 88, scope: !1977)
!1981 = !DILocation(line: 38, column: 137, scope: !1977)
!1982 = !DILocation(line: 38, column: 148, scope: !1977)
!1983 = !DILocation(line: 38, column: 132, scope: !1977)
!1984 = !DILocation(line: 38, column: 118, scope: !1977)
!1985 = !DILocation(line: 38, column: 17, scope: !1977)
!1986 = !DILocation(line: 37, column: 45, scope: !1975)
!1987 = !DILocation(line: 37, column: 13, scope: !1975)
!1988 = distinct !{!1988, !1968, !1989, !388}
!1989 = !DILocation(line: 39, column: 13, scope: !1969)
!1990 = !DILocation(line: 40, column: 33, scope: !1970)
!1991 = !DILocation(line: 36, column: 56, scope: !1966)
!1992 = !DILocation(line: 36, column: 9, scope: !1966)
!1993 = distinct !{!1993, !1967, !1994, !388}
!1994 = !DILocation(line: 41, column: 9, scope: !1959)
!1995 = !DILocation(line: 35, column: 39, scope: !1956)
!1996 = !DILocation(line: 35, column: 5, scope: !1956)
!1997 = distinct !{!1997, !1957, !1998, !388}
!1998 = !DILocation(line: 42, column: 5, scope: !1950)
!1999 = !DILocation(line: 43, column: 1, scope: !1938)
!2000 = distinct !DISubprogram(name: "pqmayo_MAYO_5_ref_mayo_sign", scope: !68, file: !68, line: 502, type: !808, scopeLine: 504, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !71)
!2001 = !DILocalVariable(name: "p", arg: 1, scope: !2000, file: !68, line: 502, type: !264)
!2002 = !DILocation(line: 0, scope: !2000)
!2003 = !DILocalVariable(name: "sm", arg: 2, scope: !2000, file: !68, line: 502, type: !61)
!2004 = !DILocalVariable(name: "smlen", arg: 3, scope: !2000, file: !68, line: 503, type: !810)
!2005 = !DILocalVariable(name: "m", arg: 4, scope: !2000, file: !68, line: 503, type: !90)
!2006 = !DILocalVariable(name: "mlen", arg: 5, scope: !2000, file: !68, line: 504, type: !58)
!2007 = !DILocalVariable(name: "csk", arg: 6, scope: !2000, file: !68, line: 504, type: !90)
!2008 = !DILocalVariable(name: "ret", scope: !2000, file: !68, line: 505, type: !86)
!2009 = !DILocalVariable(name: "param_sig_bytes", scope: !2000, file: !68, line: 506, type: !324)
!2010 = !DILocation(line: 508, column: 16, scope: !2000)
!2011 = !DILocation(line: 508, column: 5, scope: !2000)
!2012 = !DILocation(line: 509, column: 50, scope: !2000)
!2013 = !DILocalVariable(name: "siglen", scope: !2000, file: !68, line: 507, type: !58)
!2014 = !DILocation(line: 509, column: 11, scope: !2000)
!2015 = !DILocation(line: 510, column: 13, scope: !2016)
!2016 = distinct !DILexicalBlock(scope: !2000, file: !68, line: 510, column: 9)
!2017 = !DILocation(line: 510, column: 24, scope: !2016)
!2018 = !DILocation(line: 511, column: 23, scope: !2019)
!2019 = distinct !DILexicalBlock(scope: !2016, file: !68, line: 510, column: 62)
!2020 = !DILocation(line: 511, column: 30, scope: !2019)
!2021 = !DILocation(line: 511, column: 9, scope: !2019)
!2022 = !DILocation(line: 512, column: 9, scope: !2019)
!2023 = !DILocation(line: 515, column: 14, scope: !2000)
!2024 = !DILocation(line: 515, column: 21, scope: !2000)
!2025 = !DILocation(line: 515, column: 12, scope: !2000)
!2026 = !DILocation(line: 515, column: 5, scope: !2000)
!2027 = !DILabel(scope: !2000, name: "err", file: !68, line: 516)
!2028 = !DILocation(line: 516, column: 1, scope: !2000)
!2029 = !DILocation(line: 517, column: 5, scope: !2000)
!2030 = distinct !DISubprogram(name: "pqmayo_MAYO_5_ref_mayo_open", scope: !68, file: !68, line: 520, type: !808, scopeLine: 522, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !71)
!2031 = !DILocalVariable(name: "p", arg: 1, scope: !2030, file: !68, line: 520, type: !264)
!2032 = !DILocation(line: 0, scope: !2030)
!2033 = !DILocalVariable(name: "m", arg: 2, scope: !2030, file: !68, line: 520, type: !61)
!2034 = !DILocalVariable(name: "mlen", arg: 3, scope: !2030, file: !68, line: 521, type: !810)
!2035 = !DILocalVariable(name: "sm", arg: 4, scope: !2030, file: !68, line: 521, type: !90)
!2036 = !DILocalVariable(name: "smlen", arg: 5, scope: !2030, file: !68, line: 522, type: !58)
!2037 = !DILocalVariable(name: "pk", arg: 6, scope: !2030, file: !68, line: 522, type: !90)
!2038 = !DILocalVariable(name: "param_sig_bytes", scope: !2030, file: !68, line: 523, type: !324)
!2039 = !DILocation(line: 524, column: 15, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !2030, file: !68, line: 524, column: 9)
!2041 = !DILocation(line: 527, column: 36, scope: !2030)
!2042 = !DILocation(line: 527, column: 61, scope: !2030)
!2043 = !DILocation(line: 527, column: 18, scope: !2030)
!2044 = !DILocalVariable(name: "result", scope: !2030, file: !68, line: 527, type: !86)
!2045 = !DILocation(line: 530, column: 16, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !2030, file: !68, line: 530, column: 9)
!2047 = !DILocation(line: 531, column: 23, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !2046, file: !68, line: 530, column: 28)
!2049 = !DILocation(line: 531, column: 15, scope: !2048)
!2050 = !DILocation(line: 532, column: 23, scope: !2048)
!2051 = !DILocation(line: 532, column: 9, scope: !2048)
!2052 = !DILocation(line: 533, column: 5, scope: !2048)
!2053 = !DILocation(line: 536, column: 1, scope: !2030)
!2054 = distinct !DISubprogram(name: "pqmayo_MAYO_5_ref_mayo_verify", scope: !68, file: !68, line: 617, type: !2055, scopeLine: 619, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !71)
!2055 = !DISubroutineType(types: !2056)
!2056 = !{!86, !264, !90, !58, !90, !90}
!2057 = !DILocalVariable(name: "p", arg: 1, scope: !2054, file: !68, line: 617, type: !264)
!2058 = !DILocation(line: 0, scope: !2054)
!2059 = !DILocalVariable(name: "m", arg: 2, scope: !2054, file: !68, line: 617, type: !90)
!2060 = !DILocalVariable(name: "mlen", arg: 3, scope: !2054, file: !68, line: 618, type: !58)
!2061 = !DILocalVariable(name: "sig", arg: 4, scope: !2054, file: !68, line: 618, type: !90)
!2062 = !DILocalVariable(name: "cpk", arg: 5, scope: !2054, file: !68, line: 619, type: !90)
!2063 = !DILocalVariable(name: "tEnc", scope: !2054, file: !68, line: 620, type: !820)
!2064 = !DILocation(line: 620, column: 19, scope: !2054)
!2065 = !DILocalVariable(name: "t", scope: !2054, file: !68, line: 621, type: !825)
!2066 = !DILocation(line: 621, column: 19, scope: !2054)
!2067 = !DILocalVariable(name: "y", scope: !2054, file: !68, line: 622, type: !2068)
!2068 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 2272, elements: !2069)
!2069 = !{!2070}
!2070 = !DISubrange(count: 284)
!2071 = !DILocation(line: 622, column: 19, scope: !2054)
!2072 = !DILocalVariable(name: "s", scope: !2054, file: !68, line: 623, type: !849)
!2073 = !DILocation(line: 623, column: 19, scope: !2054)
!2074 = !DILocalVariable(name: "pk", scope: !2054, file: !68, line: 624, type: !2075)
!2075 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 6874560, elements: !2076)
!2076 = !{!2077}
!2077 = !DISubrange(count: 107415)
!2078 = !DILocation(line: 624, column: 14, scope: !2054)
!2079 = !DILocalVariable(name: "tmp", scope: !2054, file: !68, line: 625, type: !2080)
!2080 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 832, elements: !2081)
!2081 = !{!2082}
!2082 = !DISubrange(count: 104)
!2083 = !DILocation(line: 625, column: 19, scope: !2054)
!2084 = !DILocalVariable(name: "param_m", scope: !2054, file: !68, line: 627, type: !324)
!2085 = !DILocalVariable(name: "param_n", scope: !2054, file: !68, line: 628, type: !324)
!2086 = !DILocalVariable(name: "param_k", scope: !2054, file: !68, line: 629, type: !324)
!2087 = !DILocalVariable(name: "param_m_bytes", scope: !2054, file: !68, line: 630, type: !324)
!2088 = !DILocalVariable(name: "param_sig_bytes", scope: !2054, file: !68, line: 631, type: !324)
!2089 = !DILocalVariable(name: "param_digest_bytes", scope: !2054, file: !68, line: 632, type: !324)
!2090 = !DILocalVariable(name: "param_salt_bytes", scope: !2054, file: !68, line: 633, type: !324)
!2091 = !DILocation(line: 635, column: 15, scope: !2054)
!2092 = !DILocalVariable(name: "ret", scope: !2054, file: !68, line: 635, type: !86)
!2093 = !DILocation(line: 636, column: 13, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !2054, file: !68, line: 636, column: 9)
!2095 = !DILocalVariable(name: "P1", scope: !2054, file: !68, line: 640, type: !52)
!2096 = !DILocation(line: 641, column: 23, scope: !2054)
!2097 = !DILocalVariable(name: "P2", scope: !2054, file: !68, line: 641, type: !52)
!2098 = !DILocation(line: 642, column: 23, scope: !2054)
!2099 = !DILocalVariable(name: "P3", scope: !2054, file: !68, line: 642, type: !52)
!2100 = !DILocation(line: 657, column: 5, scope: !2054)
!2101 = !DILocation(line: 660, column: 16, scope: !2054)
!2102 = !DILocation(line: 660, column: 60, scope: !2054)
!2103 = !DILocation(line: 660, column: 5, scope: !2054)
!2104 = !DILocation(line: 662, column: 5, scope: !2054)
!2105 = !DILocation(line: 663, column: 5, scope: !2054)
!2106 = !DILocation(line: 666, column: 5, scope: !2054)
!2107 = !DILocation(line: 668, column: 5, scope: !2054)
!2108 = !DILocation(line: 670, column: 9, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !2054, file: !68, line: 670, column: 9)
!2110 = !DILocation(line: 670, column: 31, scope: !2109)
!2111 = !DILocation(line: 674, column: 1, scope: !2054)
!2112 = distinct !DISubprogram(name: "pqmayo_MAYO_5_ref_mayo_expand_pk", scope: !68, file: !68, line: 608, type: !2113, scopeLine: 609, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !71)
!2113 = !DISubroutineType(types: !2114)
!2114 = !{!86, !264, !90, !52}
!2115 = !DILocalVariable(name: "p", arg: 1, scope: !2112, file: !68, line: 608, type: !264)
!2116 = !DILocation(line: 0, scope: !2112)
!2117 = !DILocalVariable(name: "cpk", arg: 2, scope: !2112, file: !68, line: 608, type: !90)
!2118 = !DILocalVariable(name: "pk", arg: 3, scope: !2112, file: !68, line: 609, type: !52)
!2119 = !DILocation(line: 610, column: 5, scope: !2112)
!2120 = !DILocation(line: 612, column: 23, scope: !2112)
!2121 = !DILocation(line: 612, column: 72, scope: !2112)
!2122 = !DILocation(line: 612, column: 5, scope: !2112)
!2123 = !DILocation(line: 614, column: 5, scope: !2112)
!2124 = distinct !DISubprogram(name: "eval_public_map", scope: !68, file: !68, line: 288, type: !2125, scopeLine: 288, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !71)
!2125 = !DISubroutineType(types: !2126)
!2126 = !{null, !264, !90, !411, !411, !411, !61}
!2127 = !DILocalVariable(name: "p", arg: 1, scope: !2124, file: !68, line: 288, type: !264)
!2128 = !DILocation(line: 0, scope: !2124)
!2129 = !DILocalVariable(name: "s", arg: 2, scope: !2124, file: !68, line: 288, type: !90)
!2130 = !DILocalVariable(name: "P1", arg: 3, scope: !2124, file: !68, line: 288, type: !411)
!2131 = !DILocalVariable(name: "P2", arg: 4, scope: !2124, file: !68, line: 288, type: !411)
!2132 = !DILocalVariable(name: "P3", arg: 5, scope: !2124, file: !68, line: 288, type: !411)
!2133 = !DILocalVariable(name: "eval", arg: 6, scope: !2124, file: !68, line: 288, type: !61)
!2134 = !DILocalVariable(name: "SPS", scope: !2124, file: !68, line: 289, type: !316)
!2135 = !DILocation(line: 289, column: 14, scope: !2124)
!2136 = !DILocation(line: 291, column: 5, scope: !2124)
!2137 = !DILocalVariable(name: "zero", scope: !2124, file: !68, line: 292, type: !825)
!2138 = !DILocation(line: 292, column: 19, scope: !2124)
!2139 = !DILocation(line: 293, column: 5, scope: !2124)
!2140 = !DILocation(line: 294, column: 1, scope: !2124)
!2141 = distinct !DISubprogram(name: "m_calculate_PS_SPS", scope: !408, file: !408, line: 277, type: !2142, scopeLine: 278, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !71)
!2142 = !DISubroutineType(types: !2143)
!2143 = !{null, !264, !411, !411, !411, !90, !52}
!2144 = !DILocalVariable(name: "p", arg: 1, scope: !2141, file: !408, line: 277, type: !264)
!2145 = !DILocation(line: 0, scope: !2141)
!2146 = !DILocalVariable(name: "P1", arg: 2, scope: !2141, file: !408, line: 277, type: !411)
!2147 = !DILocalVariable(name: "P2", arg: 3, scope: !2141, file: !408, line: 277, type: !411)
!2148 = !DILocalVariable(name: "P3", arg: 4, scope: !2141, file: !408, line: 277, type: !411)
!2149 = !DILocalVariable(name: "s", arg: 5, scope: !2141, file: !408, line: 277, type: !90)
!2150 = !DILocalVariable(name: "SPS", arg: 6, scope: !2141, file: !408, line: 278, type: !52)
!2151 = !DILocalVariable(name: "PS", scope: !2141, file: !408, line: 286, type: !2152)
!2152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 1064448, elements: !2153)
!2153 = !{!2154}
!2154 = !DISubrange(count: 16632)
!2155 = !DILocation(line: 286, column: 14, scope: !2141)
!2156 = !DILocation(line: 287, column: 5, scope: !2141)
!2157 = !DILocation(line: 290, column: 5, scope: !2141)
!2158 = !DILocation(line: 292, column: 1, scope: !2141)
!2159 = distinct !DISubprogram(name: "mayo_generic_m_calculate_PS", scope: !408, file: !408, line: 151, type: !2160, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !71)
!2160 = !DISubroutineType(types: !2161)
!2161 = !{null, !411, !411, !411, !90, !324, !324, !324, !324, !52}
!2162 = !DILocalVariable(name: "P1", arg: 1, scope: !2159, file: !408, line: 151, type: !411)
!2163 = !DILocation(line: 0, scope: !2159)
!2164 = !DILocalVariable(name: "P2", arg: 2, scope: !2159, file: !408, line: 151, type: !411)
!2165 = !DILocalVariable(name: "P3", arg: 3, scope: !2159, file: !408, line: 151, type: !411)
!2166 = !DILocalVariable(name: "S", arg: 4, scope: !2159, file: !408, line: 151, type: !90)
!2167 = !DILocalVariable(name: "m", arg: 5, scope: !2159, file: !408, line: 152, type: !324)
!2168 = !DILocalVariable(name: "v", arg: 6, scope: !2159, file: !408, line: 152, type: !324)
!2169 = !DILocalVariable(name: "o", arg: 7, scope: !2159, file: !408, line: 152, type: !324)
!2170 = !DILocalVariable(name: "k", arg: 8, scope: !2159, file: !408, line: 152, type: !324)
!2171 = !DILocalVariable(name: "PS", arg: 9, scope: !2159, file: !408, line: 152, type: !52)
!2172 = !DILocation(line: 154, column: 21, scope: !2159)
!2173 = !DILocalVariable(name: "n", scope: !2159, file: !408, line: 154, type: !324)
!2174 = !DILocation(line: 155, column: 32, scope: !2159)
!2175 = !DILocation(line: 155, column: 37, scope: !2159)
!2176 = !DILocalVariable(name: "m_vec_limbs", scope: !2159, file: !408, line: 155, type: !324)
!2177 = !DILocalVariable(name: "accumulator", scope: !2159, file: !408, line: 157, type: !2178)
!2178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 17031168, elements: !2179)
!2179 = !{!2180}
!2180 = !DISubrange(count: 266112)
!2181 = !DILocation(line: 157, column: 14, scope: !2159)
!2182 = !DILocalVariable(name: "P1_used", scope: !2159, file: !408, line: 158, type: !86)
!2183 = !DILocalVariable(name: "row", scope: !2184, file: !408, line: 159, type: !86)
!2184 = distinct !DILexicalBlock(scope: !2159, file: !408, line: 159, column: 5)
!2185 = !DILocation(line: 0, scope: !2184)
!2186 = !DILocation(line: 159, column: 10, scope: !2184)
!2187 = !DILocation(line: 158, column: 9, scope: !2159)
!2188 = !DILocation(line: 159, scope: !2184)
!2189 = !DILocation(line: 159, column: 27, scope: !2190)
!2190 = distinct !DILexicalBlock(scope: !2184, file: !408, line: 159, column: 5)
!2191 = !DILocation(line: 159, column: 5, scope: !2184)
!2192 = !DILocation(line: 160, column: 9, scope: !2193)
!2193 = distinct !DILexicalBlock(scope: !2194, file: !408, line: 160, column: 9)
!2194 = distinct !DILexicalBlock(scope: !2190, file: !408, line: 159, column: 39)
!2195 = !DILocation(line: 175, column: 5, scope: !2196)
!2196 = distinct !DILexicalBlock(scope: !2159, file: !408, line: 175, column: 5)
!2197 = !DILocation(line: 160, scope: !2193)
!2198 = !DILocalVariable(name: "j", scope: !2193, file: !408, line: 160, type: !86)
!2199 = !DILocation(line: 0, scope: !2193)
!2200 = !DILocation(line: 160, column: 29, scope: !2201)
!2201 = distinct !DILexicalBlock(scope: !2193, file: !408, line: 160, column: 9)
!2202 = !DILocation(line: 167, column: 9, scope: !2203)
!2203 = distinct !DILexicalBlock(scope: !2194, file: !408, line: 167, column: 9)
!2204 = !DILocation(line: 161, column: 13, scope: !2205)
!2205 = distinct !DILexicalBlock(scope: !2206, file: !408, line: 161, column: 13)
!2206 = distinct !DILexicalBlock(scope: !2201, file: !408, line: 160, column: 39)
!2207 = !DILocation(line: 161, scope: !2205)
!2208 = !DILocalVariable(name: "col", scope: !2205, file: !408, line: 161, type: !86)
!2209 = !DILocation(line: 0, scope: !2205)
!2210 = !DILocation(line: 161, column: 35, scope: !2211)
!2211 = distinct !DILexicalBlock(scope: !2205, file: !408, line: 161, column: 13)
!2212 = !DILocation(line: 162, column: 54, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !2211, file: !408, line: 161, column: 47)
!2214 = !DILocation(line: 162, column: 43, scope: !2213)
!2215 = !DILocation(line: 162, column: 91, scope: !2213)
!2216 = !DILocation(line: 162, column: 95, scope: !2213)
!2217 = !DILocation(line: 162, column: 102, scope: !2213)
!2218 = !DILocation(line: 162, column: 115, scope: !2213)
!2219 = !DILocation(line: 162, column: 109, scope: !2213)
!2220 = !DILocation(line: 162, column: 107, scope: !2213)
!2221 = !DILocation(line: 162, column: 125, scope: !2213)
!2222 = !DILocation(line: 162, column: 82, scope: !2213)
!2223 = !DILocation(line: 162, column: 17, scope: !2213)
!2224 = !DILocation(line: 161, column: 43, scope: !2211)
!2225 = !DILocation(line: 161, column: 13, scope: !2211)
!2226 = distinct !{!2226, !2204, !2227, !388}
!2227 = !DILocation(line: 163, column: 13, scope: !2205)
!2228 = !DILocation(line: 164, column: 21, scope: !2206)
!2229 = !DILocation(line: 160, column: 35, scope: !2201)
!2230 = !DILocation(line: 160, column: 9, scope: !2201)
!2231 = distinct !{!2231, !2192, !2232, !388}
!2232 = !DILocation(line: 165, column: 9, scope: !2193)
!2233 = !DILocation(line: 167, scope: !2203)
!2234 = !DILocalVariable(name: "j", scope: !2203, file: !408, line: 167, type: !86)
!2235 = !DILocation(line: 0, scope: !2203)
!2236 = !DILocation(line: 167, column: 27, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !2203, file: !408, line: 167, column: 9)
!2238 = !DILocation(line: 168, column: 13, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !2240, file: !408, line: 168, column: 13)
!2240 = distinct !DILexicalBlock(scope: !2237, file: !408, line: 167, column: 37)
!2241 = !DILocation(line: 168, scope: !2239)
!2242 = !DILocalVariable(name: "col", scope: !2239, file: !408, line: 168, type: !86)
!2243 = !DILocation(line: 0, scope: !2239)
!2244 = !DILocation(line: 168, column: 35, scope: !2245)
!2245 = distinct !DILexicalBlock(scope: !2239, file: !408, line: 168, column: 13)
!2246 = !DILocation(line: 169, column: 50, scope: !2247)
!2247 = distinct !DILexicalBlock(scope: !2245, file: !408, line: 168, column: 47)
!2248 = !DILocation(line: 169, column: 54, scope: !2247)
!2249 = !DILocation(line: 169, column: 58, scope: !2247)
!2250 = !DILocation(line: 169, column: 43, scope: !2247)
!2251 = !DILocation(line: 169, column: 93, scope: !2247)
!2252 = !DILocation(line: 169, column: 97, scope: !2247)
!2253 = !DILocation(line: 169, column: 104, scope: !2247)
!2254 = !DILocation(line: 169, column: 118, scope: !2247)
!2255 = !DILocation(line: 169, column: 111, scope: !2247)
!2256 = !DILocation(line: 169, column: 109, scope: !2247)
!2257 = !DILocation(line: 169, column: 133, scope: !2247)
!2258 = !DILocation(line: 169, column: 84, scope: !2247)
!2259 = !DILocation(line: 169, column: 17, scope: !2247)
!2260 = !DILocation(line: 168, column: 43, scope: !2245)
!2261 = !DILocation(line: 168, column: 13, scope: !2245)
!2262 = distinct !{!2262, !2238, !2263, !388}
!2263 = !DILocation(line: 170, column: 13, scope: !2239)
!2264 = !DILocation(line: 167, column: 33, scope: !2237)
!2265 = !DILocation(line: 167, column: 9, scope: !2237)
!2266 = distinct !{!2266, !2202, !2267, !388}
!2267 = !DILocation(line: 171, column: 9, scope: !2203)
!2268 = !DILocation(line: 159, column: 35, scope: !2190)
!2269 = !DILocation(line: 159, column: 5, scope: !2190)
!2270 = distinct !{!2270, !2191, !2271, !388}
!2271 = !DILocation(line: 172, column: 5, scope: !2184)
!2272 = !DILocation(line: 174, column: 9, scope: !2159)
!2273 = !DILocation(line: 175, scope: !2196)
!2274 = !DILocalVariable(name: "row", scope: !2196, file: !408, line: 175, type: !86)
!2275 = !DILocation(line: 0, scope: !2196)
!2276 = !DILocalVariable(name: "P3_used", scope: !2159, file: !408, line: 174, type: !86)
!2277 = !DILocation(line: 175, column: 27, scope: !2278)
!2278 = distinct !DILexicalBlock(scope: !2196, file: !408, line: 175, column: 5)
!2279 = !DILocation(line: 176, column: 9, scope: !2280)
!2280 = distinct !DILexicalBlock(scope: !2281, file: !408, line: 176, column: 9)
!2281 = distinct !DILexicalBlock(scope: !2278, file: !408, line: 175, column: 39)
!2282 = !DILocation(line: 186, column: 5, scope: !2159)
!2283 = !DILocation(line: 176, scope: !2280)
!2284 = !DILocalVariable(name: "j", scope: !2280, file: !408, line: 176, type: !86)
!2285 = !DILocation(line: 0, scope: !2280)
!2286 = !DILocation(line: 176, column: 29, scope: !2287)
!2287 = distinct !DILexicalBlock(scope: !2280, file: !408, line: 176, column: 9)
!2288 = !DILocation(line: 177, column: 13, scope: !2289)
!2289 = distinct !DILexicalBlock(scope: !2290, file: !408, line: 177, column: 13)
!2290 = distinct !DILexicalBlock(scope: !2287, file: !408, line: 176, column: 39)
!2291 = !DILocation(line: 177, scope: !2289)
!2292 = !DILocalVariable(name: "col", scope: !2289, file: !408, line: 177, type: !86)
!2293 = !DILocation(line: 0, scope: !2289)
!2294 = !DILocation(line: 177, column: 35, scope: !2295)
!2295 = distinct !DILexicalBlock(scope: !2289, file: !408, line: 177, column: 13)
!2296 = !DILocation(line: 178, column: 53, scope: !2297)
!2297 = distinct !DILexicalBlock(scope: !2295, file: !408, line: 177, column: 47)
!2298 = !DILocation(line: 178, column: 43, scope: !2297)
!2299 = !DILocation(line: 178, column: 89, scope: !2297)
!2300 = !DILocation(line: 178, column: 93, scope: !2297)
!2301 = !DILocation(line: 178, column: 100, scope: !2297)
!2302 = !DILocation(line: 178, column: 113, scope: !2297)
!2303 = !DILocation(line: 178, column: 107, scope: !2297)
!2304 = !DILocation(line: 178, column: 105, scope: !2297)
!2305 = !DILocation(line: 178, column: 123, scope: !2297)
!2306 = !DILocation(line: 178, column: 80, scope: !2297)
!2307 = !DILocation(line: 178, column: 17, scope: !2297)
!2308 = !DILocation(line: 177, column: 43, scope: !2295)
!2309 = !DILocation(line: 177, column: 13, scope: !2295)
!2310 = distinct !{!2310, !2288, !2311, !388}
!2311 = !DILocation(line: 179, column: 13, scope: !2289)
!2312 = !DILocation(line: 180, column: 21, scope: !2290)
!2313 = !DILocation(line: 176, column: 35, scope: !2287)
!2314 = !DILocation(line: 176, column: 9, scope: !2287)
!2315 = distinct !{!2315, !2279, !2316, !388}
!2316 = !DILocation(line: 181, column: 9, scope: !2280)
!2317 = !DILocation(line: 175, column: 35, scope: !2278)
!2318 = !DILocation(line: 175, column: 5, scope: !2278)
!2319 = distinct !{!2319, !2195, !2320, !388}
!2320 = !DILocation(line: 182, column: 5, scope: !2196)
!2321 = !DILocalVariable(name: "i", scope: !2159, file: !408, line: 185, type: !86)
!2322 = !DILocation(line: 186, column: 14, scope: !2159)
!2323 = !DILocation(line: 187, column: 58, scope: !2324)
!2324 = distinct !DILexicalBlock(scope: !2159, file: !408, line: 186, column: 23)
!2325 = !DILocation(line: 187, column: 63, scope: !2324)
!2326 = !DILocation(line: 187, column: 54, scope: !2324)
!2327 = !DILocation(line: 187, column: 85, scope: !2324)
!2328 = !DILocation(line: 187, column: 81, scope: !2324)
!2329 = !DILocation(line: 187, column: 9, scope: !2324)
!2330 = !DILocation(line: 188, column: 10, scope: !2324)
!2331 = distinct !{!2331, !2282, !2332, !388}
!2332 = !DILocation(line: 189, column: 5, scope: !2159)
!2333 = !DILocation(line: 191, column: 1, scope: !2159)
!2334 = distinct !DISubprogram(name: "mayo_generic_m_calculate_SPS", scope: !408, file: !408, line: 195, type: !2335, scopeLine: 195, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !71)
!2335 = !DISubroutineType(types: !2336)
!2336 = !{null, !411, !90, !86, !86, !86, !52}
!2337 = !DILocalVariable(name: "PS", arg: 1, scope: !2334, file: !408, line: 195, type: !411)
!2338 = !DILocation(line: 0, scope: !2334)
!2339 = !DILocalVariable(name: "S", arg: 2, scope: !2334, file: !408, line: 195, type: !90)
!2340 = !DILocalVariable(name: "m", arg: 3, scope: !2334, file: !408, line: 195, type: !86)
!2341 = !DILocalVariable(name: "k", arg: 4, scope: !2334, file: !408, line: 195, type: !86)
!2342 = !DILocalVariable(name: "n", arg: 5, scope: !2334, file: !408, line: 195, type: !86)
!2343 = !DILocalVariable(name: "SPS", arg: 6, scope: !2334, file: !408, line: 195, type: !52)
!2344 = !DILocalVariable(name: "accumulator", scope: !2334, file: !408, line: 196, type: !2345)
!2345 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 1327104, elements: !2346)
!2346 = !{!2347}
!2347 = !DISubrange(count: 20736)
!2348 = !DILocation(line: 196, column: 14, scope: !2334)
!2349 = !DILocation(line: 197, column: 32, scope: !2334)
!2350 = !DILocation(line: 197, column: 37, scope: !2334)
!2351 = !DILocalVariable(name: "m_vec_limbs", scope: !2334, file: !408, line: 197, type: !324)
!2352 = !DILocalVariable(name: "row", scope: !2353, file: !408, line: 198, type: !86)
!2353 = distinct !DILexicalBlock(scope: !2334, file: !408, line: 198, column: 5)
!2354 = !DILocation(line: 0, scope: !2353)
!2355 = !DILocation(line: 198, column: 10, scope: !2353)
!2356 = !DILocation(line: 198, scope: !2353)
!2357 = !DILocation(line: 198, column: 27, scope: !2358)
!2358 = distinct !DILexicalBlock(scope: !2353, file: !408, line: 198, column: 5)
!2359 = !DILocation(line: 198, column: 5, scope: !2353)
!2360 = !DILocation(line: 199, column: 9, scope: !2361)
!2361 = distinct !DILexicalBlock(scope: !2362, file: !408, line: 199, column: 9)
!2362 = distinct !DILexicalBlock(scope: !2358, file: !408, line: 198, column: 39)
!2363 = !DILocation(line: 208, column: 5, scope: !2334)
!2364 = !DILocation(line: 199, scope: !2361)
!2365 = !DILocalVariable(name: "j", scope: !2361, file: !408, line: 199, type: !86)
!2366 = !DILocation(line: 0, scope: !2361)
!2367 = !DILocation(line: 199, column: 27, scope: !2368)
!2368 = distinct !DILexicalBlock(scope: !2361, file: !408, line: 199, column: 9)
!2369 = !DILocation(line: 200, column: 13, scope: !2370)
!2370 = distinct !DILexicalBlock(scope: !2371, file: !408, line: 200, column: 13)
!2371 = distinct !DILexicalBlock(scope: !2368, file: !408, line: 199, column: 37)
!2372 = !DILocation(line: 200, scope: !2370)
!2373 = !DILocalVariable(name: "col", scope: !2370, file: !408, line: 200, type: !86)
!2374 = !DILocation(line: 0, scope: !2370)
!2375 = !DILocation(line: 200, column: 35, scope: !2376)
!2376 = distinct !DILexicalBlock(scope: !2370, file: !408, line: 200, column: 13)
!2377 = !DILocation(line: 201, column: 52, scope: !2378)
!2378 = distinct !DILexicalBlock(scope: !2376, file: !408, line: 200, column: 50)
!2379 = !DILocation(line: 201, column: 56, scope: !2378)
!2380 = !DILocation(line: 201, column: 63, scope: !2378)
!2381 = !DILocation(line: 201, column: 47, scope: !2378)
!2382 = !DILocation(line: 201, column: 99, scope: !2378)
!2383 = !DILocation(line: 201, column: 103, scope: !2378)
!2384 = !DILocation(line: 201, column: 110, scope: !2378)
!2385 = !DILocation(line: 201, column: 123, scope: !2378)
!2386 = !DILocation(line: 201, column: 117, scope: !2378)
!2387 = !DILocation(line: 201, column: 115, scope: !2378)
!2388 = !DILocation(line: 201, column: 133, scope: !2378)
!2389 = !DILocation(line: 201, column: 90, scope: !2378)
!2390 = !DILocation(line: 201, column: 21, scope: !2378)
!2391 = !DILocation(line: 200, column: 44, scope: !2376)
!2392 = !DILocation(line: 200, column: 13, scope: !2376)
!2393 = distinct !{!2393, !2369, !2394, !388}
!2394 = !DILocation(line: 202, column: 13, scope: !2370)
!2395 = !DILocation(line: 199, column: 33, scope: !2368)
!2396 = !DILocation(line: 199, column: 9, scope: !2368)
!2397 = distinct !{!2397, !2360, !2398, !388}
!2398 = !DILocation(line: 203, column: 9, scope: !2361)
!2399 = !DILocation(line: 198, column: 35, scope: !2358)
!2400 = !DILocation(line: 198, column: 5, scope: !2358)
!2401 = distinct !{!2401, !2359, !2402, !388}
!2402 = !DILocation(line: 204, column: 5, scope: !2353)
!2403 = !DILocalVariable(name: "i", scope: !2334, file: !408, line: 207, type: !86)
!2404 = !DILocation(line: 208, column: 14, scope: !2334)
!2405 = !DILocation(line: 209, column: 58, scope: !2406)
!2406 = distinct !DILexicalBlock(scope: !2334, file: !408, line: 208, column: 21)
!2407 = !DILocation(line: 209, column: 63, scope: !2406)
!2408 = !DILocation(line: 209, column: 54, scope: !2406)
!2409 = !DILocation(line: 209, column: 86, scope: !2406)
!2410 = !DILocation(line: 209, column: 82, scope: !2406)
!2411 = !DILocation(line: 209, column: 9, scope: !2406)
!2412 = !DILocation(line: 210, column: 10, scope: !2406)
!2413 = distinct !{!2413, !2363, !2414, !388}
!2414 = !DILocation(line: 211, column: 5, scope: !2334)
!2415 = !DILocation(line: 212, column: 1, scope: !2334)
!2416 = distinct !DISubprogram(name: "m_vec_add", scope: !529, file: !529, line: 22, type: !2417, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !71)
!2417 = !DISubroutineType(types: !2418)
!2418 = !{null, !86, !411, !52}
!2419 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2416, file: !529, line: 22, type: !86)
!2420 = !DILocation(line: 0, scope: !2416)
!2421 = !DILocalVariable(name: "in", arg: 2, scope: !2416, file: !529, line: 22, type: !411)
!2422 = !DILocalVariable(name: "acc", arg: 3, scope: !2416, file: !529, line: 22, type: !52)
!2423 = !DILocalVariable(name: "i", scope: !2424, file: !529, line: 24, type: !58)
!2424 = distinct !DILexicalBlock(scope: !2416, file: !529, line: 24, column: 5)
!2425 = !DILocation(line: 0, scope: !2424)
!2426 = !DILocation(line: 24, column: 10, scope: !2424)
!2427 = !DILocation(line: 24, scope: !2424)
!2428 = !DILocation(line: 24, column: 26, scope: !2429)
!2429 = distinct !DILexicalBlock(scope: !2424, file: !529, line: 24, column: 5)
!2430 = !DILocation(line: 24, column: 5, scope: !2424)
!2431 = !DILocation(line: 26, column: 19, scope: !2432)
!2432 = distinct !DILexicalBlock(scope: !2429, file: !529, line: 25, column: 5)
!2433 = !DILocation(line: 26, column: 9, scope: !2432)
!2434 = !DILocation(line: 26, column: 16, scope: !2432)
!2435 = !DILocation(line: 24, column: 46, scope: !2429)
!2436 = !DILocation(line: 24, column: 5, scope: !2429)
!2437 = distinct !{!2437, !2430, !2438, !388}
!2438 = !DILocation(line: 27, column: 5, scope: !2424)
!2439 = !DILocation(line: 28, column: 1, scope: !2416)
!2440 = distinct !DISubprogram(name: "m_vec_multiply_bins", scope: !529, file: !529, line: 66, type: !2441, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !71)
!2441 = !DISubroutineType(types: !2442)
!2442 = !{null, !86, !52, !52}
!2443 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2440, file: !529, line: 66, type: !86)
!2444 = !DILocation(line: 0, scope: !2440)
!2445 = !DILocalVariable(name: "bins", arg: 2, scope: !2440, file: !529, line: 66, type: !52)
!2446 = !DILocalVariable(name: "out", arg: 3, scope: !2440, file: !529, line: 66, type: !52)
!2447 = !DILocation(line: 67, column: 44, scope: !2440)
!2448 = !DILocation(line: 67, column: 73, scope: !2440)
!2449 = !DILocation(line: 67, column: 5, scope: !2440)
!2450 = !DILocation(line: 68, column: 40, scope: !2440)
!2451 = !DILocation(line: 68, column: 69, scope: !2440)
!2452 = !DILocation(line: 68, column: 5, scope: !2440)
!2453 = !DILocation(line: 69, column: 44, scope: !2440)
!2454 = !DILocation(line: 69, column: 74, scope: !2440)
!2455 = !DILocation(line: 69, column: 5, scope: !2440)
!2456 = !DILocation(line: 70, column: 40, scope: !2440)
!2457 = !DILocation(line: 70, column: 69, scope: !2440)
!2458 = !DILocation(line: 70, column: 5, scope: !2440)
!2459 = !DILocation(line: 71, column: 44, scope: !2440)
!2460 = !DILocation(line: 71, column: 73, scope: !2440)
!2461 = !DILocation(line: 71, column: 5, scope: !2440)
!2462 = !DILocation(line: 72, column: 40, scope: !2440)
!2463 = !DILocation(line: 72, column: 69, scope: !2440)
!2464 = !DILocation(line: 72, column: 5, scope: !2440)
!2465 = !DILocation(line: 73, column: 44, scope: !2440)
!2466 = !DILocation(line: 73, column: 74, scope: !2440)
!2467 = !DILocation(line: 73, column: 5, scope: !2440)
!2468 = !DILocation(line: 74, column: 40, scope: !2440)
!2469 = !DILocation(line: 74, column: 69, scope: !2440)
!2470 = !DILocation(line: 74, column: 5, scope: !2440)
!2471 = !DILocation(line: 75, column: 44, scope: !2440)
!2472 = !DILocation(line: 75, column: 74, scope: !2440)
!2473 = !DILocation(line: 75, column: 5, scope: !2440)
!2474 = !DILocation(line: 76, column: 40, scope: !2440)
!2475 = !DILocation(line: 76, column: 69, scope: !2440)
!2476 = !DILocation(line: 76, column: 5, scope: !2440)
!2477 = !DILocation(line: 77, column: 44, scope: !2440)
!2478 = !DILocation(line: 77, column: 74, scope: !2440)
!2479 = !DILocation(line: 77, column: 5, scope: !2440)
!2480 = !DILocation(line: 78, column: 40, scope: !2440)
!2481 = !DILocation(line: 78, column: 69, scope: !2440)
!2482 = !DILocation(line: 78, column: 5, scope: !2440)
!2483 = !DILocation(line: 79, column: 44, scope: !2440)
!2484 = !DILocation(line: 79, column: 74, scope: !2440)
!2485 = !DILocation(line: 79, column: 5, scope: !2440)
!2486 = !DILocation(line: 80, column: 40, scope: !2440)
!2487 = !DILocation(line: 80, column: 69, scope: !2440)
!2488 = !DILocation(line: 80, column: 5, scope: !2440)
!2489 = !DILocation(line: 81, column: 35, scope: !2440)
!2490 = !DILocation(line: 81, column: 5, scope: !2440)
!2491 = !DILocation(line: 82, column: 1, scope: !2440)
!2492 = distinct !DISubprogram(name: "m_vec_mul_add_x_inv", scope: !529, file: !529, line: 56, type: !2417, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !71)
!2493 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2492, file: !529, line: 56, type: !86)
!2494 = !DILocation(line: 0, scope: !2492)
!2495 = !DILocalVariable(name: "in", arg: 2, scope: !2492, file: !529, line: 56, type: !411)
!2496 = !DILocalVariable(name: "acc", arg: 3, scope: !2492, file: !529, line: 56, type: !52)
!2497 = !DILocalVariable(name: "mask_lsb", scope: !2492, file: !529, line: 58, type: !53)
!2498 = !DILocalVariable(name: "i", scope: !2499, file: !529, line: 59, type: !86)
!2499 = distinct !DILexicalBlock(scope: !2492, file: !529, line: 59, column: 5)
!2500 = !DILocation(line: 0, scope: !2499)
!2501 = !DILocation(line: 59, column: 9, scope: !2499)
!2502 = !DILocation(line: 59, scope: !2499)
!2503 = !DILocation(line: 59, column: 20, scope: !2504)
!2504 = distinct !DILexicalBlock(scope: !2499, file: !529, line: 59, column: 5)
!2505 = !DILocation(line: 59, column: 5, scope: !2499)
!2506 = !DILocation(line: 60, column: 22, scope: !2507)
!2507 = distinct !DILexicalBlock(scope: !2504, file: !529, line: 59, column: 43)
!2508 = !DILocation(line: 60, column: 28, scope: !2507)
!2509 = !DILocalVariable(name: "t", scope: !2507, file: !529, line: 60, type: !53)
!2510 = !DILocation(line: 0, scope: !2507)
!2511 = !DILocation(line: 61, column: 32, scope: !2507)
!2512 = !DILocation(line: 61, column: 43, scope: !2507)
!2513 = !DILocation(line: 61, column: 38, scope: !2507)
!2514 = !DILocation(line: 61, column: 9, scope: !2507)
!2515 = !DILocation(line: 61, column: 16, scope: !2507)
!2516 = !DILocation(line: 59, column: 40, scope: !2504)
!2517 = !DILocation(line: 59, column: 5, scope: !2504)
!2518 = distinct !{!2518, !2505, !2519, !388}
!2519 = !DILocation(line: 62, column: 5, scope: !2499)
!2520 = !DILocation(line: 63, column: 1, scope: !2492)
!2521 = distinct !DISubprogram(name: "m_vec_mul_add_x", scope: !529, file: !529, line: 46, type: !2417, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !71)
!2522 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2521, file: !529, line: 46, type: !86)
!2523 = !DILocation(line: 0, scope: !2521)
!2524 = !DILocalVariable(name: "in", arg: 2, scope: !2521, file: !529, line: 46, type: !411)
!2525 = !DILocalVariable(name: "acc", arg: 3, scope: !2521, file: !529, line: 46, type: !52)
!2526 = !DILocalVariable(name: "mask_msb", scope: !2521, file: !529, line: 48, type: !53)
!2527 = !DILocalVariable(name: "i", scope: !2528, file: !529, line: 49, type: !86)
!2528 = distinct !DILexicalBlock(scope: !2521, file: !529, line: 49, column: 5)
!2529 = !DILocation(line: 0, scope: !2528)
!2530 = !DILocation(line: 49, column: 9, scope: !2528)
!2531 = !DILocation(line: 49, scope: !2528)
!2532 = !DILocation(line: 49, column: 20, scope: !2533)
!2533 = distinct !DILexicalBlock(scope: !2528, file: !529, line: 49, column: 5)
!2534 = !DILocation(line: 49, column: 5, scope: !2528)
!2535 = !DILocation(line: 50, column: 22, scope: !2536)
!2536 = distinct !DILexicalBlock(scope: !2533, file: !529, line: 49, column: 43)
!2537 = !DILocalVariable(name: "t", scope: !2536, file: !529, line: 50, type: !53)
!2538 = !DILocation(line: 0, scope: !2536)
!2539 = !DILocation(line: 51, column: 32, scope: !2536)
!2540 = !DILocation(line: 51, column: 44, scope: !2536)
!2541 = !DILocation(line: 51, column: 50, scope: !2536)
!2542 = !DILocation(line: 51, column: 38, scope: !2536)
!2543 = !DILocation(line: 51, column: 9, scope: !2536)
!2544 = !DILocation(line: 51, column: 16, scope: !2536)
!2545 = !DILocation(line: 49, column: 40, scope: !2533)
!2546 = !DILocation(line: 49, column: 5, scope: !2533)
!2547 = distinct !{!2547, !2534, !2548, !388}
!2548 = !DILocation(line: 52, column: 5, scope: !2528)
!2549 = !DILocation(line: 53, column: 1, scope: !2521)
!2550 = distinct !DISubprogram(name: "m_vec_copy", scope: !529, file: !529, line: 13, type: !2417, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !71)
!2551 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2550, file: !529, line: 13, type: !86)
!2552 = !DILocation(line: 0, scope: !2550)
!2553 = !DILocalVariable(name: "in", arg: 2, scope: !2550, file: !529, line: 13, type: !411)
!2554 = !DILocalVariable(name: "out", arg: 3, scope: !2550, file: !529, line: 13, type: !52)
!2555 = !DILocalVariable(name: "i", scope: !2556, file: !529, line: 15, type: !58)
!2556 = distinct !DILexicalBlock(scope: !2550, file: !529, line: 15, column: 5)
!2557 = !DILocation(line: 0, scope: !2556)
!2558 = !DILocation(line: 15, column: 10, scope: !2556)
!2559 = !DILocation(line: 15, scope: !2556)
!2560 = !DILocation(line: 15, column: 26, scope: !2561)
!2561 = distinct !DILexicalBlock(scope: !2556, file: !529, line: 15, column: 5)
!2562 = !DILocation(line: 15, column: 5, scope: !2556)
!2563 = !DILocation(line: 17, column: 18, scope: !2564)
!2564 = distinct !DILexicalBlock(scope: !2561, file: !529, line: 16, column: 5)
!2565 = !DILocation(line: 17, column: 9, scope: !2564)
!2566 = !DILocation(line: 17, column: 16, scope: !2564)
!2567 = !DILocation(line: 15, column: 46, scope: !2561)
!2568 = !DILocation(line: 15, column: 5, scope: !2561)
!2569 = distinct !{!2569, !2562, !2570, !388}
!2570 = !DILocation(line: 18, column: 5, scope: !2556)
!2571 = !DILocation(line: 19, column: 1, scope: !2550)
!2572 = distinct !DISubprogram(name: "pqmayo_MAYO_5_ref_m_upper", scope: !99, file: !99, line: 14, type: !2573, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !84, retainedNodes: !71)
!2573 = !DISubroutineType(types: !2574)
!2574 = !{null, !2575, !411, !52, !86}
!2575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2576, size: 32)
!2576 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2577)
!2577 = !DIDerivedType(tag: DW_TAG_typedef, name: "mayo_params_t", file: !79, line: 289, baseType: !2578)
!2578 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !79, line: 265, size: 736, elements: !2579)
!2579 = !{!2580, !2581, !2582, !2583, !2584, !2585, !2586, !2587, !2588, !2589, !2590, !2591, !2592, !2593, !2594, !2595, !2596, !2597, !2598, !2599, !2600, !2601, !2602}
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !2578, file: !79, line: 266, baseType: !86, size: 32)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !2578, file: !79, line: 267, baseType: !86, size: 32, offset: 32)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "o", scope: !2578, file: !79, line: 268, baseType: !86, size: 32, offset: 64)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !2578, file: !79, line: 269, baseType: !86, size: 32, offset: 96)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2578, file: !79, line: 270, baseType: !86, size: 32, offset: 128)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "f_tail", scope: !2578, file: !79, line: 271, baseType: !90, size: 32, offset: 160)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "m_bytes", scope: !2578, file: !79, line: 272, baseType: !86, size: 32, offset: 192)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "O_bytes", scope: !2578, file: !79, line: 273, baseType: !86, size: 32, offset: 224)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "v_bytes", scope: !2578, file: !79, line: 274, baseType: !86, size: 32, offset: 256)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "r_bytes", scope: !2578, file: !79, line: 275, baseType: !86, size: 32, offset: 288)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "R_bytes", scope: !2578, file: !79, line: 276, baseType: !86, size: 32, offset: 320)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "P1_bytes", scope: !2578, file: !79, line: 277, baseType: !86, size: 32, offset: 352)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "P2_bytes", scope: !2578, file: !79, line: 278, baseType: !86, size: 32, offset: 384)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "P3_bytes", scope: !2578, file: !79, line: 279, baseType: !86, size: 32, offset: 416)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "csk_bytes", scope: !2578, file: !79, line: 280, baseType: !86, size: 32, offset: 448)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "cpk_bytes", scope: !2578, file: !79, line: 281, baseType: !86, size: 32, offset: 480)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "sig_bytes", scope: !2578, file: !79, line: 282, baseType: !86, size: 32, offset: 512)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "salt_bytes", scope: !2578, file: !79, line: 283, baseType: !86, size: 32, offset: 544)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "sk_seed_bytes", scope: !2578, file: !79, line: 284, baseType: !86, size: 32, offset: 576)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "digest_bytes", scope: !2578, file: !79, line: 285, baseType: !86, size: 32, offset: 608)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "pk_seed_bytes", scope: !2578, file: !79, line: 286, baseType: !86, size: 32, offset: 640)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "m_vec_limbs", scope: !2578, file: !79, line: 287, baseType: !86, size: 32, offset: 672)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2578, file: !79, line: 288, baseType: !149, size: 32, offset: 704)
!2603 = !DILocalVariable(name: "p", arg: 1, scope: !2572, file: !99, line: 14, type: !2575)
!2604 = !DILocation(line: 0, scope: !2572)
!2605 = !DILocalVariable(name: "in", arg: 2, scope: !2572, file: !99, line: 14, type: !411)
!2606 = !DILocalVariable(name: "out", arg: 3, scope: !2572, file: !99, line: 14, type: !52)
!2607 = !DILocalVariable(name: "size", arg: 4, scope: !2572, file: !99, line: 14, type: !86)
!2608 = !DILocalVariable(name: "m_vec_limbs", scope: !2572, file: !99, line: 19, type: !324)
!2609 = !DILocalVariable(name: "m_vecs_stored", scope: !2572, file: !99, line: 20, type: !86)
!2610 = !DILocalVariable(name: "r", scope: !2611, file: !99, line: 21, type: !86)
!2611 = distinct !DILexicalBlock(scope: !2572, file: !99, line: 21, column: 5)
!2612 = !DILocation(line: 0, scope: !2611)
!2613 = !DILocation(line: 21, column: 10, scope: !2611)
!2614 = !DILocation(line: 20, column: 9, scope: !2572)
!2615 = !DILocation(line: 21, scope: !2611)
!2616 = !DILocation(line: 21, column: 23, scope: !2617)
!2617 = distinct !DILexicalBlock(scope: !2611, file: !99, line: 21, column: 5)
!2618 = !DILocation(line: 21, column: 5, scope: !2611)
!2619 = !DILocation(line: 22, column: 9, scope: !2620)
!2620 = distinct !DILexicalBlock(scope: !2621, file: !99, line: 22, column: 9)
!2621 = distinct !DILexicalBlock(scope: !2617, file: !99, line: 21, column: 36)
!2622 = !DILocation(line: 22, scope: !2620)
!2623 = !DILocalVariable(name: "c", scope: !2620, file: !99, line: 22, type: !86)
!2624 = !DILocation(line: 0, scope: !2620)
!2625 = !DILocation(line: 22, column: 27, scope: !2626)
!2626 = distinct !DILexicalBlock(scope: !2620, file: !99, line: 22, column: 9)
!2627 = !DILocation(line: 23, column: 59, scope: !2628)
!2628 = distinct !DILexicalBlock(scope: !2626, file: !99, line: 22, column: 40)
!2629 = !DILocation(line: 23, column: 66, scope: !2628)
!2630 = !DILocation(line: 23, column: 40, scope: !2628)
!2631 = !DILocation(line: 23, column: 76, scope: !2628)
!2632 = !DILocation(line: 23, column: 13, scope: !2628)
!2633 = !DILocation(line: 24, column: 19, scope: !2634)
!2634 = distinct !DILexicalBlock(scope: !2628, file: !99, line: 24, column: 17)
!2635 = !DILocation(line: 25, column: 62, scope: !2636)
!2636 = distinct !DILexicalBlock(scope: !2634, file: !99, line: 24, column: 25)
!2637 = !DILocation(line: 25, column: 69, scope: !2636)
!2638 = !DILocation(line: 25, column: 43, scope: !2636)
!2639 = !DILocation(line: 25, column: 79, scope: !2636)
!2640 = !DILocation(line: 25, column: 17, scope: !2636)
!2641 = !DILocation(line: 26, column: 13, scope: !2636)
!2642 = !DILocation(line: 27, column: 27, scope: !2628)
!2643 = !DILocation(line: 22, column: 36, scope: !2626)
!2644 = !DILocation(line: 22, column: 9, scope: !2626)
!2645 = distinct !{!2645, !2619, !2646, !388}
!2646 = !DILocation(line: 28, column: 9, scope: !2620)
!2647 = !DILocation(line: 21, column: 32, scope: !2617)
!2648 = !DILocation(line: 21, column: 5, scope: !2617)
!2649 = distinct !{!2649, !2618, !2650, !388}
!2650 = !DILocation(line: 29, column: 5, scope: !2611)
!2651 = !DILocation(line: 30, column: 1, scope: !2572)
!2652 = distinct !DISubprogram(name: "m_vec_copy", scope: !529, file: !529, line: 13, type: !2417, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !84, retainedNodes: !71)
!2653 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2652, file: !529, line: 13, type: !86)
!2654 = !DILocation(line: 0, scope: !2652)
!2655 = !DILocalVariable(name: "in", arg: 2, scope: !2652, file: !529, line: 13, type: !411)
!2656 = !DILocalVariable(name: "out", arg: 3, scope: !2652, file: !529, line: 13, type: !52)
!2657 = !DILocalVariable(name: "i", scope: !2658, file: !529, line: 15, type: !58)
!2658 = distinct !DILexicalBlock(scope: !2652, file: !529, line: 15, column: 5)
!2659 = !DILocation(line: 0, scope: !2658)
!2660 = !DILocation(line: 15, column: 10, scope: !2658)
!2661 = !DILocation(line: 15, scope: !2658)
!2662 = !DILocation(line: 15, column: 26, scope: !2663)
!2663 = distinct !DILexicalBlock(scope: !2658, file: !529, line: 15, column: 5)
!2664 = !DILocation(line: 15, column: 5, scope: !2658)
!2665 = !DILocation(line: 17, column: 18, scope: !2666)
!2666 = distinct !DILexicalBlock(scope: !2663, file: !529, line: 16, column: 5)
!2667 = !DILocation(line: 17, column: 9, scope: !2666)
!2668 = !DILocation(line: 17, column: 16, scope: !2666)
!2669 = !DILocation(line: 15, column: 46, scope: !2663)
!2670 = !DILocation(line: 15, column: 5, scope: !2663)
!2671 = distinct !{!2671, !2664, !2672, !388}
!2672 = !DILocation(line: 18, column: 5, scope: !2658)
!2673 = !DILocation(line: 19, column: 1, scope: !2652)
!2674 = distinct !DISubprogram(name: "m_vec_add", scope: !529, file: !529, line: 22, type: !2417, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !84, retainedNodes: !71)
!2675 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2674, file: !529, line: 22, type: !86)
!2676 = !DILocation(line: 0, scope: !2674)
!2677 = !DILocalVariable(name: "in", arg: 2, scope: !2674, file: !529, line: 22, type: !411)
!2678 = !DILocalVariable(name: "acc", arg: 3, scope: !2674, file: !529, line: 22, type: !52)
!2679 = !DILocalVariable(name: "i", scope: !2680, file: !529, line: 24, type: !58)
!2680 = distinct !DILexicalBlock(scope: !2674, file: !529, line: 24, column: 5)
!2681 = !DILocation(line: 0, scope: !2680)
!2682 = !DILocation(line: 24, column: 10, scope: !2680)
!2683 = !DILocation(line: 24, scope: !2680)
!2684 = !DILocation(line: 24, column: 26, scope: !2685)
!2685 = distinct !DILexicalBlock(scope: !2680, file: !529, line: 24, column: 5)
!2686 = !DILocation(line: 24, column: 5, scope: !2680)
!2687 = !DILocation(line: 26, column: 19, scope: !2688)
!2688 = distinct !DILexicalBlock(scope: !2685, file: !529, line: 25, column: 5)
!2689 = !DILocation(line: 26, column: 9, scope: !2688)
!2690 = !DILocation(line: 26, column: 16, scope: !2688)
!2691 = !DILocation(line: 24, column: 46, scope: !2685)
!2692 = !DILocation(line: 24, column: 5, scope: !2685)
!2693 = distinct !{!2693, !2686, !2694, !388}
!2694 = !DILocation(line: 27, column: 5, scope: !2680)
!2695 = !DILocation(line: 28, column: 1, scope: !2674)
!2696 = distinct !DISubprogram(name: "pqmayo_MAYO_5_ref_sample_solution", scope: !99, file: !99, line: 40, type: !2697, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !84, retainedNodes: !71)
!2697 = !DISubroutineType(types: !2698)
!2698 = !{!86, !2575, !61, !90, !90, !61, !86, !86, !86, !86}
!2699 = !DILocalVariable(name: "p", arg: 1, scope: !2696, file: !99, line: 40, type: !2575)
!2700 = !DILocation(line: 0, scope: !2696)
!2701 = !DILocalVariable(name: "A", arg: 2, scope: !2696, file: !99, line: 40, type: !61)
!2702 = !DILocalVariable(name: "y", arg: 3, scope: !2696, file: !99, line: 41, type: !90)
!2703 = !DILocalVariable(name: "r", arg: 4, scope: !2696, file: !99, line: 41, type: !90)
!2704 = !DILocalVariable(name: "x", arg: 5, scope: !2696, file: !99, line: 42, type: !61)
!2705 = !DILocalVariable(name: "k", arg: 6, scope: !2696, file: !99, line: 42, type: !86)
!2706 = !DILocalVariable(name: "o", arg: 7, scope: !2696, file: !99, line: 42, type: !86)
!2707 = !DILocalVariable(name: "m", arg: 8, scope: !2696, file: !99, line: 42, type: !86)
!2708 = !DILocalVariable(name: "A_cols", arg: 9, scope: !2696, file: !99, line: 42, type: !86)
!2709 = !DILocalVariable(name: "i", scope: !2710, file: !99, line: 51, type: !86)
!2710 = distinct !DILexicalBlock(scope: !2696, file: !99, line: 51, column: 5)
!2711 = !DILocation(line: 0, scope: !2710)
!2712 = !DILocation(line: 51, column: 10, scope: !2710)
!2713 = !DILocation(line: 51, scope: !2710)
!2714 = !DILocation(line: 51, column: 23, scope: !2715)
!2715 = distinct !DILexicalBlock(scope: !2710, file: !99, line: 51, column: 5)
!2716 = !DILocation(line: 51, column: 5, scope: !2710)
!2717 = !DILocation(line: 57, column: 5, scope: !2718)
!2718 = distinct !DILexicalBlock(scope: !2696, file: !99, line: 57, column: 5)
!2719 = !DILocation(line: 52, column: 16, scope: !2720)
!2720 = distinct !DILexicalBlock(scope: !2715, file: !99, line: 51, column: 37)
!2721 = !DILocation(line: 52, column: 9, scope: !2720)
!2722 = !DILocation(line: 52, column: 14, scope: !2720)
!2723 = !DILocation(line: 51, column: 33, scope: !2715)
!2724 = !DILocation(line: 51, column: 5, scope: !2715)
!2725 = distinct !{!2725, !2716, !2726, !388}
!2726 = !DILocation(line: 53, column: 5, scope: !2710)
!2727 = !DILocation(line: 57, scope: !2718)
!2728 = !DILocalVariable(name: "i", scope: !2718, file: !99, line: 57, type: !86)
!2729 = !DILocation(line: 0, scope: !2718)
!2730 = !DILocation(line: 57, column: 23, scope: !2731)
!2731 = distinct !DILexicalBlock(scope: !2718, file: !99, line: 57, column: 5)
!2732 = !DILocation(line: 58, column: 13, scope: !2733)
!2733 = distinct !DILexicalBlock(scope: !2731, file: !99, line: 57, column: 33)
!2734 = !DILocation(line: 58, column: 26, scope: !2733)
!2735 = !DILocation(line: 58, column: 30, scope: !2733)
!2736 = !DILocation(line: 58, column: 21, scope: !2733)
!2737 = !DILocation(line: 58, column: 9, scope: !2733)
!2738 = !DILocation(line: 58, column: 36, scope: !2733)
!2739 = !DILocation(line: 57, column: 29, scope: !2731)
!2740 = !DILocation(line: 57, column: 5, scope: !2731)
!2741 = distinct !{!2741, !2717, !2742, !388}
!2742 = !DILocation(line: 59, column: 5, scope: !2718)
!2743 = !DILocation(line: 60, column: 25, scope: !2696)
!2744 = !DILocation(line: 60, column: 29, scope: !2696)
!2745 = !DILocation(line: 60, column: 5, scope: !2696)
!2746 = !DILocalVariable(name: "i", scope: !2747, file: !99, line: 63, type: !86)
!2747 = distinct !DILexicalBlock(scope: !2696, file: !99, line: 63, column: 5)
!2748 = !DILocation(line: 0, scope: !2747)
!2749 = !DILocation(line: 63, column: 10, scope: !2747)
!2750 = !DILocation(line: 63, scope: !2747)
!2751 = !DILocation(line: 63, column: 23, scope: !2752)
!2752 = distinct !DILexicalBlock(scope: !2747, file: !99, line: 63, column: 5)
!2753 = !DILocation(line: 63, column: 5, scope: !2747)
!2754 = !DILocation(line: 64, column: 44, scope: !2755)
!2755 = distinct !DILexicalBlock(scope: !2752, file: !99, line: 63, column: 33)
!2756 = !DILocation(line: 64, column: 50, scope: !2755)
!2757 = !DILocation(line: 64, column: 38, scope: !2755)
!2758 = !DILocation(line: 64, column: 13, scope: !2755)
!2759 = !DILocation(line: 64, column: 26, scope: !2755)
!2760 = !DILocation(line: 64, column: 30, scope: !2755)
!2761 = !DILocation(line: 64, column: 21, scope: !2755)
!2762 = !DILocation(line: 64, column: 9, scope: !2755)
!2763 = !DILocation(line: 64, column: 36, scope: !2755)
!2764 = !DILocation(line: 63, column: 29, scope: !2752)
!2765 = !DILocation(line: 63, column: 5, scope: !2752)
!2766 = distinct !{!2766, !2753, !2767, !388}
!2767 = !DILocation(line: 65, column: 5, scope: !2747)
!2768 = !DILocation(line: 67, column: 16, scope: !2696)
!2769 = !DILocation(line: 67, column: 20, scope: !2696)
!2770 = !DILocation(line: 67, column: 5, scope: !2696)
!2771 = !DILocalVariable(name: "full_rank", scope: !2696, file: !99, line: 70, type: !51)
!2772 = !DILocalVariable(name: "i", scope: !2773, file: !99, line: 71, type: !86)
!2773 = distinct !DILexicalBlock(scope: !2696, file: !99, line: 71, column: 5)
!2774 = !DILocation(line: 0, scope: !2773)
!2775 = !DILocation(line: 71, column: 10, scope: !2773)
!2776 = !DILocation(line: 71, scope: !2773)
!2777 = !DILocation(line: 71, column: 23, scope: !2778)
!2778 = distinct !DILexicalBlock(scope: !2773, file: !99, line: 71, column: 5)
!2779 = !DILocation(line: 71, column: 5, scope: !2773)
!2780 = !DILocation(line: 72, column: 27, scope: !2781)
!2781 = distinct !DILexicalBlock(scope: !2778, file: !99, line: 71, column: 42)
!2782 = !DILocation(line: 72, column: 32, scope: !2781)
!2783 = !DILocation(line: 72, column: 22, scope: !2781)
!2784 = !DILocation(line: 72, column: 19, scope: !2781)
!2785 = !DILocation(line: 71, column: 38, scope: !2778)
!2786 = !DILocation(line: 71, column: 5, scope: !2778)
!2787 = distinct !{!2787, !2779, !2788, !388}
!2788 = !DILocation(line: 73, column: 5, scope: !2773)
!2789 = !DILocation(line: 80, column: 19, scope: !2790)
!2790 = distinct !DILexicalBlock(scope: !2696, file: !99, line: 80, column: 9)
!2791 = !DILocation(line: 88, column: 5, scope: !2792)
!2792 = distinct !DILexicalBlock(scope: !2696, file: !99, line: 88, column: 5)
!2793 = distinct !{!2793, !2791, !2794, !388}
!2794 = !DILocation(line: 122, column: 5, scope: !2792)
!2795 = !DILocation(line: 88, scope: !2792)
!2796 = !DILocalVariable(name: "row", scope: !2792, file: !99, line: 88, type: !86)
!2797 = !DILocation(line: 0, scope: !2792)
!2798 = !DILocation(line: 88, column: 31, scope: !2799)
!2799 = distinct !DILexicalBlock(scope: !2792, file: !99, line: 88, column: 5)
!2800 = !DILocalVariable(name: "finished", scope: !2696, file: !99, line: 46, type: !51)
!2801 = !DILocation(line: 90, column: 27, scope: !2802)
!2802 = distinct !DILexicalBlock(scope: !2799, file: !99, line: 88, column: 44)
!2803 = !DILocalVariable(name: "col_upper_bound", scope: !2696, file: !99, line: 47, type: !86)
!2804 = !DILocalVariable(name: "col", scope: !2805, file: !99, line: 93, type: !86)
!2805 = distinct !DILexicalBlock(scope: !2802, file: !99, line: 93, column: 9)
!2806 = !DILocation(line: 0, scope: !2805)
!2807 = !DILocation(line: 93, column: 14, scope: !2805)
!2808 = !DILocation(line: 0, scope: !2802)
!2809 = !DILocation(line: 93, scope: !2805)
!2810 = !DILocation(line: 93, column: 33, scope: !2811)
!2811 = distinct !DILexicalBlock(scope: !2805, file: !99, line: 93, column: 9)
!2812 = !DILocation(line: 93, column: 9, scope: !2805)
!2813 = !DILocation(line: 97, column: 50, scope: !2814)
!2814 = distinct !DILexicalBlock(scope: !2811, file: !99, line: 93, column: 60)
!2815 = !DILocation(line: 97, column: 44, scope: !2814)
!2816 = !DILocation(line: 97, column: 30, scope: !2814)
!2817 = !DILocation(line: 97, column: 73, scope: !2814)
!2818 = !DILocalVariable(name: "correct_column", scope: !2696, file: !99, line: 48, type: !51)
!2819 = !DILocation(line: 99, column: 63, scope: !2814)
!2820 = !DILocation(line: 99, column: 48, scope: !2814)
!2821 = !DILocation(line: 99, column: 46, scope: !2814)
!2822 = !DILocalVariable(name: "u", scope: !2814, file: !99, line: 99, type: !51)
!2823 = !DILocation(line: 0, scope: !2814)
!2824 = !DILocation(line: 100, column: 13, scope: !2814)
!2825 = !DILocation(line: 100, column: 20, scope: !2814)
!2826 = !DILocalVariable(name: "i", scope: !2827, file: !99, line: 102, type: !86)
!2827 = distinct !DILexicalBlock(scope: !2814, file: !99, line: 102, column: 13)
!2828 = !DILocation(line: 0, scope: !2827)
!2829 = !DILocation(line: 102, column: 18, scope: !2827)
!2830 = !DILocation(line: 102, scope: !2827)
!2831 = !DILocation(line: 102, column: 31, scope: !2832)
!2832 = distinct !DILexicalBlock(scope: !2827, file: !99, line: 102, column: 13)
!2833 = !DILocation(line: 102, column: 13, scope: !2827)
!2834 = !DILocation(line: 103, column: 53, scope: !2835)
!2835 = distinct !DILexicalBlock(scope: !2832, file: !99, line: 102, column: 46)
!2836 = !DILocation(line: 103, column: 45, scope: !2835)
!2837 = !DILocation(line: 103, column: 34, scope: !2835)
!2838 = !DILocation(line: 103, column: 95, scope: !2835)
!2839 = !DILocation(line: 103, column: 99, scope: !2835)
!2840 = !DILocation(line: 103, column: 91, scope: !2835)
!2841 = !DILocation(line: 103, column: 80, scope: !2835)
!2842 = !DILocation(line: 103, column: 115, scope: !2835)
!2843 = !DILocation(line: 103, column: 76, scope: !2835)
!2844 = !DILocation(line: 104, column: 49, scope: !2835)
!2845 = !DILocation(line: 104, column: 53, scope: !2835)
!2846 = !DILocation(line: 104, column: 45, scope: !2835)
!2847 = !DILocation(line: 104, column: 34, scope: !2835)
!2848 = !DILocation(line: 104, column: 69, scope: !2835)
!2849 = !DILocation(line: 104, column: 30, scope: !2835)
!2850 = !DILocation(line: 104, column: 95, scope: !2835)
!2851 = !DILocation(line: 104, column: 99, scope: !2835)
!2852 = !DILocation(line: 104, column: 91, scope: !2835)
!2853 = !DILocation(line: 104, column: 80, scope: !2835)
!2854 = !DILocation(line: 104, column: 115, scope: !2835)
!2855 = !DILocation(line: 104, column: 76, scope: !2835)
!2856 = !DILocation(line: 105, column: 49, scope: !2835)
!2857 = !DILocation(line: 105, column: 53, scope: !2835)
!2858 = !DILocation(line: 105, column: 45, scope: !2835)
!2859 = !DILocation(line: 105, column: 34, scope: !2835)
!2860 = !DILocation(line: 105, column: 69, scope: !2835)
!2861 = !DILocation(line: 105, column: 30, scope: !2835)
!2862 = !DILocation(line: 105, column: 95, scope: !2835)
!2863 = !DILocation(line: 105, column: 99, scope: !2835)
!2864 = !DILocation(line: 105, column: 91, scope: !2835)
!2865 = !DILocation(line: 105, column: 80, scope: !2835)
!2866 = !DILocation(line: 105, column: 115, scope: !2835)
!2867 = !DILocation(line: 105, column: 76, scope: !2835)
!2868 = !DILocation(line: 106, column: 49, scope: !2835)
!2869 = !DILocation(line: 106, column: 53, scope: !2835)
!2870 = !DILocation(line: 106, column: 45, scope: !2835)
!2871 = !DILocation(line: 106, column: 34, scope: !2835)
!2872 = !DILocation(line: 106, column: 69, scope: !2835)
!2873 = !DILocation(line: 106, column: 30, scope: !2835)
!2874 = !DILocation(line: 106, column: 95, scope: !2835)
!2875 = !DILocation(line: 106, column: 99, scope: !2835)
!2876 = !DILocation(line: 106, column: 91, scope: !2835)
!2877 = !DILocation(line: 106, column: 80, scope: !2835)
!2878 = !DILocation(line: 106, column: 115, scope: !2835)
!2879 = !DILocation(line: 106, column: 76, scope: !2835)
!2880 = !DILocalVariable(name: "tmp", scope: !2835, file: !99, line: 103, type: !53)
!2881 = !DILocation(line: 0, scope: !2835)
!2882 = !DILocation(line: 108, column: 23, scope: !2835)
!2883 = !DILocation(line: 110, column: 34, scope: !2835)
!2884 = !DILocation(line: 110, column: 17, scope: !2835)
!2885 = !DILocation(line: 110, column: 48, scope: !2835)
!2886 = !DILocation(line: 111, column: 56, scope: !2835)
!2887 = !DILocation(line: 111, column: 34, scope: !2835)
!2888 = !DILocation(line: 111, column: 17, scope: !2835)
!2889 = !DILocation(line: 111, column: 48, scope: !2835)
!2890 = !DILocation(line: 112, column: 56, scope: !2835)
!2891 = !DILocation(line: 112, column: 34, scope: !2835)
!2892 = !DILocation(line: 112, column: 17, scope: !2835)
!2893 = !DILocation(line: 112, column: 48, scope: !2835)
!2894 = !DILocation(line: 113, column: 56, scope: !2835)
!2895 = !DILocation(line: 113, column: 34, scope: !2835)
!2896 = !DILocation(line: 113, column: 17, scope: !2835)
!2897 = !DILocation(line: 113, column: 48, scope: !2835)
!2898 = !DILocation(line: 114, column: 56, scope: !2835)
!2899 = !DILocation(line: 114, column: 34, scope: !2835)
!2900 = !DILocation(line: 114, column: 17, scope: !2835)
!2901 = !DILocation(line: 114, column: 48, scope: !2835)
!2902 = !DILocation(line: 115, column: 56, scope: !2835)
!2903 = !DILocation(line: 115, column: 34, scope: !2835)
!2904 = !DILocation(line: 115, column: 17, scope: !2835)
!2905 = !DILocation(line: 115, column: 48, scope: !2835)
!2906 = !DILocation(line: 116, column: 56, scope: !2835)
!2907 = !DILocation(line: 116, column: 34, scope: !2835)
!2908 = !DILocation(line: 116, column: 17, scope: !2835)
!2909 = !DILocation(line: 116, column: 48, scope: !2835)
!2910 = !DILocation(line: 117, column: 56, scope: !2835)
!2911 = !DILocation(line: 117, column: 34, scope: !2835)
!2912 = !DILocation(line: 117, column: 17, scope: !2835)
!2913 = !DILocation(line: 117, column: 48, scope: !2835)
!2914 = !DILocation(line: 102, column: 40, scope: !2832)
!2915 = !DILocation(line: 102, column: 13, scope: !2832)
!2916 = distinct !{!2916, !2833, !2917, !388}
!2917 = !DILocation(line: 118, column: 13, scope: !2827)
!2918 = !DILocation(line: 120, column: 33, scope: !2814)
!2919 = !DILocation(line: 93, column: 56, scope: !2811)
!2920 = !DILocation(line: 93, column: 9, scope: !2811)
!2921 = distinct !{!2921, !2812, !2922, !388}
!2922 = !DILocation(line: 121, column: 9, scope: !2805)
!2923 = !DILocation(line: 124, column: 1, scope: !2696)
!2924 = distinct !DISubprogram(name: "mat_mul", scope: !585, file: !585, line: 78, type: !1553, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !84, retainedNodes: !71)
!2925 = !DILocalVariable(name: "a", arg: 1, scope: !2924, file: !585, line: 78, type: !90)
!2926 = !DILocation(line: 0, scope: !2924)
!2927 = !DILocalVariable(name: "b", arg: 2, scope: !2924, file: !585, line: 78, type: !90)
!2928 = !DILocalVariable(name: "c", arg: 3, scope: !2924, file: !585, line: 79, type: !61)
!2929 = !DILocalVariable(name: "colrow_ab", arg: 4, scope: !2924, file: !585, line: 79, type: !86)
!2930 = !DILocalVariable(name: "row_a", arg: 5, scope: !2924, file: !585, line: 79, type: !86)
!2931 = !DILocalVariable(name: "col_b", arg: 6, scope: !2924, file: !585, line: 79, type: !86)
!2932 = !DILocalVariable(name: "i", scope: !2933, file: !585, line: 80, type: !86)
!2933 = distinct !DILexicalBlock(scope: !2924, file: !585, line: 80, column: 5)
!2934 = !DILocation(line: 0, scope: !2933)
!2935 = !DILocation(line: 80, column: 10, scope: !2933)
!2936 = !DILocation(line: 80, scope: !2933)
!2937 = !DILocation(line: 80, column: 23, scope: !2938)
!2938 = distinct !DILexicalBlock(scope: !2933, file: !585, line: 80, column: 5)
!2939 = !DILocation(line: 80, column: 5, scope: !2933)
!2940 = !DILocation(line: 81, column: 9, scope: !2941)
!2941 = distinct !DILexicalBlock(scope: !2942, file: !585, line: 81, column: 9)
!2942 = distinct !DILexicalBlock(scope: !2938, file: !585, line: 80, column: 53)
!2943 = !DILocation(line: 81, scope: !2941)
!2944 = !DILocalVariable(name: "j", scope: !2941, file: !585, line: 81, type: !86)
!2945 = !DILocation(line: 0, scope: !2941)
!2946 = !DILocation(line: 81, column: 27, scope: !2947)
!2947 = distinct !DILexicalBlock(scope: !2941, file: !585, line: 81, column: 9)
!2948 = !DILocation(line: 82, column: 31, scope: !2949)
!2949 = distinct !DILexicalBlock(scope: !2947, file: !585, line: 81, column: 46)
!2950 = !DILocation(line: 82, column: 18, scope: !2949)
!2951 = !DILocation(line: 82, column: 16, scope: !2949)
!2952 = !DILocation(line: 81, column: 36, scope: !2947)
!2953 = !DILocation(line: 81, column: 41, scope: !2947)
!2954 = !DILocation(line: 81, column: 9, scope: !2947)
!2955 = distinct !{!2955, !2940, !2956, !388}
!2956 = !DILocation(line: 83, column: 9, scope: !2941)
!2957 = !DILocation(line: 80, column: 32, scope: !2938)
!2958 = !DILocation(line: 80, column: 39, scope: !2938)
!2959 = !DILocation(line: 80, column: 5, scope: !2938)
!2960 = distinct !{!2960, !2939, !2961, !388}
!2961 = !DILocation(line: 84, column: 5, scope: !2933)
!2962 = !DILocation(line: 85, column: 1, scope: !2924)
!2963 = distinct !DISubprogram(name: "sub_f", scope: !585, file: !585, line: 47, type: !1676, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !84, retainedNodes: !71)
!2964 = !DILocalVariable(name: "a", arg: 1, scope: !2963, file: !585, line: 47, type: !51)
!2965 = !DILocation(line: 0, scope: !2963)
!2966 = !DILocalVariable(name: "b", arg: 2, scope: !2963, file: !585, line: 47, type: !51)
!2967 = !DILocation(line: 48, column: 14, scope: !2963)
!2968 = !DILocation(line: 48, column: 5, scope: !2963)
!2969 = distinct !DISubprogram(name: "EF", scope: !2970, file: !2970, line: 60, type: !2971, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !84, retainedNodes: !71)
!2970 = !DIFile(filename: "../../../src/generic/echelon_form.h", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!2971 = !DISubroutineType(types: !2972)
!2972 = !{null, !61, !86, !86}
!2973 = !DILocalVariable(name: "A", arg: 1, scope: !2969, file: !2970, line: 60, type: !61)
!2974 = !DILocation(line: 0, scope: !2969)
!2975 = !DILocalVariable(name: "nrows", arg: 2, scope: !2969, file: !2970, line: 60, type: !86)
!2976 = !DILocalVariable(name: "ncols", arg: 3, scope: !2969, file: !2970, line: 60, type: !86)
!2977 = !DILocalVariable(name: "_pivot_row", scope: !2969, file: !2970, line: 62, type: !2978, align: 256)
!2978 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 640, elements: !2979)
!2979 = !{!2980}
!2980 = !DISubrange(count: 10)
!2981 = !DILocation(line: 62, column: 27, scope: !2969)
!2982 = !DILocalVariable(name: "_pivot_row2", scope: !2969, file: !2970, line: 63, type: !2978, align: 256)
!2983 = !DILocation(line: 63, column: 27, scope: !2969)
!2984 = !DILocalVariable(name: "packed_A", scope: !2969, file: !2970, line: 64, type: !2985, align: 256)
!2985 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 90880, elements: !2986)
!2986 = !{!2987}
!2987 = !DISubrange(count: 1420)
!2988 = !DILocation(line: 64, column: 27, scope: !2969)
!2989 = !DILocation(line: 66, column: 26, scope: !2969)
!2990 = !DILocation(line: 66, column: 32, scope: !2969)
!2991 = !DILocalVariable(name: "row_len", scope: !2969, file: !2970, line: 66, type: !86)
!2992 = !DILocalVariable(name: "i", scope: !2993, file: !2970, line: 69, type: !86)
!2993 = distinct !DILexicalBlock(scope: !2969, file: !2970, line: 69, column: 5)
!2994 = !DILocation(line: 0, scope: !2993)
!2995 = !DILocation(line: 69, column: 10, scope: !2993)
!2996 = !DILocation(line: 69, scope: !2993)
!2997 = !DILocation(line: 69, column: 23, scope: !2998)
!2998 = distinct !DILexicalBlock(scope: !2993, file: !2970, line: 69, column: 5)
!2999 = !DILocation(line: 69, column: 5, scope: !2993)
!3000 = !DILocation(line: 77, column: 5, scope: !3001)
!3001 = distinct !DILexicalBlock(scope: !2969, file: !2970, line: 77, column: 5)
!3002 = !DILocation(line: 70, column: 29, scope: !3003)
!3003 = distinct !DILexicalBlock(scope: !2998, file: !2970, line: 69, column: 37)
!3004 = !DILocation(line: 70, column: 25, scope: !3003)
!3005 = !DILocation(line: 70, column: 51, scope: !3003)
!3006 = !DILocation(line: 70, column: 47, scope: !3003)
!3007 = !DILocation(line: 70, column: 9, scope: !3003)
!3008 = !DILocation(line: 69, column: 33, scope: !2998)
!3009 = !DILocation(line: 69, column: 5, scope: !2998)
!3010 = distinct !{!3010, !2999, !3011, !388}
!3011 = !DILocation(line: 71, column: 5, scope: !2993)
!3012 = !DILocation(line: 77, scope: !3001)
!3013 = !DILocalVariable(name: "pivot_row", scope: !2969, file: !2970, line: 76, type: !86)
!3014 = !DILocalVariable(name: "pivot_col", scope: !3001, file: !2970, line: 77, type: !86)
!3015 = !DILocation(line: 0, scope: !3001)
!3016 = !DILocation(line: 77, column: 39, scope: !3017)
!3017 = distinct !DILexicalBlock(scope: !3001, file: !2970, line: 77, column: 5)
!3018 = !DILocation(line: 138, column: 5, scope: !3019)
!3019 = distinct !DILexicalBlock(scope: !2969, file: !2970, line: 138, column: 5)
!3020 = !DILocation(line: 79, column: 37, scope: !3021)
!3021 = distinct !DILexicalBlock(scope: !3017, file: !2970, line: 77, column: 61)
!3022 = !DILocalVariable(name: "pivot_row_lower_bound", scope: !3021, file: !2970, line: 79, type: !86)
!3023 = !DILocation(line: 0, scope: !3021)
!3024 = !DILocation(line: 80, column: 37, scope: !3021)
!3025 = !DILocalVariable(name: "pivot_row_upper_bound", scope: !3021, file: !2970, line: 80, type: !86)
!3026 = !DILocalVariable(name: "i", scope: !3027, file: !2970, line: 85, type: !86)
!3027 = distinct !DILexicalBlock(scope: !3021, file: !2970, line: 85, column: 9)
!3028 = !DILocation(line: 0, scope: !3027)
!3029 = !DILocation(line: 85, column: 14, scope: !3027)
!3030 = !DILocation(line: 85, scope: !3027)
!3031 = !DILocation(line: 85, column: 27, scope: !3032)
!3032 = distinct !DILexicalBlock(scope: !3027, file: !2970, line: 85, column: 9)
!3033 = !DILocation(line: 85, column: 9, scope: !3027)
!3034 = !DILocation(line: 93, column: 9, scope: !3035)
!3035 = distinct !DILexicalBlock(scope: !3021, file: !2970, line: 93, column: 9)
!3036 = !DILocation(line: 86, column: 13, scope: !3037)
!3037 = distinct !DILexicalBlock(scope: !3032, file: !2970, line: 85, column: 43)
!3038 = !DILocation(line: 86, column: 27, scope: !3037)
!3039 = !DILocation(line: 87, column: 13, scope: !3037)
!3040 = !DILocation(line: 87, column: 28, scope: !3037)
!3041 = !DILocation(line: 85, column: 39, scope: !3032)
!3042 = !DILocation(line: 85, column: 9, scope: !3032)
!3043 = distinct !{!3043, !3033, !3044, !388}
!3044 = !DILocation(line: 88, column: 9, scope: !3027)
!3045 = !DILocation(line: 0, scope: !3035)
!3046 = !DILocalVariable(name: "row", scope: !3035, file: !2970, line: 93, type: !86)
!3047 = !DILocalVariable(name: "pivot", scope: !3021, file: !2970, line: 91, type: !51)
!3048 = !DILocalVariable(name: "pivot_is_zero", scope: !3021, file: !2970, line: 92, type: !53)
!3049 = !DILocation(line: 94, column: 24, scope: !3050)
!3050 = distinct !DILexicalBlock(scope: !3035, file: !2970, line: 93, column: 9)
!3051 = !DILocation(line: 94, column: 21, scope: !3050)
!3052 = !DILocation(line: 96, column: 38, scope: !3053)
!3053 = distinct !DILexicalBlock(scope: !3050, file: !2970, line: 94, column: 80)
!3054 = !DILocation(line: 96, column: 37, scope: !3053)
!3055 = !DILocalVariable(name: "is_pivot_row", scope: !3053, file: !2970, line: 96, type: !53)
!3056 = !DILocation(line: 0, scope: !3053)
!3057 = !DILocation(line: 97, column: 40, scope: !3053)
!3058 = !DILocalVariable(name: "below_pivot_row", scope: !3053, file: !2970, line: 97, type: !53)
!3059 = !DILocalVariable(name: "j", scope: !3060, file: !2970, line: 99, type: !86)
!3060 = distinct !DILexicalBlock(scope: !3053, file: !2970, line: 99, column: 13)
!3061 = !DILocation(line: 0, scope: !3060)
!3062 = !DILocation(line: 99, column: 18, scope: !3060)
!3063 = !DILocation(line: 99, scope: !3060)
!3064 = !DILocation(line: 99, column: 31, scope: !3065)
!3065 = distinct !DILexicalBlock(scope: !3060, file: !2970, line: 99, column: 13)
!3066 = !DILocation(line: 99, column: 13, scope: !3060)
!3067 = !DILocation(line: 100, column: 67, scope: !3068)
!3068 = distinct !DILexicalBlock(scope: !3065, file: !2970, line: 99, column: 47)
!3069 = !DILocation(line: 100, column: 48, scope: !3068)
!3070 = !DILocation(line: 101, column: 47, scope: !3068)
!3071 = !DILocation(line: 101, column: 57, scope: !3068)
!3072 = !DILocation(line: 101, column: 34, scope: !3068)
!3073 = !DILocation(line: 100, column: 85, scope: !3068)
!3074 = !DILocation(line: 100, column: 17, scope: !3068)
!3075 = !DILocation(line: 100, column: 31, scope: !3068)
!3076 = !DILocation(line: 99, column: 43, scope: !3065)
!3077 = !DILocation(line: 99, column: 13, scope: !3065)
!3078 = distinct !{!3078, !3066, !3079, !388}
!3079 = !DILocation(line: 102, column: 13, scope: !3060)
!3080 = !DILocation(line: 103, column: 21, scope: !3053)
!3081 = !DILocation(line: 104, column: 44, scope: !3053)
!3082 = !DILocation(line: 104, column: 30, scope: !3053)
!3083 = !DILocation(line: 104, column: 29, scope: !3053)
!3084 = !DILocation(line: 94, column: 76, scope: !3050)
!3085 = !DILocation(line: 93, column: 9, scope: !3050)
!3086 = distinct !{!3086, !3034, !3087, !388}
!3087 = !DILocation(line: 105, column: 9, scope: !3035)
!3088 = !DILocation(line: 108, column: 19, scope: !3021)
!3089 = !DILocalVariable(name: "inverse", scope: !2969, file: !2970, line: 75, type: !51)
!3090 = !DILocation(line: 109, column: 9, scope: !3021)
!3091 = !DILocalVariable(name: "row", scope: !3092, file: !2970, line: 113, type: !86)
!3092 = distinct !DILexicalBlock(scope: !3021, file: !2970, line: 113, column: 9)
!3093 = !DILocation(line: 0, scope: !3092)
!3094 = !DILocation(line: 113, column: 14, scope: !3092)
!3095 = !DILocation(line: 113, scope: !3092)
!3096 = !DILocation(line: 113, column: 51, scope: !3097)
!3097 = distinct !DILexicalBlock(scope: !3092, file: !2970, line: 113, column: 9)
!3098 = !DILocation(line: 113, column: 9, scope: !3092)
!3099 = !DILocation(line: 124, column: 9, scope: !3100)
!3100 = distinct !DILexicalBlock(scope: !3021, file: !2970, line: 124, column: 9)
!3101 = !DILocation(line: 114, column: 33, scope: !3102)
!3102 = distinct !DILexicalBlock(scope: !3097, file: !2970, line: 113, column: 84)
!3103 = !DILocation(line: 114, column: 63, scope: !3102)
!3104 = !DILocalVariable(name: "do_copy", scope: !3102, file: !2970, line: 114, type: !53)
!3105 = !DILocation(line: 0, scope: !3102)
!3106 = !DILocalVariable(name: "do_not_copy", scope: !3102, file: !2970, line: 115, type: !53)
!3107 = !DILocalVariable(name: "col", scope: !3108, file: !2970, line: 116, type: !86)
!3108 = distinct !DILexicalBlock(scope: !3102, file: !2970, line: 116, column: 13)
!3109 = !DILocation(line: 0, scope: !3108)
!3110 = !DILocation(line: 116, column: 18, scope: !3108)
!3111 = !DILocation(line: 116, scope: !3108)
!3112 = !DILocation(line: 116, column: 35, scope: !3113)
!3113 = distinct !DILexicalBlock(scope: !3108, file: !2970, line: 116, column: 13)
!3114 = !DILocation(line: 116, column: 13, scope: !3108)
!3115 = !DILocation(line: 118, column: 49, scope: !3116)
!3116 = distinct !DILexicalBlock(scope: !3113, file: !2970, line: 116, column: 53)
!3117 = !DILocation(line: 118, column: 59, scope: !3116)
!3118 = !DILocation(line: 118, column: 36, scope: !3116)
!3119 = !DILocation(line: 118, column: 34, scope: !3116)
!3120 = !DILocation(line: 119, column: 32, scope: !3116)
!3121 = !DILocation(line: 119, column: 30, scope: !3116)
!3122 = !DILocation(line: 118, column: 67, scope: !3116)
!3123 = !DILocation(line: 117, column: 30, scope: !3116)
!3124 = !DILocation(line: 117, column: 40, scope: !3116)
!3125 = !DILocation(line: 117, column: 17, scope: !3116)
!3126 = !DILocation(line: 117, column: 47, scope: !3116)
!3127 = !DILocation(line: 116, column: 49, scope: !3113)
!3128 = !DILocation(line: 116, column: 13, scope: !3113)
!3129 = distinct !{!3129, !3114, !3130, !388}
!3130 = !DILocation(line: 120, column: 13, scope: !3108)
!3131 = !DILocation(line: 113, column: 80, scope: !3097)
!3132 = !DILocation(line: 113, column: 9, scope: !3097)
!3133 = distinct !{!3133, !3098, !3134, !388}
!3134 = !DILocation(line: 121, column: 9, scope: !3092)
!3135 = !DILocation(line: 124, scope: !3100)
!3136 = !DILocalVariable(name: "row", scope: !3100, file: !2970, line: 124, type: !86)
!3137 = !DILocation(line: 0, scope: !3100)
!3138 = !DILocation(line: 124, column: 51, scope: !3139)
!3139 = distinct !DILexicalBlock(scope: !3100, file: !2970, line: 124, column: 9)
!3140 = !DILocation(line: 125, column: 46, scope: !3141)
!3141 = distinct !DILexicalBlock(scope: !3139, file: !2970, line: 124, column: 67)
!3142 = !DILocalVariable(name: "below_pivot", scope: !3141, file: !2970, line: 125, type: !51)
!3143 = !DILocation(line: 0, scope: !3141)
!3144 = !DILocation(line: 126, column: 74, scope: !3141)
!3145 = !DILocation(line: 126, column: 68, scope: !3141)
!3146 = !DILocation(line: 126, column: 41, scope: !3141)
!3147 = !DILocalVariable(name: "elt_to_elim", scope: !3141, file: !2970, line: 126, type: !51)
!3148 = !DILocation(line: 128, column: 63, scope: !3141)
!3149 = !DILocation(line: 129, column: 52, scope: !3141)
!3150 = !DILocation(line: 129, column: 46, scope: !3141)
!3151 = !DILocation(line: 128, column: 13, scope: !3141)
!3152 = !DILocation(line: 124, column: 63, scope: !3139)
!3153 = !DILocation(line: 124, column: 9, scope: !3139)
!3154 = distinct !{!3154, !3099, !3155, !388}
!3155 = !DILocation(line: 130, column: 9, scope: !3100)
!3156 = !DILocation(line: 132, column: 19, scope: !3021)
!3157 = !DILocation(line: 77, column: 57, scope: !3017)
!3158 = !DILocation(line: 77, column: 5, scope: !3017)
!3159 = distinct !{!3159, !3000, !3160, !388}
!3160 = !DILocation(line: 133, column: 5, scope: !3001)
!3161 = !DILocation(line: 138, scope: !3019)
!3162 = !DILocalVariable(name: "i", scope: !3019, file: !2970, line: 138, type: !86)
!3163 = !DILocation(line: 0, scope: !3019)
!3164 = !DILocation(line: 138, column: 23, scope: !3165)
!3165 = distinct !DILexicalBlock(scope: !3019, file: !2970, line: 138, column: 5)
!3166 = !DILocation(line: 139, column: 47, scope: !3167)
!3167 = distinct !DILexicalBlock(scope: !3165, file: !2970, line: 138, column: 37)
!3168 = !DILocation(line: 139, column: 43, scope: !3167)
!3169 = !DILocation(line: 139, column: 9, scope: !3167)
!3170 = !DILocalVariable(name: "j", scope: !3171, file: !2970, line: 140, type: !86)
!3171 = distinct !DILexicalBlock(scope: !3167, file: !2970, line: 140, column: 9)
!3172 = !DILocation(line: 0, scope: !3171)
!3173 = !DILocation(line: 140, column: 14, scope: !3171)
!3174 = !DILocation(line: 140, scope: !3171)
!3175 = !DILocation(line: 140, column: 27, scope: !3176)
!3176 = distinct !DILexicalBlock(scope: !3171, file: !2970, line: 140, column: 9)
!3177 = !DILocation(line: 140, column: 9, scope: !3171)
!3178 = !DILocation(line: 141, column: 32, scope: !3179)
!3179 = distinct !DILexicalBlock(scope: !3176, file: !2970, line: 140, column: 41)
!3180 = !DILocation(line: 141, column: 17, scope: !3179)
!3181 = !DILocation(line: 141, column: 13, scope: !3179)
!3182 = !DILocation(line: 141, column: 30, scope: !3179)
!3183 = !DILocation(line: 140, column: 37, scope: !3176)
!3184 = !DILocation(line: 140, column: 9, scope: !3176)
!3185 = distinct !{!3185, !3177, !3186, !388}
!3186 = !DILocation(line: 142, column: 9, scope: !3171)
!3187 = !DILocation(line: 138, column: 33, scope: !3165)
!3188 = !DILocation(line: 138, column: 5, scope: !3165)
!3189 = distinct !{!3189, !3018, !3190, !388}
!3190 = !DILocation(line: 143, column: 5, scope: !3019)
!3191 = !DILocation(line: 145, column: 5, scope: !2969)
!3192 = !DILocation(line: 146, column: 5, scope: !2969)
!3193 = !DILocation(line: 147, column: 5, scope: !2969)
!3194 = !DILocation(line: 148, column: 5, scope: !2969)
!3195 = !DILocation(line: 149, column: 1, scope: !2969)
!3196 = distinct !DISubprogram(name: "ct_compare_8", scope: !3197, file: !3197, line: 51, type: !1676, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !84, retainedNodes: !71)
!3197 = !DIFile(filename: "../../../src/arithmetic.h", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!3198 = !DILocalVariable(name: "a", arg: 1, scope: !3196, file: !3197, line: 51, type: !51)
!3199 = !DILocation(line: 0, scope: !3196)
!3200 = !DILocalVariable(name: "b", arg: 2, scope: !3196, file: !3197, line: 51, type: !51)
!3201 = !DILocation(line: 52, column: 42, scope: !3196)
!3202 = !DILocation(line: 52, column: 13, scope: !3196)
!3203 = !DILocation(line: 52, column: 71, scope: !3196)
!3204 = !DILocation(line: 52, column: 69, scope: !3196)
!3205 = !DILocation(line: 52, column: 5, scope: !3196)
!3206 = distinct !DISubprogram(name: "mul_fx8", scope: !585, file: !585, line: 27, type: !3207, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !84, retainedNodes: !71)
!3207 = !DISubroutineType(types: !3208)
!3208 = !{!53, !51, !53}
!3209 = !DILocalVariable(name: "a", arg: 1, scope: !3206, file: !585, line: 27, type: !51)
!3210 = !DILocation(line: 0, scope: !3206)
!3211 = !DILocalVariable(name: "b", arg: 2, scope: !3206, file: !585, line: 27, type: !53)
!3212 = !DILocation(line: 30, column: 13, scope: !3206)
!3213 = !DILocation(line: 30, column: 10, scope: !3206)
!3214 = !DILocation(line: 30, column: 17, scope: !3206)
!3215 = !DILocalVariable(name: "p", scope: !3206, file: !585, line: 29, type: !53)
!3216 = !DILocation(line: 31, column: 13, scope: !3206)
!3217 = !DILocation(line: 31, column: 10, scope: !3206)
!3218 = !DILocation(line: 31, column: 17, scope: !3206)
!3219 = !DILocation(line: 31, column: 7, scope: !3206)
!3220 = !DILocation(line: 32, column: 13, scope: !3206)
!3221 = !DILocation(line: 32, column: 10, scope: !3206)
!3222 = !DILocation(line: 32, column: 17, scope: !3206)
!3223 = !DILocation(line: 32, column: 7, scope: !3206)
!3224 = !DILocation(line: 33, column: 13, scope: !3206)
!3225 = !DILocation(line: 33, column: 10, scope: !3206)
!3226 = !DILocation(line: 33, column: 17, scope: !3206)
!3227 = !DILocation(line: 33, column: 7, scope: !3206)
!3228 = !DILocalVariable(name: "top_p", scope: !3206, file: !585, line: 36, type: !53)
!3229 = !DILocation(line: 37, column: 32, scope: !3206)
!3230 = !DILocation(line: 37, column: 47, scope: !3206)
!3231 = !DILocation(line: 37, column: 38, scope: !3206)
!3232 = !DILocation(line: 37, column: 54, scope: !3206)
!3233 = !DILocalVariable(name: "out", scope: !3206, file: !585, line: 37, type: !53)
!3234 = !DILocation(line: 38, column: 5, scope: !3206)
!3235 = distinct !DISubprogram(name: "ef_pack_m_vec", scope: !2970, file: !2970, line: 24, type: !3236, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !84, retainedNodes: !71)
!3236 = !DISubroutineType(types: !3237)
!3237 = !{null, !90, !52, !86}
!3238 = !DILocalVariable(name: "in", arg: 1, scope: !3235, file: !2970, line: 24, type: !90)
!3239 = !DILocation(line: 0, scope: !3235)
!3240 = !DILocalVariable(name: "out", arg: 2, scope: !3235, file: !2970, line: 24, type: !52)
!3241 = !DILocalVariable(name: "ncols", arg: 3, scope: !3235, file: !2970, line: 24, type: !86)
!3242 = !DILocalVariable(name: "out8", scope: !3235, file: !2970, line: 26, type: !61)
!3243 = !DILocalVariable(name: "i", scope: !3235, file: !2970, line: 25, type: !86)
!3244 = !DILocation(line: 27, column: 9, scope: !3245)
!3245 = distinct !DILexicalBlock(scope: !3235, file: !2970, line: 27, column: 5)
!3246 = !DILocation(line: 27, scope: !3245)
!3247 = !DILocation(line: 27, column: 17, scope: !3248)
!3248 = distinct !DILexicalBlock(scope: !3245, file: !2970, line: 27, column: 5)
!3249 = !DILocation(line: 27, column: 20, scope: !3248)
!3250 = !DILocation(line: 27, column: 5, scope: !3245)
!3251 = !DILocation(line: 31, column: 23, scope: !3252)
!3252 = distinct !DILexicalBlock(scope: !3248, file: !2970, line: 27, column: 36)
!3253 = !DILocation(line: 31, column: 44, scope: !3252)
!3254 = !DILocation(line: 31, column: 40, scope: !3252)
!3255 = !DILocation(line: 31, column: 48, scope: !3252)
!3256 = !DILocation(line: 31, column: 37, scope: !3252)
!3257 = !DILocation(line: 31, column: 15, scope: !3252)
!3258 = !DILocation(line: 31, column: 9, scope: !3252)
!3259 = !DILocation(line: 31, column: 20, scope: !3252)
!3260 = !DILocation(line: 27, column: 31, scope: !3248)
!3261 = !DILocation(line: 27, column: 5, scope: !3248)
!3262 = distinct !{!3262, !3250, !3263, !388}
!3263 = !DILocation(line: 33, column: 5, scope: !3245)
!3264 = !DILocation(line: 34, column: 19, scope: !3265)
!3265 = distinct !DILexicalBlock(scope: !3235, file: !2970, line: 34, column: 9)
!3266 = !DILocation(line: 38, column: 23, scope: !3267)
!3267 = distinct !DILexicalBlock(scope: !3265, file: !2970, line: 34, column: 24)
!3268 = !DILocation(line: 38, column: 15, scope: !3267)
!3269 = !DILocation(line: 38, column: 9, scope: !3267)
!3270 = !DILocation(line: 38, column: 20, scope: !3267)
!3271 = !DILocation(line: 40, column: 5, scope: !3267)
!3272 = !DILocation(line: 41, column: 1, scope: !3235)
!3273 = distinct !DISubprogram(name: "ct_compare_64", scope: !3197, file: !3197, line: 46, type: !3274, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !84, retainedNodes: !71)
!3274 = !DISubroutineType(types: !3275)
!3275 = !{!53, !86, !86}
!3276 = !DILocalVariable(name: "a", arg: 1, scope: !3273, file: !3197, line: 46, type: !86)
!3277 = !DILocation(line: 0, scope: !3273)
!3278 = !DILocalVariable(name: "b", arg: 2, scope: !3273, file: !3197, line: 46, type: !86)
!3279 = !DILocation(line: 47, column: 38, scope: !3273)
!3280 = !DILocation(line: 47, column: 44, scope: !3273)
!3281 = !DILocation(line: 47, column: 73, scope: !3273)
!3282 = !DILocation(line: 47, column: 71, scope: !3273)
!3283 = !DILocation(line: 47, column: 5, scope: !3273)
!3284 = distinct !DISubprogram(name: "ct_64_is_greater_than", scope: !3197, file: !3197, line: 35, type: !3274, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !84, retainedNodes: !71)
!3285 = !DILocalVariable(name: "a", arg: 1, scope: !3284, file: !3197, line: 35, type: !86)
!3286 = !DILocation(line: 0, scope: !3284)
!3287 = !DILocalVariable(name: "b", arg: 2, scope: !3284, file: !3197, line: 35, type: !86)
!3288 = !DILocalVariable(name: "diff", scope: !3284, file: !3197, line: 36, type: !87)
!3289 = !DILocation(line: 37, column: 30, scope: !3284)
!3290 = !DILocation(line: 37, column: 59, scope: !3284)
!3291 = !DILocation(line: 37, column: 57, scope: !3284)
!3292 = !DILocation(line: 37, column: 5, scope: !3284)
!3293 = distinct !DISubprogram(name: "m_extract_element", scope: !2970, file: !2970, line: 16, type: !3294, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !84, retainedNodes: !71)
!3294 = !DISubroutineType(types: !3295)
!3295 = !{!51, !411, !86}
!3296 = !DILocalVariable(name: "in", arg: 1, scope: !3293, file: !2970, line: 16, type: !411)
!3297 = !DILocation(line: 0, scope: !3293)
!3298 = !DILocalVariable(name: "index", arg: 2, scope: !3293, file: !2970, line: 16, type: !86)
!3299 = !DILocation(line: 17, column: 27, scope: !3293)
!3300 = !DILocalVariable(name: "leg", scope: !3293, file: !2970, line: 17, type: !324)
!3301 = !DILocation(line: 18, column: 30, scope: !3293)
!3302 = !DILocalVariable(name: "offset", scope: !3293, file: !2970, line: 18, type: !324)
!3303 = !DILocation(line: 20, column: 13, scope: !3293)
!3304 = !DILocation(line: 20, column: 31, scope: !3293)
!3305 = !DILocation(line: 20, column: 21, scope: !3293)
!3306 = !DILocation(line: 20, column: 12, scope: !3293)
!3307 = !DILocation(line: 20, column: 5, scope: !3293)
!3308 = distinct !DISubprogram(name: "inverse_f", scope: !585, file: !585, line: 56, type: !3309, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !84, retainedNodes: !71)
!3309 = !DISubroutineType(types: !3310)
!3310 = !{!51, !51}
!3311 = !DILocalVariable(name: "a", arg: 1, scope: !3308, file: !585, line: 56, type: !51)
!3312 = !DILocation(line: 0, scope: !3308)
!3313 = !DILocation(line: 60, column: 24, scope: !3308)
!3314 = !DILocalVariable(name: "a2", scope: !3308, file: !585, line: 60, type: !51)
!3315 = !DILocation(line: 61, column: 24, scope: !3308)
!3316 = !DILocalVariable(name: "a4", scope: !3308, file: !585, line: 61, type: !51)
!3317 = !DILocation(line: 62, column: 24, scope: !3308)
!3318 = !DILocalVariable(name: "a8", scope: !3308, file: !585, line: 62, type: !51)
!3319 = !DILocation(line: 63, column: 24, scope: !3308)
!3320 = !DILocalVariable(name: "a6", scope: !3308, file: !585, line: 63, type: !51)
!3321 = !DILocation(line: 64, column: 25, scope: !3308)
!3322 = !DILocalVariable(name: "a14", scope: !3308, file: !585, line: 64, type: !51)
!3323 = !DILocation(line: 66, column: 5, scope: !3308)
!3324 = distinct !DISubprogram(name: "vec_mul_add_u64", scope: !3197, file: !3197, line: 94, type: !3325, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !84, retainedNodes: !71)
!3325 = !DISubroutineType(types: !3326)
!3326 = !{null, !324, !411, !51, !52}
!3327 = !DILocalVariable(name: "legs", arg: 1, scope: !3324, file: !3197, line: 94, type: !324)
!3328 = !DILocation(line: 0, scope: !3324)
!3329 = !DILocalVariable(name: "in", arg: 2, scope: !3324, file: !3197, line: 94, type: !411)
!3330 = !DILocalVariable(name: "a", arg: 3, scope: !3324, file: !3197, line: 94, type: !51)
!3331 = !DILocalVariable(name: "acc", arg: 4, scope: !3324, file: !3197, line: 94, type: !52)
!3332 = !DILocation(line: 95, column: 20, scope: !3324)
!3333 = !DILocalVariable(name: "tab", scope: !3324, file: !3197, line: 95, type: !62)
!3334 = !DILocalVariable(name: "lsb_ask", scope: !3324, file: !3197, line: 97, type: !53)
!3335 = !DILocalVariable(name: "i", scope: !3336, file: !3197, line: 99, type: !86)
!3336 = distinct !DILexicalBlock(scope: !3324, file: !3197, line: 99, column: 5)
!3337 = !DILocation(line: 0, scope: !3336)
!3338 = !DILocation(line: 99, column: 9, scope: !3336)
!3339 = !DILocation(line: 99, scope: !3336)
!3340 = !DILocation(line: 99, column: 20, scope: !3341)
!3341 = distinct !DILexicalBlock(scope: !3336, file: !3197, line: 99, column: 5)
!3342 = !DILocation(line: 99, column: 5, scope: !3336)
!3343 = !DILocation(line: 100, column: 21, scope: !3344)
!3344 = distinct !DILexicalBlock(scope: !3341, file: !3197, line: 99, column: 32)
!3345 = !DILocation(line: 100, column: 33, scope: !3344)
!3346 = !DILocation(line: 100, column: 51, scope: !3344)
!3347 = !DILocation(line: 100, column: 46, scope: !3344)
!3348 = !DILocation(line: 100, column: 44, scope: !3344)
!3349 = !DILocation(line: 101, column: 27, scope: !3344)
!3350 = !DILocation(line: 101, column: 33, scope: !3344)
!3351 = !DILocation(line: 101, column: 52, scope: !3344)
!3352 = !DILocation(line: 101, column: 59, scope: !3344)
!3353 = !DILocation(line: 101, column: 46, scope: !3344)
!3354 = !DILocation(line: 101, column: 44, scope: !3344)
!3355 = !DILocation(line: 101, column: 17, scope: !3344)
!3356 = !DILocation(line: 102, column: 21, scope: !3344)
!3357 = !DILocation(line: 102, column: 27, scope: !3344)
!3358 = !DILocation(line: 102, column: 33, scope: !3344)
!3359 = !DILocation(line: 102, column: 52, scope: !3344)
!3360 = !DILocation(line: 102, column: 59, scope: !3344)
!3361 = !DILocation(line: 102, column: 46, scope: !3344)
!3362 = !DILocation(line: 102, column: 44, scope: !3344)
!3363 = !DILocation(line: 102, column: 17, scope: !3344)
!3364 = !DILocation(line: 103, column: 21, scope: !3344)
!3365 = !DILocation(line: 103, column: 27, scope: !3344)
!3366 = !DILocation(line: 103, column: 33, scope: !3344)
!3367 = !DILocation(line: 103, column: 52, scope: !3344)
!3368 = !DILocation(line: 103, column: 59, scope: !3344)
!3369 = !DILocation(line: 103, column: 46, scope: !3344)
!3370 = !DILocation(line: 103, column: 44, scope: !3344)
!3371 = !DILocation(line: 103, column: 17, scope: !3344)
!3372 = !DILocation(line: 100, column: 9, scope: !3344)
!3373 = !DILocation(line: 100, column: 16, scope: !3344)
!3374 = !DILocation(line: 99, column: 29, scope: !3341)
!3375 = !DILocation(line: 99, column: 5, scope: !3341)
!3376 = distinct !{!3376, !3342, !3377, !388}
!3377 = !DILocation(line: 104, column: 5, scope: !3336)
!3378 = !DILocation(line: 105, column: 1, scope: !3324)
!3379 = distinct !DISubprogram(name: "ef_unpack_m_vec", scope: !2970, file: !2970, line: 44, type: !3380, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !84, retainedNodes: !71)
!3380 = !DISubroutineType(types: !3381)
!3381 = !{null, !86, !411, !61}
!3382 = !DILocalVariable(name: "legs", arg: 1, scope: !3379, file: !2970, line: 44, type: !86)
!3383 = !DILocation(line: 0, scope: !3379)
!3384 = !DILocalVariable(name: "in", arg: 2, scope: !3379, file: !2970, line: 44, type: !411)
!3385 = !DILocalVariable(name: "out", arg: 3, scope: !3379, file: !2970, line: 44, type: !61)
!3386 = !DILocalVariable(name: "in8", scope: !3379, file: !2970, line: 45, type: !90)
!3387 = !DILocalVariable(name: "i", scope: !3388, file: !2970, line: 46, type: !86)
!3388 = distinct !DILexicalBlock(scope: !3379, file: !2970, line: 46, column: 5)
!3389 = !DILocation(line: 0, scope: !3388)
!3390 = !DILocation(line: 46, column: 9, scope: !3388)
!3391 = !DILocation(line: 46, scope: !3388)
!3392 = !DILocation(line: 46, column: 29, scope: !3393)
!3393 = distinct !DILexicalBlock(scope: !3388, file: !2970, line: 46, column: 5)
!3394 = !DILocation(line: 46, column: 22, scope: !3393)
!3395 = !DILocation(line: 46, column: 5, scope: !3388)
!3396 = !DILocation(line: 51, column: 26, scope: !3397)
!3397 = distinct !DILexicalBlock(scope: !3393, file: !2970, line: 46, column: 42)
!3398 = !DILocation(line: 51, column: 21, scope: !3397)
!3399 = !DILocation(line: 51, column: 31, scope: !3397)
!3400 = !DILocation(line: 51, column: 9, scope: !3397)
!3401 = !DILocation(line: 51, column: 18, scope: !3397)
!3402 = !DILocation(line: 52, column: 26, scope: !3397)
!3403 = !DILocation(line: 52, column: 21, scope: !3397)
!3404 = !DILocation(line: 52, column: 30, scope: !3397)
!3405 = !DILocation(line: 52, column: 14, scope: !3397)
!3406 = !DILocation(line: 52, column: 9, scope: !3397)
!3407 = !DILocation(line: 52, column: 18, scope: !3397)
!3408 = !DILocation(line: 46, column: 37, scope: !3393)
!3409 = !DILocation(line: 46, column: 5, scope: !3393)
!3410 = distinct !{!3410, !3395, !3411, !388}
!3411 = !DILocation(line: 54, column: 5, scope: !3388)
!3412 = !DILocation(line: 55, column: 1, scope: !3379)
!3413 = distinct !DISubprogram(name: "mul_table", scope: !585, file: !585, line: 128, type: !586, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !84, retainedNodes: !71)
!3414 = !DILocalVariable(name: "b", arg: 1, scope: !3413, file: !585, line: 128, type: !175)
!3415 = !DILocation(line: 0, scope: !3413)
!3416 = !DILocation(line: 129, column: 19, scope: !3413)
!3417 = !DILocation(line: 129, column: 33, scope: !3413)
!3418 = !DILocalVariable(name: "x", scope: !3413, file: !585, line: 129, type: !62)
!3419 = !DILocalVariable(name: "high_nibble_mask", scope: !3413, file: !585, line: 131, type: !62)
!3420 = !DILocation(line: 133, column: 28, scope: !3413)
!3421 = !DILocalVariable(name: "high_half", scope: !3413, file: !585, line: 133, type: !62)
!3422 = !DILocation(line: 134, column: 28, scope: !3413)
!3423 = !DILocation(line: 134, column: 47, scope: !3413)
!3424 = !DILocation(line: 134, column: 34, scope: !3413)
!3425 = !DILocation(line: 134, column: 5, scope: !3413)
!3426 = distinct !DISubprogram(name: "mul_f", scope: !585, file: !585, line: 8, type: !1676, scopeLine: 8, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !84, retainedNodes: !71)
!3427 = !DILocalVariable(name: "a", arg: 1, scope: !3426, file: !585, line: 8, type: !51)
!3428 = !DILocation(line: 0, scope: !3426)
!3429 = !DILocalVariable(name: "b", arg: 2, scope: !3426, file: !585, line: 8, type: !51)
!3430 = !DILocation(line: 13, column: 10, scope: !3426)
!3431 = !DILocation(line: 13, column: 7, scope: !3426)
!3432 = !DILocation(line: 16, column: 17, scope: !3426)
!3433 = !DILocalVariable(name: "p", scope: !3426, file: !585, line: 10, type: !51)
!3434 = !DILocation(line: 17, column: 13, scope: !3426)
!3435 = !DILocation(line: 17, column: 17, scope: !3426)
!3436 = !DILocation(line: 17, column: 7, scope: !3426)
!3437 = !DILocation(line: 18, column: 13, scope: !3426)
!3438 = !DILocation(line: 18, column: 17, scope: !3426)
!3439 = !DILocation(line: 18, column: 7, scope: !3426)
!3440 = !DILocation(line: 19, column: 13, scope: !3426)
!3441 = !DILocation(line: 19, column: 17, scope: !3426)
!3442 = !DILocation(line: 19, column: 7, scope: !3426)
!3443 = !DILocalVariable(name: "top_p", scope: !3426, file: !585, line: 22, type: !51)
!3444 = !DILocation(line: 23, column: 37, scope: !3426)
!3445 = !DILocation(line: 23, column: 52, scope: !3426)
!3446 = !DILocation(line: 23, column: 43, scope: !3426)
!3447 = !DILocation(line: 23, column: 59, scope: !3426)
!3448 = !DILocalVariable(name: "out", scope: !3426, file: !585, line: 23, type: !51)
!3449 = !DILocation(line: 24, column: 5, scope: !3426)
!3450 = distinct !DISubprogram(name: "lincomb", scope: !585, file: !585, line: 69, type: !1684, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !84, retainedNodes: !71)
!3451 = !DILocalVariable(name: "a", arg: 1, scope: !3450, file: !585, line: 69, type: !90)
!3452 = !DILocation(line: 0, scope: !3450)
!3453 = !DILocalVariable(name: "b", arg: 2, scope: !3450, file: !585, line: 70, type: !90)
!3454 = !DILocalVariable(name: "n", arg: 3, scope: !3450, file: !585, line: 70, type: !86)
!3455 = !DILocalVariable(name: "m", arg: 4, scope: !3450, file: !585, line: 70, type: !86)
!3456 = !DILocalVariable(name: "ret", scope: !3450, file: !585, line: 71, type: !51)
!3457 = !DILocalVariable(name: "i", scope: !3458, file: !585, line: 72, type: !86)
!3458 = distinct !DILexicalBlock(scope: !3450, file: !585, line: 72, column: 5)
!3459 = !DILocation(line: 0, scope: !3458)
!3460 = !DILocation(line: 72, column: 10, scope: !3458)
!3461 = !DILocation(line: 72, scope: !3458)
!3462 = !DILocation(line: 72, column: 23, scope: !3463)
!3463 = distinct !DILexicalBlock(scope: !3458, file: !585, line: 72, column: 5)
!3464 = !DILocation(line: 72, column: 5, scope: !3458)
!3465 = !DILocation(line: 73, column: 27, scope: !3466)
!3466 = distinct !DILexicalBlock(scope: !3463, file: !585, line: 72, column: 41)
!3467 = !DILocation(line: 73, column: 33, scope: !3466)
!3468 = !DILocation(line: 73, column: 21, scope: !3466)
!3469 = !DILocation(line: 73, column: 15, scope: !3466)
!3470 = !DILocation(line: 72, column: 28, scope: !3463)
!3471 = !DILocation(line: 72, column: 35, scope: !3463)
!3472 = !DILocation(line: 72, column: 5, scope: !3463)
!3473 = distinct !{!3473, !3464, !3474, !388}
!3474 = !DILocation(line: 74, column: 5, scope: !3458)
!3475 = !DILocation(line: 75, column: 5, scope: !3450)
!3476 = distinct !DISubprogram(name: "add_f", scope: !585, file: !585, line: 42, type: !1676, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !84, retainedNodes: !71)
!3477 = !DILocalVariable(name: "a", arg: 1, scope: !3476, file: !585, line: 42, type: !51)
!3478 = !DILocation(line: 0, scope: !3476)
!3479 = !DILocalVariable(name: "b", arg: 2, scope: !3476, file: !585, line: 42, type: !51)
!3480 = !DILocation(line: 43, column: 14, scope: !3476)
!3481 = !DILocation(line: 43, column: 5, scope: !3476)
