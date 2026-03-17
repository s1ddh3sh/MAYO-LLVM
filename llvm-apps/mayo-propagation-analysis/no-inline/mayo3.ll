; ModuleID = 'composite'
source_filename = "composite"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "arm-unknown-none-eabi"

%struct.sk_t = type { [48762 x i64], [1080 x i8] }

@__const.example_mayo.msg = private unnamed_addr constant <{ i8, [31 x i8] }> <{ i8 14, [31 x i8] zeroinitializer }>, align 1
@.str = private unnamed_addr constant [17 x i8] c"Example with %s\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [7 x i8] c"MAYO_3\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [17 x i8] c"mayo_keypair -> \00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [6 x i8] c"FAIL\0A\00", align 1, !dbg !14
@.str.4 = private unnamed_addr constant [4 x i8] c"OK\0A\00", align 1, !dbg !19
@.str.5 = private unnamed_addr constant [19 x i8] c"mayo_expand_sk -> \00", align 1, !dbg !24
@.str.6 = private unnamed_addr constant [19 x i8] c"mayo_expand_pk -> \00", align 1, !dbg !29
@.str.7 = private unnamed_addr constant [14 x i8] c"mayo_sign -> \00", align 1, !dbg !31
@.str.8 = private unnamed_addr constant [39 x i8] c"mayo_open (with correct signature) -> \00", align 1, !dbg !36
@.str.9 = private unnamed_addr constant [41 x i8] c"mayo_verify (with correct signature) -> \00", align 1, !dbg !41
@f_tail = internal unnamed_addr constant [4 x i8] c"\08\00\01\07", align 1, !dbg !46
@pqmayo_MAYO_3_ref_uint32_t_blocker = dso_local local_unnamed_addr global i32 0, align 4, !dbg !82
@pqmayo_MAYO_3_ref_uint64_t_blocker = dso_local global i64 0, align 8, !dbg !97
@pqmayo_MAYO_3_ref_unsigned_char_blocker = dso_local global i8 0, align 1, !dbg !101

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
    #dbg_value(i32 713, !155, !DIExpression(), !152)
  store i32 713, ptr %smlen, align 4, !dbg !156
  %call = call dereferenceable_or_null(2986) ptr @calloc(i32 noundef 2986, i32 noundef 1) #7, !dbg !157
    #dbg_value(ptr %call, !158, !DIExpression(), !152)
  %call1 = call dereferenceable_or_null(32) ptr @calloc(i32 noundef 32, i32 noundef 1) #7, !dbg !159
    #dbg_value(ptr %call1, !160, !DIExpression(), !152)
  %call2 = call dereferenceable_or_null(393176) ptr @calloc(i32 noundef 1, i32 noundef 393176) #7, !dbg !161
    #dbg_value(ptr %call2, !162, !DIExpression(), !152)
  %call3 = call dereferenceable_or_null(391176) ptr @calloc(i32 noundef 1, i32 noundef 391176) #7, !dbg !163
    #dbg_value(ptr %call3, !164, !DIExpression(), !152)
  %0 = load i32, ptr %msglen, align 4, !dbg !179
    #dbg_value(i32 %0, !153, !DIExpression(), !152)
  %add4 = add i32 %0, 681, !dbg !180
  %call5 = call ptr @calloc(i32 noundef %add4, i32 noundef 1) #7, !dbg !181
    #dbg_value(ptr %call5, !182, !DIExpression(), !152)
    #dbg_declare(ptr %msg, !183, !DIExpression(), !187)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %msg, ptr noundef nonnull align 1 dereferenceable(32) @__const.example_mayo.msg, i32 32, i1 false), !dbg !187
    #dbg_declare(ptr %msg2, !188, !DIExpression(), !189)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %msg2, i8 0, i32 32, i1 false), !dbg !189
  %call6 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #8, !dbg !190
  %call7 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.2) #8, !dbg !191
  %call8 = call i32 @pqmayo_MAYO_3_ref_mayo_keypair(ptr noundef %p, ptr noundef %call, ptr noundef %call1) #6, !dbg !192
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
  %call12 = call i32 @pqmayo_MAYO_3_ref_mayo_expand_sk(ptr noundef %p, ptr noundef %call1, ptr noundef %call3) #6, !dbg !202
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
  %call20 = call i32 @pqmayo_MAYO_3_ref_mayo_expand_pk(ptr noundef %p, ptr noundef %call, ptr noundef %call2) #6, !dbg !211
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
  %call28 = call i32 @pqmayo_MAYO_3_ref_mayo_sign(ptr noundef %p, ptr noundef %call5, ptr noundef nonnull %smlen, ptr noundef nonnull %msg, i32 noundef %1, ptr noundef %call1) #6, !dbg !221
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
  %call37 = call i32 @pqmayo_MAYO_3_ref_mayo_open(ptr noundef %p, ptr noundef nonnull %msg2, ptr noundef nonnull %msglen, ptr noundef %call5, i32 noundef %2, ptr noundef %call) #6, !dbg !231
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
  %call49 = call i32 @pqmayo_MAYO_3_ref_mayo_verify(ptr noundef %p, ptr noundef nonnull %msg, i32 noundef %4, ptr noundef %call5, ptr noundef %call) #6, !dbg !244
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
  call void @mayo_secure_free(ptr noundef %call1, i32 noundef 32) #8, !dbg !257
  call void @mayo_secure_free(ptr noundef %call3, i32 noundef 391176) #8, !dbg !258
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
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_3_ref_mayo_keypair(ptr noundef %p, ptr noundef %pk, ptr noundef %sk) local_unnamed_addr #0 !dbg !261 {
entry:
    #dbg_value(ptr %p, !292, !DIExpression(), !293)
    #dbg_value(ptr %pk, !294, !DIExpression(), !293)
    #dbg_value(ptr %sk, !295, !DIExpression(), !293)
    #dbg_value(i32 0, !296, !DIExpression(), !293)
  %call = call i32 @pqmayo_MAYO_3_ref_mayo_keypair_compact(ptr noundef %p, ptr noundef %pk, ptr noundef %sk) #6, !dbg !297
    #dbg_value(i32 %call, !296, !DIExpression(), !293)
    #dbg_label(!298, !299)
  ret i32 %call, !dbg !300
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_3_ref_mayo_keypair_compact(ptr noundef %p, ptr noundef %cpk, ptr noundef %csk) local_unnamed_addr #0 !dbg !301 {
entry:
  %S = alloca [556 x i8], align 1
  %P = alloca [48762 x i64], align 8
  %P3 = alloca [700 x i64], align 8
  %O = alloca [1080 x i8], align 1
  %P3_upper = alloca [385 x i64], align 8
    #dbg_value(ptr %p, !302, !DIExpression(), !303)
    #dbg_value(ptr %cpk, !304, !DIExpression(), !303)
    #dbg_value(ptr %csk, !305, !DIExpression(), !303)
    #dbg_value(i32 0, !306, !DIExpression(), !303)
    #dbg_value(ptr %csk, !307, !DIExpression(), !303)
    #dbg_declare(ptr %S, !308, !DIExpression(), !312)
    #dbg_declare(ptr %P, !313, !DIExpression(), !314)
    #dbg_declare(ptr %P3, !315, !DIExpression(), !319)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(5600) %P3, i8 0, i32 5600, i1 false), !dbg !319
    #dbg_declare(ptr %O, !320, !DIExpression(), !322)
    #dbg_value(i32 7, !323, !DIExpression(), !303)
    #dbg_value(i32 108, !325, !DIExpression(), !303)
    #dbg_value(i32 108, !326, !DIExpression(), !303)
    #dbg_value(i32 10, !327, !DIExpression(), !303)
    #dbg_value(i32 540, !328, !DIExpression(), !303)
    #dbg_value(i32 41202, !329, !DIExpression(), !303)
    #dbg_value(i32 385, !330, !DIExpression(), !303)
    #dbg_value(i32 16, !331, !DIExpression(), !303)
    #dbg_value(i32 32, !332, !DIExpression(), !303)
    #dbg_value(ptr %P, !333, !DIExpression(), !303)
  %add.ptr = getelementptr inbounds nuw i8, ptr %P, i32 329616, !dbg !334
    #dbg_value(ptr %add.ptr, !335, !DIExpression(), !303)
  %call = call i32 @randombytes(ptr noundef %csk, i32 noundef 32) #8, !dbg !336
  %cmp.not = icmp eq i32 %call, 0, !dbg !338
  br i1 %cmp.not, label %if.end, label %err, !dbg !338

if.end:                                           ; preds = %entry
    #dbg_value(ptr %P, !333, !DIExpression(), !303)
  %call3 = call i32 @shake256(ptr noundef nonnull %S, i32 noundef 556, ptr noundef %csk, i32 noundef 32) #8, !dbg !339
    #dbg_value(ptr %S, !340, !DIExpression(), !303)
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %S, i32 16, !dbg !341
  call fastcc void @decode(ptr noundef nonnull %add.ptr6, ptr noundef nonnull %O, i32 noundef 1080) #6, !dbg !342
  call fastcc void @expand_P1_P2(ptr noundef %p, ptr noundef nonnull %P, ptr noundef nonnull %S) #6, !dbg !343
  call fastcc void @compute_P3(ptr noundef %p, ptr noundef nonnull %P, ptr noundef nonnull %add.ptr, ptr noundef nonnull %O, ptr noundef nonnull %P3) #6, !dbg !344
  %call11 = call ptr @memcpy(ptr noundef %cpk, ptr noundef nonnull %S, i32 noundef 16) #8, !dbg !345
    #dbg_declare(ptr %P3_upper, !346, !DIExpression(), !350)
  call void @pqmayo_MAYO_3_ref_m_upper(ptr noundef %p, ptr noundef nonnull %P3, ptr noundef nonnull %P3_upper, i32 noundef 10) #6, !dbg !351
  %add.ptr15 = getelementptr inbounds nuw i8, ptr %cpk, i32 16, !dbg !352
  call fastcc void @pack_m_vecs(ptr noundef nonnull %P3_upper, ptr noundef nonnull %add.ptr15, i32 noundef 55, i32 noundef 108) #6, !dbg !353
  br label %err, !dbg !353

err:                                              ; preds = %entry, %if.end
  %ret.0 = phi i32 [ 0, %if.end ], [ 1, %entry ], !dbg !303
    #dbg_value(i32 %ret.0, !306, !DIExpression(), !303)
    #dbg_label(!354, !355)
  call void @mayo_secure_clear(ptr noundef nonnull %O, i32 noundef 1080) #8, !dbg !356
  call void @mayo_secure_clear(ptr noundef nonnull %add.ptr, i32 noundef 60480) #8, !dbg !357
  call void @mayo_secure_clear(ptr noundef nonnull %P3, i32 noundef 5600) #8, !dbg !358
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
  %call = call i32 @AES_128_CTR(ptr noundef %P, i32 noundef 376164, ptr noundef %seed_pk, i32 noundef 16) #8, !dbg !404
  call fastcc void @unpack_m_vecs(ptr noundef %P, ptr noundef %P, i32 noundef 6966, i32 noundef 108) #6, !dbg !405
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
    #dbg_value(i32 7, !418, !DIExpression(), !413)
    #dbg_value(i32 108, !419, !DIExpression(), !413)
    #dbg_value(i32 10, !420, !DIExpression(), !413)
  call fastcc void @P1_times_O(ptr noundef %p, ptr noundef %P1, ptr noundef %O, ptr noundef %P2) #6, !dbg !421
  call fastcc void @mul_add_mat_trans_x_m_mat(i32 noundef 7, ptr noundef %O, ptr noundef %P2, ptr noundef %P3, i32 noundef 108, i32 noundef 10, i32 noundef 10) #6, !dbg !422
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
  call fastcc void @mul_add_m_upper_triangular_mat_x_mat(i32 noundef 7, ptr noundef %P1, ptr noundef %O, ptr noundef %acc, i32 noundef 108, i32 noundef 108, i32 noundef 10, i32 noundef 1) #6, !dbg !466
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
  %exitcond = icmp ne i32 %i.0, 7, !dbg !545
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
  %tmp = alloca [7 x i64], align 8
    #dbg_value(ptr %in, !667, !DIExpression(), !668)
    #dbg_value(ptr %out, !669, !DIExpression(), !668)
    #dbg_value(i32 %vecs, !670, !DIExpression(), !668)
    #dbg_value(i32 %m, !671, !DIExpression(), !668)
  %add = add nsw i32 %m, 15, !dbg !672
  %div = sdiv i32 %add, 16, !dbg !673
    #dbg_value(i32 %div, !674, !DIExpression(), !668)
    #dbg_value(ptr %out, !675, !DIExpression(), !668)
    #dbg_declare(ptr %tmp, !676, !DIExpression(), !678)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %tmp, i8 0, i32 56, i1 false), !dbg !678
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
define dso_local i32 @pqmayo_MAYO_3_ref_mayo_expand_sk(ptr noundef %p, ptr noundef %csk, ptr noundef %sk) local_unnamed_addr #0 !dbg !702 {
entry:
  %S = alloca [556 x i8], align 1
    #dbg_value(ptr %p, !711, !DIExpression(), !712)
    #dbg_value(ptr %csk, !713, !DIExpression(), !712)
    #dbg_value(ptr %sk, !714, !DIExpression(), !712)
    #dbg_value(i32 0, !715, !DIExpression(), !712)
    #dbg_declare(ptr %S, !716, !DIExpression(), !717)
    #dbg_value(ptr %sk, !718, !DIExpression(), !712)
  %O2 = getelementptr inbounds nuw i8, ptr %sk, i32 390096, !dbg !719
    #dbg_value(ptr %O2, !720, !DIExpression(), !712)
    #dbg_value(i32 10, !721, !DIExpression(), !712)
    #dbg_value(i32 108, !722, !DIExpression(), !712)
    #dbg_value(i32 540, !723, !DIExpression(), !712)
    #dbg_value(i32 16, !724, !DIExpression(), !712)
    #dbg_value(i32 32, !725, !DIExpression(), !712)
    #dbg_value(ptr %csk, !726, !DIExpression(), !712)
    #dbg_value(ptr %S, !727, !DIExpression(), !712)
  %call = call i32 @shake256(ptr noundef nonnull %S, i32 noundef 556, ptr noundef %csk, i32 noundef 32) #8, !dbg !728
  %add.ptr = getelementptr inbounds nuw i8, ptr %S, i32 16, !dbg !729
  call fastcc void @decode(ptr noundef nonnull %add.ptr, ptr noundef nonnull %O2, i32 noundef 1080) #6, !dbg !730
  call fastcc void @expand_P1_P2(ptr noundef %p, ptr noundef %sk, ptr noundef nonnull %S) #6, !dbg !731
  %add.ptr7 = getelementptr inbounds nuw i8, ptr %sk, i32 329616, !dbg !732
    #dbg_value(ptr %add.ptr7, !733, !DIExpression(), !712)
    #dbg_value(ptr %sk, !734, !DIExpression(), !712)
    #dbg_value(ptr %add.ptr7, !735, !DIExpression(), !712)
  call fastcc void @P1P1t_times_O(ptr noundef %p, ptr noundef %sk, ptr noundef nonnull %O2, ptr noundef nonnull %add.ptr7) #6, !dbg !736
  call void @mayo_secure_clear(ptr noundef nonnull %S, i32 noundef 556) #8, !dbg !737
  ret i32 0, !dbg !738
}

; Function Attrs: nounwind
define internal fastcc void @P1P1t_times_O(ptr noundef %p, ptr noundef %P1, ptr noundef %O, ptr noundef %acc) unnamed_addr #0 !dbg !739 {
entry:
    #dbg_value(ptr %p, !740, !DIExpression(), !741)
    #dbg_value(ptr %P1, !742, !DIExpression(), !741)
    #dbg_value(ptr %O, !743, !DIExpression(), !741)
    #dbg_value(ptr %acc, !744, !DIExpression(), !741)
    #dbg_value(i32 10, !745, !DIExpression(), !741)
    #dbg_value(i32 108, !746, !DIExpression(), !741)
    #dbg_value(i32 7, !747, !DIExpression(), !741)
    #dbg_value(i32 0, !748, !DIExpression(), !741)
    #dbg_value(i32 0, !749, !DIExpression(), !751)
  br label %for.cond, !dbg !752

for.cond:                                         ; preds = %for.inc27, %entry
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc27 ], [ 108, %entry ], !dbg !753
  %bs_mat_entries_used.0 = phi i32 [ 0, %entry ], [ %bs_mat_entries_used.1.lcssa, %for.inc27 ], !dbg !753
  %r.0 = phi i32 [ 0, %entry ], [ %inc28, %for.inc27 ], !dbg !754
    #dbg_value(i32 %r.0, !749, !DIExpression(), !751)
    #dbg_value(i32 %bs_mat_entries_used.0, !748, !DIExpression(), !741)
  %exitcond2 = icmp ne i32 %r.0, 108, !dbg !755
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
  %exitcond = icmp ne i32 %k.0, 10, !dbg !774
  br i1 %exitcond, label %for.body7, label %for.inc25.loopexit, !dbg !769

for.body7:                                        ; preds = %for.cond5
  %add.ptr.idx = mul nsw i32 %bs_mat_entries_used.1, 56, !dbg !776
  %add.ptr = getelementptr inbounds i8, ptr %P1, i32 %add.ptr.idx, !dbg !776
  %mul8 = mul nuw nsw i32 %c.0, 10, !dbg !778
  %1 = getelementptr inbounds nuw i8, ptr %O, i32 %mul8, !dbg !779
  %arrayidx = getelementptr inbounds nuw i8, ptr %1, i32 %k.0, !dbg !779
  %2 = load i8, ptr %arrayidx, align 1, !dbg !779
  %mul10 = mul nuw nsw i32 %r.0, 10, !dbg !780
  %add11 = add nuw nsw i32 %mul10, %k.0, !dbg !781
  %add.ptr13.idx = mul nuw nsw i32 %add11, 56, !dbg !782
  %add.ptr13 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr13.idx, !dbg !782
  call fastcc void @m_vec_mul_add(i32 noundef 7, ptr noundef %add.ptr, i8 noundef zeroext %2, ptr noundef %add.ptr13) #6, !dbg !783
  %add.ptr15.idx = mul nsw i32 %bs_mat_entries_used.1, 56, !dbg !784
  %add.ptr15 = getelementptr inbounds i8, ptr %P1, i32 %add.ptr15.idx, !dbg !784
  %mul16 = mul nuw nsw i32 %r.0, 10, !dbg !785
  %3 = getelementptr inbounds nuw i8, ptr %O, i32 %mul16, !dbg !786
  %arrayidx18 = getelementptr inbounds nuw i8, ptr %3, i32 %k.0, !dbg !786
  %4 = load i8, ptr %arrayidx18, align 1, !dbg !786
  %mul19 = mul nuw nsw i32 %c.0, 10, !dbg !787
  %add20 = add nuw nsw i32 %mul19, %k.0, !dbg !788
  %add.ptr22.idx = mul nuw nsw i32 %add20, 56, !dbg !789
  %add.ptr22 = getelementptr inbounds nuw i8, ptr %acc, i32 %add.ptr22.idx, !dbg !789
  call fastcc void @m_vec_mul_add(i32 noundef 7, ptr noundef %add.ptr15, i8 noundef zeroext %4, ptr noundef %add.ptr22) #6, !dbg !790
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
define dso_local i32 @pqmayo_MAYO_3_ref_mayo_sign_signature(ptr noundef %p, ptr noundef %sig, ptr noundef %siglen, ptr noundef %m, i32 noundef %mlen, ptr noundef %csk) local_unnamed_addr #0 !dbg !805 {
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
  %sk = alloca %struct.sk_t, align 32
  %Ox = alloca [108 x i8], align 1
  %tmp = alloca [113 x i8], align 1
  %Mtmp = alloca [770 x i64], align 8
    #dbg_value(ptr %p, !809, !DIExpression(), !810)
    #dbg_value(ptr %sig, !811, !DIExpression(), !810)
    #dbg_value(ptr %siglen, !812, !DIExpression(), !810)
    #dbg_value(ptr %m, !813, !DIExpression(), !810)
    #dbg_value(i32 %mlen, !814, !DIExpression(), !810)
    #dbg_value(ptr %csk, !815, !DIExpression(), !810)
    #dbg_value(i32 0, !816, !DIExpression(), !810)
    #dbg_declare(ptr %tenc, !817, !DIExpression(), !821)
    #dbg_declare(ptr %t, !822, !DIExpression(), !826)
    #dbg_declare(ptr %y, !827, !DIExpression(), !828)
    #dbg_declare(ptr %salt, !829, !DIExpression(), !830)
    #dbg_declare(ptr %V, !831, !DIExpression(), !835)
    #dbg_declare(ptr %Vdec, !836, !DIExpression(), !840)
    #dbg_declare(ptr %A, !841, !DIExpression(), !845)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(12432) %A, i8 0, i32 12432, i1 false), !dbg !845
    #dbg_declare(ptr %x, !846, !DIExpression(), !850)
    #dbg_declare(ptr %r, !851, !DIExpression(), !855)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(111) %r, i8 0, i32 111, i1 false), !dbg !855
    #dbg_declare(ptr %s, !856, !DIExpression(), !857)
    #dbg_declare(ptr %sk, !858, !DIExpression(), !859)
    #dbg_declare(ptr %Ox, !860, !DIExpression(), !861)
    #dbg_declare(ptr %tmp, !862, !DIExpression(), !866)
    #dbg_value(i32 108, !867, !DIExpression(), !810)
    #dbg_value(i32 118, !868, !DIExpression(), !810)
    #dbg_value(i32 10, !869, !DIExpression(), !810)
    #dbg_value(i32 11, !870, !DIExpression(), !810)
    #dbg_value(i32 108, !871, !DIExpression(), !810)
    #dbg_value(i32 54, !872, !DIExpression(), !810)
    #dbg_value(i32 54, !873, !DIExpression(), !810)
    #dbg_value(i32 55, !874, !DIExpression(), !810)
    #dbg_value(i32 681, !875, !DIExpression(), !810)
    #dbg_value(i32 111, !876, !DIExpression(), !810)
    #dbg_value(i32 48, !877, !DIExpression(), !810)
    #dbg_value(i32 32, !878, !DIExpression(), !810)
    #dbg_value(i32 32, !879, !DIExpression(), !810)
  %call = call i32 @pqmayo_MAYO_3_ref_mayo_expand_sk(ptr noundef %p, ptr noundef %csk, ptr noundef nonnull %sk) #6, !dbg !880
    #dbg_value(i32 %call, !816, !DIExpression(), !810)
  %cmp.not = icmp eq i32 %call, 0, !dbg !881
  br i1 %cmp.not, label %if.end, label %err, !dbg !881

if.end:                                           ; preds = %entry
    #dbg_value(ptr %csk, !883, !DIExpression(), !810)
  %call1 = call i32 @shake256(ptr noundef nonnull %tmp, i32 noundef 48, ptr noundef %m, i32 noundef %mlen) #8, !dbg !884
    #dbg_value(ptr %sk, !885, !DIExpression(), !810)
  %add.ptr = getelementptr inbounds nuw i8, ptr %sk, i32 329616, !dbg !886
    #dbg_value(ptr %add.ptr, !887, !DIExpression(), !810)
    #dbg_declare(ptr %Mtmp, !888, !DIExpression(), !892)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(6160) %Mtmp, i8 0, i32 6160, i1 false), !dbg !892
  %add.ptr5 = getelementptr inbounds nuw i8, ptr %tmp, i32 48, !dbg !893
  %call6 = call i32 @randombytes(ptr noundef nonnull %add.ptr5, i32 noundef 32) #8, !dbg !895
  %cmp7.not = icmp eq i32 %call6, 0, !dbg !896
  br i1 %cmp7.not, label %if.end9, label %err, !dbg !896

if.end9:                                          ; preds = %if.end
  %add.ptr12 = getelementptr inbounds nuw i8, ptr %tmp, i32 80, !dbg !897
  %call13 = call ptr @memcpy(ptr noundef nonnull %add.ptr12, ptr noundef %csk, i32 noundef 32) #8, !dbg !898
  %call16 = call i32 @shake256(ptr noundef nonnull %salt, i32 noundef 32, ptr noundef nonnull %tmp, i32 noundef 112) #8, !dbg !899
  %add.ptr18 = getelementptr inbounds nuw i8, ptr %tmp, i32 48, !dbg !900
  %call20 = call ptr @memcpy(ptr noundef nonnull %add.ptr18, ptr noundef nonnull %salt, i32 noundef 32) #8, !dbg !901
  %add.ptr24 = getelementptr inbounds nuw i8, ptr %tmp, i32 112, !dbg !902
    #dbg_value(ptr %add.ptr24, !903, !DIExpression(), !810)
  %call27 = call i32 @shake256(ptr noundef nonnull %tenc, i32 noundef 54, ptr noundef nonnull %tmp, i32 noundef 80) #8, !dbg !904
  call fastcc void @decode(ptr noundef nonnull %tenc, ptr noundef nonnull %t, i32 noundef 108) #6, !dbg !905
    #dbg_value(i32 0, !906, !DIExpression(), !908)
  %add.ptr61 = getelementptr inbounds nuw i8, ptr %V, i32 594, !dbg !909
  br label %for.cond, !dbg !912

for.cond:                                         ; preds = %if.else, %if.end9
  %ctr.0 = phi i32 [ 0, %if.end9 ], [ %inc75, %if.else ], !dbg !913
    #dbg_value(i32 %ctr.0, !906, !DIExpression(), !908)
  %exitcond2 = icmp ne i32 %ctr.0, 256, !dbg !914
  br i1 %exitcond2, label %for.body, label %for.end76, !dbg !915

for.body:                                         ; preds = %for.cond
  %conv = trunc nuw i32 %ctr.0 to i8, !dbg !916
  store i8 %conv, ptr %add.ptr24, align 1, !dbg !917
  %call33 = call i32 @shake256(ptr noundef nonnull %V, i32 noundef 649, ptr noundef nonnull %tmp, i32 noundef 113) #8, !dbg !918
    #dbg_value(i32 0, !919, !DIExpression(), !921)
  br label %for.cond34, !dbg !922

for.cond34:                                       ; preds = %for.body37, %for.body
  %i.0 = phi i32 [ 0, %for.body ], [ %inc, %for.body37 ], !dbg !923
    #dbg_value(i32 %i.0, !919, !DIExpression(), !921)
  %exitcond = icmp ne i32 %i.0, 11, !dbg !924
  br i1 %exitcond, label %for.body37, label %for.end, !dbg !926

for.body37:                                       ; preds = %for.cond34
  %mul = mul nuw nsw i32 %i.0, 54, !dbg !927
  %add.ptr39 = getelementptr inbounds nuw i8, ptr %V, i32 %mul, !dbg !929
  %mul41 = mul nuw nsw i32 %i.0, 108, !dbg !930
  %add.ptr42 = getelementptr inbounds nuw i8, ptr %Vdec, i32 %mul41, !dbg !931
  call fastcc void @decode(ptr noundef nonnull %add.ptr39, ptr noundef nonnull %add.ptr42, i32 noundef 108) #6, !dbg !932
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
  %exitcond1 = icmp ne i32 %i51.0, 108, !dbg !945
  br i1 %exitcond1, label %for.body55, label %for.end59, !dbg !947

for.body55:                                       ; preds = %for.cond52
  %0 = mul nuw nsw i32 %i51.0, 111, !dbg !948
  %sub = add nuw nsw i32 %0, 110, !dbg !950
  %arrayidx = getelementptr inbounds nuw [12432 x i8], ptr %A, i32 0, i32 %sub, !dbg !951
  store i8 0, ptr %arrayidx, align 1, !dbg !952
  %inc58 = add nuw nsw i32 %i51.0, 1, !dbg !953
    #dbg_value(i32 %inc58, !940, !DIExpression(), !942)
  br label %for.cond52, !dbg !954, !llvm.loop !955

for.end59:                                        ; preds = %for.cond52
  call fastcc void @decode(ptr noundef nonnull %add.ptr61, ptr noundef nonnull %r, i32 noundef 110) #6, !dbg !957
  %call67 = call i32 @pqmayo_MAYO_3_ref_sample_solution(ptr noundef %p, ptr noundef nonnull %A, ptr noundef nonnull %y, ptr noundef nonnull %r, ptr noundef nonnull %x, i32 noundef 11, i32 noundef 10, i32 noundef 108, i32 noundef 111) #6, !dbg !958
  %tobool.not = icmp eq i32 %call67, 0, !dbg !958
  br i1 %tobool.not, label %if.else, label %for.end76, !dbg !958

if.else:                                          ; preds = %for.end59
  %call70 = call ptr @memset(ptr noundef nonnull %Mtmp, i32 noundef 0, i32 noundef 6160) #8, !dbg !960
  %call72 = call ptr @memset(ptr noundef nonnull %A, i32 noundef 0, i32 noundef 12432) #8, !dbg !962
  %inc75 = add nuw nsw i32 %ctr.0, 1, !dbg !963
    #dbg_value(i32 %inc75, !906, !DIExpression(), !908)
  br label %for.cond, !dbg !964, !llvm.loop !965

for.end76:                                        ; preds = %for.end59, %for.cond
    #dbg_value(i32 0, !967, !DIExpression(), !969)
  br label %for.cond78, !dbg !970

for.cond78:                                       ; preds = %for.body81, %for.end76
  %i77.0 = phi i32 [ 0, %for.end76 ], [ %inc103, %for.body81 ], !dbg !971
    #dbg_value(i32 %i77.0, !967, !DIExpression(), !969)
  %exitcond3 = icmp ne i32 %i77.0, 11, !dbg !972
  br i1 %exitcond3, label %for.body81, label %for.end104, !dbg !974

for.body81:                                       ; preds = %for.cond78
  %mul83 = mul nuw nsw i32 %i77.0, 108, !dbg !975
  %add.ptr84 = getelementptr inbounds nuw i8, ptr %Vdec, i32 %mul83, !dbg !977
    #dbg_value(ptr %add.ptr84, !978, !DIExpression(), !810)
  %O = getelementptr inbounds nuw i8, ptr %sk, i32 390096, !dbg !979
  %mul87 = mul nuw nsw i32 %i77.0, 10, !dbg !980
  %add.ptr88 = getelementptr inbounds nuw i8, ptr %x, i32 %mul87, !dbg !981
  call fastcc void @mat_mul(ptr noundef nonnull %O, ptr noundef nonnull %add.ptr88, ptr noundef nonnull %Ox, i32 noundef 10, i32 noundef 108, i32 noundef 1) #6, !dbg !982
  %mul92 = mul nuw nsw i32 %i77.0, 118, !dbg !983
  %add.ptr93 = getelementptr inbounds nuw i8, ptr %s, i32 %mul92, !dbg !984
  call fastcc void @mat_add(ptr noundef nonnull %add.ptr84, ptr noundef nonnull %Ox, ptr noundef nonnull %add.ptr93, i32 noundef 108, i32 noundef 1) #6, !dbg !985
  %mul95 = mul nuw nsw i32 %i77.0, 118, !dbg !986
  %add.ptr96 = getelementptr inbounds nuw i8, ptr %s, i32 %mul95, !dbg !987
  %add.ptr97 = getelementptr inbounds nuw i8, ptr %add.ptr96, i32 108, !dbg !988
  %mul99 = mul nuw nsw i32 %i77.0, 10, !dbg !989
  %add.ptr100 = getelementptr inbounds nuw i8, ptr %x, i32 %mul99, !dbg !990
  %call101 = call ptr @memcpy(ptr noundef nonnull %add.ptr97, ptr noundef nonnull %add.ptr100, i32 noundef 10) #8, !dbg !991
  %inc103 = add nuw nsw i32 %i77.0, 1, !dbg !992
    #dbg_value(i32 %inc103, !967, !DIExpression(), !969)
  br label %for.cond78, !dbg !993, !llvm.loop !994

for.end104:                                       ; preds = %for.cond78
  call fastcc void @encode(ptr noundef nonnull %s, ptr noundef %sig, i32 noundef 1298) #6, !dbg !996
  %add.ptr107 = getelementptr inbounds nuw i8, ptr %sig, i32 649, !dbg !997
  %call109 = call ptr @memcpy(ptr noundef nonnull %add.ptr107, ptr noundef nonnull %salt, i32 noundef 32) #8, !dbg !998
  store i32 681, ptr %siglen, align 4, !dbg !999
  br label %err, !dbg !1000

err:                                              ; preds = %if.end, %entry, %for.end104
  %ret.0 = phi i32 [ %call, %for.end104 ], [ %call, %entry ], [ 1, %if.end ], !dbg !810
    #dbg_value(i32 %ret.0, !816, !DIExpression(), !810)
    #dbg_label(!1001, !1002)
  call void @mayo_secure_clear(ptr noundef nonnull %V, i32 noundef 649) #8, !dbg !1003
  call void @mayo_secure_clear(ptr noundef nonnull %Vdec, i32 noundef 1188) #8, !dbg !1004
  call void @mayo_secure_clear(ptr noundef nonnull %A, i32 noundef 12432) #8, !dbg !1005
  call void @mayo_secure_clear(ptr noundef nonnull %r, i32 noundef 111) #8, !dbg !1006
  %O114 = getelementptr inbounds nuw i8, ptr %sk, i32 390096, !dbg !1007
  call void @mayo_secure_clear(ptr noundef nonnull %O114, i32 noundef 1080) #8, !dbg !1008
  call void @mayo_secure_clear(ptr noundef nonnull %sk, i32 noundef 391176) #8, !dbg !1009
  call void @mayo_secure_clear(ptr noundef nonnull %Ox, i32 noundef 108) #8, !dbg !1010
  call void @mayo_secure_clear(ptr noundef nonnull %tmp, i32 noundef 113) #8, !dbg !1011
  call void @mayo_secure_clear(ptr noundef nonnull %Mtmp, i32 noundef 6160) #8, !dbg !1012
  ret i32 %ret.0, !dbg !1013
}

; Function Attrs: nounwind
define internal fastcc void @compute_M_and_VPV(ptr noundef %p, ptr noundef %Vdec, ptr noundef %L, ptr noundef %P1, ptr noundef %VL, ptr noundef %VP1V) unnamed_addr #0 !dbg !1014 {
entry:
  %Pv = alloca [8316 x i64], align 8
    #dbg_value(ptr %p, !1017, !DIExpression(), !1018)
    #dbg_value(ptr %Vdec, !1019, !DIExpression(), !1018)
    #dbg_value(ptr %L, !1020, !DIExpression(), !1018)
    #dbg_value(ptr %P1, !1021, !DIExpression(), !1018)
    #dbg_value(ptr %VL, !1022, !DIExpression(), !1018)
    #dbg_value(ptr %VP1V, !1023, !DIExpression(), !1018)
    #dbg_value(i32 11, !1024, !DIExpression(), !1018)
    #dbg_value(i32 108, !1025, !DIExpression(), !1018)
    #dbg_value(i32 10, !1026, !DIExpression(), !1018)
  call fastcc void @mul_add_mat_x_m_mat(i32 noundef 7, ptr noundef %Vdec, ptr noundef %L, ptr noundef %VL, i32 noundef 11, i32 noundef 108, i32 noundef 10) #6, !dbg !1027
    #dbg_declare(ptr %Pv, !1028, !DIExpression(), !1032)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(66528) %Pv, i8 0, i32 66528, i1 false), !dbg !1032
  call fastcc void @P1_times_Vt(ptr noundef %p, ptr noundef %P1, ptr noundef %Vdec, ptr noundef nonnull %Pv) #6, !dbg !1033
  call fastcc void @mul_add_mat_x_m_mat(i32 noundef 7, ptr noundef %Vdec, ptr noundef nonnull %Pv, ptr noundef %VP1V, i32 noundef 11, i32 noundef 108, i32 noundef 11) #6, !dbg !1034
  ret void, !dbg !1035
}

; Function Attrs: nounwind
define internal fastcc void @compute_rhs(ptr noundef %p, ptr noundef %vPv, ptr noundef %t, ptr noundef %y) unnamed_addr #0 !dbg !1036 {
entry:
  %temp = alloca [7 x i64], align 8
    #dbg_value(ptr %p, !1039, !DIExpression(), !1040)
    #dbg_value(ptr %vPv, !1041, !DIExpression(), !1040)
    #dbg_value(ptr %t, !1042, !DIExpression(), !1040)
    #dbg_value(ptr %y, !1043, !DIExpression(), !1040)
    #dbg_value(i32 44, !1044, !DIExpression(), !1040)
    #dbg_value(i32 7, !1046, !DIExpression(), !1040)
    #dbg_value(i64 1, !1047, !DIExpression(), !1050)
    #dbg_value(i64 281474976710656, !1047, !DIExpression(), !1050)
    #dbg_value(i64 281474976710655, !1047, !DIExpression(), !1050)
    #dbg_value(i32 0, !1051, !DIExpression(), !1053)
  br label %for.cond, !dbg !1054

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1055
    #dbg_value(i32 %i.0, !1051, !DIExpression(), !1053)
  %exitcond = icmp ne i32 %i.0, 121, !dbg !1056
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1058

for.body:                                         ; preds = %for.cond
  %.idx6 = mul nuw nsw i32 %i.0, 56, !dbg !1059
  %0 = getelementptr inbounds nuw i8, ptr %vPv, i32 %.idx6, !dbg !1059
  %arrayidx = getelementptr inbounds nuw i8, ptr %0, i32 48, !dbg !1059
  %1 = load i64, ptr %arrayidx, align 8, !dbg !1061
  %and = and i64 %1, 281474976710655, !dbg !1061
  store i64 %and, ptr %arrayidx, align 8, !dbg !1061
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1062
    #dbg_value(i32 %inc, !1051, !DIExpression(), !1053)
  br label %for.cond, !dbg !1063, !llvm.loop !1064

for.end:                                          ; preds = %for.cond
    #dbg_declare(ptr %temp, !1066, !DIExpression(), !1067)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %temp, i8 0, i32 56, i1 false), !dbg !1067
    #dbg_value(ptr %temp, !1068, !DIExpression(), !1040)
    #dbg_value(i32 10, !1069, !DIExpression(), !1071)
  br label %for.cond3, !dbg !1072

for.cond3:                                        ; preds = %for.inc77, %for.end
  %i2.0 = phi i32 [ 10, %for.end ], [ %dec78, %for.inc77 ], !dbg !1073
    #dbg_value(i32 %i2.0, !1069, !DIExpression(), !1071)
  %cmp4 = icmp sgt i32 %i2.0, -1, !dbg !1074
  br i1 %cmp4, label %for.cond6.preheader, label %for.cond81.preheader, !dbg !1076

for.cond6.preheader:                              ; preds = %for.cond3
  br label %for.cond6, !dbg !1077

for.cond81.preheader:                             ; preds = %for.cond3
  br label %for.cond81, !dbg !1080

for.cond6:                                        ; preds = %for.cond6.preheader, %for.inc74
  %j.0 = phi i32 [ %inc75, %for.inc74 ], [ %i2.0, %for.cond6.preheader ], !dbg !1082
    #dbg_value(i32 %j.0, !1083, !DIExpression(), !1084)
  %exitcond9 = icmp ne i32 %j.0, 11, !dbg !1085
  br i1 %exitcond9, label %for.body8, label %for.inc77, !dbg !1077

for.body8:                                        ; preds = %for.cond6
  %arrayidx9 = getelementptr inbounds nuw i8, ptr %temp, i32 48, !dbg !1087
  %2 = load i64, ptr %arrayidx9, align 8, !dbg !1087
  %shr = lshr i64 %2, 44, !dbg !1089
  %3 = trunc i64 %shr to i8, !dbg !1090
    #dbg_value(i8 %conv, !1091, !DIExpression(), !1092)
  %arrayidx10 = getelementptr inbounds nuw i8, ptr %temp, i32 48, !dbg !1093
  %shl11 = shl i64 %2, 4, !dbg !1094
  store i64 %shl11, ptr %arrayidx10, align 8, !dbg !1094
    #dbg_value(i32 5, !1095, !DIExpression(), !1097)
  br label %for.cond12, !dbg !1098

for.cond12:                                       ; preds = %for.body15, %for.body8
  %k.0 = phi i32 [ 5, %for.body8 ], [ %dec, %for.body15 ], !dbg !1099
    #dbg_value(i32 %k.0, !1095, !DIExpression(), !1097)
  %cmp13 = icmp sgt i32 %k.0, -1, !dbg !1100
  br i1 %cmp13, label %for.body15, label %for.cond24.preheader, !dbg !1102

for.cond24.preheader:                             ; preds = %for.cond12
  %conv = and i8 %3, 15, !dbg !1090
  br label %for.cond24, !dbg !1103

for.body15:                                       ; preds = %for.cond12
  %arrayidx16 = getelementptr inbounds nuw [7 x i64], ptr %temp, i32 0, i32 %k.0, !dbg !1105
  %4 = load i64, ptr %arrayidx16, align 8, !dbg !1105
  %shr17 = lshr i64 %4, 60, !dbg !1107
  %add18 = add nuw nsw i32 %k.0, 1, !dbg !1108
  %arrayidx19 = getelementptr inbounds nuw [7 x i64], ptr %temp, i32 0, i32 %add18, !dbg !1109
  %5 = load i64, ptr %arrayidx19, align 8, !dbg !1110
  %xor = xor i64 %5, %shr17, !dbg !1110
  store i64 %xor, ptr %arrayidx19, align 8, !dbg !1110
  %arrayidx20 = getelementptr inbounds nuw [7 x i64], ptr %temp, i32 0, i32 %k.0, !dbg !1111
  %6 = load i64, ptr %arrayidx20, align 8, !dbg !1112
  %shl21 = shl i64 %6, 4, !dbg !1112
  store i64 %shl21, ptr %arrayidx20, align 8, !dbg !1112
  %dec = add nsw i32 %k.0, -1, !dbg !1113
    #dbg_value(i32 %dec, !1095, !DIExpression(), !1097)
  br label %for.cond12, !dbg !1114, !llvm.loop !1115

for.cond24:                                       ; preds = %for.cond24.preheader, %for.inc46
  %jj.0 = phi i32 [ %inc47, %for.inc46 ], [ 0, %for.cond24.preheader ], !dbg !1117
    #dbg_value(i32 %jj.0, !1118, !DIExpression(), !1119)
  %exitcond7 = icmp ne i32 %jj.0, 4, !dbg !1120
  br i1 %exitcond7, label %for.body27, label %for.cond50.preheader, !dbg !1103

for.cond50.preheader:                             ; preds = %for.cond24
  br label %for.cond50, !dbg !1122

for.body27:                                       ; preds = %for.cond24
  %rem28 = and i32 %jj.0, 1, !dbg !1124
  %cmp29 = icmp eq i32 %rem28, 0, !dbg !1127
  br i1 %cmp29, label %if.then, label %if.else, !dbg !1127

if.then:                                          ; preds = %for.body27
  %arrayidx31 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %jj.0, !dbg !1128
  %7 = load i8, ptr %arrayidx31, align 1, !dbg !1128
  %call = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %conv, i8 noundef zeroext %7) #6, !dbg !1130
  %div = lshr exact i32 %jj.0, 1, !dbg !1131
  %arrayidx33 = getelementptr inbounds nuw i8, ptr %temp, i32 %div, !dbg !1132
  %8 = load i8, ptr %arrayidx33, align 1, !dbg !1133
  %xor355 = xor i8 %8, %call, !dbg !1133
  store i8 %xor355, ptr %arrayidx33, align 1, !dbg !1133
  br label %for.inc46, !dbg !1134

if.else:                                          ; preds = %for.body27
  %arrayidx37 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %jj.0, !dbg !1135
  %9 = load i8, ptr %arrayidx37, align 1, !dbg !1135
  %call38 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %conv, i8 noundef zeroext %9) #6, !dbg !1137
  %shl40 = shl nuw i8 %call38, 4, !dbg !1138
  %div414 = lshr i32 %jj.0, 1, !dbg !1139
  %arrayidx42 = getelementptr inbounds nuw i8, ptr %temp, i32 %div414, !dbg !1140
  %10 = load i8, ptr %arrayidx42, align 1, !dbg !1141
  %xor44 = xor i8 %shl40, %10, !dbg !1141
  store i8 %xor44, ptr %arrayidx42, align 1, !dbg !1141
  br label %for.inc46

for.inc46:                                        ; preds = %if.then, %if.else
  %inc47 = add nuw nsw i32 %jj.0, 1, !dbg !1142
    #dbg_value(i32 %inc47, !1118, !DIExpression(), !1119)
  br label %for.cond24, !dbg !1143, !llvm.loop !1144

for.cond50:                                       ; preds = %for.cond50.preheader, %for.body53
  %k49.0 = phi i32 [ %inc72, %for.body53 ], [ 0, %for.cond50.preheader ], !dbg !1146
    #dbg_value(i32 %k49.0, !1147, !DIExpression(), !1148)
  %exitcond8 = icmp ne i32 %k49.0, 7, !dbg !1149
  br i1 %exitcond8, label %for.body53, label %for.inc74, !dbg !1122

for.body53:                                       ; preds = %for.cond50
  %mul54 = mul nuw nsw i32 %i2.0, 11, !dbg !1151
  %add55 = add nuw nsw i32 %mul54, %j.0, !dbg !1153
  %.idx = mul nsw i32 %add55, 56, !dbg !1154
  %11 = getelementptr i8, ptr %vPv, i32 %.idx, !dbg !1154
  %arrayidx58 = getelementptr i64, ptr %11, i32 %k49.0, !dbg !1154
  %12 = load i64, ptr %arrayidx58, align 8, !dbg !1154
  %cmp59.not = icmp eq i32 %i2.0, %j.0, !dbg !1155
  %mul62 = mul nuw nsw i32 %j.0, 11, !dbg !1156
  %add63 = add nuw nsw i32 %mul62, %i2.0, !dbg !1157
  %.idx3 = mul nsw i32 %add63, 56, !dbg !1158
  %13 = getelementptr i8, ptr %vPv, i32 %.idx3, !dbg !1158
  %arrayidx66 = getelementptr i64, ptr %13, i32 %k49.0, !dbg !1158
  %14 = load i64, ptr %arrayidx66, align 8, !dbg !1158
  %mul67 = select i1 %cmp59.not, i64 0, i64 %14, !dbg !1159
  %xor68 = xor i64 %12, %mul67, !dbg !1160
  %arrayidx69 = getelementptr inbounds nuw [7 x i64], ptr %temp, i32 0, i32 %k49.0, !dbg !1161
  %15 = load i64, ptr %arrayidx69, align 8, !dbg !1162
  %xor70 = xor i64 %15, %xor68, !dbg !1162
  store i64 %xor70, ptr %arrayidx69, align 8, !dbg !1162
  %inc72 = add nuw nsw i32 %k49.0, 1, !dbg !1163
    #dbg_value(i32 %inc72, !1147, !DIExpression(), !1148)
  br label %for.cond50, !dbg !1164, !llvm.loop !1165

for.inc74:                                        ; preds = %for.cond50
  %inc75 = add nuw nsw i32 %j.0, 1, !dbg !1167
    #dbg_value(i32 %inc75, !1083, !DIExpression(), !1084)
  br label %for.cond6, !dbg !1168, !llvm.loop !1169

for.inc77:                                        ; preds = %for.cond6
  %dec78 = add nsw i32 %i2.0, -1, !dbg !1171
    #dbg_value(i32 %dec78, !1069, !DIExpression(), !1071)
  br label %for.cond3, !dbg !1172, !llvm.loop !1173

for.cond81:                                       ; preds = %for.cond81.preheader, %for.body84
  %i80.0 = phi i32 [ %add106, %for.body84 ], [ 0, %for.cond81.preheader ], !dbg !1175
    #dbg_value(i32 %i80.0, !1176, !DIExpression(), !1177)
  %cmp82 = icmp samesign ult i32 %i80.0, 108, !dbg !1178
  br i1 %cmp82, label %for.body84, label %for.end107, !dbg !1080

for.body84:                                       ; preds = %for.cond81
  %arrayidx85 = getelementptr inbounds nuw i8, ptr %t, i32 %i80.0, !dbg !1180
  %16 = load i8, ptr %arrayidx85, align 1, !dbg !1180
  %div87 = lshr exact i32 %i80.0, 1, !dbg !1182
  %arrayidx88 = getelementptr inbounds nuw i8, ptr %temp, i32 %div87, !dbg !1183
  %17 = load i8, ptr %arrayidx88, align 1, !dbg !1183
  %18 = and i8 %17, 15, !dbg !1184
  %xor911 = xor i8 %16, %18, !dbg !1185
  %arrayidx93 = getelementptr inbounds nuw i8, ptr %y, i32 %i80.0, !dbg !1186
  store i8 %xor911, ptr %arrayidx93, align 1, !dbg !1187
  %add94 = or disjoint i32 %i80.0, 1, !dbg !1188
  %arrayidx95 = getelementptr inbounds nuw i8, ptr %t, i32 %add94, !dbg !1189
  %19 = load i8, ptr %arrayidx95, align 1, !dbg !1189
  %div97 = lshr exact i32 %i80.0, 1, !dbg !1190
  %arrayidx98 = getelementptr inbounds nuw i8, ptr %temp, i32 %div97, !dbg !1191
  %20 = load i8, ptr %arrayidx98, align 1, !dbg !1191
  %21 = lshr i8 %20, 4, !dbg !1192
  %xor1012 = xor i8 %19, %21, !dbg !1193
  %add103 = or disjoint i32 %i80.0, 1, !dbg !1194
  %arrayidx104 = getelementptr inbounds nuw i8, ptr %y, i32 %add103, !dbg !1195
  store i8 %xor1012, ptr %arrayidx104, align 1, !dbg !1196
  %add106 = add nuw nsw i32 %i80.0, 2, !dbg !1197
    #dbg_value(i32 %add106, !1176, !DIExpression(), !1177)
  br label %for.cond81, !dbg !1198, !llvm.loop !1199

for.end107:                                       ; preds = %for.cond81
  ret void, !dbg !1201
}

; Function Attrs: nounwind
define internal fastcc void @compute_A(ptr noundef %p, ptr noundef %VtL, ptr noundef %A_out) unnamed_addr #0 !dbg !1202 {
entry:
  %A = alloca [1568 x i64], align 8
  %tab = alloca [16 x i8], align 1
    #dbg_value(ptr %p, !1205, !DIExpression(), !1206)
    #dbg_value(ptr %VtL, !1207, !DIExpression(), !1206)
    #dbg_value(ptr %A_out, !1208, !DIExpression(), !1206)
    #dbg_value(i32 0, !1209, !DIExpression(), !1206)
    #dbg_value(i32 0, !1210, !DIExpression(), !1206)
    #dbg_value(i32 7, !1211, !DIExpression(), !1206)
    #dbg_declare(ptr %A, !1212, !DIExpression(), !1216)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(12544) %A, i8 0, i32 12544, i1 false), !dbg !1216
    #dbg_value(i32 112, !1217, !DIExpression(), !1206)
    #dbg_value(i64 1, !1218, !DIExpression(), !1221)
    #dbg_value(i64 281474976710656, !1218, !DIExpression(), !1221)
    #dbg_value(i64 281474976710655, !1218, !DIExpression(), !1221)
    #dbg_value(i32 0, !1222, !DIExpression(), !1224)
  br label %for.cond, !dbg !1225

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1226
    #dbg_value(i32 %i.0, !1222, !DIExpression(), !1224)
  %exitcond = icmp ne i32 %i.0, 110, !dbg !1227
  br i1 %exitcond, label %for.body, label %for.cond3.preheader, !dbg !1229

for.cond3.preheader:                              ; preds = %for.cond
  br label %for.cond3, !dbg !1230

for.body:                                         ; preds = %for.cond
  %.idx = mul nuw nsw i32 %i.0, 56, !dbg !1232
  %0 = getelementptr inbounds nuw i8, ptr %VtL, i32 %.idx, !dbg !1232
  %arrayidx = getelementptr inbounds nuw i8, ptr %0, i32 48, !dbg !1232
  %1 = load i64, ptr %arrayidx, align 8, !dbg !1234
  %and = and i64 %1, 281474976710655, !dbg !1234
  store i64 %and, ptr %arrayidx, align 8, !dbg !1234
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1235
    #dbg_value(i32 %inc, !1222, !DIExpression(), !1224)
  br label %for.cond, !dbg !1236, !llvm.loop !1237

for.cond3:                                        ; preds = %for.cond3.preheader, %for.inc103
  %i2.0 = phi i32 [ %inc104, %for.inc103 ], [ 0, %for.cond3.preheader ], !dbg !1239
  %words_to_shift.0 = phi i32 [ %words_to_shift.1.lcssa, %for.inc103 ], [ 0, %for.cond3.preheader ], !dbg !1240
  %bits_to_shift.0 = phi i32 [ %bits_to_shift.1.lcssa, %for.inc103 ], [ 0, %for.cond3.preheader ], !dbg !1241
    #dbg_value(i32 %bits_to_shift.0, !1209, !DIExpression(), !1206)
    #dbg_value(i32 %words_to_shift.0, !1210, !DIExpression(), !1206)
    #dbg_value(i32 %i2.0, !1242, !DIExpression(), !1243)
  %exitcond8 = icmp ne i32 %i2.0, 11, !dbg !1244
  br i1 %exitcond8, label %for.cond6.preheader, label %for.cond107.preheader, !dbg !1230

for.cond6.preheader:                              ; preds = %for.cond3
  br label %for.cond6, !dbg !1246

for.cond107.preheader:                            ; preds = %for.cond3
  br label %for.cond107, !dbg !1249

for.cond6:                                        ; preds = %for.cond6.preheader, %if.end95
  %j.0 = phi i32 [ %dec, %if.end95 ], [ 10, %for.cond6.preheader ], !dbg !1251
  %words_to_shift.1 = phi i32 [ %spec.select, %if.end95 ], [ %words_to_shift.0, %for.cond6.preheader ], !dbg !1206
  %bits_to_shift.1 = phi i32 [ %spec.select3, %if.end95 ], [ %bits_to_shift.0, %for.cond6.preheader ], !dbg !1206
    #dbg_value(i32 %bits_to_shift.1, !1209, !DIExpression(), !1206)
    #dbg_value(i32 %words_to_shift.1, !1210, !DIExpression(), !1206)
    #dbg_value(i32 %j.0, !1252, !DIExpression(), !1253)
  %cmp7.not = icmp slt i32 %j.0, %i2.0, !dbg !1254
  br i1 %cmp7.not, label %for.inc103, label %for.body8, !dbg !1246

for.body8:                                        ; preds = %for.cond6
  %add.ptr.idx = mul nsw i32 %j.0, 560, !dbg !1256
  %add.ptr = getelementptr inbounds i8, ptr %VtL, i32 %add.ptr.idx, !dbg !1256
    #dbg_value(ptr %add.ptr, !1258, !DIExpression(), !1206)
    #dbg_value(i32 0, !1259, !DIExpression(), !1261)
  br label %for.cond11, !dbg !1262

for.cond11:                                       ; preds = %for.inc44, %for.body8
  %c.0 = phi i32 [ 0, %for.body8 ], [ %inc45, %for.inc44 ], !dbg !1263
    #dbg_value(i32 %c.0, !1259, !DIExpression(), !1261)
  %exitcond5 = icmp ne i32 %c.0, 10, !dbg !1264
  br i1 %exitcond5, label %for.cond14.preheader, label %for.end46, !dbg !1266

for.cond14.preheader:                             ; preds = %for.cond11
  br label %for.cond14, !dbg !1267

for.cond14:                                       ; preds = %for.cond14.preheader, %for.inc41
  %k.0 = phi i32 [ %inc42, %for.inc41 ], [ 0, %for.cond14.preheader ], !dbg !1270
    #dbg_value(i32 %k.0, !1271, !DIExpression(), !1272)
  %exitcond4 = icmp ne i32 %k.0, 7, !dbg !1273
  br i1 %exitcond4, label %for.body16, label %for.inc44, !dbg !1267

for.body16:                                       ; preds = %for.cond14
  %2 = getelementptr inbounds nuw i64, ptr %add.ptr, i32 %k.0, !dbg !1275
  %arrayidx19.idx = mul nuw nsw i32 %c.0, 56, !dbg !1275
  %arrayidx19 = getelementptr inbounds nuw i8, ptr %2, i32 %arrayidx19.idx, !dbg !1275
  %3 = load i64, ptr %arrayidx19, align 8, !dbg !1275
  %sh_prom = zext nneg i32 %bits_to_shift.1 to i64, !dbg !1277
  %shl20 = shl i64 %3, %sh_prom, !dbg !1277
  %mul21 = mul nuw nsw i32 %i2.0, 10, !dbg !1278
  %add22 = add nuw nsw i32 %mul21, %c.0, !dbg !1279
  %add23 = add nsw i32 %k.0, %words_to_shift.1, !dbg !1280
  %mul24 = mul i32 %add23, 112, !dbg !1281
  %add25 = add i32 %add22, %mul24, !dbg !1282
  %arrayidx26 = getelementptr inbounds nuw [1568 x i64], ptr %A, i32 0, i32 %add25, !dbg !1283
  %4 = load i64, ptr %arrayidx26, align 8, !dbg !1284
  %xor = xor i64 %4, %shl20, !dbg !1284
  store i64 %xor, ptr %arrayidx26, align 8, !dbg !1284
  %cmp27 = icmp sgt i32 %bits_to_shift.1, 0, !dbg !1285
  br i1 %cmp27, label %if.then, label %for.inc41, !dbg !1285

if.then:                                          ; preds = %for.body16
  %5 = getelementptr inbounds nuw i64, ptr %add.ptr, i32 %k.0, !dbg !1287
  %arrayidx30.idx = mul nuw nsw i32 %c.0, 56, !dbg !1287
  %arrayidx30 = getelementptr inbounds nuw i8, ptr %5, i32 %arrayidx30.idx, !dbg !1287
  %6 = load i64, ptr %arrayidx30, align 8, !dbg !1287
  %sub31 = sub nsw i32 64, %bits_to_shift.1, !dbg !1289
  %sh_prom32 = zext nneg i32 %sub31 to i64, !dbg !1290
  %shr = lshr i64 %6, %sh_prom32, !dbg !1290
  %mul33 = mul nuw nsw i32 %i2.0, 10, !dbg !1291
  %add34 = add nuw nsw i32 %mul33, %c.0, !dbg !1292
  %add35 = add nsw i32 %k.0, %words_to_shift.1, !dbg !1293
  %7 = mul i32 %add35, 112, !dbg !1294
  %mul37 = add i32 %7, 112, !dbg !1294
  %add38 = add i32 %add34, %mul37, !dbg !1295
  %arrayidx39 = getelementptr inbounds nuw [1568 x i64], ptr %A, i32 0, i32 %add38, !dbg !1296
  %8 = load i64, ptr %arrayidx39, align 8, !dbg !1297
  %xor40 = xor i64 %8, %shr, !dbg !1297
  store i64 %xor40, ptr %arrayidx39, align 8, !dbg !1297
  br label %for.inc41, !dbg !1298

for.inc41:                                        ; preds = %for.body16, %if.then
  %inc42 = add nuw nsw i32 %k.0, 1, !dbg !1299
    #dbg_value(i32 %inc42, !1271, !DIExpression(), !1272)
  br label %for.cond14, !dbg !1300, !llvm.loop !1301

for.inc44:                                        ; preds = %for.cond14
  %inc45 = add nuw nsw i32 %c.0, 1, !dbg !1303
    #dbg_value(i32 %inc45, !1259, !DIExpression(), !1261)
  br label %for.cond11, !dbg !1304, !llvm.loop !1305

for.end46:                                        ; preds = %for.cond11
  %cmp47.not = icmp eq i32 %i2.0, %j.0, !dbg !1307
  br i1 %cmp47.not, label %if.end95, label %if.then48, !dbg !1307

if.then48:                                        ; preds = %for.end46
  %add.ptr51.idx = mul nuw nsw i32 %i2.0, 560, !dbg !1309
  %add.ptr51 = getelementptr inbounds nuw i8, ptr %VtL, i32 %add.ptr51.idx, !dbg !1309
    #dbg_value(ptr %add.ptr51, !1311, !DIExpression(), !1206)
    #dbg_value(i32 0, !1312, !DIExpression(), !1314)
  br label %for.cond53, !dbg !1315

for.cond53:                                       ; preds = %for.inc92, %if.then48
  %c52.0 = phi i32 [ 0, %if.then48 ], [ %inc93, %for.inc92 ], !dbg !1316
    #dbg_value(i32 %c52.0, !1312, !DIExpression(), !1314)
  %exitcond7 = icmp ne i32 %c52.0, 10, !dbg !1317
  br i1 %exitcond7, label %for.cond57.preheader, label %if.end95.loopexit, !dbg !1319

for.cond57.preheader:                             ; preds = %for.cond53
  br label %for.cond57, !dbg !1320

for.cond57:                                       ; preds = %for.cond57.preheader, %for.inc89
  %k56.0 = phi i32 [ %inc90, %for.inc89 ], [ 0, %for.cond57.preheader ], !dbg !1323
    #dbg_value(i32 %k56.0, !1324, !DIExpression(), !1325)
  %exitcond6 = icmp ne i32 %k56.0, 7, !dbg !1326
  br i1 %exitcond6, label %for.body59, label %for.inc92, !dbg !1320

for.body59:                                       ; preds = %for.cond57
  %9 = getelementptr inbounds nuw i64, ptr %add.ptr51, i32 %k56.0, !dbg !1328
  %arrayidx62.idx = mul nuw nsw i32 %c52.0, 56, !dbg !1328
  %arrayidx62 = getelementptr inbounds nuw i8, ptr %9, i32 %arrayidx62.idx, !dbg !1328
  %10 = load i64, ptr %arrayidx62, align 8, !dbg !1328
  %sh_prom63 = zext nneg i32 %bits_to_shift.1 to i64, !dbg !1330
  %shl64 = shl i64 %10, %sh_prom63, !dbg !1330
  %mul65 = mul nsw i32 %j.0, 10, !dbg !1331
  %add66 = add nsw i32 %mul65, %c52.0, !dbg !1332
  %add67 = add nsw i32 %k56.0, %words_to_shift.1, !dbg !1333
  %mul68 = mul i32 %add67, 112, !dbg !1334
  %add69 = add i32 %add66, %mul68, !dbg !1335
  %arrayidx70 = getelementptr inbounds nuw [1568 x i64], ptr %A, i32 0, i32 %add69, !dbg !1336
  %11 = load i64, ptr %arrayidx70, align 8, !dbg !1337
  %xor71 = xor i64 %11, %shl64, !dbg !1337
  store i64 %xor71, ptr %arrayidx70, align 8, !dbg !1337
  %cmp72 = icmp sgt i32 %bits_to_shift.1, 0, !dbg !1338
  br i1 %cmp72, label %if.then73, label %for.inc89, !dbg !1338

if.then73:                                        ; preds = %for.body59
  %12 = getelementptr inbounds nuw i64, ptr %add.ptr51, i32 %k56.0, !dbg !1340
  %arrayidx76.idx = mul nuw nsw i32 %c52.0, 56, !dbg !1340
  %arrayidx76 = getelementptr inbounds nuw i8, ptr %12, i32 %arrayidx76.idx, !dbg !1340
  %13 = load i64, ptr %arrayidx76, align 8, !dbg !1340
  %sub77 = sub nsw i32 64, %bits_to_shift.1, !dbg !1342
  %sh_prom78 = zext nneg i32 %sub77 to i64, !dbg !1343
  %shr79 = lshr i64 %13, %sh_prom78, !dbg !1343
  %mul80 = mul nsw i32 %j.0, 10, !dbg !1344
  %add81 = add nsw i32 %mul80, %c52.0, !dbg !1345
  %add82 = add nsw i32 %k56.0, %words_to_shift.1, !dbg !1346
  %14 = mul i32 %add82, 112, !dbg !1347
  %mul84 = add i32 %14, 112, !dbg !1347
  %add85 = add i32 %add81, %mul84, !dbg !1348
  %arrayidx86 = getelementptr inbounds nuw [1568 x i64], ptr %A, i32 0, i32 %add85, !dbg !1349
  %15 = load i64, ptr %arrayidx86, align 8, !dbg !1350
  %xor87 = xor i64 %15, %shr79, !dbg !1350
  store i64 %xor87, ptr %arrayidx86, align 8, !dbg !1350
  br label %for.inc89, !dbg !1351

for.inc89:                                        ; preds = %for.body59, %if.then73
  %inc90 = add nuw nsw i32 %k56.0, 1, !dbg !1352
    #dbg_value(i32 %inc90, !1324, !DIExpression(), !1325)
  br label %for.cond57, !dbg !1353, !llvm.loop !1354

for.inc92:                                        ; preds = %for.cond57
  %inc93 = add nuw nsw i32 %c52.0, 1, !dbg !1356
    #dbg_value(i32 %inc93, !1312, !DIExpression(), !1314)
  br label %for.cond53, !dbg !1357, !llvm.loop !1358

if.end95.loopexit:                                ; preds = %for.cond53
  br label %if.end95, !dbg !1360

if.end95:                                         ; preds = %if.end95.loopexit, %for.end46
  %add96 = add nsw i32 %bits_to_shift.1, 4, !dbg !1360
    #dbg_value(i32 %add96, !1209, !DIExpression(), !1206)
  %cmp97 = icmp eq i32 %add96, 64, !dbg !1361
  %inc99 = zext i1 %cmp97 to i32, !dbg !1361
  %spec.select = add nsw i32 %words_to_shift.1, %inc99, !dbg !1361
  %spec.select3 = select i1 %cmp97, i32 0, i32 %add96, !dbg !1361
    #dbg_value(i32 %spec.select3, !1209, !DIExpression(), !1206)
    #dbg_value(i32 %spec.select, !1210, !DIExpression(), !1206)
  %dec = add nsw i32 %j.0, -1, !dbg !1363
    #dbg_value(i32 %dec, !1252, !DIExpression(), !1253)
  br label %for.cond6, !dbg !1364, !llvm.loop !1365

for.inc103:                                       ; preds = %for.cond6
  %words_to_shift.1.lcssa = phi i32 [ %words_to_shift.1, %for.cond6 ], !dbg !1206
  %bits_to_shift.1.lcssa = phi i32 [ %bits_to_shift.1, %for.cond6 ], !dbg !1206
  %inc104 = add nuw nsw i32 %i2.0, 1, !dbg !1367
    #dbg_value(i32 %inc104, !1242, !DIExpression(), !1243)
  br label %for.cond3, !dbg !1368, !llvm.loop !1369

for.cond107:                                      ; preds = %for.cond107.preheader, %for.body110
  %c106.0 = phi i32 [ %add113, %for.body110 ], [ 0, %for.cond107.preheader ], !dbg !1371
    #dbg_value(i32 %c106.0, !1372, !DIExpression(), !1373)
  %cmp109 = icmp samesign ult i32 %c106.0, 1232, !dbg !1374
  br i1 %cmp109, label %for.body110, label %for.end114, !dbg !1249

for.body110:                                      ; preds = %for.cond107
  %add.ptr111 = getelementptr inbounds nuw i64, ptr %A, i32 %c106.0, !dbg !1376
  call fastcc void @transpose_16x16_nibbles(ptr noundef nonnull %add.ptr111) #6, !dbg !1378
  %add113 = add nuw nsw i32 %c106.0, 16, !dbg !1379
    #dbg_value(i32 %add113, !1372, !DIExpression(), !1373)
  br label %for.cond107, !dbg !1380, !llvm.loop !1381

for.end114:                                       ; preds = %for.cond107
    #dbg_declare(ptr %tab, !1383, !DIExpression(), !1387)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %tab, i8 0, i32 16, i1 false), !dbg !1387
    #dbg_value(i32 0, !1388, !DIExpression(), !1390)
  br label %for.cond116, !dbg !1391

for.cond116:                                      ; preds = %for.body118, %for.end114
  %i115.0 = phi i32 [ 0, %for.end114 ], [ %inc138, %for.body118 ], !dbg !1392
    #dbg_value(i32 %i115.0, !1388, !DIExpression(), !1390)
  %exitcond9 = icmp ne i32 %i115.0, 4, !dbg !1393
  br i1 %exitcond9, label %for.body118, label %for.cond141.preheader, !dbg !1395

for.cond141.preheader:                            ; preds = %for.cond116
  br label %for.cond141, !dbg !1396

for.body118:                                      ; preds = %for.cond116
  %arrayidx119 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %i115.0, !dbg !1398
  %16 = load i8, ptr %arrayidx119, align 1, !dbg !1398
  %call = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %16, i8 noundef zeroext 1) #6, !dbg !1400
  %mul120 = shl nuw nsw i32 %i115.0, 2, !dbg !1401
  %arrayidx121 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %mul120, !dbg !1402
  store i8 %call, ptr %arrayidx121, align 1, !dbg !1403
  %call123 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %16, i8 noundef zeroext 2) #6, !dbg !1404
  %mul124 = shl nuw nsw i32 %i115.0, 2, !dbg !1405
  %add125 = or disjoint i32 %mul124, 1, !dbg !1406
  %arrayidx126 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add125, !dbg !1407
  store i8 %call123, ptr %arrayidx126, align 1, !dbg !1408
  %arrayidx127 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %i115.0, !dbg !1409
  %17 = load i8, ptr %arrayidx127, align 1, !dbg !1409
  %call128 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %17, i8 noundef zeroext 4) #6, !dbg !1410
  %mul129 = shl nuw nsw i32 %i115.0, 2, !dbg !1411
  %add130 = or disjoint i32 %mul129, 2, !dbg !1412
  %arrayidx131 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add130, !dbg !1413
  store i8 %call128, ptr %arrayidx131, align 1, !dbg !1414
  %arrayidx132 = getelementptr inbounds nuw [4 x i8], ptr @f_tail, i32 0, i32 %i115.0, !dbg !1415
  %18 = load i8, ptr %arrayidx132, align 1, !dbg !1415
  %call133 = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %18, i8 noundef zeroext 8) #6, !dbg !1416
  %mul134 = shl nuw nsw i32 %i115.0, 2, !dbg !1417
  %add135 = or disjoint i32 %mul134, 3, !dbg !1418
  %arrayidx136 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add135, !dbg !1419
  store i8 %call133, ptr %arrayidx136, align 1, !dbg !1420
  %inc138 = add nuw nsw i32 %i115.0, 1, !dbg !1421
    #dbg_value(i32 %inc138, !1388, !DIExpression(), !1390)
  br label %for.cond116, !dbg !1422, !llvm.loop !1423

for.cond141:                                      ; preds = %for.cond141.preheader, %for.inc203
  %c140.0 = phi i32 [ %add204, %for.inc203 ], [ 0, %for.cond141.preheader ], !dbg !1425
    #dbg_value(i32 %c140.0, !1426, !DIExpression(), !1427)
  %cmp142 = icmp samesign ult i32 %c140.0, 112, !dbg !1428
  br i1 %cmp142, label %for.cond144.preheader, label %for.cond207.preheader, !dbg !1396

for.cond144.preheader:                            ; preds = %for.cond141
  br label %for.cond144, !dbg !1430

for.cond207.preheader:                            ; preds = %for.cond141
  br label %for.cond207, !dbg !1433

for.cond144:                                      ; preds = %for.cond144.preheader, %for.inc200
  %r.0 = phi i32 [ %inc201, %for.inc200 ], [ 108, %for.cond144.preheader ], !dbg !1435
    #dbg_value(i32 %r.0, !1436, !DIExpression(), !1437)
  %exitcond11 = icmp ne i32 %r.0, 174, !dbg !1438
  br i1 %exitcond11, label %for.body146, label %for.inc203, !dbg !1430

for.body146:                                      ; preds = %for.cond144
  %div1 = lshr i32 %r.0, 4, !dbg !1440
  %mul147 = mul nuw nsw i32 %div1, 112, !dbg !1442
  %add148 = add nuw nsw i32 %mul147, %c140.0, !dbg !1443
  %rem = and i32 %r.0, 15, !dbg !1444
  %add149 = or disjoint i32 %add148, %rem, !dbg !1445
    #dbg_value(i32 %add149, !1446, !DIExpression(), !1447)
  %arrayidx150 = getelementptr inbounds nuw [1568 x i64], ptr %A, i32 0, i32 %add149, !dbg !1448
  %19 = load i64, ptr %arrayidx150, align 8, !dbg !1448
  %and151 = and i64 %19, 1229782938247303441, !dbg !1449
    #dbg_value(i64 %and151, !1450, !DIExpression(), !1447)
  %shr153 = lshr i64 %19, 1, !dbg !1451
  %and154 = and i64 %shr153, 1229782938247303441, !dbg !1452
    #dbg_value(i64 %and154, !1453, !DIExpression(), !1447)
  %shr156 = lshr i64 %19, 2, !dbg !1454
  %and157 = and i64 %shr156, 1229782938247303441, !dbg !1455
    #dbg_value(i64 %and157, !1456, !DIExpression(), !1447)
  %arrayidx158 = getelementptr inbounds nuw [1568 x i64], ptr %A, i32 0, i32 %add149, !dbg !1457
  %20 = load i64, ptr %arrayidx158, align 8, !dbg !1457
  %shr159 = lshr i64 %20, 3, !dbg !1458
  %and160 = and i64 %shr159, 1229782938247303441, !dbg !1459
    #dbg_value(i64 %and160, !1460, !DIExpression(), !1447)
    #dbg_value(i32 0, !1461, !DIExpression(), !1463)
  br label %for.cond161, !dbg !1464

for.cond161:                                      ; preds = %for.body163, %for.body146
  %t.0 = phi i32 [ 0, %for.body146 ], [ %inc198, %for.body163 ], !dbg !1465
    #dbg_value(i32 %t.0, !1461, !DIExpression(), !1463)
  %exitcond10 = icmp ne i32 %t.0, 4, !dbg !1466
  br i1 %exitcond10, label %for.body163, label %for.inc200, !dbg !1468

for.body163:                                      ; preds = %for.cond161
  %mul164 = shl nuw nsw i32 %t.0, 2, !dbg !1469
  %arrayidx166 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %mul164, !dbg !1471
  %21 = load i8, ptr %arrayidx166, align 1, !dbg !1471
  %conv = zext i8 %21 to i64, !dbg !1471
  %mul167 = mul i64 %and151, %conv, !dbg !1472
  %mul168 = shl nuw nsw i32 %t.0, 2, !dbg !1473
  %add169 = or disjoint i32 %mul168, 1, !dbg !1474
  %arrayidx170 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add169, !dbg !1475
  %22 = load i8, ptr %arrayidx170, align 1, !dbg !1475
  %conv171 = zext i8 %22 to i64, !dbg !1475
  %mul172 = mul i64 %and154, %conv171, !dbg !1476
  %xor173 = xor i64 %mul167, %mul172, !dbg !1477
  %mul174 = shl nuw nsw i32 %t.0, 2, !dbg !1478
  %add175 = or disjoint i32 %mul174, 2, !dbg !1479
  %arrayidx176 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add175, !dbg !1480
  %23 = load i8, ptr %arrayidx176, align 1, !dbg !1480
  %conv177 = zext i8 %23 to i64, !dbg !1480
  %mul178 = mul i64 %and157, %conv177, !dbg !1481
  %xor179 = xor i64 %xor173, %mul178, !dbg !1482
  %mul180 = shl nuw nsw i32 %t.0, 2, !dbg !1483
  %add181 = or disjoint i32 %mul180, 3, !dbg !1484
  %arrayidx182 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add181, !dbg !1485
  %24 = load i8, ptr %arrayidx182, align 1, !dbg !1485
  %conv183 = zext i8 %24 to i64, !dbg !1485
  %mul184 = mul i64 %and160, %conv183, !dbg !1486
  %xor185 = xor i64 %xor179, %mul184, !dbg !1487
  %add186 = add nuw nsw i32 %r.0, %t.0, !dbg !1488
  %sub187 = add nsw i32 %add186, -108, !dbg !1489
  %div1882 = lshr i32 %sub187, 4, !dbg !1490
  %mul189 = mul i32 %div1882, 112, !dbg !1491
  %add190 = add i32 %mul189, %c140.0, !dbg !1492
  %add191 = add nuw nsw i32 %r.0, %t.0, !dbg !1493
  %sub192 = add nuw nsw i32 %add191, 4, !dbg !1494
  %rem193 = and i32 %sub192, 15, !dbg !1495
  %add194 = or disjoint i32 %add190, %rem193, !dbg !1496
  %arrayidx195 = getelementptr inbounds nuw [1568 x i64], ptr %A, i32 0, i32 %add194, !dbg !1497
  %25 = load i64, ptr %arrayidx195, align 8, !dbg !1498
  %xor196 = xor i64 %25, %xor185, !dbg !1498
  store i64 %xor196, ptr %arrayidx195, align 8, !dbg !1498
  %inc198 = add nuw nsw i32 %t.0, 1, !dbg !1499
    #dbg_value(i32 %inc198, !1461, !DIExpression(), !1463)
  br label %for.cond161, !dbg !1500, !llvm.loop !1501

for.inc200:                                       ; preds = %for.cond161
  %inc201 = add nuw nsw i32 %r.0, 1, !dbg !1503
    #dbg_value(i32 %inc201, !1436, !DIExpression(), !1437)
  br label %for.cond144, !dbg !1504, !llvm.loop !1505

for.inc203:                                       ; preds = %for.cond144
  %add204 = add nuw nsw i32 %c140.0, 16, !dbg !1507
    #dbg_value(i32 %add204, !1426, !DIExpression(), !1427)
  br label %for.cond141, !dbg !1508, !llvm.loop !1509

for.cond207:                                      ; preds = %for.cond207.preheader, %for.inc241
  %indvars.iv = phi i32 [ 108, %for.cond207.preheader ], [ %indvars.iv.next, %for.inc241 ], !dbg !1511
  %r206.0 = phi i32 [ %add242, %for.inc241 ], [ 0, %for.cond207.preheader ], !dbg !1511
    #dbg_value(i32 %r206.0, !1512, !DIExpression(), !1513)
  %cmp208 = icmp samesign ult i32 %r206.0, 108, !dbg !1514
  br i1 %cmp208, label %for.cond212.preheader, label %for.end243, !dbg !1433

for.cond212.preheader:                            ; preds = %for.cond207
  br label %for.cond212, !dbg !1516

for.cond212:                                      ; preds = %for.cond212.preheader, %for.inc238
  %c211.0 = phi i32 [ %add239, %for.inc238 ], [ 0, %for.cond212.preheader ], !dbg !1519
    #dbg_value(i32 %c211.0, !1520, !DIExpression(), !1521)
  %cmp213 = icmp samesign ult i32 %c211.0, 110, !dbg !1522
  br i1 %cmp213, label %for.cond217.preheader, label %for.inc241, !dbg !1516

for.cond217.preheader:                            ; preds = %for.cond212
  br label %for.cond217, !dbg !1524

for.cond217:                                      ; preds = %for.cond217.preheader, %for.body221
  %i216.0 = phi i32 [ %inc236, %for.body221 ], [ 0, %for.cond217.preheader ], !dbg !1527
    #dbg_value(i32 %i216.0, !1528, !DIExpression(), !1529)
  %exitcond12 = icmp ne i32 %i216.0, %indvars.iv, !dbg !1530
  br i1 %exitcond12, label %for.body221, label %for.inc238, !dbg !1524

for.body221:                                      ; preds = %for.cond217
  %div223 = mul nuw nsw i32 %r206.0, 7, !dbg !1532
  %add224 = add nuw nsw i32 %div223, %c211.0, !dbg !1534
  %add225 = add nuw nsw i32 %add224, %i216.0, !dbg !1535
  %arrayidx226 = getelementptr inbounds nuw [1568 x i64], ptr %A, i32 0, i32 %add225, !dbg !1536
  %add227 = add nuw nsw i32 %r206.0, %i216.0, !dbg !1537
  %mul228 = mul nuw nsw i32 %add227, 111, !dbg !1538
  %add.ptr229 = getelementptr inbounds nuw i8, ptr %A_out, i32 %mul228, !dbg !1539
  %add.ptr230 = getelementptr inbounds nuw i8, ptr %add.ptr229, i32 %c211.0, !dbg !1540
  %cmp232 = icmp samesign ult i32 %c211.0, 94, !dbg !1541
  %sub234 = sub nsw i32 110, %c211.0, !dbg !1541
  %cond = select i1 %cmp232, i32 16, i32 %sub234, !dbg !1541
  call fastcc void @decode(ptr noundef nonnull %arrayidx226, ptr noundef %add.ptr230, i32 noundef %cond) #6, !dbg !1542
  %inc236 = add nuw nsw i32 %i216.0, 1, !dbg !1543
    #dbg_value(i32 %inc236, !1528, !DIExpression(), !1529)
  br label %for.cond217, !dbg !1544, !llvm.loop !1545

for.inc238:                                       ; preds = %for.cond217
  %add239 = add nuw nsw i32 %c211.0, 16, !dbg !1547
    #dbg_value(i32 %add239, !1520, !DIExpression(), !1521)
  br label %for.cond212, !dbg !1548, !llvm.loop !1549

for.inc241:                                       ; preds = %for.cond212
  %add242 = add nuw nsw i32 %r206.0, 16, !dbg !1551
    #dbg_value(i32 %add242, !1512, !DIExpression(), !1513)
  %indvars.iv.next = add nsw i32 %indvars.iv, -16, !dbg !1552
  br label %for.cond207, !dbg !1552, !llvm.loop !1553

for.end243:                                       ; preds = %for.cond207
  ret void, !dbg !1555
}

declare dso_local ptr @memset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
define internal fastcc void @mat_mul(ptr noundef %a, ptr noundef %b, ptr noundef %c, i32 noundef %colrow_ab, i32 noundef %row_a, i32 noundef %col_b) unnamed_addr #0 !dbg !1556 {
entry:
    #dbg_value(ptr %a, !1559, !DIExpression(), !1560)
    #dbg_value(ptr %b, !1561, !DIExpression(), !1560)
    #dbg_value(ptr %c, !1562, !DIExpression(), !1560)
    #dbg_value(i32 %colrow_ab, !1563, !DIExpression(), !1560)
    #dbg_value(i32 %row_a, !1564, !DIExpression(), !1560)
    #dbg_value(i32 %col_b, !1565, !DIExpression(), !1560)
    #dbg_value(i32 0, !1566, !DIExpression(), !1568)
  %smax = call i32 @llvm.smax.i32(i32 %col_b, i32 0), !dbg !1569
  %smax1 = call i32 @llvm.smax.i32(i32 %row_a, i32 0), !dbg !1569
  br label %for.cond, !dbg !1569

for.cond:                                         ; preds = %for.inc4, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc5, %for.inc4 ], !dbg !1570
  %c.addr.0 = phi ptr [ %c, %entry ], [ %c.addr.1.lcssa, %for.inc4 ]
  %a.addr.0 = phi ptr [ %a, %entry ], [ %add.ptr6, %for.inc4 ]
    #dbg_value(ptr %a.addr.0, !1559, !DIExpression(), !1560)
    #dbg_value(ptr %c.addr.0, !1562, !DIExpression(), !1560)
    #dbg_value(i32 %i.0, !1566, !DIExpression(), !1568)
  %exitcond2 = icmp ne i32 %i.0, %smax1, !dbg !1571
  br i1 %exitcond2, label %for.cond1.preheader, label %for.end7, !dbg !1573

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !1574

for.cond1:                                        ; preds = %for.cond1.preheader, %for.body3
  %c.addr.1 = phi ptr [ %incdec.ptr, %for.body3 ], [ %c.addr.0, %for.cond1.preheader ]
  %j.0 = phi i32 [ %inc, %for.body3 ], [ 0, %for.cond1.preheader ], !dbg !1577
    #dbg_value(i32 %j.0, !1578, !DIExpression(), !1579)
    #dbg_value(ptr %c.addr.1, !1562, !DIExpression(), !1560)
  %exitcond = icmp ne i32 %j.0, %smax, !dbg !1580
  br i1 %exitcond, label %for.body3, label %for.inc4, !dbg !1574

for.body3:                                        ; preds = %for.cond1
  %add.ptr = getelementptr inbounds nuw i8, ptr %b, i32 %j.0, !dbg !1582
  %call = call fastcc zeroext i8 @lincomb(ptr noundef %a.addr.0, ptr noundef %add.ptr, i32 noundef %colrow_ab, i32 noundef %col_b) #6, !dbg !1584
  store i8 %call, ptr %c.addr.1, align 1, !dbg !1585
  %inc = add nuw i32 %j.0, 1, !dbg !1586
    #dbg_value(i32 %inc, !1578, !DIExpression(), !1579)
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %c.addr.1, i32 1, !dbg !1587
    #dbg_value(ptr %incdec.ptr, !1562, !DIExpression(), !1560)
  br label %for.cond1, !dbg !1588, !llvm.loop !1589

for.inc4:                                         ; preds = %for.cond1
  %c.addr.1.lcssa = phi ptr [ %c.addr.1, %for.cond1 ]
  %inc5 = add nuw i32 %i.0, 1, !dbg !1591
    #dbg_value(i32 %inc5, !1566, !DIExpression(), !1568)
  %add.ptr6 = getelementptr inbounds i8, ptr %a.addr.0, i32 %colrow_ab, !dbg !1592
    #dbg_value(ptr %add.ptr6, !1559, !DIExpression(), !1560)
  br label %for.cond, !dbg !1593, !llvm.loop !1594

for.end7:                                         ; preds = %for.cond
  ret void, !dbg !1596
}

; Function Attrs: nounwind
define internal fastcc void @mat_add(ptr noundef %a, ptr noundef %b, ptr noundef %c, i32 noundef %m, i32 noundef %n) unnamed_addr #0 !dbg !1597 {
entry:
    #dbg_value(ptr %a, !1600, !DIExpression(), !1601)
    #dbg_value(ptr %b, !1602, !DIExpression(), !1601)
    #dbg_value(ptr %c, !1603, !DIExpression(), !1601)
    #dbg_value(i32 %m, !1604, !DIExpression(), !1601)
    #dbg_value(i32 %n, !1605, !DIExpression(), !1601)
    #dbg_value(i32 0, !1606, !DIExpression(), !1608)
  %smax = call i32 @llvm.smax.i32(i32 %n, i32 0), !dbg !1609
  %smax1 = call i32 @llvm.smax.i32(i32 %m, i32 0), !dbg !1609
  br label %for.cond, !dbg !1609

for.cond:                                         ; preds = %for.inc11, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc12, %for.inc11 ], !dbg !1610
    #dbg_value(i32 %i.0, !1606, !DIExpression(), !1608)
  %exitcond2 = icmp ne i32 %i.0, %smax1, !dbg !1611
  br i1 %exitcond2, label %for.cond1.preheader, label %for.end13, !dbg !1613

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !1614

for.cond1:                                        ; preds = %for.cond1.preheader, %for.body3
  %j.0 = phi i32 [ %inc, %for.body3 ], [ 0, %for.cond1.preheader ], !dbg !1617
    #dbg_value(i32 %j.0, !1618, !DIExpression(), !1619)
  %exitcond = icmp ne i32 %j.0, %smax, !dbg !1620
  br i1 %exitcond, label %for.body3, label %for.inc11, !dbg !1614

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %i.0, %n, !dbg !1622
  %add.ptr = getelementptr inbounds i8, ptr %a, i32 %mul, !dbg !1624
  %add.ptr4 = getelementptr inbounds nuw i8, ptr %add.ptr, i32 %j.0, !dbg !1625
  %0 = load i8, ptr %add.ptr4, align 1, !dbg !1626
  %mul5 = mul nsw i32 %i.0, %n, !dbg !1627
  %add.ptr6 = getelementptr inbounds i8, ptr %b, i32 %mul5, !dbg !1628
  %add.ptr7 = getelementptr inbounds nuw i8, ptr %add.ptr6, i32 %j.0, !dbg !1629
  %1 = load i8, ptr %add.ptr7, align 1, !dbg !1630
  %call = call fastcc zeroext i8 @add_f(i8 noundef zeroext %0, i8 noundef zeroext %1) #6, !dbg !1631
  %mul8 = mul nsw i32 %i.0, %n, !dbg !1632
  %add.ptr9 = getelementptr inbounds i8, ptr %c, i32 %mul8, !dbg !1633
  %add.ptr10 = getelementptr inbounds nuw i8, ptr %add.ptr9, i32 %j.0, !dbg !1634
  store i8 %call, ptr %add.ptr10, align 1, !dbg !1635
  %inc = add nuw i32 %j.0, 1, !dbg !1636
    #dbg_value(i32 %inc, !1618, !DIExpression(), !1619)
  br label %for.cond1, !dbg !1637, !llvm.loop !1638

for.inc11:                                        ; preds = %for.cond1
  %inc12 = add nuw i32 %i.0, 1, !dbg !1640
    #dbg_value(i32 %inc12, !1606, !DIExpression(), !1608)
  br label %for.cond, !dbg !1641, !llvm.loop !1642

for.end13:                                        ; preds = %for.cond
  ret void, !dbg !1644
}

; Function Attrs: nounwind
define internal fastcc void @encode(ptr noundef %m, ptr noundef %menc, i32 noundef %mlen) unnamed_addr #0 !dbg !1645 {
entry:
    #dbg_value(ptr %m, !1646, !DIExpression(), !1647)
    #dbg_value(ptr %menc, !1648, !DIExpression(), !1647)
    #dbg_value(i32 %mlen, !1649, !DIExpression(), !1647)
    #dbg_value(i32 0, !1650, !DIExpression(), !1647)
  br label %for.cond, !dbg !1651

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1653
  %m.addr.0 = phi ptr [ %m, %entry ], [ %add.ptr3, %for.body ]
    #dbg_value(ptr %m.addr.0, !1646, !DIExpression(), !1647)
    #dbg_value(i32 %i.0, !1650, !DIExpression(), !1647)
  %div = sdiv i32 %mlen, 2, !dbg !1654
  %cmp = icmp slt i32 %i.0, %div, !dbg !1656
  br i1 %cmp, label %for.body, label %for.end, !dbg !1657

for.body:                                         ; preds = %for.cond
  %0 = load i8, ptr %m.addr.0, align 1, !dbg !1658
  %add.ptr = getelementptr inbounds nuw i8, ptr %m.addr.0, i32 1, !dbg !1660
  %1 = load i8, ptr %add.ptr, align 1, !dbg !1661
  %shl = shl i8 %1, 4, !dbg !1662
  %or = or i8 %shl, %0, !dbg !1663
  %arrayidx = getelementptr inbounds nuw i8, ptr %menc, i32 %i.0, !dbg !1664
  store i8 %or, ptr %arrayidx, align 1, !dbg !1665
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1666
    #dbg_value(i32 %inc, !1650, !DIExpression(), !1647)
  %add.ptr3 = getelementptr inbounds nuw i8, ptr %m.addr.0, i32 2, !dbg !1667
    #dbg_value(ptr %add.ptr3, !1646, !DIExpression(), !1647)
  br label %for.cond, !dbg !1668, !llvm.loop !1669

for.end:                                          ; preds = %for.cond
  %i.0.lcssa = phi i32 [ %i.0, %for.cond ], !dbg !1653
  %m.addr.0.lcssa = phi ptr [ %m.addr.0, %for.cond ]
  %2 = and i32 %mlen, -2147483647, !dbg !1671
  %cmp4 = icmp eq i32 %2, 1, !dbg !1671
  br i1 %cmp4, label %if.then, label %if.end, !dbg !1671

if.then:                                          ; preds = %for.end
  %3 = load i8, ptr %m.addr.0.lcssa, align 1, !dbg !1673
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %menc, i32 %i.0.lcssa, !dbg !1675
  store i8 %3, ptr %arrayidx6, align 1, !dbg !1676
  br label %if.end, !dbg !1677

if.end:                                           ; preds = %if.then, %for.end
  ret void, !dbg !1678
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @add_f(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !1679 {
entry:
    #dbg_value(i8 %a, !1682, !DIExpression(), !1683)
    #dbg_value(i8 %b, !1684, !DIExpression(), !1683)
  %xor1 = xor i8 %a, %b, !dbg !1685
  ret i8 %xor1, !dbg !1686
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @lincomb(ptr noundef %a, ptr noundef %b, i32 noundef %n, i32 noundef %m) unnamed_addr #0 !dbg !1687 {
entry:
    #dbg_value(ptr %a, !1690, !DIExpression(), !1691)
    #dbg_value(ptr %b, !1692, !DIExpression(), !1691)
    #dbg_value(i32 %n, !1693, !DIExpression(), !1691)
    #dbg_value(i32 %m, !1694, !DIExpression(), !1691)
    #dbg_value(i8 0, !1695, !DIExpression(), !1691)
    #dbg_value(i32 0, !1696, !DIExpression(), !1698)
  %smax = call i32 @llvm.smax.i32(i32 %n, i32 0), !dbg !1699
  br label %for.cond, !dbg !1699

for.cond:                                         ; preds = %for.body, %entry
  %ret.0 = phi i8 [ 0, %entry ], [ %call1, %for.body ], !dbg !1691
  %b.addr.0 = phi ptr [ %b, %entry ], [ %add.ptr, %for.body ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1700
    #dbg_value(i32 %i.0, !1696, !DIExpression(), !1698)
    #dbg_value(ptr %b.addr.0, !1692, !DIExpression(), !1691)
    #dbg_value(i8 %ret.0, !1695, !DIExpression(), !1691)
  %exitcond = icmp ne i32 %i.0, %smax, !dbg !1701
  br i1 %exitcond, label %for.body, label %for.end, !dbg !1703

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %a, i32 %i.0, !dbg !1704
  %0 = load i8, ptr %arrayidx, align 1, !dbg !1704
  %1 = load i8, ptr %b.addr.0, align 1, !dbg !1706
  %call = call fastcc zeroext i8 @mul_f(i8 noundef zeroext %0, i8 noundef zeroext %1) #6, !dbg !1707
  %call1 = call fastcc zeroext i8 @add_f(i8 noundef zeroext %call, i8 noundef zeroext %ret.0) #6, !dbg !1708
    #dbg_value(i8 %call1, !1695, !DIExpression(), !1691)
  %inc = add nuw i32 %i.0, 1, !dbg !1709
    #dbg_value(i32 %inc, !1696, !DIExpression(), !1698)
  %add.ptr = getelementptr inbounds i8, ptr %b.addr.0, i32 %m, !dbg !1710
    #dbg_value(ptr %add.ptr, !1692, !DIExpression(), !1691)
  br label %for.cond, !dbg !1711, !llvm.loop !1712

for.end:                                          ; preds = %for.cond
  %ret.0.lcssa = phi i8 [ %ret.0, %for.cond ], !dbg !1691
  ret i8 %ret.0.lcssa, !dbg !1714
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @mul_f(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !1715 {
entry:
    #dbg_value(i8 %a, !1716, !DIExpression(), !1717)
    #dbg_value(i8 %b, !1718, !DIExpression(), !1717)
  %0 = load volatile i8, ptr @pqmayo_MAYO_3_ref_unsigned_char_blocker, align 1, !dbg !1719
  %xor1 = xor i8 %a, %0, !dbg !1720
    #dbg_value(i8 %xor1, !1716, !DIExpression(), !1717)
  %1 = trunc i8 %xor1 to i1, !dbg !1721
    #dbg_value(i8 poison, !1722, !DIExpression(), !1717)
  %2 = and i8 %xor1, 2, !dbg !1723
  %mul9 = mul i8 %2, %b, !dbg !1724
  %conv10 = select i1 %1, i8 %b, i8 0, !dbg !1721
  %xor11 = xor i8 %conv10, %mul9, !dbg !1725
    #dbg_value(i8 %xor11, !1722, !DIExpression(), !1717)
  %3 = and i8 %xor1, 4, !dbg !1726
  %mul16 = mul i8 %3, %b, !dbg !1727
  %xor18 = xor i8 %mul16, %xor11, !dbg !1728
    #dbg_value(i8 %xor18, !1722, !DIExpression(), !1717)
  %4 = and i8 %xor1, 8, !dbg !1729
  %mul23 = mul i8 %4, %b, !dbg !1730
  %xor25 = xor i8 %mul23, %xor18, !dbg !1731
    #dbg_value(i8 %xor25, !1722, !DIExpression(), !1717)
    #dbg_value(i8 %xor25, !1732, !DIExpression(DW_OP_constu, 18446744073709551600, DW_OP_and, DW_OP_stack_value), !1717)
  %5 = lshr i8 %xor25, 4, !dbg !1733
  %6 = lshr i8 %xor25, 3, !dbg !1734
  %7 = and i8 %6, 14, !dbg !1734
  %8 = xor i8 %5, %7, !dbg !1735
  %xor25.masked = and i8 %xor25, 15, !dbg !1736
  %9 = xor i8 %8, %xor25.masked, !dbg !1736
    #dbg_value(i8 %9, !1737, !DIExpression(), !1717)
  ret i8 %9, !dbg !1738
}

; Function Attrs: nounwind
define internal fastcc void @transpose_16x16_nibbles(ptr noundef %M) unnamed_addr #0 !dbg !67 {
entry:
    #dbg_value(ptr %M, !1739, !DIExpression(), !1740)
    #dbg_value(i32 0, !1741, !DIExpression(), !1743)
  br label %for.cond, !dbg !1744

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %add7, %for.body ], !dbg !1745
    #dbg_value(i32 %i.0, !1741, !DIExpression(), !1743)
  %cmp = icmp samesign ult i32 %i.0, 16, !dbg !1746
  br i1 %cmp, label %for.body, label %for.cond9.preheader, !dbg !1748

for.cond9.preheader:                              ; preds = %for.cond
  br label %for.cond9, !dbg !1749

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %M, i32 %i.0, !dbg !1751
  %0 = load i64, ptr %arrayidx, align 8, !dbg !1751
  %shr = lshr i64 %0, 4, !dbg !1753
  %add = or disjoint i32 %i.0, 1, !dbg !1754
  %arrayidx1 = getelementptr inbounds nuw i64, ptr %M, i32 %add, !dbg !1755
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !1755
  %xor = xor i64 %shr, %1, !dbg !1756
  %and = and i64 %xor, 1085102592571150095, !dbg !1757
    #dbg_value(i64 %and, !1758, !DIExpression(), !1759)
  %shl = shl nuw i64 %and, 4, !dbg !1760
  %arrayidx2 = getelementptr inbounds nuw i64, ptr %M, i32 %i.0, !dbg !1761
  %2 = load i64, ptr %arrayidx2, align 8, !dbg !1762
  %xor3 = xor i64 %2, %shl, !dbg !1762
  store i64 %xor3, ptr %arrayidx2, align 8, !dbg !1762
  %add4 = or disjoint i32 %i.0, 1, !dbg !1763
  %arrayidx5 = getelementptr inbounds nuw i64, ptr %M, i32 %add4, !dbg !1764
  %3 = load i64, ptr %arrayidx5, align 8, !dbg !1765
  %xor6 = xor i64 %3, %and, !dbg !1765
  store i64 %xor6, ptr %arrayidx5, align 8, !dbg !1765
  %add7 = add nuw nsw i32 %i.0, 2, !dbg !1766
    #dbg_value(i32 %add7, !1741, !DIExpression(), !1743)
  br label %for.cond, !dbg !1767, !llvm.loop !1768

for.cond9:                                        ; preds = %for.cond9.preheader, %for.body11
  %i8.0 = phi i32 [ %add39, %for.body11 ], [ 0, %for.cond9.preheader ], !dbg !1770
    #dbg_value(i32 %i8.0, !1771, !DIExpression(), !1772)
  %cmp10 = icmp samesign ult i32 %i8.0, 16, !dbg !1773
  br i1 %cmp10, label %for.body11, label %for.cond42.preheader, !dbg !1749

for.cond42.preheader:                             ; preds = %for.cond9
  br label %for.cond42, !dbg !1775

for.body11:                                       ; preds = %for.cond9
  %arrayidx12 = getelementptr inbounds nuw i64, ptr %M, i32 %i8.0, !dbg !1777
  %4 = load i64, ptr %arrayidx12, align 8, !dbg !1777
  %shr13 = lshr i64 %4, 8, !dbg !1779
  %add14 = or disjoint i32 %i8.0, 2, !dbg !1780
  %arrayidx15 = getelementptr inbounds nuw i64, ptr %M, i32 %add14, !dbg !1781
  %5 = load i64, ptr %arrayidx15, align 8, !dbg !1781
  %xor16 = xor i64 %shr13, %5, !dbg !1782
  %and17 = and i64 %xor16, 71777214294589695, !dbg !1783
    #dbg_value(i64 %and17, !1784, !DIExpression(), !1785)
  %add18 = or disjoint i32 %i8.0, 1, !dbg !1786
  %arrayidx19 = getelementptr inbounds nuw i64, ptr %M, i32 %add18, !dbg !1787
  %6 = load i64, ptr %arrayidx19, align 8, !dbg !1787
  %shr20 = lshr i64 %6, 8, !dbg !1788
  %add21 = or disjoint i32 %i8.0, 3, !dbg !1789
  %arrayidx22 = getelementptr inbounds nuw i64, ptr %M, i32 %add21, !dbg !1790
  %7 = load i64, ptr %arrayidx22, align 8, !dbg !1790
  %xor23 = xor i64 %shr20, %7, !dbg !1791
  %and24 = and i64 %xor23, 71777214294589695, !dbg !1792
    #dbg_value(i64 %and24, !1793, !DIExpression(), !1785)
  %shl25 = shl nuw i64 %and17, 8, !dbg !1794
  %arrayidx26 = getelementptr inbounds nuw i64, ptr %M, i32 %i8.0, !dbg !1795
  %8 = load i64, ptr %arrayidx26, align 8, !dbg !1796
  %xor27 = xor i64 %8, %shl25, !dbg !1796
  store i64 %xor27, ptr %arrayidx26, align 8, !dbg !1796
  %shl28 = shl nuw i64 %and24, 8, !dbg !1797
  %add29 = or disjoint i32 %i8.0, 1, !dbg !1798
  %arrayidx30 = getelementptr inbounds nuw i64, ptr %M, i32 %add29, !dbg !1799
  %9 = load i64, ptr %arrayidx30, align 8, !dbg !1800
  %xor31 = xor i64 %9, %shl28, !dbg !1800
  store i64 %xor31, ptr %arrayidx30, align 8, !dbg !1800
  %add32 = or disjoint i32 %i8.0, 2, !dbg !1801
  %arrayidx33 = getelementptr inbounds nuw i64, ptr %M, i32 %add32, !dbg !1802
  %10 = load i64, ptr %arrayidx33, align 8, !dbg !1803
  %xor34 = xor i64 %10, %and17, !dbg !1803
  store i64 %xor34, ptr %arrayidx33, align 8, !dbg !1803
  %add35 = or disjoint i32 %i8.0, 3, !dbg !1804
  %arrayidx36 = getelementptr inbounds nuw i64, ptr %M, i32 %add35, !dbg !1805
  %11 = load i64, ptr %arrayidx36, align 8, !dbg !1806
  %xor37 = xor i64 %11, %and24, !dbg !1806
  store i64 %xor37, ptr %arrayidx36, align 8, !dbg !1806
  %add39 = add nuw nsw i32 %i8.0, 4, !dbg !1807
    #dbg_value(i32 %add39, !1771, !DIExpression(), !1772)
  br label %for.cond9, !dbg !1808, !llvm.loop !1809

for.cond42:                                       ; preds = %for.cond42.preheader, %for.body44
  %i41.0 = phi i32 [ %inc, %for.body44 ], [ 0, %for.cond42.preheader ], !dbg !1811
    #dbg_value(i32 %i41.0, !1812, !DIExpression(), !1813)
  %exitcond = icmp ne i32 %i41.0, 4, !dbg !1814
  br i1 %exitcond, label %for.body44, label %for.cond76.preheader, !dbg !1775

for.cond76.preheader:                             ; preds = %for.cond42
  br label %for.cond76, !dbg !1816

for.body44:                                       ; preds = %for.cond42
  %arrayidx46 = getelementptr inbounds nuw i64, ptr %M, i32 %i41.0, !dbg !1818
  %12 = load i64, ptr %arrayidx46, align 8, !dbg !1818
  %shr47 = lshr i64 %12, 16, !dbg !1820
  %add48 = or disjoint i32 %i41.0, 4, !dbg !1821
  %arrayidx49 = getelementptr inbounds nuw i64, ptr %M, i32 %add48, !dbg !1822
  %13 = load i64, ptr %arrayidx49, align 8, !dbg !1822
  %xor50 = xor i64 %shr47, %13, !dbg !1823
  %and51 = and i64 %xor50, 281470681808895, !dbg !1824
    #dbg_value(i64 %and51, !1825, !DIExpression(), !1826)
  %add53 = or disjoint i32 %i41.0, 8, !dbg !1827
  %arrayidx54 = getelementptr inbounds nuw i64, ptr %M, i32 %add53, !dbg !1828
  %14 = load i64, ptr %arrayidx54, align 8, !dbg !1828
  %shr55 = lshr i64 %14, 16, !dbg !1829
  %add56 = or disjoint i32 %i41.0, 12, !dbg !1830
  %arrayidx57 = getelementptr inbounds nuw i64, ptr %M, i32 %add56, !dbg !1831
  %15 = load i64, ptr %arrayidx57, align 8, !dbg !1831
  %xor58 = xor i64 %shr55, %15, !dbg !1832
  %and59 = and i64 %xor58, 281470681808895, !dbg !1833
    #dbg_value(i64 %and59, !1834, !DIExpression(), !1826)
  %shl60 = shl nuw i64 %and51, 16, !dbg !1835
  %arrayidx61 = getelementptr inbounds nuw i64, ptr %M, i32 %i41.0, !dbg !1836
  %16 = load i64, ptr %arrayidx61, align 8, !dbg !1837
  %xor62 = xor i64 %16, %shl60, !dbg !1837
  store i64 %xor62, ptr %arrayidx61, align 8, !dbg !1837
  %shl63 = shl nuw i64 %and59, 16, !dbg !1838
  %add64 = or disjoint i32 %i41.0, 8, !dbg !1839
  %arrayidx65 = getelementptr inbounds nuw i64, ptr %M, i32 %add64, !dbg !1840
  %17 = load i64, ptr %arrayidx65, align 8, !dbg !1841
  %xor66 = xor i64 %17, %shl63, !dbg !1841
  store i64 %xor66, ptr %arrayidx65, align 8, !dbg !1841
  %add67 = or disjoint i32 %i41.0, 4, !dbg !1842
  %arrayidx68 = getelementptr inbounds nuw i64, ptr %M, i32 %add67, !dbg !1843
  %18 = load i64, ptr %arrayidx68, align 8, !dbg !1844
  %xor69 = xor i64 %18, %and51, !dbg !1844
  store i64 %xor69, ptr %arrayidx68, align 8, !dbg !1844
  %add70 = or disjoint i32 %i41.0, 12, !dbg !1845
  %arrayidx71 = getelementptr inbounds nuw i64, ptr %M, i32 %add70, !dbg !1846
  %19 = load i64, ptr %arrayidx71, align 8, !dbg !1847
  %xor72 = xor i64 %19, %and59, !dbg !1847
  store i64 %xor72, ptr %arrayidx71, align 8, !dbg !1847
  %inc = add nuw nsw i32 %i41.0, 1, !dbg !1848
    #dbg_value(i32 %inc, !1812, !DIExpression(), !1813)
  br label %for.cond42, !dbg !1849, !llvm.loop !1850

for.cond76:                                       ; preds = %for.cond76.preheader, %for.body78
  %i75.0 = phi i32 [ %inc93, %for.body78 ], [ 0, %for.cond76.preheader ], !dbg !1852
    #dbg_value(i32 %i75.0, !1853, !DIExpression(), !1854)
  %exitcond1 = icmp ne i32 %i75.0, 8, !dbg !1855
  br i1 %exitcond1, label %for.body78, label %for.end94, !dbg !1816

for.body78:                                       ; preds = %for.cond76
  %arrayidx80 = getelementptr inbounds nuw i64, ptr %M, i32 %i75.0, !dbg !1857
  %20 = load i64, ptr %arrayidx80, align 8, !dbg !1857
  %shr81 = lshr i64 %20, 32, !dbg !1859
  %add82 = or disjoint i32 %i75.0, 8, !dbg !1860
  %arrayidx83 = getelementptr inbounds nuw i64, ptr %M, i32 %add82, !dbg !1861
  %21 = load i64, ptr %arrayidx83, align 8, !dbg !1861
  %.masked = and i64 %21, 4294967295, !dbg !1862
  %and85 = xor i64 %shr81, %.masked, !dbg !1862
    #dbg_value(i64 %and85, !1863, !DIExpression(), !1864)
  %shl86 = shl nuw i64 %and85, 32, !dbg !1865
  %arrayidx87 = getelementptr inbounds nuw i64, ptr %M, i32 %i75.0, !dbg !1866
  %22 = load i64, ptr %arrayidx87, align 8, !dbg !1867
  %xor88 = xor i64 %22, %shl86, !dbg !1867
  store i64 %xor88, ptr %arrayidx87, align 8, !dbg !1867
  %add89 = or disjoint i32 %i75.0, 8, !dbg !1868
  %arrayidx90 = getelementptr inbounds nuw i64, ptr %M, i32 %add89, !dbg !1869
  %23 = load i64, ptr %arrayidx90, align 8, !dbg !1870
  %xor91 = xor i64 %23, %and85, !dbg !1870
  store i64 %xor91, ptr %arrayidx90, align 8, !dbg !1870
  %inc93 = add nuw nsw i32 %i75.0, 1, !dbg !1871
    #dbg_value(i32 %inc93, !1853, !DIExpression(), !1854)
  br label %for.cond76, !dbg !1872, !llvm.loop !1873

for.end94:                                        ; preds = %for.cond76
  ret void, !dbg !1875
}

; Function Attrs: nounwind
define internal fastcc void @mul_add_mat_x_m_mat(i32 noundef %m_vec_limbs, ptr noundef %mat, ptr noundef %bs_mat, ptr noundef %acc, i32 noundef %mat_rows, i32 noundef %mat_cols, i32 noundef %bs_mat_cols) unnamed_addr #0 !dbg !1876 {
entry:
    #dbg_value(i32 %m_vec_limbs, !1877, !DIExpression(), !1878)
    #dbg_value(ptr %mat, !1879, !DIExpression(), !1878)
    #dbg_value(ptr %bs_mat, !1880, !DIExpression(), !1878)
    #dbg_value(ptr %acc, !1881, !DIExpression(), !1878)
    #dbg_value(i32 %mat_rows, !1882, !DIExpression(), !1878)
    #dbg_value(i32 %mat_cols, !1883, !DIExpression(), !1878)
    #dbg_value(i32 %bs_mat_cols, !1884, !DIExpression(), !1878)
    #dbg_value(i32 0, !1885, !DIExpression(), !1887)
  %smax = call i32 @llvm.smax.i32(i32 %bs_mat_cols, i32 0), !dbg !1888
  %smax1 = call i32 @llvm.smax.i32(i32 %mat_cols, i32 0), !dbg !1888
  %smax3 = call i32 @llvm.smax.i32(i32 %mat_rows, i32 0), !dbg !1888
  br label %for.cond, !dbg !1888

for.cond:                                         ; preds = %for.inc17, %entry
  %r.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ], !dbg !1889
    #dbg_value(i32 %r.0, !1885, !DIExpression(), !1887)
  %exitcond4 = icmp ne i32 %r.0, %smax3, !dbg !1890
  br i1 %exitcond4, label %for.cond1.preheader, label %for.end19, !dbg !1892

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !1893

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc15
  %c.0 = phi i32 [ %inc, %for.inc15 ], [ 0, %for.cond1.preheader ], !dbg !1896
    #dbg_value(i32 %c.0, !1897, !DIExpression(), !1898)
  %exitcond2 = icmp ne i32 %c.0, %smax1, !dbg !1899
  br i1 %exitcond2, label %for.cond4.preheader, label %for.inc17, !dbg !1893

for.cond4.preheader:                              ; preds = %for.cond1
  br label %for.cond4, !dbg !1901

for.cond4:                                        ; preds = %for.cond4.preheader, %for.body6
  %k.0 = phi i32 [ %add14, %for.body6 ], [ 0, %for.cond4.preheader ], !dbg !1904
    #dbg_value(i32 %k.0, !1905, !DIExpression(), !1906)
  %exitcond = icmp ne i32 %k.0, %smax, !dbg !1907
  br i1 %exitcond, label %for.body6, label %for.inc15, !dbg !1901

for.body6:                                        ; preds = %for.cond4
  %mul = mul nsw i32 %c.0, %bs_mat_cols, !dbg !1909
  %add = add nsw i32 %mul, %k.0, !dbg !1911
  %mul7 = mul nsw i32 %m_vec_limbs, %add, !dbg !1912
  %add.ptr = getelementptr inbounds i64, ptr %bs_mat, i32 %mul7, !dbg !1913
  %mul8 = mul nsw i32 %r.0, %mat_cols, !dbg !1914
  %0 = getelementptr i8, ptr %mat, i32 %mul8, !dbg !1915
  %arrayidx = getelementptr i8, ptr %0, i32 %c.0, !dbg !1915
  %1 = load i8, ptr %arrayidx, align 1, !dbg !1915
  %mul10 = mul nsw i32 %r.0, %bs_mat_cols, !dbg !1916
  %add11 = add nsw i32 %mul10, %k.0, !dbg !1917
  %mul12 = mul nsw i32 %m_vec_limbs, %add11, !dbg !1918
  %add.ptr13 = getelementptr inbounds i64, ptr %acc, i32 %mul12, !dbg !1919
  call fastcc void @m_vec_mul_add(i32 noundef %m_vec_limbs, ptr noundef %add.ptr, i8 noundef zeroext %1, ptr noundef %add.ptr13) #6, !dbg !1920
  %add14 = add nuw i32 %k.0, 1, !dbg !1921
    #dbg_value(i32 %add14, !1905, !DIExpression(), !1906)
  br label %for.cond4, !dbg !1922, !llvm.loop !1923

for.inc15:                                        ; preds = %for.cond4
  %inc = add nuw i32 %c.0, 1, !dbg !1925
    #dbg_value(i32 %inc, !1897, !DIExpression(), !1898)
  br label %for.cond1, !dbg !1926, !llvm.loop !1927

for.inc17:                                        ; preds = %for.cond1
  %inc18 = add nuw i32 %r.0, 1, !dbg !1929
    #dbg_value(i32 %inc18, !1885, !DIExpression(), !1887)
  br label %for.cond, !dbg !1930, !llvm.loop !1931

for.end19:                                        ; preds = %for.cond
  ret void, !dbg !1933
}

; Function Attrs: nounwind
define internal fastcc void @P1_times_Vt(ptr noundef %p, ptr noundef %P1, ptr noundef %V, ptr noundef %acc) unnamed_addr #0 !dbg !1934 {
entry:
    #dbg_value(ptr %p, !1935, !DIExpression(), !1936)
    #dbg_value(ptr %P1, !1937, !DIExpression(), !1936)
    #dbg_value(ptr %V, !1938, !DIExpression(), !1936)
    #dbg_value(ptr %acc, !1939, !DIExpression(), !1936)
  call fastcc void @mul_add_m_upper_triangular_mat_x_mat_trans(i32 noundef 7, ptr noundef %P1, ptr noundef %V, ptr noundef %acc, i32 noundef 108, i32 noundef 108, i32 noundef 11, i32 noundef 1) #6, !dbg !1940
  ret void, !dbg !1941
}

; Function Attrs: nounwind
define internal fastcc void @mul_add_m_upper_triangular_mat_x_mat_trans(i32 noundef %m_vec_limbs, ptr noundef %bs_mat, ptr noundef %mat, ptr noundef %acc, i32 noundef %bs_mat_rows, i32 noundef %bs_mat_cols, i32 noundef %mat_rows, i32 noundef %triangular) unnamed_addr #0 !dbg !1942 {
entry:
    #dbg_value(i32 %m_vec_limbs, !1943, !DIExpression(), !1944)
    #dbg_value(ptr %bs_mat, !1945, !DIExpression(), !1944)
    #dbg_value(ptr %mat, !1946, !DIExpression(), !1944)
    #dbg_value(ptr %acc, !1947, !DIExpression(), !1944)
    #dbg_value(i32 %bs_mat_rows, !1948, !DIExpression(), !1944)
    #dbg_value(i32 %bs_mat_cols, !1949, !DIExpression(), !1944)
    #dbg_value(i32 %mat_rows, !1950, !DIExpression(), !1944)
    #dbg_value(i32 %triangular, !1951, !DIExpression(), !1944)
    #dbg_value(i32 0, !1952, !DIExpression(), !1944)
    #dbg_value(i32 0, !1953, !DIExpression(), !1955)
  %smax = call i32 @llvm.smax.i32(i32 %mat_rows, i32 0), !dbg !1956
  %smax1 = call i32 @llvm.smax.i32(i32 %bs_mat_rows, i32 0), !dbg !1956
  br label %for.cond, !dbg !1956

for.cond:                                         ; preds = %for.inc17, %entry
  %bs_mat_entries_used.0 = phi i32 [ 0, %entry ], [ %bs_mat_entries_used.1.lcssa, %for.inc17 ], !dbg !1957
  %r.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ], !dbg !1958
    #dbg_value(i32 %r.0, !1953, !DIExpression(), !1955)
    #dbg_value(i32 %bs_mat_entries_used.0, !1952, !DIExpression(), !1944)
  %exitcond2 = icmp ne i32 %r.0, %smax1, !dbg !1959
  br i1 %exitcond2, label %for.body, label %for.end19, !dbg !1961

for.body:                                         ; preds = %for.cond
  %mul = mul nsw i32 %triangular, %r.0, !dbg !1962
    #dbg_value(i32 %mul, !1965, !DIExpression(), !1966)
  br label %for.cond1, !dbg !1967

for.cond1:                                        ; preds = %for.inc15, %for.body
  %bs_mat_entries_used.1 = phi i32 [ %bs_mat_entries_used.0, %for.body ], [ %add14, %for.inc15 ], !dbg !1944
  %c.0 = phi i32 [ %mul, %for.body ], [ %inc, %for.inc15 ], !dbg !1968
    #dbg_value(i32 %c.0, !1965, !DIExpression(), !1966)
    #dbg_value(i32 %bs_mat_entries_used.1, !1952, !DIExpression(), !1944)
  %cmp2 = icmp slt i32 %c.0, %bs_mat_cols, !dbg !1969
  br i1 %cmp2, label %for.cond4.preheader, label %for.inc17, !dbg !1971

for.cond4.preheader:                              ; preds = %for.cond1
  br label %for.cond4, !dbg !1972

for.cond4:                                        ; preds = %for.cond4.preheader, %for.body6
  %k.0 = phi i32 [ %add13, %for.body6 ], [ 0, %for.cond4.preheader ], !dbg !1975
    #dbg_value(i32 %k.0, !1976, !DIExpression(), !1977)
  %exitcond = icmp ne i32 %k.0, %smax, !dbg !1978
  br i1 %exitcond, label %for.body6, label %for.inc15, !dbg !1972

for.body6:                                        ; preds = %for.cond4
  %mul7 = mul nsw i32 %m_vec_limbs, %bs_mat_entries_used.1, !dbg !1980
  %add.ptr = getelementptr inbounds i64, ptr %bs_mat, i32 %mul7, !dbg !1982
  %mul8 = mul nsw i32 %k.0, %bs_mat_cols, !dbg !1983
  %0 = getelementptr i8, ptr %mat, i32 %mul8, !dbg !1984
  %arrayidx = getelementptr i8, ptr %0, i32 %c.0, !dbg !1984
  %1 = load i8, ptr %arrayidx, align 1, !dbg !1984
  %mul9 = mul nsw i32 %r.0, %mat_rows, !dbg !1985
  %add10 = add nsw i32 %mul9, %k.0, !dbg !1986
  %mul11 = mul nsw i32 %m_vec_limbs, %add10, !dbg !1987
  %add.ptr12 = getelementptr inbounds i64, ptr %acc, i32 %mul11, !dbg !1988
  call fastcc void @m_vec_mul_add(i32 noundef %m_vec_limbs, ptr noundef %add.ptr, i8 noundef zeroext %1, ptr noundef %add.ptr12) #6, !dbg !1989
  %add13 = add nuw i32 %k.0, 1, !dbg !1990
    #dbg_value(i32 %add13, !1976, !DIExpression(), !1977)
  br label %for.cond4, !dbg !1991, !llvm.loop !1992

for.inc15:                                        ; preds = %for.cond4
    #dbg_value(i32 %bs_mat_entries_used.1, !1952, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !1944)
  %add14 = add nsw i32 %bs_mat_entries_used.1, 1, !dbg !1994
    #dbg_value(i32 %add14, !1952, !DIExpression(), !1944)
  %inc = add nsw i32 %c.0, 1, !dbg !1995
    #dbg_value(i32 %inc, !1965, !DIExpression(), !1966)
  br label %for.cond1, !dbg !1996, !llvm.loop !1997

for.inc17:                                        ; preds = %for.cond1
  %bs_mat_entries_used.1.lcssa = phi i32 [ %bs_mat_entries_used.1, %for.cond1 ], !dbg !1944
  %inc18 = add nuw i32 %r.0, 1, !dbg !1999
    #dbg_value(i32 %inc18, !1953, !DIExpression(), !1955)
  br label %for.cond, !dbg !2000, !llvm.loop !2001

for.end19:                                        ; preds = %for.cond
  ret void, !dbg !2003
}

; Function Attrs: nounwind
define dso_local i32 @pqmayo_MAYO_3_ref_mayo_sign(ptr noundef %p, ptr noundef %sm, ptr noundef %smlen, ptr noundef %m, i32 noundef %mlen, ptr noundef %csk) local_unnamed_addr #0 !dbg !2004 {
entry:
  %siglen = alloca i32, align 4
    #dbg_value(ptr %p, !2005, !DIExpression(), !2006)
    #dbg_value(ptr %sm, !2007, !DIExpression(), !2006)
    #dbg_value(ptr %smlen, !2008, !DIExpression(), !2006)
    #dbg_value(ptr %m, !2009, !DIExpression(), !2006)
    #dbg_value(i32 %mlen, !2010, !DIExpression(), !2006)
    #dbg_value(ptr %csk, !2011, !DIExpression(), !2006)
    #dbg_value(i32 0, !2012, !DIExpression(), !2006)
    #dbg_value(i32 681, !2013, !DIExpression(), !2006)
  %add.ptr = getelementptr inbounds nuw i8, ptr %sm, i32 681, !dbg !2014
  %call = call ptr @memmove(ptr noundef nonnull %add.ptr, ptr noundef %m, i32 noundef %mlen) #8, !dbg !2015
  %add.ptr1 = getelementptr inbounds nuw i8, ptr %sm, i32 681, !dbg !2016
    #dbg_value(ptr %siglen, !2017, !DIExpression(DW_OP_deref), !2006)
  %call2 = call i32 @pqmayo_MAYO_3_ref_mayo_sign_signature(ptr noundef %p, ptr noundef %sm, ptr noundef nonnull %siglen, ptr noundef nonnull %add.ptr1, i32 noundef %mlen, ptr noundef %csk) #6, !dbg !2018
    #dbg_value(i32 %call2, !2012, !DIExpression(), !2006)
  %cmp.not = icmp eq i32 %call2, 0, !dbg !2019
  %0 = load i32, ptr %siglen, align 4
    #dbg_value(i32 %0, !2017, !DIExpression(), !2006)
  %cmp3.not = icmp eq i32 %0, 681
  %or.cond = select i1 %cmp.not, i1 %cmp3.not, i1 false, !dbg !2021
  br i1 %or.cond, label %if.end, label %if.then, !dbg !2021

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %siglen, align 4, !dbg !2022
    #dbg_value(i32 %1, !2017, !DIExpression(), !2006)
  %add = add i32 %1, %mlen, !dbg !2024
  %call4 = call ptr @memset(ptr noundef %sm, i32 noundef 0, i32 noundef %add) #8, !dbg !2025
  br label %err, !dbg !2026

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %siglen, align 4, !dbg !2027
    #dbg_value(i32 %2, !2017, !DIExpression(), !2006)
  %add5 = add i32 %2, %mlen, !dbg !2028
  store i32 %add5, ptr %smlen, align 4, !dbg !2029
  br label %err, !dbg !2030

err:                                              ; preds = %if.end, %if.then
    #dbg_label(!2031, !2032)
  ret i32 %call2, !dbg !2033
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_3_ref_mayo_open(ptr noundef %p, ptr noundef %m, ptr noundef %mlen, ptr noundef %sm, i32 noundef %smlen, ptr noundef %pk) local_unnamed_addr #0 !dbg !2034 {
entry:
    #dbg_value(ptr %p, !2035, !DIExpression(), !2036)
    #dbg_value(ptr %m, !2037, !DIExpression(), !2036)
    #dbg_value(ptr %mlen, !2038, !DIExpression(), !2036)
    #dbg_value(ptr %sm, !2039, !DIExpression(), !2036)
    #dbg_value(i32 %smlen, !2040, !DIExpression(), !2036)
    #dbg_value(ptr %pk, !2041, !DIExpression(), !2036)
    #dbg_value(i32 681, !2042, !DIExpression(), !2036)
  %cmp = icmp ult i32 %smlen, 681, !dbg !2043
  br i1 %cmp, label %return, label %if.end, !dbg !2043

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr inbounds nuw i8, ptr %sm, i32 681, !dbg !2045
  %sub = add i32 %smlen, -681, !dbg !2046
  %call = call i32 @pqmayo_MAYO_3_ref_mayo_verify(ptr noundef %p, ptr noundef nonnull %add.ptr, i32 noundef %sub, ptr noundef %sm, ptr noundef %pk) #6, !dbg !2047
    #dbg_value(i32 %call, !2048, !DIExpression(), !2036)
  %cmp1 = icmp eq i32 %call, 0, !dbg !2049
  br i1 %cmp1, label %if.then2, label %return, !dbg !2049

if.then2:                                         ; preds = %if.end
  %sub3 = add i32 %smlen, -681, !dbg !2051
  store i32 %sub3, ptr %mlen, align 4, !dbg !2053
  %add.ptr4 = getelementptr inbounds nuw i8, ptr %sm, i32 681, !dbg !2054
  %call5 = call ptr @memmove(ptr noundef %m, ptr noundef nonnull %add.ptr4, i32 noundef %sub3) #8, !dbg !2055
  br label %return, !dbg !2056

return:                                           ; preds = %if.end, %if.then2, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ 0, %if.then2 ], [ 1, %if.end ], !dbg !2036
  ret i32 %retval.0, !dbg !2057
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_3_ref_mayo_verify(ptr noundef %p, ptr noundef %m, i32 noundef %mlen, ptr noundef %sig, ptr noundef %cpk) local_unnamed_addr #0 !dbg !2058 {
entry:
  %tEnc = alloca [54 x i8], align 1
  %t = alloca [108 x i8], align 1
  %y = alloca [216 x i8], align 1
  %s = alloca [1298 x i8], align 1
  %pk = alloca [49147 x i64], align 8
  %tmp = alloca [80 x i8], align 1
    #dbg_value(ptr %p, !2061, !DIExpression(), !2062)
    #dbg_value(ptr %m, !2063, !DIExpression(), !2062)
    #dbg_value(i32 %mlen, !2064, !DIExpression(), !2062)
    #dbg_value(ptr %sig, !2065, !DIExpression(), !2062)
    #dbg_value(ptr %cpk, !2066, !DIExpression(), !2062)
    #dbg_declare(ptr %tEnc, !2067, !DIExpression(), !2068)
    #dbg_declare(ptr %t, !2069, !DIExpression(), !2070)
    #dbg_declare(ptr %y, !2071, !DIExpression(), !2075)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(216) %y, i8 0, i32 216, i1 false), !dbg !2075
    #dbg_declare(ptr %s, !2076, !DIExpression(), !2077)
    #dbg_declare(ptr %pk, !2078, !DIExpression(), !2082)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(393176) %pk, i8 0, i32 393176, i1 false), !dbg !2082
    #dbg_declare(ptr %tmp, !2083, !DIExpression(), !2087)
    #dbg_value(i32 108, !2088, !DIExpression(), !2062)
    #dbg_value(i32 118, !2089, !DIExpression(), !2062)
    #dbg_value(i32 11, !2090, !DIExpression(), !2062)
    #dbg_value(i32 54, !2091, !DIExpression(), !2062)
    #dbg_value(i32 681, !2092, !DIExpression(), !2062)
    #dbg_value(i32 48, !2093, !DIExpression(), !2062)
    #dbg_value(i32 32, !2094, !DIExpression(), !2062)
  %call = call i32 @pqmayo_MAYO_3_ref_mayo_expand_pk(ptr noundef %p, ptr noundef %cpk, ptr noundef nonnull %pk) #6, !dbg !2095
    #dbg_value(i32 %call, !2096, !DIExpression(), !2062)
  %cmp.not = icmp eq i32 %call, 0, !dbg !2097
  br i1 %cmp.not, label %if.end, label %return, !dbg !2097

if.end:                                           ; preds = %entry
    #dbg_value(ptr %pk, !2099, !DIExpression(), !2062)
  %add.ptr = getelementptr inbounds nuw i8, ptr %pk, i32 329616, !dbg !2100
    #dbg_value(ptr %add.ptr, !2101, !DIExpression(), !2062)
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %pk, i32 390096, !dbg !2102
    #dbg_value(ptr %add.ptr2, !2103, !DIExpression(), !2062)
  %call4 = call i32 @shake256(ptr noundef nonnull %tmp, i32 noundef 48, ptr noundef %m, i32 noundef %mlen) #8, !dbg !2104
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %tmp, i32 48, !dbg !2105
  %add.ptr8 = getelementptr inbounds nuw i8, ptr %sig, i32 649, !dbg !2106
  %call9 = call ptr @memcpy(ptr noundef nonnull %add.ptr6, ptr noundef nonnull %add.ptr8, i32 noundef 32) #8, !dbg !2107
  %call12 = call i32 @shake256(ptr noundef nonnull %tEnc, i32 noundef 54, ptr noundef nonnull %tmp, i32 noundef 80) #8, !dbg !2108
  call fastcc void @decode(ptr noundef nonnull %tEnc, ptr noundef nonnull %t, i32 noundef 108) #6, !dbg !2109
  call fastcc void @decode(ptr noundef %sig, ptr noundef nonnull %s, i32 noundef 1298) #6, !dbg !2110
  call fastcc void @eval_public_map(ptr noundef %p, ptr noundef nonnull %s, ptr noundef nonnull %pk, ptr noundef nonnull %add.ptr, ptr noundef nonnull %add.ptr2, ptr noundef nonnull %y) #6, !dbg !2111
  %call20 = call i32 @memcmp(ptr noundef nonnull %y, ptr noundef nonnull %t, i32 noundef 108) #8, !dbg !2112
  %cmp21 = icmp ne i32 %call20, 0, !dbg !2114
  %. = zext i1 %cmp21 to i32, !dbg !2062
  br label %return, !dbg !2062

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ %., %if.end ], !dbg !2062
  ret i32 %retval.0, !dbg !2115
}

; Function Attrs: nounwind
define dso_local i32 @pqmayo_MAYO_3_ref_mayo_expand_pk(ptr noundef %p, ptr noundef %cpk, ptr noundef %pk) local_unnamed_addr #0 !dbg !2116 {
entry:
    #dbg_value(ptr %p, !2119, !DIExpression(), !2120)
    #dbg_value(ptr %cpk, !2121, !DIExpression(), !2120)
    #dbg_value(ptr %pk, !2122, !DIExpression(), !2120)
  call fastcc void @expand_P1_P2(ptr noundef %p, ptr noundef %pk, ptr noundef %cpk) #6, !dbg !2123
  %add.ptr = getelementptr inbounds nuw i8, ptr %cpk, i32 16, !dbg !2124
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %pk, i32 390096, !dbg !2125
  call fastcc void @unpack_m_vecs(ptr noundef nonnull %add.ptr, ptr noundef nonnull %add.ptr2, i32 noundef 55, i32 noundef 108) #6, !dbg !2126
  ret i32 0, !dbg !2127
}

; Function Attrs: nounwind
define internal fastcc void @eval_public_map(ptr noundef %p, ptr noundef %s, ptr noundef %P1, ptr noundef %P2, ptr noundef %P3, ptr noundef %eval) unnamed_addr #0 !dbg !2128 {
entry:
  %SPS = alloca [847 x i64], align 8
  %zero = alloca [108 x i8], align 1
    #dbg_value(ptr %p, !2131, !DIExpression(), !2132)
    #dbg_value(ptr %s, !2133, !DIExpression(), !2132)
    #dbg_value(ptr %P1, !2134, !DIExpression(), !2132)
    #dbg_value(ptr %P2, !2135, !DIExpression(), !2132)
    #dbg_value(ptr %P3, !2136, !DIExpression(), !2132)
    #dbg_value(ptr %eval, !2137, !DIExpression(), !2132)
    #dbg_declare(ptr %SPS, !2138, !DIExpression(), !2142)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(6776) %SPS, i8 0, i32 6776, i1 false), !dbg !2142
  call fastcc void @m_calculate_PS_SPS(ptr noundef %p, ptr noundef %P1, ptr noundef %P2, ptr noundef %P3, ptr noundef %s, ptr noundef nonnull %SPS) #6, !dbg !2143
    #dbg_declare(ptr %zero, !2144, !DIExpression(), !2145)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(108) %zero, i8 0, i32 108, i1 false), !dbg !2145
  call fastcc void @compute_rhs(ptr noundef %p, ptr noundef nonnull %SPS, ptr noundef nonnull %zero, ptr noundef %eval) #6, !dbg !2146
  ret void, !dbg !2147
}

; Function Attrs: nounwind
define internal fastcc void @m_calculate_PS_SPS(ptr noundef %p, ptr noundef %P1, ptr noundef %P2, ptr noundef %P3, ptr noundef %s, ptr noundef %SPS) unnamed_addr #0 !dbg !2148 {
entry:
  %PS = alloca [9086 x i64], align 8
    #dbg_value(ptr %p, !2151, !DIExpression(), !2152)
    #dbg_value(ptr %P1, !2153, !DIExpression(), !2152)
    #dbg_value(ptr %P2, !2154, !DIExpression(), !2152)
    #dbg_value(ptr %P3, !2155, !DIExpression(), !2152)
    #dbg_value(ptr %s, !2156, !DIExpression(), !2152)
    #dbg_value(ptr %SPS, !2157, !DIExpression(), !2152)
    #dbg_declare(ptr %PS, !2158, !DIExpression(), !2162)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(72688) %PS, i8 0, i32 72688, i1 false), !dbg !2162
  call fastcc void @mayo_generic_m_calculate_PS(ptr noundef %P1, ptr noundef %P2, ptr noundef %P3, ptr noundef %s, i32 noundef 108, i32 noundef 108, i32 noundef 10, i32 noundef 11, ptr noundef nonnull %PS) #6, !dbg !2163
  call fastcc void @mayo_generic_m_calculate_SPS(ptr noundef nonnull %PS, ptr noundef %s, i32 noundef 108, i32 noundef 11, i32 noundef 118, ptr noundef %SPS) #6, !dbg !2164
  ret void, !dbg !2165
}

; Function Attrs: nounwind
define internal fastcc void @mayo_generic_m_calculate_PS(ptr noundef %P1, ptr noundef %P2, ptr noundef %P3, ptr noundef %S, i32 noundef %m, i32 noundef %v, i32 noundef %o, i32 noundef %k, ptr noundef %PS) unnamed_addr #0 !dbg !2166 {
entry:
  %accumulator = alloca [145376 x i64], align 8
    #dbg_value(ptr %P1, !2169, !DIExpression(), !2170)
    #dbg_value(ptr %P2, !2171, !DIExpression(), !2170)
    #dbg_value(ptr %P3, !2172, !DIExpression(), !2170)
    #dbg_value(ptr %S, !2173, !DIExpression(), !2170)
    #dbg_value(i32 %m, !2174, !DIExpression(), !2170)
    #dbg_value(i32 %v, !2175, !DIExpression(), !2170)
    #dbg_value(i32 %o, !2176, !DIExpression(), !2170)
    #dbg_value(i32 %k, !2177, !DIExpression(), !2170)
    #dbg_value(ptr %PS, !2178, !DIExpression(), !2170)
  %add = add i32 %o, %v, !dbg !2179
    #dbg_value(i32 %add, !2180, !DIExpression(), !2170)
  %add1 = add nsw i32 %m, 15, !dbg !2181
  %div = sdiv i32 %add1, 16, !dbg !2182
    #dbg_value(i32 %div, !2183, !DIExpression(), !2170)
    #dbg_declare(ptr %accumulator, !2184, !DIExpression(), !2188)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(1163008) %accumulator, i8 0, i32 1163008, i1 false), !dbg !2188
    #dbg_value(i32 0, !2189, !DIExpression(), !2170)
    #dbg_value(i32 0, !2190, !DIExpression(), !2192)
  %smax = call i32 @llvm.smax.i32(i32 %k, i32 0), !dbg !2193
  %smax3 = call i32 @llvm.smax.i32(i32 %o, i32 0), !dbg !2193
  %smax5 = call i32 @llvm.smax.i32(i32 %v, i32 0), !dbg !2193
  br label %for.cond, !dbg !2193

for.cond:                                         ; preds = %for.inc52, %entry
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc52 ], [ %v, %entry ], !dbg !2194
  %P1_used.0 = phi i32 [ 0, %entry ], [ %P1_used.1.lcssa, %for.inc52 ], !dbg !2194
  %row.0 = phi i32 [ 0, %entry ], [ %inc53, %for.inc52 ], !dbg !2195
    #dbg_value(i32 %row.0, !2190, !DIExpression(), !2192)
    #dbg_value(i32 %P1_used.0, !2189, !DIExpression(), !2170)
  %exitcond6 = icmp ne i32 %row.0, %smax5, !dbg !2196
  br i1 %exitcond6, label %for.cond2.preheader, label %for.cond56.preheader, !dbg !2198

for.cond2.preheader:                              ; preds = %for.cond
  %0 = add i32 %P1_used.0, %indvars.iv, !dbg !2199
  br label %for.cond2, !dbg !2199

for.cond56.preheader:                             ; preds = %for.cond
  %smax8 = call i32 @llvm.smax.i32(i32 %v, i32 %add), !dbg !2202
  br label %for.cond56, !dbg !2202

for.cond2:                                        ; preds = %for.cond2.preheader, %for.inc17
  %P1_used.1 = phi i32 [ %inc16, %for.inc17 ], [ %P1_used.0, %for.cond2.preheader ], !dbg !2170
  %j.0 = phi i32 [ %inc18, %for.inc17 ], [ %row.0, %for.cond2.preheader ], !dbg !2204
    #dbg_value(i32 %j.0, !2205, !DIExpression(), !2206)
    #dbg_value(i32 %P1_used.1, !2189, !DIExpression(), !2170)
  %exitcond1 = icmp ne i32 %P1_used.1, %0, !dbg !2207
  br i1 %exitcond1, label %for.cond5.preheader, label %for.cond21.preheader, !dbg !2199

for.cond21.preheader:                             ; preds = %for.cond2
  %P1_used.1.lcssa = phi i32 [ %P1_used.1, %for.cond2 ], !dbg !2170
  br label %for.cond21, !dbg !2209

for.cond5.preheader:                              ; preds = %for.cond2
  br label %for.cond5, !dbg !2211

for.cond5:                                        ; preds = %for.cond5.preheader, %for.body7
  %col.0 = phi i32 [ %inc, %for.body7 ], [ 0, %for.cond5.preheader ], !dbg !2214
    #dbg_value(i32 %col.0, !2215, !DIExpression(), !2216)
  %exitcond = icmp ne i32 %col.0, %smax, !dbg !2217
  br i1 %exitcond, label %for.body7, label %for.inc17, !dbg !2211

for.body7:                                        ; preds = %for.cond5
  %mul = mul nsw i32 %P1_used.1, %div, !dbg !2219
  %add.ptr = getelementptr inbounds i64, ptr %P1, i32 %mul, !dbg !2221
  %mul8 = mul nsw i32 %row.0, %k, !dbg !2222
  %add9 = add nsw i32 %mul8, %col.0, !dbg !2223
  %mul10 = shl nsw i32 %add9, 4, !dbg !2224
  %mul11 = mul nsw i32 %col.0, %add, !dbg !2225
  %1 = getelementptr i8, ptr %S, i32 %mul11, !dbg !2226
  %arrayidx = getelementptr i8, ptr %1, i32 %j.0, !dbg !2226
  %2 = load i8, ptr %arrayidx, align 1, !dbg !2226
  %conv = zext i8 %2 to i32, !dbg !2226
  %add13 = add nsw i32 %mul10, %conv, !dbg !2227
  %mul14 = mul nsw i32 %add13, %div, !dbg !2228
  %add.ptr15 = getelementptr inbounds i64, ptr %accumulator, i32 %mul14, !dbg !2229
  call fastcc void @m_vec_add(i32 noundef %div, ptr noundef %add.ptr, ptr noundef nonnull %add.ptr15) #6, !dbg !2230
  %inc = add nuw i32 %col.0, 1, !dbg !2231
    #dbg_value(i32 %inc, !2215, !DIExpression(), !2216)
  br label %for.cond5, !dbg !2232, !llvm.loop !2233

for.inc17:                                        ; preds = %for.cond5
    #dbg_value(i32 %P1_used.1, !2189, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2170)
  %inc16 = add i32 %P1_used.1, 1, !dbg !2235
    #dbg_value(i32 %inc16, !2189, !DIExpression(), !2170)
  %inc18 = add nuw nsw i32 %j.0, 1, !dbg !2236
    #dbg_value(i32 %inc18, !2205, !DIExpression(), !2206)
  br label %for.cond2, !dbg !2237, !llvm.loop !2238

for.cond21:                                       ; preds = %for.cond21.preheader, %for.inc49
  %j20.0 = phi i32 [ %inc50, %for.inc49 ], [ 0, %for.cond21.preheader ], !dbg !2240
    #dbg_value(i32 %j20.0, !2241, !DIExpression(), !2242)
  %exitcond4 = icmp ne i32 %j20.0, %smax3, !dbg !2243
  br i1 %exitcond4, label %for.cond26.preheader, label %for.inc52, !dbg !2209

for.cond26.preheader:                             ; preds = %for.cond21
  br label %for.cond26, !dbg !2245

for.cond26:                                       ; preds = %for.cond26.preheader, %for.body29
  %col25.0 = phi i32 [ %inc47, %for.body29 ], [ 0, %for.cond26.preheader ], !dbg !2248
    #dbg_value(i32 %col25.0, !2249, !DIExpression(), !2250)
  %exitcond2 = icmp ne i32 %col25.0, %smax, !dbg !2251
  br i1 %exitcond2, label %for.body29, label %for.inc49, !dbg !2245

for.body29:                                       ; preds = %for.cond26
  %mul30 = mul nsw i32 %row.0, %o, !dbg !2253
  %add31 = add nsw i32 %mul30, %j20.0, !dbg !2255
  %mul32 = mul nsw i32 %add31, %div, !dbg !2256
  %add.ptr33 = getelementptr inbounds i64, ptr %P2, i32 %mul32, !dbg !2257
  %mul35 = mul nsw i32 %row.0, %k, !dbg !2258
  %add36 = add nsw i32 %mul35, %col25.0, !dbg !2259
  %mul37 = shl nsw i32 %add36, 4, !dbg !2260
  %mul38 = mul nsw i32 %col25.0, %add, !dbg !2261
  %3 = getelementptr i8, ptr %S, i32 %mul38, !dbg !2262
  %4 = getelementptr i8, ptr %3, i32 %j20.0, !dbg !2262
  %arrayidx41 = getelementptr i8, ptr %4, i32 %v, !dbg !2262
  %5 = load i8, ptr %arrayidx41, align 1, !dbg !2262
  %conv42 = zext i8 %5 to i32, !dbg !2262
  %add43 = add nsw i32 %mul37, %conv42, !dbg !2263
  %mul44 = mul nsw i32 %add43, %div, !dbg !2264
  %add.ptr45 = getelementptr inbounds i64, ptr %accumulator, i32 %mul44, !dbg !2265
  call fastcc void @m_vec_add(i32 noundef %div, ptr noundef %add.ptr33, ptr noundef nonnull %add.ptr45) #6, !dbg !2266
  %inc47 = add nuw i32 %col25.0, 1, !dbg !2267
    #dbg_value(i32 %inc47, !2249, !DIExpression(), !2250)
  br label %for.cond26, !dbg !2268, !llvm.loop !2269

for.inc49:                                        ; preds = %for.cond26
  %inc50 = add nuw i32 %j20.0, 1, !dbg !2271
    #dbg_value(i32 %inc50, !2241, !DIExpression(), !2242)
  br label %for.cond21, !dbg !2272, !llvm.loop !2273

for.inc52:                                        ; preds = %for.cond21
  %inc53 = add nuw i32 %row.0, 1, !dbg !2275
    #dbg_value(i32 %inc53, !2190, !DIExpression(), !2192)
  %indvars.iv.next = add i32 %indvars.iv, -1, !dbg !2276
  br label %for.cond, !dbg !2276, !llvm.loop !2277

for.cond56:                                       ; preds = %for.cond56.preheader, %for.inc90
  %P3_used.0 = phi i32 [ %P3_used.1.lcssa, %for.inc90 ], [ 0, %for.cond56.preheader ], !dbg !2279
  %row55.0 = phi i32 [ %inc91, %for.inc90 ], [ %v, %for.cond56.preheader ], !dbg !2280
    #dbg_value(i32 %row55.0, !2281, !DIExpression(), !2282)
    #dbg_value(i32 %P3_used.0, !2283, !DIExpression(), !2170)
  %exitcond9 = icmp ne i32 %row55.0, %smax8, !dbg !2284
  br i1 %exitcond9, label %for.cond61.preheader, label %while.cond.preheader, !dbg !2202

for.cond61.preheader:                             ; preds = %for.cond56
  br label %for.cond61, !dbg !2286

while.cond.preheader:                             ; preds = %for.cond56
  %6 = mul i32 %k, %add, !dbg !2289
  %smax10 = call i32 @llvm.smax.i32(i32 %6, i32 0), !dbg !2289
  br label %while.cond, !dbg !2289

for.cond61:                                       ; preds = %for.cond61.preheader, %for.inc87
  %P3_used.1 = phi i32 [ %inc86, %for.inc87 ], [ %P3_used.0, %for.cond61.preheader ], !dbg !2170
  %j60.0 = phi i32 [ %inc88, %for.inc87 ], [ %row55.0, %for.cond61.preheader ], !dbg !2290
    #dbg_value(i32 %j60.0, !2291, !DIExpression(), !2292)
    #dbg_value(i32 %P3_used.1, !2283, !DIExpression(), !2170)
  %cmp62 = icmp slt i32 %j60.0, %add, !dbg !2293
  br i1 %cmp62, label %for.cond66.preheader, label %for.inc90, !dbg !2286

for.cond66.preheader:                             ; preds = %for.cond61
  br label %for.cond66, !dbg !2295

for.cond66:                                       ; preds = %for.cond66.preheader, %for.body69
  %col65.0 = phi i32 [ %inc84, %for.body69 ], [ 0, %for.cond66.preheader ], !dbg !2298
    #dbg_value(i32 %col65.0, !2299, !DIExpression(), !2300)
  %exitcond7 = icmp ne i32 %col65.0, %smax, !dbg !2301
  br i1 %exitcond7, label %for.body69, label %for.inc87, !dbg !2295

for.body69:                                       ; preds = %for.cond66
  %mul70 = mul nsw i32 %P3_used.1, %div, !dbg !2303
  %add.ptr71 = getelementptr inbounds i64, ptr %P3, i32 %mul70, !dbg !2305
  %mul73 = mul nsw i32 %row55.0, %k, !dbg !2306
  %add74 = add nsw i32 %mul73, %col65.0, !dbg !2307
  %mul75 = shl nsw i32 %add74, 4, !dbg !2308
  %mul76 = mul nsw i32 %col65.0, %add, !dbg !2309
  %7 = getelementptr i8, ptr %S, i32 %mul76, !dbg !2310
  %arrayidx78 = getelementptr i8, ptr %7, i32 %j60.0, !dbg !2310
  %8 = load i8, ptr %arrayidx78, align 1, !dbg !2310
  %conv79 = zext i8 %8 to i32, !dbg !2310
  %add80 = add nsw i32 %mul75, %conv79, !dbg !2311
  %mul81 = mul nsw i32 %add80, %div, !dbg !2312
  %add.ptr82 = getelementptr inbounds i64, ptr %accumulator, i32 %mul81, !dbg !2313
  call fastcc void @m_vec_add(i32 noundef %div, ptr noundef %add.ptr71, ptr noundef nonnull %add.ptr82) #6, !dbg !2314
  %inc84 = add nuw i32 %col65.0, 1, !dbg !2315
    #dbg_value(i32 %inc84, !2299, !DIExpression(), !2300)
  br label %for.cond66, !dbg !2316, !llvm.loop !2317

for.inc87:                                        ; preds = %for.cond66
    #dbg_value(i32 %P3_used.1, !2283, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2170)
  %inc86 = add nsw i32 %P3_used.1, 1, !dbg !2319
    #dbg_value(i32 %inc86, !2283, !DIExpression(), !2170)
  %inc88 = add nsw i32 %j60.0, 1, !dbg !2320
    #dbg_value(i32 %inc88, !2291, !DIExpression(), !2292)
  br label %for.cond61, !dbg !2321, !llvm.loop !2322

for.inc90:                                        ; preds = %for.cond61
  %P3_used.1.lcssa = phi i32 [ %P3_used.1, %for.cond61 ], !dbg !2170
  %inc91 = add i32 %row55.0, 1, !dbg !2324
    #dbg_value(i32 %inc91, !2281, !DIExpression(), !2282)
  br label %for.cond56, !dbg !2325, !llvm.loop !2326

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %i.0 = phi i32 [ %inc102, %while.body ], [ 0, %while.cond.preheader ], !dbg !2170
    #dbg_value(i32 %i.0, !2328, !DIExpression(), !2170)
  %exitcond11 = icmp ne i32 %i.0, %smax10, !dbg !2329
  br i1 %exitcond11, label %while.body, label %while.end, !dbg !2289

while.body:                                       ; preds = %while.cond
  %mul97 = shl nsw i32 %i.0, 4, !dbg !2330
  %mul98 = mul nsw i32 %mul97, %div, !dbg !2332
  %add.ptr99 = getelementptr inbounds i64, ptr %accumulator, i32 %mul98, !dbg !2333
  %mul100 = mul nsw i32 %i.0, %div, !dbg !2334
  %add.ptr101 = getelementptr inbounds i64, ptr %PS, i32 %mul100, !dbg !2335
  call fastcc void @m_vec_multiply_bins(i32 noundef %div, ptr noundef nonnull %add.ptr99, ptr noundef %add.ptr101) #6, !dbg !2336
  %inc102 = add nuw i32 %i.0, 1, !dbg !2337
    #dbg_value(i32 %inc102, !2328, !DIExpression(), !2170)
  br label %while.cond, !dbg !2289, !llvm.loop !2338

while.end:                                        ; preds = %while.cond
  ret void, !dbg !2340
}

; Function Attrs: nounwind
define internal fastcc void @mayo_generic_m_calculate_SPS(ptr noundef %PS, ptr noundef %S, i32 noundef %m, i32 noundef %k, i32 noundef %n, ptr noundef %SPS) unnamed_addr #0 !dbg !2341 {
entry:
  %accumulator = alloca [13552 x i64], align 8
    #dbg_value(ptr %PS, !2344, !DIExpression(), !2345)
    #dbg_value(ptr %S, !2346, !DIExpression(), !2345)
    #dbg_value(i32 %m, !2347, !DIExpression(), !2345)
    #dbg_value(i32 %k, !2348, !DIExpression(), !2345)
    #dbg_value(i32 %n, !2349, !DIExpression(), !2345)
    #dbg_value(ptr %SPS, !2350, !DIExpression(), !2345)
    #dbg_declare(ptr %accumulator, !2351, !DIExpression(), !2355)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(108416) %accumulator, i8 0, i32 108416, i1 false), !dbg !2355
  %add = add nsw i32 %m, 15, !dbg !2356
  %div = sdiv i32 %add, 16, !dbg !2357
    #dbg_value(i32 %div, !2358, !DIExpression(), !2345)
    #dbg_value(i32 0, !2359, !DIExpression(), !2361)
  %smax = call i32 @llvm.smax.i32(i32 %n, i32 0), !dbg !2362
  %smax2 = call i32 @llvm.smax.i32(i32 %k, i32 0), !dbg !2362
  br label %for.cond, !dbg !2362

for.cond:                                         ; preds = %for.inc20, %entry
  %row.0 = phi i32 [ 0, %entry ], [ %inc21, %for.inc20 ], !dbg !2363
    #dbg_value(i32 %row.0, !2359, !DIExpression(), !2361)
  %exitcond3 = icmp ne i32 %row.0, %smax2, !dbg !2364
  br i1 %exitcond3, label %for.cond1.preheader, label %while.cond.preheader, !dbg !2366

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !2367

while.cond.preheader:                             ; preds = %for.cond
  %0 = mul i32 %k, %k, !dbg !2370
  br label %while.cond, !dbg !2370

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc18
  %j.0 = phi i32 [ %inc, %for.inc18 ], [ 0, %for.cond1.preheader ], !dbg !2371
    #dbg_value(i32 %j.0, !2372, !DIExpression(), !2373)
  %exitcond1 = icmp ne i32 %j.0, %smax, !dbg !2374
  br i1 %exitcond1, label %for.cond4.preheader, label %for.inc20, !dbg !2367

for.cond4.preheader:                              ; preds = %for.cond1
  br label %for.cond4, !dbg !2376

for.cond4:                                        ; preds = %for.cond4.preheader, %for.body6
  %col.0 = phi i32 [ %add17, %for.body6 ], [ 0, %for.cond4.preheader ], !dbg !2379
    #dbg_value(i32 %col.0, !2380, !DIExpression(), !2381)
  %exitcond = icmp ne i32 %col.0, %k, !dbg !2382
  br i1 %exitcond, label %for.body6, label %for.inc18, !dbg !2376

for.body6:                                        ; preds = %for.cond4
  %mul = mul nsw i32 %j.0, %k, !dbg !2384
  %add7 = add nsw i32 %mul, %col.0, !dbg !2386
  %mul8 = mul nsw i32 %add7, %div, !dbg !2387
  %add.ptr = getelementptr inbounds i64, ptr %PS, i32 %mul8, !dbg !2388
  %mul9 = mul nsw i32 %row.0, %k, !dbg !2389
  %add10 = add nsw i32 %mul9, %col.0, !dbg !2390
  %mul11 = shl nsw i32 %add10, 4, !dbg !2391
  %mul12 = mul nsw i32 %row.0, %n, !dbg !2392
  %1 = getelementptr i8, ptr %S, i32 %mul12, !dbg !2393
  %arrayidx = getelementptr i8, ptr %1, i32 %j.0, !dbg !2393
  %2 = load i8, ptr %arrayidx, align 1, !dbg !2393
  %conv = zext i8 %2 to i32, !dbg !2393
  %add14 = add nsw i32 %mul11, %conv, !dbg !2394
  %mul15 = mul nsw i32 %add14, %div, !dbg !2395
  %add.ptr16 = getelementptr inbounds i64, ptr %accumulator, i32 %mul15, !dbg !2396
  call fastcc void @m_vec_add(i32 noundef %div, ptr noundef %add.ptr, ptr noundef nonnull %add.ptr16) #6, !dbg !2397
  %add17 = add nuw i32 %col.0, 1, !dbg !2398
    #dbg_value(i32 %add17, !2380, !DIExpression(), !2381)
  br label %for.cond4, !dbg !2399, !llvm.loop !2400

for.inc18:                                        ; preds = %for.cond4
  %inc = add nuw i32 %j.0, 1, !dbg !2402
    #dbg_value(i32 %inc, !2372, !DIExpression(), !2373)
  br label %for.cond1, !dbg !2403, !llvm.loop !2404

for.inc20:                                        ; preds = %for.cond1
  %inc21 = add nuw i32 %row.0, 1, !dbg !2406
    #dbg_value(i32 %inc21, !2359, !DIExpression(), !2361)
  br label %for.cond, !dbg !2407, !llvm.loop !2408

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %i.0 = phi i32 [ %inc32, %while.body ], [ 0, %while.cond.preheader ], !dbg !2345
    #dbg_value(i32 %i.0, !2410, !DIExpression(), !2345)
  %exitcond4 = icmp ne i32 %i.0, %0, !dbg !2411
  br i1 %exitcond4, label %while.body, label %while.end, !dbg !2370

while.body:                                       ; preds = %while.cond
  %mul27 = shl nsw i32 %i.0, 4, !dbg !2412
  %mul28 = mul nsw i32 %mul27, %div, !dbg !2414
  %add.ptr29 = getelementptr inbounds i64, ptr %accumulator, i32 %mul28, !dbg !2415
  %mul30 = mul nsw i32 %i.0, %div, !dbg !2416
  %add.ptr31 = getelementptr inbounds i64, ptr %SPS, i32 %mul30, !dbg !2417
  call fastcc void @m_vec_multiply_bins(i32 noundef %div, ptr noundef nonnull %add.ptr29, ptr noundef %add.ptr31) #6, !dbg !2418
  %inc32 = add nuw i32 %i.0, 1, !dbg !2419
    #dbg_value(i32 %inc32, !2410, !DIExpression(), !2345)
  br label %while.cond, !dbg !2370, !llvm.loop !2420

while.end:                                        ; preds = %while.cond
  ret void, !dbg !2422
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_add(i32 noundef %m_vec_limbs, ptr noundef %in, ptr noundef %acc) unnamed_addr #0 !dbg !2423 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2426, !DIExpression(), !2427)
    #dbg_value(ptr %in, !2428, !DIExpression(), !2427)
    #dbg_value(ptr %acc, !2429, !DIExpression(), !2427)
    #dbg_value(i32 0, !2430, !DIExpression(), !2432)
  br label %for.cond, !dbg !2433

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2434
    #dbg_value(i32 %i.0, !2430, !DIExpression(), !2432)
  %exitcond = icmp ne i32 %i.0, 7, !dbg !2435
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2437

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2438
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2438
  %arrayidx1 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !2440
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !2441
  %xor = xor i64 %1, %0, !dbg !2441
  store i64 %xor, ptr %arrayidx1, align 8, !dbg !2441
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2442
    #dbg_value(i32 %inc, !2430, !DIExpression(), !2432)
  br label %for.cond, !dbg !2443, !llvm.loop !2444

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2446
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_multiply_bins(i32 noundef %m_vec_limbs, ptr noundef %bins, ptr noundef %out) unnamed_addr #0 !dbg !2447 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2450, !DIExpression(), !2451)
    #dbg_value(ptr %bins, !2452, !DIExpression(), !2451)
    #dbg_value(ptr %out, !2453, !DIExpression(), !2451)
  %add.ptr = getelementptr inbounds nuw i8, ptr %bins, i32 280, !dbg !2454
  %add.ptr1 = getelementptr inbounds nuw i8, ptr %bins, i32 560, !dbg !2455
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr, ptr noundef nonnull %add.ptr1) #6, !dbg !2456
  %add.ptr2 = getelementptr inbounds nuw i8, ptr %bins, i32 616, !dbg !2457
  %add.ptr3 = getelementptr inbounds nuw i8, ptr %bins, i32 672, !dbg !2458
  call fastcc void @m_vec_mul_add_x(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr2, ptr noundef nonnull %add.ptr3) #6, !dbg !2459
  %add.ptr4 = getelementptr inbounds nuw i8, ptr %bins, i32 560, !dbg !2460
  %add.ptr5 = getelementptr inbounds nuw i8, ptr %bins, i32 392, !dbg !2461
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr4, ptr noundef nonnull %add.ptr5) #6, !dbg !2462
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %bins, i32 672, !dbg !2463
  %add.ptr7 = getelementptr inbounds nuw i8, ptr %bins, i32 336, !dbg !2464
  call fastcc void @m_vec_mul_add_x(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr6, ptr noundef nonnull %add.ptr7) #6, !dbg !2465
  %add.ptr8 = getelementptr inbounds nuw i8, ptr %bins, i32 392, !dbg !2466
  %add.ptr9 = getelementptr inbounds nuw i8, ptr %bins, i32 784, !dbg !2467
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr8, ptr noundef nonnull %add.ptr9) #6, !dbg !2468
  %add.ptr10 = getelementptr inbounds nuw i8, ptr %bins, i32 336, !dbg !2469
  %add.ptr11 = getelementptr inbounds nuw i8, ptr %bins, i32 168, !dbg !2470
  call fastcc void @m_vec_mul_add_x(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr10, ptr noundef nonnull %add.ptr11) #6, !dbg !2471
  %add.ptr12 = getelementptr inbounds nuw i8, ptr %bins, i32 784, !dbg !2472
  %add.ptr13 = getelementptr inbounds nuw i8, ptr %bins, i32 840, !dbg !2473
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr12, ptr noundef nonnull %add.ptr13) #6, !dbg !2474
  %add.ptr14 = getelementptr inbounds nuw i8, ptr %bins, i32 168, !dbg !2475
  %add.ptr15 = getelementptr inbounds nuw i8, ptr %bins, i32 448, !dbg !2476
  call fastcc void @m_vec_mul_add_x(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr14, ptr noundef nonnull %add.ptr15) #6, !dbg !2477
  %add.ptr16 = getelementptr inbounds nuw i8, ptr %bins, i32 840, !dbg !2478
  %add.ptr17 = getelementptr inbounds nuw i8, ptr %bins, i32 728, !dbg !2479
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr16, ptr noundef nonnull %add.ptr17) #6, !dbg !2480
  %add.ptr18 = getelementptr inbounds nuw i8, ptr %bins, i32 448, !dbg !2481
  %add.ptr19 = getelementptr inbounds nuw i8, ptr %bins, i32 224, !dbg !2482
  call fastcc void @m_vec_mul_add_x(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr18, ptr noundef nonnull %add.ptr19) #6, !dbg !2483
  %add.ptr20 = getelementptr inbounds nuw i8, ptr %bins, i32 728, !dbg !2484
  %add.ptr21 = getelementptr inbounds nuw i8, ptr %bins, i32 504, !dbg !2485
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr20, ptr noundef nonnull %add.ptr21) #6, !dbg !2486
  %add.ptr22 = getelementptr inbounds nuw i8, ptr %bins, i32 224, !dbg !2487
  %add.ptr23 = getelementptr inbounds nuw i8, ptr %bins, i32 112, !dbg !2488
  call fastcc void @m_vec_mul_add_x(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr22, ptr noundef nonnull %add.ptr23) #6, !dbg !2489
  %add.ptr24 = getelementptr inbounds nuw i8, ptr %bins, i32 504, !dbg !2490
  %add.ptr25 = getelementptr inbounds nuw i8, ptr %bins, i32 56, !dbg !2491
  call fastcc void @m_vec_mul_add_x_inv(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr24, ptr noundef nonnull %add.ptr25) #6, !dbg !2492
  %add.ptr26 = getelementptr inbounds nuw i8, ptr %bins, i32 112, !dbg !2493
  %add.ptr27 = getelementptr inbounds nuw i8, ptr %bins, i32 56, !dbg !2494
  call fastcc void @m_vec_mul_add_x(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr26, ptr noundef nonnull %add.ptr27) #6, !dbg !2495
  %add.ptr28 = getelementptr inbounds nuw i8, ptr %bins, i32 56, !dbg !2496
  call fastcc void @m_vec_copy(i32 noundef %m_vec_limbs, ptr noundef nonnull %add.ptr28, ptr noundef %out) #6, !dbg !2497
  ret void, !dbg !2498
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_mul_add_x_inv(i32 noundef %m_vec_limbs, ptr noundef %in, ptr noundef %acc) unnamed_addr #0 !dbg !2499 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2500, !DIExpression(), !2501)
    #dbg_value(ptr %in, !2502, !DIExpression(), !2501)
    #dbg_value(ptr %acc, !2503, !DIExpression(), !2501)
    #dbg_value(i64 1229782938247303441, !2504, !DIExpression(), !2501)
    #dbg_value(i32 0, !2505, !DIExpression(), !2507)
  br label %for.cond, !dbg !2508

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2509
    #dbg_value(i32 %i.0, !2505, !DIExpression(), !2507)
  %exitcond = icmp ne i32 %i.0, 7, !dbg !2510
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2512

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2513
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2513
  %and = and i64 %0, 1229782938247303441, !dbg !2515
    #dbg_value(i64 %and, !2516, !DIExpression(), !2517)
  %xor = lshr i64 %0, 1, !dbg !2518
  %shr = and i64 %xor, 8608480567731124087, !dbg !2518
  %mul = mul nuw i64 %and, 9, !dbg !2519
  %xor2 = xor i64 %shr, %mul, !dbg !2520
  %arrayidx3 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !2521
  %1 = load i64, ptr %arrayidx3, align 8, !dbg !2522
  %xor4 = xor i64 %1, %xor2, !dbg !2522
  store i64 %xor4, ptr %arrayidx3, align 8, !dbg !2522
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2523
    #dbg_value(i32 %inc, !2505, !DIExpression(), !2507)
  br label %for.cond, !dbg !2524, !llvm.loop !2525

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2527
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_mul_add_x(i32 noundef %m_vec_limbs, ptr noundef %in, ptr noundef %acc) unnamed_addr #0 !dbg !2528 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2529, !DIExpression(), !2530)
    #dbg_value(ptr %in, !2531, !DIExpression(), !2530)
    #dbg_value(ptr %acc, !2532, !DIExpression(), !2530)
    #dbg_value(i64 -8608480567731124088, !2533, !DIExpression(), !2530)
    #dbg_value(i32 0, !2534, !DIExpression(), !2536)
  br label %for.cond, !dbg !2537

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2538
    #dbg_value(i32 %i.0, !2534, !DIExpression(), !2536)
  %exitcond = icmp ne i32 %i.0, 7, !dbg !2539
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2541

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2542
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2542
    #dbg_value(i64 %0, !2544, !DIExpression(DW_OP_constu, 9838263505978427528, DW_OP_and, DW_OP_stack_value), !2545)
  %xor = shl i64 %0, 1, !dbg !2546
  %shl = and i64 %xor, -1229782938247303442, !dbg !2546
  %and = lshr i64 %0, 3, !dbg !2547
  %shr = and i64 %and, 1229782938247303441, !dbg !2547
  %mul = mul nuw nsw i64 %shr, 3, !dbg !2548
  %xor2 = xor i64 %shl, %mul, !dbg !2549
  %arrayidx3 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !2550
  %1 = load i64, ptr %arrayidx3, align 8, !dbg !2551
  %xor4 = xor i64 %1, %xor2, !dbg !2551
  store i64 %xor4, ptr %arrayidx3, align 8, !dbg !2551
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2552
    #dbg_value(i32 %inc, !2534, !DIExpression(), !2536)
  br label %for.cond, !dbg !2553, !llvm.loop !2554

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2556
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_copy(i32 noundef %m_vec_limbs, ptr noundef %in, ptr noundef %out) unnamed_addr #0 !dbg !2557 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2558, !DIExpression(), !2559)
    #dbg_value(ptr %in, !2560, !DIExpression(), !2559)
    #dbg_value(ptr %out, !2561, !DIExpression(), !2559)
    #dbg_value(i32 0, !2562, !DIExpression(), !2564)
  br label %for.cond, !dbg !2565

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2566
    #dbg_value(i32 %i.0, !2562, !DIExpression(), !2564)
  %exitcond = icmp ne i32 %i.0, 7, !dbg !2567
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2569

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2570
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2570
  %arrayidx1 = getelementptr inbounds nuw i64, ptr %out, i32 %i.0, !dbg !2572
  store i64 %0, ptr %arrayidx1, align 8, !dbg !2573
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2574
    #dbg_value(i32 %inc, !2562, !DIExpression(), !2564)
  br label %for.cond, !dbg !2575, !llvm.loop !2576

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2578
}

; Function Attrs: nounwind
define dso_local void @pqmayo_MAYO_3_ref_m_upper(ptr noundef %p, ptr noundef %in, ptr noundef %out, i32 noundef %size) local_unnamed_addr #0 !dbg !2579 {
entry:
    #dbg_value(ptr %p, !2610, !DIExpression(), !2611)
    #dbg_value(ptr %in, !2612, !DIExpression(), !2611)
    #dbg_value(ptr %out, !2613, !DIExpression(), !2611)
    #dbg_value(i32 %size, !2614, !DIExpression(), !2611)
    #dbg_value(i32 7, !2615, !DIExpression(), !2611)
    #dbg_value(i32 0, !2616, !DIExpression(), !2611)
    #dbg_value(i32 0, !2617, !DIExpression(), !2619)
  %smax = call i32 @llvm.smax.i32(i32 %size, i32 0), !dbg !2620
  br label %for.cond, !dbg !2620

for.cond:                                         ; preds = %for.inc15, %entry
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc15 ], [ %size, %entry ], !dbg !2621
  %m_vecs_stored.0 = phi i32 [ 0, %entry ], [ %m_vecs_stored.1.lcssa, %for.inc15 ], !dbg !2621
  %r.0 = phi i32 [ 0, %entry ], [ %inc16, %for.inc15 ], !dbg !2622
    #dbg_value(i32 %r.0, !2617, !DIExpression(), !2619)
    #dbg_value(i32 %m_vecs_stored.0, !2616, !DIExpression(), !2611)
  %exitcond1 = icmp ne i32 %r.0, %smax, !dbg !2623
  br i1 %exitcond1, label %for.cond1.preheader, label %for.end17, !dbg !2625

for.cond1.preheader:                              ; preds = %for.cond
  %0 = add i32 %m_vecs_stored.0, %indvars.iv, !dbg !2626
  br label %for.cond1, !dbg !2626

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc
  %m_vecs_stored.1 = phi i32 [ %inc, %for.inc ], [ %m_vecs_stored.0, %for.cond1.preheader ], !dbg !2611
  %c.0 = phi i32 [ %inc14, %for.inc ], [ %r.0, %for.cond1.preheader ], !dbg !2629
    #dbg_value(i32 %c.0, !2630, !DIExpression(), !2631)
    #dbg_value(i32 %m_vecs_stored.1, !2616, !DIExpression(), !2611)
  %exitcond = icmp ne i32 %m_vecs_stored.1, %0, !dbg !2632
  br i1 %exitcond, label %for.body3, label %for.inc15, !dbg !2626

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %r.0, %size, !dbg !2634
  %add = add nsw i32 %mul, %c.0, !dbg !2636
  %add.ptr.idx = mul nsw i32 %add, 56, !dbg !2637
  %add.ptr = getelementptr inbounds i8, ptr %in, i32 %add.ptr.idx, !dbg !2637
  %add.ptr6.idx = mul nsw i32 %m_vecs_stored.1, 56, !dbg !2638
  %add.ptr6 = getelementptr inbounds i8, ptr %out, i32 %add.ptr6.idx, !dbg !2638
  call fastcc void @m_vec_copy.17(i32 noundef 7, ptr noundef %add.ptr, ptr noundef %add.ptr6) #6, !dbg !2639
  %cmp7.not = icmp eq i32 %r.0, %c.0, !dbg !2640
  br i1 %cmp7.not, label %for.inc, label %if.then, !dbg !2640

if.then:                                          ; preds = %for.body3
  %mul8 = mul nsw i32 %c.0, %size, !dbg !2642
  %add9 = add nsw i32 %mul8, %r.0, !dbg !2644
  %add.ptr11.idx = mul nsw i32 %add9, 56, !dbg !2645
  %add.ptr11 = getelementptr inbounds i8, ptr %in, i32 %add.ptr11.idx, !dbg !2645
  %add.ptr13.idx = mul nsw i32 %m_vecs_stored.1, 56, !dbg !2646
  %add.ptr13 = getelementptr inbounds i8, ptr %out, i32 %add.ptr13.idx, !dbg !2646
  call fastcc void @m_vec_add.18(i32 noundef 7, ptr noundef %add.ptr11, ptr noundef %add.ptr13) #6, !dbg !2647
  br label %for.inc, !dbg !2648

for.inc:                                          ; preds = %for.body3, %if.then
    #dbg_value(i32 %m_vecs_stored.1, !2616, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !2611)
  %inc = add i32 %m_vecs_stored.1, 1, !dbg !2649
    #dbg_value(i32 %inc, !2616, !DIExpression(), !2611)
  %inc14 = add nuw nsw i32 %c.0, 1, !dbg !2650
    #dbg_value(i32 %inc14, !2630, !DIExpression(), !2631)
  br label %for.cond1, !dbg !2651, !llvm.loop !2652

for.inc15:                                        ; preds = %for.cond1
  %m_vecs_stored.1.lcssa = phi i32 [ %m_vecs_stored.1, %for.cond1 ], !dbg !2611
  %inc16 = add nuw i32 %r.0, 1, !dbg !2654
    #dbg_value(i32 %inc16, !2617, !DIExpression(), !2619)
  %indvars.iv.next = add i32 %indvars.iv, -1, !dbg !2655
  br label %for.cond, !dbg !2655, !llvm.loop !2656

for.end17:                                        ; preds = %for.cond
  ret void, !dbg !2658
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_copy.17(i32 noundef %m_vec_limbs, ptr noundef %in, ptr noundef %out) unnamed_addr #0 !dbg !2659 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2660, !DIExpression(), !2661)
    #dbg_value(ptr %in, !2662, !DIExpression(), !2661)
    #dbg_value(ptr %out, !2663, !DIExpression(), !2661)
    #dbg_value(i32 0, !2664, !DIExpression(), !2666)
  br label %for.cond, !dbg !2667

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2668
    #dbg_value(i32 %i.0, !2664, !DIExpression(), !2666)
  %exitcond = icmp ne i32 %i.0, 7, !dbg !2669
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2671

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2672
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2672
  %arrayidx1 = getelementptr inbounds nuw i64, ptr %out, i32 %i.0, !dbg !2674
  store i64 %0, ptr %arrayidx1, align 8, !dbg !2675
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2676
    #dbg_value(i32 %inc, !2664, !DIExpression(), !2666)
  br label %for.cond, !dbg !2677, !llvm.loop !2678

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2680
}

; Function Attrs: nounwind
define internal fastcc void @m_vec_add.18(i32 noundef %m_vec_limbs, ptr noundef %in, ptr noundef %acc) unnamed_addr #0 !dbg !2681 {
entry:
    #dbg_value(i32 %m_vec_limbs, !2682, !DIExpression(), !2683)
    #dbg_value(ptr %in, !2684, !DIExpression(), !2683)
    #dbg_value(ptr %acc, !2685, !DIExpression(), !2683)
    #dbg_value(i32 0, !2686, !DIExpression(), !2688)
  br label %for.cond, !dbg !2689

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2690
    #dbg_value(i32 %i.0, !2686, !DIExpression(), !2688)
  %exitcond = icmp ne i32 %i.0, 7, !dbg !2691
  br i1 %exitcond, label %for.body, label %for.end, !dbg !2693

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !2694
  %0 = load i64, ptr %arrayidx, align 8, !dbg !2694
  %arrayidx1 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !2696
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !2697
  %xor = xor i64 %1, %0, !dbg !2697
  store i64 %xor, ptr %arrayidx1, align 8, !dbg !2697
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2698
    #dbg_value(i32 %inc, !2686, !DIExpression(), !2688)
  br label %for.cond, !dbg !2699, !llvm.loop !2700

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2702
}

; Function Attrs: nounwind
define dso_local range(i32 0, 2) i32 @pqmayo_MAYO_3_ref_sample_solution(ptr noundef %p, ptr noundef %A, ptr noundef %y, ptr noundef %r, ptr noundef %x, i32 noundef %k, i32 noundef %o, i32 noundef %m, i32 noundef %A_cols) local_unnamed_addr #0 !dbg !2703 {
entry:
  %Ar = alloca [108 x i8], align 1
    #dbg_value(ptr %p, !2706, !DIExpression(), !2707)
    #dbg_value(ptr %A, !2708, !DIExpression(), !2707)
    #dbg_value(ptr %y, !2709, !DIExpression(), !2707)
    #dbg_value(ptr %r, !2710, !DIExpression(), !2707)
    #dbg_value(ptr %x, !2711, !DIExpression(), !2707)
    #dbg_value(i32 %k, !2712, !DIExpression(), !2707)
    #dbg_value(i32 %o, !2713, !DIExpression(), !2707)
    #dbg_value(i32 %m, !2714, !DIExpression(), !2707)
    #dbg_value(i32 %A_cols, !2715, !DIExpression(), !2707)
    #dbg_value(i32 0, !2716, !DIExpression(), !2718)
  %0 = mul nsw i32 %o, %k, !dbg !2719
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0), !dbg !2719
  br label %for.cond, !dbg !2719

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2720
    #dbg_value(i32 %i.0, !2716, !DIExpression(), !2718)
  %exitcond = icmp ne i32 %i.0, %smax, !dbg !2721
  br i1 %exitcond, label %for.body, label %for.cond3.preheader, !dbg !2723

for.cond3.preheader:                              ; preds = %for.cond
  %smax13 = call i32 @llvm.smax.i32(i32 %m, i32 0), !dbg !2724
  br label %for.cond3, !dbg !2724

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %r, i32 %i.0, !dbg !2726
  %1 = load i8, ptr %arrayidx, align 1, !dbg !2726
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %x, i32 %i.0, !dbg !2728
  store i8 %1, ptr %arrayidx1, align 1, !dbg !2729
  %inc = add nuw i32 %i.0, 1, !dbg !2730
    #dbg_value(i32 %inc, !2716, !DIExpression(), !2718)
  br label %for.cond, !dbg !2731, !llvm.loop !2732

for.cond3:                                        ; preds = %for.cond3.preheader, %for.body5
  %i2.0 = phi i32 [ %inc12, %for.body5 ], [ 0, %for.cond3.preheader ], !dbg !2734
    #dbg_value(i32 %i2.0, !2735, !DIExpression(), !2736)
  %exitcond14 = icmp ne i32 %i2.0, %smax13, !dbg !2737
  br i1 %exitcond14, label %for.body5, label %for.end13, !dbg !2724

for.body5:                                        ; preds = %for.cond3
  %mul6 = mul nsw i32 %k, %o, !dbg !2739
  %mul7 = mul nsw i32 %k, %o, !dbg !2741
  %add = add nsw i32 %mul7, 1, !dbg !2742
  %mul8 = mul nsw i32 %i2.0, %add, !dbg !2743
  %2 = getelementptr i8, ptr %A, i32 %mul6, !dbg !2744
  %arrayidx10 = getelementptr i8, ptr %2, i32 %mul8, !dbg !2744
  store i8 0, ptr %arrayidx10, align 1, !dbg !2745
  %inc12 = add nuw i32 %i2.0, 1, !dbg !2746
    #dbg_value(i32 %inc12, !2735, !DIExpression(), !2736)
  br label %for.cond3, !dbg !2747, !llvm.loop !2748

for.end13:                                        ; preds = %for.cond3
  %mul14 = mul nsw i32 %k, %o, !dbg !2750
  %add15 = add nsw i32 %mul14, 1, !dbg !2751
  call fastcc void @mat_mul.21(ptr noundef %A, ptr noundef %r, ptr noundef nonnull %Ar, i32 noundef %add15, i32 noundef %m, i32 noundef 1) #6, !dbg !2752
    #dbg_value(i32 0, !2753, !DIExpression(), !2755)
  br label %for.cond17, !dbg !2756

for.cond17:                                       ; preds = %for.body19, %for.end13
  %i16.0 = phi i32 [ 0, %for.end13 ], [ %inc29, %for.body19 ], !dbg !2757
    #dbg_value(i32 %i16.0, !2753, !DIExpression(), !2755)
  %exitcond15 = icmp ne i32 %i16.0, %smax13, !dbg !2758
  br i1 %exitcond15, label %for.body19, label %for.end30, !dbg !2760

for.body19:                                       ; preds = %for.cond17
  %arrayidx20 = getelementptr inbounds nuw i8, ptr %y, i32 %i16.0, !dbg !2761
  %3 = load i8, ptr %arrayidx20, align 1, !dbg !2761
  %arrayidx21 = getelementptr inbounds nuw [108 x i8], ptr %Ar, i32 0, i32 %i16.0, !dbg !2763
  %4 = load i8, ptr %arrayidx21, align 1, !dbg !2763
  %call = call fastcc zeroext i8 @sub_f(i8 noundef zeroext %3, i8 noundef zeroext %4) #6, !dbg !2764
  %mul22 = mul nsw i32 %k, %o, !dbg !2765
  %mul23 = mul nsw i32 %k, %o, !dbg !2766
  %add24 = add nsw i32 %mul23, 1, !dbg !2767
  %mul25 = mul nsw i32 %i16.0, %add24, !dbg !2768
  %5 = getelementptr i8, ptr %A, i32 %mul22, !dbg !2769
  %arrayidx27 = getelementptr i8, ptr %5, i32 %mul25, !dbg !2769
  store i8 %call, ptr %arrayidx27, align 1, !dbg !2770
  %inc29 = add nuw i32 %i16.0, 1, !dbg !2771
    #dbg_value(i32 %inc29, !2753, !DIExpression(), !2755)
  br label %for.cond17, !dbg !2772, !llvm.loop !2773

for.end30:                                        ; preds = %for.cond17
  %mul31 = mul nsw i32 %k, %o, !dbg !2775
  %add32 = add nsw i32 %mul31, 1, !dbg !2776
  call fastcc void @EF(ptr noundef %A, i32 noundef %m, i32 noundef %add32) #6, !dbg !2777
    #dbg_value(i8 0, !2778, !DIExpression(), !2707)
    #dbg_value(i32 0, !2779, !DIExpression(), !2781)
  %6 = add i32 %A_cols, -1, !dbg !2782
  %smax16 = call i32 @llvm.smax.i32(i32 %6, i32 0), !dbg !2782
  br label %for.cond34, !dbg !2782

for.cond34:                                       ; preds = %for.inc43, %for.end30
  %full_rank.0 = phi i8 [ 0, %for.end30 ], [ %or12, %for.inc43 ], !dbg !2707
  %i33.0 = phi i32 [ 0, %for.end30 ], [ %inc44, %for.inc43 ], !dbg !2783
    #dbg_value(i32 %i33.0, !2779, !DIExpression(), !2781)
    #dbg_value(i8 %full_rank.0, !2778, !DIExpression(), !2707)
  %exitcond17 = icmp ne i32 %i33.0, %smax16, !dbg !2784
  br i1 %exitcond17, label %for.inc43, label %for.end45, !dbg !2786

for.inc43:                                        ; preds = %for.cond34
    #dbg_value(!DIArgList(i8 poison, i8 poison), !2778, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2707)
  %sub37 = add nsw i32 %m, -1, !dbg !2787
  %mul38 = mul nsw i32 %sub37, %A_cols, !dbg !2789
  %7 = getelementptr i8, ptr %A, i32 %mul38, !dbg !2790
  %arrayidx40 = getelementptr i8, ptr %7, i32 %i33.0, !dbg !2790
  %8 = load i8, ptr %arrayidx40, align 1, !dbg !2790
    #dbg_value(!DIArgList(i8 %full_rank.0, i8 %8), !2778, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2707)
  %or12 = or i8 %full_rank.0, %8, !dbg !2791
    #dbg_value(i8 %or12, !2778, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2707)
    #dbg_value(i8 %or12, !2778, !DIExpression(), !2707)
  %inc44 = add nuw i32 %i33.0, 1, !dbg !2792
    #dbg_value(i32 %inc44, !2779, !DIExpression(), !2781)
  br label %for.cond34, !dbg !2793, !llvm.loop !2794

for.end45:                                        ; preds = %for.cond34
  %full_rank.0.lcssa = phi i8 [ %full_rank.0, %for.cond34 ], !dbg !2707
  %cmp47 = icmp eq i8 %full_rank.0.lcssa, 0, !dbg !2796
  br i1 %cmp47, label %return, label %for.cond50.preheader, !dbg !2796

for.cond50.preheader:                             ; preds = %for.end45
  br label %for.cond50, !dbg !2798

for.cond50.loopexit:                              ; preds = %for.cond63
  br label %for.cond50, !dbg !2798, !llvm.loop !2800

for.cond50:                                       ; preds = %for.cond50.preheader, %for.cond50.loopexit
  %row.0.in = phi i32 [ %row.0, %for.cond50.loopexit ], [ %m, %for.cond50.preheader ]
  %row.0 = add nsw i32 %row.0.in, -1, !dbg !2802
    #dbg_value(i32 %row.0, !2803, !DIExpression(), !2804)
  %cmp51 = icmp sgt i32 %row.0.in, 0, !dbg !2805
  br i1 %cmp51, label %for.body53, label %return.loopexit, !dbg !2798

for.body53:                                       ; preds = %for.cond50
    #dbg_value(i8 0, !2807, !DIExpression(), !2707)
  %sub54 = sub nsw i32 %m, %row.0, !dbg !2808
  %div = sdiv i32 32, %sub54, !dbg !2808
  %add55 = add nsw i32 %row.0, %div, !dbg !2808
  %mul56 = mul nsw i32 %k, %o, !dbg !2808
  %cmp57 = icmp slt i32 %add55, %mul56, !dbg !2808
  br i1 %cmp57, label %cond.true, label %cond.false, !dbg !2808

cond.true:                                        ; preds = %for.body53
  %sub59 = sub nsw i32 %m, %row.0, !dbg !2808
  %div60 = sdiv i32 32, %sub59, !dbg !2808
  %add61 = add nsw i32 %row.0, %div60, !dbg !2808
  br label %cond.end, !dbg !2808

cond.false:                                       ; preds = %for.body53
  %mul62 = mul nsw i32 %k, %o, !dbg !2808
  br label %cond.end, !dbg !2808

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add61, %cond.true ], [ %mul62, %cond.false ], !dbg !2808
    #dbg_value(i32 %cond, !2810, !DIExpression(), !2707)
    #dbg_value(i32 %row.0, !2811, !DIExpression(), !2813)
  br label %for.cond63, !dbg !2814

for.cond63:                                       ; preds = %for.inc229, %cond.end
  %finished.0 = phi i8 [ 0, %cond.end ], [ %or2273, %for.inc229 ], !dbg !2815
  %col.0 = phi i32 [ %row.0, %cond.end ], [ %inc230, %for.inc229 ], !dbg !2816
    #dbg_value(i32 %col.0, !2811, !DIExpression(), !2813)
    #dbg_value(i8 %finished.0, !2807, !DIExpression(), !2707)
  %cmp64.not = icmp sgt i32 %col.0, %cond, !dbg !2817
  br i1 %cmp64.not, label %for.cond50.loopexit, label %for.body66, !dbg !2819

for.body66:                                       ; preds = %for.cond63
  %mul67 = mul nsw i32 %row.0, %A_cols, !dbg !2820
  %9 = getelementptr i8, ptr %A, i32 %mul67, !dbg !2822
  %arrayidx69 = getelementptr i8, ptr %9, i32 %col.0, !dbg !2822
  %10 = load i8, ptr %arrayidx69, align 1, !dbg !2822
  %call70 = call fastcc zeroext i8 @ct_compare_8(i8 noundef zeroext %10, i8 noundef zeroext 0) #6, !dbg !2823
  %not = xor i8 %finished.0, -1, !dbg !2824
    #dbg_value(!DIArgList(i8 %call70, i8 %not), !2825, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value), !2707)
  %add76 = mul i32 %row.0.in, %A_cols, !dbg !2826
  %11 = getelementptr i8, ptr %A, i32 %add76, !dbg !2827
  %arrayidx78 = getelementptr i8, ptr %11, i32 -1, !dbg !2827
  %12 = load i8, ptr %arrayidx78, align 1, !dbg !2827
  %13 = and i8 %12, %not, !dbg !2828
  %and801 = and i8 %13, %call70, !dbg !2828
    #dbg_value(i8 %and801, !2829, !DIExpression(), !2830)
  %arrayidx83 = getelementptr inbounds i8, ptr %x, i32 %col.0, !dbg !2831
  %14 = load i8, ptr %arrayidx83, align 1, !dbg !2832
  %xor2 = xor i8 %14, %and801, !dbg !2832
  store i8 %xor2, ptr %arrayidx83, align 1, !dbg !2832
    #dbg_value(i32 0, !2833, !DIExpression(), !2835)
  br label %for.cond87, !dbg !2836

for.cond87:                                       ; preds = %for.body90, %for.body66
  %i86.0 = phi i32 [ 0, %for.body66 ], [ %add223, %for.body90 ], !dbg !2837
    #dbg_value(i32 %i86.0, !2833, !DIExpression(), !2835)
  %cmp88 = icmp slt i32 %i86.0, %row.0, !dbg !2838
  br i1 %cmp88, label %for.body90, label %for.inc229, !dbg !2840

for.body90:                                       ; preds = %for.cond87
  %mul91 = mul nsw i32 %i86.0, %A_cols, !dbg !2841
  %15 = getelementptr i8, ptr %A, i32 %mul91, !dbg !2843
  %arrayidx93 = getelementptr i8, ptr %15, i32 %col.0, !dbg !2843
  %16 = load i8, ptr %arrayidx93, align 1, !dbg !2843
  %conv94 = zext i8 %16 to i64, !dbg !2844
  %add95 = or disjoint i32 %i86.0, 1, !dbg !2845
  %mul96 = mul nsw i32 %add95, %A_cols, !dbg !2846
  %17 = getelementptr i8, ptr %A, i32 %mul96, !dbg !2847
  %arrayidx98 = getelementptr i8, ptr %17, i32 %col.0, !dbg !2847
  %18 = load i8, ptr %arrayidx98, align 1, !dbg !2847
  %conv99 = zext i8 %18 to i64, !dbg !2848
  %shl100 = shl nuw nsw i64 %conv99, 8, !dbg !2849
  %xor101 = or disjoint i64 %shl100, %conv94, !dbg !2850
  %add102 = or disjoint i32 %i86.0, 2, !dbg !2851
  %mul103 = mul nsw i32 %add102, %A_cols, !dbg !2852
  %19 = getelementptr i8, ptr %A, i32 %mul103, !dbg !2853
  %arrayidx105 = getelementptr i8, ptr %19, i32 %col.0, !dbg !2853
  %20 = load i8, ptr %arrayidx105, align 1, !dbg !2853
  %conv106 = zext i8 %20 to i64, !dbg !2854
  %shl107 = shl nuw nsw i64 %conv106, 16, !dbg !2855
  %xor108 = or disjoint i64 %xor101, %shl107, !dbg !2856
  %add109 = or disjoint i32 %i86.0, 3, !dbg !2857
  %mul110 = mul nsw i32 %add109, %A_cols, !dbg !2858
  %21 = getelementptr i8, ptr %A, i32 %mul110, !dbg !2859
  %arrayidx112 = getelementptr i8, ptr %21, i32 %col.0, !dbg !2859
  %22 = load i8, ptr %arrayidx112, align 1, !dbg !2859
  %conv113 = zext i8 %22 to i64, !dbg !2860
  %shl114 = shl nuw nsw i64 %conv113, 24, !dbg !2861
  %xor115 = or disjoint i64 %xor108, %shl114, !dbg !2862
  %add116 = or disjoint i32 %i86.0, 4, !dbg !2863
  %mul117 = mul nsw i32 %add116, %A_cols, !dbg !2864
  %23 = getelementptr i8, ptr %A, i32 %mul117, !dbg !2865
  %arrayidx119 = getelementptr i8, ptr %23, i32 %col.0, !dbg !2865
  %24 = load i8, ptr %arrayidx119, align 1, !dbg !2865
  %conv120 = zext i8 %24 to i64, !dbg !2866
  %shl121 = shl nuw nsw i64 %conv120, 32, !dbg !2867
  %xor122 = or disjoint i64 %xor115, %shl121, !dbg !2868
  %add123 = or disjoint i32 %i86.0, 5, !dbg !2869
  %mul124 = mul nsw i32 %add123, %A_cols, !dbg !2870
  %25 = getelementptr i8, ptr %A, i32 %mul124, !dbg !2871
  %arrayidx126 = getelementptr i8, ptr %25, i32 %col.0, !dbg !2871
  %26 = load i8, ptr %arrayidx126, align 1, !dbg !2871
  %conv127 = zext i8 %26 to i64, !dbg !2872
  %shl128 = shl nuw nsw i64 %conv127, 40, !dbg !2873
  %xor129 = xor i64 %xor122, %shl128, !dbg !2874
  %add130 = or disjoint i32 %i86.0, 6, !dbg !2875
  %mul131 = mul nsw i32 %add130, %A_cols, !dbg !2876
  %27 = getelementptr i8, ptr %A, i32 %mul131, !dbg !2877
  %arrayidx133 = getelementptr i8, ptr %27, i32 %col.0, !dbg !2877
  %28 = load i8, ptr %arrayidx133, align 1, !dbg !2877
  %conv134 = zext i8 %28 to i64, !dbg !2878
  %shl135 = shl nuw nsw i64 %conv134, 48, !dbg !2879
  %xor136 = xor i64 %xor129, %shl135, !dbg !2880
  %add137 = or disjoint i32 %i86.0, 7, !dbg !2881
  %mul138 = mul nsw i32 %add137, %A_cols, !dbg !2882
  %29 = getelementptr i8, ptr %A, i32 %mul138, !dbg !2883
  %arrayidx140 = getelementptr i8, ptr %29, i32 %col.0, !dbg !2883
  %30 = load i8, ptr %arrayidx140, align 1, !dbg !2883
  %conv141 = zext i8 %30 to i64, !dbg !2884
  %shl142 = shl nuw i64 %conv141, 56, !dbg !2885
  %xor143 = xor i64 %xor136, %shl142, !dbg !2886
    #dbg_value(i64 %xor143, !2887, !DIExpression(), !2888)
  %call144 = call fastcc i64 @mul_fx8(i8 noundef zeroext %and801, i64 noundef %xor143) #6, !dbg !2889
    #dbg_value(i64 %call144, !2887, !DIExpression(), !2888)
  %mul1464 = or disjoint i32 %i86.0, 1, !dbg !2890
  %add147 = mul i32 %mul1464, %A_cols, !dbg !2890
  %31 = getelementptr i8, ptr %A, i32 %add147, !dbg !2891
  %arrayidx149 = getelementptr i8, ptr %31, i32 -1, !dbg !2891
  %32 = load i8, ptr %arrayidx149, align 1, !dbg !2892
  %33 = trunc i64 %call144 to i8, !dbg !2892
  %34 = and i8 %33, 15, !dbg !2892
  %conv152 = xor i8 %34, %32, !dbg !2892
  store i8 %conv152, ptr %arrayidx149, align 1, !dbg !2892
  %shr = lshr i64 %call144, 8, !dbg !2893
  %mul1555 = or disjoint i32 %i86.0, 2, !dbg !2894
  %add156 = mul i32 %mul1555, %A_cols, !dbg !2894
  %35 = getelementptr i8, ptr %A, i32 %add156, !dbg !2895
  %arrayidx158 = getelementptr i8, ptr %35, i32 -1, !dbg !2895
  %36 = load i8, ptr %arrayidx158, align 1, !dbg !2896
  %37 = trunc i64 %shr to i8, !dbg !2896
  %38 = and i8 %37, 15, !dbg !2896
  %conv161 = xor i8 %38, %36, !dbg !2896
  store i8 %conv161, ptr %arrayidx158, align 1, !dbg !2896
  %shr162 = lshr i64 %call144, 16, !dbg !2897
  %mul1656 = or disjoint i32 %i86.0, 3, !dbg !2898
  %add166 = mul i32 %mul1656, %A_cols, !dbg !2898
  %39 = getelementptr i8, ptr %A, i32 %add166, !dbg !2899
  %arrayidx168 = getelementptr i8, ptr %39, i32 -1, !dbg !2899
  %40 = load i8, ptr %arrayidx168, align 1, !dbg !2900
  %41 = trunc i64 %shr162 to i8, !dbg !2900
  %42 = and i8 %41, 15, !dbg !2900
  %conv171 = xor i8 %42, %40, !dbg !2900
  store i8 %conv171, ptr %arrayidx168, align 1, !dbg !2900
  %shr172 = lshr i64 %call144, 24, !dbg !2901
  %mul1757 = or disjoint i32 %i86.0, 4, !dbg !2902
  %add176 = mul i32 %mul1757, %A_cols, !dbg !2902
  %43 = getelementptr i8, ptr %A, i32 %add176, !dbg !2903
  %arrayidx178 = getelementptr i8, ptr %43, i32 -1, !dbg !2903
  %44 = load i8, ptr %arrayidx178, align 1, !dbg !2904
  %45 = trunc i64 %shr172 to i8, !dbg !2904
  %46 = and i8 %45, 15, !dbg !2904
  %conv181 = xor i8 %46, %44, !dbg !2904
  store i8 %conv181, ptr %arrayidx178, align 1, !dbg !2904
  %shr182 = lshr i64 %call144, 32, !dbg !2905
  %mul1858 = or disjoint i32 %i86.0, 5, !dbg !2906
  %add186 = mul i32 %mul1858, %A_cols, !dbg !2906
  %47 = getelementptr i8, ptr %A, i32 %add186, !dbg !2907
  %arrayidx188 = getelementptr i8, ptr %47, i32 -1, !dbg !2907
  %48 = load i8, ptr %arrayidx188, align 1, !dbg !2908
  %49 = trunc i64 %shr182 to i8, !dbg !2908
  %50 = and i8 %49, 15, !dbg !2908
  %conv191 = xor i8 %50, %48, !dbg !2908
  store i8 %conv191, ptr %arrayidx188, align 1, !dbg !2908
  %shr192 = lshr i64 %call144, 40, !dbg !2909
  %mul1959 = or disjoint i32 %i86.0, 6, !dbg !2910
  %add196 = mul i32 %mul1959, %A_cols, !dbg !2910
  %51 = getelementptr i8, ptr %A, i32 %add196, !dbg !2911
  %arrayidx198 = getelementptr i8, ptr %51, i32 -1, !dbg !2911
  %52 = load i8, ptr %arrayidx198, align 1, !dbg !2912
  %53 = trunc i64 %shr192 to i8, !dbg !2912
  %54 = and i8 %53, 15, !dbg !2912
  %conv201 = xor i8 %54, %52, !dbg !2912
  store i8 %conv201, ptr %arrayidx198, align 1, !dbg !2912
  %shr202 = lshr i64 %call144, 48, !dbg !2913
  %mul20510 = or disjoint i32 %i86.0, 7, !dbg !2914
  %add206 = mul i32 %mul20510, %A_cols, !dbg !2914
  %55 = getelementptr i8, ptr %A, i32 %add206, !dbg !2915
  %arrayidx208 = getelementptr i8, ptr %55, i32 -1, !dbg !2915
  %56 = load i8, ptr %arrayidx208, align 1, !dbg !2916
  %57 = trunc i64 %shr202 to i8, !dbg !2916
  %58 = and i8 %57, 15, !dbg !2916
  %conv211 = xor i8 %58, %56, !dbg !2916
  store i8 %conv211, ptr %arrayidx208, align 1, !dbg !2916
  %shr212 = lshr i64 %call144, 56, !dbg !2917
  %mul21511 = add nuw i32 %i86.0, 8, !dbg !2918
  %add216 = mul i32 %mul21511, %A_cols, !dbg !2918
  %59 = getelementptr i8, ptr %A, i32 %add216, !dbg !2919
  %arrayidx218 = getelementptr i8, ptr %59, i32 -1, !dbg !2919
  %60 = load i8, ptr %arrayidx218, align 1, !dbg !2920
  %61 = trunc nuw nsw i64 %shr212 to i8, !dbg !2920
  %conv221 = xor i8 %60, %61, !dbg !2920
  store i8 %conv221, ptr %arrayidx218, align 1, !dbg !2920
  %add223 = add nuw nsw i32 %i86.0, 8, !dbg !2921
    #dbg_value(i32 %add223, !2833, !DIExpression(), !2835)
  br label %for.cond87, !dbg !2922, !llvm.loop !2923

for.inc229:                                       ; preds = %for.cond87
    #dbg_value(!DIArgList(i8 %finished.0, i8 %call70), !2807, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2707)
  %or2273 = or i8 %finished.0, %call70, !dbg !2925
    #dbg_value(i8 %or2273, !2807, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2707)
    #dbg_value(i8 %or2273, !2807, !DIExpression(), !2707)
  %inc230 = add nsw i32 %col.0, 1, !dbg !2926
    #dbg_value(i32 %inc230, !2811, !DIExpression(), !2813)
  br label %for.cond63, !dbg !2927, !llvm.loop !2928

return.loopexit:                                  ; preds = %for.cond50
  br label %return, !dbg !2930

return:                                           ; preds = %return.loopexit, %for.end45
  %retval.0 = phi i32 [ 0, %for.end45 ], [ 1, %return.loopexit ], !dbg !2707
  ret i32 %retval.0, !dbg !2930
}

; Function Attrs: nounwind
define internal fastcc void @mat_mul.21(ptr noundef %a, ptr noundef %b, ptr noundef %c, i32 noundef %colrow_ab, i32 noundef %row_a, i32 noundef %col_b) unnamed_addr #0 !dbg !2931 {
entry:
    #dbg_value(ptr %a, !2932, !DIExpression(), !2933)
    #dbg_value(ptr %b, !2934, !DIExpression(), !2933)
    #dbg_value(ptr %c, !2935, !DIExpression(), !2933)
    #dbg_value(i32 %colrow_ab, !2936, !DIExpression(), !2933)
    #dbg_value(i32 %row_a, !2937, !DIExpression(), !2933)
    #dbg_value(i32 %col_b, !2938, !DIExpression(), !2933)
    #dbg_value(i32 0, !2939, !DIExpression(), !2941)
  %smax = call i32 @llvm.smax.i32(i32 %col_b, i32 0), !dbg !2942
  %smax1 = call i32 @llvm.smax.i32(i32 %row_a, i32 0), !dbg !2942
  br label %for.cond, !dbg !2942

for.cond:                                         ; preds = %for.inc4, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc5, %for.inc4 ], !dbg !2943
  %c.addr.0 = phi ptr [ %c, %entry ], [ %c.addr.1.lcssa, %for.inc4 ]
  %a.addr.0 = phi ptr [ %a, %entry ], [ %add.ptr6, %for.inc4 ]
    #dbg_value(ptr %a.addr.0, !2932, !DIExpression(), !2933)
    #dbg_value(ptr %c.addr.0, !2935, !DIExpression(), !2933)
    #dbg_value(i32 %i.0, !2939, !DIExpression(), !2941)
  %exitcond2 = icmp ne i32 %i.0, %smax1, !dbg !2944
  br i1 %exitcond2, label %for.cond1.preheader, label %for.end7, !dbg !2946

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !2947

for.cond1:                                        ; preds = %for.cond1.preheader, %for.body3
  %c.addr.1 = phi ptr [ %incdec.ptr, %for.body3 ], [ %c.addr.0, %for.cond1.preheader ]
  %j.0 = phi i32 [ %inc, %for.body3 ], [ 0, %for.cond1.preheader ], !dbg !2950
    #dbg_value(i32 %j.0, !2951, !DIExpression(), !2952)
    #dbg_value(ptr %c.addr.1, !2935, !DIExpression(), !2933)
  %exitcond = icmp ne i32 %j.0, %smax, !dbg !2953
  br i1 %exitcond, label %for.body3, label %for.inc4, !dbg !2947

for.body3:                                        ; preds = %for.cond1
  %add.ptr = getelementptr inbounds nuw i8, ptr %b, i32 %j.0, !dbg !2955
  %call = call fastcc zeroext i8 @lincomb.24(ptr noundef %a.addr.0, ptr noundef %add.ptr, i32 noundef %colrow_ab, i32 noundef %col_b) #6, !dbg !2957
  store i8 %call, ptr %c.addr.1, align 1, !dbg !2958
  %inc = add nuw i32 %j.0, 1, !dbg !2959
    #dbg_value(i32 %inc, !2951, !DIExpression(), !2952)
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %c.addr.1, i32 1, !dbg !2960
    #dbg_value(ptr %incdec.ptr, !2935, !DIExpression(), !2933)
  br label %for.cond1, !dbg !2961, !llvm.loop !2962

for.inc4:                                         ; preds = %for.cond1
  %c.addr.1.lcssa = phi ptr [ %c.addr.1, %for.cond1 ]
  %inc5 = add nuw i32 %i.0, 1, !dbg !2964
    #dbg_value(i32 %inc5, !2939, !DIExpression(), !2941)
  %add.ptr6 = getelementptr inbounds i8, ptr %a.addr.0, i32 %colrow_ab, !dbg !2965
    #dbg_value(ptr %add.ptr6, !2932, !DIExpression(), !2933)
  br label %for.cond, !dbg !2966, !llvm.loop !2967

for.end7:                                         ; preds = %for.cond
  ret void, !dbg !2969
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @sub_f(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !2970 {
entry:
    #dbg_value(i8 %a, !2971, !DIExpression(), !2972)
    #dbg_value(i8 %b, !2973, !DIExpression(), !2972)
  %xor1 = xor i8 %a, %b, !dbg !2974
  ret i8 %xor1, !dbg !2975
}

; Function Attrs: nounwind
define internal fastcc void @EF(ptr noundef %A, i32 noundef %nrows, i32 noundef %ncols) unnamed_addr #0 !dbg !2976 {
entry:
  %_pivot_row = alloca [7 x i64], align 32
  %_pivot_row2 = alloca [7 x i64], align 32
  %packed_A = alloca [756 x i64], align 32
  %temp = alloca [126 x i8], align 1
    #dbg_value(ptr %A, !2980, !DIExpression(), !2981)
    #dbg_value(i32 %nrows, !2982, !DIExpression(), !2981)
    #dbg_value(i32 %ncols, !2983, !DIExpression(), !2981)
    #dbg_declare(ptr %_pivot_row, !2984, !DIExpression(), !2985)
    #dbg_declare(ptr %_pivot_row2, !2986, !DIExpression(), !2987)
    #dbg_declare(ptr %packed_A, !2988, !DIExpression(), !2992)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 32 dereferenceable(6048) %packed_A, i8 0, i32 6048, i1 false), !dbg !2992
  %add = add nsw i32 %ncols, 15, !dbg !2993
  %div = sdiv i32 %add, 16, !dbg !2994
    #dbg_value(i32 %div, !2995, !DIExpression(), !2981)
    #dbg_value(i32 0, !2996, !DIExpression(), !2998)
  %smax = call i32 @llvm.smax.i32(i32 %nrows, i32 0), !dbg !2999
  br label %for.cond, !dbg !2999

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !3000
    #dbg_value(i32 %i.0, !2996, !DIExpression(), !2998)
  %exitcond = icmp ne i32 %i.0, %smax, !dbg !3001
  br i1 %exitcond, label %for.body, label %for.cond3.preheader, !dbg !3003

for.cond3.preheader:                              ; preds = %for.cond
  %smax1 = call i32 @llvm.smax.i32(i32 %div, i32 0), !dbg !3004
  %smax5 = call i32 @llvm.smax.i32(i32 %ncols, i32 0), !dbg !3004
  br label %for.cond3, !dbg !3004

for.body:                                         ; preds = %for.cond
  %mul = mul nsw i32 %i.0, %ncols, !dbg !3006
  %add.ptr = getelementptr inbounds i8, ptr %A, i32 %mul, !dbg !3008
  %mul1 = mul nsw i32 %i.0, %div, !dbg !3009
  %add.ptr2 = getelementptr inbounds i64, ptr %packed_A, i32 %mul1, !dbg !3010
  call fastcc void @ef_pack_m_vec(ptr noundef %add.ptr, ptr noundef nonnull %add.ptr2, i32 noundef %ncols) #6, !dbg !3011
  %inc = add nuw i32 %i.0, 1, !dbg !3012
    #dbg_value(i32 %inc, !2996, !DIExpression(), !2998)
  br label %for.cond, !dbg !3013, !llvm.loop !3014

for.cond3:                                        ; preds = %for.cond3.preheader, %for.inc117
  %pivot_col.0 = phi i32 [ %inc118, %for.inc117 ], [ 0, %for.cond3.preheader ], !dbg !3016
  %pivot_row.0 = phi i32 [ %conv116, %for.inc117 ], [ 0, %for.cond3.preheader ], !dbg !2981
    #dbg_value(i32 %pivot_row.0, !3017, !DIExpression(), !2981)
    #dbg_value(i32 %pivot_col.0, !3018, !DIExpression(), !3019)
  %exitcond6 = icmp ne i32 %pivot_col.0, %smax5, !dbg !3020
  br i1 %exitcond6, label %for.body5, label %for.cond121.preheader, !dbg !3004

for.cond121.preheader:                            ; preds = %for.cond3
  br label %for.cond121, !dbg !3022

for.body5:                                        ; preds = %for.cond3
  %add6 = add nsw i32 %pivot_col.0, %nrows, !dbg !3024
  %cmp7 = icmp slt i32 %add6, %ncols, !dbg !3024
  %add8 = add nsw i32 %pivot_col.0, %nrows, !dbg !3024
  %sub9 = sub nsw i32 %add8, %ncols, !dbg !3024
  %cond = select i1 %cmp7, i32 0, i32 %sub9, !dbg !3024
    #dbg_value(i32 %cond, !3026, !DIExpression(), !3027)
  %sub13 = add nsw i32 %nrows, -1, !dbg !3028
    #dbg_value(i32 %cond16, !3029, !DIExpression(), !3027)
    #dbg_value(i32 0, !3030, !DIExpression(), !3032)
  br label %for.cond18, !dbg !3033

for.cond18:                                       ; preds = %for.body20, %for.body5
  %i17.0 = phi i32 [ 0, %for.body5 ], [ %inc23, %for.body20 ], !dbg !3034
    #dbg_value(i32 %i17.0, !3030, !DIExpression(), !3032)
  %exitcond2 = icmp ne i32 %i17.0, %smax1, !dbg !3035
  br i1 %exitcond2, label %for.body20, label %for.cond25.preheader, !dbg !3037

for.cond25.preheader:                             ; preds = %for.cond18
  %cmp11.not = icmp sgt i32 %nrows, %pivot_col.0, !dbg !3028
  %cond16 = select i1 %cmp11.not, i32 %pivot_col.0, i32 %sub13, !dbg !3028
  br label %for.cond25, !dbg !3038

for.body20:                                       ; preds = %for.cond18
  %arrayidx = getelementptr inbounds nuw [7 x i64], ptr %_pivot_row, i32 0, i32 %i17.0, !dbg !3040
  store i64 0, ptr %arrayidx, align 8, !dbg !3042
  %arrayidx21 = getelementptr inbounds nuw [7 x i64], ptr %_pivot_row2, i32 0, i32 %i17.0, !dbg !3043
  store i64 0, ptr %arrayidx21, align 8, !dbg !3044
  %inc23 = add nuw nsw i32 %i17.0, 1, !dbg !3045
    #dbg_value(i32 %inc23, !3030, !DIExpression(), !3032)
  br label %for.cond18, !dbg !3046, !llvm.loop !3047

for.cond25:                                       ; preds = %for.cond25.preheader, %for.end48
  %pivot_is_zero.0 = phi i64 [ %not52, %for.end48 ], [ -1, %for.cond25.preheader ], !dbg !3027
  %pivot.0 = phi i8 [ %call50, %for.end48 ], [ 0, %for.cond25.preheader ], !dbg !3027
  %row.0 = phi i32 [ %inc54, %for.end48 ], [ %cond, %for.cond25.preheader ], !dbg !3049
    #dbg_value(i32 %row.0, !3050, !DIExpression(), !3049)
    #dbg_value(i8 %pivot.0, !3051, !DIExpression(), !3027)
    #dbg_value(i64 %pivot_is_zero.0, !3052, !DIExpression(), !3027)
  %add27 = add nsw i32 %cond16, 32, !dbg !3053
  %cmp28.not = icmp sgt i32 %nrows, %add27, !dbg !3053
  %sub30 = add nsw i32 %nrows, -1, !dbg !3053
  %add32 = add nsw i32 %cond16, 32, !dbg !3053
  %cond34 = select i1 %cmp28.not, i32 %add32, i32 %sub30, !dbg !3053
  %cmp35.not = icmp sgt i32 %row.0, %cond34, !dbg !3055
  br i1 %cmp35.not, label %for.end55, label %for.body36, !dbg !3038

for.body36:                                       ; preds = %for.cond25
  %call = call fastcc i64 @ct_compare_64(i32 noundef %row.0, i32 noundef %pivot_row.0) #6, !dbg !3056
  %not = xor i64 %call, -1, !dbg !3058
    #dbg_value(i64 %not, !3059, !DIExpression(), !3060)
  %call37 = call fastcc i64 @ct_64_is_greater_than(i32 noundef %row.0, i32 noundef %pivot_row.0) #6, !dbg !3061
    #dbg_value(i64 %call37, !3062, !DIExpression(), !3060)
    #dbg_value(i32 0, !3063, !DIExpression(), !3065)
  br label %for.cond38, !dbg !3066

for.cond38:                                       ; preds = %for.body40, %for.body36
  %j.0 = phi i32 [ 0, %for.body36 ], [ %inc47, %for.body40 ], !dbg !3067
    #dbg_value(i32 %j.0, !3063, !DIExpression(), !3065)
  %exitcond3 = icmp ne i32 %j.0, %smax1, !dbg !3068
  br i1 %exitcond3, label %for.body40, label %for.end48, !dbg !3070

for.body40:                                       ; preds = %for.cond38
  %and = and i64 %call37, %pivot_is_zero.0, !dbg !3071
  %or = or i64 %and, %not, !dbg !3073
  %mul41 = mul nsw i32 %row.0, %div, !dbg !3074
  %add42 = add nsw i32 %mul41, %j.0, !dbg !3075
  %arrayidx43 = getelementptr inbounds [756 x i64], ptr %packed_A, i32 0, i32 %add42, !dbg !3076
  %0 = load i64, ptr %arrayidx43, align 8, !dbg !3076
  %and44 = and i64 %or, %0, !dbg !3077
  %arrayidx45 = getelementptr inbounds nuw [7 x i64], ptr %_pivot_row, i32 0, i32 %j.0, !dbg !3078
  %1 = load i64, ptr %arrayidx45, align 8, !dbg !3079
  %xor = xor i64 %1, %and44, !dbg !3079
  store i64 %xor, ptr %arrayidx45, align 8, !dbg !3079
  %inc47 = add nuw nsw i32 %j.0, 1, !dbg !3080
    #dbg_value(i32 %inc47, !3063, !DIExpression(), !3065)
  br label %for.cond38, !dbg !3081, !llvm.loop !3082

for.end48:                                        ; preds = %for.cond38
  %call50 = call fastcc zeroext i8 @m_extract_element(ptr noundef nonnull %_pivot_row, i32 noundef %pivot_col.0) #6, !dbg !3084
    #dbg_value(i8 %call50, !3051, !DIExpression(), !3027)
  %conv = zext nneg i8 %call50 to i32, !dbg !3085
  %call51 = call fastcc i64 @ct_compare_64(i32 noundef %conv, i32 noundef 0) #6, !dbg !3086
    #dbg_value(i64 %call51, !3052, !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_stack_value), !3027)
  %not52 = xor i64 %call51, -1, !dbg !3087
    #dbg_value(i64 %not52, !3052, !DIExpression(), !3027)
  %inc54 = add nsw i32 %row.0, 1, !dbg !3088
    #dbg_value(i32 %inc54, !3050, !DIExpression(), !3049)
  br label %for.cond25, !dbg !3089, !llvm.loop !3090

for.end55:                                        ; preds = %for.cond25
  %pivot_is_zero.0.lcssa = phi i64 [ %pivot_is_zero.0, %for.cond25 ], !dbg !3027
  %pivot.0.lcssa = phi i8 [ %pivot.0, %for.cond25 ], !dbg !3027
  %call56 = call fastcc zeroext i8 @inverse_f(i8 noundef zeroext %pivot.0.lcssa) #6, !dbg !3092
    #dbg_value(i8 %call56, !3093, !DIExpression(), !2981)
  call fastcc void @vec_mul_add_u64(i32 noundef %div, ptr noundef nonnull %_pivot_row, i8 noundef zeroext %call56, ptr noundef nonnull %_pivot_row2) #6, !dbg !3094
    #dbg_value(i32 %cond, !3095, !DIExpression(), !3097)
  br label %for.cond60, !dbg !3098

for.cond60:                                       ; preds = %for.inc86, %for.end55
  %row59.0 = phi i32 [ %cond, %for.end55 ], [ %inc87, %for.inc86 ], !dbg !3099
    #dbg_value(i32 %row59.0, !3095, !DIExpression(), !3097)
  %cmp61.not = icmp sgt i32 %row59.0, %cond16, !dbg !3100
  br i1 %cmp61.not, label %for.cond90.preheader, label %for.body63, !dbg !3102

for.cond90.preheader:                             ; preds = %for.cond60
  br label %for.cond90, !dbg !3103

for.body63:                                       ; preds = %for.cond60
  %call64 = call fastcc i64 @ct_compare_64(i32 noundef %row59.0, i32 noundef %pivot_row.0) #6, !dbg !3105
  %and67.demorgan = or i64 %call64, %pivot_is_zero.0.lcssa, !dbg !3107
  %and67 = xor i64 %and67.demorgan, -1, !dbg !3107
    #dbg_value(i64 %and67, !3108, !DIExpression(), !3109)
    #dbg_value(i64 %and67.demorgan, !3110, !DIExpression(), !3109)
    #dbg_value(i32 0, !3111, !DIExpression(), !3113)
  br label %for.cond69, !dbg !3114

for.cond69:                                       ; preds = %for.body72, %for.body63
  %col.0 = phi i32 [ 0, %for.body63 ], [ %inc84, %for.body72 ], !dbg !3115
    #dbg_value(i32 %col.0, !3111, !DIExpression(), !3113)
  %exitcond4 = icmp ne i32 %col.0, %smax1, !dbg !3116
  br i1 %exitcond4, label %for.body72, label %for.inc86, !dbg !3118

for.body72:                                       ; preds = %for.cond69
  %mul73 = mul nsw i32 %row59.0, %div, !dbg !3119
  %add74 = add nsw i32 %mul73, %col.0, !dbg !3121
  %arrayidx75 = getelementptr inbounds [756 x i64], ptr %packed_A, i32 0, i32 %add74, !dbg !3122
  %2 = load i64, ptr %arrayidx75, align 8, !dbg !3122
  %and76 = and i64 %and67.demorgan, %2, !dbg !3123
  %arrayidx77 = getelementptr inbounds nuw [7 x i64], ptr %_pivot_row2, i32 0, i32 %col.0, !dbg !3124
  %3 = load i64, ptr %arrayidx77, align 8, !dbg !3124
  %and78 = and i64 %3, %and67, !dbg !3125
  %add79 = add i64 %and76, %and78, !dbg !3126
  %mul80 = mul nsw i32 %row59.0, %div, !dbg !3127
  %add81 = add nsw i32 %mul80, %col.0, !dbg !3128
  %arrayidx82 = getelementptr inbounds [756 x i64], ptr %packed_A, i32 0, i32 %add81, !dbg !3129
  store i64 %add79, ptr %arrayidx82, align 8, !dbg !3130
  %inc84 = add nuw nsw i32 %col.0, 1, !dbg !3131
    #dbg_value(i32 %inc84, !3111, !DIExpression(), !3113)
  br label %for.cond69, !dbg !3132, !llvm.loop !3133

for.inc86:                                        ; preds = %for.cond69
  %inc87 = add nsw i32 %row59.0, 1, !dbg !3135
    #dbg_value(i32 %inc87, !3095, !DIExpression(), !3097)
  br label %for.cond60, !dbg !3136, !llvm.loop !3137

for.cond90:                                       ; preds = %for.cond90.preheader, %for.body93
  %row89.0 = phi i32 [ %inc110, %for.body93 ], [ %cond, %for.cond90.preheader ], !dbg !3139
    #dbg_value(i32 %row89.0, !3140, !DIExpression(), !3141)
  %cmp91 = icmp slt i32 %row89.0, %nrows, !dbg !3142
  br i1 %cmp91, label %for.body93, label %for.inc117, !dbg !3103

for.body93:                                       ; preds = %for.cond90
  %cmp94 = icmp sgt i32 %row89.0, %pivot_row.0, !dbg !3144
    #dbg_value(i1 %cmp94, !3146, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !3147)
  %mul98 = mul nsw i32 %row89.0, %div, !dbg !3148
  %add.ptr99 = getelementptr inbounds i64, ptr %packed_A, i32 %mul98, !dbg !3149
  %call100 = call fastcc zeroext i8 @m_extract_element(ptr noundef nonnull %add.ptr99, i32 noundef %pivot_col.0) #6, !dbg !3150
    #dbg_value(i8 %call100, !3151, !DIExpression(), !3147)
  %conv105 = select i1 %cmp94, i8 %call100, i8 0, !dbg !3152
  %mul107 = mul nsw i32 %row89.0, %div, !dbg !3153
  %add.ptr108 = getelementptr inbounds i64, ptr %packed_A, i32 %mul107, !dbg !3154
  call fastcc void @vec_mul_add_u64(i32 noundef %div, ptr noundef nonnull %_pivot_row2, i8 noundef zeroext %conv105, ptr noundef nonnull %add.ptr108) #6, !dbg !3155
  %inc110 = add nsw i32 %row89.0, 1, !dbg !3156
    #dbg_value(i32 %inc110, !3140, !DIExpression(), !3141)
  br label %for.cond90, !dbg !3157, !llvm.loop !3158

for.inc117:                                       ; preds = %for.cond90
    #dbg_value(!DIArgList(i64 %pivot_is_zero.0.lcssa, i32 %pivot_row.0), !3017, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_plus_uconst, 1, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2981)
  %4 = trunc i64 %pivot_is_zero.0.lcssa to i32, !dbg !3160
  %5 = add i32 %4, 1, !dbg !3160
  %conv116 = add i32 %5, %pivot_row.0, !dbg !3160
    #dbg_value(i32 %conv116, !3017, !DIExpression(), !2981)
  %inc118 = add nuw i32 %pivot_col.0, 1, !dbg !3161
    #dbg_value(i32 %inc118, !3018, !DIExpression(), !3019)
  br label %for.cond3, !dbg !3162, !llvm.loop !3163

for.cond121:                                      ; preds = %for.cond121.preheader, %for.inc141
  %i120.0 = phi i32 [ %inc142, %for.inc141 ], [ 0, %for.cond121.preheader ], !dbg !3165
    #dbg_value(i32 %i120.0, !3166, !DIExpression(), !3167)
  %exitcond8 = icmp ne i32 %i120.0, %smax, !dbg !3168
  br i1 %exitcond8, label %for.body124, label %for.end143, !dbg !3022

for.body124:                                      ; preds = %for.cond121
  %mul126 = mul nsw i32 %i120.0, %div, !dbg !3170
  %add.ptr127 = getelementptr inbounds i64, ptr %packed_A, i32 %mul126, !dbg !3172
  call fastcc void @ef_unpack_m_vec(i32 noundef %div, ptr noundef nonnull %add.ptr127, ptr noundef nonnull %temp) #6, !dbg !3173
    #dbg_value(i32 0, !3174, !DIExpression(), !3176)
  br label %for.cond130, !dbg !3177

for.cond130:                                      ; preds = %for.body133, %for.body124
  %j129.0 = phi i32 [ 0, %for.body124 ], [ %inc139, %for.body133 ], !dbg !3178
    #dbg_value(i32 %j129.0, !3174, !DIExpression(), !3176)
  %exitcond7 = icmp ne i32 %j129.0, %smax5, !dbg !3179
  br i1 %exitcond7, label %for.body133, label %for.inc141, !dbg !3181

for.body133:                                      ; preds = %for.cond130
  %arrayidx134 = getelementptr inbounds nuw [126 x i8], ptr %temp, i32 0, i32 %j129.0, !dbg !3182
  %6 = load i8, ptr %arrayidx134, align 1, !dbg !3182
  %mul135 = mul nsw i32 %i120.0, %ncols, !dbg !3184
  %7 = getelementptr i8, ptr %A, i32 %mul135, !dbg !3185
  %arrayidx137 = getelementptr i8, ptr %7, i32 %j129.0, !dbg !3185
  store i8 %6, ptr %arrayidx137, align 1, !dbg !3186
  %inc139 = add nuw i32 %j129.0, 1, !dbg !3187
    #dbg_value(i32 %inc139, !3174, !DIExpression(), !3176)
  br label %for.cond130, !dbg !3188, !llvm.loop !3189

for.inc141:                                       ; preds = %for.cond130
  %inc142 = add nuw i32 %i120.0, 1, !dbg !3191
    #dbg_value(i32 %inc142, !3166, !DIExpression(), !3167)
  br label %for.cond121, !dbg !3192, !llvm.loop !3193

for.end143:                                       ; preds = %for.cond121
  call void @mayo_secure_clear(ptr noundef nonnull %temp, i32 noundef 126) #8, !dbg !3195
  call void @mayo_secure_clear(ptr noundef nonnull %_pivot_row, i32 noundef 56) #8, !dbg !3196
  call void @mayo_secure_clear(ptr noundef nonnull %_pivot_row2, i32 noundef 56) #8, !dbg !3197
  call void @mayo_secure_clear(ptr noundef nonnull %packed_A, i32 noundef 6048) #8, !dbg !3198
  ret void, !dbg !3199
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @ct_compare_8(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !3200 {
entry:
    #dbg_value(i8 %a, !3202, !DIExpression(), !3203)
    #dbg_value(i8 %b, !3204, !DIExpression(), !3203)
  %0 = icmp ne i8 %a, %b, !dbg !3205
  %conv3 = sext i1 %0 to i8, !dbg !3206
  %1 = load volatile i8, ptr @pqmayo_MAYO_3_ref_unsigned_char_blocker, align 1, !dbg !3207
  %xor5 = xor i8 %1, %conv3, !dbg !3208
  ret i8 %xor5, !dbg !3209
}

; Function Attrs: nounwind
define internal fastcc range(i64 0, 1085102592571150096) i64 @mul_fx8(i8 noundef zeroext %a, i64 noundef %b) unnamed_addr #0 !dbg !3210 {
entry:
    #dbg_value(i8 %a, !3213, !DIExpression(), !3214)
    #dbg_value(i64 %b, !3215, !DIExpression(), !3214)
  %0 = and i8 %a, 1, !dbg !3216
  %conv1 = zext nneg i8 %0 to i64, !dbg !3217
  %mul = mul nuw nsw i64 %b, %conv1, !dbg !3218
    #dbg_value(i64 %mul, !3219, !DIExpression(), !3214)
  %1 = and i8 %a, 2, !dbg !3220
  %conv4 = zext nneg i8 %1 to i64, !dbg !3221
  %mul5 = mul i64 %b, %conv4, !dbg !3222
  %xor = xor i64 %mul, %mul5, !dbg !3223
    #dbg_value(i64 %xor, !3219, !DIExpression(), !3214)
  %2 = and i8 %a, 4, !dbg !3224
  %conv8 = zext nneg i8 %2 to i64, !dbg !3225
  %mul9 = mul i64 %b, %conv8, !dbg !3226
  %xor10 = xor i64 %xor, %mul9, !dbg !3227
    #dbg_value(i64 %xor10, !3219, !DIExpression(), !3214)
  %3 = and i8 %a, 8, !dbg !3228
  %conv13 = zext nneg i8 %3 to i64, !dbg !3229
  %mul14 = mul i64 %b, %conv13, !dbg !3230
  %xor15 = xor i64 %xor10, %mul14, !dbg !3231
    #dbg_value(i64 %xor15, !3219, !DIExpression(), !3214)
    #dbg_value(i64 %xor15, !3232, !DIExpression(DW_OP_constu, 17361641481138401520, DW_OP_and, DW_OP_stack_value), !3214)
  %shr = lshr i64 %xor15, 4, !dbg !3233
  %and16 = lshr i64 %xor15, 3, !dbg !3234
  %shr18 = and i64 %and16, 1012762419733073422, !dbg !3234
  %4 = xor i64 %shr, %shr18, !dbg !3235
  %xor19 = xor i64 %4, %xor15, !dbg !3235
  %and20 = and i64 %xor19, 1085102592571150095, !dbg !3236
    #dbg_value(i64 %and20, !3237, !DIExpression(), !3214)
  ret i64 %and20, !dbg !3238
}

; Function Attrs: nounwind
define internal fastcc void @ef_pack_m_vec(ptr noundef %in, ptr noundef %out, i32 noundef %ncols) unnamed_addr #0 !dbg !3239 {
entry:
    #dbg_value(ptr %in, !3242, !DIExpression(), !3243)
    #dbg_value(ptr %out, !3244, !DIExpression(), !3243)
    #dbg_value(i32 %ncols, !3245, !DIExpression(), !3243)
    #dbg_value(ptr %out, !3246, !DIExpression(), !3243)
    #dbg_value(i32 0, !3247, !DIExpression(), !3243)
  br label %for.cond, !dbg !3248

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %add8, %for.body ], !dbg !3250
    #dbg_value(i32 %i.0, !3247, !DIExpression(), !3243)
  %add = or disjoint i32 %i.0, 1, !dbg !3251
  %cmp = icmp slt i32 %add, %ncols, !dbg !3253
  br i1 %cmp, label %for.body, label %for.end, !dbg !3254

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %in, i32 %i.0, !dbg !3255
  %0 = load i8, ptr %arrayidx, align 1, !dbg !3255
  %add2 = or disjoint i32 %i.0, 1, !dbg !3257
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %in, i32 %add2, !dbg !3258
  %1 = load i8, ptr %arrayidx3, align 1, !dbg !3258
  %shl5 = shl i8 %1, 4, !dbg !3259
  %or = or i8 %shl5, %0, !dbg !3260
  %div = lshr exact i32 %i.0, 1, !dbg !3261
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %out, i32 %div, !dbg !3262
  store i8 %or, ptr %arrayidx7, align 1, !dbg !3263
  %add8 = add nuw nsw i32 %i.0, 2, !dbg !3264
    #dbg_value(i32 %add8, !3247, !DIExpression(), !3243)
  br label %for.cond, !dbg !3265, !llvm.loop !3266

for.end:                                          ; preds = %for.cond
  %i.0.lcssa = phi i32 [ %i.0, %for.cond ], !dbg !3250
  %2 = and i32 %ncols, -2147483647, !dbg !3268
  %cmp9 = icmp eq i32 %2, 1, !dbg !3268
  br i1 %cmp9, label %if.then, label %if.end, !dbg !3268

if.then:                                          ; preds = %for.end
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %in, i32 %i.0.lcssa, !dbg !3270
  %3 = load i8, ptr %arrayidx12, align 1, !dbg !3270
  %div16 = lshr exact i32 %i.0.lcssa, 1, !dbg !3272
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %out, i32 %div16, !dbg !3273
  store i8 %3, ptr %arrayidx17, align 1, !dbg !3274
  br label %if.end, !dbg !3275

if.end:                                           ; preds = %if.then, %for.end
  ret void, !dbg !3276
}

; Function Attrs: nounwind
define internal fastcc i64 @ct_compare_64(i32 noundef %a, i32 noundef %b) unnamed_addr #0 !dbg !3277 {
entry:
    #dbg_value(i32 %a, !3280, !DIExpression(), !3281)
    #dbg_value(i32 %b, !3282, !DIExpression(), !3281)
  %xor = xor i32 %a, %b, !dbg !3283
  %0 = icmp sgt i32 %xor, 0, !dbg !3284
  %shr = sext i1 %0 to i64, !dbg !3284
  %1 = load volatile i64, ptr @pqmayo_MAYO_3_ref_uint64_t_blocker, align 8, !dbg !3285
  %xor1 = xor i64 %1, %shr, !dbg !3286
  ret i64 %xor1, !dbg !3287
}

; Function Attrs: nounwind
define internal fastcc i64 @ct_64_is_greater_than(i32 noundef %a, i32 noundef %b) unnamed_addr #0 !dbg !3288 {
entry:
    #dbg_value(i32 %a, !3289, !DIExpression(), !3290)
    #dbg_value(i32 %b, !3291, !DIExpression(), !3290)
    #dbg_value(!DIArgList(i32 %b, i32 %a), !3292, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_minus, DW_OP_stack_value), !3290)
  %0 = icmp slt i32 %b, %a, !dbg !3293
  %shr = sext i1 %0 to i64, !dbg !3293
  %1 = load volatile i64, ptr @pqmayo_MAYO_3_ref_uint64_t_blocker, align 8, !dbg !3294
  %xor = xor i64 %1, %shr, !dbg !3295
  ret i64 %xor, !dbg !3296
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @m_extract_element(ptr noundef %in, i32 noundef %index) unnamed_addr #0 !dbg !3297 {
entry:
    #dbg_value(ptr %in, !3300, !DIExpression(), !3301)
    #dbg_value(i32 %index, !3302, !DIExpression(), !3301)
  %div = sdiv i32 %index, 16, !dbg !3303
    #dbg_value(i32 %div, !3304, !DIExpression(), !3301)
  %rem = srem i32 %index, 16, !dbg !3305
    #dbg_value(i32 %rem, !3306, !DIExpression(), !3301)
  %arrayidx = getelementptr inbounds i64, ptr %in, i32 %div, !dbg !3307
  %0 = load i64, ptr %arrayidx, align 8, !dbg !3307
  %mul = shl nsw i32 %rem, 2, !dbg !3308
  %sh_prom = zext nneg i32 %mul to i64, !dbg !3309
  %shr = lshr i64 %0, %sh_prom, !dbg !3309
  %1 = trunc i64 %shr to i8, !dbg !3310
  %conv = and i8 %1, 15, !dbg !3310
  ret i8 %conv, !dbg !3311
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @inverse_f(i8 noundef zeroext %a) unnamed_addr #0 !dbg !3312 {
entry:
    #dbg_value(i8 %a, !3315, !DIExpression(), !3316)
  %call = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %a, i8 noundef zeroext %a) #6, !dbg !3317
    #dbg_value(i8 %call, !3318, !DIExpression(), !3316)
  %call1 = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %call, i8 noundef zeroext %call) #6, !dbg !3319
    #dbg_value(i8 %call1, !3320, !DIExpression(), !3316)
  %call2 = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %call1, i8 noundef zeroext %call1) #6, !dbg !3321
    #dbg_value(i8 %call2, !3322, !DIExpression(), !3316)
  %call3 = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %call, i8 noundef zeroext %call1) #6, !dbg !3323
    #dbg_value(i8 %call3, !3324, !DIExpression(), !3316)
  %call4 = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %call2, i8 noundef zeroext %call3) #6, !dbg !3325
    #dbg_value(i8 %call4, !3326, !DIExpression(), !3316)
  ret i8 %call4, !dbg !3327
}

; Function Attrs: nounwind
define internal fastcc void @vec_mul_add_u64(i32 noundef %legs, ptr noundef %in, i8 noundef zeroext %a, ptr noundef %acc) unnamed_addr #0 !dbg !3328 {
entry:
    #dbg_value(i32 %legs, !3331, !DIExpression(), !3332)
    #dbg_value(ptr %in, !3333, !DIExpression(), !3332)
    #dbg_value(i8 %a, !3334, !DIExpression(), !3332)
    #dbg_value(ptr %acc, !3335, !DIExpression(), !3332)
  %call = call fastcc i32 @mul_table.22(i8 noundef zeroext %a) #6, !dbg !3336
    #dbg_value(i32 %call, !3337, !DIExpression(), !3332)
    #dbg_value(i64 1229782938247303441, !3338, !DIExpression(), !3332)
    #dbg_value(i32 0, !3339, !DIExpression(), !3341)
  %smax = call i32 @llvm.smax.i32(i32 %legs, i32 0), !dbg !3342
  br label %for.cond, !dbg !3342

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !3343
    #dbg_value(i32 %i.0, !3339, !DIExpression(), !3341)
  %exitcond = icmp ne i32 %i.0, %smax, !dbg !3344
  br i1 %exitcond, label %for.body, label %for.end, !dbg !3346

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !3347
  %0 = load i64, ptr %arrayidx, align 8, !dbg !3347
  %and = and i64 %0, 1229782938247303441, !dbg !3349
  %and1 = and i32 %call, 255, !dbg !3350
  %conv = zext nneg i32 %and1 to i64, !dbg !3351
  %mul = mul i64 %and, %conv, !dbg !3352
  %shr = lshr i64 %0, 1, !dbg !3353
  %and3 = and i64 %shr, 1229782938247303441, !dbg !3354
  %shr4 = lshr i32 %call, 8, !dbg !3355
  %and5 = and i32 %shr4, 15, !dbg !3356
  %conv6 = zext nneg i32 %and5 to i64, !dbg !3357
  %mul7 = mul nuw i64 %and3, %conv6, !dbg !3358
  %xor = xor i64 %mul, %mul7, !dbg !3359
  %arrayidx8 = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !3360
  %1 = load i64, ptr %arrayidx8, align 8, !dbg !3360
  %shr9 = lshr i64 %1, 2, !dbg !3361
  %and10 = and i64 %shr9, 1229782938247303441, !dbg !3362
  %shr11 = lshr i32 %call, 16, !dbg !3363
  %and12 = and i32 %shr11, 15, !dbg !3364
  %conv13 = zext nneg i32 %and12 to i64, !dbg !3365
  %mul14 = mul nuw i64 %and10, %conv13, !dbg !3366
  %xor15 = xor i64 %xor, %mul14, !dbg !3367
  %arrayidx16 = getelementptr inbounds nuw i64, ptr %in, i32 %i.0, !dbg !3368
  %2 = load i64, ptr %arrayidx16, align 8, !dbg !3368
  %shr17 = lshr i64 %2, 3, !dbg !3369
  %and18 = and i64 %shr17, 1229782938247303441, !dbg !3370
  %shr19 = lshr i32 %call, 24, !dbg !3371
  %and20 = and i32 %shr19, 15, !dbg !3372
  %conv21 = zext nneg i32 %and20 to i64, !dbg !3373
  %mul22 = mul nuw i64 %and18, %conv21, !dbg !3374
  %xor23 = xor i64 %xor15, %mul22, !dbg !3375
  %arrayidx24 = getelementptr inbounds nuw i64, ptr %acc, i32 %i.0, !dbg !3376
  %3 = load i64, ptr %arrayidx24, align 8, !dbg !3377
  %xor25 = xor i64 %3, %xor23, !dbg !3377
  store i64 %xor25, ptr %arrayidx24, align 8, !dbg !3377
  %inc = add nuw i32 %i.0, 1, !dbg !3378
    #dbg_value(i32 %inc, !3339, !DIExpression(), !3341)
  br label %for.cond, !dbg !3379, !llvm.loop !3380

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3382
}

; Function Attrs: nounwind
define internal fastcc void @ef_unpack_m_vec(i32 noundef %legs, ptr noundef %in, ptr noundef %out) unnamed_addr #0 !dbg !3383 {
entry:
    #dbg_value(i32 %legs, !3386, !DIExpression(), !3387)
    #dbg_value(ptr %in, !3388, !DIExpression(), !3387)
    #dbg_value(ptr %out, !3389, !DIExpression(), !3387)
    #dbg_value(ptr %in, !3390, !DIExpression(), !3387)
    #dbg_value(i32 0, !3391, !DIExpression(), !3393)
  br label %for.cond, !dbg !3394

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %add8, %for.body ], !dbg !3395
    #dbg_value(i32 %i.0, !3391, !DIExpression(), !3393)
  %mul = shl nsw i32 %legs, 4, !dbg !3396
  %cmp = icmp slt i32 %i.0, %mul, !dbg !3398
  br i1 %cmp, label %for.body, label %for.end, !dbg !3399

for.body:                                         ; preds = %for.cond
  %div = lshr exact i32 %i.0, 1, !dbg !3400
  %arrayidx = getelementptr inbounds nuw i8, ptr %in, i32 %div, !dbg !3402
  %0 = load i8, ptr %arrayidx, align 1, !dbg !3402
  %1 = and i8 %0, 15, !dbg !3403
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %out, i32 %i.0, !dbg !3404
  store i8 %1, ptr %arrayidx2, align 1, !dbg !3405
  %div3 = lshr exact i32 %i.0, 1, !dbg !3406
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %in, i32 %div3, !dbg !3407
  %2 = load i8, ptr %arrayidx4, align 1, !dbg !3407
  %3 = lshr i8 %2, 4, !dbg !3408
  %add = or disjoint i32 %i.0, 1, !dbg !3409
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %out, i32 %add, !dbg !3410
  store i8 %3, ptr %arrayidx7, align 1, !dbg !3411
  %add8 = add nuw nsw i32 %i.0, 2, !dbg !3412
    #dbg_value(i32 %add8, !3391, !DIExpression(), !3393)
  br label %for.cond, !dbg !3413, !llvm.loop !3414

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3416
}

; Function Attrs: nounwind
define internal fastcc i32 @mul_table.22(i8 noundef zeroext %b) unnamed_addr #0 !dbg !3417 {
entry:
    #dbg_value(i8 %b, !3418, !DIExpression(), !3419)
  %conv = zext i8 %b to i32, !dbg !3420
  %mul = mul i32 %conv, 134480385, !dbg !3421
    #dbg_value(i32 %mul, !3422, !DIExpression(), !3419)
    #dbg_value(i32 -252645136, !3423, !DIExpression(), !3419)
  %and = and i32 %mul, -252645136, !dbg !3424
    #dbg_value(i32 %and, !3425, !DIExpression(), !3419)
  %shr = lshr exact i32 %and, 4, !dbg !3426
  %shr1 = lshr exact i32 %and, 3, !dbg !3427
  %0 = xor i32 %shr, %shr1, !dbg !3428
  %xor2 = xor i32 %0, %mul, !dbg !3428
  ret i32 %xor2, !dbg !3429
}

; Function Attrs: nounwind
define internal fastcc zeroext range(i8 0, 16) i8 @mul_f.23(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !3430 {
entry:
    #dbg_value(i8 %a, !3431, !DIExpression(), !3432)
    #dbg_value(i8 %b, !3433, !DIExpression(), !3432)
  %0 = load volatile i8, ptr @pqmayo_MAYO_3_ref_unsigned_char_blocker, align 1, !dbg !3434
  %xor1 = xor i8 %a, %0, !dbg !3435
    #dbg_value(i8 %xor1, !3431, !DIExpression(), !3432)
  %1 = trunc i8 %xor1 to i1, !dbg !3436
    #dbg_value(i8 poison, !3437, !DIExpression(), !3432)
  %2 = and i8 %xor1, 2, !dbg !3438
  %mul9 = mul i8 %2, %b, !dbg !3439
  %conv10 = select i1 %1, i8 %b, i8 0, !dbg !3436
  %xor11 = xor i8 %conv10, %mul9, !dbg !3440
    #dbg_value(i8 %xor11, !3437, !DIExpression(), !3432)
  %3 = and i8 %xor1, 4, !dbg !3441
  %mul16 = mul i8 %3, %b, !dbg !3442
  %xor18 = xor i8 %mul16, %xor11, !dbg !3443
    #dbg_value(i8 %xor18, !3437, !DIExpression(), !3432)
  %4 = and i8 %xor1, 8, !dbg !3444
  %mul23 = mul i8 %4, %b, !dbg !3445
  %xor25 = xor i8 %mul23, %xor18, !dbg !3446
    #dbg_value(i8 %xor25, !3437, !DIExpression(), !3432)
    #dbg_value(i8 %xor25, !3447, !DIExpression(DW_OP_constu, 18446744073709551600, DW_OP_and, DW_OP_stack_value), !3432)
  %5 = lshr i8 %xor25, 4, !dbg !3448
  %6 = lshr i8 %xor25, 3, !dbg !3449
  %7 = and i8 %6, 14, !dbg !3449
  %8 = xor i8 %5, %7, !dbg !3450
  %xor25.masked = and i8 %xor25, 15, !dbg !3451
  %9 = xor i8 %8, %xor25.masked, !dbg !3451
    #dbg_value(i8 %9, !3452, !DIExpression(), !3432)
  ret i8 %9, !dbg !3453
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @lincomb.24(ptr noundef %a, ptr noundef %b, i32 noundef %n, i32 noundef %m) unnamed_addr #0 !dbg !3454 {
entry:
    #dbg_value(ptr %a, !3455, !DIExpression(), !3456)
    #dbg_value(ptr %b, !3457, !DIExpression(), !3456)
    #dbg_value(i32 %n, !3458, !DIExpression(), !3456)
    #dbg_value(i32 %m, !3459, !DIExpression(), !3456)
    #dbg_value(i8 0, !3460, !DIExpression(), !3456)
    #dbg_value(i32 0, !3461, !DIExpression(), !3463)
  %smax = call i32 @llvm.smax.i32(i32 %n, i32 0), !dbg !3464
  br label %for.cond, !dbg !3464

for.cond:                                         ; preds = %for.body, %entry
  %ret.0 = phi i8 [ 0, %entry ], [ %call1, %for.body ], !dbg !3456
  %b.addr.0 = phi ptr [ %b, %entry ], [ %add.ptr, %for.body ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !3465
    #dbg_value(i32 %i.0, !3461, !DIExpression(), !3463)
    #dbg_value(ptr %b.addr.0, !3457, !DIExpression(), !3456)
    #dbg_value(i8 %ret.0, !3460, !DIExpression(), !3456)
  %exitcond = icmp ne i32 %i.0, %smax, !dbg !3466
  br i1 %exitcond, label %for.body, label %for.end, !dbg !3468

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %a, i32 %i.0, !dbg !3469
  %0 = load i8, ptr %arrayidx, align 1, !dbg !3469
  %1 = load i8, ptr %b.addr.0, align 1, !dbg !3471
  %call = call fastcc zeroext i8 @mul_f.23(i8 noundef zeroext %0, i8 noundef zeroext %1) #6, !dbg !3472
  %call1 = call fastcc zeroext i8 @add_f.25(i8 noundef zeroext %call, i8 noundef zeroext %ret.0) #6, !dbg !3473
    #dbg_value(i8 %call1, !3460, !DIExpression(), !3456)
  %inc = add nuw i32 %i.0, 1, !dbg !3474
    #dbg_value(i32 %inc, !3461, !DIExpression(), !3463)
  %add.ptr = getelementptr inbounds i8, ptr %b.addr.0, i32 %m, !dbg !3475
    #dbg_value(ptr %add.ptr, !3457, !DIExpression(), !3456)
  br label %for.cond, !dbg !3476, !llvm.loop !3477

for.end:                                          ; preds = %for.cond
  %ret.0.lcssa = phi i8 [ %ret.0, %for.cond ], !dbg !3456
  ret i8 %ret.0.lcssa, !dbg !3479
}

; Function Attrs: nounwind
define internal fastcc zeroext i8 @add_f.25(i8 noundef zeroext %a, i8 noundef zeroext %b) unnamed_addr #0 !dbg !3480 {
entry:
    #dbg_value(i8 %a, !3481, !DIExpression(), !3482)
    #dbg_value(i8 %b, !3483, !DIExpression(), !3482)
  %xor1 = xor i8 %a, %b, !dbg !3484
  ret i8 %xor1, !dbg !3485
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
!83 = distinct !DIGlobalVariable(name: "pqmayo_MAYO_3_ref_uint32_t_blocker", scope: !84, file: !99, line: 126, type: !104, isLocal: false, isDefinition: true)
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
!98 = distinct !DIGlobalVariable(name: "pqmayo_MAYO_3_ref_uint64_t_blocker", scope: !84, file: !99, line: 127, type: !100, isLocal: false, isDefinition: true)
!99 = !DIFile(filename: "../../../src/arithmetic.c", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!100 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !53)
!101 = !DIGlobalVariableExpression(var: !102, expr: !DIExpression())
!102 = distinct !DIGlobalVariable(name: "pqmayo_MAYO_3_ref_unsigned_char_blocker", scope: !84, file: !99, line: 128, type: !103, isLocal: false, isDefinition: true)
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
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sk_t", file: !79, line: 291, size: 3129408, elements: !168)
!168 = !{!169, !173}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !167, file: !79, line: 292, baseType: !170, size: 3120768)
!170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 3120768, elements: !171)
!171 = !{!172}
!172 = !DISubrange(count: 48762)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "O", scope: !167, file: !79, line: 293, baseType: !174, size: 8640, offset: 3120768)
!174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !175, size: 8640, elements: !177)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !54, line: 24, baseType: !176)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !56, line: 43, baseType: !51)
!177 = !{!178}
!178 = !DISubrange(count: 1080)
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
!261 = distinct !DISubprogram(name: "pqmayo_MAYO_3_ref_mayo_keypair", scope: !68, file: !68, line: 298, type: !262, scopeLine: 298, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !71)
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
!301 = distinct !DISubprogram(name: "pqmayo_MAYO_3_ref_mayo_keypair_compact", scope: !68, file: !68, line: 538, type: !262, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !71)
!302 = !DILocalVariable(name: "p", arg: 1, scope: !301, file: !68, line: 538, type: !264)
!303 = !DILocation(line: 0, scope: !301)
!304 = !DILocalVariable(name: "cpk", arg: 2, scope: !301, file: !68, line: 538, type: !61)
!305 = !DILocalVariable(name: "csk", arg: 3, scope: !301, file: !68, line: 539, type: !61)
!306 = !DILocalVariable(name: "ret", scope: !301, file: !68, line: 540, type: !86)
!307 = !DILocalVariable(name: "seed_sk", scope: !301, file: !68, line: 541, type: !61)
!308 = !DILocalVariable(name: "S", scope: !301, file: !68, line: 542, type: !309)
!309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 4448, elements: !310)
!310 = !{!311}
!311 = !DISubrange(count: 556)
!312 = !DILocation(line: 542, column: 19, scope: !301)
!313 = !DILocalVariable(name: "P", scope: !301, file: !68, line: 543, type: !170)
!314 = !DILocation(line: 543, column: 14, scope: !301)
!315 = !DILocalVariable(name: "P3", scope: !301, file: !68, line: 544, type: !316)
!316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 44800, elements: !317)
!317 = !{!318}
!318 = !DISubrange(count: 700)
!319 = !DILocation(line: 544, column: 14, scope: !301)
!320 = !DILocalVariable(name: "O", scope: !301, file: !68, line: 547, type: !321)
!321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 8640, elements: !177)
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
!347 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 24640, elements: !348)
!348 = !{!349}
!349 = !DISubrange(count: 385)
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
!677 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 448, elements: !10)
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
!702 = distinct !DISubprogram(name: "pqmayo_MAYO_3_ref_mayo_expand_sk", scope: !68, file: !68, line: 310, type: !703, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !71)
!703 = !DISubroutineType(types: !704)
!704 = !{!86, !264, !90, !705}
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 32)
!706 = !DIDerivedType(tag: DW_TAG_typedef, name: "sk_t", file: !79, line: 294, baseType: !707)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sk_t", file: !79, line: 291, size: 3129408, elements: !708)
!708 = !{!709, !710}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !707, file: !79, line: 292, baseType: !170, size: 3120768)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "O", scope: !707, file: !79, line: 293, baseType: !174, size: 8640, offset: 3120768)
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
!805 = distinct !DISubprogram(name: "pqmayo_MAYO_3_ref_mayo_sign_signature", scope: !68, file: !68, line: 359, type: !806, scopeLine: 361, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !71)
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
!817 = !DILocalVariable(name: "tenc", scope: !805, file: !68, line: 363, type: !818)
!818 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 432, elements: !819)
!819 = !{!820}
!820 = !DISubrange(count: 54)
!821 = !DILocation(line: 363, column: 19, scope: !805)
!822 = !DILocalVariable(name: "t", scope: !805, file: !68, line: 363, type: !823)
!823 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 864, elements: !824)
!824 = !{!825}
!825 = !DISubrange(count: 108)
!826 = !DILocation(line: 363, column: 38, scope: !805)
!827 = !DILocalVariable(name: "y", scope: !805, file: !68, line: 364, type: !823)
!828 = !DILocation(line: 364, column: 19, scope: !805)
!829 = !DILocalVariable(name: "salt", scope: !805, file: !68, line: 365, type: !184)
!830 = !DILocation(line: 365, column: 19, scope: !805)
!831 = !DILocalVariable(name: "V", scope: !805, file: !68, line: 366, type: !832)
!832 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 5192, elements: !833)
!833 = !{!834}
!834 = !DISubrange(count: 649)
!835 = !DILocation(line: 366, column: 19, scope: !805)
!836 = !DILocalVariable(name: "Vdec", scope: !805, file: !68, line: 366, type: !837)
!837 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 9504, elements: !838)
!838 = !{!839}
!839 = !DISubrange(count: 1188)
!840 = !DILocation(line: 366, column: 57, scope: !805)
!841 = !DILocalVariable(name: "A", scope: !805, file: !68, line: 367, type: !842)
!842 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 99456, elements: !843)
!843 = !{!844}
!844 = !DISubrange(count: 12432)
!845 = !DILocation(line: 367, column: 19, scope: !805)
!846 = !DILocalVariable(name: "x", scope: !805, file: !68, line: 368, type: !847)
!847 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 10384, elements: !848)
!848 = !{!849}
!849 = !DISubrange(count: 1298)
!850 = !DILocation(line: 368, column: 19, scope: !805)
!851 = !DILocalVariable(name: "r", scope: !805, file: !68, line: 369, type: !852)
!852 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 888, elements: !853)
!853 = !{!854}
!854 = !DISubrange(count: 111)
!855 = !DILocation(line: 369, column: 19, scope: !805)
!856 = !DILocalVariable(name: "s", scope: !805, file: !68, line: 370, type: !847)
!857 = !DILocation(line: 370, column: 19, scope: !805)
!858 = !DILocalVariable(name: "sk", scope: !805, file: !68, line: 372, type: !706, align: 256)
!859 = !DILocation(line: 372, column: 22, scope: !805)
!860 = !DILocalVariable(name: "Ox", scope: !805, file: !68, line: 373, type: !823)
!861 = !DILocation(line: 373, column: 19, scope: !805)
!862 = !DILocalVariable(name: "tmp", scope: !805, file: !68, line: 374, type: !863)
!863 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 904, elements: !864)
!864 = !{!865}
!865 = !DISubrange(count: 113)
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
!889 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 49280, elements: !890)
!890 = !{!891}
!891 = !DISubrange(count: 770)
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
!1029 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 532224, elements: !1030)
!1030 = !{!1031}
!1031 = !DISubrange(count: 8316)
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
!1047 = !DILocalVariable(name: "mask", scope: !1048, file: !68, line: 53, type: !53)
!1048 = distinct !DILexicalBlock(scope: !1049, file: !68, line: 52, column: 29)
!1049 = distinct !DILexicalBlock(scope: !1036, file: !68, line: 52, column: 8)
!1050 = !DILocation(line: 0, scope: !1048)
!1051 = !DILocalVariable(name: "i", scope: !1052, file: !68, line: 56, type: !86)
!1052 = distinct !DILexicalBlock(scope: !1048, file: !68, line: 56, column: 9)
!1053 = !DILocation(line: 0, scope: !1052)
!1054 = !DILocation(line: 56, column: 14, scope: !1052)
!1055 = !DILocation(line: 56, scope: !1052)
!1056 = !DILocation(line: 56, column: 27, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !1052, file: !68, line: 56, column: 9)
!1058 = !DILocation(line: 56, column: 9, scope: !1052)
!1059 = !DILocation(line: 58, column: 13, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1057, file: !68, line: 57, column: 9)
!1061 = !DILocation(line: 58, column: 50, scope: !1060)
!1062 = !DILocation(line: 56, column: 53, scope: !1057)
!1063 = !DILocation(line: 56, column: 9, scope: !1057)
!1064 = distinct !{!1064, !1058, !1065, !388}
!1065 = !DILocation(line: 59, column: 9, scope: !1052)
!1066 = !DILocalVariable(name: "temp", scope: !1036, file: !68, line: 62, type: !677)
!1067 = !DILocation(line: 62, column: 14, scope: !1036)
!1068 = !DILocalVariable(name: "temp_bytes", scope: !1036, file: !68, line: 63, type: !61)
!1069 = !DILocalVariable(name: "i", scope: !1070, file: !68, line: 64, type: !86)
!1070 = distinct !DILexicalBlock(scope: !1036, file: !68, line: 64, column: 5)
!1071 = !DILocation(line: 0, scope: !1070)
!1072 = !DILocation(line: 64, column: 10, scope: !1070)
!1073 = !DILocation(line: 64, scope: !1070)
!1074 = !DILocation(line: 64, column: 36, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1070, file: !68, line: 64, column: 5)
!1076 = !DILocation(line: 64, column: 5, scope: !1070)
!1077 = !DILocation(line: 65, column: 9, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1079, file: !68, line: 65, column: 9)
!1079 = distinct !DILexicalBlock(scope: !1075, file: !68, line: 64, column: 48)
!1080 = !DILocation(line: 99, column: 5, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1036, file: !68, line: 99, column: 5)
!1082 = !DILocation(line: 65, scope: !1078)
!1083 = !DILocalVariable(name: "j", scope: !1078, file: !68, line: 65, type: !86)
!1084 = !DILocation(line: 0, scope: !1078)
!1085 = !DILocation(line: 65, column: 27, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !1078, file: !68, line: 65, column: 9)
!1087 = !DILocation(line: 67, column: 34, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1086, file: !68, line: 65, column: 46)
!1089 = !DILocation(line: 67, column: 54, scope: !1088)
!1090 = !DILocation(line: 67, column: 33, scope: !1088)
!1091 = !DILocalVariable(name: "top", scope: !1088, file: !68, line: 67, type: !51)
!1092 = !DILocation(line: 0, scope: !1088)
!1093 = !DILocation(line: 68, column: 13, scope: !1088)
!1094 = !DILocation(line: 68, column: 33, scope: !1088)
!1095 = !DILocalVariable(name: "k", scope: !1096, file: !68, line: 69, type: !86)
!1096 = distinct !DILexicalBlock(scope: !1088, file: !68, line: 69, column: 13)
!1097 = !DILocation(line: 0, scope: !1096)
!1098 = !DILocation(line: 69, column: 17, scope: !1096)
!1099 = !DILocation(line: 69, scope: !1096)
!1100 = !DILocation(line: 69, column: 43, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1096, file: !68, line: 69, column: 13)
!1102 = !DILocation(line: 69, column: 13, scope: !1096)
!1103 = !DILocation(line: 74, column: 13, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1088, file: !68, line: 74, column: 13)
!1105 = !DILocation(line: 70, column: 30, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1101, file: !68, line: 69, column: 52)
!1107 = !DILocation(line: 70, column: 38, scope: !1106)
!1108 = !DILocation(line: 70, column: 23, scope: !1106)
!1109 = !DILocation(line: 70, column: 17, scope: !1106)
!1110 = !DILocation(line: 70, column: 27, scope: !1106)
!1111 = !DILocation(line: 71, column: 17, scope: !1106)
!1112 = !DILocation(line: 71, column: 25, scope: !1106)
!1113 = !DILocation(line: 69, column: 49, scope: !1101)
!1114 = !DILocation(line: 69, column: 13, scope: !1101)
!1115 = distinct !{!1115, !1102, !1116, !388}
!1116 = !DILocation(line: 72, column: 13, scope: !1096)
!1117 = !DILocation(line: 74, scope: !1104)
!1118 = !DILocalVariable(name: "jj", scope: !1104, file: !68, line: 74, type: !86)
!1119 = !DILocation(line: 0, scope: !1104)
!1120 = !DILocation(line: 74, column: 33, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1104, file: !68, line: 74, column: 13)
!1122 = !DILocation(line: 92, column: 13, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1088, file: !68, line: 92, column: 13)
!1124 = !DILocation(line: 75, column: 22, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1126, file: !68, line: 75, column: 20)
!1126 = distinct !DILexicalBlock(scope: !1121, file: !68, line: 74, column: 53)
!1127 = !DILocation(line: 75, column: 25, scope: !1125)
!1128 = !DILocation(line: 79, column: 52, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1125, file: !68, line: 75, column: 30)
!1130 = !DILocation(line: 79, column: 41, scope: !1129)
!1131 = !DILocation(line: 79, column: 34, scope: !1129)
!1132 = !DILocation(line: 79, column: 21, scope: !1129)
!1133 = !DILocation(line: 79, column: 38, scope: !1129)
!1134 = !DILocation(line: 81, column: 17, scope: !1129)
!1135 = !DILocation(line: 86, column: 52, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1125, file: !68, line: 82, column: 22)
!1137 = !DILocation(line: 86, column: 41, scope: !1136)
!1138 = !DILocation(line: 86, column: 73, scope: !1136)
!1139 = !DILocation(line: 86, column: 34, scope: !1136)
!1140 = !DILocation(line: 86, column: 21, scope: !1136)
!1141 = !DILocation(line: 86, column: 38, scope: !1136)
!1142 = !DILocation(line: 74, column: 49, scope: !1121)
!1143 = !DILocation(line: 74, column: 13, scope: !1121)
!1144 = distinct !{!1144, !1103, !1145, !388}
!1145 = !DILocation(line: 89, column: 13, scope: !1104)
!1146 = !DILocation(line: 92, scope: !1123)
!1147 = !DILocalVariable(name: "k", scope: !1123, file: !68, line: 92, type: !58)
!1148 = !DILocation(line: 0, scope: !1123)
!1149 = !DILocation(line: 92, column: 31, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !1123, file: !68, line: 92, column: 13)
!1151 = !DILocation(line: 93, column: 36, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1150, file: !68, line: 92, column: 51)
!1153 = !DILocation(line: 93, column: 49, scope: !1152)
!1154 = !DILocation(line: 93, column: 28, scope: !1152)
!1155 = !DILocation(line: 93, column: 78, scope: !1152)
!1156 = !DILocation(line: 93, column: 91, scope: !1152)
!1157 = !DILocation(line: 93, column: 104, scope: !1152)
!1158 = !DILocation(line: 93, column: 83, scope: !1152)
!1159 = !DILocation(line: 93, column: 82, scope: !1152)
!1160 = !DILocation(line: 93, column: 73, scope: !1152)
!1161 = !DILocation(line: 93, column: 17, scope: !1152)
!1162 = !DILocation(line: 93, column: 25, scope: !1152)
!1163 = !DILocation(line: 92, column: 48, scope: !1150)
!1164 = !DILocation(line: 92, column: 13, scope: !1150)
!1165 = distinct !{!1165, !1122, !1166, !388}
!1166 = !DILocation(line: 94, column: 13, scope: !1123)
!1167 = !DILocation(line: 65, column: 42, scope: !1086)
!1168 = !DILocation(line: 65, column: 9, scope: !1086)
!1169 = distinct !{!1169, !1077, !1170, !388}
!1170 = !DILocation(line: 95, column: 9, scope: !1078)
!1171 = !DILocation(line: 64, column: 44, scope: !1075)
!1172 = !DILocation(line: 64, column: 5, scope: !1075)
!1173 = distinct !{!1173, !1076, !1174, !388}
!1174 = !DILocation(line: 96, column: 5, scope: !1070)
!1175 = !DILocation(line: 99, scope: !1081)
!1176 = !DILocalVariable(name: "i", scope: !1081, file: !68, line: 99, type: !86)
!1177 = !DILocation(line: 0, scope: !1081)
!1178 = !DILocation(line: 99, column: 23, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1081, file: !68, line: 99, column: 5)
!1180 = !DILocation(line: 105, column: 18, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !1179, file: !68, line: 100, column: 5)
!1182 = !DILocation(line: 105, column: 40, scope: !1181)
!1183 = !DILocation(line: 105, column: 28, scope: !1181)
!1184 = !DILocation(line: 105, column: 44, scope: !1181)
!1185 = !DILocation(line: 105, column: 25, scope: !1181)
!1186 = !DILocation(line: 105, column: 9, scope: !1181)
!1187 = !DILocation(line: 105, column: 16, scope: !1181)
!1188 = !DILocation(line: 106, column: 21, scope: !1181)
!1189 = !DILocation(line: 106, column: 18, scope: !1181)
!1190 = !DILocation(line: 106, column: 40, scope: !1181)
!1191 = !DILocation(line: 106, column: 28, scope: !1181)
!1192 = !DILocation(line: 106, column: 44, scope: !1181)
!1193 = !DILocation(line: 106, column: 25, scope: !1181)
!1194 = !DILocation(line: 106, column: 12, scope: !1181)
!1195 = !DILocation(line: 106, column: 9, scope: !1181)
!1196 = !DILocation(line: 106, column: 16, scope: !1181)
!1197 = !DILocation(line: 99, column: 38, scope: !1179)
!1198 = !DILocation(line: 99, column: 5, scope: !1179)
!1199 = distinct !{!1199, !1080, !1200, !388}
!1200 = !DILocation(line: 108, column: 5, scope: !1081)
!1201 = !DILocation(line: 109, column: 1, scope: !1036)
!1202 = distinct !DISubprogram(name: "compute_A", scope: !68, file: !68, line: 154, type: !1203, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !71)
!1203 = !DISubroutineType(types: !1204)
!1204 = !{null, !264, !52, !61}
!1205 = !DILocalVariable(name: "p", arg: 1, scope: !1202, file: !68, line: 154, type: !264)
!1206 = !DILocation(line: 0, scope: !1202)
!1207 = !DILocalVariable(name: "VtL", arg: 2, scope: !1202, file: !68, line: 154, type: !52)
!1208 = !DILocalVariable(name: "A_out", arg: 3, scope: !1202, file: !68, line: 154, type: !61)
!1209 = !DILocalVariable(name: "bits_to_shift", scope: !1202, file: !68, line: 159, type: !86)
!1210 = !DILocalVariable(name: "words_to_shift", scope: !1202, file: !68, line: 160, type: !86)
!1211 = !DILocalVariable(name: "m_vec_limbs", scope: !1202, file: !68, line: 161, type: !324)
!1212 = !DILocalVariable(name: "A", scope: !1202, file: !68, line: 162, type: !1213)
!1213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 100352, elements: !1214)
!1214 = !{!1215}
!1215 = !DISubrange(count: 1568)
!1216 = !DILocation(line: 162, column: 14, scope: !1202)
!1217 = !DILocalVariable(name: "A_width", scope: !1202, file: !68, line: 163, type: !58)
!1218 = !DILocalVariable(name: "mask", scope: !1219, file: !68, line: 168, type: !53)
!1219 = distinct !DILexicalBlock(scope: !1220, file: !68, line: 167, column: 29)
!1220 = distinct !DILexicalBlock(scope: !1202, file: !68, line: 167, column: 8)
!1221 = !DILocation(line: 0, scope: !1219)
!1222 = !DILocalVariable(name: "i", scope: !1223, file: !68, line: 171, type: !86)
!1223 = distinct !DILexicalBlock(scope: !1219, file: !68, line: 171, column: 9)
!1224 = !DILocation(line: 0, scope: !1223)
!1225 = !DILocation(line: 171, column: 14, scope: !1223)
!1226 = !DILocation(line: 171, scope: !1223)
!1227 = !DILocation(line: 171, column: 27, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1223, file: !68, line: 171, column: 9)
!1229 = !DILocation(line: 171, column: 9, scope: !1223)
!1230 = !DILocation(line: 177, column: 5, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1202, file: !68, line: 177, column: 5)
!1232 = !DILocation(line: 173, column: 13, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1228, file: !68, line: 172, column: 9)
!1234 = !DILocation(line: 173, column: 50, scope: !1233)
!1235 = !DILocation(line: 171, column: 53, scope: !1228)
!1236 = !DILocation(line: 171, column: 9, scope: !1228)
!1237 = distinct !{!1237, !1229, !1238, !388}
!1238 = !DILocation(line: 174, column: 9, scope: !1223)
!1239 = !DILocation(line: 177, scope: !1231)
!1240 = !DILocation(line: 160, column: 9, scope: !1202)
!1241 = !DILocation(line: 159, column: 9, scope: !1202)
!1242 = !DILocalVariable(name: "i", scope: !1231, file: !68, line: 177, type: !86)
!1243 = !DILocation(line: 0, scope: !1231)
!1244 = !DILocation(line: 177, column: 23, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1231, file: !68, line: 177, column: 5)
!1246 = !DILocation(line: 178, column: 9, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1248, file: !68, line: 178, column: 9)
!1248 = distinct !DILexicalBlock(scope: !1245, file: !68, line: 177, column: 47)
!1249 = !DILocation(line: 212, column: 5, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1202, file: !68, line: 212, column: 5)
!1251 = !DILocation(line: 178, scope: !1247)
!1252 = !DILocalVariable(name: "j", scope: !1247, file: !68, line: 178, type: !86)
!1253 = !DILocation(line: 0, scope: !1247)
!1254 = !DILocation(line: 178, column: 40, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1247, file: !68, line: 178, column: 9)
!1256 = !DILocation(line: 180, column: 22, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1255, file: !68, line: 178, column: 51)
!1258 = !DILocalVariable(name: "Mj", scope: !1202, file: !68, line: 164, type: !411)
!1259 = !DILocalVariable(name: "c", scope: !1260, file: !68, line: 181, type: !86)
!1260 = distinct !DILexicalBlock(scope: !1257, file: !68, line: 181, column: 13)
!1261 = !DILocation(line: 0, scope: !1260)
!1262 = !DILocation(line: 181, column: 18, scope: !1260)
!1263 = !DILocation(line: 181, scope: !1260)
!1264 = !DILocation(line: 181, column: 31, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !1260, file: !68, line: 181, column: 13)
!1266 = !DILocation(line: 181, column: 13, scope: !1260)
!1267 = !DILocation(line: 182, column: 17, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1269, file: !68, line: 182, column: 17)
!1269 = distinct !DILexicalBlock(scope: !1265, file: !68, line: 181, column: 50)
!1270 = !DILocation(line: 182, scope: !1268)
!1271 = !DILocalVariable(name: "k", scope: !1268, file: !68, line: 182, type: !86)
!1272 = !DILocation(line: 0, scope: !1268)
!1273 = !DILocation(line: 182, column: 35, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1268, file: !68, line: 182, column: 17)
!1275 = !DILocation(line: 184, column: 78, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1274, file: !68, line: 183, column: 17)
!1277 = !DILocation(line: 184, column: 100, scope: !1276)
!1278 = !DILocation(line: 184, column: 35, scope: !1276)
!1279 = !DILocation(line: 184, column: 39, scope: !1276)
!1280 = !DILocation(line: 184, column: 48, scope: !1276)
!1281 = !DILocation(line: 184, column: 65, scope: !1276)
!1282 = !DILocation(line: 184, column: 43, scope: !1276)
!1283 = !DILocation(line: 184, column: 21, scope: !1276)
!1284 = !DILocation(line: 184, column: 75, scope: !1276)
!1285 = !DILocation(line: 185, column: 38, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1276, file: !68, line: 185, column: 24)
!1287 = !DILocation(line: 186, column: 86, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1286, file: !68, line: 185, column: 42)
!1289 = !DILocation(line: 186, column: 114, scope: !1288)
!1290 = !DILocation(line: 186, column: 108, scope: !1288)
!1291 = !DILocation(line: 186, column: 39, scope: !1288)
!1292 = !DILocation(line: 186, column: 43, scope: !1288)
!1293 = !DILocation(line: 186, column: 52, scope: !1288)
!1294 = !DILocation(line: 186, column: 73, scope: !1288)
!1295 = !DILocation(line: 186, column: 47, scope: !1288)
!1296 = !DILocation(line: 186, column: 25, scope: !1288)
!1297 = !DILocation(line: 186, column: 83, scope: !1288)
!1298 = !DILocation(line: 187, column: 21, scope: !1288)
!1299 = !DILocation(line: 182, column: 51, scope: !1274)
!1300 = !DILocation(line: 182, column: 17, scope: !1274)
!1301 = distinct !{!1301, !1267, !1302, !388}
!1302 = !DILocation(line: 188, column: 17, scope: !1268)
!1303 = !DILocation(line: 181, column: 46, scope: !1265)
!1304 = !DILocation(line: 181, column: 13, scope: !1265)
!1305 = distinct !{!1305, !1266, !1306, !388}
!1306 = !DILocation(line: 189, column: 13, scope: !1260)
!1307 = !DILocation(line: 191, column: 19, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1257, file: !68, line: 191, column: 17)
!1309 = !DILocation(line: 192, column: 26, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1308, file: !68, line: 191, column: 25)
!1311 = !DILocalVariable(name: "Mi", scope: !1202, file: !68, line: 164, type: !411)
!1312 = !DILocalVariable(name: "c", scope: !1313, file: !68, line: 193, type: !86)
!1313 = distinct !DILexicalBlock(scope: !1310, file: !68, line: 193, column: 17)
!1314 = !DILocation(line: 0, scope: !1313)
!1315 = !DILocation(line: 193, column: 22, scope: !1313)
!1316 = !DILocation(line: 193, scope: !1313)
!1317 = !DILocation(line: 193, column: 35, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1313, file: !68, line: 193, column: 17)
!1319 = !DILocation(line: 193, column: 17, scope: !1313)
!1320 = !DILocation(line: 194, column: 21, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1322, file: !68, line: 194, column: 21)
!1322 = distinct !DILexicalBlock(scope: !1318, file: !68, line: 193, column: 54)
!1323 = !DILocation(line: 194, scope: !1321)
!1324 = !DILocalVariable(name: "k", scope: !1321, file: !68, line: 194, type: !86)
!1325 = !DILocation(line: 0, scope: !1321)
!1326 = !DILocation(line: 194, column: 39, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1321, file: !68, line: 194, column: 21)
!1328 = !DILocation(line: 196, column: 81, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1327, file: !68, line: 195, column: 21)
!1330 = !DILocation(line: 196, column: 103, scope: !1329)
!1331 = !DILocation(line: 196, column: 38, scope: !1329)
!1332 = !DILocation(line: 196, column: 42, scope: !1329)
!1333 = !DILocation(line: 196, column: 51, scope: !1329)
!1334 = !DILocation(line: 196, column: 68, scope: !1329)
!1335 = !DILocation(line: 196, column: 46, scope: !1329)
!1336 = !DILocation(line: 196, column: 25, scope: !1329)
!1337 = !DILocation(line: 196, column: 78, scope: !1329)
!1338 = !DILocation(line: 197, column: 42, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1329, file: !68, line: 197, column: 28)
!1340 = !DILocation(line: 198, column: 89, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1339, file: !68, line: 197, column: 46)
!1342 = !DILocation(line: 198, column: 117, scope: !1341)
!1343 = !DILocation(line: 198, column: 111, scope: !1341)
!1344 = !DILocation(line: 198, column: 42, scope: !1341)
!1345 = !DILocation(line: 198, column: 46, scope: !1341)
!1346 = !DILocation(line: 198, column: 55, scope: !1341)
!1347 = !DILocation(line: 198, column: 76, scope: !1341)
!1348 = !DILocation(line: 198, column: 50, scope: !1341)
!1349 = !DILocation(line: 198, column: 29, scope: !1341)
!1350 = !DILocation(line: 198, column: 86, scope: !1341)
!1351 = !DILocation(line: 199, column: 25, scope: !1341)
!1352 = !DILocation(line: 194, column: 55, scope: !1327)
!1353 = !DILocation(line: 194, column: 21, scope: !1327)
!1354 = distinct !{!1354, !1320, !1355, !388}
!1355 = !DILocation(line: 200, column: 21, scope: !1321)
!1356 = !DILocation(line: 193, column: 50, scope: !1318)
!1357 = !DILocation(line: 193, column: 17, scope: !1318)
!1358 = distinct !{!1358, !1319, !1359, !388}
!1359 = !DILocation(line: 201, column: 17, scope: !1313)
!1360 = !DILocation(line: 204, column: 27, scope: !1257)
!1361 = !DILocation(line: 205, column: 30, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1257, file: !68, line: 205, column: 16)
!1363 = !DILocation(line: 178, column: 46, scope: !1255)
!1364 = !DILocation(line: 178, column: 9, scope: !1255)
!1365 = distinct !{!1365, !1246, !1366, !388}
!1366 = !DILocation(line: 209, column: 9, scope: !1247)
!1367 = !DILocation(line: 177, column: 42, scope: !1245)
!1368 = !DILocation(line: 177, column: 5, scope: !1245)
!1369 = distinct !{!1369, !1230, !1370, !388}
!1370 = !DILocation(line: 210, column: 5, scope: !1231)
!1371 = !DILocation(line: 212, scope: !1250)
!1372 = !DILocalVariable(name: "c", scope: !1250, file: !68, line: 212, type: !58)
!1373 = !DILocation(line: 0, scope: !1250)
!1374 = !DILocation(line: 212, column: 26, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1250, file: !68, line: 212, column: 5)
!1376 = !DILocation(line: 214, column: 35, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1375, file: !68, line: 213, column: 5)
!1378 = !DILocation(line: 214, column: 9, scope: !1377)
!1379 = !DILocation(line: 212, column: 91, scope: !1375)
!1380 = !DILocation(line: 212, column: 5, scope: !1375)
!1381 = distinct !{!1381, !1249, !1382, !388}
!1382 = !DILocation(line: 215, column: 5, scope: !1250)
!1383 = !DILocalVariable(name: "tab", scope: !1202, file: !68, line: 217, type: !1384)
!1384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 128, elements: !1385)
!1385 = !{!1386}
!1386 = !DISubrange(count: 16)
!1387 = !DILocation(line: 217, column: 19, scope: !1202)
!1388 = !DILocalVariable(name: "i", scope: !1389, file: !68, line: 218, type: !58)
!1389 = distinct !DILexicalBlock(scope: !1202, file: !68, line: 218, column: 5)
!1390 = !DILocation(line: 0, scope: !1389)
!1391 = !DILocation(line: 218, column: 10, scope: !1389)
!1392 = !DILocation(line: 218, scope: !1389)
!1393 = !DILocation(line: 218, column: 26, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1389, file: !68, line: 218, column: 5)
!1395 = !DILocation(line: 218, column: 5, scope: !1389)
!1396 = !DILocation(line: 228, column: 5, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1202, file: !68, line: 228, column: 5)
!1398 = !DILocation(line: 220, column: 28, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1394, file: !68, line: 219, column: 5)
!1400 = !DILocation(line: 220, column: 22, scope: !1399)
!1401 = !DILocation(line: 220, column: 14, scope: !1399)
!1402 = !DILocation(line: 220, column: 9, scope: !1399)
!1403 = !DILocation(line: 220, column: 20, scope: !1399)
!1404 = !DILocation(line: 221, column: 22, scope: !1399)
!1405 = !DILocation(line: 221, column: 14, scope: !1399)
!1406 = !DILocation(line: 221, column: 16, scope: !1399)
!1407 = !DILocation(line: 221, column: 9, scope: !1399)
!1408 = !DILocation(line: 221, column: 20, scope: !1399)
!1409 = !DILocation(line: 222, column: 28, scope: !1399)
!1410 = !DILocation(line: 222, column: 22, scope: !1399)
!1411 = !DILocation(line: 222, column: 14, scope: !1399)
!1412 = !DILocation(line: 222, column: 16, scope: !1399)
!1413 = !DILocation(line: 222, column: 9, scope: !1399)
!1414 = !DILocation(line: 222, column: 20, scope: !1399)
!1415 = !DILocation(line: 223, column: 28, scope: !1399)
!1416 = !DILocation(line: 223, column: 22, scope: !1399)
!1417 = !DILocation(line: 223, column: 14, scope: !1399)
!1418 = !DILocation(line: 223, column: 16, scope: !1399)
!1419 = !DILocation(line: 223, column: 9, scope: !1399)
!1420 = !DILocation(line: 223, column: 20, scope: !1399)
!1421 = !DILocation(line: 218, column: 41, scope: !1394)
!1422 = !DILocation(line: 218, column: 5, scope: !1394)
!1423 = distinct !{!1423, !1395, !1424, !388}
!1424 = !DILocation(line: 224, column: 5, scope: !1389)
!1425 = !DILocation(line: 228, scope: !1397)
!1426 = !DILocalVariable(name: "c", scope: !1397, file: !68, line: 228, type: !58)
!1427 = !DILocation(line: 0, scope: !1397)
!1428 = !DILocation(line: 228, column: 26, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1397, file: !68, line: 228, column: 5)
!1430 = !DILocation(line: 230, column: 9, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1432, file: !68, line: 230, column: 9)
!1432 = distinct !DILexicalBlock(scope: !1429, file: !68, line: 229, column: 5)
!1433 = !DILocation(line: 250, column: 5, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1202, file: !68, line: 250, column: 5)
!1435 = !DILocation(line: 230, scope: !1431)
!1436 = !DILocalVariable(name: "r", scope: !1431, file: !68, line: 230, type: !86)
!1437 = !DILocation(line: 0, scope: !1431)
!1438 = !DILocation(line: 230, column: 36, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1431, file: !68, line: 230, column: 9)
!1440 = !DILocation(line: 232, column: 28, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1439, file: !68, line: 231, column: 9)
!1442 = !DILocation(line: 232, column: 32, scope: !1441)
!1443 = !DILocation(line: 232, column: 41, scope: !1441)
!1444 = !DILocation(line: 232, column: 49, scope: !1441)
!1445 = !DILocation(line: 232, column: 45, scope: !1441)
!1446 = !DILocalVariable(name: "pos", scope: !1441, file: !68, line: 232, type: !58)
!1447 = !DILocation(line: 0, scope: !1441)
!1448 = !DILocation(line: 233, column: 28, scope: !1441)
!1449 = !DILocation(line: 233, column: 41, scope: !1441)
!1450 = !DILocalVariable(name: "t0", scope: !1441, file: !68, line: 233, type: !53)
!1451 = !DILocation(line: 234, column: 35, scope: !1441)
!1452 = !DILocation(line: 234, column: 41, scope: !1441)
!1453 = !DILocalVariable(name: "t1", scope: !1441, file: !68, line: 234, type: !53)
!1454 = !DILocation(line: 235, column: 35, scope: !1441)
!1455 = !DILocation(line: 235, column: 41, scope: !1441)
!1456 = !DILocalVariable(name: "t2", scope: !1441, file: !68, line: 235, type: !53)
!1457 = !DILocation(line: 236, column: 28, scope: !1441)
!1458 = !DILocation(line: 236, column: 35, scope: !1441)
!1459 = !DILocation(line: 236, column: 41, scope: !1441)
!1460 = !DILocalVariable(name: "t3", scope: !1441, file: !68, line: 236, type: !53)
!1461 = !DILocalVariable(name: "t", scope: !1462, file: !68, line: 237, type: !58)
!1462 = distinct !DILexicalBlock(scope: !1441, file: !68, line: 237, column: 13)
!1463 = !DILocation(line: 0, scope: !1462)
!1464 = !DILocation(line: 237, column: 18, scope: !1462)
!1465 = !DILocation(line: 237, scope: !1462)
!1466 = !DILocation(line: 237, column: 34, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1462, file: !68, line: 237, column: 13)
!1468 = !DILocation(line: 237, column: 13, scope: !1462)
!1469 = !DILocation(line: 239, column: 89, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1467, file: !68, line: 238, column: 13)
!1471 = !DILocation(line: 239, column: 84, scope: !1470)
!1472 = !DILocation(line: 239, column: 83, scope: !1470)
!1473 = !DILocation(line: 239, column: 105, scope: !1470)
!1474 = !DILocation(line: 239, column: 107, scope: !1470)
!1475 = !DILocation(line: 239, column: 100, scope: !1470)
!1476 = !DILocation(line: 239, column: 99, scope: !1470)
!1477 = !DILocation(line: 239, column: 95, scope: !1470)
!1478 = !DILocation(line: 239, column: 121, scope: !1470)
!1479 = !DILocation(line: 239, column: 123, scope: !1470)
!1480 = !DILocation(line: 239, column: 116, scope: !1470)
!1481 = !DILocation(line: 239, column: 115, scope: !1470)
!1482 = !DILocation(line: 239, column: 111, scope: !1470)
!1483 = !DILocation(line: 239, column: 137, scope: !1470)
!1484 = !DILocation(line: 239, column: 139, scope: !1470)
!1485 = !DILocation(line: 239, column: 132, scope: !1470)
!1486 = !DILocation(line: 239, column: 131, scope: !1470)
!1487 = !DILocation(line: 239, column: 127, scope: !1470)
!1488 = !DILocation(line: 239, column: 22, scope: !1470)
!1489 = !DILocation(line: 239, column: 24, scope: !1470)
!1490 = !DILocation(line: 239, column: 36, scope: !1470)
!1491 = !DILocation(line: 239, column: 40, scope: !1470)
!1492 = !DILocation(line: 239, column: 49, scope: !1470)
!1493 = !DILocation(line: 239, column: 58, scope: !1470)
!1494 = !DILocation(line: 239, column: 60, scope: !1470)
!1495 = !DILocation(line: 239, column: 72, scope: !1470)
!1496 = !DILocation(line: 239, column: 53, scope: !1470)
!1497 = !DILocation(line: 239, column: 17, scope: !1470)
!1498 = !DILocation(line: 239, column: 78, scope: !1470)
!1499 = !DILocation(line: 237, column: 49, scope: !1467)
!1500 = !DILocation(line: 237, column: 13, scope: !1467)
!1501 = distinct !{!1501, !1468, !1502, !388}
!1502 = !DILocation(line: 240, column: 13, scope: !1462)
!1503 = !DILocation(line: 230, column: 82, scope: !1439)
!1504 = !DILocation(line: 230, column: 9, scope: !1439)
!1505 = distinct !{!1505, !1430, !1506, !388}
!1506 = !DILocation(line: 241, column: 9, scope: !1431)
!1507 = !DILocation(line: 228, column: 38, scope: !1429)
!1508 = !DILocation(line: 228, column: 5, scope: !1429)
!1509 = distinct !{!1509, !1396, !1510, !388}
!1510 = !DILocation(line: 242, column: 5, scope: !1397)
!1511 = !DILocation(line: 250, scope: !1434)
!1512 = !DILocalVariable(name: "r", scope: !1434, file: !68, line: 250, type: !86)
!1513 = !DILocation(line: 0, scope: !1434)
!1514 = !DILocation(line: 250, column: 23, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1434, file: !68, line: 250, column: 5)
!1516 = !DILocation(line: 252, column: 9, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1518, file: !68, line: 252, column: 9)
!1518 = distinct !DILexicalBlock(scope: !1515, file: !68, line: 251, column: 5)
!1519 = !DILocation(line: 252, scope: !1517)
!1520 = !DILocalVariable(name: "c", scope: !1517, file: !68, line: 252, type: !86)
!1521 = !DILocation(line: 0, scope: !1517)
!1522 = !DILocation(line: 252, column: 27, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !1517, file: !68, line: 252, column: 9)
!1524 = !DILocation(line: 254, column: 13, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !1526, file: !68, line: 254, column: 13)
!1526 = distinct !DILexicalBlock(scope: !1523, file: !68, line: 253, column: 9)
!1527 = !DILocation(line: 254, scope: !1525)
!1528 = !DILocalVariable(name: "i", scope: !1525, file: !68, line: 254, type: !86)
!1529 = !DILocation(line: 0, scope: !1525)
!1530 = !DILocation(line: 254, column: 35, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1525, file: !68, line: 254, column: 13)
!1532 = !DILocation(line: 256, column: 55, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1531, file: !68, line: 255, column: 13)
!1534 = !DILocation(line: 256, column: 59, scope: !1533)
!1535 = !DILocation(line: 256, column: 63, scope: !1533)
!1536 = !DILocation(line: 256, column: 44, scope: !1533)
!1537 = !DILocation(line: 256, column: 95, scope: !1533)
!1538 = !DILocation(line: 256, column: 92, scope: !1533)
!1539 = !DILocation(line: 256, column: 75, scope: !1533)
!1540 = !DILocation(line: 256, column: 99, scope: !1533)
!1541 = !DILocation(line: 256, column: 104, scope: !1533)
!1542 = !DILocation(line: 256, column: 17, scope: !1533)
!1543 = !DILocation(line: 254, column: 50, scope: !1531)
!1544 = !DILocation(line: 254, column: 13, scope: !1531)
!1545 = distinct !{!1545, !1524, !1546, !388}
!1546 = !DILocation(line: 257, column: 13, scope: !1525)
!1547 = !DILocation(line: 252, column: 50, scope: !1523)
!1548 = !DILocation(line: 252, column: 9, scope: !1523)
!1549 = distinct !{!1549, !1516, !1550, !388}
!1550 = !DILocation(line: 258, column: 9, scope: !1517)
!1551 = !DILocation(line: 250, column: 38, scope: !1515)
!1552 = !DILocation(line: 250, column: 5, scope: !1515)
!1553 = distinct !{!1553, !1433, !1554, !388}
!1554 = !DILocation(line: 259, column: 5, scope: !1434)
!1555 = !DILocation(line: 260, column: 1, scope: !1202)
!1556 = distinct !DISubprogram(name: "mat_mul", scope: !585, file: !585, line: 78, type: !1557, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !71)
!1557 = !DISubroutineType(types: !1558)
!1558 = !{null, !90, !90, !61, !86, !86, !86}
!1559 = !DILocalVariable(name: "a", arg: 1, scope: !1556, file: !585, line: 78, type: !90)
!1560 = !DILocation(line: 0, scope: !1556)
!1561 = !DILocalVariable(name: "b", arg: 2, scope: !1556, file: !585, line: 78, type: !90)
!1562 = !DILocalVariable(name: "c", arg: 3, scope: !1556, file: !585, line: 79, type: !61)
!1563 = !DILocalVariable(name: "colrow_ab", arg: 4, scope: !1556, file: !585, line: 79, type: !86)
!1564 = !DILocalVariable(name: "row_a", arg: 5, scope: !1556, file: !585, line: 79, type: !86)
!1565 = !DILocalVariable(name: "col_b", arg: 6, scope: !1556, file: !585, line: 79, type: !86)
!1566 = !DILocalVariable(name: "i", scope: !1567, file: !585, line: 80, type: !86)
!1567 = distinct !DILexicalBlock(scope: !1556, file: !585, line: 80, column: 5)
!1568 = !DILocation(line: 0, scope: !1567)
!1569 = !DILocation(line: 80, column: 10, scope: !1567)
!1570 = !DILocation(line: 80, scope: !1567)
!1571 = !DILocation(line: 80, column: 23, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1567, file: !585, line: 80, column: 5)
!1573 = !DILocation(line: 80, column: 5, scope: !1567)
!1574 = !DILocation(line: 81, column: 9, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1576, file: !585, line: 81, column: 9)
!1576 = distinct !DILexicalBlock(scope: !1572, file: !585, line: 80, column: 53)
!1577 = !DILocation(line: 81, scope: !1575)
!1578 = !DILocalVariable(name: "j", scope: !1575, file: !585, line: 81, type: !86)
!1579 = !DILocation(line: 0, scope: !1575)
!1580 = !DILocation(line: 81, column: 27, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !1575, file: !585, line: 81, column: 9)
!1582 = !DILocation(line: 82, column: 31, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1581, file: !585, line: 81, column: 46)
!1584 = !DILocation(line: 82, column: 18, scope: !1583)
!1585 = !DILocation(line: 82, column: 16, scope: !1583)
!1586 = !DILocation(line: 81, column: 36, scope: !1581)
!1587 = !DILocation(line: 81, column: 41, scope: !1581)
!1588 = !DILocation(line: 81, column: 9, scope: !1581)
!1589 = distinct !{!1589, !1574, !1590, !388}
!1590 = !DILocation(line: 83, column: 9, scope: !1575)
!1591 = !DILocation(line: 80, column: 32, scope: !1572)
!1592 = !DILocation(line: 80, column: 39, scope: !1572)
!1593 = !DILocation(line: 80, column: 5, scope: !1572)
!1594 = distinct !{!1594, !1573, !1595, !388}
!1595 = !DILocation(line: 84, column: 5, scope: !1567)
!1596 = !DILocation(line: 85, column: 1, scope: !1556)
!1597 = distinct !DISubprogram(name: "mat_add", scope: !585, file: !585, line: 87, type: !1598, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !71)
!1598 = !DISubroutineType(types: !1599)
!1599 = !{null, !90, !90, !61, !86, !86}
!1600 = !DILocalVariable(name: "a", arg: 1, scope: !1597, file: !585, line: 87, type: !90)
!1601 = !DILocation(line: 0, scope: !1597)
!1602 = !DILocalVariable(name: "b", arg: 2, scope: !1597, file: !585, line: 87, type: !90)
!1603 = !DILocalVariable(name: "c", arg: 3, scope: !1597, file: !585, line: 88, type: !61)
!1604 = !DILocalVariable(name: "m", arg: 4, scope: !1597, file: !585, line: 88, type: !86)
!1605 = !DILocalVariable(name: "n", arg: 5, scope: !1597, file: !585, line: 88, type: !86)
!1606 = !DILocalVariable(name: "i", scope: !1607, file: !585, line: 89, type: !86)
!1607 = distinct !DILexicalBlock(scope: !1597, file: !585, line: 89, column: 5)
!1608 = !DILocation(line: 0, scope: !1607)
!1609 = !DILocation(line: 89, column: 10, scope: !1607)
!1610 = !DILocation(line: 89, scope: !1607)
!1611 = !DILocation(line: 89, column: 23, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1607, file: !585, line: 89, column: 5)
!1613 = !DILocation(line: 89, column: 5, scope: !1607)
!1614 = !DILocation(line: 90, column: 9, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1616, file: !585, line: 90, column: 9)
!1616 = distinct !DILexicalBlock(scope: !1612, file: !585, line: 89, column: 33)
!1617 = !DILocation(line: 90, scope: !1615)
!1618 = !DILocalVariable(name: "j", scope: !1615, file: !585, line: 90, type: !86)
!1619 = !DILocation(line: 0, scope: !1615)
!1620 = !DILocation(line: 90, column: 27, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !1615, file: !585, line: 90, column: 9)
!1622 = !DILocation(line: 91, column: 46, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1621, file: !585, line: 90, column: 37)
!1624 = !DILocation(line: 91, column: 42, scope: !1623)
!1625 = !DILocation(line: 91, column: 50, scope: !1623)
!1626 = !DILocation(line: 91, column: 38, scope: !1623)
!1627 = !DILocation(line: 91, column: 64, scope: !1623)
!1628 = !DILocation(line: 91, column: 60, scope: !1623)
!1629 = !DILocation(line: 91, column: 68, scope: !1623)
!1630 = !DILocation(line: 91, column: 56, scope: !1623)
!1631 = !DILocation(line: 91, column: 32, scope: !1623)
!1632 = !DILocation(line: 91, column: 21, scope: !1623)
!1633 = !DILocation(line: 91, column: 17, scope: !1623)
!1634 = !DILocation(line: 91, column: 25, scope: !1623)
!1635 = !DILocation(line: 91, column: 30, scope: !1623)
!1636 = !DILocation(line: 90, column: 32, scope: !1621)
!1637 = !DILocation(line: 90, column: 9, scope: !1621)
!1638 = distinct !{!1638, !1614, !1639, !388}
!1639 = !DILocation(line: 92, column: 9, scope: !1615)
!1640 = !DILocation(line: 89, column: 28, scope: !1612)
!1641 = !DILocation(line: 89, column: 5, scope: !1612)
!1642 = distinct !{!1642, !1613, !1643, !388}
!1643 = !DILocation(line: 93, column: 5, scope: !1607)
!1644 = !DILocation(line: 94, column: 1, scope: !1597)
!1645 = distinct !DISubprogram(name: "encode", scope: !68, file: !68, line: 32, type: !361, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !71)
!1646 = !DILocalVariable(name: "m", arg: 1, scope: !1645, file: !68, line: 32, type: !90)
!1647 = !DILocation(line: 0, scope: !1645)
!1648 = !DILocalVariable(name: "menc", arg: 2, scope: !1645, file: !68, line: 32, type: !61)
!1649 = !DILocalVariable(name: "mlen", arg: 3, scope: !1645, file: !68, line: 32, type: !86)
!1650 = !DILocalVariable(name: "i", scope: !1645, file: !68, line: 33, type: !86)
!1651 = !DILocation(line: 34, column: 10, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1645, file: !68, line: 34, column: 5)
!1653 = !DILocation(line: 34, scope: !1652)
!1654 = !DILocation(line: 34, column: 26, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1652, file: !68, line: 34, column: 5)
!1656 = !DILocation(line: 34, column: 19, scope: !1655)
!1657 = !DILocation(line: 34, column: 5, scope: !1652)
!1658 = !DILocation(line: 35, column: 20, scope: !1659)
!1659 = distinct !DILexicalBlock(scope: !1655, file: !68, line: 34, column: 44)
!1660 = !DILocation(line: 35, column: 31, scope: !1659)
!1661 = !DILocation(line: 35, column: 27, scope: !1659)
!1662 = !DILocation(line: 35, column: 36, scope: !1659)
!1663 = !DILocation(line: 35, column: 24, scope: !1659)
!1664 = !DILocation(line: 35, column: 9, scope: !1659)
!1665 = !DILocation(line: 35, column: 17, scope: !1659)
!1666 = !DILocation(line: 34, column: 31, scope: !1655)
!1667 = !DILocation(line: 34, column: 38, scope: !1655)
!1668 = !DILocation(line: 34, column: 5, scope: !1655)
!1669 = distinct !{!1669, !1657, !1670, !388}
!1670 = !DILocation(line: 36, column: 5, scope: !1652)
!1671 = !DILocation(line: 38, column: 18, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1645, file: !68, line: 38, column: 9)
!1673 = !DILocation(line: 39, column: 20, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1672, file: !68, line: 38, column: 24)
!1675 = !DILocation(line: 39, column: 9, scope: !1674)
!1676 = !DILocation(line: 39, column: 17, scope: !1674)
!1677 = !DILocation(line: 40, column: 5, scope: !1674)
!1678 = !DILocation(line: 41, column: 1, scope: !1645)
!1679 = distinct !DISubprogram(name: "add_f", scope: !585, file: !585, line: 42, type: !1680, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !71)
!1680 = !DISubroutineType(types: !1681)
!1681 = !{!51, !51, !51}
!1682 = !DILocalVariable(name: "a", arg: 1, scope: !1679, file: !585, line: 42, type: !51)
!1683 = !DILocation(line: 0, scope: !1679)
!1684 = !DILocalVariable(name: "b", arg: 2, scope: !1679, file: !585, line: 42, type: !51)
!1685 = !DILocation(line: 43, column: 14, scope: !1679)
!1686 = !DILocation(line: 43, column: 5, scope: !1679)
!1687 = distinct !DISubprogram(name: "lincomb", scope: !585, file: !585, line: 69, type: !1688, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !71)
!1688 = !DISubroutineType(types: !1689)
!1689 = !{!51, !90, !90, !86, !86}
!1690 = !DILocalVariable(name: "a", arg: 1, scope: !1687, file: !585, line: 69, type: !90)
!1691 = !DILocation(line: 0, scope: !1687)
!1692 = !DILocalVariable(name: "b", arg: 2, scope: !1687, file: !585, line: 70, type: !90)
!1693 = !DILocalVariable(name: "n", arg: 3, scope: !1687, file: !585, line: 70, type: !86)
!1694 = !DILocalVariable(name: "m", arg: 4, scope: !1687, file: !585, line: 70, type: !86)
!1695 = !DILocalVariable(name: "ret", scope: !1687, file: !585, line: 71, type: !51)
!1696 = !DILocalVariable(name: "i", scope: !1697, file: !585, line: 72, type: !86)
!1697 = distinct !DILexicalBlock(scope: !1687, file: !585, line: 72, column: 5)
!1698 = !DILocation(line: 0, scope: !1697)
!1699 = !DILocation(line: 72, column: 10, scope: !1697)
!1700 = !DILocation(line: 72, scope: !1697)
!1701 = !DILocation(line: 72, column: 23, scope: !1702)
!1702 = distinct !DILexicalBlock(scope: !1697, file: !585, line: 72, column: 5)
!1703 = !DILocation(line: 72, column: 5, scope: !1697)
!1704 = !DILocation(line: 73, column: 27, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1702, file: !585, line: 72, column: 41)
!1706 = !DILocation(line: 73, column: 33, scope: !1705)
!1707 = !DILocation(line: 73, column: 21, scope: !1705)
!1708 = !DILocation(line: 73, column: 15, scope: !1705)
!1709 = !DILocation(line: 72, column: 28, scope: !1702)
!1710 = !DILocation(line: 72, column: 35, scope: !1702)
!1711 = !DILocation(line: 72, column: 5, scope: !1702)
!1712 = distinct !{!1712, !1703, !1713, !388}
!1713 = !DILocation(line: 74, column: 5, scope: !1697)
!1714 = !DILocation(line: 75, column: 5, scope: !1687)
!1715 = distinct !DISubprogram(name: "mul_f", scope: !585, file: !585, line: 8, type: !1680, scopeLine: 8, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !71)
!1716 = !DILocalVariable(name: "a", arg: 1, scope: !1715, file: !585, line: 8, type: !51)
!1717 = !DILocation(line: 0, scope: !1715)
!1718 = !DILocalVariable(name: "b", arg: 2, scope: !1715, file: !585, line: 8, type: !51)
!1719 = !DILocation(line: 13, column: 10, scope: !1715)
!1720 = !DILocation(line: 13, column: 7, scope: !1715)
!1721 = !DILocation(line: 16, column: 17, scope: !1715)
!1722 = !DILocalVariable(name: "p", scope: !1715, file: !585, line: 10, type: !51)
!1723 = !DILocation(line: 17, column: 13, scope: !1715)
!1724 = !DILocation(line: 17, column: 17, scope: !1715)
!1725 = !DILocation(line: 17, column: 7, scope: !1715)
!1726 = !DILocation(line: 18, column: 13, scope: !1715)
!1727 = !DILocation(line: 18, column: 17, scope: !1715)
!1728 = !DILocation(line: 18, column: 7, scope: !1715)
!1729 = !DILocation(line: 19, column: 13, scope: !1715)
!1730 = !DILocation(line: 19, column: 17, scope: !1715)
!1731 = !DILocation(line: 19, column: 7, scope: !1715)
!1732 = !DILocalVariable(name: "top_p", scope: !1715, file: !585, line: 22, type: !51)
!1733 = !DILocation(line: 23, column: 37, scope: !1715)
!1734 = !DILocation(line: 23, column: 52, scope: !1715)
!1735 = !DILocation(line: 23, column: 43, scope: !1715)
!1736 = !DILocation(line: 23, column: 59, scope: !1715)
!1737 = !DILocalVariable(name: "out", scope: !1715, file: !585, line: 23, type: !51)
!1738 = !DILocation(line: 24, column: 5, scope: !1715)
!1739 = !DILocalVariable(name: "M", arg: 1, scope: !67, file: !68, line: 111, type: !52)
!1740 = !DILocation(line: 0, scope: !67)
!1741 = !DILocalVariable(name: "i", scope: !1742, file: !68, line: 117, type: !58)
!1742 = distinct !DILexicalBlock(scope: !67, file: !68, line: 117, column: 5)
!1743 = !DILocation(line: 0, scope: !1742)
!1744 = !DILocation(line: 117, column: 10, scope: !1742)
!1745 = !DILocation(line: 117, scope: !1742)
!1746 = !DILocation(line: 117, column: 26, scope: !1747)
!1747 = distinct !DILexicalBlock(scope: !1742, file: !68, line: 117, column: 5)
!1748 = !DILocation(line: 117, column: 5, scope: !1742)
!1749 = !DILocation(line: 124, column: 5, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !67, file: !68, line: 124, column: 5)
!1751 = !DILocation(line: 119, column: 24, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1747, file: !68, line: 118, column: 5)
!1753 = !DILocation(line: 119, column: 29, scope: !1752)
!1754 = !DILocation(line: 119, column: 41, scope: !1752)
!1755 = !DILocation(line: 119, column: 38, scope: !1752)
!1756 = !DILocation(line: 119, column: 36, scope: !1752)
!1757 = !DILocation(line: 119, column: 46, scope: !1752)
!1758 = !DILocalVariable(name: "t", scope: !1752, file: !68, line: 119, type: !53)
!1759 = !DILocation(line: 0, scope: !1752)
!1760 = !DILocation(line: 120, column: 21, scope: !1752)
!1761 = !DILocation(line: 120, column: 9, scope: !1752)
!1762 = !DILocation(line: 120, column: 16, scope: !1752)
!1763 = !DILocation(line: 121, column: 12, scope: !1752)
!1764 = !DILocation(line: 121, column: 9, scope: !1752)
!1765 = !DILocation(line: 121, column: 16, scope: !1752)
!1766 = !DILocation(line: 117, column: 33, scope: !1747)
!1767 = !DILocation(line: 117, column: 5, scope: !1747)
!1768 = distinct !{!1768, !1748, !1769, !388}
!1769 = !DILocation(line: 122, column: 5, scope: !1742)
!1770 = !DILocation(line: 124, scope: !1750)
!1771 = !DILocalVariable(name: "i", scope: !1750, file: !68, line: 124, type: !58)
!1772 = !DILocation(line: 0, scope: !1750)
!1773 = !DILocation(line: 124, column: 26, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1750, file: !68, line: 124, column: 5)
!1775 = !DILocation(line: 134, column: 5, scope: !1776)
!1776 = distinct !DILexicalBlock(scope: !67, file: !68, line: 134, column: 5)
!1777 = !DILocation(line: 126, column: 25, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1774, file: !68, line: 125, column: 5)
!1779 = !DILocation(line: 126, column: 32, scope: !1778)
!1780 = !DILocation(line: 126, column: 43, scope: !1778)
!1781 = !DILocation(line: 126, column: 40, scope: !1778)
!1782 = !DILocation(line: 126, column: 38, scope: !1778)
!1783 = !DILocation(line: 126, column: 48, scope: !1778)
!1784 = !DILocalVariable(name: "t0", scope: !1778, file: !68, line: 126, type: !53)
!1785 = !DILocation(line: 0, scope: !1778)
!1786 = !DILocation(line: 127, column: 28, scope: !1778)
!1787 = !DILocation(line: 127, column: 25, scope: !1778)
!1788 = !DILocation(line: 127, column: 32, scope: !1778)
!1789 = !DILocation(line: 127, column: 43, scope: !1778)
!1790 = !DILocation(line: 127, column: 40, scope: !1778)
!1791 = !DILocation(line: 127, column: 38, scope: !1778)
!1792 = !DILocation(line: 127, column: 48, scope: !1778)
!1793 = !DILocalVariable(name: "t1", scope: !1778, file: !68, line: 127, type: !53)
!1794 = !DILocation(line: 128, column: 23, scope: !1778)
!1795 = !DILocation(line: 128, column: 9, scope: !1778)
!1796 = !DILocation(line: 128, column: 16, scope: !1778)
!1797 = !DILocation(line: 129, column: 23, scope: !1778)
!1798 = !DILocation(line: 129, column: 12, scope: !1778)
!1799 = !DILocation(line: 129, column: 9, scope: !1778)
!1800 = !DILocation(line: 129, column: 16, scope: !1778)
!1801 = !DILocation(line: 130, column: 12, scope: !1778)
!1802 = !DILocation(line: 130, column: 9, scope: !1778)
!1803 = !DILocation(line: 130, column: 16, scope: !1778)
!1804 = !DILocation(line: 131, column: 12, scope: !1778)
!1805 = !DILocation(line: 131, column: 9, scope: !1778)
!1806 = !DILocation(line: 131, column: 16, scope: !1778)
!1807 = !DILocation(line: 124, column: 33, scope: !1774)
!1808 = !DILocation(line: 124, column: 5, scope: !1774)
!1809 = distinct !{!1809, !1749, !1810, !388}
!1810 = !DILocation(line: 132, column: 5, scope: !1750)
!1811 = !DILocation(line: 134, scope: !1776)
!1812 = !DILocalVariable(name: "i", scope: !1776, file: !68, line: 134, type: !58)
!1813 = !DILocation(line: 0, scope: !1776)
!1814 = !DILocation(line: 134, column: 26, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !1776, file: !68, line: 134, column: 5)
!1816 = !DILocation(line: 145, column: 5, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !67, file: !68, line: 145, column: 5)
!1818 = !DILocation(line: 136, column: 25, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1815, file: !68, line: 135, column: 5)
!1820 = !DILocation(line: 136, column: 32, scope: !1819)
!1821 = !DILocation(line: 136, column: 44, scope: !1819)
!1822 = !DILocation(line: 136, column: 41, scope: !1819)
!1823 = !DILocation(line: 136, column: 39, scope: !1819)
!1824 = !DILocation(line: 136, column: 50, scope: !1819)
!1825 = !DILocalVariable(name: "t0", scope: !1819, file: !68, line: 136, type: !53)
!1826 = !DILocation(line: 0, scope: !1819)
!1827 = !DILocation(line: 137, column: 28, scope: !1819)
!1828 = !DILocation(line: 137, column: 25, scope: !1819)
!1829 = !DILocation(line: 137, column: 32, scope: !1819)
!1830 = !DILocation(line: 137, column: 44, scope: !1819)
!1831 = !DILocation(line: 137, column: 41, scope: !1819)
!1832 = !DILocation(line: 137, column: 39, scope: !1819)
!1833 = !DILocation(line: 137, column: 50, scope: !1819)
!1834 = !DILocalVariable(name: "t1", scope: !1819, file: !68, line: 137, type: !53)
!1835 = !DILocation(line: 139, column: 23, scope: !1819)
!1836 = !DILocation(line: 139, column: 9, scope: !1819)
!1837 = !DILocation(line: 139, column: 17, scope: !1819)
!1838 = !DILocation(line: 140, column: 23, scope: !1819)
!1839 = !DILocation(line: 140, column: 12, scope: !1819)
!1840 = !DILocation(line: 140, column: 9, scope: !1819)
!1841 = !DILocation(line: 140, column: 17, scope: !1819)
!1842 = !DILocation(line: 141, column: 12, scope: !1819)
!1843 = !DILocation(line: 141, column: 9, scope: !1819)
!1844 = !DILocation(line: 141, column: 17, scope: !1819)
!1845 = !DILocation(line: 142, column: 12, scope: !1819)
!1846 = !DILocation(line: 142, column: 9, scope: !1819)
!1847 = !DILocation(line: 142, column: 17, scope: !1819)
!1848 = !DILocation(line: 134, column: 32, scope: !1815)
!1849 = !DILocation(line: 134, column: 5, scope: !1815)
!1850 = distinct !{!1850, !1775, !1851, !388}
!1851 = !DILocation(line: 143, column: 5, scope: !1776)
!1852 = !DILocation(line: 145, scope: !1817)
!1853 = !DILocalVariable(name: "i", scope: !1817, file: !68, line: 145, type: !58)
!1854 = !DILocation(line: 0, scope: !1817)
!1855 = !DILocation(line: 145, column: 26, scope: !1856)
!1856 = distinct !DILexicalBlock(scope: !1817, file: !68, line: 145, column: 5)
!1857 = !DILocation(line: 147, column: 24, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !1856, file: !68, line: 146, column: 5)
!1859 = !DILocation(line: 147, column: 28, scope: !1858)
!1860 = !DILocation(line: 147, column: 39, scope: !1858)
!1861 = !DILocation(line: 147, column: 36, scope: !1858)
!1862 = !DILocation(line: 147, column: 44, scope: !1858)
!1863 = !DILocalVariable(name: "t", scope: !1858, file: !68, line: 147, type: !53)
!1864 = !DILocation(line: 0, scope: !1858)
!1865 = !DILocation(line: 148, column: 21, scope: !1858)
!1866 = !DILocation(line: 148, column: 9, scope: !1858)
!1867 = !DILocation(line: 148, column: 16, scope: !1858)
!1868 = !DILocation(line: 149, column: 12, scope: !1858)
!1869 = !DILocation(line: 149, column: 9, scope: !1858)
!1870 = !DILocation(line: 149, column: 16, scope: !1858)
!1871 = !DILocation(line: 145, column: 32, scope: !1856)
!1872 = !DILocation(line: 145, column: 5, scope: !1856)
!1873 = distinct !{!1873, !1816, !1874, !388}
!1874 = !DILocation(line: 150, column: 5, scope: !1817)
!1875 = !DILocation(line: 151, column: 1, scope: !67)
!1876 = distinct !DISubprogram(name: "mul_add_mat_x_m_mat", scope: !408, file: !408, line: 61, type: !469, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !71)
!1877 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !1876, file: !408, line: 61, type: !324)
!1878 = !DILocation(line: 0, scope: !1876)
!1879 = !DILocalVariable(name: "mat", arg: 2, scope: !1876, file: !408, line: 61, type: !90)
!1880 = !DILocalVariable(name: "bs_mat", arg: 3, scope: !1876, file: !408, line: 61, type: !411)
!1881 = !DILocalVariable(name: "acc", arg: 4, scope: !1876, file: !408, line: 61, type: !52)
!1882 = !DILocalVariable(name: "mat_rows", arg: 5, scope: !1876, file: !408, line: 62, type: !324)
!1883 = !DILocalVariable(name: "mat_cols", arg: 6, scope: !1876, file: !408, line: 62, type: !324)
!1884 = !DILocalVariable(name: "bs_mat_cols", arg: 7, scope: !1876, file: !408, line: 62, type: !324)
!1885 = !DILocalVariable(name: "r", scope: !1886, file: !408, line: 64, type: !86)
!1886 = distinct !DILexicalBlock(scope: !1876, file: !408, line: 64, column: 5)
!1887 = !DILocation(line: 0, scope: !1886)
!1888 = !DILocation(line: 64, column: 10, scope: !1886)
!1889 = !DILocation(line: 64, scope: !1886)
!1890 = !DILocation(line: 64, column: 23, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1886, file: !408, line: 64, column: 5)
!1892 = !DILocation(line: 64, column: 5, scope: !1886)
!1893 = !DILocation(line: 65, column: 9, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1895, file: !408, line: 65, column: 9)
!1895 = distinct !DILexicalBlock(scope: !1891, file: !408, line: 64, column: 40)
!1896 = !DILocation(line: 65, scope: !1894)
!1897 = !DILocalVariable(name: "c", scope: !1894, file: !408, line: 65, type: !86)
!1898 = !DILocation(line: 0, scope: !1894)
!1899 = !DILocation(line: 65, column: 27, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !1894, file: !408, line: 65, column: 9)
!1901 = !DILocation(line: 66, column: 13, scope: !1902)
!1902 = distinct !DILexicalBlock(scope: !1903, file: !408, line: 66, column: 13)
!1903 = distinct !DILexicalBlock(scope: !1900, file: !408, line: 65, column: 44)
!1904 = !DILocation(line: 66, scope: !1902)
!1905 = !DILocalVariable(name: "k", scope: !1902, file: !408, line: 66, type: !86)
!1906 = !DILocation(line: 0, scope: !1902)
!1907 = !DILocation(line: 66, column: 31, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1902, file: !408, line: 66, column: 13)
!1909 = !DILocation(line: 67, column: 70, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1908, file: !408, line: 66, column: 54)
!1911 = !DILocation(line: 67, column: 84, scope: !1910)
!1912 = !DILocation(line: 67, column: 65, scope: !1910)
!1913 = !DILocation(line: 67, column: 51, scope: !1910)
!1914 = !DILocation(line: 67, column: 96, scope: !1910)
!1915 = !DILocation(line: 67, column: 90, scope: !1910)
!1916 = !DILocation(line: 67, column: 136, scope: !1910)
!1917 = !DILocation(line: 67, column: 150, scope: !1910)
!1918 = !DILocation(line: 67, column: 131, scope: !1910)
!1919 = !DILocation(line: 67, column: 117, scope: !1910)
!1920 = !DILocation(line: 67, column: 17, scope: !1910)
!1921 = !DILocation(line: 66, column: 48, scope: !1908)
!1922 = !DILocation(line: 66, column: 13, scope: !1908)
!1923 = distinct !{!1923, !1901, !1924, !388}
!1924 = !DILocation(line: 68, column: 13, scope: !1902)
!1925 = !DILocation(line: 65, column: 40, scope: !1900)
!1926 = !DILocation(line: 65, column: 9, scope: !1900)
!1927 = distinct !{!1927, !1893, !1928, !388}
!1928 = !DILocation(line: 69, column: 9, scope: !1894)
!1929 = !DILocation(line: 64, column: 36, scope: !1891)
!1930 = !DILocation(line: 64, column: 5, scope: !1891)
!1931 = distinct !{!1931, !1892, !1932, !388}
!1932 = !DILocation(line: 70, column: 5, scope: !1886)
!1933 = !DILocation(line: 71, column: 1, scope: !1876)
!1934 = distinct !DISubprogram(name: "P1_times_Vt", scope: !408, file: !408, line: 82, type: !459, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !71)
!1935 = !DILocalVariable(name: "p", arg: 1, scope: !1934, file: !408, line: 82, type: !264)
!1936 = !DILocation(line: 0, scope: !1934)
!1937 = !DILocalVariable(name: "P1", arg: 2, scope: !1934, file: !408, line: 82, type: !411)
!1938 = !DILocalVariable(name: "V", arg: 3, scope: !1934, file: !408, line: 82, type: !90)
!1939 = !DILocalVariable(name: "acc", arg: 4, scope: !1934, file: !408, line: 82, type: !52)
!1940 = !DILocation(line: 86, column: 5, scope: !1934)
!1941 = !DILocation(line: 87, column: 1, scope: !1934)
!1942 = distinct !DISubprogram(name: "mul_add_m_upper_triangular_mat_x_mat_trans", scope: !408, file: !408, line: 32, type: !601, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !71)
!1943 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !1942, file: !408, line: 32, type: !324)
!1944 = !DILocation(line: 0, scope: !1942)
!1945 = !DILocalVariable(name: "bs_mat", arg: 2, scope: !1942, file: !408, line: 32, type: !411)
!1946 = !DILocalVariable(name: "mat", arg: 3, scope: !1942, file: !408, line: 32, type: !90)
!1947 = !DILocalVariable(name: "acc", arg: 4, scope: !1942, file: !408, line: 32, type: !52)
!1948 = !DILocalVariable(name: "bs_mat_rows", arg: 5, scope: !1942, file: !408, line: 33, type: !324)
!1949 = !DILocalVariable(name: "bs_mat_cols", arg: 6, scope: !1942, file: !408, line: 33, type: !324)
!1950 = !DILocalVariable(name: "mat_rows", arg: 7, scope: !1942, file: !408, line: 33, type: !324)
!1951 = !DILocalVariable(name: "triangular", arg: 8, scope: !1942, file: !408, line: 33, type: !324)
!1952 = !DILocalVariable(name: "bs_mat_entries_used", scope: !1942, file: !408, line: 34, type: !86)
!1953 = !DILocalVariable(name: "r", scope: !1954, file: !408, line: 35, type: !86)
!1954 = distinct !DILexicalBlock(scope: !1942, file: !408, line: 35, column: 5)
!1955 = !DILocation(line: 0, scope: !1954)
!1956 = !DILocation(line: 35, column: 10, scope: !1954)
!1957 = !DILocation(line: 34, column: 9, scope: !1942)
!1958 = !DILocation(line: 35, scope: !1954)
!1959 = !DILocation(line: 35, column: 23, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1954, file: !408, line: 35, column: 5)
!1961 = !DILocation(line: 35, column: 5, scope: !1954)
!1962 = !DILocation(line: 36, column: 33, scope: !1963)
!1963 = distinct !DILexicalBlock(scope: !1964, file: !408, line: 36, column: 9)
!1964 = distinct !DILexicalBlock(scope: !1960, file: !408, line: 35, column: 43)
!1965 = !DILocalVariable(name: "c", scope: !1963, file: !408, line: 36, type: !86)
!1966 = !DILocation(line: 0, scope: !1963)
!1967 = !DILocation(line: 36, column: 14, scope: !1963)
!1968 = !DILocation(line: 36, scope: !1963)
!1969 = !DILocation(line: 36, column: 40, scope: !1970)
!1970 = distinct !DILexicalBlock(scope: !1963, file: !408, line: 36, column: 9)
!1971 = !DILocation(line: 36, column: 9, scope: !1963)
!1972 = !DILocation(line: 37, column: 13, scope: !1973)
!1973 = distinct !DILexicalBlock(scope: !1974, file: !408, line: 37, column: 13)
!1974 = distinct !DILexicalBlock(scope: !1970, file: !408, line: 36, column: 60)
!1975 = !DILocation(line: 37, scope: !1973)
!1976 = !DILocalVariable(name: "k", scope: !1973, file: !408, line: 37, type: !86)
!1977 = !DILocation(line: 0, scope: !1973)
!1978 = !DILocation(line: 37, column: 31, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1973, file: !408, line: 37, column: 13)
!1980 = !DILocation(line: 38, column: 65, scope: !1981)
!1981 = distinct !DILexicalBlock(scope: !1979, file: !408, line: 37, column: 51)
!1982 = !DILocation(line: 38, column: 51, scope: !1981)
!1983 = !DILocation(line: 38, column: 94, scope: !1981)
!1984 = !DILocation(line: 38, column: 88, scope: !1981)
!1985 = !DILocation(line: 38, column: 137, scope: !1981)
!1986 = !DILocation(line: 38, column: 148, scope: !1981)
!1987 = !DILocation(line: 38, column: 132, scope: !1981)
!1988 = !DILocation(line: 38, column: 118, scope: !1981)
!1989 = !DILocation(line: 38, column: 17, scope: !1981)
!1990 = !DILocation(line: 37, column: 45, scope: !1979)
!1991 = !DILocation(line: 37, column: 13, scope: !1979)
!1992 = distinct !{!1992, !1972, !1993, !388}
!1993 = !DILocation(line: 39, column: 13, scope: !1973)
!1994 = !DILocation(line: 40, column: 33, scope: !1974)
!1995 = !DILocation(line: 36, column: 56, scope: !1970)
!1996 = !DILocation(line: 36, column: 9, scope: !1970)
!1997 = distinct !{!1997, !1971, !1998, !388}
!1998 = !DILocation(line: 41, column: 9, scope: !1963)
!1999 = !DILocation(line: 35, column: 39, scope: !1960)
!2000 = !DILocation(line: 35, column: 5, scope: !1960)
!2001 = distinct !{!2001, !1961, !2002, !388}
!2002 = !DILocation(line: 42, column: 5, scope: !1954)
!2003 = !DILocation(line: 43, column: 1, scope: !1942)
!2004 = distinct !DISubprogram(name: "pqmayo_MAYO_3_ref_mayo_sign", scope: !68, file: !68, line: 502, type: !806, scopeLine: 504, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !71)
!2005 = !DILocalVariable(name: "p", arg: 1, scope: !2004, file: !68, line: 502, type: !264)
!2006 = !DILocation(line: 0, scope: !2004)
!2007 = !DILocalVariable(name: "sm", arg: 2, scope: !2004, file: !68, line: 502, type: !61)
!2008 = !DILocalVariable(name: "smlen", arg: 3, scope: !2004, file: !68, line: 503, type: !808)
!2009 = !DILocalVariable(name: "m", arg: 4, scope: !2004, file: !68, line: 503, type: !90)
!2010 = !DILocalVariable(name: "mlen", arg: 5, scope: !2004, file: !68, line: 504, type: !58)
!2011 = !DILocalVariable(name: "csk", arg: 6, scope: !2004, file: !68, line: 504, type: !90)
!2012 = !DILocalVariable(name: "ret", scope: !2004, file: !68, line: 505, type: !86)
!2013 = !DILocalVariable(name: "param_sig_bytes", scope: !2004, file: !68, line: 506, type: !324)
!2014 = !DILocation(line: 508, column: 16, scope: !2004)
!2015 = !DILocation(line: 508, column: 5, scope: !2004)
!2016 = !DILocation(line: 509, column: 50, scope: !2004)
!2017 = !DILocalVariable(name: "siglen", scope: !2004, file: !68, line: 507, type: !58)
!2018 = !DILocation(line: 509, column: 11, scope: !2004)
!2019 = !DILocation(line: 510, column: 13, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !2004, file: !68, line: 510, column: 9)
!2021 = !DILocation(line: 510, column: 24, scope: !2020)
!2022 = !DILocation(line: 511, column: 23, scope: !2023)
!2023 = distinct !DILexicalBlock(scope: !2020, file: !68, line: 510, column: 62)
!2024 = !DILocation(line: 511, column: 30, scope: !2023)
!2025 = !DILocation(line: 511, column: 9, scope: !2023)
!2026 = !DILocation(line: 512, column: 9, scope: !2023)
!2027 = !DILocation(line: 515, column: 14, scope: !2004)
!2028 = !DILocation(line: 515, column: 21, scope: !2004)
!2029 = !DILocation(line: 515, column: 12, scope: !2004)
!2030 = !DILocation(line: 515, column: 5, scope: !2004)
!2031 = !DILabel(scope: !2004, name: "err", file: !68, line: 516)
!2032 = !DILocation(line: 516, column: 1, scope: !2004)
!2033 = !DILocation(line: 517, column: 5, scope: !2004)
!2034 = distinct !DISubprogram(name: "pqmayo_MAYO_3_ref_mayo_open", scope: !68, file: !68, line: 520, type: !806, scopeLine: 522, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !71)
!2035 = !DILocalVariable(name: "p", arg: 1, scope: !2034, file: !68, line: 520, type: !264)
!2036 = !DILocation(line: 0, scope: !2034)
!2037 = !DILocalVariable(name: "m", arg: 2, scope: !2034, file: !68, line: 520, type: !61)
!2038 = !DILocalVariable(name: "mlen", arg: 3, scope: !2034, file: !68, line: 521, type: !808)
!2039 = !DILocalVariable(name: "sm", arg: 4, scope: !2034, file: !68, line: 521, type: !90)
!2040 = !DILocalVariable(name: "smlen", arg: 5, scope: !2034, file: !68, line: 522, type: !58)
!2041 = !DILocalVariable(name: "pk", arg: 6, scope: !2034, file: !68, line: 522, type: !90)
!2042 = !DILocalVariable(name: "param_sig_bytes", scope: !2034, file: !68, line: 523, type: !324)
!2043 = !DILocation(line: 524, column: 15, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !2034, file: !68, line: 524, column: 9)
!2045 = !DILocation(line: 527, column: 36, scope: !2034)
!2046 = !DILocation(line: 527, column: 61, scope: !2034)
!2047 = !DILocation(line: 527, column: 18, scope: !2034)
!2048 = !DILocalVariable(name: "result", scope: !2034, file: !68, line: 527, type: !86)
!2049 = !DILocation(line: 530, column: 16, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !2034, file: !68, line: 530, column: 9)
!2051 = !DILocation(line: 531, column: 23, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !2050, file: !68, line: 530, column: 28)
!2053 = !DILocation(line: 531, column: 15, scope: !2052)
!2054 = !DILocation(line: 532, column: 23, scope: !2052)
!2055 = !DILocation(line: 532, column: 9, scope: !2052)
!2056 = !DILocation(line: 533, column: 5, scope: !2052)
!2057 = !DILocation(line: 536, column: 1, scope: !2034)
!2058 = distinct !DISubprogram(name: "pqmayo_MAYO_3_ref_mayo_verify", scope: !68, file: !68, line: 617, type: !2059, scopeLine: 619, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !71)
!2059 = !DISubroutineType(types: !2060)
!2060 = !{!86, !264, !90, !58, !90, !90}
!2061 = !DILocalVariable(name: "p", arg: 1, scope: !2058, file: !68, line: 617, type: !264)
!2062 = !DILocation(line: 0, scope: !2058)
!2063 = !DILocalVariable(name: "m", arg: 2, scope: !2058, file: !68, line: 617, type: !90)
!2064 = !DILocalVariable(name: "mlen", arg: 3, scope: !2058, file: !68, line: 618, type: !58)
!2065 = !DILocalVariable(name: "sig", arg: 4, scope: !2058, file: !68, line: 618, type: !90)
!2066 = !DILocalVariable(name: "cpk", arg: 5, scope: !2058, file: !68, line: 619, type: !90)
!2067 = !DILocalVariable(name: "tEnc", scope: !2058, file: !68, line: 620, type: !818)
!2068 = !DILocation(line: 620, column: 19, scope: !2058)
!2069 = !DILocalVariable(name: "t", scope: !2058, file: !68, line: 621, type: !823)
!2070 = !DILocation(line: 621, column: 19, scope: !2058)
!2071 = !DILocalVariable(name: "y", scope: !2058, file: !68, line: 622, type: !2072)
!2072 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 1728, elements: !2073)
!2073 = !{!2074}
!2074 = !DISubrange(count: 216)
!2075 = !DILocation(line: 622, column: 19, scope: !2058)
!2076 = !DILocalVariable(name: "s", scope: !2058, file: !68, line: 623, type: !847)
!2077 = !DILocation(line: 623, column: 19, scope: !2058)
!2078 = !DILocalVariable(name: "pk", scope: !2058, file: !68, line: 624, type: !2079)
!2079 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 3145408, elements: !2080)
!2080 = !{!2081}
!2081 = !DISubrange(count: 49147)
!2082 = !DILocation(line: 624, column: 14, scope: !2058)
!2083 = !DILocalVariable(name: "tmp", scope: !2058, file: !68, line: 625, type: !2084)
!2084 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 640, elements: !2085)
!2085 = !{!2086}
!2086 = !DISubrange(count: 80)
!2087 = !DILocation(line: 625, column: 19, scope: !2058)
!2088 = !DILocalVariable(name: "param_m", scope: !2058, file: !68, line: 627, type: !324)
!2089 = !DILocalVariable(name: "param_n", scope: !2058, file: !68, line: 628, type: !324)
!2090 = !DILocalVariable(name: "param_k", scope: !2058, file: !68, line: 629, type: !324)
!2091 = !DILocalVariable(name: "param_m_bytes", scope: !2058, file: !68, line: 630, type: !324)
!2092 = !DILocalVariable(name: "param_sig_bytes", scope: !2058, file: !68, line: 631, type: !324)
!2093 = !DILocalVariable(name: "param_digest_bytes", scope: !2058, file: !68, line: 632, type: !324)
!2094 = !DILocalVariable(name: "param_salt_bytes", scope: !2058, file: !68, line: 633, type: !324)
!2095 = !DILocation(line: 635, column: 15, scope: !2058)
!2096 = !DILocalVariable(name: "ret", scope: !2058, file: !68, line: 635, type: !86)
!2097 = !DILocation(line: 636, column: 13, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !2058, file: !68, line: 636, column: 9)
!2099 = !DILocalVariable(name: "P1", scope: !2058, file: !68, line: 640, type: !52)
!2100 = !DILocation(line: 641, column: 23, scope: !2058)
!2101 = !DILocalVariable(name: "P2", scope: !2058, file: !68, line: 641, type: !52)
!2102 = !DILocation(line: 642, column: 23, scope: !2058)
!2103 = !DILocalVariable(name: "P3", scope: !2058, file: !68, line: 642, type: !52)
!2104 = !DILocation(line: 657, column: 5, scope: !2058)
!2105 = !DILocation(line: 660, column: 16, scope: !2058)
!2106 = !DILocation(line: 660, column: 60, scope: !2058)
!2107 = !DILocation(line: 660, column: 5, scope: !2058)
!2108 = !DILocation(line: 662, column: 5, scope: !2058)
!2109 = !DILocation(line: 663, column: 5, scope: !2058)
!2110 = !DILocation(line: 666, column: 5, scope: !2058)
!2111 = !DILocation(line: 668, column: 5, scope: !2058)
!2112 = !DILocation(line: 670, column: 9, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !2058, file: !68, line: 670, column: 9)
!2114 = !DILocation(line: 670, column: 31, scope: !2113)
!2115 = !DILocation(line: 674, column: 1, scope: !2058)
!2116 = distinct !DISubprogram(name: "pqmayo_MAYO_3_ref_mayo_expand_pk", scope: !68, file: !68, line: 608, type: !2117, scopeLine: 609, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !71)
!2117 = !DISubroutineType(types: !2118)
!2118 = !{!86, !264, !90, !52}
!2119 = !DILocalVariable(name: "p", arg: 1, scope: !2116, file: !68, line: 608, type: !264)
!2120 = !DILocation(line: 0, scope: !2116)
!2121 = !DILocalVariable(name: "cpk", arg: 2, scope: !2116, file: !68, line: 608, type: !90)
!2122 = !DILocalVariable(name: "pk", arg: 3, scope: !2116, file: !68, line: 609, type: !52)
!2123 = !DILocation(line: 610, column: 5, scope: !2116)
!2124 = !DILocation(line: 612, column: 23, scope: !2116)
!2125 = !DILocation(line: 612, column: 72, scope: !2116)
!2126 = !DILocation(line: 612, column: 5, scope: !2116)
!2127 = !DILocation(line: 614, column: 5, scope: !2116)
!2128 = distinct !DISubprogram(name: "eval_public_map", scope: !68, file: !68, line: 288, type: !2129, scopeLine: 288, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !71)
!2129 = !DISubroutineType(types: !2130)
!2130 = !{null, !264, !90, !411, !411, !411, !61}
!2131 = !DILocalVariable(name: "p", arg: 1, scope: !2128, file: !68, line: 288, type: !264)
!2132 = !DILocation(line: 0, scope: !2128)
!2133 = !DILocalVariable(name: "s", arg: 2, scope: !2128, file: !68, line: 288, type: !90)
!2134 = !DILocalVariable(name: "P1", arg: 3, scope: !2128, file: !68, line: 288, type: !411)
!2135 = !DILocalVariable(name: "P2", arg: 4, scope: !2128, file: !68, line: 288, type: !411)
!2136 = !DILocalVariable(name: "P3", arg: 5, scope: !2128, file: !68, line: 288, type: !411)
!2137 = !DILocalVariable(name: "eval", arg: 6, scope: !2128, file: !68, line: 288, type: !61)
!2138 = !DILocalVariable(name: "SPS", scope: !2128, file: !68, line: 289, type: !2139)
!2139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 54208, elements: !2140)
!2140 = !{!2141}
!2141 = !DISubrange(count: 847)
!2142 = !DILocation(line: 289, column: 14, scope: !2128)
!2143 = !DILocation(line: 291, column: 5, scope: !2128)
!2144 = !DILocalVariable(name: "zero", scope: !2128, file: !68, line: 292, type: !823)
!2145 = !DILocation(line: 292, column: 19, scope: !2128)
!2146 = !DILocation(line: 293, column: 5, scope: !2128)
!2147 = !DILocation(line: 294, column: 1, scope: !2128)
!2148 = distinct !DISubprogram(name: "m_calculate_PS_SPS", scope: !408, file: !408, line: 277, type: !2149, scopeLine: 278, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !71)
!2149 = !DISubroutineType(types: !2150)
!2150 = !{null, !264, !411, !411, !411, !90, !52}
!2151 = !DILocalVariable(name: "p", arg: 1, scope: !2148, file: !408, line: 277, type: !264)
!2152 = !DILocation(line: 0, scope: !2148)
!2153 = !DILocalVariable(name: "P1", arg: 2, scope: !2148, file: !408, line: 277, type: !411)
!2154 = !DILocalVariable(name: "P2", arg: 3, scope: !2148, file: !408, line: 277, type: !411)
!2155 = !DILocalVariable(name: "P3", arg: 4, scope: !2148, file: !408, line: 277, type: !411)
!2156 = !DILocalVariable(name: "s", arg: 5, scope: !2148, file: !408, line: 277, type: !90)
!2157 = !DILocalVariable(name: "SPS", arg: 6, scope: !2148, file: !408, line: 278, type: !52)
!2158 = !DILocalVariable(name: "PS", scope: !2148, file: !408, line: 286, type: !2159)
!2159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 581504, elements: !2160)
!2160 = !{!2161}
!2161 = !DISubrange(count: 9086)
!2162 = !DILocation(line: 286, column: 14, scope: !2148)
!2163 = !DILocation(line: 287, column: 5, scope: !2148)
!2164 = !DILocation(line: 290, column: 5, scope: !2148)
!2165 = !DILocation(line: 292, column: 1, scope: !2148)
!2166 = distinct !DISubprogram(name: "mayo_generic_m_calculate_PS", scope: !408, file: !408, line: 151, type: !2167, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !71)
!2167 = !DISubroutineType(types: !2168)
!2168 = !{null, !411, !411, !411, !90, !324, !324, !324, !324, !52}
!2169 = !DILocalVariable(name: "P1", arg: 1, scope: !2166, file: !408, line: 151, type: !411)
!2170 = !DILocation(line: 0, scope: !2166)
!2171 = !DILocalVariable(name: "P2", arg: 2, scope: !2166, file: !408, line: 151, type: !411)
!2172 = !DILocalVariable(name: "P3", arg: 3, scope: !2166, file: !408, line: 151, type: !411)
!2173 = !DILocalVariable(name: "S", arg: 4, scope: !2166, file: !408, line: 151, type: !90)
!2174 = !DILocalVariable(name: "m", arg: 5, scope: !2166, file: !408, line: 152, type: !324)
!2175 = !DILocalVariable(name: "v", arg: 6, scope: !2166, file: !408, line: 152, type: !324)
!2176 = !DILocalVariable(name: "o", arg: 7, scope: !2166, file: !408, line: 152, type: !324)
!2177 = !DILocalVariable(name: "k", arg: 8, scope: !2166, file: !408, line: 152, type: !324)
!2178 = !DILocalVariable(name: "PS", arg: 9, scope: !2166, file: !408, line: 152, type: !52)
!2179 = !DILocation(line: 154, column: 21, scope: !2166)
!2180 = !DILocalVariable(name: "n", scope: !2166, file: !408, line: 154, type: !324)
!2181 = !DILocation(line: 155, column: 32, scope: !2166)
!2182 = !DILocation(line: 155, column: 37, scope: !2166)
!2183 = !DILocalVariable(name: "m_vec_limbs", scope: !2166, file: !408, line: 155, type: !324)
!2184 = !DILocalVariable(name: "accumulator", scope: !2166, file: !408, line: 157, type: !2185)
!2185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 9304064, elements: !2186)
!2186 = !{!2187}
!2187 = !DISubrange(count: 145376)
!2188 = !DILocation(line: 157, column: 14, scope: !2166)
!2189 = !DILocalVariable(name: "P1_used", scope: !2166, file: !408, line: 158, type: !86)
!2190 = !DILocalVariable(name: "row", scope: !2191, file: !408, line: 159, type: !86)
!2191 = distinct !DILexicalBlock(scope: !2166, file: !408, line: 159, column: 5)
!2192 = !DILocation(line: 0, scope: !2191)
!2193 = !DILocation(line: 159, column: 10, scope: !2191)
!2194 = !DILocation(line: 158, column: 9, scope: !2166)
!2195 = !DILocation(line: 159, scope: !2191)
!2196 = !DILocation(line: 159, column: 27, scope: !2197)
!2197 = distinct !DILexicalBlock(scope: !2191, file: !408, line: 159, column: 5)
!2198 = !DILocation(line: 159, column: 5, scope: !2191)
!2199 = !DILocation(line: 160, column: 9, scope: !2200)
!2200 = distinct !DILexicalBlock(scope: !2201, file: !408, line: 160, column: 9)
!2201 = distinct !DILexicalBlock(scope: !2197, file: !408, line: 159, column: 39)
!2202 = !DILocation(line: 175, column: 5, scope: !2203)
!2203 = distinct !DILexicalBlock(scope: !2166, file: !408, line: 175, column: 5)
!2204 = !DILocation(line: 160, scope: !2200)
!2205 = !DILocalVariable(name: "j", scope: !2200, file: !408, line: 160, type: !86)
!2206 = !DILocation(line: 0, scope: !2200)
!2207 = !DILocation(line: 160, column: 29, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !2200, file: !408, line: 160, column: 9)
!2209 = !DILocation(line: 167, column: 9, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !2201, file: !408, line: 167, column: 9)
!2211 = !DILocation(line: 161, column: 13, scope: !2212)
!2212 = distinct !DILexicalBlock(scope: !2213, file: !408, line: 161, column: 13)
!2213 = distinct !DILexicalBlock(scope: !2208, file: !408, line: 160, column: 39)
!2214 = !DILocation(line: 161, scope: !2212)
!2215 = !DILocalVariable(name: "col", scope: !2212, file: !408, line: 161, type: !86)
!2216 = !DILocation(line: 0, scope: !2212)
!2217 = !DILocation(line: 161, column: 35, scope: !2218)
!2218 = distinct !DILexicalBlock(scope: !2212, file: !408, line: 161, column: 13)
!2219 = !DILocation(line: 162, column: 54, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !2218, file: !408, line: 161, column: 47)
!2221 = !DILocation(line: 162, column: 43, scope: !2220)
!2222 = !DILocation(line: 162, column: 91, scope: !2220)
!2223 = !DILocation(line: 162, column: 95, scope: !2220)
!2224 = !DILocation(line: 162, column: 102, scope: !2220)
!2225 = !DILocation(line: 162, column: 115, scope: !2220)
!2226 = !DILocation(line: 162, column: 109, scope: !2220)
!2227 = !DILocation(line: 162, column: 107, scope: !2220)
!2228 = !DILocation(line: 162, column: 125, scope: !2220)
!2229 = !DILocation(line: 162, column: 82, scope: !2220)
!2230 = !DILocation(line: 162, column: 17, scope: !2220)
!2231 = !DILocation(line: 161, column: 43, scope: !2218)
!2232 = !DILocation(line: 161, column: 13, scope: !2218)
!2233 = distinct !{!2233, !2211, !2234, !388}
!2234 = !DILocation(line: 163, column: 13, scope: !2212)
!2235 = !DILocation(line: 164, column: 21, scope: !2213)
!2236 = !DILocation(line: 160, column: 35, scope: !2208)
!2237 = !DILocation(line: 160, column: 9, scope: !2208)
!2238 = distinct !{!2238, !2199, !2239, !388}
!2239 = !DILocation(line: 165, column: 9, scope: !2200)
!2240 = !DILocation(line: 167, scope: !2210)
!2241 = !DILocalVariable(name: "j", scope: !2210, file: !408, line: 167, type: !86)
!2242 = !DILocation(line: 0, scope: !2210)
!2243 = !DILocation(line: 167, column: 27, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !2210, file: !408, line: 167, column: 9)
!2245 = !DILocation(line: 168, column: 13, scope: !2246)
!2246 = distinct !DILexicalBlock(scope: !2247, file: !408, line: 168, column: 13)
!2247 = distinct !DILexicalBlock(scope: !2244, file: !408, line: 167, column: 37)
!2248 = !DILocation(line: 168, scope: !2246)
!2249 = !DILocalVariable(name: "col", scope: !2246, file: !408, line: 168, type: !86)
!2250 = !DILocation(line: 0, scope: !2246)
!2251 = !DILocation(line: 168, column: 35, scope: !2252)
!2252 = distinct !DILexicalBlock(scope: !2246, file: !408, line: 168, column: 13)
!2253 = !DILocation(line: 169, column: 50, scope: !2254)
!2254 = distinct !DILexicalBlock(scope: !2252, file: !408, line: 168, column: 47)
!2255 = !DILocation(line: 169, column: 54, scope: !2254)
!2256 = !DILocation(line: 169, column: 58, scope: !2254)
!2257 = !DILocation(line: 169, column: 43, scope: !2254)
!2258 = !DILocation(line: 169, column: 93, scope: !2254)
!2259 = !DILocation(line: 169, column: 97, scope: !2254)
!2260 = !DILocation(line: 169, column: 104, scope: !2254)
!2261 = !DILocation(line: 169, column: 118, scope: !2254)
!2262 = !DILocation(line: 169, column: 111, scope: !2254)
!2263 = !DILocation(line: 169, column: 109, scope: !2254)
!2264 = !DILocation(line: 169, column: 133, scope: !2254)
!2265 = !DILocation(line: 169, column: 84, scope: !2254)
!2266 = !DILocation(line: 169, column: 17, scope: !2254)
!2267 = !DILocation(line: 168, column: 43, scope: !2252)
!2268 = !DILocation(line: 168, column: 13, scope: !2252)
!2269 = distinct !{!2269, !2245, !2270, !388}
!2270 = !DILocation(line: 170, column: 13, scope: !2246)
!2271 = !DILocation(line: 167, column: 33, scope: !2244)
!2272 = !DILocation(line: 167, column: 9, scope: !2244)
!2273 = distinct !{!2273, !2209, !2274, !388}
!2274 = !DILocation(line: 171, column: 9, scope: !2210)
!2275 = !DILocation(line: 159, column: 35, scope: !2197)
!2276 = !DILocation(line: 159, column: 5, scope: !2197)
!2277 = distinct !{!2277, !2198, !2278, !388}
!2278 = !DILocation(line: 172, column: 5, scope: !2191)
!2279 = !DILocation(line: 174, column: 9, scope: !2166)
!2280 = !DILocation(line: 175, scope: !2203)
!2281 = !DILocalVariable(name: "row", scope: !2203, file: !408, line: 175, type: !86)
!2282 = !DILocation(line: 0, scope: !2203)
!2283 = !DILocalVariable(name: "P3_used", scope: !2166, file: !408, line: 174, type: !86)
!2284 = !DILocation(line: 175, column: 27, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !2203, file: !408, line: 175, column: 5)
!2286 = !DILocation(line: 176, column: 9, scope: !2287)
!2287 = distinct !DILexicalBlock(scope: !2288, file: !408, line: 176, column: 9)
!2288 = distinct !DILexicalBlock(scope: !2285, file: !408, line: 175, column: 39)
!2289 = !DILocation(line: 186, column: 5, scope: !2166)
!2290 = !DILocation(line: 176, scope: !2287)
!2291 = !DILocalVariable(name: "j", scope: !2287, file: !408, line: 176, type: !86)
!2292 = !DILocation(line: 0, scope: !2287)
!2293 = !DILocation(line: 176, column: 29, scope: !2294)
!2294 = distinct !DILexicalBlock(scope: !2287, file: !408, line: 176, column: 9)
!2295 = !DILocation(line: 177, column: 13, scope: !2296)
!2296 = distinct !DILexicalBlock(scope: !2297, file: !408, line: 177, column: 13)
!2297 = distinct !DILexicalBlock(scope: !2294, file: !408, line: 176, column: 39)
!2298 = !DILocation(line: 177, scope: !2296)
!2299 = !DILocalVariable(name: "col", scope: !2296, file: !408, line: 177, type: !86)
!2300 = !DILocation(line: 0, scope: !2296)
!2301 = !DILocation(line: 177, column: 35, scope: !2302)
!2302 = distinct !DILexicalBlock(scope: !2296, file: !408, line: 177, column: 13)
!2303 = !DILocation(line: 178, column: 53, scope: !2304)
!2304 = distinct !DILexicalBlock(scope: !2302, file: !408, line: 177, column: 47)
!2305 = !DILocation(line: 178, column: 43, scope: !2304)
!2306 = !DILocation(line: 178, column: 89, scope: !2304)
!2307 = !DILocation(line: 178, column: 93, scope: !2304)
!2308 = !DILocation(line: 178, column: 100, scope: !2304)
!2309 = !DILocation(line: 178, column: 113, scope: !2304)
!2310 = !DILocation(line: 178, column: 107, scope: !2304)
!2311 = !DILocation(line: 178, column: 105, scope: !2304)
!2312 = !DILocation(line: 178, column: 123, scope: !2304)
!2313 = !DILocation(line: 178, column: 80, scope: !2304)
!2314 = !DILocation(line: 178, column: 17, scope: !2304)
!2315 = !DILocation(line: 177, column: 43, scope: !2302)
!2316 = !DILocation(line: 177, column: 13, scope: !2302)
!2317 = distinct !{!2317, !2295, !2318, !388}
!2318 = !DILocation(line: 179, column: 13, scope: !2296)
!2319 = !DILocation(line: 180, column: 21, scope: !2297)
!2320 = !DILocation(line: 176, column: 35, scope: !2294)
!2321 = !DILocation(line: 176, column: 9, scope: !2294)
!2322 = distinct !{!2322, !2286, !2323, !388}
!2323 = !DILocation(line: 181, column: 9, scope: !2287)
!2324 = !DILocation(line: 175, column: 35, scope: !2285)
!2325 = !DILocation(line: 175, column: 5, scope: !2285)
!2326 = distinct !{!2326, !2202, !2327, !388}
!2327 = !DILocation(line: 182, column: 5, scope: !2203)
!2328 = !DILocalVariable(name: "i", scope: !2166, file: !408, line: 185, type: !86)
!2329 = !DILocation(line: 186, column: 14, scope: !2166)
!2330 = !DILocation(line: 187, column: 58, scope: !2331)
!2331 = distinct !DILexicalBlock(scope: !2166, file: !408, line: 186, column: 23)
!2332 = !DILocation(line: 187, column: 63, scope: !2331)
!2333 = !DILocation(line: 187, column: 54, scope: !2331)
!2334 = !DILocation(line: 187, column: 85, scope: !2331)
!2335 = !DILocation(line: 187, column: 81, scope: !2331)
!2336 = !DILocation(line: 187, column: 9, scope: !2331)
!2337 = !DILocation(line: 188, column: 10, scope: !2331)
!2338 = distinct !{!2338, !2289, !2339, !388}
!2339 = !DILocation(line: 189, column: 5, scope: !2166)
!2340 = !DILocation(line: 191, column: 1, scope: !2166)
!2341 = distinct !DISubprogram(name: "mayo_generic_m_calculate_SPS", scope: !408, file: !408, line: 195, type: !2342, scopeLine: 195, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !71)
!2342 = !DISubroutineType(types: !2343)
!2343 = !{null, !411, !90, !86, !86, !86, !52}
!2344 = !DILocalVariable(name: "PS", arg: 1, scope: !2341, file: !408, line: 195, type: !411)
!2345 = !DILocation(line: 0, scope: !2341)
!2346 = !DILocalVariable(name: "S", arg: 2, scope: !2341, file: !408, line: 195, type: !90)
!2347 = !DILocalVariable(name: "m", arg: 3, scope: !2341, file: !408, line: 195, type: !86)
!2348 = !DILocalVariable(name: "k", arg: 4, scope: !2341, file: !408, line: 195, type: !86)
!2349 = !DILocalVariable(name: "n", arg: 5, scope: !2341, file: !408, line: 195, type: !86)
!2350 = !DILocalVariable(name: "SPS", arg: 6, scope: !2341, file: !408, line: 195, type: !52)
!2351 = !DILocalVariable(name: "accumulator", scope: !2341, file: !408, line: 196, type: !2352)
!2352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 867328, elements: !2353)
!2353 = !{!2354}
!2354 = !DISubrange(count: 13552)
!2355 = !DILocation(line: 196, column: 14, scope: !2341)
!2356 = !DILocation(line: 197, column: 32, scope: !2341)
!2357 = !DILocation(line: 197, column: 37, scope: !2341)
!2358 = !DILocalVariable(name: "m_vec_limbs", scope: !2341, file: !408, line: 197, type: !324)
!2359 = !DILocalVariable(name: "row", scope: !2360, file: !408, line: 198, type: !86)
!2360 = distinct !DILexicalBlock(scope: !2341, file: !408, line: 198, column: 5)
!2361 = !DILocation(line: 0, scope: !2360)
!2362 = !DILocation(line: 198, column: 10, scope: !2360)
!2363 = !DILocation(line: 198, scope: !2360)
!2364 = !DILocation(line: 198, column: 27, scope: !2365)
!2365 = distinct !DILexicalBlock(scope: !2360, file: !408, line: 198, column: 5)
!2366 = !DILocation(line: 198, column: 5, scope: !2360)
!2367 = !DILocation(line: 199, column: 9, scope: !2368)
!2368 = distinct !DILexicalBlock(scope: !2369, file: !408, line: 199, column: 9)
!2369 = distinct !DILexicalBlock(scope: !2365, file: !408, line: 198, column: 39)
!2370 = !DILocation(line: 208, column: 5, scope: !2341)
!2371 = !DILocation(line: 199, scope: !2368)
!2372 = !DILocalVariable(name: "j", scope: !2368, file: !408, line: 199, type: !86)
!2373 = !DILocation(line: 0, scope: !2368)
!2374 = !DILocation(line: 199, column: 27, scope: !2375)
!2375 = distinct !DILexicalBlock(scope: !2368, file: !408, line: 199, column: 9)
!2376 = !DILocation(line: 200, column: 13, scope: !2377)
!2377 = distinct !DILexicalBlock(scope: !2378, file: !408, line: 200, column: 13)
!2378 = distinct !DILexicalBlock(scope: !2375, file: !408, line: 199, column: 37)
!2379 = !DILocation(line: 200, scope: !2377)
!2380 = !DILocalVariable(name: "col", scope: !2377, file: !408, line: 200, type: !86)
!2381 = !DILocation(line: 0, scope: !2377)
!2382 = !DILocation(line: 200, column: 35, scope: !2383)
!2383 = distinct !DILexicalBlock(scope: !2377, file: !408, line: 200, column: 13)
!2384 = !DILocation(line: 201, column: 52, scope: !2385)
!2385 = distinct !DILexicalBlock(scope: !2383, file: !408, line: 200, column: 50)
!2386 = !DILocation(line: 201, column: 56, scope: !2385)
!2387 = !DILocation(line: 201, column: 63, scope: !2385)
!2388 = !DILocation(line: 201, column: 47, scope: !2385)
!2389 = !DILocation(line: 201, column: 99, scope: !2385)
!2390 = !DILocation(line: 201, column: 103, scope: !2385)
!2391 = !DILocation(line: 201, column: 110, scope: !2385)
!2392 = !DILocation(line: 201, column: 123, scope: !2385)
!2393 = !DILocation(line: 201, column: 117, scope: !2385)
!2394 = !DILocation(line: 201, column: 115, scope: !2385)
!2395 = !DILocation(line: 201, column: 133, scope: !2385)
!2396 = !DILocation(line: 201, column: 90, scope: !2385)
!2397 = !DILocation(line: 201, column: 21, scope: !2385)
!2398 = !DILocation(line: 200, column: 44, scope: !2383)
!2399 = !DILocation(line: 200, column: 13, scope: !2383)
!2400 = distinct !{!2400, !2376, !2401, !388}
!2401 = !DILocation(line: 202, column: 13, scope: !2377)
!2402 = !DILocation(line: 199, column: 33, scope: !2375)
!2403 = !DILocation(line: 199, column: 9, scope: !2375)
!2404 = distinct !{!2404, !2367, !2405, !388}
!2405 = !DILocation(line: 203, column: 9, scope: !2368)
!2406 = !DILocation(line: 198, column: 35, scope: !2365)
!2407 = !DILocation(line: 198, column: 5, scope: !2365)
!2408 = distinct !{!2408, !2366, !2409, !388}
!2409 = !DILocation(line: 204, column: 5, scope: !2360)
!2410 = !DILocalVariable(name: "i", scope: !2341, file: !408, line: 207, type: !86)
!2411 = !DILocation(line: 208, column: 14, scope: !2341)
!2412 = !DILocation(line: 209, column: 58, scope: !2413)
!2413 = distinct !DILexicalBlock(scope: !2341, file: !408, line: 208, column: 21)
!2414 = !DILocation(line: 209, column: 63, scope: !2413)
!2415 = !DILocation(line: 209, column: 54, scope: !2413)
!2416 = !DILocation(line: 209, column: 86, scope: !2413)
!2417 = !DILocation(line: 209, column: 82, scope: !2413)
!2418 = !DILocation(line: 209, column: 9, scope: !2413)
!2419 = !DILocation(line: 210, column: 10, scope: !2413)
!2420 = distinct !{!2420, !2370, !2421, !388}
!2421 = !DILocation(line: 211, column: 5, scope: !2341)
!2422 = !DILocation(line: 212, column: 1, scope: !2341)
!2423 = distinct !DISubprogram(name: "m_vec_add", scope: !529, file: !529, line: 22, type: !2424, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !71)
!2424 = !DISubroutineType(types: !2425)
!2425 = !{null, !86, !411, !52}
!2426 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2423, file: !529, line: 22, type: !86)
!2427 = !DILocation(line: 0, scope: !2423)
!2428 = !DILocalVariable(name: "in", arg: 2, scope: !2423, file: !529, line: 22, type: !411)
!2429 = !DILocalVariable(name: "acc", arg: 3, scope: !2423, file: !529, line: 22, type: !52)
!2430 = !DILocalVariable(name: "i", scope: !2431, file: !529, line: 24, type: !58)
!2431 = distinct !DILexicalBlock(scope: !2423, file: !529, line: 24, column: 5)
!2432 = !DILocation(line: 0, scope: !2431)
!2433 = !DILocation(line: 24, column: 10, scope: !2431)
!2434 = !DILocation(line: 24, scope: !2431)
!2435 = !DILocation(line: 24, column: 26, scope: !2436)
!2436 = distinct !DILexicalBlock(scope: !2431, file: !529, line: 24, column: 5)
!2437 = !DILocation(line: 24, column: 5, scope: !2431)
!2438 = !DILocation(line: 26, column: 19, scope: !2439)
!2439 = distinct !DILexicalBlock(scope: !2436, file: !529, line: 25, column: 5)
!2440 = !DILocation(line: 26, column: 9, scope: !2439)
!2441 = !DILocation(line: 26, column: 16, scope: !2439)
!2442 = !DILocation(line: 24, column: 46, scope: !2436)
!2443 = !DILocation(line: 24, column: 5, scope: !2436)
!2444 = distinct !{!2444, !2437, !2445, !388}
!2445 = !DILocation(line: 27, column: 5, scope: !2431)
!2446 = !DILocation(line: 28, column: 1, scope: !2423)
!2447 = distinct !DISubprogram(name: "m_vec_multiply_bins", scope: !529, file: !529, line: 66, type: !2448, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !71)
!2448 = !DISubroutineType(types: !2449)
!2449 = !{null, !86, !52, !52}
!2450 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2447, file: !529, line: 66, type: !86)
!2451 = !DILocation(line: 0, scope: !2447)
!2452 = !DILocalVariable(name: "bins", arg: 2, scope: !2447, file: !529, line: 66, type: !52)
!2453 = !DILocalVariable(name: "out", arg: 3, scope: !2447, file: !529, line: 66, type: !52)
!2454 = !DILocation(line: 67, column: 44, scope: !2447)
!2455 = !DILocation(line: 67, column: 73, scope: !2447)
!2456 = !DILocation(line: 67, column: 5, scope: !2447)
!2457 = !DILocation(line: 68, column: 40, scope: !2447)
!2458 = !DILocation(line: 68, column: 69, scope: !2447)
!2459 = !DILocation(line: 68, column: 5, scope: !2447)
!2460 = !DILocation(line: 69, column: 44, scope: !2447)
!2461 = !DILocation(line: 69, column: 74, scope: !2447)
!2462 = !DILocation(line: 69, column: 5, scope: !2447)
!2463 = !DILocation(line: 70, column: 40, scope: !2447)
!2464 = !DILocation(line: 70, column: 69, scope: !2447)
!2465 = !DILocation(line: 70, column: 5, scope: !2447)
!2466 = !DILocation(line: 71, column: 44, scope: !2447)
!2467 = !DILocation(line: 71, column: 73, scope: !2447)
!2468 = !DILocation(line: 71, column: 5, scope: !2447)
!2469 = !DILocation(line: 72, column: 40, scope: !2447)
!2470 = !DILocation(line: 72, column: 69, scope: !2447)
!2471 = !DILocation(line: 72, column: 5, scope: !2447)
!2472 = !DILocation(line: 73, column: 44, scope: !2447)
!2473 = !DILocation(line: 73, column: 74, scope: !2447)
!2474 = !DILocation(line: 73, column: 5, scope: !2447)
!2475 = !DILocation(line: 74, column: 40, scope: !2447)
!2476 = !DILocation(line: 74, column: 69, scope: !2447)
!2477 = !DILocation(line: 74, column: 5, scope: !2447)
!2478 = !DILocation(line: 75, column: 44, scope: !2447)
!2479 = !DILocation(line: 75, column: 74, scope: !2447)
!2480 = !DILocation(line: 75, column: 5, scope: !2447)
!2481 = !DILocation(line: 76, column: 40, scope: !2447)
!2482 = !DILocation(line: 76, column: 69, scope: !2447)
!2483 = !DILocation(line: 76, column: 5, scope: !2447)
!2484 = !DILocation(line: 77, column: 44, scope: !2447)
!2485 = !DILocation(line: 77, column: 74, scope: !2447)
!2486 = !DILocation(line: 77, column: 5, scope: !2447)
!2487 = !DILocation(line: 78, column: 40, scope: !2447)
!2488 = !DILocation(line: 78, column: 69, scope: !2447)
!2489 = !DILocation(line: 78, column: 5, scope: !2447)
!2490 = !DILocation(line: 79, column: 44, scope: !2447)
!2491 = !DILocation(line: 79, column: 74, scope: !2447)
!2492 = !DILocation(line: 79, column: 5, scope: !2447)
!2493 = !DILocation(line: 80, column: 40, scope: !2447)
!2494 = !DILocation(line: 80, column: 69, scope: !2447)
!2495 = !DILocation(line: 80, column: 5, scope: !2447)
!2496 = !DILocation(line: 81, column: 35, scope: !2447)
!2497 = !DILocation(line: 81, column: 5, scope: !2447)
!2498 = !DILocation(line: 82, column: 1, scope: !2447)
!2499 = distinct !DISubprogram(name: "m_vec_mul_add_x_inv", scope: !529, file: !529, line: 56, type: !2424, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !71)
!2500 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2499, file: !529, line: 56, type: !86)
!2501 = !DILocation(line: 0, scope: !2499)
!2502 = !DILocalVariable(name: "in", arg: 2, scope: !2499, file: !529, line: 56, type: !411)
!2503 = !DILocalVariable(name: "acc", arg: 3, scope: !2499, file: !529, line: 56, type: !52)
!2504 = !DILocalVariable(name: "mask_lsb", scope: !2499, file: !529, line: 58, type: !53)
!2505 = !DILocalVariable(name: "i", scope: !2506, file: !529, line: 59, type: !86)
!2506 = distinct !DILexicalBlock(scope: !2499, file: !529, line: 59, column: 5)
!2507 = !DILocation(line: 0, scope: !2506)
!2508 = !DILocation(line: 59, column: 9, scope: !2506)
!2509 = !DILocation(line: 59, scope: !2506)
!2510 = !DILocation(line: 59, column: 20, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !2506, file: !529, line: 59, column: 5)
!2512 = !DILocation(line: 59, column: 5, scope: !2506)
!2513 = !DILocation(line: 60, column: 22, scope: !2514)
!2514 = distinct !DILexicalBlock(scope: !2511, file: !529, line: 59, column: 43)
!2515 = !DILocation(line: 60, column: 28, scope: !2514)
!2516 = !DILocalVariable(name: "t", scope: !2514, file: !529, line: 60, type: !53)
!2517 = !DILocation(line: 0, scope: !2514)
!2518 = !DILocation(line: 61, column: 32, scope: !2514)
!2519 = !DILocation(line: 61, column: 43, scope: !2514)
!2520 = !DILocation(line: 61, column: 38, scope: !2514)
!2521 = !DILocation(line: 61, column: 9, scope: !2514)
!2522 = !DILocation(line: 61, column: 16, scope: !2514)
!2523 = !DILocation(line: 59, column: 40, scope: !2511)
!2524 = !DILocation(line: 59, column: 5, scope: !2511)
!2525 = distinct !{!2525, !2512, !2526, !388}
!2526 = !DILocation(line: 62, column: 5, scope: !2506)
!2527 = !DILocation(line: 63, column: 1, scope: !2499)
!2528 = distinct !DISubprogram(name: "m_vec_mul_add_x", scope: !529, file: !529, line: 46, type: !2424, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !71)
!2529 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2528, file: !529, line: 46, type: !86)
!2530 = !DILocation(line: 0, scope: !2528)
!2531 = !DILocalVariable(name: "in", arg: 2, scope: !2528, file: !529, line: 46, type: !411)
!2532 = !DILocalVariable(name: "acc", arg: 3, scope: !2528, file: !529, line: 46, type: !52)
!2533 = !DILocalVariable(name: "mask_msb", scope: !2528, file: !529, line: 48, type: !53)
!2534 = !DILocalVariable(name: "i", scope: !2535, file: !529, line: 49, type: !86)
!2535 = distinct !DILexicalBlock(scope: !2528, file: !529, line: 49, column: 5)
!2536 = !DILocation(line: 0, scope: !2535)
!2537 = !DILocation(line: 49, column: 9, scope: !2535)
!2538 = !DILocation(line: 49, scope: !2535)
!2539 = !DILocation(line: 49, column: 20, scope: !2540)
!2540 = distinct !DILexicalBlock(scope: !2535, file: !529, line: 49, column: 5)
!2541 = !DILocation(line: 49, column: 5, scope: !2535)
!2542 = !DILocation(line: 50, column: 22, scope: !2543)
!2543 = distinct !DILexicalBlock(scope: !2540, file: !529, line: 49, column: 43)
!2544 = !DILocalVariable(name: "t", scope: !2543, file: !529, line: 50, type: !53)
!2545 = !DILocation(line: 0, scope: !2543)
!2546 = !DILocation(line: 51, column: 32, scope: !2543)
!2547 = !DILocation(line: 51, column: 44, scope: !2543)
!2548 = !DILocation(line: 51, column: 50, scope: !2543)
!2549 = !DILocation(line: 51, column: 38, scope: !2543)
!2550 = !DILocation(line: 51, column: 9, scope: !2543)
!2551 = !DILocation(line: 51, column: 16, scope: !2543)
!2552 = !DILocation(line: 49, column: 40, scope: !2540)
!2553 = !DILocation(line: 49, column: 5, scope: !2540)
!2554 = distinct !{!2554, !2541, !2555, !388}
!2555 = !DILocation(line: 52, column: 5, scope: !2535)
!2556 = !DILocation(line: 53, column: 1, scope: !2528)
!2557 = distinct !DISubprogram(name: "m_vec_copy", scope: !529, file: !529, line: 13, type: !2424, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !71)
!2558 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2557, file: !529, line: 13, type: !86)
!2559 = !DILocation(line: 0, scope: !2557)
!2560 = !DILocalVariable(name: "in", arg: 2, scope: !2557, file: !529, line: 13, type: !411)
!2561 = !DILocalVariable(name: "out", arg: 3, scope: !2557, file: !529, line: 13, type: !52)
!2562 = !DILocalVariable(name: "i", scope: !2563, file: !529, line: 15, type: !58)
!2563 = distinct !DILexicalBlock(scope: !2557, file: !529, line: 15, column: 5)
!2564 = !DILocation(line: 0, scope: !2563)
!2565 = !DILocation(line: 15, column: 10, scope: !2563)
!2566 = !DILocation(line: 15, scope: !2563)
!2567 = !DILocation(line: 15, column: 26, scope: !2568)
!2568 = distinct !DILexicalBlock(scope: !2563, file: !529, line: 15, column: 5)
!2569 = !DILocation(line: 15, column: 5, scope: !2563)
!2570 = !DILocation(line: 17, column: 18, scope: !2571)
!2571 = distinct !DILexicalBlock(scope: !2568, file: !529, line: 16, column: 5)
!2572 = !DILocation(line: 17, column: 9, scope: !2571)
!2573 = !DILocation(line: 17, column: 16, scope: !2571)
!2574 = !DILocation(line: 15, column: 46, scope: !2568)
!2575 = !DILocation(line: 15, column: 5, scope: !2568)
!2576 = distinct !{!2576, !2569, !2577, !388}
!2577 = !DILocation(line: 18, column: 5, scope: !2563)
!2578 = !DILocation(line: 19, column: 1, scope: !2557)
!2579 = distinct !DISubprogram(name: "pqmayo_MAYO_3_ref_m_upper", scope: !99, file: !99, line: 14, type: !2580, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !84, retainedNodes: !71)
!2580 = !DISubroutineType(types: !2581)
!2581 = !{null, !2582, !411, !52, !86}
!2582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2583, size: 32)
!2583 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2584)
!2584 = !DIDerivedType(tag: DW_TAG_typedef, name: "mayo_params_t", file: !79, line: 289, baseType: !2585)
!2585 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !79, line: 265, size: 736, elements: !2586)
!2586 = !{!2587, !2588, !2589, !2590, !2591, !2592, !2593, !2594, !2595, !2596, !2597, !2598, !2599, !2600, !2601, !2602, !2603, !2604, !2605, !2606, !2607, !2608, !2609}
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !2585, file: !79, line: 266, baseType: !86, size: 32)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !2585, file: !79, line: 267, baseType: !86, size: 32, offset: 32)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "o", scope: !2585, file: !79, line: 268, baseType: !86, size: 32, offset: 64)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !2585, file: !79, line: 269, baseType: !86, size: 32, offset: 96)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2585, file: !79, line: 270, baseType: !86, size: 32, offset: 128)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "f_tail", scope: !2585, file: !79, line: 271, baseType: !90, size: 32, offset: 160)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "m_bytes", scope: !2585, file: !79, line: 272, baseType: !86, size: 32, offset: 192)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "O_bytes", scope: !2585, file: !79, line: 273, baseType: !86, size: 32, offset: 224)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "v_bytes", scope: !2585, file: !79, line: 274, baseType: !86, size: 32, offset: 256)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "r_bytes", scope: !2585, file: !79, line: 275, baseType: !86, size: 32, offset: 288)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "R_bytes", scope: !2585, file: !79, line: 276, baseType: !86, size: 32, offset: 320)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "P1_bytes", scope: !2585, file: !79, line: 277, baseType: !86, size: 32, offset: 352)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "P2_bytes", scope: !2585, file: !79, line: 278, baseType: !86, size: 32, offset: 384)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "P3_bytes", scope: !2585, file: !79, line: 279, baseType: !86, size: 32, offset: 416)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "csk_bytes", scope: !2585, file: !79, line: 280, baseType: !86, size: 32, offset: 448)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "cpk_bytes", scope: !2585, file: !79, line: 281, baseType: !86, size: 32, offset: 480)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "sig_bytes", scope: !2585, file: !79, line: 282, baseType: !86, size: 32, offset: 512)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "salt_bytes", scope: !2585, file: !79, line: 283, baseType: !86, size: 32, offset: 544)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "sk_seed_bytes", scope: !2585, file: !79, line: 284, baseType: !86, size: 32, offset: 576)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "digest_bytes", scope: !2585, file: !79, line: 285, baseType: !86, size: 32, offset: 608)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "pk_seed_bytes", scope: !2585, file: !79, line: 286, baseType: !86, size: 32, offset: 640)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "m_vec_limbs", scope: !2585, file: !79, line: 287, baseType: !86, size: 32, offset: 672)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2585, file: !79, line: 288, baseType: !149, size: 32, offset: 704)
!2610 = !DILocalVariable(name: "p", arg: 1, scope: !2579, file: !99, line: 14, type: !2582)
!2611 = !DILocation(line: 0, scope: !2579)
!2612 = !DILocalVariable(name: "in", arg: 2, scope: !2579, file: !99, line: 14, type: !411)
!2613 = !DILocalVariable(name: "out", arg: 3, scope: !2579, file: !99, line: 14, type: !52)
!2614 = !DILocalVariable(name: "size", arg: 4, scope: !2579, file: !99, line: 14, type: !86)
!2615 = !DILocalVariable(name: "m_vec_limbs", scope: !2579, file: !99, line: 19, type: !324)
!2616 = !DILocalVariable(name: "m_vecs_stored", scope: !2579, file: !99, line: 20, type: !86)
!2617 = !DILocalVariable(name: "r", scope: !2618, file: !99, line: 21, type: !86)
!2618 = distinct !DILexicalBlock(scope: !2579, file: !99, line: 21, column: 5)
!2619 = !DILocation(line: 0, scope: !2618)
!2620 = !DILocation(line: 21, column: 10, scope: !2618)
!2621 = !DILocation(line: 20, column: 9, scope: !2579)
!2622 = !DILocation(line: 21, scope: !2618)
!2623 = !DILocation(line: 21, column: 23, scope: !2624)
!2624 = distinct !DILexicalBlock(scope: !2618, file: !99, line: 21, column: 5)
!2625 = !DILocation(line: 21, column: 5, scope: !2618)
!2626 = !DILocation(line: 22, column: 9, scope: !2627)
!2627 = distinct !DILexicalBlock(scope: !2628, file: !99, line: 22, column: 9)
!2628 = distinct !DILexicalBlock(scope: !2624, file: !99, line: 21, column: 36)
!2629 = !DILocation(line: 22, scope: !2627)
!2630 = !DILocalVariable(name: "c", scope: !2627, file: !99, line: 22, type: !86)
!2631 = !DILocation(line: 0, scope: !2627)
!2632 = !DILocation(line: 22, column: 27, scope: !2633)
!2633 = distinct !DILexicalBlock(scope: !2627, file: !99, line: 22, column: 9)
!2634 = !DILocation(line: 23, column: 59, scope: !2635)
!2635 = distinct !DILexicalBlock(scope: !2633, file: !99, line: 22, column: 40)
!2636 = !DILocation(line: 23, column: 66, scope: !2635)
!2637 = !DILocation(line: 23, column: 40, scope: !2635)
!2638 = !DILocation(line: 23, column: 76, scope: !2635)
!2639 = !DILocation(line: 23, column: 13, scope: !2635)
!2640 = !DILocation(line: 24, column: 19, scope: !2641)
!2641 = distinct !DILexicalBlock(scope: !2635, file: !99, line: 24, column: 17)
!2642 = !DILocation(line: 25, column: 62, scope: !2643)
!2643 = distinct !DILexicalBlock(scope: !2641, file: !99, line: 24, column: 25)
!2644 = !DILocation(line: 25, column: 69, scope: !2643)
!2645 = !DILocation(line: 25, column: 43, scope: !2643)
!2646 = !DILocation(line: 25, column: 79, scope: !2643)
!2647 = !DILocation(line: 25, column: 17, scope: !2643)
!2648 = !DILocation(line: 26, column: 13, scope: !2643)
!2649 = !DILocation(line: 27, column: 27, scope: !2635)
!2650 = !DILocation(line: 22, column: 36, scope: !2633)
!2651 = !DILocation(line: 22, column: 9, scope: !2633)
!2652 = distinct !{!2652, !2626, !2653, !388}
!2653 = !DILocation(line: 28, column: 9, scope: !2627)
!2654 = !DILocation(line: 21, column: 32, scope: !2624)
!2655 = !DILocation(line: 21, column: 5, scope: !2624)
!2656 = distinct !{!2656, !2625, !2657, !388}
!2657 = !DILocation(line: 29, column: 5, scope: !2618)
!2658 = !DILocation(line: 30, column: 1, scope: !2579)
!2659 = distinct !DISubprogram(name: "m_vec_copy", scope: !529, file: !529, line: 13, type: !2424, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !84, retainedNodes: !71)
!2660 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2659, file: !529, line: 13, type: !86)
!2661 = !DILocation(line: 0, scope: !2659)
!2662 = !DILocalVariable(name: "in", arg: 2, scope: !2659, file: !529, line: 13, type: !411)
!2663 = !DILocalVariable(name: "out", arg: 3, scope: !2659, file: !529, line: 13, type: !52)
!2664 = !DILocalVariable(name: "i", scope: !2665, file: !529, line: 15, type: !58)
!2665 = distinct !DILexicalBlock(scope: !2659, file: !529, line: 15, column: 5)
!2666 = !DILocation(line: 0, scope: !2665)
!2667 = !DILocation(line: 15, column: 10, scope: !2665)
!2668 = !DILocation(line: 15, scope: !2665)
!2669 = !DILocation(line: 15, column: 26, scope: !2670)
!2670 = distinct !DILexicalBlock(scope: !2665, file: !529, line: 15, column: 5)
!2671 = !DILocation(line: 15, column: 5, scope: !2665)
!2672 = !DILocation(line: 17, column: 18, scope: !2673)
!2673 = distinct !DILexicalBlock(scope: !2670, file: !529, line: 16, column: 5)
!2674 = !DILocation(line: 17, column: 9, scope: !2673)
!2675 = !DILocation(line: 17, column: 16, scope: !2673)
!2676 = !DILocation(line: 15, column: 46, scope: !2670)
!2677 = !DILocation(line: 15, column: 5, scope: !2670)
!2678 = distinct !{!2678, !2671, !2679, !388}
!2679 = !DILocation(line: 18, column: 5, scope: !2665)
!2680 = !DILocation(line: 19, column: 1, scope: !2659)
!2681 = distinct !DISubprogram(name: "m_vec_add", scope: !529, file: !529, line: 22, type: !2424, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !84, retainedNodes: !71)
!2682 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !2681, file: !529, line: 22, type: !86)
!2683 = !DILocation(line: 0, scope: !2681)
!2684 = !DILocalVariable(name: "in", arg: 2, scope: !2681, file: !529, line: 22, type: !411)
!2685 = !DILocalVariable(name: "acc", arg: 3, scope: !2681, file: !529, line: 22, type: !52)
!2686 = !DILocalVariable(name: "i", scope: !2687, file: !529, line: 24, type: !58)
!2687 = distinct !DILexicalBlock(scope: !2681, file: !529, line: 24, column: 5)
!2688 = !DILocation(line: 0, scope: !2687)
!2689 = !DILocation(line: 24, column: 10, scope: !2687)
!2690 = !DILocation(line: 24, scope: !2687)
!2691 = !DILocation(line: 24, column: 26, scope: !2692)
!2692 = distinct !DILexicalBlock(scope: !2687, file: !529, line: 24, column: 5)
!2693 = !DILocation(line: 24, column: 5, scope: !2687)
!2694 = !DILocation(line: 26, column: 19, scope: !2695)
!2695 = distinct !DILexicalBlock(scope: !2692, file: !529, line: 25, column: 5)
!2696 = !DILocation(line: 26, column: 9, scope: !2695)
!2697 = !DILocation(line: 26, column: 16, scope: !2695)
!2698 = !DILocation(line: 24, column: 46, scope: !2692)
!2699 = !DILocation(line: 24, column: 5, scope: !2692)
!2700 = distinct !{!2700, !2693, !2701, !388}
!2701 = !DILocation(line: 27, column: 5, scope: !2687)
!2702 = !DILocation(line: 28, column: 1, scope: !2681)
!2703 = distinct !DISubprogram(name: "pqmayo_MAYO_3_ref_sample_solution", scope: !99, file: !99, line: 40, type: !2704, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !84, retainedNodes: !71)
!2704 = !DISubroutineType(types: !2705)
!2705 = !{!86, !2582, !61, !90, !90, !61, !86, !86, !86, !86}
!2706 = !DILocalVariable(name: "p", arg: 1, scope: !2703, file: !99, line: 40, type: !2582)
!2707 = !DILocation(line: 0, scope: !2703)
!2708 = !DILocalVariable(name: "A", arg: 2, scope: !2703, file: !99, line: 40, type: !61)
!2709 = !DILocalVariable(name: "y", arg: 3, scope: !2703, file: !99, line: 41, type: !90)
!2710 = !DILocalVariable(name: "r", arg: 4, scope: !2703, file: !99, line: 41, type: !90)
!2711 = !DILocalVariable(name: "x", arg: 5, scope: !2703, file: !99, line: 42, type: !61)
!2712 = !DILocalVariable(name: "k", arg: 6, scope: !2703, file: !99, line: 42, type: !86)
!2713 = !DILocalVariable(name: "o", arg: 7, scope: !2703, file: !99, line: 42, type: !86)
!2714 = !DILocalVariable(name: "m", arg: 8, scope: !2703, file: !99, line: 42, type: !86)
!2715 = !DILocalVariable(name: "A_cols", arg: 9, scope: !2703, file: !99, line: 42, type: !86)
!2716 = !DILocalVariable(name: "i", scope: !2717, file: !99, line: 51, type: !86)
!2717 = distinct !DILexicalBlock(scope: !2703, file: !99, line: 51, column: 5)
!2718 = !DILocation(line: 0, scope: !2717)
!2719 = !DILocation(line: 51, column: 10, scope: !2717)
!2720 = !DILocation(line: 51, scope: !2717)
!2721 = !DILocation(line: 51, column: 23, scope: !2722)
!2722 = distinct !DILexicalBlock(scope: !2717, file: !99, line: 51, column: 5)
!2723 = !DILocation(line: 51, column: 5, scope: !2717)
!2724 = !DILocation(line: 57, column: 5, scope: !2725)
!2725 = distinct !DILexicalBlock(scope: !2703, file: !99, line: 57, column: 5)
!2726 = !DILocation(line: 52, column: 16, scope: !2727)
!2727 = distinct !DILexicalBlock(scope: !2722, file: !99, line: 51, column: 37)
!2728 = !DILocation(line: 52, column: 9, scope: !2727)
!2729 = !DILocation(line: 52, column: 14, scope: !2727)
!2730 = !DILocation(line: 51, column: 33, scope: !2722)
!2731 = !DILocation(line: 51, column: 5, scope: !2722)
!2732 = distinct !{!2732, !2723, !2733, !388}
!2733 = !DILocation(line: 53, column: 5, scope: !2717)
!2734 = !DILocation(line: 57, scope: !2725)
!2735 = !DILocalVariable(name: "i", scope: !2725, file: !99, line: 57, type: !86)
!2736 = !DILocation(line: 0, scope: !2725)
!2737 = !DILocation(line: 57, column: 23, scope: !2738)
!2738 = distinct !DILexicalBlock(scope: !2725, file: !99, line: 57, column: 5)
!2739 = !DILocation(line: 58, column: 13, scope: !2740)
!2740 = distinct !DILexicalBlock(scope: !2738, file: !99, line: 57, column: 33)
!2741 = !DILocation(line: 58, column: 26, scope: !2740)
!2742 = !DILocation(line: 58, column: 30, scope: !2740)
!2743 = !DILocation(line: 58, column: 21, scope: !2740)
!2744 = !DILocation(line: 58, column: 9, scope: !2740)
!2745 = !DILocation(line: 58, column: 36, scope: !2740)
!2746 = !DILocation(line: 57, column: 29, scope: !2738)
!2747 = !DILocation(line: 57, column: 5, scope: !2738)
!2748 = distinct !{!2748, !2724, !2749, !388}
!2749 = !DILocation(line: 59, column: 5, scope: !2725)
!2750 = !DILocation(line: 60, column: 25, scope: !2703)
!2751 = !DILocation(line: 60, column: 29, scope: !2703)
!2752 = !DILocation(line: 60, column: 5, scope: !2703)
!2753 = !DILocalVariable(name: "i", scope: !2754, file: !99, line: 63, type: !86)
!2754 = distinct !DILexicalBlock(scope: !2703, file: !99, line: 63, column: 5)
!2755 = !DILocation(line: 0, scope: !2754)
!2756 = !DILocation(line: 63, column: 10, scope: !2754)
!2757 = !DILocation(line: 63, scope: !2754)
!2758 = !DILocation(line: 63, column: 23, scope: !2759)
!2759 = distinct !DILexicalBlock(scope: !2754, file: !99, line: 63, column: 5)
!2760 = !DILocation(line: 63, column: 5, scope: !2754)
!2761 = !DILocation(line: 64, column: 44, scope: !2762)
!2762 = distinct !DILexicalBlock(scope: !2759, file: !99, line: 63, column: 33)
!2763 = !DILocation(line: 64, column: 50, scope: !2762)
!2764 = !DILocation(line: 64, column: 38, scope: !2762)
!2765 = !DILocation(line: 64, column: 13, scope: !2762)
!2766 = !DILocation(line: 64, column: 26, scope: !2762)
!2767 = !DILocation(line: 64, column: 30, scope: !2762)
!2768 = !DILocation(line: 64, column: 21, scope: !2762)
!2769 = !DILocation(line: 64, column: 9, scope: !2762)
!2770 = !DILocation(line: 64, column: 36, scope: !2762)
!2771 = !DILocation(line: 63, column: 29, scope: !2759)
!2772 = !DILocation(line: 63, column: 5, scope: !2759)
!2773 = distinct !{!2773, !2760, !2774, !388}
!2774 = !DILocation(line: 65, column: 5, scope: !2754)
!2775 = !DILocation(line: 67, column: 16, scope: !2703)
!2776 = !DILocation(line: 67, column: 20, scope: !2703)
!2777 = !DILocation(line: 67, column: 5, scope: !2703)
!2778 = !DILocalVariable(name: "full_rank", scope: !2703, file: !99, line: 70, type: !51)
!2779 = !DILocalVariable(name: "i", scope: !2780, file: !99, line: 71, type: !86)
!2780 = distinct !DILexicalBlock(scope: !2703, file: !99, line: 71, column: 5)
!2781 = !DILocation(line: 0, scope: !2780)
!2782 = !DILocation(line: 71, column: 10, scope: !2780)
!2783 = !DILocation(line: 71, scope: !2780)
!2784 = !DILocation(line: 71, column: 23, scope: !2785)
!2785 = distinct !DILexicalBlock(scope: !2780, file: !99, line: 71, column: 5)
!2786 = !DILocation(line: 71, column: 5, scope: !2780)
!2787 = !DILocation(line: 72, column: 27, scope: !2788)
!2788 = distinct !DILexicalBlock(scope: !2785, file: !99, line: 71, column: 42)
!2789 = !DILocation(line: 72, column: 32, scope: !2788)
!2790 = !DILocation(line: 72, column: 22, scope: !2788)
!2791 = !DILocation(line: 72, column: 19, scope: !2788)
!2792 = !DILocation(line: 71, column: 38, scope: !2785)
!2793 = !DILocation(line: 71, column: 5, scope: !2785)
!2794 = distinct !{!2794, !2786, !2795, !388}
!2795 = !DILocation(line: 73, column: 5, scope: !2780)
!2796 = !DILocation(line: 80, column: 19, scope: !2797)
!2797 = distinct !DILexicalBlock(scope: !2703, file: !99, line: 80, column: 9)
!2798 = !DILocation(line: 88, column: 5, scope: !2799)
!2799 = distinct !DILexicalBlock(scope: !2703, file: !99, line: 88, column: 5)
!2800 = distinct !{!2800, !2798, !2801, !388}
!2801 = !DILocation(line: 122, column: 5, scope: !2799)
!2802 = !DILocation(line: 88, scope: !2799)
!2803 = !DILocalVariable(name: "row", scope: !2799, file: !99, line: 88, type: !86)
!2804 = !DILocation(line: 0, scope: !2799)
!2805 = !DILocation(line: 88, column: 31, scope: !2806)
!2806 = distinct !DILexicalBlock(scope: !2799, file: !99, line: 88, column: 5)
!2807 = !DILocalVariable(name: "finished", scope: !2703, file: !99, line: 46, type: !51)
!2808 = !DILocation(line: 90, column: 27, scope: !2809)
!2809 = distinct !DILexicalBlock(scope: !2806, file: !99, line: 88, column: 44)
!2810 = !DILocalVariable(name: "col_upper_bound", scope: !2703, file: !99, line: 47, type: !86)
!2811 = !DILocalVariable(name: "col", scope: !2812, file: !99, line: 93, type: !86)
!2812 = distinct !DILexicalBlock(scope: !2809, file: !99, line: 93, column: 9)
!2813 = !DILocation(line: 0, scope: !2812)
!2814 = !DILocation(line: 93, column: 14, scope: !2812)
!2815 = !DILocation(line: 0, scope: !2809)
!2816 = !DILocation(line: 93, scope: !2812)
!2817 = !DILocation(line: 93, column: 33, scope: !2818)
!2818 = distinct !DILexicalBlock(scope: !2812, file: !99, line: 93, column: 9)
!2819 = !DILocation(line: 93, column: 9, scope: !2812)
!2820 = !DILocation(line: 97, column: 50, scope: !2821)
!2821 = distinct !DILexicalBlock(scope: !2818, file: !99, line: 93, column: 60)
!2822 = !DILocation(line: 97, column: 44, scope: !2821)
!2823 = !DILocation(line: 97, column: 30, scope: !2821)
!2824 = !DILocation(line: 97, column: 73, scope: !2821)
!2825 = !DILocalVariable(name: "correct_column", scope: !2703, file: !99, line: 48, type: !51)
!2826 = !DILocation(line: 99, column: 63, scope: !2821)
!2827 = !DILocation(line: 99, column: 48, scope: !2821)
!2828 = !DILocation(line: 99, column: 46, scope: !2821)
!2829 = !DILocalVariable(name: "u", scope: !2821, file: !99, line: 99, type: !51)
!2830 = !DILocation(line: 0, scope: !2821)
!2831 = !DILocation(line: 100, column: 13, scope: !2821)
!2832 = !DILocation(line: 100, column: 20, scope: !2821)
!2833 = !DILocalVariable(name: "i", scope: !2834, file: !99, line: 102, type: !86)
!2834 = distinct !DILexicalBlock(scope: !2821, file: !99, line: 102, column: 13)
!2835 = !DILocation(line: 0, scope: !2834)
!2836 = !DILocation(line: 102, column: 18, scope: !2834)
!2837 = !DILocation(line: 102, scope: !2834)
!2838 = !DILocation(line: 102, column: 31, scope: !2839)
!2839 = distinct !DILexicalBlock(scope: !2834, file: !99, line: 102, column: 13)
!2840 = !DILocation(line: 102, column: 13, scope: !2834)
!2841 = !DILocation(line: 103, column: 53, scope: !2842)
!2842 = distinct !DILexicalBlock(scope: !2839, file: !99, line: 102, column: 46)
!2843 = !DILocation(line: 103, column: 45, scope: !2842)
!2844 = !DILocation(line: 103, column: 34, scope: !2842)
!2845 = !DILocation(line: 103, column: 95, scope: !2842)
!2846 = !DILocation(line: 103, column: 99, scope: !2842)
!2847 = !DILocation(line: 103, column: 91, scope: !2842)
!2848 = !DILocation(line: 103, column: 80, scope: !2842)
!2849 = !DILocation(line: 103, column: 115, scope: !2842)
!2850 = !DILocation(line: 103, column: 76, scope: !2842)
!2851 = !DILocation(line: 104, column: 49, scope: !2842)
!2852 = !DILocation(line: 104, column: 53, scope: !2842)
!2853 = !DILocation(line: 104, column: 45, scope: !2842)
!2854 = !DILocation(line: 104, column: 34, scope: !2842)
!2855 = !DILocation(line: 104, column: 69, scope: !2842)
!2856 = !DILocation(line: 104, column: 30, scope: !2842)
!2857 = !DILocation(line: 104, column: 95, scope: !2842)
!2858 = !DILocation(line: 104, column: 99, scope: !2842)
!2859 = !DILocation(line: 104, column: 91, scope: !2842)
!2860 = !DILocation(line: 104, column: 80, scope: !2842)
!2861 = !DILocation(line: 104, column: 115, scope: !2842)
!2862 = !DILocation(line: 104, column: 76, scope: !2842)
!2863 = !DILocation(line: 105, column: 49, scope: !2842)
!2864 = !DILocation(line: 105, column: 53, scope: !2842)
!2865 = !DILocation(line: 105, column: 45, scope: !2842)
!2866 = !DILocation(line: 105, column: 34, scope: !2842)
!2867 = !DILocation(line: 105, column: 69, scope: !2842)
!2868 = !DILocation(line: 105, column: 30, scope: !2842)
!2869 = !DILocation(line: 105, column: 95, scope: !2842)
!2870 = !DILocation(line: 105, column: 99, scope: !2842)
!2871 = !DILocation(line: 105, column: 91, scope: !2842)
!2872 = !DILocation(line: 105, column: 80, scope: !2842)
!2873 = !DILocation(line: 105, column: 115, scope: !2842)
!2874 = !DILocation(line: 105, column: 76, scope: !2842)
!2875 = !DILocation(line: 106, column: 49, scope: !2842)
!2876 = !DILocation(line: 106, column: 53, scope: !2842)
!2877 = !DILocation(line: 106, column: 45, scope: !2842)
!2878 = !DILocation(line: 106, column: 34, scope: !2842)
!2879 = !DILocation(line: 106, column: 69, scope: !2842)
!2880 = !DILocation(line: 106, column: 30, scope: !2842)
!2881 = !DILocation(line: 106, column: 95, scope: !2842)
!2882 = !DILocation(line: 106, column: 99, scope: !2842)
!2883 = !DILocation(line: 106, column: 91, scope: !2842)
!2884 = !DILocation(line: 106, column: 80, scope: !2842)
!2885 = !DILocation(line: 106, column: 115, scope: !2842)
!2886 = !DILocation(line: 106, column: 76, scope: !2842)
!2887 = !DILocalVariable(name: "tmp", scope: !2842, file: !99, line: 103, type: !53)
!2888 = !DILocation(line: 0, scope: !2842)
!2889 = !DILocation(line: 108, column: 23, scope: !2842)
!2890 = !DILocation(line: 110, column: 34, scope: !2842)
!2891 = !DILocation(line: 110, column: 17, scope: !2842)
!2892 = !DILocation(line: 110, column: 48, scope: !2842)
!2893 = !DILocation(line: 111, column: 56, scope: !2842)
!2894 = !DILocation(line: 111, column: 34, scope: !2842)
!2895 = !DILocation(line: 111, column: 17, scope: !2842)
!2896 = !DILocation(line: 111, column: 48, scope: !2842)
!2897 = !DILocation(line: 112, column: 56, scope: !2842)
!2898 = !DILocation(line: 112, column: 34, scope: !2842)
!2899 = !DILocation(line: 112, column: 17, scope: !2842)
!2900 = !DILocation(line: 112, column: 48, scope: !2842)
!2901 = !DILocation(line: 113, column: 56, scope: !2842)
!2902 = !DILocation(line: 113, column: 34, scope: !2842)
!2903 = !DILocation(line: 113, column: 17, scope: !2842)
!2904 = !DILocation(line: 113, column: 48, scope: !2842)
!2905 = !DILocation(line: 114, column: 56, scope: !2842)
!2906 = !DILocation(line: 114, column: 34, scope: !2842)
!2907 = !DILocation(line: 114, column: 17, scope: !2842)
!2908 = !DILocation(line: 114, column: 48, scope: !2842)
!2909 = !DILocation(line: 115, column: 56, scope: !2842)
!2910 = !DILocation(line: 115, column: 34, scope: !2842)
!2911 = !DILocation(line: 115, column: 17, scope: !2842)
!2912 = !DILocation(line: 115, column: 48, scope: !2842)
!2913 = !DILocation(line: 116, column: 56, scope: !2842)
!2914 = !DILocation(line: 116, column: 34, scope: !2842)
!2915 = !DILocation(line: 116, column: 17, scope: !2842)
!2916 = !DILocation(line: 116, column: 48, scope: !2842)
!2917 = !DILocation(line: 117, column: 56, scope: !2842)
!2918 = !DILocation(line: 117, column: 34, scope: !2842)
!2919 = !DILocation(line: 117, column: 17, scope: !2842)
!2920 = !DILocation(line: 117, column: 48, scope: !2842)
!2921 = !DILocation(line: 102, column: 40, scope: !2839)
!2922 = !DILocation(line: 102, column: 13, scope: !2839)
!2923 = distinct !{!2923, !2840, !2924, !388}
!2924 = !DILocation(line: 118, column: 13, scope: !2834)
!2925 = !DILocation(line: 120, column: 33, scope: !2821)
!2926 = !DILocation(line: 93, column: 56, scope: !2818)
!2927 = !DILocation(line: 93, column: 9, scope: !2818)
!2928 = distinct !{!2928, !2819, !2929, !388}
!2929 = !DILocation(line: 121, column: 9, scope: !2812)
!2930 = !DILocation(line: 124, column: 1, scope: !2703)
!2931 = distinct !DISubprogram(name: "mat_mul", scope: !585, file: !585, line: 78, type: !1557, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !84, retainedNodes: !71)
!2932 = !DILocalVariable(name: "a", arg: 1, scope: !2931, file: !585, line: 78, type: !90)
!2933 = !DILocation(line: 0, scope: !2931)
!2934 = !DILocalVariable(name: "b", arg: 2, scope: !2931, file: !585, line: 78, type: !90)
!2935 = !DILocalVariable(name: "c", arg: 3, scope: !2931, file: !585, line: 79, type: !61)
!2936 = !DILocalVariable(name: "colrow_ab", arg: 4, scope: !2931, file: !585, line: 79, type: !86)
!2937 = !DILocalVariable(name: "row_a", arg: 5, scope: !2931, file: !585, line: 79, type: !86)
!2938 = !DILocalVariable(name: "col_b", arg: 6, scope: !2931, file: !585, line: 79, type: !86)
!2939 = !DILocalVariable(name: "i", scope: !2940, file: !585, line: 80, type: !86)
!2940 = distinct !DILexicalBlock(scope: !2931, file: !585, line: 80, column: 5)
!2941 = !DILocation(line: 0, scope: !2940)
!2942 = !DILocation(line: 80, column: 10, scope: !2940)
!2943 = !DILocation(line: 80, scope: !2940)
!2944 = !DILocation(line: 80, column: 23, scope: !2945)
!2945 = distinct !DILexicalBlock(scope: !2940, file: !585, line: 80, column: 5)
!2946 = !DILocation(line: 80, column: 5, scope: !2940)
!2947 = !DILocation(line: 81, column: 9, scope: !2948)
!2948 = distinct !DILexicalBlock(scope: !2949, file: !585, line: 81, column: 9)
!2949 = distinct !DILexicalBlock(scope: !2945, file: !585, line: 80, column: 53)
!2950 = !DILocation(line: 81, scope: !2948)
!2951 = !DILocalVariable(name: "j", scope: !2948, file: !585, line: 81, type: !86)
!2952 = !DILocation(line: 0, scope: !2948)
!2953 = !DILocation(line: 81, column: 27, scope: !2954)
!2954 = distinct !DILexicalBlock(scope: !2948, file: !585, line: 81, column: 9)
!2955 = !DILocation(line: 82, column: 31, scope: !2956)
!2956 = distinct !DILexicalBlock(scope: !2954, file: !585, line: 81, column: 46)
!2957 = !DILocation(line: 82, column: 18, scope: !2956)
!2958 = !DILocation(line: 82, column: 16, scope: !2956)
!2959 = !DILocation(line: 81, column: 36, scope: !2954)
!2960 = !DILocation(line: 81, column: 41, scope: !2954)
!2961 = !DILocation(line: 81, column: 9, scope: !2954)
!2962 = distinct !{!2962, !2947, !2963, !388}
!2963 = !DILocation(line: 83, column: 9, scope: !2948)
!2964 = !DILocation(line: 80, column: 32, scope: !2945)
!2965 = !DILocation(line: 80, column: 39, scope: !2945)
!2966 = !DILocation(line: 80, column: 5, scope: !2945)
!2967 = distinct !{!2967, !2946, !2968, !388}
!2968 = !DILocation(line: 84, column: 5, scope: !2940)
!2969 = !DILocation(line: 85, column: 1, scope: !2931)
!2970 = distinct !DISubprogram(name: "sub_f", scope: !585, file: !585, line: 47, type: !1680, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !84, retainedNodes: !71)
!2971 = !DILocalVariable(name: "a", arg: 1, scope: !2970, file: !585, line: 47, type: !51)
!2972 = !DILocation(line: 0, scope: !2970)
!2973 = !DILocalVariable(name: "b", arg: 2, scope: !2970, file: !585, line: 47, type: !51)
!2974 = !DILocation(line: 48, column: 14, scope: !2970)
!2975 = !DILocation(line: 48, column: 5, scope: !2970)
!2976 = distinct !DISubprogram(name: "EF", scope: !2977, file: !2977, line: 60, type: !2978, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !84, retainedNodes: !71)
!2977 = !DIFile(filename: "../../../src/generic/echelon_form.h", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!2978 = !DISubroutineType(types: !2979)
!2979 = !{null, !61, !86, !86}
!2980 = !DILocalVariable(name: "A", arg: 1, scope: !2976, file: !2977, line: 60, type: !61)
!2981 = !DILocation(line: 0, scope: !2976)
!2982 = !DILocalVariable(name: "nrows", arg: 2, scope: !2976, file: !2977, line: 60, type: !86)
!2983 = !DILocalVariable(name: "ncols", arg: 3, scope: !2976, file: !2977, line: 60, type: !86)
!2984 = !DILocalVariable(name: "_pivot_row", scope: !2976, file: !2977, line: 62, type: !677, align: 256)
!2985 = !DILocation(line: 62, column: 27, scope: !2976)
!2986 = !DILocalVariable(name: "_pivot_row2", scope: !2976, file: !2977, line: 63, type: !677, align: 256)
!2987 = !DILocation(line: 63, column: 27, scope: !2976)
!2988 = !DILocalVariable(name: "packed_A", scope: !2976, file: !2977, line: 64, type: !2989, align: 256)
!2989 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 48384, elements: !2990)
!2990 = !{!2991}
!2991 = !DISubrange(count: 756)
!2992 = !DILocation(line: 64, column: 27, scope: !2976)
!2993 = !DILocation(line: 66, column: 26, scope: !2976)
!2994 = !DILocation(line: 66, column: 32, scope: !2976)
!2995 = !DILocalVariable(name: "row_len", scope: !2976, file: !2977, line: 66, type: !86)
!2996 = !DILocalVariable(name: "i", scope: !2997, file: !2977, line: 69, type: !86)
!2997 = distinct !DILexicalBlock(scope: !2976, file: !2977, line: 69, column: 5)
!2998 = !DILocation(line: 0, scope: !2997)
!2999 = !DILocation(line: 69, column: 10, scope: !2997)
!3000 = !DILocation(line: 69, scope: !2997)
!3001 = !DILocation(line: 69, column: 23, scope: !3002)
!3002 = distinct !DILexicalBlock(scope: !2997, file: !2977, line: 69, column: 5)
!3003 = !DILocation(line: 69, column: 5, scope: !2997)
!3004 = !DILocation(line: 77, column: 5, scope: !3005)
!3005 = distinct !DILexicalBlock(scope: !2976, file: !2977, line: 77, column: 5)
!3006 = !DILocation(line: 70, column: 29, scope: !3007)
!3007 = distinct !DILexicalBlock(scope: !3002, file: !2977, line: 69, column: 37)
!3008 = !DILocation(line: 70, column: 25, scope: !3007)
!3009 = !DILocation(line: 70, column: 51, scope: !3007)
!3010 = !DILocation(line: 70, column: 47, scope: !3007)
!3011 = !DILocation(line: 70, column: 9, scope: !3007)
!3012 = !DILocation(line: 69, column: 33, scope: !3002)
!3013 = !DILocation(line: 69, column: 5, scope: !3002)
!3014 = distinct !{!3014, !3003, !3015, !388}
!3015 = !DILocation(line: 71, column: 5, scope: !2997)
!3016 = !DILocation(line: 77, scope: !3005)
!3017 = !DILocalVariable(name: "pivot_row", scope: !2976, file: !2977, line: 76, type: !86)
!3018 = !DILocalVariable(name: "pivot_col", scope: !3005, file: !2977, line: 77, type: !86)
!3019 = !DILocation(line: 0, scope: !3005)
!3020 = !DILocation(line: 77, column: 39, scope: !3021)
!3021 = distinct !DILexicalBlock(scope: !3005, file: !2977, line: 77, column: 5)
!3022 = !DILocation(line: 138, column: 5, scope: !3023)
!3023 = distinct !DILexicalBlock(scope: !2976, file: !2977, line: 138, column: 5)
!3024 = !DILocation(line: 79, column: 37, scope: !3025)
!3025 = distinct !DILexicalBlock(scope: !3021, file: !2977, line: 77, column: 61)
!3026 = !DILocalVariable(name: "pivot_row_lower_bound", scope: !3025, file: !2977, line: 79, type: !86)
!3027 = !DILocation(line: 0, scope: !3025)
!3028 = !DILocation(line: 80, column: 37, scope: !3025)
!3029 = !DILocalVariable(name: "pivot_row_upper_bound", scope: !3025, file: !2977, line: 80, type: !86)
!3030 = !DILocalVariable(name: "i", scope: !3031, file: !2977, line: 85, type: !86)
!3031 = distinct !DILexicalBlock(scope: !3025, file: !2977, line: 85, column: 9)
!3032 = !DILocation(line: 0, scope: !3031)
!3033 = !DILocation(line: 85, column: 14, scope: !3031)
!3034 = !DILocation(line: 85, scope: !3031)
!3035 = !DILocation(line: 85, column: 27, scope: !3036)
!3036 = distinct !DILexicalBlock(scope: !3031, file: !2977, line: 85, column: 9)
!3037 = !DILocation(line: 85, column: 9, scope: !3031)
!3038 = !DILocation(line: 93, column: 9, scope: !3039)
!3039 = distinct !DILexicalBlock(scope: !3025, file: !2977, line: 93, column: 9)
!3040 = !DILocation(line: 86, column: 13, scope: !3041)
!3041 = distinct !DILexicalBlock(scope: !3036, file: !2977, line: 85, column: 43)
!3042 = !DILocation(line: 86, column: 27, scope: !3041)
!3043 = !DILocation(line: 87, column: 13, scope: !3041)
!3044 = !DILocation(line: 87, column: 28, scope: !3041)
!3045 = !DILocation(line: 85, column: 39, scope: !3036)
!3046 = !DILocation(line: 85, column: 9, scope: !3036)
!3047 = distinct !{!3047, !3037, !3048, !388}
!3048 = !DILocation(line: 88, column: 9, scope: !3031)
!3049 = !DILocation(line: 0, scope: !3039)
!3050 = !DILocalVariable(name: "row", scope: !3039, file: !2977, line: 93, type: !86)
!3051 = !DILocalVariable(name: "pivot", scope: !3025, file: !2977, line: 91, type: !51)
!3052 = !DILocalVariable(name: "pivot_is_zero", scope: !3025, file: !2977, line: 92, type: !53)
!3053 = !DILocation(line: 94, column: 24, scope: !3054)
!3054 = distinct !DILexicalBlock(scope: !3039, file: !2977, line: 93, column: 9)
!3055 = !DILocation(line: 94, column: 21, scope: !3054)
!3056 = !DILocation(line: 96, column: 38, scope: !3057)
!3057 = distinct !DILexicalBlock(scope: !3054, file: !2977, line: 94, column: 80)
!3058 = !DILocation(line: 96, column: 37, scope: !3057)
!3059 = !DILocalVariable(name: "is_pivot_row", scope: !3057, file: !2977, line: 96, type: !53)
!3060 = !DILocation(line: 0, scope: !3057)
!3061 = !DILocation(line: 97, column: 40, scope: !3057)
!3062 = !DILocalVariable(name: "below_pivot_row", scope: !3057, file: !2977, line: 97, type: !53)
!3063 = !DILocalVariable(name: "j", scope: !3064, file: !2977, line: 99, type: !86)
!3064 = distinct !DILexicalBlock(scope: !3057, file: !2977, line: 99, column: 13)
!3065 = !DILocation(line: 0, scope: !3064)
!3066 = !DILocation(line: 99, column: 18, scope: !3064)
!3067 = !DILocation(line: 99, scope: !3064)
!3068 = !DILocation(line: 99, column: 31, scope: !3069)
!3069 = distinct !DILexicalBlock(scope: !3064, file: !2977, line: 99, column: 13)
!3070 = !DILocation(line: 99, column: 13, scope: !3064)
!3071 = !DILocation(line: 100, column: 67, scope: !3072)
!3072 = distinct !DILexicalBlock(scope: !3069, file: !2977, line: 99, column: 47)
!3073 = !DILocation(line: 100, column: 48, scope: !3072)
!3074 = !DILocation(line: 101, column: 47, scope: !3072)
!3075 = !DILocation(line: 101, column: 57, scope: !3072)
!3076 = !DILocation(line: 101, column: 34, scope: !3072)
!3077 = !DILocation(line: 100, column: 85, scope: !3072)
!3078 = !DILocation(line: 100, column: 17, scope: !3072)
!3079 = !DILocation(line: 100, column: 31, scope: !3072)
!3080 = !DILocation(line: 99, column: 43, scope: !3069)
!3081 = !DILocation(line: 99, column: 13, scope: !3069)
!3082 = distinct !{!3082, !3070, !3083, !388}
!3083 = !DILocation(line: 102, column: 13, scope: !3064)
!3084 = !DILocation(line: 103, column: 21, scope: !3057)
!3085 = !DILocation(line: 104, column: 44, scope: !3057)
!3086 = !DILocation(line: 104, column: 30, scope: !3057)
!3087 = !DILocation(line: 104, column: 29, scope: !3057)
!3088 = !DILocation(line: 94, column: 76, scope: !3054)
!3089 = !DILocation(line: 93, column: 9, scope: !3054)
!3090 = distinct !{!3090, !3038, !3091, !388}
!3091 = !DILocation(line: 105, column: 9, scope: !3039)
!3092 = !DILocation(line: 108, column: 19, scope: !3025)
!3093 = !DILocalVariable(name: "inverse", scope: !2976, file: !2977, line: 75, type: !51)
!3094 = !DILocation(line: 109, column: 9, scope: !3025)
!3095 = !DILocalVariable(name: "row", scope: !3096, file: !2977, line: 113, type: !86)
!3096 = distinct !DILexicalBlock(scope: !3025, file: !2977, line: 113, column: 9)
!3097 = !DILocation(line: 0, scope: !3096)
!3098 = !DILocation(line: 113, column: 14, scope: !3096)
!3099 = !DILocation(line: 113, scope: !3096)
!3100 = !DILocation(line: 113, column: 51, scope: !3101)
!3101 = distinct !DILexicalBlock(scope: !3096, file: !2977, line: 113, column: 9)
!3102 = !DILocation(line: 113, column: 9, scope: !3096)
!3103 = !DILocation(line: 124, column: 9, scope: !3104)
!3104 = distinct !DILexicalBlock(scope: !3025, file: !2977, line: 124, column: 9)
!3105 = !DILocation(line: 114, column: 33, scope: !3106)
!3106 = distinct !DILexicalBlock(scope: !3101, file: !2977, line: 113, column: 84)
!3107 = !DILocation(line: 114, column: 63, scope: !3106)
!3108 = !DILocalVariable(name: "do_copy", scope: !3106, file: !2977, line: 114, type: !53)
!3109 = !DILocation(line: 0, scope: !3106)
!3110 = !DILocalVariable(name: "do_not_copy", scope: !3106, file: !2977, line: 115, type: !53)
!3111 = !DILocalVariable(name: "col", scope: !3112, file: !2977, line: 116, type: !86)
!3112 = distinct !DILexicalBlock(scope: !3106, file: !2977, line: 116, column: 13)
!3113 = !DILocation(line: 0, scope: !3112)
!3114 = !DILocation(line: 116, column: 18, scope: !3112)
!3115 = !DILocation(line: 116, scope: !3112)
!3116 = !DILocation(line: 116, column: 35, scope: !3117)
!3117 = distinct !DILexicalBlock(scope: !3112, file: !2977, line: 116, column: 13)
!3118 = !DILocation(line: 116, column: 13, scope: !3112)
!3119 = !DILocation(line: 118, column: 49, scope: !3120)
!3120 = distinct !DILexicalBlock(scope: !3117, file: !2977, line: 116, column: 53)
!3121 = !DILocation(line: 118, column: 59, scope: !3120)
!3122 = !DILocation(line: 118, column: 36, scope: !3120)
!3123 = !DILocation(line: 118, column: 34, scope: !3120)
!3124 = !DILocation(line: 119, column: 32, scope: !3120)
!3125 = !DILocation(line: 119, column: 30, scope: !3120)
!3126 = !DILocation(line: 118, column: 67, scope: !3120)
!3127 = !DILocation(line: 117, column: 30, scope: !3120)
!3128 = !DILocation(line: 117, column: 40, scope: !3120)
!3129 = !DILocation(line: 117, column: 17, scope: !3120)
!3130 = !DILocation(line: 117, column: 47, scope: !3120)
!3131 = !DILocation(line: 116, column: 49, scope: !3117)
!3132 = !DILocation(line: 116, column: 13, scope: !3117)
!3133 = distinct !{!3133, !3118, !3134, !388}
!3134 = !DILocation(line: 120, column: 13, scope: !3112)
!3135 = !DILocation(line: 113, column: 80, scope: !3101)
!3136 = !DILocation(line: 113, column: 9, scope: !3101)
!3137 = distinct !{!3137, !3102, !3138, !388}
!3138 = !DILocation(line: 121, column: 9, scope: !3096)
!3139 = !DILocation(line: 124, scope: !3104)
!3140 = !DILocalVariable(name: "row", scope: !3104, file: !2977, line: 124, type: !86)
!3141 = !DILocation(line: 0, scope: !3104)
!3142 = !DILocation(line: 124, column: 51, scope: !3143)
!3143 = distinct !DILexicalBlock(scope: !3104, file: !2977, line: 124, column: 9)
!3144 = !DILocation(line: 125, column: 46, scope: !3145)
!3145 = distinct !DILexicalBlock(scope: !3143, file: !2977, line: 124, column: 67)
!3146 = !DILocalVariable(name: "below_pivot", scope: !3145, file: !2977, line: 125, type: !51)
!3147 = !DILocation(line: 0, scope: !3145)
!3148 = !DILocation(line: 126, column: 74, scope: !3145)
!3149 = !DILocation(line: 126, column: 68, scope: !3145)
!3150 = !DILocation(line: 126, column: 41, scope: !3145)
!3151 = !DILocalVariable(name: "elt_to_elim", scope: !3145, file: !2977, line: 126, type: !51)
!3152 = !DILocation(line: 128, column: 63, scope: !3145)
!3153 = !DILocation(line: 129, column: 52, scope: !3145)
!3154 = !DILocation(line: 129, column: 46, scope: !3145)
!3155 = !DILocation(line: 128, column: 13, scope: !3145)
!3156 = !DILocation(line: 124, column: 63, scope: !3143)
!3157 = !DILocation(line: 124, column: 9, scope: !3143)
!3158 = distinct !{!3158, !3103, !3159, !388}
!3159 = !DILocation(line: 130, column: 9, scope: !3104)
!3160 = !DILocation(line: 132, column: 19, scope: !3025)
!3161 = !DILocation(line: 77, column: 57, scope: !3021)
!3162 = !DILocation(line: 77, column: 5, scope: !3021)
!3163 = distinct !{!3163, !3004, !3164, !388}
!3164 = !DILocation(line: 133, column: 5, scope: !3005)
!3165 = !DILocation(line: 138, scope: !3023)
!3166 = !DILocalVariable(name: "i", scope: !3023, file: !2977, line: 138, type: !86)
!3167 = !DILocation(line: 0, scope: !3023)
!3168 = !DILocation(line: 138, column: 23, scope: !3169)
!3169 = distinct !DILexicalBlock(scope: !3023, file: !2977, line: 138, column: 5)
!3170 = !DILocation(line: 139, column: 47, scope: !3171)
!3171 = distinct !DILexicalBlock(scope: !3169, file: !2977, line: 138, column: 37)
!3172 = !DILocation(line: 139, column: 43, scope: !3171)
!3173 = !DILocation(line: 139, column: 9, scope: !3171)
!3174 = !DILocalVariable(name: "j", scope: !3175, file: !2977, line: 140, type: !86)
!3175 = distinct !DILexicalBlock(scope: !3171, file: !2977, line: 140, column: 9)
!3176 = !DILocation(line: 0, scope: !3175)
!3177 = !DILocation(line: 140, column: 14, scope: !3175)
!3178 = !DILocation(line: 140, scope: !3175)
!3179 = !DILocation(line: 140, column: 27, scope: !3180)
!3180 = distinct !DILexicalBlock(scope: !3175, file: !2977, line: 140, column: 9)
!3181 = !DILocation(line: 140, column: 9, scope: !3175)
!3182 = !DILocation(line: 141, column: 32, scope: !3183)
!3183 = distinct !DILexicalBlock(scope: !3180, file: !2977, line: 140, column: 41)
!3184 = !DILocation(line: 141, column: 17, scope: !3183)
!3185 = !DILocation(line: 141, column: 13, scope: !3183)
!3186 = !DILocation(line: 141, column: 30, scope: !3183)
!3187 = !DILocation(line: 140, column: 37, scope: !3180)
!3188 = !DILocation(line: 140, column: 9, scope: !3180)
!3189 = distinct !{!3189, !3181, !3190, !388}
!3190 = !DILocation(line: 142, column: 9, scope: !3175)
!3191 = !DILocation(line: 138, column: 33, scope: !3169)
!3192 = !DILocation(line: 138, column: 5, scope: !3169)
!3193 = distinct !{!3193, !3022, !3194, !388}
!3194 = !DILocation(line: 143, column: 5, scope: !3023)
!3195 = !DILocation(line: 145, column: 5, scope: !2976)
!3196 = !DILocation(line: 146, column: 5, scope: !2976)
!3197 = !DILocation(line: 147, column: 5, scope: !2976)
!3198 = !DILocation(line: 148, column: 5, scope: !2976)
!3199 = !DILocation(line: 149, column: 1, scope: !2976)
!3200 = distinct !DISubprogram(name: "ct_compare_8", scope: !3201, file: !3201, line: 51, type: !1680, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !84, retainedNodes: !71)
!3201 = !DIFile(filename: "../../../src/arithmetic.h", directory: "/home/siddhesh/Desktop/MAYO-LLVM/llvm-apps/mayo_pass/build")
!3202 = !DILocalVariable(name: "a", arg: 1, scope: !3200, file: !3201, line: 51, type: !51)
!3203 = !DILocation(line: 0, scope: !3200)
!3204 = !DILocalVariable(name: "b", arg: 2, scope: !3200, file: !3201, line: 51, type: !51)
!3205 = !DILocation(line: 52, column: 42, scope: !3200)
!3206 = !DILocation(line: 52, column: 13, scope: !3200)
!3207 = !DILocation(line: 52, column: 71, scope: !3200)
!3208 = !DILocation(line: 52, column: 69, scope: !3200)
!3209 = !DILocation(line: 52, column: 5, scope: !3200)
!3210 = distinct !DISubprogram(name: "mul_fx8", scope: !585, file: !585, line: 27, type: !3211, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !84, retainedNodes: !71)
!3211 = !DISubroutineType(types: !3212)
!3212 = !{!53, !51, !53}
!3213 = !DILocalVariable(name: "a", arg: 1, scope: !3210, file: !585, line: 27, type: !51)
!3214 = !DILocation(line: 0, scope: !3210)
!3215 = !DILocalVariable(name: "b", arg: 2, scope: !3210, file: !585, line: 27, type: !53)
!3216 = !DILocation(line: 30, column: 13, scope: !3210)
!3217 = !DILocation(line: 30, column: 10, scope: !3210)
!3218 = !DILocation(line: 30, column: 17, scope: !3210)
!3219 = !DILocalVariable(name: "p", scope: !3210, file: !585, line: 29, type: !53)
!3220 = !DILocation(line: 31, column: 13, scope: !3210)
!3221 = !DILocation(line: 31, column: 10, scope: !3210)
!3222 = !DILocation(line: 31, column: 17, scope: !3210)
!3223 = !DILocation(line: 31, column: 7, scope: !3210)
!3224 = !DILocation(line: 32, column: 13, scope: !3210)
!3225 = !DILocation(line: 32, column: 10, scope: !3210)
!3226 = !DILocation(line: 32, column: 17, scope: !3210)
!3227 = !DILocation(line: 32, column: 7, scope: !3210)
!3228 = !DILocation(line: 33, column: 13, scope: !3210)
!3229 = !DILocation(line: 33, column: 10, scope: !3210)
!3230 = !DILocation(line: 33, column: 17, scope: !3210)
!3231 = !DILocation(line: 33, column: 7, scope: !3210)
!3232 = !DILocalVariable(name: "top_p", scope: !3210, file: !585, line: 36, type: !53)
!3233 = !DILocation(line: 37, column: 32, scope: !3210)
!3234 = !DILocation(line: 37, column: 47, scope: !3210)
!3235 = !DILocation(line: 37, column: 38, scope: !3210)
!3236 = !DILocation(line: 37, column: 54, scope: !3210)
!3237 = !DILocalVariable(name: "out", scope: !3210, file: !585, line: 37, type: !53)
!3238 = !DILocation(line: 38, column: 5, scope: !3210)
!3239 = distinct !DISubprogram(name: "ef_pack_m_vec", scope: !2977, file: !2977, line: 24, type: !3240, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !84, retainedNodes: !71)
!3240 = !DISubroutineType(types: !3241)
!3241 = !{null, !90, !52, !86}
!3242 = !DILocalVariable(name: "in", arg: 1, scope: !3239, file: !2977, line: 24, type: !90)
!3243 = !DILocation(line: 0, scope: !3239)
!3244 = !DILocalVariable(name: "out", arg: 2, scope: !3239, file: !2977, line: 24, type: !52)
!3245 = !DILocalVariable(name: "ncols", arg: 3, scope: !3239, file: !2977, line: 24, type: !86)
!3246 = !DILocalVariable(name: "out8", scope: !3239, file: !2977, line: 26, type: !61)
!3247 = !DILocalVariable(name: "i", scope: !3239, file: !2977, line: 25, type: !86)
!3248 = !DILocation(line: 27, column: 9, scope: !3249)
!3249 = distinct !DILexicalBlock(scope: !3239, file: !2977, line: 27, column: 5)
!3250 = !DILocation(line: 27, scope: !3249)
!3251 = !DILocation(line: 27, column: 17, scope: !3252)
!3252 = distinct !DILexicalBlock(scope: !3249, file: !2977, line: 27, column: 5)
!3253 = !DILocation(line: 27, column: 20, scope: !3252)
!3254 = !DILocation(line: 27, column: 5, scope: !3249)
!3255 = !DILocation(line: 31, column: 23, scope: !3256)
!3256 = distinct !DILexicalBlock(scope: !3252, file: !2977, line: 27, column: 36)
!3257 = !DILocation(line: 31, column: 44, scope: !3256)
!3258 = !DILocation(line: 31, column: 40, scope: !3256)
!3259 = !DILocation(line: 31, column: 48, scope: !3256)
!3260 = !DILocation(line: 31, column: 37, scope: !3256)
!3261 = !DILocation(line: 31, column: 15, scope: !3256)
!3262 = !DILocation(line: 31, column: 9, scope: !3256)
!3263 = !DILocation(line: 31, column: 20, scope: !3256)
!3264 = !DILocation(line: 27, column: 31, scope: !3252)
!3265 = !DILocation(line: 27, column: 5, scope: !3252)
!3266 = distinct !{!3266, !3254, !3267, !388}
!3267 = !DILocation(line: 33, column: 5, scope: !3249)
!3268 = !DILocation(line: 34, column: 19, scope: !3269)
!3269 = distinct !DILexicalBlock(scope: !3239, file: !2977, line: 34, column: 9)
!3270 = !DILocation(line: 38, column: 23, scope: !3271)
!3271 = distinct !DILexicalBlock(scope: !3269, file: !2977, line: 34, column: 24)
!3272 = !DILocation(line: 38, column: 15, scope: !3271)
!3273 = !DILocation(line: 38, column: 9, scope: !3271)
!3274 = !DILocation(line: 38, column: 20, scope: !3271)
!3275 = !DILocation(line: 40, column: 5, scope: !3271)
!3276 = !DILocation(line: 41, column: 1, scope: !3239)
!3277 = distinct !DISubprogram(name: "ct_compare_64", scope: !3201, file: !3201, line: 46, type: !3278, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !84, retainedNodes: !71)
!3278 = !DISubroutineType(types: !3279)
!3279 = !{!53, !86, !86}
!3280 = !DILocalVariable(name: "a", arg: 1, scope: !3277, file: !3201, line: 46, type: !86)
!3281 = !DILocation(line: 0, scope: !3277)
!3282 = !DILocalVariable(name: "b", arg: 2, scope: !3277, file: !3201, line: 46, type: !86)
!3283 = !DILocation(line: 47, column: 38, scope: !3277)
!3284 = !DILocation(line: 47, column: 44, scope: !3277)
!3285 = !DILocation(line: 47, column: 73, scope: !3277)
!3286 = !DILocation(line: 47, column: 71, scope: !3277)
!3287 = !DILocation(line: 47, column: 5, scope: !3277)
!3288 = distinct !DISubprogram(name: "ct_64_is_greater_than", scope: !3201, file: !3201, line: 35, type: !3278, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !84, retainedNodes: !71)
!3289 = !DILocalVariable(name: "a", arg: 1, scope: !3288, file: !3201, line: 35, type: !86)
!3290 = !DILocation(line: 0, scope: !3288)
!3291 = !DILocalVariable(name: "b", arg: 2, scope: !3288, file: !3201, line: 35, type: !86)
!3292 = !DILocalVariable(name: "diff", scope: !3288, file: !3201, line: 36, type: !87)
!3293 = !DILocation(line: 37, column: 30, scope: !3288)
!3294 = !DILocation(line: 37, column: 59, scope: !3288)
!3295 = !DILocation(line: 37, column: 57, scope: !3288)
!3296 = !DILocation(line: 37, column: 5, scope: !3288)
!3297 = distinct !DISubprogram(name: "m_extract_element", scope: !2977, file: !2977, line: 16, type: !3298, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !84, retainedNodes: !71)
!3298 = !DISubroutineType(types: !3299)
!3299 = !{!51, !411, !86}
!3300 = !DILocalVariable(name: "in", arg: 1, scope: !3297, file: !2977, line: 16, type: !411)
!3301 = !DILocation(line: 0, scope: !3297)
!3302 = !DILocalVariable(name: "index", arg: 2, scope: !3297, file: !2977, line: 16, type: !86)
!3303 = !DILocation(line: 17, column: 27, scope: !3297)
!3304 = !DILocalVariable(name: "leg", scope: !3297, file: !2977, line: 17, type: !324)
!3305 = !DILocation(line: 18, column: 30, scope: !3297)
!3306 = !DILocalVariable(name: "offset", scope: !3297, file: !2977, line: 18, type: !324)
!3307 = !DILocation(line: 20, column: 13, scope: !3297)
!3308 = !DILocation(line: 20, column: 31, scope: !3297)
!3309 = !DILocation(line: 20, column: 21, scope: !3297)
!3310 = !DILocation(line: 20, column: 12, scope: !3297)
!3311 = !DILocation(line: 20, column: 5, scope: !3297)
!3312 = distinct !DISubprogram(name: "inverse_f", scope: !585, file: !585, line: 56, type: !3313, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !84, retainedNodes: !71)
!3313 = !DISubroutineType(types: !3314)
!3314 = !{!51, !51}
!3315 = !DILocalVariable(name: "a", arg: 1, scope: !3312, file: !585, line: 56, type: !51)
!3316 = !DILocation(line: 0, scope: !3312)
!3317 = !DILocation(line: 60, column: 24, scope: !3312)
!3318 = !DILocalVariable(name: "a2", scope: !3312, file: !585, line: 60, type: !51)
!3319 = !DILocation(line: 61, column: 24, scope: !3312)
!3320 = !DILocalVariable(name: "a4", scope: !3312, file: !585, line: 61, type: !51)
!3321 = !DILocation(line: 62, column: 24, scope: !3312)
!3322 = !DILocalVariable(name: "a8", scope: !3312, file: !585, line: 62, type: !51)
!3323 = !DILocation(line: 63, column: 24, scope: !3312)
!3324 = !DILocalVariable(name: "a6", scope: !3312, file: !585, line: 63, type: !51)
!3325 = !DILocation(line: 64, column: 25, scope: !3312)
!3326 = !DILocalVariable(name: "a14", scope: !3312, file: !585, line: 64, type: !51)
!3327 = !DILocation(line: 66, column: 5, scope: !3312)
!3328 = distinct !DISubprogram(name: "vec_mul_add_u64", scope: !3201, file: !3201, line: 94, type: !3329, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !84, retainedNodes: !71)
!3329 = !DISubroutineType(types: !3330)
!3330 = !{null, !324, !411, !51, !52}
!3331 = !DILocalVariable(name: "legs", arg: 1, scope: !3328, file: !3201, line: 94, type: !324)
!3332 = !DILocation(line: 0, scope: !3328)
!3333 = !DILocalVariable(name: "in", arg: 2, scope: !3328, file: !3201, line: 94, type: !411)
!3334 = !DILocalVariable(name: "a", arg: 3, scope: !3328, file: !3201, line: 94, type: !51)
!3335 = !DILocalVariable(name: "acc", arg: 4, scope: !3328, file: !3201, line: 94, type: !52)
!3336 = !DILocation(line: 95, column: 20, scope: !3328)
!3337 = !DILocalVariable(name: "tab", scope: !3328, file: !3201, line: 95, type: !62)
!3338 = !DILocalVariable(name: "lsb_ask", scope: !3328, file: !3201, line: 97, type: !53)
!3339 = !DILocalVariable(name: "i", scope: !3340, file: !3201, line: 99, type: !86)
!3340 = distinct !DILexicalBlock(scope: !3328, file: !3201, line: 99, column: 5)
!3341 = !DILocation(line: 0, scope: !3340)
!3342 = !DILocation(line: 99, column: 9, scope: !3340)
!3343 = !DILocation(line: 99, scope: !3340)
!3344 = !DILocation(line: 99, column: 20, scope: !3345)
!3345 = distinct !DILexicalBlock(scope: !3340, file: !3201, line: 99, column: 5)
!3346 = !DILocation(line: 99, column: 5, scope: !3340)
!3347 = !DILocation(line: 100, column: 21, scope: !3348)
!3348 = distinct !DILexicalBlock(scope: !3345, file: !3201, line: 99, column: 32)
!3349 = !DILocation(line: 100, column: 33, scope: !3348)
!3350 = !DILocation(line: 100, column: 51, scope: !3348)
!3351 = !DILocation(line: 100, column: 46, scope: !3348)
!3352 = !DILocation(line: 100, column: 44, scope: !3348)
!3353 = !DILocation(line: 101, column: 27, scope: !3348)
!3354 = !DILocation(line: 101, column: 33, scope: !3348)
!3355 = !DILocation(line: 101, column: 52, scope: !3348)
!3356 = !DILocation(line: 101, column: 59, scope: !3348)
!3357 = !DILocation(line: 101, column: 46, scope: !3348)
!3358 = !DILocation(line: 101, column: 44, scope: !3348)
!3359 = !DILocation(line: 101, column: 17, scope: !3348)
!3360 = !DILocation(line: 102, column: 21, scope: !3348)
!3361 = !DILocation(line: 102, column: 27, scope: !3348)
!3362 = !DILocation(line: 102, column: 33, scope: !3348)
!3363 = !DILocation(line: 102, column: 52, scope: !3348)
!3364 = !DILocation(line: 102, column: 59, scope: !3348)
!3365 = !DILocation(line: 102, column: 46, scope: !3348)
!3366 = !DILocation(line: 102, column: 44, scope: !3348)
!3367 = !DILocation(line: 102, column: 17, scope: !3348)
!3368 = !DILocation(line: 103, column: 21, scope: !3348)
!3369 = !DILocation(line: 103, column: 27, scope: !3348)
!3370 = !DILocation(line: 103, column: 33, scope: !3348)
!3371 = !DILocation(line: 103, column: 52, scope: !3348)
!3372 = !DILocation(line: 103, column: 59, scope: !3348)
!3373 = !DILocation(line: 103, column: 46, scope: !3348)
!3374 = !DILocation(line: 103, column: 44, scope: !3348)
!3375 = !DILocation(line: 103, column: 17, scope: !3348)
!3376 = !DILocation(line: 100, column: 9, scope: !3348)
!3377 = !DILocation(line: 100, column: 16, scope: !3348)
!3378 = !DILocation(line: 99, column: 29, scope: !3345)
!3379 = !DILocation(line: 99, column: 5, scope: !3345)
!3380 = distinct !{!3380, !3346, !3381, !388}
!3381 = !DILocation(line: 104, column: 5, scope: !3340)
!3382 = !DILocation(line: 105, column: 1, scope: !3328)
!3383 = distinct !DISubprogram(name: "ef_unpack_m_vec", scope: !2977, file: !2977, line: 44, type: !3384, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !84, retainedNodes: !71)
!3384 = !DISubroutineType(types: !3385)
!3385 = !{null, !86, !411, !61}
!3386 = !DILocalVariable(name: "legs", arg: 1, scope: !3383, file: !2977, line: 44, type: !86)
!3387 = !DILocation(line: 0, scope: !3383)
!3388 = !DILocalVariable(name: "in", arg: 2, scope: !3383, file: !2977, line: 44, type: !411)
!3389 = !DILocalVariable(name: "out", arg: 3, scope: !3383, file: !2977, line: 44, type: !61)
!3390 = !DILocalVariable(name: "in8", scope: !3383, file: !2977, line: 45, type: !90)
!3391 = !DILocalVariable(name: "i", scope: !3392, file: !2977, line: 46, type: !86)
!3392 = distinct !DILexicalBlock(scope: !3383, file: !2977, line: 46, column: 5)
!3393 = !DILocation(line: 0, scope: !3392)
!3394 = !DILocation(line: 46, column: 9, scope: !3392)
!3395 = !DILocation(line: 46, scope: !3392)
!3396 = !DILocation(line: 46, column: 29, scope: !3397)
!3397 = distinct !DILexicalBlock(scope: !3392, file: !2977, line: 46, column: 5)
!3398 = !DILocation(line: 46, column: 22, scope: !3397)
!3399 = !DILocation(line: 46, column: 5, scope: !3392)
!3400 = !DILocation(line: 51, column: 26, scope: !3401)
!3401 = distinct !DILexicalBlock(scope: !3397, file: !2977, line: 46, column: 42)
!3402 = !DILocation(line: 51, column: 21, scope: !3401)
!3403 = !DILocation(line: 51, column: 31, scope: !3401)
!3404 = !DILocation(line: 51, column: 9, scope: !3401)
!3405 = !DILocation(line: 51, column: 18, scope: !3401)
!3406 = !DILocation(line: 52, column: 26, scope: !3401)
!3407 = !DILocation(line: 52, column: 21, scope: !3401)
!3408 = !DILocation(line: 52, column: 30, scope: !3401)
!3409 = !DILocation(line: 52, column: 14, scope: !3401)
!3410 = !DILocation(line: 52, column: 9, scope: !3401)
!3411 = !DILocation(line: 52, column: 18, scope: !3401)
!3412 = !DILocation(line: 46, column: 37, scope: !3397)
!3413 = !DILocation(line: 46, column: 5, scope: !3397)
!3414 = distinct !{!3414, !3399, !3415, !388}
!3415 = !DILocation(line: 54, column: 5, scope: !3392)
!3416 = !DILocation(line: 55, column: 1, scope: !3383)
!3417 = distinct !DISubprogram(name: "mul_table", scope: !585, file: !585, line: 128, type: !586, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !84, retainedNodes: !71)
!3418 = !DILocalVariable(name: "b", arg: 1, scope: !3417, file: !585, line: 128, type: !175)
!3419 = !DILocation(line: 0, scope: !3417)
!3420 = !DILocation(line: 129, column: 19, scope: !3417)
!3421 = !DILocation(line: 129, column: 33, scope: !3417)
!3422 = !DILocalVariable(name: "x", scope: !3417, file: !585, line: 129, type: !62)
!3423 = !DILocalVariable(name: "high_nibble_mask", scope: !3417, file: !585, line: 131, type: !62)
!3424 = !DILocation(line: 133, column: 28, scope: !3417)
!3425 = !DILocalVariable(name: "high_half", scope: !3417, file: !585, line: 133, type: !62)
!3426 = !DILocation(line: 134, column: 28, scope: !3417)
!3427 = !DILocation(line: 134, column: 47, scope: !3417)
!3428 = !DILocation(line: 134, column: 34, scope: !3417)
!3429 = !DILocation(line: 134, column: 5, scope: !3417)
!3430 = distinct !DISubprogram(name: "mul_f", scope: !585, file: !585, line: 8, type: !1680, scopeLine: 8, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !84, retainedNodes: !71)
!3431 = !DILocalVariable(name: "a", arg: 1, scope: !3430, file: !585, line: 8, type: !51)
!3432 = !DILocation(line: 0, scope: !3430)
!3433 = !DILocalVariable(name: "b", arg: 2, scope: !3430, file: !585, line: 8, type: !51)
!3434 = !DILocation(line: 13, column: 10, scope: !3430)
!3435 = !DILocation(line: 13, column: 7, scope: !3430)
!3436 = !DILocation(line: 16, column: 17, scope: !3430)
!3437 = !DILocalVariable(name: "p", scope: !3430, file: !585, line: 10, type: !51)
!3438 = !DILocation(line: 17, column: 13, scope: !3430)
!3439 = !DILocation(line: 17, column: 17, scope: !3430)
!3440 = !DILocation(line: 17, column: 7, scope: !3430)
!3441 = !DILocation(line: 18, column: 13, scope: !3430)
!3442 = !DILocation(line: 18, column: 17, scope: !3430)
!3443 = !DILocation(line: 18, column: 7, scope: !3430)
!3444 = !DILocation(line: 19, column: 13, scope: !3430)
!3445 = !DILocation(line: 19, column: 17, scope: !3430)
!3446 = !DILocation(line: 19, column: 7, scope: !3430)
!3447 = !DILocalVariable(name: "top_p", scope: !3430, file: !585, line: 22, type: !51)
!3448 = !DILocation(line: 23, column: 37, scope: !3430)
!3449 = !DILocation(line: 23, column: 52, scope: !3430)
!3450 = !DILocation(line: 23, column: 43, scope: !3430)
!3451 = !DILocation(line: 23, column: 59, scope: !3430)
!3452 = !DILocalVariable(name: "out", scope: !3430, file: !585, line: 23, type: !51)
!3453 = !DILocation(line: 24, column: 5, scope: !3430)
!3454 = distinct !DISubprogram(name: "lincomb", scope: !585, file: !585, line: 69, type: !1688, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !84, retainedNodes: !71)
!3455 = !DILocalVariable(name: "a", arg: 1, scope: !3454, file: !585, line: 69, type: !90)
!3456 = !DILocation(line: 0, scope: !3454)
!3457 = !DILocalVariable(name: "b", arg: 2, scope: !3454, file: !585, line: 70, type: !90)
!3458 = !DILocalVariable(name: "n", arg: 3, scope: !3454, file: !585, line: 70, type: !86)
!3459 = !DILocalVariable(name: "m", arg: 4, scope: !3454, file: !585, line: 70, type: !86)
!3460 = !DILocalVariable(name: "ret", scope: !3454, file: !585, line: 71, type: !51)
!3461 = !DILocalVariable(name: "i", scope: !3462, file: !585, line: 72, type: !86)
!3462 = distinct !DILexicalBlock(scope: !3454, file: !585, line: 72, column: 5)
!3463 = !DILocation(line: 0, scope: !3462)
!3464 = !DILocation(line: 72, column: 10, scope: !3462)
!3465 = !DILocation(line: 72, scope: !3462)
!3466 = !DILocation(line: 72, column: 23, scope: !3467)
!3467 = distinct !DILexicalBlock(scope: !3462, file: !585, line: 72, column: 5)
!3468 = !DILocation(line: 72, column: 5, scope: !3462)
!3469 = !DILocation(line: 73, column: 27, scope: !3470)
!3470 = distinct !DILexicalBlock(scope: !3467, file: !585, line: 72, column: 41)
!3471 = !DILocation(line: 73, column: 33, scope: !3470)
!3472 = !DILocation(line: 73, column: 21, scope: !3470)
!3473 = !DILocation(line: 73, column: 15, scope: !3470)
!3474 = !DILocation(line: 72, column: 28, scope: !3467)
!3475 = !DILocation(line: 72, column: 35, scope: !3467)
!3476 = !DILocation(line: 72, column: 5, scope: !3467)
!3477 = distinct !{!3477, !3468, !3478, !388}
!3478 = !DILocation(line: 74, column: 5, scope: !3462)
!3479 = !DILocation(line: 75, column: 5, scope: !3454)
!3480 = distinct !DISubprogram(name: "add_f", scope: !585, file: !585, line: 42, type: !1680, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !84, retainedNodes: !71)
!3481 = !DILocalVariable(name: "a", arg: 1, scope: !3480, file: !585, line: 42, type: !51)
!3482 = !DILocation(line: 0, scope: !3480)
!3483 = !DILocalVariable(name: "b", arg: 2, scope: !3480, file: !585, line: 42, type: !51)
!3484 = !DILocation(line: 43, column: 14, scope: !3480)
!3485 = !DILocation(line: 43, column: 5, scope: !3480)
