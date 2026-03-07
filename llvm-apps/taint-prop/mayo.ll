; ModuleID = 'composite'
source_filename = "composite"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "arm-unknown-none-eabi"

%struct.mayo_params_t = type { i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.sk_t = type { [113103 x i64], [2414 x i8] }

@MAYO_1 = external dso_local constant %struct.mayo_params_t, align 4
@MAYO_2 = external dso_local constant %struct.mayo_params_t, align 4
@MAYO_3 = external dso_local constant %struct.mayo_params_t, align 4
@MAYO_5 = external dso_local constant %struct.mayo_params_t, align 4
@__const.main.params = private unnamed_addr constant [4 x ptr] [ptr @MAYO_1, ptr @MAYO_2, ptr @MAYO_3, ptr @MAYO_5], align 4
@__const.example_mayo.msg = private unnamed_addr constant <{ i8, [31 x i8] }> <{ i8 14, [31 x i8] zeroinitializer }>, align 1
@.str = private unnamed_addr constant [17 x i8] c"Example with %s\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [17 x i8] c"mayo_keypair -> \00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [6 x i8] c"FAIL\0A\00", align 1, !dbg !9
@.str.3 = private unnamed_addr constant [4 x i8] c"OK\0A\00", align 1, !dbg !14
@.str.4 = private unnamed_addr constant [19 x i8] c"mayo_expand_sk -> \00", align 1, !dbg !19
@.str.5 = private unnamed_addr constant [19 x i8] c"mayo_expand_pk -> \00", align 1, !dbg !24
@.str.6 = private unnamed_addr constant [14 x i8] c"mayo_sign -> \00", align 1, !dbg !26
@.str.7 = private unnamed_addr constant [39 x i8] c"mayo_open (with correct signature) -> \00", align 1, !dbg !31
@.str.8 = private unnamed_addr constant [41 x i8] c"mayo_verify (with correct signature) -> \00", align 1, !dbg !36
@uint32_t_blocker = dso_local global i32 0, align 4, !dbg !41
@uint64_t_blocker = dso_local global i64 0, align 8, !dbg !68
@unsigned_char_blocker = dso_local global i8 0, align 1, !dbg !72

; Function Attrs: noinline nounwind optnone
define dso_local i32 @main() #0 !dbg !106 {
entry:
  %retval = alloca i32, align 4
  %params = alloca [4 x ptr], align 4
  %paramslen = alloca i32, align 4
  %i = alloca i32, align 4
    #dbg_declare(ptr %params, !109, !DIExpression(), !142)
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %params, ptr align 4 @__const.main.params, i32 16, i1 false), !dbg !142
    #dbg_declare(ptr %paramslen, !143, !DIExpression(), !144)
  store i32 4, ptr %paramslen, align 4, !dbg !144
    #dbg_declare(ptr %i, !145, !DIExpression(), !147)
  store i32 0, ptr %i, align 4, !dbg !147
  br label %for.cond, !dbg !148

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !149
  %1 = load i32, ptr %paramslen, align 4, !dbg !151
  %cmp = icmp slt i32 %0, %1, !dbg !152
  br i1 %cmp, label %for.body, label %for.end, !dbg !153

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4, !dbg !154
  %arrayidx = getelementptr inbounds [4 x ptr], ptr %params, i32 0, i32 %2, !dbg !157
  %3 = load ptr, ptr %arrayidx, align 4, !dbg !157
  %call = call i32 @example_mayo(ptr noundef %3) #5, !dbg !158
  %cmp1 = icmp ne i32 %call, 0, !dbg !159
  br i1 %cmp1, label %if.then, label %if.end, !dbg !159

if.then:                                          ; preds = %for.body
  store i32 -1, ptr %retval, align 4, !dbg !160
  br label %for.end, !dbg !160

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !162

for.inc:                                          ; preds = %if.end
  %4 = load i32, ptr %i, align 4, !dbg !163
  %inc = add nsw i32 %4, 1, !dbg !163
  store i32 %inc, ptr %i, align 4, !dbg !163
  br label %for.cond, !dbg !164, !llvm.loop !165

for.end:                                          ; preds = %if.then, %for.cond
  %5 = load i32, ptr %retval, align 4, !dbg !168
  ret i32 %5, !dbg !168
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i32(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i32, i1 immarg) #1

; Function Attrs: noinline nounwind optnone
define internal i32 @example_mayo(ptr noundef %p) #0 !dbg !169 {
entry:
  %p.addr = alloca ptr, align 4
  %msglen = alloca i32, align 4
  %smlen = alloca i32, align 4
  %pk = alloca ptr, align 4
  %sk = alloca ptr, align 4
  %epk = alloca ptr, align 4
  %esk = alloca ptr, align 4
  %sig = alloca ptr, align 4
  %msg = alloca [32 x i8], align 1
  %msg2 = alloca [32 x i8], align 1
  %res = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 4
    #dbg_declare(ptr %p.addr, !172, !DIExpression(), !173)
    #dbg_declare(ptr %msglen, !174, !DIExpression(), !175)
  store i32 32, ptr %msglen, align 4, !dbg !175
    #dbg_declare(ptr %smlen, !176, !DIExpression(), !177)
  %0 = load ptr, ptr %p.addr, align 4, !dbg !178
  %sig_bytes = getelementptr inbounds nuw %struct.mayo_params_t, ptr %0, i32 0, i32 16, !dbg !179
  %1 = load i32, ptr %sig_bytes, align 4, !dbg !179
  %2 = load i32, ptr %msglen, align 4, !dbg !180
  %add = add i32 %1, %2, !dbg !181
  store i32 %add, ptr %smlen, align 4, !dbg !177
    #dbg_declare(ptr %pk, !182, !DIExpression(), !183)
  %3 = load ptr, ptr %p.addr, align 4, !dbg !184
  %cpk_bytes = getelementptr inbounds nuw %struct.mayo_params_t, ptr %3, i32 0, i32 15, !dbg !185
  %4 = load i32, ptr %cpk_bytes, align 4, !dbg !185
  %call = call ptr @calloc(i32 noundef %4, i32 noundef 1) #6, !dbg !186
  store ptr %call, ptr %pk, align 4, !dbg !183
    #dbg_declare(ptr %sk, !187, !DIExpression(), !188)
  %5 = load ptr, ptr %p.addr, align 4, !dbg !189
  %csk_bytes = getelementptr inbounds nuw %struct.mayo_params_t, ptr %5, i32 0, i32 14, !dbg !190
  %6 = load i32, ptr %csk_bytes, align 4, !dbg !190
  %call1 = call ptr @calloc(i32 noundef %6, i32 noundef 1) #6, !dbg !191
  store ptr %call1, ptr %sk, align 4, !dbg !188
    #dbg_declare(ptr %epk, !192, !DIExpression(), !193)
  %call2 = call ptr @calloc(i32 noundef 1, i32 noundef 915840) #6, !dbg !194
  store ptr %call2, ptr %epk, align 4, !dbg !193
    #dbg_declare(ptr %esk, !195, !DIExpression(), !210)
  %call3 = call ptr @calloc(i32 noundef 1, i32 noundef 907240) #6, !dbg !211
  store ptr %call3, ptr %esk, align 4, !dbg !210
    #dbg_declare(ptr %sig, !212, !DIExpression(), !213)
  %7 = load ptr, ptr %p.addr, align 4, !dbg !214
  %sig_bytes4 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %7, i32 0, i32 16, !dbg !215
  %8 = load i32, ptr %sig_bytes4, align 4, !dbg !215
  %9 = load i32, ptr %msglen, align 4, !dbg !216
  %add5 = add i32 %8, %9, !dbg !217
  %call6 = call ptr @calloc(i32 noundef %add5, i32 noundef 1) #6, !dbg !218
  store ptr %call6, ptr %sig, align 4, !dbg !213
    #dbg_declare(ptr %msg, !219, !DIExpression(), !223)
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %msg, ptr align 1 @__const.example_mayo.msg, i32 32, i1 false), !dbg !223
    #dbg_declare(ptr %msg2, !224, !DIExpression(), !225)
  call void @llvm.memset.p0.i32(ptr align 1 %msg2, i8 0, i32 32, i1 false), !dbg !225
  %10 = load ptr, ptr %p.addr, align 4, !dbg !226
  %name = getelementptr inbounds nuw %struct.mayo_params_t, ptr %10, i32 0, i32 22, !dbg !227
  %11 = load ptr, ptr %name, align 4, !dbg !227
  %call7 = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %11) #5, !dbg !228
  %call8 = call i32 (ptr, ...) @printf(ptr noundef @.str.1) #5, !dbg !229
    #dbg_declare(ptr %res, !230, !DIExpression(), !231)
  %12 = load ptr, ptr %p.addr, align 4, !dbg !232
  %13 = load ptr, ptr %pk, align 4, !dbg !233
  %14 = load ptr, ptr %sk, align 4, !dbg !234
  %call9 = call i32 @mayo_keypair(ptr noundef %12, ptr noundef %13, ptr noundef %14) #5, !dbg !235
  store i32 %call9, ptr %res, align 4, !dbg !231
  %15 = load i32, ptr %res, align 4, !dbg !236
  %cmp = icmp ne i32 %15, 0, !dbg !238
  br i1 %cmp, label %if.then, label %if.else, !dbg !238

if.then:                                          ; preds = %entry
  %call10 = call i32 (ptr, ...) @printf(ptr noundef @.str.2) #5, !dbg !239
  store i32 -1, ptr %res, align 4, !dbg !241
  br label %err, !dbg !242

if.else:                                          ; preds = %entry
  %call11 = call i32 (ptr, ...) @printf(ptr noundef @.str.3) #5, !dbg !243
  br label %if.end

if.end:                                           ; preds = %if.else
  %call12 = call i32 (ptr, ...) @printf(ptr noundef @.str.4) #5, !dbg !245
  %16 = load ptr, ptr %p.addr, align 4, !dbg !246
  %17 = load ptr, ptr %sk, align 4, !dbg !247
  %18 = load ptr, ptr %esk, align 4, !dbg !248
  %call13 = call i32 @mayo_expand_sk(ptr noundef %16, ptr noundef %17, ptr noundef %18) #5, !dbg !249
  store i32 %call13, ptr %res, align 4, !dbg !250
  %19 = load i32, ptr %res, align 4, !dbg !251
  %cmp14 = icmp ne i32 %19, 0, !dbg !253
  br i1 %cmp14, label %if.then15, label %if.else17, !dbg !253

if.then15:                                        ; preds = %if.end
  %call16 = call i32 (ptr, ...) @printf(ptr noundef @.str.2) #5, !dbg !254
  store i32 -1, ptr %res, align 4, !dbg !256
  br label %err, !dbg !257

if.else17:                                        ; preds = %if.end
  %call18 = call i32 (ptr, ...) @printf(ptr noundef @.str.3) #5, !dbg !258
  br label %if.end19

if.end19:                                         ; preds = %if.else17
  %call20 = call i32 (ptr, ...) @printf(ptr noundef @.str.5) #5, !dbg !260
  %20 = load ptr, ptr %p.addr, align 4, !dbg !261
  %21 = load ptr, ptr %pk, align 4, !dbg !262
  %22 = load ptr, ptr %epk, align 4, !dbg !263
  %call21 = call i32 @mayo_expand_pk(ptr noundef %20, ptr noundef %21, ptr noundef %22) #5, !dbg !264
  store i32 %call21, ptr %res, align 4, !dbg !265
  %23 = load i32, ptr %res, align 4, !dbg !266
  %cmp22 = icmp ne i32 %23, 0, !dbg !268
  br i1 %cmp22, label %if.then23, label %if.else25, !dbg !268

if.then23:                                        ; preds = %if.end19
  %call24 = call i32 (ptr, ...) @printf(ptr noundef @.str.2) #5, !dbg !269
  store i32 -1, ptr %res, align 4, !dbg !271
  br label %err, !dbg !272

if.else25:                                        ; preds = %if.end19
  %call26 = call i32 (ptr, ...) @printf(ptr noundef @.str.3) #5, !dbg !273
  br label %if.end27

if.end27:                                         ; preds = %if.else25
  %call28 = call i32 (ptr, ...) @printf(ptr noundef @.str.6) #5, !dbg !275
  %24 = load ptr, ptr %p.addr, align 4, !dbg !276
  %25 = load ptr, ptr %sig, align 4, !dbg !277
  %arraydecay = getelementptr inbounds [32 x i8], ptr %msg, i32 0, i32 0, !dbg !278
  %26 = load i32, ptr %msglen, align 4, !dbg !279
  %27 = load ptr, ptr %sk, align 4, !dbg !280
  %call29 = call i32 @mayo_sign(ptr noundef %24, ptr noundef %25, ptr noundef %smlen, ptr noundef %arraydecay, i32 noundef %26, ptr noundef %27) #5, !dbg !281
  store i32 %call29, ptr %res, align 4, !dbg !282
  %28 = load i32, ptr %res, align 4, !dbg !283
  %cmp30 = icmp ne i32 %28, 0, !dbg !285
  br i1 %cmp30, label %if.then31, label %if.else33, !dbg !285

if.then31:                                        ; preds = %if.end27
  %call32 = call i32 (ptr, ...) @printf(ptr noundef @.str.2) #5, !dbg !286
  store i32 -1, ptr %res, align 4, !dbg !288
  br label %err, !dbg !289

if.else33:                                        ; preds = %if.end27
  %call34 = call i32 (ptr, ...) @printf(ptr noundef @.str.3) #5, !dbg !290
  br label %if.end35

if.end35:                                         ; preds = %if.else33
  %call36 = call i32 (ptr, ...) @printf(ptr noundef @.str.7) #5, !dbg !292
  %29 = load ptr, ptr %p.addr, align 4, !dbg !293
  %arraydecay37 = getelementptr inbounds [32 x i8], ptr %msg2, i32 0, i32 0, !dbg !294
  %30 = load ptr, ptr %sig, align 4, !dbg !295
  %31 = load i32, ptr %smlen, align 4, !dbg !296
  %32 = load ptr, ptr %pk, align 4, !dbg !297
  %call38 = call i32 @mayo_open(ptr noundef %29, ptr noundef %arraydecay37, ptr noundef %msglen, ptr noundef %30, i32 noundef %31, ptr noundef %32) #5, !dbg !298
  store i32 %call38, ptr %res, align 4, !dbg !299
  %33 = load i32, ptr %res, align 4, !dbg !300
  %cmp39 = icmp ne i32 %33, 0, !dbg !302
  br i1 %cmp39, label %if.then43, label %lor.lhs.false, !dbg !303

lor.lhs.false:                                    ; preds = %if.end35
  %arraydecay40 = getelementptr inbounds [32 x i8], ptr %msg, i32 0, i32 0, !dbg !304
  %arraydecay41 = getelementptr inbounds [32 x i8], ptr %msg2, i32 0, i32 0, !dbg !305
  %34 = load i32, ptr %msglen, align 4, !dbg !306
  %call42 = call i32 @memcmp(ptr noundef %arraydecay40, ptr noundef %arraydecay41, i32 noundef %34) #5, !dbg !307
  %tobool = icmp ne i32 %call42, 0, !dbg !307
  br i1 %tobool, label %if.then43, label %if.else45, !dbg !303

if.then43:                                        ; preds = %lor.lhs.false, %if.end35
  %call44 = call i32 (ptr, ...) @printf(ptr noundef @.str.2) #5, !dbg !308
  store i32 -1, ptr %res, align 4, !dbg !310
  br label %err, !dbg !311

if.else45:                                        ; preds = %lor.lhs.false
  store i32 0, ptr %res, align 4, !dbg !312
  %call46 = call i32 (ptr, ...) @printf(ptr noundef @.str.3) #5, !dbg !314
  br label %if.end47

if.end47:                                         ; preds = %if.else45
  %call48 = call i32 (ptr, ...) @printf(ptr noundef @.str.8) #5, !dbg !315
  %35 = load ptr, ptr %p.addr, align 4, !dbg !316
  %arraydecay49 = getelementptr inbounds [32 x i8], ptr %msg, i32 0, i32 0, !dbg !317
  %36 = load i32, ptr %msglen, align 4, !dbg !318
  %37 = load ptr, ptr %sig, align 4, !dbg !319
  %38 = load ptr, ptr %pk, align 4, !dbg !320
  %call50 = call i32 @mayo_verify(ptr noundef %35, ptr noundef %arraydecay49, i32 noundef %36, ptr noundef %37, ptr noundef %38) #5, !dbg !321
  store i32 %call50, ptr %res, align 4, !dbg !322
  %39 = load i32, ptr %res, align 4, !dbg !323
  %cmp51 = icmp ne i32 %39, 0, !dbg !325
  br i1 %cmp51, label %if.then52, label %if.else54, !dbg !325

if.then52:                                        ; preds = %if.end47
  %call53 = call i32 (ptr, ...) @printf(ptr noundef @.str.2) #5, !dbg !326
  store i32 -1, ptr %res, align 4, !dbg !328
  br label %err, !dbg !329

if.else54:                                        ; preds = %if.end47
  store i32 0, ptr %res, align 4, !dbg !330
  %call55 = call i32 (ptr, ...) @printf(ptr noundef @.str.3) #5, !dbg !332
  br label %if.end56

if.end56:                                         ; preds = %if.else54
  br label %err, !dbg !333

err:                                              ; preds = %if.end56, %if.then52, %if.then43, %if.then31, %if.then23, %if.then15, %if.then
    #dbg_label(!334, !335)
  %40 = load ptr, ptr %pk, align 4, !dbg !336
  call void @free(ptr noundef %40) #5, !dbg !337
  %41 = load ptr, ptr %epk, align 4, !dbg !338
  call void @free(ptr noundef %41) #5, !dbg !339
  %42 = load ptr, ptr %sk, align 4, !dbg !340
  %43 = load ptr, ptr %p.addr, align 4, !dbg !341
  %csk_bytes57 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %43, i32 0, i32 14, !dbg !342
  %44 = load i32, ptr %csk_bytes57, align 4, !dbg !342
  call void @mayo_secure_free(ptr noundef %42, i32 noundef %44) #5, !dbg !343
  %45 = load ptr, ptr %esk, align 4, !dbg !344
  call void @mayo_secure_free(ptr noundef %45, i32 noundef 907240) #5, !dbg !345
  %46 = load ptr, ptr %sig, align 4, !dbg !346
  call void @free(ptr noundef %46) #5, !dbg !347
  %47 = load i32, ptr %res, align 4, !dbg !348
  ret i32 %47, !dbg !349
}

; Function Attrs: allocsize(0,1)
declare dso_local ptr @calloc(i32 noundef, i32 noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i32(ptr writeonly captures(none), i8, i32, i1 immarg) #3

declare dso_local i32 @printf(ptr noundef, ...) #4

declare dso_local i32 @memcmp(ptr noundef, ptr noundef, i32 noundef) #4

declare dso_local void @free(ptr noundef) #4

declare dso_local void @mayo_secure_free(ptr noundef, i32 noundef) #4

; Function Attrs: noinline nounwind optnone
define dso_local i32 @mayo_keypair(ptr noundef %p, ptr noundef %pk, ptr noundef %sk) #0 !dbg !350 {
entry:
  %p.addr = alloca ptr, align 4
  %pk.addr = alloca ptr, align 4
  %sk.addr = alloca ptr, align 4
  %ret = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 4
    #dbg_declare(ptr %p.addr, !381, !DIExpression(), !382)
  store ptr %pk, ptr %pk.addr, align 4
    #dbg_declare(ptr %pk.addr, !383, !DIExpression(), !384)
  store ptr %sk, ptr %sk.addr, align 4
    #dbg_declare(ptr %sk.addr, !385, !DIExpression(), !386)
    #dbg_declare(ptr %ret, !387, !DIExpression(), !388)
  store i32 0, ptr %ret, align 4, !dbg !388
  %0 = load ptr, ptr %p.addr, align 4, !dbg !389
  %1 = load ptr, ptr %pk.addr, align 4, !dbg !390
  %2 = load ptr, ptr %sk.addr, align 4, !dbg !391
  %call = call i32 @mayo_keypair_compact(ptr noundef %0, ptr noundef %1, ptr noundef %2) #5, !dbg !392
  store i32 %call, ptr %ret, align 4, !dbg !393
  %3 = load i32, ptr %ret, align 4, !dbg !394
  %cmp = icmp ne i32 %3, 0, !dbg !396
  br i1 %cmp, label %if.then, label %if.end, !dbg !396

if.then:                                          ; preds = %entry
  br label %err, !dbg !397

if.end:                                           ; preds = %entry
  br label %err, !dbg !399

err:                                              ; preds = %if.end, %if.then
    #dbg_label(!400, !401)
  %4 = load i32, ptr %ret, align 4, !dbg !402
  ret i32 %4, !dbg !403
}

; Function Attrs: noinline nounwind optnone
define dso_local i32 @mayo_keypair_compact(ptr noundef %p, ptr noundef %cpk, ptr noundef %csk) #0 !dbg !404 {
entry:
  %p.addr = alloca ptr, align 4
  %cpk.addr = alloca ptr, align 4
  %csk.addr = alloca ptr, align 4
  %ret = alloca i32, align 4
  %seed_sk = alloca ptr, align 4
  %S = alloca [868 x i8], align 1
  %P = alloca [113103 x i64], align 8
  %P3 = alloca [2601 x i64], align 8
  %seed_pk = alloca ptr, align 4
  %O = alloca [2414 x i8], align 1
  %m_vec_limbs = alloca i32, align 4
  %param_m = alloca i32, align 4
  %param_v = alloca i32, align 4
  %param_o = alloca i32, align 4
  %param_O_bytes = alloca i32, align 4
  %param_P1_limbs = alloca i32, align 4
  %param_P3_limbs = alloca i32, align 4
  %param_pk_seed_bytes = alloca i32, align 4
  %param_sk_seed_bytes = alloca i32, align 4
  %P1 = alloca ptr, align 4
  %P2 = alloca ptr, align 4
  %P3_upper = alloca [1377 x i64], align 8
  store ptr %p, ptr %p.addr, align 4
    #dbg_declare(ptr %p.addr, !405, !DIExpression(), !406)
  store ptr %cpk, ptr %cpk.addr, align 4
    #dbg_declare(ptr %cpk.addr, !407, !DIExpression(), !408)
  store ptr %csk, ptr %csk.addr, align 4
    #dbg_declare(ptr %csk.addr, !409, !DIExpression(), !410)
    #dbg_declare(ptr %ret, !411, !DIExpression(), !412)
  store i32 0, ptr %ret, align 4, !dbg !412
    #dbg_declare(ptr %seed_sk, !413, !DIExpression(), !414)
  %0 = load ptr, ptr %csk.addr, align 4, !dbg !415
  store ptr %0, ptr %seed_sk, align 4, !dbg !414
    #dbg_declare(ptr %S, !416, !DIExpression(), !420)
    #dbg_declare(ptr %P, !421, !DIExpression(), !422)
    #dbg_declare(ptr %P3, !423, !DIExpression(), !427)
  call void @llvm.memset.p0.i32(ptr align 8 %P3, i8 0, i32 20808, i1 false), !dbg !427
    #dbg_declare(ptr %seed_pk, !428, !DIExpression(), !429)
    #dbg_declare(ptr %O, !430, !DIExpression(), !432)
    #dbg_declare(ptr %m_vec_limbs, !433, !DIExpression(), !435)
  %1 = load ptr, ptr %p.addr, align 4, !dbg !436
  %m_vec_limbs1 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %1, i32 0, i32 21, !dbg !437
  %2 = load i32, ptr %m_vec_limbs1, align 4, !dbg !437
  store i32 %2, ptr %m_vec_limbs, align 4, !dbg !435
    #dbg_declare(ptr %param_m, !438, !DIExpression(), !439)
  %3 = load ptr, ptr %p.addr, align 4, !dbg !440
  %m = getelementptr inbounds nuw %struct.mayo_params_t, ptr %3, i32 0, i32 0, !dbg !441
  %4 = load i32, ptr %m, align 4, !dbg !441
  store i32 %4, ptr %param_m, align 4, !dbg !439
    #dbg_declare(ptr %param_v, !442, !DIExpression(), !443)
  %5 = load ptr, ptr %p.addr, align 4, !dbg !444
  %n = getelementptr inbounds nuw %struct.mayo_params_t, ptr %5, i32 0, i32 1, !dbg !445
  %6 = load i32, ptr %n, align 4, !dbg !445
  %7 = load ptr, ptr %p.addr, align 4, !dbg !444
  %o = getelementptr inbounds nuw %struct.mayo_params_t, ptr %7, i32 0, i32 2, !dbg !445
  %8 = load i32, ptr %o, align 4, !dbg !445
  %sub = sub nsw i32 %6, %8, !dbg !445
  store i32 %sub, ptr %param_v, align 4, !dbg !443
    #dbg_declare(ptr %param_o, !446, !DIExpression(), !447)
  %9 = load ptr, ptr %p.addr, align 4, !dbg !448
  %o2 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %9, i32 0, i32 2, !dbg !449
  %10 = load i32, ptr %o2, align 4, !dbg !449
  store i32 %10, ptr %param_o, align 4, !dbg !447
    #dbg_declare(ptr %param_O_bytes, !450, !DIExpression(), !451)
  %11 = load ptr, ptr %p.addr, align 4, !dbg !452
  %O_bytes = getelementptr inbounds nuw %struct.mayo_params_t, ptr %11, i32 0, i32 7, !dbg !453
  %12 = load i32, ptr %O_bytes, align 4, !dbg !453
  store i32 %12, ptr %param_O_bytes, align 4, !dbg !451
    #dbg_declare(ptr %param_P1_limbs, !454, !DIExpression(), !455)
  %13 = load ptr, ptr %p.addr, align 4, !dbg !456
  %n3 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %13, i32 0, i32 1, !dbg !457
  %14 = load i32, ptr %n3, align 4, !dbg !457
  %15 = load ptr, ptr %p.addr, align 4, !dbg !456
  %o4 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %15, i32 0, i32 2, !dbg !457
  %16 = load i32, ptr %o4, align 4, !dbg !457
  %sub5 = sub nsw i32 %14, %16, !dbg !457
  %17 = load ptr, ptr %p.addr, align 4, !dbg !456
  %n6 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %17, i32 0, i32 1, !dbg !457
  %18 = load i32, ptr %n6, align 4, !dbg !457
  %19 = load ptr, ptr %p.addr, align 4, !dbg !456
  %o7 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %19, i32 0, i32 2, !dbg !457
  %20 = load i32, ptr %o7, align 4, !dbg !457
  %sub8 = sub nsw i32 %18, %20, !dbg !457
  %add = add nsw i32 %sub8, 1, !dbg !457
  %mul = mul nsw i32 %sub5, %add, !dbg !457
  %div = sdiv i32 %mul, 2, !dbg !457
  %21 = load ptr, ptr %p.addr, align 4, !dbg !456
  %m_vec_limbs9 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %21, i32 0, i32 21, !dbg !457
  %22 = load i32, ptr %m_vec_limbs9, align 4, !dbg !457
  %mul10 = mul nsw i32 %div, %22, !dbg !457
  store i32 %mul10, ptr %param_P1_limbs, align 4, !dbg !455
    #dbg_declare(ptr %param_P3_limbs, !458, !DIExpression(), !459)
  %23 = load ptr, ptr %p.addr, align 4, !dbg !460
  %o11 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %23, i32 0, i32 2, !dbg !461
  %24 = load i32, ptr %o11, align 4, !dbg !461
  %25 = load ptr, ptr %p.addr, align 4, !dbg !460
  %o12 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %25, i32 0, i32 2, !dbg !461
  %26 = load i32, ptr %o12, align 4, !dbg !461
  %add13 = add nsw i32 %26, 1, !dbg !461
  %mul14 = mul nsw i32 %24, %add13, !dbg !461
  %div15 = sdiv i32 %mul14, 2, !dbg !461
  %27 = load ptr, ptr %p.addr, align 4, !dbg !460
  %m_vec_limbs16 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %27, i32 0, i32 21, !dbg !461
  %28 = load i32, ptr %m_vec_limbs16, align 4, !dbg !461
  %mul17 = mul nsw i32 %div15, %28, !dbg !461
  store i32 %mul17, ptr %param_P3_limbs, align 4, !dbg !459
    #dbg_declare(ptr %param_pk_seed_bytes, !462, !DIExpression(), !463)
  %29 = load ptr, ptr %p.addr, align 4, !dbg !464
  %pk_seed_bytes = getelementptr inbounds nuw %struct.mayo_params_t, ptr %29, i32 0, i32 20, !dbg !465
  %30 = load i32, ptr %pk_seed_bytes, align 4, !dbg !465
  store i32 %30, ptr %param_pk_seed_bytes, align 4, !dbg !463
    #dbg_declare(ptr %param_sk_seed_bytes, !466, !DIExpression(), !467)
  %31 = load ptr, ptr %p.addr, align 4, !dbg !468
  %sk_seed_bytes = getelementptr inbounds nuw %struct.mayo_params_t, ptr %31, i32 0, i32 18, !dbg !469
  %32 = load i32, ptr %sk_seed_bytes, align 4, !dbg !469
  store i32 %32, ptr %param_sk_seed_bytes, align 4, !dbg !467
    #dbg_declare(ptr %P1, !470, !DIExpression(), !471)
  %arraydecay = getelementptr inbounds [113103 x i64], ptr %P, i32 0, i32 0, !dbg !472
  store ptr %arraydecay, ptr %P1, align 4, !dbg !471
    #dbg_declare(ptr %P2, !473, !DIExpression(), !474)
  %arraydecay18 = getelementptr inbounds [113103 x i64], ptr %P, i32 0, i32 0, !dbg !475
  %33 = load i32, ptr %param_P1_limbs, align 4, !dbg !476
  %add.ptr = getelementptr inbounds i64, ptr %arraydecay18, i32 %33, !dbg !477
  store ptr %add.ptr, ptr %P2, align 4, !dbg !474
  %34 = load ptr, ptr %seed_sk, align 4, !dbg !478
  %35 = load i32, ptr %param_sk_seed_bytes, align 4, !dbg !480
  %call = call i32 @randombytes(ptr noundef %34, i32 noundef %35) #5, !dbg !481
  %cmp = icmp ne i32 %call, 0, !dbg !482
  br i1 %cmp, label %if.then, label %if.end, !dbg !482

if.then:                                          ; preds = %entry
  store i32 1, ptr %ret, align 4, !dbg !483
  br label %err, !dbg !485

if.end:                                           ; preds = %entry
  %arraydecay19 = getelementptr inbounds [868 x i8], ptr %S, i32 0, i32 0, !dbg !486
  %36 = load i32, ptr %param_pk_seed_bytes, align 4, !dbg !487
  %37 = load i32, ptr %param_O_bytes, align 4, !dbg !488
  %add20 = add nsw i32 %36, %37, !dbg !489
  %38 = load ptr, ptr %seed_sk, align 4, !dbg !490
  %39 = load i32, ptr %param_sk_seed_bytes, align 4, !dbg !491
  %call21 = call i32 @shake256(ptr noundef %arraydecay19, i32 noundef %add20, ptr noundef %38, i32 noundef %39) #5, !dbg !492
  %arraydecay22 = getelementptr inbounds [868 x i8], ptr %S, i32 0, i32 0, !dbg !493
  store ptr %arraydecay22, ptr %seed_pk, align 4, !dbg !494
  %arraydecay23 = getelementptr inbounds [868 x i8], ptr %S, i32 0, i32 0, !dbg !495
  %40 = load i32, ptr %param_pk_seed_bytes, align 4, !dbg !496
  %add.ptr24 = getelementptr inbounds i8, ptr %arraydecay23, i32 %40, !dbg !497
  %arraydecay25 = getelementptr inbounds [2414 x i8], ptr %O, i32 0, i32 0, !dbg !498
  %41 = load i32, ptr %param_v, align 4, !dbg !499
  %42 = load i32, ptr %param_o, align 4, !dbg !500
  %mul26 = mul nsw i32 %41, %42, !dbg !501
  call void @decode(ptr noundef %add.ptr24, ptr noundef %arraydecay25, i32 noundef %mul26) #5, !dbg !502
  %43 = load ptr, ptr %p.addr, align 4, !dbg !503
  %arraydecay27 = getelementptr inbounds [113103 x i64], ptr %P, i32 0, i32 0, !dbg !504
  %44 = load ptr, ptr %seed_pk, align 4, !dbg !505
  call void @expand_P1_P2(ptr noundef %43, ptr noundef %arraydecay27, ptr noundef %44) #5, !dbg !506
  %45 = load ptr, ptr %p.addr, align 4, !dbg !507
  %46 = load ptr, ptr %P1, align 4, !dbg !508
  %47 = load ptr, ptr %P2, align 4, !dbg !509
  %arraydecay28 = getelementptr inbounds [2414 x i8], ptr %O, i32 0, i32 0, !dbg !510
  %arraydecay29 = getelementptr inbounds [2601 x i64], ptr %P3, i32 0, i32 0, !dbg !511
  call void @compute_P3(ptr noundef %45, ptr noundef %46, ptr noundef %47, ptr noundef %arraydecay28, ptr noundef %arraydecay29) #5, !dbg !512
  %48 = load ptr, ptr %cpk.addr, align 4, !dbg !513
  %49 = load ptr, ptr %seed_pk, align 4, !dbg !514
  %50 = load i32, ptr %param_pk_seed_bytes, align 4, !dbg !515
  %call30 = call ptr @memcpy(ptr noundef %48, ptr noundef %49, i32 noundef %50) #5, !dbg !516
    #dbg_declare(ptr %P3_upper, !517, !DIExpression(), !521)
  %51 = load ptr, ptr %p.addr, align 4, !dbg !522
  %arraydecay31 = getelementptr inbounds [2601 x i64], ptr %P3, i32 0, i32 0, !dbg !523
  %arraydecay32 = getelementptr inbounds [1377 x i64], ptr %P3_upper, i32 0, i32 0, !dbg !524
  %52 = load i32, ptr %param_o, align 4, !dbg !525
  call void @m_upper(ptr noundef %51, ptr noundef %arraydecay31, ptr noundef %arraydecay32, i32 noundef %52) #5, !dbg !526
  %arraydecay33 = getelementptr inbounds [1377 x i64], ptr %P3_upper, i32 0, i32 0, !dbg !527
  %53 = load ptr, ptr %cpk.addr, align 4, !dbg !528
  %54 = load i32, ptr %param_pk_seed_bytes, align 4, !dbg !529
  %add.ptr34 = getelementptr inbounds i8, ptr %53, i32 %54, !dbg !530
  %55 = load i32, ptr %param_P3_limbs, align 4, !dbg !531
  %56 = load i32, ptr %m_vec_limbs, align 4, !dbg !532
  %div35 = sdiv i32 %55, %56, !dbg !533
  %57 = load i32, ptr %param_m, align 4, !dbg !534
  call void @pack_m_vecs(ptr noundef %arraydecay33, ptr noundef %add.ptr34, i32 noundef %div35, i32 noundef %57) #5, !dbg !535
  br label %err, !dbg !535

err:                                              ; preds = %if.end, %if.then
    #dbg_label(!536, !537)
  %arraydecay36 = getelementptr inbounds [2414 x i8], ptr %O, i32 0, i32 0, !dbg !538
  call void @mayo_secure_clear(ptr noundef %arraydecay36, i32 noundef 2414) #5, !dbg !539
  %58 = load ptr, ptr %P2, align 4, !dbg !540
  %59 = load ptr, ptr %p.addr, align 4, !dbg !541
  %n37 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %59, i32 0, i32 1, !dbg !542
  %60 = load i32, ptr %n37, align 4, !dbg !542
  %61 = load ptr, ptr %p.addr, align 4, !dbg !541
  %o38 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %61, i32 0, i32 2, !dbg !542
  %62 = load i32, ptr %o38, align 4, !dbg !542
  %sub39 = sub nsw i32 %60, %62, !dbg !542
  %63 = load ptr, ptr %p.addr, align 4, !dbg !541
  %o40 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %63, i32 0, i32 2, !dbg !542
  %64 = load i32, ptr %o40, align 4, !dbg !542
  %mul41 = mul nsw i32 %sub39, %64, !dbg !542
  %65 = load ptr, ptr %p.addr, align 4, !dbg !541
  %m_vec_limbs42 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %65, i32 0, i32 21, !dbg !542
  %66 = load i32, ptr %m_vec_limbs42, align 4, !dbg !542
  %mul43 = mul nsw i32 %mul41, %66, !dbg !542
  %mul44 = mul i32 %mul43, 8, !dbg !543
  call void @mayo_secure_clear(ptr noundef %58, i32 noundef %mul44) #5, !dbg !544
  %arraydecay45 = getelementptr inbounds [2601 x i64], ptr %P3, i32 0, i32 0, !dbg !545
  call void @mayo_secure_clear(ptr noundef %arraydecay45, i32 noundef 20808) #5, !dbg !546
  %67 = load i32, ptr %ret, align 4, !dbg !547
  ret i32 %67, !dbg !548
}

declare dso_local i32 @randombytes(ptr noundef, i32 noundef) #4

declare dso_local i32 @shake256(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #4

; Function Attrs: noinline nounwind optnone
define internal void @decode(ptr noundef %m, ptr noundef %mdec, i32 noundef %mdeclen) #0 !dbg !549 {
entry:
  %m.addr = alloca ptr, align 4
  %mdec.addr = alloca ptr, align 4
  %mdeclen.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %m, ptr %m.addr, align 4
    #dbg_declare(ptr %m.addr, !552, !DIExpression(), !553)
  store ptr %mdec, ptr %mdec.addr, align 4
    #dbg_declare(ptr %mdec.addr, !554, !DIExpression(), !555)
  store i32 %mdeclen, ptr %mdeclen.addr, align 4
    #dbg_declare(ptr %mdeclen.addr, !556, !DIExpression(), !557)
    #dbg_declare(ptr %i, !558, !DIExpression(), !559)
  store i32 0, ptr %i, align 4, !dbg !560
  br label %for.cond, !dbg !562

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !563
  %1 = load i32, ptr %mdeclen.addr, align 4, !dbg !565
  %div = sdiv i32 %1, 2, !dbg !566
  %cmp = icmp slt i32 %0, %div, !dbg !567
  br i1 %cmp, label %for.body, label %for.end, !dbg !568

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %m.addr, align 4, !dbg !569
  %3 = load i32, ptr %i, align 4, !dbg !571
  %arrayidx = getelementptr inbounds i8, ptr %2, i32 %3, !dbg !569
  %4 = load i8, ptr %arrayidx, align 1, !dbg !569
  %conv = zext i8 %4 to i32, !dbg !569
  %and = and i32 %conv, 15, !dbg !572
  %conv1 = trunc i32 %and to i8, !dbg !569
  %5 = load ptr, ptr %mdec.addr, align 4, !dbg !573
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %5, i32 1, !dbg !573
  store ptr %incdec.ptr, ptr %mdec.addr, align 4, !dbg !573
  store i8 %conv1, ptr %5, align 1, !dbg !574
  %6 = load ptr, ptr %m.addr, align 4, !dbg !575
  %7 = load i32, ptr %i, align 4, !dbg !576
  %arrayidx2 = getelementptr inbounds i8, ptr %6, i32 %7, !dbg !575
  %8 = load i8, ptr %arrayidx2, align 1, !dbg !575
  %conv3 = zext i8 %8 to i32, !dbg !575
  %shr = ashr i32 %conv3, 4, !dbg !577
  %conv4 = trunc i32 %shr to i8, !dbg !575
  %9 = load ptr, ptr %mdec.addr, align 4, !dbg !578
  %incdec.ptr5 = getelementptr inbounds nuw i8, ptr %9, i32 1, !dbg !578
  store ptr %incdec.ptr5, ptr %mdec.addr, align 4, !dbg !578
  store i8 %conv4, ptr %9, align 1, !dbg !579
  br label %for.inc, !dbg !580

for.inc:                                          ; preds = %for.body
  %10 = load i32, ptr %i, align 4, !dbg !581
  %inc = add nsw i32 %10, 1, !dbg !581
  store i32 %inc, ptr %i, align 4, !dbg !581
  br label %for.cond, !dbg !582, !llvm.loop !583

for.end:                                          ; preds = %for.cond
  %11 = load i32, ptr %mdeclen.addr, align 4, !dbg !585
  %rem = srem i32 %11, 2, !dbg !587
  %cmp6 = icmp eq i32 %rem, 1, !dbg !588
  br i1 %cmp6, label %if.then, label %if.end, !dbg !588

if.then:                                          ; preds = %for.end
  %12 = load ptr, ptr %m.addr, align 4, !dbg !589
  %13 = load i32, ptr %i, align 4, !dbg !591
  %arrayidx8 = getelementptr inbounds i8, ptr %12, i32 %13, !dbg !589
  %14 = load i8, ptr %arrayidx8, align 1, !dbg !589
  %conv9 = zext i8 %14 to i32, !dbg !589
  %and10 = and i32 %conv9, 15, !dbg !592
  %conv11 = trunc i32 %and10 to i8, !dbg !589
  %15 = load ptr, ptr %mdec.addr, align 4, !dbg !593
  %incdec.ptr12 = getelementptr inbounds nuw i8, ptr %15, i32 1, !dbg !593
  store ptr %incdec.ptr12, ptr %mdec.addr, align 4, !dbg !593
  store i8 %conv11, ptr %15, align 1, !dbg !594
  br label %if.end, !dbg !595

if.end:                                           ; preds = %if.then, %for.end
  ret void, !dbg !596
}

; Function Attrs: noinline nounwind optnone
define internal void @expand_P1_P2(ptr noundef %p, ptr noundef %P, ptr noundef %seed_pk) #0 !dbg !597 {
entry:
  %p.addr = alloca ptr, align 4
  %P.addr = alloca ptr, align 4
  %seed_pk.addr = alloca ptr, align 4
  store ptr %p, ptr %p.addr, align 4
    #dbg_declare(ptr %p.addr, !600, !DIExpression(), !601)
  store ptr %P, ptr %P.addr, align 4
    #dbg_declare(ptr %P.addr, !602, !DIExpression(), !603)
  store ptr %seed_pk, ptr %seed_pk.addr, align 4
    #dbg_declare(ptr %seed_pk.addr, !604, !DIExpression(), !605)
  %0 = load ptr, ptr %P.addr, align 4, !dbg !606
  %1 = load ptr, ptr %p.addr, align 4, !dbg !607
  %P1_bytes = getelementptr inbounds nuw %struct.mayo_params_t, ptr %1, i32 0, i32 11, !dbg !608
  %2 = load i32, ptr %P1_bytes, align 4, !dbg !608
  %3 = load ptr, ptr %p.addr, align 4, !dbg !609
  %P2_bytes = getelementptr inbounds nuw %struct.mayo_params_t, ptr %3, i32 0, i32 12, !dbg !610
  %4 = load i32, ptr %P2_bytes, align 4, !dbg !610
  %add = add nsw i32 %2, %4, !dbg !611
  %5 = load ptr, ptr %seed_pk.addr, align 4, !dbg !612
  %6 = load ptr, ptr %p.addr, align 4, !dbg !613
  %pk_seed_bytes = getelementptr inbounds nuw %struct.mayo_params_t, ptr %6, i32 0, i32 20, !dbg !614
  %7 = load i32, ptr %pk_seed_bytes, align 4, !dbg !614
  %call = call i32 @AES_128_CTR(ptr noundef %0, i32 noundef %add, ptr noundef %5, i32 noundef %7) #5, !dbg !615
  %8 = load ptr, ptr %P.addr, align 4, !dbg !616
  %9 = load ptr, ptr %P.addr, align 4, !dbg !617
  %10 = load ptr, ptr %p.addr, align 4, !dbg !618
  %n = getelementptr inbounds nuw %struct.mayo_params_t, ptr %10, i32 0, i32 1, !dbg !619
  %11 = load i32, ptr %n, align 4, !dbg !619
  %12 = load ptr, ptr %p.addr, align 4, !dbg !618
  %o = getelementptr inbounds nuw %struct.mayo_params_t, ptr %12, i32 0, i32 2, !dbg !619
  %13 = load i32, ptr %o, align 4, !dbg !619
  %sub = sub nsw i32 %11, %13, !dbg !619
  %14 = load ptr, ptr %p.addr, align 4, !dbg !618
  %n1 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %14, i32 0, i32 1, !dbg !619
  %15 = load i32, ptr %n1, align 4, !dbg !619
  %16 = load ptr, ptr %p.addr, align 4, !dbg !618
  %o2 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %16, i32 0, i32 2, !dbg !619
  %17 = load i32, ptr %o2, align 4, !dbg !619
  %sub3 = sub nsw i32 %15, %17, !dbg !619
  %add4 = add nsw i32 %sub3, 1, !dbg !619
  %mul = mul nsw i32 %sub, %add4, !dbg !619
  %div = sdiv i32 %mul, 2, !dbg !619
  %18 = load ptr, ptr %p.addr, align 4, !dbg !618
  %m_vec_limbs = getelementptr inbounds nuw %struct.mayo_params_t, ptr %18, i32 0, i32 21, !dbg !619
  %19 = load i32, ptr %m_vec_limbs, align 4, !dbg !619
  %mul5 = mul nsw i32 %div, %19, !dbg !619
  %20 = load ptr, ptr %p.addr, align 4, !dbg !620
  %n6 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %20, i32 0, i32 1, !dbg !621
  %21 = load i32, ptr %n6, align 4, !dbg !621
  %22 = load ptr, ptr %p.addr, align 4, !dbg !620
  %o7 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %22, i32 0, i32 2, !dbg !621
  %23 = load i32, ptr %o7, align 4, !dbg !621
  %sub8 = sub nsw i32 %21, %23, !dbg !621
  %24 = load ptr, ptr %p.addr, align 4, !dbg !620
  %o9 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %24, i32 0, i32 2, !dbg !621
  %25 = load i32, ptr %o9, align 4, !dbg !621
  %mul10 = mul nsw i32 %sub8, %25, !dbg !621
  %26 = load ptr, ptr %p.addr, align 4, !dbg !620
  %m_vec_limbs11 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %26, i32 0, i32 21, !dbg !621
  %27 = load i32, ptr %m_vec_limbs11, align 4, !dbg !621
  %mul12 = mul nsw i32 %mul10, %27, !dbg !621
  %add13 = add nsw i32 %mul5, %mul12, !dbg !622
  %28 = load ptr, ptr %p.addr, align 4, !dbg !623
  %m_vec_limbs14 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %28, i32 0, i32 21, !dbg !624
  %29 = load i32, ptr %m_vec_limbs14, align 4, !dbg !624
  %div15 = sdiv i32 %add13, %29, !dbg !625
  %30 = load ptr, ptr %p.addr, align 4, !dbg !626
  %m = getelementptr inbounds nuw %struct.mayo_params_t, ptr %30, i32 0, i32 0, !dbg !627
  %31 = load i32, ptr %m, align 4, !dbg !627
  call void @unpack_m_vecs(ptr noundef %8, ptr noundef %9, i32 noundef %div15, i32 noundef %31) #5, !dbg !628
  ret void, !dbg !629
}

; Function Attrs: noinline nounwind optnone
define internal void @compute_P3(ptr noundef %p, ptr noundef %P1, ptr noundef %P2, ptr noundef %O, ptr noundef %P3) #0 !dbg !630 {
entry:
  %p.addr = alloca ptr, align 4
  %P1.addr = alloca ptr, align 4
  %P2.addr = alloca ptr, align 4
  %O.addr = alloca ptr, align 4
  %P3.addr = alloca ptr, align 4
  %m_vec_limbs = alloca i32, align 4
  %param_v = alloca i32, align 4
  %param_o = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 4
    #dbg_declare(ptr %p.addr, !635, !DIExpression(), !636)
  store ptr %P1, ptr %P1.addr, align 4
    #dbg_declare(ptr %P1.addr, !637, !DIExpression(), !638)
  store ptr %P2, ptr %P2.addr, align 4
    #dbg_declare(ptr %P2.addr, !639, !DIExpression(), !640)
  store ptr %O, ptr %O.addr, align 4
    #dbg_declare(ptr %O.addr, !641, !DIExpression(), !642)
  store ptr %P3, ptr %P3.addr, align 4
    #dbg_declare(ptr %P3.addr, !643, !DIExpression(), !644)
    #dbg_declare(ptr %m_vec_limbs, !645, !DIExpression(), !646)
  %0 = load ptr, ptr %p.addr, align 4, !dbg !647
  %m_vec_limbs1 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %0, i32 0, i32 21, !dbg !648
  %1 = load i32, ptr %m_vec_limbs1, align 4, !dbg !648
  store i32 %1, ptr %m_vec_limbs, align 4, !dbg !646
    #dbg_declare(ptr %param_v, !649, !DIExpression(), !650)
  %2 = load ptr, ptr %p.addr, align 4, !dbg !651
  %n = getelementptr inbounds nuw %struct.mayo_params_t, ptr %2, i32 0, i32 1, !dbg !652
  %3 = load i32, ptr %n, align 4, !dbg !652
  %4 = load ptr, ptr %p.addr, align 4, !dbg !651
  %o = getelementptr inbounds nuw %struct.mayo_params_t, ptr %4, i32 0, i32 2, !dbg !652
  %5 = load i32, ptr %o, align 4, !dbg !652
  %sub = sub nsw i32 %3, %5, !dbg !652
  store i32 %sub, ptr %param_v, align 4, !dbg !650
    #dbg_declare(ptr %param_o, !653, !DIExpression(), !654)
  %6 = load ptr, ptr %p.addr, align 4, !dbg !655
  %o2 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %6, i32 0, i32 2, !dbg !656
  %7 = load i32, ptr %o2, align 4, !dbg !656
  store i32 %7, ptr %param_o, align 4, !dbg !654
  %8 = load ptr, ptr %p.addr, align 4, !dbg !657
  %9 = load ptr, ptr %P1.addr, align 4, !dbg !658
  %10 = load ptr, ptr %O.addr, align 4, !dbg !659
  %11 = load ptr, ptr %P2.addr, align 4, !dbg !660
  call void @P1_times_O(ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11) #5, !dbg !661
  %12 = load i32, ptr %m_vec_limbs, align 4, !dbg !662
  %13 = load ptr, ptr %O.addr, align 4, !dbg !663
  %14 = load ptr, ptr %P2.addr, align 4, !dbg !664
  %15 = load ptr, ptr %P3.addr, align 4, !dbg !665
  %16 = load i32, ptr %param_v, align 4, !dbg !666
  %17 = load i32, ptr %param_o, align 4, !dbg !667
  %18 = load i32, ptr %param_o, align 4, !dbg !668
  call void @mul_add_mat_trans_x_m_mat(i32 noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef %15, i32 noundef %16, i32 noundef %17, i32 noundef %18) #5, !dbg !669
  ret void, !dbg !670
}

declare dso_local ptr @memcpy(ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: noinline nounwind optnone
define internal void @pack_m_vecs(ptr noundef %in, ptr noundef %out, i32 noundef %vecs, i32 noundef %m) #0 !dbg !671 {
entry:
  %in.addr = alloca ptr, align 4
  %out.addr = alloca ptr, align 4
  %vecs.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %m_vec_limbs = alloca i32, align 4
  %_in = alloca ptr, align 4
  %i = alloca i32, align 4
  store ptr %in, ptr %in.addr, align 4
    #dbg_declare(ptr %in.addr, !674, !DIExpression(), !675)
  store ptr %out, ptr %out.addr, align 4
    #dbg_declare(ptr %out.addr, !676, !DIExpression(), !677)
  store i32 %vecs, ptr %vecs.addr, align 4
    #dbg_declare(ptr %vecs.addr, !678, !DIExpression(), !679)
  store i32 %m, ptr %m.addr, align 4
    #dbg_declare(ptr %m.addr, !680, !DIExpression(), !681)
    #dbg_declare(ptr %m_vec_limbs, !682, !DIExpression(), !683)
  %0 = load i32, ptr %m.addr, align 4, !dbg !684
  %add = add nsw i32 %0, 15, !dbg !685
  %div = sdiv i32 %add, 16, !dbg !686
  store i32 %div, ptr %m_vec_limbs, align 4, !dbg !683
    #dbg_declare(ptr %_in, !687, !DIExpression(), !688)
  %1 = load ptr, ptr %in.addr, align 4, !dbg !689
  store ptr %1, ptr %_in, align 4, !dbg !688
    #dbg_declare(ptr %i, !690, !DIExpression(), !692)
  store i32 0, ptr %i, align 4, !dbg !692
  br label %for.cond, !dbg !693

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4, !dbg !694
  %3 = load i32, ptr %vecs.addr, align 4, !dbg !696
  %cmp = icmp slt i32 %2, %3, !dbg !697
  br i1 %cmp, label %for.body, label %for.end, !dbg !698

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %out.addr, align 4, !dbg !699
  %5 = load i32, ptr %i, align 4, !dbg !701
  %6 = load i32, ptr %m.addr, align 4, !dbg !702
  %mul = mul nsw i32 %5, %6, !dbg !703
  %div1 = sdiv i32 %mul, 2, !dbg !704
  %add.ptr = getelementptr inbounds i8, ptr %4, i32 %div1, !dbg !705
  %7 = load ptr, ptr %_in, align 4, !dbg !706
  %8 = load i32, ptr %i, align 4, !dbg !707
  %9 = load i32, ptr %m_vec_limbs, align 4, !dbg !708
  %mul2 = mul nsw i32 %8, %9, !dbg !709
  %mul3 = mul i32 %mul2, 8, !dbg !710
  %add.ptr4 = getelementptr inbounds nuw i8, ptr %7, i32 %mul3, !dbg !711
  %10 = load i32, ptr %m.addr, align 4, !dbg !712
  %div5 = sdiv i32 %10, 2, !dbg !713
  %call = call ptr @memmove(ptr noundef %add.ptr, ptr noundef %add.ptr4, i32 noundef %div5) #5, !dbg !714
  br label %for.inc, !dbg !715

for.inc:                                          ; preds = %for.body
  %11 = load i32, ptr %i, align 4, !dbg !716
  %inc = add nsw i32 %11, 1, !dbg !716
  store i32 %inc, ptr %i, align 4, !dbg !716
  br label %for.cond, !dbg !717, !llvm.loop !718

for.end:                                          ; preds = %for.cond
  ret void, !dbg !720
}

declare dso_local void @mayo_secure_clear(ptr noundef, i32 noundef) #4

declare dso_local ptr @memmove(ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: noinline nounwind optnone
define internal void @P1_times_O(ptr noundef %p, ptr noundef %P1, ptr noundef %O, ptr noundef %acc) #0 !dbg !721 {
entry:
  %p.addr = alloca ptr, align 4
  %P1.addr = alloca ptr, align 4
  %O.addr = alloca ptr, align 4
  %acc.addr = alloca ptr, align 4
  store ptr %p, ptr %p.addr, align 4
    #dbg_declare(ptr %p.addr, !724, !DIExpression(), !725)
  store ptr %P1, ptr %P1.addr, align 4
    #dbg_declare(ptr %P1.addr, !726, !DIExpression(), !727)
  store ptr %O, ptr %O.addr, align 4
    #dbg_declare(ptr %O.addr, !728, !DIExpression(), !729)
  store ptr %acc, ptr %acc.addr, align 4
    #dbg_declare(ptr %acc.addr, !730, !DIExpression(), !731)
  %0 = load ptr, ptr %p.addr, align 4, !dbg !732
  %m_vec_limbs = getelementptr inbounds nuw %struct.mayo_params_t, ptr %0, i32 0, i32 21, !dbg !733
  %1 = load i32, ptr %m_vec_limbs, align 4, !dbg !733
  %2 = load ptr, ptr %P1.addr, align 4, !dbg !734
  %3 = load ptr, ptr %O.addr, align 4, !dbg !735
  %4 = load ptr, ptr %acc.addr, align 4, !dbg !736
  %5 = load ptr, ptr %p.addr, align 4, !dbg !737
  %n = getelementptr inbounds nuw %struct.mayo_params_t, ptr %5, i32 0, i32 1, !dbg !738
  %6 = load i32, ptr %n, align 4, !dbg !738
  %7 = load ptr, ptr %p.addr, align 4, !dbg !737
  %o = getelementptr inbounds nuw %struct.mayo_params_t, ptr %7, i32 0, i32 2, !dbg !738
  %8 = load i32, ptr %o, align 4, !dbg !738
  %sub = sub nsw i32 %6, %8, !dbg !738
  %9 = load ptr, ptr %p.addr, align 4, !dbg !739
  %n1 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %9, i32 0, i32 1, !dbg !740
  %10 = load i32, ptr %n1, align 4, !dbg !740
  %11 = load ptr, ptr %p.addr, align 4, !dbg !739
  %o2 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %11, i32 0, i32 2, !dbg !740
  %12 = load i32, ptr %o2, align 4, !dbg !740
  %sub3 = sub nsw i32 %10, %12, !dbg !740
  %13 = load ptr, ptr %p.addr, align 4, !dbg !741
  %o4 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %13, i32 0, i32 2, !dbg !742
  %14 = load i32, ptr %o4, align 4, !dbg !742
  call void @mul_add_m_upper_triangular_mat_x_mat(i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %sub, i32 noundef %sub3, i32 noundef %14, i32 noundef 1) #5, !dbg !743
  ret void, !dbg !744
}

; Function Attrs: noinline nounwind optnone
define internal void @mul_add_mat_trans_x_m_mat(i32 noundef %m_vec_limbs, ptr noundef %mat, ptr noundef %bs_mat, ptr noundef %acc, i32 noundef %mat_rows, i32 noundef %mat_cols, i32 noundef %bs_mat_cols) #0 !dbg !745 {
entry:
  %m_vec_limbs.addr = alloca i32, align 4
  %mat.addr = alloca ptr, align 4
  %bs_mat.addr = alloca ptr, align 4
  %acc.addr = alloca ptr, align 4
  %mat_rows.addr = alloca i32, align 4
  %mat_cols.addr = alloca i32, align 4
  %bs_mat_cols.addr = alloca i32, align 4
  %r = alloca i32, align 4
  %c = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %m_vec_limbs, ptr %m_vec_limbs.addr, align 4
    #dbg_declare(ptr %m_vec_limbs.addr, !748, !DIExpression(), !749)
  store ptr %mat, ptr %mat.addr, align 4
    #dbg_declare(ptr %mat.addr, !750, !DIExpression(), !751)
  store ptr %bs_mat, ptr %bs_mat.addr, align 4
    #dbg_declare(ptr %bs_mat.addr, !752, !DIExpression(), !753)
  store ptr %acc, ptr %acc.addr, align 4
    #dbg_declare(ptr %acc.addr, !754, !DIExpression(), !755)
  store i32 %mat_rows, ptr %mat_rows.addr, align 4
    #dbg_declare(ptr %mat_rows.addr, !756, !DIExpression(), !757)
  store i32 %mat_cols, ptr %mat_cols.addr, align 4
    #dbg_declare(ptr %mat_cols.addr, !758, !DIExpression(), !759)
  store i32 %bs_mat_cols, ptr %bs_mat_cols.addr, align 4
    #dbg_declare(ptr %bs_mat_cols.addr, !760, !DIExpression(), !761)
    #dbg_declare(ptr %r, !762, !DIExpression(), !764)
  store i32 0, ptr %r, align 4, !dbg !764
  br label %for.cond, !dbg !765

for.cond:                                         ; preds = %for.inc17, %entry
  %0 = load i32, ptr %r, align 4, !dbg !766
  %1 = load i32, ptr %mat_cols.addr, align 4, !dbg !768
  %cmp = icmp slt i32 %0, %1, !dbg !769
  br i1 %cmp, label %for.body, label %for.end19, !dbg !770

for.body:                                         ; preds = %for.cond
    #dbg_declare(ptr %c, !771, !DIExpression(), !774)
  store i32 0, ptr %c, align 4, !dbg !774
  br label %for.cond1, !dbg !775

for.cond1:                                        ; preds = %for.inc15, %for.body
  %2 = load i32, ptr %c, align 4, !dbg !776
  %3 = load i32, ptr %mat_rows.addr, align 4, !dbg !778
  %cmp2 = icmp slt i32 %2, %3, !dbg !779
  br i1 %cmp2, label %for.body3, label %for.end16, !dbg !780

for.body3:                                        ; preds = %for.cond1
    #dbg_declare(ptr %k, !781, !DIExpression(), !784)
  store i32 0, ptr %k, align 4, !dbg !784
  br label %for.cond4, !dbg !785

for.cond4:                                        ; preds = %for.inc, %for.body3
  %4 = load i32, ptr %k, align 4, !dbg !786
  %5 = load i32, ptr %bs_mat_cols.addr, align 4, !dbg !788
  %cmp5 = icmp slt i32 %4, %5, !dbg !789
  br i1 %cmp5, label %for.body6, label %for.end, !dbg !790

for.body6:                                        ; preds = %for.cond4
  %6 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !791
  %7 = load ptr, ptr %bs_mat.addr, align 4, !dbg !793
  %8 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !794
  %9 = load i32, ptr %c, align 4, !dbg !795
  %10 = load i32, ptr %bs_mat_cols.addr, align 4, !dbg !796
  %mul = mul nsw i32 %9, %10, !dbg !797
  %11 = load i32, ptr %k, align 4, !dbg !798
  %add = add nsw i32 %mul, %11, !dbg !799
  %mul7 = mul nsw i32 %8, %add, !dbg !800
  %add.ptr = getelementptr inbounds i64, ptr %7, i32 %mul7, !dbg !801
  %12 = load ptr, ptr %mat.addr, align 4, !dbg !802
  %13 = load i32, ptr %c, align 4, !dbg !803
  %14 = load i32, ptr %mat_cols.addr, align 4, !dbg !804
  %mul8 = mul nsw i32 %13, %14, !dbg !805
  %15 = load i32, ptr %r, align 4, !dbg !806
  %add9 = add nsw i32 %mul8, %15, !dbg !807
  %arrayidx = getelementptr inbounds i8, ptr %12, i32 %add9, !dbg !802
  %16 = load i8, ptr %arrayidx, align 1, !dbg !802
  %17 = load ptr, ptr %acc.addr, align 4, !dbg !808
  %18 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !809
  %19 = load i32, ptr %r, align 4, !dbg !810
  %20 = load i32, ptr %bs_mat_cols.addr, align 4, !dbg !811
  %mul10 = mul nsw i32 %19, %20, !dbg !812
  %21 = load i32, ptr %k, align 4, !dbg !813
  %add11 = add nsw i32 %mul10, %21, !dbg !814
  %mul12 = mul nsw i32 %18, %add11, !dbg !815
  %add.ptr13 = getelementptr inbounds i64, ptr %17, i32 %mul12, !dbg !816
  call void @m_vec_mul_add(i32 noundef %6, ptr noundef %add.ptr, i8 noundef zeroext %16, ptr noundef %add.ptr13) #5, !dbg !817
  br label %for.inc, !dbg !818

for.inc:                                          ; preds = %for.body6
  %22 = load i32, ptr %k, align 4, !dbg !819
  %add14 = add nsw i32 %22, 1, !dbg !819
  store i32 %add14, ptr %k, align 4, !dbg !819
  br label %for.cond4, !dbg !820, !llvm.loop !821

for.end:                                          ; preds = %for.cond4
  br label %for.inc15, !dbg !823

for.inc15:                                        ; preds = %for.end
  %23 = load i32, ptr %c, align 4, !dbg !824
  %inc = add nsw i32 %23, 1, !dbg !824
  store i32 %inc, ptr %c, align 4, !dbg !824
  br label %for.cond1, !dbg !825, !llvm.loop !826

for.end16:                                        ; preds = %for.cond1
  br label %for.inc17, !dbg !828

for.inc17:                                        ; preds = %for.end16
  %24 = load i32, ptr %r, align 4, !dbg !829
  %inc18 = add nsw i32 %24, 1, !dbg !829
  store i32 %inc18, ptr %r, align 4, !dbg !829
  br label %for.cond, !dbg !830, !llvm.loop !831

for.end19:                                        ; preds = %for.cond
  ret void, !dbg !833
}

; Function Attrs: noinline nounwind optnone
define internal void @m_vec_mul_add(i32 noundef %m_vec_limbs, ptr noundef %in, i8 noundef zeroext %a, ptr noundef %acc) #0 !dbg !834 {
entry:
  %m_vec_limbs.addr = alloca i32, align 4
  %in.addr = alloca ptr, align 4
  %a.addr = alloca i8, align 1
  %acc.addr = alloca ptr, align 4
  %i = alloca i32, align 4
  store i32 %m_vec_limbs, ptr %m_vec_limbs.addr, align 4
    #dbg_declare(ptr %m_vec_limbs.addr, !838, !DIExpression(), !839)
  store ptr %in, ptr %in.addr, align 4
    #dbg_declare(ptr %in.addr, !840, !DIExpression(), !841)
  store i8 %a, ptr %a.addr, align 1
    #dbg_declare(ptr %a.addr, !842, !DIExpression(), !843)
  store ptr %acc, ptr %acc.addr, align 4
    #dbg_declare(ptr %acc.addr, !844, !DIExpression(), !845)
    #dbg_declare(ptr %i, !846, !DIExpression(), !848)
  store i32 0, ptr %i, align 4, !dbg !848
  br label %for.cond, !dbg !849

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !850
  %1 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !852
  %cmp = icmp slt i32 %0, %1, !dbg !853
  br i1 %cmp, label %for.body, label %for.end, !dbg !854

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %in.addr, align 4, !dbg !855
  %3 = load i32, ptr %i, align 4, !dbg !857
  %arrayidx = getelementptr inbounds i64, ptr %2, i32 %3, !dbg !855
  %4 = load i64, ptr %arrayidx, align 8, !dbg !855
  %5 = load i8, ptr %a.addr, align 1, !dbg !858
  %call = call i64 @gf16v_mul_u64(i64 noundef %4, i8 noundef zeroext %5) #5, !dbg !859
  %6 = load ptr, ptr %acc.addr, align 4, !dbg !860
  %7 = load i32, ptr %i, align 4, !dbg !861
  %arrayidx1 = getelementptr inbounds i64, ptr %6, i32 %7, !dbg !860
  %8 = load i64, ptr %arrayidx1, align 8, !dbg !862
  %xor = xor i64 %8, %call, !dbg !862
  store i64 %xor, ptr %arrayidx1, align 8, !dbg !862
  br label %for.inc, !dbg !863

for.inc:                                          ; preds = %for.body
  %9 = load i32, ptr %i, align 4, !dbg !864
  %inc = add nsw i32 %9, 1, !dbg !864
  store i32 %inc, ptr %i, align 4, !dbg !864
  br label %for.cond, !dbg !865, !llvm.loop !866

for.end:                                          ; preds = %for.cond
  ret void, !dbg !868
}

; Function Attrs: noinline nounwind optnone
define internal i64 @gf16v_mul_u64(i64 noundef %a, i8 noundef zeroext %b) #0 !dbg !869 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i8, align 1
  %mask_msb = alloca i64, align 8
  %a_msb = alloca i64, align 8
  %a64 = alloca i64, align 8
  %b32 = alloca i64, align 8
  %r64 = alloca i64, align 8
  store i64 %a, ptr %a.addr, align 8
    #dbg_declare(ptr %a.addr, !873, !DIExpression(), !874)
  store i8 %b, ptr %b.addr, align 1
    #dbg_declare(ptr %b.addr, !875, !DIExpression(), !876)
    #dbg_declare(ptr %mask_msb, !877, !DIExpression(), !878)
  store i64 -8608480567731124088, ptr %mask_msb, align 8, !dbg !878
    #dbg_declare(ptr %a_msb, !879, !DIExpression(), !880)
    #dbg_declare(ptr %a64, !881, !DIExpression(), !882)
  %0 = load i64, ptr %a.addr, align 8, !dbg !883
  store i64 %0, ptr %a64, align 8, !dbg !882
    #dbg_declare(ptr %b32, !884, !DIExpression(), !885)
  %1 = load i8, ptr %b.addr, align 1, !dbg !886
  %conv = zext i8 %1 to i32, !dbg !886
  %2 = load volatile i8, ptr @unsigned_char_blocker, align 1, !dbg !887
  %conv1 = zext i8 %2 to i32, !dbg !887
  %xor = xor i32 %conv, %conv1, !dbg !888
  %conv2 = sext i32 %xor to i64, !dbg !886
  store i64 %conv2, ptr %b32, align 8, !dbg !885
    #dbg_declare(ptr %r64, !889, !DIExpression(), !890)
  %3 = load i64, ptr %a64, align 8, !dbg !891
  %4 = load i64, ptr %b32, align 8, !dbg !892
  %and = and i64 %4, 1, !dbg !893
  %mul = mul i64 %3, %and, !dbg !894
  store i64 %mul, ptr %r64, align 8, !dbg !890
  %5 = load i64, ptr %a64, align 8, !dbg !895
  %6 = load i64, ptr %mask_msb, align 8, !dbg !896
  %and3 = and i64 %5, %6, !dbg !897
  store i64 %and3, ptr %a_msb, align 8, !dbg !898
  %7 = load i64, ptr %a_msb, align 8, !dbg !899
  %8 = load i64, ptr %a64, align 8, !dbg !900
  %xor4 = xor i64 %8, %7, !dbg !900
  store i64 %xor4, ptr %a64, align 8, !dbg !900
  %9 = load i64, ptr %a64, align 8, !dbg !901
  %shl = shl i64 %9, 1, !dbg !902
  %10 = load i64, ptr %a_msb, align 8, !dbg !903
  %shr = lshr i64 %10, 3, !dbg !904
  %mul5 = mul i64 %shr, 3, !dbg !905
  %xor6 = xor i64 %shl, %mul5, !dbg !906
  store i64 %xor6, ptr %a64, align 8, !dbg !907
  %11 = load i64, ptr %a64, align 8, !dbg !908
  %12 = load i64, ptr %b32, align 8, !dbg !909
  %shr7 = lshr i64 %12, 1, !dbg !910
  %and8 = and i64 %shr7, 1, !dbg !911
  %mul9 = mul i64 %11, %and8, !dbg !912
  %13 = load i64, ptr %r64, align 8, !dbg !913
  %xor10 = xor i64 %13, %mul9, !dbg !913
  store i64 %xor10, ptr %r64, align 8, !dbg !913
  %14 = load i64, ptr %a64, align 8, !dbg !914
  %15 = load i64, ptr %mask_msb, align 8, !dbg !915
  %and11 = and i64 %14, %15, !dbg !916
  store i64 %and11, ptr %a_msb, align 8, !dbg !917
  %16 = load i64, ptr %a_msb, align 8, !dbg !918
  %17 = load i64, ptr %a64, align 8, !dbg !919
  %xor12 = xor i64 %17, %16, !dbg !919
  store i64 %xor12, ptr %a64, align 8, !dbg !919
  %18 = load i64, ptr %a64, align 8, !dbg !920
  %shl13 = shl i64 %18, 1, !dbg !921
  %19 = load i64, ptr %a_msb, align 8, !dbg !922
  %shr14 = lshr i64 %19, 3, !dbg !923
  %mul15 = mul i64 %shr14, 3, !dbg !924
  %xor16 = xor i64 %shl13, %mul15, !dbg !925
  store i64 %xor16, ptr %a64, align 8, !dbg !926
  %20 = load i64, ptr %a64, align 8, !dbg !927
  %21 = load i64, ptr %b32, align 8, !dbg !928
  %shr17 = lshr i64 %21, 2, !dbg !929
  %and18 = and i64 %shr17, 1, !dbg !930
  %mul19 = mul i64 %20, %and18, !dbg !931
  %22 = load i64, ptr %r64, align 8, !dbg !932
  %xor20 = xor i64 %22, %mul19, !dbg !932
  store i64 %xor20, ptr %r64, align 8, !dbg !932
  %23 = load i64, ptr %a64, align 8, !dbg !933
  %24 = load i64, ptr %mask_msb, align 8, !dbg !934
  %and21 = and i64 %23, %24, !dbg !935
  store i64 %and21, ptr %a_msb, align 8, !dbg !936
  %25 = load i64, ptr %a_msb, align 8, !dbg !937
  %26 = load i64, ptr %a64, align 8, !dbg !938
  %xor22 = xor i64 %26, %25, !dbg !938
  store i64 %xor22, ptr %a64, align 8, !dbg !938
  %27 = load i64, ptr %a64, align 8, !dbg !939
  %shl23 = shl i64 %27, 1, !dbg !940
  %28 = load i64, ptr %a_msb, align 8, !dbg !941
  %shr24 = lshr i64 %28, 3, !dbg !942
  %mul25 = mul i64 %shr24, 3, !dbg !943
  %xor26 = xor i64 %shl23, %mul25, !dbg !944
  store i64 %xor26, ptr %a64, align 8, !dbg !945
  %29 = load i64, ptr %a64, align 8, !dbg !946
  %30 = load i64, ptr %b32, align 8, !dbg !947
  %shr27 = lshr i64 %30, 3, !dbg !948
  %and28 = and i64 %shr27, 1, !dbg !949
  %mul29 = mul i64 %29, %and28, !dbg !950
  %31 = load i64, ptr %r64, align 8, !dbg !951
  %xor30 = xor i64 %31, %mul29, !dbg !951
  store i64 %xor30, ptr %r64, align 8, !dbg !951
  %32 = load i64, ptr %r64, align 8, !dbg !952
  ret i64 %32, !dbg !953
}

; Function Attrs: noinline nounwind optnone
define internal void @mul_add_m_upper_triangular_mat_x_mat(i32 noundef %m_vec_limbs, ptr noundef %bs_mat, ptr noundef %mat, ptr noundef %acc, i32 noundef %bs_mat_rows, i32 noundef %bs_mat_cols, i32 noundef %mat_cols, i32 noundef %triangular) #0 !dbg !954 {
entry:
  %m_vec_limbs.addr = alloca i32, align 4
  %bs_mat.addr = alloca ptr, align 4
  %mat.addr = alloca ptr, align 4
  %acc.addr = alloca ptr, align 4
  %bs_mat_rows.addr = alloca i32, align 4
  %bs_mat_cols.addr = alloca i32, align 4
  %mat_cols.addr = alloca i32, align 4
  %triangular.addr = alloca i32, align 4
  %bs_mat_entries_used = alloca i32, align 4
  %r = alloca i32, align 4
  %c = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %m_vec_limbs, ptr %m_vec_limbs.addr, align 4
    #dbg_declare(ptr %m_vec_limbs.addr, !957, !DIExpression(), !958)
  store ptr %bs_mat, ptr %bs_mat.addr, align 4
    #dbg_declare(ptr %bs_mat.addr, !959, !DIExpression(), !960)
  store ptr %mat, ptr %mat.addr, align 4
    #dbg_declare(ptr %mat.addr, !961, !DIExpression(), !962)
  store ptr %acc, ptr %acc.addr, align 4
    #dbg_declare(ptr %acc.addr, !963, !DIExpression(), !964)
  store i32 %bs_mat_rows, ptr %bs_mat_rows.addr, align 4
    #dbg_declare(ptr %bs_mat_rows.addr, !965, !DIExpression(), !966)
  store i32 %bs_mat_cols, ptr %bs_mat_cols.addr, align 4
    #dbg_declare(ptr %bs_mat_cols.addr, !967, !DIExpression(), !968)
  store i32 %mat_cols, ptr %mat_cols.addr, align 4
    #dbg_declare(ptr %mat_cols.addr, !969, !DIExpression(), !970)
  store i32 %triangular, ptr %triangular.addr, align 4
    #dbg_declare(ptr %triangular.addr, !971, !DIExpression(), !972)
    #dbg_declare(ptr %bs_mat_entries_used, !973, !DIExpression(), !974)
  store i32 0, ptr %bs_mat_entries_used, align 4, !dbg !974
    #dbg_declare(ptr %r, !975, !DIExpression(), !977)
  store i32 0, ptr %r, align 4, !dbg !977
  br label %for.cond, !dbg !978

for.cond:                                         ; preds = %for.inc17, %entry
  %0 = load i32, ptr %r, align 4, !dbg !979
  %1 = load i32, ptr %bs_mat_rows.addr, align 4, !dbg !981
  %cmp = icmp slt i32 %0, %1, !dbg !982
  br i1 %cmp, label %for.body, label %for.end19, !dbg !983

for.body:                                         ; preds = %for.cond
    #dbg_declare(ptr %c, !984, !DIExpression(), !987)
  %2 = load i32, ptr %triangular.addr, align 4, !dbg !988
  %3 = load i32, ptr %r, align 4, !dbg !989
  %mul = mul nsw i32 %2, %3, !dbg !990
  store i32 %mul, ptr %c, align 4, !dbg !987
  br label %for.cond1, !dbg !991

for.cond1:                                        ; preds = %for.inc15, %for.body
  %4 = load i32, ptr %c, align 4, !dbg !992
  %5 = load i32, ptr %bs_mat_cols.addr, align 4, !dbg !994
  %cmp2 = icmp slt i32 %4, %5, !dbg !995
  br i1 %cmp2, label %for.body3, label %for.end16, !dbg !996

for.body3:                                        ; preds = %for.cond1
    #dbg_declare(ptr %k, !997, !DIExpression(), !1000)
  store i32 0, ptr %k, align 4, !dbg !1000
  br label %for.cond4, !dbg !1001

for.cond4:                                        ; preds = %for.inc, %for.body3
  %6 = load i32, ptr %k, align 4, !dbg !1002
  %7 = load i32, ptr %mat_cols.addr, align 4, !dbg !1004
  %cmp5 = icmp slt i32 %6, %7, !dbg !1005
  br i1 %cmp5, label %for.body6, label %for.end, !dbg !1006

for.body6:                                        ; preds = %for.cond4
  %8 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !1007
  %9 = load ptr, ptr %bs_mat.addr, align 4, !dbg !1009
  %10 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !1010
  %11 = load i32, ptr %bs_mat_entries_used, align 4, !dbg !1011
  %mul7 = mul nsw i32 %10, %11, !dbg !1012
  %add.ptr = getelementptr inbounds i64, ptr %9, i32 %mul7, !dbg !1013
  %12 = load ptr, ptr %mat.addr, align 4, !dbg !1014
  %13 = load i32, ptr %c, align 4, !dbg !1015
  %14 = load i32, ptr %mat_cols.addr, align 4, !dbg !1016
  %mul8 = mul nsw i32 %13, %14, !dbg !1017
  %15 = load i32, ptr %k, align 4, !dbg !1018
  %add = add nsw i32 %mul8, %15, !dbg !1019
  %arrayidx = getelementptr inbounds i8, ptr %12, i32 %add, !dbg !1014
  %16 = load i8, ptr %arrayidx, align 1, !dbg !1014
  %17 = load ptr, ptr %acc.addr, align 4, !dbg !1020
  %18 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !1021
  %19 = load i32, ptr %r, align 4, !dbg !1022
  %20 = load i32, ptr %mat_cols.addr, align 4, !dbg !1023
  %mul9 = mul nsw i32 %19, %20, !dbg !1024
  %21 = load i32, ptr %k, align 4, !dbg !1025
  %add10 = add nsw i32 %mul9, %21, !dbg !1026
  %mul11 = mul nsw i32 %18, %add10, !dbg !1027
  %add.ptr12 = getelementptr inbounds i64, ptr %17, i32 %mul11, !dbg !1028
  call void @m_vec_mul_add(i32 noundef %8, ptr noundef %add.ptr, i8 noundef zeroext %16, ptr noundef %add.ptr12) #5, !dbg !1029
  br label %for.inc, !dbg !1030

for.inc:                                          ; preds = %for.body6
  %22 = load i32, ptr %k, align 4, !dbg !1031
  %add13 = add nsw i32 %22, 1, !dbg !1031
  store i32 %add13, ptr %k, align 4, !dbg !1031
  br label %for.cond4, !dbg !1032, !llvm.loop !1033

for.end:                                          ; preds = %for.cond4
  %23 = load i32, ptr %bs_mat_entries_used, align 4, !dbg !1035
  %add14 = add nsw i32 %23, 1, !dbg !1035
  store i32 %add14, ptr %bs_mat_entries_used, align 4, !dbg !1035
  br label %for.inc15, !dbg !1036

for.inc15:                                        ; preds = %for.end
  %24 = load i32, ptr %c, align 4, !dbg !1037
  %inc = add nsw i32 %24, 1, !dbg !1037
  store i32 %inc, ptr %c, align 4, !dbg !1037
  br label %for.cond1, !dbg !1038, !llvm.loop !1039

for.end16:                                        ; preds = %for.cond1
  br label %for.inc17, !dbg !1041

for.inc17:                                        ; preds = %for.end16
  %25 = load i32, ptr %r, align 4, !dbg !1042
  %inc18 = add nsw i32 %25, 1, !dbg !1042
  store i32 %inc18, ptr %r, align 4, !dbg !1042
  br label %for.cond, !dbg !1043, !llvm.loop !1044

for.end19:                                        ; preds = %for.cond
  ret void, !dbg !1046
}

declare dso_local i32 @AES_128_CTR(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #4

; Function Attrs: noinline nounwind optnone
define internal void @unpack_m_vecs(ptr noundef %in, ptr noundef %out, i32 noundef %vecs, i32 noundef %m) #0 !dbg !1047 {
entry:
  %in.addr = alloca ptr, align 4
  %out.addr = alloca ptr, align 4
  %vecs.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %m_vec_limbs = alloca i32, align 4
  %_out = alloca ptr, align 4
  %tmp = alloca [9 x i64], align 8
  %i = alloca i32, align 4
  store ptr %in, ptr %in.addr, align 4
    #dbg_declare(ptr %in.addr, !1050, !DIExpression(), !1051)
  store ptr %out, ptr %out.addr, align 4
    #dbg_declare(ptr %out.addr, !1052, !DIExpression(), !1053)
  store i32 %vecs, ptr %vecs.addr, align 4
    #dbg_declare(ptr %vecs.addr, !1054, !DIExpression(), !1055)
  store i32 %m, ptr %m.addr, align 4
    #dbg_declare(ptr %m.addr, !1056, !DIExpression(), !1057)
    #dbg_declare(ptr %m_vec_limbs, !1058, !DIExpression(), !1059)
  %0 = load i32, ptr %m.addr, align 4, !dbg !1060
  %add = add nsw i32 %0, 15, !dbg !1061
  %div = sdiv i32 %add, 16, !dbg !1062
  store i32 %div, ptr %m_vec_limbs, align 4, !dbg !1059
    #dbg_declare(ptr %_out, !1063, !DIExpression(), !1064)
  %1 = load ptr, ptr %out.addr, align 4, !dbg !1065
  store ptr %1, ptr %_out, align 4, !dbg !1064
    #dbg_declare(ptr %tmp, !1066, !DIExpression(), !1070)
  call void @llvm.memset.p0.i32(ptr align 8 %tmp, i8 0, i32 72, i1 false), !dbg !1070
    #dbg_declare(ptr %i, !1071, !DIExpression(), !1073)
  %2 = load i32, ptr %vecs.addr, align 4, !dbg !1074
  %sub = sub nsw i32 %2, 1, !dbg !1075
  store i32 %sub, ptr %i, align 4, !dbg !1073
  br label %for.cond, !dbg !1076

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, ptr %i, align 4, !dbg !1077
  %cmp = icmp sge i32 %3, 0, !dbg !1079
  br i1 %cmp, label %for.body, label %for.end, !dbg !1080

for.body:                                         ; preds = %for.cond
  %arraydecay = getelementptr inbounds [9 x i64], ptr %tmp, i32 0, i32 0, !dbg !1081
  %4 = load ptr, ptr %in.addr, align 4, !dbg !1083
  %5 = load i32, ptr %i, align 4, !dbg !1084
  %6 = load i32, ptr %m.addr, align 4, !dbg !1085
  %mul = mul nsw i32 %5, %6, !dbg !1086
  %div1 = sdiv i32 %mul, 2, !dbg !1087
  %add.ptr = getelementptr inbounds i8, ptr %4, i32 %div1, !dbg !1088
  %7 = load i32, ptr %m.addr, align 4, !dbg !1089
  %div2 = sdiv i32 %7, 2, !dbg !1090
  %call = call ptr @memcpy(ptr noundef %arraydecay, ptr noundef %add.ptr, i32 noundef %div2) #5, !dbg !1091
  %8 = load ptr, ptr %_out, align 4, !dbg !1092
  %9 = load i32, ptr %i, align 4, !dbg !1093
  %10 = load i32, ptr %m_vec_limbs, align 4, !dbg !1094
  %mul3 = mul nsw i32 %9, %10, !dbg !1095
  %mul4 = mul i32 %mul3, 8, !dbg !1096
  %add.ptr5 = getelementptr inbounds nuw i8, ptr %8, i32 %mul4, !dbg !1097
  %arraydecay6 = getelementptr inbounds [9 x i64], ptr %tmp, i32 0, i32 0, !dbg !1098
  %11 = load i32, ptr %m_vec_limbs, align 4, !dbg !1099
  %mul7 = mul i32 %11, 8, !dbg !1100
  %call8 = call ptr @memcpy(ptr noundef %add.ptr5, ptr noundef %arraydecay6, i32 noundef %mul7) #5, !dbg !1101
  br label %for.inc, !dbg !1102

for.inc:                                          ; preds = %for.body
  %12 = load i32, ptr %i, align 4, !dbg !1103
  %dec = add nsw i32 %12, -1, !dbg !1103
  store i32 %dec, ptr %i, align 4, !dbg !1103
  br label %for.cond, !dbg !1104, !llvm.loop !1105

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1107
}

; Function Attrs: noinline nounwind optnone
define dso_local i32 @mayo_expand_sk(ptr noundef %p, ptr noundef %csk, ptr noundef %sk) #0 !dbg !1108 {
entry:
  %p.addr = alloca ptr, align 4
  %csk.addr = alloca ptr, align 4
  %sk.addr = alloca ptr, align 4
  %ret = alloca i32, align 4
  %S = alloca [868 x i8], align 1
  %P = alloca ptr, align 4
  %O = alloca ptr, align 4
  %param_o = alloca i32, align 4
  %param_v = alloca i32, align 4
  %param_O_bytes = alloca i32, align 4
  %param_pk_seed_bytes = alloca i32, align 4
  %param_sk_seed_bytes = alloca i32, align 4
  %seed_sk = alloca ptr, align 4
  %seed_pk = alloca ptr, align 4
  %P2 = alloca ptr, align 4
  %P1 = alloca ptr, align 4
  %L = alloca ptr, align 4
  store ptr %p, ptr %p.addr, align 4
    #dbg_declare(ptr %p.addr, !1117, !DIExpression(), !1118)
  store ptr %csk, ptr %csk.addr, align 4
    #dbg_declare(ptr %csk.addr, !1119, !DIExpression(), !1120)
  store ptr %sk, ptr %sk.addr, align 4
    #dbg_declare(ptr %sk.addr, !1121, !DIExpression(), !1122)
    #dbg_declare(ptr %ret, !1123, !DIExpression(), !1124)
  store i32 0, ptr %ret, align 4, !dbg !1124
    #dbg_declare(ptr %S, !1125, !DIExpression(), !1126)
    #dbg_declare(ptr %P, !1127, !DIExpression(), !1128)
  %0 = load ptr, ptr %sk.addr, align 4, !dbg !1129
  %p1 = getelementptr inbounds nuw %struct.sk_t, ptr %0, i32 0, i32 0, !dbg !1130
  %arraydecay = getelementptr inbounds [113103 x i64], ptr %p1, i32 0, i32 0, !dbg !1129
  store ptr %arraydecay, ptr %P, align 4, !dbg !1128
    #dbg_declare(ptr %O, !1131, !DIExpression(), !1132)
  %1 = load ptr, ptr %sk.addr, align 4, !dbg !1133
  %O2 = getelementptr inbounds nuw %struct.sk_t, ptr %1, i32 0, i32 1, !dbg !1134
  %arraydecay3 = getelementptr inbounds [2414 x i8], ptr %O2, i32 0, i32 0, !dbg !1133
  store ptr %arraydecay3, ptr %O, align 4, !dbg !1132
    #dbg_declare(ptr %param_o, !1135, !DIExpression(), !1136)
  %2 = load ptr, ptr %p.addr, align 4, !dbg !1137
  %o = getelementptr inbounds nuw %struct.mayo_params_t, ptr %2, i32 0, i32 2, !dbg !1138
  %3 = load i32, ptr %o, align 4, !dbg !1138
  store i32 %3, ptr %param_o, align 4, !dbg !1136
    #dbg_declare(ptr %param_v, !1139, !DIExpression(), !1140)
  %4 = load ptr, ptr %p.addr, align 4, !dbg !1141
  %n = getelementptr inbounds nuw %struct.mayo_params_t, ptr %4, i32 0, i32 1, !dbg !1142
  %5 = load i32, ptr %n, align 4, !dbg !1142
  %6 = load ptr, ptr %p.addr, align 4, !dbg !1141
  %o4 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %6, i32 0, i32 2, !dbg !1142
  %7 = load i32, ptr %o4, align 4, !dbg !1142
  %sub = sub nsw i32 %5, %7, !dbg !1142
  store i32 %sub, ptr %param_v, align 4, !dbg !1140
    #dbg_declare(ptr %param_O_bytes, !1143, !DIExpression(), !1144)
  %8 = load ptr, ptr %p.addr, align 4, !dbg !1145
  %O_bytes = getelementptr inbounds nuw %struct.mayo_params_t, ptr %8, i32 0, i32 7, !dbg !1146
  %9 = load i32, ptr %O_bytes, align 4, !dbg !1146
  store i32 %9, ptr %param_O_bytes, align 4, !dbg !1144
    #dbg_declare(ptr %param_pk_seed_bytes, !1147, !DIExpression(), !1148)
  %10 = load ptr, ptr %p.addr, align 4, !dbg !1149
  %pk_seed_bytes = getelementptr inbounds nuw %struct.mayo_params_t, ptr %10, i32 0, i32 20, !dbg !1150
  %11 = load i32, ptr %pk_seed_bytes, align 4, !dbg !1150
  store i32 %11, ptr %param_pk_seed_bytes, align 4, !dbg !1148
    #dbg_declare(ptr %param_sk_seed_bytes, !1151, !DIExpression(), !1152)
  %12 = load ptr, ptr %p.addr, align 4, !dbg !1153
  %sk_seed_bytes = getelementptr inbounds nuw %struct.mayo_params_t, ptr %12, i32 0, i32 18, !dbg !1154
  %13 = load i32, ptr %sk_seed_bytes, align 4, !dbg !1154
  store i32 %13, ptr %param_sk_seed_bytes, align 4, !dbg !1152
    #dbg_declare(ptr %seed_sk, !1155, !DIExpression(), !1156)
  %14 = load ptr, ptr %csk.addr, align 4, !dbg !1157
  store ptr %14, ptr %seed_sk, align 4, !dbg !1156
    #dbg_declare(ptr %seed_pk, !1158, !DIExpression(), !1159)
  %arraydecay5 = getelementptr inbounds [868 x i8], ptr %S, i32 0, i32 0, !dbg !1160
  store ptr %arraydecay5, ptr %seed_pk, align 4, !dbg !1159
  %arraydecay6 = getelementptr inbounds [868 x i8], ptr %S, i32 0, i32 0, !dbg !1161
  %15 = load i32, ptr %param_pk_seed_bytes, align 4, !dbg !1162
  %16 = load i32, ptr %param_O_bytes, align 4, !dbg !1163
  %add = add nsw i32 %15, %16, !dbg !1164
  %17 = load ptr, ptr %seed_sk, align 4, !dbg !1165
  %18 = load i32, ptr %param_sk_seed_bytes, align 4, !dbg !1166
  %call = call i32 @shake256(ptr noundef %arraydecay6, i32 noundef %add, ptr noundef %17, i32 noundef %18) #5, !dbg !1167
  %arraydecay7 = getelementptr inbounds [868 x i8], ptr %S, i32 0, i32 0, !dbg !1168
  %19 = load i32, ptr %param_pk_seed_bytes, align 4, !dbg !1169
  %add.ptr = getelementptr inbounds i8, ptr %arraydecay7, i32 %19, !dbg !1170
  %20 = load ptr, ptr %O, align 4, !dbg !1171
  %21 = load i32, ptr %param_v, align 4, !dbg !1172
  %22 = load i32, ptr %param_o, align 4, !dbg !1173
  %mul = mul nsw i32 %21, %22, !dbg !1174
  call void @decode(ptr noundef %add.ptr, ptr noundef %20, i32 noundef %mul) #5, !dbg !1175
  %23 = load ptr, ptr %p.addr, align 4, !dbg !1176
  %24 = load ptr, ptr %P, align 4, !dbg !1177
  %25 = load ptr, ptr %seed_pk, align 4, !dbg !1178
  call void @expand_P1_P2(ptr noundef %23, ptr noundef %24, ptr noundef %25) #5, !dbg !1179
    #dbg_declare(ptr %P2, !1180, !DIExpression(), !1181)
  %26 = load ptr, ptr %P, align 4, !dbg !1182
  %27 = load ptr, ptr %p.addr, align 4, !dbg !1183
  %n8 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %27, i32 0, i32 1, !dbg !1184
  %28 = load i32, ptr %n8, align 4, !dbg !1184
  %29 = load ptr, ptr %p.addr, align 4, !dbg !1183
  %o9 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %29, i32 0, i32 2, !dbg !1184
  %30 = load i32, ptr %o9, align 4, !dbg !1184
  %sub10 = sub nsw i32 %28, %30, !dbg !1184
  %31 = load ptr, ptr %p.addr, align 4, !dbg !1183
  %n11 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %31, i32 0, i32 1, !dbg !1184
  %32 = load i32, ptr %n11, align 4, !dbg !1184
  %33 = load ptr, ptr %p.addr, align 4, !dbg !1183
  %o12 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %33, i32 0, i32 2, !dbg !1184
  %34 = load i32, ptr %o12, align 4, !dbg !1184
  %sub13 = sub nsw i32 %32, %34, !dbg !1184
  %add14 = add nsw i32 %sub13, 1, !dbg !1184
  %mul15 = mul nsw i32 %sub10, %add14, !dbg !1184
  %div = sdiv i32 %mul15, 2, !dbg !1184
  %35 = load ptr, ptr %p.addr, align 4, !dbg !1183
  %m_vec_limbs = getelementptr inbounds nuw %struct.mayo_params_t, ptr %35, i32 0, i32 21, !dbg !1184
  %36 = load i32, ptr %m_vec_limbs, align 4, !dbg !1184
  %mul16 = mul nsw i32 %div, %36, !dbg !1184
  %add.ptr17 = getelementptr inbounds i64, ptr %26, i32 %mul16, !dbg !1185
  store ptr %add.ptr17, ptr %P2, align 4, !dbg !1181
    #dbg_declare(ptr %P1, !1186, !DIExpression(), !1187)
  %37 = load ptr, ptr %P, align 4, !dbg !1188
  store ptr %37, ptr %P1, align 4, !dbg !1187
    #dbg_declare(ptr %L, !1189, !DIExpression(), !1190)
  %38 = load ptr, ptr %P2, align 4, !dbg !1191
  store ptr %38, ptr %L, align 4, !dbg !1190
  %39 = load ptr, ptr %p.addr, align 4, !dbg !1192
  %40 = load ptr, ptr %P1, align 4, !dbg !1193
  %41 = load ptr, ptr %O, align 4, !dbg !1194
  %42 = load ptr, ptr %L, align 4, !dbg !1195
  call void @P1P1t_times_O(ptr noundef %39, ptr noundef %40, ptr noundef %41, ptr noundef %42) #5, !dbg !1196
  %arraydecay18 = getelementptr inbounds [868 x i8], ptr %S, i32 0, i32 0, !dbg !1197
  call void @mayo_secure_clear(ptr noundef %arraydecay18, i32 noundef 868) #5, !dbg !1198
  %43 = load i32, ptr %ret, align 4, !dbg !1199
  ret i32 %43, !dbg !1200
}

; Function Attrs: noinline nounwind optnone
define internal void @P1P1t_times_O(ptr noundef %p, ptr noundef %P1, ptr noundef %O, ptr noundef %acc) #0 !dbg !1201 {
entry:
  %p.addr = alloca ptr, align 4
  %P1.addr = alloca ptr, align 4
  %O.addr = alloca ptr, align 4
  %acc.addr = alloca ptr, align 4
  %param_o = alloca i32, align 4
  %param_v = alloca i32, align 4
  %m_vec_limbs = alloca i32, align 4
  %bs_mat_entries_used = alloca i32, align 4
  %r = alloca i32, align 4
  %c = alloca i32, align 4
  %k = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 4
    #dbg_declare(ptr %p.addr, !1202, !DIExpression(), !1203)
  store ptr %P1, ptr %P1.addr, align 4
    #dbg_declare(ptr %P1.addr, !1204, !DIExpression(), !1205)
  store ptr %O, ptr %O.addr, align 4
    #dbg_declare(ptr %O.addr, !1206, !DIExpression(), !1207)
  store ptr %acc, ptr %acc.addr, align 4
    #dbg_declare(ptr %acc.addr, !1208, !DIExpression(), !1209)
    #dbg_declare(ptr %param_o, !1210, !DIExpression(), !1211)
  %0 = load ptr, ptr %p.addr, align 4, !dbg !1212
  %o = getelementptr inbounds nuw %struct.mayo_params_t, ptr %0, i32 0, i32 2, !dbg !1213
  %1 = load i32, ptr %o, align 4, !dbg !1213
  store i32 %1, ptr %param_o, align 4, !dbg !1211
    #dbg_declare(ptr %param_v, !1214, !DIExpression(), !1215)
  %2 = load ptr, ptr %p.addr, align 4, !dbg !1216
  %n = getelementptr inbounds nuw %struct.mayo_params_t, ptr %2, i32 0, i32 1, !dbg !1217
  %3 = load i32, ptr %n, align 4, !dbg !1217
  %4 = load ptr, ptr %p.addr, align 4, !dbg !1216
  %o1 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %4, i32 0, i32 2, !dbg !1217
  %5 = load i32, ptr %o1, align 4, !dbg !1217
  %sub = sub nsw i32 %3, %5, !dbg !1217
  store i32 %sub, ptr %param_v, align 4, !dbg !1215
    #dbg_declare(ptr %m_vec_limbs, !1218, !DIExpression(), !1219)
  %6 = load ptr, ptr %p.addr, align 4, !dbg !1220
  %m_vec_limbs2 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %6, i32 0, i32 21, !dbg !1221
  %7 = load i32, ptr %m_vec_limbs2, align 4, !dbg !1221
  store i32 %7, ptr %m_vec_limbs, align 4, !dbg !1219
    #dbg_declare(ptr %bs_mat_entries_used, !1222, !DIExpression(), !1223)
  store i32 0, ptr %bs_mat_entries_used, align 4, !dbg !1223
    #dbg_declare(ptr %r, !1224, !DIExpression(), !1226)
  store i32 0, ptr %r, align 4, !dbg !1226
  br label %for.cond, !dbg !1227

for.cond:                                         ; preds = %for.inc29, %entry
  %8 = load i32, ptr %r, align 4, !dbg !1228
  %9 = load i32, ptr %param_v, align 4, !dbg !1230
  %cmp = icmp slt i32 %8, %9, !dbg !1231
  br i1 %cmp, label %for.body, label %for.end31, !dbg !1232

for.body:                                         ; preds = %for.cond
    #dbg_declare(ptr %c, !1233, !DIExpression(), !1236)
  %10 = load i32, ptr %r, align 4, !dbg !1237
  store i32 %10, ptr %c, align 4, !dbg !1236
  br label %for.cond3, !dbg !1238

for.cond3:                                        ; preds = %for.inc27, %for.body
  %11 = load i32, ptr %c, align 4, !dbg !1239
  %12 = load i32, ptr %param_v, align 4, !dbg !1241
  %cmp4 = icmp slt i32 %11, %12, !dbg !1242
  br i1 %cmp4, label %for.body5, label %for.end28, !dbg !1243

for.body5:                                        ; preds = %for.cond3
  %13 = load i32, ptr %c, align 4, !dbg !1244
  %14 = load i32, ptr %r, align 4, !dbg !1247
  %cmp6 = icmp eq i32 %13, %14, !dbg !1248
  br i1 %cmp6, label %if.then, label %if.end, !dbg !1248

if.then:                                          ; preds = %for.body5
  %15 = load i32, ptr %bs_mat_entries_used, align 4, !dbg !1249
  %add = add nsw i32 %15, 1, !dbg !1249
  store i32 %add, ptr %bs_mat_entries_used, align 4, !dbg !1249
  br label %for.inc27, !dbg !1251

if.end:                                           ; preds = %for.body5
    #dbg_declare(ptr %k, !1252, !DIExpression(), !1254)
  store i32 0, ptr %k, align 4, !dbg !1254
  br label %for.cond7, !dbg !1255

for.cond7:                                        ; preds = %for.inc, %if.end
  %16 = load i32, ptr %k, align 4, !dbg !1256
  %17 = load i32, ptr %param_o, align 4, !dbg !1258
  %cmp8 = icmp slt i32 %16, %17, !dbg !1259
  br i1 %cmp8, label %for.body9, label %for.end, !dbg !1260

for.body9:                                        ; preds = %for.cond7
  %18 = load i32, ptr %m_vec_limbs, align 4, !dbg !1261
  %19 = load ptr, ptr %P1.addr, align 4, !dbg !1263
  %20 = load i32, ptr %m_vec_limbs, align 4, !dbg !1264
  %21 = load i32, ptr %bs_mat_entries_used, align 4, !dbg !1265
  %mul = mul nsw i32 %20, %21, !dbg !1266
  %add.ptr = getelementptr inbounds i64, ptr %19, i32 %mul, !dbg !1267
  %22 = load ptr, ptr %O.addr, align 4, !dbg !1268
  %23 = load i32, ptr %c, align 4, !dbg !1269
  %24 = load i32, ptr %param_o, align 4, !dbg !1270
  %mul10 = mul nsw i32 %23, %24, !dbg !1271
  %25 = load i32, ptr %k, align 4, !dbg !1272
  %add11 = add nsw i32 %mul10, %25, !dbg !1273
  %arrayidx = getelementptr inbounds i8, ptr %22, i32 %add11, !dbg !1268
  %26 = load i8, ptr %arrayidx, align 1, !dbg !1268
  %27 = load ptr, ptr %acc.addr, align 4, !dbg !1274
  %28 = load i32, ptr %m_vec_limbs, align 4, !dbg !1275
  %29 = load i32, ptr %r, align 4, !dbg !1276
  %30 = load i32, ptr %param_o, align 4, !dbg !1277
  %mul12 = mul nsw i32 %29, %30, !dbg !1278
  %31 = load i32, ptr %k, align 4, !dbg !1279
  %add13 = add nsw i32 %mul12, %31, !dbg !1280
  %mul14 = mul nsw i32 %28, %add13, !dbg !1281
  %add.ptr15 = getelementptr inbounds i64, ptr %27, i32 %mul14, !dbg !1282
  call void @m_vec_mul_add(i32 noundef %18, ptr noundef %add.ptr, i8 noundef zeroext %26, ptr noundef %add.ptr15) #5, !dbg !1283
  %32 = load i32, ptr %m_vec_limbs, align 4, !dbg !1284
  %33 = load ptr, ptr %P1.addr, align 4, !dbg !1285
  %34 = load i32, ptr %m_vec_limbs, align 4, !dbg !1286
  %35 = load i32, ptr %bs_mat_entries_used, align 4, !dbg !1287
  %mul16 = mul nsw i32 %34, %35, !dbg !1288
  %add.ptr17 = getelementptr inbounds i64, ptr %33, i32 %mul16, !dbg !1289
  %36 = load ptr, ptr %O.addr, align 4, !dbg !1290
  %37 = load i32, ptr %r, align 4, !dbg !1291
  %38 = load i32, ptr %param_o, align 4, !dbg !1292
  %mul18 = mul nsw i32 %37, %38, !dbg !1293
  %39 = load i32, ptr %k, align 4, !dbg !1294
  %add19 = add nsw i32 %mul18, %39, !dbg !1295
  %arrayidx20 = getelementptr inbounds i8, ptr %36, i32 %add19, !dbg !1290
  %40 = load i8, ptr %arrayidx20, align 1, !dbg !1290
  %41 = load ptr, ptr %acc.addr, align 4, !dbg !1296
  %42 = load i32, ptr %m_vec_limbs, align 4, !dbg !1297
  %43 = load i32, ptr %c, align 4, !dbg !1298
  %44 = load i32, ptr %param_o, align 4, !dbg !1299
  %mul21 = mul nsw i32 %43, %44, !dbg !1300
  %45 = load i32, ptr %k, align 4, !dbg !1301
  %add22 = add nsw i32 %mul21, %45, !dbg !1302
  %mul23 = mul nsw i32 %42, %add22, !dbg !1303
  %add.ptr24 = getelementptr inbounds i64, ptr %41, i32 %mul23, !dbg !1304
  call void @m_vec_mul_add(i32 noundef %32, ptr noundef %add.ptr17, i8 noundef zeroext %40, ptr noundef %add.ptr24) #5, !dbg !1305
  br label %for.inc, !dbg !1306

for.inc:                                          ; preds = %for.body9
  %46 = load i32, ptr %k, align 4, !dbg !1307
  %add25 = add nsw i32 %46, 1, !dbg !1307
  store i32 %add25, ptr %k, align 4, !dbg !1307
  br label %for.cond7, !dbg !1308, !llvm.loop !1309

for.end:                                          ; preds = %for.cond7
  %47 = load i32, ptr %bs_mat_entries_used, align 4, !dbg !1311
  %add26 = add nsw i32 %47, 1, !dbg !1311
  store i32 %add26, ptr %bs_mat_entries_used, align 4, !dbg !1311
  br label %for.inc27, !dbg !1312

for.inc27:                                        ; preds = %for.end, %if.then
  %48 = load i32, ptr %c, align 4, !dbg !1313
  %inc = add nsw i32 %48, 1, !dbg !1313
  store i32 %inc, ptr %c, align 4, !dbg !1313
  br label %for.cond3, !dbg !1314, !llvm.loop !1315

for.end28:                                        ; preds = %for.cond3
  br label %for.inc29, !dbg !1317

for.inc29:                                        ; preds = %for.end28
  %49 = load i32, ptr %r, align 4, !dbg !1318
  %inc30 = add nsw i32 %49, 1, !dbg !1318
  store i32 %inc30, ptr %r, align 4, !dbg !1318
  br label %for.cond, !dbg !1319, !llvm.loop !1320

for.end31:                                        ; preds = %for.cond
  ret void, !dbg !1322
}

; Function Attrs: noinline nounwind optnone
define dso_local i32 @mayo_sign_signature(ptr noundef %p, ptr noundef %sig, ptr noundef %siglen, ptr noundef %m, i32 noundef %mlen, ptr noundef %csk) #0 !dbg !1323 {
entry:
  %p.addr = alloca ptr, align 4
  %sig.addr = alloca ptr, align 4
  %siglen.addr = alloca ptr, align 4
  %m.addr = alloca ptr, align 4
  %mlen.addr = alloca i32, align 4
  %csk.addr = alloca ptr, align 4
  %ret = alloca i32, align 4
  %tenc = alloca [71 x i8], align 1
  %t = alloca [142 x i8], align 1
  %y = alloca [142 x i8], align 1
  %salt = alloca [40 x i8], align 1
  %V = alloca [924 x i8], align 1
  %Vdec = alloca [1704 x i8], align 1
  %A = alloca [29520 x i8], align 1
  %x = alloca [1848 x i8], align 1
  %r = alloca [205 x i8], align 1
  %s = alloca [1848 x i8], align 1
  %seed_sk = alloca ptr, align 4
  %sk = alloca %struct.sk_t, align 32
  %Ox = alloca [142 x i8], align 1
  %tmp = alloca [145 x i8], align 1
  %ctrbyte = alloca ptr, align 4
  %vi = alloca ptr, align 4
  %param_m = alloca i32, align 4
  %param_n = alloca i32, align 4
  %param_o = alloca i32, align 4
  %param_k = alloca i32, align 4
  %param_v = alloca i32, align 4
  %param_m_bytes = alloca i32, align 4
  %param_v_bytes = alloca i32, align 4
  %param_r_bytes = alloca i32, align 4
  %param_sig_bytes = alloca i32, align 4
  %param_A_cols = alloca i32, align 4
  %param_digest_bytes = alloca i32, align 4
  %param_sk_seed_bytes = alloca i32, align 4
  %param_salt_bytes = alloca i32, align 4
  %P1 = alloca ptr, align 4
  %L = alloca ptr, align 4
  %Mtmp = alloca [1836 x i64], align 8
  %ctr = alloca i32, align 4
  %i = alloca i32, align 4
  %i75 = alloca i32, align 4
  %i107 = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 4
    #dbg_declare(ptr %p.addr, !1327, !DIExpression(), !1328)
  store ptr %sig, ptr %sig.addr, align 4
    #dbg_declare(ptr %sig.addr, !1329, !DIExpression(), !1330)
  store ptr %siglen, ptr %siglen.addr, align 4
    #dbg_declare(ptr %siglen.addr, !1331, !DIExpression(), !1332)
  store ptr %m, ptr %m.addr, align 4
    #dbg_declare(ptr %m.addr, !1333, !DIExpression(), !1334)
  store i32 %mlen, ptr %mlen.addr, align 4
    #dbg_declare(ptr %mlen.addr, !1335, !DIExpression(), !1336)
  store ptr %csk, ptr %csk.addr, align 4
    #dbg_declare(ptr %csk.addr, !1337, !DIExpression(), !1338)
    #dbg_declare(ptr %ret, !1339, !DIExpression(), !1340)
  store i32 0, ptr %ret, align 4, !dbg !1340
    #dbg_declare(ptr %tenc, !1341, !DIExpression(), !1345)
    #dbg_declare(ptr %t, !1346, !DIExpression(), !1350)
    #dbg_declare(ptr %y, !1351, !DIExpression(), !1352)
    #dbg_declare(ptr %salt, !1353, !DIExpression(), !1357)
    #dbg_declare(ptr %V, !1358, !DIExpression(), !1362)
    #dbg_declare(ptr %Vdec, !1363, !DIExpression(), !1367)
    #dbg_declare(ptr %A, !1368, !DIExpression(), !1372)
  call void @llvm.memset.p0.i32(ptr align 1 %A, i8 0, i32 29520, i1 false), !dbg !1372
    #dbg_declare(ptr %x, !1373, !DIExpression(), !1377)
    #dbg_declare(ptr %r, !1378, !DIExpression(), !1382)
  call void @llvm.memset.p0.i32(ptr align 1 %r, i8 0, i32 205, i1 false), !dbg !1382
    #dbg_declare(ptr %s, !1383, !DIExpression(), !1384)
    #dbg_declare(ptr %seed_sk, !1385, !DIExpression(), !1386)
    #dbg_declare(ptr %sk, !1387, !DIExpression(), !1388)
    #dbg_declare(ptr %Ox, !1389, !DIExpression(), !1390)
    #dbg_declare(ptr %tmp, !1391, !DIExpression(), !1395)
    #dbg_declare(ptr %ctrbyte, !1396, !DIExpression(), !1397)
    #dbg_declare(ptr %vi, !1398, !DIExpression(), !1399)
    #dbg_declare(ptr %param_m, !1400, !DIExpression(), !1401)
  %0 = load ptr, ptr %p.addr, align 4, !dbg !1402
  %m1 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %0, i32 0, i32 0, !dbg !1403
  %1 = load i32, ptr %m1, align 4, !dbg !1403
  store i32 %1, ptr %param_m, align 4, !dbg !1401
    #dbg_declare(ptr %param_n, !1404, !DIExpression(), !1405)
  %2 = load ptr, ptr %p.addr, align 4, !dbg !1406
  %n = getelementptr inbounds nuw %struct.mayo_params_t, ptr %2, i32 0, i32 1, !dbg !1407
  %3 = load i32, ptr %n, align 4, !dbg !1407
  store i32 %3, ptr %param_n, align 4, !dbg !1405
    #dbg_declare(ptr %param_o, !1408, !DIExpression(), !1409)
  %4 = load ptr, ptr %p.addr, align 4, !dbg !1410
  %o = getelementptr inbounds nuw %struct.mayo_params_t, ptr %4, i32 0, i32 2, !dbg !1411
  %5 = load i32, ptr %o, align 4, !dbg !1411
  store i32 %5, ptr %param_o, align 4, !dbg !1409
    #dbg_declare(ptr %param_k, !1412, !DIExpression(), !1413)
  %6 = load ptr, ptr %p.addr, align 4, !dbg !1414
  %k = getelementptr inbounds nuw %struct.mayo_params_t, ptr %6, i32 0, i32 3, !dbg !1415
  %7 = load i32, ptr %k, align 4, !dbg !1415
  store i32 %7, ptr %param_k, align 4, !dbg !1413
    #dbg_declare(ptr %param_v, !1416, !DIExpression(), !1417)
  %8 = load ptr, ptr %p.addr, align 4, !dbg !1418
  %n2 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %8, i32 0, i32 1, !dbg !1419
  %9 = load i32, ptr %n2, align 4, !dbg !1419
  %10 = load ptr, ptr %p.addr, align 4, !dbg !1418
  %o3 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %10, i32 0, i32 2, !dbg !1419
  %11 = load i32, ptr %o3, align 4, !dbg !1419
  %sub = sub nsw i32 %9, %11, !dbg !1419
  store i32 %sub, ptr %param_v, align 4, !dbg !1417
    #dbg_declare(ptr %param_m_bytes, !1420, !DIExpression(), !1421)
  %12 = load ptr, ptr %p.addr, align 4, !dbg !1422
  %m_bytes = getelementptr inbounds nuw %struct.mayo_params_t, ptr %12, i32 0, i32 6, !dbg !1423
  %13 = load i32, ptr %m_bytes, align 4, !dbg !1423
  store i32 %13, ptr %param_m_bytes, align 4, !dbg !1421
    #dbg_declare(ptr %param_v_bytes, !1424, !DIExpression(), !1425)
  %14 = load ptr, ptr %p.addr, align 4, !dbg !1426
  %v_bytes = getelementptr inbounds nuw %struct.mayo_params_t, ptr %14, i32 0, i32 8, !dbg !1427
  %15 = load i32, ptr %v_bytes, align 4, !dbg !1427
  store i32 %15, ptr %param_v_bytes, align 4, !dbg !1425
    #dbg_declare(ptr %param_r_bytes, !1428, !DIExpression(), !1429)
  %16 = load ptr, ptr %p.addr, align 4, !dbg !1430
  %r_bytes = getelementptr inbounds nuw %struct.mayo_params_t, ptr %16, i32 0, i32 9, !dbg !1431
  %17 = load i32, ptr %r_bytes, align 4, !dbg !1431
  store i32 %17, ptr %param_r_bytes, align 4, !dbg !1429
    #dbg_declare(ptr %param_sig_bytes, !1432, !DIExpression(), !1433)
  %18 = load ptr, ptr %p.addr, align 4, !dbg !1434
  %sig_bytes = getelementptr inbounds nuw %struct.mayo_params_t, ptr %18, i32 0, i32 16, !dbg !1435
  %19 = load i32, ptr %sig_bytes, align 4, !dbg !1435
  store i32 %19, ptr %param_sig_bytes, align 4, !dbg !1433
    #dbg_declare(ptr %param_A_cols, !1436, !DIExpression(), !1437)
  %20 = load ptr, ptr %p.addr, align 4, !dbg !1438
  %k4 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %20, i32 0, i32 3, !dbg !1439
  %21 = load i32, ptr %k4, align 4, !dbg !1439
  %22 = load ptr, ptr %p.addr, align 4, !dbg !1438
  %o5 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %22, i32 0, i32 2, !dbg !1439
  %23 = load i32, ptr %o5, align 4, !dbg !1439
  %mul = mul nsw i32 %21, %23, !dbg !1439
  %add = add nsw i32 %mul, 1, !dbg !1439
  store i32 %add, ptr %param_A_cols, align 4, !dbg !1437
    #dbg_declare(ptr %param_digest_bytes, !1440, !DIExpression(), !1441)
  %24 = load ptr, ptr %p.addr, align 4, !dbg !1442
  %digest_bytes = getelementptr inbounds nuw %struct.mayo_params_t, ptr %24, i32 0, i32 19, !dbg !1443
  %25 = load i32, ptr %digest_bytes, align 4, !dbg !1443
  store i32 %25, ptr %param_digest_bytes, align 4, !dbg !1441
    #dbg_declare(ptr %param_sk_seed_bytes, !1444, !DIExpression(), !1445)
  %26 = load ptr, ptr %p.addr, align 4, !dbg !1446
  %sk_seed_bytes = getelementptr inbounds nuw %struct.mayo_params_t, ptr %26, i32 0, i32 18, !dbg !1447
  %27 = load i32, ptr %sk_seed_bytes, align 4, !dbg !1447
  store i32 %27, ptr %param_sk_seed_bytes, align 4, !dbg !1445
    #dbg_declare(ptr %param_salt_bytes, !1448, !DIExpression(), !1449)
  %28 = load ptr, ptr %p.addr, align 4, !dbg !1450
  %salt_bytes = getelementptr inbounds nuw %struct.mayo_params_t, ptr %28, i32 0, i32 17, !dbg !1451
  %29 = load i32, ptr %salt_bytes, align 4, !dbg !1451
  store i32 %29, ptr %param_salt_bytes, align 4, !dbg !1449
  %30 = load ptr, ptr %p.addr, align 4, !dbg !1452
  %31 = load ptr, ptr %csk.addr, align 4, !dbg !1453
  %call = call i32 @mayo_expand_sk(ptr noundef %30, ptr noundef %31, ptr noundef %sk) #5, !dbg !1454
  store i32 %call, ptr %ret, align 4, !dbg !1455
  %32 = load i32, ptr %ret, align 4, !dbg !1456
  %cmp = icmp ne i32 %32, 0, !dbg !1458
  br i1 %cmp, label %if.then, label %if.end, !dbg !1458

if.then:                                          ; preds = %entry
  br label %err, !dbg !1459

if.end:                                           ; preds = %entry
  %33 = load ptr, ptr %csk.addr, align 4, !dbg !1461
  store ptr %33, ptr %seed_sk, align 4, !dbg !1462
  %arraydecay = getelementptr inbounds [145 x i8], ptr %tmp, i32 0, i32 0, !dbg !1463
  %34 = load i32, ptr %param_digest_bytes, align 4, !dbg !1464
  %35 = load ptr, ptr %m.addr, align 4, !dbg !1465
  %36 = load i32, ptr %mlen.addr, align 4, !dbg !1466
  %call6 = call i32 @shake256(ptr noundef %arraydecay, i32 noundef %34, ptr noundef %35, i32 noundef %36) #5, !dbg !1467
    #dbg_declare(ptr %P1, !1468, !DIExpression(), !1469)
  %p7 = getelementptr inbounds nuw %struct.sk_t, ptr %sk, i32 0, i32 0, !dbg !1470
  %arraydecay8 = getelementptr inbounds [113103 x i64], ptr %p7, i32 0, i32 0, !dbg !1471
  store ptr %arraydecay8, ptr %P1, align 4, !dbg !1469
    #dbg_declare(ptr %L, !1472, !DIExpression(), !1473)
  %37 = load ptr, ptr %P1, align 4, !dbg !1474
  %38 = load ptr, ptr %p.addr, align 4, !dbg !1475
  %n9 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %38, i32 0, i32 1, !dbg !1476
  %39 = load i32, ptr %n9, align 4, !dbg !1476
  %40 = load ptr, ptr %p.addr, align 4, !dbg !1475
  %o10 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %40, i32 0, i32 2, !dbg !1476
  %41 = load i32, ptr %o10, align 4, !dbg !1476
  %sub11 = sub nsw i32 %39, %41, !dbg !1476
  %42 = load ptr, ptr %p.addr, align 4, !dbg !1475
  %n12 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %42, i32 0, i32 1, !dbg !1476
  %43 = load i32, ptr %n12, align 4, !dbg !1476
  %44 = load ptr, ptr %p.addr, align 4, !dbg !1475
  %o13 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %44, i32 0, i32 2, !dbg !1476
  %45 = load i32, ptr %o13, align 4, !dbg !1476
  %sub14 = sub nsw i32 %43, %45, !dbg !1476
  %add15 = add nsw i32 %sub14, 1, !dbg !1476
  %mul16 = mul nsw i32 %sub11, %add15, !dbg !1476
  %div = sdiv i32 %mul16, 2, !dbg !1476
  %46 = load ptr, ptr %p.addr, align 4, !dbg !1475
  %m_vec_limbs = getelementptr inbounds nuw %struct.mayo_params_t, ptr %46, i32 0, i32 21, !dbg !1476
  %47 = load i32, ptr %m_vec_limbs, align 4, !dbg !1476
  %mul17 = mul nsw i32 %div, %47, !dbg !1476
  %add.ptr = getelementptr inbounds i64, ptr %37, i32 %mul17, !dbg !1477
  store ptr %add.ptr, ptr %L, align 4, !dbg !1473
    #dbg_declare(ptr %Mtmp, !1478, !DIExpression(), !1482)
  call void @llvm.memset.p0.i32(ptr align 8 %Mtmp, i8 0, i32 14688, i1 false), !dbg !1482
  %arraydecay18 = getelementptr inbounds [145 x i8], ptr %tmp, i32 0, i32 0, !dbg !1483
  %48 = load i32, ptr %param_digest_bytes, align 4, !dbg !1485
  %add.ptr19 = getelementptr inbounds i8, ptr %arraydecay18, i32 %48, !dbg !1486
  %49 = load i32, ptr %param_salt_bytes, align 4, !dbg !1487
  %call20 = call i32 @randombytes(ptr noundef %add.ptr19, i32 noundef %49) #5, !dbg !1488
  %cmp21 = icmp ne i32 %call20, 0, !dbg !1489
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !1489

if.then22:                                        ; preds = %if.end
  store i32 1, ptr %ret, align 4, !dbg !1490
  br label %err, !dbg !1492

if.end23:                                         ; preds = %if.end
  %arraydecay24 = getelementptr inbounds [145 x i8], ptr %tmp, i32 0, i32 0, !dbg !1493
  %50 = load i32, ptr %param_digest_bytes, align 4, !dbg !1494
  %add.ptr25 = getelementptr inbounds i8, ptr %arraydecay24, i32 %50, !dbg !1495
  %51 = load i32, ptr %param_salt_bytes, align 4, !dbg !1496
  %add.ptr26 = getelementptr inbounds i8, ptr %add.ptr25, i32 %51, !dbg !1497
  %52 = load ptr, ptr %seed_sk, align 4, !dbg !1498
  %53 = load i32, ptr %param_sk_seed_bytes, align 4, !dbg !1499
  %call27 = call ptr @memcpy(ptr noundef %add.ptr26, ptr noundef %52, i32 noundef %53) #5, !dbg !1500
  %arraydecay28 = getelementptr inbounds [40 x i8], ptr %salt, i32 0, i32 0, !dbg !1501
  %54 = load i32, ptr %param_salt_bytes, align 4, !dbg !1502
  %arraydecay29 = getelementptr inbounds [145 x i8], ptr %tmp, i32 0, i32 0, !dbg !1503
  %55 = load i32, ptr %param_digest_bytes, align 4, !dbg !1504
  %56 = load i32, ptr %param_salt_bytes, align 4, !dbg !1505
  %add30 = add nsw i32 %55, %56, !dbg !1506
  %57 = load i32, ptr %param_sk_seed_bytes, align 4, !dbg !1507
  %add31 = add nsw i32 %add30, %57, !dbg !1508
  %call32 = call i32 @shake256(ptr noundef %arraydecay28, i32 noundef %54, ptr noundef %arraydecay29, i32 noundef %add31) #5, !dbg !1509
  %arraydecay33 = getelementptr inbounds [145 x i8], ptr %tmp, i32 0, i32 0, !dbg !1510
  %58 = load i32, ptr %param_digest_bytes, align 4, !dbg !1511
  %add.ptr34 = getelementptr inbounds i8, ptr %arraydecay33, i32 %58, !dbg !1512
  %arraydecay35 = getelementptr inbounds [40 x i8], ptr %salt, i32 0, i32 0, !dbg !1513
  %59 = load i32, ptr %param_salt_bytes, align 4, !dbg !1514
  %call36 = call ptr @memcpy(ptr noundef %add.ptr34, ptr noundef %arraydecay35, i32 noundef %59) #5, !dbg !1515
  %arraydecay37 = getelementptr inbounds [145 x i8], ptr %tmp, i32 0, i32 0, !dbg !1516
  %60 = load i32, ptr %param_digest_bytes, align 4, !dbg !1517
  %add.ptr38 = getelementptr inbounds i8, ptr %arraydecay37, i32 %60, !dbg !1518
  %61 = load i32, ptr %param_salt_bytes, align 4, !dbg !1519
  %add.ptr39 = getelementptr inbounds i8, ptr %add.ptr38, i32 %61, !dbg !1520
  %62 = load i32, ptr %param_sk_seed_bytes, align 4, !dbg !1521
  %add.ptr40 = getelementptr inbounds i8, ptr %add.ptr39, i32 %62, !dbg !1522
  store ptr %add.ptr40, ptr %ctrbyte, align 4, !dbg !1523
  %arraydecay41 = getelementptr inbounds [71 x i8], ptr %tenc, i32 0, i32 0, !dbg !1524
  %63 = load i32, ptr %param_m_bytes, align 4, !dbg !1525
  %arraydecay42 = getelementptr inbounds [145 x i8], ptr %tmp, i32 0, i32 0, !dbg !1526
  %64 = load i32, ptr %param_digest_bytes, align 4, !dbg !1527
  %65 = load i32, ptr %param_salt_bytes, align 4, !dbg !1528
  %add43 = add nsw i32 %64, %65, !dbg !1529
  %call44 = call i32 @shake256(ptr noundef %arraydecay41, i32 noundef %63, ptr noundef %arraydecay42, i32 noundef %add43) #5, !dbg !1530
  %arraydecay45 = getelementptr inbounds [71 x i8], ptr %tenc, i32 0, i32 0, !dbg !1531
  %arraydecay46 = getelementptr inbounds [142 x i8], ptr %t, i32 0, i32 0, !dbg !1532
  %66 = load i32, ptr %param_m, align 4, !dbg !1533
  call void @decode(ptr noundef %arraydecay45, ptr noundef %arraydecay46, i32 noundef %66) #5, !dbg !1534
    #dbg_declare(ptr %ctr, !1535, !DIExpression(), !1537)
  store i32 0, ptr %ctr, align 4, !dbg !1537
  br label %for.cond, !dbg !1538

for.cond:                                         ; preds = %for.inc104, %if.end23
  %67 = load i32, ptr %ctr, align 4, !dbg !1539
  %cmp47 = icmp sle i32 %67, 255, !dbg !1541
  br i1 %cmp47, label %for.body, label %for.end106, !dbg !1542

for.body:                                         ; preds = %for.cond
  %68 = load i32, ptr %ctr, align 4, !dbg !1543
  %conv = trunc i32 %68 to i8, !dbg !1545
  %69 = load ptr, ptr %ctrbyte, align 4, !dbg !1546
  store i8 %conv, ptr %69, align 1, !dbg !1547
  %arraydecay48 = getelementptr inbounds [924 x i8], ptr %V, i32 0, i32 0, !dbg !1548
  %70 = load i32, ptr %param_k, align 4, !dbg !1549
  %71 = load i32, ptr %param_v_bytes, align 4, !dbg !1550
  %mul49 = mul nsw i32 %70, %71, !dbg !1551
  %72 = load i32, ptr %param_r_bytes, align 4, !dbg !1552
  %add50 = add nsw i32 %mul49, %72, !dbg !1553
  %arraydecay51 = getelementptr inbounds [145 x i8], ptr %tmp, i32 0, i32 0, !dbg !1554
  %73 = load i32, ptr %param_digest_bytes, align 4, !dbg !1555
  %74 = load i32, ptr %param_salt_bytes, align 4, !dbg !1556
  %add52 = add nsw i32 %73, %74, !dbg !1557
  %75 = load i32, ptr %param_sk_seed_bytes, align 4, !dbg !1558
  %add53 = add nsw i32 %add52, %75, !dbg !1559
  %add54 = add nsw i32 %add53, 1, !dbg !1560
  %call55 = call i32 @shake256(ptr noundef %arraydecay48, i32 noundef %add50, ptr noundef %arraydecay51, i32 noundef %add54) #5, !dbg !1561
    #dbg_declare(ptr %i, !1562, !DIExpression(), !1564)
  store i32 0, ptr %i, align 4, !dbg !1564
  br label %for.cond56, !dbg !1565

for.cond56:                                       ; preds = %for.inc, %for.body
  %76 = load i32, ptr %i, align 4, !dbg !1566
  %77 = load i32, ptr %param_k, align 4, !dbg !1568
  %sub57 = sub nsw i32 %77, 1, !dbg !1569
  %cmp58 = icmp sle i32 %76, %sub57, !dbg !1570
  br i1 %cmp58, label %for.body60, label %for.end, !dbg !1571

for.body60:                                       ; preds = %for.cond56
  %arraydecay61 = getelementptr inbounds [924 x i8], ptr %V, i32 0, i32 0, !dbg !1572
  %78 = load i32, ptr %i, align 4, !dbg !1574
  %79 = load i32, ptr %param_v_bytes, align 4, !dbg !1575
  %mul62 = mul nsw i32 %78, %79, !dbg !1576
  %add.ptr63 = getelementptr inbounds i8, ptr %arraydecay61, i32 %mul62, !dbg !1577
  %arraydecay64 = getelementptr inbounds [1704 x i8], ptr %Vdec, i32 0, i32 0, !dbg !1578
  %80 = load i32, ptr %i, align 4, !dbg !1579
  %81 = load i32, ptr %param_v, align 4, !dbg !1580
  %mul65 = mul nsw i32 %80, %81, !dbg !1581
  %add.ptr66 = getelementptr inbounds i8, ptr %arraydecay64, i32 %mul65, !dbg !1582
  %82 = load i32, ptr %param_v, align 4, !dbg !1583
  call void @decode(ptr noundef %add.ptr63, ptr noundef %add.ptr66, i32 noundef %82) #5, !dbg !1584
  br label %for.inc, !dbg !1585

for.inc:                                          ; preds = %for.body60
  %83 = load i32, ptr %i, align 4, !dbg !1586
  %inc = add nsw i32 %83, 1, !dbg !1586
  store i32 %inc, ptr %i, align 4, !dbg !1586
  br label %for.cond56, !dbg !1587, !llvm.loop !1588

for.end:                                          ; preds = %for.cond56
  %84 = load ptr, ptr %p.addr, align 4, !dbg !1590
  %arraydecay67 = getelementptr inbounds [1704 x i8], ptr %Vdec, i32 0, i32 0, !dbg !1591
  %85 = load ptr, ptr %L, align 4, !dbg !1592
  %86 = load ptr, ptr %P1, align 4, !dbg !1593
  %arraydecay68 = getelementptr inbounds [1836 x i64], ptr %Mtmp, i32 0, i32 0, !dbg !1594
  %arraydecay69 = getelementptr inbounds [29520 x i8], ptr %A, i32 0, i32 0, !dbg !1595
  call void @compute_M_and_VPV(ptr noundef %84, ptr noundef %arraydecay67, ptr noundef %85, ptr noundef %86, ptr noundef %arraydecay68, ptr noundef %arraydecay69) #5, !dbg !1596
  %87 = load ptr, ptr %p.addr, align 4, !dbg !1597
  %arraydecay70 = getelementptr inbounds [29520 x i8], ptr %A, i32 0, i32 0, !dbg !1598
  %arraydecay71 = getelementptr inbounds [142 x i8], ptr %t, i32 0, i32 0, !dbg !1599
  %arraydecay72 = getelementptr inbounds [142 x i8], ptr %y, i32 0, i32 0, !dbg !1600
  call void @compute_rhs(ptr noundef %87, ptr noundef %arraydecay70, ptr noundef %arraydecay71, ptr noundef %arraydecay72) #5, !dbg !1601
  %88 = load ptr, ptr %p.addr, align 4, !dbg !1602
  %arraydecay73 = getelementptr inbounds [1836 x i64], ptr %Mtmp, i32 0, i32 0, !dbg !1603
  %arraydecay74 = getelementptr inbounds [29520 x i8], ptr %A, i32 0, i32 0, !dbg !1604
  call void @compute_A(ptr noundef %88, ptr noundef %arraydecay73, ptr noundef %arraydecay74) #5, !dbg !1605
    #dbg_declare(ptr %i75, !1606, !DIExpression(), !1608)
  store i32 0, ptr %i75, align 4, !dbg !1608
  br label %for.cond76, !dbg !1609

for.cond76:                                       ; preds = %for.inc85, %for.end
  %89 = load i32, ptr %i75, align 4, !dbg !1610
  %90 = load i32, ptr %param_m, align 4, !dbg !1612
  %cmp77 = icmp slt i32 %89, %90, !dbg !1613
  br i1 %cmp77, label %for.body79, label %for.end87, !dbg !1614

for.body79:                                       ; preds = %for.cond76
  %91 = load i32, ptr %i75, align 4, !dbg !1615
  %add80 = add nsw i32 1, %91, !dbg !1617
  %92 = load i32, ptr %param_k, align 4, !dbg !1618
  %93 = load i32, ptr %param_o, align 4, !dbg !1619
  %mul81 = mul nsw i32 %92, %93, !dbg !1620
  %add82 = add nsw i32 %mul81, 1, !dbg !1621
  %mul83 = mul nsw i32 %add80, %add82, !dbg !1622
  %sub84 = sub nsw i32 %mul83, 1, !dbg !1623
  %arrayidx = getelementptr inbounds [29520 x i8], ptr %A, i32 0, i32 %sub84, !dbg !1624
  store i8 0, ptr %arrayidx, align 1, !dbg !1625
  br label %for.inc85, !dbg !1626

for.inc85:                                        ; preds = %for.body79
  %94 = load i32, ptr %i75, align 4, !dbg !1627
  %inc86 = add nsw i32 %94, 1, !dbg !1627
  store i32 %inc86, ptr %i75, align 4, !dbg !1627
  br label %for.cond76, !dbg !1628, !llvm.loop !1629

for.end87:                                        ; preds = %for.cond76
  %arraydecay88 = getelementptr inbounds [924 x i8], ptr %V, i32 0, i32 0, !dbg !1631
  %95 = load i32, ptr %param_k, align 4, !dbg !1632
  %96 = load i32, ptr %param_v_bytes, align 4, !dbg !1633
  %mul89 = mul nsw i32 %95, %96, !dbg !1634
  %add.ptr90 = getelementptr inbounds i8, ptr %arraydecay88, i32 %mul89, !dbg !1635
  %arraydecay91 = getelementptr inbounds [205 x i8], ptr %r, i32 0, i32 0, !dbg !1636
  %97 = load i32, ptr %param_k, align 4, !dbg !1637
  %98 = load i32, ptr %param_o, align 4, !dbg !1638
  %mul92 = mul nsw i32 %97, %98, !dbg !1639
  call void @decode(ptr noundef %add.ptr90, ptr noundef %arraydecay91, i32 noundef %mul92) #5, !dbg !1640
  %99 = load ptr, ptr %p.addr, align 4, !dbg !1641
  %arraydecay93 = getelementptr inbounds [29520 x i8], ptr %A, i32 0, i32 0, !dbg !1643
  %arraydecay94 = getelementptr inbounds [142 x i8], ptr %y, i32 0, i32 0, !dbg !1644
  %arraydecay95 = getelementptr inbounds [205 x i8], ptr %r, i32 0, i32 0, !dbg !1645
  %arraydecay96 = getelementptr inbounds [1848 x i8], ptr %x, i32 0, i32 0, !dbg !1646
  %100 = load i32, ptr %param_k, align 4, !dbg !1647
  %101 = load i32, ptr %param_o, align 4, !dbg !1648
  %102 = load i32, ptr %param_m, align 4, !dbg !1649
  %103 = load i32, ptr %param_A_cols, align 4, !dbg !1650
  %call97 = call i32 @sample_solution(ptr noundef %99, ptr noundef %arraydecay93, ptr noundef %arraydecay94, ptr noundef %arraydecay95, ptr noundef %arraydecay96, i32 noundef %100, i32 noundef %101, i32 noundef %102, i32 noundef %103) #5, !dbg !1651
  %tobool = icmp ne i32 %call97, 0, !dbg !1651
  br i1 %tobool, label %if.then98, label %if.else, !dbg !1651

if.then98:                                        ; preds = %for.end87
  br label %for.end106, !dbg !1652

if.else:                                          ; preds = %for.end87
  %arraydecay99 = getelementptr inbounds [1836 x i64], ptr %Mtmp, i32 0, i32 0, !dbg !1654
  %call100 = call ptr @memset(ptr noundef %arraydecay99, i32 noundef 0, i32 noundef 14688) #5, !dbg !1656
  %arraydecay101 = getelementptr inbounds [29520 x i8], ptr %A, i32 0, i32 0, !dbg !1657
  %call102 = call ptr @memset(ptr noundef %arraydecay101, i32 noundef 0, i32 noundef 29520) #5, !dbg !1658
  br label %if.end103

if.end103:                                        ; preds = %if.else
  br label %for.inc104, !dbg !1659

for.inc104:                                       ; preds = %if.end103
  %104 = load i32, ptr %ctr, align 4, !dbg !1660
  %inc105 = add nsw i32 %104, 1, !dbg !1660
  store i32 %inc105, ptr %ctr, align 4, !dbg !1660
  br label %for.cond, !dbg !1661, !llvm.loop !1662

for.end106:                                       ; preds = %if.then98, %for.cond
    #dbg_declare(ptr %i107, !1664, !DIExpression(), !1666)
  store i32 0, ptr %i107, align 4, !dbg !1666
  br label %for.cond108, !dbg !1667

for.cond108:                                      ; preds = %for.inc137, %for.end106
  %105 = load i32, ptr %i107, align 4, !dbg !1668
  %106 = load i32, ptr %param_k, align 4, !dbg !1670
  %sub109 = sub nsw i32 %106, 1, !dbg !1671
  %cmp110 = icmp sle i32 %105, %sub109, !dbg !1672
  br i1 %cmp110, label %for.body112, label %for.end139, !dbg !1673

for.body112:                                      ; preds = %for.cond108
  %arraydecay113 = getelementptr inbounds [1704 x i8], ptr %Vdec, i32 0, i32 0, !dbg !1674
  %107 = load i32, ptr %i107, align 4, !dbg !1676
  %108 = load i32, ptr %param_n, align 4, !dbg !1677
  %109 = load i32, ptr %param_o, align 4, !dbg !1678
  %sub114 = sub nsw i32 %108, %109, !dbg !1679
  %mul115 = mul nsw i32 %107, %sub114, !dbg !1680
  %add.ptr116 = getelementptr inbounds i8, ptr %arraydecay113, i32 %mul115, !dbg !1681
  store ptr %add.ptr116, ptr %vi, align 4, !dbg !1682
  %O = getelementptr inbounds nuw %struct.sk_t, ptr %sk, i32 0, i32 1, !dbg !1683
  %arraydecay117 = getelementptr inbounds [2414 x i8], ptr %O, i32 0, i32 0, !dbg !1684
  %arraydecay118 = getelementptr inbounds [1848 x i8], ptr %x, i32 0, i32 0, !dbg !1685
  %110 = load i32, ptr %i107, align 4, !dbg !1686
  %111 = load i32, ptr %param_o, align 4, !dbg !1687
  %mul119 = mul nsw i32 %110, %111, !dbg !1688
  %add.ptr120 = getelementptr inbounds i8, ptr %arraydecay118, i32 %mul119, !dbg !1689
  %arraydecay121 = getelementptr inbounds [142 x i8], ptr %Ox, i32 0, i32 0, !dbg !1690
  %112 = load i32, ptr %param_o, align 4, !dbg !1691
  %113 = load i32, ptr %param_n, align 4, !dbg !1692
  %114 = load i32, ptr %param_o, align 4, !dbg !1693
  %sub122 = sub nsw i32 %113, %114, !dbg !1694
  call void @mat_mul(ptr noundef %arraydecay117, ptr noundef %add.ptr120, ptr noundef %arraydecay121, i32 noundef %112, i32 noundef %sub122, i32 noundef 1) #5, !dbg !1695
  %115 = load ptr, ptr %vi, align 4, !dbg !1696
  %arraydecay123 = getelementptr inbounds [142 x i8], ptr %Ox, i32 0, i32 0, !dbg !1697
  %arraydecay124 = getelementptr inbounds [1848 x i8], ptr %s, i32 0, i32 0, !dbg !1698
  %116 = load i32, ptr %i107, align 4, !dbg !1699
  %117 = load i32, ptr %param_n, align 4, !dbg !1700
  %mul125 = mul nsw i32 %116, %117, !dbg !1701
  %add.ptr126 = getelementptr inbounds i8, ptr %arraydecay124, i32 %mul125, !dbg !1702
  %118 = load i32, ptr %param_n, align 4, !dbg !1703
  %119 = load i32, ptr %param_o, align 4, !dbg !1704
  %sub127 = sub nsw i32 %118, %119, !dbg !1705
  call void @mat_add(ptr noundef %115, ptr noundef %arraydecay123, ptr noundef %add.ptr126, i32 noundef %sub127, i32 noundef 1) #5, !dbg !1706
  %arraydecay128 = getelementptr inbounds [1848 x i8], ptr %s, i32 0, i32 0, !dbg !1707
  %120 = load i32, ptr %i107, align 4, !dbg !1708
  %121 = load i32, ptr %param_n, align 4, !dbg !1709
  %mul129 = mul nsw i32 %120, %121, !dbg !1710
  %add.ptr130 = getelementptr inbounds i8, ptr %arraydecay128, i32 %mul129, !dbg !1711
  %122 = load i32, ptr %param_n, align 4, !dbg !1712
  %123 = load i32, ptr %param_o, align 4, !dbg !1713
  %sub131 = sub nsw i32 %122, %123, !dbg !1714
  %add.ptr132 = getelementptr inbounds i8, ptr %add.ptr130, i32 %sub131, !dbg !1715
  %arraydecay133 = getelementptr inbounds [1848 x i8], ptr %x, i32 0, i32 0, !dbg !1716
  %124 = load i32, ptr %i107, align 4, !dbg !1717
  %125 = load i32, ptr %param_o, align 4, !dbg !1718
  %mul134 = mul nsw i32 %124, %125, !dbg !1719
  %add.ptr135 = getelementptr inbounds i8, ptr %arraydecay133, i32 %mul134, !dbg !1720
  %126 = load i32, ptr %param_o, align 4, !dbg !1721
  %call136 = call ptr @memcpy(ptr noundef %add.ptr132, ptr noundef %add.ptr135, i32 noundef %126) #5, !dbg !1722
  br label %for.inc137, !dbg !1723

for.inc137:                                       ; preds = %for.body112
  %127 = load i32, ptr %i107, align 4, !dbg !1724
  %inc138 = add nsw i32 %127, 1, !dbg !1724
  store i32 %inc138, ptr %i107, align 4, !dbg !1724
  br label %for.cond108, !dbg !1725, !llvm.loop !1726

for.end139:                                       ; preds = %for.cond108
  %arraydecay140 = getelementptr inbounds [1848 x i8], ptr %s, i32 0, i32 0, !dbg !1728
  %128 = load ptr, ptr %sig.addr, align 4, !dbg !1729
  %129 = load i32, ptr %param_n, align 4, !dbg !1730
  %130 = load i32, ptr %param_k, align 4, !dbg !1731
  %mul141 = mul nsw i32 %129, %130, !dbg !1732
  call void @encode(ptr noundef %arraydecay140, ptr noundef %128, i32 noundef %mul141) #5, !dbg !1733
  %131 = load ptr, ptr %sig.addr, align 4, !dbg !1734
  %132 = load i32, ptr %param_sig_bytes, align 4, !dbg !1735
  %add.ptr142 = getelementptr inbounds i8, ptr %131, i32 %132, !dbg !1736
  %133 = load i32, ptr %param_salt_bytes, align 4, !dbg !1737
  %idx.neg = sub i32 0, %133, !dbg !1738
  %add.ptr143 = getelementptr inbounds i8, ptr %add.ptr142, i32 %idx.neg, !dbg !1738
  %arraydecay144 = getelementptr inbounds [40 x i8], ptr %salt, i32 0, i32 0, !dbg !1739
  %134 = load i32, ptr %param_salt_bytes, align 4, !dbg !1740
  %call145 = call ptr @memcpy(ptr noundef %add.ptr143, ptr noundef %arraydecay144, i32 noundef %134) #5, !dbg !1741
  %135 = load i32, ptr %param_sig_bytes, align 4, !dbg !1742
  %136 = load ptr, ptr %siglen.addr, align 4, !dbg !1743
  store i32 %135, ptr %136, align 4, !dbg !1744
  br label %err, !dbg !1745

err:                                              ; preds = %for.end139, %if.then22, %if.then
    #dbg_label(!1746, !1747)
  %arraydecay146 = getelementptr inbounds [924 x i8], ptr %V, i32 0, i32 0, !dbg !1748
  call void @mayo_secure_clear(ptr noundef %arraydecay146, i32 noundef 924) #5, !dbg !1749
  %arraydecay147 = getelementptr inbounds [1704 x i8], ptr %Vdec, i32 0, i32 0, !dbg !1750
  call void @mayo_secure_clear(ptr noundef %arraydecay147, i32 noundef 1704) #5, !dbg !1751
  %arraydecay148 = getelementptr inbounds [29520 x i8], ptr %A, i32 0, i32 0, !dbg !1752
  call void @mayo_secure_clear(ptr noundef %arraydecay148, i32 noundef 29520) #5, !dbg !1753
  %arraydecay149 = getelementptr inbounds [205 x i8], ptr %r, i32 0, i32 0, !dbg !1754
  call void @mayo_secure_clear(ptr noundef %arraydecay149, i32 noundef 205) #5, !dbg !1755
  %O150 = getelementptr inbounds nuw %struct.sk_t, ptr %sk, i32 0, i32 1, !dbg !1756
  %arraydecay151 = getelementptr inbounds [2414 x i8], ptr %O150, i32 0, i32 0, !dbg !1757
  call void @mayo_secure_clear(ptr noundef %arraydecay151, i32 noundef 2414) #5, !dbg !1758
  call void @mayo_secure_clear(ptr noundef %sk, i32 noundef 907240) #5, !dbg !1759
  %arraydecay152 = getelementptr inbounds [142 x i8], ptr %Ox, i32 0, i32 0, !dbg !1760
  call void @mayo_secure_clear(ptr noundef %arraydecay152, i32 noundef 142) #5, !dbg !1761
  %arraydecay153 = getelementptr inbounds [145 x i8], ptr %tmp, i32 0, i32 0, !dbg !1762
  call void @mayo_secure_clear(ptr noundef %arraydecay153, i32 noundef 145) #5, !dbg !1763
  %arraydecay154 = getelementptr inbounds [1836 x i64], ptr %Mtmp, i32 0, i32 0, !dbg !1764
  call void @mayo_secure_clear(ptr noundef %arraydecay154, i32 noundef 14688) #5, !dbg !1765
  %137 = load i32, ptr %ret, align 4, !dbg !1766
  ret i32 %137, !dbg !1767
}

; Function Attrs: noinline nounwind optnone
define internal void @compute_M_and_VPV(ptr noundef %p, ptr noundef %Vdec, ptr noundef %L, ptr noundef %P1, ptr noundef %VL, ptr noundef %VP1V) #0 !dbg !1768 {
entry:
  %p.addr = alloca ptr, align 4
  %Vdec.addr = alloca ptr, align 4
  %L.addr = alloca ptr, align 4
  %P1.addr = alloca ptr, align 4
  %VL.addr = alloca ptr, align 4
  %VP1V.addr = alloca ptr, align 4
  %param_k = alloca i32, align 4
  %param_v = alloca i32, align 4
  %param_o = alloca i32, align 4
  %Pv = alloca [15336 x i64], align 8
  store ptr %p, ptr %p.addr, align 4
    #dbg_declare(ptr %p.addr, !1771, !DIExpression(), !1772)
  store ptr %Vdec, ptr %Vdec.addr, align 4
    #dbg_declare(ptr %Vdec.addr, !1773, !DIExpression(), !1774)
  store ptr %L, ptr %L.addr, align 4
    #dbg_declare(ptr %L.addr, !1775, !DIExpression(), !1776)
  store ptr %P1, ptr %P1.addr, align 4
    #dbg_declare(ptr %P1.addr, !1777, !DIExpression(), !1778)
  store ptr %VL, ptr %VL.addr, align 4
    #dbg_declare(ptr %VL.addr, !1779, !DIExpression(), !1780)
  store ptr %VP1V, ptr %VP1V.addr, align 4
    #dbg_declare(ptr %VP1V.addr, !1781, !DIExpression(), !1782)
    #dbg_declare(ptr %param_k, !1783, !DIExpression(), !1784)
  %0 = load ptr, ptr %p.addr, align 4, !dbg !1785
  %k = getelementptr inbounds nuw %struct.mayo_params_t, ptr %0, i32 0, i32 3, !dbg !1786
  %1 = load i32, ptr %k, align 4, !dbg !1786
  store i32 %1, ptr %param_k, align 4, !dbg !1784
    #dbg_declare(ptr %param_v, !1787, !DIExpression(), !1788)
  %2 = load ptr, ptr %p.addr, align 4, !dbg !1789
  %n = getelementptr inbounds nuw %struct.mayo_params_t, ptr %2, i32 0, i32 1, !dbg !1790
  %3 = load i32, ptr %n, align 4, !dbg !1790
  %4 = load ptr, ptr %p.addr, align 4, !dbg !1789
  %o = getelementptr inbounds nuw %struct.mayo_params_t, ptr %4, i32 0, i32 2, !dbg !1790
  %5 = load i32, ptr %o, align 4, !dbg !1790
  %sub = sub nsw i32 %3, %5, !dbg !1790
  store i32 %sub, ptr %param_v, align 4, !dbg !1788
    #dbg_declare(ptr %param_o, !1791, !DIExpression(), !1792)
  %6 = load ptr, ptr %p.addr, align 4, !dbg !1793
  %o1 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %6, i32 0, i32 2, !dbg !1794
  %7 = load i32, ptr %o1, align 4, !dbg !1794
  store i32 %7, ptr %param_o, align 4, !dbg !1792
  %8 = load ptr, ptr %p.addr, align 4, !dbg !1795
  %m_vec_limbs = getelementptr inbounds nuw %struct.mayo_params_t, ptr %8, i32 0, i32 21, !dbg !1796
  %9 = load i32, ptr %m_vec_limbs, align 4, !dbg !1796
  %10 = load ptr, ptr %Vdec.addr, align 4, !dbg !1797
  %11 = load ptr, ptr %L.addr, align 4, !dbg !1798
  %12 = load ptr, ptr %VL.addr, align 4, !dbg !1799
  %13 = load i32, ptr %param_k, align 4, !dbg !1800
  %14 = load i32, ptr %param_v, align 4, !dbg !1801
  %15 = load i32, ptr %param_o, align 4, !dbg !1802
  call void @mul_add_mat_x_m_mat(i32 noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, i32 noundef %13, i32 noundef %14, i32 noundef %15) #5, !dbg !1803
    #dbg_declare(ptr %Pv, !1804, !DIExpression(), !1808)
  call void @llvm.memset.p0.i32(ptr align 8 %Pv, i8 0, i32 122688, i1 false), !dbg !1808
  %16 = load ptr, ptr %p.addr, align 4, !dbg !1809
  %17 = load ptr, ptr %P1.addr, align 4, !dbg !1810
  %18 = load ptr, ptr %Vdec.addr, align 4, !dbg !1811
  %arraydecay = getelementptr inbounds [15336 x i64], ptr %Pv, i32 0, i32 0, !dbg !1812
  call void @P1_times_Vt(ptr noundef %16, ptr noundef %17, ptr noundef %18, ptr noundef %arraydecay) #5, !dbg !1813
  %19 = load ptr, ptr %p.addr, align 4, !dbg !1814
  %m_vec_limbs2 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %19, i32 0, i32 21, !dbg !1815
  %20 = load i32, ptr %m_vec_limbs2, align 4, !dbg !1815
  %21 = load ptr, ptr %Vdec.addr, align 4, !dbg !1816
  %arraydecay3 = getelementptr inbounds [15336 x i64], ptr %Pv, i32 0, i32 0, !dbg !1817
  %22 = load ptr, ptr %VP1V.addr, align 4, !dbg !1818
  %23 = load i32, ptr %param_k, align 4, !dbg !1819
  %24 = load i32, ptr %param_v, align 4, !dbg !1820
  %25 = load i32, ptr %param_k, align 4, !dbg !1821
  call void @mul_add_mat_x_m_mat(i32 noundef %20, ptr noundef %21, ptr noundef %arraydecay3, ptr noundef %22, i32 noundef %23, i32 noundef %24, i32 noundef %25) #5, !dbg !1822
  ret void, !dbg !1823
}

; Function Attrs: noinline nounwind optnone
define internal void @compute_rhs(ptr noundef %p, ptr noundef %vPv, ptr noundef %t, ptr noundef %y) #0 !dbg !1824 {
entry:
  %p.addr = alloca ptr, align 4
  %vPv.addr = alloca ptr, align 4
  %t.addr = alloca ptr, align 4
  %y.addr = alloca ptr, align 4
  %top_pos = alloca i32, align 4
  %m_vec_limbs = alloca i32, align 4
  %mask = alloca i64, align 8
  %i = alloca i32, align 4
  %temp = alloca [9 x i64], align 8
  %temp_bytes = alloca ptr, align 4
  %i13 = alloca i32, align 4
  %j = alloca i32, align 4
  %top = alloca i8, align 1
  %k30 = alloca i32, align 4
  %jj = alloca i32, align 4
  %k72 = alloca i32, align 4
  %i105 = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 4
    #dbg_declare(ptr %p.addr, !1827, !DIExpression(), !1828)
  store ptr %vPv, ptr %vPv.addr, align 4
    #dbg_declare(ptr %vPv.addr, !1829, !DIExpression(), !1830)
  store ptr %t, ptr %t.addr, align 4
    #dbg_declare(ptr %t.addr, !1831, !DIExpression(), !1832)
  store ptr %y, ptr %y.addr, align 4
    #dbg_declare(ptr %y.addr, !1833, !DIExpression(), !1834)
    #dbg_declare(ptr %top_pos, !1835, !DIExpression(), !1837)
  %0 = load ptr, ptr %p.addr, align 4, !dbg !1838
  %m = getelementptr inbounds nuw %struct.mayo_params_t, ptr %0, i32 0, i32 0, !dbg !1839
  %1 = load i32, ptr %m, align 4, !dbg !1839
  %sub = sub nsw i32 %1, 1, !dbg !1840
  %rem = srem i32 %sub, 16, !dbg !1841
  %mul = mul nsw i32 %rem, 4, !dbg !1842
  store i32 %mul, ptr %top_pos, align 4, !dbg !1837
    #dbg_declare(ptr %m_vec_limbs, !1843, !DIExpression(), !1844)
  %2 = load ptr, ptr %p.addr, align 4, !dbg !1845
  %m_vec_limbs1 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %2, i32 0, i32 21, !dbg !1846
  %3 = load i32, ptr %m_vec_limbs1, align 4, !dbg !1846
  store i32 %3, ptr %m_vec_limbs, align 4, !dbg !1844
  %4 = load ptr, ptr %p.addr, align 4, !dbg !1847
  %m2 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %4, i32 0, i32 0, !dbg !1849
  %5 = load i32, ptr %m2, align 4, !dbg !1849
  %rem3 = srem i32 %5, 16, !dbg !1850
  %cmp = icmp ne i32 %rem3, 0, !dbg !1851
  br i1 %cmp, label %if.then, label %if.end, !dbg !1851

if.then:                                          ; preds = %entry
    #dbg_declare(ptr %mask, !1852, !DIExpression(), !1854)
  store i64 1, ptr %mask, align 8, !dbg !1854
  %6 = load ptr, ptr %p.addr, align 4, !dbg !1855
  %m4 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %6, i32 0, i32 0, !dbg !1856
  %7 = load i32, ptr %m4, align 4, !dbg !1856
  %rem5 = srem i32 %7, 16, !dbg !1857
  %mul6 = mul nsw i32 %rem5, 4, !dbg !1858
  %8 = load i64, ptr %mask, align 8, !dbg !1859
  %sh_prom = zext i32 %mul6 to i64, !dbg !1859
  %shl = shl i64 %8, %sh_prom, !dbg !1859
  store i64 %shl, ptr %mask, align 8, !dbg !1859
  %9 = load i64, ptr %mask, align 8, !dbg !1860
  %sub7 = sub i64 %9, 1, !dbg !1860
  store i64 %sub7, ptr %mask, align 8, !dbg !1860
    #dbg_declare(ptr %i, !1861, !DIExpression(), !1863)
  store i32 0, ptr %i, align 4, !dbg !1863
  br label %for.cond, !dbg !1864

for.cond:                                         ; preds = %for.inc, %if.then
  %10 = load i32, ptr %i, align 4, !dbg !1865
  %11 = load ptr, ptr %p.addr, align 4, !dbg !1867
  %k = getelementptr inbounds nuw %struct.mayo_params_t, ptr %11, i32 0, i32 3, !dbg !1868
  %12 = load i32, ptr %k, align 4, !dbg !1868
  %13 = load ptr, ptr %p.addr, align 4, !dbg !1869
  %k8 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %13, i32 0, i32 3, !dbg !1870
  %14 = load i32, ptr %k8, align 4, !dbg !1870
  %mul9 = mul nsw i32 %12, %14, !dbg !1871
  %cmp10 = icmp slt i32 %10, %mul9, !dbg !1872
  br i1 %cmp10, label %for.body, label %for.end, !dbg !1873

for.body:                                         ; preds = %for.cond
  %15 = load i64, ptr %mask, align 8, !dbg !1874
  %16 = load ptr, ptr %vPv.addr, align 4, !dbg !1876
  %17 = load i32, ptr %i, align 4, !dbg !1877
  %18 = load i32, ptr %m_vec_limbs, align 4, !dbg !1878
  %mul11 = mul i32 %17, %18, !dbg !1879
  %19 = load i32, ptr %m_vec_limbs, align 4, !dbg !1880
  %add = add i32 %mul11, %19, !dbg !1881
  %sub12 = sub i32 %add, 1, !dbg !1882
  %arrayidx = getelementptr inbounds nuw i64, ptr %16, i32 %sub12, !dbg !1876
  %20 = load i64, ptr %arrayidx, align 8, !dbg !1883
  %and = and i64 %20, %15, !dbg !1883
  store i64 %and, ptr %arrayidx, align 8, !dbg !1883
  br label %for.inc, !dbg !1884

for.inc:                                          ; preds = %for.body
  %21 = load i32, ptr %i, align 4, !dbg !1885
  %inc = add nsw i32 %21, 1, !dbg !1885
  store i32 %inc, ptr %i, align 4, !dbg !1885
  br label %for.cond, !dbg !1886, !llvm.loop !1887

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !1889

if.end:                                           ; preds = %for.end, %entry
    #dbg_declare(ptr %temp, !1890, !DIExpression(), !1891)
  call void @llvm.memset.p0.i32(ptr align 8 %temp, i8 0, i32 72, i1 false), !dbg !1891
    #dbg_declare(ptr %temp_bytes, !1892, !DIExpression(), !1893)
  %arraydecay = getelementptr inbounds [9 x i64], ptr %temp, i32 0, i32 0, !dbg !1894
  store ptr %arraydecay, ptr %temp_bytes, align 4, !dbg !1893
    #dbg_declare(ptr %i13, !1895, !DIExpression(), !1897)
  %22 = load ptr, ptr %p.addr, align 4, !dbg !1898
  %k14 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %22, i32 0, i32 3, !dbg !1899
  %23 = load i32, ptr %k14, align 4, !dbg !1899
  %sub15 = sub nsw i32 %23, 1, !dbg !1900
  store i32 %sub15, ptr %i13, align 4, !dbg !1897
  br label %for.cond16, !dbg !1901

for.cond16:                                       ; preds = %for.inc102, %if.end
  %24 = load i32, ptr %i13, align 4, !dbg !1902
  %cmp17 = icmp sge i32 %24, 0, !dbg !1904
  br i1 %cmp17, label %for.body18, label %for.end104, !dbg !1905

for.body18:                                       ; preds = %for.cond16
    #dbg_declare(ptr %j, !1906, !DIExpression(), !1909)
  %25 = load i32, ptr %i13, align 4, !dbg !1910
  store i32 %25, ptr %j, align 4, !dbg !1909
  br label %for.cond19, !dbg !1911

for.cond19:                                       ; preds = %for.inc99, %for.body18
  %26 = load i32, ptr %j, align 4, !dbg !1912
  %27 = load ptr, ptr %p.addr, align 4, !dbg !1914
  %k20 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %27, i32 0, i32 3, !dbg !1915
  %28 = load i32, ptr %k20, align 4, !dbg !1915
  %cmp21 = icmp slt i32 %26, %28, !dbg !1916
  br i1 %cmp21, label %for.body22, label %for.end101, !dbg !1917

for.body22:                                       ; preds = %for.cond19
    #dbg_declare(ptr %top, !1918, !DIExpression(), !1920)
  %29 = load i32, ptr %m_vec_limbs, align 4, !dbg !1921
  %sub23 = sub i32 %29, 1, !dbg !1922
  %arrayidx24 = getelementptr inbounds nuw [9 x i64], ptr %temp, i32 0, i32 %sub23, !dbg !1923
  %30 = load i64, ptr %arrayidx24, align 8, !dbg !1923
  %31 = load i32, ptr %top_pos, align 4, !dbg !1924
  %sh_prom25 = zext i32 %31 to i64, !dbg !1925
  %shr = lshr i64 %30, %sh_prom25, !dbg !1925
  %rem26 = urem i64 %shr, 16, !dbg !1926
  %conv = trunc i64 %rem26 to i8, !dbg !1927
  store i8 %conv, ptr %top, align 1, !dbg !1920
  %32 = load i32, ptr %m_vec_limbs, align 4, !dbg !1928
  %sub27 = sub i32 %32, 1, !dbg !1929
  %arrayidx28 = getelementptr inbounds nuw [9 x i64], ptr %temp, i32 0, i32 %sub27, !dbg !1930
  %33 = load i64, ptr %arrayidx28, align 8, !dbg !1931
  %shl29 = shl i64 %33, 4, !dbg !1931
  store i64 %shl29, ptr %arrayidx28, align 8, !dbg !1931
    #dbg_declare(ptr %k30, !1932, !DIExpression(), !1934)
  %34 = load i32, ptr %m_vec_limbs, align 4, !dbg !1935
  %sub31 = sub i32 %34, 2, !dbg !1936
  store i32 %sub31, ptr %k30, align 4, !dbg !1934
  br label %for.cond32, !dbg !1937

for.cond32:                                       ; preds = %for.inc42, %for.body22
  %35 = load i32, ptr %k30, align 4, !dbg !1938
  %cmp33 = icmp sge i32 %35, 0, !dbg !1940
  br i1 %cmp33, label %for.body35, label %for.end43, !dbg !1941

for.body35:                                       ; preds = %for.cond32
  %36 = load i32, ptr %k30, align 4, !dbg !1942
  %arrayidx36 = getelementptr inbounds [9 x i64], ptr %temp, i32 0, i32 %36, !dbg !1944
  %37 = load i64, ptr %arrayidx36, align 8, !dbg !1944
  %shr37 = lshr i64 %37, 60, !dbg !1945
  %38 = load i32, ptr %k30, align 4, !dbg !1946
  %add38 = add nsw i32 %38, 1, !dbg !1947
  %arrayidx39 = getelementptr inbounds [9 x i64], ptr %temp, i32 0, i32 %add38, !dbg !1948
  %39 = load i64, ptr %arrayidx39, align 8, !dbg !1949
  %xor = xor i64 %39, %shr37, !dbg !1949
  store i64 %xor, ptr %arrayidx39, align 8, !dbg !1949
  %40 = load i32, ptr %k30, align 4, !dbg !1950
  %arrayidx40 = getelementptr inbounds [9 x i64], ptr %temp, i32 0, i32 %40, !dbg !1951
  %41 = load i64, ptr %arrayidx40, align 8, !dbg !1952
  %shl41 = shl i64 %41, 4, !dbg !1952
  store i64 %shl41, ptr %arrayidx40, align 8, !dbg !1952
  br label %for.inc42, !dbg !1953

for.inc42:                                        ; preds = %for.body35
  %42 = load i32, ptr %k30, align 4, !dbg !1954
  %dec = add nsw i32 %42, -1, !dbg !1954
  store i32 %dec, ptr %k30, align 4, !dbg !1954
  br label %for.cond32, !dbg !1955, !llvm.loop !1956

for.end43:                                        ; preds = %for.cond32
    #dbg_declare(ptr %jj, !1958, !DIExpression(), !1960)
  store i32 0, ptr %jj, align 4, !dbg !1960
  br label %for.cond44, !dbg !1961

for.cond44:                                       ; preds = %for.inc69, %for.end43
  %43 = load i32, ptr %jj, align 4, !dbg !1962
  %cmp45 = icmp slt i32 %43, 4, !dbg !1964
  br i1 %cmp45, label %for.body47, label %for.end71, !dbg !1965

for.body47:                                       ; preds = %for.cond44
  %44 = load i32, ptr %jj, align 4, !dbg !1966
  %rem48 = srem i32 %44, 2, !dbg !1969
  %cmp49 = icmp eq i32 %rem48, 0, !dbg !1970
  br i1 %cmp49, label %if.then51, label %if.else, !dbg !1970

if.then51:                                        ; preds = %for.body47
  %45 = load i8, ptr %top, align 1, !dbg !1971
  %46 = load ptr, ptr %p.addr, align 4, !dbg !1973
  %f_tail = getelementptr inbounds nuw %struct.mayo_params_t, ptr %46, i32 0, i32 5, !dbg !1974
  %47 = load ptr, ptr %f_tail, align 4, !dbg !1974
  %48 = load i32, ptr %jj, align 4, !dbg !1975
  %arrayidx52 = getelementptr inbounds i8, ptr %47, i32 %48, !dbg !1974
  %49 = load i8, ptr %arrayidx52, align 1, !dbg !1974
  %call = call zeroext i8 @mul_f(i8 noundef zeroext %45, i8 noundef zeroext %49) #5, !dbg !1976
  %conv53 = zext i8 %call to i32, !dbg !1976
  %50 = load ptr, ptr %temp_bytes, align 4, !dbg !1977
  %51 = load i32, ptr %jj, align 4, !dbg !1978
  %div = sdiv i32 %51, 2, !dbg !1979
  %arrayidx54 = getelementptr inbounds i8, ptr %50, i32 %div, !dbg !1977
  %52 = load i8, ptr %arrayidx54, align 1, !dbg !1980
  %conv55 = zext i8 %52 to i32, !dbg !1980
  %xor56 = xor i32 %conv55, %conv53, !dbg !1980
  %conv57 = trunc i32 %xor56 to i8, !dbg !1980
  store i8 %conv57, ptr %arrayidx54, align 1, !dbg !1980
  br label %if.end68, !dbg !1981

if.else:                                          ; preds = %for.body47
  %53 = load i8, ptr %top, align 1, !dbg !1982
  %54 = load ptr, ptr %p.addr, align 4, !dbg !1984
  %f_tail58 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %54, i32 0, i32 5, !dbg !1985
  %55 = load ptr, ptr %f_tail58, align 4, !dbg !1985
  %56 = load i32, ptr %jj, align 4, !dbg !1986
  %arrayidx59 = getelementptr inbounds i8, ptr %55, i32 %56, !dbg !1985
  %57 = load i8, ptr %arrayidx59, align 1, !dbg !1985
  %call60 = call zeroext i8 @mul_f(i8 noundef zeroext %53, i8 noundef zeroext %57) #5, !dbg !1987
  %conv61 = zext i8 %call60 to i32, !dbg !1987
  %shl62 = shl i32 %conv61, 4, !dbg !1988
  %58 = load ptr, ptr %temp_bytes, align 4, !dbg !1989
  %59 = load i32, ptr %jj, align 4, !dbg !1990
  %div63 = sdiv i32 %59, 2, !dbg !1991
  %arrayidx64 = getelementptr inbounds i8, ptr %58, i32 %div63, !dbg !1989
  %60 = load i8, ptr %arrayidx64, align 1, !dbg !1992
  %conv65 = zext i8 %60 to i32, !dbg !1992
  %xor66 = xor i32 %conv65, %shl62, !dbg !1992
  %conv67 = trunc i32 %xor66 to i8, !dbg !1992
  store i8 %conv67, ptr %arrayidx64, align 1, !dbg !1992
  br label %if.end68

if.end68:                                         ; preds = %if.else, %if.then51
  br label %for.inc69, !dbg !1993

for.inc69:                                        ; preds = %if.end68
  %61 = load i32, ptr %jj, align 4, !dbg !1994
  %inc70 = add nsw i32 %61, 1, !dbg !1994
  store i32 %inc70, ptr %jj, align 4, !dbg !1994
  br label %for.cond44, !dbg !1995, !llvm.loop !1996

for.end71:                                        ; preds = %for.cond44
    #dbg_declare(ptr %k72, !1998, !DIExpression(), !2000)
  store i32 0, ptr %k72, align 4, !dbg !2000
  br label %for.cond73, !dbg !2001

for.cond73:                                       ; preds = %for.inc96, %for.end71
  %62 = load i32, ptr %k72, align 4, !dbg !2002
  %63 = load i32, ptr %m_vec_limbs, align 4, !dbg !2004
  %cmp74 = icmp ult i32 %62, %63, !dbg !2005
  br i1 %cmp74, label %for.body76, label %for.end98, !dbg !2006

for.body76:                                       ; preds = %for.cond73
  %64 = load ptr, ptr %vPv.addr, align 4, !dbg !2007
  %65 = load i32, ptr %i13, align 4, !dbg !2009
  %66 = load ptr, ptr %p.addr, align 4, !dbg !2010
  %k77 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %66, i32 0, i32 3, !dbg !2011
  %67 = load i32, ptr %k77, align 4, !dbg !2011
  %mul78 = mul nsw i32 %65, %67, !dbg !2012
  %68 = load i32, ptr %j, align 4, !dbg !2013
  %add79 = add nsw i32 %mul78, %68, !dbg !2014
  %69 = load i32, ptr %m_vec_limbs, align 4, !dbg !2015
  %mul80 = mul i32 %add79, %69, !dbg !2016
  %70 = load i32, ptr %k72, align 4, !dbg !2017
  %add81 = add i32 %mul80, %70, !dbg !2018
  %arrayidx82 = getelementptr inbounds nuw i64, ptr %64, i32 %add81, !dbg !2007
  %71 = load i64, ptr %arrayidx82, align 8, !dbg !2007
  %72 = load i32, ptr %i13, align 4, !dbg !2019
  %73 = load i32, ptr %j, align 4, !dbg !2020
  %cmp83 = icmp ne i32 %72, %73, !dbg !2021
  %conv84 = zext i1 %cmp83 to i32, !dbg !2021
  %conv85 = sext i32 %conv84 to i64, !dbg !2022
  %74 = load ptr, ptr %vPv.addr, align 4, !dbg !2023
  %75 = load i32, ptr %j, align 4, !dbg !2024
  %76 = load ptr, ptr %p.addr, align 4, !dbg !2025
  %k86 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %76, i32 0, i32 3, !dbg !2026
  %77 = load i32, ptr %k86, align 4, !dbg !2026
  %mul87 = mul nsw i32 %75, %77, !dbg !2027
  %78 = load i32, ptr %i13, align 4, !dbg !2028
  %add88 = add nsw i32 %mul87, %78, !dbg !2029
  %79 = load i32, ptr %m_vec_limbs, align 4, !dbg !2030
  %mul89 = mul i32 %add88, %79, !dbg !2031
  %80 = load i32, ptr %k72, align 4, !dbg !2032
  %add90 = add i32 %mul89, %80, !dbg !2033
  %arrayidx91 = getelementptr inbounds nuw i64, ptr %74, i32 %add90, !dbg !2023
  %81 = load i64, ptr %arrayidx91, align 8, !dbg !2023
  %mul92 = mul i64 %conv85, %81, !dbg !2034
  %xor93 = xor i64 %71, %mul92, !dbg !2035
  %82 = load i32, ptr %k72, align 4, !dbg !2036
  %arrayidx94 = getelementptr inbounds nuw [9 x i64], ptr %temp, i32 0, i32 %82, !dbg !2037
  %83 = load i64, ptr %arrayidx94, align 8, !dbg !2038
  %xor95 = xor i64 %83, %xor93, !dbg !2038
  store i64 %xor95, ptr %arrayidx94, align 8, !dbg !2038
  br label %for.inc96, !dbg !2039

for.inc96:                                        ; preds = %for.body76
  %84 = load i32, ptr %k72, align 4, !dbg !2040
  %inc97 = add i32 %84, 1, !dbg !2040
  store i32 %inc97, ptr %k72, align 4, !dbg !2040
  br label %for.cond73, !dbg !2041, !llvm.loop !2042

for.end98:                                        ; preds = %for.cond73
  br label %for.inc99, !dbg !2044

for.inc99:                                        ; preds = %for.end98
  %85 = load i32, ptr %j, align 4, !dbg !2045
  %inc100 = add nsw i32 %85, 1, !dbg !2045
  store i32 %inc100, ptr %j, align 4, !dbg !2045
  br label %for.cond19, !dbg !2046, !llvm.loop !2047

for.end101:                                       ; preds = %for.cond19
  br label %for.inc102, !dbg !2049

for.inc102:                                       ; preds = %for.end101
  %86 = load i32, ptr %i13, align 4, !dbg !2050
  %dec103 = add nsw i32 %86, -1, !dbg !2050
  store i32 %dec103, ptr %i13, align 4, !dbg !2050
  br label %for.cond16, !dbg !2051, !llvm.loop !2052

for.end104:                                       ; preds = %for.cond16
    #dbg_declare(ptr %i105, !2054, !DIExpression(), !2056)
  store i32 0, ptr %i105, align 4, !dbg !2056
  br label %for.cond106, !dbg !2057

for.cond106:                                      ; preds = %for.inc131, %for.end104
  %87 = load i32, ptr %i105, align 4, !dbg !2058
  %88 = load ptr, ptr %p.addr, align 4, !dbg !2060
  %m107 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %88, i32 0, i32 0, !dbg !2061
  %89 = load i32, ptr %m107, align 4, !dbg !2061
  %cmp108 = icmp slt i32 %87, %89, !dbg !2062
  br i1 %cmp108, label %for.body110, label %for.end133, !dbg !2063

for.body110:                                      ; preds = %for.cond106
  %90 = load ptr, ptr %t.addr, align 4, !dbg !2064
  %91 = load i32, ptr %i105, align 4, !dbg !2066
  %arrayidx111 = getelementptr inbounds i8, ptr %90, i32 %91, !dbg !2064
  %92 = load i8, ptr %arrayidx111, align 1, !dbg !2064
  %conv112 = zext i8 %92 to i32, !dbg !2064
  %93 = load ptr, ptr %temp_bytes, align 4, !dbg !2067
  %94 = load i32, ptr %i105, align 4, !dbg !2068
  %div113 = sdiv i32 %94, 2, !dbg !2069
  %arrayidx114 = getelementptr inbounds i8, ptr %93, i32 %div113, !dbg !2067
  %95 = load i8, ptr %arrayidx114, align 1, !dbg !2067
  %conv115 = zext i8 %95 to i32, !dbg !2067
  %and116 = and i32 %conv115, 15, !dbg !2070
  %xor117 = xor i32 %conv112, %and116, !dbg !2071
  %conv118 = trunc i32 %xor117 to i8, !dbg !2064
  %96 = load ptr, ptr %y.addr, align 4, !dbg !2072
  %97 = load i32, ptr %i105, align 4, !dbg !2073
  %arrayidx119 = getelementptr inbounds i8, ptr %96, i32 %97, !dbg !2072
  store i8 %conv118, ptr %arrayidx119, align 1, !dbg !2074
  %98 = load ptr, ptr %t.addr, align 4, !dbg !2075
  %99 = load i32, ptr %i105, align 4, !dbg !2076
  %add120 = add nsw i32 %99, 1, !dbg !2077
  %arrayidx121 = getelementptr inbounds i8, ptr %98, i32 %add120, !dbg !2075
  %100 = load i8, ptr %arrayidx121, align 1, !dbg !2075
  %conv122 = zext i8 %100 to i32, !dbg !2075
  %101 = load ptr, ptr %temp_bytes, align 4, !dbg !2078
  %102 = load i32, ptr %i105, align 4, !dbg !2079
  %div123 = sdiv i32 %102, 2, !dbg !2080
  %arrayidx124 = getelementptr inbounds i8, ptr %101, i32 %div123, !dbg !2078
  %103 = load i8, ptr %arrayidx124, align 1, !dbg !2078
  %conv125 = zext i8 %103 to i32, !dbg !2078
  %shr126 = ashr i32 %conv125, 4, !dbg !2081
  %xor127 = xor i32 %conv122, %shr126, !dbg !2082
  %conv128 = trunc i32 %xor127 to i8, !dbg !2075
  %104 = load ptr, ptr %y.addr, align 4, !dbg !2083
  %105 = load i32, ptr %i105, align 4, !dbg !2084
  %add129 = add nsw i32 %105, 1, !dbg !2085
  %arrayidx130 = getelementptr inbounds i8, ptr %104, i32 %add129, !dbg !2083
  store i8 %conv128, ptr %arrayidx130, align 1, !dbg !2086
  br label %for.inc131, !dbg !2087

for.inc131:                                       ; preds = %for.body110
  %106 = load i32, ptr %i105, align 4, !dbg !2088
  %add132 = add nsw i32 %106, 2, !dbg !2088
  store i32 %add132, ptr %i105, align 4, !dbg !2088
  br label %for.cond106, !dbg !2089, !llvm.loop !2090

for.end133:                                       ; preds = %for.cond106
  ret void, !dbg !2092
}

; Function Attrs: noinline nounwind optnone
define internal void @compute_A(ptr noundef %p, ptr noundef %VtL, ptr noundef %A_out) #0 !dbg !2093 {
entry:
  %p.addr = alloca ptr, align 4
  %VtL.addr = alloca ptr, align 4
  %A_out.addr = alloca ptr, align 4
  %bits_to_shift = alloca i32, align 4
  %words_to_shift = alloca i32, align 4
  %m_vec_limbs = alloca i32, align 4
  %A = alloca [3744 x i64], align 8
  %A_width = alloca i32, align 4
  %Mi = alloca ptr, align 4
  %Mj = alloca ptr, align 4
  %mask = alloca i64, align 8
  %i = alloca i32, align 4
  %i13 = alloca i32, align 4
  %j = alloca i32, align 4
  %c = alloca i32, align 4
  %k31 = alloca i32, align 4
  %c76 = alloca i32, align 4
  %k81 = alloca i32, align 4
  %c133 = alloca i32, align 4
  %tab = alloca [16 x i8], align 1
  %i151 = alloca i32, align 4
  %low_bit_in_nibble = alloca i64, align 8
  %c179 = alloca i32, align 4
  %r = alloca i32, align 4
  %pos = alloca i32, align 4
  %t0 = alloca i64, align 8
  %t1 = alloca i64, align 8
  %t2 = alloca i64, align 8
  %t3 = alloca i64, align 8
  %t = alloca i32, align 4
  %r257 = alloca i32, align 4
  %c263 = alloca i32, align 4
  %i273 = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 4
    #dbg_declare(ptr %p.addr, !2096, !DIExpression(), !2097)
  store ptr %VtL, ptr %VtL.addr, align 4
    #dbg_declare(ptr %VtL.addr, !2098, !DIExpression(), !2099)
  store ptr %A_out, ptr %A_out.addr, align 4
    #dbg_declare(ptr %A_out.addr, !2100, !DIExpression(), !2101)
    #dbg_declare(ptr %bits_to_shift, !2102, !DIExpression(), !2103)
  store i32 0, ptr %bits_to_shift, align 4, !dbg !2103
    #dbg_declare(ptr %words_to_shift, !2104, !DIExpression(), !2105)
  store i32 0, ptr %words_to_shift, align 4, !dbg !2105
    #dbg_declare(ptr %m_vec_limbs, !2106, !DIExpression(), !2107)
  %0 = load ptr, ptr %p.addr, align 4, !dbg !2108
  %m_vec_limbs1 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %0, i32 0, i32 21, !dbg !2109
  %1 = load i32, ptr %m_vec_limbs1, align 4, !dbg !2109
  store i32 %1, ptr %m_vec_limbs, align 4, !dbg !2107
    #dbg_declare(ptr %A, !2110, !DIExpression(), !2114)
  call void @llvm.memset.p0.i32(ptr align 8 %A, i8 0, i32 29952, i1 false), !dbg !2114
    #dbg_declare(ptr %A_width, !2115, !DIExpression(), !2116)
  %2 = load ptr, ptr %p.addr, align 4, !dbg !2117
  %o = getelementptr inbounds nuw %struct.mayo_params_t, ptr %2, i32 0, i32 2, !dbg !2118
  %3 = load i32, ptr %o, align 4, !dbg !2118
  %4 = load ptr, ptr %p.addr, align 4, !dbg !2119
  %k = getelementptr inbounds nuw %struct.mayo_params_t, ptr %4, i32 0, i32 3, !dbg !2120
  %5 = load i32, ptr %k, align 4, !dbg !2120
  %mul = mul nsw i32 %3, %5, !dbg !2121
  %add = add nsw i32 %mul, 15, !dbg !2122
  %div = sdiv i32 %add, 16, !dbg !2123
  %mul2 = mul nsw i32 %div, 16, !dbg !2124
  store i32 %mul2, ptr %A_width, align 4, !dbg !2116
    #dbg_declare(ptr %Mi, !2125, !DIExpression(), !2126)
    #dbg_declare(ptr %Mj, !2127, !DIExpression(), !2128)
  %6 = load ptr, ptr %p.addr, align 4, !dbg !2129
  %m = getelementptr inbounds nuw %struct.mayo_params_t, ptr %6, i32 0, i32 0, !dbg !2131
  %7 = load i32, ptr %m, align 4, !dbg !2131
  %rem = srem i32 %7, 16, !dbg !2132
  %cmp = icmp ne i32 %rem, 0, !dbg !2133
  br i1 %cmp, label %if.then, label %if.end, !dbg !2133

if.then:                                          ; preds = %entry
    #dbg_declare(ptr %mask, !2134, !DIExpression(), !2136)
  store i64 1, ptr %mask, align 8, !dbg !2136
  %8 = load ptr, ptr %p.addr, align 4, !dbg !2137
  %m3 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %8, i32 0, i32 0, !dbg !2138
  %9 = load i32, ptr %m3, align 4, !dbg !2138
  %rem4 = srem i32 %9, 16, !dbg !2139
  %mul5 = mul nsw i32 %rem4, 4, !dbg !2140
  %10 = load i64, ptr %mask, align 8, !dbg !2141
  %sh_prom = zext i32 %mul5 to i64, !dbg !2141
  %shl = shl i64 %10, %sh_prom, !dbg !2141
  store i64 %shl, ptr %mask, align 8, !dbg !2141
  %11 = load i64, ptr %mask, align 8, !dbg !2142
  %sub = sub i64 %11, 1, !dbg !2142
  store i64 %sub, ptr %mask, align 8, !dbg !2142
    #dbg_declare(ptr %i, !2143, !DIExpression(), !2145)
  store i32 0, ptr %i, align 4, !dbg !2145
  br label %for.cond, !dbg !2146

for.cond:                                         ; preds = %for.inc, %if.then
  %12 = load i32, ptr %i, align 4, !dbg !2147
  %13 = load ptr, ptr %p.addr, align 4, !dbg !2149
  %o6 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %13, i32 0, i32 2, !dbg !2150
  %14 = load i32, ptr %o6, align 4, !dbg !2150
  %15 = load ptr, ptr %p.addr, align 4, !dbg !2151
  %k7 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %15, i32 0, i32 3, !dbg !2152
  %16 = load i32, ptr %k7, align 4, !dbg !2152
  %mul8 = mul nsw i32 %14, %16, !dbg !2153
  %cmp9 = icmp slt i32 %12, %mul8, !dbg !2154
  br i1 %cmp9, label %for.body, label %for.end, !dbg !2155

for.body:                                         ; preds = %for.cond
  %17 = load i64, ptr %mask, align 8, !dbg !2156
  %18 = load ptr, ptr %VtL.addr, align 4, !dbg !2158
  %19 = load i32, ptr %i, align 4, !dbg !2159
  %20 = load i32, ptr %m_vec_limbs, align 4, !dbg !2160
  %mul10 = mul nsw i32 %19, %20, !dbg !2161
  %21 = load i32, ptr %m_vec_limbs, align 4, !dbg !2162
  %add11 = add nsw i32 %mul10, %21, !dbg !2163
  %sub12 = sub nsw i32 %add11, 1, !dbg !2164
  %arrayidx = getelementptr inbounds i64, ptr %18, i32 %sub12, !dbg !2158
  %22 = load i64, ptr %arrayidx, align 8, !dbg !2165
  %and = and i64 %22, %17, !dbg !2165
  store i64 %and, ptr %arrayidx, align 8, !dbg !2165
  br label %for.inc, !dbg !2166

for.inc:                                          ; preds = %for.body
  %23 = load i32, ptr %i, align 4, !dbg !2167
  %inc = add nsw i32 %23, 1, !dbg !2167
  store i32 %inc, ptr %i, align 4, !dbg !2167
  br label %for.cond, !dbg !2168, !llvm.loop !2169

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !2171

if.end:                                           ; preds = %for.end, %entry
    #dbg_declare(ptr %i13, !2172, !DIExpression(), !2174)
  store i32 0, ptr %i13, align 4, !dbg !2174
  br label %for.cond14, !dbg !2175

for.cond14:                                       ; preds = %for.inc130, %if.end
  %24 = load i32, ptr %i13, align 4, !dbg !2176
  %25 = load ptr, ptr %p.addr, align 4, !dbg !2178
  %k15 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %25, i32 0, i32 3, !dbg !2179
  %26 = load i32, ptr %k15, align 4, !dbg !2179
  %sub16 = sub nsw i32 %26, 1, !dbg !2180
  %cmp17 = icmp sle i32 %24, %sub16, !dbg !2181
  br i1 %cmp17, label %for.body18, label %for.end132, !dbg !2182

for.body18:                                       ; preds = %for.cond14
    #dbg_declare(ptr %j, !2183, !DIExpression(), !2186)
  %27 = load ptr, ptr %p.addr, align 4, !dbg !2187
  %k19 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %27, i32 0, i32 3, !dbg !2188
  %28 = load i32, ptr %k19, align 4, !dbg !2188
  %sub20 = sub nsw i32 %28, 1, !dbg !2189
  store i32 %sub20, ptr %j, align 4, !dbg !2186
  br label %for.cond21, !dbg !2190

for.cond21:                                       ; preds = %for.inc128, %for.body18
  %29 = load i32, ptr %j, align 4, !dbg !2191
  %30 = load i32, ptr %i13, align 4, !dbg !2193
  %cmp22 = icmp sge i32 %29, %30, !dbg !2194
  br i1 %cmp22, label %for.body23, label %for.end129, !dbg !2195

for.body23:                                       ; preds = %for.cond21
  %31 = load ptr, ptr %VtL.addr, align 4, !dbg !2196
  %32 = load i32, ptr %j, align 4, !dbg !2198
  %33 = load i32, ptr %m_vec_limbs, align 4, !dbg !2199
  %mul24 = mul nsw i32 %32, %33, !dbg !2200
  %34 = load ptr, ptr %p.addr, align 4, !dbg !2201
  %o25 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %34, i32 0, i32 2, !dbg !2202
  %35 = load i32, ptr %o25, align 4, !dbg !2202
  %mul26 = mul nsw i32 %mul24, %35, !dbg !2203
  %add.ptr = getelementptr inbounds i64, ptr %31, i32 %mul26, !dbg !2204
  store ptr %add.ptr, ptr %Mj, align 4, !dbg !2205
    #dbg_declare(ptr %c, !2206, !DIExpression(), !2208)
  store i32 0, ptr %c, align 4, !dbg !2208
  br label %for.cond27, !dbg !2209

for.cond27:                                       ; preds = %for.inc67, %for.body23
  %36 = load i32, ptr %c, align 4, !dbg !2210
  %37 = load ptr, ptr %p.addr, align 4, !dbg !2212
  %o28 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %37, i32 0, i32 2, !dbg !2213
  %38 = load i32, ptr %o28, align 4, !dbg !2213
  %cmp29 = icmp slt i32 %36, %38, !dbg !2214
  br i1 %cmp29, label %for.body30, label %for.end69, !dbg !2215

for.body30:                                       ; preds = %for.cond27
    #dbg_declare(ptr %k31, !2216, !DIExpression(), !2219)
  store i32 0, ptr %k31, align 4, !dbg !2219
  br label %for.cond32, !dbg !2220

for.cond32:                                       ; preds = %for.inc64, %for.body30
  %39 = load i32, ptr %k31, align 4, !dbg !2221
  %40 = load i32, ptr %m_vec_limbs, align 4, !dbg !2223
  %cmp33 = icmp slt i32 %39, %40, !dbg !2224
  br i1 %cmp33, label %for.body34, label %for.end66, !dbg !2225

for.body34:                                       ; preds = %for.cond32
  %41 = load ptr, ptr %Mj, align 4, !dbg !2226
  %42 = load i32, ptr %k31, align 4, !dbg !2228
  %43 = load i32, ptr %c, align 4, !dbg !2229
  %44 = load i32, ptr %m_vec_limbs, align 4, !dbg !2230
  %mul35 = mul nsw i32 %43, %44, !dbg !2231
  %add36 = add nsw i32 %42, %mul35, !dbg !2232
  %arrayidx37 = getelementptr inbounds i64, ptr %41, i32 %add36, !dbg !2226
  %45 = load i64, ptr %arrayidx37, align 8, !dbg !2226
  %46 = load i32, ptr %bits_to_shift, align 4, !dbg !2233
  %sh_prom38 = zext i32 %46 to i64, !dbg !2234
  %shl39 = shl i64 %45, %sh_prom38, !dbg !2234
  %47 = load ptr, ptr %p.addr, align 4, !dbg !2235
  %o40 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %47, i32 0, i32 2, !dbg !2236
  %48 = load i32, ptr %o40, align 4, !dbg !2236
  %49 = load i32, ptr %i13, align 4, !dbg !2237
  %mul41 = mul nsw i32 %48, %49, !dbg !2238
  %50 = load i32, ptr %c, align 4, !dbg !2239
  %add42 = add nsw i32 %mul41, %50, !dbg !2240
  %51 = load i32, ptr %k31, align 4, !dbg !2241
  %52 = load i32, ptr %words_to_shift, align 4, !dbg !2242
  %add43 = add nsw i32 %51, %52, !dbg !2243
  %53 = load i32, ptr %A_width, align 4, !dbg !2244
  %mul44 = mul i32 %add43, %53, !dbg !2245
  %add45 = add i32 %add42, %mul44, !dbg !2246
  %arrayidx46 = getelementptr inbounds nuw [3744 x i64], ptr %A, i32 0, i32 %add45, !dbg !2247
  %54 = load i64, ptr %arrayidx46, align 8, !dbg !2248
  %xor = xor i64 %54, %shl39, !dbg !2248
  store i64 %xor, ptr %arrayidx46, align 8, !dbg !2248
  %55 = load i32, ptr %bits_to_shift, align 4, !dbg !2249
  %cmp47 = icmp sgt i32 %55, 0, !dbg !2251
  br i1 %cmp47, label %if.then48, label %if.end63, !dbg !2251

if.then48:                                        ; preds = %for.body34
  %56 = load ptr, ptr %Mj, align 4, !dbg !2252
  %57 = load i32, ptr %k31, align 4, !dbg !2254
  %58 = load i32, ptr %c, align 4, !dbg !2255
  %59 = load i32, ptr %m_vec_limbs, align 4, !dbg !2256
  %mul49 = mul nsw i32 %58, %59, !dbg !2257
  %add50 = add nsw i32 %57, %mul49, !dbg !2258
  %arrayidx51 = getelementptr inbounds i64, ptr %56, i32 %add50, !dbg !2252
  %60 = load i64, ptr %arrayidx51, align 8, !dbg !2252
  %61 = load i32, ptr %bits_to_shift, align 4, !dbg !2259
  %sub52 = sub nsw i32 64, %61, !dbg !2260
  %sh_prom53 = zext i32 %sub52 to i64, !dbg !2261
  %shr = lshr i64 %60, %sh_prom53, !dbg !2261
  %62 = load ptr, ptr %p.addr, align 4, !dbg !2262
  %o54 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %62, i32 0, i32 2, !dbg !2263
  %63 = load i32, ptr %o54, align 4, !dbg !2263
  %64 = load i32, ptr %i13, align 4, !dbg !2264
  %mul55 = mul nsw i32 %63, %64, !dbg !2265
  %65 = load i32, ptr %c, align 4, !dbg !2266
  %add56 = add nsw i32 %mul55, %65, !dbg !2267
  %66 = load i32, ptr %k31, align 4, !dbg !2268
  %67 = load i32, ptr %words_to_shift, align 4, !dbg !2269
  %add57 = add nsw i32 %66, %67, !dbg !2270
  %add58 = add nsw i32 %add57, 1, !dbg !2271
  %68 = load i32, ptr %A_width, align 4, !dbg !2272
  %mul59 = mul i32 %add58, %68, !dbg !2273
  %add60 = add i32 %add56, %mul59, !dbg !2274
  %arrayidx61 = getelementptr inbounds nuw [3744 x i64], ptr %A, i32 0, i32 %add60, !dbg !2275
  %69 = load i64, ptr %arrayidx61, align 8, !dbg !2276
  %xor62 = xor i64 %69, %shr, !dbg !2276
  store i64 %xor62, ptr %arrayidx61, align 8, !dbg !2276
  br label %if.end63, !dbg !2277

if.end63:                                         ; preds = %if.then48, %for.body34
  br label %for.inc64, !dbg !2278

for.inc64:                                        ; preds = %if.end63
  %70 = load i32, ptr %k31, align 4, !dbg !2279
  %inc65 = add nsw i32 %70, 1, !dbg !2279
  store i32 %inc65, ptr %k31, align 4, !dbg !2279
  br label %for.cond32, !dbg !2280, !llvm.loop !2281

for.end66:                                        ; preds = %for.cond32
  br label %for.inc67, !dbg !2283

for.inc67:                                        ; preds = %for.end66
  %71 = load i32, ptr %c, align 4, !dbg !2284
  %inc68 = add nsw i32 %71, 1, !dbg !2284
  store i32 %inc68, ptr %c, align 4, !dbg !2284
  br label %for.cond27, !dbg !2285, !llvm.loop !2286

for.end69:                                        ; preds = %for.cond27
  %72 = load i32, ptr %i13, align 4, !dbg !2288
  %73 = load i32, ptr %j, align 4, !dbg !2290
  %cmp70 = icmp ne i32 %72, %73, !dbg !2291
  br i1 %cmp70, label %if.then71, label %if.end122, !dbg !2291

if.then71:                                        ; preds = %for.end69
  %74 = load ptr, ptr %VtL.addr, align 4, !dbg !2292
  %75 = load i32, ptr %i13, align 4, !dbg !2294
  %76 = load i32, ptr %m_vec_limbs, align 4, !dbg !2295
  %mul72 = mul nsw i32 %75, %76, !dbg !2296
  %77 = load ptr, ptr %p.addr, align 4, !dbg !2297
  %o73 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %77, i32 0, i32 2, !dbg !2298
  %78 = load i32, ptr %o73, align 4, !dbg !2298
  %mul74 = mul nsw i32 %mul72, %78, !dbg !2299
  %add.ptr75 = getelementptr inbounds i64, ptr %74, i32 %mul74, !dbg !2300
  store ptr %add.ptr75, ptr %Mi, align 4, !dbg !2301
    #dbg_declare(ptr %c76, !2302, !DIExpression(), !2304)
  store i32 0, ptr %c76, align 4, !dbg !2304
  br label %for.cond77, !dbg !2305

for.cond77:                                       ; preds = %for.inc119, %if.then71
  %79 = load i32, ptr %c76, align 4, !dbg !2306
  %80 = load ptr, ptr %p.addr, align 4, !dbg !2308
  %o78 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %80, i32 0, i32 2, !dbg !2309
  %81 = load i32, ptr %o78, align 4, !dbg !2309
  %cmp79 = icmp slt i32 %79, %81, !dbg !2310
  br i1 %cmp79, label %for.body80, label %for.end121, !dbg !2311

for.body80:                                       ; preds = %for.cond77
    #dbg_declare(ptr %k81, !2312, !DIExpression(), !2315)
  store i32 0, ptr %k81, align 4, !dbg !2315
  br label %for.cond82, !dbg !2316

for.cond82:                                       ; preds = %for.inc116, %for.body80
  %82 = load i32, ptr %k81, align 4, !dbg !2317
  %83 = load i32, ptr %m_vec_limbs, align 4, !dbg !2319
  %cmp83 = icmp slt i32 %82, %83, !dbg !2320
  br i1 %cmp83, label %for.body84, label %for.end118, !dbg !2321

for.body84:                                       ; preds = %for.cond82
  %84 = load ptr, ptr %Mi, align 4, !dbg !2322
  %85 = load i32, ptr %k81, align 4, !dbg !2324
  %86 = load i32, ptr %c76, align 4, !dbg !2325
  %87 = load i32, ptr %m_vec_limbs, align 4, !dbg !2326
  %mul85 = mul nsw i32 %86, %87, !dbg !2327
  %add86 = add nsw i32 %85, %mul85, !dbg !2328
  %arrayidx87 = getelementptr inbounds i64, ptr %84, i32 %add86, !dbg !2322
  %88 = load i64, ptr %arrayidx87, align 8, !dbg !2322
  %89 = load i32, ptr %bits_to_shift, align 4, !dbg !2329
  %sh_prom88 = zext i32 %89 to i64, !dbg !2330
  %shl89 = shl i64 %88, %sh_prom88, !dbg !2330
  %90 = load ptr, ptr %p.addr, align 4, !dbg !2331
  %o90 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %90, i32 0, i32 2, !dbg !2332
  %91 = load i32, ptr %o90, align 4, !dbg !2332
  %92 = load i32, ptr %j, align 4, !dbg !2333
  %mul91 = mul nsw i32 %91, %92, !dbg !2334
  %93 = load i32, ptr %c76, align 4, !dbg !2335
  %add92 = add nsw i32 %mul91, %93, !dbg !2336
  %94 = load i32, ptr %k81, align 4, !dbg !2337
  %95 = load i32, ptr %words_to_shift, align 4, !dbg !2338
  %add93 = add nsw i32 %94, %95, !dbg !2339
  %96 = load i32, ptr %A_width, align 4, !dbg !2340
  %mul94 = mul i32 %add93, %96, !dbg !2341
  %add95 = add i32 %add92, %mul94, !dbg !2342
  %arrayidx96 = getelementptr inbounds nuw [3744 x i64], ptr %A, i32 0, i32 %add95, !dbg !2343
  %97 = load i64, ptr %arrayidx96, align 8, !dbg !2344
  %xor97 = xor i64 %97, %shl89, !dbg !2344
  store i64 %xor97, ptr %arrayidx96, align 8, !dbg !2344
  %98 = load i32, ptr %bits_to_shift, align 4, !dbg !2345
  %cmp98 = icmp sgt i32 %98, 0, !dbg !2347
  br i1 %cmp98, label %if.then99, label %if.end115, !dbg !2347

if.then99:                                        ; preds = %for.body84
  %99 = load ptr, ptr %Mi, align 4, !dbg !2348
  %100 = load i32, ptr %k81, align 4, !dbg !2350
  %101 = load i32, ptr %c76, align 4, !dbg !2351
  %102 = load i32, ptr %m_vec_limbs, align 4, !dbg !2352
  %mul100 = mul nsw i32 %101, %102, !dbg !2353
  %add101 = add nsw i32 %100, %mul100, !dbg !2354
  %arrayidx102 = getelementptr inbounds i64, ptr %99, i32 %add101, !dbg !2348
  %103 = load i64, ptr %arrayidx102, align 8, !dbg !2348
  %104 = load i32, ptr %bits_to_shift, align 4, !dbg !2355
  %sub103 = sub nsw i32 64, %104, !dbg !2356
  %sh_prom104 = zext i32 %sub103 to i64, !dbg !2357
  %shr105 = lshr i64 %103, %sh_prom104, !dbg !2357
  %105 = load ptr, ptr %p.addr, align 4, !dbg !2358
  %o106 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %105, i32 0, i32 2, !dbg !2359
  %106 = load i32, ptr %o106, align 4, !dbg !2359
  %107 = load i32, ptr %j, align 4, !dbg !2360
  %mul107 = mul nsw i32 %106, %107, !dbg !2361
  %108 = load i32, ptr %c76, align 4, !dbg !2362
  %add108 = add nsw i32 %mul107, %108, !dbg !2363
  %109 = load i32, ptr %k81, align 4, !dbg !2364
  %110 = load i32, ptr %words_to_shift, align 4, !dbg !2365
  %add109 = add nsw i32 %109, %110, !dbg !2366
  %add110 = add nsw i32 %add109, 1, !dbg !2367
  %111 = load i32, ptr %A_width, align 4, !dbg !2368
  %mul111 = mul i32 %add110, %111, !dbg !2369
  %add112 = add i32 %add108, %mul111, !dbg !2370
  %arrayidx113 = getelementptr inbounds nuw [3744 x i64], ptr %A, i32 0, i32 %add112, !dbg !2371
  %112 = load i64, ptr %arrayidx113, align 8, !dbg !2372
  %xor114 = xor i64 %112, %shr105, !dbg !2372
  store i64 %xor114, ptr %arrayidx113, align 8, !dbg !2372
  br label %if.end115, !dbg !2373

if.end115:                                        ; preds = %if.then99, %for.body84
  br label %for.inc116, !dbg !2374

for.inc116:                                       ; preds = %if.end115
  %113 = load i32, ptr %k81, align 4, !dbg !2375
  %inc117 = add nsw i32 %113, 1, !dbg !2375
  store i32 %inc117, ptr %k81, align 4, !dbg !2375
  br label %for.cond82, !dbg !2376, !llvm.loop !2377

for.end118:                                       ; preds = %for.cond82
  br label %for.inc119, !dbg !2379

for.inc119:                                       ; preds = %for.end118
  %114 = load i32, ptr %c76, align 4, !dbg !2380
  %inc120 = add nsw i32 %114, 1, !dbg !2380
  store i32 %inc120, ptr %c76, align 4, !dbg !2380
  br label %for.cond77, !dbg !2381, !llvm.loop !2382

for.end121:                                       ; preds = %for.cond77
  br label %if.end122, !dbg !2384

if.end122:                                        ; preds = %for.end121, %for.end69
  %115 = load i32, ptr %bits_to_shift, align 4, !dbg !2385
  %add123 = add nsw i32 %115, 4, !dbg !2385
  store i32 %add123, ptr %bits_to_shift, align 4, !dbg !2385
  %116 = load i32, ptr %bits_to_shift, align 4, !dbg !2386
  %cmp124 = icmp eq i32 %116, 64, !dbg !2388
  br i1 %cmp124, label %if.then125, label %if.end127, !dbg !2388

if.then125:                                       ; preds = %if.end122
  %117 = load i32, ptr %words_to_shift, align 4, !dbg !2389
  %inc126 = add nsw i32 %117, 1, !dbg !2389
  store i32 %inc126, ptr %words_to_shift, align 4, !dbg !2389
  store i32 0, ptr %bits_to_shift, align 4, !dbg !2391
  br label %if.end127, !dbg !2392

if.end127:                                        ; preds = %if.then125, %if.end122
  br label %for.inc128, !dbg !2393

for.inc128:                                       ; preds = %if.end127
  %118 = load i32, ptr %j, align 4, !dbg !2394
  %dec = add nsw i32 %118, -1, !dbg !2394
  store i32 %dec, ptr %j, align 4, !dbg !2394
  br label %for.cond21, !dbg !2395, !llvm.loop !2396

for.end129:                                       ; preds = %for.cond21
  br label %for.inc130, !dbg !2398

for.inc130:                                       ; preds = %for.end129
  %119 = load i32, ptr %i13, align 4, !dbg !2399
  %inc131 = add nsw i32 %119, 1, !dbg !2399
  store i32 %inc131, ptr %i13, align 4, !dbg !2399
  br label %for.cond14, !dbg !2400, !llvm.loop !2401

for.end132:                                       ; preds = %for.cond14
    #dbg_declare(ptr %c133, !2403, !DIExpression(), !2405)
  store i32 0, ptr %c133, align 4, !dbg !2405
  br label %for.cond134, !dbg !2406

for.cond134:                                      ; preds = %for.inc148, %for.end132
  %120 = load i32, ptr %c133, align 4, !dbg !2407
  %121 = load i32, ptr %A_width, align 4, !dbg !2409
  %122 = load ptr, ptr %p.addr, align 4, !dbg !2410
  %m135 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %122, i32 0, i32 0, !dbg !2411
  %123 = load i32, ptr %m135, align 4, !dbg !2411
  %124 = load ptr, ptr %p.addr, align 4, !dbg !2412
  %k136 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %124, i32 0, i32 3, !dbg !2413
  %125 = load i32, ptr %k136, align 4, !dbg !2413
  %add137 = add nsw i32 %125, 1, !dbg !2414
  %126 = load ptr, ptr %p.addr, align 4, !dbg !2415
  %k138 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %126, i32 0, i32 3, !dbg !2416
  %127 = load i32, ptr %k138, align 4, !dbg !2416
  %mul139 = mul nsw i32 %add137, %127, !dbg !2417
  %div140 = sdiv i32 %mul139, 2, !dbg !2418
  %add141 = add nsw i32 %123, %div140, !dbg !2419
  %add142 = add nsw i32 %add141, 15, !dbg !2420
  %div143 = sdiv i32 %add142, 16, !dbg !2421
  %mul144 = mul i32 %121, %div143, !dbg !2422
  %cmp145 = icmp ult i32 %120, %mul144, !dbg !2423
  br i1 %cmp145, label %for.body146, label %for.end150, !dbg !2424

for.body146:                                      ; preds = %for.cond134
  %arraydecay = getelementptr inbounds [3744 x i64], ptr %A, i32 0, i32 0, !dbg !2425
  %128 = load i32, ptr %c133, align 4, !dbg !2427
  %add.ptr147 = getelementptr inbounds nuw i64, ptr %arraydecay, i32 %128, !dbg !2428
  call void @transpose_16x16_nibbles(ptr noundef %add.ptr147) #5, !dbg !2429
  br label %for.inc148, !dbg !2430

for.inc148:                                       ; preds = %for.body146
  %129 = load i32, ptr %c133, align 4, !dbg !2431
  %add149 = add i32 %129, 16, !dbg !2431
  store i32 %add149, ptr %c133, align 4, !dbg !2431
  br label %for.cond134, !dbg !2432, !llvm.loop !2433

for.end150:                                       ; preds = %for.cond134
    #dbg_declare(ptr %tab, !2435, !DIExpression(), !2439)
  call void @llvm.memset.p0.i32(ptr align 1 %tab, i8 0, i32 16, i1 false), !dbg !2439
    #dbg_declare(ptr %i151, !2440, !DIExpression(), !2442)
  store i32 0, ptr %i151, align 4, !dbg !2442
  br label %for.cond152, !dbg !2443

for.cond152:                                      ; preds = %for.inc176, %for.end150
  %130 = load i32, ptr %i151, align 4, !dbg !2444
  %cmp153 = icmp ult i32 %130, 4, !dbg !2446
  br i1 %cmp153, label %for.body154, label %for.end178, !dbg !2447

for.body154:                                      ; preds = %for.cond152
  %131 = load ptr, ptr %p.addr, align 4, !dbg !2448
  %f_tail = getelementptr inbounds nuw %struct.mayo_params_t, ptr %131, i32 0, i32 5, !dbg !2450
  %132 = load ptr, ptr %f_tail, align 4, !dbg !2450
  %133 = load i32, ptr %i151, align 4, !dbg !2451
  %arrayidx155 = getelementptr inbounds nuw i8, ptr %132, i32 %133, !dbg !2450
  %134 = load i8, ptr %arrayidx155, align 1, !dbg !2450
  %call = call zeroext i8 @mul_f(i8 noundef zeroext %134, i8 noundef zeroext 1) #5, !dbg !2452
  %135 = load i32, ptr %i151, align 4, !dbg !2453
  %mul156 = mul i32 4, %135, !dbg !2454
  %arrayidx157 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %mul156, !dbg !2455
  store i8 %call, ptr %arrayidx157, align 1, !dbg !2456
  %136 = load ptr, ptr %p.addr, align 4, !dbg !2457
  %f_tail158 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %136, i32 0, i32 5, !dbg !2458
  %137 = load ptr, ptr %f_tail158, align 4, !dbg !2458
  %138 = load i32, ptr %i151, align 4, !dbg !2459
  %arrayidx159 = getelementptr inbounds nuw i8, ptr %137, i32 %138, !dbg !2458
  %139 = load i8, ptr %arrayidx159, align 1, !dbg !2458
  %call160 = call zeroext i8 @mul_f(i8 noundef zeroext %139, i8 noundef zeroext 2) #5, !dbg !2460
  %140 = load i32, ptr %i151, align 4, !dbg !2461
  %mul161 = mul i32 4, %140, !dbg !2462
  %add162 = add i32 %mul161, 1, !dbg !2463
  %arrayidx163 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add162, !dbg !2464
  store i8 %call160, ptr %arrayidx163, align 1, !dbg !2465
  %141 = load ptr, ptr %p.addr, align 4, !dbg !2466
  %f_tail164 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %141, i32 0, i32 5, !dbg !2467
  %142 = load ptr, ptr %f_tail164, align 4, !dbg !2467
  %143 = load i32, ptr %i151, align 4, !dbg !2468
  %arrayidx165 = getelementptr inbounds nuw i8, ptr %142, i32 %143, !dbg !2467
  %144 = load i8, ptr %arrayidx165, align 1, !dbg !2467
  %call166 = call zeroext i8 @mul_f(i8 noundef zeroext %144, i8 noundef zeroext 4) #5, !dbg !2469
  %145 = load i32, ptr %i151, align 4, !dbg !2470
  %mul167 = mul i32 4, %145, !dbg !2471
  %add168 = add i32 %mul167, 2, !dbg !2472
  %arrayidx169 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add168, !dbg !2473
  store i8 %call166, ptr %arrayidx169, align 1, !dbg !2474
  %146 = load ptr, ptr %p.addr, align 4, !dbg !2475
  %f_tail170 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %146, i32 0, i32 5, !dbg !2476
  %147 = load ptr, ptr %f_tail170, align 4, !dbg !2476
  %148 = load i32, ptr %i151, align 4, !dbg !2477
  %arrayidx171 = getelementptr inbounds nuw i8, ptr %147, i32 %148, !dbg !2476
  %149 = load i8, ptr %arrayidx171, align 1, !dbg !2476
  %call172 = call zeroext i8 @mul_f(i8 noundef zeroext %149, i8 noundef zeroext 8) #5, !dbg !2478
  %150 = load i32, ptr %i151, align 4, !dbg !2479
  %mul173 = mul i32 4, %150, !dbg !2480
  %add174 = add i32 %mul173, 3, !dbg !2481
  %arrayidx175 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add174, !dbg !2482
  store i8 %call172, ptr %arrayidx175, align 1, !dbg !2483
  br label %for.inc176, !dbg !2484

for.inc176:                                       ; preds = %for.body154
  %151 = load i32, ptr %i151, align 4, !dbg !2485
  %inc177 = add i32 %151, 1, !dbg !2485
  store i32 %inc177, ptr %i151, align 4, !dbg !2485
  br label %for.cond152, !dbg !2486, !llvm.loop !2487

for.end178:                                       ; preds = %for.cond152
    #dbg_declare(ptr %low_bit_in_nibble, !2489, !DIExpression(), !2490)
  store i64 1229782938247303441, ptr %low_bit_in_nibble, align 8, !dbg !2490
    #dbg_declare(ptr %c179, !2491, !DIExpression(), !2493)
  store i32 0, ptr %c179, align 4, !dbg !2493
  br label %for.cond180, !dbg !2494

for.cond180:                                      ; preds = %for.inc254, %for.end178
  %152 = load i32, ptr %c179, align 4, !dbg !2495
  %153 = load i32, ptr %A_width, align 4, !dbg !2497
  %cmp181 = icmp ult i32 %152, %153, !dbg !2498
  br i1 %cmp181, label %for.body182, label %for.end256, !dbg !2499

for.body182:                                      ; preds = %for.cond180
    #dbg_declare(ptr %r, !2500, !DIExpression(), !2503)
  %154 = load ptr, ptr %p.addr, align 4, !dbg !2504
  %m183 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %154, i32 0, i32 0, !dbg !2505
  %155 = load i32, ptr %m183, align 4, !dbg !2505
  store i32 %155, ptr %r, align 4, !dbg !2503
  br label %for.cond184, !dbg !2506

for.cond184:                                      ; preds = %for.inc251, %for.body182
  %156 = load i32, ptr %r, align 4, !dbg !2507
  %157 = load ptr, ptr %p.addr, align 4, !dbg !2509
  %m185 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %157, i32 0, i32 0, !dbg !2510
  %158 = load i32, ptr %m185, align 4, !dbg !2510
  %159 = load ptr, ptr %p.addr, align 4, !dbg !2511
  %k186 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %159, i32 0, i32 3, !dbg !2512
  %160 = load i32, ptr %k186, align 4, !dbg !2512
  %add187 = add nsw i32 %160, 1, !dbg !2513
  %161 = load ptr, ptr %p.addr, align 4, !dbg !2514
  %k188 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %161, i32 0, i32 3, !dbg !2515
  %162 = load i32, ptr %k188, align 4, !dbg !2515
  %mul189 = mul nsw i32 %add187, %162, !dbg !2516
  %div190 = sdiv i32 %mul189, 2, !dbg !2517
  %add191 = add nsw i32 %158, %div190, !dbg !2518
  %cmp192 = icmp slt i32 %156, %add191, !dbg !2519
  br i1 %cmp192, label %for.body193, label %for.end253, !dbg !2520

for.body193:                                      ; preds = %for.cond184
    #dbg_declare(ptr %pos, !2521, !DIExpression(), !2523)
  %163 = load i32, ptr %r, align 4, !dbg !2524
  %div194 = sdiv i32 %163, 16, !dbg !2525
  %164 = load i32, ptr %A_width, align 4, !dbg !2526
  %mul195 = mul i32 %div194, %164, !dbg !2527
  %165 = load i32, ptr %c179, align 4, !dbg !2528
  %add196 = add i32 %mul195, %165, !dbg !2529
  %166 = load i32, ptr %r, align 4, !dbg !2530
  %rem197 = srem i32 %166, 16, !dbg !2531
  %add198 = add i32 %add196, %rem197, !dbg !2532
  store i32 %add198, ptr %pos, align 4, !dbg !2523
    #dbg_declare(ptr %t0, !2533, !DIExpression(), !2534)
  %167 = load i32, ptr %pos, align 4, !dbg !2535
  %arrayidx199 = getelementptr inbounds nuw [3744 x i64], ptr %A, i32 0, i32 %167, !dbg !2536
  %168 = load i64, ptr %arrayidx199, align 8, !dbg !2536
  %169 = load i64, ptr %low_bit_in_nibble, align 8, !dbg !2537
  %and200 = and i64 %168, %169, !dbg !2538
  store i64 %and200, ptr %t0, align 8, !dbg !2534
    #dbg_declare(ptr %t1, !2539, !DIExpression(), !2540)
  %170 = load i32, ptr %pos, align 4, !dbg !2541
  %arrayidx201 = getelementptr inbounds nuw [3744 x i64], ptr %A, i32 0, i32 %170, !dbg !2542
  %171 = load i64, ptr %arrayidx201, align 8, !dbg !2542
  %shr202 = lshr i64 %171, 1, !dbg !2543
  %172 = load i64, ptr %low_bit_in_nibble, align 8, !dbg !2544
  %and203 = and i64 %shr202, %172, !dbg !2545
  store i64 %and203, ptr %t1, align 8, !dbg !2540
    #dbg_declare(ptr %t2, !2546, !DIExpression(), !2547)
  %173 = load i32, ptr %pos, align 4, !dbg !2548
  %arrayidx204 = getelementptr inbounds nuw [3744 x i64], ptr %A, i32 0, i32 %173, !dbg !2549
  %174 = load i64, ptr %arrayidx204, align 8, !dbg !2549
  %shr205 = lshr i64 %174, 2, !dbg !2550
  %175 = load i64, ptr %low_bit_in_nibble, align 8, !dbg !2551
  %and206 = and i64 %shr205, %175, !dbg !2552
  store i64 %and206, ptr %t2, align 8, !dbg !2547
    #dbg_declare(ptr %t3, !2553, !DIExpression(), !2554)
  %176 = load i32, ptr %pos, align 4, !dbg !2555
  %arrayidx207 = getelementptr inbounds nuw [3744 x i64], ptr %A, i32 0, i32 %176, !dbg !2556
  %177 = load i64, ptr %arrayidx207, align 8, !dbg !2556
  %shr208 = lshr i64 %177, 3, !dbg !2557
  %178 = load i64, ptr %low_bit_in_nibble, align 8, !dbg !2558
  %and209 = and i64 %shr208, %178, !dbg !2559
  store i64 %and209, ptr %t3, align 8, !dbg !2554
    #dbg_declare(ptr %t, !2560, !DIExpression(), !2562)
  store i32 0, ptr %t, align 4, !dbg !2562
  br label %for.cond210, !dbg !2563

for.cond210:                                      ; preds = %for.inc248, %for.body193
  %179 = load i32, ptr %t, align 4, !dbg !2564
  %cmp211 = icmp ult i32 %179, 4, !dbg !2566
  br i1 %cmp211, label %for.body212, label %for.end250, !dbg !2567

for.body212:                                      ; preds = %for.cond210
  %180 = load i64, ptr %t0, align 8, !dbg !2568
  %181 = load i32, ptr %t, align 4, !dbg !2570
  %mul213 = mul i32 4, %181, !dbg !2571
  %add214 = add i32 %mul213, 0, !dbg !2572
  %arrayidx215 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add214, !dbg !2573
  %182 = load i8, ptr %arrayidx215, align 1, !dbg !2573
  %conv = zext i8 %182 to i64, !dbg !2573
  %mul216 = mul i64 %180, %conv, !dbg !2574
  %183 = load i64, ptr %t1, align 8, !dbg !2575
  %184 = load i32, ptr %t, align 4, !dbg !2576
  %mul217 = mul i32 4, %184, !dbg !2577
  %add218 = add i32 %mul217, 1, !dbg !2578
  %arrayidx219 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add218, !dbg !2579
  %185 = load i8, ptr %arrayidx219, align 1, !dbg !2579
  %conv220 = zext i8 %185 to i64, !dbg !2579
  %mul221 = mul i64 %183, %conv220, !dbg !2580
  %xor222 = xor i64 %mul216, %mul221, !dbg !2581
  %186 = load i64, ptr %t2, align 8, !dbg !2582
  %187 = load i32, ptr %t, align 4, !dbg !2583
  %mul223 = mul i32 4, %187, !dbg !2584
  %add224 = add i32 %mul223, 2, !dbg !2585
  %arrayidx225 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add224, !dbg !2586
  %188 = load i8, ptr %arrayidx225, align 1, !dbg !2586
  %conv226 = zext i8 %188 to i64, !dbg !2586
  %mul227 = mul i64 %186, %conv226, !dbg !2587
  %xor228 = xor i64 %xor222, %mul227, !dbg !2588
  %189 = load i64, ptr %t3, align 8, !dbg !2589
  %190 = load i32, ptr %t, align 4, !dbg !2590
  %mul229 = mul i32 4, %190, !dbg !2591
  %add230 = add i32 %mul229, 3, !dbg !2592
  %arrayidx231 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add230, !dbg !2593
  %191 = load i8, ptr %arrayidx231, align 1, !dbg !2593
  %conv232 = zext i8 %191 to i64, !dbg !2593
  %mul233 = mul i64 %189, %conv232, !dbg !2594
  %xor234 = xor i64 %xor228, %mul233, !dbg !2595
  %192 = load i32, ptr %r, align 4, !dbg !2596
  %193 = load i32, ptr %t, align 4, !dbg !2597
  %add235 = add i32 %192, %193, !dbg !2598
  %194 = load ptr, ptr %p.addr, align 4, !dbg !2599
  %m236 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %194, i32 0, i32 0, !dbg !2600
  %195 = load i32, ptr %m236, align 4, !dbg !2600
  %sub237 = sub i32 %add235, %195, !dbg !2601
  %div238 = udiv i32 %sub237, 16, !dbg !2602
  %196 = load i32, ptr %A_width, align 4, !dbg !2603
  %mul239 = mul i32 %div238, %196, !dbg !2604
  %197 = load i32, ptr %c179, align 4, !dbg !2605
  %add240 = add i32 %mul239, %197, !dbg !2606
  %198 = load i32, ptr %r, align 4, !dbg !2607
  %199 = load i32, ptr %t, align 4, !dbg !2608
  %add241 = add i32 %198, %199, !dbg !2609
  %200 = load ptr, ptr %p.addr, align 4, !dbg !2610
  %m242 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %200, i32 0, i32 0, !dbg !2611
  %201 = load i32, ptr %m242, align 4, !dbg !2611
  %sub243 = sub i32 %add241, %201, !dbg !2612
  %rem244 = urem i32 %sub243, 16, !dbg !2613
  %add245 = add i32 %add240, %rem244, !dbg !2614
  %arrayidx246 = getelementptr inbounds nuw [3744 x i64], ptr %A, i32 0, i32 %add245, !dbg !2615
  %202 = load i64, ptr %arrayidx246, align 8, !dbg !2616
  %xor247 = xor i64 %202, %xor234, !dbg !2616
  store i64 %xor247, ptr %arrayidx246, align 8, !dbg !2616
  br label %for.inc248, !dbg !2617

for.inc248:                                       ; preds = %for.body212
  %203 = load i32, ptr %t, align 4, !dbg !2618
  %inc249 = add i32 %203, 1, !dbg !2618
  store i32 %inc249, ptr %t, align 4, !dbg !2618
  br label %for.cond210, !dbg !2619, !llvm.loop !2620

for.end250:                                       ; preds = %for.cond210
  br label %for.inc251, !dbg !2622

for.inc251:                                       ; preds = %for.end250
  %204 = load i32, ptr %r, align 4, !dbg !2623
  %inc252 = add nsw i32 %204, 1, !dbg !2623
  store i32 %inc252, ptr %r, align 4, !dbg !2623
  br label %for.cond184, !dbg !2624, !llvm.loop !2625

for.end253:                                       ; preds = %for.cond184
  br label %for.inc254, !dbg !2627

for.inc254:                                       ; preds = %for.end253
  %205 = load i32, ptr %c179, align 4, !dbg !2628
  %add255 = add i32 %205, 16, !dbg !2628
  store i32 %add255, ptr %c179, align 4, !dbg !2628
  br label %for.cond180, !dbg !2629, !llvm.loop !2630

for.end256:                                       ; preds = %for.cond180
    #dbg_declare(ptr %r257, !2632, !DIExpression(), !2634)
  store i32 0, ptr %r257, align 4, !dbg !2634
  br label %for.cond258, !dbg !2635

for.cond258:                                      ; preds = %for.inc313, %for.end256
  %206 = load i32, ptr %r257, align 4, !dbg !2636
  %207 = load ptr, ptr %p.addr, align 4, !dbg !2638
  %m259 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %207, i32 0, i32 0, !dbg !2639
  %208 = load i32, ptr %m259, align 4, !dbg !2639
  %cmp260 = icmp slt i32 %206, %208, !dbg !2640
  br i1 %cmp260, label %for.body262, label %for.end315, !dbg !2641

for.body262:                                      ; preds = %for.cond258
    #dbg_declare(ptr %c263, !2642, !DIExpression(), !2645)
  store i32 0, ptr %c263, align 4, !dbg !2645
  br label %for.cond264, !dbg !2646

for.cond264:                                      ; preds = %for.inc310, %for.body262
  %209 = load i32, ptr %c263, align 4, !dbg !2647
  %210 = load ptr, ptr %p.addr, align 4, !dbg !2649
  %k265 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %210, i32 0, i32 3, !dbg !2650
  %211 = load i32, ptr %k265, align 4, !dbg !2650
  %212 = load ptr, ptr %p.addr, align 4, !dbg !2649
  %o266 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %212, i32 0, i32 2, !dbg !2650
  %213 = load i32, ptr %o266, align 4, !dbg !2650
  %mul267 = mul nsw i32 %211, %213, !dbg !2650
  %add268 = add nsw i32 %mul267, 1, !dbg !2650
  %sub269 = sub nsw i32 %add268, 1, !dbg !2651
  %cmp270 = icmp slt i32 %209, %sub269, !dbg !2652
  br i1 %cmp270, label %for.body272, label %for.end312, !dbg !2653

for.body272:                                      ; preds = %for.cond264
    #dbg_declare(ptr %i273, !2654, !DIExpression(), !2657)
  store i32 0, ptr %i273, align 4, !dbg !2657
  br label %for.cond274, !dbg !2658

for.cond274:                                      ; preds = %for.inc307, %for.body272
  %214 = load i32, ptr %i273, align 4, !dbg !2659
  %215 = load i32, ptr %r257, align 4, !dbg !2661
  %add275 = add nsw i32 %214, %215, !dbg !2662
  %216 = load ptr, ptr %p.addr, align 4, !dbg !2663
  %m276 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %216, i32 0, i32 0, !dbg !2664
  %217 = load i32, ptr %m276, align 4, !dbg !2664
  %cmp277 = icmp slt i32 %add275, %217, !dbg !2665
  br i1 %cmp277, label %for.body279, label %for.end309, !dbg !2666

for.body279:                                      ; preds = %for.cond274
  %218 = load i32, ptr %r257, align 4, !dbg !2667
  %219 = load i32, ptr %A_width, align 4, !dbg !2669
  %mul280 = mul i32 %218, %219, !dbg !2670
  %div281 = udiv i32 %mul280, 16, !dbg !2671
  %220 = load i32, ptr %c263, align 4, !dbg !2672
  %add282 = add i32 %div281, %220, !dbg !2673
  %221 = load i32, ptr %i273, align 4, !dbg !2674
  %add283 = add i32 %add282, %221, !dbg !2675
  %arrayidx284 = getelementptr inbounds nuw [3744 x i64], ptr %A, i32 0, i32 %add283, !dbg !2676
  %222 = load ptr, ptr %A_out.addr, align 4, !dbg !2677
  %223 = load ptr, ptr %p.addr, align 4, !dbg !2678
  %k285 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %223, i32 0, i32 3, !dbg !2679
  %224 = load i32, ptr %k285, align 4, !dbg !2679
  %225 = load ptr, ptr %p.addr, align 4, !dbg !2678
  %o286 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %225, i32 0, i32 2, !dbg !2679
  %226 = load i32, ptr %o286, align 4, !dbg !2679
  %mul287 = mul nsw i32 %224, %226, !dbg !2679
  %add288 = add nsw i32 %mul287, 1, !dbg !2679
  %227 = load i32, ptr %r257, align 4, !dbg !2680
  %228 = load i32, ptr %i273, align 4, !dbg !2681
  %add289 = add nsw i32 %227, %228, !dbg !2682
  %mul290 = mul nsw i32 %add288, %add289, !dbg !2683
  %add.ptr291 = getelementptr inbounds i8, ptr %222, i32 %mul290, !dbg !2684
  %229 = load i32, ptr %c263, align 4, !dbg !2685
  %add.ptr292 = getelementptr inbounds i8, ptr %add.ptr291, i32 %229, !dbg !2686
  %230 = load ptr, ptr %p.addr, align 4, !dbg !2687
  %k293 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %230, i32 0, i32 3, !dbg !2688
  %231 = load i32, ptr %k293, align 4, !dbg !2688
  %232 = load ptr, ptr %p.addr, align 4, !dbg !2687
  %o294 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %232, i32 0, i32 2, !dbg !2688
  %233 = load i32, ptr %o294, align 4, !dbg !2688
  %mul295 = mul nsw i32 %231, %233, !dbg !2688
  %add296 = add nsw i32 %mul295, 1, !dbg !2688
  %sub297 = sub nsw i32 %add296, 1, !dbg !2689
  %234 = load i32, ptr %c263, align 4, !dbg !2690
  %sub298 = sub nsw i32 %sub297, %234, !dbg !2691
  %cmp299 = icmp slt i32 16, %sub298, !dbg !2692
  br i1 %cmp299, label %cond.true, label %cond.false, !dbg !2692

cond.true:                                        ; preds = %for.body279
  br label %cond.end, !dbg !2692

cond.false:                                       ; preds = %for.body279
  %235 = load ptr, ptr %p.addr, align 4, !dbg !2687
  %k301 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %235, i32 0, i32 3, !dbg !2688
  %236 = load i32, ptr %k301, align 4, !dbg !2688
  %237 = load ptr, ptr %p.addr, align 4, !dbg !2687
  %o302 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %237, i32 0, i32 2, !dbg !2688
  %238 = load i32, ptr %o302, align 4, !dbg !2688
  %mul303 = mul nsw i32 %236, %238, !dbg !2688
  %add304 = add nsw i32 %mul303, 1, !dbg !2688
  %sub305 = sub nsw i32 %add304, 1, !dbg !2689
  %239 = load i32, ptr %c263, align 4, !dbg !2690
  %sub306 = sub nsw i32 %sub305, %239, !dbg !2691
  br label %cond.end, !dbg !2692

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 16, %cond.true ], [ %sub306, %cond.false ], !dbg !2692
  call void @decode(ptr noundef %arrayidx284, ptr noundef %add.ptr292, i32 noundef %cond) #5, !dbg !2693
  br label %for.inc307, !dbg !2694

for.inc307:                                       ; preds = %cond.end
  %240 = load i32, ptr %i273, align 4, !dbg !2695
  %inc308 = add nsw i32 %240, 1, !dbg !2695
  store i32 %inc308, ptr %i273, align 4, !dbg !2695
  br label %for.cond274, !dbg !2696, !llvm.loop !2697

for.end309:                                       ; preds = %for.cond274
  br label %for.inc310, !dbg !2699

for.inc310:                                       ; preds = %for.end309
  %241 = load i32, ptr %c263, align 4, !dbg !2700
  %add311 = add nsw i32 %241, 16, !dbg !2700
  store i32 %add311, ptr %c263, align 4, !dbg !2700
  br label %for.cond264, !dbg !2701, !llvm.loop !2702

for.end312:                                       ; preds = %for.cond264
  br label %for.inc313, !dbg !2704

for.inc313:                                       ; preds = %for.end312
  %242 = load i32, ptr %r257, align 4, !dbg !2705
  %add314 = add nsw i32 %242, 16, !dbg !2705
  store i32 %add314, ptr %r257, align 4, !dbg !2705
  br label %for.cond258, !dbg !2706, !llvm.loop !2707

for.end315:                                       ; preds = %for.cond258
  ret void, !dbg !2709
}

declare dso_local ptr @memset(ptr noundef, i32 noundef, i32 noundef) #4

; Function Attrs: noinline nounwind optnone
define internal void @mat_mul(ptr noundef %a, ptr noundef %b, ptr noundef %c, i32 noundef %colrow_ab, i32 noundef %row_a, i32 noundef %col_b) #0 !dbg !2710 {
entry:
  %a.addr = alloca ptr, align 4
  %b.addr = alloca ptr, align 4
  %c.addr = alloca ptr, align 4
  %colrow_ab.addr = alloca i32, align 4
  %row_a.addr = alloca i32, align 4
  %col_b.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 4
    #dbg_declare(ptr %a.addr, !2713, !DIExpression(), !2714)
  store ptr %b, ptr %b.addr, align 4
    #dbg_declare(ptr %b.addr, !2715, !DIExpression(), !2716)
  store ptr %c, ptr %c.addr, align 4
    #dbg_declare(ptr %c.addr, !2717, !DIExpression(), !2718)
  store i32 %colrow_ab, ptr %colrow_ab.addr, align 4
    #dbg_declare(ptr %colrow_ab.addr, !2719, !DIExpression(), !2720)
  store i32 %row_a, ptr %row_a.addr, align 4
    #dbg_declare(ptr %row_a.addr, !2721, !DIExpression(), !2722)
  store i32 %col_b, ptr %col_b.addr, align 4
    #dbg_declare(ptr %col_b.addr, !2723, !DIExpression(), !2724)
    #dbg_declare(ptr %i, !2725, !DIExpression(), !2727)
  store i32 0, ptr %i, align 4, !dbg !2727
  br label %for.cond, !dbg !2728

for.cond:                                         ; preds = %for.inc4, %entry
  %0 = load i32, ptr %i, align 4, !dbg !2729
  %1 = load i32, ptr %row_a.addr, align 4, !dbg !2731
  %cmp = icmp slt i32 %0, %1, !dbg !2732
  br i1 %cmp, label %for.body, label %for.end7, !dbg !2733

for.body:                                         ; preds = %for.cond
    #dbg_declare(ptr %j, !2734, !DIExpression(), !2737)
  store i32 0, ptr %j, align 4, !dbg !2737
  br label %for.cond1, !dbg !2738

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %j, align 4, !dbg !2739
  %3 = load i32, ptr %col_b.addr, align 4, !dbg !2741
  %cmp2 = icmp slt i32 %2, %3, !dbg !2742
  br i1 %cmp2, label %for.body3, label %for.end, !dbg !2743

for.body3:                                        ; preds = %for.cond1
  %4 = load ptr, ptr %a.addr, align 4, !dbg !2744
  %5 = load ptr, ptr %b.addr, align 4, !dbg !2746
  %6 = load i32, ptr %j, align 4, !dbg !2747
  %add.ptr = getelementptr inbounds i8, ptr %5, i32 %6, !dbg !2748
  %7 = load i32, ptr %colrow_ab.addr, align 4, !dbg !2749
  %8 = load i32, ptr %col_b.addr, align 4, !dbg !2750
  %call = call zeroext i8 @lincomb(ptr noundef %4, ptr noundef %add.ptr, i32 noundef %7, i32 noundef %8) #5, !dbg !2751
  %9 = load ptr, ptr %c.addr, align 4, !dbg !2752
  store i8 %call, ptr %9, align 1, !dbg !2753
  br label %for.inc, !dbg !2754

for.inc:                                          ; preds = %for.body3
  %10 = load i32, ptr %j, align 4, !dbg !2755
  %inc = add nsw i32 %10, 1, !dbg !2755
  store i32 %inc, ptr %j, align 4, !dbg !2755
  %11 = load ptr, ptr %c.addr, align 4, !dbg !2756
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %11, i32 1, !dbg !2756
  store ptr %incdec.ptr, ptr %c.addr, align 4, !dbg !2756
  br label %for.cond1, !dbg !2757, !llvm.loop !2758

for.end:                                          ; preds = %for.cond1
  br label %for.inc4, !dbg !2760

for.inc4:                                         ; preds = %for.end
  %12 = load i32, ptr %i, align 4, !dbg !2761
  %inc5 = add nsw i32 %12, 1, !dbg !2761
  store i32 %inc5, ptr %i, align 4, !dbg !2761
  %13 = load i32, ptr %colrow_ab.addr, align 4, !dbg !2762
  %14 = load ptr, ptr %a.addr, align 4, !dbg !2763
  %add.ptr6 = getelementptr inbounds i8, ptr %14, i32 %13, !dbg !2763
  store ptr %add.ptr6, ptr %a.addr, align 4, !dbg !2763
  br label %for.cond, !dbg !2764, !llvm.loop !2765

for.end7:                                         ; preds = %for.cond
  ret void, !dbg !2767
}

; Function Attrs: noinline nounwind optnone
define internal void @mat_add(ptr noundef %a, ptr noundef %b, ptr noundef %c, i32 noundef %m, i32 noundef %n) #0 !dbg !2768 {
entry:
  %a.addr = alloca ptr, align 4
  %b.addr = alloca ptr, align 4
  %c.addr = alloca ptr, align 4
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 4
    #dbg_declare(ptr %a.addr, !2771, !DIExpression(), !2772)
  store ptr %b, ptr %b.addr, align 4
    #dbg_declare(ptr %b.addr, !2773, !DIExpression(), !2774)
  store ptr %c, ptr %c.addr, align 4
    #dbg_declare(ptr %c.addr, !2775, !DIExpression(), !2776)
  store i32 %m, ptr %m.addr, align 4
    #dbg_declare(ptr %m.addr, !2777, !DIExpression(), !2778)
  store i32 %n, ptr %n.addr, align 4
    #dbg_declare(ptr %n.addr, !2779, !DIExpression(), !2780)
    #dbg_declare(ptr %i, !2781, !DIExpression(), !2783)
  store i32 0, ptr %i, align 4, !dbg !2783
  br label %for.cond, !dbg !2784

for.cond:                                         ; preds = %for.inc11, %entry
  %0 = load i32, ptr %i, align 4, !dbg !2785
  %1 = load i32, ptr %m.addr, align 4, !dbg !2787
  %cmp = icmp slt i32 %0, %1, !dbg !2788
  br i1 %cmp, label %for.body, label %for.end13, !dbg !2789

for.body:                                         ; preds = %for.cond
    #dbg_declare(ptr %j, !2790, !DIExpression(), !2793)
  store i32 0, ptr %j, align 4, !dbg !2793
  br label %for.cond1, !dbg !2794

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %j, align 4, !dbg !2795
  %3 = load i32, ptr %n.addr, align 4, !dbg !2797
  %cmp2 = icmp slt i32 %2, %3, !dbg !2798
  br i1 %cmp2, label %for.body3, label %for.end, !dbg !2799

for.body3:                                        ; preds = %for.cond1
  %4 = load ptr, ptr %a.addr, align 4, !dbg !2800
  %5 = load i32, ptr %i, align 4, !dbg !2802
  %6 = load i32, ptr %n.addr, align 4, !dbg !2803
  %mul = mul nsw i32 %5, %6, !dbg !2804
  %add.ptr = getelementptr inbounds i8, ptr %4, i32 %mul, !dbg !2805
  %7 = load i32, ptr %j, align 4, !dbg !2806
  %add.ptr4 = getelementptr inbounds i8, ptr %add.ptr, i32 %7, !dbg !2805
  %8 = load i8, ptr %add.ptr4, align 1, !dbg !2805
  %9 = load ptr, ptr %b.addr, align 4, !dbg !2807
  %10 = load i32, ptr %i, align 4, !dbg !2808
  %11 = load i32, ptr %n.addr, align 4, !dbg !2809
  %mul5 = mul nsw i32 %10, %11, !dbg !2810
  %add.ptr6 = getelementptr inbounds i8, ptr %9, i32 %mul5, !dbg !2811
  %12 = load i32, ptr %j, align 4, !dbg !2812
  %add.ptr7 = getelementptr inbounds i8, ptr %add.ptr6, i32 %12, !dbg !2811
  %13 = load i8, ptr %add.ptr7, align 1, !dbg !2811
  %call = call zeroext i8 @add_f(i8 noundef zeroext %8, i8 noundef zeroext %13) #5, !dbg !2813
  %14 = load ptr, ptr %c.addr, align 4, !dbg !2814
  %15 = load i32, ptr %i, align 4, !dbg !2815
  %16 = load i32, ptr %n.addr, align 4, !dbg !2816
  %mul8 = mul nsw i32 %15, %16, !dbg !2817
  %add.ptr9 = getelementptr inbounds i8, ptr %14, i32 %mul8, !dbg !2818
  %17 = load i32, ptr %j, align 4, !dbg !2819
  %add.ptr10 = getelementptr inbounds i8, ptr %add.ptr9, i32 %17, !dbg !2818
  store i8 %call, ptr %add.ptr10, align 1, !dbg !2820
  br label %for.inc, !dbg !2821

for.inc:                                          ; preds = %for.body3
  %18 = load i32, ptr %j, align 4, !dbg !2822
  %inc = add nsw i32 %18, 1, !dbg !2822
  store i32 %inc, ptr %j, align 4, !dbg !2822
  br label %for.cond1, !dbg !2823, !llvm.loop !2824

for.end:                                          ; preds = %for.cond1
  br label %for.inc11, !dbg !2826

for.inc11:                                        ; preds = %for.end
  %19 = load i32, ptr %i, align 4, !dbg !2827
  %inc12 = add nsw i32 %19, 1, !dbg !2827
  store i32 %inc12, ptr %i, align 4, !dbg !2827
  br label %for.cond, !dbg !2828, !llvm.loop !2829

for.end13:                                        ; preds = %for.cond
  ret void, !dbg !2831
}

; Function Attrs: noinline nounwind optnone
define internal void @encode(ptr noundef %m, ptr noundef %menc, i32 noundef %mlen) #0 !dbg !2832 {
entry:
  %m.addr = alloca ptr, align 4
  %menc.addr = alloca ptr, align 4
  %mlen.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %m, ptr %m.addr, align 4
    #dbg_declare(ptr %m.addr, !2833, !DIExpression(), !2834)
  store ptr %menc, ptr %menc.addr, align 4
    #dbg_declare(ptr %menc.addr, !2835, !DIExpression(), !2836)
  store i32 %mlen, ptr %mlen.addr, align 4
    #dbg_declare(ptr %mlen.addr, !2837, !DIExpression(), !2838)
    #dbg_declare(ptr %i, !2839, !DIExpression(), !2840)
  store i32 0, ptr %i, align 4, !dbg !2841
  br label %for.cond, !dbg !2843

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !2844
  %1 = load i32, ptr %mlen.addr, align 4, !dbg !2846
  %div = sdiv i32 %1, 2, !dbg !2847
  %cmp = icmp slt i32 %0, %div, !dbg !2848
  br i1 %cmp, label %for.body, label %for.end, !dbg !2849

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %m.addr, align 4, !dbg !2850
  %3 = load i8, ptr %2, align 1, !dbg !2852
  %conv = zext i8 %3 to i32, !dbg !2853
  %4 = load ptr, ptr %m.addr, align 4, !dbg !2854
  %add.ptr = getelementptr inbounds i8, ptr %4, i32 1, !dbg !2855
  %5 = load i8, ptr %add.ptr, align 1, !dbg !2855
  %conv1 = zext i8 %5 to i32, !dbg !2855
  %shl = shl i32 %conv1, 4, !dbg !2856
  %or = or i32 %conv, %shl, !dbg !2857
  %conv2 = trunc i32 %or to i8, !dbg !2853
  %6 = load ptr, ptr %menc.addr, align 4, !dbg !2858
  %7 = load i32, ptr %i, align 4, !dbg !2859
  %arrayidx = getelementptr inbounds i8, ptr %6, i32 %7, !dbg !2858
  store i8 %conv2, ptr %arrayidx, align 1, !dbg !2860
  br label %for.inc, !dbg !2861

for.inc:                                          ; preds = %for.body
  %8 = load i32, ptr %i, align 4, !dbg !2862
  %inc = add nsw i32 %8, 1, !dbg !2862
  store i32 %inc, ptr %i, align 4, !dbg !2862
  %9 = load ptr, ptr %m.addr, align 4, !dbg !2863
  %add.ptr3 = getelementptr inbounds i8, ptr %9, i32 2, !dbg !2863
  store ptr %add.ptr3, ptr %m.addr, align 4, !dbg !2863
  br label %for.cond, !dbg !2864, !llvm.loop !2865

for.end:                                          ; preds = %for.cond
  %10 = load i32, ptr %mlen.addr, align 4, !dbg !2867
  %rem = srem i32 %10, 2, !dbg !2869
  %cmp4 = icmp eq i32 %rem, 1, !dbg !2870
  br i1 %cmp4, label %if.then, label %if.end, !dbg !2870

if.then:                                          ; preds = %for.end
  %11 = load ptr, ptr %m.addr, align 4, !dbg !2871
  %12 = load i8, ptr %11, align 1, !dbg !2873
  %13 = load ptr, ptr %menc.addr, align 4, !dbg !2874
  %14 = load i32, ptr %i, align 4, !dbg !2875
  %arrayidx6 = getelementptr inbounds i8, ptr %13, i32 %14, !dbg !2874
  store i8 %12, ptr %arrayidx6, align 1, !dbg !2876
  br label %if.end, !dbg !2877

if.end:                                           ; preds = %if.then, %for.end
  ret void, !dbg !2878
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i8 @add_f(i8 noundef zeroext %a, i8 noundef zeroext %b) #0 !dbg !2879 {
entry:
  %a.addr = alloca i8, align 1
  %b.addr = alloca i8, align 1
  store i8 %a, ptr %a.addr, align 1
    #dbg_declare(ptr %a.addr, !2882, !DIExpression(), !2883)
  store i8 %b, ptr %b.addr, align 1
    #dbg_declare(ptr %b.addr, !2884, !DIExpression(), !2885)
  %0 = load i8, ptr %a.addr, align 1, !dbg !2886
  %conv = zext i8 %0 to i32, !dbg !2886
  %1 = load i8, ptr %b.addr, align 1, !dbg !2887
  %conv1 = zext i8 %1 to i32, !dbg !2887
  %xor = xor i32 %conv, %conv1, !dbg !2888
  %conv2 = trunc i32 %xor to i8, !dbg !2886
  ret i8 %conv2, !dbg !2889
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i8 @lincomb(ptr noundef %a, ptr noundef %b, i32 noundef %n, i32 noundef %m) #0 !dbg !2890 {
entry:
  %a.addr = alloca ptr, align 4
  %b.addr = alloca ptr, align 4
  %n.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %ret = alloca i8, align 1
  %i = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 4
    #dbg_declare(ptr %a.addr, !2893, !DIExpression(), !2894)
  store ptr %b, ptr %b.addr, align 4
    #dbg_declare(ptr %b.addr, !2895, !DIExpression(), !2896)
  store i32 %n, ptr %n.addr, align 4
    #dbg_declare(ptr %n.addr, !2897, !DIExpression(), !2898)
  store i32 %m, ptr %m.addr, align 4
    #dbg_declare(ptr %m.addr, !2899, !DIExpression(), !2900)
    #dbg_declare(ptr %ret, !2901, !DIExpression(), !2902)
  store i8 0, ptr %ret, align 1, !dbg !2902
    #dbg_declare(ptr %i, !2903, !DIExpression(), !2905)
  store i32 0, ptr %i, align 4, !dbg !2905
  br label %for.cond, !dbg !2906

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !2907
  %1 = load i32, ptr %n.addr, align 4, !dbg !2909
  %cmp = icmp slt i32 %0, %1, !dbg !2910
  br i1 %cmp, label %for.body, label %for.end, !dbg !2911

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %a.addr, align 4, !dbg !2912
  %3 = load i32, ptr %i, align 4, !dbg !2914
  %arrayidx = getelementptr inbounds i8, ptr %2, i32 %3, !dbg !2912
  %4 = load i8, ptr %arrayidx, align 1, !dbg !2912
  %5 = load ptr, ptr %b.addr, align 4, !dbg !2915
  %6 = load i8, ptr %5, align 1, !dbg !2916
  %call = call zeroext i8 @mul_f(i8 noundef zeroext %4, i8 noundef zeroext %6) #5, !dbg !2917
  %7 = load i8, ptr %ret, align 1, !dbg !2918
  %call1 = call zeroext i8 @add_f(i8 noundef zeroext %call, i8 noundef zeroext %7) #5, !dbg !2919
  store i8 %call1, ptr %ret, align 1, !dbg !2920
  br label %for.inc, !dbg !2921

for.inc:                                          ; preds = %for.body
  %8 = load i32, ptr %i, align 4, !dbg !2922
  %inc = add nsw i32 %8, 1, !dbg !2922
  store i32 %inc, ptr %i, align 4, !dbg !2922
  %9 = load i32, ptr %m.addr, align 4, !dbg !2923
  %10 = load ptr, ptr %b.addr, align 4, !dbg !2924
  %add.ptr = getelementptr inbounds i8, ptr %10, i32 %9, !dbg !2924
  store ptr %add.ptr, ptr %b.addr, align 4, !dbg !2924
  br label %for.cond, !dbg !2925, !llvm.loop !2926

for.end:                                          ; preds = %for.cond
  %11 = load i8, ptr %ret, align 1, !dbg !2928
  ret i8 %11, !dbg !2929
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i8 @mul_f(i8 noundef zeroext %a, i8 noundef zeroext %b) #0 !dbg !2930 {
entry:
  %a.addr = alloca i8, align 1
  %b.addr = alloca i8, align 1
  %p = alloca i8, align 1
  %top_p = alloca i8, align 1
  %out = alloca i8, align 1
  store i8 %a, ptr %a.addr, align 1
    #dbg_declare(ptr %a.addr, !2931, !DIExpression(), !2932)
  store i8 %b, ptr %b.addr, align 1
    #dbg_declare(ptr %b.addr, !2933, !DIExpression(), !2934)
    #dbg_declare(ptr %p, !2935, !DIExpression(), !2936)
  %0 = load volatile i8, ptr @unsigned_char_blocker, align 1, !dbg !2937
  %conv = zext i8 %0 to i32, !dbg !2937
  %1 = load i8, ptr %a.addr, align 1, !dbg !2938
  %conv1 = zext i8 %1 to i32, !dbg !2938
  %xor = xor i32 %conv1, %conv, !dbg !2938
  %conv2 = trunc i32 %xor to i8, !dbg !2938
  store i8 %conv2, ptr %a.addr, align 1, !dbg !2938
  %2 = load i8, ptr %a.addr, align 1, !dbg !2939
  %conv3 = zext i8 %2 to i32, !dbg !2939
  %and = and i32 %conv3, 1, !dbg !2940
  %3 = load i8, ptr %b.addr, align 1, !dbg !2941
  %conv4 = zext i8 %3 to i32, !dbg !2941
  %mul = mul nsw i32 %and, %conv4, !dbg !2942
  %conv5 = trunc i32 %mul to i8, !dbg !2943
  store i8 %conv5, ptr %p, align 1, !dbg !2944
  %4 = load i8, ptr %a.addr, align 1, !dbg !2945
  %conv6 = zext i8 %4 to i32, !dbg !2945
  %and7 = and i32 %conv6, 2, !dbg !2946
  %5 = load i8, ptr %b.addr, align 1, !dbg !2947
  %conv8 = zext i8 %5 to i32, !dbg !2947
  %mul9 = mul nsw i32 %and7, %conv8, !dbg !2948
  %6 = load i8, ptr %p, align 1, !dbg !2949
  %conv10 = zext i8 %6 to i32, !dbg !2949
  %xor11 = xor i32 %conv10, %mul9, !dbg !2949
  %conv12 = trunc i32 %xor11 to i8, !dbg !2949
  store i8 %conv12, ptr %p, align 1, !dbg !2949
  %7 = load i8, ptr %a.addr, align 1, !dbg !2950
  %conv13 = zext i8 %7 to i32, !dbg !2950
  %and14 = and i32 %conv13, 4, !dbg !2951
  %8 = load i8, ptr %b.addr, align 1, !dbg !2952
  %conv15 = zext i8 %8 to i32, !dbg !2952
  %mul16 = mul nsw i32 %and14, %conv15, !dbg !2953
  %9 = load i8, ptr %p, align 1, !dbg !2954
  %conv17 = zext i8 %9 to i32, !dbg !2954
  %xor18 = xor i32 %conv17, %mul16, !dbg !2954
  %conv19 = trunc i32 %xor18 to i8, !dbg !2954
  store i8 %conv19, ptr %p, align 1, !dbg !2954
  %10 = load i8, ptr %a.addr, align 1, !dbg !2955
  %conv20 = zext i8 %10 to i32, !dbg !2955
  %and21 = and i32 %conv20, 8, !dbg !2956
  %11 = load i8, ptr %b.addr, align 1, !dbg !2957
  %conv22 = zext i8 %11 to i32, !dbg !2957
  %mul23 = mul nsw i32 %and21, %conv22, !dbg !2958
  %12 = load i8, ptr %p, align 1, !dbg !2959
  %conv24 = zext i8 %12 to i32, !dbg !2959
  %xor25 = xor i32 %conv24, %mul23, !dbg !2959
  %conv26 = trunc i32 %xor25 to i8, !dbg !2959
  store i8 %conv26, ptr %p, align 1, !dbg !2959
    #dbg_declare(ptr %top_p, !2960, !DIExpression(), !2961)
  %13 = load i8, ptr %p, align 1, !dbg !2962
  %conv27 = zext i8 %13 to i32, !dbg !2962
  %and28 = and i32 %conv27, 240, !dbg !2963
  %conv29 = trunc i32 %and28 to i8, !dbg !2962
  store i8 %conv29, ptr %top_p, align 1, !dbg !2961
    #dbg_declare(ptr %out, !2964, !DIExpression(), !2965)
  %14 = load i8, ptr %p, align 1, !dbg !2966
  %conv30 = zext i8 %14 to i32, !dbg !2966
  %15 = load i8, ptr %top_p, align 1, !dbg !2967
  %conv31 = zext i8 %15 to i32, !dbg !2967
  %shr = ashr i32 %conv31, 4, !dbg !2968
  %xor32 = xor i32 %conv30, %shr, !dbg !2969
  %16 = load i8, ptr %top_p, align 1, !dbg !2970
  %conv33 = zext i8 %16 to i32, !dbg !2970
  %shr34 = ashr i32 %conv33, 3, !dbg !2971
  %xor35 = xor i32 %xor32, %shr34, !dbg !2972
  %and36 = and i32 %xor35, 15, !dbg !2973
  %conv37 = trunc i32 %and36 to i8, !dbg !2974
  store i8 %conv37, ptr %out, align 1, !dbg !2965
  %17 = load i8, ptr %out, align 1, !dbg !2975
  ret i8 %17, !dbg !2976
}

; Function Attrs: noinline nounwind optnone
define internal void @transpose_16x16_nibbles(ptr noundef %M) #0 !dbg !87 {
entry:
  %M.addr = alloca ptr, align 4
  %i = alloca i32, align 4
  %t = alloca i64, align 8
  %i8 = alloca i32, align 4
  %t0 = alloca i64, align 8
  %t1 = alloca i64, align 8
  %i41 = alloca i32, align 4
  %t045 = alloca i64, align 8
  %t152 = alloca i64, align 8
  %i75 = alloca i32, align 4
  %t79 = alloca i64, align 8
  store ptr %M, ptr %M.addr, align 4
    #dbg_declare(ptr %M.addr, !2977, !DIExpression(), !2978)
    #dbg_declare(ptr %i, !2979, !DIExpression(), !2981)
  store i32 0, ptr %i, align 4, !dbg !2981
  br label %for.cond, !dbg !2982

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !2983
  %cmp = icmp ult i32 %0, 16, !dbg !2985
  br i1 %cmp, label %for.body, label %for.end, !dbg !2986

for.body:                                         ; preds = %for.cond
    #dbg_declare(ptr %t, !2987, !DIExpression(), !2989)
  %1 = load ptr, ptr %M.addr, align 4, !dbg !2990
  %2 = load i32, ptr %i, align 4, !dbg !2991
  %arrayidx = getelementptr inbounds nuw i64, ptr %1, i32 %2, !dbg !2990
  %3 = load i64, ptr %arrayidx, align 8, !dbg !2990
  %shr = lshr i64 %3, 4, !dbg !2992
  %4 = load ptr, ptr %M.addr, align 4, !dbg !2993
  %5 = load i32, ptr %i, align 4, !dbg !2994
  %add = add i32 %5, 1, !dbg !2995
  %arrayidx1 = getelementptr inbounds nuw i64, ptr %4, i32 %add, !dbg !2993
  %6 = load i64, ptr %arrayidx1, align 8, !dbg !2993
  %xor = xor i64 %shr, %6, !dbg !2996
  %and = and i64 %xor, 1085102592571150095, !dbg !2997
  store i64 %and, ptr %t, align 8, !dbg !2989
  %7 = load i64, ptr %t, align 8, !dbg !2998
  %shl = shl i64 %7, 4, !dbg !2999
  %8 = load ptr, ptr %M.addr, align 4, !dbg !3000
  %9 = load i32, ptr %i, align 4, !dbg !3001
  %arrayidx2 = getelementptr inbounds nuw i64, ptr %8, i32 %9, !dbg !3000
  %10 = load i64, ptr %arrayidx2, align 8, !dbg !3002
  %xor3 = xor i64 %10, %shl, !dbg !3002
  store i64 %xor3, ptr %arrayidx2, align 8, !dbg !3002
  %11 = load i64, ptr %t, align 8, !dbg !3003
  %12 = load ptr, ptr %M.addr, align 4, !dbg !3004
  %13 = load i32, ptr %i, align 4, !dbg !3005
  %add4 = add i32 %13, 1, !dbg !3006
  %arrayidx5 = getelementptr inbounds nuw i64, ptr %12, i32 %add4, !dbg !3004
  %14 = load i64, ptr %arrayidx5, align 8, !dbg !3007
  %xor6 = xor i64 %14, %11, !dbg !3007
  store i64 %xor6, ptr %arrayidx5, align 8, !dbg !3007
  br label %for.inc, !dbg !3008

for.inc:                                          ; preds = %for.body
  %15 = load i32, ptr %i, align 4, !dbg !3009
  %add7 = add i32 %15, 2, !dbg !3009
  store i32 %add7, ptr %i, align 4, !dbg !3009
  br label %for.cond, !dbg !3010, !llvm.loop !3011

for.end:                                          ; preds = %for.cond
    #dbg_declare(ptr %i8, !3013, !DIExpression(), !3015)
  store i32 0, ptr %i8, align 4, !dbg !3015
  br label %for.cond9, !dbg !3016

for.cond9:                                        ; preds = %for.inc38, %for.end
  %16 = load i32, ptr %i8, align 4, !dbg !3017
  %cmp10 = icmp ult i32 %16, 16, !dbg !3019
  br i1 %cmp10, label %for.body11, label %for.end40, !dbg !3020

for.body11:                                       ; preds = %for.cond9
    #dbg_declare(ptr %t0, !3021, !DIExpression(), !3023)
  %17 = load ptr, ptr %M.addr, align 4, !dbg !3024
  %18 = load i32, ptr %i8, align 4, !dbg !3025
  %arrayidx12 = getelementptr inbounds nuw i64, ptr %17, i32 %18, !dbg !3024
  %19 = load i64, ptr %arrayidx12, align 8, !dbg !3024
  %shr13 = lshr i64 %19, 8, !dbg !3026
  %20 = load ptr, ptr %M.addr, align 4, !dbg !3027
  %21 = load i32, ptr %i8, align 4, !dbg !3028
  %add14 = add i32 %21, 2, !dbg !3029
  %arrayidx15 = getelementptr inbounds nuw i64, ptr %20, i32 %add14, !dbg !3027
  %22 = load i64, ptr %arrayidx15, align 8, !dbg !3027
  %xor16 = xor i64 %shr13, %22, !dbg !3030
  %and17 = and i64 %xor16, 71777214294589695, !dbg !3031
  store i64 %and17, ptr %t0, align 8, !dbg !3023
    #dbg_declare(ptr %t1, !3032, !DIExpression(), !3033)
  %23 = load ptr, ptr %M.addr, align 4, !dbg !3034
  %24 = load i32, ptr %i8, align 4, !dbg !3035
  %add18 = add i32 %24, 1, !dbg !3036
  %arrayidx19 = getelementptr inbounds nuw i64, ptr %23, i32 %add18, !dbg !3034
  %25 = load i64, ptr %arrayidx19, align 8, !dbg !3034
  %shr20 = lshr i64 %25, 8, !dbg !3037
  %26 = load ptr, ptr %M.addr, align 4, !dbg !3038
  %27 = load i32, ptr %i8, align 4, !dbg !3039
  %add21 = add i32 %27, 3, !dbg !3040
  %arrayidx22 = getelementptr inbounds nuw i64, ptr %26, i32 %add21, !dbg !3038
  %28 = load i64, ptr %arrayidx22, align 8, !dbg !3038
  %xor23 = xor i64 %shr20, %28, !dbg !3041
  %and24 = and i64 %xor23, 71777214294589695, !dbg !3042
  store i64 %and24, ptr %t1, align 8, !dbg !3033
  %29 = load i64, ptr %t0, align 8, !dbg !3043
  %shl25 = shl i64 %29, 8, !dbg !3044
  %30 = load ptr, ptr %M.addr, align 4, !dbg !3045
  %31 = load i32, ptr %i8, align 4, !dbg !3046
  %arrayidx26 = getelementptr inbounds nuw i64, ptr %30, i32 %31, !dbg !3045
  %32 = load i64, ptr %arrayidx26, align 8, !dbg !3047
  %xor27 = xor i64 %32, %shl25, !dbg !3047
  store i64 %xor27, ptr %arrayidx26, align 8, !dbg !3047
  %33 = load i64, ptr %t1, align 8, !dbg !3048
  %shl28 = shl i64 %33, 8, !dbg !3049
  %34 = load ptr, ptr %M.addr, align 4, !dbg !3050
  %35 = load i32, ptr %i8, align 4, !dbg !3051
  %add29 = add i32 %35, 1, !dbg !3052
  %arrayidx30 = getelementptr inbounds nuw i64, ptr %34, i32 %add29, !dbg !3050
  %36 = load i64, ptr %arrayidx30, align 8, !dbg !3053
  %xor31 = xor i64 %36, %shl28, !dbg !3053
  store i64 %xor31, ptr %arrayidx30, align 8, !dbg !3053
  %37 = load i64, ptr %t0, align 8, !dbg !3054
  %38 = load ptr, ptr %M.addr, align 4, !dbg !3055
  %39 = load i32, ptr %i8, align 4, !dbg !3056
  %add32 = add i32 %39, 2, !dbg !3057
  %arrayidx33 = getelementptr inbounds nuw i64, ptr %38, i32 %add32, !dbg !3055
  %40 = load i64, ptr %arrayidx33, align 8, !dbg !3058
  %xor34 = xor i64 %40, %37, !dbg !3058
  store i64 %xor34, ptr %arrayidx33, align 8, !dbg !3058
  %41 = load i64, ptr %t1, align 8, !dbg !3059
  %42 = load ptr, ptr %M.addr, align 4, !dbg !3060
  %43 = load i32, ptr %i8, align 4, !dbg !3061
  %add35 = add i32 %43, 3, !dbg !3062
  %arrayidx36 = getelementptr inbounds nuw i64, ptr %42, i32 %add35, !dbg !3060
  %44 = load i64, ptr %arrayidx36, align 8, !dbg !3063
  %xor37 = xor i64 %44, %41, !dbg !3063
  store i64 %xor37, ptr %arrayidx36, align 8, !dbg !3063
  br label %for.inc38, !dbg !3064

for.inc38:                                        ; preds = %for.body11
  %45 = load i32, ptr %i8, align 4, !dbg !3065
  %add39 = add i32 %45, 4, !dbg !3065
  store i32 %add39, ptr %i8, align 4, !dbg !3065
  br label %for.cond9, !dbg !3066, !llvm.loop !3067

for.end40:                                        ; preds = %for.cond9
    #dbg_declare(ptr %i41, !3069, !DIExpression(), !3071)
  store i32 0, ptr %i41, align 4, !dbg !3071
  br label %for.cond42, !dbg !3072

for.cond42:                                       ; preds = %for.inc73, %for.end40
  %46 = load i32, ptr %i41, align 4, !dbg !3073
  %cmp43 = icmp ult i32 %46, 4, !dbg !3075
  br i1 %cmp43, label %for.body44, label %for.end74, !dbg !3076

for.body44:                                       ; preds = %for.cond42
    #dbg_declare(ptr %t045, !3077, !DIExpression(), !3079)
  %47 = load ptr, ptr %M.addr, align 4, !dbg !3080
  %48 = load i32, ptr %i41, align 4, !dbg !3081
  %arrayidx46 = getelementptr inbounds nuw i64, ptr %47, i32 %48, !dbg !3080
  %49 = load i64, ptr %arrayidx46, align 8, !dbg !3080
  %shr47 = lshr i64 %49, 16, !dbg !3082
  %50 = load ptr, ptr %M.addr, align 4, !dbg !3083
  %51 = load i32, ptr %i41, align 4, !dbg !3084
  %add48 = add i32 %51, 4, !dbg !3085
  %arrayidx49 = getelementptr inbounds nuw i64, ptr %50, i32 %add48, !dbg !3083
  %52 = load i64, ptr %arrayidx49, align 8, !dbg !3083
  %xor50 = xor i64 %shr47, %52, !dbg !3086
  %and51 = and i64 %xor50, 281470681808895, !dbg !3087
  store i64 %and51, ptr %t045, align 8, !dbg !3079
    #dbg_declare(ptr %t152, !3088, !DIExpression(), !3089)
  %53 = load ptr, ptr %M.addr, align 4, !dbg !3090
  %54 = load i32, ptr %i41, align 4, !dbg !3091
  %add53 = add i32 %54, 8, !dbg !3092
  %arrayidx54 = getelementptr inbounds nuw i64, ptr %53, i32 %add53, !dbg !3090
  %55 = load i64, ptr %arrayidx54, align 8, !dbg !3090
  %shr55 = lshr i64 %55, 16, !dbg !3093
  %56 = load ptr, ptr %M.addr, align 4, !dbg !3094
  %57 = load i32, ptr %i41, align 4, !dbg !3095
  %add56 = add i32 %57, 12, !dbg !3096
  %arrayidx57 = getelementptr inbounds nuw i64, ptr %56, i32 %add56, !dbg !3094
  %58 = load i64, ptr %arrayidx57, align 8, !dbg !3094
  %xor58 = xor i64 %shr55, %58, !dbg !3097
  %and59 = and i64 %xor58, 281470681808895, !dbg !3098
  store i64 %and59, ptr %t152, align 8, !dbg !3089
  %59 = load i64, ptr %t045, align 8, !dbg !3099
  %shl60 = shl i64 %59, 16, !dbg !3100
  %60 = load ptr, ptr %M.addr, align 4, !dbg !3101
  %61 = load i32, ptr %i41, align 4, !dbg !3102
  %arrayidx61 = getelementptr inbounds nuw i64, ptr %60, i32 %61, !dbg !3101
  %62 = load i64, ptr %arrayidx61, align 8, !dbg !3103
  %xor62 = xor i64 %62, %shl60, !dbg !3103
  store i64 %xor62, ptr %arrayidx61, align 8, !dbg !3103
  %63 = load i64, ptr %t152, align 8, !dbg !3104
  %shl63 = shl i64 %63, 16, !dbg !3105
  %64 = load ptr, ptr %M.addr, align 4, !dbg !3106
  %65 = load i32, ptr %i41, align 4, !dbg !3107
  %add64 = add i32 %65, 8, !dbg !3108
  %arrayidx65 = getelementptr inbounds nuw i64, ptr %64, i32 %add64, !dbg !3106
  %66 = load i64, ptr %arrayidx65, align 8, !dbg !3109
  %xor66 = xor i64 %66, %shl63, !dbg !3109
  store i64 %xor66, ptr %arrayidx65, align 8, !dbg !3109
  %67 = load i64, ptr %t045, align 8, !dbg !3110
  %68 = load ptr, ptr %M.addr, align 4, !dbg !3111
  %69 = load i32, ptr %i41, align 4, !dbg !3112
  %add67 = add i32 %69, 4, !dbg !3113
  %arrayidx68 = getelementptr inbounds nuw i64, ptr %68, i32 %add67, !dbg !3111
  %70 = load i64, ptr %arrayidx68, align 8, !dbg !3114
  %xor69 = xor i64 %70, %67, !dbg !3114
  store i64 %xor69, ptr %arrayidx68, align 8, !dbg !3114
  %71 = load i64, ptr %t152, align 8, !dbg !3115
  %72 = load ptr, ptr %M.addr, align 4, !dbg !3116
  %73 = load i32, ptr %i41, align 4, !dbg !3117
  %add70 = add i32 %73, 12, !dbg !3118
  %arrayidx71 = getelementptr inbounds nuw i64, ptr %72, i32 %add70, !dbg !3116
  %74 = load i64, ptr %arrayidx71, align 8, !dbg !3119
  %xor72 = xor i64 %74, %71, !dbg !3119
  store i64 %xor72, ptr %arrayidx71, align 8, !dbg !3119
  br label %for.inc73, !dbg !3120

for.inc73:                                        ; preds = %for.body44
  %75 = load i32, ptr %i41, align 4, !dbg !3121
  %inc = add i32 %75, 1, !dbg !3121
  store i32 %inc, ptr %i41, align 4, !dbg !3121
  br label %for.cond42, !dbg !3122, !llvm.loop !3123

for.end74:                                        ; preds = %for.cond42
    #dbg_declare(ptr %i75, !3125, !DIExpression(), !3127)
  store i32 0, ptr %i75, align 4, !dbg !3127
  br label %for.cond76, !dbg !3128

for.cond76:                                       ; preds = %for.inc92, %for.end74
  %76 = load i32, ptr %i75, align 4, !dbg !3129
  %cmp77 = icmp ult i32 %76, 8, !dbg !3131
  br i1 %cmp77, label %for.body78, label %for.end94, !dbg !3132

for.body78:                                       ; preds = %for.cond76
    #dbg_declare(ptr %t79, !3133, !DIExpression(), !3135)
  %77 = load ptr, ptr %M.addr, align 4, !dbg !3136
  %78 = load i32, ptr %i75, align 4, !dbg !3137
  %arrayidx80 = getelementptr inbounds nuw i64, ptr %77, i32 %78, !dbg !3136
  %79 = load i64, ptr %arrayidx80, align 8, !dbg !3136
  %shr81 = lshr i64 %79, 32, !dbg !3138
  %80 = load ptr, ptr %M.addr, align 4, !dbg !3139
  %81 = load i32, ptr %i75, align 4, !dbg !3140
  %add82 = add i32 %81, 8, !dbg !3141
  %arrayidx83 = getelementptr inbounds nuw i64, ptr %80, i32 %add82, !dbg !3139
  %82 = load i64, ptr %arrayidx83, align 8, !dbg !3139
  %xor84 = xor i64 %shr81, %82, !dbg !3142
  %and85 = and i64 %xor84, 4294967295, !dbg !3143
  store i64 %and85, ptr %t79, align 8, !dbg !3135
  %83 = load i64, ptr %t79, align 8, !dbg !3144
  %shl86 = shl i64 %83, 32, !dbg !3145
  %84 = load ptr, ptr %M.addr, align 4, !dbg !3146
  %85 = load i32, ptr %i75, align 4, !dbg !3147
  %arrayidx87 = getelementptr inbounds nuw i64, ptr %84, i32 %85, !dbg !3146
  %86 = load i64, ptr %arrayidx87, align 8, !dbg !3148
  %xor88 = xor i64 %86, %shl86, !dbg !3148
  store i64 %xor88, ptr %arrayidx87, align 8, !dbg !3148
  %87 = load i64, ptr %t79, align 8, !dbg !3149
  %88 = load ptr, ptr %M.addr, align 4, !dbg !3150
  %89 = load i32, ptr %i75, align 4, !dbg !3151
  %add89 = add i32 %89, 8, !dbg !3152
  %arrayidx90 = getelementptr inbounds nuw i64, ptr %88, i32 %add89, !dbg !3150
  %90 = load i64, ptr %arrayidx90, align 8, !dbg !3153
  %xor91 = xor i64 %90, %87, !dbg !3153
  store i64 %xor91, ptr %arrayidx90, align 8, !dbg !3153
  br label %for.inc92, !dbg !3154

for.inc92:                                        ; preds = %for.body78
  %91 = load i32, ptr %i75, align 4, !dbg !3155
  %inc93 = add i32 %91, 1, !dbg !3155
  store i32 %inc93, ptr %i75, align 4, !dbg !3155
  br label %for.cond76, !dbg !3156, !llvm.loop !3157

for.end94:                                        ; preds = %for.cond76
  ret void, !dbg !3159
}

; Function Attrs: noinline nounwind optnone
define internal void @mul_add_mat_x_m_mat(i32 noundef %m_vec_limbs, ptr noundef %mat, ptr noundef %bs_mat, ptr noundef %acc, i32 noundef %mat_rows, i32 noundef %mat_cols, i32 noundef %bs_mat_cols) #0 !dbg !3160 {
entry:
  %m_vec_limbs.addr = alloca i32, align 4
  %mat.addr = alloca ptr, align 4
  %bs_mat.addr = alloca ptr, align 4
  %acc.addr = alloca ptr, align 4
  %mat_rows.addr = alloca i32, align 4
  %mat_cols.addr = alloca i32, align 4
  %bs_mat_cols.addr = alloca i32, align 4
  %r = alloca i32, align 4
  %c = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %m_vec_limbs, ptr %m_vec_limbs.addr, align 4
    #dbg_declare(ptr %m_vec_limbs.addr, !3161, !DIExpression(), !3162)
  store ptr %mat, ptr %mat.addr, align 4
    #dbg_declare(ptr %mat.addr, !3163, !DIExpression(), !3164)
  store ptr %bs_mat, ptr %bs_mat.addr, align 4
    #dbg_declare(ptr %bs_mat.addr, !3165, !DIExpression(), !3166)
  store ptr %acc, ptr %acc.addr, align 4
    #dbg_declare(ptr %acc.addr, !3167, !DIExpression(), !3168)
  store i32 %mat_rows, ptr %mat_rows.addr, align 4
    #dbg_declare(ptr %mat_rows.addr, !3169, !DIExpression(), !3170)
  store i32 %mat_cols, ptr %mat_cols.addr, align 4
    #dbg_declare(ptr %mat_cols.addr, !3171, !DIExpression(), !3172)
  store i32 %bs_mat_cols, ptr %bs_mat_cols.addr, align 4
    #dbg_declare(ptr %bs_mat_cols.addr, !3173, !DIExpression(), !3174)
    #dbg_declare(ptr %r, !3175, !DIExpression(), !3177)
  store i32 0, ptr %r, align 4, !dbg !3177
  br label %for.cond, !dbg !3178

for.cond:                                         ; preds = %for.inc17, %entry
  %0 = load i32, ptr %r, align 4, !dbg !3179
  %1 = load i32, ptr %mat_rows.addr, align 4, !dbg !3181
  %cmp = icmp slt i32 %0, %1, !dbg !3182
  br i1 %cmp, label %for.body, label %for.end19, !dbg !3183

for.body:                                         ; preds = %for.cond
    #dbg_declare(ptr %c, !3184, !DIExpression(), !3187)
  store i32 0, ptr %c, align 4, !dbg !3187
  br label %for.cond1, !dbg !3188

for.cond1:                                        ; preds = %for.inc15, %for.body
  %2 = load i32, ptr %c, align 4, !dbg !3189
  %3 = load i32, ptr %mat_cols.addr, align 4, !dbg !3191
  %cmp2 = icmp slt i32 %2, %3, !dbg !3192
  br i1 %cmp2, label %for.body3, label %for.end16, !dbg !3193

for.body3:                                        ; preds = %for.cond1
    #dbg_declare(ptr %k, !3194, !DIExpression(), !3197)
  store i32 0, ptr %k, align 4, !dbg !3197
  br label %for.cond4, !dbg !3198

for.cond4:                                        ; preds = %for.inc, %for.body3
  %4 = load i32, ptr %k, align 4, !dbg !3199
  %5 = load i32, ptr %bs_mat_cols.addr, align 4, !dbg !3201
  %cmp5 = icmp slt i32 %4, %5, !dbg !3202
  br i1 %cmp5, label %for.body6, label %for.end, !dbg !3203

for.body6:                                        ; preds = %for.cond4
  %6 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !3204
  %7 = load ptr, ptr %bs_mat.addr, align 4, !dbg !3206
  %8 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !3207
  %9 = load i32, ptr %c, align 4, !dbg !3208
  %10 = load i32, ptr %bs_mat_cols.addr, align 4, !dbg !3209
  %mul = mul nsw i32 %9, %10, !dbg !3210
  %11 = load i32, ptr %k, align 4, !dbg !3211
  %add = add nsw i32 %mul, %11, !dbg !3212
  %mul7 = mul nsw i32 %8, %add, !dbg !3213
  %add.ptr = getelementptr inbounds i64, ptr %7, i32 %mul7, !dbg !3214
  %12 = load ptr, ptr %mat.addr, align 4, !dbg !3215
  %13 = load i32, ptr %r, align 4, !dbg !3216
  %14 = load i32, ptr %mat_cols.addr, align 4, !dbg !3217
  %mul8 = mul nsw i32 %13, %14, !dbg !3218
  %15 = load i32, ptr %c, align 4, !dbg !3219
  %add9 = add nsw i32 %mul8, %15, !dbg !3220
  %arrayidx = getelementptr inbounds i8, ptr %12, i32 %add9, !dbg !3215
  %16 = load i8, ptr %arrayidx, align 1, !dbg !3215
  %17 = load ptr, ptr %acc.addr, align 4, !dbg !3221
  %18 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !3222
  %19 = load i32, ptr %r, align 4, !dbg !3223
  %20 = load i32, ptr %bs_mat_cols.addr, align 4, !dbg !3224
  %mul10 = mul nsw i32 %19, %20, !dbg !3225
  %21 = load i32, ptr %k, align 4, !dbg !3226
  %add11 = add nsw i32 %mul10, %21, !dbg !3227
  %mul12 = mul nsw i32 %18, %add11, !dbg !3228
  %add.ptr13 = getelementptr inbounds i64, ptr %17, i32 %mul12, !dbg !3229
  call void @m_vec_mul_add(i32 noundef %6, ptr noundef %add.ptr, i8 noundef zeroext %16, ptr noundef %add.ptr13) #5, !dbg !3230
  br label %for.inc, !dbg !3231

for.inc:                                          ; preds = %for.body6
  %22 = load i32, ptr %k, align 4, !dbg !3232
  %add14 = add nsw i32 %22, 1, !dbg !3232
  store i32 %add14, ptr %k, align 4, !dbg !3232
  br label %for.cond4, !dbg !3233, !llvm.loop !3234

for.end:                                          ; preds = %for.cond4
  br label %for.inc15, !dbg !3236

for.inc15:                                        ; preds = %for.end
  %23 = load i32, ptr %c, align 4, !dbg !3237
  %inc = add nsw i32 %23, 1, !dbg !3237
  store i32 %inc, ptr %c, align 4, !dbg !3237
  br label %for.cond1, !dbg !3238, !llvm.loop !3239

for.end16:                                        ; preds = %for.cond1
  br label %for.inc17, !dbg !3241

for.inc17:                                        ; preds = %for.end16
  %24 = load i32, ptr %r, align 4, !dbg !3242
  %inc18 = add nsw i32 %24, 1, !dbg !3242
  store i32 %inc18, ptr %r, align 4, !dbg !3242
  br label %for.cond, !dbg !3243, !llvm.loop !3244

for.end19:                                        ; preds = %for.cond
  ret void, !dbg !3246
}

; Function Attrs: noinline nounwind optnone
define internal void @P1_times_Vt(ptr noundef %p, ptr noundef %P1, ptr noundef %V, ptr noundef %acc) #0 !dbg !3247 {
entry:
  %p.addr = alloca ptr, align 4
  %P1.addr = alloca ptr, align 4
  %V.addr = alloca ptr, align 4
  %acc.addr = alloca ptr, align 4
  store ptr %p, ptr %p.addr, align 4
    #dbg_declare(ptr %p.addr, !3248, !DIExpression(), !3249)
  store ptr %P1, ptr %P1.addr, align 4
    #dbg_declare(ptr %P1.addr, !3250, !DIExpression(), !3251)
  store ptr %V, ptr %V.addr, align 4
    #dbg_declare(ptr %V.addr, !3252, !DIExpression(), !3253)
  store ptr %acc, ptr %acc.addr, align 4
    #dbg_declare(ptr %acc.addr, !3254, !DIExpression(), !3255)
  %0 = load ptr, ptr %p.addr, align 4, !dbg !3256
  %m_vec_limbs = getelementptr inbounds nuw %struct.mayo_params_t, ptr %0, i32 0, i32 21, !dbg !3257
  %1 = load i32, ptr %m_vec_limbs, align 4, !dbg !3257
  %2 = load ptr, ptr %P1.addr, align 4, !dbg !3258
  %3 = load ptr, ptr %V.addr, align 4, !dbg !3259
  %4 = load ptr, ptr %acc.addr, align 4, !dbg !3260
  %5 = load ptr, ptr %p.addr, align 4, !dbg !3261
  %n = getelementptr inbounds nuw %struct.mayo_params_t, ptr %5, i32 0, i32 1, !dbg !3262
  %6 = load i32, ptr %n, align 4, !dbg !3262
  %7 = load ptr, ptr %p.addr, align 4, !dbg !3261
  %o = getelementptr inbounds nuw %struct.mayo_params_t, ptr %7, i32 0, i32 2, !dbg !3262
  %8 = load i32, ptr %o, align 4, !dbg !3262
  %sub = sub nsw i32 %6, %8, !dbg !3262
  %9 = load ptr, ptr %p.addr, align 4, !dbg !3263
  %n1 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %9, i32 0, i32 1, !dbg !3264
  %10 = load i32, ptr %n1, align 4, !dbg !3264
  %11 = load ptr, ptr %p.addr, align 4, !dbg !3263
  %o2 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %11, i32 0, i32 2, !dbg !3264
  %12 = load i32, ptr %o2, align 4, !dbg !3264
  %sub3 = sub nsw i32 %10, %12, !dbg !3264
  %13 = load ptr, ptr %p.addr, align 4, !dbg !3265
  %k = getelementptr inbounds nuw %struct.mayo_params_t, ptr %13, i32 0, i32 3, !dbg !3266
  %14 = load i32, ptr %k, align 4, !dbg !3266
  call void @mul_add_m_upper_triangular_mat_x_mat_trans(i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %sub, i32 noundef %sub3, i32 noundef %14, i32 noundef 1) #5, !dbg !3267
  ret void, !dbg !3268
}

; Function Attrs: noinline nounwind optnone
define internal void @mul_add_m_upper_triangular_mat_x_mat_trans(i32 noundef %m_vec_limbs, ptr noundef %bs_mat, ptr noundef %mat, ptr noundef %acc, i32 noundef %bs_mat_rows, i32 noundef %bs_mat_cols, i32 noundef %mat_rows, i32 noundef %triangular) #0 !dbg !3269 {
entry:
  %m_vec_limbs.addr = alloca i32, align 4
  %bs_mat.addr = alloca ptr, align 4
  %mat.addr = alloca ptr, align 4
  %acc.addr = alloca ptr, align 4
  %bs_mat_rows.addr = alloca i32, align 4
  %bs_mat_cols.addr = alloca i32, align 4
  %mat_rows.addr = alloca i32, align 4
  %triangular.addr = alloca i32, align 4
  %bs_mat_entries_used = alloca i32, align 4
  %r = alloca i32, align 4
  %c = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %m_vec_limbs, ptr %m_vec_limbs.addr, align 4
    #dbg_declare(ptr %m_vec_limbs.addr, !3270, !DIExpression(), !3271)
  store ptr %bs_mat, ptr %bs_mat.addr, align 4
    #dbg_declare(ptr %bs_mat.addr, !3272, !DIExpression(), !3273)
  store ptr %mat, ptr %mat.addr, align 4
    #dbg_declare(ptr %mat.addr, !3274, !DIExpression(), !3275)
  store ptr %acc, ptr %acc.addr, align 4
    #dbg_declare(ptr %acc.addr, !3276, !DIExpression(), !3277)
  store i32 %bs_mat_rows, ptr %bs_mat_rows.addr, align 4
    #dbg_declare(ptr %bs_mat_rows.addr, !3278, !DIExpression(), !3279)
  store i32 %bs_mat_cols, ptr %bs_mat_cols.addr, align 4
    #dbg_declare(ptr %bs_mat_cols.addr, !3280, !DIExpression(), !3281)
  store i32 %mat_rows, ptr %mat_rows.addr, align 4
    #dbg_declare(ptr %mat_rows.addr, !3282, !DIExpression(), !3283)
  store i32 %triangular, ptr %triangular.addr, align 4
    #dbg_declare(ptr %triangular.addr, !3284, !DIExpression(), !3285)
    #dbg_declare(ptr %bs_mat_entries_used, !3286, !DIExpression(), !3287)
  store i32 0, ptr %bs_mat_entries_used, align 4, !dbg !3287
    #dbg_declare(ptr %r, !3288, !DIExpression(), !3290)
  store i32 0, ptr %r, align 4, !dbg !3290
  br label %for.cond, !dbg !3291

for.cond:                                         ; preds = %for.inc17, %entry
  %0 = load i32, ptr %r, align 4, !dbg !3292
  %1 = load i32, ptr %bs_mat_rows.addr, align 4, !dbg !3294
  %cmp = icmp slt i32 %0, %1, !dbg !3295
  br i1 %cmp, label %for.body, label %for.end19, !dbg !3296

for.body:                                         ; preds = %for.cond
    #dbg_declare(ptr %c, !3297, !DIExpression(), !3300)
  %2 = load i32, ptr %triangular.addr, align 4, !dbg !3301
  %3 = load i32, ptr %r, align 4, !dbg !3302
  %mul = mul nsw i32 %2, %3, !dbg !3303
  store i32 %mul, ptr %c, align 4, !dbg !3300
  br label %for.cond1, !dbg !3304

for.cond1:                                        ; preds = %for.inc15, %for.body
  %4 = load i32, ptr %c, align 4, !dbg !3305
  %5 = load i32, ptr %bs_mat_cols.addr, align 4, !dbg !3307
  %cmp2 = icmp slt i32 %4, %5, !dbg !3308
  br i1 %cmp2, label %for.body3, label %for.end16, !dbg !3309

for.body3:                                        ; preds = %for.cond1
    #dbg_declare(ptr %k, !3310, !DIExpression(), !3313)
  store i32 0, ptr %k, align 4, !dbg !3313
  br label %for.cond4, !dbg !3314

for.cond4:                                        ; preds = %for.inc, %for.body3
  %6 = load i32, ptr %k, align 4, !dbg !3315
  %7 = load i32, ptr %mat_rows.addr, align 4, !dbg !3317
  %cmp5 = icmp slt i32 %6, %7, !dbg !3318
  br i1 %cmp5, label %for.body6, label %for.end, !dbg !3319

for.body6:                                        ; preds = %for.cond4
  %8 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !3320
  %9 = load ptr, ptr %bs_mat.addr, align 4, !dbg !3322
  %10 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !3323
  %11 = load i32, ptr %bs_mat_entries_used, align 4, !dbg !3324
  %mul7 = mul nsw i32 %10, %11, !dbg !3325
  %add.ptr = getelementptr inbounds i64, ptr %9, i32 %mul7, !dbg !3326
  %12 = load ptr, ptr %mat.addr, align 4, !dbg !3327
  %13 = load i32, ptr %k, align 4, !dbg !3328
  %14 = load i32, ptr %bs_mat_cols.addr, align 4, !dbg !3329
  %mul8 = mul nsw i32 %13, %14, !dbg !3330
  %15 = load i32, ptr %c, align 4, !dbg !3331
  %add = add nsw i32 %mul8, %15, !dbg !3332
  %arrayidx = getelementptr inbounds i8, ptr %12, i32 %add, !dbg !3327
  %16 = load i8, ptr %arrayidx, align 1, !dbg !3327
  %17 = load ptr, ptr %acc.addr, align 4, !dbg !3333
  %18 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !3334
  %19 = load i32, ptr %r, align 4, !dbg !3335
  %20 = load i32, ptr %mat_rows.addr, align 4, !dbg !3336
  %mul9 = mul nsw i32 %19, %20, !dbg !3337
  %21 = load i32, ptr %k, align 4, !dbg !3338
  %add10 = add nsw i32 %mul9, %21, !dbg !3339
  %mul11 = mul nsw i32 %18, %add10, !dbg !3340
  %add.ptr12 = getelementptr inbounds i64, ptr %17, i32 %mul11, !dbg !3341
  call void @m_vec_mul_add(i32 noundef %8, ptr noundef %add.ptr, i8 noundef zeroext %16, ptr noundef %add.ptr12) #5, !dbg !3342
  br label %for.inc, !dbg !3343

for.inc:                                          ; preds = %for.body6
  %22 = load i32, ptr %k, align 4, !dbg !3344
  %add13 = add nsw i32 %22, 1, !dbg !3344
  store i32 %add13, ptr %k, align 4, !dbg !3344
  br label %for.cond4, !dbg !3345, !llvm.loop !3346

for.end:                                          ; preds = %for.cond4
  %23 = load i32, ptr %bs_mat_entries_used, align 4, !dbg !3348
  %add14 = add nsw i32 %23, 1, !dbg !3348
  store i32 %add14, ptr %bs_mat_entries_used, align 4, !dbg !3348
  br label %for.inc15, !dbg !3349

for.inc15:                                        ; preds = %for.end
  %24 = load i32, ptr %c, align 4, !dbg !3350
  %inc = add nsw i32 %24, 1, !dbg !3350
  store i32 %inc, ptr %c, align 4, !dbg !3350
  br label %for.cond1, !dbg !3351, !llvm.loop !3352

for.end16:                                        ; preds = %for.cond1
  br label %for.inc17, !dbg !3354

for.inc17:                                        ; preds = %for.end16
  %25 = load i32, ptr %r, align 4, !dbg !3355
  %inc18 = add nsw i32 %25, 1, !dbg !3355
  store i32 %inc18, ptr %r, align 4, !dbg !3355
  br label %for.cond, !dbg !3356, !llvm.loop !3357

for.end19:                                        ; preds = %for.cond
  ret void, !dbg !3359
}

; Function Attrs: noinline nounwind optnone
define dso_local i32 @mayo_sign(ptr noundef %p, ptr noundef %sm, ptr noundef %smlen, ptr noundef %m, i32 noundef %mlen, ptr noundef %csk) #0 !dbg !3360 {
entry:
  %p.addr = alloca ptr, align 4
  %sm.addr = alloca ptr, align 4
  %smlen.addr = alloca ptr, align 4
  %m.addr = alloca ptr, align 4
  %mlen.addr = alloca i32, align 4
  %csk.addr = alloca ptr, align 4
  %ret = alloca i32, align 4
  %param_sig_bytes = alloca i32, align 4
  %siglen = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 4
    #dbg_declare(ptr %p.addr, !3361, !DIExpression(), !3362)
  store ptr %sm, ptr %sm.addr, align 4
    #dbg_declare(ptr %sm.addr, !3363, !DIExpression(), !3364)
  store ptr %smlen, ptr %smlen.addr, align 4
    #dbg_declare(ptr %smlen.addr, !3365, !DIExpression(), !3366)
  store ptr %m, ptr %m.addr, align 4
    #dbg_declare(ptr %m.addr, !3367, !DIExpression(), !3368)
  store i32 %mlen, ptr %mlen.addr, align 4
    #dbg_declare(ptr %mlen.addr, !3369, !DIExpression(), !3370)
  store ptr %csk, ptr %csk.addr, align 4
    #dbg_declare(ptr %csk.addr, !3371, !DIExpression(), !3372)
    #dbg_declare(ptr %ret, !3373, !DIExpression(), !3374)
  store i32 0, ptr %ret, align 4, !dbg !3374
    #dbg_declare(ptr %param_sig_bytes, !3375, !DIExpression(), !3376)
  %0 = load ptr, ptr %p.addr, align 4, !dbg !3377
  %sig_bytes = getelementptr inbounds nuw %struct.mayo_params_t, ptr %0, i32 0, i32 16, !dbg !3378
  %1 = load i32, ptr %sig_bytes, align 4, !dbg !3378
  store i32 %1, ptr %param_sig_bytes, align 4, !dbg !3376
    #dbg_declare(ptr %siglen, !3379, !DIExpression(), !3380)
  %2 = load ptr, ptr %sm.addr, align 4, !dbg !3381
  %3 = load i32, ptr %param_sig_bytes, align 4, !dbg !3382
  %add.ptr = getelementptr inbounds i8, ptr %2, i32 %3, !dbg !3383
  %4 = load ptr, ptr %m.addr, align 4, !dbg !3384
  %5 = load i32, ptr %mlen.addr, align 4, !dbg !3385
  %call = call ptr @memmove(ptr noundef %add.ptr, ptr noundef %4, i32 noundef %5) #5, !dbg !3386
  %6 = load ptr, ptr %p.addr, align 4, !dbg !3387
  %7 = load ptr, ptr %sm.addr, align 4, !dbg !3388
  %8 = load ptr, ptr %sm.addr, align 4, !dbg !3389
  %9 = load i32, ptr %param_sig_bytes, align 4, !dbg !3390
  %add.ptr1 = getelementptr inbounds i8, ptr %8, i32 %9, !dbg !3391
  %10 = load i32, ptr %mlen.addr, align 4, !dbg !3392
  %11 = load ptr, ptr %csk.addr, align 4, !dbg !3393
  %call2 = call i32 @mayo_sign_signature(ptr noundef %6, ptr noundef %7, ptr noundef %siglen, ptr noundef %add.ptr1, i32 noundef %10, ptr noundef %11) #5, !dbg !3394
  store i32 %call2, ptr %ret, align 4, !dbg !3395
  %12 = load i32, ptr %ret, align 4, !dbg !3396
  %cmp = icmp ne i32 %12, 0, !dbg !3398
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !3399

lor.lhs.false:                                    ; preds = %entry
  %13 = load i32, ptr %siglen, align 4, !dbg !3400
  %14 = load i32, ptr %param_sig_bytes, align 4, !dbg !3401
  %cmp3 = icmp ne i32 %13, %14, !dbg !3402
  br i1 %cmp3, label %if.then, label %if.end, !dbg !3399

if.then:                                          ; preds = %lor.lhs.false, %entry
  %15 = load ptr, ptr %sm.addr, align 4, !dbg !3403
  %16 = load i32, ptr %siglen, align 4, !dbg !3405
  %17 = load i32, ptr %mlen.addr, align 4, !dbg !3406
  %add = add i32 %16, %17, !dbg !3407
  %call4 = call ptr @memset(ptr noundef %15, i32 noundef 0, i32 noundef %add) #5, !dbg !3408
  br label %err, !dbg !3409

if.end:                                           ; preds = %lor.lhs.false
  %18 = load i32, ptr %siglen, align 4, !dbg !3410
  %19 = load i32, ptr %mlen.addr, align 4, !dbg !3411
  %add5 = add i32 %18, %19, !dbg !3412
  %20 = load ptr, ptr %smlen.addr, align 4, !dbg !3413
  store i32 %add5, ptr %20, align 4, !dbg !3414
  br label %err, !dbg !3415

err:                                              ; preds = %if.end, %if.then
    #dbg_label(!3416, !3417)
  %21 = load i32, ptr %ret, align 4, !dbg !3418
  ret i32 %21, !dbg !3419
}

; Function Attrs: noinline nounwind optnone
define dso_local i32 @mayo_open(ptr noundef %p, ptr noundef %m, ptr noundef %mlen, ptr noundef %sm, i32 noundef %smlen, ptr noundef %pk) #0 !dbg !3420 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 4
  %m.addr = alloca ptr, align 4
  %mlen.addr = alloca ptr, align 4
  %sm.addr = alloca ptr, align 4
  %smlen.addr = alloca i32, align 4
  %pk.addr = alloca ptr, align 4
  %param_sig_bytes = alloca i32, align 4
  %result = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 4
    #dbg_declare(ptr %p.addr, !3421, !DIExpression(), !3422)
  store ptr %m, ptr %m.addr, align 4
    #dbg_declare(ptr %m.addr, !3423, !DIExpression(), !3424)
  store ptr %mlen, ptr %mlen.addr, align 4
    #dbg_declare(ptr %mlen.addr, !3425, !DIExpression(), !3426)
  store ptr %sm, ptr %sm.addr, align 4
    #dbg_declare(ptr %sm.addr, !3427, !DIExpression(), !3428)
  store i32 %smlen, ptr %smlen.addr, align 4
    #dbg_declare(ptr %smlen.addr, !3429, !DIExpression(), !3430)
  store ptr %pk, ptr %pk.addr, align 4
    #dbg_declare(ptr %pk.addr, !3431, !DIExpression(), !3432)
    #dbg_declare(ptr %param_sig_bytes, !3433, !DIExpression(), !3434)
  %0 = load ptr, ptr %p.addr, align 4, !dbg !3435
  %sig_bytes = getelementptr inbounds nuw %struct.mayo_params_t, ptr %0, i32 0, i32 16, !dbg !3436
  %1 = load i32, ptr %sig_bytes, align 4, !dbg !3436
  store i32 %1, ptr %param_sig_bytes, align 4, !dbg !3434
  %2 = load i32, ptr %smlen.addr, align 4, !dbg !3437
  %3 = load i32, ptr %param_sig_bytes, align 4, !dbg !3439
  %cmp = icmp ult i32 %2, %3, !dbg !3440
  br i1 %cmp, label %if.then, label %if.end, !dbg !3440

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !3441
  br label %return, !dbg !3441

if.end:                                           ; preds = %entry
    #dbg_declare(ptr %result, !3443, !DIExpression(), !3444)
  %4 = load ptr, ptr %p.addr, align 4, !dbg !3445
  %5 = load ptr, ptr %sm.addr, align 4, !dbg !3446
  %6 = load i32, ptr %param_sig_bytes, align 4, !dbg !3447
  %add.ptr = getelementptr inbounds i8, ptr %5, i32 %6, !dbg !3448
  %7 = load i32, ptr %smlen.addr, align 4, !dbg !3449
  %8 = load i32, ptr %param_sig_bytes, align 4, !dbg !3450
  %sub = sub i32 %7, %8, !dbg !3451
  %9 = load ptr, ptr %sm.addr, align 4, !dbg !3452
  %10 = load ptr, ptr %pk.addr, align 4, !dbg !3453
  %call = call i32 @mayo_verify(ptr noundef %4, ptr noundef %add.ptr, i32 noundef %sub, ptr noundef %9, ptr noundef %10) #5, !dbg !3454
  store i32 %call, ptr %result, align 4, !dbg !3444
  %11 = load i32, ptr %result, align 4, !dbg !3455
  %cmp1 = icmp eq i32 %11, 0, !dbg !3457
  br i1 %cmp1, label %if.then2, label %if.end6, !dbg !3457

if.then2:                                         ; preds = %if.end
  %12 = load i32, ptr %smlen.addr, align 4, !dbg !3458
  %13 = load i32, ptr %param_sig_bytes, align 4, !dbg !3460
  %sub3 = sub i32 %12, %13, !dbg !3461
  %14 = load ptr, ptr %mlen.addr, align 4, !dbg !3462
  store i32 %sub3, ptr %14, align 4, !dbg !3463
  %15 = load ptr, ptr %m.addr, align 4, !dbg !3464
  %16 = load ptr, ptr %sm.addr, align 4, !dbg !3465
  %17 = load i32, ptr %param_sig_bytes, align 4, !dbg !3466
  %add.ptr4 = getelementptr inbounds i8, ptr %16, i32 %17, !dbg !3467
  %18 = load ptr, ptr %mlen.addr, align 4, !dbg !3468
  %19 = load i32, ptr %18, align 4, !dbg !3469
  %call5 = call ptr @memmove(ptr noundef %15, ptr noundef %add.ptr4, i32 noundef %19) #5, !dbg !3470
  br label %if.end6, !dbg !3471

if.end6:                                          ; preds = %if.then2, %if.end
  %20 = load i32, ptr %result, align 4, !dbg !3472
  store i32 %20, ptr %retval, align 4, !dbg !3473
  br label %return, !dbg !3473

return:                                           ; preds = %if.end6, %if.then
  %21 = load i32, ptr %retval, align 4, !dbg !3474
  ret i32 %21, !dbg !3474
}

; Function Attrs: noinline nounwind optnone
define dso_local i32 @mayo_verify(ptr noundef %p, ptr noundef %m, i32 noundef %mlen, ptr noundef %sig, ptr noundef %cpk) #0 !dbg !3475 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 4
  %m.addr = alloca ptr, align 4
  %mlen.addr = alloca i32, align 4
  %sig.addr = alloca ptr, align 4
  %cpk.addr = alloca ptr, align 4
  %tEnc = alloca [71 x i8], align 1
  %t = alloca [142 x i8], align 1
  %y = alloca [284 x i8], align 1
  %s = alloca [1848 x i8], align 1
  %pk = alloca [114480 x i64], align 8
  %tmp = alloca [104 x i8], align 1
  %param_m = alloca i32, align 4
  %param_n = alloca i32, align 4
  %param_k = alloca i32, align 4
  %param_m_bytes = alloca i32, align 4
  %param_sig_bytes = alloca i32, align 4
  %param_digest_bytes = alloca i32, align 4
  %param_salt_bytes = alloca i32, align 4
  %ret = alloca i32, align 4
  %P1 = alloca ptr, align 4
  %P2 = alloca ptr, align 4
  %P3 = alloca ptr, align 4
  store ptr %p, ptr %p.addr, align 4
    #dbg_declare(ptr %p.addr, !3478, !DIExpression(), !3479)
  store ptr %m, ptr %m.addr, align 4
    #dbg_declare(ptr %m.addr, !3480, !DIExpression(), !3481)
  store i32 %mlen, ptr %mlen.addr, align 4
    #dbg_declare(ptr %mlen.addr, !3482, !DIExpression(), !3483)
  store ptr %sig, ptr %sig.addr, align 4
    #dbg_declare(ptr %sig.addr, !3484, !DIExpression(), !3485)
  store ptr %cpk, ptr %cpk.addr, align 4
    #dbg_declare(ptr %cpk.addr, !3486, !DIExpression(), !3487)
    #dbg_declare(ptr %tEnc, !3488, !DIExpression(), !3489)
    #dbg_declare(ptr %t, !3490, !DIExpression(), !3491)
    #dbg_declare(ptr %y, !3492, !DIExpression(), !3496)
  call void @llvm.memset.p0.i32(ptr align 1 %y, i8 0, i32 284, i1 false), !dbg !3496
    #dbg_declare(ptr %s, !3497, !DIExpression(), !3498)
    #dbg_declare(ptr %pk, !3499, !DIExpression(), !3503)
  call void @llvm.memset.p0.i32(ptr align 8 %pk, i8 0, i32 915840, i1 false), !dbg !3503
    #dbg_declare(ptr %tmp, !3504, !DIExpression(), !3508)
    #dbg_declare(ptr %param_m, !3509, !DIExpression(), !3510)
  %0 = load ptr, ptr %p.addr, align 4, !dbg !3511
  %m1 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %0, i32 0, i32 0, !dbg !3512
  %1 = load i32, ptr %m1, align 4, !dbg !3512
  store i32 %1, ptr %param_m, align 4, !dbg !3510
    #dbg_declare(ptr %param_n, !3513, !DIExpression(), !3514)
  %2 = load ptr, ptr %p.addr, align 4, !dbg !3515
  %n = getelementptr inbounds nuw %struct.mayo_params_t, ptr %2, i32 0, i32 1, !dbg !3516
  %3 = load i32, ptr %n, align 4, !dbg !3516
  store i32 %3, ptr %param_n, align 4, !dbg !3514
    #dbg_declare(ptr %param_k, !3517, !DIExpression(), !3518)
  %4 = load ptr, ptr %p.addr, align 4, !dbg !3519
  %k = getelementptr inbounds nuw %struct.mayo_params_t, ptr %4, i32 0, i32 3, !dbg !3520
  %5 = load i32, ptr %k, align 4, !dbg !3520
  store i32 %5, ptr %param_k, align 4, !dbg !3518
    #dbg_declare(ptr %param_m_bytes, !3521, !DIExpression(), !3522)
  %6 = load ptr, ptr %p.addr, align 4, !dbg !3523
  %m_bytes = getelementptr inbounds nuw %struct.mayo_params_t, ptr %6, i32 0, i32 6, !dbg !3524
  %7 = load i32, ptr %m_bytes, align 4, !dbg !3524
  store i32 %7, ptr %param_m_bytes, align 4, !dbg !3522
    #dbg_declare(ptr %param_sig_bytes, !3525, !DIExpression(), !3526)
  %8 = load ptr, ptr %p.addr, align 4, !dbg !3527
  %sig_bytes = getelementptr inbounds nuw %struct.mayo_params_t, ptr %8, i32 0, i32 16, !dbg !3528
  %9 = load i32, ptr %sig_bytes, align 4, !dbg !3528
  store i32 %9, ptr %param_sig_bytes, align 4, !dbg !3526
    #dbg_declare(ptr %param_digest_bytes, !3529, !DIExpression(), !3530)
  %10 = load ptr, ptr %p.addr, align 4, !dbg !3531
  %digest_bytes = getelementptr inbounds nuw %struct.mayo_params_t, ptr %10, i32 0, i32 19, !dbg !3532
  %11 = load i32, ptr %digest_bytes, align 4, !dbg !3532
  store i32 %11, ptr %param_digest_bytes, align 4, !dbg !3530
    #dbg_declare(ptr %param_salt_bytes, !3533, !DIExpression(), !3534)
  %12 = load ptr, ptr %p.addr, align 4, !dbg !3535
  %salt_bytes = getelementptr inbounds nuw %struct.mayo_params_t, ptr %12, i32 0, i32 17, !dbg !3536
  %13 = load i32, ptr %salt_bytes, align 4, !dbg !3536
  store i32 %13, ptr %param_salt_bytes, align 4, !dbg !3534
    #dbg_declare(ptr %ret, !3537, !DIExpression(), !3538)
  %14 = load ptr, ptr %p.addr, align 4, !dbg !3539
  %15 = load ptr, ptr %cpk.addr, align 4, !dbg !3540
  %arraydecay = getelementptr inbounds [114480 x i64], ptr %pk, i32 0, i32 0, !dbg !3541
  %call = call i32 @mayo_expand_pk(ptr noundef %14, ptr noundef %15, ptr noundef %arraydecay) #5, !dbg !3542
  store i32 %call, ptr %ret, align 4, !dbg !3538
  %16 = load i32, ptr %ret, align 4, !dbg !3543
  %cmp = icmp ne i32 %16, 0, !dbg !3545
  br i1 %cmp, label %if.then, label %if.end, !dbg !3545

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !3546
  br label %return, !dbg !3546

if.end:                                           ; preds = %entry
    #dbg_declare(ptr %P1, !3548, !DIExpression(), !3549)
  %arraydecay2 = getelementptr inbounds [114480 x i64], ptr %pk, i32 0, i32 0, !dbg !3550
  store ptr %arraydecay2, ptr %P1, align 4, !dbg !3549
    #dbg_declare(ptr %P2, !3551, !DIExpression(), !3552)
  %17 = load ptr, ptr %P1, align 4, !dbg !3553
  %18 = load ptr, ptr %p.addr, align 4, !dbg !3554
  %n3 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %18, i32 0, i32 1, !dbg !3555
  %19 = load i32, ptr %n3, align 4, !dbg !3555
  %20 = load ptr, ptr %p.addr, align 4, !dbg !3554
  %o = getelementptr inbounds nuw %struct.mayo_params_t, ptr %20, i32 0, i32 2, !dbg !3555
  %21 = load i32, ptr %o, align 4, !dbg !3555
  %sub = sub nsw i32 %19, %21, !dbg !3555
  %22 = load ptr, ptr %p.addr, align 4, !dbg !3554
  %n4 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %22, i32 0, i32 1, !dbg !3555
  %23 = load i32, ptr %n4, align 4, !dbg !3555
  %24 = load ptr, ptr %p.addr, align 4, !dbg !3554
  %o5 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %24, i32 0, i32 2, !dbg !3555
  %25 = load i32, ptr %o5, align 4, !dbg !3555
  %sub6 = sub nsw i32 %23, %25, !dbg !3555
  %add = add nsw i32 %sub6, 1, !dbg !3555
  %mul = mul nsw i32 %sub, %add, !dbg !3555
  %div = sdiv i32 %mul, 2, !dbg !3555
  %26 = load ptr, ptr %p.addr, align 4, !dbg !3554
  %m_vec_limbs = getelementptr inbounds nuw %struct.mayo_params_t, ptr %26, i32 0, i32 21, !dbg !3555
  %27 = load i32, ptr %m_vec_limbs, align 4, !dbg !3555
  %mul7 = mul nsw i32 %div, %27, !dbg !3555
  %add.ptr = getelementptr inbounds i64, ptr %17, i32 %mul7, !dbg !3556
  store ptr %add.ptr, ptr %P2, align 4, !dbg !3552
    #dbg_declare(ptr %P3, !3557, !DIExpression(), !3558)
  %28 = load ptr, ptr %P2, align 4, !dbg !3559
  %29 = load ptr, ptr %p.addr, align 4, !dbg !3560
  %n8 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %29, i32 0, i32 1, !dbg !3561
  %30 = load i32, ptr %n8, align 4, !dbg !3561
  %31 = load ptr, ptr %p.addr, align 4, !dbg !3560
  %o9 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %31, i32 0, i32 2, !dbg !3561
  %32 = load i32, ptr %o9, align 4, !dbg !3561
  %sub10 = sub nsw i32 %30, %32, !dbg !3561
  %33 = load ptr, ptr %p.addr, align 4, !dbg !3560
  %o11 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %33, i32 0, i32 2, !dbg !3561
  %34 = load i32, ptr %o11, align 4, !dbg !3561
  %mul12 = mul nsw i32 %sub10, %34, !dbg !3561
  %35 = load ptr, ptr %p.addr, align 4, !dbg !3560
  %m_vec_limbs13 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %35, i32 0, i32 21, !dbg !3561
  %36 = load i32, ptr %m_vec_limbs13, align 4, !dbg !3561
  %mul14 = mul nsw i32 %mul12, %36, !dbg !3561
  %add.ptr15 = getelementptr inbounds i64, ptr %28, i32 %mul14, !dbg !3562
  store ptr %add.ptr15, ptr %P3, align 4, !dbg !3558
  %arraydecay16 = getelementptr inbounds [104 x i8], ptr %tmp, i32 0, i32 0, !dbg !3563
  %37 = load i32, ptr %param_digest_bytes, align 4, !dbg !3564
  %38 = load ptr, ptr %m.addr, align 4, !dbg !3565
  %39 = load i32, ptr %mlen.addr, align 4, !dbg !3566
  %call17 = call i32 @shake256(ptr noundef %arraydecay16, i32 noundef %37, ptr noundef %38, i32 noundef %39) #5, !dbg !3567
  %arraydecay18 = getelementptr inbounds [104 x i8], ptr %tmp, i32 0, i32 0, !dbg !3568
  %40 = load i32, ptr %param_digest_bytes, align 4, !dbg !3569
  %add.ptr19 = getelementptr inbounds i8, ptr %arraydecay18, i32 %40, !dbg !3570
  %41 = load ptr, ptr %sig.addr, align 4, !dbg !3571
  %42 = load i32, ptr %param_sig_bytes, align 4, !dbg !3572
  %add.ptr20 = getelementptr inbounds i8, ptr %41, i32 %42, !dbg !3573
  %43 = load i32, ptr %param_salt_bytes, align 4, !dbg !3574
  %idx.neg = sub i32 0, %43, !dbg !3575
  %add.ptr21 = getelementptr inbounds i8, ptr %add.ptr20, i32 %idx.neg, !dbg !3575
  %44 = load i32, ptr %param_salt_bytes, align 4, !dbg !3576
  %call22 = call ptr @memcpy(ptr noundef %add.ptr19, ptr noundef %add.ptr21, i32 noundef %44) #5, !dbg !3577
  %arraydecay23 = getelementptr inbounds [71 x i8], ptr %tEnc, i32 0, i32 0, !dbg !3578
  %45 = load i32, ptr %param_m_bytes, align 4, !dbg !3579
  %arraydecay24 = getelementptr inbounds [104 x i8], ptr %tmp, i32 0, i32 0, !dbg !3580
  %46 = load i32, ptr %param_digest_bytes, align 4, !dbg !3581
  %47 = load i32, ptr %param_salt_bytes, align 4, !dbg !3582
  %add25 = add nsw i32 %46, %47, !dbg !3583
  %call26 = call i32 @shake256(ptr noundef %arraydecay23, i32 noundef %45, ptr noundef %arraydecay24, i32 noundef %add25) #5, !dbg !3584
  %arraydecay27 = getelementptr inbounds [71 x i8], ptr %tEnc, i32 0, i32 0, !dbg !3585
  %arraydecay28 = getelementptr inbounds [142 x i8], ptr %t, i32 0, i32 0, !dbg !3586
  %48 = load i32, ptr %param_m, align 4, !dbg !3587
  call void @decode(ptr noundef %arraydecay27, ptr noundef %arraydecay28, i32 noundef %48) #5, !dbg !3588
  %49 = load ptr, ptr %sig.addr, align 4, !dbg !3589
  %arraydecay29 = getelementptr inbounds [1848 x i8], ptr %s, i32 0, i32 0, !dbg !3590
  %50 = load i32, ptr %param_k, align 4, !dbg !3591
  %51 = load i32, ptr %param_n, align 4, !dbg !3592
  %mul30 = mul nsw i32 %50, %51, !dbg !3593
  call void @decode(ptr noundef %49, ptr noundef %arraydecay29, i32 noundef %mul30) #5, !dbg !3594
  %52 = load ptr, ptr %p.addr, align 4, !dbg !3595
  %arraydecay31 = getelementptr inbounds [1848 x i8], ptr %s, i32 0, i32 0, !dbg !3596
  %53 = load ptr, ptr %P1, align 4, !dbg !3597
  %54 = load ptr, ptr %P2, align 4, !dbg !3598
  %55 = load ptr, ptr %P3, align 4, !dbg !3599
  %arraydecay32 = getelementptr inbounds [284 x i8], ptr %y, i32 0, i32 0, !dbg !3600
  call void @eval_public_map(ptr noundef %52, ptr noundef %arraydecay31, ptr noundef %53, ptr noundef %54, ptr noundef %55, ptr noundef %arraydecay32) #5, !dbg !3601
  %arraydecay33 = getelementptr inbounds [284 x i8], ptr %y, i32 0, i32 0, !dbg !3602
  %arraydecay34 = getelementptr inbounds [142 x i8], ptr %t, i32 0, i32 0, !dbg !3604
  %56 = load i32, ptr %param_m, align 4, !dbg !3605
  %call35 = call i32 @memcmp(ptr noundef %arraydecay33, ptr noundef %arraydecay34, i32 noundef %56) #5, !dbg !3606
  %cmp36 = icmp eq i32 %call35, 0, !dbg !3607
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !3607

if.then37:                                        ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !3608
  br label %return, !dbg !3608

if.end38:                                         ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !3610
  br label %return, !dbg !3610

return:                                           ; preds = %if.end38, %if.then37, %if.then
  %57 = load i32, ptr %retval, align 4, !dbg !3611
  ret i32 %57, !dbg !3611
}

; Function Attrs: noinline nounwind optnone
define dso_local i32 @mayo_expand_pk(ptr noundef %p, ptr noundef %cpk, ptr noundef %pk) #0 !dbg !3612 {
entry:
  %p.addr = alloca ptr, align 4
  %cpk.addr = alloca ptr, align 4
  %pk.addr = alloca ptr, align 4
  store ptr %p, ptr %p.addr, align 4
    #dbg_declare(ptr %p.addr, !3615, !DIExpression(), !3616)
  store ptr %cpk, ptr %cpk.addr, align 4
    #dbg_declare(ptr %cpk.addr, !3617, !DIExpression(), !3618)
  store ptr %pk, ptr %pk.addr, align 4
    #dbg_declare(ptr %pk.addr, !3619, !DIExpression(), !3620)
  %0 = load ptr, ptr %p.addr, align 4, !dbg !3621
  %1 = load ptr, ptr %pk.addr, align 4, !dbg !3622
  %2 = load ptr, ptr %cpk.addr, align 4, !dbg !3623
  call void @expand_P1_P2(ptr noundef %0, ptr noundef %1, ptr noundef %2) #5, !dbg !3624
  %3 = load ptr, ptr %cpk.addr, align 4, !dbg !3625
  %4 = load ptr, ptr %p.addr, align 4, !dbg !3626
  %pk_seed_bytes = getelementptr inbounds nuw %struct.mayo_params_t, ptr %4, i32 0, i32 20, !dbg !3627
  %5 = load i32, ptr %pk_seed_bytes, align 4, !dbg !3627
  %add.ptr = getelementptr inbounds i8, ptr %3, i32 %5, !dbg !3628
  %6 = load ptr, ptr %pk.addr, align 4, !dbg !3629
  %7 = load ptr, ptr %p.addr, align 4, !dbg !3630
  %n = getelementptr inbounds nuw %struct.mayo_params_t, ptr %7, i32 0, i32 1, !dbg !3631
  %8 = load i32, ptr %n, align 4, !dbg !3631
  %9 = load ptr, ptr %p.addr, align 4, !dbg !3630
  %o = getelementptr inbounds nuw %struct.mayo_params_t, ptr %9, i32 0, i32 2, !dbg !3631
  %10 = load i32, ptr %o, align 4, !dbg !3631
  %sub = sub nsw i32 %8, %10, !dbg !3631
  %11 = load ptr, ptr %p.addr, align 4, !dbg !3630
  %n1 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %11, i32 0, i32 1, !dbg !3631
  %12 = load i32, ptr %n1, align 4, !dbg !3631
  %13 = load ptr, ptr %p.addr, align 4, !dbg !3630
  %o2 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %13, i32 0, i32 2, !dbg !3631
  %14 = load i32, ptr %o2, align 4, !dbg !3631
  %sub3 = sub nsw i32 %12, %14, !dbg !3631
  %add = add nsw i32 %sub3, 1, !dbg !3631
  %mul = mul nsw i32 %sub, %add, !dbg !3631
  %div = sdiv i32 %mul, 2, !dbg !3631
  %15 = load ptr, ptr %p.addr, align 4, !dbg !3630
  %m_vec_limbs = getelementptr inbounds nuw %struct.mayo_params_t, ptr %15, i32 0, i32 21, !dbg !3631
  %16 = load i32, ptr %m_vec_limbs, align 4, !dbg !3631
  %mul4 = mul nsw i32 %div, %16, !dbg !3631
  %add.ptr5 = getelementptr inbounds i64, ptr %6, i32 %mul4, !dbg !3632
  %17 = load ptr, ptr %p.addr, align 4, !dbg !3633
  %n6 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %17, i32 0, i32 1, !dbg !3634
  %18 = load i32, ptr %n6, align 4, !dbg !3634
  %19 = load ptr, ptr %p.addr, align 4, !dbg !3633
  %o7 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %19, i32 0, i32 2, !dbg !3634
  %20 = load i32, ptr %o7, align 4, !dbg !3634
  %sub8 = sub nsw i32 %18, %20, !dbg !3634
  %21 = load ptr, ptr %p.addr, align 4, !dbg !3633
  %o9 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %21, i32 0, i32 2, !dbg !3634
  %22 = load i32, ptr %o9, align 4, !dbg !3634
  %mul10 = mul nsw i32 %sub8, %22, !dbg !3634
  %23 = load ptr, ptr %p.addr, align 4, !dbg !3633
  %m_vec_limbs11 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %23, i32 0, i32 21, !dbg !3634
  %24 = load i32, ptr %m_vec_limbs11, align 4, !dbg !3634
  %mul12 = mul nsw i32 %mul10, %24, !dbg !3634
  %add.ptr13 = getelementptr inbounds i64, ptr %add.ptr5, i32 %mul12, !dbg !3635
  %25 = load ptr, ptr %p.addr, align 4, !dbg !3636
  %o14 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %25, i32 0, i32 2, !dbg !3637
  %26 = load i32, ptr %o14, align 4, !dbg !3637
  %27 = load ptr, ptr %p.addr, align 4, !dbg !3636
  %o15 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %27, i32 0, i32 2, !dbg !3637
  %28 = load i32, ptr %o15, align 4, !dbg !3637
  %add16 = add nsw i32 %28, 1, !dbg !3637
  %mul17 = mul nsw i32 %26, %add16, !dbg !3637
  %div18 = sdiv i32 %mul17, 2, !dbg !3637
  %29 = load ptr, ptr %p.addr, align 4, !dbg !3636
  %m_vec_limbs19 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %29, i32 0, i32 21, !dbg !3637
  %30 = load i32, ptr %m_vec_limbs19, align 4, !dbg !3637
  %mul20 = mul nsw i32 %div18, %30, !dbg !3637
  %31 = load ptr, ptr %p.addr, align 4, !dbg !3638
  %m_vec_limbs21 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %31, i32 0, i32 21, !dbg !3639
  %32 = load i32, ptr %m_vec_limbs21, align 4, !dbg !3639
  %div22 = sdiv i32 %mul20, %32, !dbg !3640
  %33 = load ptr, ptr %p.addr, align 4, !dbg !3641
  %m = getelementptr inbounds nuw %struct.mayo_params_t, ptr %33, i32 0, i32 0, !dbg !3642
  %34 = load i32, ptr %m, align 4, !dbg !3642
  call void @unpack_m_vecs(ptr noundef %add.ptr, ptr noundef %add.ptr13, i32 noundef %div22, i32 noundef %34) #5, !dbg !3643
  ret i32 0, !dbg !3644
}

; Function Attrs: noinline nounwind optnone
define internal void @eval_public_map(ptr noundef %p, ptr noundef %s, ptr noundef %P1, ptr noundef %P2, ptr noundef %P3, ptr noundef %eval) #0 !dbg !3645 {
entry:
  %p.addr = alloca ptr, align 4
  %s.addr = alloca ptr, align 4
  %P1.addr = alloca ptr, align 4
  %P2.addr = alloca ptr, align 4
  %P3.addr = alloca ptr, align 4
  %eval.addr = alloca ptr, align 4
  %SPS = alloca [1296 x i64], align 8
  %zero = alloca [142 x i8], align 1
  store ptr %p, ptr %p.addr, align 4
    #dbg_declare(ptr %p.addr, !3648, !DIExpression(), !3649)
  store ptr %s, ptr %s.addr, align 4
    #dbg_declare(ptr %s.addr, !3650, !DIExpression(), !3651)
  store ptr %P1, ptr %P1.addr, align 4
    #dbg_declare(ptr %P1.addr, !3652, !DIExpression(), !3653)
  store ptr %P2, ptr %P2.addr, align 4
    #dbg_declare(ptr %P2.addr, !3654, !DIExpression(), !3655)
  store ptr %P3, ptr %P3.addr, align 4
    #dbg_declare(ptr %P3.addr, !3656, !DIExpression(), !3657)
  store ptr %eval, ptr %eval.addr, align 4
    #dbg_declare(ptr %eval.addr, !3658, !DIExpression(), !3659)
    #dbg_declare(ptr %SPS, !3660, !DIExpression(), !3664)
  call void @llvm.memset.p0.i32(ptr align 8 %SPS, i8 0, i32 10368, i1 false), !dbg !3664
  %0 = load ptr, ptr %p.addr, align 4, !dbg !3665
  %1 = load ptr, ptr %P1.addr, align 4, !dbg !3666
  %2 = load ptr, ptr %P2.addr, align 4, !dbg !3667
  %3 = load ptr, ptr %P3.addr, align 4, !dbg !3668
  %4 = load ptr, ptr %s.addr, align 4, !dbg !3669
  %arraydecay = getelementptr inbounds [1296 x i64], ptr %SPS, i32 0, i32 0, !dbg !3670
  call void @m_calculate_PS_SPS(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %arraydecay) #5, !dbg !3671
    #dbg_declare(ptr %zero, !3672, !DIExpression(), !3673)
  call void @llvm.memset.p0.i32(ptr align 1 %zero, i8 0, i32 142, i1 false), !dbg !3673
  %5 = load ptr, ptr %p.addr, align 4, !dbg !3674
  %arraydecay1 = getelementptr inbounds [1296 x i64], ptr %SPS, i32 0, i32 0, !dbg !3675
  %arraydecay2 = getelementptr inbounds [142 x i8], ptr %zero, i32 0, i32 0, !dbg !3676
  %6 = load ptr, ptr %eval.addr, align 4, !dbg !3677
  call void @compute_rhs(ptr noundef %5, ptr noundef %arraydecay1, ptr noundef %arraydecay2, ptr noundef %6) #5, !dbg !3678
  ret void, !dbg !3679
}

; Function Attrs: noinline nounwind optnone
define internal void @m_calculate_PS_SPS(ptr noundef %p, ptr noundef %P1, ptr noundef %P2, ptr noundef %P3, ptr noundef %s, ptr noundef %SPS) #0 !dbg !3680 {
entry:
  %p.addr = alloca ptr, align 4
  %P1.addr = alloca ptr, align 4
  %P2.addr = alloca ptr, align 4
  %P3.addr = alloca ptr, align 4
  %s.addr = alloca ptr, align 4
  %SPS.addr = alloca ptr, align 4
  %PS = alloca [16632 x i64], align 8
  store ptr %p, ptr %p.addr, align 4
    #dbg_declare(ptr %p.addr, !3683, !DIExpression(), !3684)
  store ptr %P1, ptr %P1.addr, align 4
    #dbg_declare(ptr %P1.addr, !3685, !DIExpression(), !3686)
  store ptr %P2, ptr %P2.addr, align 4
    #dbg_declare(ptr %P2.addr, !3687, !DIExpression(), !3688)
  store ptr %P3, ptr %P3.addr, align 4
    #dbg_declare(ptr %P3.addr, !3689, !DIExpression(), !3690)
  store ptr %s, ptr %s.addr, align 4
    #dbg_declare(ptr %s.addr, !3691, !DIExpression(), !3692)
  store ptr %SPS, ptr %SPS.addr, align 4
    #dbg_declare(ptr %SPS.addr, !3693, !DIExpression(), !3694)
    #dbg_declare(ptr %PS, !3695, !DIExpression(), !3699)
  call void @llvm.memset.p0.i32(ptr align 8 %PS, i8 0, i32 133056, i1 false), !dbg !3699
  %0 = load ptr, ptr %P1.addr, align 4, !dbg !3700
  %1 = load ptr, ptr %P2.addr, align 4, !dbg !3701
  %2 = load ptr, ptr %P3.addr, align 4, !dbg !3702
  %3 = load ptr, ptr %s.addr, align 4, !dbg !3703
  %4 = load ptr, ptr %p.addr, align 4, !dbg !3704
  %m = getelementptr inbounds nuw %struct.mayo_params_t, ptr %4, i32 0, i32 0, !dbg !3705
  %5 = load i32, ptr %m, align 4, !dbg !3705
  %6 = load ptr, ptr %p.addr, align 4, !dbg !3706
  %n = getelementptr inbounds nuw %struct.mayo_params_t, ptr %6, i32 0, i32 1, !dbg !3707
  %7 = load i32, ptr %n, align 4, !dbg !3707
  %8 = load ptr, ptr %p.addr, align 4, !dbg !3706
  %o = getelementptr inbounds nuw %struct.mayo_params_t, ptr %8, i32 0, i32 2, !dbg !3707
  %9 = load i32, ptr %o, align 4, !dbg !3707
  %sub = sub nsw i32 %7, %9, !dbg !3707
  %10 = load ptr, ptr %p.addr, align 4, !dbg !3708
  %o1 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %10, i32 0, i32 2, !dbg !3709
  %11 = load i32, ptr %o1, align 4, !dbg !3709
  %12 = load ptr, ptr %p.addr, align 4, !dbg !3710
  %k = getelementptr inbounds nuw %struct.mayo_params_t, ptr %12, i32 0, i32 3, !dbg !3711
  %13 = load i32, ptr %k, align 4, !dbg !3711
  %arraydecay = getelementptr inbounds [16632 x i64], ptr %PS, i32 0, i32 0, !dbg !3712
  call void @mayo_generic_m_calculate_PS(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %5, i32 noundef %sub, i32 noundef %11, i32 noundef %13, ptr noundef %arraydecay) #5, !dbg !3713
  %arraydecay2 = getelementptr inbounds [16632 x i64], ptr %PS, i32 0, i32 0, !dbg !3714
  %14 = load ptr, ptr %s.addr, align 4, !dbg !3715
  %15 = load ptr, ptr %p.addr, align 4, !dbg !3716
  %m3 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %15, i32 0, i32 0, !dbg !3717
  %16 = load i32, ptr %m3, align 4, !dbg !3717
  %17 = load ptr, ptr %p.addr, align 4, !dbg !3718
  %k4 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %17, i32 0, i32 3, !dbg !3719
  %18 = load i32, ptr %k4, align 4, !dbg !3719
  %19 = load ptr, ptr %p.addr, align 4, !dbg !3720
  %n5 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %19, i32 0, i32 1, !dbg !3721
  %20 = load i32, ptr %n5, align 4, !dbg !3721
  %21 = load ptr, ptr %SPS.addr, align 4, !dbg !3722
  call void @mayo_generic_m_calculate_SPS(ptr noundef %arraydecay2, ptr noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %20, ptr noundef %21) #5, !dbg !3723
  ret void, !dbg !3724
}

; Function Attrs: noinline nounwind optnone
define internal void @mayo_generic_m_calculate_PS(ptr noundef %P1, ptr noundef %P2, ptr noundef %P3, ptr noundef %S, i32 noundef %m, i32 noundef %v, i32 noundef %o, i32 noundef %k, ptr noundef %PS) #0 !dbg !3725 {
entry:
  %P1.addr = alloca ptr, align 4
  %P2.addr = alloca ptr, align 4
  %P3.addr = alloca ptr, align 4
  %S.addr = alloca ptr, align 4
  %m.addr = alloca i32, align 4
  %v.addr = alloca i32, align 4
  %o.addr = alloca i32, align 4
  %k.addr = alloca i32, align 4
  %PS.addr = alloca ptr, align 4
  %n = alloca i32, align 4
  %m_vec_limbs = alloca i32, align 4
  %accumulator = alloca [266112 x i64], align 8
  %P1_used = alloca i32, align 4
  %row = alloca i32, align 4
  %j = alloca i32, align 4
  %col = alloca i32, align 4
  %j20 = alloca i32, align 4
  %col25 = alloca i32, align 4
  %P3_used = alloca i32, align 4
  %row55 = alloca i32, align 4
  %j60 = alloca i32, align 4
  %col65 = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %P1, ptr %P1.addr, align 4
    #dbg_declare(ptr %P1.addr, !3728, !DIExpression(), !3729)
  store ptr %P2, ptr %P2.addr, align 4
    #dbg_declare(ptr %P2.addr, !3730, !DIExpression(), !3731)
  store ptr %P3, ptr %P3.addr, align 4
    #dbg_declare(ptr %P3.addr, !3732, !DIExpression(), !3733)
  store ptr %S, ptr %S.addr, align 4
    #dbg_declare(ptr %S.addr, !3734, !DIExpression(), !3735)
  store i32 %m, ptr %m.addr, align 4
    #dbg_declare(ptr %m.addr, !3736, !DIExpression(), !3737)
  store i32 %v, ptr %v.addr, align 4
    #dbg_declare(ptr %v.addr, !3738, !DIExpression(), !3739)
  store i32 %o, ptr %o.addr, align 4
    #dbg_declare(ptr %o.addr, !3740, !DIExpression(), !3741)
  store i32 %k, ptr %k.addr, align 4
    #dbg_declare(ptr %k.addr, !3742, !DIExpression(), !3743)
  store ptr %PS, ptr %PS.addr, align 4
    #dbg_declare(ptr %PS.addr, !3744, !DIExpression(), !3745)
    #dbg_declare(ptr %n, !3746, !DIExpression(), !3747)
  %0 = load i32, ptr %o.addr, align 4, !dbg !3748
  %1 = load i32, ptr %v.addr, align 4, !dbg !3749
  %add = add nsw i32 %0, %1, !dbg !3750
  store i32 %add, ptr %n, align 4, !dbg !3747
    #dbg_declare(ptr %m_vec_limbs, !3751, !DIExpression(), !3752)
  %2 = load i32, ptr %m.addr, align 4, !dbg !3753
  %add1 = add nsw i32 %2, 15, !dbg !3754
  %div = sdiv i32 %add1, 16, !dbg !3755
  store i32 %div, ptr %m_vec_limbs, align 4, !dbg !3752
    #dbg_declare(ptr %accumulator, !3756, !DIExpression(), !3760)
  call void @llvm.memset.p0.i32(ptr align 8 %accumulator, i8 0, i32 2128896, i1 false), !dbg !3760
    #dbg_declare(ptr %P1_used, !3761, !DIExpression(), !3762)
  store i32 0, ptr %P1_used, align 4, !dbg !3762
    #dbg_declare(ptr %row, !3763, !DIExpression(), !3765)
  store i32 0, ptr %row, align 4, !dbg !3765
  br label %for.cond, !dbg !3766

for.cond:                                         ; preds = %for.inc52, %entry
  %3 = load i32, ptr %row, align 4, !dbg !3767
  %4 = load i32, ptr %v.addr, align 4, !dbg !3769
  %cmp = icmp slt i32 %3, %4, !dbg !3770
  br i1 %cmp, label %for.body, label %for.end54, !dbg !3771

for.body:                                         ; preds = %for.cond
    #dbg_declare(ptr %j, !3772, !DIExpression(), !3775)
  %5 = load i32, ptr %row, align 4, !dbg !3776
  store i32 %5, ptr %j, align 4, !dbg !3775
  br label %for.cond2, !dbg !3777

for.cond2:                                        ; preds = %for.inc17, %for.body
  %6 = load i32, ptr %j, align 4, !dbg !3778
  %7 = load i32, ptr %v.addr, align 4, !dbg !3780
  %cmp3 = icmp slt i32 %6, %7, !dbg !3781
  br i1 %cmp3, label %for.body4, label %for.end19, !dbg !3782

for.body4:                                        ; preds = %for.cond2
    #dbg_declare(ptr %col, !3783, !DIExpression(), !3786)
  store i32 0, ptr %col, align 4, !dbg !3786
  br label %for.cond5, !dbg !3787

for.cond5:                                        ; preds = %for.inc, %for.body4
  %8 = load i32, ptr %col, align 4, !dbg !3788
  %9 = load i32, ptr %k.addr, align 4, !dbg !3790
  %cmp6 = icmp slt i32 %8, %9, !dbg !3791
  br i1 %cmp6, label %for.body7, label %for.end, !dbg !3792

for.body7:                                        ; preds = %for.cond5
  %10 = load i32, ptr %m_vec_limbs, align 4, !dbg !3793
  %11 = load ptr, ptr %P1.addr, align 4, !dbg !3795
  %12 = load i32, ptr %P1_used, align 4, !dbg !3796
  %13 = load i32, ptr %m_vec_limbs, align 4, !dbg !3797
  %mul = mul nsw i32 %12, %13, !dbg !3798
  %add.ptr = getelementptr inbounds i64, ptr %11, i32 %mul, !dbg !3799
  %arraydecay = getelementptr inbounds [266112 x i64], ptr %accumulator, i32 0, i32 0, !dbg !3800
  %14 = load i32, ptr %row, align 4, !dbg !3801
  %15 = load i32, ptr %k.addr, align 4, !dbg !3802
  %mul8 = mul nsw i32 %14, %15, !dbg !3803
  %16 = load i32, ptr %col, align 4, !dbg !3804
  %add9 = add nsw i32 %mul8, %16, !dbg !3805
  %mul10 = mul nsw i32 %add9, 16, !dbg !3806
  %17 = load ptr, ptr %S.addr, align 4, !dbg !3807
  %18 = load i32, ptr %col, align 4, !dbg !3808
  %19 = load i32, ptr %n, align 4, !dbg !3809
  %mul11 = mul nsw i32 %18, %19, !dbg !3810
  %20 = load i32, ptr %j, align 4, !dbg !3811
  %add12 = add nsw i32 %mul11, %20, !dbg !3812
  %arrayidx = getelementptr inbounds i8, ptr %17, i32 %add12, !dbg !3807
  %21 = load i8, ptr %arrayidx, align 1, !dbg !3807
  %conv = zext i8 %21 to i32, !dbg !3807
  %add13 = add nsw i32 %mul10, %conv, !dbg !3813
  %22 = load i32, ptr %m_vec_limbs, align 4, !dbg !3814
  %mul14 = mul nsw i32 %add13, %22, !dbg !3815
  %add.ptr15 = getelementptr inbounds i64, ptr %arraydecay, i32 %mul14, !dbg !3816
  call void @m_vec_add(i32 noundef %10, ptr noundef %add.ptr, ptr noundef %add.ptr15) #5, !dbg !3817
  br label %for.inc, !dbg !3818

for.inc:                                          ; preds = %for.body7
  %23 = load i32, ptr %col, align 4, !dbg !3819
  %inc = add nsw i32 %23, 1, !dbg !3819
  store i32 %inc, ptr %col, align 4, !dbg !3819
  br label %for.cond5, !dbg !3820, !llvm.loop !3821

for.end:                                          ; preds = %for.cond5
  %24 = load i32, ptr %P1_used, align 4, !dbg !3823
  %inc16 = add nsw i32 %24, 1, !dbg !3823
  store i32 %inc16, ptr %P1_used, align 4, !dbg !3823
  br label %for.inc17, !dbg !3824

for.inc17:                                        ; preds = %for.end
  %25 = load i32, ptr %j, align 4, !dbg !3825
  %inc18 = add nsw i32 %25, 1, !dbg !3825
  store i32 %inc18, ptr %j, align 4, !dbg !3825
  br label %for.cond2, !dbg !3826, !llvm.loop !3827

for.end19:                                        ; preds = %for.cond2
    #dbg_declare(ptr %j20, !3829, !DIExpression(), !3831)
  store i32 0, ptr %j20, align 4, !dbg !3831
  br label %for.cond21, !dbg !3832

for.cond21:                                       ; preds = %for.inc49, %for.end19
  %26 = load i32, ptr %j20, align 4, !dbg !3833
  %27 = load i32, ptr %o.addr, align 4, !dbg !3835
  %cmp22 = icmp slt i32 %26, %27, !dbg !3836
  br i1 %cmp22, label %for.body24, label %for.end51, !dbg !3837

for.body24:                                       ; preds = %for.cond21
    #dbg_declare(ptr %col25, !3838, !DIExpression(), !3841)
  store i32 0, ptr %col25, align 4, !dbg !3841
  br label %for.cond26, !dbg !3842

for.cond26:                                       ; preds = %for.inc46, %for.body24
  %28 = load i32, ptr %col25, align 4, !dbg !3843
  %29 = load i32, ptr %k.addr, align 4, !dbg !3845
  %cmp27 = icmp slt i32 %28, %29, !dbg !3846
  br i1 %cmp27, label %for.body29, label %for.end48, !dbg !3847

for.body29:                                       ; preds = %for.cond26
  %30 = load i32, ptr %m_vec_limbs, align 4, !dbg !3848
  %31 = load ptr, ptr %P2.addr, align 4, !dbg !3850
  %32 = load i32, ptr %row, align 4, !dbg !3851
  %33 = load i32, ptr %o.addr, align 4, !dbg !3852
  %mul30 = mul nsw i32 %32, %33, !dbg !3853
  %34 = load i32, ptr %j20, align 4, !dbg !3854
  %add31 = add nsw i32 %mul30, %34, !dbg !3855
  %35 = load i32, ptr %m_vec_limbs, align 4, !dbg !3856
  %mul32 = mul nsw i32 %add31, %35, !dbg !3857
  %add.ptr33 = getelementptr inbounds i64, ptr %31, i32 %mul32, !dbg !3858
  %arraydecay34 = getelementptr inbounds [266112 x i64], ptr %accumulator, i32 0, i32 0, !dbg !3859
  %36 = load i32, ptr %row, align 4, !dbg !3860
  %37 = load i32, ptr %k.addr, align 4, !dbg !3861
  %mul35 = mul nsw i32 %36, %37, !dbg !3862
  %38 = load i32, ptr %col25, align 4, !dbg !3863
  %add36 = add nsw i32 %mul35, %38, !dbg !3864
  %mul37 = mul nsw i32 %add36, 16, !dbg !3865
  %39 = load ptr, ptr %S.addr, align 4, !dbg !3866
  %40 = load i32, ptr %col25, align 4, !dbg !3867
  %41 = load i32, ptr %n, align 4, !dbg !3868
  %mul38 = mul nsw i32 %40, %41, !dbg !3869
  %42 = load i32, ptr %j20, align 4, !dbg !3870
  %add39 = add nsw i32 %mul38, %42, !dbg !3871
  %43 = load i32, ptr %v.addr, align 4, !dbg !3872
  %add40 = add nsw i32 %add39, %43, !dbg !3873
  %arrayidx41 = getelementptr inbounds i8, ptr %39, i32 %add40, !dbg !3866
  %44 = load i8, ptr %arrayidx41, align 1, !dbg !3866
  %conv42 = zext i8 %44 to i32, !dbg !3866
  %add43 = add nsw i32 %mul37, %conv42, !dbg !3874
  %45 = load i32, ptr %m_vec_limbs, align 4, !dbg !3875
  %mul44 = mul nsw i32 %add43, %45, !dbg !3876
  %add.ptr45 = getelementptr inbounds i64, ptr %arraydecay34, i32 %mul44, !dbg !3877
  call void @m_vec_add(i32 noundef %30, ptr noundef %add.ptr33, ptr noundef %add.ptr45) #5, !dbg !3878
  br label %for.inc46, !dbg !3879

for.inc46:                                        ; preds = %for.body29
  %46 = load i32, ptr %col25, align 4, !dbg !3880
  %inc47 = add nsw i32 %46, 1, !dbg !3880
  store i32 %inc47, ptr %col25, align 4, !dbg !3880
  br label %for.cond26, !dbg !3881, !llvm.loop !3882

for.end48:                                        ; preds = %for.cond26
  br label %for.inc49, !dbg !3884

for.inc49:                                        ; preds = %for.end48
  %47 = load i32, ptr %j20, align 4, !dbg !3885
  %inc50 = add nsw i32 %47, 1, !dbg !3885
  store i32 %inc50, ptr %j20, align 4, !dbg !3885
  br label %for.cond21, !dbg !3886, !llvm.loop !3887

for.end51:                                        ; preds = %for.cond21
  br label %for.inc52, !dbg !3889

for.inc52:                                        ; preds = %for.end51
  %48 = load i32, ptr %row, align 4, !dbg !3890
  %inc53 = add nsw i32 %48, 1, !dbg !3890
  store i32 %inc53, ptr %row, align 4, !dbg !3890
  br label %for.cond, !dbg !3891, !llvm.loop !3892

for.end54:                                        ; preds = %for.cond
    #dbg_declare(ptr %P3_used, !3894, !DIExpression(), !3895)
  store i32 0, ptr %P3_used, align 4, !dbg !3895
    #dbg_declare(ptr %row55, !3896, !DIExpression(), !3898)
  %49 = load i32, ptr %v.addr, align 4, !dbg !3899
  store i32 %49, ptr %row55, align 4, !dbg !3898
  br label %for.cond56, !dbg !3900

for.cond56:                                       ; preds = %for.inc90, %for.end54
  %50 = load i32, ptr %row55, align 4, !dbg !3901
  %51 = load i32, ptr %n, align 4, !dbg !3903
  %cmp57 = icmp slt i32 %50, %51, !dbg !3904
  br i1 %cmp57, label %for.body59, label %for.end92, !dbg !3905

for.body59:                                       ; preds = %for.cond56
    #dbg_declare(ptr %j60, !3906, !DIExpression(), !3909)
  %52 = load i32, ptr %row55, align 4, !dbg !3910
  store i32 %52, ptr %j60, align 4, !dbg !3909
  br label %for.cond61, !dbg !3911

for.cond61:                                       ; preds = %for.inc87, %for.body59
  %53 = load i32, ptr %j60, align 4, !dbg !3912
  %54 = load i32, ptr %n, align 4, !dbg !3914
  %cmp62 = icmp slt i32 %53, %54, !dbg !3915
  br i1 %cmp62, label %for.body64, label %for.end89, !dbg !3916

for.body64:                                       ; preds = %for.cond61
    #dbg_declare(ptr %col65, !3917, !DIExpression(), !3920)
  store i32 0, ptr %col65, align 4, !dbg !3920
  br label %for.cond66, !dbg !3921

for.cond66:                                       ; preds = %for.inc83, %for.body64
  %55 = load i32, ptr %col65, align 4, !dbg !3922
  %56 = load i32, ptr %k.addr, align 4, !dbg !3924
  %cmp67 = icmp slt i32 %55, %56, !dbg !3925
  br i1 %cmp67, label %for.body69, label %for.end85, !dbg !3926

for.body69:                                       ; preds = %for.cond66
  %57 = load i32, ptr %m_vec_limbs, align 4, !dbg !3927
  %58 = load ptr, ptr %P3.addr, align 4, !dbg !3929
  %59 = load i32, ptr %P3_used, align 4, !dbg !3930
  %60 = load i32, ptr %m_vec_limbs, align 4, !dbg !3931
  %mul70 = mul nsw i32 %59, %60, !dbg !3932
  %add.ptr71 = getelementptr inbounds i64, ptr %58, i32 %mul70, !dbg !3933
  %arraydecay72 = getelementptr inbounds [266112 x i64], ptr %accumulator, i32 0, i32 0, !dbg !3934
  %61 = load i32, ptr %row55, align 4, !dbg !3935
  %62 = load i32, ptr %k.addr, align 4, !dbg !3936
  %mul73 = mul nsw i32 %61, %62, !dbg !3937
  %63 = load i32, ptr %col65, align 4, !dbg !3938
  %add74 = add nsw i32 %mul73, %63, !dbg !3939
  %mul75 = mul nsw i32 %add74, 16, !dbg !3940
  %64 = load ptr, ptr %S.addr, align 4, !dbg !3941
  %65 = load i32, ptr %col65, align 4, !dbg !3942
  %66 = load i32, ptr %n, align 4, !dbg !3943
  %mul76 = mul nsw i32 %65, %66, !dbg !3944
  %67 = load i32, ptr %j60, align 4, !dbg !3945
  %add77 = add nsw i32 %mul76, %67, !dbg !3946
  %arrayidx78 = getelementptr inbounds i8, ptr %64, i32 %add77, !dbg !3941
  %68 = load i8, ptr %arrayidx78, align 1, !dbg !3941
  %conv79 = zext i8 %68 to i32, !dbg !3941
  %add80 = add nsw i32 %mul75, %conv79, !dbg !3947
  %69 = load i32, ptr %m_vec_limbs, align 4, !dbg !3948
  %mul81 = mul nsw i32 %add80, %69, !dbg !3949
  %add.ptr82 = getelementptr inbounds i64, ptr %arraydecay72, i32 %mul81, !dbg !3950
  call void @m_vec_add(i32 noundef %57, ptr noundef %add.ptr71, ptr noundef %add.ptr82) #5, !dbg !3951
  br label %for.inc83, !dbg !3952

for.inc83:                                        ; preds = %for.body69
  %70 = load i32, ptr %col65, align 4, !dbg !3953
  %inc84 = add nsw i32 %70, 1, !dbg !3953
  store i32 %inc84, ptr %col65, align 4, !dbg !3953
  br label %for.cond66, !dbg !3954, !llvm.loop !3955

for.end85:                                        ; preds = %for.cond66
  %71 = load i32, ptr %P3_used, align 4, !dbg !3957
  %inc86 = add nsw i32 %71, 1, !dbg !3957
  store i32 %inc86, ptr %P3_used, align 4, !dbg !3957
  br label %for.inc87, !dbg !3958

for.inc87:                                        ; preds = %for.end85
  %72 = load i32, ptr %j60, align 4, !dbg !3959
  %inc88 = add nsw i32 %72, 1, !dbg !3959
  store i32 %inc88, ptr %j60, align 4, !dbg !3959
  br label %for.cond61, !dbg !3960, !llvm.loop !3961

for.end89:                                        ; preds = %for.cond61
  br label %for.inc90, !dbg !3963

for.inc90:                                        ; preds = %for.end89
  %73 = load i32, ptr %row55, align 4, !dbg !3964
  %inc91 = add nsw i32 %73, 1, !dbg !3964
  store i32 %inc91, ptr %row55, align 4, !dbg !3964
  br label %for.cond56, !dbg !3965, !llvm.loop !3966

for.end92:                                        ; preds = %for.cond56
    #dbg_declare(ptr %i, !3968, !DIExpression(), !3969)
  store i32 0, ptr %i, align 4, !dbg !3969
  br label %while.cond, !dbg !3970

while.cond:                                       ; preds = %while.body, %for.end92
  %74 = load i32, ptr %i, align 4, !dbg !3971
  %75 = load i32, ptr %n, align 4, !dbg !3972
  %76 = load i32, ptr %k.addr, align 4, !dbg !3973
  %mul93 = mul nsw i32 %75, %76, !dbg !3974
  %cmp94 = icmp slt i32 %74, %mul93, !dbg !3975
  br i1 %cmp94, label %while.body, label %while.end, !dbg !3970

while.body:                                       ; preds = %while.cond
  %77 = load i32, ptr %m_vec_limbs, align 4, !dbg !3976
  %arraydecay96 = getelementptr inbounds [266112 x i64], ptr %accumulator, i32 0, i32 0, !dbg !3978
  %78 = load i32, ptr %i, align 4, !dbg !3979
  %mul97 = mul nsw i32 %78, 16, !dbg !3980
  %79 = load i32, ptr %m_vec_limbs, align 4, !dbg !3981
  %mul98 = mul nsw i32 %mul97, %79, !dbg !3982
  %add.ptr99 = getelementptr inbounds i64, ptr %arraydecay96, i32 %mul98, !dbg !3983
  %80 = load ptr, ptr %PS.addr, align 4, !dbg !3984
  %81 = load i32, ptr %i, align 4, !dbg !3985
  %82 = load i32, ptr %m_vec_limbs, align 4, !dbg !3986
  %mul100 = mul nsw i32 %81, %82, !dbg !3987
  %add.ptr101 = getelementptr inbounds i64, ptr %80, i32 %mul100, !dbg !3988
  call void @m_vec_multiply_bins(i32 noundef %77, ptr noundef %add.ptr99, ptr noundef %add.ptr101) #5, !dbg !3989
  %83 = load i32, ptr %i, align 4, !dbg !3990
  %inc102 = add nsw i32 %83, 1, !dbg !3990
  store i32 %inc102, ptr %i, align 4, !dbg !3990
  br label %while.cond, !dbg !3970, !llvm.loop !3991

while.end:                                        ; preds = %while.cond
  ret void, !dbg !3993
}

; Function Attrs: noinline nounwind optnone
define internal void @mayo_generic_m_calculate_SPS(ptr noundef %PS, ptr noundef %S, i32 noundef %m, i32 noundef %k, i32 noundef %n, ptr noundef %SPS) #0 !dbg !3994 {
entry:
  %PS.addr = alloca ptr, align 4
  %S.addr = alloca ptr, align 4
  %m.addr = alloca i32, align 4
  %k.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %SPS.addr = alloca ptr, align 4
  %accumulator = alloca [20736 x i64], align 8
  %m_vec_limbs = alloca i32, align 4
  %row = alloca i32, align 4
  %j = alloca i32, align 4
  %col = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %PS, ptr %PS.addr, align 4
    #dbg_declare(ptr %PS.addr, !3997, !DIExpression(), !3998)
  store ptr %S, ptr %S.addr, align 4
    #dbg_declare(ptr %S.addr, !3999, !DIExpression(), !4000)
  store i32 %m, ptr %m.addr, align 4
    #dbg_declare(ptr %m.addr, !4001, !DIExpression(), !4002)
  store i32 %k, ptr %k.addr, align 4
    #dbg_declare(ptr %k.addr, !4003, !DIExpression(), !4004)
  store i32 %n, ptr %n.addr, align 4
    #dbg_declare(ptr %n.addr, !4005, !DIExpression(), !4006)
  store ptr %SPS, ptr %SPS.addr, align 4
    #dbg_declare(ptr %SPS.addr, !4007, !DIExpression(), !4008)
    #dbg_declare(ptr %accumulator, !4009, !DIExpression(), !4013)
  call void @llvm.memset.p0.i32(ptr align 8 %accumulator, i8 0, i32 165888, i1 false), !dbg !4013
    #dbg_declare(ptr %m_vec_limbs, !4014, !DIExpression(), !4015)
  %0 = load i32, ptr %m.addr, align 4, !dbg !4016
  %add = add nsw i32 %0, 15, !dbg !4017
  %div = sdiv i32 %add, 16, !dbg !4018
  store i32 %div, ptr %m_vec_limbs, align 4, !dbg !4015
    #dbg_declare(ptr %row, !4019, !DIExpression(), !4021)
  store i32 0, ptr %row, align 4, !dbg !4021
  br label %for.cond, !dbg !4022

for.cond:                                         ; preds = %for.inc20, %entry
  %1 = load i32, ptr %row, align 4, !dbg !4023
  %2 = load i32, ptr %k.addr, align 4, !dbg !4025
  %cmp = icmp slt i32 %1, %2, !dbg !4026
  br i1 %cmp, label %for.body, label %for.end22, !dbg !4027

for.body:                                         ; preds = %for.cond
    #dbg_declare(ptr %j, !4028, !DIExpression(), !4031)
  store i32 0, ptr %j, align 4, !dbg !4031
  br label %for.cond1, !dbg !4032

for.cond1:                                        ; preds = %for.inc18, %for.body
  %3 = load i32, ptr %j, align 4, !dbg !4033
  %4 = load i32, ptr %n.addr, align 4, !dbg !4035
  %cmp2 = icmp slt i32 %3, %4, !dbg !4036
  br i1 %cmp2, label %for.body3, label %for.end19, !dbg !4037

for.body3:                                        ; preds = %for.cond1
    #dbg_declare(ptr %col, !4038, !DIExpression(), !4041)
  store i32 0, ptr %col, align 4, !dbg !4041
  br label %for.cond4, !dbg !4042

for.cond4:                                        ; preds = %for.inc, %for.body3
  %5 = load i32, ptr %col, align 4, !dbg !4043
  %6 = load i32, ptr %k.addr, align 4, !dbg !4045
  %cmp5 = icmp slt i32 %5, %6, !dbg !4046
  br i1 %cmp5, label %for.body6, label %for.end, !dbg !4047

for.body6:                                        ; preds = %for.cond4
  %7 = load i32, ptr %m_vec_limbs, align 4, !dbg !4048
  %8 = load ptr, ptr %PS.addr, align 4, !dbg !4050
  %9 = load i32, ptr %j, align 4, !dbg !4051
  %10 = load i32, ptr %k.addr, align 4, !dbg !4052
  %mul = mul nsw i32 %9, %10, !dbg !4053
  %11 = load i32, ptr %col, align 4, !dbg !4054
  %add7 = add nsw i32 %mul, %11, !dbg !4055
  %12 = load i32, ptr %m_vec_limbs, align 4, !dbg !4056
  %mul8 = mul nsw i32 %add7, %12, !dbg !4057
  %add.ptr = getelementptr inbounds i64, ptr %8, i32 %mul8, !dbg !4058
  %arraydecay = getelementptr inbounds [20736 x i64], ptr %accumulator, i32 0, i32 0, !dbg !4059
  %13 = load i32, ptr %row, align 4, !dbg !4060
  %14 = load i32, ptr %k.addr, align 4, !dbg !4061
  %mul9 = mul nsw i32 %13, %14, !dbg !4062
  %15 = load i32, ptr %col, align 4, !dbg !4063
  %add10 = add nsw i32 %mul9, %15, !dbg !4064
  %mul11 = mul nsw i32 %add10, 16, !dbg !4065
  %16 = load ptr, ptr %S.addr, align 4, !dbg !4066
  %17 = load i32, ptr %row, align 4, !dbg !4067
  %18 = load i32, ptr %n.addr, align 4, !dbg !4068
  %mul12 = mul nsw i32 %17, %18, !dbg !4069
  %19 = load i32, ptr %j, align 4, !dbg !4070
  %add13 = add nsw i32 %mul12, %19, !dbg !4071
  %arrayidx = getelementptr inbounds i8, ptr %16, i32 %add13, !dbg !4066
  %20 = load i8, ptr %arrayidx, align 1, !dbg !4066
  %conv = zext i8 %20 to i32, !dbg !4066
  %add14 = add nsw i32 %mul11, %conv, !dbg !4072
  %21 = load i32, ptr %m_vec_limbs, align 4, !dbg !4073
  %mul15 = mul nsw i32 %add14, %21, !dbg !4074
  %add.ptr16 = getelementptr inbounds i64, ptr %arraydecay, i32 %mul15, !dbg !4075
  call void @m_vec_add(i32 noundef %7, ptr noundef %add.ptr, ptr noundef %add.ptr16) #5, !dbg !4076
  br label %for.inc, !dbg !4077

for.inc:                                          ; preds = %for.body6
  %22 = load i32, ptr %col, align 4, !dbg !4078
  %add17 = add nsw i32 %22, 1, !dbg !4078
  store i32 %add17, ptr %col, align 4, !dbg !4078
  br label %for.cond4, !dbg !4079, !llvm.loop !4080

for.end:                                          ; preds = %for.cond4
  br label %for.inc18, !dbg !4082

for.inc18:                                        ; preds = %for.end
  %23 = load i32, ptr %j, align 4, !dbg !4083
  %inc = add nsw i32 %23, 1, !dbg !4083
  store i32 %inc, ptr %j, align 4, !dbg !4083
  br label %for.cond1, !dbg !4084, !llvm.loop !4085

for.end19:                                        ; preds = %for.cond1
  br label %for.inc20, !dbg !4087

for.inc20:                                        ; preds = %for.end19
  %24 = load i32, ptr %row, align 4, !dbg !4088
  %inc21 = add nsw i32 %24, 1, !dbg !4088
  store i32 %inc21, ptr %row, align 4, !dbg !4088
  br label %for.cond, !dbg !4089, !llvm.loop !4090

for.end22:                                        ; preds = %for.cond
    #dbg_declare(ptr %i, !4092, !DIExpression(), !4093)
  store i32 0, ptr %i, align 4, !dbg !4093
  br label %while.cond, !dbg !4094

while.cond:                                       ; preds = %while.body, %for.end22
  %25 = load i32, ptr %i, align 4, !dbg !4095
  %26 = load i32, ptr %k.addr, align 4, !dbg !4096
  %27 = load i32, ptr %k.addr, align 4, !dbg !4097
  %mul23 = mul nsw i32 %26, %27, !dbg !4098
  %cmp24 = icmp slt i32 %25, %mul23, !dbg !4099
  br i1 %cmp24, label %while.body, label %while.end, !dbg !4094

while.body:                                       ; preds = %while.cond
  %28 = load i32, ptr %m_vec_limbs, align 4, !dbg !4100
  %arraydecay26 = getelementptr inbounds [20736 x i64], ptr %accumulator, i32 0, i32 0, !dbg !4102
  %29 = load i32, ptr %i, align 4, !dbg !4103
  %mul27 = mul nsw i32 %29, 16, !dbg !4104
  %30 = load i32, ptr %m_vec_limbs, align 4, !dbg !4105
  %mul28 = mul nsw i32 %mul27, %30, !dbg !4106
  %add.ptr29 = getelementptr inbounds i64, ptr %arraydecay26, i32 %mul28, !dbg !4107
  %31 = load ptr, ptr %SPS.addr, align 4, !dbg !4108
  %32 = load i32, ptr %i, align 4, !dbg !4109
  %33 = load i32, ptr %m_vec_limbs, align 4, !dbg !4110
  %mul30 = mul nsw i32 %32, %33, !dbg !4111
  %add.ptr31 = getelementptr inbounds i64, ptr %31, i32 %mul30, !dbg !4112
  call void @m_vec_multiply_bins(i32 noundef %28, ptr noundef %add.ptr29, ptr noundef %add.ptr31) #5, !dbg !4113
  %34 = load i32, ptr %i, align 4, !dbg !4114
  %inc32 = add nsw i32 %34, 1, !dbg !4114
  store i32 %inc32, ptr %i, align 4, !dbg !4114
  br label %while.cond, !dbg !4094, !llvm.loop !4115

while.end:                                        ; preds = %while.cond
  ret void, !dbg !4117
}

; Function Attrs: noinline nounwind optnone
define internal void @m_vec_add(i32 noundef %m_vec_limbs, ptr noundef %in, ptr noundef %acc) #0 !dbg !4118 {
entry:
  %m_vec_limbs.addr = alloca i32, align 4
  %in.addr = alloca ptr, align 4
  %acc.addr = alloca ptr, align 4
  %i = alloca i32, align 4
  store i32 %m_vec_limbs, ptr %m_vec_limbs.addr, align 4
    #dbg_declare(ptr %m_vec_limbs.addr, !4121, !DIExpression(), !4122)
  store ptr %in, ptr %in.addr, align 4
    #dbg_declare(ptr %in.addr, !4123, !DIExpression(), !4124)
  store ptr %acc, ptr %acc.addr, align 4
    #dbg_declare(ptr %acc.addr, !4125, !DIExpression(), !4126)
    #dbg_declare(ptr %i, !4127, !DIExpression(), !4129)
  store i32 0, ptr %i, align 4, !dbg !4129
  br label %for.cond, !dbg !4130

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !4131
  %1 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4133
  %cmp = icmp slt i32 %0, %1, !dbg !4134
  br i1 %cmp, label %for.body, label %for.end, !dbg !4135

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %in.addr, align 4, !dbg !4136
  %3 = load i32, ptr %i, align 4, !dbg !4138
  %arrayidx = getelementptr inbounds i64, ptr %2, i32 %3, !dbg !4136
  %4 = load i64, ptr %arrayidx, align 8, !dbg !4136
  %5 = load ptr, ptr %acc.addr, align 4, !dbg !4139
  %6 = load i32, ptr %i, align 4, !dbg !4140
  %arrayidx1 = getelementptr inbounds i64, ptr %5, i32 %6, !dbg !4139
  %7 = load i64, ptr %arrayidx1, align 8, !dbg !4141
  %xor = xor i64 %7, %4, !dbg !4141
  store i64 %xor, ptr %arrayidx1, align 8, !dbg !4141
  br label %for.inc, !dbg !4142

for.inc:                                          ; preds = %for.body
  %8 = load i32, ptr %i, align 4, !dbg !4143
  %inc = add nsw i32 %8, 1, !dbg !4143
  store i32 %inc, ptr %i, align 4, !dbg !4143
  br label %for.cond, !dbg !4144, !llvm.loop !4145

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4147
}

; Function Attrs: noinline nounwind optnone
define internal void @m_vec_multiply_bins(i32 noundef %m_vec_limbs, ptr noundef %bins, ptr noundef %out) #0 !dbg !4148 {
entry:
  %m_vec_limbs.addr = alloca i32, align 4
  %bins.addr = alloca ptr, align 4
  %out.addr = alloca ptr, align 4
  store i32 %m_vec_limbs, ptr %m_vec_limbs.addr, align 4
    #dbg_declare(ptr %m_vec_limbs.addr, !4151, !DIExpression(), !4152)
  store ptr %bins, ptr %bins.addr, align 4
    #dbg_declare(ptr %bins.addr, !4153, !DIExpression(), !4154)
  store ptr %out, ptr %out.addr, align 4
    #dbg_declare(ptr %out.addr, !4155, !DIExpression(), !4156)
  %0 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4157
  %1 = load ptr, ptr %bins.addr, align 4, !dbg !4158
  %2 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4159
  %mul = mul nsw i32 5, %2, !dbg !4160
  %add.ptr = getelementptr inbounds i64, ptr %1, i32 %mul, !dbg !4161
  %3 = load ptr, ptr %bins.addr, align 4, !dbg !4162
  %4 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4163
  %mul1 = mul nsw i32 10, %4, !dbg !4164
  %add.ptr2 = getelementptr inbounds i64, ptr %3, i32 %mul1, !dbg !4165
  call void @m_vec_mul_add_x_inv(i32 noundef %0, ptr noundef %add.ptr, ptr noundef %add.ptr2) #5, !dbg !4166
  %5 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4167
  %6 = load ptr, ptr %bins.addr, align 4, !dbg !4168
  %7 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4169
  %mul3 = mul nsw i32 11, %7, !dbg !4170
  %add.ptr4 = getelementptr inbounds i64, ptr %6, i32 %mul3, !dbg !4171
  %8 = load ptr, ptr %bins.addr, align 4, !dbg !4172
  %9 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4173
  %mul5 = mul nsw i32 12, %9, !dbg !4174
  %add.ptr6 = getelementptr inbounds i64, ptr %8, i32 %mul5, !dbg !4175
  call void @m_vec_mul_add_x(i32 noundef %5, ptr noundef %add.ptr4, ptr noundef %add.ptr6) #5, !dbg !4176
  %10 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4177
  %11 = load ptr, ptr %bins.addr, align 4, !dbg !4178
  %12 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4179
  %mul7 = mul nsw i32 10, %12, !dbg !4180
  %add.ptr8 = getelementptr inbounds i64, ptr %11, i32 %mul7, !dbg !4181
  %13 = load ptr, ptr %bins.addr, align 4, !dbg !4182
  %14 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4183
  %mul9 = mul nsw i32 7, %14, !dbg !4184
  %add.ptr10 = getelementptr inbounds i64, ptr %13, i32 %mul9, !dbg !4185
  call void @m_vec_mul_add_x_inv(i32 noundef %10, ptr noundef %add.ptr8, ptr noundef %add.ptr10) #5, !dbg !4186
  %15 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4187
  %16 = load ptr, ptr %bins.addr, align 4, !dbg !4188
  %17 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4189
  %mul11 = mul nsw i32 12, %17, !dbg !4190
  %add.ptr12 = getelementptr inbounds i64, ptr %16, i32 %mul11, !dbg !4191
  %18 = load ptr, ptr %bins.addr, align 4, !dbg !4192
  %19 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4193
  %mul13 = mul nsw i32 6, %19, !dbg !4194
  %add.ptr14 = getelementptr inbounds i64, ptr %18, i32 %mul13, !dbg !4195
  call void @m_vec_mul_add_x(i32 noundef %15, ptr noundef %add.ptr12, ptr noundef %add.ptr14) #5, !dbg !4196
  %20 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4197
  %21 = load ptr, ptr %bins.addr, align 4, !dbg !4198
  %22 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4199
  %mul15 = mul nsw i32 7, %22, !dbg !4200
  %add.ptr16 = getelementptr inbounds i64, ptr %21, i32 %mul15, !dbg !4201
  %23 = load ptr, ptr %bins.addr, align 4, !dbg !4202
  %24 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4203
  %mul17 = mul nsw i32 14, %24, !dbg !4204
  %add.ptr18 = getelementptr inbounds i64, ptr %23, i32 %mul17, !dbg !4205
  call void @m_vec_mul_add_x_inv(i32 noundef %20, ptr noundef %add.ptr16, ptr noundef %add.ptr18) #5, !dbg !4206
  %25 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4207
  %26 = load ptr, ptr %bins.addr, align 4, !dbg !4208
  %27 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4209
  %mul19 = mul nsw i32 6, %27, !dbg !4210
  %add.ptr20 = getelementptr inbounds i64, ptr %26, i32 %mul19, !dbg !4211
  %28 = load ptr, ptr %bins.addr, align 4, !dbg !4212
  %29 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4213
  %mul21 = mul nsw i32 3, %29, !dbg !4214
  %add.ptr22 = getelementptr inbounds i64, ptr %28, i32 %mul21, !dbg !4215
  call void @m_vec_mul_add_x(i32 noundef %25, ptr noundef %add.ptr20, ptr noundef %add.ptr22) #5, !dbg !4216
  %30 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4217
  %31 = load ptr, ptr %bins.addr, align 4, !dbg !4218
  %32 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4219
  %mul23 = mul nsw i32 14, %32, !dbg !4220
  %add.ptr24 = getelementptr inbounds i64, ptr %31, i32 %mul23, !dbg !4221
  %33 = load ptr, ptr %bins.addr, align 4, !dbg !4222
  %34 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4223
  %mul25 = mul nsw i32 15, %34, !dbg !4224
  %add.ptr26 = getelementptr inbounds i64, ptr %33, i32 %mul25, !dbg !4225
  call void @m_vec_mul_add_x_inv(i32 noundef %30, ptr noundef %add.ptr24, ptr noundef %add.ptr26) #5, !dbg !4226
  %35 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4227
  %36 = load ptr, ptr %bins.addr, align 4, !dbg !4228
  %37 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4229
  %mul27 = mul nsw i32 3, %37, !dbg !4230
  %add.ptr28 = getelementptr inbounds i64, ptr %36, i32 %mul27, !dbg !4231
  %38 = load ptr, ptr %bins.addr, align 4, !dbg !4232
  %39 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4233
  %mul29 = mul nsw i32 8, %39, !dbg !4234
  %add.ptr30 = getelementptr inbounds i64, ptr %38, i32 %mul29, !dbg !4235
  call void @m_vec_mul_add_x(i32 noundef %35, ptr noundef %add.ptr28, ptr noundef %add.ptr30) #5, !dbg !4236
  %40 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4237
  %41 = load ptr, ptr %bins.addr, align 4, !dbg !4238
  %42 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4239
  %mul31 = mul nsw i32 15, %42, !dbg !4240
  %add.ptr32 = getelementptr inbounds i64, ptr %41, i32 %mul31, !dbg !4241
  %43 = load ptr, ptr %bins.addr, align 4, !dbg !4242
  %44 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4243
  %mul33 = mul nsw i32 13, %44, !dbg !4244
  %add.ptr34 = getelementptr inbounds i64, ptr %43, i32 %mul33, !dbg !4245
  call void @m_vec_mul_add_x_inv(i32 noundef %40, ptr noundef %add.ptr32, ptr noundef %add.ptr34) #5, !dbg !4246
  %45 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4247
  %46 = load ptr, ptr %bins.addr, align 4, !dbg !4248
  %47 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4249
  %mul35 = mul nsw i32 8, %47, !dbg !4250
  %add.ptr36 = getelementptr inbounds i64, ptr %46, i32 %mul35, !dbg !4251
  %48 = load ptr, ptr %bins.addr, align 4, !dbg !4252
  %49 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4253
  %mul37 = mul nsw i32 4, %49, !dbg !4254
  %add.ptr38 = getelementptr inbounds i64, ptr %48, i32 %mul37, !dbg !4255
  call void @m_vec_mul_add_x(i32 noundef %45, ptr noundef %add.ptr36, ptr noundef %add.ptr38) #5, !dbg !4256
  %50 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4257
  %51 = load ptr, ptr %bins.addr, align 4, !dbg !4258
  %52 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4259
  %mul39 = mul nsw i32 13, %52, !dbg !4260
  %add.ptr40 = getelementptr inbounds i64, ptr %51, i32 %mul39, !dbg !4261
  %53 = load ptr, ptr %bins.addr, align 4, !dbg !4262
  %54 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4263
  %mul41 = mul nsw i32 9, %54, !dbg !4264
  %add.ptr42 = getelementptr inbounds i64, ptr %53, i32 %mul41, !dbg !4265
  call void @m_vec_mul_add_x_inv(i32 noundef %50, ptr noundef %add.ptr40, ptr noundef %add.ptr42) #5, !dbg !4266
  %55 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4267
  %56 = load ptr, ptr %bins.addr, align 4, !dbg !4268
  %57 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4269
  %mul43 = mul nsw i32 4, %57, !dbg !4270
  %add.ptr44 = getelementptr inbounds i64, ptr %56, i32 %mul43, !dbg !4271
  %58 = load ptr, ptr %bins.addr, align 4, !dbg !4272
  %59 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4273
  %mul45 = mul nsw i32 2, %59, !dbg !4274
  %add.ptr46 = getelementptr inbounds i64, ptr %58, i32 %mul45, !dbg !4275
  call void @m_vec_mul_add_x(i32 noundef %55, ptr noundef %add.ptr44, ptr noundef %add.ptr46) #5, !dbg !4276
  %60 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4277
  %61 = load ptr, ptr %bins.addr, align 4, !dbg !4278
  %62 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4279
  %mul47 = mul nsw i32 9, %62, !dbg !4280
  %add.ptr48 = getelementptr inbounds i64, ptr %61, i32 %mul47, !dbg !4281
  %63 = load ptr, ptr %bins.addr, align 4, !dbg !4282
  %64 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4283
  %mul49 = mul nsw i32 1, %64, !dbg !4284
  %add.ptr50 = getelementptr inbounds i64, ptr %63, i32 %mul49, !dbg !4285
  call void @m_vec_mul_add_x_inv(i32 noundef %60, ptr noundef %add.ptr48, ptr noundef %add.ptr50) #5, !dbg !4286
  %65 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4287
  %66 = load ptr, ptr %bins.addr, align 4, !dbg !4288
  %67 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4289
  %mul51 = mul nsw i32 2, %67, !dbg !4290
  %add.ptr52 = getelementptr inbounds i64, ptr %66, i32 %mul51, !dbg !4291
  %68 = load ptr, ptr %bins.addr, align 4, !dbg !4292
  %69 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4293
  %mul53 = mul nsw i32 1, %69, !dbg !4294
  %add.ptr54 = getelementptr inbounds i64, ptr %68, i32 %mul53, !dbg !4295
  call void @m_vec_mul_add_x(i32 noundef %65, ptr noundef %add.ptr52, ptr noundef %add.ptr54) #5, !dbg !4296
  %70 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4297
  %71 = load ptr, ptr %bins.addr, align 4, !dbg !4298
  %72 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4299
  %add.ptr55 = getelementptr inbounds i64, ptr %71, i32 %72, !dbg !4300
  %73 = load ptr, ptr %out.addr, align 4, !dbg !4301
  call void @m_vec_copy(i32 noundef %70, ptr noundef %add.ptr55, ptr noundef %73) #5, !dbg !4302
  ret void, !dbg !4303
}

; Function Attrs: noinline nounwind optnone
define internal void @m_vec_mul_add_x_inv(i32 noundef %m_vec_limbs, ptr noundef %in, ptr noundef %acc) #0 !dbg !4304 {
entry:
  %m_vec_limbs.addr = alloca i32, align 4
  %in.addr = alloca ptr, align 4
  %acc.addr = alloca ptr, align 4
  %mask_lsb = alloca i64, align 8
  %i = alloca i32, align 4
  %t = alloca i64, align 8
  store i32 %m_vec_limbs, ptr %m_vec_limbs.addr, align 4
    #dbg_declare(ptr %m_vec_limbs.addr, !4305, !DIExpression(), !4306)
  store ptr %in, ptr %in.addr, align 4
    #dbg_declare(ptr %in.addr, !4307, !DIExpression(), !4308)
  store ptr %acc, ptr %acc.addr, align 4
    #dbg_declare(ptr %acc.addr, !4309, !DIExpression(), !4310)
    #dbg_declare(ptr %mask_lsb, !4311, !DIExpression(), !4312)
  store i64 1229782938247303441, ptr %mask_lsb, align 8, !dbg !4312
    #dbg_declare(ptr %i, !4313, !DIExpression(), !4315)
  store i32 0, ptr %i, align 4, !dbg !4315
  br label %for.cond, !dbg !4316

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !4317
  %1 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4319
  %cmp = icmp slt i32 %0, %1, !dbg !4320
  br i1 %cmp, label %for.body, label %for.end, !dbg !4321

for.body:                                         ; preds = %for.cond
    #dbg_declare(ptr %t, !4322, !DIExpression(), !4324)
  %2 = load ptr, ptr %in.addr, align 4, !dbg !4325
  %3 = load i32, ptr %i, align 4, !dbg !4326
  %arrayidx = getelementptr inbounds i64, ptr %2, i32 %3, !dbg !4325
  %4 = load i64, ptr %arrayidx, align 8, !dbg !4325
  %5 = load i64, ptr %mask_lsb, align 8, !dbg !4327
  %and = and i64 %4, %5, !dbg !4328
  store i64 %and, ptr %t, align 8, !dbg !4324
  %6 = load ptr, ptr %in.addr, align 4, !dbg !4329
  %7 = load i32, ptr %i, align 4, !dbg !4330
  %arrayidx1 = getelementptr inbounds i64, ptr %6, i32 %7, !dbg !4329
  %8 = load i64, ptr %arrayidx1, align 8, !dbg !4329
  %9 = load i64, ptr %t, align 8, !dbg !4331
  %xor = xor i64 %8, %9, !dbg !4332
  %shr = lshr i64 %xor, 1, !dbg !4333
  %10 = load i64, ptr %t, align 8, !dbg !4334
  %mul = mul i64 %10, 9, !dbg !4335
  %xor2 = xor i64 %shr, %mul, !dbg !4336
  %11 = load ptr, ptr %acc.addr, align 4, !dbg !4337
  %12 = load i32, ptr %i, align 4, !dbg !4338
  %arrayidx3 = getelementptr inbounds i64, ptr %11, i32 %12, !dbg !4337
  %13 = load i64, ptr %arrayidx3, align 8, !dbg !4339
  %xor4 = xor i64 %13, %xor2, !dbg !4339
  store i64 %xor4, ptr %arrayidx3, align 8, !dbg !4339
  br label %for.inc, !dbg !4340

for.inc:                                          ; preds = %for.body
  %14 = load i32, ptr %i, align 4, !dbg !4341
  %inc = add nsw i32 %14, 1, !dbg !4341
  store i32 %inc, ptr %i, align 4, !dbg !4341
  br label %for.cond, !dbg !4342, !llvm.loop !4343

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4345
}

; Function Attrs: noinline nounwind optnone
define internal void @m_vec_mul_add_x(i32 noundef %m_vec_limbs, ptr noundef %in, ptr noundef %acc) #0 !dbg !4346 {
entry:
  %m_vec_limbs.addr = alloca i32, align 4
  %in.addr = alloca ptr, align 4
  %acc.addr = alloca ptr, align 4
  %mask_msb = alloca i64, align 8
  %i = alloca i32, align 4
  %t = alloca i64, align 8
  store i32 %m_vec_limbs, ptr %m_vec_limbs.addr, align 4
    #dbg_declare(ptr %m_vec_limbs.addr, !4347, !DIExpression(), !4348)
  store ptr %in, ptr %in.addr, align 4
    #dbg_declare(ptr %in.addr, !4349, !DIExpression(), !4350)
  store ptr %acc, ptr %acc.addr, align 4
    #dbg_declare(ptr %acc.addr, !4351, !DIExpression(), !4352)
    #dbg_declare(ptr %mask_msb, !4353, !DIExpression(), !4354)
  store i64 -8608480567731124088, ptr %mask_msb, align 8, !dbg !4354
    #dbg_declare(ptr %i, !4355, !DIExpression(), !4357)
  store i32 0, ptr %i, align 4, !dbg !4357
  br label %for.cond, !dbg !4358

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !4359
  %1 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4361
  %cmp = icmp slt i32 %0, %1, !dbg !4362
  br i1 %cmp, label %for.body, label %for.end, !dbg !4363

for.body:                                         ; preds = %for.cond
    #dbg_declare(ptr %t, !4364, !DIExpression(), !4366)
  %2 = load ptr, ptr %in.addr, align 4, !dbg !4367
  %3 = load i32, ptr %i, align 4, !dbg !4368
  %arrayidx = getelementptr inbounds i64, ptr %2, i32 %3, !dbg !4367
  %4 = load i64, ptr %arrayidx, align 8, !dbg !4367
  %5 = load i64, ptr %mask_msb, align 8, !dbg !4369
  %and = and i64 %4, %5, !dbg !4370
  store i64 %and, ptr %t, align 8, !dbg !4366
  %6 = load ptr, ptr %in.addr, align 4, !dbg !4371
  %7 = load i32, ptr %i, align 4, !dbg !4372
  %arrayidx1 = getelementptr inbounds i64, ptr %6, i32 %7, !dbg !4371
  %8 = load i64, ptr %arrayidx1, align 8, !dbg !4371
  %9 = load i64, ptr %t, align 8, !dbg !4373
  %xor = xor i64 %8, %9, !dbg !4374
  %shl = shl i64 %xor, 1, !dbg !4375
  %10 = load i64, ptr %t, align 8, !dbg !4376
  %shr = lshr i64 %10, 3, !dbg !4377
  %mul = mul i64 %shr, 3, !dbg !4378
  %xor2 = xor i64 %shl, %mul, !dbg !4379
  %11 = load ptr, ptr %acc.addr, align 4, !dbg !4380
  %12 = load i32, ptr %i, align 4, !dbg !4381
  %arrayidx3 = getelementptr inbounds i64, ptr %11, i32 %12, !dbg !4380
  %13 = load i64, ptr %arrayidx3, align 8, !dbg !4382
  %xor4 = xor i64 %13, %xor2, !dbg !4382
  store i64 %xor4, ptr %arrayidx3, align 8, !dbg !4382
  br label %for.inc, !dbg !4383

for.inc:                                          ; preds = %for.body
  %14 = load i32, ptr %i, align 4, !dbg !4384
  %inc = add nsw i32 %14, 1, !dbg !4384
  store i32 %inc, ptr %i, align 4, !dbg !4384
  br label %for.cond, !dbg !4385, !llvm.loop !4386

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4388
}

; Function Attrs: noinline nounwind optnone
define internal void @m_vec_copy(i32 noundef %m_vec_limbs, ptr noundef %in, ptr noundef %out) #0 !dbg !4389 {
entry:
  %m_vec_limbs.addr = alloca i32, align 4
  %in.addr = alloca ptr, align 4
  %out.addr = alloca ptr, align 4
  %i = alloca i32, align 4
  store i32 %m_vec_limbs, ptr %m_vec_limbs.addr, align 4
    #dbg_declare(ptr %m_vec_limbs.addr, !4390, !DIExpression(), !4391)
  store ptr %in, ptr %in.addr, align 4
    #dbg_declare(ptr %in.addr, !4392, !DIExpression(), !4393)
  store ptr %out, ptr %out.addr, align 4
    #dbg_declare(ptr %out.addr, !4394, !DIExpression(), !4395)
    #dbg_declare(ptr %i, !4396, !DIExpression(), !4398)
  store i32 0, ptr %i, align 4, !dbg !4398
  br label %for.cond, !dbg !4399

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !4400
  %1 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4402
  %cmp = icmp slt i32 %0, %1, !dbg !4403
  br i1 %cmp, label %for.body, label %for.end, !dbg !4404

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %in.addr, align 4, !dbg !4405
  %3 = load i32, ptr %i, align 4, !dbg !4407
  %arrayidx = getelementptr inbounds i64, ptr %2, i32 %3, !dbg !4405
  %4 = load i64, ptr %arrayidx, align 8, !dbg !4405
  %5 = load ptr, ptr %out.addr, align 4, !dbg !4408
  %6 = load i32, ptr %i, align 4, !dbg !4409
  %arrayidx1 = getelementptr inbounds i64, ptr %5, i32 %6, !dbg !4408
  store i64 %4, ptr %arrayidx1, align 8, !dbg !4410
  br label %for.inc, !dbg !4411

for.inc:                                          ; preds = %for.body
  %7 = load i32, ptr %i, align 4, !dbg !4412
  %inc = add nsw i32 %7, 1, !dbg !4412
  store i32 %inc, ptr %i, align 4, !dbg !4412
  br label %for.cond, !dbg !4413, !llvm.loop !4414

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4416
}

; Function Attrs: noinline nounwind optnone
define dso_local void @m_upper(ptr noundef %p, ptr noundef %in, ptr noundef %out, i32 noundef %size) #0 !dbg !4417 {
entry:
  %p.addr = alloca ptr, align 4
  %in.addr = alloca ptr, align 4
  %out.addr = alloca ptr, align 4
  %size.addr = alloca i32, align 4
  %m_vec_limbs = alloca i32, align 4
  %m_vecs_stored = alloca i32, align 4
  %r = alloca i32, align 4
  %c = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 4
    #dbg_declare(ptr %p.addr, !4448, !DIExpression(), !4449)
  store ptr %in, ptr %in.addr, align 4
    #dbg_declare(ptr %in.addr, !4450, !DIExpression(), !4451)
  store ptr %out, ptr %out.addr, align 4
    #dbg_declare(ptr %out.addr, !4452, !DIExpression(), !4453)
  store i32 %size, ptr %size.addr, align 4
    #dbg_declare(ptr %size.addr, !4454, !DIExpression(), !4455)
    #dbg_declare(ptr %m_vec_limbs, !4456, !DIExpression(), !4457)
  %0 = load ptr, ptr %p.addr, align 4, !dbg !4458
  %m_vec_limbs1 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %0, i32 0, i32 21, !dbg !4459
  %1 = load i32, ptr %m_vec_limbs1, align 4, !dbg !4459
  store i32 %1, ptr %m_vec_limbs, align 4, !dbg !4457
    #dbg_declare(ptr %m_vecs_stored, !4460, !DIExpression(), !4461)
  store i32 0, ptr %m_vecs_stored, align 4, !dbg !4461
    #dbg_declare(ptr %r, !4462, !DIExpression(), !4464)
  store i32 0, ptr %r, align 4, !dbg !4464
  br label %for.cond, !dbg !4465

for.cond:                                         ; preds = %for.inc16, %entry
  %2 = load i32, ptr %r, align 4, !dbg !4466
  %3 = load i32, ptr %size.addr, align 4, !dbg !4468
  %cmp = icmp slt i32 %2, %3, !dbg !4469
  br i1 %cmp, label %for.body, label %for.end18, !dbg !4470

for.body:                                         ; preds = %for.cond
    #dbg_declare(ptr %c, !4471, !DIExpression(), !4474)
  %4 = load i32, ptr %r, align 4, !dbg !4475
  store i32 %4, ptr %c, align 4, !dbg !4474
  br label %for.cond2, !dbg !4476

for.cond2:                                        ; preds = %for.inc, %for.body
  %5 = load i32, ptr %c, align 4, !dbg !4477
  %6 = load i32, ptr %size.addr, align 4, !dbg !4479
  %cmp3 = icmp slt i32 %5, %6, !dbg !4480
  br i1 %cmp3, label %for.body4, label %for.end, !dbg !4481

for.body4:                                        ; preds = %for.cond2
  %7 = load i32, ptr %m_vec_limbs, align 4, !dbg !4482
  %8 = load ptr, ptr %in.addr, align 4, !dbg !4484
  %9 = load i32, ptr %m_vec_limbs, align 4, !dbg !4485
  %10 = load i32, ptr %r, align 4, !dbg !4486
  %11 = load i32, ptr %size.addr, align 4, !dbg !4487
  %mul = mul nsw i32 %10, %11, !dbg !4488
  %12 = load i32, ptr %c, align 4, !dbg !4489
  %add = add nsw i32 %mul, %12, !dbg !4490
  %mul5 = mul nsw i32 %9, %add, !dbg !4491
  %add.ptr = getelementptr inbounds i64, ptr %8, i32 %mul5, !dbg !4492
  %13 = load ptr, ptr %out.addr, align 4, !dbg !4493
  %14 = load i32, ptr %m_vec_limbs, align 4, !dbg !4494
  %15 = load i32, ptr %m_vecs_stored, align 4, !dbg !4495
  %mul6 = mul nsw i32 %14, %15, !dbg !4496
  %add.ptr7 = getelementptr inbounds i64, ptr %13, i32 %mul6, !dbg !4497
  call void @m_vec_copy.17(i32 noundef %7, ptr noundef %add.ptr, ptr noundef %add.ptr7) #5, !dbg !4498
  %16 = load i32, ptr %r, align 4, !dbg !4499
  %17 = load i32, ptr %c, align 4, !dbg !4501
  %cmp8 = icmp ne i32 %16, %17, !dbg !4502
  br i1 %cmp8, label %if.then, label %if.end, !dbg !4502

if.then:                                          ; preds = %for.body4
  %18 = load i32, ptr %m_vec_limbs, align 4, !dbg !4503
  %19 = load ptr, ptr %in.addr, align 4, !dbg !4505
  %20 = load i32, ptr %m_vec_limbs, align 4, !dbg !4506
  %21 = load i32, ptr %c, align 4, !dbg !4507
  %22 = load i32, ptr %size.addr, align 4, !dbg !4508
  %mul9 = mul nsw i32 %21, %22, !dbg !4509
  %23 = load i32, ptr %r, align 4, !dbg !4510
  %add10 = add nsw i32 %mul9, %23, !dbg !4511
  %mul11 = mul nsw i32 %20, %add10, !dbg !4512
  %add.ptr12 = getelementptr inbounds i64, ptr %19, i32 %mul11, !dbg !4513
  %24 = load ptr, ptr %out.addr, align 4, !dbg !4514
  %25 = load i32, ptr %m_vec_limbs, align 4, !dbg !4515
  %26 = load i32, ptr %m_vecs_stored, align 4, !dbg !4516
  %mul13 = mul nsw i32 %25, %26, !dbg !4517
  %add.ptr14 = getelementptr inbounds i64, ptr %24, i32 %mul13, !dbg !4518
  call void @m_vec_add.18(i32 noundef %18, ptr noundef %add.ptr12, ptr noundef %add.ptr14) #5, !dbg !4519
  br label %if.end, !dbg !4520

if.end:                                           ; preds = %if.then, %for.body4
  %27 = load i32, ptr %m_vecs_stored, align 4, !dbg !4521
  %inc = add nsw i32 %27, 1, !dbg !4521
  store i32 %inc, ptr %m_vecs_stored, align 4, !dbg !4521
  br label %for.inc, !dbg !4522

for.inc:                                          ; preds = %if.end
  %28 = load i32, ptr %c, align 4, !dbg !4523
  %inc15 = add nsw i32 %28, 1, !dbg !4523
  store i32 %inc15, ptr %c, align 4, !dbg !4523
  br label %for.cond2, !dbg !4524, !llvm.loop !4525

for.end:                                          ; preds = %for.cond2
  br label %for.inc16, !dbg !4527

for.inc16:                                        ; preds = %for.end
  %29 = load i32, ptr %r, align 4, !dbg !4528
  %inc17 = add nsw i32 %29, 1, !dbg !4528
  store i32 %inc17, ptr %r, align 4, !dbg !4528
  br label %for.cond, !dbg !4529, !llvm.loop !4530

for.end18:                                        ; preds = %for.cond
  ret void, !dbg !4532
}

; Function Attrs: noinline nounwind optnone
define internal void @m_vec_copy.17(i32 noundef %m_vec_limbs, ptr noundef %in, ptr noundef %out) #0 !dbg !4533 {
entry:
  %m_vec_limbs.addr = alloca i32, align 4
  %in.addr = alloca ptr, align 4
  %out.addr = alloca ptr, align 4
  %i = alloca i32, align 4
  store i32 %m_vec_limbs, ptr %m_vec_limbs.addr, align 4
    #dbg_declare(ptr %m_vec_limbs.addr, !4534, !DIExpression(), !4535)
  store ptr %in, ptr %in.addr, align 4
    #dbg_declare(ptr %in.addr, !4536, !DIExpression(), !4537)
  store ptr %out, ptr %out.addr, align 4
    #dbg_declare(ptr %out.addr, !4538, !DIExpression(), !4539)
    #dbg_declare(ptr %i, !4540, !DIExpression(), !4542)
  store i32 0, ptr %i, align 4, !dbg !4542
  br label %for.cond, !dbg !4543

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !4544
  %1 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4546
  %cmp = icmp slt i32 %0, %1, !dbg !4547
  br i1 %cmp, label %for.body, label %for.end, !dbg !4548

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %in.addr, align 4, !dbg !4549
  %3 = load i32, ptr %i, align 4, !dbg !4551
  %arrayidx = getelementptr inbounds i64, ptr %2, i32 %3, !dbg !4549
  %4 = load i64, ptr %arrayidx, align 8, !dbg !4549
  %5 = load ptr, ptr %out.addr, align 4, !dbg !4552
  %6 = load i32, ptr %i, align 4, !dbg !4553
  %arrayidx1 = getelementptr inbounds i64, ptr %5, i32 %6, !dbg !4552
  store i64 %4, ptr %arrayidx1, align 8, !dbg !4554
  br label %for.inc, !dbg !4555

for.inc:                                          ; preds = %for.body
  %7 = load i32, ptr %i, align 4, !dbg !4556
  %inc = add nsw i32 %7, 1, !dbg !4556
  store i32 %inc, ptr %i, align 4, !dbg !4556
  br label %for.cond, !dbg !4557, !llvm.loop !4558

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4560
}

; Function Attrs: noinline nounwind optnone
define internal void @m_vec_add.18(i32 noundef %m_vec_limbs, ptr noundef %in, ptr noundef %acc) #0 !dbg !4561 {
entry:
  %m_vec_limbs.addr = alloca i32, align 4
  %in.addr = alloca ptr, align 4
  %acc.addr = alloca ptr, align 4
  %i = alloca i32, align 4
  store i32 %m_vec_limbs, ptr %m_vec_limbs.addr, align 4
    #dbg_declare(ptr %m_vec_limbs.addr, !4562, !DIExpression(), !4563)
  store ptr %in, ptr %in.addr, align 4
    #dbg_declare(ptr %in.addr, !4564, !DIExpression(), !4565)
  store ptr %acc, ptr %acc.addr, align 4
    #dbg_declare(ptr %acc.addr, !4566, !DIExpression(), !4567)
    #dbg_declare(ptr %i, !4568, !DIExpression(), !4570)
  store i32 0, ptr %i, align 4, !dbg !4570
  br label %for.cond, !dbg !4571

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !4572
  %1 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4574
  %cmp = icmp slt i32 %0, %1, !dbg !4575
  br i1 %cmp, label %for.body, label %for.end, !dbg !4576

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %in.addr, align 4, !dbg !4577
  %3 = load i32, ptr %i, align 4, !dbg !4579
  %arrayidx = getelementptr inbounds i64, ptr %2, i32 %3, !dbg !4577
  %4 = load i64, ptr %arrayidx, align 8, !dbg !4577
  %5 = load ptr, ptr %acc.addr, align 4, !dbg !4580
  %6 = load i32, ptr %i, align 4, !dbg !4581
  %arrayidx1 = getelementptr inbounds i64, ptr %5, i32 %6, !dbg !4580
  %7 = load i64, ptr %arrayidx1, align 8, !dbg !4582
  %xor = xor i64 %7, %4, !dbg !4582
  store i64 %xor, ptr %arrayidx1, align 8, !dbg !4582
  br label %for.inc, !dbg !4583

for.inc:                                          ; preds = %for.body
  %8 = load i32, ptr %i, align 4, !dbg !4584
  %inc = add nsw i32 %8, 1, !dbg !4584
  store i32 %inc, ptr %i, align 4, !dbg !4584
  br label %for.cond, !dbg !4585, !llvm.loop !4586

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4588
}

; Function Attrs: noinline nounwind optnone
define dso_local i32 @sample_solution(ptr noundef %p, ptr noundef %A, ptr noundef %y, ptr noundef %r, ptr noundef %x, i32 noundef %k, i32 noundef %o, i32 noundef %m, i32 noundef %A_cols) #0 !dbg !4589 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 4
  %A.addr = alloca ptr, align 4
  %y.addr = alloca ptr, align 4
  %r.addr = alloca ptr, align 4
  %x.addr = alloca ptr, align 4
  %k.addr = alloca i32, align 4
  %o.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %A_cols.addr = alloca i32, align 4
  %finished = alloca i8, align 1
  %col_upper_bound = alloca i32, align 4
  %correct_column = alloca i8, align 1
  %i = alloca i32, align 4
  %Ar = alloca [142 x i8], align 1
  %i2 = alloca i32, align 4
  %i16 = alloca i32, align 4
  %full_rank = alloca i8, align 1
  %i33 = alloca i32, align 4
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %u = alloca i8, align 1
  %i86 = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %p, ptr %p.addr, align 4
    #dbg_declare(ptr %p.addr, !4592, !DIExpression(), !4593)
  store ptr %A, ptr %A.addr, align 4
    #dbg_declare(ptr %A.addr, !4594, !DIExpression(), !4595)
  store ptr %y, ptr %y.addr, align 4
    #dbg_declare(ptr %y.addr, !4596, !DIExpression(), !4597)
  store ptr %r, ptr %r.addr, align 4
    #dbg_declare(ptr %r.addr, !4598, !DIExpression(), !4599)
  store ptr %x, ptr %x.addr, align 4
    #dbg_declare(ptr %x.addr, !4600, !DIExpression(), !4601)
  store i32 %k, ptr %k.addr, align 4
    #dbg_declare(ptr %k.addr, !4602, !DIExpression(), !4603)
  store i32 %o, ptr %o.addr, align 4
    #dbg_declare(ptr %o.addr, !4604, !DIExpression(), !4605)
  store i32 %m, ptr %m.addr, align 4
    #dbg_declare(ptr %m.addr, !4606, !DIExpression(), !4607)
  store i32 %A_cols, ptr %A_cols.addr, align 4
    #dbg_declare(ptr %A_cols.addr, !4608, !DIExpression(), !4609)
    #dbg_declare(ptr %finished, !4610, !DIExpression(), !4611)
    #dbg_declare(ptr %col_upper_bound, !4612, !DIExpression(), !4613)
    #dbg_declare(ptr %correct_column, !4614, !DIExpression(), !4615)
    #dbg_declare(ptr %i, !4616, !DIExpression(), !4618)
  store i32 0, ptr %i, align 4, !dbg !4618
  br label %for.cond, !dbg !4619

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !4620
  %1 = load i32, ptr %k.addr, align 4, !dbg !4622
  %2 = load i32, ptr %o.addr, align 4, !dbg !4623
  %mul = mul nsw i32 %1, %2, !dbg !4624
  %cmp = icmp slt i32 %0, %mul, !dbg !4625
  br i1 %cmp, label %for.body, label %for.end, !dbg !4626

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %r.addr, align 4, !dbg !4627
  %4 = load i32, ptr %i, align 4, !dbg !4629
  %arrayidx = getelementptr inbounds i8, ptr %3, i32 %4, !dbg !4627
  %5 = load i8, ptr %arrayidx, align 1, !dbg !4627
  %6 = load ptr, ptr %x.addr, align 4, !dbg !4630
  %7 = load i32, ptr %i, align 4, !dbg !4631
  %arrayidx1 = getelementptr inbounds i8, ptr %6, i32 %7, !dbg !4630
  store i8 %5, ptr %arrayidx1, align 1, !dbg !4632
  br label %for.inc, !dbg !4633

for.inc:                                          ; preds = %for.body
  %8 = load i32, ptr %i, align 4, !dbg !4634
  %inc = add nsw i32 %8, 1, !dbg !4634
  store i32 %inc, ptr %i, align 4, !dbg !4634
  br label %for.cond, !dbg !4635, !llvm.loop !4636

for.end:                                          ; preds = %for.cond
    #dbg_declare(ptr %Ar, !4638, !DIExpression(), !4639)
    #dbg_declare(ptr %i2, !4640, !DIExpression(), !4642)
  store i32 0, ptr %i2, align 4, !dbg !4642
  br label %for.cond3, !dbg !4643

for.cond3:                                        ; preds = %for.inc11, %for.end
  %9 = load i32, ptr %i2, align 4, !dbg !4644
  %10 = load i32, ptr %m.addr, align 4, !dbg !4646
  %cmp4 = icmp slt i32 %9, %10, !dbg !4647
  br i1 %cmp4, label %for.body5, label %for.end13, !dbg !4648

for.body5:                                        ; preds = %for.cond3
  %11 = load ptr, ptr %A.addr, align 4, !dbg !4649
  %12 = load i32, ptr %k.addr, align 4, !dbg !4651
  %13 = load i32, ptr %o.addr, align 4, !dbg !4652
  %mul6 = mul nsw i32 %12, %13, !dbg !4653
  %14 = load i32, ptr %i2, align 4, !dbg !4654
  %15 = load i32, ptr %k.addr, align 4, !dbg !4655
  %16 = load i32, ptr %o.addr, align 4, !dbg !4656
  %mul7 = mul nsw i32 %15, %16, !dbg !4657
  %add = add nsw i32 %mul7, 1, !dbg !4658
  %mul8 = mul nsw i32 %14, %add, !dbg !4659
  %add9 = add nsw i32 %mul6, %mul8, !dbg !4660
  %arrayidx10 = getelementptr inbounds i8, ptr %11, i32 %add9, !dbg !4649
  store i8 0, ptr %arrayidx10, align 1, !dbg !4661
  br label %for.inc11, !dbg !4662

for.inc11:                                        ; preds = %for.body5
  %17 = load i32, ptr %i2, align 4, !dbg !4663
  %inc12 = add nsw i32 %17, 1, !dbg !4663
  store i32 %inc12, ptr %i2, align 4, !dbg !4663
  br label %for.cond3, !dbg !4664, !llvm.loop !4665

for.end13:                                        ; preds = %for.cond3
  %18 = load ptr, ptr %A.addr, align 4, !dbg !4667
  %19 = load ptr, ptr %r.addr, align 4, !dbg !4668
  %arraydecay = getelementptr inbounds [142 x i8], ptr %Ar, i32 0, i32 0, !dbg !4669
  %20 = load i32, ptr %k.addr, align 4, !dbg !4670
  %21 = load i32, ptr %o.addr, align 4, !dbg !4671
  %mul14 = mul nsw i32 %20, %21, !dbg !4672
  %add15 = add nsw i32 %mul14, 1, !dbg !4673
  %22 = load i32, ptr %m.addr, align 4, !dbg !4674
  call void @mat_mul.21(ptr noundef %18, ptr noundef %19, ptr noundef %arraydecay, i32 noundef %add15, i32 noundef %22, i32 noundef 1) #5, !dbg !4675
    #dbg_declare(ptr %i16, !4676, !DIExpression(), !4678)
  store i32 0, ptr %i16, align 4, !dbg !4678
  br label %for.cond17, !dbg !4679

for.cond17:                                       ; preds = %for.inc28, %for.end13
  %23 = load i32, ptr %i16, align 4, !dbg !4680
  %24 = load i32, ptr %m.addr, align 4, !dbg !4682
  %cmp18 = icmp slt i32 %23, %24, !dbg !4683
  br i1 %cmp18, label %for.body19, label %for.end30, !dbg !4684

for.body19:                                       ; preds = %for.cond17
  %25 = load ptr, ptr %y.addr, align 4, !dbg !4685
  %26 = load i32, ptr %i16, align 4, !dbg !4687
  %arrayidx20 = getelementptr inbounds i8, ptr %25, i32 %26, !dbg !4685
  %27 = load i8, ptr %arrayidx20, align 1, !dbg !4685
  %28 = load i32, ptr %i16, align 4, !dbg !4688
  %arrayidx21 = getelementptr inbounds [142 x i8], ptr %Ar, i32 0, i32 %28, !dbg !4689
  %29 = load i8, ptr %arrayidx21, align 1, !dbg !4689
  %call = call zeroext i8 @sub_f(i8 noundef zeroext %27, i8 noundef zeroext %29) #5, !dbg !4690
  %30 = load ptr, ptr %A.addr, align 4, !dbg !4691
  %31 = load i32, ptr %k.addr, align 4, !dbg !4692
  %32 = load i32, ptr %o.addr, align 4, !dbg !4693
  %mul22 = mul nsw i32 %31, %32, !dbg !4694
  %33 = load i32, ptr %i16, align 4, !dbg !4695
  %34 = load i32, ptr %k.addr, align 4, !dbg !4696
  %35 = load i32, ptr %o.addr, align 4, !dbg !4697
  %mul23 = mul nsw i32 %34, %35, !dbg !4698
  %add24 = add nsw i32 %mul23, 1, !dbg !4699
  %mul25 = mul nsw i32 %33, %add24, !dbg !4700
  %add26 = add nsw i32 %mul22, %mul25, !dbg !4701
  %arrayidx27 = getelementptr inbounds i8, ptr %30, i32 %add26, !dbg !4691
  store i8 %call, ptr %arrayidx27, align 1, !dbg !4702
  br label %for.inc28, !dbg !4703

for.inc28:                                        ; preds = %for.body19
  %36 = load i32, ptr %i16, align 4, !dbg !4704
  %inc29 = add nsw i32 %36, 1, !dbg !4704
  store i32 %inc29, ptr %i16, align 4, !dbg !4704
  br label %for.cond17, !dbg !4705, !llvm.loop !4706

for.end30:                                        ; preds = %for.cond17
  %37 = load ptr, ptr %A.addr, align 4, !dbg !4708
  %38 = load i32, ptr %m.addr, align 4, !dbg !4709
  %39 = load i32, ptr %k.addr, align 4, !dbg !4710
  %40 = load i32, ptr %o.addr, align 4, !dbg !4711
  %mul31 = mul nsw i32 %39, %40, !dbg !4712
  %add32 = add nsw i32 %mul31, 1, !dbg !4713
  call void @EF(ptr noundef %37, i32 noundef %38, i32 noundef %add32) #5, !dbg !4714
    #dbg_declare(ptr %full_rank, !4715, !DIExpression(), !4716)
  store i8 0, ptr %full_rank, align 1, !dbg !4716
    #dbg_declare(ptr %i33, !4717, !DIExpression(), !4719)
  store i32 0, ptr %i33, align 4, !dbg !4719
  br label %for.cond34, !dbg !4720

for.cond34:                                       ; preds = %for.inc43, %for.end30
  %41 = load i32, ptr %i33, align 4, !dbg !4721
  %42 = load i32, ptr %A_cols.addr, align 4, !dbg !4723
  %sub = sub nsw i32 %42, 1, !dbg !4724
  %cmp35 = icmp slt i32 %41, %sub, !dbg !4725
  br i1 %cmp35, label %for.body36, label %for.end45, !dbg !4726

for.body36:                                       ; preds = %for.cond34
  %43 = load ptr, ptr %A.addr, align 4, !dbg !4727
  %44 = load i32, ptr %m.addr, align 4, !dbg !4729
  %sub37 = sub nsw i32 %44, 1, !dbg !4730
  %45 = load i32, ptr %A_cols.addr, align 4, !dbg !4731
  %mul38 = mul nsw i32 %sub37, %45, !dbg !4732
  %46 = load i32, ptr %i33, align 4, !dbg !4733
  %add39 = add nsw i32 %mul38, %46, !dbg !4734
  %arrayidx40 = getelementptr inbounds i8, ptr %43, i32 %add39, !dbg !4727
  %47 = load i8, ptr %arrayidx40, align 1, !dbg !4727
  %conv = zext i8 %47 to i32, !dbg !4727
  %48 = load i8, ptr %full_rank, align 1, !dbg !4735
  %conv41 = zext i8 %48 to i32, !dbg !4735
  %or = or i32 %conv41, %conv, !dbg !4735
  %conv42 = trunc i32 %or to i8, !dbg !4735
  store i8 %conv42, ptr %full_rank, align 1, !dbg !4735
  br label %for.inc43, !dbg !4736

for.inc43:                                        ; preds = %for.body36
  %49 = load i32, ptr %i33, align 4, !dbg !4737
  %inc44 = add nsw i32 %49, 1, !dbg !4737
  store i32 %inc44, ptr %i33, align 4, !dbg !4737
  br label %for.cond34, !dbg !4738, !llvm.loop !4739

for.end45:                                        ; preds = %for.cond34
  %50 = load i8, ptr %full_rank, align 1, !dbg !4741
  %conv46 = zext i8 %50 to i32, !dbg !4741
  %cmp47 = icmp eq i32 %conv46, 0, !dbg !4743
  br i1 %cmp47, label %if.then, label %if.end, !dbg !4743

if.then:                                          ; preds = %for.end45
  store i32 0, ptr %retval, align 4, !dbg !4744
  br label %return, !dbg !4744

if.end:                                           ; preds = %for.end45
    #dbg_declare(ptr %row, !4746, !DIExpression(), !4748)
  %51 = load i32, ptr %m.addr, align 4, !dbg !4749
  %sub49 = sub nsw i32 %51, 1, !dbg !4750
  store i32 %sub49, ptr %row, align 4, !dbg !4748
  br label %for.cond50, !dbg !4751

for.cond50:                                       ; preds = %for.inc232, %if.end
  %52 = load i32, ptr %row, align 4, !dbg !4752
  %cmp51 = icmp sge i32 %52, 0, !dbg !4754
  br i1 %cmp51, label %for.body53, label %for.end233, !dbg !4755

for.body53:                                       ; preds = %for.cond50
  store i8 0, ptr %finished, align 1, !dbg !4756
  %53 = load i32, ptr %row, align 4, !dbg !4758
  %54 = load i32, ptr %m.addr, align 4, !dbg !4759
  %55 = load i32, ptr %row, align 4, !dbg !4760
  %sub54 = sub nsw i32 %54, %55, !dbg !4761
  %div = sdiv i32 32, %sub54, !dbg !4762
  %add55 = add nsw i32 %53, %div, !dbg !4763
  %56 = load i32, ptr %k.addr, align 4, !dbg !4764
  %57 = load i32, ptr %o.addr, align 4, !dbg !4765
  %mul56 = mul nsw i32 %56, %57, !dbg !4766
  %cmp57 = icmp slt i32 %add55, %mul56, !dbg !4767
  br i1 %cmp57, label %cond.true, label %cond.false, !dbg !4767

cond.true:                                        ; preds = %for.body53
  %58 = load i32, ptr %row, align 4, !dbg !4758
  %59 = load i32, ptr %m.addr, align 4, !dbg !4759
  %60 = load i32, ptr %row, align 4, !dbg !4760
  %sub59 = sub nsw i32 %59, %60, !dbg !4761
  %div60 = sdiv i32 32, %sub59, !dbg !4762
  %add61 = add nsw i32 %58, %div60, !dbg !4763
  br label %cond.end, !dbg !4767

cond.false:                                       ; preds = %for.body53
  %61 = load i32, ptr %k.addr, align 4, !dbg !4764
  %62 = load i32, ptr %o.addr, align 4, !dbg !4765
  %mul62 = mul nsw i32 %61, %62, !dbg !4766
  br label %cond.end, !dbg !4767

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add61, %cond.true ], [ %mul62, %cond.false ], !dbg !4767
  store i32 %cond, ptr %col_upper_bound, align 4, !dbg !4768
    #dbg_declare(ptr %col, !4769, !DIExpression(), !4771)
  %63 = load i32, ptr %row, align 4, !dbg !4772
  store i32 %63, ptr %col, align 4, !dbg !4771
  br label %for.cond63, !dbg !4773

for.cond63:                                       ; preds = %for.inc229, %cond.end
  %64 = load i32, ptr %col, align 4, !dbg !4774
  %65 = load i32, ptr %col_upper_bound, align 4, !dbg !4776
  %cmp64 = icmp sle i32 %64, %65, !dbg !4777
  br i1 %cmp64, label %for.body66, label %for.end231, !dbg !4778

for.body66:                                       ; preds = %for.cond63
  %66 = load ptr, ptr %A.addr, align 4, !dbg !4779
  %67 = load i32, ptr %row, align 4, !dbg !4781
  %68 = load i32, ptr %A_cols.addr, align 4, !dbg !4782
  %mul67 = mul nsw i32 %67, %68, !dbg !4783
  %69 = load i32, ptr %col, align 4, !dbg !4784
  %add68 = add nsw i32 %mul67, %69, !dbg !4785
  %arrayidx69 = getelementptr inbounds i8, ptr %66, i32 %add68, !dbg !4779
  %70 = load i8, ptr %arrayidx69, align 1, !dbg !4779
  %call70 = call zeroext i8 @ct_compare_8(i8 noundef zeroext %70, i8 noundef zeroext 0) #5, !dbg !4786
  %conv71 = zext i8 %call70 to i32, !dbg !4786
  %71 = load i8, ptr %finished, align 1, !dbg !4787
  %conv72 = zext i8 %71 to i32, !dbg !4787
  %not = xor i32 %conv72, -1, !dbg !4788
  %and = and i32 %conv71, %not, !dbg !4789
  %conv73 = trunc i32 %and to i8, !dbg !4786
  store i8 %conv73, ptr %correct_column, align 1, !dbg !4790
    #dbg_declare(ptr %u, !4791, !DIExpression(), !4792)
  %72 = load i8, ptr %correct_column, align 1, !dbg !4793
  %conv74 = zext i8 %72 to i32, !dbg !4793
  %73 = load ptr, ptr %A.addr, align 4, !dbg !4794
  %74 = load i32, ptr %row, align 4, !dbg !4795
  %75 = load i32, ptr %A_cols.addr, align 4, !dbg !4796
  %mul75 = mul nsw i32 %74, %75, !dbg !4797
  %76 = load i32, ptr %A_cols.addr, align 4, !dbg !4798
  %add76 = add nsw i32 %mul75, %76, !dbg !4799
  %sub77 = sub nsw i32 %add76, 1, !dbg !4800
  %arrayidx78 = getelementptr inbounds i8, ptr %73, i32 %sub77, !dbg !4794
  %77 = load i8, ptr %arrayidx78, align 1, !dbg !4794
  %conv79 = zext i8 %77 to i32, !dbg !4794
  %and80 = and i32 %conv74, %conv79, !dbg !4801
  %conv81 = trunc i32 %and80 to i8, !dbg !4793
  store i8 %conv81, ptr %u, align 1, !dbg !4792
  %78 = load i8, ptr %u, align 1, !dbg !4802
  %conv82 = zext i8 %78 to i32, !dbg !4802
  %79 = load ptr, ptr %x.addr, align 4, !dbg !4803
  %80 = load i32, ptr %col, align 4, !dbg !4804
  %arrayidx83 = getelementptr inbounds i8, ptr %79, i32 %80, !dbg !4803
  %81 = load i8, ptr %arrayidx83, align 1, !dbg !4805
  %conv84 = zext i8 %81 to i32, !dbg !4805
  %xor = xor i32 %conv84, %conv82, !dbg !4805
  %conv85 = trunc i32 %xor to i8, !dbg !4805
  store i8 %conv85, ptr %arrayidx83, align 1, !dbg !4805
    #dbg_declare(ptr %i86, !4806, !DIExpression(), !4808)
  store i32 0, ptr %i86, align 4, !dbg !4808
  br label %for.cond87, !dbg !4809

for.cond87:                                       ; preds = %for.inc222, %for.body66
  %82 = load i32, ptr %i86, align 4, !dbg !4810
  %83 = load i32, ptr %row, align 4, !dbg !4812
  %cmp88 = icmp slt i32 %82, %83, !dbg !4813
  br i1 %cmp88, label %for.body90, label %for.end224, !dbg !4814

for.body90:                                       ; preds = %for.cond87
    #dbg_declare(ptr %tmp, !4815, !DIExpression(), !4817)
  %84 = load ptr, ptr %A.addr, align 4, !dbg !4818
  %85 = load i32, ptr %i86, align 4, !dbg !4819
  %86 = load i32, ptr %A_cols.addr, align 4, !dbg !4820
  %mul91 = mul nsw i32 %85, %86, !dbg !4821
  %87 = load i32, ptr %col, align 4, !dbg !4822
  %add92 = add nsw i32 %mul91, %87, !dbg !4823
  %arrayidx93 = getelementptr inbounds i8, ptr %84, i32 %add92, !dbg !4818
  %88 = load i8, ptr %arrayidx93, align 1, !dbg !4818
  %conv94 = zext i8 %88 to i64, !dbg !4824
  %shl = shl i64 %conv94, 0, !dbg !4825
  %89 = load ptr, ptr %A.addr, align 4, !dbg !4826
  %90 = load i32, ptr %i86, align 4, !dbg !4827
  %add95 = add nsw i32 %90, 1, !dbg !4828
  %91 = load i32, ptr %A_cols.addr, align 4, !dbg !4829
  %mul96 = mul nsw i32 %add95, %91, !dbg !4830
  %92 = load i32, ptr %col, align 4, !dbg !4831
  %add97 = add nsw i32 %mul96, %92, !dbg !4832
  %arrayidx98 = getelementptr inbounds i8, ptr %89, i32 %add97, !dbg !4826
  %93 = load i8, ptr %arrayidx98, align 1, !dbg !4826
  %conv99 = zext i8 %93 to i64, !dbg !4833
  %shl100 = shl i64 %conv99, 8, !dbg !4834
  %xor101 = xor i64 %shl, %shl100, !dbg !4835
  %94 = load ptr, ptr %A.addr, align 4, !dbg !4836
  %95 = load i32, ptr %i86, align 4, !dbg !4837
  %add102 = add nsw i32 %95, 2, !dbg !4838
  %96 = load i32, ptr %A_cols.addr, align 4, !dbg !4839
  %mul103 = mul nsw i32 %add102, %96, !dbg !4840
  %97 = load i32, ptr %col, align 4, !dbg !4841
  %add104 = add nsw i32 %mul103, %97, !dbg !4842
  %arrayidx105 = getelementptr inbounds i8, ptr %94, i32 %add104, !dbg !4836
  %98 = load i8, ptr %arrayidx105, align 1, !dbg !4836
  %conv106 = zext i8 %98 to i64, !dbg !4843
  %shl107 = shl i64 %conv106, 16, !dbg !4844
  %xor108 = xor i64 %xor101, %shl107, !dbg !4845
  %99 = load ptr, ptr %A.addr, align 4, !dbg !4846
  %100 = load i32, ptr %i86, align 4, !dbg !4847
  %add109 = add nsw i32 %100, 3, !dbg !4848
  %101 = load i32, ptr %A_cols.addr, align 4, !dbg !4849
  %mul110 = mul nsw i32 %add109, %101, !dbg !4850
  %102 = load i32, ptr %col, align 4, !dbg !4851
  %add111 = add nsw i32 %mul110, %102, !dbg !4852
  %arrayidx112 = getelementptr inbounds i8, ptr %99, i32 %add111, !dbg !4846
  %103 = load i8, ptr %arrayidx112, align 1, !dbg !4846
  %conv113 = zext i8 %103 to i64, !dbg !4853
  %shl114 = shl i64 %conv113, 24, !dbg !4854
  %xor115 = xor i64 %xor108, %shl114, !dbg !4855
  %104 = load ptr, ptr %A.addr, align 4, !dbg !4856
  %105 = load i32, ptr %i86, align 4, !dbg !4857
  %add116 = add nsw i32 %105, 4, !dbg !4858
  %106 = load i32, ptr %A_cols.addr, align 4, !dbg !4859
  %mul117 = mul nsw i32 %add116, %106, !dbg !4860
  %107 = load i32, ptr %col, align 4, !dbg !4861
  %add118 = add nsw i32 %mul117, %107, !dbg !4862
  %arrayidx119 = getelementptr inbounds i8, ptr %104, i32 %add118, !dbg !4856
  %108 = load i8, ptr %arrayidx119, align 1, !dbg !4856
  %conv120 = zext i8 %108 to i64, !dbg !4863
  %shl121 = shl i64 %conv120, 32, !dbg !4864
  %xor122 = xor i64 %xor115, %shl121, !dbg !4865
  %109 = load ptr, ptr %A.addr, align 4, !dbg !4866
  %110 = load i32, ptr %i86, align 4, !dbg !4867
  %add123 = add nsw i32 %110, 5, !dbg !4868
  %111 = load i32, ptr %A_cols.addr, align 4, !dbg !4869
  %mul124 = mul nsw i32 %add123, %111, !dbg !4870
  %112 = load i32, ptr %col, align 4, !dbg !4871
  %add125 = add nsw i32 %mul124, %112, !dbg !4872
  %arrayidx126 = getelementptr inbounds i8, ptr %109, i32 %add125, !dbg !4866
  %113 = load i8, ptr %arrayidx126, align 1, !dbg !4866
  %conv127 = zext i8 %113 to i64, !dbg !4873
  %shl128 = shl i64 %conv127, 40, !dbg !4874
  %xor129 = xor i64 %xor122, %shl128, !dbg !4875
  %114 = load ptr, ptr %A.addr, align 4, !dbg !4876
  %115 = load i32, ptr %i86, align 4, !dbg !4877
  %add130 = add nsw i32 %115, 6, !dbg !4878
  %116 = load i32, ptr %A_cols.addr, align 4, !dbg !4879
  %mul131 = mul nsw i32 %add130, %116, !dbg !4880
  %117 = load i32, ptr %col, align 4, !dbg !4881
  %add132 = add nsw i32 %mul131, %117, !dbg !4882
  %arrayidx133 = getelementptr inbounds i8, ptr %114, i32 %add132, !dbg !4876
  %118 = load i8, ptr %arrayidx133, align 1, !dbg !4876
  %conv134 = zext i8 %118 to i64, !dbg !4883
  %shl135 = shl i64 %conv134, 48, !dbg !4884
  %xor136 = xor i64 %xor129, %shl135, !dbg !4885
  %119 = load ptr, ptr %A.addr, align 4, !dbg !4886
  %120 = load i32, ptr %i86, align 4, !dbg !4887
  %add137 = add nsw i32 %120, 7, !dbg !4888
  %121 = load i32, ptr %A_cols.addr, align 4, !dbg !4889
  %mul138 = mul nsw i32 %add137, %121, !dbg !4890
  %122 = load i32, ptr %col, align 4, !dbg !4891
  %add139 = add nsw i32 %mul138, %122, !dbg !4892
  %arrayidx140 = getelementptr inbounds i8, ptr %119, i32 %add139, !dbg !4886
  %123 = load i8, ptr %arrayidx140, align 1, !dbg !4886
  %conv141 = zext i8 %123 to i64, !dbg !4893
  %shl142 = shl i64 %conv141, 56, !dbg !4894
  %xor143 = xor i64 %xor136, %shl142, !dbg !4895
  store i64 %xor143, ptr %tmp, align 8, !dbg !4817
  %124 = load i8, ptr %u, align 1, !dbg !4896
  %125 = load i64, ptr %tmp, align 8, !dbg !4897
  %call144 = call i64 @mul_fx8(i8 noundef zeroext %124, i64 noundef %125) #5, !dbg !4898
  store i64 %call144, ptr %tmp, align 8, !dbg !4899
  %126 = load i64, ptr %tmp, align 8, !dbg !4900
  %and145 = and i64 %126, 15, !dbg !4901
  %127 = load ptr, ptr %A.addr, align 4, !dbg !4902
  %128 = load i32, ptr %i86, align 4, !dbg !4903
  %129 = load i32, ptr %A_cols.addr, align 4, !dbg !4904
  %mul146 = mul nsw i32 %128, %129, !dbg !4905
  %130 = load i32, ptr %A_cols.addr, align 4, !dbg !4906
  %add147 = add nsw i32 %mul146, %130, !dbg !4907
  %sub148 = sub nsw i32 %add147, 1, !dbg !4908
  %arrayidx149 = getelementptr inbounds i8, ptr %127, i32 %sub148, !dbg !4902
  %131 = load i8, ptr %arrayidx149, align 1, !dbg !4909
  %conv150 = zext i8 %131 to i64, !dbg !4909
  %xor151 = xor i64 %conv150, %and145, !dbg !4909
  %conv152 = trunc i64 %xor151 to i8, !dbg !4909
  store i8 %conv152, ptr %arrayidx149, align 1, !dbg !4909
  %132 = load i64, ptr %tmp, align 8, !dbg !4910
  %shr = lshr i64 %132, 8, !dbg !4911
  %and153 = and i64 %shr, 15, !dbg !4912
  %133 = load ptr, ptr %A.addr, align 4, !dbg !4913
  %134 = load i32, ptr %i86, align 4, !dbg !4914
  %add154 = add nsw i32 %134, 1, !dbg !4915
  %135 = load i32, ptr %A_cols.addr, align 4, !dbg !4916
  %mul155 = mul nsw i32 %add154, %135, !dbg !4917
  %136 = load i32, ptr %A_cols.addr, align 4, !dbg !4918
  %add156 = add nsw i32 %mul155, %136, !dbg !4919
  %sub157 = sub nsw i32 %add156, 1, !dbg !4920
  %arrayidx158 = getelementptr inbounds i8, ptr %133, i32 %sub157, !dbg !4913
  %137 = load i8, ptr %arrayidx158, align 1, !dbg !4921
  %conv159 = zext i8 %137 to i64, !dbg !4921
  %xor160 = xor i64 %conv159, %and153, !dbg !4921
  %conv161 = trunc i64 %xor160 to i8, !dbg !4921
  store i8 %conv161, ptr %arrayidx158, align 1, !dbg !4921
  %138 = load i64, ptr %tmp, align 8, !dbg !4922
  %shr162 = lshr i64 %138, 16, !dbg !4923
  %and163 = and i64 %shr162, 15, !dbg !4924
  %139 = load ptr, ptr %A.addr, align 4, !dbg !4925
  %140 = load i32, ptr %i86, align 4, !dbg !4926
  %add164 = add nsw i32 %140, 2, !dbg !4927
  %141 = load i32, ptr %A_cols.addr, align 4, !dbg !4928
  %mul165 = mul nsw i32 %add164, %141, !dbg !4929
  %142 = load i32, ptr %A_cols.addr, align 4, !dbg !4930
  %add166 = add nsw i32 %mul165, %142, !dbg !4931
  %sub167 = sub nsw i32 %add166, 1, !dbg !4932
  %arrayidx168 = getelementptr inbounds i8, ptr %139, i32 %sub167, !dbg !4925
  %143 = load i8, ptr %arrayidx168, align 1, !dbg !4933
  %conv169 = zext i8 %143 to i64, !dbg !4933
  %xor170 = xor i64 %conv169, %and163, !dbg !4933
  %conv171 = trunc i64 %xor170 to i8, !dbg !4933
  store i8 %conv171, ptr %arrayidx168, align 1, !dbg !4933
  %144 = load i64, ptr %tmp, align 8, !dbg !4934
  %shr172 = lshr i64 %144, 24, !dbg !4935
  %and173 = and i64 %shr172, 15, !dbg !4936
  %145 = load ptr, ptr %A.addr, align 4, !dbg !4937
  %146 = load i32, ptr %i86, align 4, !dbg !4938
  %add174 = add nsw i32 %146, 3, !dbg !4939
  %147 = load i32, ptr %A_cols.addr, align 4, !dbg !4940
  %mul175 = mul nsw i32 %add174, %147, !dbg !4941
  %148 = load i32, ptr %A_cols.addr, align 4, !dbg !4942
  %add176 = add nsw i32 %mul175, %148, !dbg !4943
  %sub177 = sub nsw i32 %add176, 1, !dbg !4944
  %arrayidx178 = getelementptr inbounds i8, ptr %145, i32 %sub177, !dbg !4937
  %149 = load i8, ptr %arrayidx178, align 1, !dbg !4945
  %conv179 = zext i8 %149 to i64, !dbg !4945
  %xor180 = xor i64 %conv179, %and173, !dbg !4945
  %conv181 = trunc i64 %xor180 to i8, !dbg !4945
  store i8 %conv181, ptr %arrayidx178, align 1, !dbg !4945
  %150 = load i64, ptr %tmp, align 8, !dbg !4946
  %shr182 = lshr i64 %150, 32, !dbg !4947
  %and183 = and i64 %shr182, 15, !dbg !4948
  %151 = load ptr, ptr %A.addr, align 4, !dbg !4949
  %152 = load i32, ptr %i86, align 4, !dbg !4950
  %add184 = add nsw i32 %152, 4, !dbg !4951
  %153 = load i32, ptr %A_cols.addr, align 4, !dbg !4952
  %mul185 = mul nsw i32 %add184, %153, !dbg !4953
  %154 = load i32, ptr %A_cols.addr, align 4, !dbg !4954
  %add186 = add nsw i32 %mul185, %154, !dbg !4955
  %sub187 = sub nsw i32 %add186, 1, !dbg !4956
  %arrayidx188 = getelementptr inbounds i8, ptr %151, i32 %sub187, !dbg !4949
  %155 = load i8, ptr %arrayidx188, align 1, !dbg !4957
  %conv189 = zext i8 %155 to i64, !dbg !4957
  %xor190 = xor i64 %conv189, %and183, !dbg !4957
  %conv191 = trunc i64 %xor190 to i8, !dbg !4957
  store i8 %conv191, ptr %arrayidx188, align 1, !dbg !4957
  %156 = load i64, ptr %tmp, align 8, !dbg !4958
  %shr192 = lshr i64 %156, 40, !dbg !4959
  %and193 = and i64 %shr192, 15, !dbg !4960
  %157 = load ptr, ptr %A.addr, align 4, !dbg !4961
  %158 = load i32, ptr %i86, align 4, !dbg !4962
  %add194 = add nsw i32 %158, 5, !dbg !4963
  %159 = load i32, ptr %A_cols.addr, align 4, !dbg !4964
  %mul195 = mul nsw i32 %add194, %159, !dbg !4965
  %160 = load i32, ptr %A_cols.addr, align 4, !dbg !4966
  %add196 = add nsw i32 %mul195, %160, !dbg !4967
  %sub197 = sub nsw i32 %add196, 1, !dbg !4968
  %arrayidx198 = getelementptr inbounds i8, ptr %157, i32 %sub197, !dbg !4961
  %161 = load i8, ptr %arrayidx198, align 1, !dbg !4969
  %conv199 = zext i8 %161 to i64, !dbg !4969
  %xor200 = xor i64 %conv199, %and193, !dbg !4969
  %conv201 = trunc i64 %xor200 to i8, !dbg !4969
  store i8 %conv201, ptr %arrayidx198, align 1, !dbg !4969
  %162 = load i64, ptr %tmp, align 8, !dbg !4970
  %shr202 = lshr i64 %162, 48, !dbg !4971
  %and203 = and i64 %shr202, 15, !dbg !4972
  %163 = load ptr, ptr %A.addr, align 4, !dbg !4973
  %164 = load i32, ptr %i86, align 4, !dbg !4974
  %add204 = add nsw i32 %164, 6, !dbg !4975
  %165 = load i32, ptr %A_cols.addr, align 4, !dbg !4976
  %mul205 = mul nsw i32 %add204, %165, !dbg !4977
  %166 = load i32, ptr %A_cols.addr, align 4, !dbg !4978
  %add206 = add nsw i32 %mul205, %166, !dbg !4979
  %sub207 = sub nsw i32 %add206, 1, !dbg !4980
  %arrayidx208 = getelementptr inbounds i8, ptr %163, i32 %sub207, !dbg !4973
  %167 = load i8, ptr %arrayidx208, align 1, !dbg !4981
  %conv209 = zext i8 %167 to i64, !dbg !4981
  %xor210 = xor i64 %conv209, %and203, !dbg !4981
  %conv211 = trunc i64 %xor210 to i8, !dbg !4981
  store i8 %conv211, ptr %arrayidx208, align 1, !dbg !4981
  %168 = load i64, ptr %tmp, align 8, !dbg !4982
  %shr212 = lshr i64 %168, 56, !dbg !4983
  %and213 = and i64 %shr212, 15, !dbg !4984
  %169 = load ptr, ptr %A.addr, align 4, !dbg !4985
  %170 = load i32, ptr %i86, align 4, !dbg !4986
  %add214 = add nsw i32 %170, 7, !dbg !4987
  %171 = load i32, ptr %A_cols.addr, align 4, !dbg !4988
  %mul215 = mul nsw i32 %add214, %171, !dbg !4989
  %172 = load i32, ptr %A_cols.addr, align 4, !dbg !4990
  %add216 = add nsw i32 %mul215, %172, !dbg !4991
  %sub217 = sub nsw i32 %add216, 1, !dbg !4992
  %arrayidx218 = getelementptr inbounds i8, ptr %169, i32 %sub217, !dbg !4985
  %173 = load i8, ptr %arrayidx218, align 1, !dbg !4993
  %conv219 = zext i8 %173 to i64, !dbg !4993
  %xor220 = xor i64 %conv219, %and213, !dbg !4993
  %conv221 = trunc i64 %xor220 to i8, !dbg !4993
  store i8 %conv221, ptr %arrayidx218, align 1, !dbg !4993
  br label %for.inc222, !dbg !4994

for.inc222:                                       ; preds = %for.body90
  %174 = load i32, ptr %i86, align 4, !dbg !4995
  %add223 = add nsw i32 %174, 8, !dbg !4995
  store i32 %add223, ptr %i86, align 4, !dbg !4995
  br label %for.cond87, !dbg !4996, !llvm.loop !4997

for.end224:                                       ; preds = %for.cond87
  %175 = load i8, ptr %finished, align 1, !dbg !4999
  %conv225 = zext i8 %175 to i32, !dbg !4999
  %176 = load i8, ptr %correct_column, align 1, !dbg !5000
  %conv226 = zext i8 %176 to i32, !dbg !5000
  %or227 = or i32 %conv225, %conv226, !dbg !5001
  %conv228 = trunc i32 %or227 to i8, !dbg !4999
  store i8 %conv228, ptr %finished, align 1, !dbg !5002
  br label %for.inc229, !dbg !5003

for.inc229:                                       ; preds = %for.end224
  %177 = load i32, ptr %col, align 4, !dbg !5004
  %inc230 = add nsw i32 %177, 1, !dbg !5004
  store i32 %inc230, ptr %col, align 4, !dbg !5004
  br label %for.cond63, !dbg !5005, !llvm.loop !5006

for.end231:                                       ; preds = %for.cond63
  br label %for.inc232, !dbg !5008

for.inc232:                                       ; preds = %for.end231
  %178 = load i32, ptr %row, align 4, !dbg !5009
  %dec = add nsw i32 %178, -1, !dbg !5009
  store i32 %dec, ptr %row, align 4, !dbg !5009
  br label %for.cond50, !dbg !5010, !llvm.loop !5011

for.end233:                                       ; preds = %for.cond50
  store i32 1, ptr %retval, align 4, !dbg !5013
  br label %return, !dbg !5013

return:                                           ; preds = %for.end233, %if.then
  %179 = load i32, ptr %retval, align 4, !dbg !5014
  ret i32 %179, !dbg !5014
}

; Function Attrs: noinline nounwind optnone
define internal void @mat_mul.21(ptr noundef %a, ptr noundef %b, ptr noundef %c, i32 noundef %colrow_ab, i32 noundef %row_a, i32 noundef %col_b) #0 !dbg !5015 {
entry:
  %a.addr = alloca ptr, align 4
  %b.addr = alloca ptr, align 4
  %c.addr = alloca ptr, align 4
  %colrow_ab.addr = alloca i32, align 4
  %row_a.addr = alloca i32, align 4
  %col_b.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 4
    #dbg_declare(ptr %a.addr, !5016, !DIExpression(), !5017)
  store ptr %b, ptr %b.addr, align 4
    #dbg_declare(ptr %b.addr, !5018, !DIExpression(), !5019)
  store ptr %c, ptr %c.addr, align 4
    #dbg_declare(ptr %c.addr, !5020, !DIExpression(), !5021)
  store i32 %colrow_ab, ptr %colrow_ab.addr, align 4
    #dbg_declare(ptr %colrow_ab.addr, !5022, !DIExpression(), !5023)
  store i32 %row_a, ptr %row_a.addr, align 4
    #dbg_declare(ptr %row_a.addr, !5024, !DIExpression(), !5025)
  store i32 %col_b, ptr %col_b.addr, align 4
    #dbg_declare(ptr %col_b.addr, !5026, !DIExpression(), !5027)
    #dbg_declare(ptr %i, !5028, !DIExpression(), !5030)
  store i32 0, ptr %i, align 4, !dbg !5030
  br label %for.cond, !dbg !5031

for.cond:                                         ; preds = %for.inc4, %entry
  %0 = load i32, ptr %i, align 4, !dbg !5032
  %1 = load i32, ptr %row_a.addr, align 4, !dbg !5034
  %cmp = icmp slt i32 %0, %1, !dbg !5035
  br i1 %cmp, label %for.body, label %for.end7, !dbg !5036

for.body:                                         ; preds = %for.cond
    #dbg_declare(ptr %j, !5037, !DIExpression(), !5040)
  store i32 0, ptr %j, align 4, !dbg !5040
  br label %for.cond1, !dbg !5041

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %j, align 4, !dbg !5042
  %3 = load i32, ptr %col_b.addr, align 4, !dbg !5044
  %cmp2 = icmp slt i32 %2, %3, !dbg !5045
  br i1 %cmp2, label %for.body3, label %for.end, !dbg !5046

for.body3:                                        ; preds = %for.cond1
  %4 = load ptr, ptr %a.addr, align 4, !dbg !5047
  %5 = load ptr, ptr %b.addr, align 4, !dbg !5049
  %6 = load i32, ptr %j, align 4, !dbg !5050
  %add.ptr = getelementptr inbounds i8, ptr %5, i32 %6, !dbg !5051
  %7 = load i32, ptr %colrow_ab.addr, align 4, !dbg !5052
  %8 = load i32, ptr %col_b.addr, align 4, !dbg !5053
  %call = call zeroext i8 @lincomb.23(ptr noundef %4, ptr noundef %add.ptr, i32 noundef %7, i32 noundef %8) #5, !dbg !5054
  %9 = load ptr, ptr %c.addr, align 4, !dbg !5055
  store i8 %call, ptr %9, align 1, !dbg !5056
  br label %for.inc, !dbg !5057

for.inc:                                          ; preds = %for.body3
  %10 = load i32, ptr %j, align 4, !dbg !5058
  %inc = add nsw i32 %10, 1, !dbg !5058
  store i32 %inc, ptr %j, align 4, !dbg !5058
  %11 = load ptr, ptr %c.addr, align 4, !dbg !5059
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %11, i32 1, !dbg !5059
  store ptr %incdec.ptr, ptr %c.addr, align 4, !dbg !5059
  br label %for.cond1, !dbg !5060, !llvm.loop !5061

for.end:                                          ; preds = %for.cond1
  br label %for.inc4, !dbg !5063

for.inc4:                                         ; preds = %for.end
  %12 = load i32, ptr %i, align 4, !dbg !5064
  %inc5 = add nsw i32 %12, 1, !dbg !5064
  store i32 %inc5, ptr %i, align 4, !dbg !5064
  %13 = load i32, ptr %colrow_ab.addr, align 4, !dbg !5065
  %14 = load ptr, ptr %a.addr, align 4, !dbg !5066
  %add.ptr6 = getelementptr inbounds i8, ptr %14, i32 %13, !dbg !5066
  store ptr %add.ptr6, ptr %a.addr, align 4, !dbg !5066
  br label %for.cond, !dbg !5067, !llvm.loop !5068

for.end7:                                         ; preds = %for.cond
  ret void, !dbg !5070
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i8 @sub_f(i8 noundef zeroext %a, i8 noundef zeroext %b) #0 !dbg !5071 {
entry:
  %a.addr = alloca i8, align 1
  %b.addr = alloca i8, align 1
  store i8 %a, ptr %a.addr, align 1
    #dbg_declare(ptr %a.addr, !5072, !DIExpression(), !5073)
  store i8 %b, ptr %b.addr, align 1
    #dbg_declare(ptr %b.addr, !5074, !DIExpression(), !5075)
  %0 = load i8, ptr %a.addr, align 1, !dbg !5076
  %conv = zext i8 %0 to i32, !dbg !5076
  %1 = load i8, ptr %b.addr, align 1, !dbg !5077
  %conv1 = zext i8 %1 to i32, !dbg !5077
  %xor = xor i32 %conv, %conv1, !dbg !5078
  %conv2 = trunc i32 %xor to i8, !dbg !5076
  ret i8 %conv2, !dbg !5079
}

; Function Attrs: noinline nounwind optnone
define internal void @EF(ptr noundef %A, i32 noundef %nrows, i32 noundef %ncols) #0 !dbg !5080 {
entry:
  %A.addr = alloca ptr, align 4
  %nrows.addr = alloca i32, align 4
  %ncols.addr = alloca i32, align 4
  %_pivot_row = alloca [13 x i64], align 32
  %_pivot_row2 = alloca [13 x i64], align 32
  %packed_A = alloca [1846 x i64], align 32
  %row_len = alloca i32, align 4
  %i = alloca i32, align 4
  %inverse = alloca i8, align 1
  %pivot_row = alloca i32, align 4
  %pivot_col = alloca i32, align 4
  %pivot_row_lower_bound = alloca i32, align 4
  %pivot_row_upper_bound = alloca i32, align 4
  %i17 = alloca i32, align 4
  %pivot = alloca i8, align 1
  %pivot_is_zero = alloca i64, align 8
  %row = alloca i32, align 4
  %is_pivot_row = alloca i64, align 8
  %below_pivot_row = alloca i64, align 8
  %j = alloca i32, align 4
  %row59 = alloca i32, align 4
  %do_copy = alloca i64, align 8
  %do_not_copy = alloca i64, align 8
  %col = alloca i32, align 4
  %row89 = alloca i32, align 4
  %below_pivot = alloca i8, align 1
  %elt_to_elim = alloca i8, align 1
  %temp = alloca [220 x i8], align 1
  %i120 = alloca i32, align 4
  %j129 = alloca i32, align 4
  store ptr %A, ptr %A.addr, align 4
    #dbg_declare(ptr %A.addr, !5084, !DIExpression(), !5085)
  store i32 %nrows, ptr %nrows.addr, align 4
    #dbg_declare(ptr %nrows.addr, !5086, !DIExpression(), !5087)
  store i32 %ncols, ptr %ncols.addr, align 4
    #dbg_declare(ptr %ncols.addr, !5088, !DIExpression(), !5089)
    #dbg_declare(ptr %_pivot_row, !5090, !DIExpression(), !5094)
    #dbg_declare(ptr %_pivot_row2, !5095, !DIExpression(), !5096)
    #dbg_declare(ptr %packed_A, !5097, !DIExpression(), !5101)
  call void @llvm.memset.p0.i32(ptr align 32 %packed_A, i8 0, i32 14768, i1 false), !dbg !5101
    #dbg_declare(ptr %row_len, !5102, !DIExpression(), !5103)
  %0 = load i32, ptr %ncols.addr, align 4, !dbg !5104
  %add = add nsw i32 %0, 15, !dbg !5105
  %div = sdiv i32 %add, 16, !dbg !5106
  store i32 %div, ptr %row_len, align 4, !dbg !5103
    #dbg_declare(ptr %i, !5107, !DIExpression(), !5109)
  store i32 0, ptr %i, align 4, !dbg !5109
  br label %for.cond, !dbg !5110

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4, !dbg !5111
  %2 = load i32, ptr %nrows.addr, align 4, !dbg !5113
  %cmp = icmp slt i32 %1, %2, !dbg !5114
  br i1 %cmp, label %for.body, label %for.end, !dbg !5115

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %A.addr, align 4, !dbg !5116
  %4 = load i32, ptr %i, align 4, !dbg !5118
  %5 = load i32, ptr %ncols.addr, align 4, !dbg !5119
  %mul = mul nsw i32 %4, %5, !dbg !5120
  %add.ptr = getelementptr inbounds i8, ptr %3, i32 %mul, !dbg !5121
  %arraydecay = getelementptr inbounds [1846 x i64], ptr %packed_A, i32 0, i32 0, !dbg !5122
  %6 = load i32, ptr %i, align 4, !dbg !5123
  %7 = load i32, ptr %row_len, align 4, !dbg !5124
  %mul1 = mul nsw i32 %6, %7, !dbg !5125
  %add.ptr2 = getelementptr inbounds i64, ptr %arraydecay, i32 %mul1, !dbg !5126
  %8 = load i32, ptr %ncols.addr, align 4, !dbg !5127
  call void @ef_pack_m_vec(ptr noundef %add.ptr, ptr noundef %add.ptr2, i32 noundef %8) #5, !dbg !5128
  br label %for.inc, !dbg !5129

for.inc:                                          ; preds = %for.body
  %9 = load i32, ptr %i, align 4, !dbg !5130
  %inc = add nsw i32 %9, 1, !dbg !5130
  store i32 %inc, ptr %i, align 4, !dbg !5130
  br label %for.cond, !dbg !5131, !llvm.loop !5132

for.end:                                          ; preds = %for.cond
    #dbg_declare(ptr %inverse, !5134, !DIExpression(), !5135)
    #dbg_declare(ptr %pivot_row, !5136, !DIExpression(), !5137)
  store i32 0, ptr %pivot_row, align 4, !dbg !5137
    #dbg_declare(ptr %pivot_col, !5138, !DIExpression(), !5140)
  store i32 0, ptr %pivot_col, align 4, !dbg !5140
  br label %for.cond3, !dbg !5141

for.cond3:                                        ; preds = %for.inc117, %for.end
  %10 = load i32, ptr %pivot_col, align 4, !dbg !5142
  %11 = load i32, ptr %ncols.addr, align 4, !dbg !5144
  %cmp4 = icmp slt i32 %10, %11, !dbg !5145
  br i1 %cmp4, label %for.body5, label %for.end119, !dbg !5146

for.body5:                                        ; preds = %for.cond3
    #dbg_declare(ptr %pivot_row_lower_bound, !5147, !DIExpression(), !5149)
  %12 = load i32, ptr %pivot_col, align 4, !dbg !5150
  %13 = load i32, ptr %nrows.addr, align 4, !dbg !5151
  %add6 = add nsw i32 %12, %13, !dbg !5152
  %14 = load i32, ptr %ncols.addr, align 4, !dbg !5153
  %sub = sub nsw i32 %add6, %14, !dbg !5154
  %cmp7 = icmp sgt i32 0, %sub, !dbg !5155
  br i1 %cmp7, label %cond.true, label %cond.false, !dbg !5155

cond.true:                                        ; preds = %for.body5
  br label %cond.end, !dbg !5155

cond.false:                                       ; preds = %for.body5
  %15 = load i32, ptr %pivot_col, align 4, !dbg !5150
  %16 = load i32, ptr %nrows.addr, align 4, !dbg !5151
  %add8 = add nsw i32 %15, %16, !dbg !5152
  %17 = load i32, ptr %ncols.addr, align 4, !dbg !5153
  %sub9 = sub nsw i32 %add8, %17, !dbg !5154
  br label %cond.end, !dbg !5155

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %sub9, %cond.false ], !dbg !5155
  store i32 %cond, ptr %pivot_row_lower_bound, align 4, !dbg !5149
    #dbg_declare(ptr %pivot_row_upper_bound, !5156, !DIExpression(), !5157)
  %18 = load i32, ptr %nrows.addr, align 4, !dbg !5158
  %sub10 = sub nsw i32 %18, 1, !dbg !5159
  %19 = load i32, ptr %pivot_col, align 4, !dbg !5160
  %cmp11 = icmp slt i32 %sub10, %19, !dbg !5161
  br i1 %cmp11, label %cond.true12, label %cond.false14, !dbg !5161

cond.true12:                                      ; preds = %cond.end
  %20 = load i32, ptr %nrows.addr, align 4, !dbg !5158
  %sub13 = sub nsw i32 %20, 1, !dbg !5159
  br label %cond.end15, !dbg !5161

cond.false14:                                     ; preds = %cond.end
  %21 = load i32, ptr %pivot_col, align 4, !dbg !5160
  br label %cond.end15, !dbg !5161

cond.end15:                                       ; preds = %cond.false14, %cond.true12
  %cond16 = phi i32 [ %sub13, %cond.true12 ], [ %21, %cond.false14 ], !dbg !5161
  store i32 %cond16, ptr %pivot_row_upper_bound, align 4, !dbg !5157
    #dbg_declare(ptr %i17, !5162, !DIExpression(), !5164)
  store i32 0, ptr %i17, align 4, !dbg !5164
  br label %for.cond18, !dbg !5165

for.cond18:                                       ; preds = %for.inc22, %cond.end15
  %22 = load i32, ptr %i17, align 4, !dbg !5166
  %23 = load i32, ptr %row_len, align 4, !dbg !5168
  %cmp19 = icmp slt i32 %22, %23, !dbg !5169
  br i1 %cmp19, label %for.body20, label %for.end24, !dbg !5170

for.body20:                                       ; preds = %for.cond18
  %24 = load i32, ptr %i17, align 4, !dbg !5171
  %arrayidx = getelementptr inbounds [13 x i64], ptr %_pivot_row, i32 0, i32 %24, !dbg !5173
  store i64 0, ptr %arrayidx, align 8, !dbg !5174
  %25 = load i32, ptr %i17, align 4, !dbg !5175
  %arrayidx21 = getelementptr inbounds [13 x i64], ptr %_pivot_row2, i32 0, i32 %25, !dbg !5176
  store i64 0, ptr %arrayidx21, align 8, !dbg !5177
  br label %for.inc22, !dbg !5178

for.inc22:                                        ; preds = %for.body20
  %26 = load i32, ptr %i17, align 4, !dbg !5179
  %inc23 = add nsw i32 %26, 1, !dbg !5179
  store i32 %inc23, ptr %i17, align 4, !dbg !5179
  br label %for.cond18, !dbg !5180, !llvm.loop !5181

for.end24:                                        ; preds = %for.cond18
    #dbg_declare(ptr %pivot, !5183, !DIExpression(), !5184)
  store i8 0, ptr %pivot, align 1, !dbg !5184
    #dbg_declare(ptr %pivot_is_zero, !5185, !DIExpression(), !5186)
  store i64 -1, ptr %pivot_is_zero, align 8, !dbg !5186
    #dbg_declare(ptr %row, !5187, !DIExpression(), !5189)
  %27 = load i32, ptr %pivot_row_lower_bound, align 4, !dbg !5190
  store i32 %27, ptr %row, align 4, !dbg !5189
  br label %for.cond25, !dbg !5191

for.cond25:                                       ; preds = %for.inc53, %for.end24
  %28 = load i32, ptr %row, align 4, !dbg !5192
  %29 = load i32, ptr %nrows.addr, align 4, !dbg !5194
  %sub26 = sub nsw i32 %29, 1, !dbg !5195
  %30 = load i32, ptr %pivot_row_upper_bound, align 4, !dbg !5196
  %add27 = add nsw i32 %30, 32, !dbg !5197
  %cmp28 = icmp slt i32 %sub26, %add27, !dbg !5198
  br i1 %cmp28, label %cond.true29, label %cond.false31, !dbg !5198

cond.true29:                                      ; preds = %for.cond25
  %31 = load i32, ptr %nrows.addr, align 4, !dbg !5194
  %sub30 = sub nsw i32 %31, 1, !dbg !5195
  br label %cond.end33, !dbg !5198

cond.false31:                                     ; preds = %for.cond25
  %32 = load i32, ptr %pivot_row_upper_bound, align 4, !dbg !5196
  %add32 = add nsw i32 %32, 32, !dbg !5197
  br label %cond.end33, !dbg !5198

cond.end33:                                       ; preds = %cond.false31, %cond.true29
  %cond34 = phi i32 [ %sub30, %cond.true29 ], [ %add32, %cond.false31 ], !dbg !5198
  %cmp35 = icmp sle i32 %28, %cond34, !dbg !5199
  br i1 %cmp35, label %for.body36, label %for.end55, !dbg !5200

for.body36:                                       ; preds = %cond.end33
    #dbg_declare(ptr %is_pivot_row, !5201, !DIExpression(), !5203)
  %33 = load i32, ptr %row, align 4, !dbg !5204
  %34 = load i32, ptr %pivot_row, align 4, !dbg !5205
  %call = call i64 @ct_compare_64(i32 noundef %33, i32 noundef %34) #5, !dbg !5206
  %not = xor i64 %call, -1, !dbg !5207
  store i64 %not, ptr %is_pivot_row, align 8, !dbg !5203
    #dbg_declare(ptr %below_pivot_row, !5208, !DIExpression(), !5209)
  %35 = load i32, ptr %row, align 4, !dbg !5210
  %36 = load i32, ptr %pivot_row, align 4, !dbg !5211
  %call37 = call i64 @ct_64_is_greater_than(i32 noundef %35, i32 noundef %36) #5, !dbg !5212
  store i64 %call37, ptr %below_pivot_row, align 8, !dbg !5209
    #dbg_declare(ptr %j, !5213, !DIExpression(), !5215)
  store i32 0, ptr %j, align 4, !dbg !5215
  br label %for.cond38, !dbg !5216

for.cond38:                                       ; preds = %for.inc46, %for.body36
  %37 = load i32, ptr %j, align 4, !dbg !5217
  %38 = load i32, ptr %row_len, align 4, !dbg !5219
  %cmp39 = icmp slt i32 %37, %38, !dbg !5220
  br i1 %cmp39, label %for.body40, label %for.end48, !dbg !5221

for.body40:                                       ; preds = %for.cond38
  %39 = load i64, ptr %is_pivot_row, align 8, !dbg !5222
  %40 = load i64, ptr %below_pivot_row, align 8, !dbg !5224
  %41 = load i64, ptr %pivot_is_zero, align 8, !dbg !5225
  %and = and i64 %40, %41, !dbg !5226
  %or = or i64 %39, %and, !dbg !5227
  %42 = load i32, ptr %row, align 4, !dbg !5228
  %43 = load i32, ptr %row_len, align 4, !dbg !5229
  %mul41 = mul nsw i32 %42, %43, !dbg !5230
  %44 = load i32, ptr %j, align 4, !dbg !5231
  %add42 = add nsw i32 %mul41, %44, !dbg !5232
  %arrayidx43 = getelementptr inbounds [1846 x i64], ptr %packed_A, i32 0, i32 %add42, !dbg !5233
  %45 = load i64, ptr %arrayidx43, align 8, !dbg !5233
  %and44 = and i64 %or, %45, !dbg !5234
  %46 = load i32, ptr %j, align 4, !dbg !5235
  %arrayidx45 = getelementptr inbounds [13 x i64], ptr %_pivot_row, i32 0, i32 %46, !dbg !5236
  %47 = load i64, ptr %arrayidx45, align 8, !dbg !5237
  %xor = xor i64 %47, %and44, !dbg !5237
  store i64 %xor, ptr %arrayidx45, align 8, !dbg !5237
  br label %for.inc46, !dbg !5238

for.inc46:                                        ; preds = %for.body40
  %48 = load i32, ptr %j, align 4, !dbg !5239
  %inc47 = add nsw i32 %48, 1, !dbg !5239
  store i32 %inc47, ptr %j, align 4, !dbg !5239
  br label %for.cond38, !dbg !5240, !llvm.loop !5241

for.end48:                                        ; preds = %for.cond38
  %arraydecay49 = getelementptr inbounds [13 x i64], ptr %_pivot_row, i32 0, i32 0, !dbg !5243
  %49 = load i32, ptr %pivot_col, align 4, !dbg !5244
  %call50 = call zeroext i8 @m_extract_element(ptr noundef %arraydecay49, i32 noundef %49) #5, !dbg !5245
  store i8 %call50, ptr %pivot, align 1, !dbg !5246
  %50 = load i8, ptr %pivot, align 1, !dbg !5247
  %conv = zext i8 %50 to i32, !dbg !5248
  %call51 = call i64 @ct_compare_64(i32 noundef %conv, i32 noundef 0) #5, !dbg !5249
  %not52 = xor i64 %call51, -1, !dbg !5250
  store i64 %not52, ptr %pivot_is_zero, align 8, !dbg !5251
  br label %for.inc53, !dbg !5252

for.inc53:                                        ; preds = %for.end48
  %51 = load i32, ptr %row, align 4, !dbg !5253
  %inc54 = add nsw i32 %51, 1, !dbg !5253
  store i32 %inc54, ptr %row, align 4, !dbg !5253
  br label %for.cond25, !dbg !5254, !llvm.loop !5255

for.end55:                                        ; preds = %cond.end33
  %52 = load i8, ptr %pivot, align 1, !dbg !5257
  %call56 = call zeroext i8 @inverse_f(i8 noundef zeroext %52) #5, !dbg !5258
  store i8 %call56, ptr %inverse, align 1, !dbg !5259
  %53 = load i32, ptr %row_len, align 4, !dbg !5260
  %arraydecay57 = getelementptr inbounds [13 x i64], ptr %_pivot_row, i32 0, i32 0, !dbg !5261
  %54 = load i8, ptr %inverse, align 1, !dbg !5262
  %arraydecay58 = getelementptr inbounds [13 x i64], ptr %_pivot_row2, i32 0, i32 0, !dbg !5263
  call void @vec_mul_add_u64(i32 noundef %53, ptr noundef %arraydecay57, i8 noundef zeroext %54, ptr noundef %arraydecay58) #5, !dbg !5264
    #dbg_declare(ptr %row59, !5265, !DIExpression(), !5267)
  %55 = load i32, ptr %pivot_row_lower_bound, align 4, !dbg !5268
  store i32 %55, ptr %row59, align 4, !dbg !5267
  br label %for.cond60, !dbg !5269

for.cond60:                                       ; preds = %for.inc86, %for.end55
  %56 = load i32, ptr %row59, align 4, !dbg !5270
  %57 = load i32, ptr %pivot_row_upper_bound, align 4, !dbg !5272
  %cmp61 = icmp sle i32 %56, %57, !dbg !5273
  br i1 %cmp61, label %for.body63, label %for.end88, !dbg !5274

for.body63:                                       ; preds = %for.cond60
    #dbg_declare(ptr %do_copy, !5275, !DIExpression(), !5277)
  %58 = load i32, ptr %row59, align 4, !dbg !5278
  %59 = load i32, ptr %pivot_row, align 4, !dbg !5279
  %call64 = call i64 @ct_compare_64(i32 noundef %58, i32 noundef %59) #5, !dbg !5280
  %not65 = xor i64 %call64, -1, !dbg !5281
  %60 = load i64, ptr %pivot_is_zero, align 8, !dbg !5282
  %not66 = xor i64 %60, -1, !dbg !5283
  %and67 = and i64 %not65, %not66, !dbg !5284
  store i64 %and67, ptr %do_copy, align 8, !dbg !5277
    #dbg_declare(ptr %do_not_copy, !5285, !DIExpression(), !5286)
  %61 = load i64, ptr %do_copy, align 8, !dbg !5287
  %not68 = xor i64 %61, -1, !dbg !5288
  store i64 %not68, ptr %do_not_copy, align 8, !dbg !5286
    #dbg_declare(ptr %col, !5289, !DIExpression(), !5291)
  store i32 0, ptr %col, align 4, !dbg !5291
  br label %for.cond69, !dbg !5292

for.cond69:                                       ; preds = %for.inc83, %for.body63
  %62 = load i32, ptr %col, align 4, !dbg !5293
  %63 = load i32, ptr %row_len, align 4, !dbg !5295
  %cmp70 = icmp slt i32 %62, %63, !dbg !5296
  br i1 %cmp70, label %for.body72, label %for.end85, !dbg !5297

for.body72:                                       ; preds = %for.cond69
  %64 = load i64, ptr %do_not_copy, align 8, !dbg !5298
  %65 = load i32, ptr %row59, align 4, !dbg !5300
  %66 = load i32, ptr %row_len, align 4, !dbg !5301
  %mul73 = mul nsw i32 %65, %66, !dbg !5302
  %67 = load i32, ptr %col, align 4, !dbg !5303
  %add74 = add nsw i32 %mul73, %67, !dbg !5304
  %arrayidx75 = getelementptr inbounds [1846 x i64], ptr %packed_A, i32 0, i32 %add74, !dbg !5305
  %68 = load i64, ptr %arrayidx75, align 8, !dbg !5305
  %and76 = and i64 %64, %68, !dbg !5306
  %69 = load i64, ptr %do_copy, align 8, !dbg !5307
  %70 = load i32, ptr %col, align 4, !dbg !5308
  %arrayidx77 = getelementptr inbounds [13 x i64], ptr %_pivot_row2, i32 0, i32 %70, !dbg !5309
  %71 = load i64, ptr %arrayidx77, align 8, !dbg !5309
  %and78 = and i64 %69, %71, !dbg !5310
  %add79 = add i64 %and76, %and78, !dbg !5311
  %72 = load i32, ptr %row59, align 4, !dbg !5312
  %73 = load i32, ptr %row_len, align 4, !dbg !5313
  %mul80 = mul nsw i32 %72, %73, !dbg !5314
  %74 = load i32, ptr %col, align 4, !dbg !5315
  %add81 = add nsw i32 %mul80, %74, !dbg !5316
  %arrayidx82 = getelementptr inbounds [1846 x i64], ptr %packed_A, i32 0, i32 %add81, !dbg !5317
  store i64 %add79, ptr %arrayidx82, align 8, !dbg !5318
  br label %for.inc83, !dbg !5319

for.inc83:                                        ; preds = %for.body72
  %75 = load i32, ptr %col, align 4, !dbg !5320
  %inc84 = add nsw i32 %75, 1, !dbg !5320
  store i32 %inc84, ptr %col, align 4, !dbg !5320
  br label %for.cond69, !dbg !5321, !llvm.loop !5322

for.end85:                                        ; preds = %for.cond69
  br label %for.inc86, !dbg !5324

for.inc86:                                        ; preds = %for.end85
  %76 = load i32, ptr %row59, align 4, !dbg !5325
  %inc87 = add nsw i32 %76, 1, !dbg !5325
  store i32 %inc87, ptr %row59, align 4, !dbg !5325
  br label %for.cond60, !dbg !5326, !llvm.loop !5327

for.end88:                                        ; preds = %for.cond60
    #dbg_declare(ptr %row89, !5329, !DIExpression(), !5331)
  %77 = load i32, ptr %pivot_row_lower_bound, align 4, !dbg !5332
  store i32 %77, ptr %row89, align 4, !dbg !5331
  br label %for.cond90, !dbg !5333

for.cond90:                                       ; preds = %for.inc109, %for.end88
  %78 = load i32, ptr %row89, align 4, !dbg !5334
  %79 = load i32, ptr %nrows.addr, align 4, !dbg !5336
  %cmp91 = icmp slt i32 %78, %79, !dbg !5337
  br i1 %cmp91, label %for.body93, label %for.end111, !dbg !5338

for.body93:                                       ; preds = %for.cond90
    #dbg_declare(ptr %below_pivot, !5339, !DIExpression(), !5341)
  %80 = load i32, ptr %row89, align 4, !dbg !5342
  %81 = load i32, ptr %pivot_row, align 4, !dbg !5343
  %cmp94 = icmp sgt i32 %80, %81, !dbg !5344
  %conv95 = zext i1 %cmp94 to i32, !dbg !5344
  %conv96 = trunc i32 %conv95 to i8, !dbg !5345
  store i8 %conv96, ptr %below_pivot, align 1, !dbg !5341
    #dbg_declare(ptr %elt_to_elim, !5346, !DIExpression(), !5347)
  %arraydecay97 = getelementptr inbounds [1846 x i64], ptr %packed_A, i32 0, i32 0, !dbg !5348
  %82 = load i32, ptr %row89, align 4, !dbg !5349
  %83 = load i32, ptr %row_len, align 4, !dbg !5350
  %mul98 = mul nsw i32 %82, %83, !dbg !5351
  %add.ptr99 = getelementptr inbounds i64, ptr %arraydecay97, i32 %mul98, !dbg !5352
  %84 = load i32, ptr %pivot_col, align 4, !dbg !5353
  %call100 = call zeroext i8 @m_extract_element(ptr noundef %add.ptr99, i32 noundef %84) #5, !dbg !5354
  store i8 %call100, ptr %elt_to_elim, align 1, !dbg !5347
  %85 = load i32, ptr %row_len, align 4, !dbg !5355
  %arraydecay101 = getelementptr inbounds [13 x i64], ptr %_pivot_row2, i32 0, i32 0, !dbg !5356
  %86 = load i8, ptr %below_pivot, align 1, !dbg !5357
  %conv102 = zext i8 %86 to i32, !dbg !5357
  %87 = load i8, ptr %elt_to_elim, align 1, !dbg !5358
  %conv103 = zext i8 %87 to i32, !dbg !5358
  %mul104 = mul nsw i32 %conv102, %conv103, !dbg !5359
  %conv105 = trunc i32 %mul104 to i8, !dbg !5357
  %arraydecay106 = getelementptr inbounds [1846 x i64], ptr %packed_A, i32 0, i32 0, !dbg !5360
  %88 = load i32, ptr %row89, align 4, !dbg !5361
  %89 = load i32, ptr %row_len, align 4, !dbg !5362
  %mul107 = mul nsw i32 %88, %89, !dbg !5363
  %add.ptr108 = getelementptr inbounds i64, ptr %arraydecay106, i32 %mul107, !dbg !5364
  call void @vec_mul_add_u64(i32 noundef %85, ptr noundef %arraydecay101, i8 noundef zeroext %conv105, ptr noundef %add.ptr108) #5, !dbg !5365
  br label %for.inc109, !dbg !5366

for.inc109:                                       ; preds = %for.body93
  %90 = load i32, ptr %row89, align 4, !dbg !5367
  %inc110 = add nsw i32 %90, 1, !dbg !5367
  store i32 %inc110, ptr %row89, align 4, !dbg !5367
  br label %for.cond90, !dbg !5368, !llvm.loop !5369

for.end111:                                       ; preds = %for.cond90
  %91 = load i64, ptr %pivot_is_zero, align 8, !dbg !5371
  %not112 = xor i64 %91, -1, !dbg !5372
  %sub113 = sub nsw i64 0, %not112, !dbg !5373
  %92 = load i32, ptr %pivot_row, align 4, !dbg !5374
  %conv114 = sext i32 %92 to i64, !dbg !5374
  %add115 = add nsw i64 %conv114, %sub113, !dbg !5374
  %conv116 = trunc i64 %add115 to i32, !dbg !5374
  store i32 %conv116, ptr %pivot_row, align 4, !dbg !5374
  br label %for.inc117, !dbg !5375

for.inc117:                                       ; preds = %for.end111
  %93 = load i32, ptr %pivot_col, align 4, !dbg !5376
  %inc118 = add nsw i32 %93, 1, !dbg !5376
  store i32 %inc118, ptr %pivot_col, align 4, !dbg !5376
  br label %for.cond3, !dbg !5377, !llvm.loop !5378

for.end119:                                       ; preds = %for.cond3
    #dbg_declare(ptr %temp, !5380, !DIExpression(), !5384)
    #dbg_declare(ptr %i120, !5385, !DIExpression(), !5387)
  store i32 0, ptr %i120, align 4, !dbg !5387
  br label %for.cond121, !dbg !5388

for.cond121:                                      ; preds = %for.inc141, %for.end119
  %94 = load i32, ptr %i120, align 4, !dbg !5389
  %95 = load i32, ptr %nrows.addr, align 4, !dbg !5391
  %cmp122 = icmp slt i32 %94, %95, !dbg !5392
  br i1 %cmp122, label %for.body124, label %for.end143, !dbg !5393

for.body124:                                      ; preds = %for.cond121
  %96 = load i32, ptr %row_len, align 4, !dbg !5394
  %arraydecay125 = getelementptr inbounds [1846 x i64], ptr %packed_A, i32 0, i32 0, !dbg !5396
  %97 = load i32, ptr %i120, align 4, !dbg !5397
  %98 = load i32, ptr %row_len, align 4, !dbg !5398
  %mul126 = mul nsw i32 %97, %98, !dbg !5399
  %add.ptr127 = getelementptr inbounds i64, ptr %arraydecay125, i32 %mul126, !dbg !5400
  %arraydecay128 = getelementptr inbounds [220 x i8], ptr %temp, i32 0, i32 0, !dbg !5401
  call void @ef_unpack_m_vec(i32 noundef %96, ptr noundef %add.ptr127, ptr noundef %arraydecay128) #5, !dbg !5402
    #dbg_declare(ptr %j129, !5403, !DIExpression(), !5405)
  store i32 0, ptr %j129, align 4, !dbg !5405
  br label %for.cond130, !dbg !5406

for.cond130:                                      ; preds = %for.inc138, %for.body124
  %99 = load i32, ptr %j129, align 4, !dbg !5407
  %100 = load i32, ptr %ncols.addr, align 4, !dbg !5409
  %cmp131 = icmp slt i32 %99, %100, !dbg !5410
  br i1 %cmp131, label %for.body133, label %for.end140, !dbg !5411

for.body133:                                      ; preds = %for.cond130
  %101 = load i32, ptr %j129, align 4, !dbg !5412
  %arrayidx134 = getelementptr inbounds [220 x i8], ptr %temp, i32 0, i32 %101, !dbg !5414
  %102 = load i8, ptr %arrayidx134, align 1, !dbg !5414
  %103 = load ptr, ptr %A.addr, align 4, !dbg !5415
  %104 = load i32, ptr %i120, align 4, !dbg !5416
  %105 = load i32, ptr %ncols.addr, align 4, !dbg !5417
  %mul135 = mul nsw i32 %104, %105, !dbg !5418
  %106 = load i32, ptr %j129, align 4, !dbg !5419
  %add136 = add nsw i32 %mul135, %106, !dbg !5420
  %arrayidx137 = getelementptr inbounds i8, ptr %103, i32 %add136, !dbg !5415
  store i8 %102, ptr %arrayidx137, align 1, !dbg !5421
  br label %for.inc138, !dbg !5422

for.inc138:                                       ; preds = %for.body133
  %107 = load i32, ptr %j129, align 4, !dbg !5423
  %inc139 = add nsw i32 %107, 1, !dbg !5423
  store i32 %inc139, ptr %j129, align 4, !dbg !5423
  br label %for.cond130, !dbg !5424, !llvm.loop !5425

for.end140:                                       ; preds = %for.cond130
  br label %for.inc141, !dbg !5427

for.inc141:                                       ; preds = %for.end140
  %108 = load i32, ptr %i120, align 4, !dbg !5428
  %inc142 = add nsw i32 %108, 1, !dbg !5428
  store i32 %inc142, ptr %i120, align 4, !dbg !5428
  br label %for.cond121, !dbg !5429, !llvm.loop !5430

for.end143:                                       ; preds = %for.cond121
  %arraydecay144 = getelementptr inbounds [220 x i8], ptr %temp, i32 0, i32 0, !dbg !5432
  call void @mayo_secure_clear(ptr noundef %arraydecay144, i32 noundef 220) #5, !dbg !5433
  %arraydecay145 = getelementptr inbounds [13 x i64], ptr %_pivot_row, i32 0, i32 0, !dbg !5434
  call void @mayo_secure_clear(ptr noundef %arraydecay145, i32 noundef 104) #5, !dbg !5435
  %arraydecay146 = getelementptr inbounds [13 x i64], ptr %_pivot_row2, i32 0, i32 0, !dbg !5436
  call void @mayo_secure_clear(ptr noundef %arraydecay146, i32 noundef 104) #5, !dbg !5437
  %arraydecay147 = getelementptr inbounds [1846 x i64], ptr %packed_A, i32 0, i32 0, !dbg !5438
  call void @mayo_secure_clear(ptr noundef %arraydecay147, i32 noundef 14768) #5, !dbg !5439
  ret void, !dbg !5440
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i8 @ct_compare_8(i8 noundef zeroext %a, i8 noundef zeroext %b) #0 !dbg !5441 {
entry:
  %a.addr = alloca i8, align 1
  %b.addr = alloca i8, align 1
  store i8 %a, ptr %a.addr, align 1
    #dbg_declare(ptr %a.addr, !5443, !DIExpression(), !5444)
  store i8 %b, ptr %b.addr, align 1
    #dbg_declare(ptr %b.addr, !5445, !DIExpression(), !5446)
  %0 = load i8, ptr %a.addr, align 1, !dbg !5447
  %conv = zext i8 %0 to i32, !dbg !5447
  %1 = load i8, ptr %b.addr, align 1, !dbg !5448
  %conv1 = zext i8 %1 to i32, !dbg !5448
  %xor = xor i32 %conv, %conv1, !dbg !5449
  %sub = sub nsw i32 0, %xor, !dbg !5450
  %shr = ashr i32 %sub, 31, !dbg !5451
  %conv2 = trunc i32 %shr to i8, !dbg !5452
  %conv3 = sext i8 %conv2 to i32, !dbg !5452
  %2 = load volatile i8, ptr @unsigned_char_blocker, align 1, !dbg !5453
  %conv4 = zext i8 %2 to i32, !dbg !5453
  %xor5 = xor i32 %conv3, %conv4, !dbg !5454
  %conv6 = trunc i32 %xor5 to i8, !dbg !5455
  ret i8 %conv6, !dbg !5456
}

; Function Attrs: noinline nounwind optnone
define internal i64 @mul_fx8(i8 noundef zeroext %a, i64 noundef %b) #0 !dbg !5457 {
entry:
  %a.addr = alloca i8, align 1
  %b.addr = alloca i64, align 8
  %p = alloca i64, align 8
  %top_p = alloca i64, align 8
  %out = alloca i64, align 8
  store i8 %a, ptr %a.addr, align 1
    #dbg_declare(ptr %a.addr, !5460, !DIExpression(), !5461)
  store i64 %b, ptr %b.addr, align 8
    #dbg_declare(ptr %b.addr, !5462, !DIExpression(), !5463)
    #dbg_declare(ptr %p, !5464, !DIExpression(), !5465)
  %0 = load i8, ptr %a.addr, align 1, !dbg !5466
  %conv = zext i8 %0 to i32, !dbg !5466
  %and = and i32 %conv, 1, !dbg !5467
  %conv1 = sext i32 %and to i64, !dbg !5468
  %1 = load i64, ptr %b.addr, align 8, !dbg !5469
  %mul = mul i64 %conv1, %1, !dbg !5470
  store i64 %mul, ptr %p, align 8, !dbg !5471
  %2 = load i8, ptr %a.addr, align 1, !dbg !5472
  %conv2 = zext i8 %2 to i32, !dbg !5472
  %and3 = and i32 %conv2, 2, !dbg !5473
  %conv4 = sext i32 %and3 to i64, !dbg !5474
  %3 = load i64, ptr %b.addr, align 8, !dbg !5475
  %mul5 = mul i64 %conv4, %3, !dbg !5476
  %4 = load i64, ptr %p, align 8, !dbg !5477
  %xor = xor i64 %4, %mul5, !dbg !5477
  store i64 %xor, ptr %p, align 8, !dbg !5477
  %5 = load i8, ptr %a.addr, align 1, !dbg !5478
  %conv6 = zext i8 %5 to i32, !dbg !5478
  %and7 = and i32 %conv6, 4, !dbg !5479
  %conv8 = sext i32 %and7 to i64, !dbg !5480
  %6 = load i64, ptr %b.addr, align 8, !dbg !5481
  %mul9 = mul i64 %conv8, %6, !dbg !5482
  %7 = load i64, ptr %p, align 8, !dbg !5483
  %xor10 = xor i64 %7, %mul9, !dbg !5483
  store i64 %xor10, ptr %p, align 8, !dbg !5483
  %8 = load i8, ptr %a.addr, align 1, !dbg !5484
  %conv11 = zext i8 %8 to i32, !dbg !5484
  %and12 = and i32 %conv11, 8, !dbg !5485
  %conv13 = sext i32 %and12 to i64, !dbg !5486
  %9 = load i64, ptr %b.addr, align 8, !dbg !5487
  %mul14 = mul i64 %conv13, %9, !dbg !5488
  %10 = load i64, ptr %p, align 8, !dbg !5489
  %xor15 = xor i64 %10, %mul14, !dbg !5489
  store i64 %xor15, ptr %p, align 8, !dbg !5489
    #dbg_declare(ptr %top_p, !5490, !DIExpression(), !5491)
  %11 = load i64, ptr %p, align 8, !dbg !5492
  %and16 = and i64 %11, -1085102592571150096, !dbg !5493
  store i64 %and16, ptr %top_p, align 8, !dbg !5491
    #dbg_declare(ptr %out, !5494, !DIExpression(), !5495)
  %12 = load i64, ptr %p, align 8, !dbg !5496
  %13 = load i64, ptr %top_p, align 8, !dbg !5497
  %shr = lshr i64 %13, 4, !dbg !5498
  %xor17 = xor i64 %12, %shr, !dbg !5499
  %14 = load i64, ptr %top_p, align 8, !dbg !5500
  %shr18 = lshr i64 %14, 3, !dbg !5501
  %xor19 = xor i64 %xor17, %shr18, !dbg !5502
  %and20 = and i64 %xor19, 1085102592571150095, !dbg !5503
  store i64 %and20, ptr %out, align 8, !dbg !5495
  %15 = load i64, ptr %out, align 8, !dbg !5504
  ret i64 %15, !dbg !5505
}

; Function Attrs: noinline nounwind optnone
define internal void @ef_pack_m_vec(ptr noundef %in, ptr noundef %out, i32 noundef %ncols) #0 !dbg !5506 {
entry:
  %in.addr = alloca ptr, align 4
  %out.addr = alloca ptr, align 4
  %ncols.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %out8 = alloca ptr, align 4
  store ptr %in, ptr %in.addr, align 4
    #dbg_declare(ptr %in.addr, !5509, !DIExpression(), !5510)
  store ptr %out, ptr %out.addr, align 4
    #dbg_declare(ptr %out.addr, !5511, !DIExpression(), !5512)
  store i32 %ncols, ptr %ncols.addr, align 4
    #dbg_declare(ptr %ncols.addr, !5513, !DIExpression(), !5514)
    #dbg_declare(ptr %i, !5515, !DIExpression(), !5516)
    #dbg_declare(ptr %out8, !5517, !DIExpression(), !5518)
  %0 = load ptr, ptr %out.addr, align 4, !dbg !5519
  store ptr %0, ptr %out8, align 4, !dbg !5518
  store i32 0, ptr %i, align 4, !dbg !5520
  br label %for.cond, !dbg !5522

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4, !dbg !5523
  %add = add nsw i32 %1, 1, !dbg !5525
  %2 = load i32, ptr %ncols.addr, align 4, !dbg !5526
  %cmp = icmp slt i32 %add, %2, !dbg !5527
  br i1 %cmp, label %for.body, label %for.end, !dbg !5528

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %in.addr, align 4, !dbg !5529
  %4 = load i32, ptr %i, align 4, !dbg !5531
  %add1 = add nsw i32 %4, 0, !dbg !5532
  %arrayidx = getelementptr inbounds i8, ptr %3, i32 %add1, !dbg !5529
  %5 = load i8, ptr %arrayidx, align 1, !dbg !5529
  %conv = zext i8 %5 to i32, !dbg !5529
  %shl = shl i32 %conv, 0, !dbg !5533
  %6 = load ptr, ptr %in.addr, align 4, !dbg !5534
  %7 = load i32, ptr %i, align 4, !dbg !5535
  %add2 = add nsw i32 %7, 1, !dbg !5536
  %arrayidx3 = getelementptr inbounds i8, ptr %6, i32 %add2, !dbg !5534
  %8 = load i8, ptr %arrayidx3, align 1, !dbg !5534
  %conv4 = zext i8 %8 to i32, !dbg !5534
  %shl5 = shl i32 %conv4, 4, !dbg !5537
  %or = or i32 %shl, %shl5, !dbg !5538
  %conv6 = trunc i32 %or to i8, !dbg !5539
  %9 = load ptr, ptr %out8, align 4, !dbg !5540
  %10 = load i32, ptr %i, align 4, !dbg !5541
  %div = sdiv i32 %10, 2, !dbg !5542
  %arrayidx7 = getelementptr inbounds i8, ptr %9, i32 %div, !dbg !5540
  store i8 %conv6, ptr %arrayidx7, align 1, !dbg !5543
  br label %for.inc, !dbg !5544

for.inc:                                          ; preds = %for.body
  %11 = load i32, ptr %i, align 4, !dbg !5545
  %add8 = add nsw i32 %11, 2, !dbg !5545
  store i32 %add8, ptr %i, align 4, !dbg !5545
  br label %for.cond, !dbg !5546, !llvm.loop !5547

for.end:                                          ; preds = %for.cond
  %12 = load i32, ptr %ncols.addr, align 4, !dbg !5549
  %rem = srem i32 %12, 2, !dbg !5551
  %cmp9 = icmp eq i32 %rem, 1, !dbg !5552
  br i1 %cmp9, label %if.then, label %if.end, !dbg !5552

if.then:                                          ; preds = %for.end
  %13 = load ptr, ptr %in.addr, align 4, !dbg !5553
  %14 = load i32, ptr %i, align 4, !dbg !5555
  %add11 = add nsw i32 %14, 0, !dbg !5556
  %arrayidx12 = getelementptr inbounds i8, ptr %13, i32 %add11, !dbg !5553
  %15 = load i8, ptr %arrayidx12, align 1, !dbg !5553
  %conv13 = zext i8 %15 to i32, !dbg !5553
  %shl14 = shl i32 %conv13, 0, !dbg !5557
  %conv15 = trunc i32 %shl14 to i8, !dbg !5558
  %16 = load ptr, ptr %out8, align 4, !dbg !5559
  %17 = load i32, ptr %i, align 4, !dbg !5560
  %div16 = sdiv i32 %17, 2, !dbg !5561
  %arrayidx17 = getelementptr inbounds i8, ptr %16, i32 %div16, !dbg !5559
  store i8 %conv15, ptr %arrayidx17, align 1, !dbg !5562
  br label %if.end, !dbg !5563

if.end:                                           ; preds = %if.then, %for.end
  ret void, !dbg !5564
}

; Function Attrs: noinline nounwind optnone
define internal i64 @ct_compare_64(i32 noundef %a, i32 noundef %b) #0 !dbg !5565 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4
    #dbg_declare(ptr %a.addr, !5568, !DIExpression(), !5569)
  store i32 %b, ptr %b.addr, align 4
    #dbg_declare(ptr %b.addr, !5570, !DIExpression(), !5571)
  %0 = load i32, ptr %a.addr, align 4, !dbg !5572
  %1 = load i32, ptr %b.addr, align 4, !dbg !5573
  %xor = xor i32 %0, %1, !dbg !5574
  %conv = sext i32 %xor to i64, !dbg !5575
  %sub = sub nsw i64 0, %conv, !dbg !5576
  %shr = ashr i64 %sub, 63, !dbg !5577
  %2 = load volatile i64, ptr @uint64_t_blocker, align 8, !dbg !5578
  %xor1 = xor i64 %shr, %2, !dbg !5579
  ret i64 %xor1, !dbg !5580
}

; Function Attrs: noinline nounwind optnone
define internal i64 @ct_64_is_greater_than(i32 noundef %a, i32 noundef %b) #0 !dbg !5581 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %diff = alloca i64, align 8
  store i32 %a, ptr %a.addr, align 4
    #dbg_declare(ptr %a.addr, !5582, !DIExpression(), !5583)
  store i32 %b, ptr %b.addr, align 4
    #dbg_declare(ptr %b.addr, !5584, !DIExpression(), !5585)
    #dbg_declare(ptr %diff, !5586, !DIExpression(), !5587)
  %0 = load i32, ptr %b.addr, align 4, !dbg !5588
  %conv = sext i32 %0 to i64, !dbg !5589
  %1 = load i32, ptr %a.addr, align 4, !dbg !5590
  %conv1 = sext i32 %1 to i64, !dbg !5591
  %sub = sub nsw i64 %conv, %conv1, !dbg !5592
  store i64 %sub, ptr %diff, align 8, !dbg !5587
  %2 = load i64, ptr %diff, align 8, !dbg !5593
  %shr = ashr i64 %2, 63, !dbg !5594
  %3 = load volatile i64, ptr @uint64_t_blocker, align 8, !dbg !5595
  %xor = xor i64 %shr, %3, !dbg !5596
  ret i64 %xor, !dbg !5597
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i8 @m_extract_element(ptr noundef %in, i32 noundef %index) #0 !dbg !5598 {
entry:
  %in.addr = alloca ptr, align 4
  %index.addr = alloca i32, align 4
  %leg = alloca i32, align 4
  %offset = alloca i32, align 4
  store ptr %in, ptr %in.addr, align 4
    #dbg_declare(ptr %in.addr, !5601, !DIExpression(), !5602)
  store i32 %index, ptr %index.addr, align 4
    #dbg_declare(ptr %index.addr, !5603, !DIExpression(), !5604)
    #dbg_declare(ptr %leg, !5605, !DIExpression(), !5606)
  %0 = load i32, ptr %index.addr, align 4, !dbg !5607
  %div = sdiv i32 %0, 16, !dbg !5608
  store i32 %div, ptr %leg, align 4, !dbg !5606
    #dbg_declare(ptr %offset, !5609, !DIExpression(), !5610)
  %1 = load i32, ptr %index.addr, align 4, !dbg !5611
  %rem = srem i32 %1, 16, !dbg !5612
  store i32 %rem, ptr %offset, align 4, !dbg !5610
  %2 = load ptr, ptr %in.addr, align 4, !dbg !5613
  %3 = load i32, ptr %leg, align 4, !dbg !5614
  %arrayidx = getelementptr inbounds i64, ptr %2, i32 %3, !dbg !5613
  %4 = load i64, ptr %arrayidx, align 8, !dbg !5613
  %5 = load i32, ptr %offset, align 4, !dbg !5615
  %mul = mul nsw i32 %5, 4, !dbg !5616
  %sh_prom = zext i32 %mul to i64, !dbg !5617
  %shr = lshr i64 %4, %sh_prom, !dbg !5617
  %and = and i64 %shr, 15, !dbg !5618
  %conv = trunc i64 %and to i8, !dbg !5619
  ret i8 %conv, !dbg !5620
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i8 @inverse_f(i8 noundef zeroext %a) #0 !dbg !5621 {
entry:
  %a.addr = alloca i8, align 1
  %a2 = alloca i8, align 1
  %a4 = alloca i8, align 1
  %a8 = alloca i8, align 1
  %a6 = alloca i8, align 1
  %a14 = alloca i8, align 1
  store i8 %a, ptr %a.addr, align 1
    #dbg_declare(ptr %a.addr, !5624, !DIExpression(), !5625)
    #dbg_declare(ptr %a2, !5626, !DIExpression(), !5627)
  %0 = load i8, ptr %a.addr, align 1, !dbg !5628
  %1 = load i8, ptr %a.addr, align 1, !dbg !5629
  %call = call zeroext i8 @mul_f.22(i8 noundef zeroext %0, i8 noundef zeroext %1) #5, !dbg !5630
  store i8 %call, ptr %a2, align 1, !dbg !5627
    #dbg_declare(ptr %a4, !5631, !DIExpression(), !5632)
  %2 = load i8, ptr %a2, align 1, !dbg !5633
  %3 = load i8, ptr %a2, align 1, !dbg !5634
  %call1 = call zeroext i8 @mul_f.22(i8 noundef zeroext %2, i8 noundef zeroext %3) #5, !dbg !5635
  store i8 %call1, ptr %a4, align 1, !dbg !5632
    #dbg_declare(ptr %a8, !5636, !DIExpression(), !5637)
  %4 = load i8, ptr %a4, align 1, !dbg !5638
  %5 = load i8, ptr %a4, align 1, !dbg !5639
  %call2 = call zeroext i8 @mul_f.22(i8 noundef zeroext %4, i8 noundef zeroext %5) #5, !dbg !5640
  store i8 %call2, ptr %a8, align 1, !dbg !5637
    #dbg_declare(ptr %a6, !5641, !DIExpression(), !5642)
  %6 = load i8, ptr %a2, align 1, !dbg !5643
  %7 = load i8, ptr %a4, align 1, !dbg !5644
  %call3 = call zeroext i8 @mul_f.22(i8 noundef zeroext %6, i8 noundef zeroext %7) #5, !dbg !5645
  store i8 %call3, ptr %a6, align 1, !dbg !5642
    #dbg_declare(ptr %a14, !5646, !DIExpression(), !5647)
  %8 = load i8, ptr %a8, align 1, !dbg !5648
  %9 = load i8, ptr %a6, align 1, !dbg !5649
  %call4 = call zeroext i8 @mul_f.22(i8 noundef zeroext %8, i8 noundef zeroext %9) #5, !dbg !5650
  store i8 %call4, ptr %a14, align 1, !dbg !5647
  %10 = load i8, ptr %a14, align 1, !dbg !5651
  ret i8 %10, !dbg !5652
}

; Function Attrs: noinline nounwind optnone
define internal void @vec_mul_add_u64(i32 noundef %legs, ptr noundef %in, i8 noundef zeroext %a, ptr noundef %acc) #0 !dbg !5653 {
entry:
  %legs.addr = alloca i32, align 4
  %in.addr = alloca ptr, align 4
  %a.addr = alloca i8, align 1
  %acc.addr = alloca ptr, align 4
  %tab = alloca i32, align 4
  %lsb_ask = alloca i64, align 8
  %i = alloca i32, align 4
  store i32 %legs, ptr %legs.addr, align 4
    #dbg_declare(ptr %legs.addr, !5656, !DIExpression(), !5657)
  store ptr %in, ptr %in.addr, align 4
    #dbg_declare(ptr %in.addr, !5658, !DIExpression(), !5659)
  store i8 %a, ptr %a.addr, align 1
    #dbg_declare(ptr %a.addr, !5660, !DIExpression(), !5661)
  store ptr %acc, ptr %acc.addr, align 4
    #dbg_declare(ptr %acc.addr, !5662, !DIExpression(), !5663)
    #dbg_declare(ptr %tab, !5664, !DIExpression(), !5665)
  %0 = load i8, ptr %a.addr, align 1, !dbg !5666
  %call = call i32 @mul_table(i8 noundef zeroext %0) #5, !dbg !5667
  store i32 %call, ptr %tab, align 4, !dbg !5665
    #dbg_declare(ptr %lsb_ask, !5668, !DIExpression(), !5669)
  store i64 1229782938247303441, ptr %lsb_ask, align 8, !dbg !5669
    #dbg_declare(ptr %i, !5670, !DIExpression(), !5672)
  store i32 0, ptr %i, align 4, !dbg !5672
  br label %for.cond, !dbg !5673

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4, !dbg !5674
  %2 = load i32, ptr %legs.addr, align 4, !dbg !5676
  %cmp = icmp slt i32 %1, %2, !dbg !5677
  br i1 %cmp, label %for.body, label %for.end, !dbg !5678

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %in.addr, align 4, !dbg !5679
  %4 = load i32, ptr %i, align 4, !dbg !5681
  %arrayidx = getelementptr inbounds i64, ptr %3, i32 %4, !dbg !5679
  %5 = load i64, ptr %arrayidx, align 8, !dbg !5679
  %6 = load i64, ptr %lsb_ask, align 8, !dbg !5682
  %and = and i64 %5, %6, !dbg !5683
  %7 = load i32, ptr %tab, align 4, !dbg !5684
  %and1 = and i32 %7, 255, !dbg !5685
  %conv = zext i32 %and1 to i64, !dbg !5686
  %mul = mul i64 %and, %conv, !dbg !5687
  %8 = load ptr, ptr %in.addr, align 4, !dbg !5688
  %9 = load i32, ptr %i, align 4, !dbg !5689
  %arrayidx2 = getelementptr inbounds i64, ptr %8, i32 %9, !dbg !5688
  %10 = load i64, ptr %arrayidx2, align 8, !dbg !5688
  %shr = lshr i64 %10, 1, !dbg !5690
  %11 = load i64, ptr %lsb_ask, align 8, !dbg !5691
  %and3 = and i64 %shr, %11, !dbg !5692
  %12 = load i32, ptr %tab, align 4, !dbg !5693
  %shr4 = lshr i32 %12, 8, !dbg !5694
  %and5 = and i32 %shr4, 15, !dbg !5695
  %conv6 = zext i32 %and5 to i64, !dbg !5696
  %mul7 = mul i64 %and3, %conv6, !dbg !5697
  %xor = xor i64 %mul, %mul7, !dbg !5698
  %13 = load ptr, ptr %in.addr, align 4, !dbg !5699
  %14 = load i32, ptr %i, align 4, !dbg !5700
  %arrayidx8 = getelementptr inbounds i64, ptr %13, i32 %14, !dbg !5699
  %15 = load i64, ptr %arrayidx8, align 8, !dbg !5699
  %shr9 = lshr i64 %15, 2, !dbg !5701
  %16 = load i64, ptr %lsb_ask, align 8, !dbg !5702
  %and10 = and i64 %shr9, %16, !dbg !5703
  %17 = load i32, ptr %tab, align 4, !dbg !5704
  %shr11 = lshr i32 %17, 16, !dbg !5705
  %and12 = and i32 %shr11, 15, !dbg !5706
  %conv13 = zext i32 %and12 to i64, !dbg !5707
  %mul14 = mul i64 %and10, %conv13, !dbg !5708
  %xor15 = xor i64 %xor, %mul14, !dbg !5709
  %18 = load ptr, ptr %in.addr, align 4, !dbg !5710
  %19 = load i32, ptr %i, align 4, !dbg !5711
  %arrayidx16 = getelementptr inbounds i64, ptr %18, i32 %19, !dbg !5710
  %20 = load i64, ptr %arrayidx16, align 8, !dbg !5710
  %shr17 = lshr i64 %20, 3, !dbg !5712
  %21 = load i64, ptr %lsb_ask, align 8, !dbg !5713
  %and18 = and i64 %shr17, %21, !dbg !5714
  %22 = load i32, ptr %tab, align 4, !dbg !5715
  %shr19 = lshr i32 %22, 24, !dbg !5716
  %and20 = and i32 %shr19, 15, !dbg !5717
  %conv21 = zext i32 %and20 to i64, !dbg !5718
  %mul22 = mul i64 %and18, %conv21, !dbg !5719
  %xor23 = xor i64 %xor15, %mul22, !dbg !5720
  %23 = load ptr, ptr %acc.addr, align 4, !dbg !5721
  %24 = load i32, ptr %i, align 4, !dbg !5722
  %arrayidx24 = getelementptr inbounds i64, ptr %23, i32 %24, !dbg !5721
  %25 = load i64, ptr %arrayidx24, align 8, !dbg !5723
  %xor25 = xor i64 %25, %xor23, !dbg !5723
  store i64 %xor25, ptr %arrayidx24, align 8, !dbg !5723
  br label %for.inc, !dbg !5724

for.inc:                                          ; preds = %for.body
  %26 = load i32, ptr %i, align 4, !dbg !5725
  %inc = add nsw i32 %26, 1, !dbg !5725
  store i32 %inc, ptr %i, align 4, !dbg !5725
  br label %for.cond, !dbg !5726, !llvm.loop !5727

for.end:                                          ; preds = %for.cond
  ret void, !dbg !5729
}

; Function Attrs: noinline nounwind optnone
define internal void @ef_unpack_m_vec(i32 noundef %legs, ptr noundef %in, ptr noundef %out) #0 !dbg !5730 {
entry:
  %legs.addr = alloca i32, align 4
  %in.addr = alloca ptr, align 4
  %out.addr = alloca ptr, align 4
  %in8 = alloca ptr, align 4
  %i = alloca i32, align 4
  store i32 %legs, ptr %legs.addr, align 4
    #dbg_declare(ptr %legs.addr, !5733, !DIExpression(), !5734)
  store ptr %in, ptr %in.addr, align 4
    #dbg_declare(ptr %in.addr, !5735, !DIExpression(), !5736)
  store ptr %out, ptr %out.addr, align 4
    #dbg_declare(ptr %out.addr, !5737, !DIExpression(), !5738)
    #dbg_declare(ptr %in8, !5739, !DIExpression(), !5740)
  %0 = load ptr, ptr %in.addr, align 4, !dbg !5741
  store ptr %0, ptr %in8, align 4, !dbg !5740
    #dbg_declare(ptr %i, !5742, !DIExpression(), !5744)
  store i32 0, ptr %i, align 4, !dbg !5744
  br label %for.cond, !dbg !5745

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4, !dbg !5746
  %2 = load i32, ptr %legs.addr, align 4, !dbg !5748
  %mul = mul nsw i32 %2, 16, !dbg !5749
  %cmp = icmp slt i32 %1, %mul, !dbg !5750
  br i1 %cmp, label %for.body, label %for.end, !dbg !5751

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %in8, align 4, !dbg !5752
  %4 = load i32, ptr %i, align 4, !dbg !5754
  %div = sdiv i32 %4, 2, !dbg !5755
  %arrayidx = getelementptr inbounds i8, ptr %3, i32 %div, !dbg !5752
  %5 = load i8, ptr %arrayidx, align 1, !dbg !5752
  %conv = zext i8 %5 to i32, !dbg !5756
  %and = and i32 %conv, 15, !dbg !5757
  %conv1 = trunc i32 %and to i8, !dbg !5756
  %6 = load ptr, ptr %out.addr, align 4, !dbg !5758
  %7 = load i32, ptr %i, align 4, !dbg !5759
  %arrayidx2 = getelementptr inbounds i8, ptr %6, i32 %7, !dbg !5758
  store i8 %conv1, ptr %arrayidx2, align 1, !dbg !5760
  %8 = load ptr, ptr %in8, align 4, !dbg !5761
  %9 = load i32, ptr %i, align 4, !dbg !5762
  %div3 = sdiv i32 %9, 2, !dbg !5763
  %arrayidx4 = getelementptr inbounds i8, ptr %8, i32 %div3, !dbg !5761
  %10 = load i8, ptr %arrayidx4, align 1, !dbg !5761
  %conv5 = zext i8 %10 to i32, !dbg !5761
  %shr = ashr i32 %conv5, 4, !dbg !5764
  %conv6 = trunc i32 %shr to i8, !dbg !5765
  %11 = load ptr, ptr %out.addr, align 4, !dbg !5766
  %12 = load i32, ptr %i, align 4, !dbg !5767
  %add = add nsw i32 %12, 1, !dbg !5768
  %arrayidx7 = getelementptr inbounds i8, ptr %11, i32 %add, !dbg !5766
  store i8 %conv6, ptr %arrayidx7, align 1, !dbg !5769
  br label %for.inc, !dbg !5770

for.inc:                                          ; preds = %for.body
  %13 = load i32, ptr %i, align 4, !dbg !5771
  %add8 = add nsw i32 %13, 2, !dbg !5771
  store i32 %add8, ptr %i, align 4, !dbg !5771
  br label %for.cond, !dbg !5772, !llvm.loop !5773

for.end:                                          ; preds = %for.cond
  ret void, !dbg !5775
}

; Function Attrs: noinline nounwind optnone
define internal i32 @mul_table(i8 noundef zeroext %b) #0 !dbg !5776 {
entry:
  %b.addr = alloca i8, align 1
  %x = alloca i32, align 4
  %high_nibble_mask = alloca i32, align 4
  %high_half = alloca i32, align 4
  store i8 %b, ptr %b.addr, align 1
    #dbg_declare(ptr %b.addr, !5779, !DIExpression(), !5780)
    #dbg_declare(ptr %x, !5781, !DIExpression(), !5782)
  %0 = load i8, ptr %b.addr, align 1, !dbg !5783
  %conv = zext i8 %0 to i32, !dbg !5784
  %mul = mul i32 %conv, 134480385, !dbg !5785
  store i32 %mul, ptr %x, align 4, !dbg !5782
    #dbg_declare(ptr %high_nibble_mask, !5786, !DIExpression(), !5787)
  store i32 -252645136, ptr %high_nibble_mask, align 4, !dbg !5787
    #dbg_declare(ptr %high_half, !5788, !DIExpression(), !5789)
  %1 = load i32, ptr %x, align 4, !dbg !5790
  %2 = load i32, ptr %high_nibble_mask, align 4, !dbg !5791
  %and = and i32 %1, %2, !dbg !5792
  store i32 %and, ptr %high_half, align 4, !dbg !5789
  %3 = load i32, ptr %x, align 4, !dbg !5793
  %4 = load i32, ptr %high_half, align 4, !dbg !5794
  %shr = lshr i32 %4, 4, !dbg !5795
  %xor = xor i32 %3, %shr, !dbg !5796
  %5 = load i32, ptr %high_half, align 4, !dbg !5797
  %shr1 = lshr i32 %5, 3, !dbg !5798
  %xor2 = xor i32 %xor, %shr1, !dbg !5799
  ret i32 %xor2, !dbg !5800
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i8 @mul_f.22(i8 noundef zeroext %a, i8 noundef zeroext %b) #0 !dbg !5801 {
entry:
  %a.addr = alloca i8, align 1
  %b.addr = alloca i8, align 1
  %p = alloca i8, align 1
  %top_p = alloca i8, align 1
  %out = alloca i8, align 1
  store i8 %a, ptr %a.addr, align 1
    #dbg_declare(ptr %a.addr, !5802, !DIExpression(), !5803)
  store i8 %b, ptr %b.addr, align 1
    #dbg_declare(ptr %b.addr, !5804, !DIExpression(), !5805)
    #dbg_declare(ptr %p, !5806, !DIExpression(), !5807)
  %0 = load volatile i8, ptr @unsigned_char_blocker, align 1, !dbg !5808
  %conv = zext i8 %0 to i32, !dbg !5808
  %1 = load i8, ptr %a.addr, align 1, !dbg !5809
  %conv1 = zext i8 %1 to i32, !dbg !5809
  %xor = xor i32 %conv1, %conv, !dbg !5809
  %conv2 = trunc i32 %xor to i8, !dbg !5809
  store i8 %conv2, ptr %a.addr, align 1, !dbg !5809
  %2 = load i8, ptr %a.addr, align 1, !dbg !5810
  %conv3 = zext i8 %2 to i32, !dbg !5810
  %and = and i32 %conv3, 1, !dbg !5811
  %3 = load i8, ptr %b.addr, align 1, !dbg !5812
  %conv4 = zext i8 %3 to i32, !dbg !5812
  %mul = mul nsw i32 %and, %conv4, !dbg !5813
  %conv5 = trunc i32 %mul to i8, !dbg !5814
  store i8 %conv5, ptr %p, align 1, !dbg !5815
  %4 = load i8, ptr %a.addr, align 1, !dbg !5816
  %conv6 = zext i8 %4 to i32, !dbg !5816
  %and7 = and i32 %conv6, 2, !dbg !5817
  %5 = load i8, ptr %b.addr, align 1, !dbg !5818
  %conv8 = zext i8 %5 to i32, !dbg !5818
  %mul9 = mul nsw i32 %and7, %conv8, !dbg !5819
  %6 = load i8, ptr %p, align 1, !dbg !5820
  %conv10 = zext i8 %6 to i32, !dbg !5820
  %xor11 = xor i32 %conv10, %mul9, !dbg !5820
  %conv12 = trunc i32 %xor11 to i8, !dbg !5820
  store i8 %conv12, ptr %p, align 1, !dbg !5820
  %7 = load i8, ptr %a.addr, align 1, !dbg !5821
  %conv13 = zext i8 %7 to i32, !dbg !5821
  %and14 = and i32 %conv13, 4, !dbg !5822
  %8 = load i8, ptr %b.addr, align 1, !dbg !5823
  %conv15 = zext i8 %8 to i32, !dbg !5823
  %mul16 = mul nsw i32 %and14, %conv15, !dbg !5824
  %9 = load i8, ptr %p, align 1, !dbg !5825
  %conv17 = zext i8 %9 to i32, !dbg !5825
  %xor18 = xor i32 %conv17, %mul16, !dbg !5825
  %conv19 = trunc i32 %xor18 to i8, !dbg !5825
  store i8 %conv19, ptr %p, align 1, !dbg !5825
  %10 = load i8, ptr %a.addr, align 1, !dbg !5826
  %conv20 = zext i8 %10 to i32, !dbg !5826
  %and21 = and i32 %conv20, 8, !dbg !5827
  %11 = load i8, ptr %b.addr, align 1, !dbg !5828
  %conv22 = zext i8 %11 to i32, !dbg !5828
  %mul23 = mul nsw i32 %and21, %conv22, !dbg !5829
  %12 = load i8, ptr %p, align 1, !dbg !5830
  %conv24 = zext i8 %12 to i32, !dbg !5830
  %xor25 = xor i32 %conv24, %mul23, !dbg !5830
  %conv26 = trunc i32 %xor25 to i8, !dbg !5830
  store i8 %conv26, ptr %p, align 1, !dbg !5830
    #dbg_declare(ptr %top_p, !5831, !DIExpression(), !5832)
  %13 = load i8, ptr %p, align 1, !dbg !5833
  %conv27 = zext i8 %13 to i32, !dbg !5833
  %and28 = and i32 %conv27, 240, !dbg !5834
  %conv29 = trunc i32 %and28 to i8, !dbg !5833
  store i8 %conv29, ptr %top_p, align 1, !dbg !5832
    #dbg_declare(ptr %out, !5835, !DIExpression(), !5836)
  %14 = load i8, ptr %p, align 1, !dbg !5837
  %conv30 = zext i8 %14 to i32, !dbg !5837
  %15 = load i8, ptr %top_p, align 1, !dbg !5838
  %conv31 = zext i8 %15 to i32, !dbg !5838
  %shr = ashr i32 %conv31, 4, !dbg !5839
  %xor32 = xor i32 %conv30, %shr, !dbg !5840
  %16 = load i8, ptr %top_p, align 1, !dbg !5841
  %conv33 = zext i8 %16 to i32, !dbg !5841
  %shr34 = ashr i32 %conv33, 3, !dbg !5842
  %xor35 = xor i32 %xor32, %shr34, !dbg !5843
  %and36 = and i32 %xor35, 15, !dbg !5844
  %conv37 = trunc i32 %and36 to i8, !dbg !5845
  store i8 %conv37, ptr %out, align 1, !dbg !5836
  %17 = load i8, ptr %out, align 1, !dbg !5846
  ret i8 %17, !dbg !5847
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i8 @lincomb.23(ptr noundef %a, ptr noundef %b, i32 noundef %n, i32 noundef %m) #0 !dbg !5848 {
entry:
  %a.addr = alloca ptr, align 4
  %b.addr = alloca ptr, align 4
  %n.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %ret = alloca i8, align 1
  %i = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 4
    #dbg_declare(ptr %a.addr, !5849, !DIExpression(), !5850)
  store ptr %b, ptr %b.addr, align 4
    #dbg_declare(ptr %b.addr, !5851, !DIExpression(), !5852)
  store i32 %n, ptr %n.addr, align 4
    #dbg_declare(ptr %n.addr, !5853, !DIExpression(), !5854)
  store i32 %m, ptr %m.addr, align 4
    #dbg_declare(ptr %m.addr, !5855, !DIExpression(), !5856)
    #dbg_declare(ptr %ret, !5857, !DIExpression(), !5858)
  store i8 0, ptr %ret, align 1, !dbg !5858
    #dbg_declare(ptr %i, !5859, !DIExpression(), !5861)
  store i32 0, ptr %i, align 4, !dbg !5861
  br label %for.cond, !dbg !5862

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !5863
  %1 = load i32, ptr %n.addr, align 4, !dbg !5865
  %cmp = icmp slt i32 %0, %1, !dbg !5866
  br i1 %cmp, label %for.body, label %for.end, !dbg !5867

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %a.addr, align 4, !dbg !5868
  %3 = load i32, ptr %i, align 4, !dbg !5870
  %arrayidx = getelementptr inbounds i8, ptr %2, i32 %3, !dbg !5868
  %4 = load i8, ptr %arrayidx, align 1, !dbg !5868
  %5 = load ptr, ptr %b.addr, align 4, !dbg !5871
  %6 = load i8, ptr %5, align 1, !dbg !5872
  %call = call zeroext i8 @mul_f.22(i8 noundef zeroext %4, i8 noundef zeroext %6) #5, !dbg !5873
  %7 = load i8, ptr %ret, align 1, !dbg !5874
  %call1 = call zeroext i8 @add_f.24(i8 noundef zeroext %call, i8 noundef zeroext %7) #5, !dbg !5875
  store i8 %call1, ptr %ret, align 1, !dbg !5876
  br label %for.inc, !dbg !5877

for.inc:                                          ; preds = %for.body
  %8 = load i32, ptr %i, align 4, !dbg !5878
  %inc = add nsw i32 %8, 1, !dbg !5878
  store i32 %inc, ptr %i, align 4, !dbg !5878
  %9 = load i32, ptr %m.addr, align 4, !dbg !5879
  %10 = load ptr, ptr %b.addr, align 4, !dbg !5880
  %add.ptr = getelementptr inbounds i8, ptr %10, i32 %9, !dbg !5880
  store ptr %add.ptr, ptr %b.addr, align 4, !dbg !5880
  br label %for.cond, !dbg !5881, !llvm.loop !5882

for.end:                                          ; preds = %for.cond
  %11 = load i8, ptr %ret, align 1, !dbg !5884
  ret i8 %11, !dbg !5885
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i8 @add_f.24(i8 noundef zeroext %a, i8 noundef zeroext %b) #0 !dbg !5886 {
entry:
  %a.addr = alloca i8, align 1
  %b.addr = alloca i8, align 1
  store i8 %a, ptr %a.addr, align 1
    #dbg_declare(ptr %a.addr, !5887, !DIExpression(), !5888)
  store i8 %b, ptr %b.addr, align 1
    #dbg_declare(ptr %b.addr, !5889, !DIExpression(), !5890)
  %0 = load i8, ptr %a.addr, align 1, !dbg !5891
  %conv = zext i8 %0 to i32, !dbg !5891
  %1 = load i8, ptr %b.addr, align 1, !dbg !5892
  %conv1 = zext i8 %1 to i32, !dbg !5892
  %xor = xor i32 %conv, %conv1, !dbg !5893
  %conv2 = trunc i32 %xor to i8, !dbg !5891
  ret i8 %conv2, !dbg !5894
}

attributes #0 = { noinline nounwind optnone "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-thumb-mode" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { allocsize(0,1) "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-thumb-mode" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-thumb-mode" }
attributes #5 = { nobuiltin "no-builtins" }
attributes #6 = { nobuiltin allocsize(0,1) "no-builtins" }

!llvm.dbg.cu = !{!76, !79, !43}
!llvm.ident = !{!99}
!llvm.module.flags = !{!100, !101, !102, !103, !104, !105}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 41, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "../example.c", directory: "")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 17)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 43, type: !3, isLocal: true, isDefinition: true)
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(scope: null, file: !2, line: 46, type: !11, isLocal: true, isDefinition: true)
!11 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !12)
!12 = !{!13}
!13 = !DISubrange(count: 6)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(scope: null, file: !2, line: 50, type: !16, isLocal: true, isDefinition: true)
!16 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !17)
!17 = !{!18}
!18 = !DISubrange(count: 4)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(scope: null, file: !2, line: 53, type: !21, isLocal: true, isDefinition: true)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !22)
!22 = !{!23}
!23 = !DISubrange(count: 19)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(scope: null, file: !2, line: 63, type: !21, isLocal: true, isDefinition: true)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(scope: null, file: !2, line: 73, type: !28, isLocal: true, isDefinition: true)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !29)
!29 = !{!30}
!30 = !DISubrange(count: 14)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(scope: null, file: !2, line: 83, type: !33, isLocal: true, isDefinition: true)
!33 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !34)
!34 = !{!35}
!35 = !DISubrange(count: 39)
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(scope: null, file: !2, line: 94, type: !38, isLocal: true, isDefinition: true)
!38 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 328, elements: !39)
!39 = !{!40}
!40 = !DISubrange(count: 41)
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(name: "uint32_t_blocker", scope: !43, file: !70, line: 126, type: !75, isLocal: false, isDefinition: true)
!43 = distinct !DICompileUnit(language: DW_LANG_C11, file: !44, producer: "clang version 23.0.0git (https://github.com/llvm/llvm-project.git a07347f60997b971314563c7427aff5153677d95)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !45, globals: !67, splitDebugInlining: false, nameTableKind: None)
!44 = !DIFile(filename: "../../../src/<stdin>", directory: "")
!45 = !{!46, !51, !52, !55, !57, !60, !62, !65}
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !47, line: 60, baseType: !48)
!47 = !DIFile(filename: "/usr/lib/arm-none-eabi/include/sys/_stdint.h", directory: "")
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !49, line: 105, baseType: !50)
!49 = !DIFile(filename: "/usr/lib/arm-none-eabi/include/machine/_default_types.h", directory: "")
!50 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!51 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !47, line: 56, baseType: !53)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !49, line: 103, baseType: !54)
!54 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 32)
!56 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !47, line: 48, baseType: !58)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !49, line: 79, baseType: !59)
!59 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 32)
!61 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !47, line: 20, baseType: !63)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !49, line: 41, baseType: !64)
!64 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !47, line: 44, baseType: !66)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !49, line: 77, baseType: !51)
!67 = !{!41, !68, !72}
!68 = !DIGlobalVariableExpression(var: !69, expr: !DIExpression())
!69 = distinct !DIGlobalVariable(name: "uint64_t_blocker", scope: !43, file: !70, line: 127, type: !71, isLocal: false, isDefinition: true)
!70 = !DIFile(filename: "../../../src/arithmetic.c", directory: "")
!71 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !46)
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(name: "unsigned_char_blocker", scope: !43, file: !70, line: 128, type: !74, isLocal: false, isDefinition: true)
!74 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !56)
!75 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !57)
!76 = distinct !DICompileUnit(language: DW_LANG_C11, file: !77, producer: "clang version 23.0.0git (https://github.com/llvm/llvm-project.git a07347f60997b971314563c7427aff5153677d95)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !78, splitDebugInlining: false, nameTableKind: None)
!77 = !DIFile(filename: "../<stdin>", directory: "")
!78 = !{!0, !7, !9, !14, !19, !24, !26, !31, !36}
!79 = distinct !DICompileUnit(language: DW_LANG_C11, file: !44, producer: "clang version 23.0.0git (https://github.com/llvm/llvm-project.git a07347f60997b971314563c7427aff5153677d95)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !80, globals: !84, splitDebugInlining: false, nameTableKind: None)
!80 = !{!56, !81, !82, !55}
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 32)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !83, line: 214, baseType: !59)
!83 = !DIFile(filename: "/usr/lib/gcc/arm-none-eabi/13.2.1/include/stddef.h", directory: "")
!84 = !{!85, !93, !95, !97}
!85 = !DIGlobalVariableExpression(var: !86, expr: !DIExpression())
!86 = distinct !DIGlobalVariable(name: "even_nibbles", scope: !87, file: !88, line: 112, type: !92, isLocal: true, isDefinition: true)
!87 = distinct !DISubprogram(name: "transpose_16x16_nibbles", scope: !88, file: !88, line: 111, type: !89, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !79, retainedNodes: !91)
!88 = !DIFile(filename: "../../../src/mayo.c", directory: "")
!89 = !DISubroutineType(types: !90)
!90 = !{null, !81}
!91 = !{}
!92 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!93 = !DIGlobalVariableExpression(var: !94, expr: !DIExpression())
!94 = distinct !DIGlobalVariable(name: "even_bytes", scope: !87, file: !88, line: 113, type: !92, isLocal: true, isDefinition: true)
!95 = !DIGlobalVariableExpression(var: !96, expr: !DIExpression())
!96 = distinct !DIGlobalVariable(name: "even_2bytes", scope: !87, file: !88, line: 114, type: !92, isLocal: true, isDefinition: true)
!97 = !DIGlobalVariableExpression(var: !98, expr: !DIExpression())
!98 = distinct !DIGlobalVariable(name: "even_half", scope: !87, file: !88, line: 115, type: !92, isLocal: true, isDefinition: true)
!99 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project.git a07347f60997b971314563c7427aff5153677d95)"}
!100 = !{i32 2, !"Debug Info Version", i32 3}
!101 = !{i32 1, !"wchar_size", i32 4}
!102 = !{i32 1, !"min_enum_size", i32 4}
!103 = !{i32 4, !"arm-eabi-fp-denormal", i32 1}
!104 = !{i32 8, !"arm-eabi-fp-number-model", i32 3}
!105 = !{i32 1, !"Code Model", i32 1}
!106 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 138, type: !107, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !91)
!107 = !DISubroutineType(types: !108)
!108 = !{!51}
!109 = !DILocalVariable(name: "params", scope: !106, file: !2, line: 140, type: !110)
!110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 128, elements: !17)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 32)
!112 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !113)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "mayo_params_t", file: !114, line: 289, baseType: !115)
!114 = !DIFile(filename: "../../../include/mayo.h", directory: "")
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !114, line: 265, size: 736, elements: !116)
!116 = !{!117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !115, file: !114, line: 266, baseType: !51, size: 32)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !115, file: !114, line: 267, baseType: !51, size: 32, offset: 32)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "o", scope: !115, file: !114, line: 268, baseType: !51, size: 32, offset: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !115, file: !114, line: 269, baseType: !51, size: 32, offset: 96)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !115, file: !114, line: 270, baseType: !51, size: 32, offset: 128)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "f_tail", scope: !115, file: !114, line: 271, baseType: !60, size: 32, offset: 160)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "m_bytes", scope: !115, file: !114, line: 272, baseType: !51, size: 32, offset: 192)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "O_bytes", scope: !115, file: !114, line: 273, baseType: !51, size: 32, offset: 224)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "v_bytes", scope: !115, file: !114, line: 274, baseType: !51, size: 32, offset: 256)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "r_bytes", scope: !115, file: !114, line: 275, baseType: !51, size: 32, offset: 288)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "R_bytes", scope: !115, file: !114, line: 276, baseType: !51, size: 32, offset: 320)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "P1_bytes", scope: !115, file: !114, line: 277, baseType: !51, size: 32, offset: 352)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "P2_bytes", scope: !115, file: !114, line: 278, baseType: !51, size: 32, offset: 384)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "P3_bytes", scope: !115, file: !114, line: 279, baseType: !51, size: 32, offset: 416)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "csk_bytes", scope: !115, file: !114, line: 280, baseType: !51, size: 32, offset: 448)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "cpk_bytes", scope: !115, file: !114, line: 281, baseType: !51, size: 32, offset: 480)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "sig_bytes", scope: !115, file: !114, line: 282, baseType: !51, size: 32, offset: 512)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "salt_bytes", scope: !115, file: !114, line: 283, baseType: !51, size: 32, offset: 544)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "sk_seed_bytes", scope: !115, file: !114, line: 284, baseType: !51, size: 32, offset: 576)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "digest_bytes", scope: !115, file: !114, line: 285, baseType: !51, size: 32, offset: 608)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "pk_seed_bytes", scope: !115, file: !114, line: 286, baseType: !51, size: 32, offset: 640)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "m_vec_limbs", scope: !115, file: !114, line: 287, baseType: !51, size: 32, offset: 672)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !115, file: !114, line: 288, baseType: !140, size: 32, offset: 704)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 32)
!141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!142 = !DILocation(line: 140, column: 26, scope: !106)
!143 = !DILocalVariable(name: "paramslen", scope: !106, file: !2, line: 141, type: !51)
!144 = !DILocation(line: 141, column: 9, scope: !106)
!145 = !DILocalVariable(name: "i", scope: !146, file: !2, line: 142, type: !51)
!146 = distinct !DILexicalBlock(scope: !106, file: !2, line: 142, column: 5)
!147 = !DILocation(line: 142, column: 14, scope: !146)
!148 = !DILocation(line: 142, column: 10, scope: !146)
!149 = !DILocation(line: 142, column: 21, scope: !150)
!150 = distinct !DILexicalBlock(scope: !146, file: !2, line: 142, column: 5)
!151 = !DILocation(line: 142, column: 25, scope: !150)
!152 = !DILocation(line: 142, column: 23, scope: !150)
!153 = !DILocation(line: 142, column: 5, scope: !146)
!154 = !DILocation(line: 143, column: 33, scope: !155)
!155 = distinct !DILexicalBlock(scope: !156, file: !2, line: 143, column: 13)
!156 = distinct !DILexicalBlock(scope: !150, file: !2, line: 142, column: 41)
!157 = !DILocation(line: 143, column: 26, scope: !155)
!158 = !DILocation(line: 143, column: 13, scope: !155)
!159 = !DILocation(line: 143, column: 37, scope: !155)
!160 = !DILocation(line: 144, column: 13, scope: !161)
!161 = distinct !DILexicalBlock(scope: !155, file: !2, line: 143, column: 49)
!162 = !DILocation(line: 146, column: 5, scope: !156)
!163 = !DILocation(line: 142, column: 36, scope: !150)
!164 = !DILocation(line: 142, column: 5, scope: !150)
!165 = distinct !{!165, !153, !166, !167}
!166 = !DILocation(line: 146, column: 5, scope: !146)
!167 = !{!"llvm.loop.mustprogress"}
!168 = !DILocation(line: 150, column: 1, scope: !106)
!169 = distinct !DISubprogram(name: "example_mayo", scope: !2, file: !2, line: 25, type: !170, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !76, retainedNodes: !91)
!170 = !DISubroutineType(types: !171)
!171 = !{!51, !111}
!172 = !DILocalVariable(name: "p", arg: 1, scope: !169, file: !2, line: 25, type: !111)
!173 = !DILocation(line: 25, column: 46, scope: !169)
!174 = !DILocalVariable(name: "msglen", scope: !169, file: !2, line: 27, type: !82)
!175 = !DILocation(line: 27, column: 12, scope: !169)
!176 = !DILocalVariable(name: "smlen", scope: !169, file: !2, line: 28, type: !82)
!177 = !DILocation(line: 28, column: 12, scope: !169)
!178 = !DILocation(line: 28, column: 36, scope: !169)
!179 = !DILocation(line: 28, column: 20, scope: !169)
!180 = !DILocation(line: 28, column: 41, scope: !169)
!181 = !DILocation(line: 28, column: 39, scope: !169)
!182 = !DILocalVariable(name: "pk", scope: !169, file: !2, line: 30, type: !55)
!183 = !DILocation(line: 30, column: 20, scope: !169)
!184 = !DILocation(line: 30, column: 49, scope: !169)
!185 = !DILocation(line: 30, column: 33, scope: !169)
!186 = !DILocation(line: 30, column: 26, scope: !169)
!187 = !DILocalVariable(name: "sk", scope: !169, file: !2, line: 31, type: !55)
!188 = !DILocation(line: 31, column: 20, scope: !169)
!189 = !DILocation(line: 31, column: 49, scope: !169)
!190 = !DILocation(line: 31, column: 33, scope: !169)
!191 = !DILocation(line: 31, column: 26, scope: !169)
!192 = !DILocalVariable(name: "epk", scope: !169, file: !2, line: 33, type: !81)
!193 = !DILocation(line: 33, column: 15, scope: !169)
!194 = !DILocation(line: 33, column: 21, scope: !169)
!195 = !DILocalVariable(name: "esk", scope: !169, file: !2, line: 34, type: !196)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 32)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "sk_t", file: !114, line: 294, baseType: !198)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sk_t", file: !114, line: 291, size: 7257920, elements: !199)
!199 = !{!200, !204}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !198, file: !114, line: 292, baseType: !201, size: 7238592)
!201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 7238592, elements: !202)
!202 = !{!203}
!203 = !DISubrange(count: 113103)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "O", scope: !198, file: !114, line: 293, baseType: !205, size: 19312, offset: 7238592)
!205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !206, size: 19312, elements: !208)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !47, line: 24, baseType: !207)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !49, line: 43, baseType: !56)
!208 = !{!209}
!209 = !DISubrange(count: 2414)
!210 = !DILocation(line: 34, column: 11, scope: !169)
!211 = !DILocation(line: 34, column: 17, scope: !169)
!212 = !DILocalVariable(name: "sig", scope: !169, file: !2, line: 36, type: !55)
!213 = !DILocation(line: 36, column: 20, scope: !169)
!214 = !DILocation(line: 36, column: 49, scope: !169)
!215 = !DILocation(line: 36, column: 33, scope: !169)
!216 = !DILocation(line: 36, column: 54, scope: !169)
!217 = !DILocation(line: 36, column: 52, scope: !169)
!218 = !DILocation(line: 36, column: 26, scope: !169)
!219 = !DILocalVariable(name: "msg", scope: !169, file: !2, line: 38, type: !220)
!220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 256, elements: !221)
!221 = !{!222}
!222 = !DISubrange(count: 32)
!223 = !DILocation(line: 38, column: 19, scope: !169)
!224 = !DILocalVariable(name: "msg2", scope: !169, file: !2, line: 39, type: !220)
!225 = !DILocation(line: 39, column: 19, scope: !169)
!226 = !DILocation(line: 41, column: 44, scope: !169)
!227 = !DILocation(line: 41, column: 33, scope: !169)
!228 = !DILocation(line: 41, column: 5, scope: !169)
!229 = !DILocation(line: 43, column: 5, scope: !169)
!230 = !DILocalVariable(name: "res", scope: !169, file: !2, line: 44, type: !51)
!231 = !DILocation(line: 44, column: 9, scope: !169)
!232 = !DILocation(line: 44, column: 28, scope: !169)
!233 = !DILocation(line: 44, column: 31, scope: !169)
!234 = !DILocation(line: 44, column: 35, scope: !169)
!235 = !DILocation(line: 44, column: 15, scope: !169)
!236 = !DILocation(line: 45, column: 9, scope: !237)
!237 = distinct !DILexicalBlock(scope: !169, file: !2, line: 45, column: 9)
!238 = !DILocation(line: 45, column: 13, scope: !237)
!239 = !DILocation(line: 46, column: 9, scope: !240)
!240 = distinct !DILexicalBlock(scope: !237, file: !2, line: 45, column: 25)
!241 = !DILocation(line: 47, column: 13, scope: !240)
!242 = !DILocation(line: 48, column: 9, scope: !240)
!243 = !DILocation(line: 50, column: 9, scope: !244)
!244 = distinct !DILexicalBlock(scope: !237, file: !2, line: 49, column: 12)
!245 = !DILocation(line: 53, column: 5, scope: !169)
!246 = !DILocation(line: 54, column: 26, scope: !169)
!247 = !DILocation(line: 54, column: 29, scope: !169)
!248 = !DILocation(line: 54, column: 33, scope: !169)
!249 = !DILocation(line: 54, column: 11, scope: !169)
!250 = !DILocation(line: 54, column: 9, scope: !169)
!251 = !DILocation(line: 55, column: 9, scope: !252)
!252 = distinct !DILexicalBlock(scope: !169, file: !2, line: 55, column: 9)
!253 = !DILocation(line: 55, column: 13, scope: !252)
!254 = !DILocation(line: 56, column: 9, scope: !255)
!255 = distinct !DILexicalBlock(scope: !252, file: !2, line: 55, column: 25)
!256 = !DILocation(line: 57, column: 13, scope: !255)
!257 = !DILocation(line: 58, column: 9, scope: !255)
!258 = !DILocation(line: 60, column: 9, scope: !259)
!259 = distinct !DILexicalBlock(scope: !252, file: !2, line: 59, column: 12)
!260 = !DILocation(line: 63, column: 5, scope: !169)
!261 = !DILocation(line: 64, column: 26, scope: !169)
!262 = !DILocation(line: 64, column: 29, scope: !169)
!263 = !DILocation(line: 64, column: 33, scope: !169)
!264 = !DILocation(line: 64, column: 11, scope: !169)
!265 = !DILocation(line: 64, column: 9, scope: !169)
!266 = !DILocation(line: 65, column: 9, scope: !267)
!267 = distinct !DILexicalBlock(scope: !169, file: !2, line: 65, column: 9)
!268 = !DILocation(line: 65, column: 13, scope: !267)
!269 = !DILocation(line: 66, column: 9, scope: !270)
!270 = distinct !DILexicalBlock(scope: !267, file: !2, line: 65, column: 25)
!271 = !DILocation(line: 67, column: 13, scope: !270)
!272 = !DILocation(line: 68, column: 9, scope: !270)
!273 = !DILocation(line: 70, column: 9, scope: !274)
!274 = distinct !DILexicalBlock(scope: !267, file: !2, line: 69, column: 12)
!275 = !DILocation(line: 73, column: 5, scope: !169)
!276 = !DILocation(line: 74, column: 21, scope: !169)
!277 = !DILocation(line: 74, column: 24, scope: !169)
!278 = !DILocation(line: 74, column: 37, scope: !169)
!279 = !DILocation(line: 74, column: 42, scope: !169)
!280 = !DILocation(line: 74, column: 50, scope: !169)
!281 = !DILocation(line: 74, column: 11, scope: !169)
!282 = !DILocation(line: 74, column: 9, scope: !169)
!283 = !DILocation(line: 75, column: 9, scope: !284)
!284 = distinct !DILexicalBlock(scope: !169, file: !2, line: 75, column: 9)
!285 = !DILocation(line: 75, column: 13, scope: !284)
!286 = !DILocation(line: 76, column: 9, scope: !287)
!287 = distinct !DILexicalBlock(scope: !284, file: !2, line: 75, column: 25)
!288 = !DILocation(line: 77, column: 13, scope: !287)
!289 = !DILocation(line: 78, column: 9, scope: !287)
!290 = !DILocation(line: 80, column: 9, scope: !291)
!291 = distinct !DILexicalBlock(scope: !284, file: !2, line: 79, column: 12)
!292 = !DILocation(line: 83, column: 5, scope: !169)
!293 = !DILocation(line: 84, column: 21, scope: !169)
!294 = !DILocation(line: 84, column: 24, scope: !169)
!295 = !DILocation(line: 84, column: 39, scope: !169)
!296 = !DILocation(line: 84, column: 44, scope: !169)
!297 = !DILocation(line: 84, column: 51, scope: !169)
!298 = !DILocation(line: 84, column: 11, scope: !169)
!299 = !DILocation(line: 84, column: 9, scope: !169)
!300 = !DILocation(line: 85, column: 9, scope: !301)
!301 = distinct !DILexicalBlock(scope: !169, file: !2, line: 85, column: 9)
!302 = !DILocation(line: 85, column: 13, scope: !301)
!303 = !DILocation(line: 85, column: 24, scope: !301)
!304 = !DILocation(line: 85, column: 34, scope: !301)
!305 = !DILocation(line: 85, column: 39, scope: !301)
!306 = !DILocation(line: 85, column: 45, scope: !301)
!307 = !DILocation(line: 85, column: 27, scope: !301)
!308 = !DILocation(line: 86, column: 9, scope: !309)
!309 = distinct !DILexicalBlock(scope: !301, file: !2, line: 85, column: 54)
!310 = !DILocation(line: 87, column: 13, scope: !309)
!311 = !DILocation(line: 88, column: 9, scope: !309)
!312 = !DILocation(line: 90, column: 13, scope: !313)
!313 = distinct !DILexicalBlock(scope: !301, file: !2, line: 89, column: 12)
!314 = !DILocation(line: 91, column: 9, scope: !313)
!315 = !DILocation(line: 94, column: 5, scope: !169)
!316 = !DILocation(line: 95, column: 23, scope: !169)
!317 = !DILocation(line: 95, column: 26, scope: !169)
!318 = !DILocation(line: 95, column: 31, scope: !169)
!319 = !DILocation(line: 95, column: 39, scope: !169)
!320 = !DILocation(line: 95, column: 44, scope: !169)
!321 = !DILocation(line: 95, column: 11, scope: !169)
!322 = !DILocation(line: 95, column: 9, scope: !169)
!323 = !DILocation(line: 96, column: 9, scope: !324)
!324 = distinct !DILexicalBlock(scope: !169, file: !2, line: 96, column: 9)
!325 = !DILocation(line: 96, column: 13, scope: !324)
!326 = !DILocation(line: 97, column: 9, scope: !327)
!327 = distinct !DILexicalBlock(scope: !324, file: !2, line: 96, column: 25)
!328 = !DILocation(line: 98, column: 13, scope: !327)
!329 = !DILocation(line: 99, column: 9, scope: !327)
!330 = !DILocation(line: 101, column: 13, scope: !331)
!331 = distinct !DILexicalBlock(scope: !324, file: !2, line: 100, column: 12)
!332 = !DILocation(line: 102, column: 9, scope: !331)
!333 = !DILocation(line: 96, column: 16, scope: !324)
!334 = !DILabel(scope: !169, name: "err", file: !2, line: 129, column: 1)
!335 = !DILocation(line: 129, column: 1, scope: !169)
!336 = !DILocation(line: 130, column: 10, scope: !169)
!337 = !DILocation(line: 130, column: 5, scope: !169)
!338 = !DILocation(line: 131, column: 10, scope: !169)
!339 = !DILocation(line: 131, column: 5, scope: !169)
!340 = !DILocation(line: 132, column: 22, scope: !169)
!341 = !DILocation(line: 132, column: 42, scope: !169)
!342 = !DILocation(line: 132, column: 26, scope: !169)
!343 = !DILocation(line: 132, column: 5, scope: !169)
!344 = !DILocation(line: 133, column: 22, scope: !169)
!345 = !DILocation(line: 133, column: 5, scope: !169)
!346 = !DILocation(line: 134, column: 10, scope: !169)
!347 = !DILocation(line: 134, column: 5, scope: !169)
!348 = !DILocation(line: 135, column: 12, scope: !169)
!349 = !DILocation(line: 135, column: 5, scope: !169)
!350 = distinct !DISubprogram(name: "mayo_keypair", scope: !88, file: !88, line: 298, type: !351, scopeLine: 298, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !79, retainedNodes: !91)
!351 = !DISubroutineType(types: !352)
!352 = !{!51, !353, !55, !55}
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 32)
!354 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !355)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "mayo_params_t", file: !114, line: 289, baseType: !356)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !114, line: 265, size: 736, elements: !357)
!357 = !{!358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !356, file: !114, line: 266, baseType: !51, size: 32)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !356, file: !114, line: 267, baseType: !51, size: 32, offset: 32)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "o", scope: !356, file: !114, line: 268, baseType: !51, size: 32, offset: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !356, file: !114, line: 269, baseType: !51, size: 32, offset: 96)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !356, file: !114, line: 270, baseType: !51, size: 32, offset: 128)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "f_tail", scope: !356, file: !114, line: 271, baseType: !60, size: 32, offset: 160)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "m_bytes", scope: !356, file: !114, line: 272, baseType: !51, size: 32, offset: 192)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "O_bytes", scope: !356, file: !114, line: 273, baseType: !51, size: 32, offset: 224)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "v_bytes", scope: !356, file: !114, line: 274, baseType: !51, size: 32, offset: 256)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "r_bytes", scope: !356, file: !114, line: 275, baseType: !51, size: 32, offset: 288)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "R_bytes", scope: !356, file: !114, line: 276, baseType: !51, size: 32, offset: 320)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "P1_bytes", scope: !356, file: !114, line: 277, baseType: !51, size: 32, offset: 352)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "P2_bytes", scope: !356, file: !114, line: 278, baseType: !51, size: 32, offset: 384)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "P3_bytes", scope: !356, file: !114, line: 279, baseType: !51, size: 32, offset: 416)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "csk_bytes", scope: !356, file: !114, line: 280, baseType: !51, size: 32, offset: 448)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "cpk_bytes", scope: !356, file: !114, line: 281, baseType: !51, size: 32, offset: 480)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "sig_bytes", scope: !356, file: !114, line: 282, baseType: !51, size: 32, offset: 512)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "salt_bytes", scope: !356, file: !114, line: 283, baseType: !51, size: 32, offset: 544)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "sk_seed_bytes", scope: !356, file: !114, line: 284, baseType: !51, size: 32, offset: 576)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "digest_bytes", scope: !356, file: !114, line: 285, baseType: !51, size: 32, offset: 608)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "pk_seed_bytes", scope: !356, file: !114, line: 286, baseType: !51, size: 32, offset: 640)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "m_vec_limbs", scope: !356, file: !114, line: 287, baseType: !51, size: 32, offset: 672)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !356, file: !114, line: 288, baseType: !140, size: 32, offset: 704)
!381 = !DILocalVariable(name: "p", arg: 1, scope: !350, file: !88, line: 298, type: !353)
!382 = !DILocation(line: 298, column: 39, scope: !350)
!383 = !DILocalVariable(name: "pk", arg: 2, scope: !350, file: !88, line: 298, type: !55)
!384 = !DILocation(line: 298, column: 57, scope: !350)
!385 = !DILocalVariable(name: "sk", arg: 3, scope: !350, file: !88, line: 298, type: !55)
!386 = !DILocation(line: 298, column: 76, scope: !350)
!387 = !DILocalVariable(name: "ret", scope: !350, file: !88, line: 299, type: !51)
!388 = !DILocation(line: 299, column: 9, scope: !350)
!389 = !DILocation(line: 301, column: 32, scope: !350)
!390 = !DILocation(line: 301, column: 35, scope: !350)
!391 = !DILocation(line: 301, column: 39, scope: !350)
!392 = !DILocation(line: 301, column: 11, scope: !350)
!393 = !DILocation(line: 301, column: 9, scope: !350)
!394 = !DILocation(line: 302, column: 9, scope: !395)
!395 = distinct !DILexicalBlock(scope: !350, file: !88, line: 302, column: 9)
!396 = !DILocation(line: 302, column: 13, scope: !395)
!397 = !DILocation(line: 303, column: 9, scope: !398)
!398 = distinct !DILexicalBlock(scope: !395, file: !88, line: 302, column: 25)
!399 = !DILocation(line: 302, column: 16, scope: !395)
!400 = !DILabel(scope: !350, name: "err", file: !88, line: 306, column: 1)
!401 = !DILocation(line: 306, column: 1, scope: !350)
!402 = !DILocation(line: 307, column: 12, scope: !350)
!403 = !DILocation(line: 307, column: 5, scope: !350)
!404 = distinct !DISubprogram(name: "mayo_keypair_compact", scope: !88, file: !88, line: 538, type: !351, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !79, retainedNodes: !91)
!405 = !DILocalVariable(name: "p", arg: 1, scope: !404, file: !88, line: 538, type: !353)
!406 = !DILocation(line: 538, column: 47, scope: !404)
!407 = !DILocalVariable(name: "cpk", arg: 2, scope: !404, file: !88, line: 538, type: !55)
!408 = !DILocation(line: 538, column: 65, scope: !404)
!409 = !DILocalVariable(name: "csk", arg: 3, scope: !404, file: !88, line: 539, type: !55)
!410 = !DILocation(line: 539, column: 41, scope: !404)
!411 = !DILocalVariable(name: "ret", scope: !404, file: !88, line: 540, type: !51)
!412 = !DILocation(line: 540, column: 9, scope: !404)
!413 = !DILocalVariable(name: "seed_sk", scope: !404, file: !88, line: 541, type: !55)
!414 = !DILocation(line: 541, column: 20, scope: !404)
!415 = !DILocation(line: 541, column: 30, scope: !404)
!416 = !DILocalVariable(name: "S", scope: !404, file: !88, line: 542, type: !417)
!417 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 6944, elements: !418)
!418 = !{!419}
!419 = !DISubrange(count: 868)
!420 = !DILocation(line: 542, column: 19, scope: !404)
!421 = !DILocalVariable(name: "P", scope: !404, file: !88, line: 543, type: !201)
!422 = !DILocation(line: 543, column: 14, scope: !404)
!423 = !DILocalVariable(name: "P3", scope: !404, file: !88, line: 544, type: !424)
!424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 166464, elements: !425)
!425 = !{!426}
!426 = !DISubrange(count: 2601)
!427 = !DILocation(line: 544, column: 14, scope: !404)
!428 = !DILocalVariable(name: "seed_pk", scope: !404, file: !88, line: 546, type: !55)
!429 = !DILocation(line: 546, column: 20, scope: !404)
!430 = !DILocalVariable(name: "O", scope: !404, file: !88, line: 547, type: !431)
!431 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 19312, elements: !208)
!432 = !DILocation(line: 547, column: 19, scope: !404)
!433 = !DILocalVariable(name: "m_vec_limbs", scope: !404, file: !88, line: 549, type: !434)
!434 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!435 = !DILocation(line: 549, column: 15, scope: !404)
!436 = !DILocation(line: 549, column: 47, scope: !404)
!437 = !DILocation(line: 549, column: 29, scope: !404)
!438 = !DILocalVariable(name: "param_m", scope: !404, file: !88, line: 550, type: !434)
!439 = !DILocation(line: 550, column: 15, scope: !404)
!440 = !DILocation(line: 550, column: 33, scope: !404)
!441 = !DILocation(line: 550, column: 25, scope: !404)
!442 = !DILocalVariable(name: "param_v", scope: !404, file: !88, line: 551, type: !434)
!443 = !DILocation(line: 551, column: 15, scope: !404)
!444 = !DILocation(line: 551, column: 33, scope: !404)
!445 = !DILocation(line: 551, column: 25, scope: !404)
!446 = !DILocalVariable(name: "param_o", scope: !404, file: !88, line: 552, type: !434)
!447 = !DILocation(line: 552, column: 15, scope: !404)
!448 = !DILocation(line: 552, column: 33, scope: !404)
!449 = !DILocation(line: 552, column: 25, scope: !404)
!450 = !DILocalVariable(name: "param_O_bytes", scope: !404, file: !88, line: 553, type: !434)
!451 = !DILocation(line: 553, column: 15, scope: !404)
!452 = !DILocation(line: 553, column: 45, scope: !404)
!453 = !DILocation(line: 553, column: 31, scope: !404)
!454 = !DILocalVariable(name: "param_P1_limbs", scope: !404, file: !88, line: 554, type: !434)
!455 = !DILocation(line: 554, column: 15, scope: !404)
!456 = !DILocation(line: 554, column: 47, scope: !404)
!457 = !DILocation(line: 554, column: 32, scope: !404)
!458 = !DILocalVariable(name: "param_P3_limbs", scope: !404, file: !88, line: 555, type: !434)
!459 = !DILocation(line: 555, column: 15, scope: !404)
!460 = !DILocation(line: 555, column: 47, scope: !404)
!461 = !DILocation(line: 555, column: 32, scope: !404)
!462 = !DILocalVariable(name: "param_pk_seed_bytes", scope: !404, file: !88, line: 556, type: !434)
!463 = !DILocation(line: 556, column: 15, scope: !404)
!464 = !DILocation(line: 556, column: 57, scope: !404)
!465 = !DILocation(line: 556, column: 37, scope: !404)
!466 = !DILocalVariable(name: "param_sk_seed_bytes", scope: !404, file: !88, line: 557, type: !434)
!467 = !DILocation(line: 557, column: 15, scope: !404)
!468 = !DILocation(line: 557, column: 57, scope: !404)
!469 = !DILocation(line: 557, column: 37, scope: !404)
!470 = !DILocalVariable(name: "P1", scope: !404, file: !88, line: 559, type: !81)
!471 = !DILocation(line: 559, column: 15, scope: !404)
!472 = !DILocation(line: 559, column: 20, scope: !404)
!473 = !DILocalVariable(name: "P2", scope: !404, file: !88, line: 560, type: !81)
!474 = !DILocation(line: 560, column: 15, scope: !404)
!475 = !DILocation(line: 560, column: 20, scope: !404)
!476 = !DILocation(line: 560, column: 24, scope: !404)
!477 = !DILocation(line: 560, column: 22, scope: !404)
!478 = !DILocation(line: 566, column: 21, scope: !479)
!479 = distinct !DILexicalBlock(scope: !404, file: !88, line: 566, column: 9)
!480 = !DILocation(line: 566, column: 30, scope: !479)
!481 = !DILocation(line: 566, column: 9, scope: !479)
!482 = !DILocation(line: 566, column: 51, scope: !479)
!483 = !DILocation(line: 567, column: 13, scope: !484)
!484 = distinct !DILexicalBlock(scope: !479, file: !88, line: 566, column: 63)
!485 = !DILocation(line: 568, column: 9, scope: !484)
!486 = !DILocation(line: 573, column: 14, scope: !404)
!487 = !DILocation(line: 573, column: 17, scope: !404)
!488 = !DILocation(line: 573, column: 39, scope: !404)
!489 = !DILocation(line: 573, column: 37, scope: !404)
!490 = !DILocation(line: 573, column: 54, scope: !404)
!491 = !DILocation(line: 574, column: 14, scope: !404)
!492 = !DILocation(line: 573, column: 5, scope: !404)
!493 = !DILocation(line: 576, column: 15, scope: !404)
!494 = !DILocation(line: 576, column: 13, scope: !404)
!495 = !DILocation(line: 579, column: 12, scope: !404)
!496 = !DILocation(line: 579, column: 16, scope: !404)
!497 = !DILocation(line: 579, column: 14, scope: !404)
!498 = !DILocation(line: 579, column: 37, scope: !404)
!499 = !DILocation(line: 579, column: 40, scope: !404)
!500 = !DILocation(line: 579, column: 50, scope: !404)
!501 = !DILocation(line: 579, column: 48, scope: !404)
!502 = !DILocation(line: 579, column: 5, scope: !404)
!503 = !DILocation(line: 585, column: 18, scope: !404)
!504 = !DILocation(line: 585, column: 21, scope: !404)
!505 = !DILocation(line: 585, column: 24, scope: !404)
!506 = !DILocation(line: 585, column: 5, scope: !404)
!507 = !DILocation(line: 588, column: 16, scope: !404)
!508 = !DILocation(line: 588, column: 19, scope: !404)
!509 = !DILocation(line: 588, column: 23, scope: !404)
!510 = !DILocation(line: 588, column: 27, scope: !404)
!511 = !DILocation(line: 588, column: 30, scope: !404)
!512 = !DILocation(line: 588, column: 5, scope: !404)
!513 = !DILocation(line: 591, column: 12, scope: !404)
!514 = !DILocation(line: 591, column: 17, scope: !404)
!515 = !DILocation(line: 591, column: 26, scope: !404)
!516 = !DILocation(line: 591, column: 5, scope: !404)
!517 = !DILocalVariable(name: "P3_upper", scope: !404, file: !88, line: 593, type: !518)
!518 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 88128, elements: !519)
!519 = !{!520}
!520 = !DISubrange(count: 1377)
!521 = !DILocation(line: 593, column: 14, scope: !404)
!522 = !DILocation(line: 596, column: 13, scope: !404)
!523 = !DILocation(line: 596, column: 16, scope: !404)
!524 = !DILocation(line: 596, column: 20, scope: !404)
!525 = !DILocation(line: 596, column: 30, scope: !404)
!526 = !DILocation(line: 596, column: 5, scope: !404)
!527 = !DILocation(line: 597, column: 17, scope: !404)
!528 = !DILocation(line: 597, column: 27, scope: !404)
!529 = !DILocation(line: 597, column: 33, scope: !404)
!530 = !DILocation(line: 597, column: 31, scope: !404)
!531 = !DILocation(line: 597, column: 54, scope: !404)
!532 = !DILocation(line: 597, column: 69, scope: !404)
!533 = !DILocation(line: 597, column: 68, scope: !404)
!534 = !DILocation(line: 597, column: 82, scope: !404)
!535 = !DILocation(line: 597, column: 5, scope: !404)
!536 = !DILabel(scope: !404, name: "err", file: !88, line: 600, column: 5)
!537 = !DILocation(line: 600, column: 5, scope: !404)
!538 = !DILocation(line: 602, column: 23, scope: !404)
!539 = !DILocation(line: 602, column: 5, scope: !404)
!540 = !DILocation(line: 603, column: 23, scope: !404)
!541 = !DILocation(line: 603, column: 42, scope: !404)
!542 = !DILocation(line: 603, column: 27, scope: !404)
!543 = !DILocation(line: 603, column: 44, scope: !404)
!544 = !DILocation(line: 603, column: 5, scope: !404)
!545 = !DILocation(line: 604, column: 23, scope: !404)
!546 = !DILocation(line: 604, column: 5, scope: !404)
!547 = !DILocation(line: 605, column: 12, scope: !404)
!548 = !DILocation(line: 605, column: 5, scope: !404)
!549 = distinct !DISubprogram(name: "decode", scope: !88, file: !88, line: 20, type: !550, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !79, retainedNodes: !91)
!550 = !DISubroutineType(types: !551)
!551 = !{null, !60, !55, !51}
!552 = !DILocalVariable(name: "m", arg: 1, scope: !549, file: !88, line: 20, type: !60)
!553 = !DILocation(line: 20, column: 41, scope: !549)
!554 = !DILocalVariable(name: "mdec", arg: 2, scope: !549, file: !88, line: 20, type: !55)
!555 = !DILocation(line: 20, column: 59, scope: !549)
!556 = !DILocalVariable(name: "mdeclen", arg: 3, scope: !549, file: !88, line: 20, type: !51)
!557 = !DILocation(line: 20, column: 69, scope: !549)
!558 = !DILocalVariable(name: "i", scope: !549, file: !88, line: 21, type: !51)
!559 = !DILocation(line: 21, column: 9, scope: !549)
!560 = !DILocation(line: 22, column: 12, scope: !561)
!561 = distinct !DILexicalBlock(scope: !549, file: !88, line: 22, column: 5)
!562 = !DILocation(line: 22, column: 10, scope: !561)
!563 = !DILocation(line: 22, column: 17, scope: !564)
!564 = distinct !DILexicalBlock(scope: !561, file: !88, line: 22, column: 5)
!565 = !DILocation(line: 22, column: 21, scope: !564)
!566 = !DILocation(line: 22, column: 29, scope: !564)
!567 = !DILocation(line: 22, column: 19, scope: !564)
!568 = !DILocation(line: 22, column: 5, scope: !561)
!569 = !DILocation(line: 23, column: 19, scope: !570)
!570 = distinct !DILexicalBlock(scope: !564, file: !88, line: 22, column: 39)
!571 = !DILocation(line: 23, column: 21, scope: !570)
!572 = !DILocation(line: 23, column: 24, scope: !570)
!573 = !DILocation(line: 23, column: 14, scope: !570)
!574 = !DILocation(line: 23, column: 17, scope: !570)
!575 = !DILocation(line: 24, column: 19, scope: !570)
!576 = !DILocation(line: 24, column: 21, scope: !570)
!577 = !DILocation(line: 24, column: 24, scope: !570)
!578 = !DILocation(line: 24, column: 14, scope: !570)
!579 = !DILocation(line: 24, column: 17, scope: !570)
!580 = !DILocation(line: 25, column: 5, scope: !570)
!581 = !DILocation(line: 22, column: 34, scope: !564)
!582 = !DILocation(line: 22, column: 5, scope: !564)
!583 = distinct !{!583, !568, !584, !167}
!584 = !DILocation(line: 25, column: 5, scope: !561)
!585 = !DILocation(line: 27, column: 9, scope: !586)
!586 = distinct !DILexicalBlock(scope: !549, file: !88, line: 27, column: 9)
!587 = !DILocation(line: 27, column: 17, scope: !586)
!588 = !DILocation(line: 27, column: 21, scope: !586)
!589 = !DILocation(line: 28, column: 19, scope: !590)
!590 = distinct !DILexicalBlock(scope: !586, file: !88, line: 27, column: 27)
!591 = !DILocation(line: 28, column: 21, scope: !590)
!592 = !DILocation(line: 28, column: 24, scope: !590)
!593 = !DILocation(line: 28, column: 14, scope: !590)
!594 = !DILocation(line: 28, column: 17, scope: !590)
!595 = !DILocation(line: 29, column: 5, scope: !590)
!596 = !DILocation(line: 30, column: 1, scope: !549)
!597 = distinct !DISubprogram(name: "expand_P1_P2", scope: !88, file: !88, line: 280, type: !598, scopeLine: 280, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !79, retainedNodes: !91)
!598 = !DISubroutineType(types: !599)
!599 = !{null, !353, !81, !60}
!600 = !DILocalVariable(name: "p", arg: 1, scope: !597, file: !88, line: 280, type: !353)
!601 = !DILocation(line: 280, column: 47, scope: !597)
!602 = !DILocalVariable(name: "P", arg: 2, scope: !597, file: !88, line: 280, type: !81)
!603 = !DILocation(line: 280, column: 60, scope: !597)
!604 = !DILocalVariable(name: "seed_pk", arg: 3, scope: !597, file: !88, line: 280, type: !60)
!605 = !DILocation(line: 280, column: 84, scope: !597)
!606 = !DILocation(line: 284, column: 29, scope: !597)
!607 = !DILocation(line: 284, column: 47, scope: !597)
!608 = !DILocation(line: 284, column: 32, scope: !597)
!609 = !DILocation(line: 284, column: 67, scope: !597)
!610 = !DILocation(line: 284, column: 52, scope: !597)
!611 = !DILocation(line: 284, column: 50, scope: !597)
!612 = !DILocation(line: 284, column: 71, scope: !597)
!613 = !DILocation(line: 284, column: 100, scope: !597)
!614 = !DILocation(line: 284, column: 80, scope: !597)
!615 = !DILocation(line: 284, column: 5, scope: !597)
!616 = !DILocation(line: 285, column: 36, scope: !597)
!617 = !DILocation(line: 285, column: 39, scope: !597)
!618 = !DILocation(line: 285, column: 58, scope: !597)
!619 = !DILocation(line: 285, column: 43, scope: !597)
!620 = !DILocation(line: 285, column: 78, scope: !597)
!621 = !DILocation(line: 285, column: 63, scope: !597)
!622 = !DILocation(line: 285, column: 61, scope: !597)
!623 = !DILocation(line: 285, column: 100, scope: !597)
!624 = !DILocation(line: 285, column: 82, scope: !597)
!625 = !DILocation(line: 285, column: 81, scope: !597)
!626 = !DILocation(line: 285, column: 112, scope: !597)
!627 = !DILocation(line: 285, column: 104, scope: !597)
!628 = !DILocation(line: 285, column: 5, scope: !597)
!629 = !DILocation(line: 286, column: 1, scope: !597)
!630 = distinct !DISubprogram(name: "compute_P3", scope: !631, file: !631, line: 260, type: !632, scopeLine: 260, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !79, retainedNodes: !91)
!631 = !DIFile(filename: "../../../src/generic/generic_arithmetic.h", directory: "")
!632 = !DISubroutineType(types: !633)
!633 = !{null, !353, !634, !81, !60, !81}
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 32)
!635 = !DILocalVariable(name: "p", arg: 1, scope: !630, file: !631, line: 260, type: !353)
!636 = !DILocation(line: 260, column: 38, scope: !630)
!637 = !DILocalVariable(name: "P1", arg: 2, scope: !630, file: !631, line: 260, type: !634)
!638 = !DILocation(line: 260, column: 57, scope: !630)
!639 = !DILocalVariable(name: "P2", arg: 3, scope: !630, file: !631, line: 260, type: !81)
!640 = !DILocation(line: 260, column: 71, scope: !630)
!641 = !DILocalVariable(name: "O", arg: 4, scope: !630, file: !631, line: 260, type: !60)
!642 = !DILocation(line: 260, column: 96, scope: !630)
!643 = !DILocalVariable(name: "P3", arg: 5, scope: !630, file: !631, line: 260, type: !81)
!644 = !DILocation(line: 260, column: 109, scope: !630)
!645 = !DILocalVariable(name: "m_vec_limbs", scope: !630, file: !631, line: 262, type: !434)
!646 = !DILocation(line: 262, column: 15, scope: !630)
!647 = !DILocation(line: 262, column: 47, scope: !630)
!648 = !DILocation(line: 262, column: 29, scope: !630)
!649 = !DILocalVariable(name: "param_v", scope: !630, file: !631, line: 263, type: !434)
!650 = !DILocation(line: 263, column: 15, scope: !630)
!651 = !DILocation(line: 263, column: 33, scope: !630)
!652 = !DILocation(line: 263, column: 25, scope: !630)
!653 = !DILocalVariable(name: "param_o", scope: !630, file: !631, line: 264, type: !434)
!654 = !DILocation(line: 264, column: 15, scope: !630)
!655 = !DILocation(line: 264, column: 33, scope: !630)
!656 = !DILocation(line: 264, column: 25, scope: !630)
!657 = !DILocation(line: 267, column: 16, scope: !630)
!658 = !DILocation(line: 267, column: 19, scope: !630)
!659 = !DILocation(line: 267, column: 23, scope: !630)
!660 = !DILocation(line: 267, column: 26, scope: !630)
!661 = !DILocation(line: 267, column: 5, scope: !630)
!662 = !DILocation(line: 270, column: 31, scope: !630)
!663 = !DILocation(line: 270, column: 44, scope: !630)
!664 = !DILocation(line: 270, column: 47, scope: !630)
!665 = !DILocation(line: 270, column: 51, scope: !630)
!666 = !DILocation(line: 270, column: 55, scope: !630)
!667 = !DILocation(line: 270, column: 64, scope: !630)
!668 = !DILocation(line: 270, column: 73, scope: !630)
!669 = !DILocation(line: 270, column: 5, scope: !630)
!670 = !DILocation(line: 271, column: 1, scope: !630)
!671 = distinct !DISubprogram(name: "pack_m_vecs", scope: !88, file: !88, line: 272, type: !672, scopeLine: 272, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !79, retainedNodes: !91)
!672 = !DISubroutineType(types: !673)
!673 = !{null, !634, !55, !51, !51}
!674 = !DILocalVariable(name: "in", arg: 1, scope: !671, file: !88, line: 272, type: !634)
!675 = !DILocation(line: 272, column: 41, scope: !671)
!676 = !DILocalVariable(name: "out", arg: 2, scope: !671, file: !88, line: 272, type: !55)
!677 = !DILocation(line: 272, column: 60, scope: !671)
!678 = !DILocalVariable(name: "vecs", arg: 3, scope: !671, file: !88, line: 272, type: !51)
!679 = !DILocation(line: 272, column: 69, scope: !671)
!680 = !DILocalVariable(name: "m", arg: 4, scope: !671, file: !88, line: 272, type: !51)
!681 = !DILocation(line: 272, column: 79, scope: !671)
!682 = !DILocalVariable(name: "m_vec_limbs", scope: !671, file: !88, line: 273, type: !434)
!683 = !DILocation(line: 273, column: 15, scope: !671)
!684 = !DILocation(line: 273, column: 30, scope: !671)
!685 = !DILocation(line: 273, column: 32, scope: !671)
!686 = !DILocation(line: 273, column: 38, scope: !671)
!687 = !DILocalVariable(name: "_in", scope: !671, file: !88, line: 274, type: !55)
!688 = !DILocation(line: 274, column: 20, scope: !671)
!689 = !DILocation(line: 274, column: 44, scope: !671)
!690 = !DILocalVariable(name: "i", scope: !691, file: !88, line: 275, type: !51)
!691 = distinct !DILexicalBlock(scope: !671, file: !88, line: 275, column: 5)
!692 = !DILocation(line: 275, column: 14, scope: !691)
!693 = !DILocation(line: 275, column: 10, scope: !691)
!694 = !DILocation(line: 275, column: 21, scope: !695)
!695 = distinct !DILexicalBlock(scope: !691, file: !88, line: 275, column: 5)
!696 = !DILocation(line: 275, column: 25, scope: !695)
!697 = !DILocation(line: 275, column: 23, scope: !695)
!698 = !DILocation(line: 275, column: 5, scope: !691)
!699 = !DILocation(line: 277, column: 17, scope: !700)
!700 = distinct !DILexicalBlock(scope: !695, file: !88, line: 276, column: 5)
!701 = !DILocation(line: 277, column: 24, scope: !700)
!702 = !DILocation(line: 277, column: 26, scope: !700)
!703 = !DILocation(line: 277, column: 25, scope: !700)
!704 = !DILocation(line: 277, column: 27, scope: !700)
!705 = !DILocation(line: 277, column: 21, scope: !700)
!706 = !DILocation(line: 277, column: 32, scope: !700)
!707 = !DILocation(line: 277, column: 38, scope: !700)
!708 = !DILocation(line: 277, column: 40, scope: !700)
!709 = !DILocation(line: 277, column: 39, scope: !700)
!710 = !DILocation(line: 277, column: 51, scope: !700)
!711 = !DILocation(line: 277, column: 36, scope: !700)
!712 = !DILocation(line: 277, column: 70, scope: !700)
!713 = !DILocation(line: 277, column: 71, scope: !700)
!714 = !DILocation(line: 277, column: 9, scope: !700)
!715 = !DILocation(line: 278, column: 5, scope: !700)
!716 = !DILocation(line: 275, column: 32, scope: !695)
!717 = !DILocation(line: 275, column: 5, scope: !695)
!718 = distinct !{!718, !698, !719, !167}
!719 = !DILocation(line: 278, column: 5, scope: !691)
!720 = !DILocation(line: 279, column: 1, scope: !671)
!721 = distinct !DISubprogram(name: "P1_times_O", scope: !631, file: !631, line: 74, type: !722, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !79, retainedNodes: !91)
!722 = !DISubroutineType(types: !723)
!723 = !{null, !353, !634, !60, !81}
!724 = !DILocalVariable(name: "p", arg: 1, scope: !721, file: !631, line: 74, type: !353)
!725 = !DILocation(line: 74, column: 38, scope: !721)
!726 = !DILocalVariable(name: "P1", arg: 2, scope: !721, file: !631, line: 74, type: !634)
!727 = !DILocation(line: 74, column: 57, scope: !721)
!728 = !DILocalVariable(name: "O", arg: 3, scope: !721, file: !631, line: 74, type: !60)
!729 = !DILocation(line: 74, column: 82, scope: !721)
!730 = !DILocalVariable(name: "acc", arg: 4, scope: !721, file: !631, line: 74, type: !81)
!731 = !DILocation(line: 74, column: 95, scope: !721)
!732 = !DILocation(line: 78, column: 60, scope: !721)
!733 = !DILocation(line: 78, column: 42, scope: !721)
!734 = !DILocation(line: 78, column: 64, scope: !721)
!735 = !DILocation(line: 78, column: 68, scope: !721)
!736 = !DILocation(line: 78, column: 71, scope: !721)
!737 = !DILocation(line: 78, column: 84, scope: !721)
!738 = !DILocation(line: 78, column: 76, scope: !721)
!739 = !DILocation(line: 78, column: 96, scope: !721)
!740 = !DILocation(line: 78, column: 88, scope: !721)
!741 = !DILocation(line: 78, column: 108, scope: !721)
!742 = !DILocation(line: 78, column: 100, scope: !721)
!743 = !DILocation(line: 78, column: 5, scope: !721)
!744 = !DILocation(line: 79, column: 1, scope: !721)
!745 = distinct !DISubprogram(name: "mul_add_mat_trans_x_m_mat", scope: !631, file: !631, line: 47, type: !746, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !79, retainedNodes: !91)
!746 = !DISubroutineType(types: !747)
!747 = !{null, !434, !60, !634, !81, !434, !434, !434}
!748 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !745, file: !631, line: 47, type: !434)
!749 = !DILocation(line: 47, column: 42, scope: !745)
!750 = !DILocalVariable(name: "mat", arg: 2, scope: !745, file: !631, line: 47, type: !60)
!751 = !DILocation(line: 47, column: 76, scope: !745)
!752 = !DILocalVariable(name: "bs_mat", arg: 3, scope: !745, file: !631, line: 47, type: !634)
!753 = !DILocation(line: 47, column: 97, scope: !745)
!754 = !DILocalVariable(name: "acc", arg: 4, scope: !745, file: !631, line: 47, type: !81)
!755 = !DILocation(line: 47, column: 115, scope: !745)
!756 = !DILocalVariable(name: "mat_rows", arg: 5, scope: !745, file: !631, line: 48, type: !434)
!757 = !DILocation(line: 48, column: 42, scope: !745)
!758 = !DILocalVariable(name: "mat_cols", arg: 6, scope: !745, file: !631, line: 48, type: !434)
!759 = !DILocation(line: 48, column: 62, scope: !745)
!760 = !DILocalVariable(name: "bs_mat_cols", arg: 7, scope: !745, file: !631, line: 48, type: !434)
!761 = !DILocation(line: 48, column: 82, scope: !745)
!762 = !DILocalVariable(name: "r", scope: !763, file: !631, line: 50, type: !51)
!763 = distinct !DILexicalBlock(scope: !745, file: !631, line: 50, column: 5)
!764 = !DILocation(line: 50, column: 14, scope: !763)
!765 = !DILocation(line: 50, column: 10, scope: !763)
!766 = !DILocation(line: 50, column: 21, scope: !767)
!767 = distinct !DILexicalBlock(scope: !763, file: !631, line: 50, column: 5)
!768 = !DILocation(line: 50, column: 25, scope: !767)
!769 = !DILocation(line: 50, column: 23, scope: !767)
!770 = !DILocation(line: 50, column: 5, scope: !763)
!771 = !DILocalVariable(name: "c", scope: !772, file: !631, line: 51, type: !51)
!772 = distinct !DILexicalBlock(scope: !773, file: !631, line: 51, column: 9)
!773 = distinct !DILexicalBlock(scope: !767, file: !631, line: 50, column: 40)
!774 = !DILocation(line: 51, column: 18, scope: !772)
!775 = !DILocation(line: 51, column: 14, scope: !772)
!776 = !DILocation(line: 51, column: 25, scope: !777)
!777 = distinct !DILexicalBlock(scope: !772, file: !631, line: 51, column: 9)
!778 = !DILocation(line: 51, column: 29, scope: !777)
!779 = !DILocation(line: 51, column: 27, scope: !777)
!780 = !DILocation(line: 51, column: 9, scope: !772)
!781 = !DILocalVariable(name: "k", scope: !782, file: !631, line: 52, type: !51)
!782 = distinct !DILexicalBlock(scope: !783, file: !631, line: 52, column: 13)
!783 = distinct !DILexicalBlock(scope: !777, file: !631, line: 51, column: 44)
!784 = !DILocation(line: 52, column: 22, scope: !782)
!785 = !DILocation(line: 52, column: 18, scope: !782)
!786 = !DILocation(line: 52, column: 29, scope: !787)
!787 = distinct !DILexicalBlock(scope: !782, file: !631, line: 52, column: 13)
!788 = !DILocation(line: 52, column: 33, scope: !787)
!789 = !DILocation(line: 52, column: 31, scope: !787)
!790 = !DILocation(line: 52, column: 13, scope: !782)
!791 = !DILocation(line: 53, column: 31, scope: !792)
!792 = distinct !DILexicalBlock(scope: !787, file: !631, line: 52, column: 54)
!793 = !DILocation(line: 53, column: 44, scope: !792)
!794 = !DILocation(line: 53, column: 53, scope: !792)
!795 = !DILocation(line: 53, column: 68, scope: !792)
!796 = !DILocation(line: 53, column: 72, scope: !792)
!797 = !DILocation(line: 53, column: 70, scope: !792)
!798 = !DILocation(line: 53, column: 86, scope: !792)
!799 = !DILocation(line: 53, column: 84, scope: !792)
!800 = !DILocation(line: 53, column: 65, scope: !792)
!801 = !DILocation(line: 53, column: 51, scope: !792)
!802 = !DILocation(line: 53, column: 90, scope: !792)
!803 = !DILocation(line: 53, column: 94, scope: !792)
!804 = !DILocation(line: 53, column: 98, scope: !792)
!805 = !DILocation(line: 53, column: 96, scope: !792)
!806 = !DILocation(line: 53, column: 109, scope: !792)
!807 = !DILocation(line: 53, column: 107, scope: !792)
!808 = !DILocation(line: 53, column: 113, scope: !792)
!809 = !DILocation(line: 53, column: 119, scope: !792)
!810 = !DILocation(line: 53, column: 134, scope: !792)
!811 = !DILocation(line: 53, column: 138, scope: !792)
!812 = !DILocation(line: 53, column: 136, scope: !792)
!813 = !DILocation(line: 53, column: 152, scope: !792)
!814 = !DILocation(line: 53, column: 150, scope: !792)
!815 = !DILocation(line: 53, column: 131, scope: !792)
!816 = !DILocation(line: 53, column: 117, scope: !792)
!817 = !DILocation(line: 53, column: 17, scope: !792)
!818 = !DILocation(line: 54, column: 13, scope: !792)
!819 = !DILocation(line: 52, column: 48, scope: !787)
!820 = !DILocation(line: 52, column: 13, scope: !787)
!821 = distinct !{!821, !790, !822, !167}
!822 = !DILocation(line: 54, column: 13, scope: !782)
!823 = !DILocation(line: 55, column: 9, scope: !783)
!824 = !DILocation(line: 51, column: 40, scope: !777)
!825 = !DILocation(line: 51, column: 9, scope: !777)
!826 = distinct !{!826, !780, !827, !167}
!827 = !DILocation(line: 55, column: 9, scope: !772)
!828 = !DILocation(line: 56, column: 5, scope: !773)
!829 = !DILocation(line: 50, column: 36, scope: !767)
!830 = !DILocation(line: 50, column: 5, scope: !767)
!831 = distinct !{!831, !770, !832, !167}
!832 = !DILocation(line: 56, column: 5, scope: !763)
!833 = !DILocation(line: 57, column: 1, scope: !745)
!834 = distinct !DISubprogram(name: "m_vec_mul_add", scope: !835, file: !835, line: 24, type: !836, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !79, retainedNodes: !91)
!835 = !DIFile(filename: "../../../src/generic/arithmetic_dynamic.h", directory: "")
!836 = !DISubroutineType(types: !837)
!837 = !{null, !51, !634, !56, !81}
!838 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !834, file: !835, line: 24, type: !51)
!839 = !DILocation(line: 24, column: 24, scope: !834)
!840 = !DILocalVariable(name: "in", arg: 2, scope: !834, file: !835, line: 24, type: !634)
!841 = !DILocation(line: 24, column: 53, scope: !834)
!842 = !DILocalVariable(name: "a", arg: 3, scope: !834, file: !835, line: 24, type: !56)
!843 = !DILocation(line: 24, column: 71, scope: !834)
!844 = !DILocalVariable(name: "acc", arg: 4, scope: !834, file: !835, line: 24, type: !81)
!845 = !DILocation(line: 24, column: 84, scope: !834)
!846 = !DILocalVariable(name: "i", scope: !847, file: !835, line: 25, type: !51)
!847 = distinct !DILexicalBlock(scope: !834, file: !835, line: 25, column: 5)
!848 = !DILocation(line: 25, column: 13, scope: !847)
!849 = !DILocation(line: 25, column: 9, scope: !847)
!850 = !DILocation(line: 25, column: 18, scope: !851)
!851 = distinct !DILexicalBlock(scope: !847, file: !835, line: 25, column: 5)
!852 = !DILocation(line: 25, column: 22, scope: !851)
!853 = !DILocation(line: 25, column: 20, scope: !851)
!854 = !DILocation(line: 25, column: 5, scope: !847)
!855 = !DILocation(line: 26, column: 33, scope: !856)
!856 = distinct !DILexicalBlock(scope: !851, file: !835, line: 25, column: 39)
!857 = !DILocation(line: 26, column: 36, scope: !856)
!858 = !DILocation(line: 26, column: 40, scope: !856)
!859 = !DILocation(line: 26, column: 19, scope: !856)
!860 = !DILocation(line: 26, column: 9, scope: !856)
!861 = !DILocation(line: 26, column: 13, scope: !856)
!862 = !DILocation(line: 26, column: 16, scope: !856)
!863 = !DILocation(line: 27, column: 5, scope: !856)
!864 = !DILocation(line: 25, column: 36, scope: !851)
!865 = !DILocation(line: 25, column: 5, scope: !851)
!866 = distinct !{!866, !854, !867, !167}
!867 = !DILocation(line: 27, column: 5, scope: !847)
!868 = !DILocation(line: 28, column: 1, scope: !834)
!869 = distinct !DISubprogram(name: "gf16v_mul_u64", scope: !870, file: !870, line: 96, type: !871, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !79, retainedNodes: !91)
!870 = !DIFile(filename: "../../../src/simple_arithmetic.h", directory: "")
!871 = !DISubroutineType(types: !872)
!872 = !{!46, !46, !206}
!873 = !DILocalVariable(name: "a", arg: 1, scope: !869, file: !870, line: 96, type: !46)
!874 = !DILocation(line: 96, column: 48, scope: !869)
!875 = !DILocalVariable(name: "b", arg: 2, scope: !869, file: !870, line: 96, type: !206)
!876 = !DILocation(line: 96, column: 59, scope: !869)
!877 = !DILocalVariable(name: "mask_msb", scope: !869, file: !870, line: 97, type: !46)
!878 = !DILocation(line: 97, column: 14, scope: !869)
!879 = !DILocalVariable(name: "a_msb", scope: !869, file: !870, line: 98, type: !46)
!880 = !DILocation(line: 98, column: 14, scope: !869)
!881 = !DILocalVariable(name: "a64", scope: !869, file: !870, line: 99, type: !46)
!882 = !DILocation(line: 99, column: 14, scope: !869)
!883 = !DILocation(line: 99, column: 20, scope: !869)
!884 = !DILocalVariable(name: "b32", scope: !869, file: !870, line: 101, type: !46)
!885 = !DILocation(line: 101, column: 14, scope: !869)
!886 = !DILocation(line: 101, column: 20, scope: !869)
!887 = !DILocation(line: 101, column: 24, scope: !869)
!888 = !DILocation(line: 101, column: 22, scope: !869)
!889 = !DILocalVariable(name: "r64", scope: !869, file: !870, line: 105, type: !46)
!890 = !DILocation(line: 105, column: 14, scope: !869)
!891 = !DILocation(line: 105, column: 20, scope: !869)
!892 = !DILocation(line: 105, column: 27, scope: !869)
!893 = !DILocation(line: 105, column: 31, scope: !869)
!894 = !DILocation(line: 105, column: 24, scope: !869)
!895 = !DILocation(line: 107, column: 13, scope: !869)
!896 = !DILocation(line: 107, column: 19, scope: !869)
!897 = !DILocation(line: 107, column: 17, scope: !869)
!898 = !DILocation(line: 107, column: 11, scope: !869)
!899 = !DILocation(line: 108, column: 12, scope: !869)
!900 = !DILocation(line: 108, column: 9, scope: !869)
!901 = !DILocation(line: 109, column: 12, scope: !869)
!902 = !DILocation(line: 109, column: 16, scope: !869)
!903 = !DILocation(line: 109, column: 26, scope: !869)
!904 = !DILocation(line: 109, column: 32, scope: !869)
!905 = !DILocation(line: 109, column: 38, scope: !869)
!906 = !DILocation(line: 109, column: 22, scope: !869)
!907 = !DILocation(line: 109, column: 9, scope: !869)
!908 = !DILocation(line: 110, column: 13, scope: !869)
!909 = !DILocation(line: 110, column: 22, scope: !869)
!910 = !DILocation(line: 110, column: 26, scope: !869)
!911 = !DILocation(line: 110, column: 32, scope: !869)
!912 = !DILocation(line: 110, column: 18, scope: !869)
!913 = !DILocation(line: 110, column: 9, scope: !869)
!914 = !DILocation(line: 112, column: 13, scope: !869)
!915 = !DILocation(line: 112, column: 19, scope: !869)
!916 = !DILocation(line: 112, column: 17, scope: !869)
!917 = !DILocation(line: 112, column: 11, scope: !869)
!918 = !DILocation(line: 113, column: 12, scope: !869)
!919 = !DILocation(line: 113, column: 9, scope: !869)
!920 = !DILocation(line: 114, column: 12, scope: !869)
!921 = !DILocation(line: 114, column: 16, scope: !869)
!922 = !DILocation(line: 114, column: 26, scope: !869)
!923 = !DILocation(line: 114, column: 32, scope: !869)
!924 = !DILocation(line: 114, column: 38, scope: !869)
!925 = !DILocation(line: 114, column: 22, scope: !869)
!926 = !DILocation(line: 114, column: 9, scope: !869)
!927 = !DILocation(line: 115, column: 13, scope: !869)
!928 = !DILocation(line: 115, column: 22, scope: !869)
!929 = !DILocation(line: 115, column: 26, scope: !869)
!930 = !DILocation(line: 115, column: 32, scope: !869)
!931 = !DILocation(line: 115, column: 18, scope: !869)
!932 = !DILocation(line: 115, column: 9, scope: !869)
!933 = !DILocation(line: 117, column: 13, scope: !869)
!934 = !DILocation(line: 117, column: 19, scope: !869)
!935 = !DILocation(line: 117, column: 17, scope: !869)
!936 = !DILocation(line: 117, column: 11, scope: !869)
!937 = !DILocation(line: 118, column: 12, scope: !869)
!938 = !DILocation(line: 118, column: 9, scope: !869)
!939 = !DILocation(line: 119, column: 12, scope: !869)
!940 = !DILocation(line: 119, column: 16, scope: !869)
!941 = !DILocation(line: 119, column: 26, scope: !869)
!942 = !DILocation(line: 119, column: 32, scope: !869)
!943 = !DILocation(line: 119, column: 38, scope: !869)
!944 = !DILocation(line: 119, column: 22, scope: !869)
!945 = !DILocation(line: 119, column: 9, scope: !869)
!946 = !DILocation(line: 120, column: 13, scope: !869)
!947 = !DILocation(line: 120, column: 22, scope: !869)
!948 = !DILocation(line: 120, column: 26, scope: !869)
!949 = !DILocation(line: 120, column: 32, scope: !869)
!950 = !DILocation(line: 120, column: 18, scope: !869)
!951 = !DILocation(line: 120, column: 9, scope: !869)
!952 = !DILocation(line: 122, column: 12, scope: !869)
!953 = !DILocation(line: 122, column: 5, scope: !869)
!954 = distinct !DISubprogram(name: "mul_add_m_upper_triangular_mat_x_mat", scope: !631, file: !631, line: 16, type: !955, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !79, retainedNodes: !91)
!955 = !DISubroutineType(types: !956)
!956 = !{null, !434, !634, !60, !81, !434, !434, !434, !434}
!957 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !954, file: !631, line: 16, type: !434)
!958 = !DILocation(line: 16, column: 53, scope: !954)
!959 = !DILocalVariable(name: "bs_mat", arg: 2, scope: !954, file: !631, line: 16, type: !634)
!960 = !DILocation(line: 16, column: 82, scope: !954)
!961 = !DILocalVariable(name: "mat", arg: 3, scope: !954, file: !631, line: 16, type: !60)
!962 = !DILocation(line: 16, column: 111, scope: !954)
!963 = !DILocalVariable(name: "acc", arg: 4, scope: !954, file: !631, line: 16, type: !81)
!964 = !DILocation(line: 16, column: 126, scope: !954)
!965 = !DILocalVariable(name: "bs_mat_rows", arg: 5, scope: !954, file: !631, line: 17, type: !434)
!966 = !DILocation(line: 17, column: 53, scope: !954)
!967 = !DILocalVariable(name: "bs_mat_cols", arg: 6, scope: !954, file: !631, line: 17, type: !434)
!968 = !DILocation(line: 17, column: 76, scope: !954)
!969 = !DILocalVariable(name: "mat_cols", arg: 7, scope: !954, file: !631, line: 17, type: !434)
!970 = !DILocation(line: 17, column: 99, scope: !954)
!971 = !DILocalVariable(name: "triangular", arg: 8, scope: !954, file: !631, line: 17, type: !434)
!972 = !DILocation(line: 17, column: 119, scope: !954)
!973 = !DILocalVariable(name: "bs_mat_entries_used", scope: !954, file: !631, line: 19, type: !51)
!974 = !DILocation(line: 19, column: 9, scope: !954)
!975 = !DILocalVariable(name: "r", scope: !976, file: !631, line: 20, type: !51)
!976 = distinct !DILexicalBlock(scope: !954, file: !631, line: 20, column: 5)
!977 = !DILocation(line: 20, column: 14, scope: !976)
!978 = !DILocation(line: 20, column: 10, scope: !976)
!979 = !DILocation(line: 20, column: 21, scope: !980)
!980 = distinct !DILexicalBlock(scope: !976, file: !631, line: 20, column: 5)
!981 = !DILocation(line: 20, column: 25, scope: !980)
!982 = !DILocation(line: 20, column: 23, scope: !980)
!983 = !DILocation(line: 20, column: 5, scope: !976)
!984 = !DILocalVariable(name: "c", scope: !985, file: !631, line: 21, type: !51)
!985 = distinct !DILexicalBlock(scope: !986, file: !631, line: 21, column: 9)
!986 = distinct !DILexicalBlock(scope: !980, file: !631, line: 20, column: 43)
!987 = !DILocation(line: 21, column: 18, scope: !985)
!988 = !DILocation(line: 21, column: 22, scope: !985)
!989 = !DILocation(line: 21, column: 35, scope: !985)
!990 = !DILocation(line: 21, column: 33, scope: !985)
!991 = !DILocation(line: 21, column: 14, scope: !985)
!992 = !DILocation(line: 21, column: 38, scope: !993)
!993 = distinct !DILexicalBlock(scope: !985, file: !631, line: 21, column: 9)
!994 = !DILocation(line: 21, column: 42, scope: !993)
!995 = !DILocation(line: 21, column: 40, scope: !993)
!996 = !DILocation(line: 21, column: 9, scope: !985)
!997 = !DILocalVariable(name: "k", scope: !998, file: !631, line: 22, type: !51)
!998 = distinct !DILexicalBlock(scope: !999, file: !631, line: 22, column: 13)
!999 = distinct !DILexicalBlock(scope: !993, file: !631, line: 21, column: 60)
!1000 = !DILocation(line: 22, column: 22, scope: !998)
!1001 = !DILocation(line: 22, column: 18, scope: !998)
!1002 = !DILocation(line: 22, column: 29, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !998, file: !631, line: 22, column: 13)
!1004 = !DILocation(line: 22, column: 33, scope: !1003)
!1005 = !DILocation(line: 22, column: 31, scope: !1003)
!1006 = !DILocation(line: 22, column: 13, scope: !998)
!1007 = !DILocation(line: 23, column: 31, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !1003, file: !631, line: 22, column: 51)
!1009 = !DILocation(line: 23, column: 44, scope: !1008)
!1010 = !DILocation(line: 23, column: 53, scope: !1008)
!1011 = !DILocation(line: 23, column: 67, scope: !1008)
!1012 = !DILocation(line: 23, column: 65, scope: !1008)
!1013 = !DILocation(line: 23, column: 51, scope: !1008)
!1014 = !DILocation(line: 23, column: 88, scope: !1008)
!1015 = !DILocation(line: 23, column: 92, scope: !1008)
!1016 = !DILocation(line: 23, column: 96, scope: !1008)
!1017 = !DILocation(line: 23, column: 94, scope: !1008)
!1018 = !DILocation(line: 23, column: 107, scope: !1008)
!1019 = !DILocation(line: 23, column: 105, scope: !1008)
!1020 = !DILocation(line: 23, column: 111, scope: !1008)
!1021 = !DILocation(line: 23, column: 117, scope: !1008)
!1022 = !DILocation(line: 23, column: 132, scope: !1008)
!1023 = !DILocation(line: 23, column: 136, scope: !1008)
!1024 = !DILocation(line: 23, column: 134, scope: !1008)
!1025 = !DILocation(line: 23, column: 147, scope: !1008)
!1026 = !DILocation(line: 23, column: 145, scope: !1008)
!1027 = !DILocation(line: 23, column: 129, scope: !1008)
!1028 = !DILocation(line: 23, column: 115, scope: !1008)
!1029 = !DILocation(line: 23, column: 17, scope: !1008)
!1030 = !DILocation(line: 24, column: 13, scope: !1008)
!1031 = !DILocation(line: 22, column: 45, scope: !1003)
!1032 = !DILocation(line: 22, column: 13, scope: !1003)
!1033 = distinct !{!1033, !1006, !1034, !167}
!1034 = !DILocation(line: 24, column: 13, scope: !998)
!1035 = !DILocation(line: 25, column: 33, scope: !999)
!1036 = !DILocation(line: 26, column: 9, scope: !999)
!1037 = !DILocation(line: 21, column: 56, scope: !993)
!1038 = !DILocation(line: 21, column: 9, scope: !993)
!1039 = distinct !{!1039, !996, !1040, !167}
!1040 = !DILocation(line: 26, column: 9, scope: !985)
!1041 = !DILocation(line: 27, column: 5, scope: !986)
!1042 = !DILocation(line: 20, column: 39, scope: !980)
!1043 = !DILocation(line: 20, column: 5, scope: !980)
!1044 = distinct !{!1044, !983, !1045, !167}
!1045 = !DILocation(line: 27, column: 5, scope: !976)
!1046 = !DILocation(line: 28, column: 1, scope: !954)
!1047 = distinct !DISubprogram(name: "unpack_m_vecs", scope: !88, file: !88, line: 262, type: !1048, scopeLine: 262, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !79, retainedNodes: !91)
!1048 = !DISubroutineType(types: !1049)
!1049 = !{null, !60, !81, !51, !51}
!1050 = !DILocalVariable(name: "in", arg: 1, scope: !1047, file: !88, line: 262, type: !60)
!1051 = !DILocation(line: 262, column: 48, scope: !1047)
!1052 = !DILocalVariable(name: "out", arg: 2, scope: !1047, file: !88, line: 262, type: !81)
!1053 = !DILocation(line: 262, column: 62, scope: !1047)
!1054 = !DILocalVariable(name: "vecs", arg: 3, scope: !1047, file: !88, line: 262, type: !51)
!1055 = !DILocation(line: 262, column: 71, scope: !1047)
!1056 = !DILocalVariable(name: "m", arg: 4, scope: !1047, file: !88, line: 262, type: !51)
!1057 = !DILocation(line: 262, column: 81, scope: !1047)
!1058 = !DILocalVariable(name: "m_vec_limbs", scope: !1047, file: !88, line: 263, type: !434)
!1059 = !DILocation(line: 263, column: 15, scope: !1047)
!1060 = !DILocation(line: 263, column: 30, scope: !1047)
!1061 = !DILocation(line: 263, column: 32, scope: !1047)
!1062 = !DILocation(line: 263, column: 38, scope: !1047)
!1063 = !DILocalVariable(name: "_out", scope: !1047, file: !88, line: 264, type: !55)
!1064 = !DILocation(line: 264, column: 20, scope: !1047)
!1065 = !DILocation(line: 264, column: 45, scope: !1047)
!1066 = !DILocalVariable(name: "tmp", scope: !1047, file: !88, line: 265, type: !1067)
!1067 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 576, elements: !1068)
!1068 = !{!1069}
!1069 = !DISubrange(count: 9)
!1070 = !DILocation(line: 265, column: 14, scope: !1047)
!1071 = !DILocalVariable(name: "i", scope: !1072, file: !88, line: 266, type: !51)
!1072 = distinct !DILexicalBlock(scope: !1047, file: !88, line: 266, column: 5)
!1073 = !DILocation(line: 266, column: 14, scope: !1072)
!1074 = !DILocation(line: 266, column: 18, scope: !1072)
!1075 = !DILocation(line: 266, column: 22, scope: !1072)
!1076 = !DILocation(line: 266, column: 10, scope: !1072)
!1077 = !DILocation(line: 266, column: 26, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1072, file: !88, line: 266, column: 5)
!1079 = !DILocation(line: 266, column: 28, scope: !1078)
!1080 = !DILocation(line: 266, column: 5, scope: !1072)
!1081 = !DILocation(line: 268, column: 16, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1078, file: !88, line: 267, column: 5)
!1083 = !DILocation(line: 268, column: 21, scope: !1082)
!1084 = !DILocation(line: 268, column: 26, scope: !1082)
!1085 = !DILocation(line: 268, column: 28, scope: !1082)
!1086 = !DILocation(line: 268, column: 27, scope: !1082)
!1087 = !DILocation(line: 268, column: 29, scope: !1082)
!1088 = !DILocation(line: 268, column: 24, scope: !1082)
!1089 = !DILocation(line: 268, column: 33, scope: !1082)
!1090 = !DILocation(line: 268, column: 34, scope: !1082)
!1091 = !DILocation(line: 268, column: 9, scope: !1082)
!1092 = !DILocation(line: 269, column: 16, scope: !1082)
!1093 = !DILocation(line: 269, column: 23, scope: !1082)
!1094 = !DILocation(line: 269, column: 25, scope: !1082)
!1095 = !DILocation(line: 269, column: 24, scope: !1082)
!1096 = !DILocation(line: 269, column: 36, scope: !1082)
!1097 = !DILocation(line: 269, column: 21, scope: !1082)
!1098 = !DILocation(line: 269, column: 55, scope: !1082)
!1099 = !DILocation(line: 269, column: 60, scope: !1082)
!1100 = !DILocation(line: 269, column: 71, scope: !1082)
!1101 = !DILocation(line: 269, column: 9, scope: !1082)
!1102 = !DILocation(line: 270, column: 5, scope: !1082)
!1103 = !DILocation(line: 266, column: 35, scope: !1078)
!1104 = !DILocation(line: 266, column: 5, scope: !1078)
!1105 = distinct !{!1105, !1080, !1106, !167}
!1106 = !DILocation(line: 270, column: 5, scope: !1072)
!1107 = !DILocation(line: 271, column: 1, scope: !1047)
!1108 = distinct !DISubprogram(name: "mayo_expand_sk", scope: !88, file: !88, line: 310, type: !1109, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !79, retainedNodes: !91)
!1109 = !DISubroutineType(types: !1110)
!1110 = !{!51, !353, !60, !1111}
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 32)
!1112 = !DIDerivedType(tag: DW_TAG_typedef, name: "sk_t", file: !114, line: 294, baseType: !1113)
!1113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sk_t", file: !114, line: 291, size: 7257920, elements: !1114)
!1114 = !{!1115, !1116}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1113, file: !114, line: 292, baseType: !201, size: 7238592)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "O", scope: !1113, file: !114, line: 293, baseType: !205, size: 19312, offset: 7238592)
!1117 = !DILocalVariable(name: "p", arg: 1, scope: !1108, file: !88, line: 310, type: !353)
!1118 = !DILocation(line: 310, column: 41, scope: !1108)
!1119 = !DILocalVariable(name: "csk", arg: 2, scope: !1108, file: !88, line: 310, type: !60)
!1120 = !DILocation(line: 310, column: 65, scope: !1108)
!1121 = !DILocalVariable(name: "sk", arg: 3, scope: !1108, file: !88, line: 311, type: !1111)
!1122 = !DILocation(line: 311, column: 26, scope: !1108)
!1123 = !DILocalVariable(name: "ret", scope: !1108, file: !88, line: 312, type: !51)
!1124 = !DILocation(line: 312, column: 9, scope: !1108)
!1125 = !DILocalVariable(name: "S", scope: !1108, file: !88, line: 313, type: !417)
!1126 = !DILocation(line: 313, column: 19, scope: !1108)
!1127 = !DILocalVariable(name: "P", scope: !1108, file: !88, line: 314, type: !81)
!1128 = !DILocation(line: 314, column: 15, scope: !1108)
!1129 = !DILocation(line: 314, column: 19, scope: !1108)
!1130 = !DILocation(line: 314, column: 23, scope: !1108)
!1131 = !DILocalVariable(name: "O", scope: !1108, file: !88, line: 315, type: !55)
!1132 = !DILocation(line: 315, column: 20, scope: !1108)
!1133 = !DILocation(line: 315, column: 24, scope: !1108)
!1134 = !DILocation(line: 315, column: 28, scope: !1108)
!1135 = !DILocalVariable(name: "param_o", scope: !1108, file: !88, line: 317, type: !434)
!1136 = !DILocation(line: 317, column: 15, scope: !1108)
!1137 = !DILocation(line: 317, column: 33, scope: !1108)
!1138 = !DILocation(line: 317, column: 25, scope: !1108)
!1139 = !DILocalVariable(name: "param_v", scope: !1108, file: !88, line: 318, type: !434)
!1140 = !DILocation(line: 318, column: 15, scope: !1108)
!1141 = !DILocation(line: 318, column: 33, scope: !1108)
!1142 = !DILocation(line: 318, column: 25, scope: !1108)
!1143 = !DILocalVariable(name: "param_O_bytes", scope: !1108, file: !88, line: 319, type: !434)
!1144 = !DILocation(line: 319, column: 15, scope: !1108)
!1145 = !DILocation(line: 319, column: 45, scope: !1108)
!1146 = !DILocation(line: 319, column: 31, scope: !1108)
!1147 = !DILocalVariable(name: "param_pk_seed_bytes", scope: !1108, file: !88, line: 320, type: !434)
!1148 = !DILocation(line: 320, column: 15, scope: !1108)
!1149 = !DILocation(line: 320, column: 57, scope: !1108)
!1150 = !DILocation(line: 320, column: 37, scope: !1108)
!1151 = !DILocalVariable(name: "param_sk_seed_bytes", scope: !1108, file: !88, line: 321, type: !434)
!1152 = !DILocation(line: 321, column: 15, scope: !1108)
!1153 = !DILocation(line: 321, column: 57, scope: !1108)
!1154 = !DILocation(line: 321, column: 37, scope: !1108)
!1155 = !DILocalVariable(name: "seed_sk", scope: !1108, file: !88, line: 323, type: !60)
!1156 = !DILocation(line: 323, column: 26, scope: !1108)
!1157 = !DILocation(line: 323, column: 36, scope: !1108)
!1158 = !DILocalVariable(name: "seed_pk", scope: !1108, file: !88, line: 324, type: !55)
!1159 = !DILocation(line: 324, column: 20, scope: !1108)
!1160 = !DILocation(line: 324, column: 30, scope: !1108)
!1161 = !DILocation(line: 326, column: 14, scope: !1108)
!1162 = !DILocation(line: 326, column: 17, scope: !1108)
!1163 = !DILocation(line: 326, column: 39, scope: !1108)
!1164 = !DILocation(line: 326, column: 37, scope: !1108)
!1165 = !DILocation(line: 326, column: 54, scope: !1108)
!1166 = !DILocation(line: 327, column: 14, scope: !1108)
!1167 = !DILocation(line: 326, column: 5, scope: !1108)
!1168 = !DILocation(line: 328, column: 12, scope: !1108)
!1169 = !DILocation(line: 328, column: 16, scope: !1108)
!1170 = !DILocation(line: 328, column: 14, scope: !1108)
!1171 = !DILocation(line: 328, column: 37, scope: !1108)
!1172 = !DILocation(line: 328, column: 40, scope: !1108)
!1173 = !DILocation(line: 328, column: 50, scope: !1108)
!1174 = !DILocation(line: 328, column: 48, scope: !1108)
!1175 = !DILocation(line: 328, column: 5, scope: !1108)
!1176 = !DILocation(line: 334, column: 18, scope: !1108)
!1177 = !DILocation(line: 334, column: 21, scope: !1108)
!1178 = !DILocation(line: 334, column: 24, scope: !1108)
!1179 = !DILocation(line: 334, column: 5, scope: !1108)
!1180 = !DILocalVariable(name: "P2", scope: !1108, file: !88, line: 341, type: !81)
!1181 = !DILocation(line: 341, column: 15, scope: !1108)
!1182 = !DILocation(line: 341, column: 20, scope: !1108)
!1183 = !DILocation(line: 341, column: 39, scope: !1108)
!1184 = !DILocation(line: 341, column: 24, scope: !1108)
!1185 = !DILocation(line: 341, column: 22, scope: !1108)
!1186 = !DILocalVariable(name: "P1", scope: !1108, file: !88, line: 343, type: !81)
!1187 = !DILocation(line: 343, column: 15, scope: !1108)
!1188 = !DILocation(line: 343, column: 20, scope: !1108)
!1189 = !DILocalVariable(name: "L", scope: !1108, file: !88, line: 346, type: !81)
!1190 = !DILocation(line: 346, column: 15, scope: !1108)
!1191 = !DILocation(line: 346, column: 19, scope: !1108)
!1192 = !DILocation(line: 347, column: 19, scope: !1108)
!1193 = !DILocation(line: 347, column: 22, scope: !1108)
!1194 = !DILocation(line: 347, column: 26, scope: !1108)
!1195 = !DILocation(line: 347, column: 29, scope: !1108)
!1196 = !DILocation(line: 347, column: 5, scope: !1108)
!1197 = !DILocation(line: 355, column: 23, scope: !1108)
!1198 = !DILocation(line: 355, column: 5, scope: !1108)
!1199 = !DILocation(line: 356, column: 12, scope: !1108)
!1200 = !DILocation(line: 356, column: 5, scope: !1108)
!1201 = distinct !DISubprogram(name: "P1P1t_times_O", scope: !631, file: !631, line: 218, type: !722, scopeLine: 218, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !79, retainedNodes: !91)
!1202 = !DILocalVariable(name: "p", arg: 1, scope: !1201, file: !631, line: 218, type: !353)
!1203 = !DILocation(line: 218, column: 41, scope: !1201)
!1204 = !DILocalVariable(name: "P1", arg: 2, scope: !1201, file: !631, line: 218, type: !634)
!1205 = !DILocation(line: 218, column: 60, scope: !1201)
!1206 = !DILocalVariable(name: "O", arg: 3, scope: !1201, file: !631, line: 218, type: !60)
!1207 = !DILocation(line: 218, column: 85, scope: !1201)
!1208 = !DILocalVariable(name: "acc", arg: 4, scope: !1201, file: !631, line: 218, type: !81)
!1209 = !DILocation(line: 218, column: 98, scope: !1201)
!1210 = !DILocalVariable(name: "param_o", scope: !1201, file: !631, line: 222, type: !434)
!1211 = !DILocation(line: 222, column: 15, scope: !1201)
!1212 = !DILocation(line: 222, column: 33, scope: !1201)
!1213 = !DILocation(line: 222, column: 25, scope: !1201)
!1214 = !DILocalVariable(name: "param_v", scope: !1201, file: !631, line: 223, type: !434)
!1215 = !DILocation(line: 223, column: 15, scope: !1201)
!1216 = !DILocation(line: 223, column: 33, scope: !1201)
!1217 = !DILocation(line: 223, column: 25, scope: !1201)
!1218 = !DILocalVariable(name: "m_vec_limbs", scope: !1201, file: !631, line: 224, type: !434)
!1219 = !DILocation(line: 224, column: 15, scope: !1201)
!1220 = !DILocation(line: 224, column: 47, scope: !1201)
!1221 = !DILocation(line: 224, column: 29, scope: !1201)
!1222 = !DILocalVariable(name: "bs_mat_entries_used", scope: !1201, file: !631, line: 226, type: !51)
!1223 = !DILocation(line: 226, column: 9, scope: !1201)
!1224 = !DILocalVariable(name: "r", scope: !1225, file: !631, line: 227, type: !51)
!1225 = distinct !DILexicalBlock(scope: !1201, file: !631, line: 227, column: 5)
!1226 = !DILocation(line: 227, column: 14, scope: !1225)
!1227 = !DILocation(line: 227, column: 10, scope: !1225)
!1228 = !DILocation(line: 227, column: 21, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !1225, file: !631, line: 227, column: 5)
!1230 = !DILocation(line: 227, column: 25, scope: !1229)
!1231 = !DILocation(line: 227, column: 23, scope: !1229)
!1232 = !DILocation(line: 227, column: 5, scope: !1225)
!1233 = !DILocalVariable(name: "c", scope: !1234, file: !631, line: 228, type: !51)
!1234 = distinct !DILexicalBlock(scope: !1235, file: !631, line: 228, column: 9)
!1235 = distinct !DILexicalBlock(scope: !1229, file: !631, line: 227, column: 39)
!1236 = !DILocation(line: 228, column: 18, scope: !1234)
!1237 = !DILocation(line: 228, column: 22, scope: !1234)
!1238 = !DILocation(line: 228, column: 14, scope: !1234)
!1239 = !DILocation(line: 228, column: 25, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1234, file: !631, line: 228, column: 9)
!1241 = !DILocation(line: 228, column: 29, scope: !1240)
!1242 = !DILocation(line: 228, column: 27, scope: !1240)
!1243 = !DILocation(line: 228, column: 9, scope: !1234)
!1244 = !DILocation(line: 229, column: 16, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1246, file: !631, line: 229, column: 16)
!1246 = distinct !DILexicalBlock(scope: !1240, file: !631, line: 228, column: 43)
!1247 = !DILocation(line: 229, column: 19, scope: !1245)
!1248 = !DILocation(line: 229, column: 17, scope: !1245)
!1249 = !DILocation(line: 230, column: 37, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1245, file: !631, line: 229, column: 22)
!1251 = !DILocation(line: 231, column: 17, scope: !1250)
!1252 = !DILocalVariable(name: "k", scope: !1253, file: !631, line: 233, type: !51)
!1253 = distinct !DILexicalBlock(scope: !1246, file: !631, line: 233, column: 13)
!1254 = !DILocation(line: 233, column: 22, scope: !1253)
!1255 = !DILocation(line: 233, column: 18, scope: !1253)
!1256 = !DILocation(line: 233, column: 29, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1253, file: !631, line: 233, column: 13)
!1258 = !DILocation(line: 233, column: 33, scope: !1257)
!1259 = !DILocation(line: 233, column: 31, scope: !1257)
!1260 = !DILocation(line: 233, column: 13, scope: !1253)
!1261 = !DILocation(line: 234, column: 31, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1257, file: !631, line: 233, column: 50)
!1263 = !DILocation(line: 234, column: 44, scope: !1262)
!1264 = !DILocation(line: 234, column: 49, scope: !1262)
!1265 = !DILocation(line: 234, column: 63, scope: !1262)
!1266 = !DILocation(line: 234, column: 61, scope: !1262)
!1267 = !DILocation(line: 234, column: 47, scope: !1262)
!1268 = !DILocation(line: 234, column: 84, scope: !1262)
!1269 = !DILocation(line: 234, column: 86, scope: !1262)
!1270 = !DILocation(line: 234, column: 90, scope: !1262)
!1271 = !DILocation(line: 234, column: 88, scope: !1262)
!1272 = !DILocation(line: 234, column: 100, scope: !1262)
!1273 = !DILocation(line: 234, column: 98, scope: !1262)
!1274 = !DILocation(line: 234, column: 104, scope: !1262)
!1275 = !DILocation(line: 234, column: 110, scope: !1262)
!1276 = !DILocation(line: 234, column: 125, scope: !1262)
!1277 = !DILocation(line: 234, column: 129, scope: !1262)
!1278 = !DILocation(line: 234, column: 127, scope: !1262)
!1279 = !DILocation(line: 234, column: 139, scope: !1262)
!1280 = !DILocation(line: 234, column: 137, scope: !1262)
!1281 = !DILocation(line: 234, column: 122, scope: !1262)
!1282 = !DILocation(line: 234, column: 108, scope: !1262)
!1283 = !DILocation(line: 234, column: 17, scope: !1262)
!1284 = !DILocation(line: 235, column: 31, scope: !1262)
!1285 = !DILocation(line: 235, column: 44, scope: !1262)
!1286 = !DILocation(line: 235, column: 49, scope: !1262)
!1287 = !DILocation(line: 235, column: 63, scope: !1262)
!1288 = !DILocation(line: 235, column: 61, scope: !1262)
!1289 = !DILocation(line: 235, column: 47, scope: !1262)
!1290 = !DILocation(line: 235, column: 84, scope: !1262)
!1291 = !DILocation(line: 235, column: 86, scope: !1262)
!1292 = !DILocation(line: 235, column: 90, scope: !1262)
!1293 = !DILocation(line: 235, column: 88, scope: !1262)
!1294 = !DILocation(line: 235, column: 100, scope: !1262)
!1295 = !DILocation(line: 235, column: 98, scope: !1262)
!1296 = !DILocation(line: 235, column: 104, scope: !1262)
!1297 = !DILocation(line: 235, column: 110, scope: !1262)
!1298 = !DILocation(line: 235, column: 125, scope: !1262)
!1299 = !DILocation(line: 235, column: 129, scope: !1262)
!1300 = !DILocation(line: 235, column: 127, scope: !1262)
!1301 = !DILocation(line: 235, column: 139, scope: !1262)
!1302 = !DILocation(line: 235, column: 137, scope: !1262)
!1303 = !DILocation(line: 235, column: 122, scope: !1262)
!1304 = !DILocation(line: 235, column: 108, scope: !1262)
!1305 = !DILocation(line: 235, column: 17, scope: !1262)
!1306 = !DILocation(line: 236, column: 13, scope: !1262)
!1307 = !DILocation(line: 233, column: 44, scope: !1257)
!1308 = !DILocation(line: 233, column: 13, scope: !1257)
!1309 = distinct !{!1309, !1260, !1310, !167}
!1310 = !DILocation(line: 236, column: 13, scope: !1253)
!1311 = !DILocation(line: 237, column: 33, scope: !1246)
!1312 = !DILocation(line: 238, column: 9, scope: !1246)
!1313 = !DILocation(line: 228, column: 39, scope: !1240)
!1314 = !DILocation(line: 228, column: 9, scope: !1240)
!1315 = distinct !{!1315, !1243, !1316, !167}
!1316 = !DILocation(line: 238, column: 9, scope: !1234)
!1317 = !DILocation(line: 239, column: 5, scope: !1235)
!1318 = !DILocation(line: 227, column: 35, scope: !1229)
!1319 = !DILocation(line: 227, column: 5, scope: !1229)
!1320 = distinct !{!1320, !1232, !1321, !167}
!1321 = !DILocation(line: 239, column: 5, scope: !1225)
!1322 = !DILocation(line: 240, column: 1, scope: !1201)
!1323 = distinct !DISubprogram(name: "mayo_sign_signature", scope: !88, file: !88, line: 359, type: !1324, scopeLine: 361, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !79, retainedNodes: !91)
!1324 = !DISubroutineType(types: !1325)
!1325 = !{!51, !353, !55, !1326, !60, !82, !60}
!1326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 32)
!1327 = !DILocalVariable(name: "p", arg: 1, scope: !1323, file: !88, line: 359, type: !353)
!1328 = !DILocation(line: 359, column: 46, scope: !1323)
!1329 = !DILocalVariable(name: "sig", arg: 2, scope: !1323, file: !88, line: 359, type: !55)
!1330 = !DILocation(line: 359, column: 64, scope: !1323)
!1331 = !DILocalVariable(name: "siglen", arg: 3, scope: !1323, file: !88, line: 360, type: !1326)
!1332 = !DILocation(line: 360, column: 23, scope: !1323)
!1333 = !DILocalVariable(name: "m", arg: 4, scope: !1323, file: !88, line: 360, type: !60)
!1334 = !DILocation(line: 360, column: 52, scope: !1323)
!1335 = !DILocalVariable(name: "mlen", arg: 5, scope: !1323, file: !88, line: 361, type: !82)
!1336 = !DILocation(line: 361, column: 22, scope: !1323)
!1337 = !DILocalVariable(name: "csk", arg: 6, scope: !1323, file: !88, line: 361, type: !60)
!1338 = !DILocation(line: 361, column: 49, scope: !1323)
!1339 = !DILocalVariable(name: "ret", scope: !1323, file: !88, line: 362, type: !51)
!1340 = !DILocation(line: 362, column: 9, scope: !1323)
!1341 = !DILocalVariable(name: "tenc", scope: !1323, file: !88, line: 363, type: !1342)
!1342 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 568, elements: !1343)
!1343 = !{!1344}
!1344 = !DISubrange(count: 71)
!1345 = !DILocation(line: 363, column: 19, scope: !1323)
!1346 = !DILocalVariable(name: "t", scope: !1323, file: !88, line: 363, type: !1347)
!1347 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 1136, elements: !1348)
!1348 = !{!1349}
!1349 = !DISubrange(count: 142)
!1350 = !DILocation(line: 363, column: 38, scope: !1323)
!1351 = !DILocalVariable(name: "y", scope: !1323, file: !88, line: 364, type: !1347)
!1352 = !DILocation(line: 364, column: 19, scope: !1323)
!1353 = !DILocalVariable(name: "salt", scope: !1323, file: !88, line: 365, type: !1354)
!1354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 320, elements: !1355)
!1355 = !{!1356}
!1356 = !DISubrange(count: 40)
!1357 = !DILocation(line: 365, column: 19, scope: !1323)
!1358 = !DILocalVariable(name: "V", scope: !1323, file: !88, line: 366, type: !1359)
!1359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 7392, elements: !1360)
!1360 = !{!1361}
!1361 = !DISubrange(count: 924)
!1362 = !DILocation(line: 366, column: 19, scope: !1323)
!1363 = !DILocalVariable(name: "Vdec", scope: !1323, file: !88, line: 366, type: !1364)
!1364 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 13632, elements: !1365)
!1365 = !{!1366}
!1366 = !DISubrange(count: 1704)
!1367 = !DILocation(line: 366, column: 57, scope: !1323)
!1368 = !DILocalVariable(name: "A", scope: !1323, file: !88, line: 367, type: !1369)
!1369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 236160, elements: !1370)
!1370 = !{!1371}
!1371 = !DISubrange(count: 29520)
!1372 = !DILocation(line: 367, column: 19, scope: !1323)
!1373 = !DILocalVariable(name: "x", scope: !1323, file: !88, line: 368, type: !1374)
!1374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 14784, elements: !1375)
!1375 = !{!1376}
!1376 = !DISubrange(count: 1848)
!1377 = !DILocation(line: 368, column: 19, scope: !1323)
!1378 = !DILocalVariable(name: "r", scope: !1323, file: !88, line: 369, type: !1379)
!1379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 1640, elements: !1380)
!1380 = !{!1381}
!1381 = !DISubrange(count: 205)
!1382 = !DILocation(line: 369, column: 19, scope: !1323)
!1383 = !DILocalVariable(name: "s", scope: !1323, file: !88, line: 370, type: !1374)
!1384 = !DILocation(line: 370, column: 19, scope: !1323)
!1385 = !DILocalVariable(name: "seed_sk", scope: !1323, file: !88, line: 371, type: !60)
!1386 = !DILocation(line: 371, column: 26, scope: !1323)
!1387 = !DILocalVariable(name: "sk", scope: !1323, file: !88, line: 372, type: !1112, align: 256)
!1388 = !DILocation(line: 372, column: 22, scope: !1323)
!1389 = !DILocalVariable(name: "Ox", scope: !1323, file: !88, line: 373, type: !1347)
!1390 = !DILocation(line: 373, column: 19, scope: !1323)
!1391 = !DILocalVariable(name: "tmp", scope: !1323, file: !88, line: 374, type: !1392)
!1392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 1160, elements: !1393)
!1393 = !{!1394}
!1394 = !DISubrange(count: 145)
!1395 = !DILocation(line: 374, column: 19, scope: !1323)
!1396 = !DILocalVariable(name: "ctrbyte", scope: !1323, file: !88, line: 375, type: !55)
!1397 = !DILocation(line: 375, column: 20, scope: !1323)
!1398 = !DILocalVariable(name: "vi", scope: !1323, file: !88, line: 376, type: !55)
!1399 = !DILocation(line: 376, column: 20, scope: !1323)
!1400 = !DILocalVariable(name: "param_m", scope: !1323, file: !88, line: 378, type: !434)
!1401 = !DILocation(line: 378, column: 15, scope: !1323)
!1402 = !DILocation(line: 378, column: 33, scope: !1323)
!1403 = !DILocation(line: 378, column: 25, scope: !1323)
!1404 = !DILocalVariable(name: "param_n", scope: !1323, file: !88, line: 379, type: !434)
!1405 = !DILocation(line: 379, column: 15, scope: !1323)
!1406 = !DILocation(line: 379, column: 33, scope: !1323)
!1407 = !DILocation(line: 379, column: 25, scope: !1323)
!1408 = !DILocalVariable(name: "param_o", scope: !1323, file: !88, line: 380, type: !434)
!1409 = !DILocation(line: 380, column: 15, scope: !1323)
!1410 = !DILocation(line: 380, column: 33, scope: !1323)
!1411 = !DILocation(line: 380, column: 25, scope: !1323)
!1412 = !DILocalVariable(name: "param_k", scope: !1323, file: !88, line: 381, type: !434)
!1413 = !DILocation(line: 381, column: 15, scope: !1323)
!1414 = !DILocation(line: 381, column: 33, scope: !1323)
!1415 = !DILocation(line: 381, column: 25, scope: !1323)
!1416 = !DILocalVariable(name: "param_v", scope: !1323, file: !88, line: 382, type: !434)
!1417 = !DILocation(line: 382, column: 15, scope: !1323)
!1418 = !DILocation(line: 382, column: 33, scope: !1323)
!1419 = !DILocation(line: 382, column: 25, scope: !1323)
!1420 = !DILocalVariable(name: "param_m_bytes", scope: !1323, file: !88, line: 383, type: !434)
!1421 = !DILocation(line: 383, column: 15, scope: !1323)
!1422 = !DILocation(line: 383, column: 45, scope: !1323)
!1423 = !DILocation(line: 383, column: 31, scope: !1323)
!1424 = !DILocalVariable(name: "param_v_bytes", scope: !1323, file: !88, line: 384, type: !434)
!1425 = !DILocation(line: 384, column: 15, scope: !1323)
!1426 = !DILocation(line: 384, column: 45, scope: !1323)
!1427 = !DILocation(line: 384, column: 31, scope: !1323)
!1428 = !DILocalVariable(name: "param_r_bytes", scope: !1323, file: !88, line: 385, type: !434)
!1429 = !DILocation(line: 385, column: 15, scope: !1323)
!1430 = !DILocation(line: 385, column: 45, scope: !1323)
!1431 = !DILocation(line: 385, column: 31, scope: !1323)
!1432 = !DILocalVariable(name: "param_sig_bytes", scope: !1323, file: !88, line: 386, type: !434)
!1433 = !DILocation(line: 386, column: 15, scope: !1323)
!1434 = !DILocation(line: 386, column: 49, scope: !1323)
!1435 = !DILocation(line: 386, column: 33, scope: !1323)
!1436 = !DILocalVariable(name: "param_A_cols", scope: !1323, file: !88, line: 387, type: !434)
!1437 = !DILocation(line: 387, column: 15, scope: !1323)
!1438 = !DILocation(line: 387, column: 43, scope: !1323)
!1439 = !DILocation(line: 387, column: 30, scope: !1323)
!1440 = !DILocalVariable(name: "param_digest_bytes", scope: !1323, file: !88, line: 388, type: !434)
!1441 = !DILocation(line: 388, column: 15, scope: !1323)
!1442 = !DILocation(line: 388, column: 55, scope: !1323)
!1443 = !DILocation(line: 388, column: 36, scope: !1323)
!1444 = !DILocalVariable(name: "param_sk_seed_bytes", scope: !1323, file: !88, line: 389, type: !434)
!1445 = !DILocation(line: 389, column: 15, scope: !1323)
!1446 = !DILocation(line: 389, column: 57, scope: !1323)
!1447 = !DILocation(line: 389, column: 37, scope: !1323)
!1448 = !DILocalVariable(name: "param_salt_bytes", scope: !1323, file: !88, line: 390, type: !434)
!1449 = !DILocation(line: 390, column: 15, scope: !1323)
!1450 = !DILocation(line: 390, column: 51, scope: !1323)
!1451 = !DILocation(line: 390, column: 34, scope: !1323)
!1452 = !DILocation(line: 392, column: 26, scope: !1323)
!1453 = !DILocation(line: 392, column: 29, scope: !1323)
!1454 = !DILocation(line: 392, column: 11, scope: !1323)
!1455 = !DILocation(line: 392, column: 9, scope: !1323)
!1456 = !DILocation(line: 393, column: 9, scope: !1457)
!1457 = distinct !DILexicalBlock(scope: !1323, file: !88, line: 393, column: 9)
!1458 = !DILocation(line: 393, column: 13, scope: !1457)
!1459 = !DILocation(line: 394, column: 9, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !1457, file: !88, line: 393, column: 25)
!1461 = !DILocation(line: 397, column: 15, scope: !1323)
!1462 = !DILocation(line: 397, column: 13, scope: !1323)
!1463 = !DILocation(line: 401, column: 14, scope: !1323)
!1464 = !DILocation(line: 401, column: 19, scope: !1323)
!1465 = !DILocation(line: 401, column: 39, scope: !1323)
!1466 = !DILocation(line: 401, column: 42, scope: !1323)
!1467 = !DILocation(line: 401, column: 5, scope: !1323)
!1468 = !DILocalVariable(name: "P1", scope: !1323, file: !88, line: 403, type: !81)
!1469 = !DILocation(line: 403, column: 15, scope: !1323)
!1470 = !DILocation(line: 403, column: 23, scope: !1323)
!1471 = !DILocation(line: 403, column: 20, scope: !1323)
!1472 = !DILocalVariable(name: "L", scope: !1323, file: !88, line: 404, type: !81)
!1473 = !DILocation(line: 404, column: 15, scope: !1323)
!1474 = !DILocation(line: 404, column: 20, scope: !1323)
!1475 = !DILocation(line: 404, column: 40, scope: !1323)
!1476 = !DILocation(line: 404, column: 25, scope: !1323)
!1477 = !DILocation(line: 404, column: 23, scope: !1323)
!1478 = !DILocalVariable(name: "Mtmp", scope: !1323, file: !88, line: 405, type: !1479)
!1479 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 117504, elements: !1480)
!1480 = !{!1481}
!1481 = !DISubrange(count: 1836)
!1482 = !DILocation(line: 405, column: 14, scope: !1323)
!1483 = !DILocation(line: 420, column: 21, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1323, file: !88, line: 420, column: 9)
!1485 = !DILocation(line: 420, column: 27, scope: !1484)
!1486 = !DILocation(line: 420, column: 25, scope: !1484)
!1487 = !DILocation(line: 420, column: 47, scope: !1484)
!1488 = !DILocation(line: 420, column: 9, scope: !1484)
!1489 = !DILocation(line: 420, column: 65, scope: !1484)
!1490 = !DILocation(line: 421, column: 13, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1484, file: !88, line: 420, column: 77)
!1492 = !DILocation(line: 422, column: 9, scope: !1491)
!1493 = !DILocation(line: 427, column: 12, scope: !1323)
!1494 = !DILocation(line: 427, column: 18, scope: !1323)
!1495 = !DILocation(line: 427, column: 16, scope: !1323)
!1496 = !DILocation(line: 427, column: 39, scope: !1323)
!1497 = !DILocation(line: 427, column: 37, scope: !1323)
!1498 = !DILocation(line: 427, column: 57, scope: !1323)
!1499 = !DILocation(line: 428, column: 12, scope: !1323)
!1500 = !DILocation(line: 427, column: 5, scope: !1323)
!1501 = !DILocation(line: 429, column: 14, scope: !1323)
!1502 = !DILocation(line: 429, column: 20, scope: !1323)
!1503 = !DILocation(line: 429, column: 38, scope: !1323)
!1504 = !DILocation(line: 430, column: 14, scope: !1323)
!1505 = !DILocation(line: 430, column: 35, scope: !1323)
!1506 = !DILocation(line: 430, column: 33, scope: !1323)
!1507 = !DILocation(line: 430, column: 54, scope: !1323)
!1508 = !DILocation(line: 430, column: 52, scope: !1323)
!1509 = !DILocation(line: 429, column: 5, scope: !1323)
!1510 = !DILocation(line: 437, column: 12, scope: !1323)
!1511 = !DILocation(line: 437, column: 18, scope: !1323)
!1512 = !DILocation(line: 437, column: 16, scope: !1323)
!1513 = !DILocation(line: 437, column: 38, scope: !1323)
!1514 = !DILocation(line: 437, column: 44, scope: !1323)
!1515 = !DILocation(line: 437, column: 5, scope: !1323)
!1516 = !DILocation(line: 438, column: 15, scope: !1323)
!1517 = !DILocation(line: 438, column: 21, scope: !1323)
!1518 = !DILocation(line: 438, column: 19, scope: !1323)
!1519 = !DILocation(line: 438, column: 42, scope: !1323)
!1520 = !DILocation(line: 438, column: 40, scope: !1323)
!1521 = !DILocation(line: 438, column: 61, scope: !1323)
!1522 = !DILocation(line: 438, column: 59, scope: !1323)
!1523 = !DILocation(line: 438, column: 13, scope: !1323)
!1524 = !DILocation(line: 440, column: 14, scope: !1323)
!1525 = !DILocation(line: 440, column: 20, scope: !1323)
!1526 = !DILocation(line: 440, column: 35, scope: !1323)
!1527 = !DILocation(line: 440, column: 40, scope: !1323)
!1528 = !DILocation(line: 440, column: 61, scope: !1323)
!1529 = !DILocation(line: 440, column: 59, scope: !1323)
!1530 = !DILocation(line: 440, column: 5, scope: !1323)
!1531 = !DILocation(line: 442, column: 12, scope: !1323)
!1532 = !DILocation(line: 442, column: 18, scope: !1323)
!1533 = !DILocation(line: 442, column: 21, scope: !1323)
!1534 = !DILocation(line: 442, column: 5, scope: !1323)
!1535 = !DILocalVariable(name: "ctr", scope: !1536, file: !88, line: 444, type: !51)
!1536 = distinct !DILexicalBlock(scope: !1323, file: !88, line: 444, column: 5)
!1537 = !DILocation(line: 444, column: 14, scope: !1536)
!1538 = !DILocation(line: 444, column: 10, scope: !1536)
!1539 = !DILocation(line: 444, column: 23, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !1536, file: !88, line: 444, column: 5)
!1541 = !DILocation(line: 444, column: 27, scope: !1540)
!1542 = !DILocation(line: 444, column: 5, scope: !1536)
!1543 = !DILocation(line: 445, column: 35, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1540, file: !88, line: 444, column: 42)
!1545 = !DILocation(line: 445, column: 20, scope: !1544)
!1546 = !DILocation(line: 445, column: 10, scope: !1544)
!1547 = !DILocation(line: 445, column: 18, scope: !1544)
!1548 = !DILocation(line: 447, column: 18, scope: !1544)
!1549 = !DILocation(line: 447, column: 21, scope: !1544)
!1550 = !DILocation(line: 447, column: 31, scope: !1544)
!1551 = !DILocation(line: 447, column: 29, scope: !1544)
!1552 = !DILocation(line: 447, column: 47, scope: !1544)
!1553 = !DILocation(line: 447, column: 45, scope: !1544)
!1554 = !DILocation(line: 447, column: 62, scope: !1544)
!1555 = !DILocation(line: 448, column: 18, scope: !1544)
!1556 = !DILocation(line: 448, column: 39, scope: !1544)
!1557 = !DILocation(line: 448, column: 37, scope: !1544)
!1558 = !DILocation(line: 448, column: 58, scope: !1544)
!1559 = !DILocation(line: 448, column: 56, scope: !1544)
!1560 = !DILocation(line: 448, column: 78, scope: !1544)
!1561 = !DILocation(line: 447, column: 9, scope: !1544)
!1562 = !DILocalVariable(name: "i", scope: !1563, file: !88, line: 451, type: !51)
!1563 = distinct !DILexicalBlock(scope: !1544, file: !88, line: 451, column: 9)
!1564 = !DILocation(line: 451, column: 18, scope: !1563)
!1565 = !DILocation(line: 451, column: 14, scope: !1563)
!1566 = !DILocation(line: 451, column: 25, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1563, file: !88, line: 451, column: 9)
!1568 = !DILocation(line: 451, column: 30, scope: !1567)
!1569 = !DILocation(line: 451, column: 38, scope: !1567)
!1570 = !DILocation(line: 451, column: 27, scope: !1567)
!1571 = !DILocation(line: 451, column: 9, scope: !1563)
!1572 = !DILocation(line: 452, column: 20, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1567, file: !88, line: 451, column: 48)
!1574 = !DILocation(line: 452, column: 24, scope: !1573)
!1575 = !DILocation(line: 452, column: 28, scope: !1573)
!1576 = !DILocation(line: 452, column: 26, scope: !1573)
!1577 = !DILocation(line: 452, column: 22, scope: !1573)
!1578 = !DILocation(line: 452, column: 43, scope: !1573)
!1579 = !DILocation(line: 452, column: 50, scope: !1573)
!1580 = !DILocation(line: 452, column: 54, scope: !1573)
!1581 = !DILocation(line: 452, column: 52, scope: !1573)
!1582 = !DILocation(line: 452, column: 48, scope: !1573)
!1583 = !DILocation(line: 452, column: 63, scope: !1573)
!1584 = !DILocation(line: 452, column: 13, scope: !1573)
!1585 = !DILocation(line: 453, column: 9, scope: !1573)
!1586 = !DILocation(line: 451, column: 43, scope: !1567)
!1587 = !DILocation(line: 451, column: 9, scope: !1567)
!1588 = distinct !{!1588, !1571, !1589, !167}
!1589 = !DILocation(line: 453, column: 9, scope: !1563)
!1590 = !DILocation(line: 456, column: 27, scope: !1544)
!1591 = !DILocation(line: 456, column: 30, scope: !1544)
!1592 = !DILocation(line: 456, column: 36, scope: !1544)
!1593 = !DILocation(line: 456, column: 39, scope: !1544)
!1594 = !DILocation(line: 456, column: 43, scope: !1544)
!1595 = !DILocation(line: 456, column: 61, scope: !1544)
!1596 = !DILocation(line: 456, column: 9, scope: !1544)
!1597 = !DILocation(line: 458, column: 21, scope: !1544)
!1598 = !DILocation(line: 458, column: 36, scope: !1544)
!1599 = !DILocation(line: 458, column: 39, scope: !1544)
!1600 = !DILocation(line: 458, column: 42, scope: !1544)
!1601 = !DILocation(line: 458, column: 9, scope: !1544)
!1602 = !DILocation(line: 459, column: 19, scope: !1544)
!1603 = !DILocation(line: 459, column: 22, scope: !1544)
!1604 = !DILocation(line: 459, column: 28, scope: !1544)
!1605 = !DILocation(line: 459, column: 9, scope: !1544)
!1606 = !DILocalVariable(name: "i", scope: !1607, file: !88, line: 461, type: !51)
!1607 = distinct !DILexicalBlock(scope: !1544, file: !88, line: 461, column: 9)
!1608 = !DILocation(line: 461, column: 18, scope: !1607)
!1609 = !DILocation(line: 461, column: 14, scope: !1607)
!1610 = !DILocation(line: 461, column: 25, scope: !1611)
!1611 = distinct !DILexicalBlock(scope: !1607, file: !88, line: 461, column: 9)
!1612 = !DILocation(line: 461, column: 29, scope: !1611)
!1613 = !DILocation(line: 461, column: 27, scope: !1611)
!1614 = !DILocation(line: 461, column: 9, scope: !1607)
!1615 = !DILocation(line: 463, column: 18, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1611, file: !88, line: 462, column: 9)
!1617 = !DILocation(line: 463, column: 17, scope: !1616)
!1618 = !DILocation(line: 463, column: 22, scope: !1616)
!1619 = !DILocation(line: 463, column: 30, scope: !1616)
!1620 = !DILocation(line: 463, column: 29, scope: !1616)
!1621 = !DILocation(line: 463, column: 38, scope: !1616)
!1622 = !DILocation(line: 463, column: 20, scope: !1616)
!1623 = !DILocation(line: 463, column: 43, scope: !1616)
!1624 = !DILocation(line: 463, column: 13, scope: !1616)
!1625 = !DILocation(line: 463, column: 48, scope: !1616)
!1626 = !DILocation(line: 464, column: 9, scope: !1616)
!1627 = !DILocation(line: 461, column: 39, scope: !1611)
!1628 = !DILocation(line: 461, column: 9, scope: !1611)
!1629 = distinct !{!1629, !1614, !1630, !167}
!1630 = !DILocation(line: 464, column: 9, scope: !1607)
!1631 = !DILocation(line: 466, column: 16, scope: !1544)
!1632 = !DILocation(line: 466, column: 20, scope: !1544)
!1633 = !DILocation(line: 466, column: 30, scope: !1544)
!1634 = !DILocation(line: 466, column: 28, scope: !1544)
!1635 = !DILocation(line: 466, column: 18, scope: !1544)
!1636 = !DILocation(line: 466, column: 45, scope: !1544)
!1637 = !DILocation(line: 467, column: 16, scope: !1544)
!1638 = !DILocation(line: 468, column: 16, scope: !1544)
!1639 = !DILocation(line: 467, column: 24, scope: !1544)
!1640 = !DILocation(line: 466, column: 9, scope: !1544)
!1641 = !DILocation(line: 470, column: 29, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !1544, file: !88, line: 470, column: 13)
!1643 = !DILocation(line: 470, column: 32, scope: !1642)
!1644 = !DILocation(line: 470, column: 35, scope: !1642)
!1645 = !DILocation(line: 470, column: 38, scope: !1642)
!1646 = !DILocation(line: 470, column: 41, scope: !1642)
!1647 = !DILocation(line: 470, column: 44, scope: !1642)
!1648 = !DILocation(line: 470, column: 53, scope: !1642)
!1649 = !DILocation(line: 470, column: 62, scope: !1642)
!1650 = !DILocation(line: 470, column: 71, scope: !1642)
!1651 = !DILocation(line: 470, column: 13, scope: !1642)
!1652 = !DILocation(line: 471, column: 13, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !1642, file: !88, line: 470, column: 86)
!1654 = !DILocation(line: 473, column: 20, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1642, file: !88, line: 472, column: 16)
!1656 = !DILocation(line: 473, column: 13, scope: !1655)
!1657 = !DILocation(line: 474, column: 20, scope: !1655)
!1658 = !DILocation(line: 474, column: 13, scope: !1655)
!1659 = !DILocation(line: 476, column: 5, scope: !1544)
!1660 = !DILocation(line: 444, column: 35, scope: !1540)
!1661 = !DILocation(line: 444, column: 5, scope: !1540)
!1662 = distinct !{!1662, !1542, !1663, !167}
!1663 = !DILocation(line: 476, column: 5, scope: !1536)
!1664 = !DILocalVariable(name: "i", scope: !1665, file: !88, line: 478, type: !51)
!1665 = distinct !DILexicalBlock(scope: !1323, file: !88, line: 478, column: 5)
!1666 = !DILocation(line: 478, column: 14, scope: !1665)
!1667 = !DILocation(line: 478, column: 10, scope: !1665)
!1668 = !DILocation(line: 478, column: 21, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !1665, file: !88, line: 478, column: 5)
!1670 = !DILocation(line: 478, column: 26, scope: !1669)
!1671 = !DILocation(line: 478, column: 34, scope: !1669)
!1672 = !DILocation(line: 478, column: 23, scope: !1669)
!1673 = !DILocation(line: 478, column: 5, scope: !1665)
!1674 = !DILocation(line: 479, column: 14, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !1669, file: !88, line: 478, column: 44)
!1676 = !DILocation(line: 479, column: 21, scope: !1675)
!1677 = !DILocation(line: 479, column: 26, scope: !1675)
!1678 = !DILocation(line: 479, column: 36, scope: !1675)
!1679 = !DILocation(line: 479, column: 34, scope: !1675)
!1680 = !DILocation(line: 479, column: 23, scope: !1675)
!1681 = !DILocation(line: 479, column: 19, scope: !1675)
!1682 = !DILocation(line: 479, column: 12, scope: !1675)
!1683 = !DILocation(line: 480, column: 20, scope: !1675)
!1684 = !DILocation(line: 480, column: 17, scope: !1675)
!1685 = !DILocation(line: 480, column: 23, scope: !1675)
!1686 = !DILocation(line: 480, column: 27, scope: !1675)
!1687 = !DILocation(line: 480, column: 31, scope: !1675)
!1688 = !DILocation(line: 480, column: 29, scope: !1675)
!1689 = !DILocation(line: 480, column: 25, scope: !1675)
!1690 = !DILocation(line: 480, column: 40, scope: !1675)
!1691 = !DILocation(line: 480, column: 44, scope: !1675)
!1692 = !DILocation(line: 480, column: 53, scope: !1675)
!1693 = !DILocation(line: 480, column: 63, scope: !1675)
!1694 = !DILocation(line: 480, column: 61, scope: !1675)
!1695 = !DILocation(line: 480, column: 9, scope: !1675)
!1696 = !DILocation(line: 481, column: 17, scope: !1675)
!1697 = !DILocation(line: 481, column: 21, scope: !1675)
!1698 = !DILocation(line: 481, column: 25, scope: !1675)
!1699 = !DILocation(line: 481, column: 29, scope: !1675)
!1700 = !DILocation(line: 481, column: 33, scope: !1675)
!1701 = !DILocation(line: 481, column: 31, scope: !1675)
!1702 = !DILocation(line: 481, column: 27, scope: !1675)
!1703 = !DILocation(line: 481, column: 42, scope: !1675)
!1704 = !DILocation(line: 481, column: 52, scope: !1675)
!1705 = !DILocation(line: 481, column: 50, scope: !1675)
!1706 = !DILocation(line: 481, column: 9, scope: !1675)
!1707 = !DILocation(line: 482, column: 16, scope: !1675)
!1708 = !DILocation(line: 482, column: 20, scope: !1675)
!1709 = !DILocation(line: 482, column: 24, scope: !1675)
!1710 = !DILocation(line: 482, column: 22, scope: !1675)
!1711 = !DILocation(line: 482, column: 18, scope: !1675)
!1712 = !DILocation(line: 482, column: 35, scope: !1675)
!1713 = !DILocation(line: 482, column: 45, scope: !1675)
!1714 = !DILocation(line: 482, column: 43, scope: !1675)
!1715 = !DILocation(line: 482, column: 32, scope: !1675)
!1716 = !DILocation(line: 482, column: 55, scope: !1675)
!1717 = !DILocation(line: 482, column: 59, scope: !1675)
!1718 = !DILocation(line: 482, column: 63, scope: !1675)
!1719 = !DILocation(line: 482, column: 61, scope: !1675)
!1720 = !DILocation(line: 482, column: 57, scope: !1675)
!1721 = !DILocation(line: 482, column: 72, scope: !1675)
!1722 = !DILocation(line: 482, column: 9, scope: !1675)
!1723 = !DILocation(line: 483, column: 5, scope: !1675)
!1724 = !DILocation(line: 478, column: 39, scope: !1669)
!1725 = !DILocation(line: 478, column: 5, scope: !1669)
!1726 = distinct !{!1726, !1673, !1727, !167}
!1727 = !DILocation(line: 483, column: 5, scope: !1665)
!1728 = !DILocation(line: 484, column: 12, scope: !1323)
!1729 = !DILocation(line: 484, column: 15, scope: !1323)
!1730 = !DILocation(line: 484, column: 20, scope: !1323)
!1731 = !DILocation(line: 484, column: 30, scope: !1323)
!1732 = !DILocation(line: 484, column: 28, scope: !1323)
!1733 = !DILocation(line: 484, column: 5, scope: !1323)
!1734 = !DILocation(line: 486, column: 12, scope: !1323)
!1735 = !DILocation(line: 486, column: 18, scope: !1323)
!1736 = !DILocation(line: 486, column: 16, scope: !1323)
!1737 = !DILocation(line: 486, column: 36, scope: !1323)
!1738 = !DILocation(line: 486, column: 34, scope: !1323)
!1739 = !DILocation(line: 486, column: 54, scope: !1323)
!1740 = !DILocation(line: 486, column: 60, scope: !1323)
!1741 = !DILocation(line: 486, column: 5, scope: !1323)
!1742 = !DILocation(line: 487, column: 15, scope: !1323)
!1743 = !DILocation(line: 487, column: 6, scope: !1323)
!1744 = !DILocation(line: 487, column: 13, scope: !1323)
!1745 = !DILocation(line: 487, column: 5, scope: !1323)
!1746 = !DILabel(scope: !1323, name: "err", file: !88, line: 489, column: 1)
!1747 = !DILocation(line: 489, column: 1, scope: !1323)
!1748 = !DILocation(line: 490, column: 23, scope: !1323)
!1749 = !DILocation(line: 490, column: 5, scope: !1323)
!1750 = !DILocation(line: 491, column: 23, scope: !1323)
!1751 = !DILocation(line: 491, column: 5, scope: !1323)
!1752 = !DILocation(line: 492, column: 23, scope: !1323)
!1753 = !DILocation(line: 492, column: 5, scope: !1323)
!1754 = !DILocation(line: 493, column: 23, scope: !1323)
!1755 = !DILocation(line: 493, column: 5, scope: !1323)
!1756 = !DILocation(line: 494, column: 26, scope: !1323)
!1757 = !DILocation(line: 494, column: 23, scope: !1323)
!1758 = !DILocation(line: 494, column: 5, scope: !1323)
!1759 = !DILocation(line: 495, column: 5, scope: !1323)
!1760 = !DILocation(line: 496, column: 23, scope: !1323)
!1761 = !DILocation(line: 496, column: 5, scope: !1323)
!1762 = !DILocation(line: 497, column: 23, scope: !1323)
!1763 = !DILocation(line: 497, column: 5, scope: !1323)
!1764 = !DILocation(line: 498, column: 23, scope: !1323)
!1765 = !DILocation(line: 498, column: 5, scope: !1323)
!1766 = !DILocation(line: 499, column: 12, scope: !1323)
!1767 = !DILocation(line: 499, column: 5, scope: !1323)
!1768 = distinct !DISubprogram(name: "compute_M_and_VPV", scope: !631, file: !631, line: 244, type: !1769, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !79, retainedNodes: !91)
!1769 = !DISubroutineType(types: !1770)
!1770 = !{null, !353, !60, !634, !634, !81, !81}
!1771 = !DILocalVariable(name: "p", arg: 1, scope: !1768, file: !631, line: 244, type: !353)
!1772 = !DILocation(line: 244, column: 45, scope: !1768)
!1773 = !DILocalVariable(name: "Vdec", arg: 2, scope: !1768, file: !631, line: 244, type: !60)
!1774 = !DILocation(line: 244, column: 69, scope: !1768)
!1775 = !DILocalVariable(name: "L", arg: 3, scope: !1768, file: !631, line: 244, type: !634)
!1776 = !DILocation(line: 244, column: 91, scope: !1768)
!1777 = !DILocalVariable(name: "P1", arg: 4, scope: !1768, file: !631, line: 244, type: !634)
!1778 = !DILocation(line: 244, column: 110, scope: !1768)
!1779 = !DILocalVariable(name: "VL", arg: 5, scope: !1768, file: !631, line: 244, type: !81)
!1780 = !DILocation(line: 244, column: 124, scope: !1768)
!1781 = !DILocalVariable(name: "VP1V", arg: 6, scope: !1768, file: !631, line: 244, type: !81)
!1782 = !DILocation(line: 244, column: 138, scope: !1768)
!1783 = !DILocalVariable(name: "param_k", scope: !1768, file: !631, line: 246, type: !434)
!1784 = !DILocation(line: 246, column: 15, scope: !1768)
!1785 = !DILocation(line: 246, column: 33, scope: !1768)
!1786 = !DILocation(line: 246, column: 25, scope: !1768)
!1787 = !DILocalVariable(name: "param_v", scope: !1768, file: !631, line: 247, type: !434)
!1788 = !DILocation(line: 247, column: 15, scope: !1768)
!1789 = !DILocation(line: 247, column: 33, scope: !1768)
!1790 = !DILocation(line: 247, column: 25, scope: !1768)
!1791 = !DILocalVariable(name: "param_o", scope: !1768, file: !631, line: 248, type: !434)
!1792 = !DILocation(line: 248, column: 15, scope: !1768)
!1793 = !DILocation(line: 248, column: 33, scope: !1768)
!1794 = !DILocation(line: 248, column: 25, scope: !1768)
!1795 = !DILocation(line: 251, column: 43, scope: !1768)
!1796 = !DILocation(line: 251, column: 25, scope: !1768)
!1797 = !DILocation(line: 251, column: 47, scope: !1768)
!1798 = !DILocation(line: 251, column: 53, scope: !1768)
!1799 = !DILocation(line: 251, column: 56, scope: !1768)
!1800 = !DILocation(line: 251, column: 60, scope: !1768)
!1801 = !DILocation(line: 251, column: 69, scope: !1768)
!1802 = !DILocation(line: 251, column: 78, scope: !1768)
!1803 = !DILocation(line: 251, column: 5, scope: !1768)
!1804 = !DILocalVariable(name: "Pv", scope: !1768, file: !631, line: 254, type: !1805)
!1805 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 981504, elements: !1806)
!1806 = !{!1807}
!1807 = !DISubrange(count: 15336)
!1808 = !DILocation(line: 254, column: 14, scope: !1768)
!1809 = !DILocation(line: 255, column: 17, scope: !1768)
!1810 = !DILocation(line: 255, column: 20, scope: !1768)
!1811 = !DILocation(line: 255, column: 24, scope: !1768)
!1812 = !DILocation(line: 255, column: 30, scope: !1768)
!1813 = !DILocation(line: 255, column: 5, scope: !1768)
!1814 = !DILocation(line: 256, column: 43, scope: !1768)
!1815 = !DILocation(line: 256, column: 25, scope: !1768)
!1816 = !DILocation(line: 256, column: 47, scope: !1768)
!1817 = !DILocation(line: 256, column: 53, scope: !1768)
!1818 = !DILocation(line: 256, column: 57, scope: !1768)
!1819 = !DILocation(line: 256, column: 63, scope: !1768)
!1820 = !DILocation(line: 256, column: 72, scope: !1768)
!1821 = !DILocation(line: 256, column: 81, scope: !1768)
!1822 = !DILocation(line: 256, column: 5, scope: !1768)
!1823 = !DILocation(line: 257, column: 1, scope: !1768)
!1824 = distinct !DISubprogram(name: "compute_rhs", scope: !88, file: !88, line: 43, type: !1825, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !79, retainedNodes: !91)
!1825 = !DISubroutineType(types: !1826)
!1826 = !{null, !353, !81, !60, !55}
!1827 = !DILocalVariable(name: "p", arg: 1, scope: !1824, file: !88, line: 43, type: !353)
!1828 = !DILocation(line: 43, column: 46, scope: !1824)
!1829 = !DILocalVariable(name: "vPv", arg: 2, scope: !1824, file: !88, line: 43, type: !81)
!1830 = !DILocation(line: 43, column: 59, scope: !1824)
!1831 = !DILocalVariable(name: "t", arg: 3, scope: !1824, file: !88, line: 43, type: !60)
!1832 = !DILocation(line: 43, column: 85, scope: !1824)
!1833 = !DILocalVariable(name: "y", arg: 4, scope: !1824, file: !88, line: 43, type: !55)
!1834 = !DILocation(line: 43, column: 103, scope: !1824)
!1835 = !DILocalVariable(name: "top_pos", scope: !1824, file: !88, line: 48, type: !1836)
!1836 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !82)
!1837 = !DILocation(line: 48, column: 18, scope: !1824)
!1838 = !DILocation(line: 48, column: 38, scope: !1824)
!1839 = !DILocation(line: 48, column: 30, scope: !1824)
!1840 = !DILocation(line: 48, column: 41, scope: !1824)
!1841 = !DILocation(line: 48, column: 46, scope: !1824)
!1842 = !DILocation(line: 48, column: 52, scope: !1824)
!1843 = !DILocalVariable(name: "m_vec_limbs", scope: !1824, file: !88, line: 49, type: !1836)
!1844 = !DILocation(line: 49, column: 18, scope: !1824)
!1845 = !DILocation(line: 49, column: 50, scope: !1824)
!1846 = !DILocation(line: 49, column: 32, scope: !1824)
!1847 = !DILocation(line: 52, column: 16, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1824, file: !88, line: 52, column: 8)
!1849 = !DILocation(line: 52, column: 8, scope: !1848)
!1850 = !DILocation(line: 52, column: 19, scope: !1848)
!1851 = !DILocation(line: 52, column: 24, scope: !1848)
!1852 = !DILocalVariable(name: "mask", scope: !1853, file: !88, line: 53, type: !46)
!1853 = distinct !DILexicalBlock(scope: !1848, file: !88, line: 52, column: 29)
!1854 = !DILocation(line: 53, column: 18, scope: !1853)
!1855 = !DILocation(line: 54, column: 28, scope: !1853)
!1856 = !DILocation(line: 54, column: 20, scope: !1853)
!1857 = !DILocation(line: 54, column: 31, scope: !1853)
!1858 = !DILocation(line: 54, column: 36, scope: !1853)
!1859 = !DILocation(line: 54, column: 14, scope: !1853)
!1860 = !DILocation(line: 55, column: 14, scope: !1853)
!1861 = !DILocalVariable(name: "i", scope: !1862, file: !88, line: 56, type: !51)
!1862 = distinct !DILexicalBlock(scope: !1853, file: !88, line: 56, column: 9)
!1863 = !DILocation(line: 56, column: 18, scope: !1862)
!1864 = !DILocation(line: 56, column: 14, scope: !1862)
!1865 = !DILocation(line: 56, column: 25, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !1862, file: !88, line: 56, column: 9)
!1867 = !DILocation(line: 56, column: 37, scope: !1866)
!1868 = !DILocation(line: 56, column: 29, scope: !1866)
!1869 = !DILocation(line: 56, column: 48, scope: !1866)
!1870 = !DILocation(line: 56, column: 40, scope: !1866)
!1871 = !DILocation(line: 56, column: 39, scope: !1866)
!1872 = !DILocation(line: 56, column: 27, scope: !1866)
!1873 = !DILocation(line: 56, column: 9, scope: !1862)
!1874 = !DILocation(line: 58, column: 53, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1866, file: !88, line: 57, column: 9)
!1876 = !DILocation(line: 58, column: 13, scope: !1875)
!1877 = !DILocation(line: 58, column: 17, scope: !1875)
!1878 = !DILocation(line: 58, column: 19, scope: !1875)
!1879 = !DILocation(line: 58, column: 18, scope: !1875)
!1880 = !DILocation(line: 58, column: 33, scope: !1875)
!1881 = !DILocation(line: 58, column: 31, scope: !1875)
!1882 = !DILocation(line: 58, column: 45, scope: !1875)
!1883 = !DILocation(line: 58, column: 50, scope: !1875)
!1884 = !DILocation(line: 59, column: 9, scope: !1875)
!1885 = !DILocation(line: 56, column: 53, scope: !1866)
!1886 = !DILocation(line: 56, column: 9, scope: !1866)
!1887 = distinct !{!1887, !1873, !1888, !167}
!1888 = !DILocation(line: 59, column: 9, scope: !1862)
!1889 = !DILocation(line: 60, column: 5, scope: !1853)
!1890 = !DILocalVariable(name: "temp", scope: !1824, file: !88, line: 62, type: !1067)
!1891 = !DILocation(line: 62, column: 14, scope: !1824)
!1892 = !DILocalVariable(name: "temp_bytes", scope: !1824, file: !88, line: 63, type: !55)
!1893 = !DILocation(line: 63, column: 20, scope: !1824)
!1894 = !DILocation(line: 63, column: 51, scope: !1824)
!1895 = !DILocalVariable(name: "i", scope: !1896, file: !88, line: 64, type: !51)
!1896 = distinct !DILexicalBlock(scope: !1824, file: !88, line: 64, column: 5)
!1897 = !DILocation(line: 64, column: 14, scope: !1896)
!1898 = !DILocation(line: 64, column: 26, scope: !1896)
!1899 = !DILocation(line: 64, column: 18, scope: !1896)
!1900 = !DILocation(line: 64, column: 29, scope: !1896)
!1901 = !DILocation(line: 64, column: 10, scope: !1896)
!1902 = !DILocation(line: 64, column: 34, scope: !1903)
!1903 = distinct !DILexicalBlock(scope: !1896, file: !88, line: 64, column: 5)
!1904 = !DILocation(line: 64, column: 36, scope: !1903)
!1905 = !DILocation(line: 64, column: 5, scope: !1896)
!1906 = !DILocalVariable(name: "j", scope: !1907, file: !88, line: 65, type: !51)
!1907 = distinct !DILexicalBlock(scope: !1908, file: !88, line: 65, column: 9)
!1908 = distinct !DILexicalBlock(scope: !1903, file: !88, line: 64, column: 48)
!1909 = !DILocation(line: 65, column: 18, scope: !1907)
!1910 = !DILocation(line: 65, column: 22, scope: !1907)
!1911 = !DILocation(line: 65, column: 14, scope: !1907)
!1912 = !DILocation(line: 65, column: 25, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !1907, file: !88, line: 65, column: 9)
!1914 = !DILocation(line: 65, column: 37, scope: !1913)
!1915 = !DILocation(line: 65, column: 29, scope: !1913)
!1916 = !DILocation(line: 65, column: 27, scope: !1913)
!1917 = !DILocation(line: 65, column: 9, scope: !1907)
!1918 = !DILocalVariable(name: "top", scope: !1919, file: !88, line: 67, type: !56)
!1919 = distinct !DILexicalBlock(scope: !1913, file: !88, line: 65, column: 46)
!1920 = !DILocation(line: 67, column: 27, scope: !1919)
!1921 = !DILocation(line: 67, column: 39, scope: !1919)
!1922 = !DILocation(line: 67, column: 50, scope: !1919)
!1923 = !DILocation(line: 67, column: 34, scope: !1919)
!1924 = !DILocation(line: 67, column: 57, scope: !1919)
!1925 = !DILocation(line: 67, column: 54, scope: !1919)
!1926 = !DILocation(line: 67, column: 66, scope: !1919)
!1927 = !DILocation(line: 67, column: 33, scope: !1919)
!1928 = !DILocation(line: 68, column: 18, scope: !1919)
!1929 = !DILocation(line: 68, column: 29, scope: !1919)
!1930 = !DILocation(line: 68, column: 13, scope: !1919)
!1931 = !DILocation(line: 68, column: 33, scope: !1919)
!1932 = !DILocalVariable(name: "k", scope: !1933, file: !88, line: 69, type: !51)
!1933 = distinct !DILexicalBlock(scope: !1919, file: !88, line: 69, column: 13)
!1934 = !DILocation(line: 69, column: 21, scope: !1933)
!1935 = !DILocation(line: 69, column: 25, scope: !1933)
!1936 = !DILocation(line: 69, column: 37, scope: !1933)
!1937 = !DILocation(line: 69, column: 17, scope: !1933)
!1938 = !DILocation(line: 69, column: 42, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1933, file: !88, line: 69, column: 13)
!1940 = !DILocation(line: 69, column: 43, scope: !1939)
!1941 = !DILocation(line: 69, column: 13, scope: !1933)
!1942 = !DILocation(line: 70, column: 35, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !1939, file: !88, line: 69, column: 52)
!1944 = !DILocation(line: 70, column: 30, scope: !1943)
!1945 = !DILocation(line: 70, column: 38, scope: !1943)
!1946 = !DILocation(line: 70, column: 22, scope: !1943)
!1947 = !DILocation(line: 70, column: 23, scope: !1943)
!1948 = !DILocation(line: 70, column: 17, scope: !1943)
!1949 = !DILocation(line: 70, column: 27, scope: !1943)
!1950 = !DILocation(line: 71, column: 22, scope: !1943)
!1951 = !DILocation(line: 71, column: 17, scope: !1943)
!1952 = !DILocation(line: 71, column: 25, scope: !1943)
!1953 = !DILocation(line: 72, column: 13, scope: !1943)
!1954 = !DILocation(line: 69, column: 49, scope: !1939)
!1955 = !DILocation(line: 69, column: 13, scope: !1939)
!1956 = distinct !{!1956, !1941, !1957, !167}
!1957 = !DILocation(line: 72, column: 13, scope: !1933)
!1958 = !DILocalVariable(name: "jj", scope: !1959, file: !88, line: 74, type: !51)
!1959 = distinct !DILexicalBlock(scope: !1919, file: !88, line: 74, column: 13)
!1960 = !DILocation(line: 74, column: 22, scope: !1959)
!1961 = !DILocation(line: 74, column: 18, scope: !1959)
!1962 = !DILocation(line: 74, column: 30, scope: !1963)
!1963 = distinct !DILexicalBlock(scope: !1959, file: !88, line: 74, column: 13)
!1964 = !DILocation(line: 74, column: 33, scope: !1963)
!1965 = !DILocation(line: 74, column: 13, scope: !1959)
!1966 = !DILocation(line: 75, column: 20, scope: !1967)
!1967 = distinct !DILexicalBlock(scope: !1968, file: !88, line: 75, column: 20)
!1968 = distinct !DILexicalBlock(scope: !1963, file: !88, line: 74, column: 53)
!1969 = !DILocation(line: 75, column: 22, scope: !1967)
!1970 = !DILocation(line: 75, column: 25, scope: !1967)
!1971 = !DILocation(line: 79, column: 47, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1967, file: !88, line: 75, column: 30)
!1973 = !DILocation(line: 79, column: 65, scope: !1972)
!1974 = !DILocation(line: 79, column: 52, scope: !1972)
!1975 = !DILocation(line: 79, column: 68, scope: !1972)
!1976 = !DILocation(line: 79, column: 41, scope: !1972)
!1977 = !DILocation(line: 79, column: 21, scope: !1972)
!1978 = !DILocation(line: 79, column: 32, scope: !1972)
!1979 = !DILocation(line: 79, column: 34, scope: !1972)
!1980 = !DILocation(line: 79, column: 38, scope: !1972)
!1981 = !DILocation(line: 81, column: 17, scope: !1972)
!1982 = !DILocation(line: 86, column: 47, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1967, file: !88, line: 82, column: 22)
!1984 = !DILocation(line: 86, column: 65, scope: !1983)
!1985 = !DILocation(line: 86, column: 52, scope: !1983)
!1986 = !DILocation(line: 86, column: 68, scope: !1983)
!1987 = !DILocation(line: 86, column: 41, scope: !1983)
!1988 = !DILocation(line: 86, column: 73, scope: !1983)
!1989 = !DILocation(line: 86, column: 21, scope: !1983)
!1990 = !DILocation(line: 86, column: 32, scope: !1983)
!1991 = !DILocation(line: 86, column: 34, scope: !1983)
!1992 = !DILocation(line: 86, column: 38, scope: !1983)
!1993 = !DILocation(line: 89, column: 13, scope: !1968)
!1994 = !DILocation(line: 74, column: 49, scope: !1963)
!1995 = !DILocation(line: 74, column: 13, scope: !1963)
!1996 = distinct !{!1996, !1965, !1997, !167}
!1997 = !DILocation(line: 89, column: 13, scope: !1959)
!1998 = !DILocalVariable(name: "k", scope: !1999, file: !88, line: 92, type: !82)
!1999 = distinct !DILexicalBlock(scope: !1919, file: !88, line: 92, column: 13)
!2000 = !DILocation(line: 92, column: 24, scope: !1999)
!2001 = !DILocation(line: 92, column: 17, scope: !1999)
!2002 = !DILocation(line: 92, column: 29, scope: !2003)
!2003 = distinct !DILexicalBlock(scope: !1999, file: !88, line: 92, column: 13)
!2004 = !DILocation(line: 92, column: 33, scope: !2003)
!2005 = !DILocation(line: 92, column: 31, scope: !2003)
!2006 = !DILocation(line: 92, column: 13, scope: !1999)
!2007 = !DILocation(line: 93, column: 28, scope: !2008)
!2008 = distinct !DILexicalBlock(scope: !2003, file: !88, line: 92, column: 51)
!2009 = !DILocation(line: 93, column: 34, scope: !2008)
!2010 = !DILocation(line: 93, column: 46, scope: !2008)
!2011 = !DILocation(line: 93, column: 38, scope: !2008)
!2012 = !DILocation(line: 93, column: 36, scope: !2008)
!2013 = !DILocation(line: 93, column: 51, scope: !2008)
!2014 = !DILocation(line: 93, column: 49, scope: !2008)
!2015 = !DILocation(line: 93, column: 56, scope: !2008)
!2016 = !DILocation(line: 93, column: 54, scope: !2008)
!2017 = !DILocation(line: 93, column: 70, scope: !2008)
!2018 = !DILocation(line: 93, column: 68, scope: !2008)
!2019 = !DILocation(line: 93, column: 77, scope: !2008)
!2020 = !DILocation(line: 93, column: 80, scope: !2008)
!2021 = !DILocation(line: 93, column: 78, scope: !2008)
!2022 = !DILocation(line: 93, column: 76, scope: !2008)
!2023 = !DILocation(line: 93, column: 83, scope: !2008)
!2024 = !DILocation(line: 93, column: 89, scope: !2008)
!2025 = !DILocation(line: 93, column: 101, scope: !2008)
!2026 = !DILocation(line: 93, column: 93, scope: !2008)
!2027 = !DILocation(line: 93, column: 91, scope: !2008)
!2028 = !DILocation(line: 93, column: 106, scope: !2008)
!2029 = !DILocation(line: 93, column: 104, scope: !2008)
!2030 = !DILocation(line: 93, column: 111, scope: !2008)
!2031 = !DILocation(line: 93, column: 109, scope: !2008)
!2032 = !DILocation(line: 93, column: 125, scope: !2008)
!2033 = !DILocation(line: 93, column: 123, scope: !2008)
!2034 = !DILocation(line: 93, column: 82, scope: !2008)
!2035 = !DILocation(line: 93, column: 73, scope: !2008)
!2036 = !DILocation(line: 93, column: 22, scope: !2008)
!2037 = !DILocation(line: 93, column: 17, scope: !2008)
!2038 = !DILocation(line: 93, column: 25, scope: !2008)
!2039 = !DILocation(line: 94, column: 13, scope: !2008)
!2040 = !DILocation(line: 92, column: 48, scope: !2003)
!2041 = !DILocation(line: 92, column: 13, scope: !2003)
!2042 = distinct !{!2042, !2006, !2043, !167}
!2043 = !DILocation(line: 94, column: 13, scope: !1999)
!2044 = !DILocation(line: 95, column: 9, scope: !1919)
!2045 = !DILocation(line: 65, column: 42, scope: !1913)
!2046 = !DILocation(line: 65, column: 9, scope: !1913)
!2047 = distinct !{!2047, !1917, !2048, !167}
!2048 = !DILocation(line: 95, column: 9, scope: !1907)
!2049 = !DILocation(line: 96, column: 5, scope: !1908)
!2050 = !DILocation(line: 64, column: 44, scope: !1903)
!2051 = !DILocation(line: 64, column: 5, scope: !1903)
!2052 = distinct !{!2052, !1905, !2053, !167}
!2053 = !DILocation(line: 96, column: 5, scope: !1896)
!2054 = !DILocalVariable(name: "i", scope: !2055, file: !88, line: 99, type: !51)
!2055 = distinct !DILexicalBlock(scope: !1824, file: !88, line: 99, column: 5)
!2056 = !DILocation(line: 99, column: 14, scope: !2055)
!2057 = !DILocation(line: 99, column: 10, scope: !2055)
!2058 = !DILocation(line: 99, column: 21, scope: !2059)
!2059 = distinct !DILexicalBlock(scope: !2055, file: !88, line: 99, column: 5)
!2060 = !DILocation(line: 99, column: 33, scope: !2059)
!2061 = !DILocation(line: 99, column: 25, scope: !2059)
!2062 = !DILocation(line: 99, column: 23, scope: !2059)
!2063 = !DILocation(line: 99, column: 5, scope: !2055)
!2064 = !DILocation(line: 105, column: 18, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !2059, file: !88, line: 100, column: 5)
!2066 = !DILocation(line: 105, column: 20, scope: !2065)
!2067 = !DILocation(line: 105, column: 28, scope: !2065)
!2068 = !DILocation(line: 105, column: 39, scope: !2065)
!2069 = !DILocation(line: 105, column: 40, scope: !2065)
!2070 = !DILocation(line: 105, column: 44, scope: !2065)
!2071 = !DILocation(line: 105, column: 25, scope: !2065)
!2072 = !DILocation(line: 105, column: 9, scope: !2065)
!2073 = !DILocation(line: 105, column: 11, scope: !2065)
!2074 = !DILocation(line: 105, column: 16, scope: !2065)
!2075 = !DILocation(line: 106, column: 18, scope: !2065)
!2076 = !DILocation(line: 106, column: 20, scope: !2065)
!2077 = !DILocation(line: 106, column: 21, scope: !2065)
!2078 = !DILocation(line: 106, column: 28, scope: !2065)
!2079 = !DILocation(line: 106, column: 39, scope: !2065)
!2080 = !DILocation(line: 106, column: 40, scope: !2065)
!2081 = !DILocation(line: 106, column: 44, scope: !2065)
!2082 = !DILocation(line: 106, column: 25, scope: !2065)
!2083 = !DILocation(line: 106, column: 9, scope: !2065)
!2084 = !DILocation(line: 106, column: 11, scope: !2065)
!2085 = !DILocation(line: 106, column: 12, scope: !2065)
!2086 = !DILocation(line: 106, column: 16, scope: !2065)
!2087 = !DILocation(line: 108, column: 5, scope: !2065)
!2088 = !DILocation(line: 99, column: 38, scope: !2059)
!2089 = !DILocation(line: 99, column: 5, scope: !2059)
!2090 = distinct !{!2090, !2063, !2091, !167}
!2091 = !DILocation(line: 108, column: 5, scope: !2055)
!2092 = !DILocation(line: 109, column: 1, scope: !1824)
!2093 = distinct !DISubprogram(name: "compute_A", scope: !88, file: !88, line: 154, type: !2094, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !79, retainedNodes: !91)
!2094 = !DISubroutineType(types: !2095)
!2095 = !{null, !353, !81, !55}
!2096 = !DILocalVariable(name: "p", arg: 1, scope: !2093, file: !88, line: 154, type: !353)
!2097 = !DILocation(line: 154, column: 44, scope: !2093)
!2098 = !DILocalVariable(name: "VtL", arg: 2, scope: !2093, file: !88, line: 154, type: !81)
!2099 = !DILocation(line: 154, column: 57, scope: !2093)
!2100 = !DILocalVariable(name: "A_out", arg: 3, scope: !2093, file: !88, line: 154, type: !55)
!2101 = !DILocation(line: 154, column: 77, scope: !2093)
!2102 = !DILocalVariable(name: "bits_to_shift", scope: !2093, file: !88, line: 159, type: !51)
!2103 = !DILocation(line: 159, column: 9, scope: !2093)
!2104 = !DILocalVariable(name: "words_to_shift", scope: !2093, file: !88, line: 160, type: !51)
!2105 = !DILocation(line: 160, column: 9, scope: !2093)
!2106 = !DILocalVariable(name: "m_vec_limbs", scope: !2093, file: !88, line: 161, type: !434)
!2107 = !DILocation(line: 161, column: 15, scope: !2093)
!2108 = !DILocation(line: 161, column: 47, scope: !2093)
!2109 = !DILocation(line: 161, column: 29, scope: !2093)
!2110 = !DILocalVariable(name: "A", scope: !2093, file: !88, line: 162, type: !2111)
!2111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 239616, elements: !2112)
!2112 = !{!2113}
!2113 = !DISubrange(count: 3744)
!2114 = !DILocation(line: 162, column: 14, scope: !2093)
!2115 = !DILocalVariable(name: "A_width", scope: !2093, file: !88, line: 163, type: !82)
!2116 = !DILocation(line: 163, column: 12, scope: !2093)
!2117 = !DILocation(line: 163, column: 32, scope: !2093)
!2118 = !DILocation(line: 163, column: 24, scope: !2093)
!2119 = !DILocation(line: 163, column: 43, scope: !2093)
!2120 = !DILocation(line: 163, column: 35, scope: !2093)
!2121 = !DILocation(line: 163, column: 34, scope: !2093)
!2122 = !DILocation(line: 163, column: 46, scope: !2093)
!2123 = !DILocation(line: 163, column: 51, scope: !2093)
!2124 = !DILocation(line: 163, column: 55, scope: !2093)
!2125 = !DILocalVariable(name: "Mi", scope: !2093, file: !88, line: 164, type: !634)
!2126 = !DILocation(line: 164, column: 21, scope: !2093)
!2127 = !DILocalVariable(name: "Mj", scope: !2093, file: !88, line: 164, type: !634)
!2128 = !DILocation(line: 164, column: 26, scope: !2093)
!2129 = !DILocation(line: 167, column: 16, scope: !2130)
!2130 = distinct !DILexicalBlock(scope: !2093, file: !88, line: 167, column: 8)
!2131 = !DILocation(line: 167, column: 8, scope: !2130)
!2132 = !DILocation(line: 167, column: 19, scope: !2130)
!2133 = !DILocation(line: 167, column: 24, scope: !2130)
!2134 = !DILocalVariable(name: "mask", scope: !2135, file: !88, line: 168, type: !46)
!2135 = distinct !DILexicalBlock(scope: !2130, file: !88, line: 167, column: 29)
!2136 = !DILocation(line: 168, column: 18, scope: !2135)
!2137 = !DILocation(line: 169, column: 27, scope: !2135)
!2138 = !DILocation(line: 169, column: 19, scope: !2135)
!2139 = !DILocation(line: 169, column: 30, scope: !2135)
!2140 = !DILocation(line: 169, column: 35, scope: !2135)
!2141 = !DILocation(line: 169, column: 14, scope: !2135)
!2142 = !DILocation(line: 170, column: 14, scope: !2135)
!2143 = !DILocalVariable(name: "i", scope: !2144, file: !88, line: 171, type: !51)
!2144 = distinct !DILexicalBlock(scope: !2135, file: !88, line: 171, column: 9)
!2145 = !DILocation(line: 171, column: 18, scope: !2144)
!2146 = !DILocation(line: 171, column: 14, scope: !2144)
!2147 = !DILocation(line: 171, column: 25, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !2144, file: !88, line: 171, column: 9)
!2149 = !DILocation(line: 171, column: 37, scope: !2148)
!2150 = !DILocation(line: 171, column: 29, scope: !2148)
!2151 = !DILocation(line: 171, column: 48, scope: !2148)
!2152 = !DILocation(line: 171, column: 40, scope: !2148)
!2153 = !DILocation(line: 171, column: 39, scope: !2148)
!2154 = !DILocation(line: 171, column: 27, scope: !2148)
!2155 = !DILocation(line: 171, column: 9, scope: !2144)
!2156 = !DILocation(line: 173, column: 53, scope: !2157)
!2157 = distinct !DILexicalBlock(scope: !2148, file: !88, line: 172, column: 9)
!2158 = !DILocation(line: 173, column: 13, scope: !2157)
!2159 = !DILocation(line: 173, column: 17, scope: !2157)
!2160 = !DILocation(line: 173, column: 19, scope: !2157)
!2161 = !DILocation(line: 173, column: 18, scope: !2157)
!2162 = !DILocation(line: 173, column: 33, scope: !2157)
!2163 = !DILocation(line: 173, column: 31, scope: !2157)
!2164 = !DILocation(line: 173, column: 45, scope: !2157)
!2165 = !DILocation(line: 173, column: 50, scope: !2157)
!2166 = !DILocation(line: 174, column: 9, scope: !2157)
!2167 = !DILocation(line: 171, column: 53, scope: !2148)
!2168 = !DILocation(line: 171, column: 9, scope: !2148)
!2169 = distinct !{!2169, !2155, !2170, !167}
!2170 = !DILocation(line: 174, column: 9, scope: !2144)
!2171 = !DILocation(line: 175, column: 5, scope: !2135)
!2172 = !DILocalVariable(name: "i", scope: !2173, file: !88, line: 177, type: !51)
!2173 = distinct !DILexicalBlock(scope: !2093, file: !88, line: 177, column: 5)
!2174 = !DILocation(line: 177, column: 14, scope: !2173)
!2175 = !DILocation(line: 177, column: 10, scope: !2173)
!2176 = !DILocation(line: 177, column: 21, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !2173, file: !88, line: 177, column: 5)
!2178 = !DILocation(line: 177, column: 34, scope: !2177)
!2179 = !DILocation(line: 177, column: 26, scope: !2177)
!2180 = !DILocation(line: 177, column: 37, scope: !2177)
!2181 = !DILocation(line: 177, column: 23, scope: !2177)
!2182 = !DILocation(line: 177, column: 5, scope: !2173)
!2183 = !DILocalVariable(name: "j", scope: !2184, file: !88, line: 178, type: !51)
!2184 = distinct !DILexicalBlock(scope: !2185, file: !88, line: 178, column: 9)
!2185 = distinct !DILexicalBlock(scope: !2177, file: !88, line: 177, column: 47)
!2186 = !DILocation(line: 178, column: 18, scope: !2184)
!2187 = !DILocation(line: 178, column: 30, scope: !2184)
!2188 = !DILocation(line: 178, column: 22, scope: !2184)
!2189 = !DILocation(line: 178, column: 33, scope: !2184)
!2190 = !DILocation(line: 178, column: 14, scope: !2184)
!2191 = !DILocation(line: 178, column: 38, scope: !2192)
!2192 = distinct !DILexicalBlock(scope: !2184, file: !88, line: 178, column: 9)
!2193 = !DILocation(line: 178, column: 43, scope: !2192)
!2194 = !DILocation(line: 178, column: 40, scope: !2192)
!2195 = !DILocation(line: 178, column: 9, scope: !2184)
!2196 = !DILocation(line: 180, column: 18, scope: !2197)
!2197 = distinct !DILexicalBlock(scope: !2192, file: !88, line: 178, column: 51)
!2198 = !DILocation(line: 180, column: 24, scope: !2197)
!2199 = !DILocation(line: 180, column: 28, scope: !2197)
!2200 = !DILocation(line: 180, column: 26, scope: !2197)
!2201 = !DILocation(line: 180, column: 50, scope: !2197)
!2202 = !DILocation(line: 180, column: 42, scope: !2197)
!2203 = !DILocation(line: 180, column: 40, scope: !2197)
!2204 = !DILocation(line: 180, column: 22, scope: !2197)
!2205 = !DILocation(line: 180, column: 16, scope: !2197)
!2206 = !DILocalVariable(name: "c", scope: !2207, file: !88, line: 181, type: !51)
!2207 = distinct !DILexicalBlock(scope: !2197, file: !88, line: 181, column: 13)
!2208 = !DILocation(line: 181, column: 22, scope: !2207)
!2209 = !DILocation(line: 181, column: 18, scope: !2207)
!2210 = !DILocation(line: 181, column: 29, scope: !2211)
!2211 = distinct !DILexicalBlock(scope: !2207, file: !88, line: 181, column: 13)
!2212 = !DILocation(line: 181, column: 41, scope: !2211)
!2213 = !DILocation(line: 181, column: 33, scope: !2211)
!2214 = !DILocation(line: 181, column: 31, scope: !2211)
!2215 = !DILocation(line: 181, column: 13, scope: !2207)
!2216 = !DILocalVariable(name: "k", scope: !2217, file: !88, line: 182, type: !51)
!2217 = distinct !DILexicalBlock(scope: !2218, file: !88, line: 182, column: 17)
!2218 = distinct !DILexicalBlock(scope: !2211, file: !88, line: 181, column: 50)
!2219 = !DILocation(line: 182, column: 26, scope: !2217)
!2220 = !DILocation(line: 182, column: 22, scope: !2217)
!2221 = !DILocation(line: 182, column: 33, scope: !2222)
!2222 = distinct !DILexicalBlock(scope: !2217, file: !88, line: 182, column: 17)
!2223 = !DILocation(line: 182, column: 37, scope: !2222)
!2224 = !DILocation(line: 182, column: 35, scope: !2222)
!2225 = !DILocation(line: 182, column: 17, scope: !2217)
!2226 = !DILocation(line: 184, column: 78, scope: !2227)
!2227 = distinct !DILexicalBlock(scope: !2222, file: !88, line: 183, column: 17)
!2228 = !DILocation(line: 184, column: 81, scope: !2227)
!2229 = !DILocation(line: 184, column: 85, scope: !2227)
!2230 = !DILocation(line: 184, column: 87, scope: !2227)
!2231 = !DILocation(line: 184, column: 86, scope: !2227)
!2232 = !DILocation(line: 184, column: 83, scope: !2227)
!2233 = !DILocation(line: 184, column: 103, scope: !2227)
!2234 = !DILocation(line: 184, column: 100, scope: !2227)
!2235 = !DILocation(line: 184, column: 32, scope: !2227)
!2236 = !DILocation(line: 184, column: 24, scope: !2227)
!2237 = !DILocation(line: 184, column: 37, scope: !2227)
!2238 = !DILocation(line: 184, column: 35, scope: !2227)
!2239 = !DILocation(line: 184, column: 41, scope: !2227)
!2240 = !DILocation(line: 184, column: 39, scope: !2227)
!2241 = !DILocation(line: 184, column: 46, scope: !2227)
!2242 = !DILocation(line: 184, column: 50, scope: !2227)
!2243 = !DILocation(line: 184, column: 48, scope: !2227)
!2244 = !DILocation(line: 184, column: 66, scope: !2227)
!2245 = !DILocation(line: 184, column: 65, scope: !2227)
!2246 = !DILocation(line: 184, column: 43, scope: !2227)
!2247 = !DILocation(line: 184, column: 21, scope: !2227)
!2248 = !DILocation(line: 184, column: 75, scope: !2227)
!2249 = !DILocation(line: 185, column: 24, scope: !2250)
!2250 = distinct !DILexicalBlock(scope: !2227, file: !88, line: 185, column: 24)
!2251 = !DILocation(line: 185, column: 38, scope: !2250)
!2252 = !DILocation(line: 186, column: 86, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !2250, file: !88, line: 185, column: 42)
!2254 = !DILocation(line: 186, column: 89, scope: !2253)
!2255 = !DILocation(line: 186, column: 93, scope: !2253)
!2256 = !DILocation(line: 186, column: 95, scope: !2253)
!2257 = !DILocation(line: 186, column: 94, scope: !2253)
!2258 = !DILocation(line: 186, column: 91, scope: !2253)
!2259 = !DILocation(line: 186, column: 115, scope: !2253)
!2260 = !DILocation(line: 186, column: 114, scope: !2253)
!2261 = !DILocation(line: 186, column: 108, scope: !2253)
!2262 = !DILocation(line: 186, column: 36, scope: !2253)
!2263 = !DILocation(line: 186, column: 28, scope: !2253)
!2264 = !DILocation(line: 186, column: 41, scope: !2253)
!2265 = !DILocation(line: 186, column: 39, scope: !2253)
!2266 = !DILocation(line: 186, column: 45, scope: !2253)
!2267 = !DILocation(line: 186, column: 43, scope: !2253)
!2268 = !DILocation(line: 186, column: 50, scope: !2253)
!2269 = !DILocation(line: 186, column: 54, scope: !2253)
!2270 = !DILocation(line: 186, column: 52, scope: !2253)
!2271 = !DILocation(line: 186, column: 69, scope: !2253)
!2272 = !DILocation(line: 186, column: 74, scope: !2253)
!2273 = !DILocation(line: 186, column: 73, scope: !2253)
!2274 = !DILocation(line: 186, column: 47, scope: !2253)
!2275 = !DILocation(line: 186, column: 25, scope: !2253)
!2276 = !DILocation(line: 186, column: 83, scope: !2253)
!2277 = !DILocation(line: 187, column: 21, scope: !2253)
!2278 = !DILocation(line: 188, column: 17, scope: !2227)
!2279 = !DILocation(line: 182, column: 51, scope: !2222)
!2280 = !DILocation(line: 182, column: 17, scope: !2222)
!2281 = distinct !{!2281, !2225, !2282, !167}
!2282 = !DILocation(line: 188, column: 17, scope: !2217)
!2283 = !DILocation(line: 189, column: 13, scope: !2218)
!2284 = !DILocation(line: 181, column: 46, scope: !2211)
!2285 = !DILocation(line: 181, column: 13, scope: !2211)
!2286 = distinct !{!2286, !2215, !2287, !167}
!2287 = !DILocation(line: 189, column: 13, scope: !2207)
!2288 = !DILocation(line: 191, column: 17, scope: !2289)
!2289 = distinct !DILexicalBlock(scope: !2197, file: !88, line: 191, column: 17)
!2290 = !DILocation(line: 191, column: 22, scope: !2289)
!2291 = !DILocation(line: 191, column: 19, scope: !2289)
!2292 = !DILocation(line: 192, column: 22, scope: !2293)
!2293 = distinct !DILexicalBlock(scope: !2289, file: !88, line: 191, column: 25)
!2294 = !DILocation(line: 192, column: 28, scope: !2293)
!2295 = !DILocation(line: 192, column: 32, scope: !2293)
!2296 = !DILocation(line: 192, column: 30, scope: !2293)
!2297 = !DILocation(line: 192, column: 54, scope: !2293)
!2298 = !DILocation(line: 192, column: 46, scope: !2293)
!2299 = !DILocation(line: 192, column: 44, scope: !2293)
!2300 = !DILocation(line: 192, column: 26, scope: !2293)
!2301 = !DILocation(line: 192, column: 20, scope: !2293)
!2302 = !DILocalVariable(name: "c", scope: !2303, file: !88, line: 193, type: !51)
!2303 = distinct !DILexicalBlock(scope: !2293, file: !88, line: 193, column: 17)
!2304 = !DILocation(line: 193, column: 26, scope: !2303)
!2305 = !DILocation(line: 193, column: 22, scope: !2303)
!2306 = !DILocation(line: 193, column: 33, scope: !2307)
!2307 = distinct !DILexicalBlock(scope: !2303, file: !88, line: 193, column: 17)
!2308 = !DILocation(line: 193, column: 45, scope: !2307)
!2309 = !DILocation(line: 193, column: 37, scope: !2307)
!2310 = !DILocation(line: 193, column: 35, scope: !2307)
!2311 = !DILocation(line: 193, column: 17, scope: !2303)
!2312 = !DILocalVariable(name: "k", scope: !2313, file: !88, line: 194, type: !51)
!2313 = distinct !DILexicalBlock(scope: !2314, file: !88, line: 194, column: 21)
!2314 = distinct !DILexicalBlock(scope: !2307, file: !88, line: 193, column: 54)
!2315 = !DILocation(line: 194, column: 30, scope: !2313)
!2316 = !DILocation(line: 194, column: 26, scope: !2313)
!2317 = !DILocation(line: 194, column: 37, scope: !2318)
!2318 = distinct !DILexicalBlock(scope: !2313, file: !88, line: 194, column: 21)
!2319 = !DILocation(line: 194, column: 41, scope: !2318)
!2320 = !DILocation(line: 194, column: 39, scope: !2318)
!2321 = !DILocation(line: 194, column: 21, scope: !2313)
!2322 = !DILocation(line: 196, column: 81, scope: !2323)
!2323 = distinct !DILexicalBlock(scope: !2318, file: !88, line: 195, column: 21)
!2324 = !DILocation(line: 196, column: 84, scope: !2323)
!2325 = !DILocation(line: 196, column: 88, scope: !2323)
!2326 = !DILocation(line: 196, column: 90, scope: !2323)
!2327 = !DILocation(line: 196, column: 89, scope: !2323)
!2328 = !DILocation(line: 196, column: 86, scope: !2323)
!2329 = !DILocation(line: 196, column: 106, scope: !2323)
!2330 = !DILocation(line: 196, column: 103, scope: !2323)
!2331 = !DILocation(line: 196, column: 35, scope: !2323)
!2332 = !DILocation(line: 196, column: 27, scope: !2323)
!2333 = !DILocation(line: 196, column: 40, scope: !2323)
!2334 = !DILocation(line: 196, column: 38, scope: !2323)
!2335 = !DILocation(line: 196, column: 44, scope: !2323)
!2336 = !DILocation(line: 196, column: 42, scope: !2323)
!2337 = !DILocation(line: 196, column: 49, scope: !2323)
!2338 = !DILocation(line: 196, column: 53, scope: !2323)
!2339 = !DILocation(line: 196, column: 51, scope: !2323)
!2340 = !DILocation(line: 196, column: 69, scope: !2323)
!2341 = !DILocation(line: 196, column: 68, scope: !2323)
!2342 = !DILocation(line: 196, column: 46, scope: !2323)
!2343 = !DILocation(line: 196, column: 25, scope: !2323)
!2344 = !DILocation(line: 196, column: 78, scope: !2323)
!2345 = !DILocation(line: 197, column: 28, scope: !2346)
!2346 = distinct !DILexicalBlock(scope: !2323, file: !88, line: 197, column: 28)
!2347 = !DILocation(line: 197, column: 42, scope: !2346)
!2348 = !DILocation(line: 198, column: 89, scope: !2349)
!2349 = distinct !DILexicalBlock(scope: !2346, file: !88, line: 197, column: 46)
!2350 = !DILocation(line: 198, column: 92, scope: !2349)
!2351 = !DILocation(line: 198, column: 96, scope: !2349)
!2352 = !DILocation(line: 198, column: 98, scope: !2349)
!2353 = !DILocation(line: 198, column: 97, scope: !2349)
!2354 = !DILocation(line: 198, column: 94, scope: !2349)
!2355 = !DILocation(line: 198, column: 118, scope: !2349)
!2356 = !DILocation(line: 198, column: 117, scope: !2349)
!2357 = !DILocation(line: 198, column: 111, scope: !2349)
!2358 = !DILocation(line: 198, column: 39, scope: !2349)
!2359 = !DILocation(line: 198, column: 31, scope: !2349)
!2360 = !DILocation(line: 198, column: 44, scope: !2349)
!2361 = !DILocation(line: 198, column: 42, scope: !2349)
!2362 = !DILocation(line: 198, column: 48, scope: !2349)
!2363 = !DILocation(line: 198, column: 46, scope: !2349)
!2364 = !DILocation(line: 198, column: 53, scope: !2349)
!2365 = !DILocation(line: 198, column: 57, scope: !2349)
!2366 = !DILocation(line: 198, column: 55, scope: !2349)
!2367 = !DILocation(line: 198, column: 72, scope: !2349)
!2368 = !DILocation(line: 198, column: 77, scope: !2349)
!2369 = !DILocation(line: 198, column: 76, scope: !2349)
!2370 = !DILocation(line: 198, column: 50, scope: !2349)
!2371 = !DILocation(line: 198, column: 29, scope: !2349)
!2372 = !DILocation(line: 198, column: 86, scope: !2349)
!2373 = !DILocation(line: 199, column: 25, scope: !2349)
!2374 = !DILocation(line: 200, column: 21, scope: !2323)
!2375 = !DILocation(line: 194, column: 55, scope: !2318)
!2376 = !DILocation(line: 194, column: 21, scope: !2318)
!2377 = distinct !{!2377, !2321, !2378, !167}
!2378 = !DILocation(line: 200, column: 21, scope: !2313)
!2379 = !DILocation(line: 201, column: 17, scope: !2314)
!2380 = !DILocation(line: 193, column: 50, scope: !2307)
!2381 = !DILocation(line: 193, column: 17, scope: !2307)
!2382 = distinct !{!2382, !2311, !2383, !167}
!2383 = !DILocation(line: 201, column: 17, scope: !2303)
!2384 = !DILocation(line: 202, column: 13, scope: !2293)
!2385 = !DILocation(line: 204, column: 27, scope: !2197)
!2386 = !DILocation(line: 205, column: 16, scope: !2387)
!2387 = distinct !DILexicalBlock(scope: !2197, file: !88, line: 205, column: 16)
!2388 = !DILocation(line: 205, column: 30, scope: !2387)
!2389 = !DILocation(line: 206, column: 32, scope: !2390)
!2390 = distinct !DILexicalBlock(scope: !2387, file: !88, line: 205, column: 36)
!2391 = !DILocation(line: 207, column: 31, scope: !2390)
!2392 = !DILocation(line: 208, column: 13, scope: !2390)
!2393 = !DILocation(line: 209, column: 9, scope: !2197)
!2394 = !DILocation(line: 178, column: 46, scope: !2192)
!2395 = !DILocation(line: 178, column: 9, scope: !2192)
!2396 = distinct !{!2396, !2195, !2397, !167}
!2397 = !DILocation(line: 209, column: 9, scope: !2184)
!2398 = !DILocation(line: 210, column: 5, scope: !2185)
!2399 = !DILocation(line: 177, column: 42, scope: !2177)
!2400 = !DILocation(line: 177, column: 5, scope: !2177)
!2401 = distinct !{!2401, !2182, !2402, !167}
!2402 = !DILocation(line: 210, column: 5, scope: !2173)
!2403 = !DILocalVariable(name: "c", scope: !2404, file: !88, line: 212, type: !82)
!2404 = distinct !DILexicalBlock(scope: !2093, file: !88, line: 212, column: 5)
!2405 = !DILocation(line: 212, column: 17, scope: !2404)
!2406 = !DILocation(line: 212, column: 10, scope: !2404)
!2407 = !DILocation(line: 212, column: 24, scope: !2408)
!2408 = distinct !DILexicalBlock(scope: !2404, file: !88, line: 212, column: 5)
!2409 = !DILocation(line: 212, column: 28, scope: !2408)
!2410 = !DILocation(line: 212, column: 46, scope: !2408)
!2411 = !DILocation(line: 212, column: 38, scope: !2408)
!2412 = !DILocation(line: 212, column: 60, scope: !2408)
!2413 = !DILocation(line: 212, column: 52, scope: !2408)
!2414 = !DILocation(line: 212, column: 62, scope: !2408)
!2415 = !DILocation(line: 212, column: 74, scope: !2408)
!2416 = !DILocation(line: 212, column: 66, scope: !2408)
!2417 = !DILocation(line: 212, column: 65, scope: !2408)
!2418 = !DILocation(line: 212, column: 76, scope: !2408)
!2419 = !DILocation(line: 212, column: 49, scope: !2408)
!2420 = !DILocation(line: 212, column: 79, scope: !2408)
!2421 = !DILocation(line: 212, column: 83, scope: !2408)
!2422 = !DILocation(line: 212, column: 35, scope: !2408)
!2423 = !DILocation(line: 212, column: 26, scope: !2408)
!2424 = !DILocation(line: 212, column: 5, scope: !2404)
!2425 = !DILocation(line: 214, column: 33, scope: !2426)
!2426 = distinct !DILexicalBlock(scope: !2408, file: !88, line: 213, column: 5)
!2427 = !DILocation(line: 214, column: 37, scope: !2426)
!2428 = !DILocation(line: 214, column: 35, scope: !2426)
!2429 = !DILocation(line: 214, column: 9, scope: !2426)
!2430 = !DILocation(line: 215, column: 5, scope: !2426)
!2431 = !DILocation(line: 212, column: 91, scope: !2408)
!2432 = !DILocation(line: 212, column: 5, scope: !2408)
!2433 = distinct !{!2433, !2424, !2434, !167}
!2434 = !DILocation(line: 215, column: 5, scope: !2404)
!2435 = !DILocalVariable(name: "tab", scope: !2093, file: !88, line: 217, type: !2436)
!2436 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 128, elements: !2437)
!2437 = !{!2438}
!2438 = !DISubrange(count: 16)
!2439 = !DILocation(line: 217, column: 19, scope: !2093)
!2440 = !DILocalVariable(name: "i", scope: !2441, file: !88, line: 218, type: !82)
!2441 = distinct !DILexicalBlock(scope: !2093, file: !88, line: 218, column: 5)
!2442 = !DILocation(line: 218, column: 17, scope: !2441)
!2443 = !DILocation(line: 218, column: 10, scope: !2441)
!2444 = !DILocation(line: 218, column: 24, scope: !2445)
!2445 = distinct !DILexicalBlock(scope: !2441, file: !88, line: 218, column: 5)
!2446 = !DILocation(line: 218, column: 26, scope: !2445)
!2447 = !DILocation(line: 218, column: 5, scope: !2441)
!2448 = !DILocation(line: 220, column: 41, scope: !2449)
!2449 = distinct !DILexicalBlock(scope: !2445, file: !88, line: 219, column: 5)
!2450 = !DILocation(line: 220, column: 28, scope: !2449)
!2451 = !DILocation(line: 220, column: 44, scope: !2449)
!2452 = !DILocation(line: 220, column: 22, scope: !2449)
!2453 = !DILocation(line: 220, column: 15, scope: !2449)
!2454 = !DILocation(line: 220, column: 14, scope: !2449)
!2455 = !DILocation(line: 220, column: 9, scope: !2449)
!2456 = !DILocation(line: 220, column: 20, scope: !2449)
!2457 = !DILocation(line: 221, column: 41, scope: !2449)
!2458 = !DILocation(line: 221, column: 28, scope: !2449)
!2459 = !DILocation(line: 221, column: 44, scope: !2449)
!2460 = !DILocation(line: 221, column: 22, scope: !2449)
!2461 = !DILocation(line: 221, column: 15, scope: !2449)
!2462 = !DILocation(line: 221, column: 14, scope: !2449)
!2463 = !DILocation(line: 221, column: 16, scope: !2449)
!2464 = !DILocation(line: 221, column: 9, scope: !2449)
!2465 = !DILocation(line: 221, column: 20, scope: !2449)
!2466 = !DILocation(line: 222, column: 41, scope: !2449)
!2467 = !DILocation(line: 222, column: 28, scope: !2449)
!2468 = !DILocation(line: 222, column: 44, scope: !2449)
!2469 = !DILocation(line: 222, column: 22, scope: !2449)
!2470 = !DILocation(line: 222, column: 15, scope: !2449)
!2471 = !DILocation(line: 222, column: 14, scope: !2449)
!2472 = !DILocation(line: 222, column: 16, scope: !2449)
!2473 = !DILocation(line: 222, column: 9, scope: !2449)
!2474 = !DILocation(line: 222, column: 20, scope: !2449)
!2475 = !DILocation(line: 223, column: 41, scope: !2449)
!2476 = !DILocation(line: 223, column: 28, scope: !2449)
!2477 = !DILocation(line: 223, column: 44, scope: !2449)
!2478 = !DILocation(line: 223, column: 22, scope: !2449)
!2479 = !DILocation(line: 223, column: 15, scope: !2449)
!2480 = !DILocation(line: 223, column: 14, scope: !2449)
!2481 = !DILocation(line: 223, column: 16, scope: !2449)
!2482 = !DILocation(line: 223, column: 9, scope: !2449)
!2483 = !DILocation(line: 223, column: 20, scope: !2449)
!2484 = !DILocation(line: 224, column: 5, scope: !2449)
!2485 = !DILocation(line: 218, column: 41, scope: !2445)
!2486 = !DILocation(line: 218, column: 5, scope: !2445)
!2487 = distinct !{!2487, !2447, !2488, !167}
!2488 = !DILocation(line: 224, column: 5, scope: !2441)
!2489 = !DILocalVariable(name: "low_bit_in_nibble", scope: !2093, file: !88, line: 226, type: !46)
!2490 = !DILocation(line: 226, column: 14, scope: !2093)
!2491 = !DILocalVariable(name: "c", scope: !2492, file: !88, line: 228, type: !82)
!2492 = distinct !DILexicalBlock(scope: !2093, file: !88, line: 228, column: 5)
!2493 = !DILocation(line: 228, column: 17, scope: !2492)
!2494 = !DILocation(line: 228, column: 10, scope: !2492)
!2495 = !DILocation(line: 228, column: 24, scope: !2496)
!2496 = distinct !DILexicalBlock(scope: !2492, file: !88, line: 228, column: 5)
!2497 = !DILocation(line: 228, column: 28, scope: !2496)
!2498 = !DILocation(line: 228, column: 26, scope: !2496)
!2499 = !DILocation(line: 228, column: 5, scope: !2492)
!2500 = !DILocalVariable(name: "r", scope: !2501, file: !88, line: 230, type: !51)
!2501 = distinct !DILexicalBlock(scope: !2502, file: !88, line: 230, column: 9)
!2502 = distinct !DILexicalBlock(scope: !2496, file: !88, line: 229, column: 5)
!2503 = !DILocation(line: 230, column: 18, scope: !2501)
!2504 = !DILocation(line: 230, column: 30, scope: !2501)
!2505 = !DILocation(line: 230, column: 22, scope: !2501)
!2506 = !DILocation(line: 230, column: 14, scope: !2501)
!2507 = !DILocation(line: 230, column: 34, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !2501, file: !88, line: 230, column: 9)
!2509 = !DILocation(line: 230, column: 46, scope: !2508)
!2510 = !DILocation(line: 230, column: 38, scope: !2508)
!2511 = !DILocation(line: 230, column: 60, scope: !2508)
!2512 = !DILocation(line: 230, column: 52, scope: !2508)
!2513 = !DILocation(line: 230, column: 62, scope: !2508)
!2514 = !DILocation(line: 230, column: 74, scope: !2508)
!2515 = !DILocation(line: 230, column: 66, scope: !2508)
!2516 = !DILocation(line: 230, column: 65, scope: !2508)
!2517 = !DILocation(line: 230, column: 76, scope: !2508)
!2518 = !DILocation(line: 230, column: 49, scope: !2508)
!2519 = !DILocation(line: 230, column: 36, scope: !2508)
!2520 = !DILocation(line: 230, column: 9, scope: !2501)
!2521 = !DILocalVariable(name: "pos", scope: !2522, file: !88, line: 232, type: !82)
!2522 = distinct !DILexicalBlock(scope: !2508, file: !88, line: 231, column: 9)
!2523 = !DILocation(line: 232, column: 20, scope: !2522)
!2524 = !DILocation(line: 232, column: 27, scope: !2522)
!2525 = !DILocation(line: 232, column: 28, scope: !2522)
!2526 = !DILocation(line: 232, column: 33, scope: !2522)
!2527 = !DILocation(line: 232, column: 32, scope: !2522)
!2528 = !DILocation(line: 232, column: 43, scope: !2522)
!2529 = !DILocation(line: 232, column: 41, scope: !2522)
!2530 = !DILocation(line: 232, column: 48, scope: !2522)
!2531 = !DILocation(line: 232, column: 49, scope: !2522)
!2532 = !DILocation(line: 232, column: 45, scope: !2522)
!2533 = !DILocalVariable(name: "t0", scope: !2522, file: !88, line: 233, type: !46)
!2534 = !DILocation(line: 233, column: 22, scope: !2522)
!2535 = !DILocation(line: 233, column: 30, scope: !2522)
!2536 = !DILocation(line: 233, column: 28, scope: !2522)
!2537 = !DILocation(line: 233, column: 43, scope: !2522)
!2538 = !DILocation(line: 233, column: 41, scope: !2522)
!2539 = !DILocalVariable(name: "t1", scope: !2522, file: !88, line: 234, type: !46)
!2540 = !DILocation(line: 234, column: 22, scope: !2522)
!2541 = !DILocation(line: 234, column: 30, scope: !2522)
!2542 = !DILocation(line: 234, column: 28, scope: !2522)
!2543 = !DILocation(line: 234, column: 35, scope: !2522)
!2544 = !DILocation(line: 234, column: 43, scope: !2522)
!2545 = !DILocation(line: 234, column: 41, scope: !2522)
!2546 = !DILocalVariable(name: "t2", scope: !2522, file: !88, line: 235, type: !46)
!2547 = !DILocation(line: 235, column: 22, scope: !2522)
!2548 = !DILocation(line: 235, column: 30, scope: !2522)
!2549 = !DILocation(line: 235, column: 28, scope: !2522)
!2550 = !DILocation(line: 235, column: 35, scope: !2522)
!2551 = !DILocation(line: 235, column: 43, scope: !2522)
!2552 = !DILocation(line: 235, column: 41, scope: !2522)
!2553 = !DILocalVariable(name: "t3", scope: !2522, file: !88, line: 236, type: !46)
!2554 = !DILocation(line: 236, column: 22, scope: !2522)
!2555 = !DILocation(line: 236, column: 30, scope: !2522)
!2556 = !DILocation(line: 236, column: 28, scope: !2522)
!2557 = !DILocation(line: 236, column: 35, scope: !2522)
!2558 = !DILocation(line: 236, column: 43, scope: !2522)
!2559 = !DILocation(line: 236, column: 41, scope: !2522)
!2560 = !DILocalVariable(name: "t", scope: !2561, file: !88, line: 237, type: !82)
!2561 = distinct !DILexicalBlock(scope: !2522, file: !88, line: 237, column: 13)
!2562 = !DILocation(line: 237, column: 25, scope: !2561)
!2563 = !DILocation(line: 237, column: 18, scope: !2561)
!2564 = !DILocation(line: 237, column: 32, scope: !2565)
!2565 = distinct !DILexicalBlock(scope: !2561, file: !88, line: 237, column: 13)
!2566 = !DILocation(line: 237, column: 34, scope: !2565)
!2567 = !DILocation(line: 237, column: 13, scope: !2561)
!2568 = !DILocation(line: 239, column: 81, scope: !2569)
!2569 = distinct !DILexicalBlock(scope: !2565, file: !88, line: 238, column: 13)
!2570 = !DILocation(line: 239, column: 90, scope: !2569)
!2571 = !DILocation(line: 239, column: 89, scope: !2569)
!2572 = !DILocation(line: 239, column: 91, scope: !2569)
!2573 = !DILocation(line: 239, column: 84, scope: !2569)
!2574 = !DILocation(line: 239, column: 83, scope: !2569)
!2575 = !DILocation(line: 239, column: 97, scope: !2569)
!2576 = !DILocation(line: 239, column: 106, scope: !2569)
!2577 = !DILocation(line: 239, column: 105, scope: !2569)
!2578 = !DILocation(line: 239, column: 107, scope: !2569)
!2579 = !DILocation(line: 239, column: 100, scope: !2569)
!2580 = !DILocation(line: 239, column: 99, scope: !2569)
!2581 = !DILocation(line: 239, column: 95, scope: !2569)
!2582 = !DILocation(line: 239, column: 113, scope: !2569)
!2583 = !DILocation(line: 239, column: 122, scope: !2569)
!2584 = !DILocation(line: 239, column: 121, scope: !2569)
!2585 = !DILocation(line: 239, column: 123, scope: !2569)
!2586 = !DILocation(line: 239, column: 116, scope: !2569)
!2587 = !DILocation(line: 239, column: 115, scope: !2569)
!2588 = !DILocation(line: 239, column: 111, scope: !2569)
!2589 = !DILocation(line: 239, column: 129, scope: !2569)
!2590 = !DILocation(line: 239, column: 138, scope: !2569)
!2591 = !DILocation(line: 239, column: 137, scope: !2569)
!2592 = !DILocation(line: 239, column: 139, scope: !2569)
!2593 = !DILocation(line: 239, column: 132, scope: !2569)
!2594 = !DILocation(line: 239, column: 131, scope: !2569)
!2595 = !DILocation(line: 239, column: 127, scope: !2569)
!2596 = !DILocation(line: 239, column: 21, scope: !2569)
!2597 = !DILocation(line: 239, column: 23, scope: !2569)
!2598 = !DILocation(line: 239, column: 22, scope: !2569)
!2599 = !DILocation(line: 239, column: 33, scope: !2569)
!2600 = !DILocation(line: 239, column: 25, scope: !2569)
!2601 = !DILocation(line: 239, column: 24, scope: !2569)
!2602 = !DILocation(line: 239, column: 36, scope: !2569)
!2603 = !DILocation(line: 239, column: 41, scope: !2569)
!2604 = !DILocation(line: 239, column: 40, scope: !2569)
!2605 = !DILocation(line: 239, column: 51, scope: !2569)
!2606 = !DILocation(line: 239, column: 49, scope: !2569)
!2607 = !DILocation(line: 239, column: 57, scope: !2569)
!2608 = !DILocation(line: 239, column: 59, scope: !2569)
!2609 = !DILocation(line: 239, column: 58, scope: !2569)
!2610 = !DILocation(line: 239, column: 69, scope: !2569)
!2611 = !DILocation(line: 239, column: 61, scope: !2569)
!2612 = !DILocation(line: 239, column: 60, scope: !2569)
!2613 = !DILocation(line: 239, column: 72, scope: !2569)
!2614 = !DILocation(line: 239, column: 53, scope: !2569)
!2615 = !DILocation(line: 239, column: 17, scope: !2569)
!2616 = !DILocation(line: 239, column: 78, scope: !2569)
!2617 = !DILocation(line: 240, column: 13, scope: !2569)
!2618 = !DILocation(line: 237, column: 49, scope: !2565)
!2619 = !DILocation(line: 237, column: 13, scope: !2565)
!2620 = distinct !{!2620, !2567, !2621, !167}
!2621 = !DILocation(line: 240, column: 13, scope: !2561)
!2622 = !DILocation(line: 241, column: 9, scope: !2522)
!2623 = !DILocation(line: 230, column: 82, scope: !2508)
!2624 = !DILocation(line: 230, column: 9, scope: !2508)
!2625 = distinct !{!2625, !2520, !2626, !167}
!2626 = !DILocation(line: 241, column: 9, scope: !2501)
!2627 = !DILocation(line: 242, column: 5, scope: !2502)
!2628 = !DILocation(line: 228, column: 38, scope: !2496)
!2629 = !DILocation(line: 228, column: 5, scope: !2496)
!2630 = distinct !{!2630, !2499, !2631, !167}
!2631 = !DILocation(line: 242, column: 5, scope: !2492)
!2632 = !DILocalVariable(name: "r", scope: !2633, file: !88, line: 250, type: !51)
!2633 = distinct !DILexicalBlock(scope: !2093, file: !88, line: 250, column: 5)
!2634 = !DILocation(line: 250, column: 14, scope: !2633)
!2635 = !DILocation(line: 250, column: 10, scope: !2633)
!2636 = !DILocation(line: 250, column: 21, scope: !2637)
!2637 = distinct !DILexicalBlock(scope: !2633, file: !88, line: 250, column: 5)
!2638 = !DILocation(line: 250, column: 33, scope: !2637)
!2639 = !DILocation(line: 250, column: 25, scope: !2637)
!2640 = !DILocation(line: 250, column: 23, scope: !2637)
!2641 = !DILocation(line: 250, column: 5, scope: !2633)
!2642 = !DILocalVariable(name: "c", scope: !2643, file: !88, line: 252, type: !51)
!2643 = distinct !DILexicalBlock(scope: !2644, file: !88, line: 252, column: 9)
!2644 = distinct !DILexicalBlock(scope: !2637, file: !88, line: 251, column: 5)
!2645 = !DILocation(line: 252, column: 18, scope: !2643)
!2646 = !DILocation(line: 252, column: 14, scope: !2643)
!2647 = !DILocation(line: 252, column: 25, scope: !2648)
!2648 = distinct !DILexicalBlock(scope: !2643, file: !88, line: 252, column: 9)
!2649 = !DILocation(line: 252, column: 42, scope: !2648)
!2650 = !DILocation(line: 252, column: 29, scope: !2648)
!2651 = !DILocation(line: 252, column: 44, scope: !2648)
!2652 = !DILocation(line: 252, column: 27, scope: !2648)
!2653 = !DILocation(line: 252, column: 9, scope: !2643)
!2654 = !DILocalVariable(name: "i", scope: !2655, file: !88, line: 254, type: !51)
!2655 = distinct !DILexicalBlock(scope: !2656, file: !88, line: 254, column: 13)
!2656 = distinct !DILexicalBlock(scope: !2648, file: !88, line: 253, column: 9)
!2657 = !DILocation(line: 254, column: 22, scope: !2655)
!2658 = !DILocation(line: 254, column: 18, scope: !2655)
!2659 = !DILocation(line: 254, column: 29, scope: !2660)
!2660 = distinct !DILexicalBlock(scope: !2655, file: !88, line: 254, column: 13)
!2661 = !DILocation(line: 254, column: 33, scope: !2660)
!2662 = !DILocation(line: 254, column: 31, scope: !2660)
!2663 = !DILocation(line: 254, column: 45, scope: !2660)
!2664 = !DILocation(line: 254, column: 37, scope: !2660)
!2665 = !DILocation(line: 254, column: 35, scope: !2660)
!2666 = !DILocation(line: 254, column: 13, scope: !2655)
!2667 = !DILocation(line: 256, column: 46, scope: !2668)
!2668 = distinct !DILexicalBlock(scope: !2660, file: !88, line: 255, column: 13)
!2669 = !DILocation(line: 256, column: 48, scope: !2668)
!2670 = !DILocation(line: 256, column: 47, scope: !2668)
!2671 = !DILocation(line: 256, column: 55, scope: !2668)
!2672 = !DILocation(line: 256, column: 61, scope: !2668)
!2673 = !DILocation(line: 256, column: 59, scope: !2668)
!2674 = !DILocation(line: 256, column: 65, scope: !2668)
!2675 = !DILocation(line: 256, column: 63, scope: !2668)
!2676 = !DILocation(line: 256, column: 44, scope: !2668)
!2677 = !DILocation(line: 256, column: 69, scope: !2668)
!2678 = !DILocation(line: 256, column: 90, scope: !2668)
!2679 = !DILocation(line: 256, column: 77, scope: !2668)
!2680 = !DILocation(line: 256, column: 94, scope: !2668)
!2681 = !DILocation(line: 256, column: 96, scope: !2668)
!2682 = !DILocation(line: 256, column: 95, scope: !2668)
!2683 = !DILocation(line: 256, column: 92, scope: !2668)
!2684 = !DILocation(line: 256, column: 75, scope: !2668)
!2685 = !DILocation(line: 256, column: 101, scope: !2668)
!2686 = !DILocation(line: 256, column: 99, scope: !2668)
!2687 = !DILocation(line: 256, column: 130, scope: !2668)
!2688 = !DILocation(line: 256, column: 117, scope: !2668)
!2689 = !DILocation(line: 256, column: 132, scope: !2668)
!2690 = !DILocation(line: 256, column: 135, scope: !2668)
!2691 = !DILocation(line: 256, column: 134, scope: !2668)
!2692 = !DILocation(line: 256, column: 104, scope: !2668)
!2693 = !DILocation(line: 256, column: 17, scope: !2668)
!2694 = !DILocation(line: 257, column: 13, scope: !2668)
!2695 = !DILocation(line: 254, column: 50, scope: !2660)
!2696 = !DILocation(line: 254, column: 13, scope: !2660)
!2697 = distinct !{!2697, !2666, !2698, !167}
!2698 = !DILocation(line: 257, column: 13, scope: !2655)
!2699 = !DILocation(line: 258, column: 9, scope: !2656)
!2700 = !DILocation(line: 252, column: 50, scope: !2648)
!2701 = !DILocation(line: 252, column: 9, scope: !2648)
!2702 = distinct !{!2702, !2653, !2703, !167}
!2703 = !DILocation(line: 258, column: 9, scope: !2643)
!2704 = !DILocation(line: 259, column: 5, scope: !2644)
!2705 = !DILocation(line: 250, column: 38, scope: !2637)
!2706 = !DILocation(line: 250, column: 5, scope: !2637)
!2707 = distinct !{!2707, !2641, !2708, !167}
!2708 = !DILocation(line: 259, column: 5, scope: !2633)
!2709 = !DILocation(line: 260, column: 1, scope: !2093)
!2710 = distinct !DISubprogram(name: "mat_mul", scope: !870, file: !870, line: 78, type: !2711, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !79, retainedNodes: !91)
!2711 = !DISubroutineType(types: !2712)
!2712 = !{null, !60, !60, !55, !51, !51, !51}
!2713 = !DILocalVariable(name: "a", arg: 1, scope: !2710, file: !870, line: 78, type: !60)
!2714 = !DILocation(line: 78, column: 49, scope: !2710)
!2715 = !DILocalVariable(name: "b", arg: 2, scope: !2710, file: !870, line: 78, type: !60)
!2716 = !DILocation(line: 78, column: 73, scope: !2710)
!2717 = !DILocalVariable(name: "c", arg: 3, scope: !2710, file: !870, line: 79, type: !55)
!2718 = !DILocation(line: 79, column: 36, scope: !2710)
!2719 = !DILocalVariable(name: "colrow_ab", arg: 4, scope: !2710, file: !870, line: 79, type: !51)
!2720 = !DILocation(line: 79, column: 43, scope: !2710)
!2721 = !DILocalVariable(name: "row_a", arg: 5, scope: !2710, file: !870, line: 79, type: !51)
!2722 = !DILocation(line: 79, column: 58, scope: !2710)
!2723 = !DILocalVariable(name: "col_b", arg: 6, scope: !2710, file: !870, line: 79, type: !51)
!2724 = !DILocation(line: 79, column: 69, scope: !2710)
!2725 = !DILocalVariable(name: "i", scope: !2726, file: !870, line: 80, type: !51)
!2726 = distinct !DILexicalBlock(scope: !2710, file: !870, line: 80, column: 5)
!2727 = !DILocation(line: 80, column: 14, scope: !2726)
!2728 = !DILocation(line: 80, column: 10, scope: !2726)
!2729 = !DILocation(line: 80, column: 21, scope: !2730)
!2730 = distinct !DILexicalBlock(scope: !2726, file: !870, line: 80, column: 5)
!2731 = !DILocation(line: 80, column: 25, scope: !2730)
!2732 = !DILocation(line: 80, column: 23, scope: !2730)
!2733 = !DILocation(line: 80, column: 5, scope: !2726)
!2734 = !DILocalVariable(name: "j", scope: !2735, file: !870, line: 81, type: !51)
!2735 = distinct !DILexicalBlock(scope: !2736, file: !870, line: 81, column: 9)
!2736 = distinct !DILexicalBlock(scope: !2730, file: !870, line: 80, column: 53)
!2737 = !DILocation(line: 81, column: 18, scope: !2735)
!2738 = !DILocation(line: 81, column: 14, scope: !2735)
!2739 = !DILocation(line: 81, column: 25, scope: !2740)
!2740 = distinct !DILexicalBlock(scope: !2735, file: !870, line: 81, column: 9)
!2741 = !DILocation(line: 81, column: 29, scope: !2740)
!2742 = !DILocation(line: 81, column: 27, scope: !2740)
!2743 = !DILocation(line: 81, column: 9, scope: !2735)
!2744 = !DILocation(line: 82, column: 26, scope: !2745)
!2745 = distinct !DILexicalBlock(scope: !2740, file: !870, line: 81, column: 46)
!2746 = !DILocation(line: 82, column: 29, scope: !2745)
!2747 = !DILocation(line: 82, column: 33, scope: !2745)
!2748 = !DILocation(line: 82, column: 31, scope: !2745)
!2749 = !DILocation(line: 82, column: 36, scope: !2745)
!2750 = !DILocation(line: 82, column: 47, scope: !2745)
!2751 = !DILocation(line: 82, column: 18, scope: !2745)
!2752 = !DILocation(line: 82, column: 14, scope: !2745)
!2753 = !DILocation(line: 82, column: 16, scope: !2745)
!2754 = !DILocation(line: 83, column: 9, scope: !2745)
!2755 = !DILocation(line: 81, column: 36, scope: !2740)
!2756 = !DILocation(line: 81, column: 41, scope: !2740)
!2757 = !DILocation(line: 81, column: 9, scope: !2740)
!2758 = distinct !{!2758, !2743, !2759, !167}
!2759 = !DILocation(line: 83, column: 9, scope: !2735)
!2760 = !DILocation(line: 84, column: 5, scope: !2736)
!2761 = !DILocation(line: 80, column: 32, scope: !2730)
!2762 = !DILocation(line: 80, column: 42, scope: !2730)
!2763 = !DILocation(line: 80, column: 39, scope: !2730)
!2764 = !DILocation(line: 80, column: 5, scope: !2730)
!2765 = distinct !{!2765, !2733, !2766, !167}
!2766 = !DILocation(line: 84, column: 5, scope: !2726)
!2767 = !DILocation(line: 85, column: 1, scope: !2710)
!2768 = distinct !DISubprogram(name: "mat_add", scope: !870, file: !870, line: 87, type: !2769, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !79, retainedNodes: !91)
!2769 = !DISubroutineType(types: !2770)
!2770 = !{null, !60, !60, !55, !51, !51}
!2771 = !DILocalVariable(name: "a", arg: 1, scope: !2768, file: !870, line: 87, type: !60)
!2772 = !DILocation(line: 87, column: 49, scope: !2768)
!2773 = !DILocalVariable(name: "b", arg: 2, scope: !2768, file: !870, line: 87, type: !60)
!2774 = !DILocation(line: 87, column: 73, scope: !2768)
!2775 = !DILocalVariable(name: "c", arg: 3, scope: !2768, file: !870, line: 88, type: !55)
!2776 = !DILocation(line: 88, column: 36, scope: !2768)
!2777 = !DILocalVariable(name: "m", arg: 4, scope: !2768, file: !870, line: 88, type: !51)
!2778 = !DILocation(line: 88, column: 43, scope: !2768)
!2779 = !DILocalVariable(name: "n", arg: 5, scope: !2768, file: !870, line: 88, type: !51)
!2780 = !DILocation(line: 88, column: 50, scope: !2768)
!2781 = !DILocalVariable(name: "i", scope: !2782, file: !870, line: 89, type: !51)
!2782 = distinct !DILexicalBlock(scope: !2768, file: !870, line: 89, column: 5)
!2783 = !DILocation(line: 89, column: 14, scope: !2782)
!2784 = !DILocation(line: 89, column: 10, scope: !2782)
!2785 = !DILocation(line: 89, column: 21, scope: !2786)
!2786 = distinct !DILexicalBlock(scope: !2782, file: !870, line: 89, column: 5)
!2787 = !DILocation(line: 89, column: 25, scope: !2786)
!2788 = !DILocation(line: 89, column: 23, scope: !2786)
!2789 = !DILocation(line: 89, column: 5, scope: !2782)
!2790 = !DILocalVariable(name: "j", scope: !2791, file: !870, line: 90, type: !51)
!2791 = distinct !DILexicalBlock(scope: !2792, file: !870, line: 90, column: 9)
!2792 = distinct !DILexicalBlock(scope: !2786, file: !870, line: 89, column: 33)
!2793 = !DILocation(line: 90, column: 18, scope: !2791)
!2794 = !DILocation(line: 90, column: 14, scope: !2791)
!2795 = !DILocation(line: 90, column: 25, scope: !2796)
!2796 = distinct !DILexicalBlock(scope: !2791, file: !870, line: 90, column: 9)
!2797 = !DILocation(line: 90, column: 29, scope: !2796)
!2798 = !DILocation(line: 90, column: 27, scope: !2796)
!2799 = !DILocation(line: 90, column: 9, scope: !2791)
!2800 = !DILocation(line: 91, column: 40, scope: !2801)
!2801 = distinct !DILexicalBlock(scope: !2796, file: !870, line: 90, column: 37)
!2802 = !DILocation(line: 91, column: 44, scope: !2801)
!2803 = !DILocation(line: 91, column: 48, scope: !2801)
!2804 = !DILocation(line: 91, column: 46, scope: !2801)
!2805 = !DILocation(line: 91, column: 38, scope: !2801)
!2806 = !DILocation(line: 91, column: 52, scope: !2801)
!2807 = !DILocation(line: 91, column: 58, scope: !2801)
!2808 = !DILocation(line: 91, column: 62, scope: !2801)
!2809 = !DILocation(line: 91, column: 66, scope: !2801)
!2810 = !DILocation(line: 91, column: 64, scope: !2801)
!2811 = !DILocation(line: 91, column: 56, scope: !2801)
!2812 = !DILocation(line: 91, column: 70, scope: !2801)
!2813 = !DILocation(line: 91, column: 32, scope: !2801)
!2814 = !DILocation(line: 91, column: 15, scope: !2801)
!2815 = !DILocation(line: 91, column: 19, scope: !2801)
!2816 = !DILocation(line: 91, column: 23, scope: !2801)
!2817 = !DILocation(line: 91, column: 21, scope: !2801)
!2818 = !DILocation(line: 91, column: 13, scope: !2801)
!2819 = !DILocation(line: 91, column: 27, scope: !2801)
!2820 = !DILocation(line: 91, column: 30, scope: !2801)
!2821 = !DILocation(line: 92, column: 9, scope: !2801)
!2822 = !DILocation(line: 90, column: 32, scope: !2796)
!2823 = !DILocation(line: 90, column: 9, scope: !2796)
!2824 = distinct !{!2824, !2799, !2825, !167}
!2825 = !DILocation(line: 92, column: 9, scope: !2791)
!2826 = !DILocation(line: 93, column: 5, scope: !2792)
!2827 = !DILocation(line: 89, column: 28, scope: !2786)
!2828 = !DILocation(line: 89, column: 5, scope: !2786)
!2829 = distinct !{!2829, !2789, !2830, !167}
!2830 = !DILocation(line: 93, column: 5, scope: !2782)
!2831 = !DILocation(line: 94, column: 1, scope: !2768)
!2832 = distinct !DISubprogram(name: "encode", scope: !88, file: !88, line: 32, type: !550, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !79, retainedNodes: !91)
!2833 = !DILocalVariable(name: "m", arg: 1, scope: !2832, file: !88, line: 32, type: !60)
!2834 = !DILocation(line: 32, column: 41, scope: !2832)
!2835 = !DILocalVariable(name: "menc", arg: 2, scope: !2832, file: !88, line: 32, type: !55)
!2836 = !DILocation(line: 32, column: 59, scope: !2832)
!2837 = !DILocalVariable(name: "mlen", arg: 3, scope: !2832, file: !88, line: 32, type: !51)
!2838 = !DILocation(line: 32, column: 69, scope: !2832)
!2839 = !DILocalVariable(name: "i", scope: !2832, file: !88, line: 33, type: !51)
!2840 = !DILocation(line: 33, column: 9, scope: !2832)
!2841 = !DILocation(line: 34, column: 12, scope: !2842)
!2842 = distinct !DILexicalBlock(scope: !2832, file: !88, line: 34, column: 5)
!2843 = !DILocation(line: 34, column: 10, scope: !2842)
!2844 = !DILocation(line: 34, column: 17, scope: !2845)
!2845 = distinct !DILexicalBlock(scope: !2842, file: !88, line: 34, column: 5)
!2846 = !DILocation(line: 34, column: 21, scope: !2845)
!2847 = !DILocation(line: 34, column: 26, scope: !2845)
!2848 = !DILocation(line: 34, column: 19, scope: !2845)
!2849 = !DILocation(line: 34, column: 5, scope: !2842)
!2850 = !DILocation(line: 35, column: 21, scope: !2851)
!2851 = distinct !DILexicalBlock(scope: !2845, file: !88, line: 34, column: 44)
!2852 = !DILocation(line: 35, column: 20, scope: !2851)
!2853 = !DILocation(line: 35, column: 19, scope: !2851)
!2854 = !DILocation(line: 35, column: 29, scope: !2851)
!2855 = !DILocation(line: 35, column: 27, scope: !2851)
!2856 = !DILocation(line: 35, column: 36, scope: !2851)
!2857 = !DILocation(line: 35, column: 24, scope: !2851)
!2858 = !DILocation(line: 35, column: 9, scope: !2851)
!2859 = !DILocation(line: 35, column: 14, scope: !2851)
!2860 = !DILocation(line: 35, column: 17, scope: !2851)
!2861 = !DILocation(line: 36, column: 5, scope: !2851)
!2862 = !DILocation(line: 34, column: 31, scope: !2845)
!2863 = !DILocation(line: 34, column: 38, scope: !2845)
!2864 = !DILocation(line: 34, column: 5, scope: !2845)
!2865 = distinct !{!2865, !2849, !2866, !167}
!2866 = !DILocation(line: 36, column: 5, scope: !2842)
!2867 = !DILocation(line: 38, column: 9, scope: !2868)
!2868 = distinct !DILexicalBlock(scope: !2832, file: !88, line: 38, column: 9)
!2869 = !DILocation(line: 38, column: 14, scope: !2868)
!2870 = !DILocation(line: 38, column: 18, scope: !2868)
!2871 = !DILocation(line: 39, column: 21, scope: !2872)
!2872 = distinct !DILexicalBlock(scope: !2868, file: !88, line: 38, column: 24)
!2873 = !DILocation(line: 39, column: 20, scope: !2872)
!2874 = !DILocation(line: 39, column: 9, scope: !2872)
!2875 = !DILocation(line: 39, column: 14, scope: !2872)
!2876 = !DILocation(line: 39, column: 17, scope: !2872)
!2877 = !DILocation(line: 40, column: 5, scope: !2872)
!2878 = !DILocation(line: 41, column: 1, scope: !2832)
!2879 = distinct !DISubprogram(name: "add_f", scope: !870, file: !870, line: 42, type: !2880, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !79, retainedNodes: !91)
!2880 = !DISubroutineType(types: !2881)
!2881 = !{!56, !56, !56}
!2882 = !DILocalVariable(name: "a", arg: 1, scope: !2879, file: !870, line: 42, type: !56)
!2883 = !DILocation(line: 42, column: 49, scope: !2879)
!2884 = !DILocalVariable(name: "b", arg: 2, scope: !2879, file: !870, line: 42, type: !56)
!2885 = !DILocation(line: 42, column: 66, scope: !2879)
!2886 = !DILocation(line: 43, column: 12, scope: !2879)
!2887 = !DILocation(line: 43, column: 16, scope: !2879)
!2888 = !DILocation(line: 43, column: 14, scope: !2879)
!2889 = !DILocation(line: 43, column: 5, scope: !2879)
!2890 = distinct !DISubprogram(name: "lincomb", scope: !870, file: !870, line: 69, type: !2891, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !79, retainedNodes: !91)
!2891 = !DISubroutineType(types: !2892)
!2892 = !{!56, !60, !60, !51, !51}
!2893 = !DILocalVariable(name: "a", arg: 1, scope: !2890, file: !870, line: 69, type: !60)
!2894 = !DILocation(line: 69, column: 58, scope: !2890)
!2895 = !DILocalVariable(name: "b", arg: 2, scope: !2890, file: !870, line: 70, type: !60)
!2896 = !DILocation(line: 70, column: 58, scope: !2890)
!2897 = !DILocalVariable(name: "n", arg: 3, scope: !2890, file: !870, line: 70, type: !51)
!2898 = !DILocation(line: 70, column: 65, scope: !2890)
!2899 = !DILocalVariable(name: "m", arg: 4, scope: !2890, file: !870, line: 70, type: !51)
!2900 = !DILocation(line: 70, column: 72, scope: !2890)
!2901 = !DILocalVariable(name: "ret", scope: !2890, file: !870, line: 71, type: !56)
!2902 = !DILocation(line: 71, column: 19, scope: !2890)
!2903 = !DILocalVariable(name: "i", scope: !2904, file: !870, line: 72, type: !51)
!2904 = distinct !DILexicalBlock(scope: !2890, file: !870, line: 72, column: 5)
!2905 = !DILocation(line: 72, column: 14, scope: !2904)
!2906 = !DILocation(line: 72, column: 10, scope: !2904)
!2907 = !DILocation(line: 72, column: 21, scope: !2908)
!2908 = distinct !DILexicalBlock(scope: !2904, file: !870, line: 72, column: 5)
!2909 = !DILocation(line: 72, column: 25, scope: !2908)
!2910 = !DILocation(line: 72, column: 23, scope: !2908)
!2911 = !DILocation(line: 72, column: 5, scope: !2904)
!2912 = !DILocation(line: 73, column: 27, scope: !2913)
!2913 = distinct !DILexicalBlock(scope: !2908, file: !870, line: 72, column: 41)
!2914 = !DILocation(line: 73, column: 29, scope: !2913)
!2915 = !DILocation(line: 73, column: 34, scope: !2913)
!2916 = !DILocation(line: 73, column: 33, scope: !2913)
!2917 = !DILocation(line: 73, column: 21, scope: !2913)
!2918 = !DILocation(line: 73, column: 38, scope: !2913)
!2919 = !DILocation(line: 73, column: 15, scope: !2913)
!2920 = !DILocation(line: 73, column: 13, scope: !2913)
!2921 = !DILocation(line: 74, column: 5, scope: !2913)
!2922 = !DILocation(line: 72, column: 28, scope: !2908)
!2923 = !DILocation(line: 72, column: 38, scope: !2908)
!2924 = !DILocation(line: 72, column: 35, scope: !2908)
!2925 = !DILocation(line: 72, column: 5, scope: !2908)
!2926 = distinct !{!2926, !2911, !2927, !167}
!2927 = !DILocation(line: 74, column: 5, scope: !2904)
!2928 = !DILocation(line: 75, column: 12, scope: !2890)
!2929 = !DILocation(line: 75, column: 5, scope: !2890)
!2930 = distinct !DISubprogram(name: "mul_f", scope: !870, file: !870, line: 8, type: !2880, scopeLine: 8, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !79, retainedNodes: !91)
!2931 = !DILocalVariable(name: "a", arg: 1, scope: !2930, file: !870, line: 8, type: !56)
!2932 = !DILocation(line: 8, column: 49, scope: !2930)
!2933 = !DILocalVariable(name: "b", arg: 2, scope: !2930, file: !870, line: 8, type: !56)
!2934 = !DILocation(line: 8, column: 66, scope: !2930)
!2935 = !DILocalVariable(name: "p", scope: !2930, file: !870, line: 10, type: !56)
!2936 = !DILocation(line: 10, column: 19, scope: !2930)
!2937 = !DILocation(line: 13, column: 10, scope: !2930)
!2938 = !DILocation(line: 13, column: 7, scope: !2930)
!2939 = !DILocation(line: 16, column: 11, scope: !2930)
!2940 = !DILocation(line: 16, column: 13, scope: !2930)
!2941 = !DILocation(line: 16, column: 18, scope: !2930)
!2942 = !DILocation(line: 16, column: 17, scope: !2930)
!2943 = !DILocation(line: 16, column: 10, scope: !2930)
!2944 = !DILocation(line: 16, column: 8, scope: !2930)
!2945 = !DILocation(line: 17, column: 11, scope: !2930)
!2946 = !DILocation(line: 17, column: 13, scope: !2930)
!2947 = !DILocation(line: 17, column: 18, scope: !2930)
!2948 = !DILocation(line: 17, column: 17, scope: !2930)
!2949 = !DILocation(line: 17, column: 7, scope: !2930)
!2950 = !DILocation(line: 18, column: 11, scope: !2930)
!2951 = !DILocation(line: 18, column: 13, scope: !2930)
!2952 = !DILocation(line: 18, column: 18, scope: !2930)
!2953 = !DILocation(line: 18, column: 17, scope: !2930)
!2954 = !DILocation(line: 18, column: 7, scope: !2930)
!2955 = !DILocation(line: 19, column: 11, scope: !2930)
!2956 = !DILocation(line: 19, column: 13, scope: !2930)
!2957 = !DILocation(line: 19, column: 18, scope: !2930)
!2958 = !DILocation(line: 19, column: 17, scope: !2930)
!2959 = !DILocation(line: 19, column: 7, scope: !2930)
!2960 = !DILocalVariable(name: "top_p", scope: !2930, file: !870, line: 22, type: !56)
!2961 = !DILocation(line: 22, column: 19, scope: !2930)
!2962 = !DILocation(line: 22, column: 27, scope: !2930)
!2963 = !DILocation(line: 22, column: 29, scope: !2930)
!2964 = !DILocalVariable(name: "out", scope: !2930, file: !870, line: 23, type: !56)
!2965 = !DILocation(line: 23, column: 19, scope: !2930)
!2966 = !DILocation(line: 23, column: 26, scope: !2930)
!2967 = !DILocation(line: 23, column: 31, scope: !2930)
!2968 = !DILocation(line: 23, column: 37, scope: !2930)
!2969 = !DILocation(line: 23, column: 28, scope: !2930)
!2970 = !DILocation(line: 23, column: 46, scope: !2930)
!2971 = !DILocation(line: 23, column: 52, scope: !2930)
!2972 = !DILocation(line: 23, column: 43, scope: !2930)
!2973 = !DILocation(line: 23, column: 59, scope: !2930)
!2974 = !DILocation(line: 23, column: 25, scope: !2930)
!2975 = !DILocation(line: 24, column: 12, scope: !2930)
!2976 = !DILocation(line: 24, column: 5, scope: !2930)
!2977 = !DILocalVariable(name: "M", arg: 1, scope: !87, file: !88, line: 111, type: !81)
!2978 = !DILocation(line: 111, column: 47, scope: !87)
!2979 = !DILocalVariable(name: "i", scope: !2980, file: !88, line: 117, type: !82)
!2980 = distinct !DILexicalBlock(scope: !87, file: !88, line: 117, column: 5)
!2981 = !DILocation(line: 117, column: 17, scope: !2980)
!2982 = !DILocation(line: 117, column: 10, scope: !2980)
!2983 = !DILocation(line: 117, column: 24, scope: !2984)
!2984 = distinct !DILexicalBlock(scope: !2980, file: !88, line: 117, column: 5)
!2985 = !DILocation(line: 117, column: 26, scope: !2984)
!2986 = !DILocation(line: 117, column: 5, scope: !2980)
!2987 = !DILocalVariable(name: "t", scope: !2988, file: !88, line: 119, type: !46)
!2988 = distinct !DILexicalBlock(scope: !2984, file: !88, line: 118, column: 5)
!2989 = !DILocation(line: 119, column: 18, scope: !2988)
!2990 = !DILocation(line: 119, column: 24, scope: !2988)
!2991 = !DILocation(line: 119, column: 26, scope: !2988)
!2992 = !DILocation(line: 119, column: 29, scope: !2988)
!2993 = !DILocation(line: 119, column: 38, scope: !2988)
!2994 = !DILocation(line: 119, column: 40, scope: !2988)
!2995 = !DILocation(line: 119, column: 41, scope: !2988)
!2996 = !DILocation(line: 119, column: 36, scope: !2988)
!2997 = !DILocation(line: 119, column: 46, scope: !2988)
!2998 = !DILocation(line: 120, column: 19, scope: !2988)
!2999 = !DILocation(line: 120, column: 21, scope: !2988)
!3000 = !DILocation(line: 120, column: 9, scope: !2988)
!3001 = !DILocation(line: 120, column: 11, scope: !2988)
!3002 = !DILocation(line: 120, column: 16, scope: !2988)
!3003 = !DILocation(line: 121, column: 19, scope: !2988)
!3004 = !DILocation(line: 121, column: 9, scope: !2988)
!3005 = !DILocation(line: 121, column: 11, scope: !2988)
!3006 = !DILocation(line: 121, column: 12, scope: !2988)
!3007 = !DILocation(line: 121, column: 16, scope: !2988)
!3008 = !DILocation(line: 122, column: 5, scope: !2988)
!3009 = !DILocation(line: 117, column: 33, scope: !2984)
!3010 = !DILocation(line: 117, column: 5, scope: !2984)
!3011 = distinct !{!3011, !2986, !3012, !167}
!3012 = !DILocation(line: 122, column: 5, scope: !2980)
!3013 = !DILocalVariable(name: "i", scope: !3014, file: !88, line: 124, type: !82)
!3014 = distinct !DILexicalBlock(scope: !87, file: !88, line: 124, column: 5)
!3015 = !DILocation(line: 124, column: 17, scope: !3014)
!3016 = !DILocation(line: 124, column: 10, scope: !3014)
!3017 = !DILocation(line: 124, column: 24, scope: !3018)
!3018 = distinct !DILexicalBlock(scope: !3014, file: !88, line: 124, column: 5)
!3019 = !DILocation(line: 124, column: 26, scope: !3018)
!3020 = !DILocation(line: 124, column: 5, scope: !3014)
!3021 = !DILocalVariable(name: "t0", scope: !3022, file: !88, line: 126, type: !46)
!3022 = distinct !DILexicalBlock(scope: !3018, file: !88, line: 125, column: 5)
!3023 = !DILocation(line: 126, column: 18, scope: !3022)
!3024 = !DILocation(line: 126, column: 25, scope: !3022)
!3025 = !DILocation(line: 126, column: 27, scope: !3022)
!3026 = !DILocation(line: 126, column: 32, scope: !3022)
!3027 = !DILocation(line: 126, column: 40, scope: !3022)
!3028 = !DILocation(line: 126, column: 42, scope: !3022)
!3029 = !DILocation(line: 126, column: 43, scope: !3022)
!3030 = !DILocation(line: 126, column: 38, scope: !3022)
!3031 = !DILocation(line: 126, column: 48, scope: !3022)
!3032 = !DILocalVariable(name: "t1", scope: !3022, file: !88, line: 127, type: !46)
!3033 = !DILocation(line: 127, column: 18, scope: !3022)
!3034 = !DILocation(line: 127, column: 25, scope: !3022)
!3035 = !DILocation(line: 127, column: 27, scope: !3022)
!3036 = !DILocation(line: 127, column: 28, scope: !3022)
!3037 = !DILocation(line: 127, column: 32, scope: !3022)
!3038 = !DILocation(line: 127, column: 40, scope: !3022)
!3039 = !DILocation(line: 127, column: 42, scope: !3022)
!3040 = !DILocation(line: 127, column: 43, scope: !3022)
!3041 = !DILocation(line: 127, column: 38, scope: !3022)
!3042 = !DILocation(line: 127, column: 48, scope: !3022)
!3043 = !DILocation(line: 128, column: 20, scope: !3022)
!3044 = !DILocation(line: 128, column: 23, scope: !3022)
!3045 = !DILocation(line: 128, column: 9, scope: !3022)
!3046 = !DILocation(line: 128, column: 11, scope: !3022)
!3047 = !DILocation(line: 128, column: 16, scope: !3022)
!3048 = !DILocation(line: 129, column: 20, scope: !3022)
!3049 = !DILocation(line: 129, column: 23, scope: !3022)
!3050 = !DILocation(line: 129, column: 9, scope: !3022)
!3051 = !DILocation(line: 129, column: 11, scope: !3022)
!3052 = !DILocation(line: 129, column: 12, scope: !3022)
!3053 = !DILocation(line: 129, column: 16, scope: !3022)
!3054 = !DILocation(line: 130, column: 19, scope: !3022)
!3055 = !DILocation(line: 130, column: 9, scope: !3022)
!3056 = !DILocation(line: 130, column: 11, scope: !3022)
!3057 = !DILocation(line: 130, column: 12, scope: !3022)
!3058 = !DILocation(line: 130, column: 16, scope: !3022)
!3059 = !DILocation(line: 131, column: 19, scope: !3022)
!3060 = !DILocation(line: 131, column: 9, scope: !3022)
!3061 = !DILocation(line: 131, column: 11, scope: !3022)
!3062 = !DILocation(line: 131, column: 12, scope: !3022)
!3063 = !DILocation(line: 131, column: 16, scope: !3022)
!3064 = !DILocation(line: 132, column: 5, scope: !3022)
!3065 = !DILocation(line: 124, column: 33, scope: !3018)
!3066 = !DILocation(line: 124, column: 5, scope: !3018)
!3067 = distinct !{!3067, !3020, !3068, !167}
!3068 = !DILocation(line: 132, column: 5, scope: !3014)
!3069 = !DILocalVariable(name: "i", scope: !3070, file: !88, line: 134, type: !82)
!3070 = distinct !DILexicalBlock(scope: !87, file: !88, line: 134, column: 5)
!3071 = !DILocation(line: 134, column: 17, scope: !3070)
!3072 = !DILocation(line: 134, column: 10, scope: !3070)
!3073 = !DILocation(line: 134, column: 24, scope: !3074)
!3074 = distinct !DILexicalBlock(scope: !3070, file: !88, line: 134, column: 5)
!3075 = !DILocation(line: 134, column: 26, scope: !3074)
!3076 = !DILocation(line: 134, column: 5, scope: !3070)
!3077 = !DILocalVariable(name: "t0", scope: !3078, file: !88, line: 136, type: !46)
!3078 = distinct !DILexicalBlock(scope: !3074, file: !88, line: 135, column: 5)
!3079 = !DILocation(line: 136, column: 18, scope: !3078)
!3080 = !DILocation(line: 136, column: 25, scope: !3078)
!3081 = !DILocation(line: 136, column: 27, scope: !3078)
!3082 = !DILocation(line: 136, column: 32, scope: !3078)
!3083 = !DILocation(line: 136, column: 41, scope: !3078)
!3084 = !DILocation(line: 136, column: 43, scope: !3078)
!3085 = !DILocation(line: 136, column: 44, scope: !3078)
!3086 = !DILocation(line: 136, column: 39, scope: !3078)
!3087 = !DILocation(line: 136, column: 50, scope: !3078)
!3088 = !DILocalVariable(name: "t1", scope: !3078, file: !88, line: 137, type: !46)
!3089 = !DILocation(line: 137, column: 18, scope: !3078)
!3090 = !DILocation(line: 137, column: 25, scope: !3078)
!3091 = !DILocation(line: 137, column: 27, scope: !3078)
!3092 = !DILocation(line: 137, column: 28, scope: !3078)
!3093 = !DILocation(line: 137, column: 32, scope: !3078)
!3094 = !DILocation(line: 137, column: 41, scope: !3078)
!3095 = !DILocation(line: 137, column: 43, scope: !3078)
!3096 = !DILocation(line: 137, column: 44, scope: !3078)
!3097 = !DILocation(line: 137, column: 39, scope: !3078)
!3098 = !DILocation(line: 137, column: 50, scope: !3078)
!3099 = !DILocation(line: 139, column: 20, scope: !3078)
!3100 = !DILocation(line: 139, column: 23, scope: !3078)
!3101 = !DILocation(line: 139, column: 9, scope: !3078)
!3102 = !DILocation(line: 139, column: 11, scope: !3078)
!3103 = !DILocation(line: 139, column: 17, scope: !3078)
!3104 = !DILocation(line: 140, column: 20, scope: !3078)
!3105 = !DILocation(line: 140, column: 23, scope: !3078)
!3106 = !DILocation(line: 140, column: 9, scope: !3078)
!3107 = !DILocation(line: 140, column: 11, scope: !3078)
!3108 = !DILocation(line: 140, column: 12, scope: !3078)
!3109 = !DILocation(line: 140, column: 17, scope: !3078)
!3110 = !DILocation(line: 141, column: 20, scope: !3078)
!3111 = !DILocation(line: 141, column: 9, scope: !3078)
!3112 = !DILocation(line: 141, column: 11, scope: !3078)
!3113 = !DILocation(line: 141, column: 12, scope: !3078)
!3114 = !DILocation(line: 141, column: 17, scope: !3078)
!3115 = !DILocation(line: 142, column: 20, scope: !3078)
!3116 = !DILocation(line: 142, column: 9, scope: !3078)
!3117 = !DILocation(line: 142, column: 11, scope: !3078)
!3118 = !DILocation(line: 142, column: 12, scope: !3078)
!3119 = !DILocation(line: 142, column: 17, scope: !3078)
!3120 = !DILocation(line: 143, column: 5, scope: !3078)
!3121 = !DILocation(line: 134, column: 32, scope: !3074)
!3122 = !DILocation(line: 134, column: 5, scope: !3074)
!3123 = distinct !{!3123, !3076, !3124, !167}
!3124 = !DILocation(line: 143, column: 5, scope: !3070)
!3125 = !DILocalVariable(name: "i", scope: !3126, file: !88, line: 145, type: !82)
!3126 = distinct !DILexicalBlock(scope: !87, file: !88, line: 145, column: 5)
!3127 = !DILocation(line: 145, column: 17, scope: !3126)
!3128 = !DILocation(line: 145, column: 10, scope: !3126)
!3129 = !DILocation(line: 145, column: 24, scope: !3130)
!3130 = distinct !DILexicalBlock(scope: !3126, file: !88, line: 145, column: 5)
!3131 = !DILocation(line: 145, column: 26, scope: !3130)
!3132 = !DILocation(line: 145, column: 5, scope: !3126)
!3133 = !DILocalVariable(name: "t", scope: !3134, file: !88, line: 147, type: !46)
!3134 = distinct !DILexicalBlock(scope: !3130, file: !88, line: 146, column: 5)
!3135 = !DILocation(line: 147, column: 18, scope: !3134)
!3136 = !DILocation(line: 147, column: 24, scope: !3134)
!3137 = !DILocation(line: 147, column: 26, scope: !3134)
!3138 = !DILocation(line: 147, column: 28, scope: !3134)
!3139 = !DILocation(line: 147, column: 36, scope: !3134)
!3140 = !DILocation(line: 147, column: 38, scope: !3134)
!3141 = !DILocation(line: 147, column: 39, scope: !3134)
!3142 = !DILocation(line: 147, column: 34, scope: !3134)
!3143 = !DILocation(line: 147, column: 44, scope: !3134)
!3144 = !DILocation(line: 148, column: 19, scope: !3134)
!3145 = !DILocation(line: 148, column: 21, scope: !3134)
!3146 = !DILocation(line: 148, column: 9, scope: !3134)
!3147 = !DILocation(line: 148, column: 11, scope: !3134)
!3148 = !DILocation(line: 148, column: 16, scope: !3134)
!3149 = !DILocation(line: 149, column: 19, scope: !3134)
!3150 = !DILocation(line: 149, column: 9, scope: !3134)
!3151 = !DILocation(line: 149, column: 11, scope: !3134)
!3152 = !DILocation(line: 149, column: 12, scope: !3134)
!3153 = !DILocation(line: 149, column: 16, scope: !3134)
!3154 = !DILocation(line: 150, column: 5, scope: !3134)
!3155 = !DILocation(line: 145, column: 32, scope: !3130)
!3156 = !DILocation(line: 145, column: 5, scope: !3130)
!3157 = distinct !{!3157, !3132, !3158, !167}
!3158 = !DILocation(line: 150, column: 5, scope: !3126)
!3159 = !DILocation(line: 151, column: 1, scope: !87)
!3160 = distinct !DISubprogram(name: "mul_add_mat_x_m_mat", scope: !631, file: !631, line: 61, type: !746, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !79, retainedNodes: !91)
!3161 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !3160, file: !631, line: 61, type: !434)
!3162 = !DILocation(line: 61, column: 36, scope: !3160)
!3163 = !DILocalVariable(name: "mat", arg: 2, scope: !3160, file: !631, line: 61, type: !60)
!3164 = !DILocation(line: 61, column: 70, scope: !3160)
!3165 = !DILocalVariable(name: "bs_mat", arg: 3, scope: !3160, file: !631, line: 61, type: !634)
!3166 = !DILocation(line: 61, column: 91, scope: !3160)
!3167 = !DILocalVariable(name: "acc", arg: 4, scope: !3160, file: !631, line: 61, type: !81)
!3168 = !DILocation(line: 61, column: 109, scope: !3160)
!3169 = !DILocalVariable(name: "mat_rows", arg: 5, scope: !3160, file: !631, line: 62, type: !434)
!3170 = !DILocation(line: 62, column: 36, scope: !3160)
!3171 = !DILocalVariable(name: "mat_cols", arg: 6, scope: !3160, file: !631, line: 62, type: !434)
!3172 = !DILocation(line: 62, column: 56, scope: !3160)
!3173 = !DILocalVariable(name: "bs_mat_cols", arg: 7, scope: !3160, file: !631, line: 62, type: !434)
!3174 = !DILocation(line: 62, column: 76, scope: !3160)
!3175 = !DILocalVariable(name: "r", scope: !3176, file: !631, line: 64, type: !51)
!3176 = distinct !DILexicalBlock(scope: !3160, file: !631, line: 64, column: 5)
!3177 = !DILocation(line: 64, column: 14, scope: !3176)
!3178 = !DILocation(line: 64, column: 10, scope: !3176)
!3179 = !DILocation(line: 64, column: 21, scope: !3180)
!3180 = distinct !DILexicalBlock(scope: !3176, file: !631, line: 64, column: 5)
!3181 = !DILocation(line: 64, column: 25, scope: !3180)
!3182 = !DILocation(line: 64, column: 23, scope: !3180)
!3183 = !DILocation(line: 64, column: 5, scope: !3176)
!3184 = !DILocalVariable(name: "c", scope: !3185, file: !631, line: 65, type: !51)
!3185 = distinct !DILexicalBlock(scope: !3186, file: !631, line: 65, column: 9)
!3186 = distinct !DILexicalBlock(scope: !3180, file: !631, line: 64, column: 40)
!3187 = !DILocation(line: 65, column: 18, scope: !3185)
!3188 = !DILocation(line: 65, column: 14, scope: !3185)
!3189 = !DILocation(line: 65, column: 25, scope: !3190)
!3190 = distinct !DILexicalBlock(scope: !3185, file: !631, line: 65, column: 9)
!3191 = !DILocation(line: 65, column: 29, scope: !3190)
!3192 = !DILocation(line: 65, column: 27, scope: !3190)
!3193 = !DILocation(line: 65, column: 9, scope: !3185)
!3194 = !DILocalVariable(name: "k", scope: !3195, file: !631, line: 66, type: !51)
!3195 = distinct !DILexicalBlock(scope: !3196, file: !631, line: 66, column: 13)
!3196 = distinct !DILexicalBlock(scope: !3190, file: !631, line: 65, column: 44)
!3197 = !DILocation(line: 66, column: 22, scope: !3195)
!3198 = !DILocation(line: 66, column: 18, scope: !3195)
!3199 = !DILocation(line: 66, column: 29, scope: !3200)
!3200 = distinct !DILexicalBlock(scope: !3195, file: !631, line: 66, column: 13)
!3201 = !DILocation(line: 66, column: 33, scope: !3200)
!3202 = !DILocation(line: 66, column: 31, scope: !3200)
!3203 = !DILocation(line: 66, column: 13, scope: !3195)
!3204 = !DILocation(line: 67, column: 31, scope: !3205)
!3205 = distinct !DILexicalBlock(scope: !3200, file: !631, line: 66, column: 54)
!3206 = !DILocation(line: 67, column: 44, scope: !3205)
!3207 = !DILocation(line: 67, column: 53, scope: !3205)
!3208 = !DILocation(line: 67, column: 68, scope: !3205)
!3209 = !DILocation(line: 67, column: 72, scope: !3205)
!3210 = !DILocation(line: 67, column: 70, scope: !3205)
!3211 = !DILocation(line: 67, column: 86, scope: !3205)
!3212 = !DILocation(line: 67, column: 84, scope: !3205)
!3213 = !DILocation(line: 67, column: 65, scope: !3205)
!3214 = !DILocation(line: 67, column: 51, scope: !3205)
!3215 = !DILocation(line: 67, column: 90, scope: !3205)
!3216 = !DILocation(line: 67, column: 94, scope: !3205)
!3217 = !DILocation(line: 67, column: 98, scope: !3205)
!3218 = !DILocation(line: 67, column: 96, scope: !3205)
!3219 = !DILocation(line: 67, column: 109, scope: !3205)
!3220 = !DILocation(line: 67, column: 107, scope: !3205)
!3221 = !DILocation(line: 67, column: 113, scope: !3205)
!3222 = !DILocation(line: 67, column: 119, scope: !3205)
!3223 = !DILocation(line: 67, column: 134, scope: !3205)
!3224 = !DILocation(line: 67, column: 138, scope: !3205)
!3225 = !DILocation(line: 67, column: 136, scope: !3205)
!3226 = !DILocation(line: 67, column: 152, scope: !3205)
!3227 = !DILocation(line: 67, column: 150, scope: !3205)
!3228 = !DILocation(line: 67, column: 131, scope: !3205)
!3229 = !DILocation(line: 67, column: 117, scope: !3205)
!3230 = !DILocation(line: 67, column: 17, scope: !3205)
!3231 = !DILocation(line: 68, column: 13, scope: !3205)
!3232 = !DILocation(line: 66, column: 48, scope: !3200)
!3233 = !DILocation(line: 66, column: 13, scope: !3200)
!3234 = distinct !{!3234, !3203, !3235, !167}
!3235 = !DILocation(line: 68, column: 13, scope: !3195)
!3236 = !DILocation(line: 69, column: 9, scope: !3196)
!3237 = !DILocation(line: 65, column: 40, scope: !3190)
!3238 = !DILocation(line: 65, column: 9, scope: !3190)
!3239 = distinct !{!3239, !3193, !3240, !167}
!3240 = !DILocation(line: 69, column: 9, scope: !3185)
!3241 = !DILocation(line: 70, column: 5, scope: !3186)
!3242 = !DILocation(line: 64, column: 36, scope: !3180)
!3243 = !DILocation(line: 64, column: 5, scope: !3180)
!3244 = distinct !{!3244, !3183, !3245, !167}
!3245 = !DILocation(line: 70, column: 5, scope: !3176)
!3246 = !DILocation(line: 71, column: 1, scope: !3160)
!3247 = distinct !DISubprogram(name: "P1_times_Vt", scope: !631, file: !631, line: 82, type: !722, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !79, retainedNodes: !91)
!3248 = !DILocalVariable(name: "p", arg: 1, scope: !3247, file: !631, line: 82, type: !353)
!3249 = !DILocation(line: 82, column: 39, scope: !3247)
!3250 = !DILocalVariable(name: "P1", arg: 2, scope: !3247, file: !631, line: 82, type: !634)
!3251 = !DILocation(line: 82, column: 58, scope: !3247)
!3252 = !DILocalVariable(name: "V", arg: 3, scope: !3247, file: !631, line: 82, type: !60)
!3253 = !DILocation(line: 82, column: 83, scope: !3247)
!3254 = !DILocalVariable(name: "acc", arg: 4, scope: !3247, file: !631, line: 82, type: !81)
!3255 = !DILocation(line: 82, column: 96, scope: !3247)
!3256 = !DILocation(line: 86, column: 66, scope: !3247)
!3257 = !DILocation(line: 86, column: 48, scope: !3247)
!3258 = !DILocation(line: 86, column: 70, scope: !3247)
!3259 = !DILocation(line: 86, column: 74, scope: !3247)
!3260 = !DILocation(line: 86, column: 77, scope: !3247)
!3261 = !DILocation(line: 86, column: 90, scope: !3247)
!3262 = !DILocation(line: 86, column: 82, scope: !3247)
!3263 = !DILocation(line: 86, column: 102, scope: !3247)
!3264 = !DILocation(line: 86, column: 94, scope: !3247)
!3265 = !DILocation(line: 86, column: 114, scope: !3247)
!3266 = !DILocation(line: 86, column: 106, scope: !3247)
!3267 = !DILocation(line: 86, column: 5, scope: !3247)
!3268 = !DILocation(line: 87, column: 1, scope: !3247)
!3269 = distinct !DISubprogram(name: "mul_add_m_upper_triangular_mat_x_mat_trans", scope: !631, file: !631, line: 32, type: !955, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !79, retainedNodes: !91)
!3270 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !3269, file: !631, line: 32, type: !434)
!3271 = !DILocation(line: 32, column: 59, scope: !3269)
!3272 = !DILocalVariable(name: "bs_mat", arg: 2, scope: !3269, file: !631, line: 32, type: !634)
!3273 = !DILocation(line: 32, column: 88, scope: !3269)
!3274 = !DILocalVariable(name: "mat", arg: 3, scope: !3269, file: !631, line: 32, type: !60)
!3275 = !DILocation(line: 32, column: 117, scope: !3269)
!3276 = !DILocalVariable(name: "acc", arg: 4, scope: !3269, file: !631, line: 32, type: !81)
!3277 = !DILocation(line: 32, column: 132, scope: !3269)
!3278 = !DILocalVariable(name: "bs_mat_rows", arg: 5, scope: !3269, file: !631, line: 33, type: !434)
!3279 = !DILocation(line: 33, column: 59, scope: !3269)
!3280 = !DILocalVariable(name: "bs_mat_cols", arg: 6, scope: !3269, file: !631, line: 33, type: !434)
!3281 = !DILocation(line: 33, column: 82, scope: !3269)
!3282 = !DILocalVariable(name: "mat_rows", arg: 7, scope: !3269, file: !631, line: 33, type: !434)
!3283 = !DILocation(line: 33, column: 105, scope: !3269)
!3284 = !DILocalVariable(name: "triangular", arg: 8, scope: !3269, file: !631, line: 33, type: !434)
!3285 = !DILocation(line: 33, column: 125, scope: !3269)
!3286 = !DILocalVariable(name: "bs_mat_entries_used", scope: !3269, file: !631, line: 34, type: !51)
!3287 = !DILocation(line: 34, column: 9, scope: !3269)
!3288 = !DILocalVariable(name: "r", scope: !3289, file: !631, line: 35, type: !51)
!3289 = distinct !DILexicalBlock(scope: !3269, file: !631, line: 35, column: 5)
!3290 = !DILocation(line: 35, column: 14, scope: !3289)
!3291 = !DILocation(line: 35, column: 10, scope: !3289)
!3292 = !DILocation(line: 35, column: 21, scope: !3293)
!3293 = distinct !DILexicalBlock(scope: !3289, file: !631, line: 35, column: 5)
!3294 = !DILocation(line: 35, column: 25, scope: !3293)
!3295 = !DILocation(line: 35, column: 23, scope: !3293)
!3296 = !DILocation(line: 35, column: 5, scope: !3289)
!3297 = !DILocalVariable(name: "c", scope: !3298, file: !631, line: 36, type: !51)
!3298 = distinct !DILexicalBlock(scope: !3299, file: !631, line: 36, column: 9)
!3299 = distinct !DILexicalBlock(scope: !3293, file: !631, line: 35, column: 43)
!3300 = !DILocation(line: 36, column: 18, scope: !3298)
!3301 = !DILocation(line: 36, column: 22, scope: !3298)
!3302 = !DILocation(line: 36, column: 35, scope: !3298)
!3303 = !DILocation(line: 36, column: 33, scope: !3298)
!3304 = !DILocation(line: 36, column: 14, scope: !3298)
!3305 = !DILocation(line: 36, column: 38, scope: !3306)
!3306 = distinct !DILexicalBlock(scope: !3298, file: !631, line: 36, column: 9)
!3307 = !DILocation(line: 36, column: 42, scope: !3306)
!3308 = !DILocation(line: 36, column: 40, scope: !3306)
!3309 = !DILocation(line: 36, column: 9, scope: !3298)
!3310 = !DILocalVariable(name: "k", scope: !3311, file: !631, line: 37, type: !51)
!3311 = distinct !DILexicalBlock(scope: !3312, file: !631, line: 37, column: 13)
!3312 = distinct !DILexicalBlock(scope: !3306, file: !631, line: 36, column: 60)
!3313 = !DILocation(line: 37, column: 22, scope: !3311)
!3314 = !DILocation(line: 37, column: 18, scope: !3311)
!3315 = !DILocation(line: 37, column: 29, scope: !3316)
!3316 = distinct !DILexicalBlock(scope: !3311, file: !631, line: 37, column: 13)
!3317 = !DILocation(line: 37, column: 33, scope: !3316)
!3318 = !DILocation(line: 37, column: 31, scope: !3316)
!3319 = !DILocation(line: 37, column: 13, scope: !3311)
!3320 = !DILocation(line: 38, column: 31, scope: !3321)
!3321 = distinct !DILexicalBlock(scope: !3316, file: !631, line: 37, column: 51)
!3322 = !DILocation(line: 38, column: 44, scope: !3321)
!3323 = !DILocation(line: 38, column: 53, scope: !3321)
!3324 = !DILocation(line: 38, column: 67, scope: !3321)
!3325 = !DILocation(line: 38, column: 65, scope: !3321)
!3326 = !DILocation(line: 38, column: 51, scope: !3321)
!3327 = !DILocation(line: 38, column: 88, scope: !3321)
!3328 = !DILocation(line: 38, column: 92, scope: !3321)
!3329 = !DILocation(line: 38, column: 96, scope: !3321)
!3330 = !DILocation(line: 38, column: 94, scope: !3321)
!3331 = !DILocation(line: 38, column: 110, scope: !3321)
!3332 = !DILocation(line: 38, column: 108, scope: !3321)
!3333 = !DILocation(line: 38, column: 114, scope: !3321)
!3334 = !DILocation(line: 38, column: 120, scope: !3321)
!3335 = !DILocation(line: 38, column: 135, scope: !3321)
!3336 = !DILocation(line: 38, column: 139, scope: !3321)
!3337 = !DILocation(line: 38, column: 137, scope: !3321)
!3338 = !DILocation(line: 38, column: 150, scope: !3321)
!3339 = !DILocation(line: 38, column: 148, scope: !3321)
!3340 = !DILocation(line: 38, column: 132, scope: !3321)
!3341 = !DILocation(line: 38, column: 118, scope: !3321)
!3342 = !DILocation(line: 38, column: 17, scope: !3321)
!3343 = !DILocation(line: 39, column: 13, scope: !3321)
!3344 = !DILocation(line: 37, column: 45, scope: !3316)
!3345 = !DILocation(line: 37, column: 13, scope: !3316)
!3346 = distinct !{!3346, !3319, !3347, !167}
!3347 = !DILocation(line: 39, column: 13, scope: !3311)
!3348 = !DILocation(line: 40, column: 33, scope: !3312)
!3349 = !DILocation(line: 41, column: 9, scope: !3312)
!3350 = !DILocation(line: 36, column: 56, scope: !3306)
!3351 = !DILocation(line: 36, column: 9, scope: !3306)
!3352 = distinct !{!3352, !3309, !3353, !167}
!3353 = !DILocation(line: 41, column: 9, scope: !3298)
!3354 = !DILocation(line: 42, column: 5, scope: !3299)
!3355 = !DILocation(line: 35, column: 39, scope: !3293)
!3356 = !DILocation(line: 35, column: 5, scope: !3293)
!3357 = distinct !{!3357, !3296, !3358, !167}
!3358 = !DILocation(line: 42, column: 5, scope: !3289)
!3359 = !DILocation(line: 43, column: 1, scope: !3269)
!3360 = distinct !DISubprogram(name: "mayo_sign", scope: !88, file: !88, line: 502, type: !1324, scopeLine: 504, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !79, retainedNodes: !91)
!3361 = !DILocalVariable(name: "p", arg: 1, scope: !3360, file: !88, line: 502, type: !353)
!3362 = !DILocation(line: 502, column: 36, scope: !3360)
!3363 = !DILocalVariable(name: "sm", arg: 2, scope: !3360, file: !88, line: 502, type: !55)
!3364 = !DILocation(line: 502, column: 54, scope: !3360)
!3365 = !DILocalVariable(name: "smlen", arg: 3, scope: !3360, file: !88, line: 503, type: !1326)
!3366 = !DILocation(line: 503, column: 23, scope: !3360)
!3367 = !DILocalVariable(name: "m", arg: 4, scope: !3360, file: !88, line: 503, type: !60)
!3368 = !DILocation(line: 503, column: 51, scope: !3360)
!3369 = !DILocalVariable(name: "mlen", arg: 5, scope: !3360, file: !88, line: 504, type: !82)
!3370 = !DILocation(line: 504, column: 22, scope: !3360)
!3371 = !DILocalVariable(name: "csk", arg: 6, scope: !3360, file: !88, line: 504, type: !60)
!3372 = !DILocation(line: 504, column: 49, scope: !3360)
!3373 = !DILocalVariable(name: "ret", scope: !3360, file: !88, line: 505, type: !51)
!3374 = !DILocation(line: 505, column: 9, scope: !3360)
!3375 = !DILocalVariable(name: "param_sig_bytes", scope: !3360, file: !88, line: 506, type: !434)
!3376 = !DILocation(line: 506, column: 15, scope: !3360)
!3377 = !DILocation(line: 506, column: 49, scope: !3360)
!3378 = !DILocation(line: 506, column: 33, scope: !3360)
!3379 = !DILocalVariable(name: "siglen", scope: !3360, file: !88, line: 507, type: !82)
!3380 = !DILocation(line: 507, column: 12, scope: !3360)
!3381 = !DILocation(line: 508, column: 13, scope: !3360)
!3382 = !DILocation(line: 508, column: 18, scope: !3360)
!3383 = !DILocation(line: 508, column: 16, scope: !3360)
!3384 = !DILocation(line: 508, column: 35, scope: !3360)
!3385 = !DILocation(line: 508, column: 38, scope: !3360)
!3386 = !DILocation(line: 508, column: 5, scope: !3360)
!3387 = !DILocation(line: 509, column: 31, scope: !3360)
!3388 = !DILocation(line: 509, column: 34, scope: !3360)
!3389 = !DILocation(line: 509, column: 47, scope: !3360)
!3390 = !DILocation(line: 509, column: 52, scope: !3360)
!3391 = !DILocation(line: 509, column: 50, scope: !3360)
!3392 = !DILocation(line: 509, column: 69, scope: !3360)
!3393 = !DILocation(line: 509, column: 75, scope: !3360)
!3394 = !DILocation(line: 509, column: 11, scope: !3360)
!3395 = !DILocation(line: 509, column: 9, scope: !3360)
!3396 = !DILocation(line: 510, column: 9, scope: !3397)
!3397 = distinct !DILexicalBlock(scope: !3360, file: !88, line: 510, column: 9)
!3398 = !DILocation(line: 510, column: 13, scope: !3397)
!3399 = !DILocation(line: 510, column: 24, scope: !3397)
!3400 = !DILocation(line: 510, column: 27, scope: !3397)
!3401 = !DILocation(line: 510, column: 46, scope: !3397)
!3402 = !DILocation(line: 510, column: 34, scope: !3397)
!3403 = !DILocation(line: 511, column: 16, scope: !3404)
!3404 = distinct !DILexicalBlock(scope: !3397, file: !88, line: 510, column: 62)
!3405 = !DILocation(line: 511, column: 23, scope: !3404)
!3406 = !DILocation(line: 511, column: 32, scope: !3404)
!3407 = !DILocation(line: 511, column: 30, scope: !3404)
!3408 = !DILocation(line: 511, column: 9, scope: !3404)
!3409 = !DILocation(line: 512, column: 9, scope: !3404)
!3410 = !DILocation(line: 515, column: 14, scope: !3360)
!3411 = !DILocation(line: 515, column: 23, scope: !3360)
!3412 = !DILocation(line: 515, column: 21, scope: !3360)
!3413 = !DILocation(line: 515, column: 6, scope: !3360)
!3414 = !DILocation(line: 515, column: 12, scope: !3360)
!3415 = !DILocation(line: 515, column: 5, scope: !3360)
!3416 = !DILabel(scope: !3360, name: "err", file: !88, line: 516, column: 1)
!3417 = !DILocation(line: 516, column: 1, scope: !3360)
!3418 = !DILocation(line: 517, column: 12, scope: !3360)
!3419 = !DILocation(line: 517, column: 5, scope: !3360)
!3420 = distinct !DISubprogram(name: "mayo_open", scope: !88, file: !88, line: 520, type: !1324, scopeLine: 522, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !79, retainedNodes: !91)
!3421 = !DILocalVariable(name: "p", arg: 1, scope: !3420, file: !88, line: 520, type: !353)
!3422 = !DILocation(line: 520, column: 36, scope: !3420)
!3423 = !DILocalVariable(name: "m", arg: 2, scope: !3420, file: !88, line: 520, type: !55)
!3424 = !DILocation(line: 520, column: 54, scope: !3420)
!3425 = !DILocalVariable(name: "mlen", arg: 3, scope: !3420, file: !88, line: 521, type: !1326)
!3426 = !DILocation(line: 521, column: 23, scope: !3420)
!3427 = !DILocalVariable(name: "sm", arg: 4, scope: !3420, file: !88, line: 521, type: !60)
!3428 = !DILocation(line: 521, column: 50, scope: !3420)
!3429 = !DILocalVariable(name: "smlen", arg: 5, scope: !3420, file: !88, line: 522, type: !82)
!3430 = !DILocation(line: 522, column: 22, scope: !3420)
!3431 = !DILocalVariable(name: "pk", arg: 6, scope: !3420, file: !88, line: 522, type: !60)
!3432 = !DILocation(line: 522, column: 50, scope: !3420)
!3433 = !DILocalVariable(name: "param_sig_bytes", scope: !3420, file: !88, line: 523, type: !434)
!3434 = !DILocation(line: 523, column: 15, scope: !3420)
!3435 = !DILocation(line: 523, column: 49, scope: !3420)
!3436 = !DILocation(line: 523, column: 33, scope: !3420)
!3437 = !DILocation(line: 524, column: 9, scope: !3438)
!3438 = distinct !DILexicalBlock(scope: !3420, file: !88, line: 524, column: 9)
!3439 = !DILocation(line: 524, column: 25, scope: !3438)
!3440 = !DILocation(line: 524, column: 15, scope: !3438)
!3441 = !DILocation(line: 525, column: 9, scope: !3442)
!3442 = distinct !DILexicalBlock(scope: !3438, file: !88, line: 524, column: 42)
!3443 = !DILocalVariable(name: "result", scope: !3420, file: !88, line: 527, type: !51)
!3444 = !DILocation(line: 527, column: 9, scope: !3420)
!3445 = !DILocation(line: 527, column: 30, scope: !3420)
!3446 = !DILocation(line: 527, column: 33, scope: !3420)
!3447 = !DILocation(line: 527, column: 38, scope: !3420)
!3448 = !DILocation(line: 527, column: 36, scope: !3420)
!3449 = !DILocation(line: 527, column: 55, scope: !3420)
!3450 = !DILocation(line: 527, column: 63, scope: !3420)
!3451 = !DILocation(line: 527, column: 61, scope: !3420)
!3452 = !DILocation(line: 527, column: 80, scope: !3420)
!3453 = !DILocation(line: 528, column: 30, scope: !3420)
!3454 = !DILocation(line: 527, column: 18, scope: !3420)
!3455 = !DILocation(line: 530, column: 9, scope: !3456)
!3456 = distinct !DILexicalBlock(scope: !3420, file: !88, line: 530, column: 9)
!3457 = !DILocation(line: 530, column: 16, scope: !3456)
!3458 = !DILocation(line: 531, column: 17, scope: !3459)
!3459 = distinct !DILexicalBlock(scope: !3456, file: !88, line: 530, column: 28)
!3460 = !DILocation(line: 531, column: 25, scope: !3459)
!3461 = !DILocation(line: 531, column: 23, scope: !3459)
!3462 = !DILocation(line: 531, column: 10, scope: !3459)
!3463 = !DILocation(line: 531, column: 15, scope: !3459)
!3464 = !DILocation(line: 532, column: 17, scope: !3459)
!3465 = !DILocation(line: 532, column: 20, scope: !3459)
!3466 = !DILocation(line: 532, column: 25, scope: !3459)
!3467 = !DILocation(line: 532, column: 23, scope: !3459)
!3468 = !DILocation(line: 532, column: 43, scope: !3459)
!3469 = !DILocation(line: 532, column: 42, scope: !3459)
!3470 = !DILocation(line: 532, column: 9, scope: !3459)
!3471 = !DILocation(line: 533, column: 5, scope: !3459)
!3472 = !DILocation(line: 535, column: 12, scope: !3420)
!3473 = !DILocation(line: 535, column: 5, scope: !3420)
!3474 = !DILocation(line: 536, column: 1, scope: !3420)
!3475 = distinct !DISubprogram(name: "mayo_verify", scope: !88, file: !88, line: 617, type: !3476, scopeLine: 619, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !79, retainedNodes: !91)
!3476 = !DISubroutineType(types: !3477)
!3477 = !{!51, !353, !60, !82, !60, !60}
!3478 = !DILocalVariable(name: "p", arg: 1, scope: !3475, file: !88, line: 617, type: !353)
!3479 = !DILocation(line: 617, column: 38, scope: !3475)
!3480 = !DILocalVariable(name: "m", arg: 2, scope: !3475, file: !88, line: 617, type: !60)
!3481 = !DILocation(line: 617, column: 62, scope: !3475)
!3482 = !DILocalVariable(name: "mlen", arg: 3, scope: !3475, file: !88, line: 618, type: !82)
!3483 = !DILocation(line: 618, column: 24, scope: !3475)
!3484 = !DILocalVariable(name: "sig", arg: 4, scope: !3475, file: !88, line: 618, type: !60)
!3485 = !DILocation(line: 618, column: 51, scope: !3475)
!3486 = !DILocalVariable(name: "cpk", arg: 5, scope: !3475, file: !88, line: 619, type: !60)
!3487 = !DILocation(line: 619, column: 38, scope: !3475)
!3488 = !DILocalVariable(name: "tEnc", scope: !3475, file: !88, line: 620, type: !1342)
!3489 = !DILocation(line: 620, column: 19, scope: !3475)
!3490 = !DILocalVariable(name: "t", scope: !3475, file: !88, line: 621, type: !1347)
!3491 = !DILocation(line: 621, column: 19, scope: !3475)
!3492 = !DILocalVariable(name: "y", scope: !3475, file: !88, line: 622, type: !3493)
!3493 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 2272, elements: !3494)
!3494 = !{!3495}
!3495 = !DISubrange(count: 284)
!3496 = !DILocation(line: 622, column: 19, scope: !3475)
!3497 = !DILocalVariable(name: "s", scope: !3475, file: !88, line: 623, type: !1374)
!3498 = !DILocation(line: 623, column: 19, scope: !3475)
!3499 = !DILocalVariable(name: "pk", scope: !3475, file: !88, line: 624, type: !3500)
!3500 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 7326720, elements: !3501)
!3501 = !{!3502}
!3502 = !DISubrange(count: 114480)
!3503 = !DILocation(line: 624, column: 14, scope: !3475)
!3504 = !DILocalVariable(name: "tmp", scope: !3475, file: !88, line: 625, type: !3505)
!3505 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 832, elements: !3506)
!3506 = !{!3507}
!3507 = !DISubrange(count: 104)
!3508 = !DILocation(line: 625, column: 19, scope: !3475)
!3509 = !DILocalVariable(name: "param_m", scope: !3475, file: !88, line: 627, type: !434)
!3510 = !DILocation(line: 627, column: 15, scope: !3475)
!3511 = !DILocation(line: 627, column: 33, scope: !3475)
!3512 = !DILocation(line: 627, column: 25, scope: !3475)
!3513 = !DILocalVariable(name: "param_n", scope: !3475, file: !88, line: 628, type: !434)
!3514 = !DILocation(line: 628, column: 15, scope: !3475)
!3515 = !DILocation(line: 628, column: 33, scope: !3475)
!3516 = !DILocation(line: 628, column: 25, scope: !3475)
!3517 = !DILocalVariable(name: "param_k", scope: !3475, file: !88, line: 629, type: !434)
!3518 = !DILocation(line: 629, column: 15, scope: !3475)
!3519 = !DILocation(line: 629, column: 33, scope: !3475)
!3520 = !DILocation(line: 629, column: 25, scope: !3475)
!3521 = !DILocalVariable(name: "param_m_bytes", scope: !3475, file: !88, line: 630, type: !434)
!3522 = !DILocation(line: 630, column: 15, scope: !3475)
!3523 = !DILocation(line: 630, column: 45, scope: !3475)
!3524 = !DILocation(line: 630, column: 31, scope: !3475)
!3525 = !DILocalVariable(name: "param_sig_bytes", scope: !3475, file: !88, line: 631, type: !434)
!3526 = !DILocation(line: 631, column: 15, scope: !3475)
!3527 = !DILocation(line: 631, column: 49, scope: !3475)
!3528 = !DILocation(line: 631, column: 33, scope: !3475)
!3529 = !DILocalVariable(name: "param_digest_bytes", scope: !3475, file: !88, line: 632, type: !434)
!3530 = !DILocation(line: 632, column: 15, scope: !3475)
!3531 = !DILocation(line: 632, column: 55, scope: !3475)
!3532 = !DILocation(line: 632, column: 36, scope: !3475)
!3533 = !DILocalVariable(name: "param_salt_bytes", scope: !3475, file: !88, line: 633, type: !434)
!3534 = !DILocation(line: 633, column: 15, scope: !3475)
!3535 = !DILocation(line: 633, column: 51, scope: !3475)
!3536 = !DILocation(line: 633, column: 34, scope: !3475)
!3537 = !DILocalVariable(name: "ret", scope: !3475, file: !88, line: 635, type: !51)
!3538 = !DILocation(line: 635, column: 9, scope: !3475)
!3539 = !DILocation(line: 635, column: 30, scope: !3475)
!3540 = !DILocation(line: 635, column: 33, scope: !3475)
!3541 = !DILocation(line: 635, column: 38, scope: !3475)
!3542 = !DILocation(line: 635, column: 15, scope: !3475)
!3543 = !DILocation(line: 636, column: 9, scope: !3544)
!3544 = distinct !DILexicalBlock(scope: !3475, file: !88, line: 636, column: 9)
!3545 = !DILocation(line: 636, column: 13, scope: !3544)
!3546 = !DILocation(line: 637, column: 9, scope: !3547)
!3547 = distinct !DILexicalBlock(scope: !3544, file: !88, line: 636, column: 25)
!3548 = !DILocalVariable(name: "P1", scope: !3475, file: !88, line: 640, type: !81)
!3549 = !DILocation(line: 640, column: 15, scope: !3475)
!3550 = !DILocation(line: 640, column: 20, scope: !3475)
!3551 = !DILocalVariable(name: "P2", scope: !3475, file: !88, line: 641, type: !81)
!3552 = !DILocation(line: 641, column: 15, scope: !3475)
!3553 = !DILocation(line: 641, column: 20, scope: !3475)
!3554 = !DILocation(line: 641, column: 40, scope: !3475)
!3555 = !DILocation(line: 641, column: 25, scope: !3475)
!3556 = !DILocation(line: 641, column: 23, scope: !3475)
!3557 = !DILocalVariable(name: "P3", scope: !3475, file: !88, line: 642, type: !81)
!3558 = !DILocation(line: 642, column: 15, scope: !3475)
!3559 = !DILocation(line: 642, column: 20, scope: !3475)
!3560 = !DILocation(line: 642, column: 40, scope: !3475)
!3561 = !DILocation(line: 642, column: 25, scope: !3475)
!3562 = !DILocation(line: 642, column: 23, scope: !3475)
!3563 = !DILocation(line: 657, column: 14, scope: !3475)
!3564 = !DILocation(line: 657, column: 19, scope: !3475)
!3565 = !DILocation(line: 657, column: 39, scope: !3475)
!3566 = !DILocation(line: 657, column: 42, scope: !3475)
!3567 = !DILocation(line: 657, column: 5, scope: !3475)
!3568 = !DILocation(line: 660, column: 12, scope: !3475)
!3569 = !DILocation(line: 660, column: 18, scope: !3475)
!3570 = !DILocation(line: 660, column: 16, scope: !3475)
!3571 = !DILocation(line: 660, column: 38, scope: !3475)
!3572 = !DILocation(line: 660, column: 44, scope: !3475)
!3573 = !DILocation(line: 660, column: 42, scope: !3475)
!3574 = !DILocation(line: 660, column: 62, scope: !3475)
!3575 = !DILocation(line: 660, column: 60, scope: !3475)
!3576 = !DILocation(line: 661, column: 12, scope: !3475)
!3577 = !DILocation(line: 660, column: 5, scope: !3475)
!3578 = !DILocation(line: 662, column: 14, scope: !3475)
!3579 = !DILocation(line: 662, column: 20, scope: !3475)
!3580 = !DILocation(line: 662, column: 35, scope: !3475)
!3581 = !DILocation(line: 662, column: 40, scope: !3475)
!3582 = !DILocation(line: 662, column: 61, scope: !3475)
!3583 = !DILocation(line: 662, column: 59, scope: !3475)
!3584 = !DILocation(line: 662, column: 5, scope: !3475)
!3585 = !DILocation(line: 663, column: 12, scope: !3475)
!3586 = !DILocation(line: 663, column: 18, scope: !3475)
!3587 = !DILocation(line: 663, column: 21, scope: !3475)
!3588 = !DILocation(line: 663, column: 5, scope: !3475)
!3589 = !DILocation(line: 666, column: 12, scope: !3475)
!3590 = !DILocation(line: 666, column: 17, scope: !3475)
!3591 = !DILocation(line: 666, column: 20, scope: !3475)
!3592 = !DILocation(line: 666, column: 30, scope: !3475)
!3593 = !DILocation(line: 666, column: 28, scope: !3475)
!3594 = !DILocation(line: 666, column: 5, scope: !3475)
!3595 = !DILocation(line: 668, column: 21, scope: !3475)
!3596 = !DILocation(line: 668, column: 24, scope: !3475)
!3597 = !DILocation(line: 668, column: 27, scope: !3475)
!3598 = !DILocation(line: 668, column: 31, scope: !3475)
!3599 = !DILocation(line: 668, column: 35, scope: !3475)
!3600 = !DILocation(line: 668, column: 39, scope: !3475)
!3601 = !DILocation(line: 668, column: 5, scope: !3475)
!3602 = !DILocation(line: 670, column: 16, scope: !3603)
!3603 = distinct !DILexicalBlock(scope: !3475, file: !88, line: 670, column: 9)
!3604 = !DILocation(line: 670, column: 19, scope: !3603)
!3605 = !DILocation(line: 670, column: 22, scope: !3603)
!3606 = !DILocation(line: 670, column: 9, scope: !3603)
!3607 = !DILocation(line: 670, column: 31, scope: !3603)
!3608 = !DILocation(line: 671, column: 9, scope: !3609)
!3609 = distinct !DILexicalBlock(scope: !3603, file: !88, line: 670, column: 37)
!3610 = !DILocation(line: 673, column: 5, scope: !3475)
!3611 = !DILocation(line: 674, column: 1, scope: !3475)
!3612 = distinct !DISubprogram(name: "mayo_expand_pk", scope: !88, file: !88, line: 608, type: !3613, scopeLine: 609, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !79, retainedNodes: !91)
!3613 = !DISubroutineType(types: !3614)
!3614 = !{!51, !353, !60, !81}
!3615 = !DILocalVariable(name: "p", arg: 1, scope: !3612, file: !88, line: 608, type: !353)
!3616 = !DILocation(line: 608, column: 41, scope: !3612)
!3617 = !DILocalVariable(name: "cpk", arg: 2, scope: !3612, file: !88, line: 608, type: !60)
!3618 = !DILocation(line: 608, column: 65, scope: !3612)
!3619 = !DILocalVariable(name: "pk", arg: 3, scope: !3612, file: !88, line: 609, type: !81)
!3620 = !DILocation(line: 609, column: 30, scope: !3612)
!3621 = !DILocation(line: 610, column: 18, scope: !3612)
!3622 = !DILocation(line: 610, column: 21, scope: !3612)
!3623 = !DILocation(line: 610, column: 25, scope: !3612)
!3624 = !DILocation(line: 610, column: 5, scope: !3612)
!3625 = !DILocation(line: 612, column: 19, scope: !3612)
!3626 = !DILocation(line: 612, column: 45, scope: !3612)
!3627 = !DILocation(line: 612, column: 25, scope: !3612)
!3628 = !DILocation(line: 612, column: 23, scope: !3612)
!3629 = !DILocation(line: 612, column: 49, scope: !3612)
!3630 = !DILocation(line: 612, column: 69, scope: !3612)
!3631 = !DILocation(line: 612, column: 54, scope: !3612)
!3632 = !DILocation(line: 612, column: 52, scope: !3612)
!3633 = !DILocation(line: 612, column: 89, scope: !3612)
!3634 = !DILocation(line: 612, column: 74, scope: !3612)
!3635 = !DILocation(line: 612, column: 72, scope: !3612)
!3636 = !DILocation(line: 612, column: 108, scope: !3612)
!3637 = !DILocation(line: 612, column: 93, scope: !3612)
!3638 = !DILocation(line: 612, column: 129, scope: !3612)
!3639 = !DILocation(line: 612, column: 111, scope: !3612)
!3640 = !DILocation(line: 612, column: 110, scope: !3612)
!3641 = !DILocation(line: 612, column: 141, scope: !3612)
!3642 = !DILocation(line: 612, column: 133, scope: !3612)
!3643 = !DILocation(line: 612, column: 5, scope: !3612)
!3644 = !DILocation(line: 614, column: 5, scope: !3612)
!3645 = distinct !DISubprogram(name: "eval_public_map", scope: !88, file: !88, line: 288, type: !3646, scopeLine: 288, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !79, retainedNodes: !91)
!3646 = !DISubroutineType(types: !3647)
!3647 = !{null, !353, !60, !634, !634, !634, !55}
!3648 = !DILocalVariable(name: "p", arg: 1, scope: !3645, file: !88, line: 288, type: !353)
!3649 = !DILocation(line: 288, column: 50, scope: !3645)
!3650 = !DILocalVariable(name: "s", arg: 2, scope: !3645, file: !88, line: 288, type: !60)
!3651 = !DILocation(line: 288, column: 74, scope: !3645)
!3652 = !DILocalVariable(name: "P1", arg: 3, scope: !3645, file: !88, line: 288, type: !634)
!3653 = !DILocation(line: 288, column: 93, scope: !3645)
!3654 = !DILocalVariable(name: "P2", arg: 4, scope: !3645, file: !88, line: 288, type: !634)
!3655 = !DILocation(line: 288, column: 113, scope: !3645)
!3656 = !DILocalVariable(name: "P3", arg: 5, scope: !3645, file: !88, line: 288, type: !634)
!3657 = !DILocation(line: 288, column: 133, scope: !3645)
!3658 = !DILocalVariable(name: "eval", arg: 6, scope: !3645, file: !88, line: 288, type: !55)
!3659 = !DILocation(line: 288, column: 152, scope: !3645)
!3660 = !DILocalVariable(name: "SPS", scope: !3645, file: !88, line: 289, type: !3661)
!3661 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 82944, elements: !3662)
!3662 = !{!3663}
!3663 = !DISubrange(count: 1296)
!3664 = !DILocation(line: 289, column: 14, scope: !3645)
!3665 = !DILocation(line: 291, column: 24, scope: !3645)
!3666 = !DILocation(line: 291, column: 27, scope: !3645)
!3667 = !DILocation(line: 291, column: 31, scope: !3645)
!3668 = !DILocation(line: 291, column: 35, scope: !3645)
!3669 = !DILocation(line: 291, column: 39, scope: !3645)
!3670 = !DILocation(line: 291, column: 42, scope: !3645)
!3671 = !DILocation(line: 291, column: 5, scope: !3645)
!3672 = !DILocalVariable(name: "zero", scope: !3645, file: !88, line: 292, type: !1347)
!3673 = !DILocation(line: 292, column: 19, scope: !3645)
!3674 = !DILocation(line: 293, column: 17, scope: !3645)
!3675 = !DILocation(line: 293, column: 20, scope: !3645)
!3676 = !DILocation(line: 293, column: 25, scope: !3645)
!3677 = !DILocation(line: 293, column: 31, scope: !3645)
!3678 = !DILocation(line: 293, column: 5, scope: !3645)
!3679 = !DILocation(line: 294, column: 1, scope: !3645)
!3680 = distinct !DISubprogram(name: "m_calculate_PS_SPS", scope: !631, file: !631, line: 277, type: !3681, scopeLine: 278, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !79, retainedNodes: !91)
!3681 = !DISubroutineType(types: !3682)
!3682 = !{null, !353, !634, !634, !634, !60, !81}
!3683 = !DILocalVariable(name: "p", arg: 1, scope: !3680, file: !631, line: 277, type: !353)
!3684 = !DILocation(line: 277, column: 60, scope: !3680)
!3685 = !DILocalVariable(name: "P1", arg: 2, scope: !3680, file: !631, line: 277, type: !634)
!3686 = !DILocation(line: 277, column: 79, scope: !3680)
!3687 = !DILocalVariable(name: "P2", arg: 3, scope: !3680, file: !631, line: 277, type: !634)
!3688 = !DILocation(line: 277, column: 99, scope: !3680)
!3689 = !DILocalVariable(name: "P3", arg: 4, scope: !3680, file: !631, line: 277, type: !634)
!3690 = !DILocation(line: 277, column: 119, scope: !3680)
!3691 = !DILocalVariable(name: "s", arg: 5, scope: !3680, file: !631, line: 277, type: !60)
!3692 = !DILocation(line: 277, column: 144, scope: !3680)
!3693 = !DILocalVariable(name: "SPS", arg: 6, scope: !3680, file: !631, line: 278, type: !81)
!3694 = !DILocation(line: 278, column: 49, scope: !3680)
!3695 = !DILocalVariable(name: "PS", scope: !3680, file: !631, line: 286, type: !3696)
!3696 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 1064448, elements: !3697)
!3697 = !{!3698}
!3698 = !DISubrange(count: 16632)
!3699 = !DILocation(line: 286, column: 14, scope: !3680)
!3700 = !DILocation(line: 287, column: 33, scope: !3680)
!3701 = !DILocation(line: 287, column: 37, scope: !3680)
!3702 = !DILocation(line: 287, column: 41, scope: !3680)
!3703 = !DILocation(line: 287, column: 45, scope: !3680)
!3704 = !DILocation(line: 287, column: 56, scope: !3680)
!3705 = !DILocation(line: 287, column: 48, scope: !3680)
!3706 = !DILocation(line: 287, column: 68, scope: !3680)
!3707 = !DILocation(line: 287, column: 60, scope: !3680)
!3708 = !DILocation(line: 287, column: 80, scope: !3680)
!3709 = !DILocation(line: 287, column: 72, scope: !3680)
!3710 = !DILocation(line: 287, column: 92, scope: !3680)
!3711 = !DILocation(line: 287, column: 84, scope: !3680)
!3712 = !DILocation(line: 287, column: 96, scope: !3680)
!3713 = !DILocation(line: 287, column: 5, scope: !3680)
!3714 = !DILocation(line: 290, column: 34, scope: !3680)
!3715 = !DILocation(line: 290, column: 38, scope: !3680)
!3716 = !DILocation(line: 290, column: 49, scope: !3680)
!3717 = !DILocation(line: 290, column: 41, scope: !3680)
!3718 = !DILocation(line: 290, column: 61, scope: !3680)
!3719 = !DILocation(line: 290, column: 53, scope: !3680)
!3720 = !DILocation(line: 290, column: 73, scope: !3680)
!3721 = !DILocation(line: 290, column: 65, scope: !3680)
!3722 = !DILocation(line: 290, column: 77, scope: !3680)
!3723 = !DILocation(line: 290, column: 5, scope: !3680)
!3724 = !DILocation(line: 292, column: 1, scope: !3680)
!3725 = distinct !DISubprogram(name: "mayo_generic_m_calculate_PS", scope: !631, file: !631, line: 151, type: !3726, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !79, retainedNodes: !91)
!3726 = !DISubroutineType(types: !3727)
!3727 = !{null, !634, !634, !634, !60, !434, !434, !434, !434, !81}
!3728 = !DILocalVariable(name: "P1", arg: 1, scope: !3725, file: !631, line: 151, type: !634)
!3729 = !DILocation(line: 151, column: 64, scope: !3725)
!3730 = !DILocalVariable(name: "P2", arg: 2, scope: !3725, file: !631, line: 151, type: !634)
!3731 = !DILocation(line: 151, column: 84, scope: !3725)
!3732 = !DILocalVariable(name: "P3", arg: 3, scope: !3725, file: !631, line: 151, type: !634)
!3733 = !DILocation(line: 151, column: 104, scope: !3725)
!3734 = !DILocalVariable(name: "S", arg: 4, scope: !3725, file: !631, line: 151, type: !60)
!3735 = !DILocation(line: 151, column: 129, scope: !3725)
!3736 = !DILocalVariable(name: "m", arg: 5, scope: !3725, file: !631, line: 152, type: !434)
!3737 = !DILocation(line: 152, column: 58, scope: !3725)
!3738 = !DILocalVariable(name: "v", arg: 6, scope: !3725, file: !631, line: 152, type: !434)
!3739 = !DILocation(line: 152, column: 71, scope: !3725)
!3740 = !DILocalVariable(name: "o", arg: 7, scope: !3725, file: !631, line: 152, type: !434)
!3741 = !DILocation(line: 152, column: 84, scope: !3725)
!3742 = !DILocalVariable(name: "k", arg: 8, scope: !3725, file: !631, line: 152, type: !434)
!3743 = !DILocation(line: 152, column: 97, scope: !3725)
!3744 = !DILocalVariable(name: "PS", arg: 9, scope: !3725, file: !631, line: 152, type: !81)
!3745 = !DILocation(line: 152, column: 110, scope: !3725)
!3746 = !DILocalVariable(name: "n", scope: !3725, file: !631, line: 154, type: !434)
!3747 = !DILocation(line: 154, column: 15, scope: !3725)
!3748 = !DILocation(line: 154, column: 19, scope: !3725)
!3749 = !DILocation(line: 154, column: 23, scope: !3725)
!3750 = !DILocation(line: 154, column: 21, scope: !3725)
!3751 = !DILocalVariable(name: "m_vec_limbs", scope: !3725, file: !631, line: 155, type: !434)
!3752 = !DILocation(line: 155, column: 15, scope: !3725)
!3753 = !DILocation(line: 155, column: 30, scope: !3725)
!3754 = !DILocation(line: 155, column: 32, scope: !3725)
!3755 = !DILocation(line: 155, column: 37, scope: !3725)
!3756 = !DILocalVariable(name: "accumulator", scope: !3725, file: !631, line: 157, type: !3757)
!3757 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 17031168, elements: !3758)
!3758 = !{!3759}
!3759 = !DISubrange(count: 266112)
!3760 = !DILocation(line: 157, column: 14, scope: !3725)
!3761 = !DILocalVariable(name: "P1_used", scope: !3725, file: !631, line: 158, type: !51)
!3762 = !DILocation(line: 158, column: 9, scope: !3725)
!3763 = !DILocalVariable(name: "row", scope: !3764, file: !631, line: 159, type: !51)
!3764 = distinct !DILexicalBlock(scope: !3725, file: !631, line: 159, column: 5)
!3765 = !DILocation(line: 159, column: 14, scope: !3764)
!3766 = !DILocation(line: 159, column: 10, scope: !3764)
!3767 = !DILocation(line: 159, column: 23, scope: !3768)
!3768 = distinct !DILexicalBlock(scope: !3764, file: !631, line: 159, column: 5)
!3769 = !DILocation(line: 159, column: 29, scope: !3768)
!3770 = !DILocation(line: 159, column: 27, scope: !3768)
!3771 = !DILocation(line: 159, column: 5, scope: !3764)
!3772 = !DILocalVariable(name: "j", scope: !3773, file: !631, line: 160, type: !51)
!3773 = distinct !DILexicalBlock(scope: !3774, file: !631, line: 160, column: 9)
!3774 = distinct !DILexicalBlock(scope: !3768, file: !631, line: 159, column: 39)
!3775 = !DILocation(line: 160, column: 18, scope: !3773)
!3776 = !DILocation(line: 160, column: 22, scope: !3773)
!3777 = !DILocation(line: 160, column: 14, scope: !3773)
!3778 = !DILocation(line: 160, column: 27, scope: !3779)
!3779 = distinct !DILexicalBlock(scope: !3773, file: !631, line: 160, column: 9)
!3780 = !DILocation(line: 160, column: 31, scope: !3779)
!3781 = !DILocation(line: 160, column: 29, scope: !3779)
!3782 = !DILocation(line: 160, column: 9, scope: !3773)
!3783 = !DILocalVariable(name: "col", scope: !3784, file: !631, line: 161, type: !51)
!3784 = distinct !DILexicalBlock(scope: !3785, file: !631, line: 161, column: 13)
!3785 = distinct !DILexicalBlock(scope: !3779, file: !631, line: 160, column: 39)
!3786 = !DILocation(line: 161, column: 22, scope: !3784)
!3787 = !DILocation(line: 161, column: 18, scope: !3784)
!3788 = !DILocation(line: 161, column: 31, scope: !3789)
!3789 = distinct !DILexicalBlock(scope: !3784, file: !631, line: 161, column: 13)
!3790 = !DILocation(line: 161, column: 37, scope: !3789)
!3791 = !DILocation(line: 161, column: 35, scope: !3789)
!3792 = !DILocation(line: 161, column: 13, scope: !3784)
!3793 = !DILocation(line: 162, column: 27, scope: !3794)
!3794 = distinct !DILexicalBlock(scope: !3789, file: !631, line: 161, column: 47)
!3795 = !DILocation(line: 162, column: 40, scope: !3794)
!3796 = !DILocation(line: 162, column: 46, scope: !3794)
!3797 = !DILocation(line: 162, column: 56, scope: !3794)
!3798 = !DILocation(line: 162, column: 54, scope: !3794)
!3799 = !DILocation(line: 162, column: 43, scope: !3794)
!3800 = !DILocation(line: 162, column: 70, scope: !3794)
!3801 = !DILocation(line: 162, column: 87, scope: !3794)
!3802 = !DILocation(line: 162, column: 93, scope: !3794)
!3803 = !DILocation(line: 162, column: 91, scope: !3794)
!3804 = !DILocation(line: 162, column: 97, scope: !3794)
!3805 = !DILocation(line: 162, column: 95, scope: !3794)
!3806 = !DILocation(line: 162, column: 102, scope: !3794)
!3807 = !DILocation(line: 162, column: 109, scope: !3794)
!3808 = !DILocation(line: 162, column: 111, scope: !3794)
!3809 = !DILocation(line: 162, column: 117, scope: !3794)
!3810 = !DILocation(line: 162, column: 115, scope: !3794)
!3811 = !DILocation(line: 162, column: 121, scope: !3794)
!3812 = !DILocation(line: 162, column: 119, scope: !3794)
!3813 = !DILocation(line: 162, column: 107, scope: !3794)
!3814 = !DILocation(line: 162, column: 126, scope: !3794)
!3815 = !DILocation(line: 162, column: 125, scope: !3794)
!3816 = !DILocation(line: 162, column: 82, scope: !3794)
!3817 = !DILocation(line: 162, column: 17, scope: !3794)
!3818 = !DILocation(line: 163, column: 13, scope: !3794)
!3819 = !DILocation(line: 161, column: 43, scope: !3789)
!3820 = !DILocation(line: 161, column: 13, scope: !3789)
!3821 = distinct !{!3821, !3792, !3822, !167}
!3822 = !DILocation(line: 163, column: 13, scope: !3784)
!3823 = !DILocation(line: 164, column: 21, scope: !3785)
!3824 = !DILocation(line: 165, column: 9, scope: !3785)
!3825 = !DILocation(line: 160, column: 35, scope: !3779)
!3826 = !DILocation(line: 160, column: 9, scope: !3779)
!3827 = distinct !{!3827, !3782, !3828, !167}
!3828 = !DILocation(line: 165, column: 9, scope: !3773)
!3829 = !DILocalVariable(name: "j", scope: !3830, file: !631, line: 167, type: !51)
!3830 = distinct !DILexicalBlock(scope: !3774, file: !631, line: 167, column: 9)
!3831 = !DILocation(line: 167, column: 18, scope: !3830)
!3832 = !DILocation(line: 167, column: 14, scope: !3830)
!3833 = !DILocation(line: 167, column: 25, scope: !3834)
!3834 = distinct !DILexicalBlock(scope: !3830, file: !631, line: 167, column: 9)
!3835 = !DILocation(line: 167, column: 29, scope: !3834)
!3836 = !DILocation(line: 167, column: 27, scope: !3834)
!3837 = !DILocation(line: 167, column: 9, scope: !3830)
!3838 = !DILocalVariable(name: "col", scope: !3839, file: !631, line: 168, type: !51)
!3839 = distinct !DILexicalBlock(scope: !3840, file: !631, line: 168, column: 13)
!3840 = distinct !DILexicalBlock(scope: !3834, file: !631, line: 167, column: 37)
!3841 = !DILocation(line: 168, column: 22, scope: !3839)
!3842 = !DILocation(line: 168, column: 18, scope: !3839)
!3843 = !DILocation(line: 168, column: 31, scope: !3844)
!3844 = distinct !DILexicalBlock(scope: !3839, file: !631, line: 168, column: 13)
!3845 = !DILocation(line: 168, column: 37, scope: !3844)
!3846 = !DILocation(line: 168, column: 35, scope: !3844)
!3847 = !DILocation(line: 168, column: 13, scope: !3839)
!3848 = !DILocation(line: 169, column: 27, scope: !3849)
!3849 = distinct !DILexicalBlock(scope: !3844, file: !631, line: 168, column: 47)
!3850 = !DILocation(line: 169, column: 40, scope: !3849)
!3851 = !DILocation(line: 169, column: 46, scope: !3849)
!3852 = !DILocation(line: 169, column: 52, scope: !3849)
!3853 = !DILocation(line: 169, column: 50, scope: !3849)
!3854 = !DILocation(line: 169, column: 56, scope: !3849)
!3855 = !DILocation(line: 169, column: 54, scope: !3849)
!3856 = !DILocation(line: 169, column: 59, scope: !3849)
!3857 = !DILocation(line: 169, column: 58, scope: !3849)
!3858 = !DILocation(line: 169, column: 43, scope: !3849)
!3859 = !DILocation(line: 169, column: 72, scope: !3849)
!3860 = !DILocation(line: 169, column: 89, scope: !3849)
!3861 = !DILocation(line: 169, column: 95, scope: !3849)
!3862 = !DILocation(line: 169, column: 93, scope: !3849)
!3863 = !DILocation(line: 169, column: 99, scope: !3849)
!3864 = !DILocation(line: 169, column: 97, scope: !3849)
!3865 = !DILocation(line: 169, column: 104, scope: !3849)
!3866 = !DILocation(line: 169, column: 111, scope: !3849)
!3867 = !DILocation(line: 169, column: 114, scope: !3849)
!3868 = !DILocation(line: 169, column: 120, scope: !3849)
!3869 = !DILocation(line: 169, column: 118, scope: !3849)
!3870 = !DILocation(line: 169, column: 125, scope: !3849)
!3871 = !DILocation(line: 169, column: 123, scope: !3849)
!3872 = !DILocation(line: 169, column: 129, scope: !3849)
!3873 = !DILocation(line: 169, column: 127, scope: !3849)
!3874 = !DILocation(line: 169, column: 109, scope: !3849)
!3875 = !DILocation(line: 169, column: 135, scope: !3849)
!3876 = !DILocation(line: 169, column: 133, scope: !3849)
!3877 = !DILocation(line: 169, column: 84, scope: !3849)
!3878 = !DILocation(line: 169, column: 17, scope: !3849)
!3879 = !DILocation(line: 170, column: 13, scope: !3849)
!3880 = !DILocation(line: 168, column: 43, scope: !3844)
!3881 = !DILocation(line: 168, column: 13, scope: !3844)
!3882 = distinct !{!3882, !3847, !3883, !167}
!3883 = !DILocation(line: 170, column: 13, scope: !3839)
!3884 = !DILocation(line: 171, column: 9, scope: !3840)
!3885 = !DILocation(line: 167, column: 33, scope: !3834)
!3886 = !DILocation(line: 167, column: 9, scope: !3834)
!3887 = distinct !{!3887, !3837, !3888, !167}
!3888 = !DILocation(line: 171, column: 9, scope: !3830)
!3889 = !DILocation(line: 172, column: 5, scope: !3774)
!3890 = !DILocation(line: 159, column: 35, scope: !3768)
!3891 = !DILocation(line: 159, column: 5, scope: !3768)
!3892 = distinct !{!3892, !3771, !3893, !167}
!3893 = !DILocation(line: 172, column: 5, scope: !3764)
!3894 = !DILocalVariable(name: "P3_used", scope: !3725, file: !631, line: 174, type: !51)
!3895 = !DILocation(line: 174, column: 9, scope: !3725)
!3896 = !DILocalVariable(name: "row", scope: !3897, file: !631, line: 175, type: !51)
!3897 = distinct !DILexicalBlock(scope: !3725, file: !631, line: 175, column: 5)
!3898 = !DILocation(line: 175, column: 14, scope: !3897)
!3899 = !DILocation(line: 175, column: 20, scope: !3897)
!3900 = !DILocation(line: 175, column: 10, scope: !3897)
!3901 = !DILocation(line: 175, column: 23, scope: !3902)
!3902 = distinct !DILexicalBlock(scope: !3897, file: !631, line: 175, column: 5)
!3903 = !DILocation(line: 175, column: 29, scope: !3902)
!3904 = !DILocation(line: 175, column: 27, scope: !3902)
!3905 = !DILocation(line: 175, column: 5, scope: !3897)
!3906 = !DILocalVariable(name: "j", scope: !3907, file: !631, line: 176, type: !51)
!3907 = distinct !DILexicalBlock(scope: !3908, file: !631, line: 176, column: 9)
!3908 = distinct !DILexicalBlock(scope: !3902, file: !631, line: 175, column: 39)
!3909 = !DILocation(line: 176, column: 18, scope: !3907)
!3910 = !DILocation(line: 176, column: 22, scope: !3907)
!3911 = !DILocation(line: 176, column: 14, scope: !3907)
!3912 = !DILocation(line: 176, column: 27, scope: !3913)
!3913 = distinct !DILexicalBlock(scope: !3907, file: !631, line: 176, column: 9)
!3914 = !DILocation(line: 176, column: 31, scope: !3913)
!3915 = !DILocation(line: 176, column: 29, scope: !3913)
!3916 = !DILocation(line: 176, column: 9, scope: !3907)
!3917 = !DILocalVariable(name: "col", scope: !3918, file: !631, line: 177, type: !51)
!3918 = distinct !DILexicalBlock(scope: !3919, file: !631, line: 177, column: 13)
!3919 = distinct !DILexicalBlock(scope: !3913, file: !631, line: 176, column: 39)
!3920 = !DILocation(line: 177, column: 22, scope: !3918)
!3921 = !DILocation(line: 177, column: 18, scope: !3918)
!3922 = !DILocation(line: 177, column: 31, scope: !3923)
!3923 = distinct !DILexicalBlock(scope: !3918, file: !631, line: 177, column: 13)
!3924 = !DILocation(line: 177, column: 37, scope: !3923)
!3925 = !DILocation(line: 177, column: 35, scope: !3923)
!3926 = !DILocation(line: 177, column: 13, scope: !3918)
!3927 = !DILocation(line: 178, column: 27, scope: !3928)
!3928 = distinct !DILexicalBlock(scope: !3923, file: !631, line: 177, column: 47)
!3929 = !DILocation(line: 178, column: 40, scope: !3928)
!3930 = !DILocation(line: 178, column: 45, scope: !3928)
!3931 = !DILocation(line: 178, column: 55, scope: !3928)
!3932 = !DILocation(line: 178, column: 53, scope: !3928)
!3933 = !DILocation(line: 178, column: 43, scope: !3928)
!3934 = !DILocation(line: 178, column: 68, scope: !3928)
!3935 = !DILocation(line: 178, column: 85, scope: !3928)
!3936 = !DILocation(line: 178, column: 91, scope: !3928)
!3937 = !DILocation(line: 178, column: 89, scope: !3928)
!3938 = !DILocation(line: 178, column: 95, scope: !3928)
!3939 = !DILocation(line: 178, column: 93, scope: !3928)
!3940 = !DILocation(line: 178, column: 100, scope: !3928)
!3941 = !DILocation(line: 178, column: 107, scope: !3928)
!3942 = !DILocation(line: 178, column: 109, scope: !3928)
!3943 = !DILocation(line: 178, column: 115, scope: !3928)
!3944 = !DILocation(line: 178, column: 113, scope: !3928)
!3945 = !DILocation(line: 178, column: 119, scope: !3928)
!3946 = !DILocation(line: 178, column: 117, scope: !3928)
!3947 = !DILocation(line: 178, column: 105, scope: !3928)
!3948 = !DILocation(line: 178, column: 125, scope: !3928)
!3949 = !DILocation(line: 178, column: 123, scope: !3928)
!3950 = !DILocation(line: 178, column: 80, scope: !3928)
!3951 = !DILocation(line: 178, column: 17, scope: !3928)
!3952 = !DILocation(line: 179, column: 13, scope: !3928)
!3953 = !DILocation(line: 177, column: 43, scope: !3923)
!3954 = !DILocation(line: 177, column: 13, scope: !3923)
!3955 = distinct !{!3955, !3926, !3956, !167}
!3956 = !DILocation(line: 179, column: 13, scope: !3918)
!3957 = !DILocation(line: 180, column: 21, scope: !3919)
!3958 = !DILocation(line: 181, column: 9, scope: !3919)
!3959 = !DILocation(line: 176, column: 35, scope: !3913)
!3960 = !DILocation(line: 176, column: 9, scope: !3913)
!3961 = distinct !{!3961, !3916, !3962, !167}
!3962 = !DILocation(line: 181, column: 9, scope: !3907)
!3963 = !DILocation(line: 182, column: 5, scope: !3908)
!3964 = !DILocation(line: 175, column: 35, scope: !3902)
!3965 = !DILocation(line: 175, column: 5, scope: !3902)
!3966 = distinct !{!3966, !3905, !3967, !167}
!3967 = !DILocation(line: 182, column: 5, scope: !3897)
!3968 = !DILocalVariable(name: "i", scope: !3725, file: !631, line: 185, type: !51)
!3969 = !DILocation(line: 185, column: 9, scope: !3725)
!3970 = !DILocation(line: 186, column: 5, scope: !3725)
!3971 = !DILocation(line: 186, column: 12, scope: !3725)
!3972 = !DILocation(line: 186, column: 16, scope: !3725)
!3973 = !DILocation(line: 186, column: 20, scope: !3725)
!3974 = !DILocation(line: 186, column: 18, scope: !3725)
!3975 = !DILocation(line: 186, column: 14, scope: !3725)
!3976 = !DILocation(line: 187, column: 29, scope: !3977)
!3977 = distinct !DILexicalBlock(scope: !3725, file: !631, line: 186, column: 23)
!3978 = !DILocation(line: 187, column: 42, scope: !3977)
!3979 = !DILocation(line: 187, column: 56, scope: !3977)
!3980 = !DILocation(line: 187, column: 58, scope: !3977)
!3981 = !DILocation(line: 187, column: 65, scope: !3977)
!3982 = !DILocation(line: 187, column: 63, scope: !3977)
!3983 = !DILocation(line: 187, column: 54, scope: !3977)
!3984 = !DILocation(line: 187, column: 78, scope: !3977)
!3985 = !DILocation(line: 187, column: 83, scope: !3977)
!3986 = !DILocation(line: 187, column: 87, scope: !3977)
!3987 = !DILocation(line: 187, column: 85, scope: !3977)
!3988 = !DILocation(line: 187, column: 81, scope: !3977)
!3989 = !DILocation(line: 187, column: 9, scope: !3977)
!3990 = !DILocation(line: 188, column: 10, scope: !3977)
!3991 = distinct !{!3991, !3970, !3992, !167}
!3992 = !DILocation(line: 189, column: 5, scope: !3725)
!3993 = !DILocation(line: 191, column: 1, scope: !3725)
!3994 = distinct !DISubprogram(name: "mayo_generic_m_calculate_SPS", scope: !631, file: !631, line: 195, type: !3995, scopeLine: 195, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !79, retainedNodes: !91)
!3995 = !DISubroutineType(types: !3996)
!3996 = !{null, !634, !60, !51, !51, !51, !81}
!3997 = !DILocalVariable(name: "PS", arg: 1, scope: !3994, file: !631, line: 195, type: !634)
!3998 = !DILocation(line: 195, column: 65, scope: !3994)
!3999 = !DILocalVariable(name: "S", arg: 2, scope: !3994, file: !631, line: 195, type: !60)
!4000 = !DILocation(line: 195, column: 90, scope: !3994)
!4001 = !DILocalVariable(name: "m", arg: 3, scope: !3994, file: !631, line: 195, type: !51)
!4002 = !DILocation(line: 195, column: 97, scope: !3994)
!4003 = !DILocalVariable(name: "k", arg: 4, scope: !3994, file: !631, line: 195, type: !51)
!4004 = !DILocation(line: 195, column: 104, scope: !3994)
!4005 = !DILocalVariable(name: "n", arg: 5, scope: !3994, file: !631, line: 195, type: !51)
!4006 = !DILocation(line: 195, column: 112, scope: !3994)
!4007 = !DILocalVariable(name: "SPS", arg: 6, scope: !3994, file: !631, line: 195, type: !81)
!4008 = !DILocation(line: 195, column: 125, scope: !3994)
!4009 = !DILocalVariable(name: "accumulator", scope: !3994, file: !631, line: 196, type: !4010)
!4010 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 1327104, elements: !4011)
!4011 = !{!4012}
!4012 = !DISubrange(count: 20736)
!4013 = !DILocation(line: 196, column: 14, scope: !3994)
!4014 = !DILocalVariable(name: "m_vec_limbs", scope: !3994, file: !631, line: 197, type: !434)
!4015 = !DILocation(line: 197, column: 15, scope: !3994)
!4016 = !DILocation(line: 197, column: 30, scope: !3994)
!4017 = !DILocation(line: 197, column: 32, scope: !3994)
!4018 = !DILocation(line: 197, column: 37, scope: !3994)
!4019 = !DILocalVariable(name: "row", scope: !4020, file: !631, line: 198, type: !51)
!4020 = distinct !DILexicalBlock(scope: !3994, file: !631, line: 198, column: 5)
!4021 = !DILocation(line: 198, column: 14, scope: !4020)
!4022 = !DILocation(line: 198, column: 10, scope: !4020)
!4023 = !DILocation(line: 198, column: 23, scope: !4024)
!4024 = distinct !DILexicalBlock(scope: !4020, file: !631, line: 198, column: 5)
!4025 = !DILocation(line: 198, column: 29, scope: !4024)
!4026 = !DILocation(line: 198, column: 27, scope: !4024)
!4027 = !DILocation(line: 198, column: 5, scope: !4020)
!4028 = !DILocalVariable(name: "j", scope: !4029, file: !631, line: 199, type: !51)
!4029 = distinct !DILexicalBlock(scope: !4030, file: !631, line: 199, column: 9)
!4030 = distinct !DILexicalBlock(scope: !4024, file: !631, line: 198, column: 39)
!4031 = !DILocation(line: 199, column: 18, scope: !4029)
!4032 = !DILocation(line: 199, column: 14, scope: !4029)
!4033 = !DILocation(line: 199, column: 25, scope: !4034)
!4034 = distinct !DILexicalBlock(scope: !4029, file: !631, line: 199, column: 9)
!4035 = !DILocation(line: 199, column: 29, scope: !4034)
!4036 = !DILocation(line: 199, column: 27, scope: !4034)
!4037 = !DILocation(line: 199, column: 9, scope: !4029)
!4038 = !DILocalVariable(name: "col", scope: !4039, file: !631, line: 200, type: !51)
!4039 = distinct !DILexicalBlock(scope: !4040, file: !631, line: 200, column: 13)
!4040 = distinct !DILexicalBlock(scope: !4034, file: !631, line: 199, column: 37)
!4041 = !DILocation(line: 200, column: 22, scope: !4039)
!4042 = !DILocation(line: 200, column: 18, scope: !4039)
!4043 = !DILocation(line: 200, column: 31, scope: !4044)
!4044 = distinct !DILexicalBlock(scope: !4039, file: !631, line: 200, column: 13)
!4045 = !DILocation(line: 200, column: 37, scope: !4044)
!4046 = !DILocation(line: 200, column: 35, scope: !4044)
!4047 = !DILocation(line: 200, column: 13, scope: !4039)
!4048 = !DILocation(line: 201, column: 31, scope: !4049)
!4049 = distinct !DILexicalBlock(scope: !4044, file: !631, line: 200, column: 50)
!4050 = !DILocation(line: 201, column: 44, scope: !4049)
!4051 = !DILocation(line: 201, column: 50, scope: !4049)
!4052 = !DILocation(line: 201, column: 54, scope: !4049)
!4053 = !DILocation(line: 201, column: 52, scope: !4049)
!4054 = !DILocation(line: 201, column: 58, scope: !4049)
!4055 = !DILocation(line: 201, column: 56, scope: !4049)
!4056 = !DILocation(line: 201, column: 65, scope: !4049)
!4057 = !DILocation(line: 201, column: 63, scope: !4049)
!4058 = !DILocation(line: 201, column: 47, scope: !4049)
!4059 = !DILocation(line: 201, column: 78, scope: !4049)
!4060 = !DILocation(line: 201, column: 95, scope: !4049)
!4061 = !DILocation(line: 201, column: 101, scope: !4049)
!4062 = !DILocation(line: 201, column: 99, scope: !4049)
!4063 = !DILocation(line: 201, column: 105, scope: !4049)
!4064 = !DILocation(line: 201, column: 103, scope: !4049)
!4065 = !DILocation(line: 201, column: 110, scope: !4049)
!4066 = !DILocation(line: 201, column: 117, scope: !4049)
!4067 = !DILocation(line: 201, column: 119, scope: !4049)
!4068 = !DILocation(line: 201, column: 125, scope: !4049)
!4069 = !DILocation(line: 201, column: 123, scope: !4049)
!4070 = !DILocation(line: 201, column: 129, scope: !4049)
!4071 = !DILocation(line: 201, column: 127, scope: !4049)
!4072 = !DILocation(line: 201, column: 115, scope: !4049)
!4073 = !DILocation(line: 201, column: 134, scope: !4049)
!4074 = !DILocation(line: 201, column: 133, scope: !4049)
!4075 = !DILocation(line: 201, column: 90, scope: !4049)
!4076 = !DILocation(line: 201, column: 21, scope: !4049)
!4077 = !DILocation(line: 202, column: 13, scope: !4049)
!4078 = !DILocation(line: 200, column: 44, scope: !4044)
!4079 = !DILocation(line: 200, column: 13, scope: !4044)
!4080 = distinct !{!4080, !4047, !4081, !167}
!4081 = !DILocation(line: 202, column: 13, scope: !4039)
!4082 = !DILocation(line: 203, column: 9, scope: !4040)
!4083 = !DILocation(line: 199, column: 33, scope: !4034)
!4084 = !DILocation(line: 199, column: 9, scope: !4034)
!4085 = distinct !{!4085, !4037, !4086, !167}
!4086 = !DILocation(line: 203, column: 9, scope: !4029)
!4087 = !DILocation(line: 204, column: 5, scope: !4030)
!4088 = !DILocation(line: 198, column: 35, scope: !4024)
!4089 = !DILocation(line: 198, column: 5, scope: !4024)
!4090 = distinct !{!4090, !4027, !4091, !167}
!4091 = !DILocation(line: 204, column: 5, scope: !4020)
!4092 = !DILocalVariable(name: "i", scope: !3994, file: !631, line: 207, type: !51)
!4093 = !DILocation(line: 207, column: 9, scope: !3994)
!4094 = !DILocation(line: 208, column: 5, scope: !3994)
!4095 = !DILocation(line: 208, column: 12, scope: !3994)
!4096 = !DILocation(line: 208, column: 16, scope: !3994)
!4097 = !DILocation(line: 208, column: 18, scope: !3994)
!4098 = !DILocation(line: 208, column: 17, scope: !3994)
!4099 = !DILocation(line: 208, column: 14, scope: !3994)
!4100 = !DILocation(line: 209, column: 29, scope: !4101)
!4101 = distinct !DILexicalBlock(scope: !3994, file: !631, line: 208, column: 21)
!4102 = !DILocation(line: 209, column: 42, scope: !4101)
!4103 = !DILocation(line: 209, column: 56, scope: !4101)
!4104 = !DILocation(line: 209, column: 58, scope: !4101)
!4105 = !DILocation(line: 209, column: 65, scope: !4101)
!4106 = !DILocation(line: 209, column: 63, scope: !4101)
!4107 = !DILocation(line: 209, column: 54, scope: !4101)
!4108 = !DILocation(line: 209, column: 78, scope: !4101)
!4109 = !DILocation(line: 209, column: 84, scope: !4101)
!4110 = !DILocation(line: 209, column: 88, scope: !4101)
!4111 = !DILocation(line: 209, column: 86, scope: !4101)
!4112 = !DILocation(line: 209, column: 82, scope: !4101)
!4113 = !DILocation(line: 209, column: 9, scope: !4101)
!4114 = !DILocation(line: 210, column: 10, scope: !4101)
!4115 = distinct !{!4115, !4094, !4116, !167}
!4116 = !DILocation(line: 211, column: 5, scope: !3994)
!4117 = !DILocation(line: 212, column: 1, scope: !3994)
!4118 = distinct !DISubprogram(name: "m_vec_add", scope: !835, file: !835, line: 17, type: !4119, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !79, retainedNodes: !91)
!4119 = !DISubroutineType(types: !4120)
!4120 = !{null, !51, !634, !81}
!4121 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !4118, file: !835, line: 17, type: !51)
!4122 = !DILocation(line: 17, column: 27, scope: !4118)
!4123 = !DILocalVariable(name: "in", arg: 2, scope: !4118, file: !835, line: 17, type: !634)
!4124 = !DILocation(line: 17, column: 56, scope: !4118)
!4125 = !DILocalVariable(name: "acc", arg: 3, scope: !4118, file: !835, line: 17, type: !81)
!4126 = !DILocation(line: 17, column: 70, scope: !4118)
!4127 = !DILocalVariable(name: "i", scope: !4128, file: !835, line: 18, type: !51)
!4128 = distinct !DILexicalBlock(scope: !4118, file: !835, line: 18, column: 5)
!4129 = !DILocation(line: 18, column: 14, scope: !4128)
!4130 = !DILocation(line: 18, column: 10, scope: !4128)
!4131 = !DILocation(line: 18, column: 21, scope: !4132)
!4132 = distinct !DILexicalBlock(scope: !4128, file: !835, line: 18, column: 5)
!4133 = !DILocation(line: 18, column: 25, scope: !4132)
!4134 = !DILocation(line: 18, column: 23, scope: !4132)
!4135 = !DILocation(line: 18, column: 5, scope: !4128)
!4136 = !DILocation(line: 19, column: 19, scope: !4137)
!4137 = distinct !DILexicalBlock(scope: !4132, file: !835, line: 18, column: 43)
!4138 = !DILocation(line: 19, column: 22, scope: !4137)
!4139 = !DILocation(line: 19, column: 9, scope: !4137)
!4140 = !DILocation(line: 19, column: 13, scope: !4137)
!4141 = !DILocation(line: 19, column: 16, scope: !4137)
!4142 = !DILocation(line: 20, column: 5, scope: !4137)
!4143 = !DILocation(line: 18, column: 39, scope: !4132)
!4144 = !DILocation(line: 18, column: 5, scope: !4132)
!4145 = distinct !{!4145, !4135, !4146, !167}
!4146 = !DILocation(line: 20, column: 5, scope: !4128)
!4147 = !DILocation(line: 21, column: 1, scope: !4118)
!4148 = distinct !DISubprogram(name: "m_vec_multiply_bins", scope: !835, file: !835, line: 49, type: !4149, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !79, retainedNodes: !91)
!4149 = !DISubroutineType(types: !4150)
!4150 = !{null, !51, !81, !81}
!4151 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !4148, file: !835, line: 49, type: !51)
!4152 = !DILocation(line: 49, column: 38, scope: !4148)
!4153 = !DILocalVariable(name: "bins", arg: 2, scope: !4148, file: !835, line: 49, type: !81)
!4154 = !DILocation(line: 49, column: 61, scope: !4148)
!4155 = !DILocalVariable(name: "out", arg: 3, scope: !4148, file: !835, line: 49, type: !81)
!4156 = !DILocation(line: 49, column: 77, scope: !4148)
!4157 = !DILocation(line: 51, column: 26, scope: !4148)
!4158 = !DILocation(line: 51, column: 39, scope: !4148)
!4159 = !DILocation(line: 51, column: 51, scope: !4148)
!4160 = !DILocation(line: 51, column: 49, scope: !4148)
!4161 = !DILocation(line: 51, column: 44, scope: !4148)
!4162 = !DILocation(line: 51, column: 64, scope: !4148)
!4163 = !DILocation(line: 51, column: 77, scope: !4148)
!4164 = !DILocation(line: 51, column: 75, scope: !4148)
!4165 = !DILocation(line: 51, column: 69, scope: !4148)
!4166 = !DILocation(line: 51, column: 5, scope: !4148)
!4167 = !DILocation(line: 52, column: 22, scope: !4148)
!4168 = !DILocation(line: 52, column: 35, scope: !4148)
!4169 = !DILocation(line: 52, column: 47, scope: !4148)
!4170 = !DILocation(line: 52, column: 45, scope: !4148)
!4171 = !DILocation(line: 52, column: 40, scope: !4148)
!4172 = !DILocation(line: 52, column: 60, scope: !4148)
!4173 = !DILocation(line: 52, column: 72, scope: !4148)
!4174 = !DILocation(line: 52, column: 70, scope: !4148)
!4175 = !DILocation(line: 52, column: 65, scope: !4148)
!4176 = !DILocation(line: 52, column: 5, scope: !4148)
!4177 = !DILocation(line: 53, column: 26, scope: !4148)
!4178 = !DILocation(line: 53, column: 39, scope: !4148)
!4179 = !DILocation(line: 53, column: 52, scope: !4148)
!4180 = !DILocation(line: 53, column: 50, scope: !4148)
!4181 = !DILocation(line: 53, column: 44, scope: !4148)
!4182 = !DILocation(line: 53, column: 65, scope: !4148)
!4183 = !DILocation(line: 53, column: 77, scope: !4148)
!4184 = !DILocation(line: 53, column: 75, scope: !4148)
!4185 = !DILocation(line: 53, column: 70, scope: !4148)
!4186 = !DILocation(line: 53, column: 5, scope: !4148)
!4187 = !DILocation(line: 54, column: 22, scope: !4148)
!4188 = !DILocation(line: 54, column: 35, scope: !4148)
!4189 = !DILocation(line: 54, column: 47, scope: !4148)
!4190 = !DILocation(line: 54, column: 45, scope: !4148)
!4191 = !DILocation(line: 54, column: 40, scope: !4148)
!4192 = !DILocation(line: 54, column: 60, scope: !4148)
!4193 = !DILocation(line: 54, column: 72, scope: !4148)
!4194 = !DILocation(line: 54, column: 70, scope: !4148)
!4195 = !DILocation(line: 54, column: 65, scope: !4148)
!4196 = !DILocation(line: 54, column: 5, scope: !4148)
!4197 = !DILocation(line: 55, column: 26, scope: !4148)
!4198 = !DILocation(line: 55, column: 39, scope: !4148)
!4199 = !DILocation(line: 55, column: 51, scope: !4148)
!4200 = !DILocation(line: 55, column: 49, scope: !4148)
!4201 = !DILocation(line: 55, column: 44, scope: !4148)
!4202 = !DILocation(line: 55, column: 64, scope: !4148)
!4203 = !DILocation(line: 55, column: 77, scope: !4148)
!4204 = !DILocation(line: 55, column: 75, scope: !4148)
!4205 = !DILocation(line: 55, column: 69, scope: !4148)
!4206 = !DILocation(line: 55, column: 5, scope: !4148)
!4207 = !DILocation(line: 56, column: 22, scope: !4148)
!4208 = !DILocation(line: 56, column: 35, scope: !4148)
!4209 = !DILocation(line: 56, column: 47, scope: !4148)
!4210 = !DILocation(line: 56, column: 45, scope: !4148)
!4211 = !DILocation(line: 56, column: 40, scope: !4148)
!4212 = !DILocation(line: 56, column: 60, scope: !4148)
!4213 = !DILocation(line: 56, column: 72, scope: !4148)
!4214 = !DILocation(line: 56, column: 70, scope: !4148)
!4215 = !DILocation(line: 56, column: 65, scope: !4148)
!4216 = !DILocation(line: 56, column: 5, scope: !4148)
!4217 = !DILocation(line: 57, column: 26, scope: !4148)
!4218 = !DILocation(line: 57, column: 39, scope: !4148)
!4219 = !DILocation(line: 57, column: 52, scope: !4148)
!4220 = !DILocation(line: 57, column: 50, scope: !4148)
!4221 = !DILocation(line: 57, column: 44, scope: !4148)
!4222 = !DILocation(line: 57, column: 65, scope: !4148)
!4223 = !DILocation(line: 57, column: 78, scope: !4148)
!4224 = !DILocation(line: 57, column: 76, scope: !4148)
!4225 = !DILocation(line: 57, column: 70, scope: !4148)
!4226 = !DILocation(line: 57, column: 5, scope: !4148)
!4227 = !DILocation(line: 58, column: 22, scope: !4148)
!4228 = !DILocation(line: 58, column: 35, scope: !4148)
!4229 = !DILocation(line: 58, column: 47, scope: !4148)
!4230 = !DILocation(line: 58, column: 45, scope: !4148)
!4231 = !DILocation(line: 58, column: 40, scope: !4148)
!4232 = !DILocation(line: 58, column: 60, scope: !4148)
!4233 = !DILocation(line: 58, column: 72, scope: !4148)
!4234 = !DILocation(line: 58, column: 70, scope: !4148)
!4235 = !DILocation(line: 58, column: 65, scope: !4148)
!4236 = !DILocation(line: 58, column: 5, scope: !4148)
!4237 = !DILocation(line: 59, column: 26, scope: !4148)
!4238 = !DILocation(line: 59, column: 39, scope: !4148)
!4239 = !DILocation(line: 59, column: 52, scope: !4148)
!4240 = !DILocation(line: 59, column: 50, scope: !4148)
!4241 = !DILocation(line: 59, column: 44, scope: !4148)
!4242 = !DILocation(line: 59, column: 65, scope: !4148)
!4243 = !DILocation(line: 59, column: 78, scope: !4148)
!4244 = !DILocation(line: 59, column: 76, scope: !4148)
!4245 = !DILocation(line: 59, column: 70, scope: !4148)
!4246 = !DILocation(line: 59, column: 5, scope: !4148)
!4247 = !DILocation(line: 60, column: 22, scope: !4148)
!4248 = !DILocation(line: 60, column: 35, scope: !4148)
!4249 = !DILocation(line: 60, column: 47, scope: !4148)
!4250 = !DILocation(line: 60, column: 45, scope: !4148)
!4251 = !DILocation(line: 60, column: 40, scope: !4148)
!4252 = !DILocation(line: 60, column: 60, scope: !4148)
!4253 = !DILocation(line: 60, column: 72, scope: !4148)
!4254 = !DILocation(line: 60, column: 70, scope: !4148)
!4255 = !DILocation(line: 60, column: 65, scope: !4148)
!4256 = !DILocation(line: 60, column: 5, scope: !4148)
!4257 = !DILocation(line: 61, column: 26, scope: !4148)
!4258 = !DILocation(line: 61, column: 39, scope: !4148)
!4259 = !DILocation(line: 61, column: 52, scope: !4148)
!4260 = !DILocation(line: 61, column: 50, scope: !4148)
!4261 = !DILocation(line: 61, column: 44, scope: !4148)
!4262 = !DILocation(line: 61, column: 65, scope: !4148)
!4263 = !DILocation(line: 61, column: 77, scope: !4148)
!4264 = !DILocation(line: 61, column: 75, scope: !4148)
!4265 = !DILocation(line: 61, column: 70, scope: !4148)
!4266 = !DILocation(line: 61, column: 5, scope: !4148)
!4267 = !DILocation(line: 62, column: 22, scope: !4148)
!4268 = !DILocation(line: 62, column: 35, scope: !4148)
!4269 = !DILocation(line: 62, column: 47, scope: !4148)
!4270 = !DILocation(line: 62, column: 45, scope: !4148)
!4271 = !DILocation(line: 62, column: 40, scope: !4148)
!4272 = !DILocation(line: 62, column: 60, scope: !4148)
!4273 = !DILocation(line: 62, column: 72, scope: !4148)
!4274 = !DILocation(line: 62, column: 70, scope: !4148)
!4275 = !DILocation(line: 62, column: 65, scope: !4148)
!4276 = !DILocation(line: 62, column: 5, scope: !4148)
!4277 = !DILocation(line: 63, column: 26, scope: !4148)
!4278 = !DILocation(line: 63, column: 39, scope: !4148)
!4279 = !DILocation(line: 63, column: 52, scope: !4148)
!4280 = !DILocation(line: 63, column: 50, scope: !4148)
!4281 = !DILocation(line: 63, column: 44, scope: !4148)
!4282 = !DILocation(line: 63, column: 65, scope: !4148)
!4283 = !DILocation(line: 63, column: 77, scope: !4148)
!4284 = !DILocation(line: 63, column: 75, scope: !4148)
!4285 = !DILocation(line: 63, column: 70, scope: !4148)
!4286 = !DILocation(line: 63, column: 5, scope: !4148)
!4287 = !DILocation(line: 64, column: 22, scope: !4148)
!4288 = !DILocation(line: 64, column: 35, scope: !4148)
!4289 = !DILocation(line: 64, column: 47, scope: !4148)
!4290 = !DILocation(line: 64, column: 45, scope: !4148)
!4291 = !DILocation(line: 64, column: 40, scope: !4148)
!4292 = !DILocation(line: 64, column: 60, scope: !4148)
!4293 = !DILocation(line: 64, column: 72, scope: !4148)
!4294 = !DILocation(line: 64, column: 70, scope: !4148)
!4295 = !DILocation(line: 64, column: 65, scope: !4148)
!4296 = !DILocation(line: 64, column: 5, scope: !4148)
!4297 = !DILocation(line: 65, column: 17, scope: !4148)
!4298 = !DILocation(line: 65, column: 30, scope: !4148)
!4299 = !DILocation(line: 65, column: 37, scope: !4148)
!4300 = !DILocation(line: 65, column: 35, scope: !4148)
!4301 = !DILocation(line: 65, column: 50, scope: !4148)
!4302 = !DILocation(line: 65, column: 5, scope: !4148)
!4303 = !DILocation(line: 66, column: 1, scope: !4148)
!4304 = distinct !DISubprogram(name: "m_vec_mul_add_x_inv", scope: !835, file: !835, line: 40, type: !4119, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !79, retainedNodes: !91)
!4305 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !4304, file: !835, line: 40, type: !51)
!4306 = !DILocation(line: 40, column: 38, scope: !4304)
!4307 = !DILocalVariable(name: "in", arg: 2, scope: !4304, file: !835, line: 40, type: !634)
!4308 = !DILocation(line: 40, column: 67, scope: !4304)
!4309 = !DILocalVariable(name: "acc", arg: 3, scope: !4304, file: !835, line: 40, type: !81)
!4310 = !DILocation(line: 40, column: 81, scope: !4304)
!4311 = !DILocalVariable(name: "mask_lsb", scope: !4304, file: !835, line: 41, type: !46)
!4312 = !DILocation(line: 41, column: 14, scope: !4304)
!4313 = !DILocalVariable(name: "i", scope: !4314, file: !835, line: 42, type: !51)
!4314 = distinct !DILexicalBlock(scope: !4304, file: !835, line: 42, column: 5)
!4315 = !DILocation(line: 42, column: 13, scope: !4314)
!4316 = !DILocation(line: 42, column: 9, scope: !4314)
!4317 = !DILocation(line: 42, column: 18, scope: !4318)
!4318 = distinct !DILexicalBlock(scope: !4314, file: !835, line: 42, column: 5)
!4319 = !DILocation(line: 42, column: 22, scope: !4318)
!4320 = !DILocation(line: 42, column: 20, scope: !4318)
!4321 = !DILocation(line: 42, column: 5, scope: !4314)
!4322 = !DILocalVariable(name: "t", scope: !4323, file: !835, line: 43, type: !46)
!4323 = distinct !DILexicalBlock(scope: !4318, file: !835, line: 42, column: 39)
!4324 = !DILocation(line: 43, column: 18, scope: !4323)
!4325 = !DILocation(line: 43, column: 22, scope: !4323)
!4326 = !DILocation(line: 43, column: 25, scope: !4323)
!4327 = !DILocation(line: 43, column: 30, scope: !4323)
!4328 = !DILocation(line: 43, column: 28, scope: !4323)
!4329 = !DILocation(line: 44, column: 21, scope: !4323)
!4330 = !DILocation(line: 44, column: 24, scope: !4323)
!4331 = !DILocation(line: 44, column: 29, scope: !4323)
!4332 = !DILocation(line: 44, column: 27, scope: !4323)
!4333 = !DILocation(line: 44, column: 32, scope: !4323)
!4334 = !DILocation(line: 44, column: 41, scope: !4323)
!4335 = !DILocation(line: 44, column: 43, scope: !4323)
!4336 = !DILocation(line: 44, column: 38, scope: !4323)
!4337 = !DILocation(line: 44, column: 9, scope: !4323)
!4338 = !DILocation(line: 44, column: 13, scope: !4323)
!4339 = !DILocation(line: 44, column: 16, scope: !4323)
!4340 = !DILocation(line: 45, column: 5, scope: !4323)
!4341 = !DILocation(line: 42, column: 36, scope: !4318)
!4342 = !DILocation(line: 42, column: 5, scope: !4318)
!4343 = distinct !{!4343, !4321, !4344, !167}
!4344 = !DILocation(line: 45, column: 5, scope: !4314)
!4345 = !DILocation(line: 46, column: 1, scope: !4304)
!4346 = distinct !DISubprogram(name: "m_vec_mul_add_x", scope: !835, file: !835, line: 31, type: !4119, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !79, retainedNodes: !91)
!4347 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !4346, file: !835, line: 31, type: !51)
!4348 = !DILocation(line: 31, column: 34, scope: !4346)
!4349 = !DILocalVariable(name: "in", arg: 2, scope: !4346, file: !835, line: 31, type: !634)
!4350 = !DILocation(line: 31, column: 63, scope: !4346)
!4351 = !DILocalVariable(name: "acc", arg: 3, scope: !4346, file: !835, line: 31, type: !81)
!4352 = !DILocation(line: 31, column: 77, scope: !4346)
!4353 = !DILocalVariable(name: "mask_msb", scope: !4346, file: !835, line: 32, type: !46)
!4354 = !DILocation(line: 32, column: 14, scope: !4346)
!4355 = !DILocalVariable(name: "i", scope: !4356, file: !835, line: 33, type: !51)
!4356 = distinct !DILexicalBlock(scope: !4346, file: !835, line: 33, column: 5)
!4357 = !DILocation(line: 33, column: 13, scope: !4356)
!4358 = !DILocation(line: 33, column: 9, scope: !4356)
!4359 = !DILocation(line: 33, column: 18, scope: !4360)
!4360 = distinct !DILexicalBlock(scope: !4356, file: !835, line: 33, column: 5)
!4361 = !DILocation(line: 33, column: 22, scope: !4360)
!4362 = !DILocation(line: 33, column: 20, scope: !4360)
!4363 = !DILocation(line: 33, column: 5, scope: !4356)
!4364 = !DILocalVariable(name: "t", scope: !4365, file: !835, line: 34, type: !46)
!4365 = distinct !DILexicalBlock(scope: !4360, file: !835, line: 33, column: 39)
!4366 = !DILocation(line: 34, column: 18, scope: !4365)
!4367 = !DILocation(line: 34, column: 22, scope: !4365)
!4368 = !DILocation(line: 34, column: 25, scope: !4365)
!4369 = !DILocation(line: 34, column: 30, scope: !4365)
!4370 = !DILocation(line: 34, column: 28, scope: !4365)
!4371 = !DILocation(line: 35, column: 21, scope: !4365)
!4372 = !DILocation(line: 35, column: 24, scope: !4365)
!4373 = !DILocation(line: 35, column: 29, scope: !4365)
!4374 = !DILocation(line: 35, column: 27, scope: !4365)
!4375 = !DILocation(line: 35, column: 32, scope: !4365)
!4376 = !DILocation(line: 35, column: 42, scope: !4365)
!4377 = !DILocation(line: 35, column: 44, scope: !4365)
!4378 = !DILocation(line: 35, column: 50, scope: !4365)
!4379 = !DILocation(line: 35, column: 38, scope: !4365)
!4380 = !DILocation(line: 35, column: 9, scope: !4365)
!4381 = !DILocation(line: 35, column: 13, scope: !4365)
!4382 = !DILocation(line: 35, column: 16, scope: !4365)
!4383 = !DILocation(line: 36, column: 5, scope: !4365)
!4384 = !DILocation(line: 33, column: 36, scope: !4360)
!4385 = !DILocation(line: 33, column: 5, scope: !4360)
!4386 = distinct !{!4386, !4363, !4387, !167}
!4387 = !DILocation(line: 36, column: 5, scope: !4356)
!4388 = !DILocation(line: 37, column: 1, scope: !4346)
!4389 = distinct !DISubprogram(name: "m_vec_copy", scope: !835, file: !835, line: 10, type: !4119, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !79, retainedNodes: !91)
!4390 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !4389, file: !835, line: 10, type: !51)
!4391 = !DILocation(line: 10, column: 28, scope: !4389)
!4392 = !DILocalVariable(name: "in", arg: 2, scope: !4389, file: !835, line: 10, type: !634)
!4393 = !DILocation(line: 10, column: 57, scope: !4389)
!4394 = !DILocalVariable(name: "out", arg: 3, scope: !4389, file: !835, line: 10, type: !81)
!4395 = !DILocation(line: 10, column: 71, scope: !4389)
!4396 = !DILocalVariable(name: "i", scope: !4397, file: !835, line: 11, type: !51)
!4397 = distinct !DILexicalBlock(scope: !4389, file: !835, line: 11, column: 5)
!4398 = !DILocation(line: 11, column: 14, scope: !4397)
!4399 = !DILocation(line: 11, column: 10, scope: !4397)
!4400 = !DILocation(line: 11, column: 21, scope: !4401)
!4401 = distinct !DILexicalBlock(scope: !4397, file: !835, line: 11, column: 5)
!4402 = !DILocation(line: 11, column: 25, scope: !4401)
!4403 = !DILocation(line: 11, column: 23, scope: !4401)
!4404 = !DILocation(line: 11, column: 5, scope: !4397)
!4405 = !DILocation(line: 12, column: 18, scope: !4406)
!4406 = distinct !DILexicalBlock(scope: !4401, file: !835, line: 11, column: 43)
!4407 = !DILocation(line: 12, column: 21, scope: !4406)
!4408 = !DILocation(line: 12, column: 9, scope: !4406)
!4409 = !DILocation(line: 12, column: 13, scope: !4406)
!4410 = !DILocation(line: 12, column: 16, scope: !4406)
!4411 = !DILocation(line: 13, column: 5, scope: !4406)
!4412 = !DILocation(line: 11, column: 39, scope: !4401)
!4413 = !DILocation(line: 11, column: 5, scope: !4401)
!4414 = distinct !{!4414, !4404, !4415, !167}
!4415 = !DILocation(line: 13, column: 5, scope: !4397)
!4416 = !DILocation(line: 14, column: 1, scope: !4389)
!4417 = distinct !DISubprogram(name: "m_upper", scope: !70, file: !70, line: 14, type: !4418, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !43, retainedNodes: !91)
!4418 = !DISubroutineType(types: !4419)
!4419 = !{null, !4420, !634, !81, !51}
!4420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4421, size: 32)
!4421 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4422)
!4422 = !DIDerivedType(tag: DW_TAG_typedef, name: "mayo_params_t", file: !114, line: 289, baseType: !4423)
!4423 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !114, line: 265, size: 736, elements: !4424)
!4424 = !{!4425, !4426, !4427, !4428, !4429, !4430, !4431, !4432, !4433, !4434, !4435, !4436, !4437, !4438, !4439, !4440, !4441, !4442, !4443, !4444, !4445, !4446, !4447}
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !4423, file: !114, line: 266, baseType: !51, size: 32)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !4423, file: !114, line: 267, baseType: !51, size: 32, offset: 32)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "o", scope: !4423, file: !114, line: 268, baseType: !51, size: 32, offset: 64)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !4423, file: !114, line: 269, baseType: !51, size: 32, offset: 96)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !4423, file: !114, line: 270, baseType: !51, size: 32, offset: 128)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "f_tail", scope: !4423, file: !114, line: 271, baseType: !60, size: 32, offset: 160)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "m_bytes", scope: !4423, file: !114, line: 272, baseType: !51, size: 32, offset: 192)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "O_bytes", scope: !4423, file: !114, line: 273, baseType: !51, size: 32, offset: 224)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "v_bytes", scope: !4423, file: !114, line: 274, baseType: !51, size: 32, offset: 256)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "r_bytes", scope: !4423, file: !114, line: 275, baseType: !51, size: 32, offset: 288)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "R_bytes", scope: !4423, file: !114, line: 276, baseType: !51, size: 32, offset: 320)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "P1_bytes", scope: !4423, file: !114, line: 277, baseType: !51, size: 32, offset: 352)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "P2_bytes", scope: !4423, file: !114, line: 278, baseType: !51, size: 32, offset: 384)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "P3_bytes", scope: !4423, file: !114, line: 279, baseType: !51, size: 32, offset: 416)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "csk_bytes", scope: !4423, file: !114, line: 280, baseType: !51, size: 32, offset: 448)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "cpk_bytes", scope: !4423, file: !114, line: 281, baseType: !51, size: 32, offset: 480)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "sig_bytes", scope: !4423, file: !114, line: 282, baseType: !51, size: 32, offset: 512)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "salt_bytes", scope: !4423, file: !114, line: 283, baseType: !51, size: 32, offset: 544)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "sk_seed_bytes", scope: !4423, file: !114, line: 284, baseType: !51, size: 32, offset: 576)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "digest_bytes", scope: !4423, file: !114, line: 285, baseType: !51, size: 32, offset: 608)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "pk_seed_bytes", scope: !4423, file: !114, line: 286, baseType: !51, size: 32, offset: 640)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "m_vec_limbs", scope: !4423, file: !114, line: 287, baseType: !51, size: 32, offset: 672)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4423, file: !114, line: 288, baseType: !140, size: 32, offset: 704)
!4448 = !DILocalVariable(name: "p", arg: 1, scope: !4417, file: !70, line: 14, type: !4420)
!4449 = !DILocation(line: 14, column: 35, scope: !4417)
!4450 = !DILocalVariable(name: "in", arg: 2, scope: !4417, file: !70, line: 14, type: !634)
!4451 = !DILocation(line: 14, column: 54, scope: !4417)
!4452 = !DILocalVariable(name: "out", arg: 3, scope: !4417, file: !70, line: 14, type: !81)
!4453 = !DILocation(line: 14, column: 68, scope: !4417)
!4454 = !DILocalVariable(name: "size", arg: 4, scope: !4417, file: !70, line: 14, type: !51)
!4455 = !DILocation(line: 14, column: 77, scope: !4417)
!4456 = !DILocalVariable(name: "m_vec_limbs", scope: !4417, file: !70, line: 19, type: !434)
!4457 = !DILocation(line: 19, column: 15, scope: !4417)
!4458 = !DILocation(line: 19, column: 47, scope: !4417)
!4459 = !DILocation(line: 19, column: 29, scope: !4417)
!4460 = !DILocalVariable(name: "m_vecs_stored", scope: !4417, file: !70, line: 20, type: !51)
!4461 = !DILocation(line: 20, column: 9, scope: !4417)
!4462 = !DILocalVariable(name: "r", scope: !4463, file: !70, line: 21, type: !51)
!4463 = distinct !DILexicalBlock(scope: !4417, file: !70, line: 21, column: 5)
!4464 = !DILocation(line: 21, column: 14, scope: !4463)
!4465 = !DILocation(line: 21, column: 10, scope: !4463)
!4466 = !DILocation(line: 21, column: 21, scope: !4467)
!4467 = distinct !DILexicalBlock(scope: !4463, file: !70, line: 21, column: 5)
!4468 = !DILocation(line: 21, column: 25, scope: !4467)
!4469 = !DILocation(line: 21, column: 23, scope: !4467)
!4470 = !DILocation(line: 21, column: 5, scope: !4463)
!4471 = !DILocalVariable(name: "c", scope: !4472, file: !70, line: 22, type: !51)
!4472 = distinct !DILexicalBlock(scope: !4473, file: !70, line: 22, column: 9)
!4473 = distinct !DILexicalBlock(scope: !4467, file: !70, line: 21, column: 36)
!4474 = !DILocation(line: 22, column: 18, scope: !4472)
!4475 = !DILocation(line: 22, column: 22, scope: !4472)
!4476 = !DILocation(line: 22, column: 14, scope: !4472)
!4477 = !DILocation(line: 22, column: 25, scope: !4478)
!4478 = distinct !DILexicalBlock(scope: !4472, file: !70, line: 22, column: 9)
!4479 = !DILocation(line: 22, column: 29, scope: !4478)
!4480 = !DILocation(line: 22, column: 27, scope: !4478)
!4481 = !DILocation(line: 22, column: 9, scope: !4472)
!4482 = !DILocation(line: 23, column: 24, scope: !4483)
!4483 = distinct !DILexicalBlock(scope: !4478, file: !70, line: 22, column: 40)
!4484 = !DILocation(line: 23, column: 37, scope: !4483)
!4485 = !DILocation(line: 23, column: 42, scope: !4483)
!4486 = !DILocation(line: 23, column: 57, scope: !4483)
!4487 = !DILocation(line: 23, column: 61, scope: !4483)
!4488 = !DILocation(line: 23, column: 59, scope: !4483)
!4489 = !DILocation(line: 23, column: 68, scope: !4483)
!4490 = !DILocation(line: 23, column: 66, scope: !4483)
!4491 = !DILocation(line: 23, column: 54, scope: !4483)
!4492 = !DILocation(line: 23, column: 40, scope: !4483)
!4493 = !DILocation(line: 23, column: 72, scope: !4483)
!4494 = !DILocation(line: 23, column: 78, scope: !4483)
!4495 = !DILocation(line: 23, column: 92, scope: !4483)
!4496 = !DILocation(line: 23, column: 90, scope: !4483)
!4497 = !DILocation(line: 23, column: 76, scope: !4483)
!4498 = !DILocation(line: 23, column: 13, scope: !4483)
!4499 = !DILocation(line: 24, column: 17, scope: !4500)
!4500 = distinct !DILexicalBlock(scope: !4483, file: !70, line: 24, column: 17)
!4501 = !DILocation(line: 24, column: 22, scope: !4500)
!4502 = !DILocation(line: 24, column: 19, scope: !4500)
!4503 = !DILocation(line: 25, column: 27, scope: !4504)
!4504 = distinct !DILexicalBlock(scope: !4500, file: !70, line: 24, column: 25)
!4505 = !DILocation(line: 25, column: 40, scope: !4504)
!4506 = !DILocation(line: 25, column: 45, scope: !4504)
!4507 = !DILocation(line: 25, column: 60, scope: !4504)
!4508 = !DILocation(line: 25, column: 64, scope: !4504)
!4509 = !DILocation(line: 25, column: 62, scope: !4504)
!4510 = !DILocation(line: 25, column: 71, scope: !4504)
!4511 = !DILocation(line: 25, column: 69, scope: !4504)
!4512 = !DILocation(line: 25, column: 57, scope: !4504)
!4513 = !DILocation(line: 25, column: 43, scope: !4504)
!4514 = !DILocation(line: 25, column: 75, scope: !4504)
!4515 = !DILocation(line: 25, column: 81, scope: !4504)
!4516 = !DILocation(line: 25, column: 95, scope: !4504)
!4517 = !DILocation(line: 25, column: 93, scope: !4504)
!4518 = !DILocation(line: 25, column: 79, scope: !4504)
!4519 = !DILocation(line: 25, column: 17, scope: !4504)
!4520 = !DILocation(line: 26, column: 13, scope: !4504)
!4521 = !DILocation(line: 27, column: 27, scope: !4483)
!4522 = !DILocation(line: 28, column: 9, scope: !4483)
!4523 = !DILocation(line: 22, column: 36, scope: !4478)
!4524 = !DILocation(line: 22, column: 9, scope: !4478)
!4525 = distinct !{!4525, !4481, !4526, !167}
!4526 = !DILocation(line: 28, column: 9, scope: !4472)
!4527 = !DILocation(line: 29, column: 5, scope: !4473)
!4528 = !DILocation(line: 21, column: 32, scope: !4467)
!4529 = !DILocation(line: 21, column: 5, scope: !4467)
!4530 = distinct !{!4530, !4470, !4531, !167}
!4531 = !DILocation(line: 29, column: 5, scope: !4463)
!4532 = !DILocation(line: 30, column: 1, scope: !4417)
!4533 = distinct !DISubprogram(name: "m_vec_copy", scope: !835, file: !835, line: 10, type: !4119, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !91)
!4534 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !4533, file: !835, line: 10, type: !51)
!4535 = !DILocation(line: 10, column: 28, scope: !4533)
!4536 = !DILocalVariable(name: "in", arg: 2, scope: !4533, file: !835, line: 10, type: !634)
!4537 = !DILocation(line: 10, column: 57, scope: !4533)
!4538 = !DILocalVariable(name: "out", arg: 3, scope: !4533, file: !835, line: 10, type: !81)
!4539 = !DILocation(line: 10, column: 71, scope: !4533)
!4540 = !DILocalVariable(name: "i", scope: !4541, file: !835, line: 11, type: !51)
!4541 = distinct !DILexicalBlock(scope: !4533, file: !835, line: 11, column: 5)
!4542 = !DILocation(line: 11, column: 14, scope: !4541)
!4543 = !DILocation(line: 11, column: 10, scope: !4541)
!4544 = !DILocation(line: 11, column: 21, scope: !4545)
!4545 = distinct !DILexicalBlock(scope: !4541, file: !835, line: 11, column: 5)
!4546 = !DILocation(line: 11, column: 25, scope: !4545)
!4547 = !DILocation(line: 11, column: 23, scope: !4545)
!4548 = !DILocation(line: 11, column: 5, scope: !4541)
!4549 = !DILocation(line: 12, column: 18, scope: !4550)
!4550 = distinct !DILexicalBlock(scope: !4545, file: !835, line: 11, column: 43)
!4551 = !DILocation(line: 12, column: 21, scope: !4550)
!4552 = !DILocation(line: 12, column: 9, scope: !4550)
!4553 = !DILocation(line: 12, column: 13, scope: !4550)
!4554 = !DILocation(line: 12, column: 16, scope: !4550)
!4555 = !DILocation(line: 13, column: 5, scope: !4550)
!4556 = !DILocation(line: 11, column: 39, scope: !4545)
!4557 = !DILocation(line: 11, column: 5, scope: !4545)
!4558 = distinct !{!4558, !4548, !4559, !167}
!4559 = !DILocation(line: 13, column: 5, scope: !4541)
!4560 = !DILocation(line: 14, column: 1, scope: !4533)
!4561 = distinct !DISubprogram(name: "m_vec_add", scope: !835, file: !835, line: 17, type: !4119, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !91)
!4562 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !4561, file: !835, line: 17, type: !51)
!4563 = !DILocation(line: 17, column: 27, scope: !4561)
!4564 = !DILocalVariable(name: "in", arg: 2, scope: !4561, file: !835, line: 17, type: !634)
!4565 = !DILocation(line: 17, column: 56, scope: !4561)
!4566 = !DILocalVariable(name: "acc", arg: 3, scope: !4561, file: !835, line: 17, type: !81)
!4567 = !DILocation(line: 17, column: 70, scope: !4561)
!4568 = !DILocalVariable(name: "i", scope: !4569, file: !835, line: 18, type: !51)
!4569 = distinct !DILexicalBlock(scope: !4561, file: !835, line: 18, column: 5)
!4570 = !DILocation(line: 18, column: 14, scope: !4569)
!4571 = !DILocation(line: 18, column: 10, scope: !4569)
!4572 = !DILocation(line: 18, column: 21, scope: !4573)
!4573 = distinct !DILexicalBlock(scope: !4569, file: !835, line: 18, column: 5)
!4574 = !DILocation(line: 18, column: 25, scope: !4573)
!4575 = !DILocation(line: 18, column: 23, scope: !4573)
!4576 = !DILocation(line: 18, column: 5, scope: !4569)
!4577 = !DILocation(line: 19, column: 19, scope: !4578)
!4578 = distinct !DILexicalBlock(scope: !4573, file: !835, line: 18, column: 43)
!4579 = !DILocation(line: 19, column: 22, scope: !4578)
!4580 = !DILocation(line: 19, column: 9, scope: !4578)
!4581 = !DILocation(line: 19, column: 13, scope: !4578)
!4582 = !DILocation(line: 19, column: 16, scope: !4578)
!4583 = !DILocation(line: 20, column: 5, scope: !4578)
!4584 = !DILocation(line: 18, column: 39, scope: !4573)
!4585 = !DILocation(line: 18, column: 5, scope: !4573)
!4586 = distinct !{!4586, !4576, !4587, !167}
!4587 = !DILocation(line: 20, column: 5, scope: !4569)
!4588 = !DILocation(line: 21, column: 1, scope: !4561)
!4589 = distinct !DISubprogram(name: "sample_solution", scope: !70, file: !70, line: 40, type: !4590, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !43, retainedNodes: !91)
!4590 = !DISubroutineType(types: !4591)
!4591 = !{!51, !4420, !55, !60, !60, !55, !51, !51, !51, !51}
!4592 = !DILocalVariable(name: "p", arg: 1, scope: !4589, file: !70, line: 40, type: !4420)
!4593 = !DILocation(line: 40, column: 42, scope: !4589)
!4594 = !DILocalVariable(name: "A", arg: 2, scope: !4589, file: !70, line: 40, type: !55)
!4595 = !DILocation(line: 40, column: 60, scope: !4589)
!4596 = !DILocalVariable(name: "y", arg: 3, scope: !4589, file: !70, line: 41, type: !60)
!4597 = !DILocation(line: 41, column: 49, scope: !4589)
!4598 = !DILocalVariable(name: "r", arg: 4, scope: !4589, file: !70, line: 41, type: !60)
!4599 = !DILocation(line: 41, column: 73, scope: !4589)
!4600 = !DILocalVariable(name: "x", arg: 5, scope: !4589, file: !70, line: 42, type: !55)
!4601 = !DILocation(line: 42, column: 43, scope: !4589)
!4602 = !DILocalVariable(name: "k", arg: 6, scope: !4589, file: !70, line: 42, type: !51)
!4603 = !DILocation(line: 42, column: 50, scope: !4589)
!4604 = !DILocalVariable(name: "o", arg: 7, scope: !4589, file: !70, line: 42, type: !51)
!4605 = !DILocation(line: 42, column: 57, scope: !4589)
!4606 = !DILocalVariable(name: "m", arg: 8, scope: !4589, file: !70, line: 42, type: !51)
!4607 = !DILocation(line: 42, column: 64, scope: !4589)
!4608 = !DILocalVariable(name: "A_cols", arg: 9, scope: !4589, file: !70, line: 42, type: !51)
!4609 = !DILocation(line: 42, column: 71, scope: !4589)
!4610 = !DILocalVariable(name: "finished", scope: !4589, file: !70, line: 46, type: !56)
!4611 = !DILocation(line: 46, column: 19, scope: !4589)
!4612 = !DILocalVariable(name: "col_upper_bound", scope: !4589, file: !70, line: 47, type: !51)
!4613 = !DILocation(line: 47, column: 9, scope: !4589)
!4614 = !DILocalVariable(name: "correct_column", scope: !4589, file: !70, line: 48, type: !56)
!4615 = !DILocation(line: 48, column: 19, scope: !4589)
!4616 = !DILocalVariable(name: "i", scope: !4617, file: !70, line: 51, type: !51)
!4617 = distinct !DILexicalBlock(scope: !4589, file: !70, line: 51, column: 5)
!4618 = !DILocation(line: 51, column: 14, scope: !4617)
!4619 = !DILocation(line: 51, column: 10, scope: !4617)
!4620 = !DILocation(line: 51, column: 21, scope: !4621)
!4621 = distinct !DILexicalBlock(scope: !4617, file: !70, line: 51, column: 5)
!4622 = !DILocation(line: 51, column: 25, scope: !4621)
!4623 = !DILocation(line: 51, column: 29, scope: !4621)
!4624 = !DILocation(line: 51, column: 27, scope: !4621)
!4625 = !DILocation(line: 51, column: 23, scope: !4621)
!4626 = !DILocation(line: 51, column: 5, scope: !4617)
!4627 = !DILocation(line: 52, column: 16, scope: !4628)
!4628 = distinct !DILexicalBlock(scope: !4621, file: !70, line: 51, column: 37)
!4629 = !DILocation(line: 52, column: 18, scope: !4628)
!4630 = !DILocation(line: 52, column: 9, scope: !4628)
!4631 = !DILocation(line: 52, column: 11, scope: !4628)
!4632 = !DILocation(line: 52, column: 14, scope: !4628)
!4633 = !DILocation(line: 53, column: 5, scope: !4628)
!4634 = !DILocation(line: 51, column: 33, scope: !4621)
!4635 = !DILocation(line: 51, column: 5, scope: !4621)
!4636 = distinct !{!4636, !4626, !4637, !167}
!4637 = !DILocation(line: 53, column: 5, scope: !4617)
!4638 = !DILocalVariable(name: "Ar", scope: !4589, file: !70, line: 56, type: !1347)
!4639 = !DILocation(line: 56, column: 19, scope: !4589)
!4640 = !DILocalVariable(name: "i", scope: !4641, file: !70, line: 57, type: !51)
!4641 = distinct !DILexicalBlock(scope: !4589, file: !70, line: 57, column: 5)
!4642 = !DILocation(line: 57, column: 14, scope: !4641)
!4643 = !DILocation(line: 57, column: 10, scope: !4641)
!4644 = !DILocation(line: 57, column: 21, scope: !4645)
!4645 = distinct !DILexicalBlock(scope: !4641, file: !70, line: 57, column: 5)
!4646 = !DILocation(line: 57, column: 25, scope: !4645)
!4647 = !DILocation(line: 57, column: 23, scope: !4645)
!4648 = !DILocation(line: 57, column: 5, scope: !4641)
!4649 = !DILocation(line: 58, column: 9, scope: !4650)
!4650 = distinct !DILexicalBlock(scope: !4645, file: !70, line: 57, column: 33)
!4651 = !DILocation(line: 58, column: 11, scope: !4650)
!4652 = !DILocation(line: 58, column: 15, scope: !4650)
!4653 = !DILocation(line: 58, column: 13, scope: !4650)
!4654 = !DILocation(line: 58, column: 19, scope: !4650)
!4655 = !DILocation(line: 58, column: 24, scope: !4650)
!4656 = !DILocation(line: 58, column: 28, scope: !4650)
!4657 = !DILocation(line: 58, column: 26, scope: !4650)
!4658 = !DILocation(line: 58, column: 30, scope: !4650)
!4659 = !DILocation(line: 58, column: 21, scope: !4650)
!4660 = !DILocation(line: 58, column: 17, scope: !4650)
!4661 = !DILocation(line: 58, column: 36, scope: !4650)
!4662 = !DILocation(line: 59, column: 5, scope: !4650)
!4663 = !DILocation(line: 57, column: 29, scope: !4645)
!4664 = !DILocation(line: 57, column: 5, scope: !4645)
!4665 = distinct !{!4665, !4648, !4666, !167}
!4666 = !DILocation(line: 59, column: 5, scope: !4641)
!4667 = !DILocation(line: 60, column: 13, scope: !4589)
!4668 = !DILocation(line: 60, column: 16, scope: !4589)
!4669 = !DILocation(line: 60, column: 19, scope: !4589)
!4670 = !DILocation(line: 60, column: 23, scope: !4589)
!4671 = !DILocation(line: 60, column: 27, scope: !4589)
!4672 = !DILocation(line: 60, column: 25, scope: !4589)
!4673 = !DILocation(line: 60, column: 29, scope: !4589)
!4674 = !DILocation(line: 60, column: 34, scope: !4589)
!4675 = !DILocation(line: 60, column: 5, scope: !4589)
!4676 = !DILocalVariable(name: "i", scope: !4677, file: !70, line: 63, type: !51)
!4677 = distinct !DILexicalBlock(scope: !4589, file: !70, line: 63, column: 5)
!4678 = !DILocation(line: 63, column: 14, scope: !4677)
!4679 = !DILocation(line: 63, column: 10, scope: !4677)
!4680 = !DILocation(line: 63, column: 21, scope: !4681)
!4681 = distinct !DILexicalBlock(scope: !4677, file: !70, line: 63, column: 5)
!4682 = !DILocation(line: 63, column: 25, scope: !4681)
!4683 = !DILocation(line: 63, column: 23, scope: !4681)
!4684 = !DILocation(line: 63, column: 5, scope: !4677)
!4685 = !DILocation(line: 64, column: 44, scope: !4686)
!4686 = distinct !DILexicalBlock(scope: !4681, file: !70, line: 63, column: 33)
!4687 = !DILocation(line: 64, column: 46, scope: !4686)
!4688 = !DILocation(line: 64, column: 53, scope: !4686)
!4689 = !DILocation(line: 64, column: 50, scope: !4686)
!4690 = !DILocation(line: 64, column: 38, scope: !4686)
!4691 = !DILocation(line: 64, column: 9, scope: !4686)
!4692 = !DILocation(line: 64, column: 11, scope: !4686)
!4693 = !DILocation(line: 64, column: 15, scope: !4686)
!4694 = !DILocation(line: 64, column: 13, scope: !4686)
!4695 = !DILocation(line: 64, column: 19, scope: !4686)
!4696 = !DILocation(line: 64, column: 24, scope: !4686)
!4697 = !DILocation(line: 64, column: 28, scope: !4686)
!4698 = !DILocation(line: 64, column: 26, scope: !4686)
!4699 = !DILocation(line: 64, column: 30, scope: !4686)
!4700 = !DILocation(line: 64, column: 21, scope: !4686)
!4701 = !DILocation(line: 64, column: 17, scope: !4686)
!4702 = !DILocation(line: 64, column: 36, scope: !4686)
!4703 = !DILocation(line: 65, column: 5, scope: !4686)
!4704 = !DILocation(line: 63, column: 29, scope: !4681)
!4705 = !DILocation(line: 63, column: 5, scope: !4681)
!4706 = distinct !{!4706, !4684, !4707, !167}
!4707 = !DILocation(line: 65, column: 5, scope: !4677)
!4708 = !DILocation(line: 67, column: 8, scope: !4589)
!4709 = !DILocation(line: 67, column: 11, scope: !4589)
!4710 = !DILocation(line: 67, column: 14, scope: !4589)
!4711 = !DILocation(line: 67, column: 18, scope: !4589)
!4712 = !DILocation(line: 67, column: 16, scope: !4589)
!4713 = !DILocation(line: 67, column: 20, scope: !4589)
!4714 = !DILocation(line: 67, column: 5, scope: !4589)
!4715 = !DILocalVariable(name: "full_rank", scope: !4589, file: !70, line: 70, type: !56)
!4716 = !DILocation(line: 70, column: 19, scope: !4589)
!4717 = !DILocalVariable(name: "i", scope: !4718, file: !70, line: 71, type: !51)
!4718 = distinct !DILexicalBlock(scope: !4589, file: !70, line: 71, column: 5)
!4719 = !DILocation(line: 71, column: 14, scope: !4718)
!4720 = !DILocation(line: 71, column: 10, scope: !4718)
!4721 = !DILocation(line: 71, column: 21, scope: !4722)
!4722 = distinct !DILexicalBlock(scope: !4718, file: !70, line: 71, column: 5)
!4723 = !DILocation(line: 71, column: 25, scope: !4722)
!4724 = !DILocation(line: 71, column: 32, scope: !4722)
!4725 = !DILocation(line: 71, column: 23, scope: !4722)
!4726 = !DILocation(line: 71, column: 5, scope: !4718)
!4727 = !DILocation(line: 72, column: 22, scope: !4728)
!4728 = distinct !DILexicalBlock(scope: !4722, file: !70, line: 71, column: 42)
!4729 = !DILocation(line: 72, column: 25, scope: !4728)
!4730 = !DILocation(line: 72, column: 27, scope: !4728)
!4731 = !DILocation(line: 72, column: 34, scope: !4728)
!4732 = !DILocation(line: 72, column: 32, scope: !4728)
!4733 = !DILocation(line: 72, column: 43, scope: !4728)
!4734 = !DILocation(line: 72, column: 41, scope: !4728)
!4735 = !DILocation(line: 72, column: 19, scope: !4728)
!4736 = !DILocation(line: 73, column: 5, scope: !4728)
!4737 = !DILocation(line: 71, column: 38, scope: !4722)
!4738 = !DILocation(line: 71, column: 5, scope: !4722)
!4739 = distinct !{!4739, !4726, !4740, !167}
!4740 = !DILocation(line: 73, column: 5, scope: !4718)
!4741 = !DILocation(line: 80, column: 9, scope: !4742)
!4742 = distinct !DILexicalBlock(scope: !4589, file: !70, line: 80, column: 9)
!4743 = !DILocation(line: 80, column: 19, scope: !4742)
!4744 = !DILocation(line: 81, column: 9, scope: !4745)
!4745 = distinct !DILexicalBlock(scope: !4742, file: !70, line: 80, column: 25)
!4746 = !DILocalVariable(name: "row", scope: !4747, file: !70, line: 88, type: !51)
!4747 = distinct !DILexicalBlock(scope: !4589, file: !70, line: 88, column: 5)
!4748 = !DILocation(line: 88, column: 14, scope: !4747)
!4749 = !DILocation(line: 88, column: 20, scope: !4747)
!4750 = !DILocation(line: 88, column: 22, scope: !4747)
!4751 = !DILocation(line: 88, column: 10, scope: !4747)
!4752 = !DILocation(line: 88, column: 27, scope: !4753)
!4753 = distinct !DILexicalBlock(scope: !4747, file: !70, line: 88, column: 5)
!4754 = !DILocation(line: 88, column: 31, scope: !4753)
!4755 = !DILocation(line: 88, column: 5, scope: !4747)
!4756 = !DILocation(line: 89, column: 18, scope: !4757)
!4757 = distinct !DILexicalBlock(scope: !4753, file: !70, line: 88, column: 44)
!4758 = !DILocation(line: 90, column: 36, scope: !4757)
!4759 = !DILocation(line: 90, column: 47, scope: !4757)
!4760 = !DILocation(line: 90, column: 49, scope: !4757)
!4761 = !DILocation(line: 90, column: 48, scope: !4757)
!4762 = !DILocation(line: 90, column: 45, scope: !4757)
!4763 = !DILocation(line: 90, column: 40, scope: !4757)
!4764 = !DILocation(line: 90, column: 56, scope: !4757)
!4765 = !DILocation(line: 90, column: 58, scope: !4757)
!4766 = !DILocation(line: 90, column: 57, scope: !4757)
!4767 = !DILocation(line: 90, column: 27, scope: !4757)
!4768 = !DILocation(line: 90, column: 25, scope: !4757)
!4769 = !DILocalVariable(name: "col", scope: !4770, file: !70, line: 93, type: !51)
!4770 = distinct !DILexicalBlock(scope: !4757, file: !70, line: 93, column: 9)
!4771 = !DILocation(line: 93, column: 18, scope: !4770)
!4772 = !DILocation(line: 93, column: 24, scope: !4770)
!4773 = !DILocation(line: 93, column: 14, scope: !4770)
!4774 = !DILocation(line: 93, column: 29, scope: !4775)
!4775 = distinct !DILexicalBlock(scope: !4770, file: !70, line: 93, column: 9)
!4776 = !DILocation(line: 93, column: 36, scope: !4775)
!4777 = !DILocation(line: 93, column: 33, scope: !4775)
!4778 = !DILocation(line: 93, column: 9, scope: !4770)
!4779 = !DILocation(line: 97, column: 44, scope: !4780)
!4780 = distinct !DILexicalBlock(scope: !4775, file: !70, line: 93, column: 60)
!4781 = !DILocation(line: 97, column: 46, scope: !4780)
!4782 = !DILocation(line: 97, column: 52, scope: !4780)
!4783 = !DILocation(line: 97, column: 50, scope: !4780)
!4784 = !DILocation(line: 97, column: 61, scope: !4780)
!4785 = !DILocation(line: 97, column: 59, scope: !4780)
!4786 = !DILocation(line: 97, column: 30, scope: !4780)
!4787 = !DILocation(line: 97, column: 74, scope: !4780)
!4788 = !DILocation(line: 97, column: 73, scope: !4780)
!4789 = !DILocation(line: 97, column: 71, scope: !4780)
!4790 = !DILocation(line: 97, column: 28, scope: !4780)
!4791 = !DILocalVariable(name: "u", scope: !4780, file: !70, line: 99, type: !56)
!4792 = !DILocation(line: 99, column: 27, scope: !4780)
!4793 = !DILocation(line: 99, column: 31, scope: !4780)
!4794 = !DILocation(line: 99, column: 48, scope: !4780)
!4795 = !DILocation(line: 99, column: 50, scope: !4780)
!4796 = !DILocation(line: 99, column: 56, scope: !4780)
!4797 = !DILocation(line: 99, column: 54, scope: !4780)
!4798 = !DILocation(line: 99, column: 65, scope: !4780)
!4799 = !DILocation(line: 99, column: 63, scope: !4780)
!4800 = !DILocation(line: 99, column: 72, scope: !4780)
!4801 = !DILocation(line: 99, column: 46, scope: !4780)
!4802 = !DILocation(line: 100, column: 23, scope: !4780)
!4803 = !DILocation(line: 100, column: 13, scope: !4780)
!4804 = !DILocation(line: 100, column: 15, scope: !4780)
!4805 = !DILocation(line: 100, column: 20, scope: !4780)
!4806 = !DILocalVariable(name: "i", scope: !4807, file: !70, line: 102, type: !51)
!4807 = distinct !DILexicalBlock(scope: !4780, file: !70, line: 102, column: 13)
!4808 = !DILocation(line: 102, column: 22, scope: !4807)
!4809 = !DILocation(line: 102, column: 18, scope: !4807)
!4810 = !DILocation(line: 102, column: 29, scope: !4811)
!4811 = distinct !DILexicalBlock(scope: !4807, file: !70, line: 102, column: 13)
!4812 = !DILocation(line: 102, column: 33, scope: !4811)
!4813 = !DILocation(line: 102, column: 31, scope: !4811)
!4814 = !DILocation(line: 102, column: 13, scope: !4807)
!4815 = !DILocalVariable(name: "tmp", scope: !4816, file: !70, line: 103, type: !46)
!4816 = distinct !DILexicalBlock(scope: !4811, file: !70, line: 102, column: 46)
!4817 = !DILocation(line: 103, column: 26, scope: !4816)
!4818 = !DILocation(line: 103, column: 45, scope: !4816)
!4819 = !DILocation(line: 103, column: 48, scope: !4816)
!4820 = !DILocation(line: 103, column: 55, scope: !4816)
!4821 = !DILocation(line: 103, column: 53, scope: !4816)
!4822 = !DILocation(line: 103, column: 64, scope: !4816)
!4823 = !DILocation(line: 103, column: 62, scope: !4816)
!4824 = !DILocation(line: 103, column: 34, scope: !4816)
!4825 = !DILocation(line: 103, column: 69, scope: !4816)
!4826 = !DILocation(line: 103, column: 91, scope: !4816)
!4827 = !DILocation(line: 103, column: 94, scope: !4816)
!4828 = !DILocation(line: 103, column: 95, scope: !4816)
!4829 = !DILocation(line: 103, column: 101, scope: !4816)
!4830 = !DILocation(line: 103, column: 99, scope: !4816)
!4831 = !DILocation(line: 103, column: 110, scope: !4816)
!4832 = !DILocation(line: 103, column: 108, scope: !4816)
!4833 = !DILocation(line: 103, column: 80, scope: !4816)
!4834 = !DILocation(line: 103, column: 115, scope: !4816)
!4835 = !DILocation(line: 103, column: 76, scope: !4816)
!4836 = !DILocation(line: 104, column: 45, scope: !4816)
!4837 = !DILocation(line: 104, column: 48, scope: !4816)
!4838 = !DILocation(line: 104, column: 49, scope: !4816)
!4839 = !DILocation(line: 104, column: 55, scope: !4816)
!4840 = !DILocation(line: 104, column: 53, scope: !4816)
!4841 = !DILocation(line: 104, column: 64, scope: !4816)
!4842 = !DILocation(line: 104, column: 62, scope: !4816)
!4843 = !DILocation(line: 104, column: 34, scope: !4816)
!4844 = !DILocation(line: 104, column: 69, scope: !4816)
!4845 = !DILocation(line: 104, column: 30, scope: !4816)
!4846 = !DILocation(line: 104, column: 91, scope: !4816)
!4847 = !DILocation(line: 104, column: 94, scope: !4816)
!4848 = !DILocation(line: 104, column: 95, scope: !4816)
!4849 = !DILocation(line: 104, column: 101, scope: !4816)
!4850 = !DILocation(line: 104, column: 99, scope: !4816)
!4851 = !DILocation(line: 104, column: 110, scope: !4816)
!4852 = !DILocation(line: 104, column: 108, scope: !4816)
!4853 = !DILocation(line: 104, column: 80, scope: !4816)
!4854 = !DILocation(line: 104, column: 115, scope: !4816)
!4855 = !DILocation(line: 104, column: 76, scope: !4816)
!4856 = !DILocation(line: 105, column: 45, scope: !4816)
!4857 = !DILocation(line: 105, column: 48, scope: !4816)
!4858 = !DILocation(line: 105, column: 49, scope: !4816)
!4859 = !DILocation(line: 105, column: 55, scope: !4816)
!4860 = !DILocation(line: 105, column: 53, scope: !4816)
!4861 = !DILocation(line: 105, column: 64, scope: !4816)
!4862 = !DILocation(line: 105, column: 62, scope: !4816)
!4863 = !DILocation(line: 105, column: 34, scope: !4816)
!4864 = !DILocation(line: 105, column: 69, scope: !4816)
!4865 = !DILocation(line: 105, column: 30, scope: !4816)
!4866 = !DILocation(line: 105, column: 91, scope: !4816)
!4867 = !DILocation(line: 105, column: 94, scope: !4816)
!4868 = !DILocation(line: 105, column: 95, scope: !4816)
!4869 = !DILocation(line: 105, column: 101, scope: !4816)
!4870 = !DILocation(line: 105, column: 99, scope: !4816)
!4871 = !DILocation(line: 105, column: 110, scope: !4816)
!4872 = !DILocation(line: 105, column: 108, scope: !4816)
!4873 = !DILocation(line: 105, column: 80, scope: !4816)
!4874 = !DILocation(line: 105, column: 115, scope: !4816)
!4875 = !DILocation(line: 105, column: 76, scope: !4816)
!4876 = !DILocation(line: 106, column: 45, scope: !4816)
!4877 = !DILocation(line: 106, column: 48, scope: !4816)
!4878 = !DILocation(line: 106, column: 49, scope: !4816)
!4879 = !DILocation(line: 106, column: 55, scope: !4816)
!4880 = !DILocation(line: 106, column: 53, scope: !4816)
!4881 = !DILocation(line: 106, column: 64, scope: !4816)
!4882 = !DILocation(line: 106, column: 62, scope: !4816)
!4883 = !DILocation(line: 106, column: 34, scope: !4816)
!4884 = !DILocation(line: 106, column: 69, scope: !4816)
!4885 = !DILocation(line: 106, column: 30, scope: !4816)
!4886 = !DILocation(line: 106, column: 91, scope: !4816)
!4887 = !DILocation(line: 106, column: 94, scope: !4816)
!4888 = !DILocation(line: 106, column: 95, scope: !4816)
!4889 = !DILocation(line: 106, column: 101, scope: !4816)
!4890 = !DILocation(line: 106, column: 99, scope: !4816)
!4891 = !DILocation(line: 106, column: 110, scope: !4816)
!4892 = !DILocation(line: 106, column: 108, scope: !4816)
!4893 = !DILocation(line: 106, column: 80, scope: !4816)
!4894 = !DILocation(line: 106, column: 115, scope: !4816)
!4895 = !DILocation(line: 106, column: 76, scope: !4816)
!4896 = !DILocation(line: 108, column: 31, scope: !4816)
!4897 = !DILocation(line: 108, column: 34, scope: !4816)
!4898 = !DILocation(line: 108, column: 23, scope: !4816)
!4899 = !DILocation(line: 108, column: 21, scope: !4816)
!4900 = !DILocation(line: 110, column: 52, scope: !4816)
!4901 = !DILocation(line: 110, column: 63, scope: !4816)
!4902 = !DILocation(line: 110, column: 17, scope: !4816)
!4903 = !DILocation(line: 110, column: 20, scope: !4816)
!4904 = !DILocation(line: 110, column: 27, scope: !4816)
!4905 = !DILocation(line: 110, column: 25, scope: !4816)
!4906 = !DILocation(line: 110, column: 36, scope: !4816)
!4907 = !DILocation(line: 110, column: 34, scope: !4816)
!4908 = !DILocation(line: 110, column: 43, scope: !4816)
!4909 = !DILocation(line: 110, column: 48, scope: !4816)
!4910 = !DILocation(line: 111, column: 52, scope: !4816)
!4911 = !DILocation(line: 111, column: 56, scope: !4816)
!4912 = !DILocation(line: 111, column: 63, scope: !4816)
!4913 = !DILocation(line: 111, column: 17, scope: !4816)
!4914 = !DILocation(line: 111, column: 20, scope: !4816)
!4915 = !DILocation(line: 111, column: 21, scope: !4816)
!4916 = !DILocation(line: 111, column: 27, scope: !4816)
!4917 = !DILocation(line: 111, column: 25, scope: !4816)
!4918 = !DILocation(line: 111, column: 36, scope: !4816)
!4919 = !DILocation(line: 111, column: 34, scope: !4816)
!4920 = !DILocation(line: 111, column: 43, scope: !4816)
!4921 = !DILocation(line: 111, column: 48, scope: !4816)
!4922 = !DILocation(line: 112, column: 52, scope: !4816)
!4923 = !DILocation(line: 112, column: 56, scope: !4816)
!4924 = !DILocation(line: 112, column: 63, scope: !4816)
!4925 = !DILocation(line: 112, column: 17, scope: !4816)
!4926 = !DILocation(line: 112, column: 20, scope: !4816)
!4927 = !DILocation(line: 112, column: 21, scope: !4816)
!4928 = !DILocation(line: 112, column: 27, scope: !4816)
!4929 = !DILocation(line: 112, column: 25, scope: !4816)
!4930 = !DILocation(line: 112, column: 36, scope: !4816)
!4931 = !DILocation(line: 112, column: 34, scope: !4816)
!4932 = !DILocation(line: 112, column: 43, scope: !4816)
!4933 = !DILocation(line: 112, column: 48, scope: !4816)
!4934 = !DILocation(line: 113, column: 52, scope: !4816)
!4935 = !DILocation(line: 113, column: 56, scope: !4816)
!4936 = !DILocation(line: 113, column: 63, scope: !4816)
!4937 = !DILocation(line: 113, column: 17, scope: !4816)
!4938 = !DILocation(line: 113, column: 20, scope: !4816)
!4939 = !DILocation(line: 113, column: 21, scope: !4816)
!4940 = !DILocation(line: 113, column: 27, scope: !4816)
!4941 = !DILocation(line: 113, column: 25, scope: !4816)
!4942 = !DILocation(line: 113, column: 36, scope: !4816)
!4943 = !DILocation(line: 113, column: 34, scope: !4816)
!4944 = !DILocation(line: 113, column: 43, scope: !4816)
!4945 = !DILocation(line: 113, column: 48, scope: !4816)
!4946 = !DILocation(line: 114, column: 52, scope: !4816)
!4947 = !DILocation(line: 114, column: 56, scope: !4816)
!4948 = !DILocation(line: 114, column: 63, scope: !4816)
!4949 = !DILocation(line: 114, column: 17, scope: !4816)
!4950 = !DILocation(line: 114, column: 20, scope: !4816)
!4951 = !DILocation(line: 114, column: 21, scope: !4816)
!4952 = !DILocation(line: 114, column: 27, scope: !4816)
!4953 = !DILocation(line: 114, column: 25, scope: !4816)
!4954 = !DILocation(line: 114, column: 36, scope: !4816)
!4955 = !DILocation(line: 114, column: 34, scope: !4816)
!4956 = !DILocation(line: 114, column: 43, scope: !4816)
!4957 = !DILocation(line: 114, column: 48, scope: !4816)
!4958 = !DILocation(line: 115, column: 52, scope: !4816)
!4959 = !DILocation(line: 115, column: 56, scope: !4816)
!4960 = !DILocation(line: 115, column: 63, scope: !4816)
!4961 = !DILocation(line: 115, column: 17, scope: !4816)
!4962 = !DILocation(line: 115, column: 20, scope: !4816)
!4963 = !DILocation(line: 115, column: 21, scope: !4816)
!4964 = !DILocation(line: 115, column: 27, scope: !4816)
!4965 = !DILocation(line: 115, column: 25, scope: !4816)
!4966 = !DILocation(line: 115, column: 36, scope: !4816)
!4967 = !DILocation(line: 115, column: 34, scope: !4816)
!4968 = !DILocation(line: 115, column: 43, scope: !4816)
!4969 = !DILocation(line: 115, column: 48, scope: !4816)
!4970 = !DILocation(line: 116, column: 52, scope: !4816)
!4971 = !DILocation(line: 116, column: 56, scope: !4816)
!4972 = !DILocation(line: 116, column: 63, scope: !4816)
!4973 = !DILocation(line: 116, column: 17, scope: !4816)
!4974 = !DILocation(line: 116, column: 20, scope: !4816)
!4975 = !DILocation(line: 116, column: 21, scope: !4816)
!4976 = !DILocation(line: 116, column: 27, scope: !4816)
!4977 = !DILocation(line: 116, column: 25, scope: !4816)
!4978 = !DILocation(line: 116, column: 36, scope: !4816)
!4979 = !DILocation(line: 116, column: 34, scope: !4816)
!4980 = !DILocation(line: 116, column: 43, scope: !4816)
!4981 = !DILocation(line: 116, column: 48, scope: !4816)
!4982 = !DILocation(line: 117, column: 52, scope: !4816)
!4983 = !DILocation(line: 117, column: 56, scope: !4816)
!4984 = !DILocation(line: 117, column: 63, scope: !4816)
!4985 = !DILocation(line: 117, column: 17, scope: !4816)
!4986 = !DILocation(line: 117, column: 20, scope: !4816)
!4987 = !DILocation(line: 117, column: 21, scope: !4816)
!4988 = !DILocation(line: 117, column: 27, scope: !4816)
!4989 = !DILocation(line: 117, column: 25, scope: !4816)
!4990 = !DILocation(line: 117, column: 36, scope: !4816)
!4991 = !DILocation(line: 117, column: 34, scope: !4816)
!4992 = !DILocation(line: 117, column: 43, scope: !4816)
!4993 = !DILocation(line: 117, column: 48, scope: !4816)
!4994 = !DILocation(line: 118, column: 13, scope: !4816)
!4995 = !DILocation(line: 102, column: 40, scope: !4811)
!4996 = !DILocation(line: 102, column: 13, scope: !4811)
!4997 = distinct !{!4997, !4814, !4998, !167}
!4998 = !DILocation(line: 118, column: 13, scope: !4807)
!4999 = !DILocation(line: 120, column: 24, scope: !4780)
!5000 = !DILocation(line: 120, column: 35, scope: !4780)
!5001 = !DILocation(line: 120, column: 33, scope: !4780)
!5002 = !DILocation(line: 120, column: 22, scope: !4780)
!5003 = !DILocation(line: 121, column: 9, scope: !4780)
!5004 = !DILocation(line: 93, column: 56, scope: !4775)
!5005 = !DILocation(line: 93, column: 9, scope: !4775)
!5006 = distinct !{!5006, !4778, !5007, !167}
!5007 = !DILocation(line: 121, column: 9, scope: !4770)
!5008 = !DILocation(line: 122, column: 5, scope: !4757)
!5009 = !DILocation(line: 88, column: 40, scope: !4753)
!5010 = !DILocation(line: 88, column: 5, scope: !4753)
!5011 = distinct !{!5011, !4755, !5012, !167}
!5012 = !DILocation(line: 122, column: 5, scope: !4747)
!5013 = !DILocation(line: 123, column: 5, scope: !4589)
!5014 = !DILocation(line: 124, column: 1, scope: !4589)
!5015 = distinct !DISubprogram(name: "mat_mul", scope: !870, file: !870, line: 78, type: !2711, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !91)
!5016 = !DILocalVariable(name: "a", arg: 1, scope: !5015, file: !870, line: 78, type: !60)
!5017 = !DILocation(line: 78, column: 49, scope: !5015)
!5018 = !DILocalVariable(name: "b", arg: 2, scope: !5015, file: !870, line: 78, type: !60)
!5019 = !DILocation(line: 78, column: 73, scope: !5015)
!5020 = !DILocalVariable(name: "c", arg: 3, scope: !5015, file: !870, line: 79, type: !55)
!5021 = !DILocation(line: 79, column: 36, scope: !5015)
!5022 = !DILocalVariable(name: "colrow_ab", arg: 4, scope: !5015, file: !870, line: 79, type: !51)
!5023 = !DILocation(line: 79, column: 43, scope: !5015)
!5024 = !DILocalVariable(name: "row_a", arg: 5, scope: !5015, file: !870, line: 79, type: !51)
!5025 = !DILocation(line: 79, column: 58, scope: !5015)
!5026 = !DILocalVariable(name: "col_b", arg: 6, scope: !5015, file: !870, line: 79, type: !51)
!5027 = !DILocation(line: 79, column: 69, scope: !5015)
!5028 = !DILocalVariable(name: "i", scope: !5029, file: !870, line: 80, type: !51)
!5029 = distinct !DILexicalBlock(scope: !5015, file: !870, line: 80, column: 5)
!5030 = !DILocation(line: 80, column: 14, scope: !5029)
!5031 = !DILocation(line: 80, column: 10, scope: !5029)
!5032 = !DILocation(line: 80, column: 21, scope: !5033)
!5033 = distinct !DILexicalBlock(scope: !5029, file: !870, line: 80, column: 5)
!5034 = !DILocation(line: 80, column: 25, scope: !5033)
!5035 = !DILocation(line: 80, column: 23, scope: !5033)
!5036 = !DILocation(line: 80, column: 5, scope: !5029)
!5037 = !DILocalVariable(name: "j", scope: !5038, file: !870, line: 81, type: !51)
!5038 = distinct !DILexicalBlock(scope: !5039, file: !870, line: 81, column: 9)
!5039 = distinct !DILexicalBlock(scope: !5033, file: !870, line: 80, column: 53)
!5040 = !DILocation(line: 81, column: 18, scope: !5038)
!5041 = !DILocation(line: 81, column: 14, scope: !5038)
!5042 = !DILocation(line: 81, column: 25, scope: !5043)
!5043 = distinct !DILexicalBlock(scope: !5038, file: !870, line: 81, column: 9)
!5044 = !DILocation(line: 81, column: 29, scope: !5043)
!5045 = !DILocation(line: 81, column: 27, scope: !5043)
!5046 = !DILocation(line: 81, column: 9, scope: !5038)
!5047 = !DILocation(line: 82, column: 26, scope: !5048)
!5048 = distinct !DILexicalBlock(scope: !5043, file: !870, line: 81, column: 46)
!5049 = !DILocation(line: 82, column: 29, scope: !5048)
!5050 = !DILocation(line: 82, column: 33, scope: !5048)
!5051 = !DILocation(line: 82, column: 31, scope: !5048)
!5052 = !DILocation(line: 82, column: 36, scope: !5048)
!5053 = !DILocation(line: 82, column: 47, scope: !5048)
!5054 = !DILocation(line: 82, column: 18, scope: !5048)
!5055 = !DILocation(line: 82, column: 14, scope: !5048)
!5056 = !DILocation(line: 82, column: 16, scope: !5048)
!5057 = !DILocation(line: 83, column: 9, scope: !5048)
!5058 = !DILocation(line: 81, column: 36, scope: !5043)
!5059 = !DILocation(line: 81, column: 41, scope: !5043)
!5060 = !DILocation(line: 81, column: 9, scope: !5043)
!5061 = distinct !{!5061, !5046, !5062, !167}
!5062 = !DILocation(line: 83, column: 9, scope: !5038)
!5063 = !DILocation(line: 84, column: 5, scope: !5039)
!5064 = !DILocation(line: 80, column: 32, scope: !5033)
!5065 = !DILocation(line: 80, column: 42, scope: !5033)
!5066 = !DILocation(line: 80, column: 39, scope: !5033)
!5067 = !DILocation(line: 80, column: 5, scope: !5033)
!5068 = distinct !{!5068, !5036, !5069, !167}
!5069 = !DILocation(line: 84, column: 5, scope: !5029)
!5070 = !DILocation(line: 85, column: 1, scope: !5015)
!5071 = distinct !DISubprogram(name: "sub_f", scope: !870, file: !870, line: 47, type: !2880, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !91)
!5072 = !DILocalVariable(name: "a", arg: 1, scope: !5071, file: !870, line: 47, type: !56)
!5073 = !DILocation(line: 47, column: 49, scope: !5071)
!5074 = !DILocalVariable(name: "b", arg: 2, scope: !5071, file: !870, line: 47, type: !56)
!5075 = !DILocation(line: 47, column: 66, scope: !5071)
!5076 = !DILocation(line: 48, column: 12, scope: !5071)
!5077 = !DILocation(line: 48, column: 16, scope: !5071)
!5078 = !DILocation(line: 48, column: 14, scope: !5071)
!5079 = !DILocation(line: 48, column: 5, scope: !5071)
!5080 = distinct !DISubprogram(name: "EF", scope: !5081, file: !5081, line: 60, type: !5082, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !91)
!5081 = !DIFile(filename: "../../../src/generic/echelon_form.h", directory: "")
!5082 = !DISubroutineType(types: !5083)
!5083 = !{null, !55, !51, !51}
!5084 = !DILocalVariable(name: "A", arg: 1, scope: !5080, file: !5081, line: 60, type: !55)
!5085 = !DILocation(line: 60, column: 38, scope: !5080)
!5086 = !DILocalVariable(name: "nrows", arg: 2, scope: !5080, file: !5081, line: 60, type: !51)
!5087 = !DILocation(line: 60, column: 45, scope: !5080)
!5088 = !DILocalVariable(name: "ncols", arg: 3, scope: !5080, file: !5081, line: 60, type: !51)
!5089 = !DILocation(line: 60, column: 56, scope: !5080)
!5090 = !DILocalVariable(name: "_pivot_row", scope: !5080, file: !5081, line: 62, type: !5091, align: 256)
!5091 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 832, elements: !5092)
!5092 = !{!5093}
!5093 = !DISubrange(count: 13)
!5094 = !DILocation(line: 62, column: 27, scope: !5080)
!5095 = !DILocalVariable(name: "_pivot_row2", scope: !5080, file: !5081, line: 63, type: !5091, align: 256)
!5096 = !DILocation(line: 63, column: 27, scope: !5080)
!5097 = !DILocalVariable(name: "packed_A", scope: !5080, file: !5081, line: 64, type: !5098, align: 256)
!5098 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 118144, elements: !5099)
!5099 = !{!5100}
!5100 = !DISubrange(count: 1846)
!5101 = !DILocation(line: 64, column: 27, scope: !5080)
!5102 = !DILocalVariable(name: "row_len", scope: !5080, file: !5081, line: 66, type: !51)
!5103 = !DILocation(line: 66, column: 9, scope: !5080)
!5104 = !DILocation(line: 66, column: 20, scope: !5080)
!5105 = !DILocation(line: 66, column: 26, scope: !5080)
!5106 = !DILocation(line: 66, column: 32, scope: !5080)
!5107 = !DILocalVariable(name: "i", scope: !5108, file: !5081, line: 69, type: !51)
!5108 = distinct !DILexicalBlock(scope: !5080, file: !5081, line: 69, column: 5)
!5109 = !DILocation(line: 69, column: 14, scope: !5108)
!5110 = !DILocation(line: 69, column: 10, scope: !5108)
!5111 = !DILocation(line: 69, column: 21, scope: !5112)
!5112 = distinct !DILexicalBlock(scope: !5108, file: !5081, line: 69, column: 5)
!5113 = !DILocation(line: 69, column: 25, scope: !5112)
!5114 = !DILocation(line: 69, column: 23, scope: !5112)
!5115 = !DILocation(line: 69, column: 5, scope: !5108)
!5116 = !DILocation(line: 70, column: 23, scope: !5117)
!5117 = distinct !DILexicalBlock(scope: !5112, file: !5081, line: 69, column: 37)
!5118 = !DILocation(line: 70, column: 27, scope: !5117)
!5119 = !DILocation(line: 70, column: 31, scope: !5117)
!5120 = !DILocation(line: 70, column: 29, scope: !5117)
!5121 = !DILocation(line: 70, column: 25, scope: !5117)
!5122 = !DILocation(line: 70, column: 38, scope: !5117)
!5123 = !DILocation(line: 70, column: 49, scope: !5117)
!5124 = !DILocation(line: 70, column: 53, scope: !5117)
!5125 = !DILocation(line: 70, column: 51, scope: !5117)
!5126 = !DILocation(line: 70, column: 47, scope: !5117)
!5127 = !DILocation(line: 70, column: 62, scope: !5117)
!5128 = !DILocation(line: 70, column: 9, scope: !5117)
!5129 = !DILocation(line: 71, column: 5, scope: !5117)
!5130 = !DILocation(line: 69, column: 33, scope: !5112)
!5131 = !DILocation(line: 69, column: 5, scope: !5112)
!5132 = distinct !{!5132, !5115, !5133, !167}
!5133 = !DILocation(line: 71, column: 5, scope: !5108)
!5134 = !DILocalVariable(name: "inverse", scope: !5080, file: !5081, line: 75, type: !56)
!5135 = !DILocation(line: 75, column: 19, scope: !5080)
!5136 = !DILocalVariable(name: "pivot_row", scope: !5080, file: !5081, line: 76, type: !51)
!5137 = !DILocation(line: 76, column: 9, scope: !5080)
!5138 = !DILocalVariable(name: "pivot_col", scope: !5139, file: !5081, line: 77, type: !51)
!5139 = distinct !DILexicalBlock(scope: !5080, file: !5081, line: 77, column: 5)
!5140 = !DILocation(line: 77, column: 14, scope: !5139)
!5141 = !DILocation(line: 77, column: 10, scope: !5139)
!5142 = !DILocation(line: 77, column: 29, scope: !5143)
!5143 = distinct !DILexicalBlock(scope: !5139, file: !5081, line: 77, column: 5)
!5144 = !DILocation(line: 77, column: 41, scope: !5143)
!5145 = !DILocation(line: 77, column: 39, scope: !5143)
!5146 = !DILocation(line: 77, column: 5, scope: !5139)
!5147 = !DILocalVariable(name: "pivot_row_lower_bound", scope: !5148, file: !5081, line: 79, type: !51)
!5148 = distinct !DILexicalBlock(scope: !5143, file: !5081, line: 77, column: 61)
!5149 = !DILocation(line: 79, column: 13, scope: !5148)
!5150 = !DILocation(line: 79, column: 49, scope: !5148)
!5151 = !DILocation(line: 79, column: 61, scope: !5148)
!5152 = !DILocation(line: 79, column: 59, scope: !5148)
!5153 = !DILocation(line: 79, column: 69, scope: !5148)
!5154 = !DILocation(line: 79, column: 67, scope: !5148)
!5155 = !DILocation(line: 79, column: 37, scope: !5148)
!5156 = !DILocalVariable(name: "pivot_row_upper_bound", scope: !5148, file: !5081, line: 80, type: !51)
!5157 = !DILocation(line: 80, column: 13, scope: !5148)
!5158 = !DILocation(line: 80, column: 46, scope: !5148)
!5159 = !DILocation(line: 80, column: 52, scope: !5148)
!5160 = !DILocation(line: 80, column: 57, scope: !5148)
!5161 = !DILocation(line: 80, column: 37, scope: !5148)
!5162 = !DILocalVariable(name: "i", scope: !5163, file: !5081, line: 85, type: !51)
!5163 = distinct !DILexicalBlock(scope: !5148, file: !5081, line: 85, column: 9)
!5164 = !DILocation(line: 85, column: 18, scope: !5163)
!5165 = !DILocation(line: 85, column: 14, scope: !5163)
!5166 = !DILocation(line: 85, column: 25, scope: !5167)
!5167 = distinct !DILexicalBlock(scope: !5163, file: !5081, line: 85, column: 9)
!5168 = !DILocation(line: 85, column: 29, scope: !5167)
!5169 = !DILocation(line: 85, column: 27, scope: !5167)
!5170 = !DILocation(line: 85, column: 9, scope: !5163)
!5171 = !DILocation(line: 86, column: 24, scope: !5172)
!5172 = distinct !DILexicalBlock(scope: !5167, file: !5081, line: 85, column: 43)
!5173 = !DILocation(line: 86, column: 13, scope: !5172)
!5174 = !DILocation(line: 86, column: 27, scope: !5172)
!5175 = !DILocation(line: 87, column: 25, scope: !5172)
!5176 = !DILocation(line: 87, column: 13, scope: !5172)
!5177 = !DILocation(line: 87, column: 28, scope: !5172)
!5178 = !DILocation(line: 88, column: 9, scope: !5172)
!5179 = !DILocation(line: 85, column: 39, scope: !5167)
!5180 = !DILocation(line: 85, column: 9, scope: !5167)
!5181 = distinct !{!5181, !5170, !5182, !167}
!5182 = !DILocation(line: 88, column: 9, scope: !5163)
!5183 = !DILocalVariable(name: "pivot", scope: !5148, file: !5081, line: 91, type: !56)
!5184 = !DILocation(line: 91, column: 23, scope: !5148)
!5185 = !DILocalVariable(name: "pivot_is_zero", scope: !5148, file: !5081, line: 92, type: !46)
!5186 = !DILocation(line: 92, column: 18, scope: !5148)
!5187 = !DILocalVariable(name: "row", scope: !5188, file: !5081, line: 93, type: !51)
!5188 = distinct !DILexicalBlock(scope: !5148, file: !5081, line: 93, column: 9)
!5189 = !DILocation(line: 93, column: 18, scope: !5188)
!5190 = !DILocation(line: 93, column: 24, scope: !5188)
!5191 = !DILocation(line: 93, column: 14, scope: !5188)
!5192 = !DILocation(line: 94, column: 17, scope: !5193)
!5193 = distinct !DILexicalBlock(scope: !5188, file: !5081, line: 93, column: 9)
!5194 = !DILocation(line: 94, column: 33, scope: !5193)
!5195 = !DILocation(line: 94, column: 39, scope: !5193)
!5196 = !DILocation(line: 94, column: 44, scope: !5193)
!5197 = !DILocation(line: 94, column: 66, scope: !5193)
!5198 = !DILocation(line: 94, column: 24, scope: !5193)
!5199 = !DILocation(line: 94, column: 21, scope: !5193)
!5200 = !DILocation(line: 93, column: 9, scope: !5188)
!5201 = !DILocalVariable(name: "is_pivot_row", scope: !5202, file: !5081, line: 96, type: !46)
!5202 = distinct !DILexicalBlock(scope: !5193, file: !5081, line: 94, column: 80)
!5203 = !DILocation(line: 96, column: 22, scope: !5202)
!5204 = !DILocation(line: 96, column: 52, scope: !5202)
!5205 = !DILocation(line: 96, column: 57, scope: !5202)
!5206 = !DILocation(line: 96, column: 38, scope: !5202)
!5207 = !DILocation(line: 96, column: 37, scope: !5202)
!5208 = !DILocalVariable(name: "below_pivot_row", scope: !5202, file: !5081, line: 97, type: !46)
!5209 = !DILocation(line: 97, column: 22, scope: !5202)
!5210 = !DILocation(line: 97, column: 62, scope: !5202)
!5211 = !DILocation(line: 97, column: 67, scope: !5202)
!5212 = !DILocation(line: 97, column: 40, scope: !5202)
!5213 = !DILocalVariable(name: "j", scope: !5214, file: !5081, line: 99, type: !51)
!5214 = distinct !DILexicalBlock(scope: !5202, file: !5081, line: 99, column: 13)
!5215 = !DILocation(line: 99, column: 22, scope: !5214)
!5216 = !DILocation(line: 99, column: 18, scope: !5214)
!5217 = !DILocation(line: 99, column: 29, scope: !5218)
!5218 = distinct !DILexicalBlock(scope: !5214, file: !5081, line: 99, column: 13)
!5219 = !DILocation(line: 99, column: 33, scope: !5218)
!5220 = !DILocation(line: 99, column: 31, scope: !5218)
!5221 = !DILocation(line: 99, column: 13, scope: !5214)
!5222 = !DILocation(line: 100, column: 35, scope: !5223)
!5223 = distinct !DILexicalBlock(scope: !5218, file: !5081, line: 99, column: 47)
!5224 = !DILocation(line: 100, column: 51, scope: !5223)
!5225 = !DILocation(line: 100, column: 69, scope: !5223)
!5226 = !DILocation(line: 100, column: 67, scope: !5223)
!5227 = !DILocation(line: 100, column: 48, scope: !5223)
!5228 = !DILocation(line: 101, column: 43, scope: !5223)
!5229 = !DILocation(line: 101, column: 49, scope: !5223)
!5230 = !DILocation(line: 101, column: 47, scope: !5223)
!5231 = !DILocation(line: 101, column: 59, scope: !5223)
!5232 = !DILocation(line: 101, column: 57, scope: !5223)
!5233 = !DILocation(line: 101, column: 34, scope: !5223)
!5234 = !DILocation(line: 100, column: 85, scope: !5223)
!5235 = !DILocation(line: 100, column: 28, scope: !5223)
!5236 = !DILocation(line: 100, column: 17, scope: !5223)
!5237 = !DILocation(line: 100, column: 31, scope: !5223)
!5238 = !DILocation(line: 102, column: 13, scope: !5223)
!5239 = !DILocation(line: 99, column: 43, scope: !5218)
!5240 = !DILocation(line: 99, column: 13, scope: !5218)
!5241 = distinct !{!5241, !5221, !5242, !167}
!5242 = !DILocation(line: 102, column: 13, scope: !5214)
!5243 = !DILocation(line: 103, column: 39, scope: !5202)
!5244 = !DILocation(line: 103, column: 51, scope: !5202)
!5245 = !DILocation(line: 103, column: 21, scope: !5202)
!5246 = !DILocation(line: 103, column: 19, scope: !5202)
!5247 = !DILocation(line: 104, column: 50, scope: !5202)
!5248 = !DILocation(line: 104, column: 44, scope: !5202)
!5249 = !DILocation(line: 104, column: 30, scope: !5202)
!5250 = !DILocation(line: 104, column: 29, scope: !5202)
!5251 = !DILocation(line: 104, column: 27, scope: !5202)
!5252 = !DILocation(line: 105, column: 9, scope: !5202)
!5253 = !DILocation(line: 94, column: 76, scope: !5193)
!5254 = !DILocation(line: 93, column: 9, scope: !5193)
!5255 = distinct !{!5255, !5200, !5256, !167}
!5256 = !DILocation(line: 105, column: 9, scope: !5188)
!5257 = !DILocation(line: 108, column: 29, scope: !5148)
!5258 = !DILocation(line: 108, column: 19, scope: !5148)
!5259 = !DILocation(line: 108, column: 17, scope: !5148)
!5260 = !DILocation(line: 109, column: 25, scope: !5148)
!5261 = !DILocation(line: 109, column: 34, scope: !5148)
!5262 = !DILocation(line: 109, column: 46, scope: !5148)
!5263 = !DILocation(line: 109, column: 55, scope: !5148)
!5264 = !DILocation(line: 109, column: 9, scope: !5148)
!5265 = !DILocalVariable(name: "row", scope: !5266, file: !5081, line: 113, type: !51)
!5266 = distinct !DILexicalBlock(scope: !5148, file: !5081, line: 113, column: 9)
!5267 = !DILocation(line: 113, column: 18, scope: !5266)
!5268 = !DILocation(line: 113, column: 24, scope: !5266)
!5269 = !DILocation(line: 113, column: 14, scope: !5266)
!5270 = !DILocation(line: 113, column: 47, scope: !5271)
!5271 = distinct !DILexicalBlock(scope: !5266, file: !5081, line: 113, column: 9)
!5272 = !DILocation(line: 113, column: 54, scope: !5271)
!5273 = !DILocation(line: 113, column: 51, scope: !5271)
!5274 = !DILocation(line: 113, column: 9, scope: !5266)
!5275 = !DILocalVariable(name: "do_copy", scope: !5276, file: !5081, line: 114, type: !46)
!5276 = distinct !DILexicalBlock(scope: !5271, file: !5081, line: 113, column: 84)
!5277 = !DILocation(line: 114, column: 22, scope: !5276)
!5278 = !DILocation(line: 114, column: 47, scope: !5276)
!5279 = !DILocation(line: 114, column: 52, scope: !5276)
!5280 = !DILocation(line: 114, column: 33, scope: !5276)
!5281 = !DILocation(line: 114, column: 32, scope: !5276)
!5282 = !DILocation(line: 114, column: 66, scope: !5276)
!5283 = !DILocation(line: 114, column: 65, scope: !5276)
!5284 = !DILocation(line: 114, column: 63, scope: !5276)
!5285 = !DILocalVariable(name: "do_not_copy", scope: !5276, file: !5081, line: 115, type: !46)
!5286 = !DILocation(line: 115, column: 22, scope: !5276)
!5287 = !DILocation(line: 115, column: 37, scope: !5276)
!5288 = !DILocation(line: 115, column: 36, scope: !5276)
!5289 = !DILocalVariable(name: "col", scope: !5290, file: !5081, line: 116, type: !51)
!5290 = distinct !DILexicalBlock(scope: !5276, file: !5081, line: 116, column: 13)
!5291 = !DILocation(line: 116, column: 22, scope: !5290)
!5292 = !DILocation(line: 116, column: 18, scope: !5290)
!5293 = !DILocation(line: 116, column: 31, scope: !5294)
!5294 = distinct !DILexicalBlock(scope: !5290, file: !5081, line: 116, column: 13)
!5295 = !DILocation(line: 116, column: 37, scope: !5294)
!5296 = !DILocation(line: 116, column: 35, scope: !5294)
!5297 = !DILocation(line: 116, column: 13, scope: !5290)
!5298 = !DILocation(line: 118, column: 22, scope: !5299)
!5299 = distinct !DILexicalBlock(scope: !5294, file: !5081, line: 116, column: 53)
!5300 = !DILocation(line: 118, column: 45, scope: !5299)
!5301 = !DILocation(line: 118, column: 51, scope: !5299)
!5302 = !DILocation(line: 118, column: 49, scope: !5299)
!5303 = !DILocation(line: 118, column: 61, scope: !5299)
!5304 = !DILocation(line: 118, column: 59, scope: !5299)
!5305 = !DILocation(line: 118, column: 36, scope: !5299)
!5306 = !DILocation(line: 118, column: 34, scope: !5299)
!5307 = !DILocation(line: 119, column: 22, scope: !5299)
!5308 = !DILocation(line: 119, column: 44, scope: !5299)
!5309 = !DILocation(line: 119, column: 32, scope: !5299)
!5310 = !DILocation(line: 119, column: 30, scope: !5299)
!5311 = !DILocation(line: 118, column: 67, scope: !5299)
!5312 = !DILocation(line: 117, column: 26, scope: !5299)
!5313 = !DILocation(line: 117, column: 32, scope: !5299)
!5314 = !DILocation(line: 117, column: 30, scope: !5299)
!5315 = !DILocation(line: 117, column: 42, scope: !5299)
!5316 = !DILocation(line: 117, column: 40, scope: !5299)
!5317 = !DILocation(line: 117, column: 17, scope: !5299)
!5318 = !DILocation(line: 117, column: 47, scope: !5299)
!5319 = !DILocation(line: 120, column: 13, scope: !5299)
!5320 = !DILocation(line: 116, column: 49, scope: !5294)
!5321 = !DILocation(line: 116, column: 13, scope: !5294)
!5322 = distinct !{!5322, !5297, !5323, !167}
!5323 = !DILocation(line: 120, column: 13, scope: !5290)
!5324 = !DILocation(line: 121, column: 9, scope: !5276)
!5325 = !DILocation(line: 113, column: 80, scope: !5271)
!5326 = !DILocation(line: 113, column: 9, scope: !5271)
!5327 = distinct !{!5327, !5274, !5328, !167}
!5328 = !DILocation(line: 121, column: 9, scope: !5266)
!5329 = !DILocalVariable(name: "row", scope: !5330, file: !5081, line: 124, type: !51)
!5330 = distinct !DILexicalBlock(scope: !5148, file: !5081, line: 124, column: 9)
!5331 = !DILocation(line: 124, column: 18, scope: !5330)
!5332 = !DILocation(line: 124, column: 24, scope: !5330)
!5333 = !DILocation(line: 124, column: 14, scope: !5330)
!5334 = !DILocation(line: 124, column: 47, scope: !5335)
!5335 = distinct !DILexicalBlock(scope: !5330, file: !5081, line: 124, column: 9)
!5336 = !DILocation(line: 124, column: 53, scope: !5335)
!5337 = !DILocation(line: 124, column: 51, scope: !5335)
!5338 = !DILocation(line: 124, column: 9, scope: !5330)
!5339 = !DILocalVariable(name: "below_pivot", scope: !5340, file: !5081, line: 125, type: !56)
!5340 = distinct !DILexicalBlock(scope: !5335, file: !5081, line: 124, column: 67)
!5341 = !DILocation(line: 125, column: 27, scope: !5340)
!5342 = !DILocation(line: 125, column: 42, scope: !5340)
!5343 = !DILocation(line: 125, column: 48, scope: !5340)
!5344 = !DILocation(line: 125, column: 46, scope: !5340)
!5345 = !DILocation(line: 125, column: 41, scope: !5340)
!5346 = !DILocalVariable(name: "elt_to_elim", scope: !5340, file: !5081, line: 126, type: !56)
!5347 = !DILocation(line: 126, column: 27, scope: !5340)
!5348 = !DILocation(line: 126, column: 59, scope: !5340)
!5349 = !DILocation(line: 126, column: 70, scope: !5340)
!5350 = !DILocation(line: 126, column: 76, scope: !5340)
!5351 = !DILocation(line: 126, column: 74, scope: !5340)
!5352 = !DILocation(line: 126, column: 68, scope: !5340)
!5353 = !DILocation(line: 126, column: 85, scope: !5340)
!5354 = !DILocation(line: 126, column: 41, scope: !5340)
!5355 = !DILocation(line: 128, column: 29, scope: !5340)
!5356 = !DILocation(line: 128, column: 38, scope: !5340)
!5357 = !DILocation(line: 128, column: 51, scope: !5340)
!5358 = !DILocation(line: 128, column: 65, scope: !5340)
!5359 = !DILocation(line: 128, column: 63, scope: !5340)
!5360 = !DILocation(line: 129, column: 37, scope: !5340)
!5361 = !DILocation(line: 129, column: 48, scope: !5340)
!5362 = !DILocation(line: 129, column: 54, scope: !5340)
!5363 = !DILocation(line: 129, column: 52, scope: !5340)
!5364 = !DILocation(line: 129, column: 46, scope: !5340)
!5365 = !DILocation(line: 128, column: 13, scope: !5340)
!5366 = !DILocation(line: 130, column: 9, scope: !5340)
!5367 = !DILocation(line: 124, column: 63, scope: !5335)
!5368 = !DILocation(line: 124, column: 9, scope: !5335)
!5369 = distinct !{!5369, !5338, !5370, !167}
!5370 = !DILocation(line: 130, column: 9, scope: !5330)
!5371 = !DILocation(line: 132, column: 35, scope: !5148)
!5372 = !DILocation(line: 132, column: 34, scope: !5148)
!5373 = !DILocation(line: 132, column: 23, scope: !5148)
!5374 = !DILocation(line: 132, column: 19, scope: !5148)
!5375 = !DILocation(line: 133, column: 5, scope: !5148)
!5376 = !DILocation(line: 77, column: 57, scope: !5143)
!5377 = !DILocation(line: 77, column: 5, scope: !5143)
!5378 = distinct !{!5378, !5146, !5379, !167}
!5379 = !DILocation(line: 133, column: 5, scope: !5139)
!5380 = !DILocalVariable(name: "temp", scope: !5080, file: !5081, line: 135, type: !5381)
!5381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 1760, elements: !5382)
!5382 = !{!5383}
!5383 = !DISubrange(count: 220)
!5384 = !DILocation(line: 135, column: 19, scope: !5080)
!5385 = !DILocalVariable(name: "i", scope: !5386, file: !5081, line: 138, type: !51)
!5386 = distinct !DILexicalBlock(scope: !5080, file: !5081, line: 138, column: 5)
!5387 = !DILocation(line: 138, column: 14, scope: !5386)
!5388 = !DILocation(line: 138, column: 10, scope: !5386)
!5389 = !DILocation(line: 138, column: 21, scope: !5390)
!5390 = distinct !DILexicalBlock(scope: !5386, file: !5081, line: 138, column: 5)
!5391 = !DILocation(line: 138, column: 25, scope: !5390)
!5392 = !DILocation(line: 138, column: 23, scope: !5390)
!5393 = !DILocation(line: 138, column: 5, scope: !5386)
!5394 = !DILocation(line: 139, column: 25, scope: !5395)
!5395 = distinct !DILexicalBlock(scope: !5390, file: !5081, line: 138, column: 37)
!5396 = !DILocation(line: 139, column: 34, scope: !5395)
!5397 = !DILocation(line: 139, column: 45, scope: !5395)
!5398 = !DILocation(line: 139, column: 49, scope: !5395)
!5399 = !DILocation(line: 139, column: 47, scope: !5395)
!5400 = !DILocation(line: 139, column: 43, scope: !5395)
!5401 = !DILocation(line: 139, column: 58, scope: !5395)
!5402 = !DILocation(line: 139, column: 9, scope: !5395)
!5403 = !DILocalVariable(name: "j", scope: !5404, file: !5081, line: 140, type: !51)
!5404 = distinct !DILexicalBlock(scope: !5395, file: !5081, line: 140, column: 9)
!5405 = !DILocation(line: 140, column: 18, scope: !5404)
!5406 = !DILocation(line: 140, column: 14, scope: !5404)
!5407 = !DILocation(line: 140, column: 25, scope: !5408)
!5408 = distinct !DILexicalBlock(scope: !5404, file: !5081, line: 140, column: 9)
!5409 = !DILocation(line: 140, column: 29, scope: !5408)
!5410 = !DILocation(line: 140, column: 27, scope: !5408)
!5411 = !DILocation(line: 140, column: 9, scope: !5404)
!5412 = !DILocation(line: 141, column: 37, scope: !5413)
!5413 = distinct !DILexicalBlock(scope: !5408, file: !5081, line: 140, column: 41)
!5414 = !DILocation(line: 141, column: 32, scope: !5413)
!5415 = !DILocation(line: 141, column: 13, scope: !5413)
!5416 = !DILocation(line: 141, column: 15, scope: !5413)
!5417 = !DILocation(line: 141, column: 19, scope: !5413)
!5418 = !DILocation(line: 141, column: 17, scope: !5413)
!5419 = !DILocation(line: 141, column: 27, scope: !5413)
!5420 = !DILocation(line: 141, column: 25, scope: !5413)
!5421 = !DILocation(line: 141, column: 30, scope: !5413)
!5422 = !DILocation(line: 142, column: 9, scope: !5413)
!5423 = !DILocation(line: 140, column: 37, scope: !5408)
!5424 = !DILocation(line: 140, column: 9, scope: !5408)
!5425 = distinct !{!5425, !5411, !5426, !167}
!5426 = !DILocation(line: 142, column: 9, scope: !5404)
!5427 = !DILocation(line: 143, column: 5, scope: !5395)
!5428 = !DILocation(line: 138, column: 33, scope: !5390)
!5429 = !DILocation(line: 138, column: 5, scope: !5390)
!5430 = distinct !{!5430, !5393, !5431, !167}
!5431 = !DILocation(line: 143, column: 5, scope: !5386)
!5432 = !DILocation(line: 145, column: 23, scope: !5080)
!5433 = !DILocation(line: 145, column: 5, scope: !5080)
!5434 = !DILocation(line: 146, column: 23, scope: !5080)
!5435 = !DILocation(line: 146, column: 5, scope: !5080)
!5436 = !DILocation(line: 147, column: 23, scope: !5080)
!5437 = !DILocation(line: 147, column: 5, scope: !5080)
!5438 = !DILocation(line: 148, column: 23, scope: !5080)
!5439 = !DILocation(line: 148, column: 5, scope: !5080)
!5440 = !DILocation(line: 149, column: 1, scope: !5080)
!5441 = distinct !DISubprogram(name: "ct_compare_8", scope: !5442, file: !5442, line: 51, type: !2880, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !91)
!5442 = !DIFile(filename: "../../../src/arithmetic.h", directory: "")
!5443 = !DILocalVariable(name: "a", arg: 1, scope: !5441, file: !5442, line: 51, type: !56)
!5444 = !DILocation(line: 51, column: 56, scope: !5441)
!5445 = !DILocalVariable(name: "b", arg: 2, scope: !5441, file: !5442, line: 51, type: !56)
!5446 = !DILocation(line: 51, column: 73, scope: !5441)
!5447 = !DILocation(line: 52, column: 34, scope: !5441)
!5448 = !DILocation(line: 52, column: 38, scope: !5441)
!5449 = !DILocation(line: 52, column: 36, scope: !5441)
!5450 = !DILocation(line: 52, column: 23, scope: !5441)
!5451 = !DILocation(line: 52, column: 42, scope: !5441)
!5452 = !DILocation(line: 52, column: 13, scope: !5441)
!5453 = !DILocation(line: 52, column: 71, scope: !5441)
!5454 = !DILocation(line: 52, column: 69, scope: !5441)
!5455 = !DILocation(line: 52, column: 12, scope: !5441)
!5456 = !DILocation(line: 52, column: 5, scope: !5441)
!5457 = distinct !DISubprogram(name: "mul_fx8", scope: !870, file: !870, line: 27, type: !5458, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !91)
!5458 = !DISubroutineType(types: !5459)
!5459 = !{!46, !56, !46}
!5460 = !DILocalVariable(name: "a", arg: 1, scope: !5457, file: !870, line: 27, type: !56)
!5461 = !DILocation(line: 27, column: 46, scope: !5457)
!5462 = !DILocalVariable(name: "b", arg: 2, scope: !5457, file: !870, line: 27, type: !46)
!5463 = !DILocation(line: 27, column: 58, scope: !5457)
!5464 = !DILocalVariable(name: "p", scope: !5457, file: !870, line: 29, type: !46)
!5465 = !DILocation(line: 29, column: 14, scope: !5457)
!5466 = !DILocation(line: 30, column: 11, scope: !5457)
!5467 = !DILocation(line: 30, column: 13, scope: !5457)
!5468 = !DILocation(line: 30, column: 10, scope: !5457)
!5469 = !DILocation(line: 30, column: 18, scope: !5457)
!5470 = !DILocation(line: 30, column: 17, scope: !5457)
!5471 = !DILocation(line: 30, column: 8, scope: !5457)
!5472 = !DILocation(line: 31, column: 11, scope: !5457)
!5473 = !DILocation(line: 31, column: 13, scope: !5457)
!5474 = !DILocation(line: 31, column: 10, scope: !5457)
!5475 = !DILocation(line: 31, column: 18, scope: !5457)
!5476 = !DILocation(line: 31, column: 17, scope: !5457)
!5477 = !DILocation(line: 31, column: 7, scope: !5457)
!5478 = !DILocation(line: 32, column: 11, scope: !5457)
!5479 = !DILocation(line: 32, column: 13, scope: !5457)
!5480 = !DILocation(line: 32, column: 10, scope: !5457)
!5481 = !DILocation(line: 32, column: 18, scope: !5457)
!5482 = !DILocation(line: 32, column: 17, scope: !5457)
!5483 = !DILocation(line: 32, column: 7, scope: !5457)
!5484 = !DILocation(line: 33, column: 11, scope: !5457)
!5485 = !DILocation(line: 33, column: 13, scope: !5457)
!5486 = !DILocation(line: 33, column: 10, scope: !5457)
!5487 = !DILocation(line: 33, column: 18, scope: !5457)
!5488 = !DILocation(line: 33, column: 17, scope: !5457)
!5489 = !DILocation(line: 33, column: 7, scope: !5457)
!5490 = !DILocalVariable(name: "top_p", scope: !5457, file: !870, line: 36, type: !46)
!5491 = !DILocation(line: 36, column: 14, scope: !5457)
!5492 = !DILocation(line: 36, column: 22, scope: !5457)
!5493 = !DILocation(line: 36, column: 24, scope: !5457)
!5494 = !DILocalVariable(name: "out", scope: !5457, file: !870, line: 37, type: !46)
!5495 = !DILocation(line: 37, column: 14, scope: !5457)
!5496 = !DILocation(line: 37, column: 21, scope: !5457)
!5497 = !DILocation(line: 37, column: 26, scope: !5457)
!5498 = !DILocation(line: 37, column: 32, scope: !5457)
!5499 = !DILocation(line: 37, column: 23, scope: !5457)
!5500 = !DILocation(line: 37, column: 41, scope: !5457)
!5501 = !DILocation(line: 37, column: 47, scope: !5457)
!5502 = !DILocation(line: 37, column: 38, scope: !5457)
!5503 = !DILocation(line: 37, column: 54, scope: !5457)
!5504 = !DILocation(line: 38, column: 12, scope: !5457)
!5505 = !DILocation(line: 38, column: 5, scope: !5457)
!5506 = distinct !DISubprogram(name: "ef_pack_m_vec", scope: !5081, file: !5081, line: 24, type: !5507, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !91)
!5507 = !DISubroutineType(types: !5508)
!5508 = !{null, !60, !81, !51}
!5509 = !DILocalVariable(name: "in", arg: 1, scope: !5506, file: !5081, line: 24, type: !60)
!5510 = !DILocation(line: 24, column: 36, scope: !5506)
!5511 = !DILocalVariable(name: "out", arg: 2, scope: !5506, file: !5081, line: 24, type: !81)
!5512 = !DILocation(line: 24, column: 50, scope: !5506)
!5513 = !DILocalVariable(name: "ncols", arg: 3, scope: !5506, file: !5081, line: 24, type: !51)
!5514 = !DILocation(line: 24, column: 59, scope: !5506)
!5515 = !DILocalVariable(name: "i", scope: !5506, file: !5081, line: 25, type: !51)
!5516 = !DILocation(line: 25, column: 9, scope: !5506)
!5517 = !DILocalVariable(name: "out8", scope: !5506, file: !5081, line: 26, type: !55)
!5518 = !DILocation(line: 26, column: 20, scope: !5506)
!5519 = !DILocation(line: 26, column: 44, scope: !5506)
!5520 = !DILocation(line: 27, column: 11, scope: !5521)
!5521 = distinct !DILexicalBlock(scope: !5506, file: !5081, line: 27, column: 5)
!5522 = !DILocation(line: 27, column: 9, scope: !5521)
!5523 = !DILocation(line: 27, column: 16, scope: !5524)
!5524 = distinct !DILexicalBlock(scope: !5521, file: !5081, line: 27, column: 5)
!5525 = !DILocation(line: 27, column: 17, scope: !5524)
!5526 = !DILocation(line: 27, column: 22, scope: !5524)
!5527 = !DILocation(line: 27, column: 20, scope: !5524)
!5528 = !DILocation(line: 27, column: 5, scope: !5521)
!5529 = !DILocation(line: 31, column: 23, scope: !5530)
!5530 = distinct !DILexicalBlock(scope: !5524, file: !5081, line: 27, column: 36)
!5531 = !DILocation(line: 31, column: 26, scope: !5530)
!5532 = !DILocation(line: 31, column: 27, scope: !5530)
!5533 = !DILocation(line: 31, column: 31, scope: !5530)
!5534 = !DILocation(line: 31, column: 40, scope: !5530)
!5535 = !DILocation(line: 31, column: 43, scope: !5530)
!5536 = !DILocation(line: 31, column: 44, scope: !5530)
!5537 = !DILocation(line: 31, column: 48, scope: !5530)
!5538 = !DILocation(line: 31, column: 37, scope: !5530)
!5539 = !DILocation(line: 31, column: 22, scope: !5530)
!5540 = !DILocation(line: 31, column: 9, scope: !5530)
!5541 = !DILocation(line: 31, column: 14, scope: !5530)
!5542 = !DILocation(line: 31, column: 15, scope: !5530)
!5543 = !DILocation(line: 31, column: 20, scope: !5530)
!5544 = !DILocation(line: 33, column: 5, scope: !5530)
!5545 = !DILocation(line: 27, column: 31, scope: !5524)
!5546 = !DILocation(line: 27, column: 5, scope: !5524)
!5547 = distinct !{!5547, !5528, !5548, !167}
!5548 = !DILocation(line: 33, column: 5, scope: !5521)
!5549 = !DILocation(line: 34, column: 9, scope: !5550)
!5550 = distinct !DILexicalBlock(scope: !5506, file: !5081, line: 34, column: 9)
!5551 = !DILocation(line: 34, column: 15, scope: !5550)
!5552 = !DILocation(line: 34, column: 19, scope: !5550)
!5553 = !DILocation(line: 38, column: 23, scope: !5554)
!5554 = distinct !DILexicalBlock(scope: !5550, file: !5081, line: 34, column: 24)
!5555 = !DILocation(line: 38, column: 26, scope: !5554)
!5556 = !DILocation(line: 38, column: 27, scope: !5554)
!5557 = !DILocation(line: 38, column: 31, scope: !5554)
!5558 = !DILocation(line: 38, column: 22, scope: !5554)
!5559 = !DILocation(line: 38, column: 9, scope: !5554)
!5560 = !DILocation(line: 38, column: 14, scope: !5554)
!5561 = !DILocation(line: 38, column: 15, scope: !5554)
!5562 = !DILocation(line: 38, column: 20, scope: !5554)
!5563 = !DILocation(line: 40, column: 5, scope: !5554)
!5564 = !DILocation(line: 41, column: 1, scope: !5506)
!5565 = distinct !DISubprogram(name: "ct_compare_64", scope: !5442, file: !5442, line: 46, type: !5566, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !91)
!5566 = !DISubroutineType(types: !5567)
!5567 = !{!46, !51, !51}
!5568 = !DILocalVariable(name: "a", arg: 1, scope: !5565, file: !5442, line: 46, type: !51)
!5569 = !DILocation(line: 46, column: 42, scope: !5565)
!5570 = !DILocalVariable(name: "b", arg: 2, scope: !5565, file: !5442, line: 46, type: !51)
!5571 = !DILocation(line: 46, column: 49, scope: !5565)
!5572 = !DILocation(line: 47, column: 36, scope: !5565)
!5573 = !DILocation(line: 47, column: 40, scope: !5565)
!5574 = !DILocation(line: 47, column: 38, scope: !5565)
!5575 = !DILocation(line: 47, column: 26, scope: !5565)
!5576 = !DILocation(line: 47, column: 25, scope: !5565)
!5577 = !DILocation(line: 47, column: 44, scope: !5565)
!5578 = !DILocation(line: 47, column: 73, scope: !5565)
!5579 = !DILocation(line: 47, column: 71, scope: !5565)
!5580 = !DILocation(line: 47, column: 5, scope: !5565)
!5581 = distinct !DISubprogram(name: "ct_64_is_greater_than", scope: !5442, file: !5442, line: 35, type: !5566, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !91)
!5582 = !DILocalVariable(name: "a", arg: 1, scope: !5581, file: !5442, line: 35, type: !51)
!5583 = !DILocation(line: 35, column: 50, scope: !5581)
!5584 = !DILocalVariable(name: "b", arg: 2, scope: !5581, file: !5442, line: 35, type: !51)
!5585 = !DILocation(line: 35, column: 57, scope: !5581)
!5586 = !DILocalVariable(name: "diff", scope: !5581, file: !5442, line: 36, type: !52)
!5587 = !DILocation(line: 36, column: 13, scope: !5581)
!5588 = !DILocation(line: 36, column: 31, scope: !5581)
!5589 = !DILocation(line: 36, column: 21, scope: !5581)
!5590 = !DILocation(line: 36, column: 47, scope: !5581)
!5591 = !DILocation(line: 36, column: 37, scope: !5581)
!5592 = !DILocation(line: 36, column: 34, scope: !5581)
!5593 = !DILocation(line: 37, column: 25, scope: !5581)
!5594 = !DILocation(line: 37, column: 30, scope: !5581)
!5595 = !DILocation(line: 37, column: 59, scope: !5581)
!5596 = !DILocation(line: 37, column: 57, scope: !5581)
!5597 = !DILocation(line: 37, column: 5, scope: !5581)
!5598 = distinct !DISubprogram(name: "m_extract_element", scope: !5081, file: !5081, line: 16, type: !5599, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !91)
!5599 = !DISubroutineType(types: !5600)
!5600 = !{!56, !634, !51}
!5601 = !DILocalVariable(name: "in", arg: 1, scope: !5598, file: !5081, line: 16, type: !634)
!5602 = !DILocation(line: 16, column: 35, scope: !5598)
!5603 = !DILocalVariable(name: "index", arg: 2, scope: !5598, file: !5081, line: 16, type: !51)
!5604 = !DILocation(line: 16, column: 43, scope: !5598)
!5605 = !DILocalVariable(name: "leg", scope: !5598, file: !5081, line: 17, type: !434)
!5606 = !DILocation(line: 17, column: 15, scope: !5598)
!5607 = !DILocation(line: 17, column: 21, scope: !5598)
!5608 = !DILocation(line: 17, column: 27, scope: !5598)
!5609 = !DILocalVariable(name: "offset", scope: !5598, file: !5081, line: 18, type: !434)
!5610 = !DILocation(line: 18, column: 15, scope: !5598)
!5611 = !DILocation(line: 18, column: 24, scope: !5598)
!5612 = !DILocation(line: 18, column: 30, scope: !5598)
!5613 = !DILocation(line: 20, column: 13, scope: !5598)
!5614 = !DILocation(line: 20, column: 16, scope: !5598)
!5615 = !DILocation(line: 20, column: 25, scope: !5598)
!5616 = !DILocation(line: 20, column: 31, scope: !5598)
!5617 = !DILocation(line: 20, column: 21, scope: !5598)
!5618 = !DILocation(line: 20, column: 36, scope: !5598)
!5619 = !DILocation(line: 20, column: 12, scope: !5598)
!5620 = !DILocation(line: 20, column: 5, scope: !5598)
!5621 = distinct !DISubprogram(name: "inverse_f", scope: !870, file: !870, line: 56, type: !5622, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !91)
!5622 = !DISubroutineType(types: !5623)
!5623 = !{!56, !56}
!5624 = !DILocalVariable(name: "a", arg: 1, scope: !5621, file: !870, line: 56, type: !56)
!5625 = !DILocation(line: 56, column: 53, scope: !5621)
!5626 = !DILocalVariable(name: "a2", scope: !5621, file: !870, line: 60, type: !56)
!5627 = !DILocation(line: 60, column: 19, scope: !5621)
!5628 = !DILocation(line: 60, column: 30, scope: !5621)
!5629 = !DILocation(line: 60, column: 33, scope: !5621)
!5630 = !DILocation(line: 60, column: 24, scope: !5621)
!5631 = !DILocalVariable(name: "a4", scope: !5621, file: !870, line: 61, type: !56)
!5632 = !DILocation(line: 61, column: 19, scope: !5621)
!5633 = !DILocation(line: 61, column: 30, scope: !5621)
!5634 = !DILocation(line: 61, column: 34, scope: !5621)
!5635 = !DILocation(line: 61, column: 24, scope: !5621)
!5636 = !DILocalVariable(name: "a8", scope: !5621, file: !870, line: 62, type: !56)
!5637 = !DILocation(line: 62, column: 19, scope: !5621)
!5638 = !DILocation(line: 62, column: 30, scope: !5621)
!5639 = !DILocation(line: 62, column: 34, scope: !5621)
!5640 = !DILocation(line: 62, column: 24, scope: !5621)
!5641 = !DILocalVariable(name: "a6", scope: !5621, file: !870, line: 63, type: !56)
!5642 = !DILocation(line: 63, column: 19, scope: !5621)
!5643 = !DILocation(line: 63, column: 30, scope: !5621)
!5644 = !DILocation(line: 63, column: 34, scope: !5621)
!5645 = !DILocation(line: 63, column: 24, scope: !5621)
!5646 = !DILocalVariable(name: "a14", scope: !5621, file: !870, line: 64, type: !56)
!5647 = !DILocation(line: 64, column: 19, scope: !5621)
!5648 = !DILocation(line: 64, column: 31, scope: !5621)
!5649 = !DILocation(line: 64, column: 35, scope: !5621)
!5650 = !DILocation(line: 64, column: 25, scope: !5621)
!5651 = !DILocation(line: 66, column: 12, scope: !5621)
!5652 = !DILocation(line: 66, column: 5, scope: !5621)
!5653 = distinct !DISubprogram(name: "vec_mul_add_u64", scope: !5442, file: !5442, line: 94, type: !5654, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !91)
!5654 = !DISubroutineType(types: !5655)
!5655 = !{null, !434, !634, !56, !81}
!5656 = !DILocalVariable(name: "legs", arg: 1, scope: !5653, file: !5442, line: 94, type: !434)
!5657 = !DILocation(line: 94, column: 39, scope: !5653)
!5658 = !DILocalVariable(name: "in", arg: 2, scope: !5653, file: !5442, line: 94, type: !634)
!5659 = !DILocation(line: 94, column: 61, scope: !5653)
!5660 = !DILocalVariable(name: "a", arg: 3, scope: !5653, file: !5442, line: 94, type: !56)
!5661 = !DILocation(line: 94, column: 79, scope: !5653)
!5662 = !DILocalVariable(name: "acc", arg: 4, scope: !5653, file: !5442, line: 94, type: !81)
!5663 = !DILocation(line: 94, column: 92, scope: !5653)
!5664 = !DILocalVariable(name: "tab", scope: !5653, file: !5442, line: 95, type: !57)
!5665 = !DILocation(line: 95, column: 14, scope: !5653)
!5666 = !DILocation(line: 95, column: 30, scope: !5653)
!5667 = !DILocation(line: 95, column: 20, scope: !5653)
!5668 = !DILocalVariable(name: "lsb_ask", scope: !5653, file: !5442, line: 97, type: !46)
!5669 = !DILocation(line: 97, column: 14, scope: !5653)
!5670 = !DILocalVariable(name: "i", scope: !5671, file: !5442, line: 99, type: !51)
!5671 = distinct !DILexicalBlock(scope: !5653, file: !5442, line: 99, column: 5)
!5672 = !DILocation(line: 99, column: 13, scope: !5671)
!5673 = !DILocation(line: 99, column: 9, scope: !5671)
!5674 = !DILocation(line: 99, column: 18, scope: !5675)
!5675 = distinct !DILexicalBlock(scope: !5671, file: !5442, line: 99, column: 5)
!5676 = !DILocation(line: 99, column: 22, scope: !5675)
!5677 = !DILocation(line: 99, column: 20, scope: !5675)
!5678 = !DILocation(line: 99, column: 5, scope: !5671)
!5679 = !DILocation(line: 100, column: 21, scope: !5680)
!5680 = distinct !DILexicalBlock(scope: !5675, file: !5442, line: 99, column: 32)
!5681 = !DILocation(line: 100, column: 24, scope: !5680)
!5682 = !DILocation(line: 100, column: 35, scope: !5680)
!5683 = !DILocation(line: 100, column: 33, scope: !5680)
!5684 = !DILocation(line: 100, column: 47, scope: !5680)
!5685 = !DILocation(line: 100, column: 51, scope: !5680)
!5686 = !DILocation(line: 100, column: 46, scope: !5680)
!5687 = !DILocation(line: 100, column: 44, scope: !5680)
!5688 = !DILocation(line: 101, column: 21, scope: !5680)
!5689 = !DILocation(line: 101, column: 24, scope: !5680)
!5690 = !DILocation(line: 101, column: 27, scope: !5680)
!5691 = !DILocation(line: 101, column: 35, scope: !5680)
!5692 = !DILocation(line: 101, column: 33, scope: !5680)
!5693 = !DILocation(line: 101, column: 48, scope: !5680)
!5694 = !DILocation(line: 101, column: 52, scope: !5680)
!5695 = !DILocation(line: 101, column: 59, scope: !5680)
!5696 = !DILocation(line: 101, column: 46, scope: !5680)
!5697 = !DILocation(line: 101, column: 44, scope: !5680)
!5698 = !DILocation(line: 101, column: 17, scope: !5680)
!5699 = !DILocation(line: 102, column: 21, scope: !5680)
!5700 = !DILocation(line: 102, column: 24, scope: !5680)
!5701 = !DILocation(line: 102, column: 27, scope: !5680)
!5702 = !DILocation(line: 102, column: 35, scope: !5680)
!5703 = !DILocation(line: 102, column: 33, scope: !5680)
!5704 = !DILocation(line: 102, column: 48, scope: !5680)
!5705 = !DILocation(line: 102, column: 52, scope: !5680)
!5706 = !DILocation(line: 102, column: 59, scope: !5680)
!5707 = !DILocation(line: 102, column: 46, scope: !5680)
!5708 = !DILocation(line: 102, column: 44, scope: !5680)
!5709 = !DILocation(line: 102, column: 17, scope: !5680)
!5710 = !DILocation(line: 103, column: 21, scope: !5680)
!5711 = !DILocation(line: 103, column: 24, scope: !5680)
!5712 = !DILocation(line: 103, column: 27, scope: !5680)
!5713 = !DILocation(line: 103, column: 35, scope: !5680)
!5714 = !DILocation(line: 103, column: 33, scope: !5680)
!5715 = !DILocation(line: 103, column: 48, scope: !5680)
!5716 = !DILocation(line: 103, column: 52, scope: !5680)
!5717 = !DILocation(line: 103, column: 59, scope: !5680)
!5718 = !DILocation(line: 103, column: 46, scope: !5680)
!5719 = !DILocation(line: 103, column: 44, scope: !5680)
!5720 = !DILocation(line: 103, column: 17, scope: !5680)
!5721 = !DILocation(line: 100, column: 9, scope: !5680)
!5722 = !DILocation(line: 100, column: 13, scope: !5680)
!5723 = !DILocation(line: 100, column: 16, scope: !5680)
!5724 = !DILocation(line: 104, column: 5, scope: !5680)
!5725 = !DILocation(line: 99, column: 29, scope: !5675)
!5726 = !DILocation(line: 99, column: 5, scope: !5675)
!5727 = distinct !{!5727, !5678, !5728, !167}
!5728 = !DILocation(line: 104, column: 5, scope: !5671)
!5729 = !DILocation(line: 105, column: 1, scope: !5653)
!5730 = distinct !DISubprogram(name: "ef_unpack_m_vec", scope: !5081, file: !5081, line: 44, type: !5731, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !91)
!5731 = !DISubroutineType(types: !5732)
!5732 = !{null, !51, !634, !55}
!5733 = !DILocalVariable(name: "legs", arg: 1, scope: !5730, file: !5081, line: 44, type: !51)
!5734 = !DILocation(line: 44, column: 21, scope: !5730)
!5735 = !DILocalVariable(name: "in", arg: 2, scope: !5730, file: !5081, line: 44, type: !634)
!5736 = !DILocation(line: 44, column: 43, scope: !5730)
!5737 = !DILocalVariable(name: "out", arg: 3, scope: !5730, file: !5081, line: 44, type: !55)
!5738 = !DILocation(line: 44, column: 62, scope: !5730)
!5739 = !DILocalVariable(name: "in8", scope: !5730, file: !5081, line: 45, type: !60)
!5740 = !DILocation(line: 45, column: 26, scope: !5730)
!5741 = !DILocation(line: 45, column: 55, scope: !5730)
!5742 = !DILocalVariable(name: "i", scope: !5743, file: !5081, line: 46, type: !51)
!5743 = distinct !DILexicalBlock(scope: !5730, file: !5081, line: 46, column: 5)
!5744 = !DILocation(line: 46, column: 13, scope: !5743)
!5745 = !DILocation(line: 46, column: 9, scope: !5743)
!5746 = !DILocation(line: 46, column: 20, scope: !5747)
!5747 = distinct !DILexicalBlock(scope: !5743, file: !5081, line: 46, column: 5)
!5748 = !DILocation(line: 46, column: 24, scope: !5747)
!5749 = !DILocation(line: 46, column: 29, scope: !5747)
!5750 = !DILocation(line: 46, column: 22, scope: !5747)
!5751 = !DILocation(line: 46, column: 5, scope: !5743)
!5752 = !DILocation(line: 51, column: 21, scope: !5753)
!5753 = distinct !DILexicalBlock(scope: !5747, file: !5081, line: 46, column: 42)
!5754 = !DILocation(line: 51, column: 25, scope: !5753)
!5755 = !DILocation(line: 51, column: 26, scope: !5753)
!5756 = !DILocation(line: 51, column: 20, scope: !5753)
!5757 = !DILocation(line: 51, column: 31, scope: !5753)
!5758 = !DILocation(line: 51, column: 9, scope: !5753)
!5759 = !DILocation(line: 51, column: 13, scope: !5753)
!5760 = !DILocation(line: 51, column: 18, scope: !5753)
!5761 = !DILocation(line: 52, column: 21, scope: !5753)
!5762 = !DILocation(line: 52, column: 25, scope: !5753)
!5763 = !DILocation(line: 52, column: 26, scope: !5753)
!5764 = !DILocation(line: 52, column: 30, scope: !5753)
!5765 = !DILocation(line: 52, column: 20, scope: !5753)
!5766 = !DILocation(line: 52, column: 9, scope: !5753)
!5767 = !DILocation(line: 52, column: 13, scope: !5753)
!5768 = !DILocation(line: 52, column: 14, scope: !5753)
!5769 = !DILocation(line: 52, column: 18, scope: !5753)
!5770 = !DILocation(line: 54, column: 5, scope: !5753)
!5771 = !DILocation(line: 46, column: 37, scope: !5747)
!5772 = !DILocation(line: 46, column: 5, scope: !5747)
!5773 = distinct !{!5773, !5751, !5774, !167}
!5774 = !DILocation(line: 54, column: 5, scope: !5743)
!5775 = !DILocation(line: 55, column: 1, scope: !5730)
!5776 = distinct !DISubprogram(name: "mul_table", scope: !870, file: !870, line: 128, type: !5777, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !91)
!5777 = !DISubroutineType(types: !5778)
!5778 = !{!57, !206}
!5779 = !DILocalVariable(name: "b", arg: 1, scope: !5776, file: !870, line: 128, type: !206)
!5780 = !DILocation(line: 128, column: 42, scope: !5776)
!5781 = !DILocalVariable(name: "x", scope: !5776, file: !870, line: 129, type: !57)
!5782 = !DILocation(line: 129, column: 14, scope: !5776)
!5783 = !DILocation(line: 129, column: 30, scope: !5776)
!5784 = !DILocation(line: 129, column: 19, scope: !5776)
!5785 = !DILocation(line: 129, column: 33, scope: !5776)
!5786 = !DILocalVariable(name: "high_nibble_mask", scope: !5776, file: !870, line: 131, type: !57)
!5787 = !DILocation(line: 131, column: 14, scope: !5776)
!5788 = !DILocalVariable(name: "high_half", scope: !5776, file: !870, line: 133, type: !57)
!5789 = !DILocation(line: 133, column: 14, scope: !5776)
!5790 = !DILocation(line: 133, column: 26, scope: !5776)
!5791 = !DILocation(line: 133, column: 30, scope: !5776)
!5792 = !DILocation(line: 133, column: 28, scope: !5776)
!5793 = !DILocation(line: 134, column: 13, scope: !5776)
!5794 = !DILocation(line: 134, column: 18, scope: !5776)
!5795 = !DILocation(line: 134, column: 28, scope: !5776)
!5796 = !DILocation(line: 134, column: 15, scope: !5776)
!5797 = !DILocation(line: 134, column: 37, scope: !5776)
!5798 = !DILocation(line: 134, column: 47, scope: !5776)
!5799 = !DILocation(line: 134, column: 34, scope: !5776)
!5800 = !DILocation(line: 134, column: 5, scope: !5776)
!5801 = distinct !DISubprogram(name: "mul_f", scope: !870, file: !870, line: 8, type: !2880, scopeLine: 8, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !91)
!5802 = !DILocalVariable(name: "a", arg: 1, scope: !5801, file: !870, line: 8, type: !56)
!5803 = !DILocation(line: 8, column: 49, scope: !5801)
!5804 = !DILocalVariable(name: "b", arg: 2, scope: !5801, file: !870, line: 8, type: !56)
!5805 = !DILocation(line: 8, column: 66, scope: !5801)
!5806 = !DILocalVariable(name: "p", scope: !5801, file: !870, line: 10, type: !56)
!5807 = !DILocation(line: 10, column: 19, scope: !5801)
!5808 = !DILocation(line: 13, column: 10, scope: !5801)
!5809 = !DILocation(line: 13, column: 7, scope: !5801)
!5810 = !DILocation(line: 16, column: 11, scope: !5801)
!5811 = !DILocation(line: 16, column: 13, scope: !5801)
!5812 = !DILocation(line: 16, column: 18, scope: !5801)
!5813 = !DILocation(line: 16, column: 17, scope: !5801)
!5814 = !DILocation(line: 16, column: 10, scope: !5801)
!5815 = !DILocation(line: 16, column: 8, scope: !5801)
!5816 = !DILocation(line: 17, column: 11, scope: !5801)
!5817 = !DILocation(line: 17, column: 13, scope: !5801)
!5818 = !DILocation(line: 17, column: 18, scope: !5801)
!5819 = !DILocation(line: 17, column: 17, scope: !5801)
!5820 = !DILocation(line: 17, column: 7, scope: !5801)
!5821 = !DILocation(line: 18, column: 11, scope: !5801)
!5822 = !DILocation(line: 18, column: 13, scope: !5801)
!5823 = !DILocation(line: 18, column: 18, scope: !5801)
!5824 = !DILocation(line: 18, column: 17, scope: !5801)
!5825 = !DILocation(line: 18, column: 7, scope: !5801)
!5826 = !DILocation(line: 19, column: 11, scope: !5801)
!5827 = !DILocation(line: 19, column: 13, scope: !5801)
!5828 = !DILocation(line: 19, column: 18, scope: !5801)
!5829 = !DILocation(line: 19, column: 17, scope: !5801)
!5830 = !DILocation(line: 19, column: 7, scope: !5801)
!5831 = !DILocalVariable(name: "top_p", scope: !5801, file: !870, line: 22, type: !56)
!5832 = !DILocation(line: 22, column: 19, scope: !5801)
!5833 = !DILocation(line: 22, column: 27, scope: !5801)
!5834 = !DILocation(line: 22, column: 29, scope: !5801)
!5835 = !DILocalVariable(name: "out", scope: !5801, file: !870, line: 23, type: !56)
!5836 = !DILocation(line: 23, column: 19, scope: !5801)
!5837 = !DILocation(line: 23, column: 26, scope: !5801)
!5838 = !DILocation(line: 23, column: 31, scope: !5801)
!5839 = !DILocation(line: 23, column: 37, scope: !5801)
!5840 = !DILocation(line: 23, column: 28, scope: !5801)
!5841 = !DILocation(line: 23, column: 46, scope: !5801)
!5842 = !DILocation(line: 23, column: 52, scope: !5801)
!5843 = !DILocation(line: 23, column: 43, scope: !5801)
!5844 = !DILocation(line: 23, column: 59, scope: !5801)
!5845 = !DILocation(line: 23, column: 25, scope: !5801)
!5846 = !DILocation(line: 24, column: 12, scope: !5801)
!5847 = !DILocation(line: 24, column: 5, scope: !5801)
!5848 = distinct !DISubprogram(name: "lincomb", scope: !870, file: !870, line: 69, type: !2891, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !91)
!5849 = !DILocalVariable(name: "a", arg: 1, scope: !5848, file: !870, line: 69, type: !60)
!5850 = !DILocation(line: 69, column: 58, scope: !5848)
!5851 = !DILocalVariable(name: "b", arg: 2, scope: !5848, file: !870, line: 70, type: !60)
!5852 = !DILocation(line: 70, column: 58, scope: !5848)
!5853 = !DILocalVariable(name: "n", arg: 3, scope: !5848, file: !870, line: 70, type: !51)
!5854 = !DILocation(line: 70, column: 65, scope: !5848)
!5855 = !DILocalVariable(name: "m", arg: 4, scope: !5848, file: !870, line: 70, type: !51)
!5856 = !DILocation(line: 70, column: 72, scope: !5848)
!5857 = !DILocalVariable(name: "ret", scope: !5848, file: !870, line: 71, type: !56)
!5858 = !DILocation(line: 71, column: 19, scope: !5848)
!5859 = !DILocalVariable(name: "i", scope: !5860, file: !870, line: 72, type: !51)
!5860 = distinct !DILexicalBlock(scope: !5848, file: !870, line: 72, column: 5)
!5861 = !DILocation(line: 72, column: 14, scope: !5860)
!5862 = !DILocation(line: 72, column: 10, scope: !5860)
!5863 = !DILocation(line: 72, column: 21, scope: !5864)
!5864 = distinct !DILexicalBlock(scope: !5860, file: !870, line: 72, column: 5)
!5865 = !DILocation(line: 72, column: 25, scope: !5864)
!5866 = !DILocation(line: 72, column: 23, scope: !5864)
!5867 = !DILocation(line: 72, column: 5, scope: !5860)
!5868 = !DILocation(line: 73, column: 27, scope: !5869)
!5869 = distinct !DILexicalBlock(scope: !5864, file: !870, line: 72, column: 41)
!5870 = !DILocation(line: 73, column: 29, scope: !5869)
!5871 = !DILocation(line: 73, column: 34, scope: !5869)
!5872 = !DILocation(line: 73, column: 33, scope: !5869)
!5873 = !DILocation(line: 73, column: 21, scope: !5869)
!5874 = !DILocation(line: 73, column: 38, scope: !5869)
!5875 = !DILocation(line: 73, column: 15, scope: !5869)
!5876 = !DILocation(line: 73, column: 13, scope: !5869)
!5877 = !DILocation(line: 74, column: 5, scope: !5869)
!5878 = !DILocation(line: 72, column: 28, scope: !5864)
!5879 = !DILocation(line: 72, column: 38, scope: !5864)
!5880 = !DILocation(line: 72, column: 35, scope: !5864)
!5881 = !DILocation(line: 72, column: 5, scope: !5864)
!5882 = distinct !{!5882, !5867, !5883, !167}
!5883 = !DILocation(line: 74, column: 5, scope: !5860)
!5884 = !DILocation(line: 75, column: 12, scope: !5848)
!5885 = !DILocation(line: 75, column: 5, scope: !5848)
!5886 = distinct !DISubprogram(name: "add_f", scope: !870, file: !870, line: 42, type: !2880, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !91)
!5887 = !DILocalVariable(name: "a", arg: 1, scope: !5886, file: !870, line: 42, type: !56)
!5888 = !DILocation(line: 42, column: 49, scope: !5886)
!5889 = !DILocalVariable(name: "b", arg: 2, scope: !5886, file: !870, line: 42, type: !56)
!5890 = !DILocation(line: 42, column: 66, scope: !5886)
!5891 = !DILocation(line: 43, column: 12, scope: !5886)
!5892 = !DILocation(line: 43, column: 16, scope: !5886)
!5893 = !DILocation(line: 43, column: 14, scope: !5886)
!5894 = !DILocation(line: 43, column: 5, scope: !5886)
