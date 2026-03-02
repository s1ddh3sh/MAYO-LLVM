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
@unsigned_char_blocker = external dso_local global i8, align 1

; Function Attrs: noinline nounwind optnone
define dso_local i32 @main() #0 !dbg !80 {
entry:
  %retval = alloca i32, align 4
  %params = alloca [4 x ptr], align 4
  %paramslen = alloca i32, align 4
  %i = alloca i32, align 4
    #dbg_declare(ptr %params, !84, !DIExpression(), !119)
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %params, ptr align 4 @__const.main.params, i32 16, i1 false), !dbg !119
    #dbg_declare(ptr %paramslen, !120, !DIExpression(), !121)
  store i32 4, ptr %paramslen, align 4, !dbg !121
    #dbg_declare(ptr %i, !122, !DIExpression(), !124)
  store i32 0, ptr %i, align 4, !dbg !124
  br label %for.cond, !dbg !125

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !126
  %1 = load i32, ptr %paramslen, align 4, !dbg !128
  %cmp = icmp slt i32 %0, %1, !dbg !129
  br i1 %cmp, label %for.body, label %for.end, !dbg !130

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4, !dbg !131
  %arrayidx = getelementptr inbounds [4 x ptr], ptr %params, i32 0, i32 %2, !dbg !134
  %3 = load ptr, ptr %arrayidx, align 4, !dbg !134
  %call = call i32 @example_mayo(ptr noundef %3) #5, !dbg !135
  %cmp1 = icmp ne i32 %call, 0, !dbg !136
  br i1 %cmp1, label %if.then, label %if.end, !dbg !136

if.then:                                          ; preds = %for.body
  store i32 -1, ptr %retval, align 4, !dbg !137
  br label %for.end, !dbg !137

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !139

for.inc:                                          ; preds = %if.end
  %4 = load i32, ptr %i, align 4, !dbg !140
  %inc = add nsw i32 %4, 1, !dbg !140
  store i32 %inc, ptr %i, align 4, !dbg !140
  br label %for.cond, !dbg !141, !llvm.loop !142

for.end:                                          ; preds = %if.then, %for.cond
  %5 = load i32, ptr %retval, align 4, !dbg !145
  ret i32 %5, !dbg !145
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i32(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i32, i1 immarg) #1

; Function Attrs: noinline nounwind optnone
define internal i32 @example_mayo(ptr noundef %p) #0 !dbg !146 {
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
    #dbg_declare(ptr %p.addr, !149, !DIExpression(), !150)
    #dbg_declare(ptr %msglen, !151, !DIExpression(), !152)
  store i32 32, ptr %msglen, align 4, !dbg !152
    #dbg_declare(ptr %smlen, !153, !DIExpression(), !154)
  %0 = load ptr, ptr %p.addr, align 4, !dbg !155
  %sig_bytes = getelementptr inbounds nuw %struct.mayo_params_t, ptr %0, i32 0, i32 16, !dbg !156
  %1 = load i32, ptr %sig_bytes, align 4, !dbg !156
  %2 = load i32, ptr %msglen, align 4, !dbg !157
  %add = add i32 %1, %2, !dbg !158
  store i32 %add, ptr %smlen, align 4, !dbg !154
    #dbg_declare(ptr %pk, !159, !DIExpression(), !160)
  %3 = load ptr, ptr %p.addr, align 4, !dbg !161
  %cpk_bytes = getelementptr inbounds nuw %struct.mayo_params_t, ptr %3, i32 0, i32 15, !dbg !162
  %4 = load i32, ptr %cpk_bytes, align 4, !dbg !162
  %call = call ptr @calloc(i32 noundef %4, i32 noundef 1) #6, !dbg !163
  store ptr %call, ptr %pk, align 4, !dbg !160
    #dbg_declare(ptr %sk, !164, !DIExpression(), !165)
  %5 = load ptr, ptr %p.addr, align 4, !dbg !166
  %csk_bytes = getelementptr inbounds nuw %struct.mayo_params_t, ptr %5, i32 0, i32 14, !dbg !167
  %6 = load i32, ptr %csk_bytes, align 4, !dbg !167
  %call1 = call ptr @calloc(i32 noundef %6, i32 noundef 1) #6, !dbg !168
  store ptr %call1, ptr %sk, align 4, !dbg !165
    #dbg_declare(ptr %epk, !169, !DIExpression(), !170)
  %call2 = call ptr @calloc(i32 noundef 1, i32 noundef 915840) #6, !dbg !171
  store ptr %call2, ptr %epk, align 4, !dbg !170
    #dbg_declare(ptr %esk, !172, !DIExpression(), !187)
  %call3 = call ptr @calloc(i32 noundef 1, i32 noundef 907240) #6, !dbg !188
  store ptr %call3, ptr %esk, align 4, !dbg !187
    #dbg_declare(ptr %sig, !189, !DIExpression(), !190)
  %7 = load ptr, ptr %p.addr, align 4, !dbg !191
  %sig_bytes4 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %7, i32 0, i32 16, !dbg !192
  %8 = load i32, ptr %sig_bytes4, align 4, !dbg !192
  %9 = load i32, ptr %msglen, align 4, !dbg !193
  %add5 = add i32 %8, %9, !dbg !194
  %call6 = call ptr @calloc(i32 noundef %add5, i32 noundef 1) #6, !dbg !195
  store ptr %call6, ptr %sig, align 4, !dbg !190
    #dbg_declare(ptr %msg, !196, !DIExpression(), !200)
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %msg, ptr align 1 @__const.example_mayo.msg, i32 32, i1 false), !dbg !200
    #dbg_declare(ptr %msg2, !201, !DIExpression(), !202)
  call void @llvm.memset.p0.i32(ptr align 1 %msg2, i8 0, i32 32, i1 false), !dbg !202
  %10 = load ptr, ptr %p.addr, align 4, !dbg !203
  %name = getelementptr inbounds nuw %struct.mayo_params_t, ptr %10, i32 0, i32 22, !dbg !204
  %11 = load ptr, ptr %name, align 4, !dbg !204
  %call7 = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %11) #5, !dbg !205
  %call8 = call i32 (ptr, ...) @printf(ptr noundef @.str.1) #5, !dbg !206
    #dbg_declare(ptr %res, !207, !DIExpression(), !208)
  %12 = load ptr, ptr %p.addr, align 4, !dbg !209
  %13 = load ptr, ptr %pk, align 4, !dbg !210
  %14 = load ptr, ptr %sk, align 4, !dbg !211
  %call9 = call i32 @mayo_keypair(ptr noundef %12, ptr noundef %13, ptr noundef %14) #5, !dbg !212
  store i32 %call9, ptr %res, align 4, !dbg !208
  %15 = load i32, ptr %res, align 4, !dbg !213
  %cmp = icmp ne i32 %15, 0, !dbg !215
  br i1 %cmp, label %if.then, label %if.else, !dbg !215

if.then:                                          ; preds = %entry
  %call10 = call i32 (ptr, ...) @printf(ptr noundef @.str.2) #5, !dbg !216
  store i32 -1, ptr %res, align 4, !dbg !218
  br label %err, !dbg !219

if.else:                                          ; preds = %entry
  %call11 = call i32 (ptr, ...) @printf(ptr noundef @.str.3) #5, !dbg !220
  br label %if.end

if.end:                                           ; preds = %if.else
  %call12 = call i32 (ptr, ...) @printf(ptr noundef @.str.4) #5, !dbg !222
  %16 = load ptr, ptr %p.addr, align 4, !dbg !223
  %17 = load ptr, ptr %sk, align 4, !dbg !224
  %18 = load ptr, ptr %esk, align 4, !dbg !225
  %call13 = call i32 @mayo_expand_sk(ptr noundef %16, ptr noundef %17, ptr noundef %18) #5, !dbg !226
  store i32 %call13, ptr %res, align 4, !dbg !227
  %19 = load i32, ptr %res, align 4, !dbg !228
  %cmp14 = icmp ne i32 %19, 0, !dbg !230
  br i1 %cmp14, label %if.then15, label %if.else17, !dbg !230

if.then15:                                        ; preds = %if.end
  %call16 = call i32 (ptr, ...) @printf(ptr noundef @.str.2) #5, !dbg !231
  store i32 -1, ptr %res, align 4, !dbg !233
  br label %err, !dbg !234

if.else17:                                        ; preds = %if.end
  %call18 = call i32 (ptr, ...) @printf(ptr noundef @.str.3) #5, !dbg !235
  br label %if.end19

if.end19:                                         ; preds = %if.else17
  %call20 = call i32 (ptr, ...) @printf(ptr noundef @.str.5) #5, !dbg !237
  %20 = load ptr, ptr %p.addr, align 4, !dbg !238
  %21 = load ptr, ptr %pk, align 4, !dbg !239
  %22 = load ptr, ptr %epk, align 4, !dbg !240
  %call21 = call i32 @mayo_expand_pk(ptr noundef %20, ptr noundef %21, ptr noundef %22) #5, !dbg !241
  store i32 %call21, ptr %res, align 4, !dbg !242
  %23 = load i32, ptr %res, align 4, !dbg !243
  %cmp22 = icmp ne i32 %23, 0, !dbg !245
  br i1 %cmp22, label %if.then23, label %if.else25, !dbg !245

if.then23:                                        ; preds = %if.end19
  %call24 = call i32 (ptr, ...) @printf(ptr noundef @.str.2) #5, !dbg !246
  store i32 -1, ptr %res, align 4, !dbg !248
  br label %err, !dbg !249

if.else25:                                        ; preds = %if.end19
  %call26 = call i32 (ptr, ...) @printf(ptr noundef @.str.3) #5, !dbg !250
  br label %if.end27

if.end27:                                         ; preds = %if.else25
  %call28 = call i32 (ptr, ...) @printf(ptr noundef @.str.6) #5, !dbg !252
  %24 = load ptr, ptr %p.addr, align 4, !dbg !253
  %25 = load ptr, ptr %sig, align 4, !dbg !254
  %arraydecay = getelementptr inbounds [32 x i8], ptr %msg, i32 0, i32 0, !dbg !255
  %26 = load i32, ptr %msglen, align 4, !dbg !256
  %27 = load ptr, ptr %sk, align 4, !dbg !257
  %call29 = call i32 @mayo_sign(ptr noundef %24, ptr noundef %25, ptr noundef %smlen, ptr noundef %arraydecay, i32 noundef %26, ptr noundef %27) #5, !dbg !258
  store i32 %call29, ptr %res, align 4, !dbg !259
  %28 = load i32, ptr %res, align 4, !dbg !260
  %cmp30 = icmp ne i32 %28, 0, !dbg !262
  br i1 %cmp30, label %if.then31, label %if.else33, !dbg !262

if.then31:                                        ; preds = %if.end27
  %call32 = call i32 (ptr, ...) @printf(ptr noundef @.str.2) #5, !dbg !263
  store i32 -1, ptr %res, align 4, !dbg !265
  br label %err, !dbg !266

if.else33:                                        ; preds = %if.end27
  %call34 = call i32 (ptr, ...) @printf(ptr noundef @.str.3) #5, !dbg !267
  br label %if.end35

if.end35:                                         ; preds = %if.else33
  %call36 = call i32 (ptr, ...) @printf(ptr noundef @.str.7) #5, !dbg !269
  %29 = load ptr, ptr %p.addr, align 4, !dbg !270
  %arraydecay37 = getelementptr inbounds [32 x i8], ptr %msg2, i32 0, i32 0, !dbg !271
  %30 = load ptr, ptr %sig, align 4, !dbg !272
  %31 = load i32, ptr %smlen, align 4, !dbg !273
  %32 = load ptr, ptr %pk, align 4, !dbg !274
  %call38 = call i32 @mayo_open(ptr noundef %29, ptr noundef %arraydecay37, ptr noundef %msglen, ptr noundef %30, i32 noundef %31, ptr noundef %32) #5, !dbg !275
  store i32 %call38, ptr %res, align 4, !dbg !276
  %33 = load i32, ptr %res, align 4, !dbg !277
  %cmp39 = icmp ne i32 %33, 0, !dbg !279
  br i1 %cmp39, label %if.then43, label %lor.lhs.false, !dbg !280

lor.lhs.false:                                    ; preds = %if.end35
  %arraydecay40 = getelementptr inbounds [32 x i8], ptr %msg, i32 0, i32 0, !dbg !281
  %arraydecay41 = getelementptr inbounds [32 x i8], ptr %msg2, i32 0, i32 0, !dbg !282
  %34 = load i32, ptr %msglen, align 4, !dbg !283
  %call42 = call i32 @memcmp(ptr noundef %arraydecay40, ptr noundef %arraydecay41, i32 noundef %34) #5, !dbg !284
  %tobool = icmp ne i32 %call42, 0, !dbg !284
  br i1 %tobool, label %if.then43, label %if.else45, !dbg !280

if.then43:                                        ; preds = %lor.lhs.false, %if.end35
  %call44 = call i32 (ptr, ...) @printf(ptr noundef @.str.2) #5, !dbg !285
  store i32 -1, ptr %res, align 4, !dbg !287
  br label %err, !dbg !288

if.else45:                                        ; preds = %lor.lhs.false
  store i32 0, ptr %res, align 4, !dbg !289
  %call46 = call i32 (ptr, ...) @printf(ptr noundef @.str.3) #5, !dbg !291
  br label %if.end47

if.end47:                                         ; preds = %if.else45
  %call48 = call i32 (ptr, ...) @printf(ptr noundef @.str.8) #5, !dbg !292
  %35 = load ptr, ptr %p.addr, align 4, !dbg !293
  %arraydecay49 = getelementptr inbounds [32 x i8], ptr %msg, i32 0, i32 0, !dbg !294
  %36 = load i32, ptr %msglen, align 4, !dbg !295
  %37 = load ptr, ptr %sig, align 4, !dbg !296
  %38 = load ptr, ptr %pk, align 4, !dbg !297
  %call50 = call i32 @mayo_verify(ptr noundef %35, ptr noundef %arraydecay49, i32 noundef %36, ptr noundef %37, ptr noundef %38) #5, !dbg !298
  store i32 %call50, ptr %res, align 4, !dbg !299
  %39 = load i32, ptr %res, align 4, !dbg !300
  %cmp51 = icmp ne i32 %39, 0, !dbg !302
  br i1 %cmp51, label %if.then52, label %if.else54, !dbg !302

if.then52:                                        ; preds = %if.end47
  %call53 = call i32 (ptr, ...) @printf(ptr noundef @.str.2) #5, !dbg !303
  store i32 -1, ptr %res, align 4, !dbg !305
  br label %err, !dbg !306

if.else54:                                        ; preds = %if.end47
  store i32 0, ptr %res, align 4, !dbg !307
  %call55 = call i32 (ptr, ...) @printf(ptr noundef @.str.3) #5, !dbg !309
  br label %if.end56

if.end56:                                         ; preds = %if.else54
  br label %err, !dbg !310

err:                                              ; preds = %if.end56, %if.then52, %if.then43, %if.then31, %if.then23, %if.then15, %if.then
    #dbg_label(!311, !312)
  %40 = load ptr, ptr %pk, align 4, !dbg !313
  call void @free(ptr noundef %40) #5, !dbg !314
  %41 = load ptr, ptr %epk, align 4, !dbg !315
  call void @free(ptr noundef %41) #5, !dbg !316
  %42 = load ptr, ptr %sk, align 4, !dbg !317
  %43 = load ptr, ptr %p.addr, align 4, !dbg !318
  %csk_bytes57 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %43, i32 0, i32 14, !dbg !319
  %44 = load i32, ptr %csk_bytes57, align 4, !dbg !319
  call void @mayo_secure_free(ptr noundef %42, i32 noundef %44) #5, !dbg !320
  %45 = load ptr, ptr %esk, align 4, !dbg !321
  call void @mayo_secure_free(ptr noundef %45, i32 noundef 907240) #5, !dbg !322
  %46 = load ptr, ptr %sig, align 4, !dbg !323
  call void @free(ptr noundef %46) #5, !dbg !324
  %47 = load i32, ptr %res, align 4, !dbg !325
  ret i32 %47, !dbg !326
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
define dso_local i32 @mayo_keypair(ptr noundef %p, ptr noundef %pk, ptr noundef %sk) #0 !dbg !327 {
entry:
  %p.addr = alloca ptr, align 4
  %pk.addr = alloca ptr, align 4
  %sk.addr = alloca ptr, align 4
  %ret = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 4
    #dbg_declare(ptr %p.addr, !358, !DIExpression(), !359)
  store ptr %pk, ptr %pk.addr, align 4
    #dbg_declare(ptr %pk.addr, !360, !DIExpression(), !361)
  store ptr %sk, ptr %sk.addr, align 4
    #dbg_declare(ptr %sk.addr, !362, !DIExpression(), !363)
    #dbg_declare(ptr %ret, !364, !DIExpression(), !365)
  store i32 0, ptr %ret, align 4, !dbg !365
  %0 = load ptr, ptr %p.addr, align 4, !dbg !366
  %1 = load ptr, ptr %pk.addr, align 4, !dbg !367
  %2 = load ptr, ptr %sk.addr, align 4, !dbg !368
  %call = call i32 @mayo_keypair_compact(ptr noundef %0, ptr noundef %1, ptr noundef %2) #5, !dbg !369
  store i32 %call, ptr %ret, align 4, !dbg !370
  %3 = load i32, ptr %ret, align 4, !dbg !371
  %cmp = icmp ne i32 %3, 0, !dbg !373
  br i1 %cmp, label %if.then, label %if.end, !dbg !373

if.then:                                          ; preds = %entry
  br label %err, !dbg !374

if.end:                                           ; preds = %entry
  br label %err, !dbg !376

err:                                              ; preds = %if.end, %if.then
    #dbg_label(!377, !378)
  %4 = load i32, ptr %ret, align 4, !dbg !379
  ret i32 %4, !dbg !380
}

; Function Attrs: noinline nounwind optnone
define dso_local i32 @mayo_keypair_compact(ptr noundef %p, ptr noundef %cpk, ptr noundef %csk) #0 !dbg !381 {
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
    #dbg_declare(ptr %p.addr, !382, !DIExpression(), !383)
  store ptr %cpk, ptr %cpk.addr, align 4
    #dbg_declare(ptr %cpk.addr, !384, !DIExpression(), !385)
  store ptr %csk, ptr %csk.addr, align 4
    #dbg_declare(ptr %csk.addr, !386, !DIExpression(), !387)
    #dbg_declare(ptr %ret, !388, !DIExpression(), !389)
  store i32 0, ptr %ret, align 4, !dbg !389
    #dbg_declare(ptr %seed_sk, !390, !DIExpression(), !391)
  %0 = load ptr, ptr %csk.addr, align 4, !dbg !392
  store ptr %0, ptr %seed_sk, align 4, !dbg !391
    #dbg_declare(ptr %S, !393, !DIExpression(), !397)
    #dbg_declare(ptr %P, !398, !DIExpression(), !399)
    #dbg_declare(ptr %P3, !400, !DIExpression(), !404)
  call void @llvm.memset.p0.i32(ptr align 8 %P3, i8 0, i32 20808, i1 false), !dbg !404
    #dbg_declare(ptr %seed_pk, !405, !DIExpression(), !406)
    #dbg_declare(ptr %O, !407, !DIExpression(), !409)
    #dbg_declare(ptr %m_vec_limbs, !410, !DIExpression(), !412)
  %1 = load ptr, ptr %p.addr, align 4, !dbg !413
  %m_vec_limbs1 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %1, i32 0, i32 21, !dbg !414
  %2 = load i32, ptr %m_vec_limbs1, align 4, !dbg !414
  store i32 %2, ptr %m_vec_limbs, align 4, !dbg !412
    #dbg_declare(ptr %param_m, !415, !DIExpression(), !416)
  %3 = load ptr, ptr %p.addr, align 4, !dbg !417
  %m = getelementptr inbounds nuw %struct.mayo_params_t, ptr %3, i32 0, i32 0, !dbg !418
  %4 = load i32, ptr %m, align 4, !dbg !418
  store i32 %4, ptr %param_m, align 4, !dbg !416
    #dbg_declare(ptr %param_v, !419, !DIExpression(), !420)
  %5 = load ptr, ptr %p.addr, align 4, !dbg !421
  %n = getelementptr inbounds nuw %struct.mayo_params_t, ptr %5, i32 0, i32 1, !dbg !422
  %6 = load i32, ptr %n, align 4, !dbg !422
  %7 = load ptr, ptr %p.addr, align 4, !dbg !421
  %o = getelementptr inbounds nuw %struct.mayo_params_t, ptr %7, i32 0, i32 2, !dbg !422
  %8 = load i32, ptr %o, align 4, !dbg !422
  %sub = sub nsw i32 %6, %8, !dbg !422
  store i32 %sub, ptr %param_v, align 4, !dbg !420
    #dbg_declare(ptr %param_o, !423, !DIExpression(), !424)
  %9 = load ptr, ptr %p.addr, align 4, !dbg !425
  %o2 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %9, i32 0, i32 2, !dbg !426
  %10 = load i32, ptr %o2, align 4, !dbg !426
  store i32 %10, ptr %param_o, align 4, !dbg !424
    #dbg_declare(ptr %param_O_bytes, !427, !DIExpression(), !428)
  %11 = load ptr, ptr %p.addr, align 4, !dbg !429
  %O_bytes = getelementptr inbounds nuw %struct.mayo_params_t, ptr %11, i32 0, i32 7, !dbg !430
  %12 = load i32, ptr %O_bytes, align 4, !dbg !430
  store i32 %12, ptr %param_O_bytes, align 4, !dbg !428
    #dbg_declare(ptr %param_P1_limbs, !431, !DIExpression(), !432)
  %13 = load ptr, ptr %p.addr, align 4, !dbg !433
  %n3 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %13, i32 0, i32 1, !dbg !434
  %14 = load i32, ptr %n3, align 4, !dbg !434
  %15 = load ptr, ptr %p.addr, align 4, !dbg !433
  %o4 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %15, i32 0, i32 2, !dbg !434
  %16 = load i32, ptr %o4, align 4, !dbg !434
  %sub5 = sub nsw i32 %14, %16, !dbg !434
  %17 = load ptr, ptr %p.addr, align 4, !dbg !433
  %n6 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %17, i32 0, i32 1, !dbg !434
  %18 = load i32, ptr %n6, align 4, !dbg !434
  %19 = load ptr, ptr %p.addr, align 4, !dbg !433
  %o7 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %19, i32 0, i32 2, !dbg !434
  %20 = load i32, ptr %o7, align 4, !dbg !434
  %sub8 = sub nsw i32 %18, %20, !dbg !434
  %add = add nsw i32 %sub8, 1, !dbg !434
  %mul = mul nsw i32 %sub5, %add, !dbg !434
  %div = sdiv i32 %mul, 2, !dbg !434
  %21 = load ptr, ptr %p.addr, align 4, !dbg !433
  %m_vec_limbs9 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %21, i32 0, i32 21, !dbg !434
  %22 = load i32, ptr %m_vec_limbs9, align 4, !dbg !434
  %mul10 = mul nsw i32 %div, %22, !dbg !434
  store i32 %mul10, ptr %param_P1_limbs, align 4, !dbg !432
    #dbg_declare(ptr %param_P3_limbs, !435, !DIExpression(), !436)
  %23 = load ptr, ptr %p.addr, align 4, !dbg !437
  %o11 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %23, i32 0, i32 2, !dbg !438
  %24 = load i32, ptr %o11, align 4, !dbg !438
  %25 = load ptr, ptr %p.addr, align 4, !dbg !437
  %o12 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %25, i32 0, i32 2, !dbg !438
  %26 = load i32, ptr %o12, align 4, !dbg !438
  %add13 = add nsw i32 %26, 1, !dbg !438
  %mul14 = mul nsw i32 %24, %add13, !dbg !438
  %div15 = sdiv i32 %mul14, 2, !dbg !438
  %27 = load ptr, ptr %p.addr, align 4, !dbg !437
  %m_vec_limbs16 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %27, i32 0, i32 21, !dbg !438
  %28 = load i32, ptr %m_vec_limbs16, align 4, !dbg !438
  %mul17 = mul nsw i32 %div15, %28, !dbg !438
  store i32 %mul17, ptr %param_P3_limbs, align 4, !dbg !436
    #dbg_declare(ptr %param_pk_seed_bytes, !439, !DIExpression(), !440)
  %29 = load ptr, ptr %p.addr, align 4, !dbg !441
  %pk_seed_bytes = getelementptr inbounds nuw %struct.mayo_params_t, ptr %29, i32 0, i32 20, !dbg !442
  %30 = load i32, ptr %pk_seed_bytes, align 4, !dbg !442
  store i32 %30, ptr %param_pk_seed_bytes, align 4, !dbg !440
    #dbg_declare(ptr %param_sk_seed_bytes, !443, !DIExpression(), !444)
  %31 = load ptr, ptr %p.addr, align 4, !dbg !445
  %sk_seed_bytes = getelementptr inbounds nuw %struct.mayo_params_t, ptr %31, i32 0, i32 18, !dbg !446
  %32 = load i32, ptr %sk_seed_bytes, align 4, !dbg !446
  store i32 %32, ptr %param_sk_seed_bytes, align 4, !dbg !444
    #dbg_declare(ptr %P1, !447, !DIExpression(), !448)
  %arraydecay = getelementptr inbounds [113103 x i64], ptr %P, i32 0, i32 0, !dbg !449
  store ptr %arraydecay, ptr %P1, align 4, !dbg !448
    #dbg_declare(ptr %P2, !450, !DIExpression(), !451)
  %arraydecay18 = getelementptr inbounds [113103 x i64], ptr %P, i32 0, i32 0, !dbg !452
  %33 = load i32, ptr %param_P1_limbs, align 4, !dbg !453
  %add.ptr = getelementptr inbounds i64, ptr %arraydecay18, i32 %33, !dbg !454
  store ptr %add.ptr, ptr %P2, align 4, !dbg !451
  %34 = load ptr, ptr %seed_sk, align 4, !dbg !455
  %35 = load i32, ptr %param_sk_seed_bytes, align 4, !dbg !457
  %call = call i32 @randombytes(ptr noundef %34, i32 noundef %35) #5, !dbg !458
  %cmp = icmp ne i32 %call, 0, !dbg !459
  br i1 %cmp, label %if.then, label %if.end, !dbg !459

if.then:                                          ; preds = %entry
  store i32 1, ptr %ret, align 4, !dbg !460
  br label %err, !dbg !462

if.end:                                           ; preds = %entry
  %arraydecay19 = getelementptr inbounds [868 x i8], ptr %S, i32 0, i32 0, !dbg !463
  %36 = load i32, ptr %param_pk_seed_bytes, align 4, !dbg !464
  %37 = load i32, ptr %param_O_bytes, align 4, !dbg !465
  %add20 = add nsw i32 %36, %37, !dbg !466
  %38 = load ptr, ptr %seed_sk, align 4, !dbg !467
  %39 = load i32, ptr %param_sk_seed_bytes, align 4, !dbg !468
  %call21 = call i32 @shake256(ptr noundef %arraydecay19, i32 noundef %add20, ptr noundef %38, i32 noundef %39) #5, !dbg !469
  %arraydecay22 = getelementptr inbounds [868 x i8], ptr %S, i32 0, i32 0, !dbg !470
  store ptr %arraydecay22, ptr %seed_pk, align 4, !dbg !471
  %arraydecay23 = getelementptr inbounds [868 x i8], ptr %S, i32 0, i32 0, !dbg !472
  %40 = load i32, ptr %param_pk_seed_bytes, align 4, !dbg !473
  %add.ptr24 = getelementptr inbounds i8, ptr %arraydecay23, i32 %40, !dbg !474
  %arraydecay25 = getelementptr inbounds [2414 x i8], ptr %O, i32 0, i32 0, !dbg !475
  %41 = load i32, ptr %param_v, align 4, !dbg !476
  %42 = load i32, ptr %param_o, align 4, !dbg !477
  %mul26 = mul nsw i32 %41, %42, !dbg !478
  call void @decode(ptr noundef %add.ptr24, ptr noundef %arraydecay25, i32 noundef %mul26) #5, !dbg !479
  %43 = load ptr, ptr %p.addr, align 4, !dbg !480
  %arraydecay27 = getelementptr inbounds [113103 x i64], ptr %P, i32 0, i32 0, !dbg !481
  %44 = load ptr, ptr %seed_pk, align 4, !dbg !482
  call void @expand_P1_P2(ptr noundef %43, ptr noundef %arraydecay27, ptr noundef %44) #5, !dbg !483
  %45 = load ptr, ptr %p.addr, align 4, !dbg !484
  %46 = load ptr, ptr %P1, align 4, !dbg !485
  %47 = load ptr, ptr %P2, align 4, !dbg !486
  %arraydecay28 = getelementptr inbounds [2414 x i8], ptr %O, i32 0, i32 0, !dbg !487
  %arraydecay29 = getelementptr inbounds [2601 x i64], ptr %P3, i32 0, i32 0, !dbg !488
  call void @compute_P3(ptr noundef %45, ptr noundef %46, ptr noundef %47, ptr noundef %arraydecay28, ptr noundef %arraydecay29) #5, !dbg !489
  %48 = load ptr, ptr %cpk.addr, align 4, !dbg !490
  %49 = load ptr, ptr %seed_pk, align 4, !dbg !491
  %50 = load i32, ptr %param_pk_seed_bytes, align 4, !dbg !492
  %call30 = call ptr @memcpy(ptr noundef %48, ptr noundef %49, i32 noundef %50) #5, !dbg !493
    #dbg_declare(ptr %P3_upper, !494, !DIExpression(), !498)
  %51 = load ptr, ptr %p.addr, align 4, !dbg !499
  %arraydecay31 = getelementptr inbounds [2601 x i64], ptr %P3, i32 0, i32 0, !dbg !500
  %arraydecay32 = getelementptr inbounds [1377 x i64], ptr %P3_upper, i32 0, i32 0, !dbg !501
  %52 = load i32, ptr %param_o, align 4, !dbg !502
  call void @m_upper(ptr noundef %51, ptr noundef %arraydecay31, ptr noundef %arraydecay32, i32 noundef %52) #5, !dbg !503
  %arraydecay33 = getelementptr inbounds [1377 x i64], ptr %P3_upper, i32 0, i32 0, !dbg !504
  %53 = load ptr, ptr %cpk.addr, align 4, !dbg !505
  %54 = load i32, ptr %param_pk_seed_bytes, align 4, !dbg !506
  %add.ptr34 = getelementptr inbounds i8, ptr %53, i32 %54, !dbg !507
  %55 = load i32, ptr %param_P3_limbs, align 4, !dbg !508
  %56 = load i32, ptr %m_vec_limbs, align 4, !dbg !509
  %div35 = sdiv i32 %55, %56, !dbg !510
  %57 = load i32, ptr %param_m, align 4, !dbg !511
  call void @pack_m_vecs(ptr noundef %arraydecay33, ptr noundef %add.ptr34, i32 noundef %div35, i32 noundef %57) #5, !dbg !512
  br label %err, !dbg !512

err:                                              ; preds = %if.end, %if.then
    #dbg_label(!513, !514)
  %arraydecay36 = getelementptr inbounds [2414 x i8], ptr %O, i32 0, i32 0, !dbg !515
  call void @mayo_secure_clear(ptr noundef %arraydecay36, i32 noundef 2414) #5, !dbg !516
  %58 = load ptr, ptr %P2, align 4, !dbg !517
  %59 = load ptr, ptr %p.addr, align 4, !dbg !518
  %n37 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %59, i32 0, i32 1, !dbg !519
  %60 = load i32, ptr %n37, align 4, !dbg !519
  %61 = load ptr, ptr %p.addr, align 4, !dbg !518
  %o38 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %61, i32 0, i32 2, !dbg !519
  %62 = load i32, ptr %o38, align 4, !dbg !519
  %sub39 = sub nsw i32 %60, %62, !dbg !519
  %63 = load ptr, ptr %p.addr, align 4, !dbg !518
  %o40 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %63, i32 0, i32 2, !dbg !519
  %64 = load i32, ptr %o40, align 4, !dbg !519
  %mul41 = mul nsw i32 %sub39, %64, !dbg !519
  %65 = load ptr, ptr %p.addr, align 4, !dbg !518
  %m_vec_limbs42 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %65, i32 0, i32 21, !dbg !519
  %66 = load i32, ptr %m_vec_limbs42, align 4, !dbg !519
  %mul43 = mul nsw i32 %mul41, %66, !dbg !519
  %mul44 = mul i32 %mul43, 8, !dbg !520
  call void @mayo_secure_clear(ptr noundef %58, i32 noundef %mul44) #5, !dbg !521
  %arraydecay45 = getelementptr inbounds [2601 x i64], ptr %P3, i32 0, i32 0, !dbg !522
  call void @mayo_secure_clear(ptr noundef %arraydecay45, i32 noundef 20808) #5, !dbg !523
  %67 = load i32, ptr %ret, align 4, !dbg !524
  ret i32 %67, !dbg !525
}

declare dso_local i32 @randombytes(ptr noundef, i32 noundef) #4

declare dso_local i32 @shake256(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #4

; Function Attrs: noinline nounwind optnone
define internal void @decode(ptr noundef %m, ptr noundef %mdec, i32 noundef %mdeclen) #0 !dbg !526 {
entry:
  %m.addr = alloca ptr, align 4
  %mdec.addr = alloca ptr, align 4
  %mdeclen.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %m, ptr %m.addr, align 4
    #dbg_declare(ptr %m.addr, !529, !DIExpression(), !530)
  store ptr %mdec, ptr %mdec.addr, align 4
    #dbg_declare(ptr %mdec.addr, !531, !DIExpression(), !532)
  store i32 %mdeclen, ptr %mdeclen.addr, align 4
    #dbg_declare(ptr %mdeclen.addr, !533, !DIExpression(), !534)
    #dbg_declare(ptr %i, !535, !DIExpression(), !536)
  store i32 0, ptr %i, align 4, !dbg !537
  br label %for.cond, !dbg !539

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !540
  %1 = load i32, ptr %mdeclen.addr, align 4, !dbg !542
  %div = sdiv i32 %1, 2, !dbg !543
  %cmp = icmp slt i32 %0, %div, !dbg !544
  br i1 %cmp, label %for.body, label %for.end, !dbg !545

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %m.addr, align 4, !dbg !546
  %3 = load i32, ptr %i, align 4, !dbg !548
  %arrayidx = getelementptr inbounds i8, ptr %2, i32 %3, !dbg !546
  %4 = load i8, ptr %arrayidx, align 1, !dbg !546
  %conv = zext i8 %4 to i32, !dbg !546
  %and = and i32 %conv, 15, !dbg !549
  %conv1 = trunc i32 %and to i8, !dbg !546
  %5 = load ptr, ptr %mdec.addr, align 4, !dbg !550
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %5, i32 1, !dbg !550
  store ptr %incdec.ptr, ptr %mdec.addr, align 4, !dbg !550
  store i8 %conv1, ptr %5, align 1, !dbg !551
  %6 = load ptr, ptr %m.addr, align 4, !dbg !552
  %7 = load i32, ptr %i, align 4, !dbg !553
  %arrayidx2 = getelementptr inbounds i8, ptr %6, i32 %7, !dbg !552
  %8 = load i8, ptr %arrayidx2, align 1, !dbg !552
  %conv3 = zext i8 %8 to i32, !dbg !552
  %shr = ashr i32 %conv3, 4, !dbg !554
  %conv4 = trunc i32 %shr to i8, !dbg !552
  %9 = load ptr, ptr %mdec.addr, align 4, !dbg !555
  %incdec.ptr5 = getelementptr inbounds nuw i8, ptr %9, i32 1, !dbg !555
  store ptr %incdec.ptr5, ptr %mdec.addr, align 4, !dbg !555
  store i8 %conv4, ptr %9, align 1, !dbg !556
  br label %for.inc, !dbg !557

for.inc:                                          ; preds = %for.body
  %10 = load i32, ptr %i, align 4, !dbg !558
  %inc = add nsw i32 %10, 1, !dbg !558
  store i32 %inc, ptr %i, align 4, !dbg !558
  br label %for.cond, !dbg !559, !llvm.loop !560

for.end:                                          ; preds = %for.cond
  %11 = load i32, ptr %mdeclen.addr, align 4, !dbg !562
  %rem = srem i32 %11, 2, !dbg !564
  %cmp6 = icmp eq i32 %rem, 1, !dbg !565
  br i1 %cmp6, label %if.then, label %if.end, !dbg !565

if.then:                                          ; preds = %for.end
  %12 = load ptr, ptr %m.addr, align 4, !dbg !566
  %13 = load i32, ptr %i, align 4, !dbg !568
  %arrayidx8 = getelementptr inbounds i8, ptr %12, i32 %13, !dbg !566
  %14 = load i8, ptr %arrayidx8, align 1, !dbg !566
  %conv9 = zext i8 %14 to i32, !dbg !566
  %and10 = and i32 %conv9, 15, !dbg !569
  %conv11 = trunc i32 %and10 to i8, !dbg !566
  %15 = load ptr, ptr %mdec.addr, align 4, !dbg !570
  %incdec.ptr12 = getelementptr inbounds nuw i8, ptr %15, i32 1, !dbg !570
  store ptr %incdec.ptr12, ptr %mdec.addr, align 4, !dbg !570
  store i8 %conv11, ptr %15, align 1, !dbg !571
  br label %if.end, !dbg !572

if.end:                                           ; preds = %if.then, %for.end
  ret void, !dbg !573
}

; Function Attrs: noinline nounwind optnone
define internal void @expand_P1_P2(ptr noundef %p, ptr noundef %P, ptr noundef %seed_pk) #0 !dbg !574 {
entry:
  %p.addr = alloca ptr, align 4
  %P.addr = alloca ptr, align 4
  %seed_pk.addr = alloca ptr, align 4
  store ptr %p, ptr %p.addr, align 4
    #dbg_declare(ptr %p.addr, !577, !DIExpression(), !578)
  store ptr %P, ptr %P.addr, align 4
    #dbg_declare(ptr %P.addr, !579, !DIExpression(), !580)
  store ptr %seed_pk, ptr %seed_pk.addr, align 4
    #dbg_declare(ptr %seed_pk.addr, !581, !DIExpression(), !582)
  %0 = load ptr, ptr %P.addr, align 4, !dbg !583
  %1 = load ptr, ptr %p.addr, align 4, !dbg !584
  %P1_bytes = getelementptr inbounds nuw %struct.mayo_params_t, ptr %1, i32 0, i32 11, !dbg !585
  %2 = load i32, ptr %P1_bytes, align 4, !dbg !585
  %3 = load ptr, ptr %p.addr, align 4, !dbg !586
  %P2_bytes = getelementptr inbounds nuw %struct.mayo_params_t, ptr %3, i32 0, i32 12, !dbg !587
  %4 = load i32, ptr %P2_bytes, align 4, !dbg !587
  %add = add nsw i32 %2, %4, !dbg !588
  %5 = load ptr, ptr %seed_pk.addr, align 4, !dbg !589
  %6 = load ptr, ptr %p.addr, align 4, !dbg !590
  %pk_seed_bytes = getelementptr inbounds nuw %struct.mayo_params_t, ptr %6, i32 0, i32 20, !dbg !591
  %7 = load i32, ptr %pk_seed_bytes, align 4, !dbg !591
  %call = call i32 @AES_128_CTR(ptr noundef %0, i32 noundef %add, ptr noundef %5, i32 noundef %7) #5, !dbg !592
  %8 = load ptr, ptr %P.addr, align 4, !dbg !593
  %9 = load ptr, ptr %P.addr, align 4, !dbg !594
  %10 = load ptr, ptr %p.addr, align 4, !dbg !595
  %n = getelementptr inbounds nuw %struct.mayo_params_t, ptr %10, i32 0, i32 1, !dbg !596
  %11 = load i32, ptr %n, align 4, !dbg !596
  %12 = load ptr, ptr %p.addr, align 4, !dbg !595
  %o = getelementptr inbounds nuw %struct.mayo_params_t, ptr %12, i32 0, i32 2, !dbg !596
  %13 = load i32, ptr %o, align 4, !dbg !596
  %sub = sub nsw i32 %11, %13, !dbg !596
  %14 = load ptr, ptr %p.addr, align 4, !dbg !595
  %n1 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %14, i32 0, i32 1, !dbg !596
  %15 = load i32, ptr %n1, align 4, !dbg !596
  %16 = load ptr, ptr %p.addr, align 4, !dbg !595
  %o2 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %16, i32 0, i32 2, !dbg !596
  %17 = load i32, ptr %o2, align 4, !dbg !596
  %sub3 = sub nsw i32 %15, %17, !dbg !596
  %add4 = add nsw i32 %sub3, 1, !dbg !596
  %mul = mul nsw i32 %sub, %add4, !dbg !596
  %div = sdiv i32 %mul, 2, !dbg !596
  %18 = load ptr, ptr %p.addr, align 4, !dbg !595
  %m_vec_limbs = getelementptr inbounds nuw %struct.mayo_params_t, ptr %18, i32 0, i32 21, !dbg !596
  %19 = load i32, ptr %m_vec_limbs, align 4, !dbg !596
  %mul5 = mul nsw i32 %div, %19, !dbg !596
  %20 = load ptr, ptr %p.addr, align 4, !dbg !597
  %n6 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %20, i32 0, i32 1, !dbg !598
  %21 = load i32, ptr %n6, align 4, !dbg !598
  %22 = load ptr, ptr %p.addr, align 4, !dbg !597
  %o7 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %22, i32 0, i32 2, !dbg !598
  %23 = load i32, ptr %o7, align 4, !dbg !598
  %sub8 = sub nsw i32 %21, %23, !dbg !598
  %24 = load ptr, ptr %p.addr, align 4, !dbg !597
  %o9 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %24, i32 0, i32 2, !dbg !598
  %25 = load i32, ptr %o9, align 4, !dbg !598
  %mul10 = mul nsw i32 %sub8, %25, !dbg !598
  %26 = load ptr, ptr %p.addr, align 4, !dbg !597
  %m_vec_limbs11 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %26, i32 0, i32 21, !dbg !598
  %27 = load i32, ptr %m_vec_limbs11, align 4, !dbg !598
  %mul12 = mul nsw i32 %mul10, %27, !dbg !598
  %add13 = add nsw i32 %mul5, %mul12, !dbg !599
  %28 = load ptr, ptr %p.addr, align 4, !dbg !600
  %m_vec_limbs14 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %28, i32 0, i32 21, !dbg !601
  %29 = load i32, ptr %m_vec_limbs14, align 4, !dbg !601
  %div15 = sdiv i32 %add13, %29, !dbg !602
  %30 = load ptr, ptr %p.addr, align 4, !dbg !603
  %m = getelementptr inbounds nuw %struct.mayo_params_t, ptr %30, i32 0, i32 0, !dbg !604
  %31 = load i32, ptr %m, align 4, !dbg !604
  call void @unpack_m_vecs(ptr noundef %8, ptr noundef %9, i32 noundef %div15, i32 noundef %31) #5, !dbg !605
  ret void, !dbg !606
}

; Function Attrs: noinline nounwind optnone
define internal void @compute_P3(ptr noundef %p, ptr noundef %P1, ptr noundef %P2, ptr noundef %O, ptr noundef %P3) #0 !dbg !607 {
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
    #dbg_declare(ptr %p.addr, !612, !DIExpression(), !613)
  store ptr %P1, ptr %P1.addr, align 4
    #dbg_declare(ptr %P1.addr, !614, !DIExpression(), !615)
  store ptr %P2, ptr %P2.addr, align 4
    #dbg_declare(ptr %P2.addr, !616, !DIExpression(), !617)
  store ptr %O, ptr %O.addr, align 4
    #dbg_declare(ptr %O.addr, !618, !DIExpression(), !619)
  store ptr %P3, ptr %P3.addr, align 4
    #dbg_declare(ptr %P3.addr, !620, !DIExpression(), !621)
    #dbg_declare(ptr %m_vec_limbs, !622, !DIExpression(), !623)
  %0 = load ptr, ptr %p.addr, align 4, !dbg !624
  %m_vec_limbs1 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %0, i32 0, i32 21, !dbg !625
  %1 = load i32, ptr %m_vec_limbs1, align 4, !dbg !625
  store i32 %1, ptr %m_vec_limbs, align 4, !dbg !623
    #dbg_declare(ptr %param_v, !626, !DIExpression(), !627)
  %2 = load ptr, ptr %p.addr, align 4, !dbg !628
  %n = getelementptr inbounds nuw %struct.mayo_params_t, ptr %2, i32 0, i32 1, !dbg !629
  %3 = load i32, ptr %n, align 4, !dbg !629
  %4 = load ptr, ptr %p.addr, align 4, !dbg !628
  %o = getelementptr inbounds nuw %struct.mayo_params_t, ptr %4, i32 0, i32 2, !dbg !629
  %5 = load i32, ptr %o, align 4, !dbg !629
  %sub = sub nsw i32 %3, %5, !dbg !629
  store i32 %sub, ptr %param_v, align 4, !dbg !627
    #dbg_declare(ptr %param_o, !630, !DIExpression(), !631)
  %6 = load ptr, ptr %p.addr, align 4, !dbg !632
  %o2 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %6, i32 0, i32 2, !dbg !633
  %7 = load i32, ptr %o2, align 4, !dbg !633
  store i32 %7, ptr %param_o, align 4, !dbg !631
  %8 = load ptr, ptr %p.addr, align 4, !dbg !634
  %9 = load ptr, ptr %P1.addr, align 4, !dbg !635
  %10 = load ptr, ptr %O.addr, align 4, !dbg !636
  %11 = load ptr, ptr %P2.addr, align 4, !dbg !637
  call void @P1_times_O(ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11) #5, !dbg !638
  %12 = load i32, ptr %m_vec_limbs, align 4, !dbg !639
  %13 = load ptr, ptr %O.addr, align 4, !dbg !640
  %14 = load ptr, ptr %P2.addr, align 4, !dbg !641
  %15 = load ptr, ptr %P3.addr, align 4, !dbg !642
  %16 = load i32, ptr %param_v, align 4, !dbg !643
  %17 = load i32, ptr %param_o, align 4, !dbg !644
  %18 = load i32, ptr %param_o, align 4, !dbg !645
  call void @mul_add_mat_trans_x_m_mat(i32 noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef %15, i32 noundef %16, i32 noundef %17, i32 noundef %18) #5, !dbg !646
  ret void, !dbg !647
}

declare dso_local ptr @memcpy(ptr noundef, ptr noundef, i32 noundef) #4

declare dso_local void @m_upper(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: noinline nounwind optnone
define internal void @pack_m_vecs(ptr noundef %in, ptr noundef %out, i32 noundef %vecs, i32 noundef %m) #0 !dbg !648 {
entry:
  %in.addr = alloca ptr, align 4
  %out.addr = alloca ptr, align 4
  %vecs.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %m_vec_limbs = alloca i32, align 4
  %_in = alloca ptr, align 4
  %i = alloca i32, align 4
  store ptr %in, ptr %in.addr, align 4
    #dbg_declare(ptr %in.addr, !651, !DIExpression(), !652)
  store ptr %out, ptr %out.addr, align 4
    #dbg_declare(ptr %out.addr, !653, !DIExpression(), !654)
  store i32 %vecs, ptr %vecs.addr, align 4
    #dbg_declare(ptr %vecs.addr, !655, !DIExpression(), !656)
  store i32 %m, ptr %m.addr, align 4
    #dbg_declare(ptr %m.addr, !657, !DIExpression(), !658)
    #dbg_declare(ptr %m_vec_limbs, !659, !DIExpression(), !660)
  %0 = load i32, ptr %m.addr, align 4, !dbg !661
  %add = add nsw i32 %0, 15, !dbg !662
  %div = sdiv i32 %add, 16, !dbg !663
  store i32 %div, ptr %m_vec_limbs, align 4, !dbg !660
    #dbg_declare(ptr %_in, !664, !DIExpression(), !665)
  %1 = load ptr, ptr %in.addr, align 4, !dbg !666
  store ptr %1, ptr %_in, align 4, !dbg !665
    #dbg_declare(ptr %i, !667, !DIExpression(), !669)
  store i32 0, ptr %i, align 4, !dbg !669
  br label %for.cond, !dbg !670

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4, !dbg !671
  %3 = load i32, ptr %vecs.addr, align 4, !dbg !673
  %cmp = icmp slt i32 %2, %3, !dbg !674
  br i1 %cmp, label %for.body, label %for.end, !dbg !675

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %out.addr, align 4, !dbg !676
  %5 = load i32, ptr %i, align 4, !dbg !678
  %6 = load i32, ptr %m.addr, align 4, !dbg !679
  %mul = mul nsw i32 %5, %6, !dbg !680
  %div1 = sdiv i32 %mul, 2, !dbg !681
  %add.ptr = getelementptr inbounds i8, ptr %4, i32 %div1, !dbg !682
  %7 = load ptr, ptr %_in, align 4, !dbg !683
  %8 = load i32, ptr %i, align 4, !dbg !684
  %9 = load i32, ptr %m_vec_limbs, align 4, !dbg !685
  %mul2 = mul nsw i32 %8, %9, !dbg !686
  %mul3 = mul i32 %mul2, 8, !dbg !687
  %add.ptr4 = getelementptr inbounds nuw i8, ptr %7, i32 %mul3, !dbg !688
  %10 = load i32, ptr %m.addr, align 4, !dbg !689
  %div5 = sdiv i32 %10, 2, !dbg !690
  %call = call ptr @memmove(ptr noundef %add.ptr, ptr noundef %add.ptr4, i32 noundef %div5) #5, !dbg !691
  br label %for.inc, !dbg !692

for.inc:                                          ; preds = %for.body
  %11 = load i32, ptr %i, align 4, !dbg !693
  %inc = add nsw i32 %11, 1, !dbg !693
  store i32 %inc, ptr %i, align 4, !dbg !693
  br label %for.cond, !dbg !694, !llvm.loop !695

for.end:                                          ; preds = %for.cond
  ret void, !dbg !697
}

declare dso_local void @mayo_secure_clear(ptr noundef, i32 noundef) #4

declare dso_local ptr @memmove(ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: noinline nounwind optnone
define internal void @P1_times_O(ptr noundef %p, ptr noundef %P1, ptr noundef %O, ptr noundef %acc) #0 !dbg !698 {
entry:
  %p.addr = alloca ptr, align 4
  %P1.addr = alloca ptr, align 4
  %O.addr = alloca ptr, align 4
  %acc.addr = alloca ptr, align 4
  store ptr %p, ptr %p.addr, align 4
    #dbg_declare(ptr %p.addr, !701, !DIExpression(), !702)
  store ptr %P1, ptr %P1.addr, align 4
    #dbg_declare(ptr %P1.addr, !703, !DIExpression(), !704)
  store ptr %O, ptr %O.addr, align 4
    #dbg_declare(ptr %O.addr, !705, !DIExpression(), !706)
  store ptr %acc, ptr %acc.addr, align 4
    #dbg_declare(ptr %acc.addr, !707, !DIExpression(), !708)
  %0 = load ptr, ptr %p.addr, align 4, !dbg !709
  %m_vec_limbs = getelementptr inbounds nuw %struct.mayo_params_t, ptr %0, i32 0, i32 21, !dbg !710
  %1 = load i32, ptr %m_vec_limbs, align 4, !dbg !710
  %2 = load ptr, ptr %P1.addr, align 4, !dbg !711
  %3 = load ptr, ptr %O.addr, align 4, !dbg !712
  %4 = load ptr, ptr %acc.addr, align 4, !dbg !713
  %5 = load ptr, ptr %p.addr, align 4, !dbg !714
  %n = getelementptr inbounds nuw %struct.mayo_params_t, ptr %5, i32 0, i32 1, !dbg !715
  %6 = load i32, ptr %n, align 4, !dbg !715
  %7 = load ptr, ptr %p.addr, align 4, !dbg !714
  %o = getelementptr inbounds nuw %struct.mayo_params_t, ptr %7, i32 0, i32 2, !dbg !715
  %8 = load i32, ptr %o, align 4, !dbg !715
  %sub = sub nsw i32 %6, %8, !dbg !715
  %9 = load ptr, ptr %p.addr, align 4, !dbg !716
  %n1 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %9, i32 0, i32 1, !dbg !717
  %10 = load i32, ptr %n1, align 4, !dbg !717
  %11 = load ptr, ptr %p.addr, align 4, !dbg !716
  %o2 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %11, i32 0, i32 2, !dbg !717
  %12 = load i32, ptr %o2, align 4, !dbg !717
  %sub3 = sub nsw i32 %10, %12, !dbg !717
  %13 = load ptr, ptr %p.addr, align 4, !dbg !718
  %o4 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %13, i32 0, i32 2, !dbg !719
  %14 = load i32, ptr %o4, align 4, !dbg !719
  call void @mul_add_m_upper_triangular_mat_x_mat(i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %sub, i32 noundef %sub3, i32 noundef %14, i32 noundef 1) #5, !dbg !720
  ret void, !dbg !721
}

; Function Attrs: noinline nounwind optnone
define internal void @mul_add_mat_trans_x_m_mat(i32 noundef %m_vec_limbs, ptr noundef %mat, ptr noundef %bs_mat, ptr noundef %acc, i32 noundef %mat_rows, i32 noundef %mat_cols, i32 noundef %bs_mat_cols) #0 !dbg !722 {
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
    #dbg_declare(ptr %m_vec_limbs.addr, !725, !DIExpression(), !726)
  store ptr %mat, ptr %mat.addr, align 4
    #dbg_declare(ptr %mat.addr, !727, !DIExpression(), !728)
  store ptr %bs_mat, ptr %bs_mat.addr, align 4
    #dbg_declare(ptr %bs_mat.addr, !729, !DIExpression(), !730)
  store ptr %acc, ptr %acc.addr, align 4
    #dbg_declare(ptr %acc.addr, !731, !DIExpression(), !732)
  store i32 %mat_rows, ptr %mat_rows.addr, align 4
    #dbg_declare(ptr %mat_rows.addr, !733, !DIExpression(), !734)
  store i32 %mat_cols, ptr %mat_cols.addr, align 4
    #dbg_declare(ptr %mat_cols.addr, !735, !DIExpression(), !736)
  store i32 %bs_mat_cols, ptr %bs_mat_cols.addr, align 4
    #dbg_declare(ptr %bs_mat_cols.addr, !737, !DIExpression(), !738)
    #dbg_declare(ptr %r, !739, !DIExpression(), !741)
  store i32 0, ptr %r, align 4, !dbg !741
  br label %for.cond, !dbg !742

for.cond:                                         ; preds = %for.inc17, %entry
  %0 = load i32, ptr %r, align 4, !dbg !743
  %1 = load i32, ptr %mat_cols.addr, align 4, !dbg !745
  %cmp = icmp slt i32 %0, %1, !dbg !746
  br i1 %cmp, label %for.body, label %for.end19, !dbg !747

for.body:                                         ; preds = %for.cond
    #dbg_declare(ptr %c, !748, !DIExpression(), !751)
  store i32 0, ptr %c, align 4, !dbg !751
  br label %for.cond1, !dbg !752

for.cond1:                                        ; preds = %for.inc15, %for.body
  %2 = load i32, ptr %c, align 4, !dbg !753
  %3 = load i32, ptr %mat_rows.addr, align 4, !dbg !755
  %cmp2 = icmp slt i32 %2, %3, !dbg !756
  br i1 %cmp2, label %for.body3, label %for.end16, !dbg !757

for.body3:                                        ; preds = %for.cond1
    #dbg_declare(ptr %k, !758, !DIExpression(), !761)
  store i32 0, ptr %k, align 4, !dbg !761
  br label %for.cond4, !dbg !762

for.cond4:                                        ; preds = %for.inc, %for.body3
  %4 = load i32, ptr %k, align 4, !dbg !763
  %5 = load i32, ptr %bs_mat_cols.addr, align 4, !dbg !765
  %cmp5 = icmp slt i32 %4, %5, !dbg !766
  br i1 %cmp5, label %for.body6, label %for.end, !dbg !767

for.body6:                                        ; preds = %for.cond4
  %6 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !768
  %7 = load ptr, ptr %bs_mat.addr, align 4, !dbg !770
  %8 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !771
  %9 = load i32, ptr %c, align 4, !dbg !772
  %10 = load i32, ptr %bs_mat_cols.addr, align 4, !dbg !773
  %mul = mul nsw i32 %9, %10, !dbg !774
  %11 = load i32, ptr %k, align 4, !dbg !775
  %add = add nsw i32 %mul, %11, !dbg !776
  %mul7 = mul nsw i32 %8, %add, !dbg !777
  %add.ptr = getelementptr inbounds i64, ptr %7, i32 %mul7, !dbg !778
  %12 = load ptr, ptr %mat.addr, align 4, !dbg !779
  %13 = load i32, ptr %c, align 4, !dbg !780
  %14 = load i32, ptr %mat_cols.addr, align 4, !dbg !781
  %mul8 = mul nsw i32 %13, %14, !dbg !782
  %15 = load i32, ptr %r, align 4, !dbg !783
  %add9 = add nsw i32 %mul8, %15, !dbg !784
  %arrayidx = getelementptr inbounds i8, ptr %12, i32 %add9, !dbg !779
  %16 = load i8, ptr %arrayidx, align 1, !dbg !779
  %17 = load ptr, ptr %acc.addr, align 4, !dbg !785
  %18 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !786
  %19 = load i32, ptr %r, align 4, !dbg !787
  %20 = load i32, ptr %bs_mat_cols.addr, align 4, !dbg !788
  %mul10 = mul nsw i32 %19, %20, !dbg !789
  %21 = load i32, ptr %k, align 4, !dbg !790
  %add11 = add nsw i32 %mul10, %21, !dbg !791
  %mul12 = mul nsw i32 %18, %add11, !dbg !792
  %add.ptr13 = getelementptr inbounds i64, ptr %17, i32 %mul12, !dbg !793
  call void @m_vec_mul_add(i32 noundef %6, ptr noundef %add.ptr, i8 noundef zeroext %16, ptr noundef %add.ptr13) #5, !dbg !794
  br label %for.inc, !dbg !795

for.inc:                                          ; preds = %for.body6
  %22 = load i32, ptr %k, align 4, !dbg !796
  %add14 = add nsw i32 %22, 1, !dbg !796
  store i32 %add14, ptr %k, align 4, !dbg !796
  br label %for.cond4, !dbg !797, !llvm.loop !798

for.end:                                          ; preds = %for.cond4
  br label %for.inc15, !dbg !800

for.inc15:                                        ; preds = %for.end
  %23 = load i32, ptr %c, align 4, !dbg !801
  %inc = add nsw i32 %23, 1, !dbg !801
  store i32 %inc, ptr %c, align 4, !dbg !801
  br label %for.cond1, !dbg !802, !llvm.loop !803

for.end16:                                        ; preds = %for.cond1
  br label %for.inc17, !dbg !805

for.inc17:                                        ; preds = %for.end16
  %24 = load i32, ptr %r, align 4, !dbg !806
  %inc18 = add nsw i32 %24, 1, !dbg !806
  store i32 %inc18, ptr %r, align 4, !dbg !806
  br label %for.cond, !dbg !807, !llvm.loop !808

for.end19:                                        ; preds = %for.cond
  ret void, !dbg !810
}

; Function Attrs: noinline nounwind optnone
define internal void @m_vec_mul_add(i32 noundef %m_vec_limbs, ptr noundef %in, i8 noundef zeroext %a, ptr noundef %acc) #0 !dbg !811 {
entry:
  %m_vec_limbs.addr = alloca i32, align 4
  %in.addr = alloca ptr, align 4
  %a.addr = alloca i8, align 1
  %acc.addr = alloca ptr, align 4
  %i = alloca i32, align 4
  store i32 %m_vec_limbs, ptr %m_vec_limbs.addr, align 4
    #dbg_declare(ptr %m_vec_limbs.addr, !815, !DIExpression(), !816)
  store ptr %in, ptr %in.addr, align 4
    #dbg_declare(ptr %in.addr, !817, !DIExpression(), !818)
  store i8 %a, ptr %a.addr, align 1
    #dbg_declare(ptr %a.addr, !819, !DIExpression(), !820)
  store ptr %acc, ptr %acc.addr, align 4
    #dbg_declare(ptr %acc.addr, !821, !DIExpression(), !822)
    #dbg_declare(ptr %i, !823, !DIExpression(), !825)
  store i32 0, ptr %i, align 4, !dbg !825
  br label %for.cond, !dbg !826

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !827
  %1 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !829
  %cmp = icmp slt i32 %0, %1, !dbg !830
  br i1 %cmp, label %for.body, label %for.end, !dbg !831

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %in.addr, align 4, !dbg !832
  %3 = load i32, ptr %i, align 4, !dbg !834
  %arrayidx = getelementptr inbounds i64, ptr %2, i32 %3, !dbg !832
  %4 = load i64, ptr %arrayidx, align 8, !dbg !832
  %5 = load i8, ptr %a.addr, align 1, !dbg !835
  %call = call i64 @gf16v_mul_u64(i64 noundef %4, i8 noundef zeroext %5) #5, !dbg !836
  %6 = load ptr, ptr %acc.addr, align 4, !dbg !837
  %7 = load i32, ptr %i, align 4, !dbg !838
  %arrayidx1 = getelementptr inbounds i64, ptr %6, i32 %7, !dbg !837
  %8 = load i64, ptr %arrayidx1, align 8, !dbg !839
  %xor = xor i64 %8, %call, !dbg !839
  store i64 %xor, ptr %arrayidx1, align 8, !dbg !839
  br label %for.inc, !dbg !840

for.inc:                                          ; preds = %for.body
  %9 = load i32, ptr %i, align 4, !dbg !841
  %inc = add nsw i32 %9, 1, !dbg !841
  store i32 %inc, ptr %i, align 4, !dbg !841
  br label %for.cond, !dbg !842, !llvm.loop !843

for.end:                                          ; preds = %for.cond
  ret void, !dbg !845
}

; Function Attrs: noinline nounwind optnone
define internal i64 @gf16v_mul_u64(i64 noundef %a, i8 noundef zeroext %b) #0 !dbg !846 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i8, align 1
  %mask_msb = alloca i64, align 8
  %a_msb = alloca i64, align 8
  %a64 = alloca i64, align 8
  %b32 = alloca i64, align 8
  %r64 = alloca i64, align 8
  store i64 %a, ptr %a.addr, align 8
    #dbg_declare(ptr %a.addr, !850, !DIExpression(), !851)
  store i8 %b, ptr %b.addr, align 1
    #dbg_declare(ptr %b.addr, !852, !DIExpression(), !853)
    #dbg_declare(ptr %mask_msb, !854, !DIExpression(), !855)
  store i64 -8608480567731124088, ptr %mask_msb, align 8, !dbg !855
    #dbg_declare(ptr %a_msb, !856, !DIExpression(), !857)
    #dbg_declare(ptr %a64, !858, !DIExpression(), !859)
  %0 = load i64, ptr %a.addr, align 8, !dbg !860
  store i64 %0, ptr %a64, align 8, !dbg !859
    #dbg_declare(ptr %b32, !861, !DIExpression(), !862)
  %1 = load i8, ptr %b.addr, align 1, !dbg !863
  %conv = zext i8 %1 to i32, !dbg !863
  %2 = load volatile i8, ptr @unsigned_char_blocker, align 1, !dbg !864
  %conv1 = zext i8 %2 to i32, !dbg !864
  %xor = xor i32 %conv, %conv1, !dbg !865
  %conv2 = sext i32 %xor to i64, !dbg !863
  store i64 %conv2, ptr %b32, align 8, !dbg !862
    #dbg_declare(ptr %r64, !866, !DIExpression(), !867)
  %3 = load i64, ptr %a64, align 8, !dbg !868
  %4 = load i64, ptr %b32, align 8, !dbg !869
  %and = and i64 %4, 1, !dbg !870
  %mul = mul i64 %3, %and, !dbg !871
  store i64 %mul, ptr %r64, align 8, !dbg !867
  %5 = load i64, ptr %a64, align 8, !dbg !872
  %6 = load i64, ptr %mask_msb, align 8, !dbg !873
  %and3 = and i64 %5, %6, !dbg !874
  store i64 %and3, ptr %a_msb, align 8, !dbg !875
  %7 = load i64, ptr %a_msb, align 8, !dbg !876
  %8 = load i64, ptr %a64, align 8, !dbg !877
  %xor4 = xor i64 %8, %7, !dbg !877
  store i64 %xor4, ptr %a64, align 8, !dbg !877
  %9 = load i64, ptr %a64, align 8, !dbg !878
  %shl = shl i64 %9, 1, !dbg !879
  %10 = load i64, ptr %a_msb, align 8, !dbg !880
  %shr = lshr i64 %10, 3, !dbg !881
  %mul5 = mul i64 %shr, 3, !dbg !882
  %xor6 = xor i64 %shl, %mul5, !dbg !883
  store i64 %xor6, ptr %a64, align 8, !dbg !884
  %11 = load i64, ptr %a64, align 8, !dbg !885
  %12 = load i64, ptr %b32, align 8, !dbg !886
  %shr7 = lshr i64 %12, 1, !dbg !887
  %and8 = and i64 %shr7, 1, !dbg !888
  %mul9 = mul i64 %11, %and8, !dbg !889
  %13 = load i64, ptr %r64, align 8, !dbg !890
  %xor10 = xor i64 %13, %mul9, !dbg !890
  store i64 %xor10, ptr %r64, align 8, !dbg !890
  %14 = load i64, ptr %a64, align 8, !dbg !891
  %15 = load i64, ptr %mask_msb, align 8, !dbg !892
  %and11 = and i64 %14, %15, !dbg !893
  store i64 %and11, ptr %a_msb, align 8, !dbg !894
  %16 = load i64, ptr %a_msb, align 8, !dbg !895
  %17 = load i64, ptr %a64, align 8, !dbg !896
  %xor12 = xor i64 %17, %16, !dbg !896
  store i64 %xor12, ptr %a64, align 8, !dbg !896
  %18 = load i64, ptr %a64, align 8, !dbg !897
  %shl13 = shl i64 %18, 1, !dbg !898
  %19 = load i64, ptr %a_msb, align 8, !dbg !899
  %shr14 = lshr i64 %19, 3, !dbg !900
  %mul15 = mul i64 %shr14, 3, !dbg !901
  %xor16 = xor i64 %shl13, %mul15, !dbg !902
  store i64 %xor16, ptr %a64, align 8, !dbg !903
  %20 = load i64, ptr %a64, align 8, !dbg !904
  %21 = load i64, ptr %b32, align 8, !dbg !905
  %shr17 = lshr i64 %21, 2, !dbg !906
  %and18 = and i64 %shr17, 1, !dbg !907
  %mul19 = mul i64 %20, %and18, !dbg !908
  %22 = load i64, ptr %r64, align 8, !dbg !909
  %xor20 = xor i64 %22, %mul19, !dbg !909
  store i64 %xor20, ptr %r64, align 8, !dbg !909
  %23 = load i64, ptr %a64, align 8, !dbg !910
  %24 = load i64, ptr %mask_msb, align 8, !dbg !911
  %and21 = and i64 %23, %24, !dbg !912
  store i64 %and21, ptr %a_msb, align 8, !dbg !913
  %25 = load i64, ptr %a_msb, align 8, !dbg !914
  %26 = load i64, ptr %a64, align 8, !dbg !915
  %xor22 = xor i64 %26, %25, !dbg !915
  store i64 %xor22, ptr %a64, align 8, !dbg !915
  %27 = load i64, ptr %a64, align 8, !dbg !916
  %shl23 = shl i64 %27, 1, !dbg !917
  %28 = load i64, ptr %a_msb, align 8, !dbg !918
  %shr24 = lshr i64 %28, 3, !dbg !919
  %mul25 = mul i64 %shr24, 3, !dbg !920
  %xor26 = xor i64 %shl23, %mul25, !dbg !921
  store i64 %xor26, ptr %a64, align 8, !dbg !922
  %29 = load i64, ptr %a64, align 8, !dbg !923
  %30 = load i64, ptr %b32, align 8, !dbg !924
  %shr27 = lshr i64 %30, 3, !dbg !925
  %and28 = and i64 %shr27, 1, !dbg !926
  %mul29 = mul i64 %29, %and28, !dbg !927
  %31 = load i64, ptr %r64, align 8, !dbg !928
  %xor30 = xor i64 %31, %mul29, !dbg !928
  store i64 %xor30, ptr %r64, align 8, !dbg !928
  %32 = load i64, ptr %r64, align 8, !dbg !929
  ret i64 %32, !dbg !930
}

; Function Attrs: noinline nounwind optnone
define internal void @mul_add_m_upper_triangular_mat_x_mat(i32 noundef %m_vec_limbs, ptr noundef %bs_mat, ptr noundef %mat, ptr noundef %acc, i32 noundef %bs_mat_rows, i32 noundef %bs_mat_cols, i32 noundef %mat_cols, i32 noundef %triangular) #0 !dbg !931 {
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
    #dbg_declare(ptr %m_vec_limbs.addr, !934, !DIExpression(), !935)
  store ptr %bs_mat, ptr %bs_mat.addr, align 4
    #dbg_declare(ptr %bs_mat.addr, !936, !DIExpression(), !937)
  store ptr %mat, ptr %mat.addr, align 4
    #dbg_declare(ptr %mat.addr, !938, !DIExpression(), !939)
  store ptr %acc, ptr %acc.addr, align 4
    #dbg_declare(ptr %acc.addr, !940, !DIExpression(), !941)
  store i32 %bs_mat_rows, ptr %bs_mat_rows.addr, align 4
    #dbg_declare(ptr %bs_mat_rows.addr, !942, !DIExpression(), !943)
  store i32 %bs_mat_cols, ptr %bs_mat_cols.addr, align 4
    #dbg_declare(ptr %bs_mat_cols.addr, !944, !DIExpression(), !945)
  store i32 %mat_cols, ptr %mat_cols.addr, align 4
    #dbg_declare(ptr %mat_cols.addr, !946, !DIExpression(), !947)
  store i32 %triangular, ptr %triangular.addr, align 4
    #dbg_declare(ptr %triangular.addr, !948, !DIExpression(), !949)
    #dbg_declare(ptr %bs_mat_entries_used, !950, !DIExpression(), !951)
  store i32 0, ptr %bs_mat_entries_used, align 4, !dbg !951
    #dbg_declare(ptr %r, !952, !DIExpression(), !954)
  store i32 0, ptr %r, align 4, !dbg !954
  br label %for.cond, !dbg !955

for.cond:                                         ; preds = %for.inc17, %entry
  %0 = load i32, ptr %r, align 4, !dbg !956
  %1 = load i32, ptr %bs_mat_rows.addr, align 4, !dbg !958
  %cmp = icmp slt i32 %0, %1, !dbg !959
  br i1 %cmp, label %for.body, label %for.end19, !dbg !960

for.body:                                         ; preds = %for.cond
    #dbg_declare(ptr %c, !961, !DIExpression(), !964)
  %2 = load i32, ptr %triangular.addr, align 4, !dbg !965
  %3 = load i32, ptr %r, align 4, !dbg !966
  %mul = mul nsw i32 %2, %3, !dbg !967
  store i32 %mul, ptr %c, align 4, !dbg !964
  br label %for.cond1, !dbg !968

for.cond1:                                        ; preds = %for.inc15, %for.body
  %4 = load i32, ptr %c, align 4, !dbg !969
  %5 = load i32, ptr %bs_mat_cols.addr, align 4, !dbg !971
  %cmp2 = icmp slt i32 %4, %5, !dbg !972
  br i1 %cmp2, label %for.body3, label %for.end16, !dbg !973

for.body3:                                        ; preds = %for.cond1
    #dbg_declare(ptr %k, !974, !DIExpression(), !977)
  store i32 0, ptr %k, align 4, !dbg !977
  br label %for.cond4, !dbg !978

for.cond4:                                        ; preds = %for.inc, %for.body3
  %6 = load i32, ptr %k, align 4, !dbg !979
  %7 = load i32, ptr %mat_cols.addr, align 4, !dbg !981
  %cmp5 = icmp slt i32 %6, %7, !dbg !982
  br i1 %cmp5, label %for.body6, label %for.end, !dbg !983

for.body6:                                        ; preds = %for.cond4
  %8 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !984
  %9 = load ptr, ptr %bs_mat.addr, align 4, !dbg !986
  %10 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !987
  %11 = load i32, ptr %bs_mat_entries_used, align 4, !dbg !988
  %mul7 = mul nsw i32 %10, %11, !dbg !989
  %add.ptr = getelementptr inbounds i64, ptr %9, i32 %mul7, !dbg !990
  %12 = load ptr, ptr %mat.addr, align 4, !dbg !991
  %13 = load i32, ptr %c, align 4, !dbg !992
  %14 = load i32, ptr %mat_cols.addr, align 4, !dbg !993
  %mul8 = mul nsw i32 %13, %14, !dbg !994
  %15 = load i32, ptr %k, align 4, !dbg !995
  %add = add nsw i32 %mul8, %15, !dbg !996
  %arrayidx = getelementptr inbounds i8, ptr %12, i32 %add, !dbg !991
  %16 = load i8, ptr %arrayidx, align 1, !dbg !991
  %17 = load ptr, ptr %acc.addr, align 4, !dbg !997
  %18 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !998
  %19 = load i32, ptr %r, align 4, !dbg !999
  %20 = load i32, ptr %mat_cols.addr, align 4, !dbg !1000
  %mul9 = mul nsw i32 %19, %20, !dbg !1001
  %21 = load i32, ptr %k, align 4, !dbg !1002
  %add10 = add nsw i32 %mul9, %21, !dbg !1003
  %mul11 = mul nsw i32 %18, %add10, !dbg !1004
  %add.ptr12 = getelementptr inbounds i64, ptr %17, i32 %mul11, !dbg !1005
  call void @m_vec_mul_add(i32 noundef %8, ptr noundef %add.ptr, i8 noundef zeroext %16, ptr noundef %add.ptr12) #5, !dbg !1006
  br label %for.inc, !dbg !1007

for.inc:                                          ; preds = %for.body6
  %22 = load i32, ptr %k, align 4, !dbg !1008
  %add13 = add nsw i32 %22, 1, !dbg !1008
  store i32 %add13, ptr %k, align 4, !dbg !1008
  br label %for.cond4, !dbg !1009, !llvm.loop !1010

for.end:                                          ; preds = %for.cond4
  %23 = load i32, ptr %bs_mat_entries_used, align 4, !dbg !1012
  %add14 = add nsw i32 %23, 1, !dbg !1012
  store i32 %add14, ptr %bs_mat_entries_used, align 4, !dbg !1012
  br label %for.inc15, !dbg !1013

for.inc15:                                        ; preds = %for.end
  %24 = load i32, ptr %c, align 4, !dbg !1014
  %inc = add nsw i32 %24, 1, !dbg !1014
  store i32 %inc, ptr %c, align 4, !dbg !1014
  br label %for.cond1, !dbg !1015, !llvm.loop !1016

for.end16:                                        ; preds = %for.cond1
  br label %for.inc17, !dbg !1018

for.inc17:                                        ; preds = %for.end16
  %25 = load i32, ptr %r, align 4, !dbg !1019
  %inc18 = add nsw i32 %25, 1, !dbg !1019
  store i32 %inc18, ptr %r, align 4, !dbg !1019
  br label %for.cond, !dbg !1020, !llvm.loop !1021

for.end19:                                        ; preds = %for.cond
  ret void, !dbg !1023
}

declare dso_local i32 @AES_128_CTR(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #4

; Function Attrs: noinline nounwind optnone
define internal void @unpack_m_vecs(ptr noundef %in, ptr noundef %out, i32 noundef %vecs, i32 noundef %m) #0 !dbg !1024 {
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
    #dbg_declare(ptr %in.addr, !1027, !DIExpression(), !1028)
  store ptr %out, ptr %out.addr, align 4
    #dbg_declare(ptr %out.addr, !1029, !DIExpression(), !1030)
  store i32 %vecs, ptr %vecs.addr, align 4
    #dbg_declare(ptr %vecs.addr, !1031, !DIExpression(), !1032)
  store i32 %m, ptr %m.addr, align 4
    #dbg_declare(ptr %m.addr, !1033, !DIExpression(), !1034)
    #dbg_declare(ptr %m_vec_limbs, !1035, !DIExpression(), !1036)
  %0 = load i32, ptr %m.addr, align 4, !dbg !1037
  %add = add nsw i32 %0, 15, !dbg !1038
  %div = sdiv i32 %add, 16, !dbg !1039
  store i32 %div, ptr %m_vec_limbs, align 4, !dbg !1036
    #dbg_declare(ptr %_out, !1040, !DIExpression(), !1041)
  %1 = load ptr, ptr %out.addr, align 4, !dbg !1042
  store ptr %1, ptr %_out, align 4, !dbg !1041
    #dbg_declare(ptr %tmp, !1043, !DIExpression(), !1047)
  call void @llvm.memset.p0.i32(ptr align 8 %tmp, i8 0, i32 72, i1 false), !dbg !1047
    #dbg_declare(ptr %i, !1048, !DIExpression(), !1050)
  %2 = load i32, ptr %vecs.addr, align 4, !dbg !1051
  %sub = sub nsw i32 %2, 1, !dbg !1052
  store i32 %sub, ptr %i, align 4, !dbg !1050
  br label %for.cond, !dbg !1053

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, ptr %i, align 4, !dbg !1054
  %cmp = icmp sge i32 %3, 0, !dbg !1056
  br i1 %cmp, label %for.body, label %for.end, !dbg !1057

for.body:                                         ; preds = %for.cond
  %arraydecay = getelementptr inbounds [9 x i64], ptr %tmp, i32 0, i32 0, !dbg !1058
  %4 = load ptr, ptr %in.addr, align 4, !dbg !1060
  %5 = load i32, ptr %i, align 4, !dbg !1061
  %6 = load i32, ptr %m.addr, align 4, !dbg !1062
  %mul = mul nsw i32 %5, %6, !dbg !1063
  %div1 = sdiv i32 %mul, 2, !dbg !1064
  %add.ptr = getelementptr inbounds i8, ptr %4, i32 %div1, !dbg !1065
  %7 = load i32, ptr %m.addr, align 4, !dbg !1066
  %div2 = sdiv i32 %7, 2, !dbg !1067
  %call = call ptr @memcpy(ptr noundef %arraydecay, ptr noundef %add.ptr, i32 noundef %div2) #5, !dbg !1068
  %8 = load ptr, ptr %_out, align 4, !dbg !1069
  %9 = load i32, ptr %i, align 4, !dbg !1070
  %10 = load i32, ptr %m_vec_limbs, align 4, !dbg !1071
  %mul3 = mul nsw i32 %9, %10, !dbg !1072
  %mul4 = mul i32 %mul3, 8, !dbg !1073
  %add.ptr5 = getelementptr inbounds nuw i8, ptr %8, i32 %mul4, !dbg !1074
  %arraydecay6 = getelementptr inbounds [9 x i64], ptr %tmp, i32 0, i32 0, !dbg !1075
  %11 = load i32, ptr %m_vec_limbs, align 4, !dbg !1076
  %mul7 = mul i32 %11, 8, !dbg !1077
  %call8 = call ptr @memcpy(ptr noundef %add.ptr5, ptr noundef %arraydecay6, i32 noundef %mul7) #5, !dbg !1078
  br label %for.inc, !dbg !1079

for.inc:                                          ; preds = %for.body
  %12 = load i32, ptr %i, align 4, !dbg !1080
  %dec = add nsw i32 %12, -1, !dbg !1080
  store i32 %dec, ptr %i, align 4, !dbg !1080
  br label %for.cond, !dbg !1081, !llvm.loop !1082

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1084
}

; Function Attrs: noinline nounwind optnone
define dso_local i32 @mayo_expand_sk(ptr noundef %p, ptr noundef %csk, ptr noundef %sk) #0 !dbg !1085 {
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
    #dbg_declare(ptr %p.addr, !1094, !DIExpression(), !1095)
  store ptr %csk, ptr %csk.addr, align 4
    #dbg_declare(ptr %csk.addr, !1096, !DIExpression(), !1097)
  store ptr %sk, ptr %sk.addr, align 4
    #dbg_declare(ptr %sk.addr, !1098, !DIExpression(), !1099)
    #dbg_declare(ptr %ret, !1100, !DIExpression(), !1101)
  store i32 0, ptr %ret, align 4, !dbg !1101
    #dbg_declare(ptr %S, !1102, !DIExpression(), !1103)
    #dbg_declare(ptr %P, !1104, !DIExpression(), !1105)
  %0 = load ptr, ptr %sk.addr, align 4, !dbg !1106
  %p1 = getelementptr inbounds nuw %struct.sk_t, ptr %0, i32 0, i32 0, !dbg !1107
  %arraydecay = getelementptr inbounds [113103 x i64], ptr %p1, i32 0, i32 0, !dbg !1106
  store ptr %arraydecay, ptr %P, align 4, !dbg !1105
    #dbg_declare(ptr %O, !1108, !DIExpression(), !1109)
  %1 = load ptr, ptr %sk.addr, align 4, !dbg !1110
  %O2 = getelementptr inbounds nuw %struct.sk_t, ptr %1, i32 0, i32 1, !dbg !1111
  %arraydecay3 = getelementptr inbounds [2414 x i8], ptr %O2, i32 0, i32 0, !dbg !1110
  store ptr %arraydecay3, ptr %O, align 4, !dbg !1109
    #dbg_declare(ptr %param_o, !1112, !DIExpression(), !1113)
  %2 = load ptr, ptr %p.addr, align 4, !dbg !1114
  %o = getelementptr inbounds nuw %struct.mayo_params_t, ptr %2, i32 0, i32 2, !dbg !1115
  %3 = load i32, ptr %o, align 4, !dbg !1115
  store i32 %3, ptr %param_o, align 4, !dbg !1113
    #dbg_declare(ptr %param_v, !1116, !DIExpression(), !1117)
  %4 = load ptr, ptr %p.addr, align 4, !dbg !1118
  %n = getelementptr inbounds nuw %struct.mayo_params_t, ptr %4, i32 0, i32 1, !dbg !1119
  %5 = load i32, ptr %n, align 4, !dbg !1119
  %6 = load ptr, ptr %p.addr, align 4, !dbg !1118
  %o4 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %6, i32 0, i32 2, !dbg !1119
  %7 = load i32, ptr %o4, align 4, !dbg !1119
  %sub = sub nsw i32 %5, %7, !dbg !1119
  store i32 %sub, ptr %param_v, align 4, !dbg !1117
    #dbg_declare(ptr %param_O_bytes, !1120, !DIExpression(), !1121)
  %8 = load ptr, ptr %p.addr, align 4, !dbg !1122
  %O_bytes = getelementptr inbounds nuw %struct.mayo_params_t, ptr %8, i32 0, i32 7, !dbg !1123
  %9 = load i32, ptr %O_bytes, align 4, !dbg !1123
  store i32 %9, ptr %param_O_bytes, align 4, !dbg !1121
    #dbg_declare(ptr %param_pk_seed_bytes, !1124, !DIExpression(), !1125)
  %10 = load ptr, ptr %p.addr, align 4, !dbg !1126
  %pk_seed_bytes = getelementptr inbounds nuw %struct.mayo_params_t, ptr %10, i32 0, i32 20, !dbg !1127
  %11 = load i32, ptr %pk_seed_bytes, align 4, !dbg !1127
  store i32 %11, ptr %param_pk_seed_bytes, align 4, !dbg !1125
    #dbg_declare(ptr %param_sk_seed_bytes, !1128, !DIExpression(), !1129)
  %12 = load ptr, ptr %p.addr, align 4, !dbg !1130
  %sk_seed_bytes = getelementptr inbounds nuw %struct.mayo_params_t, ptr %12, i32 0, i32 18, !dbg !1131
  %13 = load i32, ptr %sk_seed_bytes, align 4, !dbg !1131
  store i32 %13, ptr %param_sk_seed_bytes, align 4, !dbg !1129
    #dbg_declare(ptr %seed_sk, !1132, !DIExpression(), !1133)
  %14 = load ptr, ptr %csk.addr, align 4, !dbg !1134
  store ptr %14, ptr %seed_sk, align 4, !dbg !1133
    #dbg_declare(ptr %seed_pk, !1135, !DIExpression(), !1136)
  %arraydecay5 = getelementptr inbounds [868 x i8], ptr %S, i32 0, i32 0, !dbg !1137
  store ptr %arraydecay5, ptr %seed_pk, align 4, !dbg !1136
  %arraydecay6 = getelementptr inbounds [868 x i8], ptr %S, i32 0, i32 0, !dbg !1138
  %15 = load i32, ptr %param_pk_seed_bytes, align 4, !dbg !1139
  %16 = load i32, ptr %param_O_bytes, align 4, !dbg !1140
  %add = add nsw i32 %15, %16, !dbg !1141
  %17 = load ptr, ptr %seed_sk, align 4, !dbg !1142
  %18 = load i32, ptr %param_sk_seed_bytes, align 4, !dbg !1143
  %call = call i32 @shake256(ptr noundef %arraydecay6, i32 noundef %add, ptr noundef %17, i32 noundef %18) #5, !dbg !1144
  %arraydecay7 = getelementptr inbounds [868 x i8], ptr %S, i32 0, i32 0, !dbg !1145
  %19 = load i32, ptr %param_pk_seed_bytes, align 4, !dbg !1146
  %add.ptr = getelementptr inbounds i8, ptr %arraydecay7, i32 %19, !dbg !1147
  %20 = load ptr, ptr %O, align 4, !dbg !1148
  %21 = load i32, ptr %param_v, align 4, !dbg !1149
  %22 = load i32, ptr %param_o, align 4, !dbg !1150
  %mul = mul nsw i32 %21, %22, !dbg !1151
  call void @decode(ptr noundef %add.ptr, ptr noundef %20, i32 noundef %mul) #5, !dbg !1152
  %23 = load ptr, ptr %p.addr, align 4, !dbg !1153
  %24 = load ptr, ptr %P, align 4, !dbg !1154
  %25 = load ptr, ptr %seed_pk, align 4, !dbg !1155
  call void @expand_P1_P2(ptr noundef %23, ptr noundef %24, ptr noundef %25) #5, !dbg !1156
    #dbg_declare(ptr %P2, !1157, !DIExpression(), !1158)
  %26 = load ptr, ptr %P, align 4, !dbg !1159
  %27 = load ptr, ptr %p.addr, align 4, !dbg !1160
  %n8 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %27, i32 0, i32 1, !dbg !1161
  %28 = load i32, ptr %n8, align 4, !dbg !1161
  %29 = load ptr, ptr %p.addr, align 4, !dbg !1160
  %o9 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %29, i32 0, i32 2, !dbg !1161
  %30 = load i32, ptr %o9, align 4, !dbg !1161
  %sub10 = sub nsw i32 %28, %30, !dbg !1161
  %31 = load ptr, ptr %p.addr, align 4, !dbg !1160
  %n11 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %31, i32 0, i32 1, !dbg !1161
  %32 = load i32, ptr %n11, align 4, !dbg !1161
  %33 = load ptr, ptr %p.addr, align 4, !dbg !1160
  %o12 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %33, i32 0, i32 2, !dbg !1161
  %34 = load i32, ptr %o12, align 4, !dbg !1161
  %sub13 = sub nsw i32 %32, %34, !dbg !1161
  %add14 = add nsw i32 %sub13, 1, !dbg !1161
  %mul15 = mul nsw i32 %sub10, %add14, !dbg !1161
  %div = sdiv i32 %mul15, 2, !dbg !1161
  %35 = load ptr, ptr %p.addr, align 4, !dbg !1160
  %m_vec_limbs = getelementptr inbounds nuw %struct.mayo_params_t, ptr %35, i32 0, i32 21, !dbg !1161
  %36 = load i32, ptr %m_vec_limbs, align 4, !dbg !1161
  %mul16 = mul nsw i32 %div, %36, !dbg !1161
  %add.ptr17 = getelementptr inbounds i64, ptr %26, i32 %mul16, !dbg !1162
  store ptr %add.ptr17, ptr %P2, align 4, !dbg !1158
    #dbg_declare(ptr %P1, !1163, !DIExpression(), !1164)
  %37 = load ptr, ptr %P, align 4, !dbg !1165
  store ptr %37, ptr %P1, align 4, !dbg !1164
    #dbg_declare(ptr %L, !1166, !DIExpression(), !1167)
  %38 = load ptr, ptr %P2, align 4, !dbg !1168
  store ptr %38, ptr %L, align 4, !dbg !1167
  %39 = load ptr, ptr %p.addr, align 4, !dbg !1169
  %40 = load ptr, ptr %P1, align 4, !dbg !1170
  %41 = load ptr, ptr %O, align 4, !dbg !1171
  %42 = load ptr, ptr %L, align 4, !dbg !1172
  call void @P1P1t_times_O(ptr noundef %39, ptr noundef %40, ptr noundef %41, ptr noundef %42) #5, !dbg !1173
  %arraydecay18 = getelementptr inbounds [868 x i8], ptr %S, i32 0, i32 0, !dbg !1174
  call void @mayo_secure_clear(ptr noundef %arraydecay18, i32 noundef 868) #5, !dbg !1175
  %43 = load i32, ptr %ret, align 4, !dbg !1176
  ret i32 %43, !dbg !1177
}

; Function Attrs: noinline nounwind optnone
define internal void @P1P1t_times_O(ptr noundef %p, ptr noundef %P1, ptr noundef %O, ptr noundef %acc) #0 !dbg !1178 {
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
    #dbg_declare(ptr %p.addr, !1179, !DIExpression(), !1180)
  store ptr %P1, ptr %P1.addr, align 4
    #dbg_declare(ptr %P1.addr, !1181, !DIExpression(), !1182)
  store ptr %O, ptr %O.addr, align 4
    #dbg_declare(ptr %O.addr, !1183, !DIExpression(), !1184)
  store ptr %acc, ptr %acc.addr, align 4
    #dbg_declare(ptr %acc.addr, !1185, !DIExpression(), !1186)
    #dbg_declare(ptr %param_o, !1187, !DIExpression(), !1188)
  %0 = load ptr, ptr %p.addr, align 4, !dbg !1189
  %o = getelementptr inbounds nuw %struct.mayo_params_t, ptr %0, i32 0, i32 2, !dbg !1190
  %1 = load i32, ptr %o, align 4, !dbg !1190
  store i32 %1, ptr %param_o, align 4, !dbg !1188
    #dbg_declare(ptr %param_v, !1191, !DIExpression(), !1192)
  %2 = load ptr, ptr %p.addr, align 4, !dbg !1193
  %n = getelementptr inbounds nuw %struct.mayo_params_t, ptr %2, i32 0, i32 1, !dbg !1194
  %3 = load i32, ptr %n, align 4, !dbg !1194
  %4 = load ptr, ptr %p.addr, align 4, !dbg !1193
  %o1 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %4, i32 0, i32 2, !dbg !1194
  %5 = load i32, ptr %o1, align 4, !dbg !1194
  %sub = sub nsw i32 %3, %5, !dbg !1194
  store i32 %sub, ptr %param_v, align 4, !dbg !1192
    #dbg_declare(ptr %m_vec_limbs, !1195, !DIExpression(), !1196)
  %6 = load ptr, ptr %p.addr, align 4, !dbg !1197
  %m_vec_limbs2 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %6, i32 0, i32 21, !dbg !1198
  %7 = load i32, ptr %m_vec_limbs2, align 4, !dbg !1198
  store i32 %7, ptr %m_vec_limbs, align 4, !dbg !1196
    #dbg_declare(ptr %bs_mat_entries_used, !1199, !DIExpression(), !1200)
  store i32 0, ptr %bs_mat_entries_used, align 4, !dbg !1200
    #dbg_declare(ptr %r, !1201, !DIExpression(), !1203)
  store i32 0, ptr %r, align 4, !dbg !1203
  br label %for.cond, !dbg !1204

for.cond:                                         ; preds = %for.inc29, %entry
  %8 = load i32, ptr %r, align 4, !dbg !1205
  %9 = load i32, ptr %param_v, align 4, !dbg !1207
  %cmp = icmp slt i32 %8, %9, !dbg !1208
  br i1 %cmp, label %for.body, label %for.end31, !dbg !1209

for.body:                                         ; preds = %for.cond
    #dbg_declare(ptr %c, !1210, !DIExpression(), !1213)
  %10 = load i32, ptr %r, align 4, !dbg !1214
  store i32 %10, ptr %c, align 4, !dbg !1213
  br label %for.cond3, !dbg !1215

for.cond3:                                        ; preds = %for.inc27, %for.body
  %11 = load i32, ptr %c, align 4, !dbg !1216
  %12 = load i32, ptr %param_v, align 4, !dbg !1218
  %cmp4 = icmp slt i32 %11, %12, !dbg !1219
  br i1 %cmp4, label %for.body5, label %for.end28, !dbg !1220

for.body5:                                        ; preds = %for.cond3
  %13 = load i32, ptr %c, align 4, !dbg !1221
  %14 = load i32, ptr %r, align 4, !dbg !1224
  %cmp6 = icmp eq i32 %13, %14, !dbg !1225
  br i1 %cmp6, label %if.then, label %if.end, !dbg !1225

if.then:                                          ; preds = %for.body5
  %15 = load i32, ptr %bs_mat_entries_used, align 4, !dbg !1226
  %add = add nsw i32 %15, 1, !dbg !1226
  store i32 %add, ptr %bs_mat_entries_used, align 4, !dbg !1226
  br label %for.inc27, !dbg !1228

if.end:                                           ; preds = %for.body5
    #dbg_declare(ptr %k, !1229, !DIExpression(), !1231)
  store i32 0, ptr %k, align 4, !dbg !1231
  br label %for.cond7, !dbg !1232

for.cond7:                                        ; preds = %for.inc, %if.end
  %16 = load i32, ptr %k, align 4, !dbg !1233
  %17 = load i32, ptr %param_o, align 4, !dbg !1235
  %cmp8 = icmp slt i32 %16, %17, !dbg !1236
  br i1 %cmp8, label %for.body9, label %for.end, !dbg !1237

for.body9:                                        ; preds = %for.cond7
  %18 = load i32, ptr %m_vec_limbs, align 4, !dbg !1238
  %19 = load ptr, ptr %P1.addr, align 4, !dbg !1240
  %20 = load i32, ptr %m_vec_limbs, align 4, !dbg !1241
  %21 = load i32, ptr %bs_mat_entries_used, align 4, !dbg !1242
  %mul = mul nsw i32 %20, %21, !dbg !1243
  %add.ptr = getelementptr inbounds i64, ptr %19, i32 %mul, !dbg !1244
  %22 = load ptr, ptr %O.addr, align 4, !dbg !1245
  %23 = load i32, ptr %c, align 4, !dbg !1246
  %24 = load i32, ptr %param_o, align 4, !dbg !1247
  %mul10 = mul nsw i32 %23, %24, !dbg !1248
  %25 = load i32, ptr %k, align 4, !dbg !1249
  %add11 = add nsw i32 %mul10, %25, !dbg !1250
  %arrayidx = getelementptr inbounds i8, ptr %22, i32 %add11, !dbg !1245
  %26 = load i8, ptr %arrayidx, align 1, !dbg !1245
  %27 = load ptr, ptr %acc.addr, align 4, !dbg !1251
  %28 = load i32, ptr %m_vec_limbs, align 4, !dbg !1252
  %29 = load i32, ptr %r, align 4, !dbg !1253
  %30 = load i32, ptr %param_o, align 4, !dbg !1254
  %mul12 = mul nsw i32 %29, %30, !dbg !1255
  %31 = load i32, ptr %k, align 4, !dbg !1256
  %add13 = add nsw i32 %mul12, %31, !dbg !1257
  %mul14 = mul nsw i32 %28, %add13, !dbg !1258
  %add.ptr15 = getelementptr inbounds i64, ptr %27, i32 %mul14, !dbg !1259
  call void @m_vec_mul_add(i32 noundef %18, ptr noundef %add.ptr, i8 noundef zeroext %26, ptr noundef %add.ptr15) #5, !dbg !1260
  %32 = load i32, ptr %m_vec_limbs, align 4, !dbg !1261
  %33 = load ptr, ptr %P1.addr, align 4, !dbg !1262
  %34 = load i32, ptr %m_vec_limbs, align 4, !dbg !1263
  %35 = load i32, ptr %bs_mat_entries_used, align 4, !dbg !1264
  %mul16 = mul nsw i32 %34, %35, !dbg !1265
  %add.ptr17 = getelementptr inbounds i64, ptr %33, i32 %mul16, !dbg !1266
  %36 = load ptr, ptr %O.addr, align 4, !dbg !1267
  %37 = load i32, ptr %r, align 4, !dbg !1268
  %38 = load i32, ptr %param_o, align 4, !dbg !1269
  %mul18 = mul nsw i32 %37, %38, !dbg !1270
  %39 = load i32, ptr %k, align 4, !dbg !1271
  %add19 = add nsw i32 %mul18, %39, !dbg !1272
  %arrayidx20 = getelementptr inbounds i8, ptr %36, i32 %add19, !dbg !1267
  %40 = load i8, ptr %arrayidx20, align 1, !dbg !1267
  %41 = load ptr, ptr %acc.addr, align 4, !dbg !1273
  %42 = load i32, ptr %m_vec_limbs, align 4, !dbg !1274
  %43 = load i32, ptr %c, align 4, !dbg !1275
  %44 = load i32, ptr %param_o, align 4, !dbg !1276
  %mul21 = mul nsw i32 %43, %44, !dbg !1277
  %45 = load i32, ptr %k, align 4, !dbg !1278
  %add22 = add nsw i32 %mul21, %45, !dbg !1279
  %mul23 = mul nsw i32 %42, %add22, !dbg !1280
  %add.ptr24 = getelementptr inbounds i64, ptr %41, i32 %mul23, !dbg !1281
  call void @m_vec_mul_add(i32 noundef %32, ptr noundef %add.ptr17, i8 noundef zeroext %40, ptr noundef %add.ptr24) #5, !dbg !1282
  br label %for.inc, !dbg !1283

for.inc:                                          ; preds = %for.body9
  %46 = load i32, ptr %k, align 4, !dbg !1284
  %add25 = add nsw i32 %46, 1, !dbg !1284
  store i32 %add25, ptr %k, align 4, !dbg !1284
  br label %for.cond7, !dbg !1285, !llvm.loop !1286

for.end:                                          ; preds = %for.cond7
  %47 = load i32, ptr %bs_mat_entries_used, align 4, !dbg !1288
  %add26 = add nsw i32 %47, 1, !dbg !1288
  store i32 %add26, ptr %bs_mat_entries_used, align 4, !dbg !1288
  br label %for.inc27, !dbg !1289

for.inc27:                                        ; preds = %for.end, %if.then
  %48 = load i32, ptr %c, align 4, !dbg !1290
  %inc = add nsw i32 %48, 1, !dbg !1290
  store i32 %inc, ptr %c, align 4, !dbg !1290
  br label %for.cond3, !dbg !1291, !llvm.loop !1292

for.end28:                                        ; preds = %for.cond3
  br label %for.inc29, !dbg !1294

for.inc29:                                        ; preds = %for.end28
  %49 = load i32, ptr %r, align 4, !dbg !1295
  %inc30 = add nsw i32 %49, 1, !dbg !1295
  store i32 %inc30, ptr %r, align 4, !dbg !1295
  br label %for.cond, !dbg !1296, !llvm.loop !1297

for.end31:                                        ; preds = %for.cond
  ret void, !dbg !1299
}

; Function Attrs: noinline nounwind optnone
define dso_local i32 @mayo_sign_signature(ptr noundef %p, ptr noundef %sig, ptr noundef %siglen, ptr noundef %m, i32 noundef %mlen, ptr noundef %csk) #0 !dbg !1300 {
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
    #dbg_declare(ptr %p.addr, !1304, !DIExpression(), !1305)
  store ptr %sig, ptr %sig.addr, align 4
    #dbg_declare(ptr %sig.addr, !1306, !DIExpression(), !1307)
  store ptr %siglen, ptr %siglen.addr, align 4
    #dbg_declare(ptr %siglen.addr, !1308, !DIExpression(), !1309)
  store ptr %m, ptr %m.addr, align 4
    #dbg_declare(ptr %m.addr, !1310, !DIExpression(), !1311)
  store i32 %mlen, ptr %mlen.addr, align 4
    #dbg_declare(ptr %mlen.addr, !1312, !DIExpression(), !1313)
  store ptr %csk, ptr %csk.addr, align 4
    #dbg_declare(ptr %csk.addr, !1314, !DIExpression(), !1315)
    #dbg_declare(ptr %ret, !1316, !DIExpression(), !1317)
  store i32 0, ptr %ret, align 4, !dbg !1317
    #dbg_declare(ptr %tenc, !1318, !DIExpression(), !1322)
    #dbg_declare(ptr %t, !1323, !DIExpression(), !1327)
    #dbg_declare(ptr %y, !1328, !DIExpression(), !1329)
    #dbg_declare(ptr %salt, !1330, !DIExpression(), !1334)
    #dbg_declare(ptr %V, !1335, !DIExpression(), !1339)
    #dbg_declare(ptr %Vdec, !1340, !DIExpression(), !1344)
    #dbg_declare(ptr %A, !1345, !DIExpression(), !1349)
  call void @llvm.memset.p0.i32(ptr align 1 %A, i8 0, i32 29520, i1 false), !dbg !1349
    #dbg_declare(ptr %x, !1350, !DIExpression(), !1354)
    #dbg_declare(ptr %r, !1355, !DIExpression(), !1359)
  call void @llvm.memset.p0.i32(ptr align 1 %r, i8 0, i32 205, i1 false), !dbg !1359
    #dbg_declare(ptr %s, !1360, !DIExpression(), !1361)
    #dbg_declare(ptr %seed_sk, !1362, !DIExpression(), !1363)
    #dbg_declare(ptr %sk, !1364, !DIExpression(), !1365)
    #dbg_declare(ptr %Ox, !1366, !DIExpression(), !1367)
    #dbg_declare(ptr %tmp, !1368, !DIExpression(), !1372)
    #dbg_declare(ptr %ctrbyte, !1373, !DIExpression(), !1374)
    #dbg_declare(ptr %vi, !1375, !DIExpression(), !1376)
    #dbg_declare(ptr %param_m, !1377, !DIExpression(), !1378)
  %0 = load ptr, ptr %p.addr, align 4, !dbg !1379
  %m1 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %0, i32 0, i32 0, !dbg !1380
  %1 = load i32, ptr %m1, align 4, !dbg !1380
  store i32 %1, ptr %param_m, align 4, !dbg !1378
    #dbg_declare(ptr %param_n, !1381, !DIExpression(), !1382)
  %2 = load ptr, ptr %p.addr, align 4, !dbg !1383
  %n = getelementptr inbounds nuw %struct.mayo_params_t, ptr %2, i32 0, i32 1, !dbg !1384
  %3 = load i32, ptr %n, align 4, !dbg !1384
  store i32 %3, ptr %param_n, align 4, !dbg !1382
    #dbg_declare(ptr %param_o, !1385, !DIExpression(), !1386)
  %4 = load ptr, ptr %p.addr, align 4, !dbg !1387
  %o = getelementptr inbounds nuw %struct.mayo_params_t, ptr %4, i32 0, i32 2, !dbg !1388
  %5 = load i32, ptr %o, align 4, !dbg !1388
  store i32 %5, ptr %param_o, align 4, !dbg !1386
    #dbg_declare(ptr %param_k, !1389, !DIExpression(), !1390)
  %6 = load ptr, ptr %p.addr, align 4, !dbg !1391
  %k = getelementptr inbounds nuw %struct.mayo_params_t, ptr %6, i32 0, i32 3, !dbg !1392
  %7 = load i32, ptr %k, align 4, !dbg !1392
  store i32 %7, ptr %param_k, align 4, !dbg !1390
    #dbg_declare(ptr %param_v, !1393, !DIExpression(), !1394)
  %8 = load ptr, ptr %p.addr, align 4, !dbg !1395
  %n2 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %8, i32 0, i32 1, !dbg !1396
  %9 = load i32, ptr %n2, align 4, !dbg !1396
  %10 = load ptr, ptr %p.addr, align 4, !dbg !1395
  %o3 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %10, i32 0, i32 2, !dbg !1396
  %11 = load i32, ptr %o3, align 4, !dbg !1396
  %sub = sub nsw i32 %9, %11, !dbg !1396
  store i32 %sub, ptr %param_v, align 4, !dbg !1394
    #dbg_declare(ptr %param_m_bytes, !1397, !DIExpression(), !1398)
  %12 = load ptr, ptr %p.addr, align 4, !dbg !1399
  %m_bytes = getelementptr inbounds nuw %struct.mayo_params_t, ptr %12, i32 0, i32 6, !dbg !1400
  %13 = load i32, ptr %m_bytes, align 4, !dbg !1400
  store i32 %13, ptr %param_m_bytes, align 4, !dbg !1398
    #dbg_declare(ptr %param_v_bytes, !1401, !DIExpression(), !1402)
  %14 = load ptr, ptr %p.addr, align 4, !dbg !1403
  %v_bytes = getelementptr inbounds nuw %struct.mayo_params_t, ptr %14, i32 0, i32 8, !dbg !1404
  %15 = load i32, ptr %v_bytes, align 4, !dbg !1404
  store i32 %15, ptr %param_v_bytes, align 4, !dbg !1402
    #dbg_declare(ptr %param_r_bytes, !1405, !DIExpression(), !1406)
  %16 = load ptr, ptr %p.addr, align 4, !dbg !1407
  %r_bytes = getelementptr inbounds nuw %struct.mayo_params_t, ptr %16, i32 0, i32 9, !dbg !1408
  %17 = load i32, ptr %r_bytes, align 4, !dbg !1408
  store i32 %17, ptr %param_r_bytes, align 4, !dbg !1406
    #dbg_declare(ptr %param_sig_bytes, !1409, !DIExpression(), !1410)
  %18 = load ptr, ptr %p.addr, align 4, !dbg !1411
  %sig_bytes = getelementptr inbounds nuw %struct.mayo_params_t, ptr %18, i32 0, i32 16, !dbg !1412
  %19 = load i32, ptr %sig_bytes, align 4, !dbg !1412
  store i32 %19, ptr %param_sig_bytes, align 4, !dbg !1410
    #dbg_declare(ptr %param_A_cols, !1413, !DIExpression(), !1414)
  %20 = load ptr, ptr %p.addr, align 4, !dbg !1415
  %k4 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %20, i32 0, i32 3, !dbg !1416
  %21 = load i32, ptr %k4, align 4, !dbg !1416
  %22 = load ptr, ptr %p.addr, align 4, !dbg !1415
  %o5 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %22, i32 0, i32 2, !dbg !1416
  %23 = load i32, ptr %o5, align 4, !dbg !1416
  %mul = mul nsw i32 %21, %23, !dbg !1416
  %add = add nsw i32 %mul, 1, !dbg !1416
  store i32 %add, ptr %param_A_cols, align 4, !dbg !1414
    #dbg_declare(ptr %param_digest_bytes, !1417, !DIExpression(), !1418)
  %24 = load ptr, ptr %p.addr, align 4, !dbg !1419
  %digest_bytes = getelementptr inbounds nuw %struct.mayo_params_t, ptr %24, i32 0, i32 19, !dbg !1420
  %25 = load i32, ptr %digest_bytes, align 4, !dbg !1420
  store i32 %25, ptr %param_digest_bytes, align 4, !dbg !1418
    #dbg_declare(ptr %param_sk_seed_bytes, !1421, !DIExpression(), !1422)
  %26 = load ptr, ptr %p.addr, align 4, !dbg !1423
  %sk_seed_bytes = getelementptr inbounds nuw %struct.mayo_params_t, ptr %26, i32 0, i32 18, !dbg !1424
  %27 = load i32, ptr %sk_seed_bytes, align 4, !dbg !1424
  store i32 %27, ptr %param_sk_seed_bytes, align 4, !dbg !1422
    #dbg_declare(ptr %param_salt_bytes, !1425, !DIExpression(), !1426)
  %28 = load ptr, ptr %p.addr, align 4, !dbg !1427
  %salt_bytes = getelementptr inbounds nuw %struct.mayo_params_t, ptr %28, i32 0, i32 17, !dbg !1428
  %29 = load i32, ptr %salt_bytes, align 4, !dbg !1428
  store i32 %29, ptr %param_salt_bytes, align 4, !dbg !1426
  %30 = load ptr, ptr %p.addr, align 4, !dbg !1429
  %31 = load ptr, ptr %csk.addr, align 4, !dbg !1430
  %call = call i32 @mayo_expand_sk(ptr noundef %30, ptr noundef %31, ptr noundef %sk) #5, !dbg !1431
  store i32 %call, ptr %ret, align 4, !dbg !1432
  %32 = load i32, ptr %ret, align 4, !dbg !1433
  %cmp = icmp ne i32 %32, 0, !dbg !1435
  br i1 %cmp, label %if.then, label %if.end, !dbg !1435

if.then:                                          ; preds = %entry
  br label %err, !dbg !1436

if.end:                                           ; preds = %entry
  %33 = load ptr, ptr %csk.addr, align 4, !dbg !1438
  store ptr %33, ptr %seed_sk, align 4, !dbg !1439
  %arraydecay = getelementptr inbounds [145 x i8], ptr %tmp, i32 0, i32 0, !dbg !1440
  %34 = load i32, ptr %param_digest_bytes, align 4, !dbg !1441
  %35 = load ptr, ptr %m.addr, align 4, !dbg !1442
  %36 = load i32, ptr %mlen.addr, align 4, !dbg !1443
  %call6 = call i32 @shake256(ptr noundef %arraydecay, i32 noundef %34, ptr noundef %35, i32 noundef %36) #5, !dbg !1444
    #dbg_declare(ptr %P1, !1445, !DIExpression(), !1446)
  %p7 = getelementptr inbounds nuw %struct.sk_t, ptr %sk, i32 0, i32 0, !dbg !1447
  %arraydecay8 = getelementptr inbounds [113103 x i64], ptr %p7, i32 0, i32 0, !dbg !1448
  store ptr %arraydecay8, ptr %P1, align 4, !dbg !1446
    #dbg_declare(ptr %L, !1449, !DIExpression(), !1450)
  %37 = load ptr, ptr %P1, align 4, !dbg !1451
  %38 = load ptr, ptr %p.addr, align 4, !dbg !1452
  %n9 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %38, i32 0, i32 1, !dbg !1453
  %39 = load i32, ptr %n9, align 4, !dbg !1453
  %40 = load ptr, ptr %p.addr, align 4, !dbg !1452
  %o10 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %40, i32 0, i32 2, !dbg !1453
  %41 = load i32, ptr %o10, align 4, !dbg !1453
  %sub11 = sub nsw i32 %39, %41, !dbg !1453
  %42 = load ptr, ptr %p.addr, align 4, !dbg !1452
  %n12 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %42, i32 0, i32 1, !dbg !1453
  %43 = load i32, ptr %n12, align 4, !dbg !1453
  %44 = load ptr, ptr %p.addr, align 4, !dbg !1452
  %o13 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %44, i32 0, i32 2, !dbg !1453
  %45 = load i32, ptr %o13, align 4, !dbg !1453
  %sub14 = sub nsw i32 %43, %45, !dbg !1453
  %add15 = add nsw i32 %sub14, 1, !dbg !1453
  %mul16 = mul nsw i32 %sub11, %add15, !dbg !1453
  %div = sdiv i32 %mul16, 2, !dbg !1453
  %46 = load ptr, ptr %p.addr, align 4, !dbg !1452
  %m_vec_limbs = getelementptr inbounds nuw %struct.mayo_params_t, ptr %46, i32 0, i32 21, !dbg !1453
  %47 = load i32, ptr %m_vec_limbs, align 4, !dbg !1453
  %mul17 = mul nsw i32 %div, %47, !dbg !1453
  %add.ptr = getelementptr inbounds i64, ptr %37, i32 %mul17, !dbg !1454
  store ptr %add.ptr, ptr %L, align 4, !dbg !1450
    #dbg_declare(ptr %Mtmp, !1455, !DIExpression(), !1459)
  call void @llvm.memset.p0.i32(ptr align 8 %Mtmp, i8 0, i32 14688, i1 false), !dbg !1459
  %arraydecay18 = getelementptr inbounds [145 x i8], ptr %tmp, i32 0, i32 0, !dbg !1460
  %48 = load i32, ptr %param_digest_bytes, align 4, !dbg !1462
  %add.ptr19 = getelementptr inbounds i8, ptr %arraydecay18, i32 %48, !dbg !1463
  %49 = load i32, ptr %param_salt_bytes, align 4, !dbg !1464
  %call20 = call i32 @randombytes(ptr noundef %add.ptr19, i32 noundef %49) #5, !dbg !1465
  %cmp21 = icmp ne i32 %call20, 0, !dbg !1466
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !1466

if.then22:                                        ; preds = %if.end
  store i32 1, ptr %ret, align 4, !dbg !1467
  br label %err, !dbg !1469

if.end23:                                         ; preds = %if.end
  %arraydecay24 = getelementptr inbounds [145 x i8], ptr %tmp, i32 0, i32 0, !dbg !1470
  %50 = load i32, ptr %param_digest_bytes, align 4, !dbg !1471
  %add.ptr25 = getelementptr inbounds i8, ptr %arraydecay24, i32 %50, !dbg !1472
  %51 = load i32, ptr %param_salt_bytes, align 4, !dbg !1473
  %add.ptr26 = getelementptr inbounds i8, ptr %add.ptr25, i32 %51, !dbg !1474
  %52 = load ptr, ptr %seed_sk, align 4, !dbg !1475
  %53 = load i32, ptr %param_sk_seed_bytes, align 4, !dbg !1476
  %call27 = call ptr @memcpy(ptr noundef %add.ptr26, ptr noundef %52, i32 noundef %53) #5, !dbg !1477
  %arraydecay28 = getelementptr inbounds [40 x i8], ptr %salt, i32 0, i32 0, !dbg !1478
  %54 = load i32, ptr %param_salt_bytes, align 4, !dbg !1479
  %arraydecay29 = getelementptr inbounds [145 x i8], ptr %tmp, i32 0, i32 0, !dbg !1480
  %55 = load i32, ptr %param_digest_bytes, align 4, !dbg !1481
  %56 = load i32, ptr %param_salt_bytes, align 4, !dbg !1482
  %add30 = add nsw i32 %55, %56, !dbg !1483
  %57 = load i32, ptr %param_sk_seed_bytes, align 4, !dbg !1484
  %add31 = add nsw i32 %add30, %57, !dbg !1485
  %call32 = call i32 @shake256(ptr noundef %arraydecay28, i32 noundef %54, ptr noundef %arraydecay29, i32 noundef %add31) #5, !dbg !1486
  %arraydecay33 = getelementptr inbounds [145 x i8], ptr %tmp, i32 0, i32 0, !dbg !1487
  %58 = load i32, ptr %param_digest_bytes, align 4, !dbg !1488
  %add.ptr34 = getelementptr inbounds i8, ptr %arraydecay33, i32 %58, !dbg !1489
  %arraydecay35 = getelementptr inbounds [40 x i8], ptr %salt, i32 0, i32 0, !dbg !1490
  %59 = load i32, ptr %param_salt_bytes, align 4, !dbg !1491
  %call36 = call ptr @memcpy(ptr noundef %add.ptr34, ptr noundef %arraydecay35, i32 noundef %59) #5, !dbg !1492
  %arraydecay37 = getelementptr inbounds [145 x i8], ptr %tmp, i32 0, i32 0, !dbg !1493
  %60 = load i32, ptr %param_digest_bytes, align 4, !dbg !1494
  %add.ptr38 = getelementptr inbounds i8, ptr %arraydecay37, i32 %60, !dbg !1495
  %61 = load i32, ptr %param_salt_bytes, align 4, !dbg !1496
  %add.ptr39 = getelementptr inbounds i8, ptr %add.ptr38, i32 %61, !dbg !1497
  %62 = load i32, ptr %param_sk_seed_bytes, align 4, !dbg !1498
  %add.ptr40 = getelementptr inbounds i8, ptr %add.ptr39, i32 %62, !dbg !1499
  store ptr %add.ptr40, ptr %ctrbyte, align 4, !dbg !1500
  %arraydecay41 = getelementptr inbounds [71 x i8], ptr %tenc, i32 0, i32 0, !dbg !1501
  %63 = load i32, ptr %param_m_bytes, align 4, !dbg !1502
  %arraydecay42 = getelementptr inbounds [145 x i8], ptr %tmp, i32 0, i32 0, !dbg !1503
  %64 = load i32, ptr %param_digest_bytes, align 4, !dbg !1504
  %65 = load i32, ptr %param_salt_bytes, align 4, !dbg !1505
  %add43 = add nsw i32 %64, %65, !dbg !1506
  %call44 = call i32 @shake256(ptr noundef %arraydecay41, i32 noundef %63, ptr noundef %arraydecay42, i32 noundef %add43) #5, !dbg !1507
  %arraydecay45 = getelementptr inbounds [71 x i8], ptr %tenc, i32 0, i32 0, !dbg !1508
  %arraydecay46 = getelementptr inbounds [142 x i8], ptr %t, i32 0, i32 0, !dbg !1509
  %66 = load i32, ptr %param_m, align 4, !dbg !1510
  call void @decode(ptr noundef %arraydecay45, ptr noundef %arraydecay46, i32 noundef %66) #5, !dbg !1511
    #dbg_declare(ptr %ctr, !1512, !DIExpression(), !1514)
  store i32 0, ptr %ctr, align 4, !dbg !1514
  br label %for.cond, !dbg !1515

for.cond:                                         ; preds = %for.inc104, %if.end23
  %67 = load i32, ptr %ctr, align 4, !dbg !1516
  %cmp47 = icmp sle i32 %67, 255, !dbg !1518
  br i1 %cmp47, label %for.body, label %for.end106, !dbg !1519

for.body:                                         ; preds = %for.cond
  %68 = load i32, ptr %ctr, align 4, !dbg !1520
  %conv = trunc i32 %68 to i8, !dbg !1522
  %69 = load ptr, ptr %ctrbyte, align 4, !dbg !1523
  store i8 %conv, ptr %69, align 1, !dbg !1524
  %arraydecay48 = getelementptr inbounds [924 x i8], ptr %V, i32 0, i32 0, !dbg !1525
  %70 = load i32, ptr %param_k, align 4, !dbg !1526
  %71 = load i32, ptr %param_v_bytes, align 4, !dbg !1527
  %mul49 = mul nsw i32 %70, %71, !dbg !1528
  %72 = load i32, ptr %param_r_bytes, align 4, !dbg !1529
  %add50 = add nsw i32 %mul49, %72, !dbg !1530
  %arraydecay51 = getelementptr inbounds [145 x i8], ptr %tmp, i32 0, i32 0, !dbg !1531
  %73 = load i32, ptr %param_digest_bytes, align 4, !dbg !1532
  %74 = load i32, ptr %param_salt_bytes, align 4, !dbg !1533
  %add52 = add nsw i32 %73, %74, !dbg !1534
  %75 = load i32, ptr %param_sk_seed_bytes, align 4, !dbg !1535
  %add53 = add nsw i32 %add52, %75, !dbg !1536
  %add54 = add nsw i32 %add53, 1, !dbg !1537
  %call55 = call i32 @shake256(ptr noundef %arraydecay48, i32 noundef %add50, ptr noundef %arraydecay51, i32 noundef %add54) #5, !dbg !1538
    #dbg_declare(ptr %i, !1539, !DIExpression(), !1541)
  store i32 0, ptr %i, align 4, !dbg !1541
  br label %for.cond56, !dbg !1542

for.cond56:                                       ; preds = %for.inc, %for.body
  %76 = load i32, ptr %i, align 4, !dbg !1543
  %77 = load i32, ptr %param_k, align 4, !dbg !1545
  %sub57 = sub nsw i32 %77, 1, !dbg !1546
  %cmp58 = icmp sle i32 %76, %sub57, !dbg !1547
  br i1 %cmp58, label %for.body60, label %for.end, !dbg !1548

for.body60:                                       ; preds = %for.cond56
  %arraydecay61 = getelementptr inbounds [924 x i8], ptr %V, i32 0, i32 0, !dbg !1549
  %78 = load i32, ptr %i, align 4, !dbg !1551
  %79 = load i32, ptr %param_v_bytes, align 4, !dbg !1552
  %mul62 = mul nsw i32 %78, %79, !dbg !1553
  %add.ptr63 = getelementptr inbounds i8, ptr %arraydecay61, i32 %mul62, !dbg !1554
  %arraydecay64 = getelementptr inbounds [1704 x i8], ptr %Vdec, i32 0, i32 0, !dbg !1555
  %80 = load i32, ptr %i, align 4, !dbg !1556
  %81 = load i32, ptr %param_v, align 4, !dbg !1557
  %mul65 = mul nsw i32 %80, %81, !dbg !1558
  %add.ptr66 = getelementptr inbounds i8, ptr %arraydecay64, i32 %mul65, !dbg !1559
  %82 = load i32, ptr %param_v, align 4, !dbg !1560
  call void @decode(ptr noundef %add.ptr63, ptr noundef %add.ptr66, i32 noundef %82) #5, !dbg !1561
  br label %for.inc, !dbg !1562

for.inc:                                          ; preds = %for.body60
  %83 = load i32, ptr %i, align 4, !dbg !1563
  %inc = add nsw i32 %83, 1, !dbg !1563
  store i32 %inc, ptr %i, align 4, !dbg !1563
  br label %for.cond56, !dbg !1564, !llvm.loop !1565

for.end:                                          ; preds = %for.cond56
  %84 = load ptr, ptr %p.addr, align 4, !dbg !1567
  %arraydecay67 = getelementptr inbounds [1704 x i8], ptr %Vdec, i32 0, i32 0, !dbg !1568
  %85 = load ptr, ptr %L, align 4, !dbg !1569
  %86 = load ptr, ptr %P1, align 4, !dbg !1570
  %arraydecay68 = getelementptr inbounds [1836 x i64], ptr %Mtmp, i32 0, i32 0, !dbg !1571
  %arraydecay69 = getelementptr inbounds [29520 x i8], ptr %A, i32 0, i32 0, !dbg !1572
  call void @compute_M_and_VPV(ptr noundef %84, ptr noundef %arraydecay67, ptr noundef %85, ptr noundef %86, ptr noundef %arraydecay68, ptr noundef %arraydecay69) #5, !dbg !1573
  %87 = load ptr, ptr %p.addr, align 4, !dbg !1574
  %arraydecay70 = getelementptr inbounds [29520 x i8], ptr %A, i32 0, i32 0, !dbg !1575
  %arraydecay71 = getelementptr inbounds [142 x i8], ptr %t, i32 0, i32 0, !dbg !1576
  %arraydecay72 = getelementptr inbounds [142 x i8], ptr %y, i32 0, i32 0, !dbg !1577
  call void @compute_rhs(ptr noundef %87, ptr noundef %arraydecay70, ptr noundef %arraydecay71, ptr noundef %arraydecay72) #5, !dbg !1578
  %88 = load ptr, ptr %p.addr, align 4, !dbg !1579
  %arraydecay73 = getelementptr inbounds [1836 x i64], ptr %Mtmp, i32 0, i32 0, !dbg !1580
  %arraydecay74 = getelementptr inbounds [29520 x i8], ptr %A, i32 0, i32 0, !dbg !1581
  call void @compute_A(ptr noundef %88, ptr noundef %arraydecay73, ptr noundef %arraydecay74) #5, !dbg !1582
    #dbg_declare(ptr %i75, !1583, !DIExpression(), !1585)
  store i32 0, ptr %i75, align 4, !dbg !1585
  br label %for.cond76, !dbg !1586

for.cond76:                                       ; preds = %for.inc85, %for.end
  %89 = load i32, ptr %i75, align 4, !dbg !1587
  %90 = load i32, ptr %param_m, align 4, !dbg !1589
  %cmp77 = icmp slt i32 %89, %90, !dbg !1590
  br i1 %cmp77, label %for.body79, label %for.end87, !dbg !1591

for.body79:                                       ; preds = %for.cond76
  %91 = load i32, ptr %i75, align 4, !dbg !1592
  %add80 = add nsw i32 1, %91, !dbg !1594
  %92 = load i32, ptr %param_k, align 4, !dbg !1595
  %93 = load i32, ptr %param_o, align 4, !dbg !1596
  %mul81 = mul nsw i32 %92, %93, !dbg !1597
  %add82 = add nsw i32 %mul81, 1, !dbg !1598
  %mul83 = mul nsw i32 %add80, %add82, !dbg !1599
  %sub84 = sub nsw i32 %mul83, 1, !dbg !1600
  %arrayidx = getelementptr inbounds [29520 x i8], ptr %A, i32 0, i32 %sub84, !dbg !1601
  store i8 0, ptr %arrayidx, align 1, !dbg !1602
  br label %for.inc85, !dbg !1603

for.inc85:                                        ; preds = %for.body79
  %94 = load i32, ptr %i75, align 4, !dbg !1604
  %inc86 = add nsw i32 %94, 1, !dbg !1604
  store i32 %inc86, ptr %i75, align 4, !dbg !1604
  br label %for.cond76, !dbg !1605, !llvm.loop !1606

for.end87:                                        ; preds = %for.cond76
  %arraydecay88 = getelementptr inbounds [924 x i8], ptr %V, i32 0, i32 0, !dbg !1608
  %95 = load i32, ptr %param_k, align 4, !dbg !1609
  %96 = load i32, ptr %param_v_bytes, align 4, !dbg !1610
  %mul89 = mul nsw i32 %95, %96, !dbg !1611
  %add.ptr90 = getelementptr inbounds i8, ptr %arraydecay88, i32 %mul89, !dbg !1612
  %arraydecay91 = getelementptr inbounds [205 x i8], ptr %r, i32 0, i32 0, !dbg !1613
  %97 = load i32, ptr %param_k, align 4, !dbg !1614
  %98 = load i32, ptr %param_o, align 4, !dbg !1615
  %mul92 = mul nsw i32 %97, %98, !dbg !1616
  call void @decode(ptr noundef %add.ptr90, ptr noundef %arraydecay91, i32 noundef %mul92) #5, !dbg !1617
  %99 = load ptr, ptr %p.addr, align 4, !dbg !1618
  %arraydecay93 = getelementptr inbounds [29520 x i8], ptr %A, i32 0, i32 0, !dbg !1620
  %arraydecay94 = getelementptr inbounds [142 x i8], ptr %y, i32 0, i32 0, !dbg !1621
  %arraydecay95 = getelementptr inbounds [205 x i8], ptr %r, i32 0, i32 0, !dbg !1622
  %arraydecay96 = getelementptr inbounds [1848 x i8], ptr %x, i32 0, i32 0, !dbg !1623
  %100 = load i32, ptr %param_k, align 4, !dbg !1624
  %101 = load i32, ptr %param_o, align 4, !dbg !1625
  %102 = load i32, ptr %param_m, align 4, !dbg !1626
  %103 = load i32, ptr %param_A_cols, align 4, !dbg !1627
  %call97 = call i32 @sample_solution(ptr noundef %99, ptr noundef %arraydecay93, ptr noundef %arraydecay94, ptr noundef %arraydecay95, ptr noundef %arraydecay96, i32 noundef %100, i32 noundef %101, i32 noundef %102, i32 noundef %103) #5, !dbg !1628
  %tobool = icmp ne i32 %call97, 0, !dbg !1628
  br i1 %tobool, label %if.then98, label %if.else, !dbg !1628

if.then98:                                        ; preds = %for.end87
  br label %for.end106, !dbg !1629

if.else:                                          ; preds = %for.end87
  %arraydecay99 = getelementptr inbounds [1836 x i64], ptr %Mtmp, i32 0, i32 0, !dbg !1631
  %call100 = call ptr @memset(ptr noundef %arraydecay99, i32 noundef 0, i32 noundef 14688) #5, !dbg !1633
  %arraydecay101 = getelementptr inbounds [29520 x i8], ptr %A, i32 0, i32 0, !dbg !1634
  %call102 = call ptr @memset(ptr noundef %arraydecay101, i32 noundef 0, i32 noundef 29520) #5, !dbg !1635
  br label %if.end103

if.end103:                                        ; preds = %if.else
  br label %for.inc104, !dbg !1636

for.inc104:                                       ; preds = %if.end103
  %104 = load i32, ptr %ctr, align 4, !dbg !1637
  %inc105 = add nsw i32 %104, 1, !dbg !1637
  store i32 %inc105, ptr %ctr, align 4, !dbg !1637
  br label %for.cond, !dbg !1638, !llvm.loop !1639

for.end106:                                       ; preds = %if.then98, %for.cond
    #dbg_declare(ptr %i107, !1641, !DIExpression(), !1643)
  store i32 0, ptr %i107, align 4, !dbg !1643
  br label %for.cond108, !dbg !1644

for.cond108:                                      ; preds = %for.inc137, %for.end106
  %105 = load i32, ptr %i107, align 4, !dbg !1645
  %106 = load i32, ptr %param_k, align 4, !dbg !1647
  %sub109 = sub nsw i32 %106, 1, !dbg !1648
  %cmp110 = icmp sle i32 %105, %sub109, !dbg !1649
  br i1 %cmp110, label %for.body112, label %for.end139, !dbg !1650

for.body112:                                      ; preds = %for.cond108
  %arraydecay113 = getelementptr inbounds [1704 x i8], ptr %Vdec, i32 0, i32 0, !dbg !1651
  %107 = load i32, ptr %i107, align 4, !dbg !1653
  %108 = load i32, ptr %param_n, align 4, !dbg !1654
  %109 = load i32, ptr %param_o, align 4, !dbg !1655
  %sub114 = sub nsw i32 %108, %109, !dbg !1656
  %mul115 = mul nsw i32 %107, %sub114, !dbg !1657
  %add.ptr116 = getelementptr inbounds i8, ptr %arraydecay113, i32 %mul115, !dbg !1658
  store ptr %add.ptr116, ptr %vi, align 4, !dbg !1659
  %O = getelementptr inbounds nuw %struct.sk_t, ptr %sk, i32 0, i32 1, !dbg !1660
  %arraydecay117 = getelementptr inbounds [2414 x i8], ptr %O, i32 0, i32 0, !dbg !1661
  %arraydecay118 = getelementptr inbounds [1848 x i8], ptr %x, i32 0, i32 0, !dbg !1662
  %110 = load i32, ptr %i107, align 4, !dbg !1663
  %111 = load i32, ptr %param_o, align 4, !dbg !1664
  %mul119 = mul nsw i32 %110, %111, !dbg !1665
  %add.ptr120 = getelementptr inbounds i8, ptr %arraydecay118, i32 %mul119, !dbg !1666
  %arraydecay121 = getelementptr inbounds [142 x i8], ptr %Ox, i32 0, i32 0, !dbg !1667
  %112 = load i32, ptr %param_o, align 4, !dbg !1668
  %113 = load i32, ptr %param_n, align 4, !dbg !1669
  %114 = load i32, ptr %param_o, align 4, !dbg !1670
  %sub122 = sub nsw i32 %113, %114, !dbg !1671
  call void @mat_mul(ptr noundef %arraydecay117, ptr noundef %add.ptr120, ptr noundef %arraydecay121, i32 noundef %112, i32 noundef %sub122, i32 noundef 1) #5, !dbg !1672
  %115 = load ptr, ptr %vi, align 4, !dbg !1673
  %arraydecay123 = getelementptr inbounds [142 x i8], ptr %Ox, i32 0, i32 0, !dbg !1674
  %arraydecay124 = getelementptr inbounds [1848 x i8], ptr %s, i32 0, i32 0, !dbg !1675
  %116 = load i32, ptr %i107, align 4, !dbg !1676
  %117 = load i32, ptr %param_n, align 4, !dbg !1677
  %mul125 = mul nsw i32 %116, %117, !dbg !1678
  %add.ptr126 = getelementptr inbounds i8, ptr %arraydecay124, i32 %mul125, !dbg !1679
  %118 = load i32, ptr %param_n, align 4, !dbg !1680
  %119 = load i32, ptr %param_o, align 4, !dbg !1681
  %sub127 = sub nsw i32 %118, %119, !dbg !1682
  call void @mat_add(ptr noundef %115, ptr noundef %arraydecay123, ptr noundef %add.ptr126, i32 noundef %sub127, i32 noundef 1) #5, !dbg !1683
  %arraydecay128 = getelementptr inbounds [1848 x i8], ptr %s, i32 0, i32 0, !dbg !1684
  %120 = load i32, ptr %i107, align 4, !dbg !1685
  %121 = load i32, ptr %param_n, align 4, !dbg !1686
  %mul129 = mul nsw i32 %120, %121, !dbg !1687
  %add.ptr130 = getelementptr inbounds i8, ptr %arraydecay128, i32 %mul129, !dbg !1688
  %122 = load i32, ptr %param_n, align 4, !dbg !1689
  %123 = load i32, ptr %param_o, align 4, !dbg !1690
  %sub131 = sub nsw i32 %122, %123, !dbg !1691
  %add.ptr132 = getelementptr inbounds i8, ptr %add.ptr130, i32 %sub131, !dbg !1692
  %arraydecay133 = getelementptr inbounds [1848 x i8], ptr %x, i32 0, i32 0, !dbg !1693
  %124 = load i32, ptr %i107, align 4, !dbg !1694
  %125 = load i32, ptr %param_o, align 4, !dbg !1695
  %mul134 = mul nsw i32 %124, %125, !dbg !1696
  %add.ptr135 = getelementptr inbounds i8, ptr %arraydecay133, i32 %mul134, !dbg !1697
  %126 = load i32, ptr %param_o, align 4, !dbg !1698
  %call136 = call ptr @memcpy(ptr noundef %add.ptr132, ptr noundef %add.ptr135, i32 noundef %126) #5, !dbg !1699
  br label %for.inc137, !dbg !1700

for.inc137:                                       ; preds = %for.body112
  %127 = load i32, ptr %i107, align 4, !dbg !1701
  %inc138 = add nsw i32 %127, 1, !dbg !1701
  store i32 %inc138, ptr %i107, align 4, !dbg !1701
  br label %for.cond108, !dbg !1702, !llvm.loop !1703

for.end139:                                       ; preds = %for.cond108
  %arraydecay140 = getelementptr inbounds [1848 x i8], ptr %s, i32 0, i32 0, !dbg !1705
  %128 = load ptr, ptr %sig.addr, align 4, !dbg !1706
  %129 = load i32, ptr %param_n, align 4, !dbg !1707
  %130 = load i32, ptr %param_k, align 4, !dbg !1708
  %mul141 = mul nsw i32 %129, %130, !dbg !1709
  call void @encode(ptr noundef %arraydecay140, ptr noundef %128, i32 noundef %mul141) #5, !dbg !1710
  %131 = load ptr, ptr %sig.addr, align 4, !dbg !1711
  %132 = load i32, ptr %param_sig_bytes, align 4, !dbg !1712
  %add.ptr142 = getelementptr inbounds i8, ptr %131, i32 %132, !dbg !1713
  %133 = load i32, ptr %param_salt_bytes, align 4, !dbg !1714
  %idx.neg = sub i32 0, %133, !dbg !1715
  %add.ptr143 = getelementptr inbounds i8, ptr %add.ptr142, i32 %idx.neg, !dbg !1715
  %arraydecay144 = getelementptr inbounds [40 x i8], ptr %salt, i32 0, i32 0, !dbg !1716
  %134 = load i32, ptr %param_salt_bytes, align 4, !dbg !1717
  %call145 = call ptr @memcpy(ptr noundef %add.ptr143, ptr noundef %arraydecay144, i32 noundef %134) #5, !dbg !1718
  %135 = load i32, ptr %param_sig_bytes, align 4, !dbg !1719
  %136 = load ptr, ptr %siglen.addr, align 4, !dbg !1720
  store i32 %135, ptr %136, align 4, !dbg !1721
  br label %err, !dbg !1722

err:                                              ; preds = %for.end139, %if.then22, %if.then
    #dbg_label(!1723, !1724)
  %arraydecay146 = getelementptr inbounds [924 x i8], ptr %V, i32 0, i32 0, !dbg !1725
  call void @mayo_secure_clear(ptr noundef %arraydecay146, i32 noundef 924) #5, !dbg !1726
  %arraydecay147 = getelementptr inbounds [1704 x i8], ptr %Vdec, i32 0, i32 0, !dbg !1727
  call void @mayo_secure_clear(ptr noundef %arraydecay147, i32 noundef 1704) #5, !dbg !1728
  %arraydecay148 = getelementptr inbounds [29520 x i8], ptr %A, i32 0, i32 0, !dbg !1729
  call void @mayo_secure_clear(ptr noundef %arraydecay148, i32 noundef 29520) #5, !dbg !1730
  %arraydecay149 = getelementptr inbounds [205 x i8], ptr %r, i32 0, i32 0, !dbg !1731
  call void @mayo_secure_clear(ptr noundef %arraydecay149, i32 noundef 205) #5, !dbg !1732
  %O150 = getelementptr inbounds nuw %struct.sk_t, ptr %sk, i32 0, i32 1, !dbg !1733
  %arraydecay151 = getelementptr inbounds [2414 x i8], ptr %O150, i32 0, i32 0, !dbg !1734
  call void @mayo_secure_clear(ptr noundef %arraydecay151, i32 noundef 2414) #5, !dbg !1735
  call void @mayo_secure_clear(ptr noundef %sk, i32 noundef 907240) #5, !dbg !1736
  %arraydecay152 = getelementptr inbounds [142 x i8], ptr %Ox, i32 0, i32 0, !dbg !1737
  call void @mayo_secure_clear(ptr noundef %arraydecay152, i32 noundef 142) #5, !dbg !1738
  %arraydecay153 = getelementptr inbounds [145 x i8], ptr %tmp, i32 0, i32 0, !dbg !1739
  call void @mayo_secure_clear(ptr noundef %arraydecay153, i32 noundef 145) #5, !dbg !1740
  %arraydecay154 = getelementptr inbounds [1836 x i64], ptr %Mtmp, i32 0, i32 0, !dbg !1741
  call void @mayo_secure_clear(ptr noundef %arraydecay154, i32 noundef 14688) #5, !dbg !1742
  %137 = load i32, ptr %ret, align 4, !dbg !1743
  ret i32 %137, !dbg !1744
}

; Function Attrs: noinline nounwind optnone
define internal void @compute_M_and_VPV(ptr noundef %p, ptr noundef %Vdec, ptr noundef %L, ptr noundef %P1, ptr noundef %VL, ptr noundef %VP1V) #0 !dbg !1745 {
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
    #dbg_declare(ptr %p.addr, !1748, !DIExpression(), !1749)
  store ptr %Vdec, ptr %Vdec.addr, align 4
    #dbg_declare(ptr %Vdec.addr, !1750, !DIExpression(), !1751)
  store ptr %L, ptr %L.addr, align 4
    #dbg_declare(ptr %L.addr, !1752, !DIExpression(), !1753)
  store ptr %P1, ptr %P1.addr, align 4
    #dbg_declare(ptr %P1.addr, !1754, !DIExpression(), !1755)
  store ptr %VL, ptr %VL.addr, align 4
    #dbg_declare(ptr %VL.addr, !1756, !DIExpression(), !1757)
  store ptr %VP1V, ptr %VP1V.addr, align 4
    #dbg_declare(ptr %VP1V.addr, !1758, !DIExpression(), !1759)
    #dbg_declare(ptr %param_k, !1760, !DIExpression(), !1761)
  %0 = load ptr, ptr %p.addr, align 4, !dbg !1762
  %k = getelementptr inbounds nuw %struct.mayo_params_t, ptr %0, i32 0, i32 3, !dbg !1763
  %1 = load i32, ptr %k, align 4, !dbg !1763
  store i32 %1, ptr %param_k, align 4, !dbg !1761
    #dbg_declare(ptr %param_v, !1764, !DIExpression(), !1765)
  %2 = load ptr, ptr %p.addr, align 4, !dbg !1766
  %n = getelementptr inbounds nuw %struct.mayo_params_t, ptr %2, i32 0, i32 1, !dbg !1767
  %3 = load i32, ptr %n, align 4, !dbg !1767
  %4 = load ptr, ptr %p.addr, align 4, !dbg !1766
  %o = getelementptr inbounds nuw %struct.mayo_params_t, ptr %4, i32 0, i32 2, !dbg !1767
  %5 = load i32, ptr %o, align 4, !dbg !1767
  %sub = sub nsw i32 %3, %5, !dbg !1767
  store i32 %sub, ptr %param_v, align 4, !dbg !1765
    #dbg_declare(ptr %param_o, !1768, !DIExpression(), !1769)
  %6 = load ptr, ptr %p.addr, align 4, !dbg !1770
  %o1 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %6, i32 0, i32 2, !dbg !1771
  %7 = load i32, ptr %o1, align 4, !dbg !1771
  store i32 %7, ptr %param_o, align 4, !dbg !1769
  %8 = load ptr, ptr %p.addr, align 4, !dbg !1772
  %m_vec_limbs = getelementptr inbounds nuw %struct.mayo_params_t, ptr %8, i32 0, i32 21, !dbg !1773
  %9 = load i32, ptr %m_vec_limbs, align 4, !dbg !1773
  %10 = load ptr, ptr %Vdec.addr, align 4, !dbg !1774
  %11 = load ptr, ptr %L.addr, align 4, !dbg !1775
  %12 = load ptr, ptr %VL.addr, align 4, !dbg !1776
  %13 = load i32, ptr %param_k, align 4, !dbg !1777
  %14 = load i32, ptr %param_v, align 4, !dbg !1778
  %15 = load i32, ptr %param_o, align 4, !dbg !1779
  call void @mul_add_mat_x_m_mat(i32 noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, i32 noundef %13, i32 noundef %14, i32 noundef %15) #5, !dbg !1780
    #dbg_declare(ptr %Pv, !1781, !DIExpression(), !1785)
  call void @llvm.memset.p0.i32(ptr align 8 %Pv, i8 0, i32 122688, i1 false), !dbg !1785
  %16 = load ptr, ptr %p.addr, align 4, !dbg !1786
  %17 = load ptr, ptr %P1.addr, align 4, !dbg !1787
  %18 = load ptr, ptr %Vdec.addr, align 4, !dbg !1788
  %arraydecay = getelementptr inbounds [15336 x i64], ptr %Pv, i32 0, i32 0, !dbg !1789
  call void @P1_times_Vt(ptr noundef %16, ptr noundef %17, ptr noundef %18, ptr noundef %arraydecay) #5, !dbg !1790
  %19 = load ptr, ptr %p.addr, align 4, !dbg !1791
  %m_vec_limbs2 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %19, i32 0, i32 21, !dbg !1792
  %20 = load i32, ptr %m_vec_limbs2, align 4, !dbg !1792
  %21 = load ptr, ptr %Vdec.addr, align 4, !dbg !1793
  %arraydecay3 = getelementptr inbounds [15336 x i64], ptr %Pv, i32 0, i32 0, !dbg !1794
  %22 = load ptr, ptr %VP1V.addr, align 4, !dbg !1795
  %23 = load i32, ptr %param_k, align 4, !dbg !1796
  %24 = load i32, ptr %param_v, align 4, !dbg !1797
  %25 = load i32, ptr %param_k, align 4, !dbg !1798
  call void @mul_add_mat_x_m_mat(i32 noundef %20, ptr noundef %21, ptr noundef %arraydecay3, ptr noundef %22, i32 noundef %23, i32 noundef %24, i32 noundef %25) #5, !dbg !1799
  ret void, !dbg !1800
}

; Function Attrs: noinline nounwind optnone
define internal void @compute_rhs(ptr noundef %p, ptr noundef %vPv, ptr noundef %t, ptr noundef %y) #0 !dbg !1801 {
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
    #dbg_declare(ptr %p.addr, !1804, !DIExpression(), !1805)
  store ptr %vPv, ptr %vPv.addr, align 4
    #dbg_declare(ptr %vPv.addr, !1806, !DIExpression(), !1807)
  store ptr %t, ptr %t.addr, align 4
    #dbg_declare(ptr %t.addr, !1808, !DIExpression(), !1809)
  store ptr %y, ptr %y.addr, align 4
    #dbg_declare(ptr %y.addr, !1810, !DIExpression(), !1811)
    #dbg_declare(ptr %top_pos, !1812, !DIExpression(), !1814)
  %0 = load ptr, ptr %p.addr, align 4, !dbg !1815
  %m = getelementptr inbounds nuw %struct.mayo_params_t, ptr %0, i32 0, i32 0, !dbg !1816
  %1 = load i32, ptr %m, align 4, !dbg !1816
  %sub = sub nsw i32 %1, 1, !dbg !1817
  %rem = srem i32 %sub, 16, !dbg !1818
  %mul = mul nsw i32 %rem, 4, !dbg !1819
  store i32 %mul, ptr %top_pos, align 4, !dbg !1814
    #dbg_declare(ptr %m_vec_limbs, !1820, !DIExpression(), !1821)
  %2 = load ptr, ptr %p.addr, align 4, !dbg !1822
  %m_vec_limbs1 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %2, i32 0, i32 21, !dbg !1823
  %3 = load i32, ptr %m_vec_limbs1, align 4, !dbg !1823
  store i32 %3, ptr %m_vec_limbs, align 4, !dbg !1821
  %4 = load ptr, ptr %p.addr, align 4, !dbg !1824
  %m2 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %4, i32 0, i32 0, !dbg !1826
  %5 = load i32, ptr %m2, align 4, !dbg !1826
  %rem3 = srem i32 %5, 16, !dbg !1827
  %cmp = icmp ne i32 %rem3, 0, !dbg !1828
  br i1 %cmp, label %if.then, label %if.end, !dbg !1828

if.then:                                          ; preds = %entry
    #dbg_declare(ptr %mask, !1829, !DIExpression(), !1831)
  store i64 1, ptr %mask, align 8, !dbg !1831
  %6 = load ptr, ptr %p.addr, align 4, !dbg !1832
  %m4 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %6, i32 0, i32 0, !dbg !1833
  %7 = load i32, ptr %m4, align 4, !dbg !1833
  %rem5 = srem i32 %7, 16, !dbg !1834
  %mul6 = mul nsw i32 %rem5, 4, !dbg !1835
  %8 = load i64, ptr %mask, align 8, !dbg !1836
  %sh_prom = zext i32 %mul6 to i64, !dbg !1836
  %shl = shl i64 %8, %sh_prom, !dbg !1836
  store i64 %shl, ptr %mask, align 8, !dbg !1836
  %9 = load i64, ptr %mask, align 8, !dbg !1837
  %sub7 = sub i64 %9, 1, !dbg !1837
  store i64 %sub7, ptr %mask, align 8, !dbg !1837
    #dbg_declare(ptr %i, !1838, !DIExpression(), !1840)
  store i32 0, ptr %i, align 4, !dbg !1840
  br label %for.cond, !dbg !1841

for.cond:                                         ; preds = %for.inc, %if.then
  %10 = load i32, ptr %i, align 4, !dbg !1842
  %11 = load ptr, ptr %p.addr, align 4, !dbg !1844
  %k = getelementptr inbounds nuw %struct.mayo_params_t, ptr %11, i32 0, i32 3, !dbg !1845
  %12 = load i32, ptr %k, align 4, !dbg !1845
  %13 = load ptr, ptr %p.addr, align 4, !dbg !1846
  %k8 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %13, i32 0, i32 3, !dbg !1847
  %14 = load i32, ptr %k8, align 4, !dbg !1847
  %mul9 = mul nsw i32 %12, %14, !dbg !1848
  %cmp10 = icmp slt i32 %10, %mul9, !dbg !1849
  br i1 %cmp10, label %for.body, label %for.end, !dbg !1850

for.body:                                         ; preds = %for.cond
  %15 = load i64, ptr %mask, align 8, !dbg !1851
  %16 = load ptr, ptr %vPv.addr, align 4, !dbg !1853
  %17 = load i32, ptr %i, align 4, !dbg !1854
  %18 = load i32, ptr %m_vec_limbs, align 4, !dbg !1855
  %mul11 = mul i32 %17, %18, !dbg !1856
  %19 = load i32, ptr %m_vec_limbs, align 4, !dbg !1857
  %add = add i32 %mul11, %19, !dbg !1858
  %sub12 = sub i32 %add, 1, !dbg !1859
  %arrayidx = getelementptr inbounds nuw i64, ptr %16, i32 %sub12, !dbg !1853
  %20 = load i64, ptr %arrayidx, align 8, !dbg !1860
  %and = and i64 %20, %15, !dbg !1860
  store i64 %and, ptr %arrayidx, align 8, !dbg !1860
  br label %for.inc, !dbg !1861

for.inc:                                          ; preds = %for.body
  %21 = load i32, ptr %i, align 4, !dbg !1862
  %inc = add nsw i32 %21, 1, !dbg !1862
  store i32 %inc, ptr %i, align 4, !dbg !1862
  br label %for.cond, !dbg !1863, !llvm.loop !1864

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !1866

if.end:                                           ; preds = %for.end, %entry
    #dbg_declare(ptr %temp, !1867, !DIExpression(), !1868)
  call void @llvm.memset.p0.i32(ptr align 8 %temp, i8 0, i32 72, i1 false), !dbg !1868
    #dbg_declare(ptr %temp_bytes, !1869, !DIExpression(), !1870)
  %arraydecay = getelementptr inbounds [9 x i64], ptr %temp, i32 0, i32 0, !dbg !1871
  store ptr %arraydecay, ptr %temp_bytes, align 4, !dbg !1870
    #dbg_declare(ptr %i13, !1872, !DIExpression(), !1874)
  %22 = load ptr, ptr %p.addr, align 4, !dbg !1875
  %k14 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %22, i32 0, i32 3, !dbg !1876
  %23 = load i32, ptr %k14, align 4, !dbg !1876
  %sub15 = sub nsw i32 %23, 1, !dbg !1877
  store i32 %sub15, ptr %i13, align 4, !dbg !1874
  br label %for.cond16, !dbg !1878

for.cond16:                                       ; preds = %for.inc102, %if.end
  %24 = load i32, ptr %i13, align 4, !dbg !1879
  %cmp17 = icmp sge i32 %24, 0, !dbg !1881
  br i1 %cmp17, label %for.body18, label %for.end104, !dbg !1882

for.body18:                                       ; preds = %for.cond16
    #dbg_declare(ptr %j, !1883, !DIExpression(), !1886)
  %25 = load i32, ptr %i13, align 4, !dbg !1887
  store i32 %25, ptr %j, align 4, !dbg !1886
  br label %for.cond19, !dbg !1888

for.cond19:                                       ; preds = %for.inc99, %for.body18
  %26 = load i32, ptr %j, align 4, !dbg !1889
  %27 = load ptr, ptr %p.addr, align 4, !dbg !1891
  %k20 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %27, i32 0, i32 3, !dbg !1892
  %28 = load i32, ptr %k20, align 4, !dbg !1892
  %cmp21 = icmp slt i32 %26, %28, !dbg !1893
  br i1 %cmp21, label %for.body22, label %for.end101, !dbg !1894

for.body22:                                       ; preds = %for.cond19
    #dbg_declare(ptr %top, !1895, !DIExpression(), !1897)
  %29 = load i32, ptr %m_vec_limbs, align 4, !dbg !1898
  %sub23 = sub i32 %29, 1, !dbg !1899
  %arrayidx24 = getelementptr inbounds nuw [9 x i64], ptr %temp, i32 0, i32 %sub23, !dbg !1900
  %30 = load i64, ptr %arrayidx24, align 8, !dbg !1900
  %31 = load i32, ptr %top_pos, align 4, !dbg !1901
  %sh_prom25 = zext i32 %31 to i64, !dbg !1902
  %shr = lshr i64 %30, %sh_prom25, !dbg !1902
  %rem26 = urem i64 %shr, 16, !dbg !1903
  %conv = trunc i64 %rem26 to i8, !dbg !1904
  store i8 %conv, ptr %top, align 1, !dbg !1897
  %32 = load i32, ptr %m_vec_limbs, align 4, !dbg !1905
  %sub27 = sub i32 %32, 1, !dbg !1906
  %arrayidx28 = getelementptr inbounds nuw [9 x i64], ptr %temp, i32 0, i32 %sub27, !dbg !1907
  %33 = load i64, ptr %arrayidx28, align 8, !dbg !1908
  %shl29 = shl i64 %33, 4, !dbg !1908
  store i64 %shl29, ptr %arrayidx28, align 8, !dbg !1908
    #dbg_declare(ptr %k30, !1909, !DIExpression(), !1911)
  %34 = load i32, ptr %m_vec_limbs, align 4, !dbg !1912
  %sub31 = sub i32 %34, 2, !dbg !1913
  store i32 %sub31, ptr %k30, align 4, !dbg !1911
  br label %for.cond32, !dbg !1914

for.cond32:                                       ; preds = %for.inc42, %for.body22
  %35 = load i32, ptr %k30, align 4, !dbg !1915
  %cmp33 = icmp sge i32 %35, 0, !dbg !1917
  br i1 %cmp33, label %for.body35, label %for.end43, !dbg !1918

for.body35:                                       ; preds = %for.cond32
  %36 = load i32, ptr %k30, align 4, !dbg !1919
  %arrayidx36 = getelementptr inbounds [9 x i64], ptr %temp, i32 0, i32 %36, !dbg !1921
  %37 = load i64, ptr %arrayidx36, align 8, !dbg !1921
  %shr37 = lshr i64 %37, 60, !dbg !1922
  %38 = load i32, ptr %k30, align 4, !dbg !1923
  %add38 = add nsw i32 %38, 1, !dbg !1924
  %arrayidx39 = getelementptr inbounds [9 x i64], ptr %temp, i32 0, i32 %add38, !dbg !1925
  %39 = load i64, ptr %arrayidx39, align 8, !dbg !1926
  %xor = xor i64 %39, %shr37, !dbg !1926
  store i64 %xor, ptr %arrayidx39, align 8, !dbg !1926
  %40 = load i32, ptr %k30, align 4, !dbg !1927
  %arrayidx40 = getelementptr inbounds [9 x i64], ptr %temp, i32 0, i32 %40, !dbg !1928
  %41 = load i64, ptr %arrayidx40, align 8, !dbg !1929
  %shl41 = shl i64 %41, 4, !dbg !1929
  store i64 %shl41, ptr %arrayidx40, align 8, !dbg !1929
  br label %for.inc42, !dbg !1930

for.inc42:                                        ; preds = %for.body35
  %42 = load i32, ptr %k30, align 4, !dbg !1931
  %dec = add nsw i32 %42, -1, !dbg !1931
  store i32 %dec, ptr %k30, align 4, !dbg !1931
  br label %for.cond32, !dbg !1932, !llvm.loop !1933

for.end43:                                        ; preds = %for.cond32
    #dbg_declare(ptr %jj, !1935, !DIExpression(), !1937)
  store i32 0, ptr %jj, align 4, !dbg !1937
  br label %for.cond44, !dbg !1938

for.cond44:                                       ; preds = %for.inc69, %for.end43
  %43 = load i32, ptr %jj, align 4, !dbg !1939
  %cmp45 = icmp slt i32 %43, 4, !dbg !1941
  br i1 %cmp45, label %for.body47, label %for.end71, !dbg !1942

for.body47:                                       ; preds = %for.cond44
  %44 = load i32, ptr %jj, align 4, !dbg !1943
  %rem48 = srem i32 %44, 2, !dbg !1946
  %cmp49 = icmp eq i32 %rem48, 0, !dbg !1947
  br i1 %cmp49, label %if.then51, label %if.else, !dbg !1947

if.then51:                                        ; preds = %for.body47
  %45 = load i8, ptr %top, align 1, !dbg !1948
  %46 = load ptr, ptr %p.addr, align 4, !dbg !1950
  %f_tail = getelementptr inbounds nuw %struct.mayo_params_t, ptr %46, i32 0, i32 5, !dbg !1951
  %47 = load ptr, ptr %f_tail, align 4, !dbg !1951
  %48 = load i32, ptr %jj, align 4, !dbg !1952
  %arrayidx52 = getelementptr inbounds i8, ptr %47, i32 %48, !dbg !1951
  %49 = load i8, ptr %arrayidx52, align 1, !dbg !1951
  %call = call zeroext i8 @mul_f(i8 noundef zeroext %45, i8 noundef zeroext %49) #5, !dbg !1953
  %conv53 = zext i8 %call to i32, !dbg !1953
  %50 = load ptr, ptr %temp_bytes, align 4, !dbg !1954
  %51 = load i32, ptr %jj, align 4, !dbg !1955
  %div = sdiv i32 %51, 2, !dbg !1956
  %arrayidx54 = getelementptr inbounds i8, ptr %50, i32 %div, !dbg !1954
  %52 = load i8, ptr %arrayidx54, align 1, !dbg !1957
  %conv55 = zext i8 %52 to i32, !dbg !1957
  %xor56 = xor i32 %conv55, %conv53, !dbg !1957
  %conv57 = trunc i32 %xor56 to i8, !dbg !1957
  store i8 %conv57, ptr %arrayidx54, align 1, !dbg !1957
  br label %if.end68, !dbg !1958

if.else:                                          ; preds = %for.body47
  %53 = load i8, ptr %top, align 1, !dbg !1959
  %54 = load ptr, ptr %p.addr, align 4, !dbg !1961
  %f_tail58 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %54, i32 0, i32 5, !dbg !1962
  %55 = load ptr, ptr %f_tail58, align 4, !dbg !1962
  %56 = load i32, ptr %jj, align 4, !dbg !1963
  %arrayidx59 = getelementptr inbounds i8, ptr %55, i32 %56, !dbg !1962
  %57 = load i8, ptr %arrayidx59, align 1, !dbg !1962
  %call60 = call zeroext i8 @mul_f(i8 noundef zeroext %53, i8 noundef zeroext %57) #5, !dbg !1964
  %conv61 = zext i8 %call60 to i32, !dbg !1964
  %shl62 = shl i32 %conv61, 4, !dbg !1965
  %58 = load ptr, ptr %temp_bytes, align 4, !dbg !1966
  %59 = load i32, ptr %jj, align 4, !dbg !1967
  %div63 = sdiv i32 %59, 2, !dbg !1968
  %arrayidx64 = getelementptr inbounds i8, ptr %58, i32 %div63, !dbg !1966
  %60 = load i8, ptr %arrayidx64, align 1, !dbg !1969
  %conv65 = zext i8 %60 to i32, !dbg !1969
  %xor66 = xor i32 %conv65, %shl62, !dbg !1969
  %conv67 = trunc i32 %xor66 to i8, !dbg !1969
  store i8 %conv67, ptr %arrayidx64, align 1, !dbg !1969
  br label %if.end68

if.end68:                                         ; preds = %if.else, %if.then51
  br label %for.inc69, !dbg !1970

for.inc69:                                        ; preds = %if.end68
  %61 = load i32, ptr %jj, align 4, !dbg !1971
  %inc70 = add nsw i32 %61, 1, !dbg !1971
  store i32 %inc70, ptr %jj, align 4, !dbg !1971
  br label %for.cond44, !dbg !1972, !llvm.loop !1973

for.end71:                                        ; preds = %for.cond44
    #dbg_declare(ptr %k72, !1975, !DIExpression(), !1977)
  store i32 0, ptr %k72, align 4, !dbg !1977
  br label %for.cond73, !dbg !1978

for.cond73:                                       ; preds = %for.inc96, %for.end71
  %62 = load i32, ptr %k72, align 4, !dbg !1979
  %63 = load i32, ptr %m_vec_limbs, align 4, !dbg !1981
  %cmp74 = icmp ult i32 %62, %63, !dbg !1982
  br i1 %cmp74, label %for.body76, label %for.end98, !dbg !1983

for.body76:                                       ; preds = %for.cond73
  %64 = load ptr, ptr %vPv.addr, align 4, !dbg !1984
  %65 = load i32, ptr %i13, align 4, !dbg !1986
  %66 = load ptr, ptr %p.addr, align 4, !dbg !1987
  %k77 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %66, i32 0, i32 3, !dbg !1988
  %67 = load i32, ptr %k77, align 4, !dbg !1988
  %mul78 = mul nsw i32 %65, %67, !dbg !1989
  %68 = load i32, ptr %j, align 4, !dbg !1990
  %add79 = add nsw i32 %mul78, %68, !dbg !1991
  %69 = load i32, ptr %m_vec_limbs, align 4, !dbg !1992
  %mul80 = mul i32 %add79, %69, !dbg !1993
  %70 = load i32, ptr %k72, align 4, !dbg !1994
  %add81 = add i32 %mul80, %70, !dbg !1995
  %arrayidx82 = getelementptr inbounds nuw i64, ptr %64, i32 %add81, !dbg !1984
  %71 = load i64, ptr %arrayidx82, align 8, !dbg !1984
  %72 = load i32, ptr %i13, align 4, !dbg !1996
  %73 = load i32, ptr %j, align 4, !dbg !1997
  %cmp83 = icmp ne i32 %72, %73, !dbg !1998
  %conv84 = zext i1 %cmp83 to i32, !dbg !1998
  %conv85 = sext i32 %conv84 to i64, !dbg !1999
  %74 = load ptr, ptr %vPv.addr, align 4, !dbg !2000
  %75 = load i32, ptr %j, align 4, !dbg !2001
  %76 = load ptr, ptr %p.addr, align 4, !dbg !2002
  %k86 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %76, i32 0, i32 3, !dbg !2003
  %77 = load i32, ptr %k86, align 4, !dbg !2003
  %mul87 = mul nsw i32 %75, %77, !dbg !2004
  %78 = load i32, ptr %i13, align 4, !dbg !2005
  %add88 = add nsw i32 %mul87, %78, !dbg !2006
  %79 = load i32, ptr %m_vec_limbs, align 4, !dbg !2007
  %mul89 = mul i32 %add88, %79, !dbg !2008
  %80 = load i32, ptr %k72, align 4, !dbg !2009
  %add90 = add i32 %mul89, %80, !dbg !2010
  %arrayidx91 = getelementptr inbounds nuw i64, ptr %74, i32 %add90, !dbg !2000
  %81 = load i64, ptr %arrayidx91, align 8, !dbg !2000
  %mul92 = mul i64 %conv85, %81, !dbg !2011
  %xor93 = xor i64 %71, %mul92, !dbg !2012
  %82 = load i32, ptr %k72, align 4, !dbg !2013
  %arrayidx94 = getelementptr inbounds nuw [9 x i64], ptr %temp, i32 0, i32 %82, !dbg !2014
  %83 = load i64, ptr %arrayidx94, align 8, !dbg !2015
  %xor95 = xor i64 %83, %xor93, !dbg !2015
  store i64 %xor95, ptr %arrayidx94, align 8, !dbg !2015
  br label %for.inc96, !dbg !2016

for.inc96:                                        ; preds = %for.body76
  %84 = load i32, ptr %k72, align 4, !dbg !2017
  %inc97 = add i32 %84, 1, !dbg !2017
  store i32 %inc97, ptr %k72, align 4, !dbg !2017
  br label %for.cond73, !dbg !2018, !llvm.loop !2019

for.end98:                                        ; preds = %for.cond73
  br label %for.inc99, !dbg !2021

for.inc99:                                        ; preds = %for.end98
  %85 = load i32, ptr %j, align 4, !dbg !2022
  %inc100 = add nsw i32 %85, 1, !dbg !2022
  store i32 %inc100, ptr %j, align 4, !dbg !2022
  br label %for.cond19, !dbg !2023, !llvm.loop !2024

for.end101:                                       ; preds = %for.cond19
  br label %for.inc102, !dbg !2026

for.inc102:                                       ; preds = %for.end101
  %86 = load i32, ptr %i13, align 4, !dbg !2027
  %dec103 = add nsw i32 %86, -1, !dbg !2027
  store i32 %dec103, ptr %i13, align 4, !dbg !2027
  br label %for.cond16, !dbg !2028, !llvm.loop !2029

for.end104:                                       ; preds = %for.cond16
    #dbg_declare(ptr %i105, !2031, !DIExpression(), !2033)
  store i32 0, ptr %i105, align 4, !dbg !2033
  br label %for.cond106, !dbg !2034

for.cond106:                                      ; preds = %for.inc131, %for.end104
  %87 = load i32, ptr %i105, align 4, !dbg !2035
  %88 = load ptr, ptr %p.addr, align 4, !dbg !2037
  %m107 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %88, i32 0, i32 0, !dbg !2038
  %89 = load i32, ptr %m107, align 4, !dbg !2038
  %cmp108 = icmp slt i32 %87, %89, !dbg !2039
  br i1 %cmp108, label %for.body110, label %for.end133, !dbg !2040

for.body110:                                      ; preds = %for.cond106
  %90 = load ptr, ptr %t.addr, align 4, !dbg !2041
  %91 = load i32, ptr %i105, align 4, !dbg !2043
  %arrayidx111 = getelementptr inbounds i8, ptr %90, i32 %91, !dbg !2041
  %92 = load i8, ptr %arrayidx111, align 1, !dbg !2041
  %conv112 = zext i8 %92 to i32, !dbg !2041
  %93 = load ptr, ptr %temp_bytes, align 4, !dbg !2044
  %94 = load i32, ptr %i105, align 4, !dbg !2045
  %div113 = sdiv i32 %94, 2, !dbg !2046
  %arrayidx114 = getelementptr inbounds i8, ptr %93, i32 %div113, !dbg !2044
  %95 = load i8, ptr %arrayidx114, align 1, !dbg !2044
  %conv115 = zext i8 %95 to i32, !dbg !2044
  %and116 = and i32 %conv115, 15, !dbg !2047
  %xor117 = xor i32 %conv112, %and116, !dbg !2048
  %conv118 = trunc i32 %xor117 to i8, !dbg !2041
  %96 = load ptr, ptr %y.addr, align 4, !dbg !2049
  %97 = load i32, ptr %i105, align 4, !dbg !2050
  %arrayidx119 = getelementptr inbounds i8, ptr %96, i32 %97, !dbg !2049
  store i8 %conv118, ptr %arrayidx119, align 1, !dbg !2051
  %98 = load ptr, ptr %t.addr, align 4, !dbg !2052
  %99 = load i32, ptr %i105, align 4, !dbg !2053
  %add120 = add nsw i32 %99, 1, !dbg !2054
  %arrayidx121 = getelementptr inbounds i8, ptr %98, i32 %add120, !dbg !2052
  %100 = load i8, ptr %arrayidx121, align 1, !dbg !2052
  %conv122 = zext i8 %100 to i32, !dbg !2052
  %101 = load ptr, ptr %temp_bytes, align 4, !dbg !2055
  %102 = load i32, ptr %i105, align 4, !dbg !2056
  %div123 = sdiv i32 %102, 2, !dbg !2057
  %arrayidx124 = getelementptr inbounds i8, ptr %101, i32 %div123, !dbg !2055
  %103 = load i8, ptr %arrayidx124, align 1, !dbg !2055
  %conv125 = zext i8 %103 to i32, !dbg !2055
  %shr126 = ashr i32 %conv125, 4, !dbg !2058
  %xor127 = xor i32 %conv122, %shr126, !dbg !2059
  %conv128 = trunc i32 %xor127 to i8, !dbg !2052
  %104 = load ptr, ptr %y.addr, align 4, !dbg !2060
  %105 = load i32, ptr %i105, align 4, !dbg !2061
  %add129 = add nsw i32 %105, 1, !dbg !2062
  %arrayidx130 = getelementptr inbounds i8, ptr %104, i32 %add129, !dbg !2060
  store i8 %conv128, ptr %arrayidx130, align 1, !dbg !2063
  br label %for.inc131, !dbg !2064

for.inc131:                                       ; preds = %for.body110
  %106 = load i32, ptr %i105, align 4, !dbg !2065
  %add132 = add nsw i32 %106, 2, !dbg !2065
  store i32 %add132, ptr %i105, align 4, !dbg !2065
  br label %for.cond106, !dbg !2066, !llvm.loop !2067

for.end133:                                       ; preds = %for.cond106
  ret void, !dbg !2069
}

; Function Attrs: noinline nounwind optnone
define internal void @compute_A(ptr noundef %p, ptr noundef %VtL, ptr noundef %A_out) #0 !dbg !2070 {
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
    #dbg_declare(ptr %p.addr, !2073, !DIExpression(), !2074)
  store ptr %VtL, ptr %VtL.addr, align 4
    #dbg_declare(ptr %VtL.addr, !2075, !DIExpression(), !2076)
  store ptr %A_out, ptr %A_out.addr, align 4
    #dbg_declare(ptr %A_out.addr, !2077, !DIExpression(), !2078)
    #dbg_declare(ptr %bits_to_shift, !2079, !DIExpression(), !2080)
  store i32 0, ptr %bits_to_shift, align 4, !dbg !2080
    #dbg_declare(ptr %words_to_shift, !2081, !DIExpression(), !2082)
  store i32 0, ptr %words_to_shift, align 4, !dbg !2082
    #dbg_declare(ptr %m_vec_limbs, !2083, !DIExpression(), !2084)
  %0 = load ptr, ptr %p.addr, align 4, !dbg !2085
  %m_vec_limbs1 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %0, i32 0, i32 21, !dbg !2086
  %1 = load i32, ptr %m_vec_limbs1, align 4, !dbg !2086
  store i32 %1, ptr %m_vec_limbs, align 4, !dbg !2084
    #dbg_declare(ptr %A, !2087, !DIExpression(), !2091)
  call void @llvm.memset.p0.i32(ptr align 8 %A, i8 0, i32 29952, i1 false), !dbg !2091
    #dbg_declare(ptr %A_width, !2092, !DIExpression(), !2093)
  %2 = load ptr, ptr %p.addr, align 4, !dbg !2094
  %o = getelementptr inbounds nuw %struct.mayo_params_t, ptr %2, i32 0, i32 2, !dbg !2095
  %3 = load i32, ptr %o, align 4, !dbg !2095
  %4 = load ptr, ptr %p.addr, align 4, !dbg !2096
  %k = getelementptr inbounds nuw %struct.mayo_params_t, ptr %4, i32 0, i32 3, !dbg !2097
  %5 = load i32, ptr %k, align 4, !dbg !2097
  %mul = mul nsw i32 %3, %5, !dbg !2098
  %add = add nsw i32 %mul, 15, !dbg !2099
  %div = sdiv i32 %add, 16, !dbg !2100
  %mul2 = mul nsw i32 %div, 16, !dbg !2101
  store i32 %mul2, ptr %A_width, align 4, !dbg !2093
    #dbg_declare(ptr %Mi, !2102, !DIExpression(), !2103)
    #dbg_declare(ptr %Mj, !2104, !DIExpression(), !2105)
  %6 = load ptr, ptr %p.addr, align 4, !dbg !2106
  %m = getelementptr inbounds nuw %struct.mayo_params_t, ptr %6, i32 0, i32 0, !dbg !2108
  %7 = load i32, ptr %m, align 4, !dbg !2108
  %rem = srem i32 %7, 16, !dbg !2109
  %cmp = icmp ne i32 %rem, 0, !dbg !2110
  br i1 %cmp, label %if.then, label %if.end, !dbg !2110

if.then:                                          ; preds = %entry
    #dbg_declare(ptr %mask, !2111, !DIExpression(), !2113)
  store i64 1, ptr %mask, align 8, !dbg !2113
  %8 = load ptr, ptr %p.addr, align 4, !dbg !2114
  %m3 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %8, i32 0, i32 0, !dbg !2115
  %9 = load i32, ptr %m3, align 4, !dbg !2115
  %rem4 = srem i32 %9, 16, !dbg !2116
  %mul5 = mul nsw i32 %rem4, 4, !dbg !2117
  %10 = load i64, ptr %mask, align 8, !dbg !2118
  %sh_prom = zext i32 %mul5 to i64, !dbg !2118
  %shl = shl i64 %10, %sh_prom, !dbg !2118
  store i64 %shl, ptr %mask, align 8, !dbg !2118
  %11 = load i64, ptr %mask, align 8, !dbg !2119
  %sub = sub i64 %11, 1, !dbg !2119
  store i64 %sub, ptr %mask, align 8, !dbg !2119
    #dbg_declare(ptr %i, !2120, !DIExpression(), !2122)
  store i32 0, ptr %i, align 4, !dbg !2122
  br label %for.cond, !dbg !2123

for.cond:                                         ; preds = %for.inc, %if.then
  %12 = load i32, ptr %i, align 4, !dbg !2124
  %13 = load ptr, ptr %p.addr, align 4, !dbg !2126
  %o6 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %13, i32 0, i32 2, !dbg !2127
  %14 = load i32, ptr %o6, align 4, !dbg !2127
  %15 = load ptr, ptr %p.addr, align 4, !dbg !2128
  %k7 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %15, i32 0, i32 3, !dbg !2129
  %16 = load i32, ptr %k7, align 4, !dbg !2129
  %mul8 = mul nsw i32 %14, %16, !dbg !2130
  %cmp9 = icmp slt i32 %12, %mul8, !dbg !2131
  br i1 %cmp9, label %for.body, label %for.end, !dbg !2132

for.body:                                         ; preds = %for.cond
  %17 = load i64, ptr %mask, align 8, !dbg !2133
  %18 = load ptr, ptr %VtL.addr, align 4, !dbg !2135
  %19 = load i32, ptr %i, align 4, !dbg !2136
  %20 = load i32, ptr %m_vec_limbs, align 4, !dbg !2137
  %mul10 = mul nsw i32 %19, %20, !dbg !2138
  %21 = load i32, ptr %m_vec_limbs, align 4, !dbg !2139
  %add11 = add nsw i32 %mul10, %21, !dbg !2140
  %sub12 = sub nsw i32 %add11, 1, !dbg !2141
  %arrayidx = getelementptr inbounds i64, ptr %18, i32 %sub12, !dbg !2135
  %22 = load i64, ptr %arrayidx, align 8, !dbg !2142
  %and = and i64 %22, %17, !dbg !2142
  store i64 %and, ptr %arrayidx, align 8, !dbg !2142
  br label %for.inc, !dbg !2143

for.inc:                                          ; preds = %for.body
  %23 = load i32, ptr %i, align 4, !dbg !2144
  %inc = add nsw i32 %23, 1, !dbg !2144
  store i32 %inc, ptr %i, align 4, !dbg !2144
  br label %for.cond, !dbg !2145, !llvm.loop !2146

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !2148

if.end:                                           ; preds = %for.end, %entry
    #dbg_declare(ptr %i13, !2149, !DIExpression(), !2151)
  store i32 0, ptr %i13, align 4, !dbg !2151
  br label %for.cond14, !dbg !2152

for.cond14:                                       ; preds = %for.inc130, %if.end
  %24 = load i32, ptr %i13, align 4, !dbg !2153
  %25 = load ptr, ptr %p.addr, align 4, !dbg !2155
  %k15 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %25, i32 0, i32 3, !dbg !2156
  %26 = load i32, ptr %k15, align 4, !dbg !2156
  %sub16 = sub nsw i32 %26, 1, !dbg !2157
  %cmp17 = icmp sle i32 %24, %sub16, !dbg !2158
  br i1 %cmp17, label %for.body18, label %for.end132, !dbg !2159

for.body18:                                       ; preds = %for.cond14
    #dbg_declare(ptr %j, !2160, !DIExpression(), !2163)
  %27 = load ptr, ptr %p.addr, align 4, !dbg !2164
  %k19 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %27, i32 0, i32 3, !dbg !2165
  %28 = load i32, ptr %k19, align 4, !dbg !2165
  %sub20 = sub nsw i32 %28, 1, !dbg !2166
  store i32 %sub20, ptr %j, align 4, !dbg !2163
  br label %for.cond21, !dbg !2167

for.cond21:                                       ; preds = %for.inc128, %for.body18
  %29 = load i32, ptr %j, align 4, !dbg !2168
  %30 = load i32, ptr %i13, align 4, !dbg !2170
  %cmp22 = icmp sge i32 %29, %30, !dbg !2171
  br i1 %cmp22, label %for.body23, label %for.end129, !dbg !2172

for.body23:                                       ; preds = %for.cond21
  %31 = load ptr, ptr %VtL.addr, align 4, !dbg !2173
  %32 = load i32, ptr %j, align 4, !dbg !2175
  %33 = load i32, ptr %m_vec_limbs, align 4, !dbg !2176
  %mul24 = mul nsw i32 %32, %33, !dbg !2177
  %34 = load ptr, ptr %p.addr, align 4, !dbg !2178
  %o25 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %34, i32 0, i32 2, !dbg !2179
  %35 = load i32, ptr %o25, align 4, !dbg !2179
  %mul26 = mul nsw i32 %mul24, %35, !dbg !2180
  %add.ptr = getelementptr inbounds i64, ptr %31, i32 %mul26, !dbg !2181
  store ptr %add.ptr, ptr %Mj, align 4, !dbg !2182
    #dbg_declare(ptr %c, !2183, !DIExpression(), !2185)
  store i32 0, ptr %c, align 4, !dbg !2185
  br label %for.cond27, !dbg !2186

for.cond27:                                       ; preds = %for.inc67, %for.body23
  %36 = load i32, ptr %c, align 4, !dbg !2187
  %37 = load ptr, ptr %p.addr, align 4, !dbg !2189
  %o28 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %37, i32 0, i32 2, !dbg !2190
  %38 = load i32, ptr %o28, align 4, !dbg !2190
  %cmp29 = icmp slt i32 %36, %38, !dbg !2191
  br i1 %cmp29, label %for.body30, label %for.end69, !dbg !2192

for.body30:                                       ; preds = %for.cond27
    #dbg_declare(ptr %k31, !2193, !DIExpression(), !2196)
  store i32 0, ptr %k31, align 4, !dbg !2196
  br label %for.cond32, !dbg !2197

for.cond32:                                       ; preds = %for.inc64, %for.body30
  %39 = load i32, ptr %k31, align 4, !dbg !2198
  %40 = load i32, ptr %m_vec_limbs, align 4, !dbg !2200
  %cmp33 = icmp slt i32 %39, %40, !dbg !2201
  br i1 %cmp33, label %for.body34, label %for.end66, !dbg !2202

for.body34:                                       ; preds = %for.cond32
  %41 = load ptr, ptr %Mj, align 4, !dbg !2203
  %42 = load i32, ptr %k31, align 4, !dbg !2205
  %43 = load i32, ptr %c, align 4, !dbg !2206
  %44 = load i32, ptr %m_vec_limbs, align 4, !dbg !2207
  %mul35 = mul nsw i32 %43, %44, !dbg !2208
  %add36 = add nsw i32 %42, %mul35, !dbg !2209
  %arrayidx37 = getelementptr inbounds i64, ptr %41, i32 %add36, !dbg !2203
  %45 = load i64, ptr %arrayidx37, align 8, !dbg !2203
  %46 = load i32, ptr %bits_to_shift, align 4, !dbg !2210
  %sh_prom38 = zext i32 %46 to i64, !dbg !2211
  %shl39 = shl i64 %45, %sh_prom38, !dbg !2211
  %47 = load ptr, ptr %p.addr, align 4, !dbg !2212
  %o40 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %47, i32 0, i32 2, !dbg !2213
  %48 = load i32, ptr %o40, align 4, !dbg !2213
  %49 = load i32, ptr %i13, align 4, !dbg !2214
  %mul41 = mul nsw i32 %48, %49, !dbg !2215
  %50 = load i32, ptr %c, align 4, !dbg !2216
  %add42 = add nsw i32 %mul41, %50, !dbg !2217
  %51 = load i32, ptr %k31, align 4, !dbg !2218
  %52 = load i32, ptr %words_to_shift, align 4, !dbg !2219
  %add43 = add nsw i32 %51, %52, !dbg !2220
  %53 = load i32, ptr %A_width, align 4, !dbg !2221
  %mul44 = mul i32 %add43, %53, !dbg !2222
  %add45 = add i32 %add42, %mul44, !dbg !2223
  %arrayidx46 = getelementptr inbounds nuw [3744 x i64], ptr %A, i32 0, i32 %add45, !dbg !2224
  %54 = load i64, ptr %arrayidx46, align 8, !dbg !2225
  %xor = xor i64 %54, %shl39, !dbg !2225
  store i64 %xor, ptr %arrayidx46, align 8, !dbg !2225
  %55 = load i32, ptr %bits_to_shift, align 4, !dbg !2226
  %cmp47 = icmp sgt i32 %55, 0, !dbg !2228
  br i1 %cmp47, label %if.then48, label %if.end63, !dbg !2228

if.then48:                                        ; preds = %for.body34
  %56 = load ptr, ptr %Mj, align 4, !dbg !2229
  %57 = load i32, ptr %k31, align 4, !dbg !2231
  %58 = load i32, ptr %c, align 4, !dbg !2232
  %59 = load i32, ptr %m_vec_limbs, align 4, !dbg !2233
  %mul49 = mul nsw i32 %58, %59, !dbg !2234
  %add50 = add nsw i32 %57, %mul49, !dbg !2235
  %arrayidx51 = getelementptr inbounds i64, ptr %56, i32 %add50, !dbg !2229
  %60 = load i64, ptr %arrayidx51, align 8, !dbg !2229
  %61 = load i32, ptr %bits_to_shift, align 4, !dbg !2236
  %sub52 = sub nsw i32 64, %61, !dbg !2237
  %sh_prom53 = zext i32 %sub52 to i64, !dbg !2238
  %shr = lshr i64 %60, %sh_prom53, !dbg !2238
  %62 = load ptr, ptr %p.addr, align 4, !dbg !2239
  %o54 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %62, i32 0, i32 2, !dbg !2240
  %63 = load i32, ptr %o54, align 4, !dbg !2240
  %64 = load i32, ptr %i13, align 4, !dbg !2241
  %mul55 = mul nsw i32 %63, %64, !dbg !2242
  %65 = load i32, ptr %c, align 4, !dbg !2243
  %add56 = add nsw i32 %mul55, %65, !dbg !2244
  %66 = load i32, ptr %k31, align 4, !dbg !2245
  %67 = load i32, ptr %words_to_shift, align 4, !dbg !2246
  %add57 = add nsw i32 %66, %67, !dbg !2247
  %add58 = add nsw i32 %add57, 1, !dbg !2248
  %68 = load i32, ptr %A_width, align 4, !dbg !2249
  %mul59 = mul i32 %add58, %68, !dbg !2250
  %add60 = add i32 %add56, %mul59, !dbg !2251
  %arrayidx61 = getelementptr inbounds nuw [3744 x i64], ptr %A, i32 0, i32 %add60, !dbg !2252
  %69 = load i64, ptr %arrayidx61, align 8, !dbg !2253
  %xor62 = xor i64 %69, %shr, !dbg !2253
  store i64 %xor62, ptr %arrayidx61, align 8, !dbg !2253
  br label %if.end63, !dbg !2254

if.end63:                                         ; preds = %if.then48, %for.body34
  br label %for.inc64, !dbg !2255

for.inc64:                                        ; preds = %if.end63
  %70 = load i32, ptr %k31, align 4, !dbg !2256
  %inc65 = add nsw i32 %70, 1, !dbg !2256
  store i32 %inc65, ptr %k31, align 4, !dbg !2256
  br label %for.cond32, !dbg !2257, !llvm.loop !2258

for.end66:                                        ; preds = %for.cond32
  br label %for.inc67, !dbg !2260

for.inc67:                                        ; preds = %for.end66
  %71 = load i32, ptr %c, align 4, !dbg !2261
  %inc68 = add nsw i32 %71, 1, !dbg !2261
  store i32 %inc68, ptr %c, align 4, !dbg !2261
  br label %for.cond27, !dbg !2262, !llvm.loop !2263

for.end69:                                        ; preds = %for.cond27
  %72 = load i32, ptr %i13, align 4, !dbg !2265
  %73 = load i32, ptr %j, align 4, !dbg !2267
  %cmp70 = icmp ne i32 %72, %73, !dbg !2268
  br i1 %cmp70, label %if.then71, label %if.end122, !dbg !2268

if.then71:                                        ; preds = %for.end69
  %74 = load ptr, ptr %VtL.addr, align 4, !dbg !2269
  %75 = load i32, ptr %i13, align 4, !dbg !2271
  %76 = load i32, ptr %m_vec_limbs, align 4, !dbg !2272
  %mul72 = mul nsw i32 %75, %76, !dbg !2273
  %77 = load ptr, ptr %p.addr, align 4, !dbg !2274
  %o73 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %77, i32 0, i32 2, !dbg !2275
  %78 = load i32, ptr %o73, align 4, !dbg !2275
  %mul74 = mul nsw i32 %mul72, %78, !dbg !2276
  %add.ptr75 = getelementptr inbounds i64, ptr %74, i32 %mul74, !dbg !2277
  store ptr %add.ptr75, ptr %Mi, align 4, !dbg !2278
    #dbg_declare(ptr %c76, !2279, !DIExpression(), !2281)
  store i32 0, ptr %c76, align 4, !dbg !2281
  br label %for.cond77, !dbg !2282

for.cond77:                                       ; preds = %for.inc119, %if.then71
  %79 = load i32, ptr %c76, align 4, !dbg !2283
  %80 = load ptr, ptr %p.addr, align 4, !dbg !2285
  %o78 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %80, i32 0, i32 2, !dbg !2286
  %81 = load i32, ptr %o78, align 4, !dbg !2286
  %cmp79 = icmp slt i32 %79, %81, !dbg !2287
  br i1 %cmp79, label %for.body80, label %for.end121, !dbg !2288

for.body80:                                       ; preds = %for.cond77
    #dbg_declare(ptr %k81, !2289, !DIExpression(), !2292)
  store i32 0, ptr %k81, align 4, !dbg !2292
  br label %for.cond82, !dbg !2293

for.cond82:                                       ; preds = %for.inc116, %for.body80
  %82 = load i32, ptr %k81, align 4, !dbg !2294
  %83 = load i32, ptr %m_vec_limbs, align 4, !dbg !2296
  %cmp83 = icmp slt i32 %82, %83, !dbg !2297
  br i1 %cmp83, label %for.body84, label %for.end118, !dbg !2298

for.body84:                                       ; preds = %for.cond82
  %84 = load ptr, ptr %Mi, align 4, !dbg !2299
  %85 = load i32, ptr %k81, align 4, !dbg !2301
  %86 = load i32, ptr %c76, align 4, !dbg !2302
  %87 = load i32, ptr %m_vec_limbs, align 4, !dbg !2303
  %mul85 = mul nsw i32 %86, %87, !dbg !2304
  %add86 = add nsw i32 %85, %mul85, !dbg !2305
  %arrayidx87 = getelementptr inbounds i64, ptr %84, i32 %add86, !dbg !2299
  %88 = load i64, ptr %arrayidx87, align 8, !dbg !2299
  %89 = load i32, ptr %bits_to_shift, align 4, !dbg !2306
  %sh_prom88 = zext i32 %89 to i64, !dbg !2307
  %shl89 = shl i64 %88, %sh_prom88, !dbg !2307
  %90 = load ptr, ptr %p.addr, align 4, !dbg !2308
  %o90 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %90, i32 0, i32 2, !dbg !2309
  %91 = load i32, ptr %o90, align 4, !dbg !2309
  %92 = load i32, ptr %j, align 4, !dbg !2310
  %mul91 = mul nsw i32 %91, %92, !dbg !2311
  %93 = load i32, ptr %c76, align 4, !dbg !2312
  %add92 = add nsw i32 %mul91, %93, !dbg !2313
  %94 = load i32, ptr %k81, align 4, !dbg !2314
  %95 = load i32, ptr %words_to_shift, align 4, !dbg !2315
  %add93 = add nsw i32 %94, %95, !dbg !2316
  %96 = load i32, ptr %A_width, align 4, !dbg !2317
  %mul94 = mul i32 %add93, %96, !dbg !2318
  %add95 = add i32 %add92, %mul94, !dbg !2319
  %arrayidx96 = getelementptr inbounds nuw [3744 x i64], ptr %A, i32 0, i32 %add95, !dbg !2320
  %97 = load i64, ptr %arrayidx96, align 8, !dbg !2321
  %xor97 = xor i64 %97, %shl89, !dbg !2321
  store i64 %xor97, ptr %arrayidx96, align 8, !dbg !2321
  %98 = load i32, ptr %bits_to_shift, align 4, !dbg !2322
  %cmp98 = icmp sgt i32 %98, 0, !dbg !2324
  br i1 %cmp98, label %if.then99, label %if.end115, !dbg !2324

if.then99:                                        ; preds = %for.body84
  %99 = load ptr, ptr %Mi, align 4, !dbg !2325
  %100 = load i32, ptr %k81, align 4, !dbg !2327
  %101 = load i32, ptr %c76, align 4, !dbg !2328
  %102 = load i32, ptr %m_vec_limbs, align 4, !dbg !2329
  %mul100 = mul nsw i32 %101, %102, !dbg !2330
  %add101 = add nsw i32 %100, %mul100, !dbg !2331
  %arrayidx102 = getelementptr inbounds i64, ptr %99, i32 %add101, !dbg !2325
  %103 = load i64, ptr %arrayidx102, align 8, !dbg !2325
  %104 = load i32, ptr %bits_to_shift, align 4, !dbg !2332
  %sub103 = sub nsw i32 64, %104, !dbg !2333
  %sh_prom104 = zext i32 %sub103 to i64, !dbg !2334
  %shr105 = lshr i64 %103, %sh_prom104, !dbg !2334
  %105 = load ptr, ptr %p.addr, align 4, !dbg !2335
  %o106 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %105, i32 0, i32 2, !dbg !2336
  %106 = load i32, ptr %o106, align 4, !dbg !2336
  %107 = load i32, ptr %j, align 4, !dbg !2337
  %mul107 = mul nsw i32 %106, %107, !dbg !2338
  %108 = load i32, ptr %c76, align 4, !dbg !2339
  %add108 = add nsw i32 %mul107, %108, !dbg !2340
  %109 = load i32, ptr %k81, align 4, !dbg !2341
  %110 = load i32, ptr %words_to_shift, align 4, !dbg !2342
  %add109 = add nsw i32 %109, %110, !dbg !2343
  %add110 = add nsw i32 %add109, 1, !dbg !2344
  %111 = load i32, ptr %A_width, align 4, !dbg !2345
  %mul111 = mul i32 %add110, %111, !dbg !2346
  %add112 = add i32 %add108, %mul111, !dbg !2347
  %arrayidx113 = getelementptr inbounds nuw [3744 x i64], ptr %A, i32 0, i32 %add112, !dbg !2348
  %112 = load i64, ptr %arrayidx113, align 8, !dbg !2349
  %xor114 = xor i64 %112, %shr105, !dbg !2349
  store i64 %xor114, ptr %arrayidx113, align 8, !dbg !2349
  br label %if.end115, !dbg !2350

if.end115:                                        ; preds = %if.then99, %for.body84
  br label %for.inc116, !dbg !2351

for.inc116:                                       ; preds = %if.end115
  %113 = load i32, ptr %k81, align 4, !dbg !2352
  %inc117 = add nsw i32 %113, 1, !dbg !2352
  store i32 %inc117, ptr %k81, align 4, !dbg !2352
  br label %for.cond82, !dbg !2353, !llvm.loop !2354

for.end118:                                       ; preds = %for.cond82
  br label %for.inc119, !dbg !2356

for.inc119:                                       ; preds = %for.end118
  %114 = load i32, ptr %c76, align 4, !dbg !2357
  %inc120 = add nsw i32 %114, 1, !dbg !2357
  store i32 %inc120, ptr %c76, align 4, !dbg !2357
  br label %for.cond77, !dbg !2358, !llvm.loop !2359

for.end121:                                       ; preds = %for.cond77
  br label %if.end122, !dbg !2361

if.end122:                                        ; preds = %for.end121, %for.end69
  %115 = load i32, ptr %bits_to_shift, align 4, !dbg !2362
  %add123 = add nsw i32 %115, 4, !dbg !2362
  store i32 %add123, ptr %bits_to_shift, align 4, !dbg !2362
  %116 = load i32, ptr %bits_to_shift, align 4, !dbg !2363
  %cmp124 = icmp eq i32 %116, 64, !dbg !2365
  br i1 %cmp124, label %if.then125, label %if.end127, !dbg !2365

if.then125:                                       ; preds = %if.end122
  %117 = load i32, ptr %words_to_shift, align 4, !dbg !2366
  %inc126 = add nsw i32 %117, 1, !dbg !2366
  store i32 %inc126, ptr %words_to_shift, align 4, !dbg !2366
  store i32 0, ptr %bits_to_shift, align 4, !dbg !2368
  br label %if.end127, !dbg !2369

if.end127:                                        ; preds = %if.then125, %if.end122
  br label %for.inc128, !dbg !2370

for.inc128:                                       ; preds = %if.end127
  %118 = load i32, ptr %j, align 4, !dbg !2371
  %dec = add nsw i32 %118, -1, !dbg !2371
  store i32 %dec, ptr %j, align 4, !dbg !2371
  br label %for.cond21, !dbg !2372, !llvm.loop !2373

for.end129:                                       ; preds = %for.cond21
  br label %for.inc130, !dbg !2375

for.inc130:                                       ; preds = %for.end129
  %119 = load i32, ptr %i13, align 4, !dbg !2376
  %inc131 = add nsw i32 %119, 1, !dbg !2376
  store i32 %inc131, ptr %i13, align 4, !dbg !2376
  br label %for.cond14, !dbg !2377, !llvm.loop !2378

for.end132:                                       ; preds = %for.cond14
    #dbg_declare(ptr %c133, !2380, !DIExpression(), !2382)
  store i32 0, ptr %c133, align 4, !dbg !2382
  br label %for.cond134, !dbg !2383

for.cond134:                                      ; preds = %for.inc148, %for.end132
  %120 = load i32, ptr %c133, align 4, !dbg !2384
  %121 = load i32, ptr %A_width, align 4, !dbg !2386
  %122 = load ptr, ptr %p.addr, align 4, !dbg !2387
  %m135 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %122, i32 0, i32 0, !dbg !2388
  %123 = load i32, ptr %m135, align 4, !dbg !2388
  %124 = load ptr, ptr %p.addr, align 4, !dbg !2389
  %k136 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %124, i32 0, i32 3, !dbg !2390
  %125 = load i32, ptr %k136, align 4, !dbg !2390
  %add137 = add nsw i32 %125, 1, !dbg !2391
  %126 = load ptr, ptr %p.addr, align 4, !dbg !2392
  %k138 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %126, i32 0, i32 3, !dbg !2393
  %127 = load i32, ptr %k138, align 4, !dbg !2393
  %mul139 = mul nsw i32 %add137, %127, !dbg !2394
  %div140 = sdiv i32 %mul139, 2, !dbg !2395
  %add141 = add nsw i32 %123, %div140, !dbg !2396
  %add142 = add nsw i32 %add141, 15, !dbg !2397
  %div143 = sdiv i32 %add142, 16, !dbg !2398
  %mul144 = mul i32 %121, %div143, !dbg !2399
  %cmp145 = icmp ult i32 %120, %mul144, !dbg !2400
  br i1 %cmp145, label %for.body146, label %for.end150, !dbg !2401

for.body146:                                      ; preds = %for.cond134
  %arraydecay = getelementptr inbounds [3744 x i64], ptr %A, i32 0, i32 0, !dbg !2402
  %128 = load i32, ptr %c133, align 4, !dbg !2404
  %add.ptr147 = getelementptr inbounds nuw i64, ptr %arraydecay, i32 %128, !dbg !2405
  call void @transpose_16x16_nibbles(ptr noundef %add.ptr147) #5, !dbg !2406
  br label %for.inc148, !dbg !2407

for.inc148:                                       ; preds = %for.body146
  %129 = load i32, ptr %c133, align 4, !dbg !2408
  %add149 = add i32 %129, 16, !dbg !2408
  store i32 %add149, ptr %c133, align 4, !dbg !2408
  br label %for.cond134, !dbg !2409, !llvm.loop !2410

for.end150:                                       ; preds = %for.cond134
    #dbg_declare(ptr %tab, !2412, !DIExpression(), !2416)
  call void @llvm.memset.p0.i32(ptr align 1 %tab, i8 0, i32 16, i1 false), !dbg !2416
    #dbg_declare(ptr %i151, !2417, !DIExpression(), !2419)
  store i32 0, ptr %i151, align 4, !dbg !2419
  br label %for.cond152, !dbg !2420

for.cond152:                                      ; preds = %for.inc176, %for.end150
  %130 = load i32, ptr %i151, align 4, !dbg !2421
  %cmp153 = icmp ult i32 %130, 4, !dbg !2423
  br i1 %cmp153, label %for.body154, label %for.end178, !dbg !2424

for.body154:                                      ; preds = %for.cond152
  %131 = load ptr, ptr %p.addr, align 4, !dbg !2425
  %f_tail = getelementptr inbounds nuw %struct.mayo_params_t, ptr %131, i32 0, i32 5, !dbg !2427
  %132 = load ptr, ptr %f_tail, align 4, !dbg !2427
  %133 = load i32, ptr %i151, align 4, !dbg !2428
  %arrayidx155 = getelementptr inbounds nuw i8, ptr %132, i32 %133, !dbg !2427
  %134 = load i8, ptr %arrayidx155, align 1, !dbg !2427
  %call = call zeroext i8 @mul_f(i8 noundef zeroext %134, i8 noundef zeroext 1) #5, !dbg !2429
  %135 = load i32, ptr %i151, align 4, !dbg !2430
  %mul156 = mul i32 4, %135, !dbg !2431
  %arrayidx157 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %mul156, !dbg !2432
  store i8 %call, ptr %arrayidx157, align 1, !dbg !2433
  %136 = load ptr, ptr %p.addr, align 4, !dbg !2434
  %f_tail158 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %136, i32 0, i32 5, !dbg !2435
  %137 = load ptr, ptr %f_tail158, align 4, !dbg !2435
  %138 = load i32, ptr %i151, align 4, !dbg !2436
  %arrayidx159 = getelementptr inbounds nuw i8, ptr %137, i32 %138, !dbg !2435
  %139 = load i8, ptr %arrayidx159, align 1, !dbg !2435
  %call160 = call zeroext i8 @mul_f(i8 noundef zeroext %139, i8 noundef zeroext 2) #5, !dbg !2437
  %140 = load i32, ptr %i151, align 4, !dbg !2438
  %mul161 = mul i32 4, %140, !dbg !2439
  %add162 = add i32 %mul161, 1, !dbg !2440
  %arrayidx163 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add162, !dbg !2441
  store i8 %call160, ptr %arrayidx163, align 1, !dbg !2442
  %141 = load ptr, ptr %p.addr, align 4, !dbg !2443
  %f_tail164 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %141, i32 0, i32 5, !dbg !2444
  %142 = load ptr, ptr %f_tail164, align 4, !dbg !2444
  %143 = load i32, ptr %i151, align 4, !dbg !2445
  %arrayidx165 = getelementptr inbounds nuw i8, ptr %142, i32 %143, !dbg !2444
  %144 = load i8, ptr %arrayidx165, align 1, !dbg !2444
  %call166 = call zeroext i8 @mul_f(i8 noundef zeroext %144, i8 noundef zeroext 4) #5, !dbg !2446
  %145 = load i32, ptr %i151, align 4, !dbg !2447
  %mul167 = mul i32 4, %145, !dbg !2448
  %add168 = add i32 %mul167, 2, !dbg !2449
  %arrayidx169 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add168, !dbg !2450
  store i8 %call166, ptr %arrayidx169, align 1, !dbg !2451
  %146 = load ptr, ptr %p.addr, align 4, !dbg !2452
  %f_tail170 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %146, i32 0, i32 5, !dbg !2453
  %147 = load ptr, ptr %f_tail170, align 4, !dbg !2453
  %148 = load i32, ptr %i151, align 4, !dbg !2454
  %arrayidx171 = getelementptr inbounds nuw i8, ptr %147, i32 %148, !dbg !2453
  %149 = load i8, ptr %arrayidx171, align 1, !dbg !2453
  %call172 = call zeroext i8 @mul_f(i8 noundef zeroext %149, i8 noundef zeroext 8) #5, !dbg !2455
  %150 = load i32, ptr %i151, align 4, !dbg !2456
  %mul173 = mul i32 4, %150, !dbg !2457
  %add174 = add i32 %mul173, 3, !dbg !2458
  %arrayidx175 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add174, !dbg !2459
  store i8 %call172, ptr %arrayidx175, align 1, !dbg !2460
  br label %for.inc176, !dbg !2461

for.inc176:                                       ; preds = %for.body154
  %151 = load i32, ptr %i151, align 4, !dbg !2462
  %inc177 = add i32 %151, 1, !dbg !2462
  store i32 %inc177, ptr %i151, align 4, !dbg !2462
  br label %for.cond152, !dbg !2463, !llvm.loop !2464

for.end178:                                       ; preds = %for.cond152
    #dbg_declare(ptr %low_bit_in_nibble, !2466, !DIExpression(), !2467)
  store i64 1229782938247303441, ptr %low_bit_in_nibble, align 8, !dbg !2467
    #dbg_declare(ptr %c179, !2468, !DIExpression(), !2470)
  store i32 0, ptr %c179, align 4, !dbg !2470
  br label %for.cond180, !dbg !2471

for.cond180:                                      ; preds = %for.inc254, %for.end178
  %152 = load i32, ptr %c179, align 4, !dbg !2472
  %153 = load i32, ptr %A_width, align 4, !dbg !2474
  %cmp181 = icmp ult i32 %152, %153, !dbg !2475
  br i1 %cmp181, label %for.body182, label %for.end256, !dbg !2476

for.body182:                                      ; preds = %for.cond180
    #dbg_declare(ptr %r, !2477, !DIExpression(), !2480)
  %154 = load ptr, ptr %p.addr, align 4, !dbg !2481
  %m183 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %154, i32 0, i32 0, !dbg !2482
  %155 = load i32, ptr %m183, align 4, !dbg !2482
  store i32 %155, ptr %r, align 4, !dbg !2480
  br label %for.cond184, !dbg !2483

for.cond184:                                      ; preds = %for.inc251, %for.body182
  %156 = load i32, ptr %r, align 4, !dbg !2484
  %157 = load ptr, ptr %p.addr, align 4, !dbg !2486
  %m185 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %157, i32 0, i32 0, !dbg !2487
  %158 = load i32, ptr %m185, align 4, !dbg !2487
  %159 = load ptr, ptr %p.addr, align 4, !dbg !2488
  %k186 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %159, i32 0, i32 3, !dbg !2489
  %160 = load i32, ptr %k186, align 4, !dbg !2489
  %add187 = add nsw i32 %160, 1, !dbg !2490
  %161 = load ptr, ptr %p.addr, align 4, !dbg !2491
  %k188 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %161, i32 0, i32 3, !dbg !2492
  %162 = load i32, ptr %k188, align 4, !dbg !2492
  %mul189 = mul nsw i32 %add187, %162, !dbg !2493
  %div190 = sdiv i32 %mul189, 2, !dbg !2494
  %add191 = add nsw i32 %158, %div190, !dbg !2495
  %cmp192 = icmp slt i32 %156, %add191, !dbg !2496
  br i1 %cmp192, label %for.body193, label %for.end253, !dbg !2497

for.body193:                                      ; preds = %for.cond184
    #dbg_declare(ptr %pos, !2498, !DIExpression(), !2500)
  %163 = load i32, ptr %r, align 4, !dbg !2501
  %div194 = sdiv i32 %163, 16, !dbg !2502
  %164 = load i32, ptr %A_width, align 4, !dbg !2503
  %mul195 = mul i32 %div194, %164, !dbg !2504
  %165 = load i32, ptr %c179, align 4, !dbg !2505
  %add196 = add i32 %mul195, %165, !dbg !2506
  %166 = load i32, ptr %r, align 4, !dbg !2507
  %rem197 = srem i32 %166, 16, !dbg !2508
  %add198 = add i32 %add196, %rem197, !dbg !2509
  store i32 %add198, ptr %pos, align 4, !dbg !2500
    #dbg_declare(ptr %t0, !2510, !DIExpression(), !2511)
  %167 = load i32, ptr %pos, align 4, !dbg !2512
  %arrayidx199 = getelementptr inbounds nuw [3744 x i64], ptr %A, i32 0, i32 %167, !dbg !2513
  %168 = load i64, ptr %arrayidx199, align 8, !dbg !2513
  %169 = load i64, ptr %low_bit_in_nibble, align 8, !dbg !2514
  %and200 = and i64 %168, %169, !dbg !2515
  store i64 %and200, ptr %t0, align 8, !dbg !2511
    #dbg_declare(ptr %t1, !2516, !DIExpression(), !2517)
  %170 = load i32, ptr %pos, align 4, !dbg !2518
  %arrayidx201 = getelementptr inbounds nuw [3744 x i64], ptr %A, i32 0, i32 %170, !dbg !2519
  %171 = load i64, ptr %arrayidx201, align 8, !dbg !2519
  %shr202 = lshr i64 %171, 1, !dbg !2520
  %172 = load i64, ptr %low_bit_in_nibble, align 8, !dbg !2521
  %and203 = and i64 %shr202, %172, !dbg !2522
  store i64 %and203, ptr %t1, align 8, !dbg !2517
    #dbg_declare(ptr %t2, !2523, !DIExpression(), !2524)
  %173 = load i32, ptr %pos, align 4, !dbg !2525
  %arrayidx204 = getelementptr inbounds nuw [3744 x i64], ptr %A, i32 0, i32 %173, !dbg !2526
  %174 = load i64, ptr %arrayidx204, align 8, !dbg !2526
  %shr205 = lshr i64 %174, 2, !dbg !2527
  %175 = load i64, ptr %low_bit_in_nibble, align 8, !dbg !2528
  %and206 = and i64 %shr205, %175, !dbg !2529
  store i64 %and206, ptr %t2, align 8, !dbg !2524
    #dbg_declare(ptr %t3, !2530, !DIExpression(), !2531)
  %176 = load i32, ptr %pos, align 4, !dbg !2532
  %arrayidx207 = getelementptr inbounds nuw [3744 x i64], ptr %A, i32 0, i32 %176, !dbg !2533
  %177 = load i64, ptr %arrayidx207, align 8, !dbg !2533
  %shr208 = lshr i64 %177, 3, !dbg !2534
  %178 = load i64, ptr %low_bit_in_nibble, align 8, !dbg !2535
  %and209 = and i64 %shr208, %178, !dbg !2536
  store i64 %and209, ptr %t3, align 8, !dbg !2531
    #dbg_declare(ptr %t, !2537, !DIExpression(), !2539)
  store i32 0, ptr %t, align 4, !dbg !2539
  br label %for.cond210, !dbg !2540

for.cond210:                                      ; preds = %for.inc248, %for.body193
  %179 = load i32, ptr %t, align 4, !dbg !2541
  %cmp211 = icmp ult i32 %179, 4, !dbg !2543
  br i1 %cmp211, label %for.body212, label %for.end250, !dbg !2544

for.body212:                                      ; preds = %for.cond210
  %180 = load i64, ptr %t0, align 8, !dbg !2545
  %181 = load i32, ptr %t, align 4, !dbg !2547
  %mul213 = mul i32 4, %181, !dbg !2548
  %add214 = add i32 %mul213, 0, !dbg !2549
  %arrayidx215 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add214, !dbg !2550
  %182 = load i8, ptr %arrayidx215, align 1, !dbg !2550
  %conv = zext i8 %182 to i64, !dbg !2550
  %mul216 = mul i64 %180, %conv, !dbg !2551
  %183 = load i64, ptr %t1, align 8, !dbg !2552
  %184 = load i32, ptr %t, align 4, !dbg !2553
  %mul217 = mul i32 4, %184, !dbg !2554
  %add218 = add i32 %mul217, 1, !dbg !2555
  %arrayidx219 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add218, !dbg !2556
  %185 = load i8, ptr %arrayidx219, align 1, !dbg !2556
  %conv220 = zext i8 %185 to i64, !dbg !2556
  %mul221 = mul i64 %183, %conv220, !dbg !2557
  %xor222 = xor i64 %mul216, %mul221, !dbg !2558
  %186 = load i64, ptr %t2, align 8, !dbg !2559
  %187 = load i32, ptr %t, align 4, !dbg !2560
  %mul223 = mul i32 4, %187, !dbg !2561
  %add224 = add i32 %mul223, 2, !dbg !2562
  %arrayidx225 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add224, !dbg !2563
  %188 = load i8, ptr %arrayidx225, align 1, !dbg !2563
  %conv226 = zext i8 %188 to i64, !dbg !2563
  %mul227 = mul i64 %186, %conv226, !dbg !2564
  %xor228 = xor i64 %xor222, %mul227, !dbg !2565
  %189 = load i64, ptr %t3, align 8, !dbg !2566
  %190 = load i32, ptr %t, align 4, !dbg !2567
  %mul229 = mul i32 4, %190, !dbg !2568
  %add230 = add i32 %mul229, 3, !dbg !2569
  %arrayidx231 = getelementptr inbounds nuw [16 x i8], ptr %tab, i32 0, i32 %add230, !dbg !2570
  %191 = load i8, ptr %arrayidx231, align 1, !dbg !2570
  %conv232 = zext i8 %191 to i64, !dbg !2570
  %mul233 = mul i64 %189, %conv232, !dbg !2571
  %xor234 = xor i64 %xor228, %mul233, !dbg !2572
  %192 = load i32, ptr %r, align 4, !dbg !2573
  %193 = load i32, ptr %t, align 4, !dbg !2574
  %add235 = add i32 %192, %193, !dbg !2575
  %194 = load ptr, ptr %p.addr, align 4, !dbg !2576
  %m236 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %194, i32 0, i32 0, !dbg !2577
  %195 = load i32, ptr %m236, align 4, !dbg !2577
  %sub237 = sub i32 %add235, %195, !dbg !2578
  %div238 = udiv i32 %sub237, 16, !dbg !2579
  %196 = load i32, ptr %A_width, align 4, !dbg !2580
  %mul239 = mul i32 %div238, %196, !dbg !2581
  %197 = load i32, ptr %c179, align 4, !dbg !2582
  %add240 = add i32 %mul239, %197, !dbg !2583
  %198 = load i32, ptr %r, align 4, !dbg !2584
  %199 = load i32, ptr %t, align 4, !dbg !2585
  %add241 = add i32 %198, %199, !dbg !2586
  %200 = load ptr, ptr %p.addr, align 4, !dbg !2587
  %m242 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %200, i32 0, i32 0, !dbg !2588
  %201 = load i32, ptr %m242, align 4, !dbg !2588
  %sub243 = sub i32 %add241, %201, !dbg !2589
  %rem244 = urem i32 %sub243, 16, !dbg !2590
  %add245 = add i32 %add240, %rem244, !dbg !2591
  %arrayidx246 = getelementptr inbounds nuw [3744 x i64], ptr %A, i32 0, i32 %add245, !dbg !2592
  %202 = load i64, ptr %arrayidx246, align 8, !dbg !2593
  %xor247 = xor i64 %202, %xor234, !dbg !2593
  store i64 %xor247, ptr %arrayidx246, align 8, !dbg !2593
  br label %for.inc248, !dbg !2594

for.inc248:                                       ; preds = %for.body212
  %203 = load i32, ptr %t, align 4, !dbg !2595
  %inc249 = add i32 %203, 1, !dbg !2595
  store i32 %inc249, ptr %t, align 4, !dbg !2595
  br label %for.cond210, !dbg !2596, !llvm.loop !2597

for.end250:                                       ; preds = %for.cond210
  br label %for.inc251, !dbg !2599

for.inc251:                                       ; preds = %for.end250
  %204 = load i32, ptr %r, align 4, !dbg !2600
  %inc252 = add nsw i32 %204, 1, !dbg !2600
  store i32 %inc252, ptr %r, align 4, !dbg !2600
  br label %for.cond184, !dbg !2601, !llvm.loop !2602

for.end253:                                       ; preds = %for.cond184
  br label %for.inc254, !dbg !2604

for.inc254:                                       ; preds = %for.end253
  %205 = load i32, ptr %c179, align 4, !dbg !2605
  %add255 = add i32 %205, 16, !dbg !2605
  store i32 %add255, ptr %c179, align 4, !dbg !2605
  br label %for.cond180, !dbg !2606, !llvm.loop !2607

for.end256:                                       ; preds = %for.cond180
    #dbg_declare(ptr %r257, !2609, !DIExpression(), !2611)
  store i32 0, ptr %r257, align 4, !dbg !2611
  br label %for.cond258, !dbg !2612

for.cond258:                                      ; preds = %for.inc313, %for.end256
  %206 = load i32, ptr %r257, align 4, !dbg !2613
  %207 = load ptr, ptr %p.addr, align 4, !dbg !2615
  %m259 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %207, i32 0, i32 0, !dbg !2616
  %208 = load i32, ptr %m259, align 4, !dbg !2616
  %cmp260 = icmp slt i32 %206, %208, !dbg !2617
  br i1 %cmp260, label %for.body262, label %for.end315, !dbg !2618

for.body262:                                      ; preds = %for.cond258
    #dbg_declare(ptr %c263, !2619, !DIExpression(), !2622)
  store i32 0, ptr %c263, align 4, !dbg !2622
  br label %for.cond264, !dbg !2623

for.cond264:                                      ; preds = %for.inc310, %for.body262
  %209 = load i32, ptr %c263, align 4, !dbg !2624
  %210 = load ptr, ptr %p.addr, align 4, !dbg !2626
  %k265 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %210, i32 0, i32 3, !dbg !2627
  %211 = load i32, ptr %k265, align 4, !dbg !2627
  %212 = load ptr, ptr %p.addr, align 4, !dbg !2626
  %o266 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %212, i32 0, i32 2, !dbg !2627
  %213 = load i32, ptr %o266, align 4, !dbg !2627
  %mul267 = mul nsw i32 %211, %213, !dbg !2627
  %add268 = add nsw i32 %mul267, 1, !dbg !2627
  %sub269 = sub nsw i32 %add268, 1, !dbg !2628
  %cmp270 = icmp slt i32 %209, %sub269, !dbg !2629
  br i1 %cmp270, label %for.body272, label %for.end312, !dbg !2630

for.body272:                                      ; preds = %for.cond264
    #dbg_declare(ptr %i273, !2631, !DIExpression(), !2634)
  store i32 0, ptr %i273, align 4, !dbg !2634
  br label %for.cond274, !dbg !2635

for.cond274:                                      ; preds = %for.inc307, %for.body272
  %214 = load i32, ptr %i273, align 4, !dbg !2636
  %215 = load i32, ptr %r257, align 4, !dbg !2638
  %add275 = add nsw i32 %214, %215, !dbg !2639
  %216 = load ptr, ptr %p.addr, align 4, !dbg !2640
  %m276 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %216, i32 0, i32 0, !dbg !2641
  %217 = load i32, ptr %m276, align 4, !dbg !2641
  %cmp277 = icmp slt i32 %add275, %217, !dbg !2642
  br i1 %cmp277, label %for.body279, label %for.end309, !dbg !2643

for.body279:                                      ; preds = %for.cond274
  %218 = load i32, ptr %r257, align 4, !dbg !2644
  %219 = load i32, ptr %A_width, align 4, !dbg !2646
  %mul280 = mul i32 %218, %219, !dbg !2647
  %div281 = udiv i32 %mul280, 16, !dbg !2648
  %220 = load i32, ptr %c263, align 4, !dbg !2649
  %add282 = add i32 %div281, %220, !dbg !2650
  %221 = load i32, ptr %i273, align 4, !dbg !2651
  %add283 = add i32 %add282, %221, !dbg !2652
  %arrayidx284 = getelementptr inbounds nuw [3744 x i64], ptr %A, i32 0, i32 %add283, !dbg !2653
  %222 = load ptr, ptr %A_out.addr, align 4, !dbg !2654
  %223 = load ptr, ptr %p.addr, align 4, !dbg !2655
  %k285 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %223, i32 0, i32 3, !dbg !2656
  %224 = load i32, ptr %k285, align 4, !dbg !2656
  %225 = load ptr, ptr %p.addr, align 4, !dbg !2655
  %o286 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %225, i32 0, i32 2, !dbg !2656
  %226 = load i32, ptr %o286, align 4, !dbg !2656
  %mul287 = mul nsw i32 %224, %226, !dbg !2656
  %add288 = add nsw i32 %mul287, 1, !dbg !2656
  %227 = load i32, ptr %r257, align 4, !dbg !2657
  %228 = load i32, ptr %i273, align 4, !dbg !2658
  %add289 = add nsw i32 %227, %228, !dbg !2659
  %mul290 = mul nsw i32 %add288, %add289, !dbg !2660
  %add.ptr291 = getelementptr inbounds i8, ptr %222, i32 %mul290, !dbg !2661
  %229 = load i32, ptr %c263, align 4, !dbg !2662
  %add.ptr292 = getelementptr inbounds i8, ptr %add.ptr291, i32 %229, !dbg !2663
  %230 = load ptr, ptr %p.addr, align 4, !dbg !2664
  %k293 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %230, i32 0, i32 3, !dbg !2665
  %231 = load i32, ptr %k293, align 4, !dbg !2665
  %232 = load ptr, ptr %p.addr, align 4, !dbg !2664
  %o294 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %232, i32 0, i32 2, !dbg !2665
  %233 = load i32, ptr %o294, align 4, !dbg !2665
  %mul295 = mul nsw i32 %231, %233, !dbg !2665
  %add296 = add nsw i32 %mul295, 1, !dbg !2665
  %sub297 = sub nsw i32 %add296, 1, !dbg !2666
  %234 = load i32, ptr %c263, align 4, !dbg !2667
  %sub298 = sub nsw i32 %sub297, %234, !dbg !2668
  %cmp299 = icmp slt i32 16, %sub298, !dbg !2669
  br i1 %cmp299, label %cond.true, label %cond.false, !dbg !2669

cond.true:                                        ; preds = %for.body279
  br label %cond.end, !dbg !2669

cond.false:                                       ; preds = %for.body279
  %235 = load ptr, ptr %p.addr, align 4, !dbg !2664
  %k301 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %235, i32 0, i32 3, !dbg !2665
  %236 = load i32, ptr %k301, align 4, !dbg !2665
  %237 = load ptr, ptr %p.addr, align 4, !dbg !2664
  %o302 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %237, i32 0, i32 2, !dbg !2665
  %238 = load i32, ptr %o302, align 4, !dbg !2665
  %mul303 = mul nsw i32 %236, %238, !dbg !2665
  %add304 = add nsw i32 %mul303, 1, !dbg !2665
  %sub305 = sub nsw i32 %add304, 1, !dbg !2666
  %239 = load i32, ptr %c263, align 4, !dbg !2667
  %sub306 = sub nsw i32 %sub305, %239, !dbg !2668
  br label %cond.end, !dbg !2669

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 16, %cond.true ], [ %sub306, %cond.false ], !dbg !2669
  call void @decode(ptr noundef %arrayidx284, ptr noundef %add.ptr292, i32 noundef %cond) #5, !dbg !2670
  br label %for.inc307, !dbg !2671

for.inc307:                                       ; preds = %cond.end
  %240 = load i32, ptr %i273, align 4, !dbg !2672
  %inc308 = add nsw i32 %240, 1, !dbg !2672
  store i32 %inc308, ptr %i273, align 4, !dbg !2672
  br label %for.cond274, !dbg !2673, !llvm.loop !2674

for.end309:                                       ; preds = %for.cond274
  br label %for.inc310, !dbg !2676

for.inc310:                                       ; preds = %for.end309
  %241 = load i32, ptr %c263, align 4, !dbg !2677
  %add311 = add nsw i32 %241, 16, !dbg !2677
  store i32 %add311, ptr %c263, align 4, !dbg !2677
  br label %for.cond264, !dbg !2678, !llvm.loop !2679

for.end312:                                       ; preds = %for.cond264
  br label %for.inc313, !dbg !2681

for.inc313:                                       ; preds = %for.end312
  %242 = load i32, ptr %r257, align 4, !dbg !2682
  %add314 = add nsw i32 %242, 16, !dbg !2682
  store i32 %add314, ptr %r257, align 4, !dbg !2682
  br label %for.cond258, !dbg !2683, !llvm.loop !2684

for.end315:                                       ; preds = %for.cond258
  ret void, !dbg !2686
}

declare dso_local i32 @sample_solution(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #4

declare dso_local ptr @memset(ptr noundef, i32 noundef, i32 noundef) #4

; Function Attrs: noinline nounwind optnone
define internal void @mat_mul(ptr noundef %a, ptr noundef %b, ptr noundef %c, i32 noundef %colrow_ab, i32 noundef %row_a, i32 noundef %col_b) #0 !dbg !2687 {
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
    #dbg_declare(ptr %a.addr, !2690, !DIExpression(), !2691)
  store ptr %b, ptr %b.addr, align 4
    #dbg_declare(ptr %b.addr, !2692, !DIExpression(), !2693)
  store ptr %c, ptr %c.addr, align 4
    #dbg_declare(ptr %c.addr, !2694, !DIExpression(), !2695)
  store i32 %colrow_ab, ptr %colrow_ab.addr, align 4
    #dbg_declare(ptr %colrow_ab.addr, !2696, !DIExpression(), !2697)
  store i32 %row_a, ptr %row_a.addr, align 4
    #dbg_declare(ptr %row_a.addr, !2698, !DIExpression(), !2699)
  store i32 %col_b, ptr %col_b.addr, align 4
    #dbg_declare(ptr %col_b.addr, !2700, !DIExpression(), !2701)
    #dbg_declare(ptr %i, !2702, !DIExpression(), !2704)
  store i32 0, ptr %i, align 4, !dbg !2704
  br label %for.cond, !dbg !2705

for.cond:                                         ; preds = %for.inc4, %entry
  %0 = load i32, ptr %i, align 4, !dbg !2706
  %1 = load i32, ptr %row_a.addr, align 4, !dbg !2708
  %cmp = icmp slt i32 %0, %1, !dbg !2709
  br i1 %cmp, label %for.body, label %for.end7, !dbg !2710

for.body:                                         ; preds = %for.cond
    #dbg_declare(ptr %j, !2711, !DIExpression(), !2714)
  store i32 0, ptr %j, align 4, !dbg !2714
  br label %for.cond1, !dbg !2715

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %j, align 4, !dbg !2716
  %3 = load i32, ptr %col_b.addr, align 4, !dbg !2718
  %cmp2 = icmp slt i32 %2, %3, !dbg !2719
  br i1 %cmp2, label %for.body3, label %for.end, !dbg !2720

for.body3:                                        ; preds = %for.cond1
  %4 = load ptr, ptr %a.addr, align 4, !dbg !2721
  %5 = load ptr, ptr %b.addr, align 4, !dbg !2723
  %6 = load i32, ptr %j, align 4, !dbg !2724
  %add.ptr = getelementptr inbounds i8, ptr %5, i32 %6, !dbg !2725
  %7 = load i32, ptr %colrow_ab.addr, align 4, !dbg !2726
  %8 = load i32, ptr %col_b.addr, align 4, !dbg !2727
  %call = call zeroext i8 @lincomb(ptr noundef %4, ptr noundef %add.ptr, i32 noundef %7, i32 noundef %8) #5, !dbg !2728
  %9 = load ptr, ptr %c.addr, align 4, !dbg !2729
  store i8 %call, ptr %9, align 1, !dbg !2730
  br label %for.inc, !dbg !2731

for.inc:                                          ; preds = %for.body3
  %10 = load i32, ptr %j, align 4, !dbg !2732
  %inc = add nsw i32 %10, 1, !dbg !2732
  store i32 %inc, ptr %j, align 4, !dbg !2732
  %11 = load ptr, ptr %c.addr, align 4, !dbg !2733
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %11, i32 1, !dbg !2733
  store ptr %incdec.ptr, ptr %c.addr, align 4, !dbg !2733
  br label %for.cond1, !dbg !2734, !llvm.loop !2735

for.end:                                          ; preds = %for.cond1
  br label %for.inc4, !dbg !2737

for.inc4:                                         ; preds = %for.end
  %12 = load i32, ptr %i, align 4, !dbg !2738
  %inc5 = add nsw i32 %12, 1, !dbg !2738
  store i32 %inc5, ptr %i, align 4, !dbg !2738
  %13 = load i32, ptr %colrow_ab.addr, align 4, !dbg !2739
  %14 = load ptr, ptr %a.addr, align 4, !dbg !2740
  %add.ptr6 = getelementptr inbounds i8, ptr %14, i32 %13, !dbg !2740
  store ptr %add.ptr6, ptr %a.addr, align 4, !dbg !2740
  br label %for.cond, !dbg !2741, !llvm.loop !2742

for.end7:                                         ; preds = %for.cond
  ret void, !dbg !2744
}

; Function Attrs: noinline nounwind optnone
define internal void @mat_add(ptr noundef %a, ptr noundef %b, ptr noundef %c, i32 noundef %m, i32 noundef %n) #0 !dbg !2745 {
entry:
  %a.addr = alloca ptr, align 4
  %b.addr = alloca ptr, align 4
  %c.addr = alloca ptr, align 4
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 4
    #dbg_declare(ptr %a.addr, !2748, !DIExpression(), !2749)
  store ptr %b, ptr %b.addr, align 4
    #dbg_declare(ptr %b.addr, !2750, !DIExpression(), !2751)
  store ptr %c, ptr %c.addr, align 4
    #dbg_declare(ptr %c.addr, !2752, !DIExpression(), !2753)
  store i32 %m, ptr %m.addr, align 4
    #dbg_declare(ptr %m.addr, !2754, !DIExpression(), !2755)
  store i32 %n, ptr %n.addr, align 4
    #dbg_declare(ptr %n.addr, !2756, !DIExpression(), !2757)
    #dbg_declare(ptr %i, !2758, !DIExpression(), !2760)
  store i32 0, ptr %i, align 4, !dbg !2760
  br label %for.cond, !dbg !2761

for.cond:                                         ; preds = %for.inc11, %entry
  %0 = load i32, ptr %i, align 4, !dbg !2762
  %1 = load i32, ptr %m.addr, align 4, !dbg !2764
  %cmp = icmp slt i32 %0, %1, !dbg !2765
  br i1 %cmp, label %for.body, label %for.end13, !dbg !2766

for.body:                                         ; preds = %for.cond
    #dbg_declare(ptr %j, !2767, !DIExpression(), !2770)
  store i32 0, ptr %j, align 4, !dbg !2770
  br label %for.cond1, !dbg !2771

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %j, align 4, !dbg !2772
  %3 = load i32, ptr %n.addr, align 4, !dbg !2774
  %cmp2 = icmp slt i32 %2, %3, !dbg !2775
  br i1 %cmp2, label %for.body3, label %for.end, !dbg !2776

for.body3:                                        ; preds = %for.cond1
  %4 = load ptr, ptr %a.addr, align 4, !dbg !2777
  %5 = load i32, ptr %i, align 4, !dbg !2779
  %6 = load i32, ptr %n.addr, align 4, !dbg !2780
  %mul = mul nsw i32 %5, %6, !dbg !2781
  %add.ptr = getelementptr inbounds i8, ptr %4, i32 %mul, !dbg !2782
  %7 = load i32, ptr %j, align 4, !dbg !2783
  %add.ptr4 = getelementptr inbounds i8, ptr %add.ptr, i32 %7, !dbg !2782
  %8 = load i8, ptr %add.ptr4, align 1, !dbg !2782
  %9 = load ptr, ptr %b.addr, align 4, !dbg !2784
  %10 = load i32, ptr %i, align 4, !dbg !2785
  %11 = load i32, ptr %n.addr, align 4, !dbg !2786
  %mul5 = mul nsw i32 %10, %11, !dbg !2787
  %add.ptr6 = getelementptr inbounds i8, ptr %9, i32 %mul5, !dbg !2788
  %12 = load i32, ptr %j, align 4, !dbg !2789
  %add.ptr7 = getelementptr inbounds i8, ptr %add.ptr6, i32 %12, !dbg !2788
  %13 = load i8, ptr %add.ptr7, align 1, !dbg !2788
  %call = call zeroext i8 @add_f(i8 noundef zeroext %8, i8 noundef zeroext %13) #5, !dbg !2790
  %14 = load ptr, ptr %c.addr, align 4, !dbg !2791
  %15 = load i32, ptr %i, align 4, !dbg !2792
  %16 = load i32, ptr %n.addr, align 4, !dbg !2793
  %mul8 = mul nsw i32 %15, %16, !dbg !2794
  %add.ptr9 = getelementptr inbounds i8, ptr %14, i32 %mul8, !dbg !2795
  %17 = load i32, ptr %j, align 4, !dbg !2796
  %add.ptr10 = getelementptr inbounds i8, ptr %add.ptr9, i32 %17, !dbg !2795
  store i8 %call, ptr %add.ptr10, align 1, !dbg !2797
  br label %for.inc, !dbg !2798

for.inc:                                          ; preds = %for.body3
  %18 = load i32, ptr %j, align 4, !dbg !2799
  %inc = add nsw i32 %18, 1, !dbg !2799
  store i32 %inc, ptr %j, align 4, !dbg !2799
  br label %for.cond1, !dbg !2800, !llvm.loop !2801

for.end:                                          ; preds = %for.cond1
  br label %for.inc11, !dbg !2803

for.inc11:                                        ; preds = %for.end
  %19 = load i32, ptr %i, align 4, !dbg !2804
  %inc12 = add nsw i32 %19, 1, !dbg !2804
  store i32 %inc12, ptr %i, align 4, !dbg !2804
  br label %for.cond, !dbg !2805, !llvm.loop !2806

for.end13:                                        ; preds = %for.cond
  ret void, !dbg !2808
}

; Function Attrs: noinline nounwind optnone
define internal void @encode(ptr noundef %m, ptr noundef %menc, i32 noundef %mlen) #0 !dbg !2809 {
entry:
  %m.addr = alloca ptr, align 4
  %menc.addr = alloca ptr, align 4
  %mlen.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %m, ptr %m.addr, align 4
    #dbg_declare(ptr %m.addr, !2810, !DIExpression(), !2811)
  store ptr %menc, ptr %menc.addr, align 4
    #dbg_declare(ptr %menc.addr, !2812, !DIExpression(), !2813)
  store i32 %mlen, ptr %mlen.addr, align 4
    #dbg_declare(ptr %mlen.addr, !2814, !DIExpression(), !2815)
    #dbg_declare(ptr %i, !2816, !DIExpression(), !2817)
  store i32 0, ptr %i, align 4, !dbg !2818
  br label %for.cond, !dbg !2820

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !2821
  %1 = load i32, ptr %mlen.addr, align 4, !dbg !2823
  %div = sdiv i32 %1, 2, !dbg !2824
  %cmp = icmp slt i32 %0, %div, !dbg !2825
  br i1 %cmp, label %for.body, label %for.end, !dbg !2826

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %m.addr, align 4, !dbg !2827
  %3 = load i8, ptr %2, align 1, !dbg !2829
  %conv = zext i8 %3 to i32, !dbg !2830
  %4 = load ptr, ptr %m.addr, align 4, !dbg !2831
  %add.ptr = getelementptr inbounds i8, ptr %4, i32 1, !dbg !2832
  %5 = load i8, ptr %add.ptr, align 1, !dbg !2832
  %conv1 = zext i8 %5 to i32, !dbg !2832
  %shl = shl i32 %conv1, 4, !dbg !2833
  %or = or i32 %conv, %shl, !dbg !2834
  %conv2 = trunc i32 %or to i8, !dbg !2830
  %6 = load ptr, ptr %menc.addr, align 4, !dbg !2835
  %7 = load i32, ptr %i, align 4, !dbg !2836
  %arrayidx = getelementptr inbounds i8, ptr %6, i32 %7, !dbg !2835
  store i8 %conv2, ptr %arrayidx, align 1, !dbg !2837
  br label %for.inc, !dbg !2838

for.inc:                                          ; preds = %for.body
  %8 = load i32, ptr %i, align 4, !dbg !2839
  %inc = add nsw i32 %8, 1, !dbg !2839
  store i32 %inc, ptr %i, align 4, !dbg !2839
  %9 = load ptr, ptr %m.addr, align 4, !dbg !2840
  %add.ptr3 = getelementptr inbounds i8, ptr %9, i32 2, !dbg !2840
  store ptr %add.ptr3, ptr %m.addr, align 4, !dbg !2840
  br label %for.cond, !dbg !2841, !llvm.loop !2842

for.end:                                          ; preds = %for.cond
  %10 = load i32, ptr %mlen.addr, align 4, !dbg !2844
  %rem = srem i32 %10, 2, !dbg !2846
  %cmp4 = icmp eq i32 %rem, 1, !dbg !2847
  br i1 %cmp4, label %if.then, label %if.end, !dbg !2847

if.then:                                          ; preds = %for.end
  %11 = load ptr, ptr %m.addr, align 4, !dbg !2848
  %12 = load i8, ptr %11, align 1, !dbg !2850
  %13 = load ptr, ptr %menc.addr, align 4, !dbg !2851
  %14 = load i32, ptr %i, align 4, !dbg !2852
  %arrayidx6 = getelementptr inbounds i8, ptr %13, i32 %14, !dbg !2851
  store i8 %12, ptr %arrayidx6, align 1, !dbg !2853
  br label %if.end, !dbg !2854

if.end:                                           ; preds = %if.then, %for.end
  ret void, !dbg !2855
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i8 @add_f(i8 noundef zeroext %a, i8 noundef zeroext %b) #0 !dbg !2856 {
entry:
  %a.addr = alloca i8, align 1
  %b.addr = alloca i8, align 1
  store i8 %a, ptr %a.addr, align 1
    #dbg_declare(ptr %a.addr, !2859, !DIExpression(), !2860)
  store i8 %b, ptr %b.addr, align 1
    #dbg_declare(ptr %b.addr, !2861, !DIExpression(), !2862)
  %0 = load i8, ptr %a.addr, align 1, !dbg !2863
  %conv = zext i8 %0 to i32, !dbg !2863
  %1 = load i8, ptr %b.addr, align 1, !dbg !2864
  %conv1 = zext i8 %1 to i32, !dbg !2864
  %xor = xor i32 %conv, %conv1, !dbg !2865
  %conv2 = trunc i32 %xor to i8, !dbg !2863
  ret i8 %conv2, !dbg !2866
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i8 @lincomb(ptr noundef %a, ptr noundef %b, i32 noundef %n, i32 noundef %m) #0 !dbg !2867 {
entry:
  %a.addr = alloca ptr, align 4
  %b.addr = alloca ptr, align 4
  %n.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %ret = alloca i8, align 1
  %i = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 4
    #dbg_declare(ptr %a.addr, !2870, !DIExpression(), !2871)
  store ptr %b, ptr %b.addr, align 4
    #dbg_declare(ptr %b.addr, !2872, !DIExpression(), !2873)
  store i32 %n, ptr %n.addr, align 4
    #dbg_declare(ptr %n.addr, !2874, !DIExpression(), !2875)
  store i32 %m, ptr %m.addr, align 4
    #dbg_declare(ptr %m.addr, !2876, !DIExpression(), !2877)
    #dbg_declare(ptr %ret, !2878, !DIExpression(), !2879)
  store i8 0, ptr %ret, align 1, !dbg !2879
    #dbg_declare(ptr %i, !2880, !DIExpression(), !2882)
  store i32 0, ptr %i, align 4, !dbg !2882
  br label %for.cond, !dbg !2883

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !2884
  %1 = load i32, ptr %n.addr, align 4, !dbg !2886
  %cmp = icmp slt i32 %0, %1, !dbg !2887
  br i1 %cmp, label %for.body, label %for.end, !dbg !2888

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %a.addr, align 4, !dbg !2889
  %3 = load i32, ptr %i, align 4, !dbg !2891
  %arrayidx = getelementptr inbounds i8, ptr %2, i32 %3, !dbg !2889
  %4 = load i8, ptr %arrayidx, align 1, !dbg !2889
  %5 = load ptr, ptr %b.addr, align 4, !dbg !2892
  %6 = load i8, ptr %5, align 1, !dbg !2893
  %call = call zeroext i8 @mul_f(i8 noundef zeroext %4, i8 noundef zeroext %6) #5, !dbg !2894
  %7 = load i8, ptr %ret, align 1, !dbg !2895
  %call1 = call zeroext i8 @add_f(i8 noundef zeroext %call, i8 noundef zeroext %7) #5, !dbg !2896
  store i8 %call1, ptr %ret, align 1, !dbg !2897
  br label %for.inc, !dbg !2898

for.inc:                                          ; preds = %for.body
  %8 = load i32, ptr %i, align 4, !dbg !2899
  %inc = add nsw i32 %8, 1, !dbg !2899
  store i32 %inc, ptr %i, align 4, !dbg !2899
  %9 = load i32, ptr %m.addr, align 4, !dbg !2900
  %10 = load ptr, ptr %b.addr, align 4, !dbg !2901
  %add.ptr = getelementptr inbounds i8, ptr %10, i32 %9, !dbg !2901
  store ptr %add.ptr, ptr %b.addr, align 4, !dbg !2901
  br label %for.cond, !dbg !2902, !llvm.loop !2903

for.end:                                          ; preds = %for.cond
  %11 = load i8, ptr %ret, align 1, !dbg !2905
  ret i8 %11, !dbg !2906
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i8 @mul_f(i8 noundef zeroext %a, i8 noundef zeroext %b) #0 !dbg !2907 {
entry:
  %a.addr = alloca i8, align 1
  %b.addr = alloca i8, align 1
  %p = alloca i8, align 1
  %top_p = alloca i8, align 1
  %out = alloca i8, align 1
  store i8 %a, ptr %a.addr, align 1
    #dbg_declare(ptr %a.addr, !2908, !DIExpression(), !2909)
  store i8 %b, ptr %b.addr, align 1
    #dbg_declare(ptr %b.addr, !2910, !DIExpression(), !2911)
    #dbg_declare(ptr %p, !2912, !DIExpression(), !2913)
  %0 = load volatile i8, ptr @unsigned_char_blocker, align 1, !dbg !2914
  %conv = zext i8 %0 to i32, !dbg !2914
  %1 = load i8, ptr %a.addr, align 1, !dbg !2915
  %conv1 = zext i8 %1 to i32, !dbg !2915
  %xor = xor i32 %conv1, %conv, !dbg !2915
  %conv2 = trunc i32 %xor to i8, !dbg !2915
  store i8 %conv2, ptr %a.addr, align 1, !dbg !2915
  %2 = load i8, ptr %a.addr, align 1, !dbg !2916
  %conv3 = zext i8 %2 to i32, !dbg !2916
  %and = and i32 %conv3, 1, !dbg !2917
  %3 = load i8, ptr %b.addr, align 1, !dbg !2918
  %conv4 = zext i8 %3 to i32, !dbg !2918
  %mul = mul nsw i32 %and, %conv4, !dbg !2919
  %conv5 = trunc i32 %mul to i8, !dbg !2920
  store i8 %conv5, ptr %p, align 1, !dbg !2921
  %4 = load i8, ptr %a.addr, align 1, !dbg !2922
  %conv6 = zext i8 %4 to i32, !dbg !2922
  %and7 = and i32 %conv6, 2, !dbg !2923
  %5 = load i8, ptr %b.addr, align 1, !dbg !2924
  %conv8 = zext i8 %5 to i32, !dbg !2924
  %mul9 = mul nsw i32 %and7, %conv8, !dbg !2925
  %6 = load i8, ptr %p, align 1, !dbg !2926
  %conv10 = zext i8 %6 to i32, !dbg !2926
  %xor11 = xor i32 %conv10, %mul9, !dbg !2926
  %conv12 = trunc i32 %xor11 to i8, !dbg !2926
  store i8 %conv12, ptr %p, align 1, !dbg !2926
  %7 = load i8, ptr %a.addr, align 1, !dbg !2927
  %conv13 = zext i8 %7 to i32, !dbg !2927
  %and14 = and i32 %conv13, 4, !dbg !2928
  %8 = load i8, ptr %b.addr, align 1, !dbg !2929
  %conv15 = zext i8 %8 to i32, !dbg !2929
  %mul16 = mul nsw i32 %and14, %conv15, !dbg !2930
  %9 = load i8, ptr %p, align 1, !dbg !2931
  %conv17 = zext i8 %9 to i32, !dbg !2931
  %xor18 = xor i32 %conv17, %mul16, !dbg !2931
  %conv19 = trunc i32 %xor18 to i8, !dbg !2931
  store i8 %conv19, ptr %p, align 1, !dbg !2931
  %10 = load i8, ptr %a.addr, align 1, !dbg !2932
  %conv20 = zext i8 %10 to i32, !dbg !2932
  %and21 = and i32 %conv20, 8, !dbg !2933
  %11 = load i8, ptr %b.addr, align 1, !dbg !2934
  %conv22 = zext i8 %11 to i32, !dbg !2934
  %mul23 = mul nsw i32 %and21, %conv22, !dbg !2935
  %12 = load i8, ptr %p, align 1, !dbg !2936
  %conv24 = zext i8 %12 to i32, !dbg !2936
  %xor25 = xor i32 %conv24, %mul23, !dbg !2936
  %conv26 = trunc i32 %xor25 to i8, !dbg !2936
  store i8 %conv26, ptr %p, align 1, !dbg !2936
    #dbg_declare(ptr %top_p, !2937, !DIExpression(), !2938)
  %13 = load i8, ptr %p, align 1, !dbg !2939
  %conv27 = zext i8 %13 to i32, !dbg !2939
  %and28 = and i32 %conv27, 240, !dbg !2940
  %conv29 = trunc i32 %and28 to i8, !dbg !2939
  store i8 %conv29, ptr %top_p, align 1, !dbg !2938
    #dbg_declare(ptr %out, !2941, !DIExpression(), !2942)
  %14 = load i8, ptr %p, align 1, !dbg !2943
  %conv30 = zext i8 %14 to i32, !dbg !2943
  %15 = load i8, ptr %top_p, align 1, !dbg !2944
  %conv31 = zext i8 %15 to i32, !dbg !2944
  %shr = ashr i32 %conv31, 4, !dbg !2945
  %xor32 = xor i32 %conv30, %shr, !dbg !2946
  %16 = load i8, ptr %top_p, align 1, !dbg !2947
  %conv33 = zext i8 %16 to i32, !dbg !2947
  %shr34 = ashr i32 %conv33, 3, !dbg !2948
  %xor35 = xor i32 %xor32, %shr34, !dbg !2949
  %and36 = and i32 %xor35, 15, !dbg !2950
  %conv37 = trunc i32 %and36 to i8, !dbg !2951
  store i8 %conv37, ptr %out, align 1, !dbg !2942
  %17 = load i8, ptr %out, align 1, !dbg !2952
  ret i8 %17, !dbg !2953
}

; Function Attrs: noinline nounwind optnone
define internal void @transpose_16x16_nibbles(ptr noundef %M) #0 !dbg !61 {
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
    #dbg_declare(ptr %M.addr, !2954, !DIExpression(), !2955)
    #dbg_declare(ptr %i, !2956, !DIExpression(), !2958)
  store i32 0, ptr %i, align 4, !dbg !2958
  br label %for.cond, !dbg !2959

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !2960
  %cmp = icmp ult i32 %0, 16, !dbg !2962
  br i1 %cmp, label %for.body, label %for.end, !dbg !2963

for.body:                                         ; preds = %for.cond
    #dbg_declare(ptr %t, !2964, !DIExpression(), !2966)
  %1 = load ptr, ptr %M.addr, align 4, !dbg !2967
  %2 = load i32, ptr %i, align 4, !dbg !2968
  %arrayidx = getelementptr inbounds nuw i64, ptr %1, i32 %2, !dbg !2967
  %3 = load i64, ptr %arrayidx, align 8, !dbg !2967
  %shr = lshr i64 %3, 4, !dbg !2969
  %4 = load ptr, ptr %M.addr, align 4, !dbg !2970
  %5 = load i32, ptr %i, align 4, !dbg !2971
  %add = add i32 %5, 1, !dbg !2972
  %arrayidx1 = getelementptr inbounds nuw i64, ptr %4, i32 %add, !dbg !2970
  %6 = load i64, ptr %arrayidx1, align 8, !dbg !2970
  %xor = xor i64 %shr, %6, !dbg !2973
  %and = and i64 %xor, 1085102592571150095, !dbg !2974
  store i64 %and, ptr %t, align 8, !dbg !2966
  %7 = load i64, ptr %t, align 8, !dbg !2975
  %shl = shl i64 %7, 4, !dbg !2976
  %8 = load ptr, ptr %M.addr, align 4, !dbg !2977
  %9 = load i32, ptr %i, align 4, !dbg !2978
  %arrayidx2 = getelementptr inbounds nuw i64, ptr %8, i32 %9, !dbg !2977
  %10 = load i64, ptr %arrayidx2, align 8, !dbg !2979
  %xor3 = xor i64 %10, %shl, !dbg !2979
  store i64 %xor3, ptr %arrayidx2, align 8, !dbg !2979
  %11 = load i64, ptr %t, align 8, !dbg !2980
  %12 = load ptr, ptr %M.addr, align 4, !dbg !2981
  %13 = load i32, ptr %i, align 4, !dbg !2982
  %add4 = add i32 %13, 1, !dbg !2983
  %arrayidx5 = getelementptr inbounds nuw i64, ptr %12, i32 %add4, !dbg !2981
  %14 = load i64, ptr %arrayidx5, align 8, !dbg !2984
  %xor6 = xor i64 %14, %11, !dbg !2984
  store i64 %xor6, ptr %arrayidx5, align 8, !dbg !2984
  br label %for.inc, !dbg !2985

for.inc:                                          ; preds = %for.body
  %15 = load i32, ptr %i, align 4, !dbg !2986
  %add7 = add i32 %15, 2, !dbg !2986
  store i32 %add7, ptr %i, align 4, !dbg !2986
  br label %for.cond, !dbg !2987, !llvm.loop !2988

for.end:                                          ; preds = %for.cond
    #dbg_declare(ptr %i8, !2990, !DIExpression(), !2992)
  store i32 0, ptr %i8, align 4, !dbg !2992
  br label %for.cond9, !dbg !2993

for.cond9:                                        ; preds = %for.inc38, %for.end
  %16 = load i32, ptr %i8, align 4, !dbg !2994
  %cmp10 = icmp ult i32 %16, 16, !dbg !2996
  br i1 %cmp10, label %for.body11, label %for.end40, !dbg !2997

for.body11:                                       ; preds = %for.cond9
    #dbg_declare(ptr %t0, !2998, !DIExpression(), !3000)
  %17 = load ptr, ptr %M.addr, align 4, !dbg !3001
  %18 = load i32, ptr %i8, align 4, !dbg !3002
  %arrayidx12 = getelementptr inbounds nuw i64, ptr %17, i32 %18, !dbg !3001
  %19 = load i64, ptr %arrayidx12, align 8, !dbg !3001
  %shr13 = lshr i64 %19, 8, !dbg !3003
  %20 = load ptr, ptr %M.addr, align 4, !dbg !3004
  %21 = load i32, ptr %i8, align 4, !dbg !3005
  %add14 = add i32 %21, 2, !dbg !3006
  %arrayidx15 = getelementptr inbounds nuw i64, ptr %20, i32 %add14, !dbg !3004
  %22 = load i64, ptr %arrayidx15, align 8, !dbg !3004
  %xor16 = xor i64 %shr13, %22, !dbg !3007
  %and17 = and i64 %xor16, 71777214294589695, !dbg !3008
  store i64 %and17, ptr %t0, align 8, !dbg !3000
    #dbg_declare(ptr %t1, !3009, !DIExpression(), !3010)
  %23 = load ptr, ptr %M.addr, align 4, !dbg !3011
  %24 = load i32, ptr %i8, align 4, !dbg !3012
  %add18 = add i32 %24, 1, !dbg !3013
  %arrayidx19 = getelementptr inbounds nuw i64, ptr %23, i32 %add18, !dbg !3011
  %25 = load i64, ptr %arrayidx19, align 8, !dbg !3011
  %shr20 = lshr i64 %25, 8, !dbg !3014
  %26 = load ptr, ptr %M.addr, align 4, !dbg !3015
  %27 = load i32, ptr %i8, align 4, !dbg !3016
  %add21 = add i32 %27, 3, !dbg !3017
  %arrayidx22 = getelementptr inbounds nuw i64, ptr %26, i32 %add21, !dbg !3015
  %28 = load i64, ptr %arrayidx22, align 8, !dbg !3015
  %xor23 = xor i64 %shr20, %28, !dbg !3018
  %and24 = and i64 %xor23, 71777214294589695, !dbg !3019
  store i64 %and24, ptr %t1, align 8, !dbg !3010
  %29 = load i64, ptr %t0, align 8, !dbg !3020
  %shl25 = shl i64 %29, 8, !dbg !3021
  %30 = load ptr, ptr %M.addr, align 4, !dbg !3022
  %31 = load i32, ptr %i8, align 4, !dbg !3023
  %arrayidx26 = getelementptr inbounds nuw i64, ptr %30, i32 %31, !dbg !3022
  %32 = load i64, ptr %arrayidx26, align 8, !dbg !3024
  %xor27 = xor i64 %32, %shl25, !dbg !3024
  store i64 %xor27, ptr %arrayidx26, align 8, !dbg !3024
  %33 = load i64, ptr %t1, align 8, !dbg !3025
  %shl28 = shl i64 %33, 8, !dbg !3026
  %34 = load ptr, ptr %M.addr, align 4, !dbg !3027
  %35 = load i32, ptr %i8, align 4, !dbg !3028
  %add29 = add i32 %35, 1, !dbg !3029
  %arrayidx30 = getelementptr inbounds nuw i64, ptr %34, i32 %add29, !dbg !3027
  %36 = load i64, ptr %arrayidx30, align 8, !dbg !3030
  %xor31 = xor i64 %36, %shl28, !dbg !3030
  store i64 %xor31, ptr %arrayidx30, align 8, !dbg !3030
  %37 = load i64, ptr %t0, align 8, !dbg !3031
  %38 = load ptr, ptr %M.addr, align 4, !dbg !3032
  %39 = load i32, ptr %i8, align 4, !dbg !3033
  %add32 = add i32 %39, 2, !dbg !3034
  %arrayidx33 = getelementptr inbounds nuw i64, ptr %38, i32 %add32, !dbg !3032
  %40 = load i64, ptr %arrayidx33, align 8, !dbg !3035
  %xor34 = xor i64 %40, %37, !dbg !3035
  store i64 %xor34, ptr %arrayidx33, align 8, !dbg !3035
  %41 = load i64, ptr %t1, align 8, !dbg !3036
  %42 = load ptr, ptr %M.addr, align 4, !dbg !3037
  %43 = load i32, ptr %i8, align 4, !dbg !3038
  %add35 = add i32 %43, 3, !dbg !3039
  %arrayidx36 = getelementptr inbounds nuw i64, ptr %42, i32 %add35, !dbg !3037
  %44 = load i64, ptr %arrayidx36, align 8, !dbg !3040
  %xor37 = xor i64 %44, %41, !dbg !3040
  store i64 %xor37, ptr %arrayidx36, align 8, !dbg !3040
  br label %for.inc38, !dbg !3041

for.inc38:                                        ; preds = %for.body11
  %45 = load i32, ptr %i8, align 4, !dbg !3042
  %add39 = add i32 %45, 4, !dbg !3042
  store i32 %add39, ptr %i8, align 4, !dbg !3042
  br label %for.cond9, !dbg !3043, !llvm.loop !3044

for.end40:                                        ; preds = %for.cond9
    #dbg_declare(ptr %i41, !3046, !DIExpression(), !3048)
  store i32 0, ptr %i41, align 4, !dbg !3048
  br label %for.cond42, !dbg !3049

for.cond42:                                       ; preds = %for.inc73, %for.end40
  %46 = load i32, ptr %i41, align 4, !dbg !3050
  %cmp43 = icmp ult i32 %46, 4, !dbg !3052
  br i1 %cmp43, label %for.body44, label %for.end74, !dbg !3053

for.body44:                                       ; preds = %for.cond42
    #dbg_declare(ptr %t045, !3054, !DIExpression(), !3056)
  %47 = load ptr, ptr %M.addr, align 4, !dbg !3057
  %48 = load i32, ptr %i41, align 4, !dbg !3058
  %arrayidx46 = getelementptr inbounds nuw i64, ptr %47, i32 %48, !dbg !3057
  %49 = load i64, ptr %arrayidx46, align 8, !dbg !3057
  %shr47 = lshr i64 %49, 16, !dbg !3059
  %50 = load ptr, ptr %M.addr, align 4, !dbg !3060
  %51 = load i32, ptr %i41, align 4, !dbg !3061
  %add48 = add i32 %51, 4, !dbg !3062
  %arrayidx49 = getelementptr inbounds nuw i64, ptr %50, i32 %add48, !dbg !3060
  %52 = load i64, ptr %arrayidx49, align 8, !dbg !3060
  %xor50 = xor i64 %shr47, %52, !dbg !3063
  %and51 = and i64 %xor50, 281470681808895, !dbg !3064
  store i64 %and51, ptr %t045, align 8, !dbg !3056
    #dbg_declare(ptr %t152, !3065, !DIExpression(), !3066)
  %53 = load ptr, ptr %M.addr, align 4, !dbg !3067
  %54 = load i32, ptr %i41, align 4, !dbg !3068
  %add53 = add i32 %54, 8, !dbg !3069
  %arrayidx54 = getelementptr inbounds nuw i64, ptr %53, i32 %add53, !dbg !3067
  %55 = load i64, ptr %arrayidx54, align 8, !dbg !3067
  %shr55 = lshr i64 %55, 16, !dbg !3070
  %56 = load ptr, ptr %M.addr, align 4, !dbg !3071
  %57 = load i32, ptr %i41, align 4, !dbg !3072
  %add56 = add i32 %57, 12, !dbg !3073
  %arrayidx57 = getelementptr inbounds nuw i64, ptr %56, i32 %add56, !dbg !3071
  %58 = load i64, ptr %arrayidx57, align 8, !dbg !3071
  %xor58 = xor i64 %shr55, %58, !dbg !3074
  %and59 = and i64 %xor58, 281470681808895, !dbg !3075
  store i64 %and59, ptr %t152, align 8, !dbg !3066
  %59 = load i64, ptr %t045, align 8, !dbg !3076
  %shl60 = shl i64 %59, 16, !dbg !3077
  %60 = load ptr, ptr %M.addr, align 4, !dbg !3078
  %61 = load i32, ptr %i41, align 4, !dbg !3079
  %arrayidx61 = getelementptr inbounds nuw i64, ptr %60, i32 %61, !dbg !3078
  %62 = load i64, ptr %arrayidx61, align 8, !dbg !3080
  %xor62 = xor i64 %62, %shl60, !dbg !3080
  store i64 %xor62, ptr %arrayidx61, align 8, !dbg !3080
  %63 = load i64, ptr %t152, align 8, !dbg !3081
  %shl63 = shl i64 %63, 16, !dbg !3082
  %64 = load ptr, ptr %M.addr, align 4, !dbg !3083
  %65 = load i32, ptr %i41, align 4, !dbg !3084
  %add64 = add i32 %65, 8, !dbg !3085
  %arrayidx65 = getelementptr inbounds nuw i64, ptr %64, i32 %add64, !dbg !3083
  %66 = load i64, ptr %arrayidx65, align 8, !dbg !3086
  %xor66 = xor i64 %66, %shl63, !dbg !3086
  store i64 %xor66, ptr %arrayidx65, align 8, !dbg !3086
  %67 = load i64, ptr %t045, align 8, !dbg !3087
  %68 = load ptr, ptr %M.addr, align 4, !dbg !3088
  %69 = load i32, ptr %i41, align 4, !dbg !3089
  %add67 = add i32 %69, 4, !dbg !3090
  %arrayidx68 = getelementptr inbounds nuw i64, ptr %68, i32 %add67, !dbg !3088
  %70 = load i64, ptr %arrayidx68, align 8, !dbg !3091
  %xor69 = xor i64 %70, %67, !dbg !3091
  store i64 %xor69, ptr %arrayidx68, align 8, !dbg !3091
  %71 = load i64, ptr %t152, align 8, !dbg !3092
  %72 = load ptr, ptr %M.addr, align 4, !dbg !3093
  %73 = load i32, ptr %i41, align 4, !dbg !3094
  %add70 = add i32 %73, 12, !dbg !3095
  %arrayidx71 = getelementptr inbounds nuw i64, ptr %72, i32 %add70, !dbg !3093
  %74 = load i64, ptr %arrayidx71, align 8, !dbg !3096
  %xor72 = xor i64 %74, %71, !dbg !3096
  store i64 %xor72, ptr %arrayidx71, align 8, !dbg !3096
  br label %for.inc73, !dbg !3097

for.inc73:                                        ; preds = %for.body44
  %75 = load i32, ptr %i41, align 4, !dbg !3098
  %inc = add i32 %75, 1, !dbg !3098
  store i32 %inc, ptr %i41, align 4, !dbg !3098
  br label %for.cond42, !dbg !3099, !llvm.loop !3100

for.end74:                                        ; preds = %for.cond42
    #dbg_declare(ptr %i75, !3102, !DIExpression(), !3104)
  store i32 0, ptr %i75, align 4, !dbg !3104
  br label %for.cond76, !dbg !3105

for.cond76:                                       ; preds = %for.inc92, %for.end74
  %76 = load i32, ptr %i75, align 4, !dbg !3106
  %cmp77 = icmp ult i32 %76, 8, !dbg !3108
  br i1 %cmp77, label %for.body78, label %for.end94, !dbg !3109

for.body78:                                       ; preds = %for.cond76
    #dbg_declare(ptr %t79, !3110, !DIExpression(), !3112)
  %77 = load ptr, ptr %M.addr, align 4, !dbg !3113
  %78 = load i32, ptr %i75, align 4, !dbg !3114
  %arrayidx80 = getelementptr inbounds nuw i64, ptr %77, i32 %78, !dbg !3113
  %79 = load i64, ptr %arrayidx80, align 8, !dbg !3113
  %shr81 = lshr i64 %79, 32, !dbg !3115
  %80 = load ptr, ptr %M.addr, align 4, !dbg !3116
  %81 = load i32, ptr %i75, align 4, !dbg !3117
  %add82 = add i32 %81, 8, !dbg !3118
  %arrayidx83 = getelementptr inbounds nuw i64, ptr %80, i32 %add82, !dbg !3116
  %82 = load i64, ptr %arrayidx83, align 8, !dbg !3116
  %xor84 = xor i64 %shr81, %82, !dbg !3119
  %and85 = and i64 %xor84, 4294967295, !dbg !3120
  store i64 %and85, ptr %t79, align 8, !dbg !3112
  %83 = load i64, ptr %t79, align 8, !dbg !3121
  %shl86 = shl i64 %83, 32, !dbg !3122
  %84 = load ptr, ptr %M.addr, align 4, !dbg !3123
  %85 = load i32, ptr %i75, align 4, !dbg !3124
  %arrayidx87 = getelementptr inbounds nuw i64, ptr %84, i32 %85, !dbg !3123
  %86 = load i64, ptr %arrayidx87, align 8, !dbg !3125
  %xor88 = xor i64 %86, %shl86, !dbg !3125
  store i64 %xor88, ptr %arrayidx87, align 8, !dbg !3125
  %87 = load i64, ptr %t79, align 8, !dbg !3126
  %88 = load ptr, ptr %M.addr, align 4, !dbg !3127
  %89 = load i32, ptr %i75, align 4, !dbg !3128
  %add89 = add i32 %89, 8, !dbg !3129
  %arrayidx90 = getelementptr inbounds nuw i64, ptr %88, i32 %add89, !dbg !3127
  %90 = load i64, ptr %arrayidx90, align 8, !dbg !3130
  %xor91 = xor i64 %90, %87, !dbg !3130
  store i64 %xor91, ptr %arrayidx90, align 8, !dbg !3130
  br label %for.inc92, !dbg !3131

for.inc92:                                        ; preds = %for.body78
  %91 = load i32, ptr %i75, align 4, !dbg !3132
  %inc93 = add i32 %91, 1, !dbg !3132
  store i32 %inc93, ptr %i75, align 4, !dbg !3132
  br label %for.cond76, !dbg !3133, !llvm.loop !3134

for.end94:                                        ; preds = %for.cond76
  ret void, !dbg !3136
}

; Function Attrs: noinline nounwind optnone
define internal void @mul_add_mat_x_m_mat(i32 noundef %m_vec_limbs, ptr noundef %mat, ptr noundef %bs_mat, ptr noundef %acc, i32 noundef %mat_rows, i32 noundef %mat_cols, i32 noundef %bs_mat_cols) #0 !dbg !3137 {
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
    #dbg_declare(ptr %m_vec_limbs.addr, !3138, !DIExpression(), !3139)
  store ptr %mat, ptr %mat.addr, align 4
    #dbg_declare(ptr %mat.addr, !3140, !DIExpression(), !3141)
  store ptr %bs_mat, ptr %bs_mat.addr, align 4
    #dbg_declare(ptr %bs_mat.addr, !3142, !DIExpression(), !3143)
  store ptr %acc, ptr %acc.addr, align 4
    #dbg_declare(ptr %acc.addr, !3144, !DIExpression(), !3145)
  store i32 %mat_rows, ptr %mat_rows.addr, align 4
    #dbg_declare(ptr %mat_rows.addr, !3146, !DIExpression(), !3147)
  store i32 %mat_cols, ptr %mat_cols.addr, align 4
    #dbg_declare(ptr %mat_cols.addr, !3148, !DIExpression(), !3149)
  store i32 %bs_mat_cols, ptr %bs_mat_cols.addr, align 4
    #dbg_declare(ptr %bs_mat_cols.addr, !3150, !DIExpression(), !3151)
    #dbg_declare(ptr %r, !3152, !DIExpression(), !3154)
  store i32 0, ptr %r, align 4, !dbg !3154
  br label %for.cond, !dbg !3155

for.cond:                                         ; preds = %for.inc17, %entry
  %0 = load i32, ptr %r, align 4, !dbg !3156
  %1 = load i32, ptr %mat_rows.addr, align 4, !dbg !3158
  %cmp = icmp slt i32 %0, %1, !dbg !3159
  br i1 %cmp, label %for.body, label %for.end19, !dbg !3160

for.body:                                         ; preds = %for.cond
    #dbg_declare(ptr %c, !3161, !DIExpression(), !3164)
  store i32 0, ptr %c, align 4, !dbg !3164
  br label %for.cond1, !dbg !3165

for.cond1:                                        ; preds = %for.inc15, %for.body
  %2 = load i32, ptr %c, align 4, !dbg !3166
  %3 = load i32, ptr %mat_cols.addr, align 4, !dbg !3168
  %cmp2 = icmp slt i32 %2, %3, !dbg !3169
  br i1 %cmp2, label %for.body3, label %for.end16, !dbg !3170

for.body3:                                        ; preds = %for.cond1
    #dbg_declare(ptr %k, !3171, !DIExpression(), !3174)
  store i32 0, ptr %k, align 4, !dbg !3174
  br label %for.cond4, !dbg !3175

for.cond4:                                        ; preds = %for.inc, %for.body3
  %4 = load i32, ptr %k, align 4, !dbg !3176
  %5 = load i32, ptr %bs_mat_cols.addr, align 4, !dbg !3178
  %cmp5 = icmp slt i32 %4, %5, !dbg !3179
  br i1 %cmp5, label %for.body6, label %for.end, !dbg !3180

for.body6:                                        ; preds = %for.cond4
  %6 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !3181
  %7 = load ptr, ptr %bs_mat.addr, align 4, !dbg !3183
  %8 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !3184
  %9 = load i32, ptr %c, align 4, !dbg !3185
  %10 = load i32, ptr %bs_mat_cols.addr, align 4, !dbg !3186
  %mul = mul nsw i32 %9, %10, !dbg !3187
  %11 = load i32, ptr %k, align 4, !dbg !3188
  %add = add nsw i32 %mul, %11, !dbg !3189
  %mul7 = mul nsw i32 %8, %add, !dbg !3190
  %add.ptr = getelementptr inbounds i64, ptr %7, i32 %mul7, !dbg !3191
  %12 = load ptr, ptr %mat.addr, align 4, !dbg !3192
  %13 = load i32, ptr %r, align 4, !dbg !3193
  %14 = load i32, ptr %mat_cols.addr, align 4, !dbg !3194
  %mul8 = mul nsw i32 %13, %14, !dbg !3195
  %15 = load i32, ptr %c, align 4, !dbg !3196
  %add9 = add nsw i32 %mul8, %15, !dbg !3197
  %arrayidx = getelementptr inbounds i8, ptr %12, i32 %add9, !dbg !3192
  %16 = load i8, ptr %arrayidx, align 1, !dbg !3192
  %17 = load ptr, ptr %acc.addr, align 4, !dbg !3198
  %18 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !3199
  %19 = load i32, ptr %r, align 4, !dbg !3200
  %20 = load i32, ptr %bs_mat_cols.addr, align 4, !dbg !3201
  %mul10 = mul nsw i32 %19, %20, !dbg !3202
  %21 = load i32, ptr %k, align 4, !dbg !3203
  %add11 = add nsw i32 %mul10, %21, !dbg !3204
  %mul12 = mul nsw i32 %18, %add11, !dbg !3205
  %add.ptr13 = getelementptr inbounds i64, ptr %17, i32 %mul12, !dbg !3206
  call void @m_vec_mul_add(i32 noundef %6, ptr noundef %add.ptr, i8 noundef zeroext %16, ptr noundef %add.ptr13) #5, !dbg !3207
  br label %for.inc, !dbg !3208

for.inc:                                          ; preds = %for.body6
  %22 = load i32, ptr %k, align 4, !dbg !3209
  %add14 = add nsw i32 %22, 1, !dbg !3209
  store i32 %add14, ptr %k, align 4, !dbg !3209
  br label %for.cond4, !dbg !3210, !llvm.loop !3211

for.end:                                          ; preds = %for.cond4
  br label %for.inc15, !dbg !3213

for.inc15:                                        ; preds = %for.end
  %23 = load i32, ptr %c, align 4, !dbg !3214
  %inc = add nsw i32 %23, 1, !dbg !3214
  store i32 %inc, ptr %c, align 4, !dbg !3214
  br label %for.cond1, !dbg !3215, !llvm.loop !3216

for.end16:                                        ; preds = %for.cond1
  br label %for.inc17, !dbg !3218

for.inc17:                                        ; preds = %for.end16
  %24 = load i32, ptr %r, align 4, !dbg !3219
  %inc18 = add nsw i32 %24, 1, !dbg !3219
  store i32 %inc18, ptr %r, align 4, !dbg !3219
  br label %for.cond, !dbg !3220, !llvm.loop !3221

for.end19:                                        ; preds = %for.cond
  ret void, !dbg !3223
}

; Function Attrs: noinline nounwind optnone
define internal void @P1_times_Vt(ptr noundef %p, ptr noundef %P1, ptr noundef %V, ptr noundef %acc) #0 !dbg !3224 {
entry:
  %p.addr = alloca ptr, align 4
  %P1.addr = alloca ptr, align 4
  %V.addr = alloca ptr, align 4
  %acc.addr = alloca ptr, align 4
  store ptr %p, ptr %p.addr, align 4
    #dbg_declare(ptr %p.addr, !3225, !DIExpression(), !3226)
  store ptr %P1, ptr %P1.addr, align 4
    #dbg_declare(ptr %P1.addr, !3227, !DIExpression(), !3228)
  store ptr %V, ptr %V.addr, align 4
    #dbg_declare(ptr %V.addr, !3229, !DIExpression(), !3230)
  store ptr %acc, ptr %acc.addr, align 4
    #dbg_declare(ptr %acc.addr, !3231, !DIExpression(), !3232)
  %0 = load ptr, ptr %p.addr, align 4, !dbg !3233
  %m_vec_limbs = getelementptr inbounds nuw %struct.mayo_params_t, ptr %0, i32 0, i32 21, !dbg !3234
  %1 = load i32, ptr %m_vec_limbs, align 4, !dbg !3234
  %2 = load ptr, ptr %P1.addr, align 4, !dbg !3235
  %3 = load ptr, ptr %V.addr, align 4, !dbg !3236
  %4 = load ptr, ptr %acc.addr, align 4, !dbg !3237
  %5 = load ptr, ptr %p.addr, align 4, !dbg !3238
  %n = getelementptr inbounds nuw %struct.mayo_params_t, ptr %5, i32 0, i32 1, !dbg !3239
  %6 = load i32, ptr %n, align 4, !dbg !3239
  %7 = load ptr, ptr %p.addr, align 4, !dbg !3238
  %o = getelementptr inbounds nuw %struct.mayo_params_t, ptr %7, i32 0, i32 2, !dbg !3239
  %8 = load i32, ptr %o, align 4, !dbg !3239
  %sub = sub nsw i32 %6, %8, !dbg !3239
  %9 = load ptr, ptr %p.addr, align 4, !dbg !3240
  %n1 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %9, i32 0, i32 1, !dbg !3241
  %10 = load i32, ptr %n1, align 4, !dbg !3241
  %11 = load ptr, ptr %p.addr, align 4, !dbg !3240
  %o2 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %11, i32 0, i32 2, !dbg !3241
  %12 = load i32, ptr %o2, align 4, !dbg !3241
  %sub3 = sub nsw i32 %10, %12, !dbg !3241
  %13 = load ptr, ptr %p.addr, align 4, !dbg !3242
  %k = getelementptr inbounds nuw %struct.mayo_params_t, ptr %13, i32 0, i32 3, !dbg !3243
  %14 = load i32, ptr %k, align 4, !dbg !3243
  call void @mul_add_m_upper_triangular_mat_x_mat_trans(i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %sub, i32 noundef %sub3, i32 noundef %14, i32 noundef 1) #5, !dbg !3244
  ret void, !dbg !3245
}

; Function Attrs: noinline nounwind optnone
define internal void @mul_add_m_upper_triangular_mat_x_mat_trans(i32 noundef %m_vec_limbs, ptr noundef %bs_mat, ptr noundef %mat, ptr noundef %acc, i32 noundef %bs_mat_rows, i32 noundef %bs_mat_cols, i32 noundef %mat_rows, i32 noundef %triangular) #0 !dbg !3246 {
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
    #dbg_declare(ptr %m_vec_limbs.addr, !3247, !DIExpression(), !3248)
  store ptr %bs_mat, ptr %bs_mat.addr, align 4
    #dbg_declare(ptr %bs_mat.addr, !3249, !DIExpression(), !3250)
  store ptr %mat, ptr %mat.addr, align 4
    #dbg_declare(ptr %mat.addr, !3251, !DIExpression(), !3252)
  store ptr %acc, ptr %acc.addr, align 4
    #dbg_declare(ptr %acc.addr, !3253, !DIExpression(), !3254)
  store i32 %bs_mat_rows, ptr %bs_mat_rows.addr, align 4
    #dbg_declare(ptr %bs_mat_rows.addr, !3255, !DIExpression(), !3256)
  store i32 %bs_mat_cols, ptr %bs_mat_cols.addr, align 4
    #dbg_declare(ptr %bs_mat_cols.addr, !3257, !DIExpression(), !3258)
  store i32 %mat_rows, ptr %mat_rows.addr, align 4
    #dbg_declare(ptr %mat_rows.addr, !3259, !DIExpression(), !3260)
  store i32 %triangular, ptr %triangular.addr, align 4
    #dbg_declare(ptr %triangular.addr, !3261, !DIExpression(), !3262)
    #dbg_declare(ptr %bs_mat_entries_used, !3263, !DIExpression(), !3264)
  store i32 0, ptr %bs_mat_entries_used, align 4, !dbg !3264
    #dbg_declare(ptr %r, !3265, !DIExpression(), !3267)
  store i32 0, ptr %r, align 4, !dbg !3267
  br label %for.cond, !dbg !3268

for.cond:                                         ; preds = %for.inc17, %entry
  %0 = load i32, ptr %r, align 4, !dbg !3269
  %1 = load i32, ptr %bs_mat_rows.addr, align 4, !dbg !3271
  %cmp = icmp slt i32 %0, %1, !dbg !3272
  br i1 %cmp, label %for.body, label %for.end19, !dbg !3273

for.body:                                         ; preds = %for.cond
    #dbg_declare(ptr %c, !3274, !DIExpression(), !3277)
  %2 = load i32, ptr %triangular.addr, align 4, !dbg !3278
  %3 = load i32, ptr %r, align 4, !dbg !3279
  %mul = mul nsw i32 %2, %3, !dbg !3280
  store i32 %mul, ptr %c, align 4, !dbg !3277
  br label %for.cond1, !dbg !3281

for.cond1:                                        ; preds = %for.inc15, %for.body
  %4 = load i32, ptr %c, align 4, !dbg !3282
  %5 = load i32, ptr %bs_mat_cols.addr, align 4, !dbg !3284
  %cmp2 = icmp slt i32 %4, %5, !dbg !3285
  br i1 %cmp2, label %for.body3, label %for.end16, !dbg !3286

for.body3:                                        ; preds = %for.cond1
    #dbg_declare(ptr %k, !3287, !DIExpression(), !3290)
  store i32 0, ptr %k, align 4, !dbg !3290
  br label %for.cond4, !dbg !3291

for.cond4:                                        ; preds = %for.inc, %for.body3
  %6 = load i32, ptr %k, align 4, !dbg !3292
  %7 = load i32, ptr %mat_rows.addr, align 4, !dbg !3294
  %cmp5 = icmp slt i32 %6, %7, !dbg !3295
  br i1 %cmp5, label %for.body6, label %for.end, !dbg !3296

for.body6:                                        ; preds = %for.cond4
  %8 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !3297
  %9 = load ptr, ptr %bs_mat.addr, align 4, !dbg !3299
  %10 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !3300
  %11 = load i32, ptr %bs_mat_entries_used, align 4, !dbg !3301
  %mul7 = mul nsw i32 %10, %11, !dbg !3302
  %add.ptr = getelementptr inbounds i64, ptr %9, i32 %mul7, !dbg !3303
  %12 = load ptr, ptr %mat.addr, align 4, !dbg !3304
  %13 = load i32, ptr %k, align 4, !dbg !3305
  %14 = load i32, ptr %bs_mat_cols.addr, align 4, !dbg !3306
  %mul8 = mul nsw i32 %13, %14, !dbg !3307
  %15 = load i32, ptr %c, align 4, !dbg !3308
  %add = add nsw i32 %mul8, %15, !dbg !3309
  %arrayidx = getelementptr inbounds i8, ptr %12, i32 %add, !dbg !3304
  %16 = load i8, ptr %arrayidx, align 1, !dbg !3304
  %17 = load ptr, ptr %acc.addr, align 4, !dbg !3310
  %18 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !3311
  %19 = load i32, ptr %r, align 4, !dbg !3312
  %20 = load i32, ptr %mat_rows.addr, align 4, !dbg !3313
  %mul9 = mul nsw i32 %19, %20, !dbg !3314
  %21 = load i32, ptr %k, align 4, !dbg !3315
  %add10 = add nsw i32 %mul9, %21, !dbg !3316
  %mul11 = mul nsw i32 %18, %add10, !dbg !3317
  %add.ptr12 = getelementptr inbounds i64, ptr %17, i32 %mul11, !dbg !3318
  call void @m_vec_mul_add(i32 noundef %8, ptr noundef %add.ptr, i8 noundef zeroext %16, ptr noundef %add.ptr12) #5, !dbg !3319
  br label %for.inc, !dbg !3320

for.inc:                                          ; preds = %for.body6
  %22 = load i32, ptr %k, align 4, !dbg !3321
  %add13 = add nsw i32 %22, 1, !dbg !3321
  store i32 %add13, ptr %k, align 4, !dbg !3321
  br label %for.cond4, !dbg !3322, !llvm.loop !3323

for.end:                                          ; preds = %for.cond4
  %23 = load i32, ptr %bs_mat_entries_used, align 4, !dbg !3325
  %add14 = add nsw i32 %23, 1, !dbg !3325
  store i32 %add14, ptr %bs_mat_entries_used, align 4, !dbg !3325
  br label %for.inc15, !dbg !3326

for.inc15:                                        ; preds = %for.end
  %24 = load i32, ptr %c, align 4, !dbg !3327
  %inc = add nsw i32 %24, 1, !dbg !3327
  store i32 %inc, ptr %c, align 4, !dbg !3327
  br label %for.cond1, !dbg !3328, !llvm.loop !3329

for.end16:                                        ; preds = %for.cond1
  br label %for.inc17, !dbg !3331

for.inc17:                                        ; preds = %for.end16
  %25 = load i32, ptr %r, align 4, !dbg !3332
  %inc18 = add nsw i32 %25, 1, !dbg !3332
  store i32 %inc18, ptr %r, align 4, !dbg !3332
  br label %for.cond, !dbg !3333, !llvm.loop !3334

for.end19:                                        ; preds = %for.cond
  ret void, !dbg !3336
}

; Function Attrs: noinline nounwind optnone
define dso_local i32 @mayo_sign(ptr noundef %p, ptr noundef %sm, ptr noundef %smlen, ptr noundef %m, i32 noundef %mlen, ptr noundef %csk) #0 !dbg !3337 {
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
    #dbg_declare(ptr %p.addr, !3338, !DIExpression(), !3339)
  store ptr %sm, ptr %sm.addr, align 4
    #dbg_declare(ptr %sm.addr, !3340, !DIExpression(), !3341)
  store ptr %smlen, ptr %smlen.addr, align 4
    #dbg_declare(ptr %smlen.addr, !3342, !DIExpression(), !3343)
  store ptr %m, ptr %m.addr, align 4
    #dbg_declare(ptr %m.addr, !3344, !DIExpression(), !3345)
  store i32 %mlen, ptr %mlen.addr, align 4
    #dbg_declare(ptr %mlen.addr, !3346, !DIExpression(), !3347)
  store ptr %csk, ptr %csk.addr, align 4
    #dbg_declare(ptr %csk.addr, !3348, !DIExpression(), !3349)
    #dbg_declare(ptr %ret, !3350, !DIExpression(), !3351)
  store i32 0, ptr %ret, align 4, !dbg !3351
    #dbg_declare(ptr %param_sig_bytes, !3352, !DIExpression(), !3353)
  %0 = load ptr, ptr %p.addr, align 4, !dbg !3354
  %sig_bytes = getelementptr inbounds nuw %struct.mayo_params_t, ptr %0, i32 0, i32 16, !dbg !3355
  %1 = load i32, ptr %sig_bytes, align 4, !dbg !3355
  store i32 %1, ptr %param_sig_bytes, align 4, !dbg !3353
    #dbg_declare(ptr %siglen, !3356, !DIExpression(), !3357)
  %2 = load ptr, ptr %sm.addr, align 4, !dbg !3358
  %3 = load i32, ptr %param_sig_bytes, align 4, !dbg !3359
  %add.ptr = getelementptr inbounds i8, ptr %2, i32 %3, !dbg !3360
  %4 = load ptr, ptr %m.addr, align 4, !dbg !3361
  %5 = load i32, ptr %mlen.addr, align 4, !dbg !3362
  %call = call ptr @memmove(ptr noundef %add.ptr, ptr noundef %4, i32 noundef %5) #5, !dbg !3363
  %6 = load ptr, ptr %p.addr, align 4, !dbg !3364
  %7 = load ptr, ptr %sm.addr, align 4, !dbg !3365
  %8 = load ptr, ptr %sm.addr, align 4, !dbg !3366
  %9 = load i32, ptr %param_sig_bytes, align 4, !dbg !3367
  %add.ptr1 = getelementptr inbounds i8, ptr %8, i32 %9, !dbg !3368
  %10 = load i32, ptr %mlen.addr, align 4, !dbg !3369
  %11 = load ptr, ptr %csk.addr, align 4, !dbg !3370
  %call2 = call i32 @mayo_sign_signature(ptr noundef %6, ptr noundef %7, ptr noundef %siglen, ptr noundef %add.ptr1, i32 noundef %10, ptr noundef %11) #5, !dbg !3371
  store i32 %call2, ptr %ret, align 4, !dbg !3372
  %12 = load i32, ptr %ret, align 4, !dbg !3373
  %cmp = icmp ne i32 %12, 0, !dbg !3375
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !3376

lor.lhs.false:                                    ; preds = %entry
  %13 = load i32, ptr %siglen, align 4, !dbg !3377
  %14 = load i32, ptr %param_sig_bytes, align 4, !dbg !3378
  %cmp3 = icmp ne i32 %13, %14, !dbg !3379
  br i1 %cmp3, label %if.then, label %if.end, !dbg !3376

if.then:                                          ; preds = %lor.lhs.false, %entry
  %15 = load ptr, ptr %sm.addr, align 4, !dbg !3380
  %16 = load i32, ptr %siglen, align 4, !dbg !3382
  %17 = load i32, ptr %mlen.addr, align 4, !dbg !3383
  %add = add i32 %16, %17, !dbg !3384
  %call4 = call ptr @memset(ptr noundef %15, i32 noundef 0, i32 noundef %add) #5, !dbg !3385
  br label %err, !dbg !3386

if.end:                                           ; preds = %lor.lhs.false
  %18 = load i32, ptr %siglen, align 4, !dbg !3387
  %19 = load i32, ptr %mlen.addr, align 4, !dbg !3388
  %add5 = add i32 %18, %19, !dbg !3389
  %20 = load ptr, ptr %smlen.addr, align 4, !dbg !3390
  store i32 %add5, ptr %20, align 4, !dbg !3391
  br label %err, !dbg !3392

err:                                              ; preds = %if.end, %if.then
    #dbg_label(!3393, !3394)
  %21 = load i32, ptr %ret, align 4, !dbg !3395
  ret i32 %21, !dbg !3396
}

; Function Attrs: noinline nounwind optnone
define dso_local i32 @mayo_open(ptr noundef %p, ptr noundef %m, ptr noundef %mlen, ptr noundef %sm, i32 noundef %smlen, ptr noundef %pk) #0 !dbg !3397 {
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
    #dbg_declare(ptr %p.addr, !3398, !DIExpression(), !3399)
  store ptr %m, ptr %m.addr, align 4
    #dbg_declare(ptr %m.addr, !3400, !DIExpression(), !3401)
  store ptr %mlen, ptr %mlen.addr, align 4
    #dbg_declare(ptr %mlen.addr, !3402, !DIExpression(), !3403)
  store ptr %sm, ptr %sm.addr, align 4
    #dbg_declare(ptr %sm.addr, !3404, !DIExpression(), !3405)
  store i32 %smlen, ptr %smlen.addr, align 4
    #dbg_declare(ptr %smlen.addr, !3406, !DIExpression(), !3407)
  store ptr %pk, ptr %pk.addr, align 4
    #dbg_declare(ptr %pk.addr, !3408, !DIExpression(), !3409)
    #dbg_declare(ptr %param_sig_bytes, !3410, !DIExpression(), !3411)
  %0 = load ptr, ptr %p.addr, align 4, !dbg !3412
  %sig_bytes = getelementptr inbounds nuw %struct.mayo_params_t, ptr %0, i32 0, i32 16, !dbg !3413
  %1 = load i32, ptr %sig_bytes, align 4, !dbg !3413
  store i32 %1, ptr %param_sig_bytes, align 4, !dbg !3411
  %2 = load i32, ptr %smlen.addr, align 4, !dbg !3414
  %3 = load i32, ptr %param_sig_bytes, align 4, !dbg !3416
  %cmp = icmp ult i32 %2, %3, !dbg !3417
  br i1 %cmp, label %if.then, label %if.end, !dbg !3417

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !3418
  br label %return, !dbg !3418

if.end:                                           ; preds = %entry
    #dbg_declare(ptr %result, !3420, !DIExpression(), !3421)
  %4 = load ptr, ptr %p.addr, align 4, !dbg !3422
  %5 = load ptr, ptr %sm.addr, align 4, !dbg !3423
  %6 = load i32, ptr %param_sig_bytes, align 4, !dbg !3424
  %add.ptr = getelementptr inbounds i8, ptr %5, i32 %6, !dbg !3425
  %7 = load i32, ptr %smlen.addr, align 4, !dbg !3426
  %8 = load i32, ptr %param_sig_bytes, align 4, !dbg !3427
  %sub = sub i32 %7, %8, !dbg !3428
  %9 = load ptr, ptr %sm.addr, align 4, !dbg !3429
  %10 = load ptr, ptr %pk.addr, align 4, !dbg !3430
  %call = call i32 @mayo_verify(ptr noundef %4, ptr noundef %add.ptr, i32 noundef %sub, ptr noundef %9, ptr noundef %10) #5, !dbg !3431
  store i32 %call, ptr %result, align 4, !dbg !3421
  %11 = load i32, ptr %result, align 4, !dbg !3432
  %cmp1 = icmp eq i32 %11, 0, !dbg !3434
  br i1 %cmp1, label %if.then2, label %if.end6, !dbg !3434

if.then2:                                         ; preds = %if.end
  %12 = load i32, ptr %smlen.addr, align 4, !dbg !3435
  %13 = load i32, ptr %param_sig_bytes, align 4, !dbg !3437
  %sub3 = sub i32 %12, %13, !dbg !3438
  %14 = load ptr, ptr %mlen.addr, align 4, !dbg !3439
  store i32 %sub3, ptr %14, align 4, !dbg !3440
  %15 = load ptr, ptr %m.addr, align 4, !dbg !3441
  %16 = load ptr, ptr %sm.addr, align 4, !dbg !3442
  %17 = load i32, ptr %param_sig_bytes, align 4, !dbg !3443
  %add.ptr4 = getelementptr inbounds i8, ptr %16, i32 %17, !dbg !3444
  %18 = load ptr, ptr %mlen.addr, align 4, !dbg !3445
  %19 = load i32, ptr %18, align 4, !dbg !3446
  %call5 = call ptr @memmove(ptr noundef %15, ptr noundef %add.ptr4, i32 noundef %19) #5, !dbg !3447
  br label %if.end6, !dbg !3448

if.end6:                                          ; preds = %if.then2, %if.end
  %20 = load i32, ptr %result, align 4, !dbg !3449
  store i32 %20, ptr %retval, align 4, !dbg !3450
  br label %return, !dbg !3450

return:                                           ; preds = %if.end6, %if.then
  %21 = load i32, ptr %retval, align 4, !dbg !3451
  ret i32 %21, !dbg !3451
}

; Function Attrs: noinline nounwind optnone
define dso_local i32 @mayo_verify(ptr noundef %p, ptr noundef %m, i32 noundef %mlen, ptr noundef %sig, ptr noundef %cpk) #0 !dbg !3452 {
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
    #dbg_declare(ptr %p.addr, !3455, !DIExpression(), !3456)
  store ptr %m, ptr %m.addr, align 4
    #dbg_declare(ptr %m.addr, !3457, !DIExpression(), !3458)
  store i32 %mlen, ptr %mlen.addr, align 4
    #dbg_declare(ptr %mlen.addr, !3459, !DIExpression(), !3460)
  store ptr %sig, ptr %sig.addr, align 4
    #dbg_declare(ptr %sig.addr, !3461, !DIExpression(), !3462)
  store ptr %cpk, ptr %cpk.addr, align 4
    #dbg_declare(ptr %cpk.addr, !3463, !DIExpression(), !3464)
    #dbg_declare(ptr %tEnc, !3465, !DIExpression(), !3466)
    #dbg_declare(ptr %t, !3467, !DIExpression(), !3468)
    #dbg_declare(ptr %y, !3469, !DIExpression(), !3473)
  call void @llvm.memset.p0.i32(ptr align 1 %y, i8 0, i32 284, i1 false), !dbg !3473
    #dbg_declare(ptr %s, !3474, !DIExpression(), !3475)
    #dbg_declare(ptr %pk, !3476, !DIExpression(), !3480)
  call void @llvm.memset.p0.i32(ptr align 8 %pk, i8 0, i32 915840, i1 false), !dbg !3480
    #dbg_declare(ptr %tmp, !3481, !DIExpression(), !3485)
    #dbg_declare(ptr %param_m, !3486, !DIExpression(), !3487)
  %0 = load ptr, ptr %p.addr, align 4, !dbg !3488
  %m1 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %0, i32 0, i32 0, !dbg !3489
  %1 = load i32, ptr %m1, align 4, !dbg !3489
  store i32 %1, ptr %param_m, align 4, !dbg !3487
    #dbg_declare(ptr %param_n, !3490, !DIExpression(), !3491)
  %2 = load ptr, ptr %p.addr, align 4, !dbg !3492
  %n = getelementptr inbounds nuw %struct.mayo_params_t, ptr %2, i32 0, i32 1, !dbg !3493
  %3 = load i32, ptr %n, align 4, !dbg !3493
  store i32 %3, ptr %param_n, align 4, !dbg !3491
    #dbg_declare(ptr %param_k, !3494, !DIExpression(), !3495)
  %4 = load ptr, ptr %p.addr, align 4, !dbg !3496
  %k = getelementptr inbounds nuw %struct.mayo_params_t, ptr %4, i32 0, i32 3, !dbg !3497
  %5 = load i32, ptr %k, align 4, !dbg !3497
  store i32 %5, ptr %param_k, align 4, !dbg !3495
    #dbg_declare(ptr %param_m_bytes, !3498, !DIExpression(), !3499)
  %6 = load ptr, ptr %p.addr, align 4, !dbg !3500
  %m_bytes = getelementptr inbounds nuw %struct.mayo_params_t, ptr %6, i32 0, i32 6, !dbg !3501
  %7 = load i32, ptr %m_bytes, align 4, !dbg !3501
  store i32 %7, ptr %param_m_bytes, align 4, !dbg !3499
    #dbg_declare(ptr %param_sig_bytes, !3502, !DIExpression(), !3503)
  %8 = load ptr, ptr %p.addr, align 4, !dbg !3504
  %sig_bytes = getelementptr inbounds nuw %struct.mayo_params_t, ptr %8, i32 0, i32 16, !dbg !3505
  %9 = load i32, ptr %sig_bytes, align 4, !dbg !3505
  store i32 %9, ptr %param_sig_bytes, align 4, !dbg !3503
    #dbg_declare(ptr %param_digest_bytes, !3506, !DIExpression(), !3507)
  %10 = load ptr, ptr %p.addr, align 4, !dbg !3508
  %digest_bytes = getelementptr inbounds nuw %struct.mayo_params_t, ptr %10, i32 0, i32 19, !dbg !3509
  %11 = load i32, ptr %digest_bytes, align 4, !dbg !3509
  store i32 %11, ptr %param_digest_bytes, align 4, !dbg !3507
    #dbg_declare(ptr %param_salt_bytes, !3510, !DIExpression(), !3511)
  %12 = load ptr, ptr %p.addr, align 4, !dbg !3512
  %salt_bytes = getelementptr inbounds nuw %struct.mayo_params_t, ptr %12, i32 0, i32 17, !dbg !3513
  %13 = load i32, ptr %salt_bytes, align 4, !dbg !3513
  store i32 %13, ptr %param_salt_bytes, align 4, !dbg !3511
    #dbg_declare(ptr %ret, !3514, !DIExpression(), !3515)
  %14 = load ptr, ptr %p.addr, align 4, !dbg !3516
  %15 = load ptr, ptr %cpk.addr, align 4, !dbg !3517
  %arraydecay = getelementptr inbounds [114480 x i64], ptr %pk, i32 0, i32 0, !dbg !3518
  %call = call i32 @mayo_expand_pk(ptr noundef %14, ptr noundef %15, ptr noundef %arraydecay) #5, !dbg !3519
  store i32 %call, ptr %ret, align 4, !dbg !3515
  %16 = load i32, ptr %ret, align 4, !dbg !3520
  %cmp = icmp ne i32 %16, 0, !dbg !3522
  br i1 %cmp, label %if.then, label %if.end, !dbg !3522

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !3523
  br label %return, !dbg !3523

if.end:                                           ; preds = %entry
    #dbg_declare(ptr %P1, !3525, !DIExpression(), !3526)
  %arraydecay2 = getelementptr inbounds [114480 x i64], ptr %pk, i32 0, i32 0, !dbg !3527
  store ptr %arraydecay2, ptr %P1, align 4, !dbg !3526
    #dbg_declare(ptr %P2, !3528, !DIExpression(), !3529)
  %17 = load ptr, ptr %P1, align 4, !dbg !3530
  %18 = load ptr, ptr %p.addr, align 4, !dbg !3531
  %n3 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %18, i32 0, i32 1, !dbg !3532
  %19 = load i32, ptr %n3, align 4, !dbg !3532
  %20 = load ptr, ptr %p.addr, align 4, !dbg !3531
  %o = getelementptr inbounds nuw %struct.mayo_params_t, ptr %20, i32 0, i32 2, !dbg !3532
  %21 = load i32, ptr %o, align 4, !dbg !3532
  %sub = sub nsw i32 %19, %21, !dbg !3532
  %22 = load ptr, ptr %p.addr, align 4, !dbg !3531
  %n4 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %22, i32 0, i32 1, !dbg !3532
  %23 = load i32, ptr %n4, align 4, !dbg !3532
  %24 = load ptr, ptr %p.addr, align 4, !dbg !3531
  %o5 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %24, i32 0, i32 2, !dbg !3532
  %25 = load i32, ptr %o5, align 4, !dbg !3532
  %sub6 = sub nsw i32 %23, %25, !dbg !3532
  %add = add nsw i32 %sub6, 1, !dbg !3532
  %mul = mul nsw i32 %sub, %add, !dbg !3532
  %div = sdiv i32 %mul, 2, !dbg !3532
  %26 = load ptr, ptr %p.addr, align 4, !dbg !3531
  %m_vec_limbs = getelementptr inbounds nuw %struct.mayo_params_t, ptr %26, i32 0, i32 21, !dbg !3532
  %27 = load i32, ptr %m_vec_limbs, align 4, !dbg !3532
  %mul7 = mul nsw i32 %div, %27, !dbg !3532
  %add.ptr = getelementptr inbounds i64, ptr %17, i32 %mul7, !dbg !3533
  store ptr %add.ptr, ptr %P2, align 4, !dbg !3529
    #dbg_declare(ptr %P3, !3534, !DIExpression(), !3535)
  %28 = load ptr, ptr %P2, align 4, !dbg !3536
  %29 = load ptr, ptr %p.addr, align 4, !dbg !3537
  %n8 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %29, i32 0, i32 1, !dbg !3538
  %30 = load i32, ptr %n8, align 4, !dbg !3538
  %31 = load ptr, ptr %p.addr, align 4, !dbg !3537
  %o9 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %31, i32 0, i32 2, !dbg !3538
  %32 = load i32, ptr %o9, align 4, !dbg !3538
  %sub10 = sub nsw i32 %30, %32, !dbg !3538
  %33 = load ptr, ptr %p.addr, align 4, !dbg !3537
  %o11 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %33, i32 0, i32 2, !dbg !3538
  %34 = load i32, ptr %o11, align 4, !dbg !3538
  %mul12 = mul nsw i32 %sub10, %34, !dbg !3538
  %35 = load ptr, ptr %p.addr, align 4, !dbg !3537
  %m_vec_limbs13 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %35, i32 0, i32 21, !dbg !3538
  %36 = load i32, ptr %m_vec_limbs13, align 4, !dbg !3538
  %mul14 = mul nsw i32 %mul12, %36, !dbg !3538
  %add.ptr15 = getelementptr inbounds i64, ptr %28, i32 %mul14, !dbg !3539
  store ptr %add.ptr15, ptr %P3, align 4, !dbg !3535
  %arraydecay16 = getelementptr inbounds [104 x i8], ptr %tmp, i32 0, i32 0, !dbg !3540
  %37 = load i32, ptr %param_digest_bytes, align 4, !dbg !3541
  %38 = load ptr, ptr %m.addr, align 4, !dbg !3542
  %39 = load i32, ptr %mlen.addr, align 4, !dbg !3543
  %call17 = call i32 @shake256(ptr noundef %arraydecay16, i32 noundef %37, ptr noundef %38, i32 noundef %39) #5, !dbg !3544
  %arraydecay18 = getelementptr inbounds [104 x i8], ptr %tmp, i32 0, i32 0, !dbg !3545
  %40 = load i32, ptr %param_digest_bytes, align 4, !dbg !3546
  %add.ptr19 = getelementptr inbounds i8, ptr %arraydecay18, i32 %40, !dbg !3547
  %41 = load ptr, ptr %sig.addr, align 4, !dbg !3548
  %42 = load i32, ptr %param_sig_bytes, align 4, !dbg !3549
  %add.ptr20 = getelementptr inbounds i8, ptr %41, i32 %42, !dbg !3550
  %43 = load i32, ptr %param_salt_bytes, align 4, !dbg !3551
  %idx.neg = sub i32 0, %43, !dbg !3552
  %add.ptr21 = getelementptr inbounds i8, ptr %add.ptr20, i32 %idx.neg, !dbg !3552
  %44 = load i32, ptr %param_salt_bytes, align 4, !dbg !3553
  %call22 = call ptr @memcpy(ptr noundef %add.ptr19, ptr noundef %add.ptr21, i32 noundef %44) #5, !dbg !3554
  %arraydecay23 = getelementptr inbounds [71 x i8], ptr %tEnc, i32 0, i32 0, !dbg !3555
  %45 = load i32, ptr %param_m_bytes, align 4, !dbg !3556
  %arraydecay24 = getelementptr inbounds [104 x i8], ptr %tmp, i32 0, i32 0, !dbg !3557
  %46 = load i32, ptr %param_digest_bytes, align 4, !dbg !3558
  %47 = load i32, ptr %param_salt_bytes, align 4, !dbg !3559
  %add25 = add nsw i32 %46, %47, !dbg !3560
  %call26 = call i32 @shake256(ptr noundef %arraydecay23, i32 noundef %45, ptr noundef %arraydecay24, i32 noundef %add25) #5, !dbg !3561
  %arraydecay27 = getelementptr inbounds [71 x i8], ptr %tEnc, i32 0, i32 0, !dbg !3562
  %arraydecay28 = getelementptr inbounds [142 x i8], ptr %t, i32 0, i32 0, !dbg !3563
  %48 = load i32, ptr %param_m, align 4, !dbg !3564
  call void @decode(ptr noundef %arraydecay27, ptr noundef %arraydecay28, i32 noundef %48) #5, !dbg !3565
  %49 = load ptr, ptr %sig.addr, align 4, !dbg !3566
  %arraydecay29 = getelementptr inbounds [1848 x i8], ptr %s, i32 0, i32 0, !dbg !3567
  %50 = load i32, ptr %param_k, align 4, !dbg !3568
  %51 = load i32, ptr %param_n, align 4, !dbg !3569
  %mul30 = mul nsw i32 %50, %51, !dbg !3570
  call void @decode(ptr noundef %49, ptr noundef %arraydecay29, i32 noundef %mul30) #5, !dbg !3571
  %52 = load ptr, ptr %p.addr, align 4, !dbg !3572
  %arraydecay31 = getelementptr inbounds [1848 x i8], ptr %s, i32 0, i32 0, !dbg !3573
  %53 = load ptr, ptr %P1, align 4, !dbg !3574
  %54 = load ptr, ptr %P2, align 4, !dbg !3575
  %55 = load ptr, ptr %P3, align 4, !dbg !3576
  %arraydecay32 = getelementptr inbounds [284 x i8], ptr %y, i32 0, i32 0, !dbg !3577
  call void @eval_public_map(ptr noundef %52, ptr noundef %arraydecay31, ptr noundef %53, ptr noundef %54, ptr noundef %55, ptr noundef %arraydecay32) #5, !dbg !3578
  %arraydecay33 = getelementptr inbounds [284 x i8], ptr %y, i32 0, i32 0, !dbg !3579
  %arraydecay34 = getelementptr inbounds [142 x i8], ptr %t, i32 0, i32 0, !dbg !3581
  %56 = load i32, ptr %param_m, align 4, !dbg !3582
  %call35 = call i32 @memcmp(ptr noundef %arraydecay33, ptr noundef %arraydecay34, i32 noundef %56) #5, !dbg !3583
  %cmp36 = icmp eq i32 %call35, 0, !dbg !3584
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !3584

if.then37:                                        ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !3585
  br label %return, !dbg !3585

if.end38:                                         ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !3587
  br label %return, !dbg !3587

return:                                           ; preds = %if.end38, %if.then37, %if.then
  %57 = load i32, ptr %retval, align 4, !dbg !3588
  ret i32 %57, !dbg !3588
}

; Function Attrs: noinline nounwind optnone
define dso_local i32 @mayo_expand_pk(ptr noundef %p, ptr noundef %cpk, ptr noundef %pk) #0 !dbg !3589 {
entry:
  %p.addr = alloca ptr, align 4
  %cpk.addr = alloca ptr, align 4
  %pk.addr = alloca ptr, align 4
  store ptr %p, ptr %p.addr, align 4
    #dbg_declare(ptr %p.addr, !3592, !DIExpression(), !3593)
  store ptr %cpk, ptr %cpk.addr, align 4
    #dbg_declare(ptr %cpk.addr, !3594, !DIExpression(), !3595)
  store ptr %pk, ptr %pk.addr, align 4
    #dbg_declare(ptr %pk.addr, !3596, !DIExpression(), !3597)
  %0 = load ptr, ptr %p.addr, align 4, !dbg !3598
  %1 = load ptr, ptr %pk.addr, align 4, !dbg !3599
  %2 = load ptr, ptr %cpk.addr, align 4, !dbg !3600
  call void @expand_P1_P2(ptr noundef %0, ptr noundef %1, ptr noundef %2) #5, !dbg !3601
  %3 = load ptr, ptr %cpk.addr, align 4, !dbg !3602
  %4 = load ptr, ptr %p.addr, align 4, !dbg !3603
  %pk_seed_bytes = getelementptr inbounds nuw %struct.mayo_params_t, ptr %4, i32 0, i32 20, !dbg !3604
  %5 = load i32, ptr %pk_seed_bytes, align 4, !dbg !3604
  %add.ptr = getelementptr inbounds i8, ptr %3, i32 %5, !dbg !3605
  %6 = load ptr, ptr %pk.addr, align 4, !dbg !3606
  %7 = load ptr, ptr %p.addr, align 4, !dbg !3607
  %n = getelementptr inbounds nuw %struct.mayo_params_t, ptr %7, i32 0, i32 1, !dbg !3608
  %8 = load i32, ptr %n, align 4, !dbg !3608
  %9 = load ptr, ptr %p.addr, align 4, !dbg !3607
  %o = getelementptr inbounds nuw %struct.mayo_params_t, ptr %9, i32 0, i32 2, !dbg !3608
  %10 = load i32, ptr %o, align 4, !dbg !3608
  %sub = sub nsw i32 %8, %10, !dbg !3608
  %11 = load ptr, ptr %p.addr, align 4, !dbg !3607
  %n1 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %11, i32 0, i32 1, !dbg !3608
  %12 = load i32, ptr %n1, align 4, !dbg !3608
  %13 = load ptr, ptr %p.addr, align 4, !dbg !3607
  %o2 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %13, i32 0, i32 2, !dbg !3608
  %14 = load i32, ptr %o2, align 4, !dbg !3608
  %sub3 = sub nsw i32 %12, %14, !dbg !3608
  %add = add nsw i32 %sub3, 1, !dbg !3608
  %mul = mul nsw i32 %sub, %add, !dbg !3608
  %div = sdiv i32 %mul, 2, !dbg !3608
  %15 = load ptr, ptr %p.addr, align 4, !dbg !3607
  %m_vec_limbs = getelementptr inbounds nuw %struct.mayo_params_t, ptr %15, i32 0, i32 21, !dbg !3608
  %16 = load i32, ptr %m_vec_limbs, align 4, !dbg !3608
  %mul4 = mul nsw i32 %div, %16, !dbg !3608
  %add.ptr5 = getelementptr inbounds i64, ptr %6, i32 %mul4, !dbg !3609
  %17 = load ptr, ptr %p.addr, align 4, !dbg !3610
  %n6 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %17, i32 0, i32 1, !dbg !3611
  %18 = load i32, ptr %n6, align 4, !dbg !3611
  %19 = load ptr, ptr %p.addr, align 4, !dbg !3610
  %o7 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %19, i32 0, i32 2, !dbg !3611
  %20 = load i32, ptr %o7, align 4, !dbg !3611
  %sub8 = sub nsw i32 %18, %20, !dbg !3611
  %21 = load ptr, ptr %p.addr, align 4, !dbg !3610
  %o9 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %21, i32 0, i32 2, !dbg !3611
  %22 = load i32, ptr %o9, align 4, !dbg !3611
  %mul10 = mul nsw i32 %sub8, %22, !dbg !3611
  %23 = load ptr, ptr %p.addr, align 4, !dbg !3610
  %m_vec_limbs11 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %23, i32 0, i32 21, !dbg !3611
  %24 = load i32, ptr %m_vec_limbs11, align 4, !dbg !3611
  %mul12 = mul nsw i32 %mul10, %24, !dbg !3611
  %add.ptr13 = getelementptr inbounds i64, ptr %add.ptr5, i32 %mul12, !dbg !3612
  %25 = load ptr, ptr %p.addr, align 4, !dbg !3613
  %o14 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %25, i32 0, i32 2, !dbg !3614
  %26 = load i32, ptr %o14, align 4, !dbg !3614
  %27 = load ptr, ptr %p.addr, align 4, !dbg !3613
  %o15 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %27, i32 0, i32 2, !dbg !3614
  %28 = load i32, ptr %o15, align 4, !dbg !3614
  %add16 = add nsw i32 %28, 1, !dbg !3614
  %mul17 = mul nsw i32 %26, %add16, !dbg !3614
  %div18 = sdiv i32 %mul17, 2, !dbg !3614
  %29 = load ptr, ptr %p.addr, align 4, !dbg !3613
  %m_vec_limbs19 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %29, i32 0, i32 21, !dbg !3614
  %30 = load i32, ptr %m_vec_limbs19, align 4, !dbg !3614
  %mul20 = mul nsw i32 %div18, %30, !dbg !3614
  %31 = load ptr, ptr %p.addr, align 4, !dbg !3615
  %m_vec_limbs21 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %31, i32 0, i32 21, !dbg !3616
  %32 = load i32, ptr %m_vec_limbs21, align 4, !dbg !3616
  %div22 = sdiv i32 %mul20, %32, !dbg !3617
  %33 = load ptr, ptr %p.addr, align 4, !dbg !3618
  %m = getelementptr inbounds nuw %struct.mayo_params_t, ptr %33, i32 0, i32 0, !dbg !3619
  %34 = load i32, ptr %m, align 4, !dbg !3619
  call void @unpack_m_vecs(ptr noundef %add.ptr, ptr noundef %add.ptr13, i32 noundef %div22, i32 noundef %34) #5, !dbg !3620
  ret i32 0, !dbg !3621
}

; Function Attrs: noinline nounwind optnone
define internal void @eval_public_map(ptr noundef %p, ptr noundef %s, ptr noundef %P1, ptr noundef %P2, ptr noundef %P3, ptr noundef %eval) #0 !dbg !3622 {
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
    #dbg_declare(ptr %p.addr, !3625, !DIExpression(), !3626)
  store ptr %s, ptr %s.addr, align 4
    #dbg_declare(ptr %s.addr, !3627, !DIExpression(), !3628)
  store ptr %P1, ptr %P1.addr, align 4
    #dbg_declare(ptr %P1.addr, !3629, !DIExpression(), !3630)
  store ptr %P2, ptr %P2.addr, align 4
    #dbg_declare(ptr %P2.addr, !3631, !DIExpression(), !3632)
  store ptr %P3, ptr %P3.addr, align 4
    #dbg_declare(ptr %P3.addr, !3633, !DIExpression(), !3634)
  store ptr %eval, ptr %eval.addr, align 4
    #dbg_declare(ptr %eval.addr, !3635, !DIExpression(), !3636)
    #dbg_declare(ptr %SPS, !3637, !DIExpression(), !3641)
  call void @llvm.memset.p0.i32(ptr align 8 %SPS, i8 0, i32 10368, i1 false), !dbg !3641
  %0 = load ptr, ptr %p.addr, align 4, !dbg !3642
  %1 = load ptr, ptr %P1.addr, align 4, !dbg !3643
  %2 = load ptr, ptr %P2.addr, align 4, !dbg !3644
  %3 = load ptr, ptr %P3.addr, align 4, !dbg !3645
  %4 = load ptr, ptr %s.addr, align 4, !dbg !3646
  %arraydecay = getelementptr inbounds [1296 x i64], ptr %SPS, i32 0, i32 0, !dbg !3647
  call void @m_calculate_PS_SPS(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %arraydecay) #5, !dbg !3648
    #dbg_declare(ptr %zero, !3649, !DIExpression(), !3650)
  call void @llvm.memset.p0.i32(ptr align 1 %zero, i8 0, i32 142, i1 false), !dbg !3650
  %5 = load ptr, ptr %p.addr, align 4, !dbg !3651
  %arraydecay1 = getelementptr inbounds [1296 x i64], ptr %SPS, i32 0, i32 0, !dbg !3652
  %arraydecay2 = getelementptr inbounds [142 x i8], ptr %zero, i32 0, i32 0, !dbg !3653
  %6 = load ptr, ptr %eval.addr, align 4, !dbg !3654
  call void @compute_rhs(ptr noundef %5, ptr noundef %arraydecay1, ptr noundef %arraydecay2, ptr noundef %6) #5, !dbg !3655
  ret void, !dbg !3656
}

; Function Attrs: noinline nounwind optnone
define internal void @m_calculate_PS_SPS(ptr noundef %p, ptr noundef %P1, ptr noundef %P2, ptr noundef %P3, ptr noundef %s, ptr noundef %SPS) #0 !dbg !3657 {
entry:
  %p.addr = alloca ptr, align 4
  %P1.addr = alloca ptr, align 4
  %P2.addr = alloca ptr, align 4
  %P3.addr = alloca ptr, align 4
  %s.addr = alloca ptr, align 4
  %SPS.addr = alloca ptr, align 4
  %PS = alloca [16632 x i64], align 8
  store ptr %p, ptr %p.addr, align 4
    #dbg_declare(ptr %p.addr, !3660, !DIExpression(), !3661)
  store ptr %P1, ptr %P1.addr, align 4
    #dbg_declare(ptr %P1.addr, !3662, !DIExpression(), !3663)
  store ptr %P2, ptr %P2.addr, align 4
    #dbg_declare(ptr %P2.addr, !3664, !DIExpression(), !3665)
  store ptr %P3, ptr %P3.addr, align 4
    #dbg_declare(ptr %P3.addr, !3666, !DIExpression(), !3667)
  store ptr %s, ptr %s.addr, align 4
    #dbg_declare(ptr %s.addr, !3668, !DIExpression(), !3669)
  store ptr %SPS, ptr %SPS.addr, align 4
    #dbg_declare(ptr %SPS.addr, !3670, !DIExpression(), !3671)
    #dbg_declare(ptr %PS, !3672, !DIExpression(), !3676)
  call void @llvm.memset.p0.i32(ptr align 8 %PS, i8 0, i32 133056, i1 false), !dbg !3676
  %0 = load ptr, ptr %P1.addr, align 4, !dbg !3677
  %1 = load ptr, ptr %P2.addr, align 4, !dbg !3678
  %2 = load ptr, ptr %P3.addr, align 4, !dbg !3679
  %3 = load ptr, ptr %s.addr, align 4, !dbg !3680
  %4 = load ptr, ptr %p.addr, align 4, !dbg !3681
  %m = getelementptr inbounds nuw %struct.mayo_params_t, ptr %4, i32 0, i32 0, !dbg !3682
  %5 = load i32, ptr %m, align 4, !dbg !3682
  %6 = load ptr, ptr %p.addr, align 4, !dbg !3683
  %n = getelementptr inbounds nuw %struct.mayo_params_t, ptr %6, i32 0, i32 1, !dbg !3684
  %7 = load i32, ptr %n, align 4, !dbg !3684
  %8 = load ptr, ptr %p.addr, align 4, !dbg !3683
  %o = getelementptr inbounds nuw %struct.mayo_params_t, ptr %8, i32 0, i32 2, !dbg !3684
  %9 = load i32, ptr %o, align 4, !dbg !3684
  %sub = sub nsw i32 %7, %9, !dbg !3684
  %10 = load ptr, ptr %p.addr, align 4, !dbg !3685
  %o1 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %10, i32 0, i32 2, !dbg !3686
  %11 = load i32, ptr %o1, align 4, !dbg !3686
  %12 = load ptr, ptr %p.addr, align 4, !dbg !3687
  %k = getelementptr inbounds nuw %struct.mayo_params_t, ptr %12, i32 0, i32 3, !dbg !3688
  %13 = load i32, ptr %k, align 4, !dbg !3688
  %arraydecay = getelementptr inbounds [16632 x i64], ptr %PS, i32 0, i32 0, !dbg !3689
  call void @mayo_generic_m_calculate_PS(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %5, i32 noundef %sub, i32 noundef %11, i32 noundef %13, ptr noundef %arraydecay) #5, !dbg !3690
  %arraydecay2 = getelementptr inbounds [16632 x i64], ptr %PS, i32 0, i32 0, !dbg !3691
  %14 = load ptr, ptr %s.addr, align 4, !dbg !3692
  %15 = load ptr, ptr %p.addr, align 4, !dbg !3693
  %m3 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %15, i32 0, i32 0, !dbg !3694
  %16 = load i32, ptr %m3, align 4, !dbg !3694
  %17 = load ptr, ptr %p.addr, align 4, !dbg !3695
  %k4 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %17, i32 0, i32 3, !dbg !3696
  %18 = load i32, ptr %k4, align 4, !dbg !3696
  %19 = load ptr, ptr %p.addr, align 4, !dbg !3697
  %n5 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %19, i32 0, i32 1, !dbg !3698
  %20 = load i32, ptr %n5, align 4, !dbg !3698
  %21 = load ptr, ptr %SPS.addr, align 4, !dbg !3699
  call void @mayo_generic_m_calculate_SPS(ptr noundef %arraydecay2, ptr noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %20, ptr noundef %21) #5, !dbg !3700
  ret void, !dbg !3701
}

; Function Attrs: noinline nounwind optnone
define internal void @mayo_generic_m_calculate_PS(ptr noundef %P1, ptr noundef %P2, ptr noundef %P3, ptr noundef %S, i32 noundef %m, i32 noundef %v, i32 noundef %o, i32 noundef %k, ptr noundef %PS) #0 !dbg !3702 {
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
    #dbg_declare(ptr %P1.addr, !3705, !DIExpression(), !3706)
  store ptr %P2, ptr %P2.addr, align 4
    #dbg_declare(ptr %P2.addr, !3707, !DIExpression(), !3708)
  store ptr %P3, ptr %P3.addr, align 4
    #dbg_declare(ptr %P3.addr, !3709, !DIExpression(), !3710)
  store ptr %S, ptr %S.addr, align 4
    #dbg_declare(ptr %S.addr, !3711, !DIExpression(), !3712)
  store i32 %m, ptr %m.addr, align 4
    #dbg_declare(ptr %m.addr, !3713, !DIExpression(), !3714)
  store i32 %v, ptr %v.addr, align 4
    #dbg_declare(ptr %v.addr, !3715, !DIExpression(), !3716)
  store i32 %o, ptr %o.addr, align 4
    #dbg_declare(ptr %o.addr, !3717, !DIExpression(), !3718)
  store i32 %k, ptr %k.addr, align 4
    #dbg_declare(ptr %k.addr, !3719, !DIExpression(), !3720)
  store ptr %PS, ptr %PS.addr, align 4
    #dbg_declare(ptr %PS.addr, !3721, !DIExpression(), !3722)
    #dbg_declare(ptr %n, !3723, !DIExpression(), !3724)
  %0 = load i32, ptr %o.addr, align 4, !dbg !3725
  %1 = load i32, ptr %v.addr, align 4, !dbg !3726
  %add = add nsw i32 %0, %1, !dbg !3727
  store i32 %add, ptr %n, align 4, !dbg !3724
    #dbg_declare(ptr %m_vec_limbs, !3728, !DIExpression(), !3729)
  %2 = load i32, ptr %m.addr, align 4, !dbg !3730
  %add1 = add nsw i32 %2, 15, !dbg !3731
  %div = sdiv i32 %add1, 16, !dbg !3732
  store i32 %div, ptr %m_vec_limbs, align 4, !dbg !3729
    #dbg_declare(ptr %accumulator, !3733, !DIExpression(), !3737)
  call void @llvm.memset.p0.i32(ptr align 8 %accumulator, i8 0, i32 2128896, i1 false), !dbg !3737
    #dbg_declare(ptr %P1_used, !3738, !DIExpression(), !3739)
  store i32 0, ptr %P1_used, align 4, !dbg !3739
    #dbg_declare(ptr %row, !3740, !DIExpression(), !3742)
  store i32 0, ptr %row, align 4, !dbg !3742
  br label %for.cond, !dbg !3743

for.cond:                                         ; preds = %for.inc52, %entry
  %3 = load i32, ptr %row, align 4, !dbg !3744
  %4 = load i32, ptr %v.addr, align 4, !dbg !3746
  %cmp = icmp slt i32 %3, %4, !dbg !3747
  br i1 %cmp, label %for.body, label %for.end54, !dbg !3748

for.body:                                         ; preds = %for.cond
    #dbg_declare(ptr %j, !3749, !DIExpression(), !3752)
  %5 = load i32, ptr %row, align 4, !dbg !3753
  store i32 %5, ptr %j, align 4, !dbg !3752
  br label %for.cond2, !dbg !3754

for.cond2:                                        ; preds = %for.inc17, %for.body
  %6 = load i32, ptr %j, align 4, !dbg !3755
  %7 = load i32, ptr %v.addr, align 4, !dbg !3757
  %cmp3 = icmp slt i32 %6, %7, !dbg !3758
  br i1 %cmp3, label %for.body4, label %for.end19, !dbg !3759

for.body4:                                        ; preds = %for.cond2
    #dbg_declare(ptr %col, !3760, !DIExpression(), !3763)
  store i32 0, ptr %col, align 4, !dbg !3763
  br label %for.cond5, !dbg !3764

for.cond5:                                        ; preds = %for.inc, %for.body4
  %8 = load i32, ptr %col, align 4, !dbg !3765
  %9 = load i32, ptr %k.addr, align 4, !dbg !3767
  %cmp6 = icmp slt i32 %8, %9, !dbg !3768
  br i1 %cmp6, label %for.body7, label %for.end, !dbg !3769

for.body7:                                        ; preds = %for.cond5
  %10 = load i32, ptr %m_vec_limbs, align 4, !dbg !3770
  %11 = load ptr, ptr %P1.addr, align 4, !dbg !3772
  %12 = load i32, ptr %P1_used, align 4, !dbg !3773
  %13 = load i32, ptr %m_vec_limbs, align 4, !dbg !3774
  %mul = mul nsw i32 %12, %13, !dbg !3775
  %add.ptr = getelementptr inbounds i64, ptr %11, i32 %mul, !dbg !3776
  %arraydecay = getelementptr inbounds [266112 x i64], ptr %accumulator, i32 0, i32 0, !dbg !3777
  %14 = load i32, ptr %row, align 4, !dbg !3778
  %15 = load i32, ptr %k.addr, align 4, !dbg !3779
  %mul8 = mul nsw i32 %14, %15, !dbg !3780
  %16 = load i32, ptr %col, align 4, !dbg !3781
  %add9 = add nsw i32 %mul8, %16, !dbg !3782
  %mul10 = mul nsw i32 %add9, 16, !dbg !3783
  %17 = load ptr, ptr %S.addr, align 4, !dbg !3784
  %18 = load i32, ptr %col, align 4, !dbg !3785
  %19 = load i32, ptr %n, align 4, !dbg !3786
  %mul11 = mul nsw i32 %18, %19, !dbg !3787
  %20 = load i32, ptr %j, align 4, !dbg !3788
  %add12 = add nsw i32 %mul11, %20, !dbg !3789
  %arrayidx = getelementptr inbounds i8, ptr %17, i32 %add12, !dbg !3784
  %21 = load i8, ptr %arrayidx, align 1, !dbg !3784
  %conv = zext i8 %21 to i32, !dbg !3784
  %add13 = add nsw i32 %mul10, %conv, !dbg !3790
  %22 = load i32, ptr %m_vec_limbs, align 4, !dbg !3791
  %mul14 = mul nsw i32 %add13, %22, !dbg !3792
  %add.ptr15 = getelementptr inbounds i64, ptr %arraydecay, i32 %mul14, !dbg !3793
  call void @m_vec_add(i32 noundef %10, ptr noundef %add.ptr, ptr noundef %add.ptr15) #5, !dbg !3794
  br label %for.inc, !dbg !3795

for.inc:                                          ; preds = %for.body7
  %23 = load i32, ptr %col, align 4, !dbg !3796
  %inc = add nsw i32 %23, 1, !dbg !3796
  store i32 %inc, ptr %col, align 4, !dbg !3796
  br label %for.cond5, !dbg !3797, !llvm.loop !3798

for.end:                                          ; preds = %for.cond5
  %24 = load i32, ptr %P1_used, align 4, !dbg !3800
  %inc16 = add nsw i32 %24, 1, !dbg !3800
  store i32 %inc16, ptr %P1_used, align 4, !dbg !3800
  br label %for.inc17, !dbg !3801

for.inc17:                                        ; preds = %for.end
  %25 = load i32, ptr %j, align 4, !dbg !3802
  %inc18 = add nsw i32 %25, 1, !dbg !3802
  store i32 %inc18, ptr %j, align 4, !dbg !3802
  br label %for.cond2, !dbg !3803, !llvm.loop !3804

for.end19:                                        ; preds = %for.cond2
    #dbg_declare(ptr %j20, !3806, !DIExpression(), !3808)
  store i32 0, ptr %j20, align 4, !dbg !3808
  br label %for.cond21, !dbg !3809

for.cond21:                                       ; preds = %for.inc49, %for.end19
  %26 = load i32, ptr %j20, align 4, !dbg !3810
  %27 = load i32, ptr %o.addr, align 4, !dbg !3812
  %cmp22 = icmp slt i32 %26, %27, !dbg !3813
  br i1 %cmp22, label %for.body24, label %for.end51, !dbg !3814

for.body24:                                       ; preds = %for.cond21
    #dbg_declare(ptr %col25, !3815, !DIExpression(), !3818)
  store i32 0, ptr %col25, align 4, !dbg !3818
  br label %for.cond26, !dbg !3819

for.cond26:                                       ; preds = %for.inc46, %for.body24
  %28 = load i32, ptr %col25, align 4, !dbg !3820
  %29 = load i32, ptr %k.addr, align 4, !dbg !3822
  %cmp27 = icmp slt i32 %28, %29, !dbg !3823
  br i1 %cmp27, label %for.body29, label %for.end48, !dbg !3824

for.body29:                                       ; preds = %for.cond26
  %30 = load i32, ptr %m_vec_limbs, align 4, !dbg !3825
  %31 = load ptr, ptr %P2.addr, align 4, !dbg !3827
  %32 = load i32, ptr %row, align 4, !dbg !3828
  %33 = load i32, ptr %o.addr, align 4, !dbg !3829
  %mul30 = mul nsw i32 %32, %33, !dbg !3830
  %34 = load i32, ptr %j20, align 4, !dbg !3831
  %add31 = add nsw i32 %mul30, %34, !dbg !3832
  %35 = load i32, ptr %m_vec_limbs, align 4, !dbg !3833
  %mul32 = mul nsw i32 %add31, %35, !dbg !3834
  %add.ptr33 = getelementptr inbounds i64, ptr %31, i32 %mul32, !dbg !3835
  %arraydecay34 = getelementptr inbounds [266112 x i64], ptr %accumulator, i32 0, i32 0, !dbg !3836
  %36 = load i32, ptr %row, align 4, !dbg !3837
  %37 = load i32, ptr %k.addr, align 4, !dbg !3838
  %mul35 = mul nsw i32 %36, %37, !dbg !3839
  %38 = load i32, ptr %col25, align 4, !dbg !3840
  %add36 = add nsw i32 %mul35, %38, !dbg !3841
  %mul37 = mul nsw i32 %add36, 16, !dbg !3842
  %39 = load ptr, ptr %S.addr, align 4, !dbg !3843
  %40 = load i32, ptr %col25, align 4, !dbg !3844
  %41 = load i32, ptr %n, align 4, !dbg !3845
  %mul38 = mul nsw i32 %40, %41, !dbg !3846
  %42 = load i32, ptr %j20, align 4, !dbg !3847
  %add39 = add nsw i32 %mul38, %42, !dbg !3848
  %43 = load i32, ptr %v.addr, align 4, !dbg !3849
  %add40 = add nsw i32 %add39, %43, !dbg !3850
  %arrayidx41 = getelementptr inbounds i8, ptr %39, i32 %add40, !dbg !3843
  %44 = load i8, ptr %arrayidx41, align 1, !dbg !3843
  %conv42 = zext i8 %44 to i32, !dbg !3843
  %add43 = add nsw i32 %mul37, %conv42, !dbg !3851
  %45 = load i32, ptr %m_vec_limbs, align 4, !dbg !3852
  %mul44 = mul nsw i32 %add43, %45, !dbg !3853
  %add.ptr45 = getelementptr inbounds i64, ptr %arraydecay34, i32 %mul44, !dbg !3854
  call void @m_vec_add(i32 noundef %30, ptr noundef %add.ptr33, ptr noundef %add.ptr45) #5, !dbg !3855
  br label %for.inc46, !dbg !3856

for.inc46:                                        ; preds = %for.body29
  %46 = load i32, ptr %col25, align 4, !dbg !3857
  %inc47 = add nsw i32 %46, 1, !dbg !3857
  store i32 %inc47, ptr %col25, align 4, !dbg !3857
  br label %for.cond26, !dbg !3858, !llvm.loop !3859

for.end48:                                        ; preds = %for.cond26
  br label %for.inc49, !dbg !3861

for.inc49:                                        ; preds = %for.end48
  %47 = load i32, ptr %j20, align 4, !dbg !3862
  %inc50 = add nsw i32 %47, 1, !dbg !3862
  store i32 %inc50, ptr %j20, align 4, !dbg !3862
  br label %for.cond21, !dbg !3863, !llvm.loop !3864

for.end51:                                        ; preds = %for.cond21
  br label %for.inc52, !dbg !3866

for.inc52:                                        ; preds = %for.end51
  %48 = load i32, ptr %row, align 4, !dbg !3867
  %inc53 = add nsw i32 %48, 1, !dbg !3867
  store i32 %inc53, ptr %row, align 4, !dbg !3867
  br label %for.cond, !dbg !3868, !llvm.loop !3869

for.end54:                                        ; preds = %for.cond
    #dbg_declare(ptr %P3_used, !3871, !DIExpression(), !3872)
  store i32 0, ptr %P3_used, align 4, !dbg !3872
    #dbg_declare(ptr %row55, !3873, !DIExpression(), !3875)
  %49 = load i32, ptr %v.addr, align 4, !dbg !3876
  store i32 %49, ptr %row55, align 4, !dbg !3875
  br label %for.cond56, !dbg !3877

for.cond56:                                       ; preds = %for.inc90, %for.end54
  %50 = load i32, ptr %row55, align 4, !dbg !3878
  %51 = load i32, ptr %n, align 4, !dbg !3880
  %cmp57 = icmp slt i32 %50, %51, !dbg !3881
  br i1 %cmp57, label %for.body59, label %for.end92, !dbg !3882

for.body59:                                       ; preds = %for.cond56
    #dbg_declare(ptr %j60, !3883, !DIExpression(), !3886)
  %52 = load i32, ptr %row55, align 4, !dbg !3887
  store i32 %52, ptr %j60, align 4, !dbg !3886
  br label %for.cond61, !dbg !3888

for.cond61:                                       ; preds = %for.inc87, %for.body59
  %53 = load i32, ptr %j60, align 4, !dbg !3889
  %54 = load i32, ptr %n, align 4, !dbg !3891
  %cmp62 = icmp slt i32 %53, %54, !dbg !3892
  br i1 %cmp62, label %for.body64, label %for.end89, !dbg !3893

for.body64:                                       ; preds = %for.cond61
    #dbg_declare(ptr %col65, !3894, !DIExpression(), !3897)
  store i32 0, ptr %col65, align 4, !dbg !3897
  br label %for.cond66, !dbg !3898

for.cond66:                                       ; preds = %for.inc83, %for.body64
  %55 = load i32, ptr %col65, align 4, !dbg !3899
  %56 = load i32, ptr %k.addr, align 4, !dbg !3901
  %cmp67 = icmp slt i32 %55, %56, !dbg !3902
  br i1 %cmp67, label %for.body69, label %for.end85, !dbg !3903

for.body69:                                       ; preds = %for.cond66
  %57 = load i32, ptr %m_vec_limbs, align 4, !dbg !3904
  %58 = load ptr, ptr %P3.addr, align 4, !dbg !3906
  %59 = load i32, ptr %P3_used, align 4, !dbg !3907
  %60 = load i32, ptr %m_vec_limbs, align 4, !dbg !3908
  %mul70 = mul nsw i32 %59, %60, !dbg !3909
  %add.ptr71 = getelementptr inbounds i64, ptr %58, i32 %mul70, !dbg !3910
  %arraydecay72 = getelementptr inbounds [266112 x i64], ptr %accumulator, i32 0, i32 0, !dbg !3911
  %61 = load i32, ptr %row55, align 4, !dbg !3912
  %62 = load i32, ptr %k.addr, align 4, !dbg !3913
  %mul73 = mul nsw i32 %61, %62, !dbg !3914
  %63 = load i32, ptr %col65, align 4, !dbg !3915
  %add74 = add nsw i32 %mul73, %63, !dbg !3916
  %mul75 = mul nsw i32 %add74, 16, !dbg !3917
  %64 = load ptr, ptr %S.addr, align 4, !dbg !3918
  %65 = load i32, ptr %col65, align 4, !dbg !3919
  %66 = load i32, ptr %n, align 4, !dbg !3920
  %mul76 = mul nsw i32 %65, %66, !dbg !3921
  %67 = load i32, ptr %j60, align 4, !dbg !3922
  %add77 = add nsw i32 %mul76, %67, !dbg !3923
  %arrayidx78 = getelementptr inbounds i8, ptr %64, i32 %add77, !dbg !3918
  %68 = load i8, ptr %arrayidx78, align 1, !dbg !3918
  %conv79 = zext i8 %68 to i32, !dbg !3918
  %add80 = add nsw i32 %mul75, %conv79, !dbg !3924
  %69 = load i32, ptr %m_vec_limbs, align 4, !dbg !3925
  %mul81 = mul nsw i32 %add80, %69, !dbg !3926
  %add.ptr82 = getelementptr inbounds i64, ptr %arraydecay72, i32 %mul81, !dbg !3927
  call void @m_vec_add(i32 noundef %57, ptr noundef %add.ptr71, ptr noundef %add.ptr82) #5, !dbg !3928
  br label %for.inc83, !dbg !3929

for.inc83:                                        ; preds = %for.body69
  %70 = load i32, ptr %col65, align 4, !dbg !3930
  %inc84 = add nsw i32 %70, 1, !dbg !3930
  store i32 %inc84, ptr %col65, align 4, !dbg !3930
  br label %for.cond66, !dbg !3931, !llvm.loop !3932

for.end85:                                        ; preds = %for.cond66
  %71 = load i32, ptr %P3_used, align 4, !dbg !3934
  %inc86 = add nsw i32 %71, 1, !dbg !3934
  store i32 %inc86, ptr %P3_used, align 4, !dbg !3934
  br label %for.inc87, !dbg !3935

for.inc87:                                        ; preds = %for.end85
  %72 = load i32, ptr %j60, align 4, !dbg !3936
  %inc88 = add nsw i32 %72, 1, !dbg !3936
  store i32 %inc88, ptr %j60, align 4, !dbg !3936
  br label %for.cond61, !dbg !3937, !llvm.loop !3938

for.end89:                                        ; preds = %for.cond61
  br label %for.inc90, !dbg !3940

for.inc90:                                        ; preds = %for.end89
  %73 = load i32, ptr %row55, align 4, !dbg !3941
  %inc91 = add nsw i32 %73, 1, !dbg !3941
  store i32 %inc91, ptr %row55, align 4, !dbg !3941
  br label %for.cond56, !dbg !3942, !llvm.loop !3943

for.end92:                                        ; preds = %for.cond56
    #dbg_declare(ptr %i, !3945, !DIExpression(), !3946)
  store i32 0, ptr %i, align 4, !dbg !3946
  br label %while.cond, !dbg !3947

while.cond:                                       ; preds = %while.body, %for.end92
  %74 = load i32, ptr %i, align 4, !dbg !3948
  %75 = load i32, ptr %n, align 4, !dbg !3949
  %76 = load i32, ptr %k.addr, align 4, !dbg !3950
  %mul93 = mul nsw i32 %75, %76, !dbg !3951
  %cmp94 = icmp slt i32 %74, %mul93, !dbg !3952
  br i1 %cmp94, label %while.body, label %while.end, !dbg !3947

while.body:                                       ; preds = %while.cond
  %77 = load i32, ptr %m_vec_limbs, align 4, !dbg !3953
  %arraydecay96 = getelementptr inbounds [266112 x i64], ptr %accumulator, i32 0, i32 0, !dbg !3955
  %78 = load i32, ptr %i, align 4, !dbg !3956
  %mul97 = mul nsw i32 %78, 16, !dbg !3957
  %79 = load i32, ptr %m_vec_limbs, align 4, !dbg !3958
  %mul98 = mul nsw i32 %mul97, %79, !dbg !3959
  %add.ptr99 = getelementptr inbounds i64, ptr %arraydecay96, i32 %mul98, !dbg !3960
  %80 = load ptr, ptr %PS.addr, align 4, !dbg !3961
  %81 = load i32, ptr %i, align 4, !dbg !3962
  %82 = load i32, ptr %m_vec_limbs, align 4, !dbg !3963
  %mul100 = mul nsw i32 %81, %82, !dbg !3964
  %add.ptr101 = getelementptr inbounds i64, ptr %80, i32 %mul100, !dbg !3965
  call void @m_vec_multiply_bins(i32 noundef %77, ptr noundef %add.ptr99, ptr noundef %add.ptr101) #5, !dbg !3966
  %83 = load i32, ptr %i, align 4, !dbg !3967
  %inc102 = add nsw i32 %83, 1, !dbg !3967
  store i32 %inc102, ptr %i, align 4, !dbg !3967
  br label %while.cond, !dbg !3947, !llvm.loop !3968

while.end:                                        ; preds = %while.cond
  ret void, !dbg !3970
}

; Function Attrs: noinline nounwind optnone
define internal void @mayo_generic_m_calculate_SPS(ptr noundef %PS, ptr noundef %S, i32 noundef %m, i32 noundef %k, i32 noundef %n, ptr noundef %SPS) #0 !dbg !3971 {
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
    #dbg_declare(ptr %PS.addr, !3974, !DIExpression(), !3975)
  store ptr %S, ptr %S.addr, align 4
    #dbg_declare(ptr %S.addr, !3976, !DIExpression(), !3977)
  store i32 %m, ptr %m.addr, align 4
    #dbg_declare(ptr %m.addr, !3978, !DIExpression(), !3979)
  store i32 %k, ptr %k.addr, align 4
    #dbg_declare(ptr %k.addr, !3980, !DIExpression(), !3981)
  store i32 %n, ptr %n.addr, align 4
    #dbg_declare(ptr %n.addr, !3982, !DIExpression(), !3983)
  store ptr %SPS, ptr %SPS.addr, align 4
    #dbg_declare(ptr %SPS.addr, !3984, !DIExpression(), !3985)
    #dbg_declare(ptr %accumulator, !3986, !DIExpression(), !3990)
  call void @llvm.memset.p0.i32(ptr align 8 %accumulator, i8 0, i32 165888, i1 false), !dbg !3990
    #dbg_declare(ptr %m_vec_limbs, !3991, !DIExpression(), !3992)
  %0 = load i32, ptr %m.addr, align 4, !dbg !3993
  %add = add nsw i32 %0, 15, !dbg !3994
  %div = sdiv i32 %add, 16, !dbg !3995
  store i32 %div, ptr %m_vec_limbs, align 4, !dbg !3992
    #dbg_declare(ptr %row, !3996, !DIExpression(), !3998)
  store i32 0, ptr %row, align 4, !dbg !3998
  br label %for.cond, !dbg !3999

for.cond:                                         ; preds = %for.inc20, %entry
  %1 = load i32, ptr %row, align 4, !dbg !4000
  %2 = load i32, ptr %k.addr, align 4, !dbg !4002
  %cmp = icmp slt i32 %1, %2, !dbg !4003
  br i1 %cmp, label %for.body, label %for.end22, !dbg !4004

for.body:                                         ; preds = %for.cond
    #dbg_declare(ptr %j, !4005, !DIExpression(), !4008)
  store i32 0, ptr %j, align 4, !dbg !4008
  br label %for.cond1, !dbg !4009

for.cond1:                                        ; preds = %for.inc18, %for.body
  %3 = load i32, ptr %j, align 4, !dbg !4010
  %4 = load i32, ptr %n.addr, align 4, !dbg !4012
  %cmp2 = icmp slt i32 %3, %4, !dbg !4013
  br i1 %cmp2, label %for.body3, label %for.end19, !dbg !4014

for.body3:                                        ; preds = %for.cond1
    #dbg_declare(ptr %col, !4015, !DIExpression(), !4018)
  store i32 0, ptr %col, align 4, !dbg !4018
  br label %for.cond4, !dbg !4019

for.cond4:                                        ; preds = %for.inc, %for.body3
  %5 = load i32, ptr %col, align 4, !dbg !4020
  %6 = load i32, ptr %k.addr, align 4, !dbg !4022
  %cmp5 = icmp slt i32 %5, %6, !dbg !4023
  br i1 %cmp5, label %for.body6, label %for.end, !dbg !4024

for.body6:                                        ; preds = %for.cond4
  %7 = load i32, ptr %m_vec_limbs, align 4, !dbg !4025
  %8 = load ptr, ptr %PS.addr, align 4, !dbg !4027
  %9 = load i32, ptr %j, align 4, !dbg !4028
  %10 = load i32, ptr %k.addr, align 4, !dbg !4029
  %mul = mul nsw i32 %9, %10, !dbg !4030
  %11 = load i32, ptr %col, align 4, !dbg !4031
  %add7 = add nsw i32 %mul, %11, !dbg !4032
  %12 = load i32, ptr %m_vec_limbs, align 4, !dbg !4033
  %mul8 = mul nsw i32 %add7, %12, !dbg !4034
  %add.ptr = getelementptr inbounds i64, ptr %8, i32 %mul8, !dbg !4035
  %arraydecay = getelementptr inbounds [20736 x i64], ptr %accumulator, i32 0, i32 0, !dbg !4036
  %13 = load i32, ptr %row, align 4, !dbg !4037
  %14 = load i32, ptr %k.addr, align 4, !dbg !4038
  %mul9 = mul nsw i32 %13, %14, !dbg !4039
  %15 = load i32, ptr %col, align 4, !dbg !4040
  %add10 = add nsw i32 %mul9, %15, !dbg !4041
  %mul11 = mul nsw i32 %add10, 16, !dbg !4042
  %16 = load ptr, ptr %S.addr, align 4, !dbg !4043
  %17 = load i32, ptr %row, align 4, !dbg !4044
  %18 = load i32, ptr %n.addr, align 4, !dbg !4045
  %mul12 = mul nsw i32 %17, %18, !dbg !4046
  %19 = load i32, ptr %j, align 4, !dbg !4047
  %add13 = add nsw i32 %mul12, %19, !dbg !4048
  %arrayidx = getelementptr inbounds i8, ptr %16, i32 %add13, !dbg !4043
  %20 = load i8, ptr %arrayidx, align 1, !dbg !4043
  %conv = zext i8 %20 to i32, !dbg !4043
  %add14 = add nsw i32 %mul11, %conv, !dbg !4049
  %21 = load i32, ptr %m_vec_limbs, align 4, !dbg !4050
  %mul15 = mul nsw i32 %add14, %21, !dbg !4051
  %add.ptr16 = getelementptr inbounds i64, ptr %arraydecay, i32 %mul15, !dbg !4052
  call void @m_vec_add(i32 noundef %7, ptr noundef %add.ptr, ptr noundef %add.ptr16) #5, !dbg !4053
  br label %for.inc, !dbg !4054

for.inc:                                          ; preds = %for.body6
  %22 = load i32, ptr %col, align 4, !dbg !4055
  %add17 = add nsw i32 %22, 1, !dbg !4055
  store i32 %add17, ptr %col, align 4, !dbg !4055
  br label %for.cond4, !dbg !4056, !llvm.loop !4057

for.end:                                          ; preds = %for.cond4
  br label %for.inc18, !dbg !4059

for.inc18:                                        ; preds = %for.end
  %23 = load i32, ptr %j, align 4, !dbg !4060
  %inc = add nsw i32 %23, 1, !dbg !4060
  store i32 %inc, ptr %j, align 4, !dbg !4060
  br label %for.cond1, !dbg !4061, !llvm.loop !4062

for.end19:                                        ; preds = %for.cond1
  br label %for.inc20, !dbg !4064

for.inc20:                                        ; preds = %for.end19
  %24 = load i32, ptr %row, align 4, !dbg !4065
  %inc21 = add nsw i32 %24, 1, !dbg !4065
  store i32 %inc21, ptr %row, align 4, !dbg !4065
  br label %for.cond, !dbg !4066, !llvm.loop !4067

for.end22:                                        ; preds = %for.cond
    #dbg_declare(ptr %i, !4069, !DIExpression(), !4070)
  store i32 0, ptr %i, align 4, !dbg !4070
  br label %while.cond, !dbg !4071

while.cond:                                       ; preds = %while.body, %for.end22
  %25 = load i32, ptr %i, align 4, !dbg !4072
  %26 = load i32, ptr %k.addr, align 4, !dbg !4073
  %27 = load i32, ptr %k.addr, align 4, !dbg !4074
  %mul23 = mul nsw i32 %26, %27, !dbg !4075
  %cmp24 = icmp slt i32 %25, %mul23, !dbg !4076
  br i1 %cmp24, label %while.body, label %while.end, !dbg !4071

while.body:                                       ; preds = %while.cond
  %28 = load i32, ptr %m_vec_limbs, align 4, !dbg !4077
  %arraydecay26 = getelementptr inbounds [20736 x i64], ptr %accumulator, i32 0, i32 0, !dbg !4079
  %29 = load i32, ptr %i, align 4, !dbg !4080
  %mul27 = mul nsw i32 %29, 16, !dbg !4081
  %30 = load i32, ptr %m_vec_limbs, align 4, !dbg !4082
  %mul28 = mul nsw i32 %mul27, %30, !dbg !4083
  %add.ptr29 = getelementptr inbounds i64, ptr %arraydecay26, i32 %mul28, !dbg !4084
  %31 = load ptr, ptr %SPS.addr, align 4, !dbg !4085
  %32 = load i32, ptr %i, align 4, !dbg !4086
  %33 = load i32, ptr %m_vec_limbs, align 4, !dbg !4087
  %mul30 = mul nsw i32 %32, %33, !dbg !4088
  %add.ptr31 = getelementptr inbounds i64, ptr %31, i32 %mul30, !dbg !4089
  call void @m_vec_multiply_bins(i32 noundef %28, ptr noundef %add.ptr29, ptr noundef %add.ptr31) #5, !dbg !4090
  %34 = load i32, ptr %i, align 4, !dbg !4091
  %inc32 = add nsw i32 %34, 1, !dbg !4091
  store i32 %inc32, ptr %i, align 4, !dbg !4091
  br label %while.cond, !dbg !4071, !llvm.loop !4092

while.end:                                        ; preds = %while.cond
  ret void, !dbg !4094
}

; Function Attrs: noinline nounwind optnone
define internal void @m_vec_add(i32 noundef %m_vec_limbs, ptr noundef %in, ptr noundef %acc) #0 !dbg !4095 {
entry:
  %m_vec_limbs.addr = alloca i32, align 4
  %in.addr = alloca ptr, align 4
  %acc.addr = alloca ptr, align 4
  %i = alloca i32, align 4
  store i32 %m_vec_limbs, ptr %m_vec_limbs.addr, align 4
    #dbg_declare(ptr %m_vec_limbs.addr, !4098, !DIExpression(), !4099)
  store ptr %in, ptr %in.addr, align 4
    #dbg_declare(ptr %in.addr, !4100, !DIExpression(), !4101)
  store ptr %acc, ptr %acc.addr, align 4
    #dbg_declare(ptr %acc.addr, !4102, !DIExpression(), !4103)
    #dbg_declare(ptr %i, !4104, !DIExpression(), !4106)
  store i32 0, ptr %i, align 4, !dbg !4106
  br label %for.cond, !dbg !4107

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !4108
  %1 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4110
  %cmp = icmp slt i32 %0, %1, !dbg !4111
  br i1 %cmp, label %for.body, label %for.end, !dbg !4112

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %in.addr, align 4, !dbg !4113
  %3 = load i32, ptr %i, align 4, !dbg !4115
  %arrayidx = getelementptr inbounds i64, ptr %2, i32 %3, !dbg !4113
  %4 = load i64, ptr %arrayidx, align 8, !dbg !4113
  %5 = load ptr, ptr %acc.addr, align 4, !dbg !4116
  %6 = load i32, ptr %i, align 4, !dbg !4117
  %arrayidx1 = getelementptr inbounds i64, ptr %5, i32 %6, !dbg !4116
  %7 = load i64, ptr %arrayidx1, align 8, !dbg !4118
  %xor = xor i64 %7, %4, !dbg !4118
  store i64 %xor, ptr %arrayidx1, align 8, !dbg !4118
  br label %for.inc, !dbg !4119

for.inc:                                          ; preds = %for.body
  %8 = load i32, ptr %i, align 4, !dbg !4120
  %inc = add nsw i32 %8, 1, !dbg !4120
  store i32 %inc, ptr %i, align 4, !dbg !4120
  br label %for.cond, !dbg !4121, !llvm.loop !4122

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4124
}

; Function Attrs: noinline nounwind optnone
define internal void @m_vec_multiply_bins(i32 noundef %m_vec_limbs, ptr noundef %bins, ptr noundef %out) #0 !dbg !4125 {
entry:
  %m_vec_limbs.addr = alloca i32, align 4
  %bins.addr = alloca ptr, align 4
  %out.addr = alloca ptr, align 4
  store i32 %m_vec_limbs, ptr %m_vec_limbs.addr, align 4
    #dbg_declare(ptr %m_vec_limbs.addr, !4128, !DIExpression(), !4129)
  store ptr %bins, ptr %bins.addr, align 4
    #dbg_declare(ptr %bins.addr, !4130, !DIExpression(), !4131)
  store ptr %out, ptr %out.addr, align 4
    #dbg_declare(ptr %out.addr, !4132, !DIExpression(), !4133)
  %0 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4134
  %1 = load ptr, ptr %bins.addr, align 4, !dbg !4135
  %2 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4136
  %mul = mul nsw i32 5, %2, !dbg !4137
  %add.ptr = getelementptr inbounds i64, ptr %1, i32 %mul, !dbg !4138
  %3 = load ptr, ptr %bins.addr, align 4, !dbg !4139
  %4 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4140
  %mul1 = mul nsw i32 10, %4, !dbg !4141
  %add.ptr2 = getelementptr inbounds i64, ptr %3, i32 %mul1, !dbg !4142
  call void @m_vec_mul_add_x_inv(i32 noundef %0, ptr noundef %add.ptr, ptr noundef %add.ptr2) #5, !dbg !4143
  %5 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4144
  %6 = load ptr, ptr %bins.addr, align 4, !dbg !4145
  %7 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4146
  %mul3 = mul nsw i32 11, %7, !dbg !4147
  %add.ptr4 = getelementptr inbounds i64, ptr %6, i32 %mul3, !dbg !4148
  %8 = load ptr, ptr %bins.addr, align 4, !dbg !4149
  %9 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4150
  %mul5 = mul nsw i32 12, %9, !dbg !4151
  %add.ptr6 = getelementptr inbounds i64, ptr %8, i32 %mul5, !dbg !4152
  call void @m_vec_mul_add_x(i32 noundef %5, ptr noundef %add.ptr4, ptr noundef %add.ptr6) #5, !dbg !4153
  %10 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4154
  %11 = load ptr, ptr %bins.addr, align 4, !dbg !4155
  %12 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4156
  %mul7 = mul nsw i32 10, %12, !dbg !4157
  %add.ptr8 = getelementptr inbounds i64, ptr %11, i32 %mul7, !dbg !4158
  %13 = load ptr, ptr %bins.addr, align 4, !dbg !4159
  %14 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4160
  %mul9 = mul nsw i32 7, %14, !dbg !4161
  %add.ptr10 = getelementptr inbounds i64, ptr %13, i32 %mul9, !dbg !4162
  call void @m_vec_mul_add_x_inv(i32 noundef %10, ptr noundef %add.ptr8, ptr noundef %add.ptr10) #5, !dbg !4163
  %15 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4164
  %16 = load ptr, ptr %bins.addr, align 4, !dbg !4165
  %17 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4166
  %mul11 = mul nsw i32 12, %17, !dbg !4167
  %add.ptr12 = getelementptr inbounds i64, ptr %16, i32 %mul11, !dbg !4168
  %18 = load ptr, ptr %bins.addr, align 4, !dbg !4169
  %19 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4170
  %mul13 = mul nsw i32 6, %19, !dbg !4171
  %add.ptr14 = getelementptr inbounds i64, ptr %18, i32 %mul13, !dbg !4172
  call void @m_vec_mul_add_x(i32 noundef %15, ptr noundef %add.ptr12, ptr noundef %add.ptr14) #5, !dbg !4173
  %20 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4174
  %21 = load ptr, ptr %bins.addr, align 4, !dbg !4175
  %22 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4176
  %mul15 = mul nsw i32 7, %22, !dbg !4177
  %add.ptr16 = getelementptr inbounds i64, ptr %21, i32 %mul15, !dbg !4178
  %23 = load ptr, ptr %bins.addr, align 4, !dbg !4179
  %24 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4180
  %mul17 = mul nsw i32 14, %24, !dbg !4181
  %add.ptr18 = getelementptr inbounds i64, ptr %23, i32 %mul17, !dbg !4182
  call void @m_vec_mul_add_x_inv(i32 noundef %20, ptr noundef %add.ptr16, ptr noundef %add.ptr18) #5, !dbg !4183
  %25 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4184
  %26 = load ptr, ptr %bins.addr, align 4, !dbg !4185
  %27 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4186
  %mul19 = mul nsw i32 6, %27, !dbg !4187
  %add.ptr20 = getelementptr inbounds i64, ptr %26, i32 %mul19, !dbg !4188
  %28 = load ptr, ptr %bins.addr, align 4, !dbg !4189
  %29 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4190
  %mul21 = mul nsw i32 3, %29, !dbg !4191
  %add.ptr22 = getelementptr inbounds i64, ptr %28, i32 %mul21, !dbg !4192
  call void @m_vec_mul_add_x(i32 noundef %25, ptr noundef %add.ptr20, ptr noundef %add.ptr22) #5, !dbg !4193
  %30 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4194
  %31 = load ptr, ptr %bins.addr, align 4, !dbg !4195
  %32 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4196
  %mul23 = mul nsw i32 14, %32, !dbg !4197
  %add.ptr24 = getelementptr inbounds i64, ptr %31, i32 %mul23, !dbg !4198
  %33 = load ptr, ptr %bins.addr, align 4, !dbg !4199
  %34 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4200
  %mul25 = mul nsw i32 15, %34, !dbg !4201
  %add.ptr26 = getelementptr inbounds i64, ptr %33, i32 %mul25, !dbg !4202
  call void @m_vec_mul_add_x_inv(i32 noundef %30, ptr noundef %add.ptr24, ptr noundef %add.ptr26) #5, !dbg !4203
  %35 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4204
  %36 = load ptr, ptr %bins.addr, align 4, !dbg !4205
  %37 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4206
  %mul27 = mul nsw i32 3, %37, !dbg !4207
  %add.ptr28 = getelementptr inbounds i64, ptr %36, i32 %mul27, !dbg !4208
  %38 = load ptr, ptr %bins.addr, align 4, !dbg !4209
  %39 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4210
  %mul29 = mul nsw i32 8, %39, !dbg !4211
  %add.ptr30 = getelementptr inbounds i64, ptr %38, i32 %mul29, !dbg !4212
  call void @m_vec_mul_add_x(i32 noundef %35, ptr noundef %add.ptr28, ptr noundef %add.ptr30) #5, !dbg !4213
  %40 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4214
  %41 = load ptr, ptr %bins.addr, align 4, !dbg !4215
  %42 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4216
  %mul31 = mul nsw i32 15, %42, !dbg !4217
  %add.ptr32 = getelementptr inbounds i64, ptr %41, i32 %mul31, !dbg !4218
  %43 = load ptr, ptr %bins.addr, align 4, !dbg !4219
  %44 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4220
  %mul33 = mul nsw i32 13, %44, !dbg !4221
  %add.ptr34 = getelementptr inbounds i64, ptr %43, i32 %mul33, !dbg !4222
  call void @m_vec_mul_add_x_inv(i32 noundef %40, ptr noundef %add.ptr32, ptr noundef %add.ptr34) #5, !dbg !4223
  %45 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4224
  %46 = load ptr, ptr %bins.addr, align 4, !dbg !4225
  %47 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4226
  %mul35 = mul nsw i32 8, %47, !dbg !4227
  %add.ptr36 = getelementptr inbounds i64, ptr %46, i32 %mul35, !dbg !4228
  %48 = load ptr, ptr %bins.addr, align 4, !dbg !4229
  %49 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4230
  %mul37 = mul nsw i32 4, %49, !dbg !4231
  %add.ptr38 = getelementptr inbounds i64, ptr %48, i32 %mul37, !dbg !4232
  call void @m_vec_mul_add_x(i32 noundef %45, ptr noundef %add.ptr36, ptr noundef %add.ptr38) #5, !dbg !4233
  %50 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4234
  %51 = load ptr, ptr %bins.addr, align 4, !dbg !4235
  %52 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4236
  %mul39 = mul nsw i32 13, %52, !dbg !4237
  %add.ptr40 = getelementptr inbounds i64, ptr %51, i32 %mul39, !dbg !4238
  %53 = load ptr, ptr %bins.addr, align 4, !dbg !4239
  %54 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4240
  %mul41 = mul nsw i32 9, %54, !dbg !4241
  %add.ptr42 = getelementptr inbounds i64, ptr %53, i32 %mul41, !dbg !4242
  call void @m_vec_mul_add_x_inv(i32 noundef %50, ptr noundef %add.ptr40, ptr noundef %add.ptr42) #5, !dbg !4243
  %55 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4244
  %56 = load ptr, ptr %bins.addr, align 4, !dbg !4245
  %57 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4246
  %mul43 = mul nsw i32 4, %57, !dbg !4247
  %add.ptr44 = getelementptr inbounds i64, ptr %56, i32 %mul43, !dbg !4248
  %58 = load ptr, ptr %bins.addr, align 4, !dbg !4249
  %59 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4250
  %mul45 = mul nsw i32 2, %59, !dbg !4251
  %add.ptr46 = getelementptr inbounds i64, ptr %58, i32 %mul45, !dbg !4252
  call void @m_vec_mul_add_x(i32 noundef %55, ptr noundef %add.ptr44, ptr noundef %add.ptr46) #5, !dbg !4253
  %60 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4254
  %61 = load ptr, ptr %bins.addr, align 4, !dbg !4255
  %62 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4256
  %mul47 = mul nsw i32 9, %62, !dbg !4257
  %add.ptr48 = getelementptr inbounds i64, ptr %61, i32 %mul47, !dbg !4258
  %63 = load ptr, ptr %bins.addr, align 4, !dbg !4259
  %64 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4260
  %mul49 = mul nsw i32 1, %64, !dbg !4261
  %add.ptr50 = getelementptr inbounds i64, ptr %63, i32 %mul49, !dbg !4262
  call void @m_vec_mul_add_x_inv(i32 noundef %60, ptr noundef %add.ptr48, ptr noundef %add.ptr50) #5, !dbg !4263
  %65 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4264
  %66 = load ptr, ptr %bins.addr, align 4, !dbg !4265
  %67 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4266
  %mul51 = mul nsw i32 2, %67, !dbg !4267
  %add.ptr52 = getelementptr inbounds i64, ptr %66, i32 %mul51, !dbg !4268
  %68 = load ptr, ptr %bins.addr, align 4, !dbg !4269
  %69 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4270
  %mul53 = mul nsw i32 1, %69, !dbg !4271
  %add.ptr54 = getelementptr inbounds i64, ptr %68, i32 %mul53, !dbg !4272
  call void @m_vec_mul_add_x(i32 noundef %65, ptr noundef %add.ptr52, ptr noundef %add.ptr54) #5, !dbg !4273
  %70 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4274
  %71 = load ptr, ptr %bins.addr, align 4, !dbg !4275
  %72 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4276
  %add.ptr55 = getelementptr inbounds i64, ptr %71, i32 %72, !dbg !4277
  %73 = load ptr, ptr %out.addr, align 4, !dbg !4278
  call void @m_vec_copy(i32 noundef %70, ptr noundef %add.ptr55, ptr noundef %73) #5, !dbg !4279
  ret void, !dbg !4280
}

; Function Attrs: noinline nounwind optnone
define internal void @m_vec_mul_add_x_inv(i32 noundef %m_vec_limbs, ptr noundef %in, ptr noundef %acc) #0 !dbg !4281 {
entry:
  %m_vec_limbs.addr = alloca i32, align 4
  %in.addr = alloca ptr, align 4
  %acc.addr = alloca ptr, align 4
  %mask_lsb = alloca i64, align 8
  %i = alloca i32, align 4
  %t = alloca i64, align 8
  store i32 %m_vec_limbs, ptr %m_vec_limbs.addr, align 4
    #dbg_declare(ptr %m_vec_limbs.addr, !4282, !DIExpression(), !4283)
  store ptr %in, ptr %in.addr, align 4
    #dbg_declare(ptr %in.addr, !4284, !DIExpression(), !4285)
  store ptr %acc, ptr %acc.addr, align 4
    #dbg_declare(ptr %acc.addr, !4286, !DIExpression(), !4287)
    #dbg_declare(ptr %mask_lsb, !4288, !DIExpression(), !4289)
  store i64 1229782938247303441, ptr %mask_lsb, align 8, !dbg !4289
    #dbg_declare(ptr %i, !4290, !DIExpression(), !4292)
  store i32 0, ptr %i, align 4, !dbg !4292
  br label %for.cond, !dbg !4293

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !4294
  %1 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4296
  %cmp = icmp slt i32 %0, %1, !dbg !4297
  br i1 %cmp, label %for.body, label %for.end, !dbg !4298

for.body:                                         ; preds = %for.cond
    #dbg_declare(ptr %t, !4299, !DIExpression(), !4301)
  %2 = load ptr, ptr %in.addr, align 4, !dbg !4302
  %3 = load i32, ptr %i, align 4, !dbg !4303
  %arrayidx = getelementptr inbounds i64, ptr %2, i32 %3, !dbg !4302
  %4 = load i64, ptr %arrayidx, align 8, !dbg !4302
  %5 = load i64, ptr %mask_lsb, align 8, !dbg !4304
  %and = and i64 %4, %5, !dbg !4305
  store i64 %and, ptr %t, align 8, !dbg !4301
  %6 = load ptr, ptr %in.addr, align 4, !dbg !4306
  %7 = load i32, ptr %i, align 4, !dbg !4307
  %arrayidx1 = getelementptr inbounds i64, ptr %6, i32 %7, !dbg !4306
  %8 = load i64, ptr %arrayidx1, align 8, !dbg !4306
  %9 = load i64, ptr %t, align 8, !dbg !4308
  %xor = xor i64 %8, %9, !dbg !4309
  %shr = lshr i64 %xor, 1, !dbg !4310
  %10 = load i64, ptr %t, align 8, !dbg !4311
  %mul = mul i64 %10, 9, !dbg !4312
  %xor2 = xor i64 %shr, %mul, !dbg !4313
  %11 = load ptr, ptr %acc.addr, align 4, !dbg !4314
  %12 = load i32, ptr %i, align 4, !dbg !4315
  %arrayidx3 = getelementptr inbounds i64, ptr %11, i32 %12, !dbg !4314
  %13 = load i64, ptr %arrayidx3, align 8, !dbg !4316
  %xor4 = xor i64 %13, %xor2, !dbg !4316
  store i64 %xor4, ptr %arrayidx3, align 8, !dbg !4316
  br label %for.inc, !dbg !4317

for.inc:                                          ; preds = %for.body
  %14 = load i32, ptr %i, align 4, !dbg !4318
  %inc = add nsw i32 %14, 1, !dbg !4318
  store i32 %inc, ptr %i, align 4, !dbg !4318
  br label %for.cond, !dbg !4319, !llvm.loop !4320

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4322
}

; Function Attrs: noinline nounwind optnone
define internal void @m_vec_mul_add_x(i32 noundef %m_vec_limbs, ptr noundef %in, ptr noundef %acc) #0 !dbg !4323 {
entry:
  %m_vec_limbs.addr = alloca i32, align 4
  %in.addr = alloca ptr, align 4
  %acc.addr = alloca ptr, align 4
  %mask_msb = alloca i64, align 8
  %i = alloca i32, align 4
  %t = alloca i64, align 8
  store i32 %m_vec_limbs, ptr %m_vec_limbs.addr, align 4
    #dbg_declare(ptr %m_vec_limbs.addr, !4324, !DIExpression(), !4325)
  store ptr %in, ptr %in.addr, align 4
    #dbg_declare(ptr %in.addr, !4326, !DIExpression(), !4327)
  store ptr %acc, ptr %acc.addr, align 4
    #dbg_declare(ptr %acc.addr, !4328, !DIExpression(), !4329)
    #dbg_declare(ptr %mask_msb, !4330, !DIExpression(), !4331)
  store i64 -8608480567731124088, ptr %mask_msb, align 8, !dbg !4331
    #dbg_declare(ptr %i, !4332, !DIExpression(), !4334)
  store i32 0, ptr %i, align 4, !dbg !4334
  br label %for.cond, !dbg !4335

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !4336
  %1 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4338
  %cmp = icmp slt i32 %0, %1, !dbg !4339
  br i1 %cmp, label %for.body, label %for.end, !dbg !4340

for.body:                                         ; preds = %for.cond
    #dbg_declare(ptr %t, !4341, !DIExpression(), !4343)
  %2 = load ptr, ptr %in.addr, align 4, !dbg !4344
  %3 = load i32, ptr %i, align 4, !dbg !4345
  %arrayidx = getelementptr inbounds i64, ptr %2, i32 %3, !dbg !4344
  %4 = load i64, ptr %arrayidx, align 8, !dbg !4344
  %5 = load i64, ptr %mask_msb, align 8, !dbg !4346
  %and = and i64 %4, %5, !dbg !4347
  store i64 %and, ptr %t, align 8, !dbg !4343
  %6 = load ptr, ptr %in.addr, align 4, !dbg !4348
  %7 = load i32, ptr %i, align 4, !dbg !4349
  %arrayidx1 = getelementptr inbounds i64, ptr %6, i32 %7, !dbg !4348
  %8 = load i64, ptr %arrayidx1, align 8, !dbg !4348
  %9 = load i64, ptr %t, align 8, !dbg !4350
  %xor = xor i64 %8, %9, !dbg !4351
  %shl = shl i64 %xor, 1, !dbg !4352
  %10 = load i64, ptr %t, align 8, !dbg !4353
  %shr = lshr i64 %10, 3, !dbg !4354
  %mul = mul i64 %shr, 3, !dbg !4355
  %xor2 = xor i64 %shl, %mul, !dbg !4356
  %11 = load ptr, ptr %acc.addr, align 4, !dbg !4357
  %12 = load i32, ptr %i, align 4, !dbg !4358
  %arrayidx3 = getelementptr inbounds i64, ptr %11, i32 %12, !dbg !4357
  %13 = load i64, ptr %arrayidx3, align 8, !dbg !4359
  %xor4 = xor i64 %13, %xor2, !dbg !4359
  store i64 %xor4, ptr %arrayidx3, align 8, !dbg !4359
  br label %for.inc, !dbg !4360

for.inc:                                          ; preds = %for.body
  %14 = load i32, ptr %i, align 4, !dbg !4361
  %inc = add nsw i32 %14, 1, !dbg !4361
  store i32 %inc, ptr %i, align 4, !dbg !4361
  br label %for.cond, !dbg !4362, !llvm.loop !4363

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4365
}

; Function Attrs: noinline nounwind optnone
define internal void @m_vec_copy(i32 noundef %m_vec_limbs, ptr noundef %in, ptr noundef %out) #0 !dbg !4366 {
entry:
  %m_vec_limbs.addr = alloca i32, align 4
  %in.addr = alloca ptr, align 4
  %out.addr = alloca ptr, align 4
  %i = alloca i32, align 4
  store i32 %m_vec_limbs, ptr %m_vec_limbs.addr, align 4
    #dbg_declare(ptr %m_vec_limbs.addr, !4367, !DIExpression(), !4368)
  store ptr %in, ptr %in.addr, align 4
    #dbg_declare(ptr %in.addr, !4369, !DIExpression(), !4370)
  store ptr %out, ptr %out.addr, align 4
    #dbg_declare(ptr %out.addr, !4371, !DIExpression(), !4372)
    #dbg_declare(ptr %i, !4373, !DIExpression(), !4375)
  store i32 0, ptr %i, align 4, !dbg !4375
  br label %for.cond, !dbg !4376

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !4377
  %1 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4379
  %cmp = icmp slt i32 %0, %1, !dbg !4380
  br i1 %cmp, label %for.body, label %for.end, !dbg !4381

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %in.addr, align 4, !dbg !4382
  %3 = load i32, ptr %i, align 4, !dbg !4384
  %arrayidx = getelementptr inbounds i64, ptr %2, i32 %3, !dbg !4382
  %4 = load i64, ptr %arrayidx, align 8, !dbg !4382
  %5 = load ptr, ptr %out.addr, align 4, !dbg !4385
  %6 = load i32, ptr %i, align 4, !dbg !4386
  %arrayidx1 = getelementptr inbounds i64, ptr %5, i32 %6, !dbg !4385
  store i64 %4, ptr %arrayidx1, align 8, !dbg !4387
  br label %for.inc, !dbg !4388

for.inc:                                          ; preds = %for.body
  %7 = load i32, ptr %i, align 4, !dbg !4389
  %inc = add nsw i32 %7, 1, !dbg !4389
  store i32 %inc, ptr %i, align 4, !dbg !4389
  br label %for.cond, !dbg !4390, !llvm.loop !4391

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4393
}

attributes #0 = { noinline nounwind optnone "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-thumb-mode" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { allocsize(0,1) "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-thumb-mode" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-thumb-mode" }
attributes #5 = { nobuiltin "no-builtins" }
attributes #6 = { nobuiltin allocsize(0,1) "no-builtins" }

!llvm.dbg.cu = !{!41, !44}
!llvm.ident = !{!73}
!llvm.module.flags = !{!74, !75, !76, !77, !78, !79}

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
!41 = distinct !DICompileUnit(language: DW_LANG_C11, file: !42, producer: "clang version 23.0.0git (https://github.com/llvm/llvm-project.git a07347f60997b971314563c7427aff5153677d95)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !43, splitDebugInlining: false, nameTableKind: None)
!42 = !DIFile(filename: "../<stdin>", directory: "")
!43 = !{!0, !7, !9, !14, !19, !24, !26, !31, !36}
!44 = distinct !DICompileUnit(language: DW_LANG_C11, file: !45, producer: "clang version 23.0.0git (https://github.com/llvm/llvm-project.git a07347f60997b971314563c7427aff5153677d95)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !46, globals: !58, splitDebugInlining: false, nameTableKind: None)
!45 = !DIFile(filename: "../../../src/<stdin>", directory: "")
!46 = !{!47, !48, !54, !57}
!47 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 32)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !50, line: 60, baseType: !51)
!50 = !DIFile(filename: "/usr/lib/arm-none-eabi/include/sys/_stdint.h", directory: "")
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !52, line: 105, baseType: !53)
!52 = !DIFile(filename: "/usr/lib/arm-none-eabi/include/machine/_default_types.h", directory: "")
!53 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !55, line: 214, baseType: !56)
!55 = !DIFile(filename: "/usr/lib/gcc/arm-none-eabi/13.2.1/include/stddef.h", directory: "")
!56 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 32)
!58 = !{!59, !67, !69, !71}
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(name: "even_nibbles", scope: !61, file: !62, line: 112, type: !66, isLocal: true, isDefinition: true)
!61 = distinct !DISubprogram(name: "transpose_16x16_nibbles", scope: !62, file: !62, line: 111, type: !63, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !44, retainedNodes: !65)
!62 = !DIFile(filename: "../../../src/mayo.c", directory: "")
!63 = !DISubroutineType(types: !64)
!64 = !{null, !48}
!65 = !{}
!66 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(name: "even_bytes", scope: !61, file: !62, line: 113, type: !66, isLocal: true, isDefinition: true)
!69 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression())
!70 = distinct !DIGlobalVariable(name: "even_2bytes", scope: !61, file: !62, line: 114, type: !66, isLocal: true, isDefinition: true)
!71 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression())
!72 = distinct !DIGlobalVariable(name: "even_half", scope: !61, file: !62, line: 115, type: !66, isLocal: true, isDefinition: true)
!73 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project.git a07347f60997b971314563c7427aff5153677d95)"}
!74 = !{i32 2, !"Debug Info Version", i32 3}
!75 = !{i32 1, !"wchar_size", i32 4}
!76 = !{i32 1, !"min_enum_size", i32 4}
!77 = !{i32 4, !"arm-eabi-fp-denormal", i32 1}
!78 = !{i32 8, !"arm-eabi-fp-number-model", i32 3}
!79 = !{i32 1, !"Code Model", i32 1}
!80 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 138, type: !81, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !41, retainedNodes: !65)
!81 = !DISubroutineType(types: !82)
!82 = !{!83}
!83 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!84 = !DILocalVariable(name: "params", scope: !80, file: !2, line: 140, type: !85)
!85 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 128, elements: !17)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 32)
!87 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !88)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "mayo_params_t", file: !89, line: 289, baseType: !90)
!89 = !DIFile(filename: "../../../include/mayo.h", directory: "")
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !89, line: 265, size: 736, elements: !91)
!91 = !{!92, !93, !94, !95, !96, !97, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !90, file: !89, line: 266, baseType: !83, size: 32)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !90, file: !89, line: 267, baseType: !83, size: 32, offset: 32)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "o", scope: !90, file: !89, line: 268, baseType: !83, size: 32, offset: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !90, file: !89, line: 269, baseType: !83, size: 32, offset: 96)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !90, file: !89, line: 270, baseType: !83, size: 32, offset: 128)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "f_tail", scope: !90, file: !89, line: 271, baseType: !98, size: 32, offset: 160)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 32)
!99 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "m_bytes", scope: !90, file: !89, line: 272, baseType: !83, size: 32, offset: 192)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "O_bytes", scope: !90, file: !89, line: 273, baseType: !83, size: 32, offset: 224)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "v_bytes", scope: !90, file: !89, line: 274, baseType: !83, size: 32, offset: 256)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "r_bytes", scope: !90, file: !89, line: 275, baseType: !83, size: 32, offset: 288)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "R_bytes", scope: !90, file: !89, line: 276, baseType: !83, size: 32, offset: 320)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "P1_bytes", scope: !90, file: !89, line: 277, baseType: !83, size: 32, offset: 352)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "P2_bytes", scope: !90, file: !89, line: 278, baseType: !83, size: 32, offset: 384)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "P3_bytes", scope: !90, file: !89, line: 279, baseType: !83, size: 32, offset: 416)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "csk_bytes", scope: !90, file: !89, line: 280, baseType: !83, size: 32, offset: 448)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "cpk_bytes", scope: !90, file: !89, line: 281, baseType: !83, size: 32, offset: 480)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "sig_bytes", scope: !90, file: !89, line: 282, baseType: !83, size: 32, offset: 512)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "salt_bytes", scope: !90, file: !89, line: 283, baseType: !83, size: 32, offset: 544)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "sk_seed_bytes", scope: !90, file: !89, line: 284, baseType: !83, size: 32, offset: 576)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "digest_bytes", scope: !90, file: !89, line: 285, baseType: !83, size: 32, offset: 608)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "pk_seed_bytes", scope: !90, file: !89, line: 286, baseType: !83, size: 32, offset: 640)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "m_vec_limbs", scope: !90, file: !89, line: 287, baseType: !83, size: 32, offset: 672)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !90, file: !89, line: 288, baseType: !117, size: 32, offset: 704)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 32)
!118 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!119 = !DILocation(line: 140, column: 26, scope: !80)
!120 = !DILocalVariable(name: "paramslen", scope: !80, file: !2, line: 141, type: !83)
!121 = !DILocation(line: 141, column: 9, scope: !80)
!122 = !DILocalVariable(name: "i", scope: !123, file: !2, line: 142, type: !83)
!123 = distinct !DILexicalBlock(scope: !80, file: !2, line: 142, column: 5)
!124 = !DILocation(line: 142, column: 14, scope: !123)
!125 = !DILocation(line: 142, column: 10, scope: !123)
!126 = !DILocation(line: 142, column: 21, scope: !127)
!127 = distinct !DILexicalBlock(scope: !123, file: !2, line: 142, column: 5)
!128 = !DILocation(line: 142, column: 25, scope: !127)
!129 = !DILocation(line: 142, column: 23, scope: !127)
!130 = !DILocation(line: 142, column: 5, scope: !123)
!131 = !DILocation(line: 143, column: 33, scope: !132)
!132 = distinct !DILexicalBlock(scope: !133, file: !2, line: 143, column: 13)
!133 = distinct !DILexicalBlock(scope: !127, file: !2, line: 142, column: 41)
!134 = !DILocation(line: 143, column: 26, scope: !132)
!135 = !DILocation(line: 143, column: 13, scope: !132)
!136 = !DILocation(line: 143, column: 37, scope: !132)
!137 = !DILocation(line: 144, column: 13, scope: !138)
!138 = distinct !DILexicalBlock(scope: !132, file: !2, line: 143, column: 49)
!139 = !DILocation(line: 146, column: 5, scope: !133)
!140 = !DILocation(line: 142, column: 36, scope: !127)
!141 = !DILocation(line: 142, column: 5, scope: !127)
!142 = distinct !{!142, !130, !143, !144}
!143 = !DILocation(line: 146, column: 5, scope: !123)
!144 = !{!"llvm.loop.mustprogress"}
!145 = !DILocation(line: 150, column: 1, scope: !80)
!146 = distinct !DISubprogram(name: "example_mayo", scope: !2, file: !2, line: 25, type: !147, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !41, retainedNodes: !65)
!147 = !DISubroutineType(types: !148)
!148 = !{!83, !86}
!149 = !DILocalVariable(name: "p", arg: 1, scope: !146, file: !2, line: 25, type: !86)
!150 = !DILocation(line: 25, column: 46, scope: !146)
!151 = !DILocalVariable(name: "msglen", scope: !146, file: !2, line: 27, type: !54)
!152 = !DILocation(line: 27, column: 12, scope: !146)
!153 = !DILocalVariable(name: "smlen", scope: !146, file: !2, line: 28, type: !54)
!154 = !DILocation(line: 28, column: 12, scope: !146)
!155 = !DILocation(line: 28, column: 36, scope: !146)
!156 = !DILocation(line: 28, column: 20, scope: !146)
!157 = !DILocation(line: 28, column: 41, scope: !146)
!158 = !DILocation(line: 28, column: 39, scope: !146)
!159 = !DILocalVariable(name: "pk", scope: !146, file: !2, line: 30, type: !57)
!160 = !DILocation(line: 30, column: 20, scope: !146)
!161 = !DILocation(line: 30, column: 49, scope: !146)
!162 = !DILocation(line: 30, column: 33, scope: !146)
!163 = !DILocation(line: 30, column: 26, scope: !146)
!164 = !DILocalVariable(name: "sk", scope: !146, file: !2, line: 31, type: !57)
!165 = !DILocation(line: 31, column: 20, scope: !146)
!166 = !DILocation(line: 31, column: 49, scope: !146)
!167 = !DILocation(line: 31, column: 33, scope: !146)
!168 = !DILocation(line: 31, column: 26, scope: !146)
!169 = !DILocalVariable(name: "epk", scope: !146, file: !2, line: 33, type: !48)
!170 = !DILocation(line: 33, column: 15, scope: !146)
!171 = !DILocation(line: 33, column: 21, scope: !146)
!172 = !DILocalVariable(name: "esk", scope: !146, file: !2, line: 34, type: !173)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 32)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "sk_t", file: !89, line: 294, baseType: !175)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sk_t", file: !89, line: 291, size: 7257920, elements: !176)
!176 = !{!177, !181}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !175, file: !89, line: 292, baseType: !178, size: 7238592)
!178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 7238592, elements: !179)
!179 = !{!180}
!180 = !DISubrange(count: 113103)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "O", scope: !175, file: !89, line: 293, baseType: !182, size: 19312, offset: 7238592)
!182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !183, size: 19312, elements: !185)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !50, line: 24, baseType: !184)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !52, line: 43, baseType: !47)
!185 = !{!186}
!186 = !DISubrange(count: 2414)
!187 = !DILocation(line: 34, column: 11, scope: !146)
!188 = !DILocation(line: 34, column: 17, scope: !146)
!189 = !DILocalVariable(name: "sig", scope: !146, file: !2, line: 36, type: !57)
!190 = !DILocation(line: 36, column: 20, scope: !146)
!191 = !DILocation(line: 36, column: 49, scope: !146)
!192 = !DILocation(line: 36, column: 33, scope: !146)
!193 = !DILocation(line: 36, column: 54, scope: !146)
!194 = !DILocation(line: 36, column: 52, scope: !146)
!195 = !DILocation(line: 36, column: 26, scope: !146)
!196 = !DILocalVariable(name: "msg", scope: !146, file: !2, line: 38, type: !197)
!197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 256, elements: !198)
!198 = !{!199}
!199 = !DISubrange(count: 32)
!200 = !DILocation(line: 38, column: 19, scope: !146)
!201 = !DILocalVariable(name: "msg2", scope: !146, file: !2, line: 39, type: !197)
!202 = !DILocation(line: 39, column: 19, scope: !146)
!203 = !DILocation(line: 41, column: 44, scope: !146)
!204 = !DILocation(line: 41, column: 33, scope: !146)
!205 = !DILocation(line: 41, column: 5, scope: !146)
!206 = !DILocation(line: 43, column: 5, scope: !146)
!207 = !DILocalVariable(name: "res", scope: !146, file: !2, line: 44, type: !83)
!208 = !DILocation(line: 44, column: 9, scope: !146)
!209 = !DILocation(line: 44, column: 28, scope: !146)
!210 = !DILocation(line: 44, column: 31, scope: !146)
!211 = !DILocation(line: 44, column: 35, scope: !146)
!212 = !DILocation(line: 44, column: 15, scope: !146)
!213 = !DILocation(line: 45, column: 9, scope: !214)
!214 = distinct !DILexicalBlock(scope: !146, file: !2, line: 45, column: 9)
!215 = !DILocation(line: 45, column: 13, scope: !214)
!216 = !DILocation(line: 46, column: 9, scope: !217)
!217 = distinct !DILexicalBlock(scope: !214, file: !2, line: 45, column: 25)
!218 = !DILocation(line: 47, column: 13, scope: !217)
!219 = !DILocation(line: 48, column: 9, scope: !217)
!220 = !DILocation(line: 50, column: 9, scope: !221)
!221 = distinct !DILexicalBlock(scope: !214, file: !2, line: 49, column: 12)
!222 = !DILocation(line: 53, column: 5, scope: !146)
!223 = !DILocation(line: 54, column: 26, scope: !146)
!224 = !DILocation(line: 54, column: 29, scope: !146)
!225 = !DILocation(line: 54, column: 33, scope: !146)
!226 = !DILocation(line: 54, column: 11, scope: !146)
!227 = !DILocation(line: 54, column: 9, scope: !146)
!228 = !DILocation(line: 55, column: 9, scope: !229)
!229 = distinct !DILexicalBlock(scope: !146, file: !2, line: 55, column: 9)
!230 = !DILocation(line: 55, column: 13, scope: !229)
!231 = !DILocation(line: 56, column: 9, scope: !232)
!232 = distinct !DILexicalBlock(scope: !229, file: !2, line: 55, column: 25)
!233 = !DILocation(line: 57, column: 13, scope: !232)
!234 = !DILocation(line: 58, column: 9, scope: !232)
!235 = !DILocation(line: 60, column: 9, scope: !236)
!236 = distinct !DILexicalBlock(scope: !229, file: !2, line: 59, column: 12)
!237 = !DILocation(line: 63, column: 5, scope: !146)
!238 = !DILocation(line: 64, column: 26, scope: !146)
!239 = !DILocation(line: 64, column: 29, scope: !146)
!240 = !DILocation(line: 64, column: 33, scope: !146)
!241 = !DILocation(line: 64, column: 11, scope: !146)
!242 = !DILocation(line: 64, column: 9, scope: !146)
!243 = !DILocation(line: 65, column: 9, scope: !244)
!244 = distinct !DILexicalBlock(scope: !146, file: !2, line: 65, column: 9)
!245 = !DILocation(line: 65, column: 13, scope: !244)
!246 = !DILocation(line: 66, column: 9, scope: !247)
!247 = distinct !DILexicalBlock(scope: !244, file: !2, line: 65, column: 25)
!248 = !DILocation(line: 67, column: 13, scope: !247)
!249 = !DILocation(line: 68, column: 9, scope: !247)
!250 = !DILocation(line: 70, column: 9, scope: !251)
!251 = distinct !DILexicalBlock(scope: !244, file: !2, line: 69, column: 12)
!252 = !DILocation(line: 73, column: 5, scope: !146)
!253 = !DILocation(line: 74, column: 21, scope: !146)
!254 = !DILocation(line: 74, column: 24, scope: !146)
!255 = !DILocation(line: 74, column: 37, scope: !146)
!256 = !DILocation(line: 74, column: 42, scope: !146)
!257 = !DILocation(line: 74, column: 50, scope: !146)
!258 = !DILocation(line: 74, column: 11, scope: !146)
!259 = !DILocation(line: 74, column: 9, scope: !146)
!260 = !DILocation(line: 75, column: 9, scope: !261)
!261 = distinct !DILexicalBlock(scope: !146, file: !2, line: 75, column: 9)
!262 = !DILocation(line: 75, column: 13, scope: !261)
!263 = !DILocation(line: 76, column: 9, scope: !264)
!264 = distinct !DILexicalBlock(scope: !261, file: !2, line: 75, column: 25)
!265 = !DILocation(line: 77, column: 13, scope: !264)
!266 = !DILocation(line: 78, column: 9, scope: !264)
!267 = !DILocation(line: 80, column: 9, scope: !268)
!268 = distinct !DILexicalBlock(scope: !261, file: !2, line: 79, column: 12)
!269 = !DILocation(line: 83, column: 5, scope: !146)
!270 = !DILocation(line: 84, column: 21, scope: !146)
!271 = !DILocation(line: 84, column: 24, scope: !146)
!272 = !DILocation(line: 84, column: 39, scope: !146)
!273 = !DILocation(line: 84, column: 44, scope: !146)
!274 = !DILocation(line: 84, column: 51, scope: !146)
!275 = !DILocation(line: 84, column: 11, scope: !146)
!276 = !DILocation(line: 84, column: 9, scope: !146)
!277 = !DILocation(line: 85, column: 9, scope: !278)
!278 = distinct !DILexicalBlock(scope: !146, file: !2, line: 85, column: 9)
!279 = !DILocation(line: 85, column: 13, scope: !278)
!280 = !DILocation(line: 85, column: 24, scope: !278)
!281 = !DILocation(line: 85, column: 34, scope: !278)
!282 = !DILocation(line: 85, column: 39, scope: !278)
!283 = !DILocation(line: 85, column: 45, scope: !278)
!284 = !DILocation(line: 85, column: 27, scope: !278)
!285 = !DILocation(line: 86, column: 9, scope: !286)
!286 = distinct !DILexicalBlock(scope: !278, file: !2, line: 85, column: 54)
!287 = !DILocation(line: 87, column: 13, scope: !286)
!288 = !DILocation(line: 88, column: 9, scope: !286)
!289 = !DILocation(line: 90, column: 13, scope: !290)
!290 = distinct !DILexicalBlock(scope: !278, file: !2, line: 89, column: 12)
!291 = !DILocation(line: 91, column: 9, scope: !290)
!292 = !DILocation(line: 94, column: 5, scope: !146)
!293 = !DILocation(line: 95, column: 23, scope: !146)
!294 = !DILocation(line: 95, column: 26, scope: !146)
!295 = !DILocation(line: 95, column: 31, scope: !146)
!296 = !DILocation(line: 95, column: 39, scope: !146)
!297 = !DILocation(line: 95, column: 44, scope: !146)
!298 = !DILocation(line: 95, column: 11, scope: !146)
!299 = !DILocation(line: 95, column: 9, scope: !146)
!300 = !DILocation(line: 96, column: 9, scope: !301)
!301 = distinct !DILexicalBlock(scope: !146, file: !2, line: 96, column: 9)
!302 = !DILocation(line: 96, column: 13, scope: !301)
!303 = !DILocation(line: 97, column: 9, scope: !304)
!304 = distinct !DILexicalBlock(scope: !301, file: !2, line: 96, column: 25)
!305 = !DILocation(line: 98, column: 13, scope: !304)
!306 = !DILocation(line: 99, column: 9, scope: !304)
!307 = !DILocation(line: 101, column: 13, scope: !308)
!308 = distinct !DILexicalBlock(scope: !301, file: !2, line: 100, column: 12)
!309 = !DILocation(line: 102, column: 9, scope: !308)
!310 = !DILocation(line: 96, column: 16, scope: !301)
!311 = !DILabel(scope: !146, name: "err", file: !2, line: 129, column: 1)
!312 = !DILocation(line: 129, column: 1, scope: !146)
!313 = !DILocation(line: 130, column: 10, scope: !146)
!314 = !DILocation(line: 130, column: 5, scope: !146)
!315 = !DILocation(line: 131, column: 10, scope: !146)
!316 = !DILocation(line: 131, column: 5, scope: !146)
!317 = !DILocation(line: 132, column: 22, scope: !146)
!318 = !DILocation(line: 132, column: 42, scope: !146)
!319 = !DILocation(line: 132, column: 26, scope: !146)
!320 = !DILocation(line: 132, column: 5, scope: !146)
!321 = !DILocation(line: 133, column: 22, scope: !146)
!322 = !DILocation(line: 133, column: 5, scope: !146)
!323 = !DILocation(line: 134, column: 10, scope: !146)
!324 = !DILocation(line: 134, column: 5, scope: !146)
!325 = !DILocation(line: 135, column: 12, scope: !146)
!326 = !DILocation(line: 135, column: 5, scope: !146)
!327 = distinct !DISubprogram(name: "mayo_keypair", scope: !62, file: !62, line: 298, type: !328, scopeLine: 298, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !65)
!328 = !DISubroutineType(types: !329)
!329 = !{!83, !330, !57, !57}
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 32)
!331 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !332)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "mayo_params_t", file: !89, line: 289, baseType: !333)
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !89, line: 265, size: 736, elements: !334)
!334 = !{!335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !333, file: !89, line: 266, baseType: !83, size: 32)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !333, file: !89, line: 267, baseType: !83, size: 32, offset: 32)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "o", scope: !333, file: !89, line: 268, baseType: !83, size: 32, offset: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !333, file: !89, line: 269, baseType: !83, size: 32, offset: 96)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !333, file: !89, line: 270, baseType: !83, size: 32, offset: 128)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "f_tail", scope: !333, file: !89, line: 271, baseType: !98, size: 32, offset: 160)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "m_bytes", scope: !333, file: !89, line: 272, baseType: !83, size: 32, offset: 192)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "O_bytes", scope: !333, file: !89, line: 273, baseType: !83, size: 32, offset: 224)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "v_bytes", scope: !333, file: !89, line: 274, baseType: !83, size: 32, offset: 256)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "r_bytes", scope: !333, file: !89, line: 275, baseType: !83, size: 32, offset: 288)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "R_bytes", scope: !333, file: !89, line: 276, baseType: !83, size: 32, offset: 320)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "P1_bytes", scope: !333, file: !89, line: 277, baseType: !83, size: 32, offset: 352)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "P2_bytes", scope: !333, file: !89, line: 278, baseType: !83, size: 32, offset: 384)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "P3_bytes", scope: !333, file: !89, line: 279, baseType: !83, size: 32, offset: 416)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "csk_bytes", scope: !333, file: !89, line: 280, baseType: !83, size: 32, offset: 448)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "cpk_bytes", scope: !333, file: !89, line: 281, baseType: !83, size: 32, offset: 480)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "sig_bytes", scope: !333, file: !89, line: 282, baseType: !83, size: 32, offset: 512)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "salt_bytes", scope: !333, file: !89, line: 283, baseType: !83, size: 32, offset: 544)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "sk_seed_bytes", scope: !333, file: !89, line: 284, baseType: !83, size: 32, offset: 576)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "digest_bytes", scope: !333, file: !89, line: 285, baseType: !83, size: 32, offset: 608)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "pk_seed_bytes", scope: !333, file: !89, line: 286, baseType: !83, size: 32, offset: 640)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "m_vec_limbs", scope: !333, file: !89, line: 287, baseType: !83, size: 32, offset: 672)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !333, file: !89, line: 288, baseType: !117, size: 32, offset: 704)
!358 = !DILocalVariable(name: "p", arg: 1, scope: !327, file: !62, line: 298, type: !330)
!359 = !DILocation(line: 298, column: 39, scope: !327)
!360 = !DILocalVariable(name: "pk", arg: 2, scope: !327, file: !62, line: 298, type: !57)
!361 = !DILocation(line: 298, column: 57, scope: !327)
!362 = !DILocalVariable(name: "sk", arg: 3, scope: !327, file: !62, line: 298, type: !57)
!363 = !DILocation(line: 298, column: 76, scope: !327)
!364 = !DILocalVariable(name: "ret", scope: !327, file: !62, line: 299, type: !83)
!365 = !DILocation(line: 299, column: 9, scope: !327)
!366 = !DILocation(line: 301, column: 32, scope: !327)
!367 = !DILocation(line: 301, column: 35, scope: !327)
!368 = !DILocation(line: 301, column: 39, scope: !327)
!369 = !DILocation(line: 301, column: 11, scope: !327)
!370 = !DILocation(line: 301, column: 9, scope: !327)
!371 = !DILocation(line: 302, column: 9, scope: !372)
!372 = distinct !DILexicalBlock(scope: !327, file: !62, line: 302, column: 9)
!373 = !DILocation(line: 302, column: 13, scope: !372)
!374 = !DILocation(line: 303, column: 9, scope: !375)
!375 = distinct !DILexicalBlock(scope: !372, file: !62, line: 302, column: 25)
!376 = !DILocation(line: 302, column: 16, scope: !372)
!377 = !DILabel(scope: !327, name: "err", file: !62, line: 306, column: 1)
!378 = !DILocation(line: 306, column: 1, scope: !327)
!379 = !DILocation(line: 307, column: 12, scope: !327)
!380 = !DILocation(line: 307, column: 5, scope: !327)
!381 = distinct !DISubprogram(name: "mayo_keypair_compact", scope: !62, file: !62, line: 538, type: !328, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !65)
!382 = !DILocalVariable(name: "p", arg: 1, scope: !381, file: !62, line: 538, type: !330)
!383 = !DILocation(line: 538, column: 47, scope: !381)
!384 = !DILocalVariable(name: "cpk", arg: 2, scope: !381, file: !62, line: 538, type: !57)
!385 = !DILocation(line: 538, column: 65, scope: !381)
!386 = !DILocalVariable(name: "csk", arg: 3, scope: !381, file: !62, line: 539, type: !57)
!387 = !DILocation(line: 539, column: 41, scope: !381)
!388 = !DILocalVariable(name: "ret", scope: !381, file: !62, line: 540, type: !83)
!389 = !DILocation(line: 540, column: 9, scope: !381)
!390 = !DILocalVariable(name: "seed_sk", scope: !381, file: !62, line: 541, type: !57)
!391 = !DILocation(line: 541, column: 20, scope: !381)
!392 = !DILocation(line: 541, column: 30, scope: !381)
!393 = !DILocalVariable(name: "S", scope: !381, file: !62, line: 542, type: !394)
!394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 6944, elements: !395)
!395 = !{!396}
!396 = !DISubrange(count: 868)
!397 = !DILocation(line: 542, column: 19, scope: !381)
!398 = !DILocalVariable(name: "P", scope: !381, file: !62, line: 543, type: !178)
!399 = !DILocation(line: 543, column: 14, scope: !381)
!400 = !DILocalVariable(name: "P3", scope: !381, file: !62, line: 544, type: !401)
!401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 166464, elements: !402)
!402 = !{!403}
!403 = !DISubrange(count: 2601)
!404 = !DILocation(line: 544, column: 14, scope: !381)
!405 = !DILocalVariable(name: "seed_pk", scope: !381, file: !62, line: 546, type: !57)
!406 = !DILocation(line: 546, column: 20, scope: !381)
!407 = !DILocalVariable(name: "O", scope: !381, file: !62, line: 547, type: !408)
!408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 19312, elements: !185)
!409 = !DILocation(line: 547, column: 19, scope: !381)
!410 = !DILocalVariable(name: "m_vec_limbs", scope: !381, file: !62, line: 549, type: !411)
!411 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !83)
!412 = !DILocation(line: 549, column: 15, scope: !381)
!413 = !DILocation(line: 549, column: 47, scope: !381)
!414 = !DILocation(line: 549, column: 29, scope: !381)
!415 = !DILocalVariable(name: "param_m", scope: !381, file: !62, line: 550, type: !411)
!416 = !DILocation(line: 550, column: 15, scope: !381)
!417 = !DILocation(line: 550, column: 33, scope: !381)
!418 = !DILocation(line: 550, column: 25, scope: !381)
!419 = !DILocalVariable(name: "param_v", scope: !381, file: !62, line: 551, type: !411)
!420 = !DILocation(line: 551, column: 15, scope: !381)
!421 = !DILocation(line: 551, column: 33, scope: !381)
!422 = !DILocation(line: 551, column: 25, scope: !381)
!423 = !DILocalVariable(name: "param_o", scope: !381, file: !62, line: 552, type: !411)
!424 = !DILocation(line: 552, column: 15, scope: !381)
!425 = !DILocation(line: 552, column: 33, scope: !381)
!426 = !DILocation(line: 552, column: 25, scope: !381)
!427 = !DILocalVariable(name: "param_O_bytes", scope: !381, file: !62, line: 553, type: !411)
!428 = !DILocation(line: 553, column: 15, scope: !381)
!429 = !DILocation(line: 553, column: 45, scope: !381)
!430 = !DILocation(line: 553, column: 31, scope: !381)
!431 = !DILocalVariable(name: "param_P1_limbs", scope: !381, file: !62, line: 554, type: !411)
!432 = !DILocation(line: 554, column: 15, scope: !381)
!433 = !DILocation(line: 554, column: 47, scope: !381)
!434 = !DILocation(line: 554, column: 32, scope: !381)
!435 = !DILocalVariable(name: "param_P3_limbs", scope: !381, file: !62, line: 555, type: !411)
!436 = !DILocation(line: 555, column: 15, scope: !381)
!437 = !DILocation(line: 555, column: 47, scope: !381)
!438 = !DILocation(line: 555, column: 32, scope: !381)
!439 = !DILocalVariable(name: "param_pk_seed_bytes", scope: !381, file: !62, line: 556, type: !411)
!440 = !DILocation(line: 556, column: 15, scope: !381)
!441 = !DILocation(line: 556, column: 57, scope: !381)
!442 = !DILocation(line: 556, column: 37, scope: !381)
!443 = !DILocalVariable(name: "param_sk_seed_bytes", scope: !381, file: !62, line: 557, type: !411)
!444 = !DILocation(line: 557, column: 15, scope: !381)
!445 = !DILocation(line: 557, column: 57, scope: !381)
!446 = !DILocation(line: 557, column: 37, scope: !381)
!447 = !DILocalVariable(name: "P1", scope: !381, file: !62, line: 559, type: !48)
!448 = !DILocation(line: 559, column: 15, scope: !381)
!449 = !DILocation(line: 559, column: 20, scope: !381)
!450 = !DILocalVariable(name: "P2", scope: !381, file: !62, line: 560, type: !48)
!451 = !DILocation(line: 560, column: 15, scope: !381)
!452 = !DILocation(line: 560, column: 20, scope: !381)
!453 = !DILocation(line: 560, column: 24, scope: !381)
!454 = !DILocation(line: 560, column: 22, scope: !381)
!455 = !DILocation(line: 566, column: 21, scope: !456)
!456 = distinct !DILexicalBlock(scope: !381, file: !62, line: 566, column: 9)
!457 = !DILocation(line: 566, column: 30, scope: !456)
!458 = !DILocation(line: 566, column: 9, scope: !456)
!459 = !DILocation(line: 566, column: 51, scope: !456)
!460 = !DILocation(line: 567, column: 13, scope: !461)
!461 = distinct !DILexicalBlock(scope: !456, file: !62, line: 566, column: 63)
!462 = !DILocation(line: 568, column: 9, scope: !461)
!463 = !DILocation(line: 573, column: 14, scope: !381)
!464 = !DILocation(line: 573, column: 17, scope: !381)
!465 = !DILocation(line: 573, column: 39, scope: !381)
!466 = !DILocation(line: 573, column: 37, scope: !381)
!467 = !DILocation(line: 573, column: 54, scope: !381)
!468 = !DILocation(line: 574, column: 14, scope: !381)
!469 = !DILocation(line: 573, column: 5, scope: !381)
!470 = !DILocation(line: 576, column: 15, scope: !381)
!471 = !DILocation(line: 576, column: 13, scope: !381)
!472 = !DILocation(line: 579, column: 12, scope: !381)
!473 = !DILocation(line: 579, column: 16, scope: !381)
!474 = !DILocation(line: 579, column: 14, scope: !381)
!475 = !DILocation(line: 579, column: 37, scope: !381)
!476 = !DILocation(line: 579, column: 40, scope: !381)
!477 = !DILocation(line: 579, column: 50, scope: !381)
!478 = !DILocation(line: 579, column: 48, scope: !381)
!479 = !DILocation(line: 579, column: 5, scope: !381)
!480 = !DILocation(line: 585, column: 18, scope: !381)
!481 = !DILocation(line: 585, column: 21, scope: !381)
!482 = !DILocation(line: 585, column: 24, scope: !381)
!483 = !DILocation(line: 585, column: 5, scope: !381)
!484 = !DILocation(line: 588, column: 16, scope: !381)
!485 = !DILocation(line: 588, column: 19, scope: !381)
!486 = !DILocation(line: 588, column: 23, scope: !381)
!487 = !DILocation(line: 588, column: 27, scope: !381)
!488 = !DILocation(line: 588, column: 30, scope: !381)
!489 = !DILocation(line: 588, column: 5, scope: !381)
!490 = !DILocation(line: 591, column: 12, scope: !381)
!491 = !DILocation(line: 591, column: 17, scope: !381)
!492 = !DILocation(line: 591, column: 26, scope: !381)
!493 = !DILocation(line: 591, column: 5, scope: !381)
!494 = !DILocalVariable(name: "P3_upper", scope: !381, file: !62, line: 593, type: !495)
!495 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 88128, elements: !496)
!496 = !{!497}
!497 = !DISubrange(count: 1377)
!498 = !DILocation(line: 593, column: 14, scope: !381)
!499 = !DILocation(line: 596, column: 13, scope: !381)
!500 = !DILocation(line: 596, column: 16, scope: !381)
!501 = !DILocation(line: 596, column: 20, scope: !381)
!502 = !DILocation(line: 596, column: 30, scope: !381)
!503 = !DILocation(line: 596, column: 5, scope: !381)
!504 = !DILocation(line: 597, column: 17, scope: !381)
!505 = !DILocation(line: 597, column: 27, scope: !381)
!506 = !DILocation(line: 597, column: 33, scope: !381)
!507 = !DILocation(line: 597, column: 31, scope: !381)
!508 = !DILocation(line: 597, column: 54, scope: !381)
!509 = !DILocation(line: 597, column: 69, scope: !381)
!510 = !DILocation(line: 597, column: 68, scope: !381)
!511 = !DILocation(line: 597, column: 82, scope: !381)
!512 = !DILocation(line: 597, column: 5, scope: !381)
!513 = !DILabel(scope: !381, name: "err", file: !62, line: 600, column: 5)
!514 = !DILocation(line: 600, column: 5, scope: !381)
!515 = !DILocation(line: 602, column: 23, scope: !381)
!516 = !DILocation(line: 602, column: 5, scope: !381)
!517 = !DILocation(line: 603, column: 23, scope: !381)
!518 = !DILocation(line: 603, column: 42, scope: !381)
!519 = !DILocation(line: 603, column: 27, scope: !381)
!520 = !DILocation(line: 603, column: 44, scope: !381)
!521 = !DILocation(line: 603, column: 5, scope: !381)
!522 = !DILocation(line: 604, column: 23, scope: !381)
!523 = !DILocation(line: 604, column: 5, scope: !381)
!524 = !DILocation(line: 605, column: 12, scope: !381)
!525 = !DILocation(line: 605, column: 5, scope: !381)
!526 = distinct !DISubprogram(name: "decode", scope: !62, file: !62, line: 20, type: !527, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !44, retainedNodes: !65)
!527 = !DISubroutineType(types: !528)
!528 = !{null, !98, !57, !83}
!529 = !DILocalVariable(name: "m", arg: 1, scope: !526, file: !62, line: 20, type: !98)
!530 = !DILocation(line: 20, column: 41, scope: !526)
!531 = !DILocalVariable(name: "mdec", arg: 2, scope: !526, file: !62, line: 20, type: !57)
!532 = !DILocation(line: 20, column: 59, scope: !526)
!533 = !DILocalVariable(name: "mdeclen", arg: 3, scope: !526, file: !62, line: 20, type: !83)
!534 = !DILocation(line: 20, column: 69, scope: !526)
!535 = !DILocalVariable(name: "i", scope: !526, file: !62, line: 21, type: !83)
!536 = !DILocation(line: 21, column: 9, scope: !526)
!537 = !DILocation(line: 22, column: 12, scope: !538)
!538 = distinct !DILexicalBlock(scope: !526, file: !62, line: 22, column: 5)
!539 = !DILocation(line: 22, column: 10, scope: !538)
!540 = !DILocation(line: 22, column: 17, scope: !541)
!541 = distinct !DILexicalBlock(scope: !538, file: !62, line: 22, column: 5)
!542 = !DILocation(line: 22, column: 21, scope: !541)
!543 = !DILocation(line: 22, column: 29, scope: !541)
!544 = !DILocation(line: 22, column: 19, scope: !541)
!545 = !DILocation(line: 22, column: 5, scope: !538)
!546 = !DILocation(line: 23, column: 19, scope: !547)
!547 = distinct !DILexicalBlock(scope: !541, file: !62, line: 22, column: 39)
!548 = !DILocation(line: 23, column: 21, scope: !547)
!549 = !DILocation(line: 23, column: 24, scope: !547)
!550 = !DILocation(line: 23, column: 14, scope: !547)
!551 = !DILocation(line: 23, column: 17, scope: !547)
!552 = !DILocation(line: 24, column: 19, scope: !547)
!553 = !DILocation(line: 24, column: 21, scope: !547)
!554 = !DILocation(line: 24, column: 24, scope: !547)
!555 = !DILocation(line: 24, column: 14, scope: !547)
!556 = !DILocation(line: 24, column: 17, scope: !547)
!557 = !DILocation(line: 25, column: 5, scope: !547)
!558 = !DILocation(line: 22, column: 34, scope: !541)
!559 = !DILocation(line: 22, column: 5, scope: !541)
!560 = distinct !{!560, !545, !561, !144}
!561 = !DILocation(line: 25, column: 5, scope: !538)
!562 = !DILocation(line: 27, column: 9, scope: !563)
!563 = distinct !DILexicalBlock(scope: !526, file: !62, line: 27, column: 9)
!564 = !DILocation(line: 27, column: 17, scope: !563)
!565 = !DILocation(line: 27, column: 21, scope: !563)
!566 = !DILocation(line: 28, column: 19, scope: !567)
!567 = distinct !DILexicalBlock(scope: !563, file: !62, line: 27, column: 27)
!568 = !DILocation(line: 28, column: 21, scope: !567)
!569 = !DILocation(line: 28, column: 24, scope: !567)
!570 = !DILocation(line: 28, column: 14, scope: !567)
!571 = !DILocation(line: 28, column: 17, scope: !567)
!572 = !DILocation(line: 29, column: 5, scope: !567)
!573 = !DILocation(line: 30, column: 1, scope: !526)
!574 = distinct !DISubprogram(name: "expand_P1_P2", scope: !62, file: !62, line: 280, type: !575, scopeLine: 280, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !44, retainedNodes: !65)
!575 = !DISubroutineType(types: !576)
!576 = !{null, !330, !48, !98}
!577 = !DILocalVariable(name: "p", arg: 1, scope: !574, file: !62, line: 280, type: !330)
!578 = !DILocation(line: 280, column: 47, scope: !574)
!579 = !DILocalVariable(name: "P", arg: 2, scope: !574, file: !62, line: 280, type: !48)
!580 = !DILocation(line: 280, column: 60, scope: !574)
!581 = !DILocalVariable(name: "seed_pk", arg: 3, scope: !574, file: !62, line: 280, type: !98)
!582 = !DILocation(line: 280, column: 84, scope: !574)
!583 = !DILocation(line: 284, column: 29, scope: !574)
!584 = !DILocation(line: 284, column: 47, scope: !574)
!585 = !DILocation(line: 284, column: 32, scope: !574)
!586 = !DILocation(line: 284, column: 67, scope: !574)
!587 = !DILocation(line: 284, column: 52, scope: !574)
!588 = !DILocation(line: 284, column: 50, scope: !574)
!589 = !DILocation(line: 284, column: 71, scope: !574)
!590 = !DILocation(line: 284, column: 100, scope: !574)
!591 = !DILocation(line: 284, column: 80, scope: !574)
!592 = !DILocation(line: 284, column: 5, scope: !574)
!593 = !DILocation(line: 285, column: 36, scope: !574)
!594 = !DILocation(line: 285, column: 39, scope: !574)
!595 = !DILocation(line: 285, column: 58, scope: !574)
!596 = !DILocation(line: 285, column: 43, scope: !574)
!597 = !DILocation(line: 285, column: 78, scope: !574)
!598 = !DILocation(line: 285, column: 63, scope: !574)
!599 = !DILocation(line: 285, column: 61, scope: !574)
!600 = !DILocation(line: 285, column: 100, scope: !574)
!601 = !DILocation(line: 285, column: 82, scope: !574)
!602 = !DILocation(line: 285, column: 81, scope: !574)
!603 = !DILocation(line: 285, column: 112, scope: !574)
!604 = !DILocation(line: 285, column: 104, scope: !574)
!605 = !DILocation(line: 285, column: 5, scope: !574)
!606 = !DILocation(line: 286, column: 1, scope: !574)
!607 = distinct !DISubprogram(name: "compute_P3", scope: !608, file: !608, line: 260, type: !609, scopeLine: 260, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !44, retainedNodes: !65)
!608 = !DIFile(filename: "../../../src/generic/generic_arithmetic.h", directory: "")
!609 = !DISubroutineType(types: !610)
!610 = !{null, !330, !611, !48, !98, !48}
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 32)
!612 = !DILocalVariable(name: "p", arg: 1, scope: !607, file: !608, line: 260, type: !330)
!613 = !DILocation(line: 260, column: 38, scope: !607)
!614 = !DILocalVariable(name: "P1", arg: 2, scope: !607, file: !608, line: 260, type: !611)
!615 = !DILocation(line: 260, column: 57, scope: !607)
!616 = !DILocalVariable(name: "P2", arg: 3, scope: !607, file: !608, line: 260, type: !48)
!617 = !DILocation(line: 260, column: 71, scope: !607)
!618 = !DILocalVariable(name: "O", arg: 4, scope: !607, file: !608, line: 260, type: !98)
!619 = !DILocation(line: 260, column: 96, scope: !607)
!620 = !DILocalVariable(name: "P3", arg: 5, scope: !607, file: !608, line: 260, type: !48)
!621 = !DILocation(line: 260, column: 109, scope: !607)
!622 = !DILocalVariable(name: "m_vec_limbs", scope: !607, file: !608, line: 262, type: !411)
!623 = !DILocation(line: 262, column: 15, scope: !607)
!624 = !DILocation(line: 262, column: 47, scope: !607)
!625 = !DILocation(line: 262, column: 29, scope: !607)
!626 = !DILocalVariable(name: "param_v", scope: !607, file: !608, line: 263, type: !411)
!627 = !DILocation(line: 263, column: 15, scope: !607)
!628 = !DILocation(line: 263, column: 33, scope: !607)
!629 = !DILocation(line: 263, column: 25, scope: !607)
!630 = !DILocalVariable(name: "param_o", scope: !607, file: !608, line: 264, type: !411)
!631 = !DILocation(line: 264, column: 15, scope: !607)
!632 = !DILocation(line: 264, column: 33, scope: !607)
!633 = !DILocation(line: 264, column: 25, scope: !607)
!634 = !DILocation(line: 267, column: 16, scope: !607)
!635 = !DILocation(line: 267, column: 19, scope: !607)
!636 = !DILocation(line: 267, column: 23, scope: !607)
!637 = !DILocation(line: 267, column: 26, scope: !607)
!638 = !DILocation(line: 267, column: 5, scope: !607)
!639 = !DILocation(line: 270, column: 31, scope: !607)
!640 = !DILocation(line: 270, column: 44, scope: !607)
!641 = !DILocation(line: 270, column: 47, scope: !607)
!642 = !DILocation(line: 270, column: 51, scope: !607)
!643 = !DILocation(line: 270, column: 55, scope: !607)
!644 = !DILocation(line: 270, column: 64, scope: !607)
!645 = !DILocation(line: 270, column: 73, scope: !607)
!646 = !DILocation(line: 270, column: 5, scope: !607)
!647 = !DILocation(line: 271, column: 1, scope: !607)
!648 = distinct !DISubprogram(name: "pack_m_vecs", scope: !62, file: !62, line: 272, type: !649, scopeLine: 272, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !44, retainedNodes: !65)
!649 = !DISubroutineType(types: !650)
!650 = !{null, !611, !57, !83, !83}
!651 = !DILocalVariable(name: "in", arg: 1, scope: !648, file: !62, line: 272, type: !611)
!652 = !DILocation(line: 272, column: 41, scope: !648)
!653 = !DILocalVariable(name: "out", arg: 2, scope: !648, file: !62, line: 272, type: !57)
!654 = !DILocation(line: 272, column: 60, scope: !648)
!655 = !DILocalVariable(name: "vecs", arg: 3, scope: !648, file: !62, line: 272, type: !83)
!656 = !DILocation(line: 272, column: 69, scope: !648)
!657 = !DILocalVariable(name: "m", arg: 4, scope: !648, file: !62, line: 272, type: !83)
!658 = !DILocation(line: 272, column: 79, scope: !648)
!659 = !DILocalVariable(name: "m_vec_limbs", scope: !648, file: !62, line: 273, type: !411)
!660 = !DILocation(line: 273, column: 15, scope: !648)
!661 = !DILocation(line: 273, column: 30, scope: !648)
!662 = !DILocation(line: 273, column: 32, scope: !648)
!663 = !DILocation(line: 273, column: 38, scope: !648)
!664 = !DILocalVariable(name: "_in", scope: !648, file: !62, line: 274, type: !57)
!665 = !DILocation(line: 274, column: 20, scope: !648)
!666 = !DILocation(line: 274, column: 44, scope: !648)
!667 = !DILocalVariable(name: "i", scope: !668, file: !62, line: 275, type: !83)
!668 = distinct !DILexicalBlock(scope: !648, file: !62, line: 275, column: 5)
!669 = !DILocation(line: 275, column: 14, scope: !668)
!670 = !DILocation(line: 275, column: 10, scope: !668)
!671 = !DILocation(line: 275, column: 21, scope: !672)
!672 = distinct !DILexicalBlock(scope: !668, file: !62, line: 275, column: 5)
!673 = !DILocation(line: 275, column: 25, scope: !672)
!674 = !DILocation(line: 275, column: 23, scope: !672)
!675 = !DILocation(line: 275, column: 5, scope: !668)
!676 = !DILocation(line: 277, column: 17, scope: !677)
!677 = distinct !DILexicalBlock(scope: !672, file: !62, line: 276, column: 5)
!678 = !DILocation(line: 277, column: 24, scope: !677)
!679 = !DILocation(line: 277, column: 26, scope: !677)
!680 = !DILocation(line: 277, column: 25, scope: !677)
!681 = !DILocation(line: 277, column: 27, scope: !677)
!682 = !DILocation(line: 277, column: 21, scope: !677)
!683 = !DILocation(line: 277, column: 32, scope: !677)
!684 = !DILocation(line: 277, column: 38, scope: !677)
!685 = !DILocation(line: 277, column: 40, scope: !677)
!686 = !DILocation(line: 277, column: 39, scope: !677)
!687 = !DILocation(line: 277, column: 51, scope: !677)
!688 = !DILocation(line: 277, column: 36, scope: !677)
!689 = !DILocation(line: 277, column: 70, scope: !677)
!690 = !DILocation(line: 277, column: 71, scope: !677)
!691 = !DILocation(line: 277, column: 9, scope: !677)
!692 = !DILocation(line: 278, column: 5, scope: !677)
!693 = !DILocation(line: 275, column: 32, scope: !672)
!694 = !DILocation(line: 275, column: 5, scope: !672)
!695 = distinct !{!695, !675, !696, !144}
!696 = !DILocation(line: 278, column: 5, scope: !668)
!697 = !DILocation(line: 279, column: 1, scope: !648)
!698 = distinct !DISubprogram(name: "P1_times_O", scope: !608, file: !608, line: 74, type: !699, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !44, retainedNodes: !65)
!699 = !DISubroutineType(types: !700)
!700 = !{null, !330, !611, !98, !48}
!701 = !DILocalVariable(name: "p", arg: 1, scope: !698, file: !608, line: 74, type: !330)
!702 = !DILocation(line: 74, column: 38, scope: !698)
!703 = !DILocalVariable(name: "P1", arg: 2, scope: !698, file: !608, line: 74, type: !611)
!704 = !DILocation(line: 74, column: 57, scope: !698)
!705 = !DILocalVariable(name: "O", arg: 3, scope: !698, file: !608, line: 74, type: !98)
!706 = !DILocation(line: 74, column: 82, scope: !698)
!707 = !DILocalVariable(name: "acc", arg: 4, scope: !698, file: !608, line: 74, type: !48)
!708 = !DILocation(line: 74, column: 95, scope: !698)
!709 = !DILocation(line: 78, column: 60, scope: !698)
!710 = !DILocation(line: 78, column: 42, scope: !698)
!711 = !DILocation(line: 78, column: 64, scope: !698)
!712 = !DILocation(line: 78, column: 68, scope: !698)
!713 = !DILocation(line: 78, column: 71, scope: !698)
!714 = !DILocation(line: 78, column: 84, scope: !698)
!715 = !DILocation(line: 78, column: 76, scope: !698)
!716 = !DILocation(line: 78, column: 96, scope: !698)
!717 = !DILocation(line: 78, column: 88, scope: !698)
!718 = !DILocation(line: 78, column: 108, scope: !698)
!719 = !DILocation(line: 78, column: 100, scope: !698)
!720 = !DILocation(line: 78, column: 5, scope: !698)
!721 = !DILocation(line: 79, column: 1, scope: !698)
!722 = distinct !DISubprogram(name: "mul_add_mat_trans_x_m_mat", scope: !608, file: !608, line: 47, type: !723, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !44, retainedNodes: !65)
!723 = !DISubroutineType(types: !724)
!724 = !{null, !411, !98, !611, !48, !411, !411, !411}
!725 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !722, file: !608, line: 47, type: !411)
!726 = !DILocation(line: 47, column: 42, scope: !722)
!727 = !DILocalVariable(name: "mat", arg: 2, scope: !722, file: !608, line: 47, type: !98)
!728 = !DILocation(line: 47, column: 76, scope: !722)
!729 = !DILocalVariable(name: "bs_mat", arg: 3, scope: !722, file: !608, line: 47, type: !611)
!730 = !DILocation(line: 47, column: 97, scope: !722)
!731 = !DILocalVariable(name: "acc", arg: 4, scope: !722, file: !608, line: 47, type: !48)
!732 = !DILocation(line: 47, column: 115, scope: !722)
!733 = !DILocalVariable(name: "mat_rows", arg: 5, scope: !722, file: !608, line: 48, type: !411)
!734 = !DILocation(line: 48, column: 42, scope: !722)
!735 = !DILocalVariable(name: "mat_cols", arg: 6, scope: !722, file: !608, line: 48, type: !411)
!736 = !DILocation(line: 48, column: 62, scope: !722)
!737 = !DILocalVariable(name: "bs_mat_cols", arg: 7, scope: !722, file: !608, line: 48, type: !411)
!738 = !DILocation(line: 48, column: 82, scope: !722)
!739 = !DILocalVariable(name: "r", scope: !740, file: !608, line: 50, type: !83)
!740 = distinct !DILexicalBlock(scope: !722, file: !608, line: 50, column: 5)
!741 = !DILocation(line: 50, column: 14, scope: !740)
!742 = !DILocation(line: 50, column: 10, scope: !740)
!743 = !DILocation(line: 50, column: 21, scope: !744)
!744 = distinct !DILexicalBlock(scope: !740, file: !608, line: 50, column: 5)
!745 = !DILocation(line: 50, column: 25, scope: !744)
!746 = !DILocation(line: 50, column: 23, scope: !744)
!747 = !DILocation(line: 50, column: 5, scope: !740)
!748 = !DILocalVariable(name: "c", scope: !749, file: !608, line: 51, type: !83)
!749 = distinct !DILexicalBlock(scope: !750, file: !608, line: 51, column: 9)
!750 = distinct !DILexicalBlock(scope: !744, file: !608, line: 50, column: 40)
!751 = !DILocation(line: 51, column: 18, scope: !749)
!752 = !DILocation(line: 51, column: 14, scope: !749)
!753 = !DILocation(line: 51, column: 25, scope: !754)
!754 = distinct !DILexicalBlock(scope: !749, file: !608, line: 51, column: 9)
!755 = !DILocation(line: 51, column: 29, scope: !754)
!756 = !DILocation(line: 51, column: 27, scope: !754)
!757 = !DILocation(line: 51, column: 9, scope: !749)
!758 = !DILocalVariable(name: "k", scope: !759, file: !608, line: 52, type: !83)
!759 = distinct !DILexicalBlock(scope: !760, file: !608, line: 52, column: 13)
!760 = distinct !DILexicalBlock(scope: !754, file: !608, line: 51, column: 44)
!761 = !DILocation(line: 52, column: 22, scope: !759)
!762 = !DILocation(line: 52, column: 18, scope: !759)
!763 = !DILocation(line: 52, column: 29, scope: !764)
!764 = distinct !DILexicalBlock(scope: !759, file: !608, line: 52, column: 13)
!765 = !DILocation(line: 52, column: 33, scope: !764)
!766 = !DILocation(line: 52, column: 31, scope: !764)
!767 = !DILocation(line: 52, column: 13, scope: !759)
!768 = !DILocation(line: 53, column: 31, scope: !769)
!769 = distinct !DILexicalBlock(scope: !764, file: !608, line: 52, column: 54)
!770 = !DILocation(line: 53, column: 44, scope: !769)
!771 = !DILocation(line: 53, column: 53, scope: !769)
!772 = !DILocation(line: 53, column: 68, scope: !769)
!773 = !DILocation(line: 53, column: 72, scope: !769)
!774 = !DILocation(line: 53, column: 70, scope: !769)
!775 = !DILocation(line: 53, column: 86, scope: !769)
!776 = !DILocation(line: 53, column: 84, scope: !769)
!777 = !DILocation(line: 53, column: 65, scope: !769)
!778 = !DILocation(line: 53, column: 51, scope: !769)
!779 = !DILocation(line: 53, column: 90, scope: !769)
!780 = !DILocation(line: 53, column: 94, scope: !769)
!781 = !DILocation(line: 53, column: 98, scope: !769)
!782 = !DILocation(line: 53, column: 96, scope: !769)
!783 = !DILocation(line: 53, column: 109, scope: !769)
!784 = !DILocation(line: 53, column: 107, scope: !769)
!785 = !DILocation(line: 53, column: 113, scope: !769)
!786 = !DILocation(line: 53, column: 119, scope: !769)
!787 = !DILocation(line: 53, column: 134, scope: !769)
!788 = !DILocation(line: 53, column: 138, scope: !769)
!789 = !DILocation(line: 53, column: 136, scope: !769)
!790 = !DILocation(line: 53, column: 152, scope: !769)
!791 = !DILocation(line: 53, column: 150, scope: !769)
!792 = !DILocation(line: 53, column: 131, scope: !769)
!793 = !DILocation(line: 53, column: 117, scope: !769)
!794 = !DILocation(line: 53, column: 17, scope: !769)
!795 = !DILocation(line: 54, column: 13, scope: !769)
!796 = !DILocation(line: 52, column: 48, scope: !764)
!797 = !DILocation(line: 52, column: 13, scope: !764)
!798 = distinct !{!798, !767, !799, !144}
!799 = !DILocation(line: 54, column: 13, scope: !759)
!800 = !DILocation(line: 55, column: 9, scope: !760)
!801 = !DILocation(line: 51, column: 40, scope: !754)
!802 = !DILocation(line: 51, column: 9, scope: !754)
!803 = distinct !{!803, !757, !804, !144}
!804 = !DILocation(line: 55, column: 9, scope: !749)
!805 = !DILocation(line: 56, column: 5, scope: !750)
!806 = !DILocation(line: 50, column: 36, scope: !744)
!807 = !DILocation(line: 50, column: 5, scope: !744)
!808 = distinct !{!808, !747, !809, !144}
!809 = !DILocation(line: 56, column: 5, scope: !740)
!810 = !DILocation(line: 57, column: 1, scope: !722)
!811 = distinct !DISubprogram(name: "m_vec_mul_add", scope: !812, file: !812, line: 24, type: !813, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !44, retainedNodes: !65)
!812 = !DIFile(filename: "../../../src/generic/arithmetic_dynamic.h", directory: "")
!813 = !DISubroutineType(types: !814)
!814 = !{null, !83, !611, !47, !48}
!815 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !811, file: !812, line: 24, type: !83)
!816 = !DILocation(line: 24, column: 24, scope: !811)
!817 = !DILocalVariable(name: "in", arg: 2, scope: !811, file: !812, line: 24, type: !611)
!818 = !DILocation(line: 24, column: 53, scope: !811)
!819 = !DILocalVariable(name: "a", arg: 3, scope: !811, file: !812, line: 24, type: !47)
!820 = !DILocation(line: 24, column: 71, scope: !811)
!821 = !DILocalVariable(name: "acc", arg: 4, scope: !811, file: !812, line: 24, type: !48)
!822 = !DILocation(line: 24, column: 84, scope: !811)
!823 = !DILocalVariable(name: "i", scope: !824, file: !812, line: 25, type: !83)
!824 = distinct !DILexicalBlock(scope: !811, file: !812, line: 25, column: 5)
!825 = !DILocation(line: 25, column: 13, scope: !824)
!826 = !DILocation(line: 25, column: 9, scope: !824)
!827 = !DILocation(line: 25, column: 18, scope: !828)
!828 = distinct !DILexicalBlock(scope: !824, file: !812, line: 25, column: 5)
!829 = !DILocation(line: 25, column: 22, scope: !828)
!830 = !DILocation(line: 25, column: 20, scope: !828)
!831 = !DILocation(line: 25, column: 5, scope: !824)
!832 = !DILocation(line: 26, column: 33, scope: !833)
!833 = distinct !DILexicalBlock(scope: !828, file: !812, line: 25, column: 39)
!834 = !DILocation(line: 26, column: 36, scope: !833)
!835 = !DILocation(line: 26, column: 40, scope: !833)
!836 = !DILocation(line: 26, column: 19, scope: !833)
!837 = !DILocation(line: 26, column: 9, scope: !833)
!838 = !DILocation(line: 26, column: 13, scope: !833)
!839 = !DILocation(line: 26, column: 16, scope: !833)
!840 = !DILocation(line: 27, column: 5, scope: !833)
!841 = !DILocation(line: 25, column: 36, scope: !828)
!842 = !DILocation(line: 25, column: 5, scope: !828)
!843 = distinct !{!843, !831, !844, !144}
!844 = !DILocation(line: 27, column: 5, scope: !824)
!845 = !DILocation(line: 28, column: 1, scope: !811)
!846 = distinct !DISubprogram(name: "gf16v_mul_u64", scope: !847, file: !847, line: 96, type: !848, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !44, retainedNodes: !65)
!847 = !DIFile(filename: "../../../src/simple_arithmetic.h", directory: "")
!848 = !DISubroutineType(types: !849)
!849 = !{!49, !49, !183}
!850 = !DILocalVariable(name: "a", arg: 1, scope: !846, file: !847, line: 96, type: !49)
!851 = !DILocation(line: 96, column: 48, scope: !846)
!852 = !DILocalVariable(name: "b", arg: 2, scope: !846, file: !847, line: 96, type: !183)
!853 = !DILocation(line: 96, column: 59, scope: !846)
!854 = !DILocalVariable(name: "mask_msb", scope: !846, file: !847, line: 97, type: !49)
!855 = !DILocation(line: 97, column: 14, scope: !846)
!856 = !DILocalVariable(name: "a_msb", scope: !846, file: !847, line: 98, type: !49)
!857 = !DILocation(line: 98, column: 14, scope: !846)
!858 = !DILocalVariable(name: "a64", scope: !846, file: !847, line: 99, type: !49)
!859 = !DILocation(line: 99, column: 14, scope: !846)
!860 = !DILocation(line: 99, column: 20, scope: !846)
!861 = !DILocalVariable(name: "b32", scope: !846, file: !847, line: 101, type: !49)
!862 = !DILocation(line: 101, column: 14, scope: !846)
!863 = !DILocation(line: 101, column: 20, scope: !846)
!864 = !DILocation(line: 101, column: 24, scope: !846)
!865 = !DILocation(line: 101, column: 22, scope: !846)
!866 = !DILocalVariable(name: "r64", scope: !846, file: !847, line: 105, type: !49)
!867 = !DILocation(line: 105, column: 14, scope: !846)
!868 = !DILocation(line: 105, column: 20, scope: !846)
!869 = !DILocation(line: 105, column: 27, scope: !846)
!870 = !DILocation(line: 105, column: 31, scope: !846)
!871 = !DILocation(line: 105, column: 24, scope: !846)
!872 = !DILocation(line: 107, column: 13, scope: !846)
!873 = !DILocation(line: 107, column: 19, scope: !846)
!874 = !DILocation(line: 107, column: 17, scope: !846)
!875 = !DILocation(line: 107, column: 11, scope: !846)
!876 = !DILocation(line: 108, column: 12, scope: !846)
!877 = !DILocation(line: 108, column: 9, scope: !846)
!878 = !DILocation(line: 109, column: 12, scope: !846)
!879 = !DILocation(line: 109, column: 16, scope: !846)
!880 = !DILocation(line: 109, column: 26, scope: !846)
!881 = !DILocation(line: 109, column: 32, scope: !846)
!882 = !DILocation(line: 109, column: 38, scope: !846)
!883 = !DILocation(line: 109, column: 22, scope: !846)
!884 = !DILocation(line: 109, column: 9, scope: !846)
!885 = !DILocation(line: 110, column: 13, scope: !846)
!886 = !DILocation(line: 110, column: 22, scope: !846)
!887 = !DILocation(line: 110, column: 26, scope: !846)
!888 = !DILocation(line: 110, column: 32, scope: !846)
!889 = !DILocation(line: 110, column: 18, scope: !846)
!890 = !DILocation(line: 110, column: 9, scope: !846)
!891 = !DILocation(line: 112, column: 13, scope: !846)
!892 = !DILocation(line: 112, column: 19, scope: !846)
!893 = !DILocation(line: 112, column: 17, scope: !846)
!894 = !DILocation(line: 112, column: 11, scope: !846)
!895 = !DILocation(line: 113, column: 12, scope: !846)
!896 = !DILocation(line: 113, column: 9, scope: !846)
!897 = !DILocation(line: 114, column: 12, scope: !846)
!898 = !DILocation(line: 114, column: 16, scope: !846)
!899 = !DILocation(line: 114, column: 26, scope: !846)
!900 = !DILocation(line: 114, column: 32, scope: !846)
!901 = !DILocation(line: 114, column: 38, scope: !846)
!902 = !DILocation(line: 114, column: 22, scope: !846)
!903 = !DILocation(line: 114, column: 9, scope: !846)
!904 = !DILocation(line: 115, column: 13, scope: !846)
!905 = !DILocation(line: 115, column: 22, scope: !846)
!906 = !DILocation(line: 115, column: 26, scope: !846)
!907 = !DILocation(line: 115, column: 32, scope: !846)
!908 = !DILocation(line: 115, column: 18, scope: !846)
!909 = !DILocation(line: 115, column: 9, scope: !846)
!910 = !DILocation(line: 117, column: 13, scope: !846)
!911 = !DILocation(line: 117, column: 19, scope: !846)
!912 = !DILocation(line: 117, column: 17, scope: !846)
!913 = !DILocation(line: 117, column: 11, scope: !846)
!914 = !DILocation(line: 118, column: 12, scope: !846)
!915 = !DILocation(line: 118, column: 9, scope: !846)
!916 = !DILocation(line: 119, column: 12, scope: !846)
!917 = !DILocation(line: 119, column: 16, scope: !846)
!918 = !DILocation(line: 119, column: 26, scope: !846)
!919 = !DILocation(line: 119, column: 32, scope: !846)
!920 = !DILocation(line: 119, column: 38, scope: !846)
!921 = !DILocation(line: 119, column: 22, scope: !846)
!922 = !DILocation(line: 119, column: 9, scope: !846)
!923 = !DILocation(line: 120, column: 13, scope: !846)
!924 = !DILocation(line: 120, column: 22, scope: !846)
!925 = !DILocation(line: 120, column: 26, scope: !846)
!926 = !DILocation(line: 120, column: 32, scope: !846)
!927 = !DILocation(line: 120, column: 18, scope: !846)
!928 = !DILocation(line: 120, column: 9, scope: !846)
!929 = !DILocation(line: 122, column: 12, scope: !846)
!930 = !DILocation(line: 122, column: 5, scope: !846)
!931 = distinct !DISubprogram(name: "mul_add_m_upper_triangular_mat_x_mat", scope: !608, file: !608, line: 16, type: !932, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !44, retainedNodes: !65)
!932 = !DISubroutineType(types: !933)
!933 = !{null, !411, !611, !98, !48, !411, !411, !411, !411}
!934 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !931, file: !608, line: 16, type: !411)
!935 = !DILocation(line: 16, column: 53, scope: !931)
!936 = !DILocalVariable(name: "bs_mat", arg: 2, scope: !931, file: !608, line: 16, type: !611)
!937 = !DILocation(line: 16, column: 82, scope: !931)
!938 = !DILocalVariable(name: "mat", arg: 3, scope: !931, file: !608, line: 16, type: !98)
!939 = !DILocation(line: 16, column: 111, scope: !931)
!940 = !DILocalVariable(name: "acc", arg: 4, scope: !931, file: !608, line: 16, type: !48)
!941 = !DILocation(line: 16, column: 126, scope: !931)
!942 = !DILocalVariable(name: "bs_mat_rows", arg: 5, scope: !931, file: !608, line: 17, type: !411)
!943 = !DILocation(line: 17, column: 53, scope: !931)
!944 = !DILocalVariable(name: "bs_mat_cols", arg: 6, scope: !931, file: !608, line: 17, type: !411)
!945 = !DILocation(line: 17, column: 76, scope: !931)
!946 = !DILocalVariable(name: "mat_cols", arg: 7, scope: !931, file: !608, line: 17, type: !411)
!947 = !DILocation(line: 17, column: 99, scope: !931)
!948 = !DILocalVariable(name: "triangular", arg: 8, scope: !931, file: !608, line: 17, type: !411)
!949 = !DILocation(line: 17, column: 119, scope: !931)
!950 = !DILocalVariable(name: "bs_mat_entries_used", scope: !931, file: !608, line: 19, type: !83)
!951 = !DILocation(line: 19, column: 9, scope: !931)
!952 = !DILocalVariable(name: "r", scope: !953, file: !608, line: 20, type: !83)
!953 = distinct !DILexicalBlock(scope: !931, file: !608, line: 20, column: 5)
!954 = !DILocation(line: 20, column: 14, scope: !953)
!955 = !DILocation(line: 20, column: 10, scope: !953)
!956 = !DILocation(line: 20, column: 21, scope: !957)
!957 = distinct !DILexicalBlock(scope: !953, file: !608, line: 20, column: 5)
!958 = !DILocation(line: 20, column: 25, scope: !957)
!959 = !DILocation(line: 20, column: 23, scope: !957)
!960 = !DILocation(line: 20, column: 5, scope: !953)
!961 = !DILocalVariable(name: "c", scope: !962, file: !608, line: 21, type: !83)
!962 = distinct !DILexicalBlock(scope: !963, file: !608, line: 21, column: 9)
!963 = distinct !DILexicalBlock(scope: !957, file: !608, line: 20, column: 43)
!964 = !DILocation(line: 21, column: 18, scope: !962)
!965 = !DILocation(line: 21, column: 22, scope: !962)
!966 = !DILocation(line: 21, column: 35, scope: !962)
!967 = !DILocation(line: 21, column: 33, scope: !962)
!968 = !DILocation(line: 21, column: 14, scope: !962)
!969 = !DILocation(line: 21, column: 38, scope: !970)
!970 = distinct !DILexicalBlock(scope: !962, file: !608, line: 21, column: 9)
!971 = !DILocation(line: 21, column: 42, scope: !970)
!972 = !DILocation(line: 21, column: 40, scope: !970)
!973 = !DILocation(line: 21, column: 9, scope: !962)
!974 = !DILocalVariable(name: "k", scope: !975, file: !608, line: 22, type: !83)
!975 = distinct !DILexicalBlock(scope: !976, file: !608, line: 22, column: 13)
!976 = distinct !DILexicalBlock(scope: !970, file: !608, line: 21, column: 60)
!977 = !DILocation(line: 22, column: 22, scope: !975)
!978 = !DILocation(line: 22, column: 18, scope: !975)
!979 = !DILocation(line: 22, column: 29, scope: !980)
!980 = distinct !DILexicalBlock(scope: !975, file: !608, line: 22, column: 13)
!981 = !DILocation(line: 22, column: 33, scope: !980)
!982 = !DILocation(line: 22, column: 31, scope: !980)
!983 = !DILocation(line: 22, column: 13, scope: !975)
!984 = !DILocation(line: 23, column: 31, scope: !985)
!985 = distinct !DILexicalBlock(scope: !980, file: !608, line: 22, column: 51)
!986 = !DILocation(line: 23, column: 44, scope: !985)
!987 = !DILocation(line: 23, column: 53, scope: !985)
!988 = !DILocation(line: 23, column: 67, scope: !985)
!989 = !DILocation(line: 23, column: 65, scope: !985)
!990 = !DILocation(line: 23, column: 51, scope: !985)
!991 = !DILocation(line: 23, column: 88, scope: !985)
!992 = !DILocation(line: 23, column: 92, scope: !985)
!993 = !DILocation(line: 23, column: 96, scope: !985)
!994 = !DILocation(line: 23, column: 94, scope: !985)
!995 = !DILocation(line: 23, column: 107, scope: !985)
!996 = !DILocation(line: 23, column: 105, scope: !985)
!997 = !DILocation(line: 23, column: 111, scope: !985)
!998 = !DILocation(line: 23, column: 117, scope: !985)
!999 = !DILocation(line: 23, column: 132, scope: !985)
!1000 = !DILocation(line: 23, column: 136, scope: !985)
!1001 = !DILocation(line: 23, column: 134, scope: !985)
!1002 = !DILocation(line: 23, column: 147, scope: !985)
!1003 = !DILocation(line: 23, column: 145, scope: !985)
!1004 = !DILocation(line: 23, column: 129, scope: !985)
!1005 = !DILocation(line: 23, column: 115, scope: !985)
!1006 = !DILocation(line: 23, column: 17, scope: !985)
!1007 = !DILocation(line: 24, column: 13, scope: !985)
!1008 = !DILocation(line: 22, column: 45, scope: !980)
!1009 = !DILocation(line: 22, column: 13, scope: !980)
!1010 = distinct !{!1010, !983, !1011, !144}
!1011 = !DILocation(line: 24, column: 13, scope: !975)
!1012 = !DILocation(line: 25, column: 33, scope: !976)
!1013 = !DILocation(line: 26, column: 9, scope: !976)
!1014 = !DILocation(line: 21, column: 56, scope: !970)
!1015 = !DILocation(line: 21, column: 9, scope: !970)
!1016 = distinct !{!1016, !973, !1017, !144}
!1017 = !DILocation(line: 26, column: 9, scope: !962)
!1018 = !DILocation(line: 27, column: 5, scope: !963)
!1019 = !DILocation(line: 20, column: 39, scope: !957)
!1020 = !DILocation(line: 20, column: 5, scope: !957)
!1021 = distinct !{!1021, !960, !1022, !144}
!1022 = !DILocation(line: 27, column: 5, scope: !953)
!1023 = !DILocation(line: 28, column: 1, scope: !931)
!1024 = distinct !DISubprogram(name: "unpack_m_vecs", scope: !62, file: !62, line: 262, type: !1025, scopeLine: 262, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !44, retainedNodes: !65)
!1025 = !DISubroutineType(types: !1026)
!1026 = !{null, !98, !48, !83, !83}
!1027 = !DILocalVariable(name: "in", arg: 1, scope: !1024, file: !62, line: 262, type: !98)
!1028 = !DILocation(line: 262, column: 48, scope: !1024)
!1029 = !DILocalVariable(name: "out", arg: 2, scope: !1024, file: !62, line: 262, type: !48)
!1030 = !DILocation(line: 262, column: 62, scope: !1024)
!1031 = !DILocalVariable(name: "vecs", arg: 3, scope: !1024, file: !62, line: 262, type: !83)
!1032 = !DILocation(line: 262, column: 71, scope: !1024)
!1033 = !DILocalVariable(name: "m", arg: 4, scope: !1024, file: !62, line: 262, type: !83)
!1034 = !DILocation(line: 262, column: 81, scope: !1024)
!1035 = !DILocalVariable(name: "m_vec_limbs", scope: !1024, file: !62, line: 263, type: !411)
!1036 = !DILocation(line: 263, column: 15, scope: !1024)
!1037 = !DILocation(line: 263, column: 30, scope: !1024)
!1038 = !DILocation(line: 263, column: 32, scope: !1024)
!1039 = !DILocation(line: 263, column: 38, scope: !1024)
!1040 = !DILocalVariable(name: "_out", scope: !1024, file: !62, line: 264, type: !57)
!1041 = !DILocation(line: 264, column: 20, scope: !1024)
!1042 = !DILocation(line: 264, column: 45, scope: !1024)
!1043 = !DILocalVariable(name: "tmp", scope: !1024, file: !62, line: 265, type: !1044)
!1044 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 576, elements: !1045)
!1045 = !{!1046}
!1046 = !DISubrange(count: 9)
!1047 = !DILocation(line: 265, column: 14, scope: !1024)
!1048 = !DILocalVariable(name: "i", scope: !1049, file: !62, line: 266, type: !83)
!1049 = distinct !DILexicalBlock(scope: !1024, file: !62, line: 266, column: 5)
!1050 = !DILocation(line: 266, column: 14, scope: !1049)
!1051 = !DILocation(line: 266, column: 18, scope: !1049)
!1052 = !DILocation(line: 266, column: 22, scope: !1049)
!1053 = !DILocation(line: 266, column: 10, scope: !1049)
!1054 = !DILocation(line: 266, column: 26, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1049, file: !62, line: 266, column: 5)
!1056 = !DILocation(line: 266, column: 28, scope: !1055)
!1057 = !DILocation(line: 266, column: 5, scope: !1049)
!1058 = !DILocation(line: 268, column: 16, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1055, file: !62, line: 267, column: 5)
!1060 = !DILocation(line: 268, column: 21, scope: !1059)
!1061 = !DILocation(line: 268, column: 26, scope: !1059)
!1062 = !DILocation(line: 268, column: 28, scope: !1059)
!1063 = !DILocation(line: 268, column: 27, scope: !1059)
!1064 = !DILocation(line: 268, column: 29, scope: !1059)
!1065 = !DILocation(line: 268, column: 24, scope: !1059)
!1066 = !DILocation(line: 268, column: 33, scope: !1059)
!1067 = !DILocation(line: 268, column: 34, scope: !1059)
!1068 = !DILocation(line: 268, column: 9, scope: !1059)
!1069 = !DILocation(line: 269, column: 16, scope: !1059)
!1070 = !DILocation(line: 269, column: 23, scope: !1059)
!1071 = !DILocation(line: 269, column: 25, scope: !1059)
!1072 = !DILocation(line: 269, column: 24, scope: !1059)
!1073 = !DILocation(line: 269, column: 36, scope: !1059)
!1074 = !DILocation(line: 269, column: 21, scope: !1059)
!1075 = !DILocation(line: 269, column: 55, scope: !1059)
!1076 = !DILocation(line: 269, column: 60, scope: !1059)
!1077 = !DILocation(line: 269, column: 71, scope: !1059)
!1078 = !DILocation(line: 269, column: 9, scope: !1059)
!1079 = !DILocation(line: 270, column: 5, scope: !1059)
!1080 = !DILocation(line: 266, column: 35, scope: !1055)
!1081 = !DILocation(line: 266, column: 5, scope: !1055)
!1082 = distinct !{!1082, !1057, !1083, !144}
!1083 = !DILocation(line: 270, column: 5, scope: !1049)
!1084 = !DILocation(line: 271, column: 1, scope: !1024)
!1085 = distinct !DISubprogram(name: "mayo_expand_sk", scope: !62, file: !62, line: 310, type: !1086, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !65)
!1086 = !DISubroutineType(types: !1087)
!1087 = !{!83, !330, !98, !1088}
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 32)
!1089 = !DIDerivedType(tag: DW_TAG_typedef, name: "sk_t", file: !89, line: 294, baseType: !1090)
!1090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sk_t", file: !89, line: 291, size: 7257920, elements: !1091)
!1091 = !{!1092, !1093}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1090, file: !89, line: 292, baseType: !178, size: 7238592)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "O", scope: !1090, file: !89, line: 293, baseType: !182, size: 19312, offset: 7238592)
!1094 = !DILocalVariable(name: "p", arg: 1, scope: !1085, file: !62, line: 310, type: !330)
!1095 = !DILocation(line: 310, column: 41, scope: !1085)
!1096 = !DILocalVariable(name: "csk", arg: 2, scope: !1085, file: !62, line: 310, type: !98)
!1097 = !DILocation(line: 310, column: 65, scope: !1085)
!1098 = !DILocalVariable(name: "sk", arg: 3, scope: !1085, file: !62, line: 311, type: !1088)
!1099 = !DILocation(line: 311, column: 26, scope: !1085)
!1100 = !DILocalVariable(name: "ret", scope: !1085, file: !62, line: 312, type: !83)
!1101 = !DILocation(line: 312, column: 9, scope: !1085)
!1102 = !DILocalVariable(name: "S", scope: !1085, file: !62, line: 313, type: !394)
!1103 = !DILocation(line: 313, column: 19, scope: !1085)
!1104 = !DILocalVariable(name: "P", scope: !1085, file: !62, line: 314, type: !48)
!1105 = !DILocation(line: 314, column: 15, scope: !1085)
!1106 = !DILocation(line: 314, column: 19, scope: !1085)
!1107 = !DILocation(line: 314, column: 23, scope: !1085)
!1108 = !DILocalVariable(name: "O", scope: !1085, file: !62, line: 315, type: !57)
!1109 = !DILocation(line: 315, column: 20, scope: !1085)
!1110 = !DILocation(line: 315, column: 24, scope: !1085)
!1111 = !DILocation(line: 315, column: 28, scope: !1085)
!1112 = !DILocalVariable(name: "param_o", scope: !1085, file: !62, line: 317, type: !411)
!1113 = !DILocation(line: 317, column: 15, scope: !1085)
!1114 = !DILocation(line: 317, column: 33, scope: !1085)
!1115 = !DILocation(line: 317, column: 25, scope: !1085)
!1116 = !DILocalVariable(name: "param_v", scope: !1085, file: !62, line: 318, type: !411)
!1117 = !DILocation(line: 318, column: 15, scope: !1085)
!1118 = !DILocation(line: 318, column: 33, scope: !1085)
!1119 = !DILocation(line: 318, column: 25, scope: !1085)
!1120 = !DILocalVariable(name: "param_O_bytes", scope: !1085, file: !62, line: 319, type: !411)
!1121 = !DILocation(line: 319, column: 15, scope: !1085)
!1122 = !DILocation(line: 319, column: 45, scope: !1085)
!1123 = !DILocation(line: 319, column: 31, scope: !1085)
!1124 = !DILocalVariable(name: "param_pk_seed_bytes", scope: !1085, file: !62, line: 320, type: !411)
!1125 = !DILocation(line: 320, column: 15, scope: !1085)
!1126 = !DILocation(line: 320, column: 57, scope: !1085)
!1127 = !DILocation(line: 320, column: 37, scope: !1085)
!1128 = !DILocalVariable(name: "param_sk_seed_bytes", scope: !1085, file: !62, line: 321, type: !411)
!1129 = !DILocation(line: 321, column: 15, scope: !1085)
!1130 = !DILocation(line: 321, column: 57, scope: !1085)
!1131 = !DILocation(line: 321, column: 37, scope: !1085)
!1132 = !DILocalVariable(name: "seed_sk", scope: !1085, file: !62, line: 323, type: !98)
!1133 = !DILocation(line: 323, column: 26, scope: !1085)
!1134 = !DILocation(line: 323, column: 36, scope: !1085)
!1135 = !DILocalVariable(name: "seed_pk", scope: !1085, file: !62, line: 324, type: !57)
!1136 = !DILocation(line: 324, column: 20, scope: !1085)
!1137 = !DILocation(line: 324, column: 30, scope: !1085)
!1138 = !DILocation(line: 326, column: 14, scope: !1085)
!1139 = !DILocation(line: 326, column: 17, scope: !1085)
!1140 = !DILocation(line: 326, column: 39, scope: !1085)
!1141 = !DILocation(line: 326, column: 37, scope: !1085)
!1142 = !DILocation(line: 326, column: 54, scope: !1085)
!1143 = !DILocation(line: 327, column: 14, scope: !1085)
!1144 = !DILocation(line: 326, column: 5, scope: !1085)
!1145 = !DILocation(line: 328, column: 12, scope: !1085)
!1146 = !DILocation(line: 328, column: 16, scope: !1085)
!1147 = !DILocation(line: 328, column: 14, scope: !1085)
!1148 = !DILocation(line: 328, column: 37, scope: !1085)
!1149 = !DILocation(line: 328, column: 40, scope: !1085)
!1150 = !DILocation(line: 328, column: 50, scope: !1085)
!1151 = !DILocation(line: 328, column: 48, scope: !1085)
!1152 = !DILocation(line: 328, column: 5, scope: !1085)
!1153 = !DILocation(line: 334, column: 18, scope: !1085)
!1154 = !DILocation(line: 334, column: 21, scope: !1085)
!1155 = !DILocation(line: 334, column: 24, scope: !1085)
!1156 = !DILocation(line: 334, column: 5, scope: !1085)
!1157 = !DILocalVariable(name: "P2", scope: !1085, file: !62, line: 341, type: !48)
!1158 = !DILocation(line: 341, column: 15, scope: !1085)
!1159 = !DILocation(line: 341, column: 20, scope: !1085)
!1160 = !DILocation(line: 341, column: 39, scope: !1085)
!1161 = !DILocation(line: 341, column: 24, scope: !1085)
!1162 = !DILocation(line: 341, column: 22, scope: !1085)
!1163 = !DILocalVariable(name: "P1", scope: !1085, file: !62, line: 343, type: !48)
!1164 = !DILocation(line: 343, column: 15, scope: !1085)
!1165 = !DILocation(line: 343, column: 20, scope: !1085)
!1166 = !DILocalVariable(name: "L", scope: !1085, file: !62, line: 346, type: !48)
!1167 = !DILocation(line: 346, column: 15, scope: !1085)
!1168 = !DILocation(line: 346, column: 19, scope: !1085)
!1169 = !DILocation(line: 347, column: 19, scope: !1085)
!1170 = !DILocation(line: 347, column: 22, scope: !1085)
!1171 = !DILocation(line: 347, column: 26, scope: !1085)
!1172 = !DILocation(line: 347, column: 29, scope: !1085)
!1173 = !DILocation(line: 347, column: 5, scope: !1085)
!1174 = !DILocation(line: 355, column: 23, scope: !1085)
!1175 = !DILocation(line: 355, column: 5, scope: !1085)
!1176 = !DILocation(line: 356, column: 12, scope: !1085)
!1177 = !DILocation(line: 356, column: 5, scope: !1085)
!1178 = distinct !DISubprogram(name: "P1P1t_times_O", scope: !608, file: !608, line: 218, type: !699, scopeLine: 218, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !44, retainedNodes: !65)
!1179 = !DILocalVariable(name: "p", arg: 1, scope: !1178, file: !608, line: 218, type: !330)
!1180 = !DILocation(line: 218, column: 41, scope: !1178)
!1181 = !DILocalVariable(name: "P1", arg: 2, scope: !1178, file: !608, line: 218, type: !611)
!1182 = !DILocation(line: 218, column: 60, scope: !1178)
!1183 = !DILocalVariable(name: "O", arg: 3, scope: !1178, file: !608, line: 218, type: !98)
!1184 = !DILocation(line: 218, column: 85, scope: !1178)
!1185 = !DILocalVariable(name: "acc", arg: 4, scope: !1178, file: !608, line: 218, type: !48)
!1186 = !DILocation(line: 218, column: 98, scope: !1178)
!1187 = !DILocalVariable(name: "param_o", scope: !1178, file: !608, line: 222, type: !411)
!1188 = !DILocation(line: 222, column: 15, scope: !1178)
!1189 = !DILocation(line: 222, column: 33, scope: !1178)
!1190 = !DILocation(line: 222, column: 25, scope: !1178)
!1191 = !DILocalVariable(name: "param_v", scope: !1178, file: !608, line: 223, type: !411)
!1192 = !DILocation(line: 223, column: 15, scope: !1178)
!1193 = !DILocation(line: 223, column: 33, scope: !1178)
!1194 = !DILocation(line: 223, column: 25, scope: !1178)
!1195 = !DILocalVariable(name: "m_vec_limbs", scope: !1178, file: !608, line: 224, type: !411)
!1196 = !DILocation(line: 224, column: 15, scope: !1178)
!1197 = !DILocation(line: 224, column: 47, scope: !1178)
!1198 = !DILocation(line: 224, column: 29, scope: !1178)
!1199 = !DILocalVariable(name: "bs_mat_entries_used", scope: !1178, file: !608, line: 226, type: !83)
!1200 = !DILocation(line: 226, column: 9, scope: !1178)
!1201 = !DILocalVariable(name: "r", scope: !1202, file: !608, line: 227, type: !83)
!1202 = distinct !DILexicalBlock(scope: !1178, file: !608, line: 227, column: 5)
!1203 = !DILocation(line: 227, column: 14, scope: !1202)
!1204 = !DILocation(line: 227, column: 10, scope: !1202)
!1205 = !DILocation(line: 227, column: 21, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1202, file: !608, line: 227, column: 5)
!1207 = !DILocation(line: 227, column: 25, scope: !1206)
!1208 = !DILocation(line: 227, column: 23, scope: !1206)
!1209 = !DILocation(line: 227, column: 5, scope: !1202)
!1210 = !DILocalVariable(name: "c", scope: !1211, file: !608, line: 228, type: !83)
!1211 = distinct !DILexicalBlock(scope: !1212, file: !608, line: 228, column: 9)
!1212 = distinct !DILexicalBlock(scope: !1206, file: !608, line: 227, column: 39)
!1213 = !DILocation(line: 228, column: 18, scope: !1211)
!1214 = !DILocation(line: 228, column: 22, scope: !1211)
!1215 = !DILocation(line: 228, column: 14, scope: !1211)
!1216 = !DILocation(line: 228, column: 25, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1211, file: !608, line: 228, column: 9)
!1218 = !DILocation(line: 228, column: 29, scope: !1217)
!1219 = !DILocation(line: 228, column: 27, scope: !1217)
!1220 = !DILocation(line: 228, column: 9, scope: !1211)
!1221 = !DILocation(line: 229, column: 16, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1223, file: !608, line: 229, column: 16)
!1223 = distinct !DILexicalBlock(scope: !1217, file: !608, line: 228, column: 43)
!1224 = !DILocation(line: 229, column: 19, scope: !1222)
!1225 = !DILocation(line: 229, column: 17, scope: !1222)
!1226 = !DILocation(line: 230, column: 37, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1222, file: !608, line: 229, column: 22)
!1228 = !DILocation(line: 231, column: 17, scope: !1227)
!1229 = !DILocalVariable(name: "k", scope: !1230, file: !608, line: 233, type: !83)
!1230 = distinct !DILexicalBlock(scope: !1223, file: !608, line: 233, column: 13)
!1231 = !DILocation(line: 233, column: 22, scope: !1230)
!1232 = !DILocation(line: 233, column: 18, scope: !1230)
!1233 = !DILocation(line: 233, column: 29, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !1230, file: !608, line: 233, column: 13)
!1235 = !DILocation(line: 233, column: 33, scope: !1234)
!1236 = !DILocation(line: 233, column: 31, scope: !1234)
!1237 = !DILocation(line: 233, column: 13, scope: !1230)
!1238 = !DILocation(line: 234, column: 31, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1234, file: !608, line: 233, column: 50)
!1240 = !DILocation(line: 234, column: 44, scope: !1239)
!1241 = !DILocation(line: 234, column: 49, scope: !1239)
!1242 = !DILocation(line: 234, column: 63, scope: !1239)
!1243 = !DILocation(line: 234, column: 61, scope: !1239)
!1244 = !DILocation(line: 234, column: 47, scope: !1239)
!1245 = !DILocation(line: 234, column: 84, scope: !1239)
!1246 = !DILocation(line: 234, column: 86, scope: !1239)
!1247 = !DILocation(line: 234, column: 90, scope: !1239)
!1248 = !DILocation(line: 234, column: 88, scope: !1239)
!1249 = !DILocation(line: 234, column: 100, scope: !1239)
!1250 = !DILocation(line: 234, column: 98, scope: !1239)
!1251 = !DILocation(line: 234, column: 104, scope: !1239)
!1252 = !DILocation(line: 234, column: 110, scope: !1239)
!1253 = !DILocation(line: 234, column: 125, scope: !1239)
!1254 = !DILocation(line: 234, column: 129, scope: !1239)
!1255 = !DILocation(line: 234, column: 127, scope: !1239)
!1256 = !DILocation(line: 234, column: 139, scope: !1239)
!1257 = !DILocation(line: 234, column: 137, scope: !1239)
!1258 = !DILocation(line: 234, column: 122, scope: !1239)
!1259 = !DILocation(line: 234, column: 108, scope: !1239)
!1260 = !DILocation(line: 234, column: 17, scope: !1239)
!1261 = !DILocation(line: 235, column: 31, scope: !1239)
!1262 = !DILocation(line: 235, column: 44, scope: !1239)
!1263 = !DILocation(line: 235, column: 49, scope: !1239)
!1264 = !DILocation(line: 235, column: 63, scope: !1239)
!1265 = !DILocation(line: 235, column: 61, scope: !1239)
!1266 = !DILocation(line: 235, column: 47, scope: !1239)
!1267 = !DILocation(line: 235, column: 84, scope: !1239)
!1268 = !DILocation(line: 235, column: 86, scope: !1239)
!1269 = !DILocation(line: 235, column: 90, scope: !1239)
!1270 = !DILocation(line: 235, column: 88, scope: !1239)
!1271 = !DILocation(line: 235, column: 100, scope: !1239)
!1272 = !DILocation(line: 235, column: 98, scope: !1239)
!1273 = !DILocation(line: 235, column: 104, scope: !1239)
!1274 = !DILocation(line: 235, column: 110, scope: !1239)
!1275 = !DILocation(line: 235, column: 125, scope: !1239)
!1276 = !DILocation(line: 235, column: 129, scope: !1239)
!1277 = !DILocation(line: 235, column: 127, scope: !1239)
!1278 = !DILocation(line: 235, column: 139, scope: !1239)
!1279 = !DILocation(line: 235, column: 137, scope: !1239)
!1280 = !DILocation(line: 235, column: 122, scope: !1239)
!1281 = !DILocation(line: 235, column: 108, scope: !1239)
!1282 = !DILocation(line: 235, column: 17, scope: !1239)
!1283 = !DILocation(line: 236, column: 13, scope: !1239)
!1284 = !DILocation(line: 233, column: 44, scope: !1234)
!1285 = !DILocation(line: 233, column: 13, scope: !1234)
!1286 = distinct !{!1286, !1237, !1287, !144}
!1287 = !DILocation(line: 236, column: 13, scope: !1230)
!1288 = !DILocation(line: 237, column: 33, scope: !1223)
!1289 = !DILocation(line: 238, column: 9, scope: !1223)
!1290 = !DILocation(line: 228, column: 39, scope: !1217)
!1291 = !DILocation(line: 228, column: 9, scope: !1217)
!1292 = distinct !{!1292, !1220, !1293, !144}
!1293 = !DILocation(line: 238, column: 9, scope: !1211)
!1294 = !DILocation(line: 239, column: 5, scope: !1212)
!1295 = !DILocation(line: 227, column: 35, scope: !1206)
!1296 = !DILocation(line: 227, column: 5, scope: !1206)
!1297 = distinct !{!1297, !1209, !1298, !144}
!1298 = !DILocation(line: 239, column: 5, scope: !1202)
!1299 = !DILocation(line: 240, column: 1, scope: !1178)
!1300 = distinct !DISubprogram(name: "mayo_sign_signature", scope: !62, file: !62, line: 359, type: !1301, scopeLine: 361, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !65)
!1301 = !DISubroutineType(types: !1302)
!1302 = !{!83, !330, !57, !1303, !98, !54, !98}
!1303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 32)
!1304 = !DILocalVariable(name: "p", arg: 1, scope: !1300, file: !62, line: 359, type: !330)
!1305 = !DILocation(line: 359, column: 46, scope: !1300)
!1306 = !DILocalVariable(name: "sig", arg: 2, scope: !1300, file: !62, line: 359, type: !57)
!1307 = !DILocation(line: 359, column: 64, scope: !1300)
!1308 = !DILocalVariable(name: "siglen", arg: 3, scope: !1300, file: !62, line: 360, type: !1303)
!1309 = !DILocation(line: 360, column: 23, scope: !1300)
!1310 = !DILocalVariable(name: "m", arg: 4, scope: !1300, file: !62, line: 360, type: !98)
!1311 = !DILocation(line: 360, column: 52, scope: !1300)
!1312 = !DILocalVariable(name: "mlen", arg: 5, scope: !1300, file: !62, line: 361, type: !54)
!1313 = !DILocation(line: 361, column: 22, scope: !1300)
!1314 = !DILocalVariable(name: "csk", arg: 6, scope: !1300, file: !62, line: 361, type: !98)
!1315 = !DILocation(line: 361, column: 49, scope: !1300)
!1316 = !DILocalVariable(name: "ret", scope: !1300, file: !62, line: 362, type: !83)
!1317 = !DILocation(line: 362, column: 9, scope: !1300)
!1318 = !DILocalVariable(name: "tenc", scope: !1300, file: !62, line: 363, type: !1319)
!1319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 568, elements: !1320)
!1320 = !{!1321}
!1321 = !DISubrange(count: 71)
!1322 = !DILocation(line: 363, column: 19, scope: !1300)
!1323 = !DILocalVariable(name: "t", scope: !1300, file: !62, line: 363, type: !1324)
!1324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 1136, elements: !1325)
!1325 = !{!1326}
!1326 = !DISubrange(count: 142)
!1327 = !DILocation(line: 363, column: 38, scope: !1300)
!1328 = !DILocalVariable(name: "y", scope: !1300, file: !62, line: 364, type: !1324)
!1329 = !DILocation(line: 364, column: 19, scope: !1300)
!1330 = !DILocalVariable(name: "salt", scope: !1300, file: !62, line: 365, type: !1331)
!1331 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 320, elements: !1332)
!1332 = !{!1333}
!1333 = !DISubrange(count: 40)
!1334 = !DILocation(line: 365, column: 19, scope: !1300)
!1335 = !DILocalVariable(name: "V", scope: !1300, file: !62, line: 366, type: !1336)
!1336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 7392, elements: !1337)
!1337 = !{!1338}
!1338 = !DISubrange(count: 924)
!1339 = !DILocation(line: 366, column: 19, scope: !1300)
!1340 = !DILocalVariable(name: "Vdec", scope: !1300, file: !62, line: 366, type: !1341)
!1341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 13632, elements: !1342)
!1342 = !{!1343}
!1343 = !DISubrange(count: 1704)
!1344 = !DILocation(line: 366, column: 57, scope: !1300)
!1345 = !DILocalVariable(name: "A", scope: !1300, file: !62, line: 367, type: !1346)
!1346 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 236160, elements: !1347)
!1347 = !{!1348}
!1348 = !DISubrange(count: 29520)
!1349 = !DILocation(line: 367, column: 19, scope: !1300)
!1350 = !DILocalVariable(name: "x", scope: !1300, file: !62, line: 368, type: !1351)
!1351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 14784, elements: !1352)
!1352 = !{!1353}
!1353 = !DISubrange(count: 1848)
!1354 = !DILocation(line: 368, column: 19, scope: !1300)
!1355 = !DILocalVariable(name: "r", scope: !1300, file: !62, line: 369, type: !1356)
!1356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 1640, elements: !1357)
!1357 = !{!1358}
!1358 = !DISubrange(count: 205)
!1359 = !DILocation(line: 369, column: 19, scope: !1300)
!1360 = !DILocalVariable(name: "s", scope: !1300, file: !62, line: 370, type: !1351)
!1361 = !DILocation(line: 370, column: 19, scope: !1300)
!1362 = !DILocalVariable(name: "seed_sk", scope: !1300, file: !62, line: 371, type: !98)
!1363 = !DILocation(line: 371, column: 26, scope: !1300)
!1364 = !DILocalVariable(name: "sk", scope: !1300, file: !62, line: 372, type: !1089, align: 256)
!1365 = !DILocation(line: 372, column: 22, scope: !1300)
!1366 = !DILocalVariable(name: "Ox", scope: !1300, file: !62, line: 373, type: !1324)
!1367 = !DILocation(line: 373, column: 19, scope: !1300)
!1368 = !DILocalVariable(name: "tmp", scope: !1300, file: !62, line: 374, type: !1369)
!1369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 1160, elements: !1370)
!1370 = !{!1371}
!1371 = !DISubrange(count: 145)
!1372 = !DILocation(line: 374, column: 19, scope: !1300)
!1373 = !DILocalVariable(name: "ctrbyte", scope: !1300, file: !62, line: 375, type: !57)
!1374 = !DILocation(line: 375, column: 20, scope: !1300)
!1375 = !DILocalVariable(name: "vi", scope: !1300, file: !62, line: 376, type: !57)
!1376 = !DILocation(line: 376, column: 20, scope: !1300)
!1377 = !DILocalVariable(name: "param_m", scope: !1300, file: !62, line: 378, type: !411)
!1378 = !DILocation(line: 378, column: 15, scope: !1300)
!1379 = !DILocation(line: 378, column: 33, scope: !1300)
!1380 = !DILocation(line: 378, column: 25, scope: !1300)
!1381 = !DILocalVariable(name: "param_n", scope: !1300, file: !62, line: 379, type: !411)
!1382 = !DILocation(line: 379, column: 15, scope: !1300)
!1383 = !DILocation(line: 379, column: 33, scope: !1300)
!1384 = !DILocation(line: 379, column: 25, scope: !1300)
!1385 = !DILocalVariable(name: "param_o", scope: !1300, file: !62, line: 380, type: !411)
!1386 = !DILocation(line: 380, column: 15, scope: !1300)
!1387 = !DILocation(line: 380, column: 33, scope: !1300)
!1388 = !DILocation(line: 380, column: 25, scope: !1300)
!1389 = !DILocalVariable(name: "param_k", scope: !1300, file: !62, line: 381, type: !411)
!1390 = !DILocation(line: 381, column: 15, scope: !1300)
!1391 = !DILocation(line: 381, column: 33, scope: !1300)
!1392 = !DILocation(line: 381, column: 25, scope: !1300)
!1393 = !DILocalVariable(name: "param_v", scope: !1300, file: !62, line: 382, type: !411)
!1394 = !DILocation(line: 382, column: 15, scope: !1300)
!1395 = !DILocation(line: 382, column: 33, scope: !1300)
!1396 = !DILocation(line: 382, column: 25, scope: !1300)
!1397 = !DILocalVariable(name: "param_m_bytes", scope: !1300, file: !62, line: 383, type: !411)
!1398 = !DILocation(line: 383, column: 15, scope: !1300)
!1399 = !DILocation(line: 383, column: 45, scope: !1300)
!1400 = !DILocation(line: 383, column: 31, scope: !1300)
!1401 = !DILocalVariable(name: "param_v_bytes", scope: !1300, file: !62, line: 384, type: !411)
!1402 = !DILocation(line: 384, column: 15, scope: !1300)
!1403 = !DILocation(line: 384, column: 45, scope: !1300)
!1404 = !DILocation(line: 384, column: 31, scope: !1300)
!1405 = !DILocalVariable(name: "param_r_bytes", scope: !1300, file: !62, line: 385, type: !411)
!1406 = !DILocation(line: 385, column: 15, scope: !1300)
!1407 = !DILocation(line: 385, column: 45, scope: !1300)
!1408 = !DILocation(line: 385, column: 31, scope: !1300)
!1409 = !DILocalVariable(name: "param_sig_bytes", scope: !1300, file: !62, line: 386, type: !411)
!1410 = !DILocation(line: 386, column: 15, scope: !1300)
!1411 = !DILocation(line: 386, column: 49, scope: !1300)
!1412 = !DILocation(line: 386, column: 33, scope: !1300)
!1413 = !DILocalVariable(name: "param_A_cols", scope: !1300, file: !62, line: 387, type: !411)
!1414 = !DILocation(line: 387, column: 15, scope: !1300)
!1415 = !DILocation(line: 387, column: 43, scope: !1300)
!1416 = !DILocation(line: 387, column: 30, scope: !1300)
!1417 = !DILocalVariable(name: "param_digest_bytes", scope: !1300, file: !62, line: 388, type: !411)
!1418 = !DILocation(line: 388, column: 15, scope: !1300)
!1419 = !DILocation(line: 388, column: 55, scope: !1300)
!1420 = !DILocation(line: 388, column: 36, scope: !1300)
!1421 = !DILocalVariable(name: "param_sk_seed_bytes", scope: !1300, file: !62, line: 389, type: !411)
!1422 = !DILocation(line: 389, column: 15, scope: !1300)
!1423 = !DILocation(line: 389, column: 57, scope: !1300)
!1424 = !DILocation(line: 389, column: 37, scope: !1300)
!1425 = !DILocalVariable(name: "param_salt_bytes", scope: !1300, file: !62, line: 390, type: !411)
!1426 = !DILocation(line: 390, column: 15, scope: !1300)
!1427 = !DILocation(line: 390, column: 51, scope: !1300)
!1428 = !DILocation(line: 390, column: 34, scope: !1300)
!1429 = !DILocation(line: 392, column: 26, scope: !1300)
!1430 = !DILocation(line: 392, column: 29, scope: !1300)
!1431 = !DILocation(line: 392, column: 11, scope: !1300)
!1432 = !DILocation(line: 392, column: 9, scope: !1300)
!1433 = !DILocation(line: 393, column: 9, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1300, file: !62, line: 393, column: 9)
!1435 = !DILocation(line: 393, column: 13, scope: !1434)
!1436 = !DILocation(line: 394, column: 9, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !1434, file: !62, line: 393, column: 25)
!1438 = !DILocation(line: 397, column: 15, scope: !1300)
!1439 = !DILocation(line: 397, column: 13, scope: !1300)
!1440 = !DILocation(line: 401, column: 14, scope: !1300)
!1441 = !DILocation(line: 401, column: 19, scope: !1300)
!1442 = !DILocation(line: 401, column: 39, scope: !1300)
!1443 = !DILocation(line: 401, column: 42, scope: !1300)
!1444 = !DILocation(line: 401, column: 5, scope: !1300)
!1445 = !DILocalVariable(name: "P1", scope: !1300, file: !62, line: 403, type: !48)
!1446 = !DILocation(line: 403, column: 15, scope: !1300)
!1447 = !DILocation(line: 403, column: 23, scope: !1300)
!1448 = !DILocation(line: 403, column: 20, scope: !1300)
!1449 = !DILocalVariable(name: "L", scope: !1300, file: !62, line: 404, type: !48)
!1450 = !DILocation(line: 404, column: 15, scope: !1300)
!1451 = !DILocation(line: 404, column: 20, scope: !1300)
!1452 = !DILocation(line: 404, column: 40, scope: !1300)
!1453 = !DILocation(line: 404, column: 25, scope: !1300)
!1454 = !DILocation(line: 404, column: 23, scope: !1300)
!1455 = !DILocalVariable(name: "Mtmp", scope: !1300, file: !62, line: 405, type: !1456)
!1456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 117504, elements: !1457)
!1457 = !{!1458}
!1458 = !DISubrange(count: 1836)
!1459 = !DILocation(line: 405, column: 14, scope: !1300)
!1460 = !DILocation(line: 420, column: 21, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1300, file: !62, line: 420, column: 9)
!1462 = !DILocation(line: 420, column: 27, scope: !1461)
!1463 = !DILocation(line: 420, column: 25, scope: !1461)
!1464 = !DILocation(line: 420, column: 47, scope: !1461)
!1465 = !DILocation(line: 420, column: 9, scope: !1461)
!1466 = !DILocation(line: 420, column: 65, scope: !1461)
!1467 = !DILocation(line: 421, column: 13, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1461, file: !62, line: 420, column: 77)
!1469 = !DILocation(line: 422, column: 9, scope: !1468)
!1470 = !DILocation(line: 427, column: 12, scope: !1300)
!1471 = !DILocation(line: 427, column: 18, scope: !1300)
!1472 = !DILocation(line: 427, column: 16, scope: !1300)
!1473 = !DILocation(line: 427, column: 39, scope: !1300)
!1474 = !DILocation(line: 427, column: 37, scope: !1300)
!1475 = !DILocation(line: 427, column: 57, scope: !1300)
!1476 = !DILocation(line: 428, column: 12, scope: !1300)
!1477 = !DILocation(line: 427, column: 5, scope: !1300)
!1478 = !DILocation(line: 429, column: 14, scope: !1300)
!1479 = !DILocation(line: 429, column: 20, scope: !1300)
!1480 = !DILocation(line: 429, column: 38, scope: !1300)
!1481 = !DILocation(line: 430, column: 14, scope: !1300)
!1482 = !DILocation(line: 430, column: 35, scope: !1300)
!1483 = !DILocation(line: 430, column: 33, scope: !1300)
!1484 = !DILocation(line: 430, column: 54, scope: !1300)
!1485 = !DILocation(line: 430, column: 52, scope: !1300)
!1486 = !DILocation(line: 429, column: 5, scope: !1300)
!1487 = !DILocation(line: 437, column: 12, scope: !1300)
!1488 = !DILocation(line: 437, column: 18, scope: !1300)
!1489 = !DILocation(line: 437, column: 16, scope: !1300)
!1490 = !DILocation(line: 437, column: 38, scope: !1300)
!1491 = !DILocation(line: 437, column: 44, scope: !1300)
!1492 = !DILocation(line: 437, column: 5, scope: !1300)
!1493 = !DILocation(line: 438, column: 15, scope: !1300)
!1494 = !DILocation(line: 438, column: 21, scope: !1300)
!1495 = !DILocation(line: 438, column: 19, scope: !1300)
!1496 = !DILocation(line: 438, column: 42, scope: !1300)
!1497 = !DILocation(line: 438, column: 40, scope: !1300)
!1498 = !DILocation(line: 438, column: 61, scope: !1300)
!1499 = !DILocation(line: 438, column: 59, scope: !1300)
!1500 = !DILocation(line: 438, column: 13, scope: !1300)
!1501 = !DILocation(line: 440, column: 14, scope: !1300)
!1502 = !DILocation(line: 440, column: 20, scope: !1300)
!1503 = !DILocation(line: 440, column: 35, scope: !1300)
!1504 = !DILocation(line: 440, column: 40, scope: !1300)
!1505 = !DILocation(line: 440, column: 61, scope: !1300)
!1506 = !DILocation(line: 440, column: 59, scope: !1300)
!1507 = !DILocation(line: 440, column: 5, scope: !1300)
!1508 = !DILocation(line: 442, column: 12, scope: !1300)
!1509 = !DILocation(line: 442, column: 18, scope: !1300)
!1510 = !DILocation(line: 442, column: 21, scope: !1300)
!1511 = !DILocation(line: 442, column: 5, scope: !1300)
!1512 = !DILocalVariable(name: "ctr", scope: !1513, file: !62, line: 444, type: !83)
!1513 = distinct !DILexicalBlock(scope: !1300, file: !62, line: 444, column: 5)
!1514 = !DILocation(line: 444, column: 14, scope: !1513)
!1515 = !DILocation(line: 444, column: 10, scope: !1513)
!1516 = !DILocation(line: 444, column: 23, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1513, file: !62, line: 444, column: 5)
!1518 = !DILocation(line: 444, column: 27, scope: !1517)
!1519 = !DILocation(line: 444, column: 5, scope: !1513)
!1520 = !DILocation(line: 445, column: 35, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1517, file: !62, line: 444, column: 42)
!1522 = !DILocation(line: 445, column: 20, scope: !1521)
!1523 = !DILocation(line: 445, column: 10, scope: !1521)
!1524 = !DILocation(line: 445, column: 18, scope: !1521)
!1525 = !DILocation(line: 447, column: 18, scope: !1521)
!1526 = !DILocation(line: 447, column: 21, scope: !1521)
!1527 = !DILocation(line: 447, column: 31, scope: !1521)
!1528 = !DILocation(line: 447, column: 29, scope: !1521)
!1529 = !DILocation(line: 447, column: 47, scope: !1521)
!1530 = !DILocation(line: 447, column: 45, scope: !1521)
!1531 = !DILocation(line: 447, column: 62, scope: !1521)
!1532 = !DILocation(line: 448, column: 18, scope: !1521)
!1533 = !DILocation(line: 448, column: 39, scope: !1521)
!1534 = !DILocation(line: 448, column: 37, scope: !1521)
!1535 = !DILocation(line: 448, column: 58, scope: !1521)
!1536 = !DILocation(line: 448, column: 56, scope: !1521)
!1537 = !DILocation(line: 448, column: 78, scope: !1521)
!1538 = !DILocation(line: 447, column: 9, scope: !1521)
!1539 = !DILocalVariable(name: "i", scope: !1540, file: !62, line: 451, type: !83)
!1540 = distinct !DILexicalBlock(scope: !1521, file: !62, line: 451, column: 9)
!1541 = !DILocation(line: 451, column: 18, scope: !1540)
!1542 = !DILocation(line: 451, column: 14, scope: !1540)
!1543 = !DILocation(line: 451, column: 25, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1540, file: !62, line: 451, column: 9)
!1545 = !DILocation(line: 451, column: 30, scope: !1544)
!1546 = !DILocation(line: 451, column: 38, scope: !1544)
!1547 = !DILocation(line: 451, column: 27, scope: !1544)
!1548 = !DILocation(line: 451, column: 9, scope: !1540)
!1549 = !DILocation(line: 452, column: 20, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1544, file: !62, line: 451, column: 48)
!1551 = !DILocation(line: 452, column: 24, scope: !1550)
!1552 = !DILocation(line: 452, column: 28, scope: !1550)
!1553 = !DILocation(line: 452, column: 26, scope: !1550)
!1554 = !DILocation(line: 452, column: 22, scope: !1550)
!1555 = !DILocation(line: 452, column: 43, scope: !1550)
!1556 = !DILocation(line: 452, column: 50, scope: !1550)
!1557 = !DILocation(line: 452, column: 54, scope: !1550)
!1558 = !DILocation(line: 452, column: 52, scope: !1550)
!1559 = !DILocation(line: 452, column: 48, scope: !1550)
!1560 = !DILocation(line: 452, column: 63, scope: !1550)
!1561 = !DILocation(line: 452, column: 13, scope: !1550)
!1562 = !DILocation(line: 453, column: 9, scope: !1550)
!1563 = !DILocation(line: 451, column: 43, scope: !1544)
!1564 = !DILocation(line: 451, column: 9, scope: !1544)
!1565 = distinct !{!1565, !1548, !1566, !144}
!1566 = !DILocation(line: 453, column: 9, scope: !1540)
!1567 = !DILocation(line: 456, column: 27, scope: !1521)
!1568 = !DILocation(line: 456, column: 30, scope: !1521)
!1569 = !DILocation(line: 456, column: 36, scope: !1521)
!1570 = !DILocation(line: 456, column: 39, scope: !1521)
!1571 = !DILocation(line: 456, column: 43, scope: !1521)
!1572 = !DILocation(line: 456, column: 61, scope: !1521)
!1573 = !DILocation(line: 456, column: 9, scope: !1521)
!1574 = !DILocation(line: 458, column: 21, scope: !1521)
!1575 = !DILocation(line: 458, column: 36, scope: !1521)
!1576 = !DILocation(line: 458, column: 39, scope: !1521)
!1577 = !DILocation(line: 458, column: 42, scope: !1521)
!1578 = !DILocation(line: 458, column: 9, scope: !1521)
!1579 = !DILocation(line: 459, column: 19, scope: !1521)
!1580 = !DILocation(line: 459, column: 22, scope: !1521)
!1581 = !DILocation(line: 459, column: 28, scope: !1521)
!1582 = !DILocation(line: 459, column: 9, scope: !1521)
!1583 = !DILocalVariable(name: "i", scope: !1584, file: !62, line: 461, type: !83)
!1584 = distinct !DILexicalBlock(scope: !1521, file: !62, line: 461, column: 9)
!1585 = !DILocation(line: 461, column: 18, scope: !1584)
!1586 = !DILocation(line: 461, column: 14, scope: !1584)
!1587 = !DILocation(line: 461, column: 25, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !1584, file: !62, line: 461, column: 9)
!1589 = !DILocation(line: 461, column: 29, scope: !1588)
!1590 = !DILocation(line: 461, column: 27, scope: !1588)
!1591 = !DILocation(line: 461, column: 9, scope: !1584)
!1592 = !DILocation(line: 463, column: 18, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1588, file: !62, line: 462, column: 9)
!1594 = !DILocation(line: 463, column: 17, scope: !1593)
!1595 = !DILocation(line: 463, column: 22, scope: !1593)
!1596 = !DILocation(line: 463, column: 30, scope: !1593)
!1597 = !DILocation(line: 463, column: 29, scope: !1593)
!1598 = !DILocation(line: 463, column: 38, scope: !1593)
!1599 = !DILocation(line: 463, column: 20, scope: !1593)
!1600 = !DILocation(line: 463, column: 43, scope: !1593)
!1601 = !DILocation(line: 463, column: 13, scope: !1593)
!1602 = !DILocation(line: 463, column: 48, scope: !1593)
!1603 = !DILocation(line: 464, column: 9, scope: !1593)
!1604 = !DILocation(line: 461, column: 39, scope: !1588)
!1605 = !DILocation(line: 461, column: 9, scope: !1588)
!1606 = distinct !{!1606, !1591, !1607, !144}
!1607 = !DILocation(line: 464, column: 9, scope: !1584)
!1608 = !DILocation(line: 466, column: 16, scope: !1521)
!1609 = !DILocation(line: 466, column: 20, scope: !1521)
!1610 = !DILocation(line: 466, column: 30, scope: !1521)
!1611 = !DILocation(line: 466, column: 28, scope: !1521)
!1612 = !DILocation(line: 466, column: 18, scope: !1521)
!1613 = !DILocation(line: 466, column: 45, scope: !1521)
!1614 = !DILocation(line: 467, column: 16, scope: !1521)
!1615 = !DILocation(line: 468, column: 16, scope: !1521)
!1616 = !DILocation(line: 467, column: 24, scope: !1521)
!1617 = !DILocation(line: 466, column: 9, scope: !1521)
!1618 = !DILocation(line: 470, column: 29, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1521, file: !62, line: 470, column: 13)
!1620 = !DILocation(line: 470, column: 32, scope: !1619)
!1621 = !DILocation(line: 470, column: 35, scope: !1619)
!1622 = !DILocation(line: 470, column: 38, scope: !1619)
!1623 = !DILocation(line: 470, column: 41, scope: !1619)
!1624 = !DILocation(line: 470, column: 44, scope: !1619)
!1625 = !DILocation(line: 470, column: 53, scope: !1619)
!1626 = !DILocation(line: 470, column: 62, scope: !1619)
!1627 = !DILocation(line: 470, column: 71, scope: !1619)
!1628 = !DILocation(line: 470, column: 13, scope: !1619)
!1629 = !DILocation(line: 471, column: 13, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1619, file: !62, line: 470, column: 86)
!1631 = !DILocation(line: 473, column: 20, scope: !1632)
!1632 = distinct !DILexicalBlock(scope: !1619, file: !62, line: 472, column: 16)
!1633 = !DILocation(line: 473, column: 13, scope: !1632)
!1634 = !DILocation(line: 474, column: 20, scope: !1632)
!1635 = !DILocation(line: 474, column: 13, scope: !1632)
!1636 = !DILocation(line: 476, column: 5, scope: !1521)
!1637 = !DILocation(line: 444, column: 35, scope: !1517)
!1638 = !DILocation(line: 444, column: 5, scope: !1517)
!1639 = distinct !{!1639, !1519, !1640, !144}
!1640 = !DILocation(line: 476, column: 5, scope: !1513)
!1641 = !DILocalVariable(name: "i", scope: !1642, file: !62, line: 478, type: !83)
!1642 = distinct !DILexicalBlock(scope: !1300, file: !62, line: 478, column: 5)
!1643 = !DILocation(line: 478, column: 14, scope: !1642)
!1644 = !DILocation(line: 478, column: 10, scope: !1642)
!1645 = !DILocation(line: 478, column: 21, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1642, file: !62, line: 478, column: 5)
!1647 = !DILocation(line: 478, column: 26, scope: !1646)
!1648 = !DILocation(line: 478, column: 34, scope: !1646)
!1649 = !DILocation(line: 478, column: 23, scope: !1646)
!1650 = !DILocation(line: 478, column: 5, scope: !1642)
!1651 = !DILocation(line: 479, column: 14, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1646, file: !62, line: 478, column: 44)
!1653 = !DILocation(line: 479, column: 21, scope: !1652)
!1654 = !DILocation(line: 479, column: 26, scope: !1652)
!1655 = !DILocation(line: 479, column: 36, scope: !1652)
!1656 = !DILocation(line: 479, column: 34, scope: !1652)
!1657 = !DILocation(line: 479, column: 23, scope: !1652)
!1658 = !DILocation(line: 479, column: 19, scope: !1652)
!1659 = !DILocation(line: 479, column: 12, scope: !1652)
!1660 = !DILocation(line: 480, column: 20, scope: !1652)
!1661 = !DILocation(line: 480, column: 17, scope: !1652)
!1662 = !DILocation(line: 480, column: 23, scope: !1652)
!1663 = !DILocation(line: 480, column: 27, scope: !1652)
!1664 = !DILocation(line: 480, column: 31, scope: !1652)
!1665 = !DILocation(line: 480, column: 29, scope: !1652)
!1666 = !DILocation(line: 480, column: 25, scope: !1652)
!1667 = !DILocation(line: 480, column: 40, scope: !1652)
!1668 = !DILocation(line: 480, column: 44, scope: !1652)
!1669 = !DILocation(line: 480, column: 53, scope: !1652)
!1670 = !DILocation(line: 480, column: 63, scope: !1652)
!1671 = !DILocation(line: 480, column: 61, scope: !1652)
!1672 = !DILocation(line: 480, column: 9, scope: !1652)
!1673 = !DILocation(line: 481, column: 17, scope: !1652)
!1674 = !DILocation(line: 481, column: 21, scope: !1652)
!1675 = !DILocation(line: 481, column: 25, scope: !1652)
!1676 = !DILocation(line: 481, column: 29, scope: !1652)
!1677 = !DILocation(line: 481, column: 33, scope: !1652)
!1678 = !DILocation(line: 481, column: 31, scope: !1652)
!1679 = !DILocation(line: 481, column: 27, scope: !1652)
!1680 = !DILocation(line: 481, column: 42, scope: !1652)
!1681 = !DILocation(line: 481, column: 52, scope: !1652)
!1682 = !DILocation(line: 481, column: 50, scope: !1652)
!1683 = !DILocation(line: 481, column: 9, scope: !1652)
!1684 = !DILocation(line: 482, column: 16, scope: !1652)
!1685 = !DILocation(line: 482, column: 20, scope: !1652)
!1686 = !DILocation(line: 482, column: 24, scope: !1652)
!1687 = !DILocation(line: 482, column: 22, scope: !1652)
!1688 = !DILocation(line: 482, column: 18, scope: !1652)
!1689 = !DILocation(line: 482, column: 35, scope: !1652)
!1690 = !DILocation(line: 482, column: 45, scope: !1652)
!1691 = !DILocation(line: 482, column: 43, scope: !1652)
!1692 = !DILocation(line: 482, column: 32, scope: !1652)
!1693 = !DILocation(line: 482, column: 55, scope: !1652)
!1694 = !DILocation(line: 482, column: 59, scope: !1652)
!1695 = !DILocation(line: 482, column: 63, scope: !1652)
!1696 = !DILocation(line: 482, column: 61, scope: !1652)
!1697 = !DILocation(line: 482, column: 57, scope: !1652)
!1698 = !DILocation(line: 482, column: 72, scope: !1652)
!1699 = !DILocation(line: 482, column: 9, scope: !1652)
!1700 = !DILocation(line: 483, column: 5, scope: !1652)
!1701 = !DILocation(line: 478, column: 39, scope: !1646)
!1702 = !DILocation(line: 478, column: 5, scope: !1646)
!1703 = distinct !{!1703, !1650, !1704, !144}
!1704 = !DILocation(line: 483, column: 5, scope: !1642)
!1705 = !DILocation(line: 484, column: 12, scope: !1300)
!1706 = !DILocation(line: 484, column: 15, scope: !1300)
!1707 = !DILocation(line: 484, column: 20, scope: !1300)
!1708 = !DILocation(line: 484, column: 30, scope: !1300)
!1709 = !DILocation(line: 484, column: 28, scope: !1300)
!1710 = !DILocation(line: 484, column: 5, scope: !1300)
!1711 = !DILocation(line: 486, column: 12, scope: !1300)
!1712 = !DILocation(line: 486, column: 18, scope: !1300)
!1713 = !DILocation(line: 486, column: 16, scope: !1300)
!1714 = !DILocation(line: 486, column: 36, scope: !1300)
!1715 = !DILocation(line: 486, column: 34, scope: !1300)
!1716 = !DILocation(line: 486, column: 54, scope: !1300)
!1717 = !DILocation(line: 486, column: 60, scope: !1300)
!1718 = !DILocation(line: 486, column: 5, scope: !1300)
!1719 = !DILocation(line: 487, column: 15, scope: !1300)
!1720 = !DILocation(line: 487, column: 6, scope: !1300)
!1721 = !DILocation(line: 487, column: 13, scope: !1300)
!1722 = !DILocation(line: 487, column: 5, scope: !1300)
!1723 = !DILabel(scope: !1300, name: "err", file: !62, line: 489, column: 1)
!1724 = !DILocation(line: 489, column: 1, scope: !1300)
!1725 = !DILocation(line: 490, column: 23, scope: !1300)
!1726 = !DILocation(line: 490, column: 5, scope: !1300)
!1727 = !DILocation(line: 491, column: 23, scope: !1300)
!1728 = !DILocation(line: 491, column: 5, scope: !1300)
!1729 = !DILocation(line: 492, column: 23, scope: !1300)
!1730 = !DILocation(line: 492, column: 5, scope: !1300)
!1731 = !DILocation(line: 493, column: 23, scope: !1300)
!1732 = !DILocation(line: 493, column: 5, scope: !1300)
!1733 = !DILocation(line: 494, column: 26, scope: !1300)
!1734 = !DILocation(line: 494, column: 23, scope: !1300)
!1735 = !DILocation(line: 494, column: 5, scope: !1300)
!1736 = !DILocation(line: 495, column: 5, scope: !1300)
!1737 = !DILocation(line: 496, column: 23, scope: !1300)
!1738 = !DILocation(line: 496, column: 5, scope: !1300)
!1739 = !DILocation(line: 497, column: 23, scope: !1300)
!1740 = !DILocation(line: 497, column: 5, scope: !1300)
!1741 = !DILocation(line: 498, column: 23, scope: !1300)
!1742 = !DILocation(line: 498, column: 5, scope: !1300)
!1743 = !DILocation(line: 499, column: 12, scope: !1300)
!1744 = !DILocation(line: 499, column: 5, scope: !1300)
!1745 = distinct !DISubprogram(name: "compute_M_and_VPV", scope: !608, file: !608, line: 244, type: !1746, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !44, retainedNodes: !65)
!1746 = !DISubroutineType(types: !1747)
!1747 = !{null, !330, !98, !611, !611, !48, !48}
!1748 = !DILocalVariable(name: "p", arg: 1, scope: !1745, file: !608, line: 244, type: !330)
!1749 = !DILocation(line: 244, column: 45, scope: !1745)
!1750 = !DILocalVariable(name: "Vdec", arg: 2, scope: !1745, file: !608, line: 244, type: !98)
!1751 = !DILocation(line: 244, column: 69, scope: !1745)
!1752 = !DILocalVariable(name: "L", arg: 3, scope: !1745, file: !608, line: 244, type: !611)
!1753 = !DILocation(line: 244, column: 91, scope: !1745)
!1754 = !DILocalVariable(name: "P1", arg: 4, scope: !1745, file: !608, line: 244, type: !611)
!1755 = !DILocation(line: 244, column: 110, scope: !1745)
!1756 = !DILocalVariable(name: "VL", arg: 5, scope: !1745, file: !608, line: 244, type: !48)
!1757 = !DILocation(line: 244, column: 124, scope: !1745)
!1758 = !DILocalVariable(name: "VP1V", arg: 6, scope: !1745, file: !608, line: 244, type: !48)
!1759 = !DILocation(line: 244, column: 138, scope: !1745)
!1760 = !DILocalVariable(name: "param_k", scope: !1745, file: !608, line: 246, type: !411)
!1761 = !DILocation(line: 246, column: 15, scope: !1745)
!1762 = !DILocation(line: 246, column: 33, scope: !1745)
!1763 = !DILocation(line: 246, column: 25, scope: !1745)
!1764 = !DILocalVariable(name: "param_v", scope: !1745, file: !608, line: 247, type: !411)
!1765 = !DILocation(line: 247, column: 15, scope: !1745)
!1766 = !DILocation(line: 247, column: 33, scope: !1745)
!1767 = !DILocation(line: 247, column: 25, scope: !1745)
!1768 = !DILocalVariable(name: "param_o", scope: !1745, file: !608, line: 248, type: !411)
!1769 = !DILocation(line: 248, column: 15, scope: !1745)
!1770 = !DILocation(line: 248, column: 33, scope: !1745)
!1771 = !DILocation(line: 248, column: 25, scope: !1745)
!1772 = !DILocation(line: 251, column: 43, scope: !1745)
!1773 = !DILocation(line: 251, column: 25, scope: !1745)
!1774 = !DILocation(line: 251, column: 47, scope: !1745)
!1775 = !DILocation(line: 251, column: 53, scope: !1745)
!1776 = !DILocation(line: 251, column: 56, scope: !1745)
!1777 = !DILocation(line: 251, column: 60, scope: !1745)
!1778 = !DILocation(line: 251, column: 69, scope: !1745)
!1779 = !DILocation(line: 251, column: 78, scope: !1745)
!1780 = !DILocation(line: 251, column: 5, scope: !1745)
!1781 = !DILocalVariable(name: "Pv", scope: !1745, file: !608, line: 254, type: !1782)
!1782 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 981504, elements: !1783)
!1783 = !{!1784}
!1784 = !DISubrange(count: 15336)
!1785 = !DILocation(line: 254, column: 14, scope: !1745)
!1786 = !DILocation(line: 255, column: 17, scope: !1745)
!1787 = !DILocation(line: 255, column: 20, scope: !1745)
!1788 = !DILocation(line: 255, column: 24, scope: !1745)
!1789 = !DILocation(line: 255, column: 30, scope: !1745)
!1790 = !DILocation(line: 255, column: 5, scope: !1745)
!1791 = !DILocation(line: 256, column: 43, scope: !1745)
!1792 = !DILocation(line: 256, column: 25, scope: !1745)
!1793 = !DILocation(line: 256, column: 47, scope: !1745)
!1794 = !DILocation(line: 256, column: 53, scope: !1745)
!1795 = !DILocation(line: 256, column: 57, scope: !1745)
!1796 = !DILocation(line: 256, column: 63, scope: !1745)
!1797 = !DILocation(line: 256, column: 72, scope: !1745)
!1798 = !DILocation(line: 256, column: 81, scope: !1745)
!1799 = !DILocation(line: 256, column: 5, scope: !1745)
!1800 = !DILocation(line: 257, column: 1, scope: !1745)
!1801 = distinct !DISubprogram(name: "compute_rhs", scope: !62, file: !62, line: 43, type: !1802, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !44, retainedNodes: !65)
!1802 = !DISubroutineType(types: !1803)
!1803 = !{null, !330, !48, !98, !57}
!1804 = !DILocalVariable(name: "p", arg: 1, scope: !1801, file: !62, line: 43, type: !330)
!1805 = !DILocation(line: 43, column: 46, scope: !1801)
!1806 = !DILocalVariable(name: "vPv", arg: 2, scope: !1801, file: !62, line: 43, type: !48)
!1807 = !DILocation(line: 43, column: 59, scope: !1801)
!1808 = !DILocalVariable(name: "t", arg: 3, scope: !1801, file: !62, line: 43, type: !98)
!1809 = !DILocation(line: 43, column: 85, scope: !1801)
!1810 = !DILocalVariable(name: "y", arg: 4, scope: !1801, file: !62, line: 43, type: !57)
!1811 = !DILocation(line: 43, column: 103, scope: !1801)
!1812 = !DILocalVariable(name: "top_pos", scope: !1801, file: !62, line: 48, type: !1813)
!1813 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !54)
!1814 = !DILocation(line: 48, column: 18, scope: !1801)
!1815 = !DILocation(line: 48, column: 38, scope: !1801)
!1816 = !DILocation(line: 48, column: 30, scope: !1801)
!1817 = !DILocation(line: 48, column: 41, scope: !1801)
!1818 = !DILocation(line: 48, column: 46, scope: !1801)
!1819 = !DILocation(line: 48, column: 52, scope: !1801)
!1820 = !DILocalVariable(name: "m_vec_limbs", scope: !1801, file: !62, line: 49, type: !1813)
!1821 = !DILocation(line: 49, column: 18, scope: !1801)
!1822 = !DILocation(line: 49, column: 50, scope: !1801)
!1823 = !DILocation(line: 49, column: 32, scope: !1801)
!1824 = !DILocation(line: 52, column: 16, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1801, file: !62, line: 52, column: 8)
!1826 = !DILocation(line: 52, column: 8, scope: !1825)
!1827 = !DILocation(line: 52, column: 19, scope: !1825)
!1828 = !DILocation(line: 52, column: 24, scope: !1825)
!1829 = !DILocalVariable(name: "mask", scope: !1830, file: !62, line: 53, type: !49)
!1830 = distinct !DILexicalBlock(scope: !1825, file: !62, line: 52, column: 29)
!1831 = !DILocation(line: 53, column: 18, scope: !1830)
!1832 = !DILocation(line: 54, column: 28, scope: !1830)
!1833 = !DILocation(line: 54, column: 20, scope: !1830)
!1834 = !DILocation(line: 54, column: 31, scope: !1830)
!1835 = !DILocation(line: 54, column: 36, scope: !1830)
!1836 = !DILocation(line: 54, column: 14, scope: !1830)
!1837 = !DILocation(line: 55, column: 14, scope: !1830)
!1838 = !DILocalVariable(name: "i", scope: !1839, file: !62, line: 56, type: !83)
!1839 = distinct !DILexicalBlock(scope: !1830, file: !62, line: 56, column: 9)
!1840 = !DILocation(line: 56, column: 18, scope: !1839)
!1841 = !DILocation(line: 56, column: 14, scope: !1839)
!1842 = !DILocation(line: 56, column: 25, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !1839, file: !62, line: 56, column: 9)
!1844 = !DILocation(line: 56, column: 37, scope: !1843)
!1845 = !DILocation(line: 56, column: 29, scope: !1843)
!1846 = !DILocation(line: 56, column: 48, scope: !1843)
!1847 = !DILocation(line: 56, column: 40, scope: !1843)
!1848 = !DILocation(line: 56, column: 39, scope: !1843)
!1849 = !DILocation(line: 56, column: 27, scope: !1843)
!1850 = !DILocation(line: 56, column: 9, scope: !1839)
!1851 = !DILocation(line: 58, column: 53, scope: !1852)
!1852 = distinct !DILexicalBlock(scope: !1843, file: !62, line: 57, column: 9)
!1853 = !DILocation(line: 58, column: 13, scope: !1852)
!1854 = !DILocation(line: 58, column: 17, scope: !1852)
!1855 = !DILocation(line: 58, column: 19, scope: !1852)
!1856 = !DILocation(line: 58, column: 18, scope: !1852)
!1857 = !DILocation(line: 58, column: 33, scope: !1852)
!1858 = !DILocation(line: 58, column: 31, scope: !1852)
!1859 = !DILocation(line: 58, column: 45, scope: !1852)
!1860 = !DILocation(line: 58, column: 50, scope: !1852)
!1861 = !DILocation(line: 59, column: 9, scope: !1852)
!1862 = !DILocation(line: 56, column: 53, scope: !1843)
!1863 = !DILocation(line: 56, column: 9, scope: !1843)
!1864 = distinct !{!1864, !1850, !1865, !144}
!1865 = !DILocation(line: 59, column: 9, scope: !1839)
!1866 = !DILocation(line: 60, column: 5, scope: !1830)
!1867 = !DILocalVariable(name: "temp", scope: !1801, file: !62, line: 62, type: !1044)
!1868 = !DILocation(line: 62, column: 14, scope: !1801)
!1869 = !DILocalVariable(name: "temp_bytes", scope: !1801, file: !62, line: 63, type: !57)
!1870 = !DILocation(line: 63, column: 20, scope: !1801)
!1871 = !DILocation(line: 63, column: 51, scope: !1801)
!1872 = !DILocalVariable(name: "i", scope: !1873, file: !62, line: 64, type: !83)
!1873 = distinct !DILexicalBlock(scope: !1801, file: !62, line: 64, column: 5)
!1874 = !DILocation(line: 64, column: 14, scope: !1873)
!1875 = !DILocation(line: 64, column: 26, scope: !1873)
!1876 = !DILocation(line: 64, column: 18, scope: !1873)
!1877 = !DILocation(line: 64, column: 29, scope: !1873)
!1878 = !DILocation(line: 64, column: 10, scope: !1873)
!1879 = !DILocation(line: 64, column: 34, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1873, file: !62, line: 64, column: 5)
!1881 = !DILocation(line: 64, column: 36, scope: !1880)
!1882 = !DILocation(line: 64, column: 5, scope: !1873)
!1883 = !DILocalVariable(name: "j", scope: !1884, file: !62, line: 65, type: !83)
!1884 = distinct !DILexicalBlock(scope: !1885, file: !62, line: 65, column: 9)
!1885 = distinct !DILexicalBlock(scope: !1880, file: !62, line: 64, column: 48)
!1886 = !DILocation(line: 65, column: 18, scope: !1884)
!1887 = !DILocation(line: 65, column: 22, scope: !1884)
!1888 = !DILocation(line: 65, column: 14, scope: !1884)
!1889 = !DILocation(line: 65, column: 25, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !1884, file: !62, line: 65, column: 9)
!1891 = !DILocation(line: 65, column: 37, scope: !1890)
!1892 = !DILocation(line: 65, column: 29, scope: !1890)
!1893 = !DILocation(line: 65, column: 27, scope: !1890)
!1894 = !DILocation(line: 65, column: 9, scope: !1884)
!1895 = !DILocalVariable(name: "top", scope: !1896, file: !62, line: 67, type: !47)
!1896 = distinct !DILexicalBlock(scope: !1890, file: !62, line: 65, column: 46)
!1897 = !DILocation(line: 67, column: 27, scope: !1896)
!1898 = !DILocation(line: 67, column: 39, scope: !1896)
!1899 = !DILocation(line: 67, column: 50, scope: !1896)
!1900 = !DILocation(line: 67, column: 34, scope: !1896)
!1901 = !DILocation(line: 67, column: 57, scope: !1896)
!1902 = !DILocation(line: 67, column: 54, scope: !1896)
!1903 = !DILocation(line: 67, column: 66, scope: !1896)
!1904 = !DILocation(line: 67, column: 33, scope: !1896)
!1905 = !DILocation(line: 68, column: 18, scope: !1896)
!1906 = !DILocation(line: 68, column: 29, scope: !1896)
!1907 = !DILocation(line: 68, column: 13, scope: !1896)
!1908 = !DILocation(line: 68, column: 33, scope: !1896)
!1909 = !DILocalVariable(name: "k", scope: !1910, file: !62, line: 69, type: !83)
!1910 = distinct !DILexicalBlock(scope: !1896, file: !62, line: 69, column: 13)
!1911 = !DILocation(line: 69, column: 21, scope: !1910)
!1912 = !DILocation(line: 69, column: 25, scope: !1910)
!1913 = !DILocation(line: 69, column: 37, scope: !1910)
!1914 = !DILocation(line: 69, column: 17, scope: !1910)
!1915 = !DILocation(line: 69, column: 42, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1910, file: !62, line: 69, column: 13)
!1917 = !DILocation(line: 69, column: 43, scope: !1916)
!1918 = !DILocation(line: 69, column: 13, scope: !1910)
!1919 = !DILocation(line: 70, column: 35, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !1916, file: !62, line: 69, column: 52)
!1921 = !DILocation(line: 70, column: 30, scope: !1920)
!1922 = !DILocation(line: 70, column: 38, scope: !1920)
!1923 = !DILocation(line: 70, column: 22, scope: !1920)
!1924 = !DILocation(line: 70, column: 23, scope: !1920)
!1925 = !DILocation(line: 70, column: 17, scope: !1920)
!1926 = !DILocation(line: 70, column: 27, scope: !1920)
!1927 = !DILocation(line: 71, column: 22, scope: !1920)
!1928 = !DILocation(line: 71, column: 17, scope: !1920)
!1929 = !DILocation(line: 71, column: 25, scope: !1920)
!1930 = !DILocation(line: 72, column: 13, scope: !1920)
!1931 = !DILocation(line: 69, column: 49, scope: !1916)
!1932 = !DILocation(line: 69, column: 13, scope: !1916)
!1933 = distinct !{!1933, !1918, !1934, !144}
!1934 = !DILocation(line: 72, column: 13, scope: !1910)
!1935 = !DILocalVariable(name: "jj", scope: !1936, file: !62, line: 74, type: !83)
!1936 = distinct !DILexicalBlock(scope: !1896, file: !62, line: 74, column: 13)
!1937 = !DILocation(line: 74, column: 22, scope: !1936)
!1938 = !DILocation(line: 74, column: 18, scope: !1936)
!1939 = !DILocation(line: 74, column: 30, scope: !1940)
!1940 = distinct !DILexicalBlock(scope: !1936, file: !62, line: 74, column: 13)
!1941 = !DILocation(line: 74, column: 33, scope: !1940)
!1942 = !DILocation(line: 74, column: 13, scope: !1936)
!1943 = !DILocation(line: 75, column: 20, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1945, file: !62, line: 75, column: 20)
!1945 = distinct !DILexicalBlock(scope: !1940, file: !62, line: 74, column: 53)
!1946 = !DILocation(line: 75, column: 22, scope: !1944)
!1947 = !DILocation(line: 75, column: 25, scope: !1944)
!1948 = !DILocation(line: 79, column: 47, scope: !1949)
!1949 = distinct !DILexicalBlock(scope: !1944, file: !62, line: 75, column: 30)
!1950 = !DILocation(line: 79, column: 65, scope: !1949)
!1951 = !DILocation(line: 79, column: 52, scope: !1949)
!1952 = !DILocation(line: 79, column: 68, scope: !1949)
!1953 = !DILocation(line: 79, column: 41, scope: !1949)
!1954 = !DILocation(line: 79, column: 21, scope: !1949)
!1955 = !DILocation(line: 79, column: 32, scope: !1949)
!1956 = !DILocation(line: 79, column: 34, scope: !1949)
!1957 = !DILocation(line: 79, column: 38, scope: !1949)
!1958 = !DILocation(line: 81, column: 17, scope: !1949)
!1959 = !DILocation(line: 86, column: 47, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1944, file: !62, line: 82, column: 22)
!1961 = !DILocation(line: 86, column: 65, scope: !1960)
!1962 = !DILocation(line: 86, column: 52, scope: !1960)
!1963 = !DILocation(line: 86, column: 68, scope: !1960)
!1964 = !DILocation(line: 86, column: 41, scope: !1960)
!1965 = !DILocation(line: 86, column: 73, scope: !1960)
!1966 = !DILocation(line: 86, column: 21, scope: !1960)
!1967 = !DILocation(line: 86, column: 32, scope: !1960)
!1968 = !DILocation(line: 86, column: 34, scope: !1960)
!1969 = !DILocation(line: 86, column: 38, scope: !1960)
!1970 = !DILocation(line: 89, column: 13, scope: !1945)
!1971 = !DILocation(line: 74, column: 49, scope: !1940)
!1972 = !DILocation(line: 74, column: 13, scope: !1940)
!1973 = distinct !{!1973, !1942, !1974, !144}
!1974 = !DILocation(line: 89, column: 13, scope: !1936)
!1975 = !DILocalVariable(name: "k", scope: !1976, file: !62, line: 92, type: !54)
!1976 = distinct !DILexicalBlock(scope: !1896, file: !62, line: 92, column: 13)
!1977 = !DILocation(line: 92, column: 24, scope: !1976)
!1978 = !DILocation(line: 92, column: 17, scope: !1976)
!1979 = !DILocation(line: 92, column: 29, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1976, file: !62, line: 92, column: 13)
!1981 = !DILocation(line: 92, column: 33, scope: !1980)
!1982 = !DILocation(line: 92, column: 31, scope: !1980)
!1983 = !DILocation(line: 92, column: 13, scope: !1976)
!1984 = !DILocation(line: 93, column: 28, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1980, file: !62, line: 92, column: 51)
!1986 = !DILocation(line: 93, column: 34, scope: !1985)
!1987 = !DILocation(line: 93, column: 46, scope: !1985)
!1988 = !DILocation(line: 93, column: 38, scope: !1985)
!1989 = !DILocation(line: 93, column: 36, scope: !1985)
!1990 = !DILocation(line: 93, column: 51, scope: !1985)
!1991 = !DILocation(line: 93, column: 49, scope: !1985)
!1992 = !DILocation(line: 93, column: 56, scope: !1985)
!1993 = !DILocation(line: 93, column: 54, scope: !1985)
!1994 = !DILocation(line: 93, column: 70, scope: !1985)
!1995 = !DILocation(line: 93, column: 68, scope: !1985)
!1996 = !DILocation(line: 93, column: 77, scope: !1985)
!1997 = !DILocation(line: 93, column: 80, scope: !1985)
!1998 = !DILocation(line: 93, column: 78, scope: !1985)
!1999 = !DILocation(line: 93, column: 76, scope: !1985)
!2000 = !DILocation(line: 93, column: 83, scope: !1985)
!2001 = !DILocation(line: 93, column: 89, scope: !1985)
!2002 = !DILocation(line: 93, column: 101, scope: !1985)
!2003 = !DILocation(line: 93, column: 93, scope: !1985)
!2004 = !DILocation(line: 93, column: 91, scope: !1985)
!2005 = !DILocation(line: 93, column: 106, scope: !1985)
!2006 = !DILocation(line: 93, column: 104, scope: !1985)
!2007 = !DILocation(line: 93, column: 111, scope: !1985)
!2008 = !DILocation(line: 93, column: 109, scope: !1985)
!2009 = !DILocation(line: 93, column: 125, scope: !1985)
!2010 = !DILocation(line: 93, column: 123, scope: !1985)
!2011 = !DILocation(line: 93, column: 82, scope: !1985)
!2012 = !DILocation(line: 93, column: 73, scope: !1985)
!2013 = !DILocation(line: 93, column: 22, scope: !1985)
!2014 = !DILocation(line: 93, column: 17, scope: !1985)
!2015 = !DILocation(line: 93, column: 25, scope: !1985)
!2016 = !DILocation(line: 94, column: 13, scope: !1985)
!2017 = !DILocation(line: 92, column: 48, scope: !1980)
!2018 = !DILocation(line: 92, column: 13, scope: !1980)
!2019 = distinct !{!2019, !1983, !2020, !144}
!2020 = !DILocation(line: 94, column: 13, scope: !1976)
!2021 = !DILocation(line: 95, column: 9, scope: !1896)
!2022 = !DILocation(line: 65, column: 42, scope: !1890)
!2023 = !DILocation(line: 65, column: 9, scope: !1890)
!2024 = distinct !{!2024, !1894, !2025, !144}
!2025 = !DILocation(line: 95, column: 9, scope: !1884)
!2026 = !DILocation(line: 96, column: 5, scope: !1885)
!2027 = !DILocation(line: 64, column: 44, scope: !1880)
!2028 = !DILocation(line: 64, column: 5, scope: !1880)
!2029 = distinct !{!2029, !1882, !2030, !144}
!2030 = !DILocation(line: 96, column: 5, scope: !1873)
!2031 = !DILocalVariable(name: "i", scope: !2032, file: !62, line: 99, type: !83)
!2032 = distinct !DILexicalBlock(scope: !1801, file: !62, line: 99, column: 5)
!2033 = !DILocation(line: 99, column: 14, scope: !2032)
!2034 = !DILocation(line: 99, column: 10, scope: !2032)
!2035 = !DILocation(line: 99, column: 21, scope: !2036)
!2036 = distinct !DILexicalBlock(scope: !2032, file: !62, line: 99, column: 5)
!2037 = !DILocation(line: 99, column: 33, scope: !2036)
!2038 = !DILocation(line: 99, column: 25, scope: !2036)
!2039 = !DILocation(line: 99, column: 23, scope: !2036)
!2040 = !DILocation(line: 99, column: 5, scope: !2032)
!2041 = !DILocation(line: 105, column: 18, scope: !2042)
!2042 = distinct !DILexicalBlock(scope: !2036, file: !62, line: 100, column: 5)
!2043 = !DILocation(line: 105, column: 20, scope: !2042)
!2044 = !DILocation(line: 105, column: 28, scope: !2042)
!2045 = !DILocation(line: 105, column: 39, scope: !2042)
!2046 = !DILocation(line: 105, column: 40, scope: !2042)
!2047 = !DILocation(line: 105, column: 44, scope: !2042)
!2048 = !DILocation(line: 105, column: 25, scope: !2042)
!2049 = !DILocation(line: 105, column: 9, scope: !2042)
!2050 = !DILocation(line: 105, column: 11, scope: !2042)
!2051 = !DILocation(line: 105, column: 16, scope: !2042)
!2052 = !DILocation(line: 106, column: 18, scope: !2042)
!2053 = !DILocation(line: 106, column: 20, scope: !2042)
!2054 = !DILocation(line: 106, column: 21, scope: !2042)
!2055 = !DILocation(line: 106, column: 28, scope: !2042)
!2056 = !DILocation(line: 106, column: 39, scope: !2042)
!2057 = !DILocation(line: 106, column: 40, scope: !2042)
!2058 = !DILocation(line: 106, column: 44, scope: !2042)
!2059 = !DILocation(line: 106, column: 25, scope: !2042)
!2060 = !DILocation(line: 106, column: 9, scope: !2042)
!2061 = !DILocation(line: 106, column: 11, scope: !2042)
!2062 = !DILocation(line: 106, column: 12, scope: !2042)
!2063 = !DILocation(line: 106, column: 16, scope: !2042)
!2064 = !DILocation(line: 108, column: 5, scope: !2042)
!2065 = !DILocation(line: 99, column: 38, scope: !2036)
!2066 = !DILocation(line: 99, column: 5, scope: !2036)
!2067 = distinct !{!2067, !2040, !2068, !144}
!2068 = !DILocation(line: 108, column: 5, scope: !2032)
!2069 = !DILocation(line: 109, column: 1, scope: !1801)
!2070 = distinct !DISubprogram(name: "compute_A", scope: !62, file: !62, line: 154, type: !2071, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !44, retainedNodes: !65)
!2071 = !DISubroutineType(types: !2072)
!2072 = !{null, !330, !48, !57}
!2073 = !DILocalVariable(name: "p", arg: 1, scope: !2070, file: !62, line: 154, type: !330)
!2074 = !DILocation(line: 154, column: 44, scope: !2070)
!2075 = !DILocalVariable(name: "VtL", arg: 2, scope: !2070, file: !62, line: 154, type: !48)
!2076 = !DILocation(line: 154, column: 57, scope: !2070)
!2077 = !DILocalVariable(name: "A_out", arg: 3, scope: !2070, file: !62, line: 154, type: !57)
!2078 = !DILocation(line: 154, column: 77, scope: !2070)
!2079 = !DILocalVariable(name: "bits_to_shift", scope: !2070, file: !62, line: 159, type: !83)
!2080 = !DILocation(line: 159, column: 9, scope: !2070)
!2081 = !DILocalVariable(name: "words_to_shift", scope: !2070, file: !62, line: 160, type: !83)
!2082 = !DILocation(line: 160, column: 9, scope: !2070)
!2083 = !DILocalVariable(name: "m_vec_limbs", scope: !2070, file: !62, line: 161, type: !411)
!2084 = !DILocation(line: 161, column: 15, scope: !2070)
!2085 = !DILocation(line: 161, column: 47, scope: !2070)
!2086 = !DILocation(line: 161, column: 29, scope: !2070)
!2087 = !DILocalVariable(name: "A", scope: !2070, file: !62, line: 162, type: !2088)
!2088 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 239616, elements: !2089)
!2089 = !{!2090}
!2090 = !DISubrange(count: 3744)
!2091 = !DILocation(line: 162, column: 14, scope: !2070)
!2092 = !DILocalVariable(name: "A_width", scope: !2070, file: !62, line: 163, type: !54)
!2093 = !DILocation(line: 163, column: 12, scope: !2070)
!2094 = !DILocation(line: 163, column: 32, scope: !2070)
!2095 = !DILocation(line: 163, column: 24, scope: !2070)
!2096 = !DILocation(line: 163, column: 43, scope: !2070)
!2097 = !DILocation(line: 163, column: 35, scope: !2070)
!2098 = !DILocation(line: 163, column: 34, scope: !2070)
!2099 = !DILocation(line: 163, column: 46, scope: !2070)
!2100 = !DILocation(line: 163, column: 51, scope: !2070)
!2101 = !DILocation(line: 163, column: 55, scope: !2070)
!2102 = !DILocalVariable(name: "Mi", scope: !2070, file: !62, line: 164, type: !611)
!2103 = !DILocation(line: 164, column: 21, scope: !2070)
!2104 = !DILocalVariable(name: "Mj", scope: !2070, file: !62, line: 164, type: !611)
!2105 = !DILocation(line: 164, column: 26, scope: !2070)
!2106 = !DILocation(line: 167, column: 16, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !2070, file: !62, line: 167, column: 8)
!2108 = !DILocation(line: 167, column: 8, scope: !2107)
!2109 = !DILocation(line: 167, column: 19, scope: !2107)
!2110 = !DILocation(line: 167, column: 24, scope: !2107)
!2111 = !DILocalVariable(name: "mask", scope: !2112, file: !62, line: 168, type: !49)
!2112 = distinct !DILexicalBlock(scope: !2107, file: !62, line: 167, column: 29)
!2113 = !DILocation(line: 168, column: 18, scope: !2112)
!2114 = !DILocation(line: 169, column: 27, scope: !2112)
!2115 = !DILocation(line: 169, column: 19, scope: !2112)
!2116 = !DILocation(line: 169, column: 30, scope: !2112)
!2117 = !DILocation(line: 169, column: 35, scope: !2112)
!2118 = !DILocation(line: 169, column: 14, scope: !2112)
!2119 = !DILocation(line: 170, column: 14, scope: !2112)
!2120 = !DILocalVariable(name: "i", scope: !2121, file: !62, line: 171, type: !83)
!2121 = distinct !DILexicalBlock(scope: !2112, file: !62, line: 171, column: 9)
!2122 = !DILocation(line: 171, column: 18, scope: !2121)
!2123 = !DILocation(line: 171, column: 14, scope: !2121)
!2124 = !DILocation(line: 171, column: 25, scope: !2125)
!2125 = distinct !DILexicalBlock(scope: !2121, file: !62, line: 171, column: 9)
!2126 = !DILocation(line: 171, column: 37, scope: !2125)
!2127 = !DILocation(line: 171, column: 29, scope: !2125)
!2128 = !DILocation(line: 171, column: 48, scope: !2125)
!2129 = !DILocation(line: 171, column: 40, scope: !2125)
!2130 = !DILocation(line: 171, column: 39, scope: !2125)
!2131 = !DILocation(line: 171, column: 27, scope: !2125)
!2132 = !DILocation(line: 171, column: 9, scope: !2121)
!2133 = !DILocation(line: 173, column: 53, scope: !2134)
!2134 = distinct !DILexicalBlock(scope: !2125, file: !62, line: 172, column: 9)
!2135 = !DILocation(line: 173, column: 13, scope: !2134)
!2136 = !DILocation(line: 173, column: 17, scope: !2134)
!2137 = !DILocation(line: 173, column: 19, scope: !2134)
!2138 = !DILocation(line: 173, column: 18, scope: !2134)
!2139 = !DILocation(line: 173, column: 33, scope: !2134)
!2140 = !DILocation(line: 173, column: 31, scope: !2134)
!2141 = !DILocation(line: 173, column: 45, scope: !2134)
!2142 = !DILocation(line: 173, column: 50, scope: !2134)
!2143 = !DILocation(line: 174, column: 9, scope: !2134)
!2144 = !DILocation(line: 171, column: 53, scope: !2125)
!2145 = !DILocation(line: 171, column: 9, scope: !2125)
!2146 = distinct !{!2146, !2132, !2147, !144}
!2147 = !DILocation(line: 174, column: 9, scope: !2121)
!2148 = !DILocation(line: 175, column: 5, scope: !2112)
!2149 = !DILocalVariable(name: "i", scope: !2150, file: !62, line: 177, type: !83)
!2150 = distinct !DILexicalBlock(scope: !2070, file: !62, line: 177, column: 5)
!2151 = !DILocation(line: 177, column: 14, scope: !2150)
!2152 = !DILocation(line: 177, column: 10, scope: !2150)
!2153 = !DILocation(line: 177, column: 21, scope: !2154)
!2154 = distinct !DILexicalBlock(scope: !2150, file: !62, line: 177, column: 5)
!2155 = !DILocation(line: 177, column: 34, scope: !2154)
!2156 = !DILocation(line: 177, column: 26, scope: !2154)
!2157 = !DILocation(line: 177, column: 37, scope: !2154)
!2158 = !DILocation(line: 177, column: 23, scope: !2154)
!2159 = !DILocation(line: 177, column: 5, scope: !2150)
!2160 = !DILocalVariable(name: "j", scope: !2161, file: !62, line: 178, type: !83)
!2161 = distinct !DILexicalBlock(scope: !2162, file: !62, line: 178, column: 9)
!2162 = distinct !DILexicalBlock(scope: !2154, file: !62, line: 177, column: 47)
!2163 = !DILocation(line: 178, column: 18, scope: !2161)
!2164 = !DILocation(line: 178, column: 30, scope: !2161)
!2165 = !DILocation(line: 178, column: 22, scope: !2161)
!2166 = !DILocation(line: 178, column: 33, scope: !2161)
!2167 = !DILocation(line: 178, column: 14, scope: !2161)
!2168 = !DILocation(line: 178, column: 38, scope: !2169)
!2169 = distinct !DILexicalBlock(scope: !2161, file: !62, line: 178, column: 9)
!2170 = !DILocation(line: 178, column: 43, scope: !2169)
!2171 = !DILocation(line: 178, column: 40, scope: !2169)
!2172 = !DILocation(line: 178, column: 9, scope: !2161)
!2173 = !DILocation(line: 180, column: 18, scope: !2174)
!2174 = distinct !DILexicalBlock(scope: !2169, file: !62, line: 178, column: 51)
!2175 = !DILocation(line: 180, column: 24, scope: !2174)
!2176 = !DILocation(line: 180, column: 28, scope: !2174)
!2177 = !DILocation(line: 180, column: 26, scope: !2174)
!2178 = !DILocation(line: 180, column: 50, scope: !2174)
!2179 = !DILocation(line: 180, column: 42, scope: !2174)
!2180 = !DILocation(line: 180, column: 40, scope: !2174)
!2181 = !DILocation(line: 180, column: 22, scope: !2174)
!2182 = !DILocation(line: 180, column: 16, scope: !2174)
!2183 = !DILocalVariable(name: "c", scope: !2184, file: !62, line: 181, type: !83)
!2184 = distinct !DILexicalBlock(scope: !2174, file: !62, line: 181, column: 13)
!2185 = !DILocation(line: 181, column: 22, scope: !2184)
!2186 = !DILocation(line: 181, column: 18, scope: !2184)
!2187 = !DILocation(line: 181, column: 29, scope: !2188)
!2188 = distinct !DILexicalBlock(scope: !2184, file: !62, line: 181, column: 13)
!2189 = !DILocation(line: 181, column: 41, scope: !2188)
!2190 = !DILocation(line: 181, column: 33, scope: !2188)
!2191 = !DILocation(line: 181, column: 31, scope: !2188)
!2192 = !DILocation(line: 181, column: 13, scope: !2184)
!2193 = !DILocalVariable(name: "k", scope: !2194, file: !62, line: 182, type: !83)
!2194 = distinct !DILexicalBlock(scope: !2195, file: !62, line: 182, column: 17)
!2195 = distinct !DILexicalBlock(scope: !2188, file: !62, line: 181, column: 50)
!2196 = !DILocation(line: 182, column: 26, scope: !2194)
!2197 = !DILocation(line: 182, column: 22, scope: !2194)
!2198 = !DILocation(line: 182, column: 33, scope: !2199)
!2199 = distinct !DILexicalBlock(scope: !2194, file: !62, line: 182, column: 17)
!2200 = !DILocation(line: 182, column: 37, scope: !2199)
!2201 = !DILocation(line: 182, column: 35, scope: !2199)
!2202 = !DILocation(line: 182, column: 17, scope: !2194)
!2203 = !DILocation(line: 184, column: 78, scope: !2204)
!2204 = distinct !DILexicalBlock(scope: !2199, file: !62, line: 183, column: 17)
!2205 = !DILocation(line: 184, column: 81, scope: !2204)
!2206 = !DILocation(line: 184, column: 85, scope: !2204)
!2207 = !DILocation(line: 184, column: 87, scope: !2204)
!2208 = !DILocation(line: 184, column: 86, scope: !2204)
!2209 = !DILocation(line: 184, column: 83, scope: !2204)
!2210 = !DILocation(line: 184, column: 103, scope: !2204)
!2211 = !DILocation(line: 184, column: 100, scope: !2204)
!2212 = !DILocation(line: 184, column: 32, scope: !2204)
!2213 = !DILocation(line: 184, column: 24, scope: !2204)
!2214 = !DILocation(line: 184, column: 37, scope: !2204)
!2215 = !DILocation(line: 184, column: 35, scope: !2204)
!2216 = !DILocation(line: 184, column: 41, scope: !2204)
!2217 = !DILocation(line: 184, column: 39, scope: !2204)
!2218 = !DILocation(line: 184, column: 46, scope: !2204)
!2219 = !DILocation(line: 184, column: 50, scope: !2204)
!2220 = !DILocation(line: 184, column: 48, scope: !2204)
!2221 = !DILocation(line: 184, column: 66, scope: !2204)
!2222 = !DILocation(line: 184, column: 65, scope: !2204)
!2223 = !DILocation(line: 184, column: 43, scope: !2204)
!2224 = !DILocation(line: 184, column: 21, scope: !2204)
!2225 = !DILocation(line: 184, column: 75, scope: !2204)
!2226 = !DILocation(line: 185, column: 24, scope: !2227)
!2227 = distinct !DILexicalBlock(scope: !2204, file: !62, line: 185, column: 24)
!2228 = !DILocation(line: 185, column: 38, scope: !2227)
!2229 = !DILocation(line: 186, column: 86, scope: !2230)
!2230 = distinct !DILexicalBlock(scope: !2227, file: !62, line: 185, column: 42)
!2231 = !DILocation(line: 186, column: 89, scope: !2230)
!2232 = !DILocation(line: 186, column: 93, scope: !2230)
!2233 = !DILocation(line: 186, column: 95, scope: !2230)
!2234 = !DILocation(line: 186, column: 94, scope: !2230)
!2235 = !DILocation(line: 186, column: 91, scope: !2230)
!2236 = !DILocation(line: 186, column: 115, scope: !2230)
!2237 = !DILocation(line: 186, column: 114, scope: !2230)
!2238 = !DILocation(line: 186, column: 108, scope: !2230)
!2239 = !DILocation(line: 186, column: 36, scope: !2230)
!2240 = !DILocation(line: 186, column: 28, scope: !2230)
!2241 = !DILocation(line: 186, column: 41, scope: !2230)
!2242 = !DILocation(line: 186, column: 39, scope: !2230)
!2243 = !DILocation(line: 186, column: 45, scope: !2230)
!2244 = !DILocation(line: 186, column: 43, scope: !2230)
!2245 = !DILocation(line: 186, column: 50, scope: !2230)
!2246 = !DILocation(line: 186, column: 54, scope: !2230)
!2247 = !DILocation(line: 186, column: 52, scope: !2230)
!2248 = !DILocation(line: 186, column: 69, scope: !2230)
!2249 = !DILocation(line: 186, column: 74, scope: !2230)
!2250 = !DILocation(line: 186, column: 73, scope: !2230)
!2251 = !DILocation(line: 186, column: 47, scope: !2230)
!2252 = !DILocation(line: 186, column: 25, scope: !2230)
!2253 = !DILocation(line: 186, column: 83, scope: !2230)
!2254 = !DILocation(line: 187, column: 21, scope: !2230)
!2255 = !DILocation(line: 188, column: 17, scope: !2204)
!2256 = !DILocation(line: 182, column: 51, scope: !2199)
!2257 = !DILocation(line: 182, column: 17, scope: !2199)
!2258 = distinct !{!2258, !2202, !2259, !144}
!2259 = !DILocation(line: 188, column: 17, scope: !2194)
!2260 = !DILocation(line: 189, column: 13, scope: !2195)
!2261 = !DILocation(line: 181, column: 46, scope: !2188)
!2262 = !DILocation(line: 181, column: 13, scope: !2188)
!2263 = distinct !{!2263, !2192, !2264, !144}
!2264 = !DILocation(line: 189, column: 13, scope: !2184)
!2265 = !DILocation(line: 191, column: 17, scope: !2266)
!2266 = distinct !DILexicalBlock(scope: !2174, file: !62, line: 191, column: 17)
!2267 = !DILocation(line: 191, column: 22, scope: !2266)
!2268 = !DILocation(line: 191, column: 19, scope: !2266)
!2269 = !DILocation(line: 192, column: 22, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !2266, file: !62, line: 191, column: 25)
!2271 = !DILocation(line: 192, column: 28, scope: !2270)
!2272 = !DILocation(line: 192, column: 32, scope: !2270)
!2273 = !DILocation(line: 192, column: 30, scope: !2270)
!2274 = !DILocation(line: 192, column: 54, scope: !2270)
!2275 = !DILocation(line: 192, column: 46, scope: !2270)
!2276 = !DILocation(line: 192, column: 44, scope: !2270)
!2277 = !DILocation(line: 192, column: 26, scope: !2270)
!2278 = !DILocation(line: 192, column: 20, scope: !2270)
!2279 = !DILocalVariable(name: "c", scope: !2280, file: !62, line: 193, type: !83)
!2280 = distinct !DILexicalBlock(scope: !2270, file: !62, line: 193, column: 17)
!2281 = !DILocation(line: 193, column: 26, scope: !2280)
!2282 = !DILocation(line: 193, column: 22, scope: !2280)
!2283 = !DILocation(line: 193, column: 33, scope: !2284)
!2284 = distinct !DILexicalBlock(scope: !2280, file: !62, line: 193, column: 17)
!2285 = !DILocation(line: 193, column: 45, scope: !2284)
!2286 = !DILocation(line: 193, column: 37, scope: !2284)
!2287 = !DILocation(line: 193, column: 35, scope: !2284)
!2288 = !DILocation(line: 193, column: 17, scope: !2280)
!2289 = !DILocalVariable(name: "k", scope: !2290, file: !62, line: 194, type: !83)
!2290 = distinct !DILexicalBlock(scope: !2291, file: !62, line: 194, column: 21)
!2291 = distinct !DILexicalBlock(scope: !2284, file: !62, line: 193, column: 54)
!2292 = !DILocation(line: 194, column: 30, scope: !2290)
!2293 = !DILocation(line: 194, column: 26, scope: !2290)
!2294 = !DILocation(line: 194, column: 37, scope: !2295)
!2295 = distinct !DILexicalBlock(scope: !2290, file: !62, line: 194, column: 21)
!2296 = !DILocation(line: 194, column: 41, scope: !2295)
!2297 = !DILocation(line: 194, column: 39, scope: !2295)
!2298 = !DILocation(line: 194, column: 21, scope: !2290)
!2299 = !DILocation(line: 196, column: 81, scope: !2300)
!2300 = distinct !DILexicalBlock(scope: !2295, file: !62, line: 195, column: 21)
!2301 = !DILocation(line: 196, column: 84, scope: !2300)
!2302 = !DILocation(line: 196, column: 88, scope: !2300)
!2303 = !DILocation(line: 196, column: 90, scope: !2300)
!2304 = !DILocation(line: 196, column: 89, scope: !2300)
!2305 = !DILocation(line: 196, column: 86, scope: !2300)
!2306 = !DILocation(line: 196, column: 106, scope: !2300)
!2307 = !DILocation(line: 196, column: 103, scope: !2300)
!2308 = !DILocation(line: 196, column: 35, scope: !2300)
!2309 = !DILocation(line: 196, column: 27, scope: !2300)
!2310 = !DILocation(line: 196, column: 40, scope: !2300)
!2311 = !DILocation(line: 196, column: 38, scope: !2300)
!2312 = !DILocation(line: 196, column: 44, scope: !2300)
!2313 = !DILocation(line: 196, column: 42, scope: !2300)
!2314 = !DILocation(line: 196, column: 49, scope: !2300)
!2315 = !DILocation(line: 196, column: 53, scope: !2300)
!2316 = !DILocation(line: 196, column: 51, scope: !2300)
!2317 = !DILocation(line: 196, column: 69, scope: !2300)
!2318 = !DILocation(line: 196, column: 68, scope: !2300)
!2319 = !DILocation(line: 196, column: 46, scope: !2300)
!2320 = !DILocation(line: 196, column: 25, scope: !2300)
!2321 = !DILocation(line: 196, column: 78, scope: !2300)
!2322 = !DILocation(line: 197, column: 28, scope: !2323)
!2323 = distinct !DILexicalBlock(scope: !2300, file: !62, line: 197, column: 28)
!2324 = !DILocation(line: 197, column: 42, scope: !2323)
!2325 = !DILocation(line: 198, column: 89, scope: !2326)
!2326 = distinct !DILexicalBlock(scope: !2323, file: !62, line: 197, column: 46)
!2327 = !DILocation(line: 198, column: 92, scope: !2326)
!2328 = !DILocation(line: 198, column: 96, scope: !2326)
!2329 = !DILocation(line: 198, column: 98, scope: !2326)
!2330 = !DILocation(line: 198, column: 97, scope: !2326)
!2331 = !DILocation(line: 198, column: 94, scope: !2326)
!2332 = !DILocation(line: 198, column: 118, scope: !2326)
!2333 = !DILocation(line: 198, column: 117, scope: !2326)
!2334 = !DILocation(line: 198, column: 111, scope: !2326)
!2335 = !DILocation(line: 198, column: 39, scope: !2326)
!2336 = !DILocation(line: 198, column: 31, scope: !2326)
!2337 = !DILocation(line: 198, column: 44, scope: !2326)
!2338 = !DILocation(line: 198, column: 42, scope: !2326)
!2339 = !DILocation(line: 198, column: 48, scope: !2326)
!2340 = !DILocation(line: 198, column: 46, scope: !2326)
!2341 = !DILocation(line: 198, column: 53, scope: !2326)
!2342 = !DILocation(line: 198, column: 57, scope: !2326)
!2343 = !DILocation(line: 198, column: 55, scope: !2326)
!2344 = !DILocation(line: 198, column: 72, scope: !2326)
!2345 = !DILocation(line: 198, column: 77, scope: !2326)
!2346 = !DILocation(line: 198, column: 76, scope: !2326)
!2347 = !DILocation(line: 198, column: 50, scope: !2326)
!2348 = !DILocation(line: 198, column: 29, scope: !2326)
!2349 = !DILocation(line: 198, column: 86, scope: !2326)
!2350 = !DILocation(line: 199, column: 25, scope: !2326)
!2351 = !DILocation(line: 200, column: 21, scope: !2300)
!2352 = !DILocation(line: 194, column: 55, scope: !2295)
!2353 = !DILocation(line: 194, column: 21, scope: !2295)
!2354 = distinct !{!2354, !2298, !2355, !144}
!2355 = !DILocation(line: 200, column: 21, scope: !2290)
!2356 = !DILocation(line: 201, column: 17, scope: !2291)
!2357 = !DILocation(line: 193, column: 50, scope: !2284)
!2358 = !DILocation(line: 193, column: 17, scope: !2284)
!2359 = distinct !{!2359, !2288, !2360, !144}
!2360 = !DILocation(line: 201, column: 17, scope: !2280)
!2361 = !DILocation(line: 202, column: 13, scope: !2270)
!2362 = !DILocation(line: 204, column: 27, scope: !2174)
!2363 = !DILocation(line: 205, column: 16, scope: !2364)
!2364 = distinct !DILexicalBlock(scope: !2174, file: !62, line: 205, column: 16)
!2365 = !DILocation(line: 205, column: 30, scope: !2364)
!2366 = !DILocation(line: 206, column: 32, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !2364, file: !62, line: 205, column: 36)
!2368 = !DILocation(line: 207, column: 31, scope: !2367)
!2369 = !DILocation(line: 208, column: 13, scope: !2367)
!2370 = !DILocation(line: 209, column: 9, scope: !2174)
!2371 = !DILocation(line: 178, column: 46, scope: !2169)
!2372 = !DILocation(line: 178, column: 9, scope: !2169)
!2373 = distinct !{!2373, !2172, !2374, !144}
!2374 = !DILocation(line: 209, column: 9, scope: !2161)
!2375 = !DILocation(line: 210, column: 5, scope: !2162)
!2376 = !DILocation(line: 177, column: 42, scope: !2154)
!2377 = !DILocation(line: 177, column: 5, scope: !2154)
!2378 = distinct !{!2378, !2159, !2379, !144}
!2379 = !DILocation(line: 210, column: 5, scope: !2150)
!2380 = !DILocalVariable(name: "c", scope: !2381, file: !62, line: 212, type: !54)
!2381 = distinct !DILexicalBlock(scope: !2070, file: !62, line: 212, column: 5)
!2382 = !DILocation(line: 212, column: 17, scope: !2381)
!2383 = !DILocation(line: 212, column: 10, scope: !2381)
!2384 = !DILocation(line: 212, column: 24, scope: !2385)
!2385 = distinct !DILexicalBlock(scope: !2381, file: !62, line: 212, column: 5)
!2386 = !DILocation(line: 212, column: 28, scope: !2385)
!2387 = !DILocation(line: 212, column: 46, scope: !2385)
!2388 = !DILocation(line: 212, column: 38, scope: !2385)
!2389 = !DILocation(line: 212, column: 60, scope: !2385)
!2390 = !DILocation(line: 212, column: 52, scope: !2385)
!2391 = !DILocation(line: 212, column: 62, scope: !2385)
!2392 = !DILocation(line: 212, column: 74, scope: !2385)
!2393 = !DILocation(line: 212, column: 66, scope: !2385)
!2394 = !DILocation(line: 212, column: 65, scope: !2385)
!2395 = !DILocation(line: 212, column: 76, scope: !2385)
!2396 = !DILocation(line: 212, column: 49, scope: !2385)
!2397 = !DILocation(line: 212, column: 79, scope: !2385)
!2398 = !DILocation(line: 212, column: 83, scope: !2385)
!2399 = !DILocation(line: 212, column: 35, scope: !2385)
!2400 = !DILocation(line: 212, column: 26, scope: !2385)
!2401 = !DILocation(line: 212, column: 5, scope: !2381)
!2402 = !DILocation(line: 214, column: 33, scope: !2403)
!2403 = distinct !DILexicalBlock(scope: !2385, file: !62, line: 213, column: 5)
!2404 = !DILocation(line: 214, column: 37, scope: !2403)
!2405 = !DILocation(line: 214, column: 35, scope: !2403)
!2406 = !DILocation(line: 214, column: 9, scope: !2403)
!2407 = !DILocation(line: 215, column: 5, scope: !2403)
!2408 = !DILocation(line: 212, column: 91, scope: !2385)
!2409 = !DILocation(line: 212, column: 5, scope: !2385)
!2410 = distinct !{!2410, !2401, !2411, !144}
!2411 = !DILocation(line: 215, column: 5, scope: !2381)
!2412 = !DILocalVariable(name: "tab", scope: !2070, file: !62, line: 217, type: !2413)
!2413 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 128, elements: !2414)
!2414 = !{!2415}
!2415 = !DISubrange(count: 16)
!2416 = !DILocation(line: 217, column: 19, scope: !2070)
!2417 = !DILocalVariable(name: "i", scope: !2418, file: !62, line: 218, type: !54)
!2418 = distinct !DILexicalBlock(scope: !2070, file: !62, line: 218, column: 5)
!2419 = !DILocation(line: 218, column: 17, scope: !2418)
!2420 = !DILocation(line: 218, column: 10, scope: !2418)
!2421 = !DILocation(line: 218, column: 24, scope: !2422)
!2422 = distinct !DILexicalBlock(scope: !2418, file: !62, line: 218, column: 5)
!2423 = !DILocation(line: 218, column: 26, scope: !2422)
!2424 = !DILocation(line: 218, column: 5, scope: !2418)
!2425 = !DILocation(line: 220, column: 41, scope: !2426)
!2426 = distinct !DILexicalBlock(scope: !2422, file: !62, line: 219, column: 5)
!2427 = !DILocation(line: 220, column: 28, scope: !2426)
!2428 = !DILocation(line: 220, column: 44, scope: !2426)
!2429 = !DILocation(line: 220, column: 22, scope: !2426)
!2430 = !DILocation(line: 220, column: 15, scope: !2426)
!2431 = !DILocation(line: 220, column: 14, scope: !2426)
!2432 = !DILocation(line: 220, column: 9, scope: !2426)
!2433 = !DILocation(line: 220, column: 20, scope: !2426)
!2434 = !DILocation(line: 221, column: 41, scope: !2426)
!2435 = !DILocation(line: 221, column: 28, scope: !2426)
!2436 = !DILocation(line: 221, column: 44, scope: !2426)
!2437 = !DILocation(line: 221, column: 22, scope: !2426)
!2438 = !DILocation(line: 221, column: 15, scope: !2426)
!2439 = !DILocation(line: 221, column: 14, scope: !2426)
!2440 = !DILocation(line: 221, column: 16, scope: !2426)
!2441 = !DILocation(line: 221, column: 9, scope: !2426)
!2442 = !DILocation(line: 221, column: 20, scope: !2426)
!2443 = !DILocation(line: 222, column: 41, scope: !2426)
!2444 = !DILocation(line: 222, column: 28, scope: !2426)
!2445 = !DILocation(line: 222, column: 44, scope: !2426)
!2446 = !DILocation(line: 222, column: 22, scope: !2426)
!2447 = !DILocation(line: 222, column: 15, scope: !2426)
!2448 = !DILocation(line: 222, column: 14, scope: !2426)
!2449 = !DILocation(line: 222, column: 16, scope: !2426)
!2450 = !DILocation(line: 222, column: 9, scope: !2426)
!2451 = !DILocation(line: 222, column: 20, scope: !2426)
!2452 = !DILocation(line: 223, column: 41, scope: !2426)
!2453 = !DILocation(line: 223, column: 28, scope: !2426)
!2454 = !DILocation(line: 223, column: 44, scope: !2426)
!2455 = !DILocation(line: 223, column: 22, scope: !2426)
!2456 = !DILocation(line: 223, column: 15, scope: !2426)
!2457 = !DILocation(line: 223, column: 14, scope: !2426)
!2458 = !DILocation(line: 223, column: 16, scope: !2426)
!2459 = !DILocation(line: 223, column: 9, scope: !2426)
!2460 = !DILocation(line: 223, column: 20, scope: !2426)
!2461 = !DILocation(line: 224, column: 5, scope: !2426)
!2462 = !DILocation(line: 218, column: 41, scope: !2422)
!2463 = !DILocation(line: 218, column: 5, scope: !2422)
!2464 = distinct !{!2464, !2424, !2465, !144}
!2465 = !DILocation(line: 224, column: 5, scope: !2418)
!2466 = !DILocalVariable(name: "low_bit_in_nibble", scope: !2070, file: !62, line: 226, type: !49)
!2467 = !DILocation(line: 226, column: 14, scope: !2070)
!2468 = !DILocalVariable(name: "c", scope: !2469, file: !62, line: 228, type: !54)
!2469 = distinct !DILexicalBlock(scope: !2070, file: !62, line: 228, column: 5)
!2470 = !DILocation(line: 228, column: 17, scope: !2469)
!2471 = !DILocation(line: 228, column: 10, scope: !2469)
!2472 = !DILocation(line: 228, column: 24, scope: !2473)
!2473 = distinct !DILexicalBlock(scope: !2469, file: !62, line: 228, column: 5)
!2474 = !DILocation(line: 228, column: 28, scope: !2473)
!2475 = !DILocation(line: 228, column: 26, scope: !2473)
!2476 = !DILocation(line: 228, column: 5, scope: !2469)
!2477 = !DILocalVariable(name: "r", scope: !2478, file: !62, line: 230, type: !83)
!2478 = distinct !DILexicalBlock(scope: !2479, file: !62, line: 230, column: 9)
!2479 = distinct !DILexicalBlock(scope: !2473, file: !62, line: 229, column: 5)
!2480 = !DILocation(line: 230, column: 18, scope: !2478)
!2481 = !DILocation(line: 230, column: 30, scope: !2478)
!2482 = !DILocation(line: 230, column: 22, scope: !2478)
!2483 = !DILocation(line: 230, column: 14, scope: !2478)
!2484 = !DILocation(line: 230, column: 34, scope: !2485)
!2485 = distinct !DILexicalBlock(scope: !2478, file: !62, line: 230, column: 9)
!2486 = !DILocation(line: 230, column: 46, scope: !2485)
!2487 = !DILocation(line: 230, column: 38, scope: !2485)
!2488 = !DILocation(line: 230, column: 60, scope: !2485)
!2489 = !DILocation(line: 230, column: 52, scope: !2485)
!2490 = !DILocation(line: 230, column: 62, scope: !2485)
!2491 = !DILocation(line: 230, column: 74, scope: !2485)
!2492 = !DILocation(line: 230, column: 66, scope: !2485)
!2493 = !DILocation(line: 230, column: 65, scope: !2485)
!2494 = !DILocation(line: 230, column: 76, scope: !2485)
!2495 = !DILocation(line: 230, column: 49, scope: !2485)
!2496 = !DILocation(line: 230, column: 36, scope: !2485)
!2497 = !DILocation(line: 230, column: 9, scope: !2478)
!2498 = !DILocalVariable(name: "pos", scope: !2499, file: !62, line: 232, type: !54)
!2499 = distinct !DILexicalBlock(scope: !2485, file: !62, line: 231, column: 9)
!2500 = !DILocation(line: 232, column: 20, scope: !2499)
!2501 = !DILocation(line: 232, column: 27, scope: !2499)
!2502 = !DILocation(line: 232, column: 28, scope: !2499)
!2503 = !DILocation(line: 232, column: 33, scope: !2499)
!2504 = !DILocation(line: 232, column: 32, scope: !2499)
!2505 = !DILocation(line: 232, column: 43, scope: !2499)
!2506 = !DILocation(line: 232, column: 41, scope: !2499)
!2507 = !DILocation(line: 232, column: 48, scope: !2499)
!2508 = !DILocation(line: 232, column: 49, scope: !2499)
!2509 = !DILocation(line: 232, column: 45, scope: !2499)
!2510 = !DILocalVariable(name: "t0", scope: !2499, file: !62, line: 233, type: !49)
!2511 = !DILocation(line: 233, column: 22, scope: !2499)
!2512 = !DILocation(line: 233, column: 30, scope: !2499)
!2513 = !DILocation(line: 233, column: 28, scope: !2499)
!2514 = !DILocation(line: 233, column: 43, scope: !2499)
!2515 = !DILocation(line: 233, column: 41, scope: !2499)
!2516 = !DILocalVariable(name: "t1", scope: !2499, file: !62, line: 234, type: !49)
!2517 = !DILocation(line: 234, column: 22, scope: !2499)
!2518 = !DILocation(line: 234, column: 30, scope: !2499)
!2519 = !DILocation(line: 234, column: 28, scope: !2499)
!2520 = !DILocation(line: 234, column: 35, scope: !2499)
!2521 = !DILocation(line: 234, column: 43, scope: !2499)
!2522 = !DILocation(line: 234, column: 41, scope: !2499)
!2523 = !DILocalVariable(name: "t2", scope: !2499, file: !62, line: 235, type: !49)
!2524 = !DILocation(line: 235, column: 22, scope: !2499)
!2525 = !DILocation(line: 235, column: 30, scope: !2499)
!2526 = !DILocation(line: 235, column: 28, scope: !2499)
!2527 = !DILocation(line: 235, column: 35, scope: !2499)
!2528 = !DILocation(line: 235, column: 43, scope: !2499)
!2529 = !DILocation(line: 235, column: 41, scope: !2499)
!2530 = !DILocalVariable(name: "t3", scope: !2499, file: !62, line: 236, type: !49)
!2531 = !DILocation(line: 236, column: 22, scope: !2499)
!2532 = !DILocation(line: 236, column: 30, scope: !2499)
!2533 = !DILocation(line: 236, column: 28, scope: !2499)
!2534 = !DILocation(line: 236, column: 35, scope: !2499)
!2535 = !DILocation(line: 236, column: 43, scope: !2499)
!2536 = !DILocation(line: 236, column: 41, scope: !2499)
!2537 = !DILocalVariable(name: "t", scope: !2538, file: !62, line: 237, type: !54)
!2538 = distinct !DILexicalBlock(scope: !2499, file: !62, line: 237, column: 13)
!2539 = !DILocation(line: 237, column: 25, scope: !2538)
!2540 = !DILocation(line: 237, column: 18, scope: !2538)
!2541 = !DILocation(line: 237, column: 32, scope: !2542)
!2542 = distinct !DILexicalBlock(scope: !2538, file: !62, line: 237, column: 13)
!2543 = !DILocation(line: 237, column: 34, scope: !2542)
!2544 = !DILocation(line: 237, column: 13, scope: !2538)
!2545 = !DILocation(line: 239, column: 81, scope: !2546)
!2546 = distinct !DILexicalBlock(scope: !2542, file: !62, line: 238, column: 13)
!2547 = !DILocation(line: 239, column: 90, scope: !2546)
!2548 = !DILocation(line: 239, column: 89, scope: !2546)
!2549 = !DILocation(line: 239, column: 91, scope: !2546)
!2550 = !DILocation(line: 239, column: 84, scope: !2546)
!2551 = !DILocation(line: 239, column: 83, scope: !2546)
!2552 = !DILocation(line: 239, column: 97, scope: !2546)
!2553 = !DILocation(line: 239, column: 106, scope: !2546)
!2554 = !DILocation(line: 239, column: 105, scope: !2546)
!2555 = !DILocation(line: 239, column: 107, scope: !2546)
!2556 = !DILocation(line: 239, column: 100, scope: !2546)
!2557 = !DILocation(line: 239, column: 99, scope: !2546)
!2558 = !DILocation(line: 239, column: 95, scope: !2546)
!2559 = !DILocation(line: 239, column: 113, scope: !2546)
!2560 = !DILocation(line: 239, column: 122, scope: !2546)
!2561 = !DILocation(line: 239, column: 121, scope: !2546)
!2562 = !DILocation(line: 239, column: 123, scope: !2546)
!2563 = !DILocation(line: 239, column: 116, scope: !2546)
!2564 = !DILocation(line: 239, column: 115, scope: !2546)
!2565 = !DILocation(line: 239, column: 111, scope: !2546)
!2566 = !DILocation(line: 239, column: 129, scope: !2546)
!2567 = !DILocation(line: 239, column: 138, scope: !2546)
!2568 = !DILocation(line: 239, column: 137, scope: !2546)
!2569 = !DILocation(line: 239, column: 139, scope: !2546)
!2570 = !DILocation(line: 239, column: 132, scope: !2546)
!2571 = !DILocation(line: 239, column: 131, scope: !2546)
!2572 = !DILocation(line: 239, column: 127, scope: !2546)
!2573 = !DILocation(line: 239, column: 21, scope: !2546)
!2574 = !DILocation(line: 239, column: 23, scope: !2546)
!2575 = !DILocation(line: 239, column: 22, scope: !2546)
!2576 = !DILocation(line: 239, column: 33, scope: !2546)
!2577 = !DILocation(line: 239, column: 25, scope: !2546)
!2578 = !DILocation(line: 239, column: 24, scope: !2546)
!2579 = !DILocation(line: 239, column: 36, scope: !2546)
!2580 = !DILocation(line: 239, column: 41, scope: !2546)
!2581 = !DILocation(line: 239, column: 40, scope: !2546)
!2582 = !DILocation(line: 239, column: 51, scope: !2546)
!2583 = !DILocation(line: 239, column: 49, scope: !2546)
!2584 = !DILocation(line: 239, column: 57, scope: !2546)
!2585 = !DILocation(line: 239, column: 59, scope: !2546)
!2586 = !DILocation(line: 239, column: 58, scope: !2546)
!2587 = !DILocation(line: 239, column: 69, scope: !2546)
!2588 = !DILocation(line: 239, column: 61, scope: !2546)
!2589 = !DILocation(line: 239, column: 60, scope: !2546)
!2590 = !DILocation(line: 239, column: 72, scope: !2546)
!2591 = !DILocation(line: 239, column: 53, scope: !2546)
!2592 = !DILocation(line: 239, column: 17, scope: !2546)
!2593 = !DILocation(line: 239, column: 78, scope: !2546)
!2594 = !DILocation(line: 240, column: 13, scope: !2546)
!2595 = !DILocation(line: 237, column: 49, scope: !2542)
!2596 = !DILocation(line: 237, column: 13, scope: !2542)
!2597 = distinct !{!2597, !2544, !2598, !144}
!2598 = !DILocation(line: 240, column: 13, scope: !2538)
!2599 = !DILocation(line: 241, column: 9, scope: !2499)
!2600 = !DILocation(line: 230, column: 82, scope: !2485)
!2601 = !DILocation(line: 230, column: 9, scope: !2485)
!2602 = distinct !{!2602, !2497, !2603, !144}
!2603 = !DILocation(line: 241, column: 9, scope: !2478)
!2604 = !DILocation(line: 242, column: 5, scope: !2479)
!2605 = !DILocation(line: 228, column: 38, scope: !2473)
!2606 = !DILocation(line: 228, column: 5, scope: !2473)
!2607 = distinct !{!2607, !2476, !2608, !144}
!2608 = !DILocation(line: 242, column: 5, scope: !2469)
!2609 = !DILocalVariable(name: "r", scope: !2610, file: !62, line: 250, type: !83)
!2610 = distinct !DILexicalBlock(scope: !2070, file: !62, line: 250, column: 5)
!2611 = !DILocation(line: 250, column: 14, scope: !2610)
!2612 = !DILocation(line: 250, column: 10, scope: !2610)
!2613 = !DILocation(line: 250, column: 21, scope: !2614)
!2614 = distinct !DILexicalBlock(scope: !2610, file: !62, line: 250, column: 5)
!2615 = !DILocation(line: 250, column: 33, scope: !2614)
!2616 = !DILocation(line: 250, column: 25, scope: !2614)
!2617 = !DILocation(line: 250, column: 23, scope: !2614)
!2618 = !DILocation(line: 250, column: 5, scope: !2610)
!2619 = !DILocalVariable(name: "c", scope: !2620, file: !62, line: 252, type: !83)
!2620 = distinct !DILexicalBlock(scope: !2621, file: !62, line: 252, column: 9)
!2621 = distinct !DILexicalBlock(scope: !2614, file: !62, line: 251, column: 5)
!2622 = !DILocation(line: 252, column: 18, scope: !2620)
!2623 = !DILocation(line: 252, column: 14, scope: !2620)
!2624 = !DILocation(line: 252, column: 25, scope: !2625)
!2625 = distinct !DILexicalBlock(scope: !2620, file: !62, line: 252, column: 9)
!2626 = !DILocation(line: 252, column: 42, scope: !2625)
!2627 = !DILocation(line: 252, column: 29, scope: !2625)
!2628 = !DILocation(line: 252, column: 44, scope: !2625)
!2629 = !DILocation(line: 252, column: 27, scope: !2625)
!2630 = !DILocation(line: 252, column: 9, scope: !2620)
!2631 = !DILocalVariable(name: "i", scope: !2632, file: !62, line: 254, type: !83)
!2632 = distinct !DILexicalBlock(scope: !2633, file: !62, line: 254, column: 13)
!2633 = distinct !DILexicalBlock(scope: !2625, file: !62, line: 253, column: 9)
!2634 = !DILocation(line: 254, column: 22, scope: !2632)
!2635 = !DILocation(line: 254, column: 18, scope: !2632)
!2636 = !DILocation(line: 254, column: 29, scope: !2637)
!2637 = distinct !DILexicalBlock(scope: !2632, file: !62, line: 254, column: 13)
!2638 = !DILocation(line: 254, column: 33, scope: !2637)
!2639 = !DILocation(line: 254, column: 31, scope: !2637)
!2640 = !DILocation(line: 254, column: 45, scope: !2637)
!2641 = !DILocation(line: 254, column: 37, scope: !2637)
!2642 = !DILocation(line: 254, column: 35, scope: !2637)
!2643 = !DILocation(line: 254, column: 13, scope: !2632)
!2644 = !DILocation(line: 256, column: 46, scope: !2645)
!2645 = distinct !DILexicalBlock(scope: !2637, file: !62, line: 255, column: 13)
!2646 = !DILocation(line: 256, column: 48, scope: !2645)
!2647 = !DILocation(line: 256, column: 47, scope: !2645)
!2648 = !DILocation(line: 256, column: 55, scope: !2645)
!2649 = !DILocation(line: 256, column: 61, scope: !2645)
!2650 = !DILocation(line: 256, column: 59, scope: !2645)
!2651 = !DILocation(line: 256, column: 65, scope: !2645)
!2652 = !DILocation(line: 256, column: 63, scope: !2645)
!2653 = !DILocation(line: 256, column: 44, scope: !2645)
!2654 = !DILocation(line: 256, column: 69, scope: !2645)
!2655 = !DILocation(line: 256, column: 90, scope: !2645)
!2656 = !DILocation(line: 256, column: 77, scope: !2645)
!2657 = !DILocation(line: 256, column: 94, scope: !2645)
!2658 = !DILocation(line: 256, column: 96, scope: !2645)
!2659 = !DILocation(line: 256, column: 95, scope: !2645)
!2660 = !DILocation(line: 256, column: 92, scope: !2645)
!2661 = !DILocation(line: 256, column: 75, scope: !2645)
!2662 = !DILocation(line: 256, column: 101, scope: !2645)
!2663 = !DILocation(line: 256, column: 99, scope: !2645)
!2664 = !DILocation(line: 256, column: 130, scope: !2645)
!2665 = !DILocation(line: 256, column: 117, scope: !2645)
!2666 = !DILocation(line: 256, column: 132, scope: !2645)
!2667 = !DILocation(line: 256, column: 135, scope: !2645)
!2668 = !DILocation(line: 256, column: 134, scope: !2645)
!2669 = !DILocation(line: 256, column: 104, scope: !2645)
!2670 = !DILocation(line: 256, column: 17, scope: !2645)
!2671 = !DILocation(line: 257, column: 13, scope: !2645)
!2672 = !DILocation(line: 254, column: 50, scope: !2637)
!2673 = !DILocation(line: 254, column: 13, scope: !2637)
!2674 = distinct !{!2674, !2643, !2675, !144}
!2675 = !DILocation(line: 257, column: 13, scope: !2632)
!2676 = !DILocation(line: 258, column: 9, scope: !2633)
!2677 = !DILocation(line: 252, column: 50, scope: !2625)
!2678 = !DILocation(line: 252, column: 9, scope: !2625)
!2679 = distinct !{!2679, !2630, !2680, !144}
!2680 = !DILocation(line: 258, column: 9, scope: !2620)
!2681 = !DILocation(line: 259, column: 5, scope: !2621)
!2682 = !DILocation(line: 250, column: 38, scope: !2614)
!2683 = !DILocation(line: 250, column: 5, scope: !2614)
!2684 = distinct !{!2684, !2618, !2685, !144}
!2685 = !DILocation(line: 259, column: 5, scope: !2610)
!2686 = !DILocation(line: 260, column: 1, scope: !2070)
!2687 = distinct !DISubprogram(name: "mat_mul", scope: !847, file: !847, line: 78, type: !2688, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !44, retainedNodes: !65)
!2688 = !DISubroutineType(types: !2689)
!2689 = !{null, !98, !98, !57, !83, !83, !83}
!2690 = !DILocalVariable(name: "a", arg: 1, scope: !2687, file: !847, line: 78, type: !98)
!2691 = !DILocation(line: 78, column: 49, scope: !2687)
!2692 = !DILocalVariable(name: "b", arg: 2, scope: !2687, file: !847, line: 78, type: !98)
!2693 = !DILocation(line: 78, column: 73, scope: !2687)
!2694 = !DILocalVariable(name: "c", arg: 3, scope: !2687, file: !847, line: 79, type: !57)
!2695 = !DILocation(line: 79, column: 36, scope: !2687)
!2696 = !DILocalVariable(name: "colrow_ab", arg: 4, scope: !2687, file: !847, line: 79, type: !83)
!2697 = !DILocation(line: 79, column: 43, scope: !2687)
!2698 = !DILocalVariable(name: "row_a", arg: 5, scope: !2687, file: !847, line: 79, type: !83)
!2699 = !DILocation(line: 79, column: 58, scope: !2687)
!2700 = !DILocalVariable(name: "col_b", arg: 6, scope: !2687, file: !847, line: 79, type: !83)
!2701 = !DILocation(line: 79, column: 69, scope: !2687)
!2702 = !DILocalVariable(name: "i", scope: !2703, file: !847, line: 80, type: !83)
!2703 = distinct !DILexicalBlock(scope: !2687, file: !847, line: 80, column: 5)
!2704 = !DILocation(line: 80, column: 14, scope: !2703)
!2705 = !DILocation(line: 80, column: 10, scope: !2703)
!2706 = !DILocation(line: 80, column: 21, scope: !2707)
!2707 = distinct !DILexicalBlock(scope: !2703, file: !847, line: 80, column: 5)
!2708 = !DILocation(line: 80, column: 25, scope: !2707)
!2709 = !DILocation(line: 80, column: 23, scope: !2707)
!2710 = !DILocation(line: 80, column: 5, scope: !2703)
!2711 = !DILocalVariable(name: "j", scope: !2712, file: !847, line: 81, type: !83)
!2712 = distinct !DILexicalBlock(scope: !2713, file: !847, line: 81, column: 9)
!2713 = distinct !DILexicalBlock(scope: !2707, file: !847, line: 80, column: 53)
!2714 = !DILocation(line: 81, column: 18, scope: !2712)
!2715 = !DILocation(line: 81, column: 14, scope: !2712)
!2716 = !DILocation(line: 81, column: 25, scope: !2717)
!2717 = distinct !DILexicalBlock(scope: !2712, file: !847, line: 81, column: 9)
!2718 = !DILocation(line: 81, column: 29, scope: !2717)
!2719 = !DILocation(line: 81, column: 27, scope: !2717)
!2720 = !DILocation(line: 81, column: 9, scope: !2712)
!2721 = !DILocation(line: 82, column: 26, scope: !2722)
!2722 = distinct !DILexicalBlock(scope: !2717, file: !847, line: 81, column: 46)
!2723 = !DILocation(line: 82, column: 29, scope: !2722)
!2724 = !DILocation(line: 82, column: 33, scope: !2722)
!2725 = !DILocation(line: 82, column: 31, scope: !2722)
!2726 = !DILocation(line: 82, column: 36, scope: !2722)
!2727 = !DILocation(line: 82, column: 47, scope: !2722)
!2728 = !DILocation(line: 82, column: 18, scope: !2722)
!2729 = !DILocation(line: 82, column: 14, scope: !2722)
!2730 = !DILocation(line: 82, column: 16, scope: !2722)
!2731 = !DILocation(line: 83, column: 9, scope: !2722)
!2732 = !DILocation(line: 81, column: 36, scope: !2717)
!2733 = !DILocation(line: 81, column: 41, scope: !2717)
!2734 = !DILocation(line: 81, column: 9, scope: !2717)
!2735 = distinct !{!2735, !2720, !2736, !144}
!2736 = !DILocation(line: 83, column: 9, scope: !2712)
!2737 = !DILocation(line: 84, column: 5, scope: !2713)
!2738 = !DILocation(line: 80, column: 32, scope: !2707)
!2739 = !DILocation(line: 80, column: 42, scope: !2707)
!2740 = !DILocation(line: 80, column: 39, scope: !2707)
!2741 = !DILocation(line: 80, column: 5, scope: !2707)
!2742 = distinct !{!2742, !2710, !2743, !144}
!2743 = !DILocation(line: 84, column: 5, scope: !2703)
!2744 = !DILocation(line: 85, column: 1, scope: !2687)
!2745 = distinct !DISubprogram(name: "mat_add", scope: !847, file: !847, line: 87, type: !2746, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !44, retainedNodes: !65)
!2746 = !DISubroutineType(types: !2747)
!2747 = !{null, !98, !98, !57, !83, !83}
!2748 = !DILocalVariable(name: "a", arg: 1, scope: !2745, file: !847, line: 87, type: !98)
!2749 = !DILocation(line: 87, column: 49, scope: !2745)
!2750 = !DILocalVariable(name: "b", arg: 2, scope: !2745, file: !847, line: 87, type: !98)
!2751 = !DILocation(line: 87, column: 73, scope: !2745)
!2752 = !DILocalVariable(name: "c", arg: 3, scope: !2745, file: !847, line: 88, type: !57)
!2753 = !DILocation(line: 88, column: 36, scope: !2745)
!2754 = !DILocalVariable(name: "m", arg: 4, scope: !2745, file: !847, line: 88, type: !83)
!2755 = !DILocation(line: 88, column: 43, scope: !2745)
!2756 = !DILocalVariable(name: "n", arg: 5, scope: !2745, file: !847, line: 88, type: !83)
!2757 = !DILocation(line: 88, column: 50, scope: !2745)
!2758 = !DILocalVariable(name: "i", scope: !2759, file: !847, line: 89, type: !83)
!2759 = distinct !DILexicalBlock(scope: !2745, file: !847, line: 89, column: 5)
!2760 = !DILocation(line: 89, column: 14, scope: !2759)
!2761 = !DILocation(line: 89, column: 10, scope: !2759)
!2762 = !DILocation(line: 89, column: 21, scope: !2763)
!2763 = distinct !DILexicalBlock(scope: !2759, file: !847, line: 89, column: 5)
!2764 = !DILocation(line: 89, column: 25, scope: !2763)
!2765 = !DILocation(line: 89, column: 23, scope: !2763)
!2766 = !DILocation(line: 89, column: 5, scope: !2759)
!2767 = !DILocalVariable(name: "j", scope: !2768, file: !847, line: 90, type: !83)
!2768 = distinct !DILexicalBlock(scope: !2769, file: !847, line: 90, column: 9)
!2769 = distinct !DILexicalBlock(scope: !2763, file: !847, line: 89, column: 33)
!2770 = !DILocation(line: 90, column: 18, scope: !2768)
!2771 = !DILocation(line: 90, column: 14, scope: !2768)
!2772 = !DILocation(line: 90, column: 25, scope: !2773)
!2773 = distinct !DILexicalBlock(scope: !2768, file: !847, line: 90, column: 9)
!2774 = !DILocation(line: 90, column: 29, scope: !2773)
!2775 = !DILocation(line: 90, column: 27, scope: !2773)
!2776 = !DILocation(line: 90, column: 9, scope: !2768)
!2777 = !DILocation(line: 91, column: 40, scope: !2778)
!2778 = distinct !DILexicalBlock(scope: !2773, file: !847, line: 90, column: 37)
!2779 = !DILocation(line: 91, column: 44, scope: !2778)
!2780 = !DILocation(line: 91, column: 48, scope: !2778)
!2781 = !DILocation(line: 91, column: 46, scope: !2778)
!2782 = !DILocation(line: 91, column: 38, scope: !2778)
!2783 = !DILocation(line: 91, column: 52, scope: !2778)
!2784 = !DILocation(line: 91, column: 58, scope: !2778)
!2785 = !DILocation(line: 91, column: 62, scope: !2778)
!2786 = !DILocation(line: 91, column: 66, scope: !2778)
!2787 = !DILocation(line: 91, column: 64, scope: !2778)
!2788 = !DILocation(line: 91, column: 56, scope: !2778)
!2789 = !DILocation(line: 91, column: 70, scope: !2778)
!2790 = !DILocation(line: 91, column: 32, scope: !2778)
!2791 = !DILocation(line: 91, column: 15, scope: !2778)
!2792 = !DILocation(line: 91, column: 19, scope: !2778)
!2793 = !DILocation(line: 91, column: 23, scope: !2778)
!2794 = !DILocation(line: 91, column: 21, scope: !2778)
!2795 = !DILocation(line: 91, column: 13, scope: !2778)
!2796 = !DILocation(line: 91, column: 27, scope: !2778)
!2797 = !DILocation(line: 91, column: 30, scope: !2778)
!2798 = !DILocation(line: 92, column: 9, scope: !2778)
!2799 = !DILocation(line: 90, column: 32, scope: !2773)
!2800 = !DILocation(line: 90, column: 9, scope: !2773)
!2801 = distinct !{!2801, !2776, !2802, !144}
!2802 = !DILocation(line: 92, column: 9, scope: !2768)
!2803 = !DILocation(line: 93, column: 5, scope: !2769)
!2804 = !DILocation(line: 89, column: 28, scope: !2763)
!2805 = !DILocation(line: 89, column: 5, scope: !2763)
!2806 = distinct !{!2806, !2766, !2807, !144}
!2807 = !DILocation(line: 93, column: 5, scope: !2759)
!2808 = !DILocation(line: 94, column: 1, scope: !2745)
!2809 = distinct !DISubprogram(name: "encode", scope: !62, file: !62, line: 32, type: !527, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !44, retainedNodes: !65)
!2810 = !DILocalVariable(name: "m", arg: 1, scope: !2809, file: !62, line: 32, type: !98)
!2811 = !DILocation(line: 32, column: 41, scope: !2809)
!2812 = !DILocalVariable(name: "menc", arg: 2, scope: !2809, file: !62, line: 32, type: !57)
!2813 = !DILocation(line: 32, column: 59, scope: !2809)
!2814 = !DILocalVariable(name: "mlen", arg: 3, scope: !2809, file: !62, line: 32, type: !83)
!2815 = !DILocation(line: 32, column: 69, scope: !2809)
!2816 = !DILocalVariable(name: "i", scope: !2809, file: !62, line: 33, type: !83)
!2817 = !DILocation(line: 33, column: 9, scope: !2809)
!2818 = !DILocation(line: 34, column: 12, scope: !2819)
!2819 = distinct !DILexicalBlock(scope: !2809, file: !62, line: 34, column: 5)
!2820 = !DILocation(line: 34, column: 10, scope: !2819)
!2821 = !DILocation(line: 34, column: 17, scope: !2822)
!2822 = distinct !DILexicalBlock(scope: !2819, file: !62, line: 34, column: 5)
!2823 = !DILocation(line: 34, column: 21, scope: !2822)
!2824 = !DILocation(line: 34, column: 26, scope: !2822)
!2825 = !DILocation(line: 34, column: 19, scope: !2822)
!2826 = !DILocation(line: 34, column: 5, scope: !2819)
!2827 = !DILocation(line: 35, column: 21, scope: !2828)
!2828 = distinct !DILexicalBlock(scope: !2822, file: !62, line: 34, column: 44)
!2829 = !DILocation(line: 35, column: 20, scope: !2828)
!2830 = !DILocation(line: 35, column: 19, scope: !2828)
!2831 = !DILocation(line: 35, column: 29, scope: !2828)
!2832 = !DILocation(line: 35, column: 27, scope: !2828)
!2833 = !DILocation(line: 35, column: 36, scope: !2828)
!2834 = !DILocation(line: 35, column: 24, scope: !2828)
!2835 = !DILocation(line: 35, column: 9, scope: !2828)
!2836 = !DILocation(line: 35, column: 14, scope: !2828)
!2837 = !DILocation(line: 35, column: 17, scope: !2828)
!2838 = !DILocation(line: 36, column: 5, scope: !2828)
!2839 = !DILocation(line: 34, column: 31, scope: !2822)
!2840 = !DILocation(line: 34, column: 38, scope: !2822)
!2841 = !DILocation(line: 34, column: 5, scope: !2822)
!2842 = distinct !{!2842, !2826, !2843, !144}
!2843 = !DILocation(line: 36, column: 5, scope: !2819)
!2844 = !DILocation(line: 38, column: 9, scope: !2845)
!2845 = distinct !DILexicalBlock(scope: !2809, file: !62, line: 38, column: 9)
!2846 = !DILocation(line: 38, column: 14, scope: !2845)
!2847 = !DILocation(line: 38, column: 18, scope: !2845)
!2848 = !DILocation(line: 39, column: 21, scope: !2849)
!2849 = distinct !DILexicalBlock(scope: !2845, file: !62, line: 38, column: 24)
!2850 = !DILocation(line: 39, column: 20, scope: !2849)
!2851 = !DILocation(line: 39, column: 9, scope: !2849)
!2852 = !DILocation(line: 39, column: 14, scope: !2849)
!2853 = !DILocation(line: 39, column: 17, scope: !2849)
!2854 = !DILocation(line: 40, column: 5, scope: !2849)
!2855 = !DILocation(line: 41, column: 1, scope: !2809)
!2856 = distinct !DISubprogram(name: "add_f", scope: !847, file: !847, line: 42, type: !2857, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !44, retainedNodes: !65)
!2857 = !DISubroutineType(types: !2858)
!2858 = !{!47, !47, !47}
!2859 = !DILocalVariable(name: "a", arg: 1, scope: !2856, file: !847, line: 42, type: !47)
!2860 = !DILocation(line: 42, column: 49, scope: !2856)
!2861 = !DILocalVariable(name: "b", arg: 2, scope: !2856, file: !847, line: 42, type: !47)
!2862 = !DILocation(line: 42, column: 66, scope: !2856)
!2863 = !DILocation(line: 43, column: 12, scope: !2856)
!2864 = !DILocation(line: 43, column: 16, scope: !2856)
!2865 = !DILocation(line: 43, column: 14, scope: !2856)
!2866 = !DILocation(line: 43, column: 5, scope: !2856)
!2867 = distinct !DISubprogram(name: "lincomb", scope: !847, file: !847, line: 69, type: !2868, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !44, retainedNodes: !65)
!2868 = !DISubroutineType(types: !2869)
!2869 = !{!47, !98, !98, !83, !83}
!2870 = !DILocalVariable(name: "a", arg: 1, scope: !2867, file: !847, line: 69, type: !98)
!2871 = !DILocation(line: 69, column: 58, scope: !2867)
!2872 = !DILocalVariable(name: "b", arg: 2, scope: !2867, file: !847, line: 70, type: !98)
!2873 = !DILocation(line: 70, column: 58, scope: !2867)
!2874 = !DILocalVariable(name: "n", arg: 3, scope: !2867, file: !847, line: 70, type: !83)
!2875 = !DILocation(line: 70, column: 65, scope: !2867)
!2876 = !DILocalVariable(name: "m", arg: 4, scope: !2867, file: !847, line: 70, type: !83)
!2877 = !DILocation(line: 70, column: 72, scope: !2867)
!2878 = !DILocalVariable(name: "ret", scope: !2867, file: !847, line: 71, type: !47)
!2879 = !DILocation(line: 71, column: 19, scope: !2867)
!2880 = !DILocalVariable(name: "i", scope: !2881, file: !847, line: 72, type: !83)
!2881 = distinct !DILexicalBlock(scope: !2867, file: !847, line: 72, column: 5)
!2882 = !DILocation(line: 72, column: 14, scope: !2881)
!2883 = !DILocation(line: 72, column: 10, scope: !2881)
!2884 = !DILocation(line: 72, column: 21, scope: !2885)
!2885 = distinct !DILexicalBlock(scope: !2881, file: !847, line: 72, column: 5)
!2886 = !DILocation(line: 72, column: 25, scope: !2885)
!2887 = !DILocation(line: 72, column: 23, scope: !2885)
!2888 = !DILocation(line: 72, column: 5, scope: !2881)
!2889 = !DILocation(line: 73, column: 27, scope: !2890)
!2890 = distinct !DILexicalBlock(scope: !2885, file: !847, line: 72, column: 41)
!2891 = !DILocation(line: 73, column: 29, scope: !2890)
!2892 = !DILocation(line: 73, column: 34, scope: !2890)
!2893 = !DILocation(line: 73, column: 33, scope: !2890)
!2894 = !DILocation(line: 73, column: 21, scope: !2890)
!2895 = !DILocation(line: 73, column: 38, scope: !2890)
!2896 = !DILocation(line: 73, column: 15, scope: !2890)
!2897 = !DILocation(line: 73, column: 13, scope: !2890)
!2898 = !DILocation(line: 74, column: 5, scope: !2890)
!2899 = !DILocation(line: 72, column: 28, scope: !2885)
!2900 = !DILocation(line: 72, column: 38, scope: !2885)
!2901 = !DILocation(line: 72, column: 35, scope: !2885)
!2902 = !DILocation(line: 72, column: 5, scope: !2885)
!2903 = distinct !{!2903, !2888, !2904, !144}
!2904 = !DILocation(line: 74, column: 5, scope: !2881)
!2905 = !DILocation(line: 75, column: 12, scope: !2867)
!2906 = !DILocation(line: 75, column: 5, scope: !2867)
!2907 = distinct !DISubprogram(name: "mul_f", scope: !847, file: !847, line: 8, type: !2857, scopeLine: 8, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !44, retainedNodes: !65)
!2908 = !DILocalVariable(name: "a", arg: 1, scope: !2907, file: !847, line: 8, type: !47)
!2909 = !DILocation(line: 8, column: 49, scope: !2907)
!2910 = !DILocalVariable(name: "b", arg: 2, scope: !2907, file: !847, line: 8, type: !47)
!2911 = !DILocation(line: 8, column: 66, scope: !2907)
!2912 = !DILocalVariable(name: "p", scope: !2907, file: !847, line: 10, type: !47)
!2913 = !DILocation(line: 10, column: 19, scope: !2907)
!2914 = !DILocation(line: 13, column: 10, scope: !2907)
!2915 = !DILocation(line: 13, column: 7, scope: !2907)
!2916 = !DILocation(line: 16, column: 11, scope: !2907)
!2917 = !DILocation(line: 16, column: 13, scope: !2907)
!2918 = !DILocation(line: 16, column: 18, scope: !2907)
!2919 = !DILocation(line: 16, column: 17, scope: !2907)
!2920 = !DILocation(line: 16, column: 10, scope: !2907)
!2921 = !DILocation(line: 16, column: 8, scope: !2907)
!2922 = !DILocation(line: 17, column: 11, scope: !2907)
!2923 = !DILocation(line: 17, column: 13, scope: !2907)
!2924 = !DILocation(line: 17, column: 18, scope: !2907)
!2925 = !DILocation(line: 17, column: 17, scope: !2907)
!2926 = !DILocation(line: 17, column: 7, scope: !2907)
!2927 = !DILocation(line: 18, column: 11, scope: !2907)
!2928 = !DILocation(line: 18, column: 13, scope: !2907)
!2929 = !DILocation(line: 18, column: 18, scope: !2907)
!2930 = !DILocation(line: 18, column: 17, scope: !2907)
!2931 = !DILocation(line: 18, column: 7, scope: !2907)
!2932 = !DILocation(line: 19, column: 11, scope: !2907)
!2933 = !DILocation(line: 19, column: 13, scope: !2907)
!2934 = !DILocation(line: 19, column: 18, scope: !2907)
!2935 = !DILocation(line: 19, column: 17, scope: !2907)
!2936 = !DILocation(line: 19, column: 7, scope: !2907)
!2937 = !DILocalVariable(name: "top_p", scope: !2907, file: !847, line: 22, type: !47)
!2938 = !DILocation(line: 22, column: 19, scope: !2907)
!2939 = !DILocation(line: 22, column: 27, scope: !2907)
!2940 = !DILocation(line: 22, column: 29, scope: !2907)
!2941 = !DILocalVariable(name: "out", scope: !2907, file: !847, line: 23, type: !47)
!2942 = !DILocation(line: 23, column: 19, scope: !2907)
!2943 = !DILocation(line: 23, column: 26, scope: !2907)
!2944 = !DILocation(line: 23, column: 31, scope: !2907)
!2945 = !DILocation(line: 23, column: 37, scope: !2907)
!2946 = !DILocation(line: 23, column: 28, scope: !2907)
!2947 = !DILocation(line: 23, column: 46, scope: !2907)
!2948 = !DILocation(line: 23, column: 52, scope: !2907)
!2949 = !DILocation(line: 23, column: 43, scope: !2907)
!2950 = !DILocation(line: 23, column: 59, scope: !2907)
!2951 = !DILocation(line: 23, column: 25, scope: !2907)
!2952 = !DILocation(line: 24, column: 12, scope: !2907)
!2953 = !DILocation(line: 24, column: 5, scope: !2907)
!2954 = !DILocalVariable(name: "M", arg: 1, scope: !61, file: !62, line: 111, type: !48)
!2955 = !DILocation(line: 111, column: 47, scope: !61)
!2956 = !DILocalVariable(name: "i", scope: !2957, file: !62, line: 117, type: !54)
!2957 = distinct !DILexicalBlock(scope: !61, file: !62, line: 117, column: 5)
!2958 = !DILocation(line: 117, column: 17, scope: !2957)
!2959 = !DILocation(line: 117, column: 10, scope: !2957)
!2960 = !DILocation(line: 117, column: 24, scope: !2961)
!2961 = distinct !DILexicalBlock(scope: !2957, file: !62, line: 117, column: 5)
!2962 = !DILocation(line: 117, column: 26, scope: !2961)
!2963 = !DILocation(line: 117, column: 5, scope: !2957)
!2964 = !DILocalVariable(name: "t", scope: !2965, file: !62, line: 119, type: !49)
!2965 = distinct !DILexicalBlock(scope: !2961, file: !62, line: 118, column: 5)
!2966 = !DILocation(line: 119, column: 18, scope: !2965)
!2967 = !DILocation(line: 119, column: 24, scope: !2965)
!2968 = !DILocation(line: 119, column: 26, scope: !2965)
!2969 = !DILocation(line: 119, column: 29, scope: !2965)
!2970 = !DILocation(line: 119, column: 38, scope: !2965)
!2971 = !DILocation(line: 119, column: 40, scope: !2965)
!2972 = !DILocation(line: 119, column: 41, scope: !2965)
!2973 = !DILocation(line: 119, column: 36, scope: !2965)
!2974 = !DILocation(line: 119, column: 46, scope: !2965)
!2975 = !DILocation(line: 120, column: 19, scope: !2965)
!2976 = !DILocation(line: 120, column: 21, scope: !2965)
!2977 = !DILocation(line: 120, column: 9, scope: !2965)
!2978 = !DILocation(line: 120, column: 11, scope: !2965)
!2979 = !DILocation(line: 120, column: 16, scope: !2965)
!2980 = !DILocation(line: 121, column: 19, scope: !2965)
!2981 = !DILocation(line: 121, column: 9, scope: !2965)
!2982 = !DILocation(line: 121, column: 11, scope: !2965)
!2983 = !DILocation(line: 121, column: 12, scope: !2965)
!2984 = !DILocation(line: 121, column: 16, scope: !2965)
!2985 = !DILocation(line: 122, column: 5, scope: !2965)
!2986 = !DILocation(line: 117, column: 33, scope: !2961)
!2987 = !DILocation(line: 117, column: 5, scope: !2961)
!2988 = distinct !{!2988, !2963, !2989, !144}
!2989 = !DILocation(line: 122, column: 5, scope: !2957)
!2990 = !DILocalVariable(name: "i", scope: !2991, file: !62, line: 124, type: !54)
!2991 = distinct !DILexicalBlock(scope: !61, file: !62, line: 124, column: 5)
!2992 = !DILocation(line: 124, column: 17, scope: !2991)
!2993 = !DILocation(line: 124, column: 10, scope: !2991)
!2994 = !DILocation(line: 124, column: 24, scope: !2995)
!2995 = distinct !DILexicalBlock(scope: !2991, file: !62, line: 124, column: 5)
!2996 = !DILocation(line: 124, column: 26, scope: !2995)
!2997 = !DILocation(line: 124, column: 5, scope: !2991)
!2998 = !DILocalVariable(name: "t0", scope: !2999, file: !62, line: 126, type: !49)
!2999 = distinct !DILexicalBlock(scope: !2995, file: !62, line: 125, column: 5)
!3000 = !DILocation(line: 126, column: 18, scope: !2999)
!3001 = !DILocation(line: 126, column: 25, scope: !2999)
!3002 = !DILocation(line: 126, column: 27, scope: !2999)
!3003 = !DILocation(line: 126, column: 32, scope: !2999)
!3004 = !DILocation(line: 126, column: 40, scope: !2999)
!3005 = !DILocation(line: 126, column: 42, scope: !2999)
!3006 = !DILocation(line: 126, column: 43, scope: !2999)
!3007 = !DILocation(line: 126, column: 38, scope: !2999)
!3008 = !DILocation(line: 126, column: 48, scope: !2999)
!3009 = !DILocalVariable(name: "t1", scope: !2999, file: !62, line: 127, type: !49)
!3010 = !DILocation(line: 127, column: 18, scope: !2999)
!3011 = !DILocation(line: 127, column: 25, scope: !2999)
!3012 = !DILocation(line: 127, column: 27, scope: !2999)
!3013 = !DILocation(line: 127, column: 28, scope: !2999)
!3014 = !DILocation(line: 127, column: 32, scope: !2999)
!3015 = !DILocation(line: 127, column: 40, scope: !2999)
!3016 = !DILocation(line: 127, column: 42, scope: !2999)
!3017 = !DILocation(line: 127, column: 43, scope: !2999)
!3018 = !DILocation(line: 127, column: 38, scope: !2999)
!3019 = !DILocation(line: 127, column: 48, scope: !2999)
!3020 = !DILocation(line: 128, column: 20, scope: !2999)
!3021 = !DILocation(line: 128, column: 23, scope: !2999)
!3022 = !DILocation(line: 128, column: 9, scope: !2999)
!3023 = !DILocation(line: 128, column: 11, scope: !2999)
!3024 = !DILocation(line: 128, column: 16, scope: !2999)
!3025 = !DILocation(line: 129, column: 20, scope: !2999)
!3026 = !DILocation(line: 129, column: 23, scope: !2999)
!3027 = !DILocation(line: 129, column: 9, scope: !2999)
!3028 = !DILocation(line: 129, column: 11, scope: !2999)
!3029 = !DILocation(line: 129, column: 12, scope: !2999)
!3030 = !DILocation(line: 129, column: 16, scope: !2999)
!3031 = !DILocation(line: 130, column: 19, scope: !2999)
!3032 = !DILocation(line: 130, column: 9, scope: !2999)
!3033 = !DILocation(line: 130, column: 11, scope: !2999)
!3034 = !DILocation(line: 130, column: 12, scope: !2999)
!3035 = !DILocation(line: 130, column: 16, scope: !2999)
!3036 = !DILocation(line: 131, column: 19, scope: !2999)
!3037 = !DILocation(line: 131, column: 9, scope: !2999)
!3038 = !DILocation(line: 131, column: 11, scope: !2999)
!3039 = !DILocation(line: 131, column: 12, scope: !2999)
!3040 = !DILocation(line: 131, column: 16, scope: !2999)
!3041 = !DILocation(line: 132, column: 5, scope: !2999)
!3042 = !DILocation(line: 124, column: 33, scope: !2995)
!3043 = !DILocation(line: 124, column: 5, scope: !2995)
!3044 = distinct !{!3044, !2997, !3045, !144}
!3045 = !DILocation(line: 132, column: 5, scope: !2991)
!3046 = !DILocalVariable(name: "i", scope: !3047, file: !62, line: 134, type: !54)
!3047 = distinct !DILexicalBlock(scope: !61, file: !62, line: 134, column: 5)
!3048 = !DILocation(line: 134, column: 17, scope: !3047)
!3049 = !DILocation(line: 134, column: 10, scope: !3047)
!3050 = !DILocation(line: 134, column: 24, scope: !3051)
!3051 = distinct !DILexicalBlock(scope: !3047, file: !62, line: 134, column: 5)
!3052 = !DILocation(line: 134, column: 26, scope: !3051)
!3053 = !DILocation(line: 134, column: 5, scope: !3047)
!3054 = !DILocalVariable(name: "t0", scope: !3055, file: !62, line: 136, type: !49)
!3055 = distinct !DILexicalBlock(scope: !3051, file: !62, line: 135, column: 5)
!3056 = !DILocation(line: 136, column: 18, scope: !3055)
!3057 = !DILocation(line: 136, column: 25, scope: !3055)
!3058 = !DILocation(line: 136, column: 27, scope: !3055)
!3059 = !DILocation(line: 136, column: 32, scope: !3055)
!3060 = !DILocation(line: 136, column: 41, scope: !3055)
!3061 = !DILocation(line: 136, column: 43, scope: !3055)
!3062 = !DILocation(line: 136, column: 44, scope: !3055)
!3063 = !DILocation(line: 136, column: 39, scope: !3055)
!3064 = !DILocation(line: 136, column: 50, scope: !3055)
!3065 = !DILocalVariable(name: "t1", scope: !3055, file: !62, line: 137, type: !49)
!3066 = !DILocation(line: 137, column: 18, scope: !3055)
!3067 = !DILocation(line: 137, column: 25, scope: !3055)
!3068 = !DILocation(line: 137, column: 27, scope: !3055)
!3069 = !DILocation(line: 137, column: 28, scope: !3055)
!3070 = !DILocation(line: 137, column: 32, scope: !3055)
!3071 = !DILocation(line: 137, column: 41, scope: !3055)
!3072 = !DILocation(line: 137, column: 43, scope: !3055)
!3073 = !DILocation(line: 137, column: 44, scope: !3055)
!3074 = !DILocation(line: 137, column: 39, scope: !3055)
!3075 = !DILocation(line: 137, column: 50, scope: !3055)
!3076 = !DILocation(line: 139, column: 20, scope: !3055)
!3077 = !DILocation(line: 139, column: 23, scope: !3055)
!3078 = !DILocation(line: 139, column: 9, scope: !3055)
!3079 = !DILocation(line: 139, column: 11, scope: !3055)
!3080 = !DILocation(line: 139, column: 17, scope: !3055)
!3081 = !DILocation(line: 140, column: 20, scope: !3055)
!3082 = !DILocation(line: 140, column: 23, scope: !3055)
!3083 = !DILocation(line: 140, column: 9, scope: !3055)
!3084 = !DILocation(line: 140, column: 11, scope: !3055)
!3085 = !DILocation(line: 140, column: 12, scope: !3055)
!3086 = !DILocation(line: 140, column: 17, scope: !3055)
!3087 = !DILocation(line: 141, column: 20, scope: !3055)
!3088 = !DILocation(line: 141, column: 9, scope: !3055)
!3089 = !DILocation(line: 141, column: 11, scope: !3055)
!3090 = !DILocation(line: 141, column: 12, scope: !3055)
!3091 = !DILocation(line: 141, column: 17, scope: !3055)
!3092 = !DILocation(line: 142, column: 20, scope: !3055)
!3093 = !DILocation(line: 142, column: 9, scope: !3055)
!3094 = !DILocation(line: 142, column: 11, scope: !3055)
!3095 = !DILocation(line: 142, column: 12, scope: !3055)
!3096 = !DILocation(line: 142, column: 17, scope: !3055)
!3097 = !DILocation(line: 143, column: 5, scope: !3055)
!3098 = !DILocation(line: 134, column: 32, scope: !3051)
!3099 = !DILocation(line: 134, column: 5, scope: !3051)
!3100 = distinct !{!3100, !3053, !3101, !144}
!3101 = !DILocation(line: 143, column: 5, scope: !3047)
!3102 = !DILocalVariable(name: "i", scope: !3103, file: !62, line: 145, type: !54)
!3103 = distinct !DILexicalBlock(scope: !61, file: !62, line: 145, column: 5)
!3104 = !DILocation(line: 145, column: 17, scope: !3103)
!3105 = !DILocation(line: 145, column: 10, scope: !3103)
!3106 = !DILocation(line: 145, column: 24, scope: !3107)
!3107 = distinct !DILexicalBlock(scope: !3103, file: !62, line: 145, column: 5)
!3108 = !DILocation(line: 145, column: 26, scope: !3107)
!3109 = !DILocation(line: 145, column: 5, scope: !3103)
!3110 = !DILocalVariable(name: "t", scope: !3111, file: !62, line: 147, type: !49)
!3111 = distinct !DILexicalBlock(scope: !3107, file: !62, line: 146, column: 5)
!3112 = !DILocation(line: 147, column: 18, scope: !3111)
!3113 = !DILocation(line: 147, column: 24, scope: !3111)
!3114 = !DILocation(line: 147, column: 26, scope: !3111)
!3115 = !DILocation(line: 147, column: 28, scope: !3111)
!3116 = !DILocation(line: 147, column: 36, scope: !3111)
!3117 = !DILocation(line: 147, column: 38, scope: !3111)
!3118 = !DILocation(line: 147, column: 39, scope: !3111)
!3119 = !DILocation(line: 147, column: 34, scope: !3111)
!3120 = !DILocation(line: 147, column: 44, scope: !3111)
!3121 = !DILocation(line: 148, column: 19, scope: !3111)
!3122 = !DILocation(line: 148, column: 21, scope: !3111)
!3123 = !DILocation(line: 148, column: 9, scope: !3111)
!3124 = !DILocation(line: 148, column: 11, scope: !3111)
!3125 = !DILocation(line: 148, column: 16, scope: !3111)
!3126 = !DILocation(line: 149, column: 19, scope: !3111)
!3127 = !DILocation(line: 149, column: 9, scope: !3111)
!3128 = !DILocation(line: 149, column: 11, scope: !3111)
!3129 = !DILocation(line: 149, column: 12, scope: !3111)
!3130 = !DILocation(line: 149, column: 16, scope: !3111)
!3131 = !DILocation(line: 150, column: 5, scope: !3111)
!3132 = !DILocation(line: 145, column: 32, scope: !3107)
!3133 = !DILocation(line: 145, column: 5, scope: !3107)
!3134 = distinct !{!3134, !3109, !3135, !144}
!3135 = !DILocation(line: 150, column: 5, scope: !3103)
!3136 = !DILocation(line: 151, column: 1, scope: !61)
!3137 = distinct !DISubprogram(name: "mul_add_mat_x_m_mat", scope: !608, file: !608, line: 61, type: !723, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !44, retainedNodes: !65)
!3138 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !3137, file: !608, line: 61, type: !411)
!3139 = !DILocation(line: 61, column: 36, scope: !3137)
!3140 = !DILocalVariable(name: "mat", arg: 2, scope: !3137, file: !608, line: 61, type: !98)
!3141 = !DILocation(line: 61, column: 70, scope: !3137)
!3142 = !DILocalVariable(name: "bs_mat", arg: 3, scope: !3137, file: !608, line: 61, type: !611)
!3143 = !DILocation(line: 61, column: 91, scope: !3137)
!3144 = !DILocalVariable(name: "acc", arg: 4, scope: !3137, file: !608, line: 61, type: !48)
!3145 = !DILocation(line: 61, column: 109, scope: !3137)
!3146 = !DILocalVariable(name: "mat_rows", arg: 5, scope: !3137, file: !608, line: 62, type: !411)
!3147 = !DILocation(line: 62, column: 36, scope: !3137)
!3148 = !DILocalVariable(name: "mat_cols", arg: 6, scope: !3137, file: !608, line: 62, type: !411)
!3149 = !DILocation(line: 62, column: 56, scope: !3137)
!3150 = !DILocalVariable(name: "bs_mat_cols", arg: 7, scope: !3137, file: !608, line: 62, type: !411)
!3151 = !DILocation(line: 62, column: 76, scope: !3137)
!3152 = !DILocalVariable(name: "r", scope: !3153, file: !608, line: 64, type: !83)
!3153 = distinct !DILexicalBlock(scope: !3137, file: !608, line: 64, column: 5)
!3154 = !DILocation(line: 64, column: 14, scope: !3153)
!3155 = !DILocation(line: 64, column: 10, scope: !3153)
!3156 = !DILocation(line: 64, column: 21, scope: !3157)
!3157 = distinct !DILexicalBlock(scope: !3153, file: !608, line: 64, column: 5)
!3158 = !DILocation(line: 64, column: 25, scope: !3157)
!3159 = !DILocation(line: 64, column: 23, scope: !3157)
!3160 = !DILocation(line: 64, column: 5, scope: !3153)
!3161 = !DILocalVariable(name: "c", scope: !3162, file: !608, line: 65, type: !83)
!3162 = distinct !DILexicalBlock(scope: !3163, file: !608, line: 65, column: 9)
!3163 = distinct !DILexicalBlock(scope: !3157, file: !608, line: 64, column: 40)
!3164 = !DILocation(line: 65, column: 18, scope: !3162)
!3165 = !DILocation(line: 65, column: 14, scope: !3162)
!3166 = !DILocation(line: 65, column: 25, scope: !3167)
!3167 = distinct !DILexicalBlock(scope: !3162, file: !608, line: 65, column: 9)
!3168 = !DILocation(line: 65, column: 29, scope: !3167)
!3169 = !DILocation(line: 65, column: 27, scope: !3167)
!3170 = !DILocation(line: 65, column: 9, scope: !3162)
!3171 = !DILocalVariable(name: "k", scope: !3172, file: !608, line: 66, type: !83)
!3172 = distinct !DILexicalBlock(scope: !3173, file: !608, line: 66, column: 13)
!3173 = distinct !DILexicalBlock(scope: !3167, file: !608, line: 65, column: 44)
!3174 = !DILocation(line: 66, column: 22, scope: !3172)
!3175 = !DILocation(line: 66, column: 18, scope: !3172)
!3176 = !DILocation(line: 66, column: 29, scope: !3177)
!3177 = distinct !DILexicalBlock(scope: !3172, file: !608, line: 66, column: 13)
!3178 = !DILocation(line: 66, column: 33, scope: !3177)
!3179 = !DILocation(line: 66, column: 31, scope: !3177)
!3180 = !DILocation(line: 66, column: 13, scope: !3172)
!3181 = !DILocation(line: 67, column: 31, scope: !3182)
!3182 = distinct !DILexicalBlock(scope: !3177, file: !608, line: 66, column: 54)
!3183 = !DILocation(line: 67, column: 44, scope: !3182)
!3184 = !DILocation(line: 67, column: 53, scope: !3182)
!3185 = !DILocation(line: 67, column: 68, scope: !3182)
!3186 = !DILocation(line: 67, column: 72, scope: !3182)
!3187 = !DILocation(line: 67, column: 70, scope: !3182)
!3188 = !DILocation(line: 67, column: 86, scope: !3182)
!3189 = !DILocation(line: 67, column: 84, scope: !3182)
!3190 = !DILocation(line: 67, column: 65, scope: !3182)
!3191 = !DILocation(line: 67, column: 51, scope: !3182)
!3192 = !DILocation(line: 67, column: 90, scope: !3182)
!3193 = !DILocation(line: 67, column: 94, scope: !3182)
!3194 = !DILocation(line: 67, column: 98, scope: !3182)
!3195 = !DILocation(line: 67, column: 96, scope: !3182)
!3196 = !DILocation(line: 67, column: 109, scope: !3182)
!3197 = !DILocation(line: 67, column: 107, scope: !3182)
!3198 = !DILocation(line: 67, column: 113, scope: !3182)
!3199 = !DILocation(line: 67, column: 119, scope: !3182)
!3200 = !DILocation(line: 67, column: 134, scope: !3182)
!3201 = !DILocation(line: 67, column: 138, scope: !3182)
!3202 = !DILocation(line: 67, column: 136, scope: !3182)
!3203 = !DILocation(line: 67, column: 152, scope: !3182)
!3204 = !DILocation(line: 67, column: 150, scope: !3182)
!3205 = !DILocation(line: 67, column: 131, scope: !3182)
!3206 = !DILocation(line: 67, column: 117, scope: !3182)
!3207 = !DILocation(line: 67, column: 17, scope: !3182)
!3208 = !DILocation(line: 68, column: 13, scope: !3182)
!3209 = !DILocation(line: 66, column: 48, scope: !3177)
!3210 = !DILocation(line: 66, column: 13, scope: !3177)
!3211 = distinct !{!3211, !3180, !3212, !144}
!3212 = !DILocation(line: 68, column: 13, scope: !3172)
!3213 = !DILocation(line: 69, column: 9, scope: !3173)
!3214 = !DILocation(line: 65, column: 40, scope: !3167)
!3215 = !DILocation(line: 65, column: 9, scope: !3167)
!3216 = distinct !{!3216, !3170, !3217, !144}
!3217 = !DILocation(line: 69, column: 9, scope: !3162)
!3218 = !DILocation(line: 70, column: 5, scope: !3163)
!3219 = !DILocation(line: 64, column: 36, scope: !3157)
!3220 = !DILocation(line: 64, column: 5, scope: !3157)
!3221 = distinct !{!3221, !3160, !3222, !144}
!3222 = !DILocation(line: 70, column: 5, scope: !3153)
!3223 = !DILocation(line: 71, column: 1, scope: !3137)
!3224 = distinct !DISubprogram(name: "P1_times_Vt", scope: !608, file: !608, line: 82, type: !699, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !44, retainedNodes: !65)
!3225 = !DILocalVariable(name: "p", arg: 1, scope: !3224, file: !608, line: 82, type: !330)
!3226 = !DILocation(line: 82, column: 39, scope: !3224)
!3227 = !DILocalVariable(name: "P1", arg: 2, scope: !3224, file: !608, line: 82, type: !611)
!3228 = !DILocation(line: 82, column: 58, scope: !3224)
!3229 = !DILocalVariable(name: "V", arg: 3, scope: !3224, file: !608, line: 82, type: !98)
!3230 = !DILocation(line: 82, column: 83, scope: !3224)
!3231 = !DILocalVariable(name: "acc", arg: 4, scope: !3224, file: !608, line: 82, type: !48)
!3232 = !DILocation(line: 82, column: 96, scope: !3224)
!3233 = !DILocation(line: 86, column: 66, scope: !3224)
!3234 = !DILocation(line: 86, column: 48, scope: !3224)
!3235 = !DILocation(line: 86, column: 70, scope: !3224)
!3236 = !DILocation(line: 86, column: 74, scope: !3224)
!3237 = !DILocation(line: 86, column: 77, scope: !3224)
!3238 = !DILocation(line: 86, column: 90, scope: !3224)
!3239 = !DILocation(line: 86, column: 82, scope: !3224)
!3240 = !DILocation(line: 86, column: 102, scope: !3224)
!3241 = !DILocation(line: 86, column: 94, scope: !3224)
!3242 = !DILocation(line: 86, column: 114, scope: !3224)
!3243 = !DILocation(line: 86, column: 106, scope: !3224)
!3244 = !DILocation(line: 86, column: 5, scope: !3224)
!3245 = !DILocation(line: 87, column: 1, scope: !3224)
!3246 = distinct !DISubprogram(name: "mul_add_m_upper_triangular_mat_x_mat_trans", scope: !608, file: !608, line: 32, type: !932, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !44, retainedNodes: !65)
!3247 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !3246, file: !608, line: 32, type: !411)
!3248 = !DILocation(line: 32, column: 59, scope: !3246)
!3249 = !DILocalVariable(name: "bs_mat", arg: 2, scope: !3246, file: !608, line: 32, type: !611)
!3250 = !DILocation(line: 32, column: 88, scope: !3246)
!3251 = !DILocalVariable(name: "mat", arg: 3, scope: !3246, file: !608, line: 32, type: !98)
!3252 = !DILocation(line: 32, column: 117, scope: !3246)
!3253 = !DILocalVariable(name: "acc", arg: 4, scope: !3246, file: !608, line: 32, type: !48)
!3254 = !DILocation(line: 32, column: 132, scope: !3246)
!3255 = !DILocalVariable(name: "bs_mat_rows", arg: 5, scope: !3246, file: !608, line: 33, type: !411)
!3256 = !DILocation(line: 33, column: 59, scope: !3246)
!3257 = !DILocalVariable(name: "bs_mat_cols", arg: 6, scope: !3246, file: !608, line: 33, type: !411)
!3258 = !DILocation(line: 33, column: 82, scope: !3246)
!3259 = !DILocalVariable(name: "mat_rows", arg: 7, scope: !3246, file: !608, line: 33, type: !411)
!3260 = !DILocation(line: 33, column: 105, scope: !3246)
!3261 = !DILocalVariable(name: "triangular", arg: 8, scope: !3246, file: !608, line: 33, type: !411)
!3262 = !DILocation(line: 33, column: 125, scope: !3246)
!3263 = !DILocalVariable(name: "bs_mat_entries_used", scope: !3246, file: !608, line: 34, type: !83)
!3264 = !DILocation(line: 34, column: 9, scope: !3246)
!3265 = !DILocalVariable(name: "r", scope: !3266, file: !608, line: 35, type: !83)
!3266 = distinct !DILexicalBlock(scope: !3246, file: !608, line: 35, column: 5)
!3267 = !DILocation(line: 35, column: 14, scope: !3266)
!3268 = !DILocation(line: 35, column: 10, scope: !3266)
!3269 = !DILocation(line: 35, column: 21, scope: !3270)
!3270 = distinct !DILexicalBlock(scope: !3266, file: !608, line: 35, column: 5)
!3271 = !DILocation(line: 35, column: 25, scope: !3270)
!3272 = !DILocation(line: 35, column: 23, scope: !3270)
!3273 = !DILocation(line: 35, column: 5, scope: !3266)
!3274 = !DILocalVariable(name: "c", scope: !3275, file: !608, line: 36, type: !83)
!3275 = distinct !DILexicalBlock(scope: !3276, file: !608, line: 36, column: 9)
!3276 = distinct !DILexicalBlock(scope: !3270, file: !608, line: 35, column: 43)
!3277 = !DILocation(line: 36, column: 18, scope: !3275)
!3278 = !DILocation(line: 36, column: 22, scope: !3275)
!3279 = !DILocation(line: 36, column: 35, scope: !3275)
!3280 = !DILocation(line: 36, column: 33, scope: !3275)
!3281 = !DILocation(line: 36, column: 14, scope: !3275)
!3282 = !DILocation(line: 36, column: 38, scope: !3283)
!3283 = distinct !DILexicalBlock(scope: !3275, file: !608, line: 36, column: 9)
!3284 = !DILocation(line: 36, column: 42, scope: !3283)
!3285 = !DILocation(line: 36, column: 40, scope: !3283)
!3286 = !DILocation(line: 36, column: 9, scope: !3275)
!3287 = !DILocalVariable(name: "k", scope: !3288, file: !608, line: 37, type: !83)
!3288 = distinct !DILexicalBlock(scope: !3289, file: !608, line: 37, column: 13)
!3289 = distinct !DILexicalBlock(scope: !3283, file: !608, line: 36, column: 60)
!3290 = !DILocation(line: 37, column: 22, scope: !3288)
!3291 = !DILocation(line: 37, column: 18, scope: !3288)
!3292 = !DILocation(line: 37, column: 29, scope: !3293)
!3293 = distinct !DILexicalBlock(scope: !3288, file: !608, line: 37, column: 13)
!3294 = !DILocation(line: 37, column: 33, scope: !3293)
!3295 = !DILocation(line: 37, column: 31, scope: !3293)
!3296 = !DILocation(line: 37, column: 13, scope: !3288)
!3297 = !DILocation(line: 38, column: 31, scope: !3298)
!3298 = distinct !DILexicalBlock(scope: !3293, file: !608, line: 37, column: 51)
!3299 = !DILocation(line: 38, column: 44, scope: !3298)
!3300 = !DILocation(line: 38, column: 53, scope: !3298)
!3301 = !DILocation(line: 38, column: 67, scope: !3298)
!3302 = !DILocation(line: 38, column: 65, scope: !3298)
!3303 = !DILocation(line: 38, column: 51, scope: !3298)
!3304 = !DILocation(line: 38, column: 88, scope: !3298)
!3305 = !DILocation(line: 38, column: 92, scope: !3298)
!3306 = !DILocation(line: 38, column: 96, scope: !3298)
!3307 = !DILocation(line: 38, column: 94, scope: !3298)
!3308 = !DILocation(line: 38, column: 110, scope: !3298)
!3309 = !DILocation(line: 38, column: 108, scope: !3298)
!3310 = !DILocation(line: 38, column: 114, scope: !3298)
!3311 = !DILocation(line: 38, column: 120, scope: !3298)
!3312 = !DILocation(line: 38, column: 135, scope: !3298)
!3313 = !DILocation(line: 38, column: 139, scope: !3298)
!3314 = !DILocation(line: 38, column: 137, scope: !3298)
!3315 = !DILocation(line: 38, column: 150, scope: !3298)
!3316 = !DILocation(line: 38, column: 148, scope: !3298)
!3317 = !DILocation(line: 38, column: 132, scope: !3298)
!3318 = !DILocation(line: 38, column: 118, scope: !3298)
!3319 = !DILocation(line: 38, column: 17, scope: !3298)
!3320 = !DILocation(line: 39, column: 13, scope: !3298)
!3321 = !DILocation(line: 37, column: 45, scope: !3293)
!3322 = !DILocation(line: 37, column: 13, scope: !3293)
!3323 = distinct !{!3323, !3296, !3324, !144}
!3324 = !DILocation(line: 39, column: 13, scope: !3288)
!3325 = !DILocation(line: 40, column: 33, scope: !3289)
!3326 = !DILocation(line: 41, column: 9, scope: !3289)
!3327 = !DILocation(line: 36, column: 56, scope: !3283)
!3328 = !DILocation(line: 36, column: 9, scope: !3283)
!3329 = distinct !{!3329, !3286, !3330, !144}
!3330 = !DILocation(line: 41, column: 9, scope: !3275)
!3331 = !DILocation(line: 42, column: 5, scope: !3276)
!3332 = !DILocation(line: 35, column: 39, scope: !3270)
!3333 = !DILocation(line: 35, column: 5, scope: !3270)
!3334 = distinct !{!3334, !3273, !3335, !144}
!3335 = !DILocation(line: 42, column: 5, scope: !3266)
!3336 = !DILocation(line: 43, column: 1, scope: !3246)
!3337 = distinct !DISubprogram(name: "mayo_sign", scope: !62, file: !62, line: 502, type: !1301, scopeLine: 504, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !65)
!3338 = !DILocalVariable(name: "p", arg: 1, scope: !3337, file: !62, line: 502, type: !330)
!3339 = !DILocation(line: 502, column: 36, scope: !3337)
!3340 = !DILocalVariable(name: "sm", arg: 2, scope: !3337, file: !62, line: 502, type: !57)
!3341 = !DILocation(line: 502, column: 54, scope: !3337)
!3342 = !DILocalVariable(name: "smlen", arg: 3, scope: !3337, file: !62, line: 503, type: !1303)
!3343 = !DILocation(line: 503, column: 23, scope: !3337)
!3344 = !DILocalVariable(name: "m", arg: 4, scope: !3337, file: !62, line: 503, type: !98)
!3345 = !DILocation(line: 503, column: 51, scope: !3337)
!3346 = !DILocalVariable(name: "mlen", arg: 5, scope: !3337, file: !62, line: 504, type: !54)
!3347 = !DILocation(line: 504, column: 22, scope: !3337)
!3348 = !DILocalVariable(name: "csk", arg: 6, scope: !3337, file: !62, line: 504, type: !98)
!3349 = !DILocation(line: 504, column: 49, scope: !3337)
!3350 = !DILocalVariable(name: "ret", scope: !3337, file: !62, line: 505, type: !83)
!3351 = !DILocation(line: 505, column: 9, scope: !3337)
!3352 = !DILocalVariable(name: "param_sig_bytes", scope: !3337, file: !62, line: 506, type: !411)
!3353 = !DILocation(line: 506, column: 15, scope: !3337)
!3354 = !DILocation(line: 506, column: 49, scope: !3337)
!3355 = !DILocation(line: 506, column: 33, scope: !3337)
!3356 = !DILocalVariable(name: "siglen", scope: !3337, file: !62, line: 507, type: !54)
!3357 = !DILocation(line: 507, column: 12, scope: !3337)
!3358 = !DILocation(line: 508, column: 13, scope: !3337)
!3359 = !DILocation(line: 508, column: 18, scope: !3337)
!3360 = !DILocation(line: 508, column: 16, scope: !3337)
!3361 = !DILocation(line: 508, column: 35, scope: !3337)
!3362 = !DILocation(line: 508, column: 38, scope: !3337)
!3363 = !DILocation(line: 508, column: 5, scope: !3337)
!3364 = !DILocation(line: 509, column: 31, scope: !3337)
!3365 = !DILocation(line: 509, column: 34, scope: !3337)
!3366 = !DILocation(line: 509, column: 47, scope: !3337)
!3367 = !DILocation(line: 509, column: 52, scope: !3337)
!3368 = !DILocation(line: 509, column: 50, scope: !3337)
!3369 = !DILocation(line: 509, column: 69, scope: !3337)
!3370 = !DILocation(line: 509, column: 75, scope: !3337)
!3371 = !DILocation(line: 509, column: 11, scope: !3337)
!3372 = !DILocation(line: 509, column: 9, scope: !3337)
!3373 = !DILocation(line: 510, column: 9, scope: !3374)
!3374 = distinct !DILexicalBlock(scope: !3337, file: !62, line: 510, column: 9)
!3375 = !DILocation(line: 510, column: 13, scope: !3374)
!3376 = !DILocation(line: 510, column: 24, scope: !3374)
!3377 = !DILocation(line: 510, column: 27, scope: !3374)
!3378 = !DILocation(line: 510, column: 46, scope: !3374)
!3379 = !DILocation(line: 510, column: 34, scope: !3374)
!3380 = !DILocation(line: 511, column: 16, scope: !3381)
!3381 = distinct !DILexicalBlock(scope: !3374, file: !62, line: 510, column: 62)
!3382 = !DILocation(line: 511, column: 23, scope: !3381)
!3383 = !DILocation(line: 511, column: 32, scope: !3381)
!3384 = !DILocation(line: 511, column: 30, scope: !3381)
!3385 = !DILocation(line: 511, column: 9, scope: !3381)
!3386 = !DILocation(line: 512, column: 9, scope: !3381)
!3387 = !DILocation(line: 515, column: 14, scope: !3337)
!3388 = !DILocation(line: 515, column: 23, scope: !3337)
!3389 = !DILocation(line: 515, column: 21, scope: !3337)
!3390 = !DILocation(line: 515, column: 6, scope: !3337)
!3391 = !DILocation(line: 515, column: 12, scope: !3337)
!3392 = !DILocation(line: 515, column: 5, scope: !3337)
!3393 = !DILabel(scope: !3337, name: "err", file: !62, line: 516, column: 1)
!3394 = !DILocation(line: 516, column: 1, scope: !3337)
!3395 = !DILocation(line: 517, column: 12, scope: !3337)
!3396 = !DILocation(line: 517, column: 5, scope: !3337)
!3397 = distinct !DISubprogram(name: "mayo_open", scope: !62, file: !62, line: 520, type: !1301, scopeLine: 522, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !65)
!3398 = !DILocalVariable(name: "p", arg: 1, scope: !3397, file: !62, line: 520, type: !330)
!3399 = !DILocation(line: 520, column: 36, scope: !3397)
!3400 = !DILocalVariable(name: "m", arg: 2, scope: !3397, file: !62, line: 520, type: !57)
!3401 = !DILocation(line: 520, column: 54, scope: !3397)
!3402 = !DILocalVariable(name: "mlen", arg: 3, scope: !3397, file: !62, line: 521, type: !1303)
!3403 = !DILocation(line: 521, column: 23, scope: !3397)
!3404 = !DILocalVariable(name: "sm", arg: 4, scope: !3397, file: !62, line: 521, type: !98)
!3405 = !DILocation(line: 521, column: 50, scope: !3397)
!3406 = !DILocalVariable(name: "smlen", arg: 5, scope: !3397, file: !62, line: 522, type: !54)
!3407 = !DILocation(line: 522, column: 22, scope: !3397)
!3408 = !DILocalVariable(name: "pk", arg: 6, scope: !3397, file: !62, line: 522, type: !98)
!3409 = !DILocation(line: 522, column: 50, scope: !3397)
!3410 = !DILocalVariable(name: "param_sig_bytes", scope: !3397, file: !62, line: 523, type: !411)
!3411 = !DILocation(line: 523, column: 15, scope: !3397)
!3412 = !DILocation(line: 523, column: 49, scope: !3397)
!3413 = !DILocation(line: 523, column: 33, scope: !3397)
!3414 = !DILocation(line: 524, column: 9, scope: !3415)
!3415 = distinct !DILexicalBlock(scope: !3397, file: !62, line: 524, column: 9)
!3416 = !DILocation(line: 524, column: 25, scope: !3415)
!3417 = !DILocation(line: 524, column: 15, scope: !3415)
!3418 = !DILocation(line: 525, column: 9, scope: !3419)
!3419 = distinct !DILexicalBlock(scope: !3415, file: !62, line: 524, column: 42)
!3420 = !DILocalVariable(name: "result", scope: !3397, file: !62, line: 527, type: !83)
!3421 = !DILocation(line: 527, column: 9, scope: !3397)
!3422 = !DILocation(line: 527, column: 30, scope: !3397)
!3423 = !DILocation(line: 527, column: 33, scope: !3397)
!3424 = !DILocation(line: 527, column: 38, scope: !3397)
!3425 = !DILocation(line: 527, column: 36, scope: !3397)
!3426 = !DILocation(line: 527, column: 55, scope: !3397)
!3427 = !DILocation(line: 527, column: 63, scope: !3397)
!3428 = !DILocation(line: 527, column: 61, scope: !3397)
!3429 = !DILocation(line: 527, column: 80, scope: !3397)
!3430 = !DILocation(line: 528, column: 30, scope: !3397)
!3431 = !DILocation(line: 527, column: 18, scope: !3397)
!3432 = !DILocation(line: 530, column: 9, scope: !3433)
!3433 = distinct !DILexicalBlock(scope: !3397, file: !62, line: 530, column: 9)
!3434 = !DILocation(line: 530, column: 16, scope: !3433)
!3435 = !DILocation(line: 531, column: 17, scope: !3436)
!3436 = distinct !DILexicalBlock(scope: !3433, file: !62, line: 530, column: 28)
!3437 = !DILocation(line: 531, column: 25, scope: !3436)
!3438 = !DILocation(line: 531, column: 23, scope: !3436)
!3439 = !DILocation(line: 531, column: 10, scope: !3436)
!3440 = !DILocation(line: 531, column: 15, scope: !3436)
!3441 = !DILocation(line: 532, column: 17, scope: !3436)
!3442 = !DILocation(line: 532, column: 20, scope: !3436)
!3443 = !DILocation(line: 532, column: 25, scope: !3436)
!3444 = !DILocation(line: 532, column: 23, scope: !3436)
!3445 = !DILocation(line: 532, column: 43, scope: !3436)
!3446 = !DILocation(line: 532, column: 42, scope: !3436)
!3447 = !DILocation(line: 532, column: 9, scope: !3436)
!3448 = !DILocation(line: 533, column: 5, scope: !3436)
!3449 = !DILocation(line: 535, column: 12, scope: !3397)
!3450 = !DILocation(line: 535, column: 5, scope: !3397)
!3451 = !DILocation(line: 536, column: 1, scope: !3397)
!3452 = distinct !DISubprogram(name: "mayo_verify", scope: !62, file: !62, line: 617, type: !3453, scopeLine: 619, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !65)
!3453 = !DISubroutineType(types: !3454)
!3454 = !{!83, !330, !98, !54, !98, !98}
!3455 = !DILocalVariable(name: "p", arg: 1, scope: !3452, file: !62, line: 617, type: !330)
!3456 = !DILocation(line: 617, column: 38, scope: !3452)
!3457 = !DILocalVariable(name: "m", arg: 2, scope: !3452, file: !62, line: 617, type: !98)
!3458 = !DILocation(line: 617, column: 62, scope: !3452)
!3459 = !DILocalVariable(name: "mlen", arg: 3, scope: !3452, file: !62, line: 618, type: !54)
!3460 = !DILocation(line: 618, column: 24, scope: !3452)
!3461 = !DILocalVariable(name: "sig", arg: 4, scope: !3452, file: !62, line: 618, type: !98)
!3462 = !DILocation(line: 618, column: 51, scope: !3452)
!3463 = !DILocalVariable(name: "cpk", arg: 5, scope: !3452, file: !62, line: 619, type: !98)
!3464 = !DILocation(line: 619, column: 38, scope: !3452)
!3465 = !DILocalVariable(name: "tEnc", scope: !3452, file: !62, line: 620, type: !1319)
!3466 = !DILocation(line: 620, column: 19, scope: !3452)
!3467 = !DILocalVariable(name: "t", scope: !3452, file: !62, line: 621, type: !1324)
!3468 = !DILocation(line: 621, column: 19, scope: !3452)
!3469 = !DILocalVariable(name: "y", scope: !3452, file: !62, line: 622, type: !3470)
!3470 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 2272, elements: !3471)
!3471 = !{!3472}
!3472 = !DISubrange(count: 284)
!3473 = !DILocation(line: 622, column: 19, scope: !3452)
!3474 = !DILocalVariable(name: "s", scope: !3452, file: !62, line: 623, type: !1351)
!3475 = !DILocation(line: 623, column: 19, scope: !3452)
!3476 = !DILocalVariable(name: "pk", scope: !3452, file: !62, line: 624, type: !3477)
!3477 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 7326720, elements: !3478)
!3478 = !{!3479}
!3479 = !DISubrange(count: 114480)
!3480 = !DILocation(line: 624, column: 14, scope: !3452)
!3481 = !DILocalVariable(name: "tmp", scope: !3452, file: !62, line: 625, type: !3482)
!3482 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 832, elements: !3483)
!3483 = !{!3484}
!3484 = !DISubrange(count: 104)
!3485 = !DILocation(line: 625, column: 19, scope: !3452)
!3486 = !DILocalVariable(name: "param_m", scope: !3452, file: !62, line: 627, type: !411)
!3487 = !DILocation(line: 627, column: 15, scope: !3452)
!3488 = !DILocation(line: 627, column: 33, scope: !3452)
!3489 = !DILocation(line: 627, column: 25, scope: !3452)
!3490 = !DILocalVariable(name: "param_n", scope: !3452, file: !62, line: 628, type: !411)
!3491 = !DILocation(line: 628, column: 15, scope: !3452)
!3492 = !DILocation(line: 628, column: 33, scope: !3452)
!3493 = !DILocation(line: 628, column: 25, scope: !3452)
!3494 = !DILocalVariable(name: "param_k", scope: !3452, file: !62, line: 629, type: !411)
!3495 = !DILocation(line: 629, column: 15, scope: !3452)
!3496 = !DILocation(line: 629, column: 33, scope: !3452)
!3497 = !DILocation(line: 629, column: 25, scope: !3452)
!3498 = !DILocalVariable(name: "param_m_bytes", scope: !3452, file: !62, line: 630, type: !411)
!3499 = !DILocation(line: 630, column: 15, scope: !3452)
!3500 = !DILocation(line: 630, column: 45, scope: !3452)
!3501 = !DILocation(line: 630, column: 31, scope: !3452)
!3502 = !DILocalVariable(name: "param_sig_bytes", scope: !3452, file: !62, line: 631, type: !411)
!3503 = !DILocation(line: 631, column: 15, scope: !3452)
!3504 = !DILocation(line: 631, column: 49, scope: !3452)
!3505 = !DILocation(line: 631, column: 33, scope: !3452)
!3506 = !DILocalVariable(name: "param_digest_bytes", scope: !3452, file: !62, line: 632, type: !411)
!3507 = !DILocation(line: 632, column: 15, scope: !3452)
!3508 = !DILocation(line: 632, column: 55, scope: !3452)
!3509 = !DILocation(line: 632, column: 36, scope: !3452)
!3510 = !DILocalVariable(name: "param_salt_bytes", scope: !3452, file: !62, line: 633, type: !411)
!3511 = !DILocation(line: 633, column: 15, scope: !3452)
!3512 = !DILocation(line: 633, column: 51, scope: !3452)
!3513 = !DILocation(line: 633, column: 34, scope: !3452)
!3514 = !DILocalVariable(name: "ret", scope: !3452, file: !62, line: 635, type: !83)
!3515 = !DILocation(line: 635, column: 9, scope: !3452)
!3516 = !DILocation(line: 635, column: 30, scope: !3452)
!3517 = !DILocation(line: 635, column: 33, scope: !3452)
!3518 = !DILocation(line: 635, column: 38, scope: !3452)
!3519 = !DILocation(line: 635, column: 15, scope: !3452)
!3520 = !DILocation(line: 636, column: 9, scope: !3521)
!3521 = distinct !DILexicalBlock(scope: !3452, file: !62, line: 636, column: 9)
!3522 = !DILocation(line: 636, column: 13, scope: !3521)
!3523 = !DILocation(line: 637, column: 9, scope: !3524)
!3524 = distinct !DILexicalBlock(scope: !3521, file: !62, line: 636, column: 25)
!3525 = !DILocalVariable(name: "P1", scope: !3452, file: !62, line: 640, type: !48)
!3526 = !DILocation(line: 640, column: 15, scope: !3452)
!3527 = !DILocation(line: 640, column: 20, scope: !3452)
!3528 = !DILocalVariable(name: "P2", scope: !3452, file: !62, line: 641, type: !48)
!3529 = !DILocation(line: 641, column: 15, scope: !3452)
!3530 = !DILocation(line: 641, column: 20, scope: !3452)
!3531 = !DILocation(line: 641, column: 40, scope: !3452)
!3532 = !DILocation(line: 641, column: 25, scope: !3452)
!3533 = !DILocation(line: 641, column: 23, scope: !3452)
!3534 = !DILocalVariable(name: "P3", scope: !3452, file: !62, line: 642, type: !48)
!3535 = !DILocation(line: 642, column: 15, scope: !3452)
!3536 = !DILocation(line: 642, column: 20, scope: !3452)
!3537 = !DILocation(line: 642, column: 40, scope: !3452)
!3538 = !DILocation(line: 642, column: 25, scope: !3452)
!3539 = !DILocation(line: 642, column: 23, scope: !3452)
!3540 = !DILocation(line: 657, column: 14, scope: !3452)
!3541 = !DILocation(line: 657, column: 19, scope: !3452)
!3542 = !DILocation(line: 657, column: 39, scope: !3452)
!3543 = !DILocation(line: 657, column: 42, scope: !3452)
!3544 = !DILocation(line: 657, column: 5, scope: !3452)
!3545 = !DILocation(line: 660, column: 12, scope: !3452)
!3546 = !DILocation(line: 660, column: 18, scope: !3452)
!3547 = !DILocation(line: 660, column: 16, scope: !3452)
!3548 = !DILocation(line: 660, column: 38, scope: !3452)
!3549 = !DILocation(line: 660, column: 44, scope: !3452)
!3550 = !DILocation(line: 660, column: 42, scope: !3452)
!3551 = !DILocation(line: 660, column: 62, scope: !3452)
!3552 = !DILocation(line: 660, column: 60, scope: !3452)
!3553 = !DILocation(line: 661, column: 12, scope: !3452)
!3554 = !DILocation(line: 660, column: 5, scope: !3452)
!3555 = !DILocation(line: 662, column: 14, scope: !3452)
!3556 = !DILocation(line: 662, column: 20, scope: !3452)
!3557 = !DILocation(line: 662, column: 35, scope: !3452)
!3558 = !DILocation(line: 662, column: 40, scope: !3452)
!3559 = !DILocation(line: 662, column: 61, scope: !3452)
!3560 = !DILocation(line: 662, column: 59, scope: !3452)
!3561 = !DILocation(line: 662, column: 5, scope: !3452)
!3562 = !DILocation(line: 663, column: 12, scope: !3452)
!3563 = !DILocation(line: 663, column: 18, scope: !3452)
!3564 = !DILocation(line: 663, column: 21, scope: !3452)
!3565 = !DILocation(line: 663, column: 5, scope: !3452)
!3566 = !DILocation(line: 666, column: 12, scope: !3452)
!3567 = !DILocation(line: 666, column: 17, scope: !3452)
!3568 = !DILocation(line: 666, column: 20, scope: !3452)
!3569 = !DILocation(line: 666, column: 30, scope: !3452)
!3570 = !DILocation(line: 666, column: 28, scope: !3452)
!3571 = !DILocation(line: 666, column: 5, scope: !3452)
!3572 = !DILocation(line: 668, column: 21, scope: !3452)
!3573 = !DILocation(line: 668, column: 24, scope: !3452)
!3574 = !DILocation(line: 668, column: 27, scope: !3452)
!3575 = !DILocation(line: 668, column: 31, scope: !3452)
!3576 = !DILocation(line: 668, column: 35, scope: !3452)
!3577 = !DILocation(line: 668, column: 39, scope: !3452)
!3578 = !DILocation(line: 668, column: 5, scope: !3452)
!3579 = !DILocation(line: 670, column: 16, scope: !3580)
!3580 = distinct !DILexicalBlock(scope: !3452, file: !62, line: 670, column: 9)
!3581 = !DILocation(line: 670, column: 19, scope: !3580)
!3582 = !DILocation(line: 670, column: 22, scope: !3580)
!3583 = !DILocation(line: 670, column: 9, scope: !3580)
!3584 = !DILocation(line: 670, column: 31, scope: !3580)
!3585 = !DILocation(line: 671, column: 9, scope: !3586)
!3586 = distinct !DILexicalBlock(scope: !3580, file: !62, line: 670, column: 37)
!3587 = !DILocation(line: 673, column: 5, scope: !3452)
!3588 = !DILocation(line: 674, column: 1, scope: !3452)
!3589 = distinct !DISubprogram(name: "mayo_expand_pk", scope: !62, file: !62, line: 608, type: !3590, scopeLine: 609, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !65)
!3590 = !DISubroutineType(types: !3591)
!3591 = !{!83, !330, !98, !48}
!3592 = !DILocalVariable(name: "p", arg: 1, scope: !3589, file: !62, line: 608, type: !330)
!3593 = !DILocation(line: 608, column: 41, scope: !3589)
!3594 = !DILocalVariable(name: "cpk", arg: 2, scope: !3589, file: !62, line: 608, type: !98)
!3595 = !DILocation(line: 608, column: 65, scope: !3589)
!3596 = !DILocalVariable(name: "pk", arg: 3, scope: !3589, file: !62, line: 609, type: !48)
!3597 = !DILocation(line: 609, column: 30, scope: !3589)
!3598 = !DILocation(line: 610, column: 18, scope: !3589)
!3599 = !DILocation(line: 610, column: 21, scope: !3589)
!3600 = !DILocation(line: 610, column: 25, scope: !3589)
!3601 = !DILocation(line: 610, column: 5, scope: !3589)
!3602 = !DILocation(line: 612, column: 19, scope: !3589)
!3603 = !DILocation(line: 612, column: 45, scope: !3589)
!3604 = !DILocation(line: 612, column: 25, scope: !3589)
!3605 = !DILocation(line: 612, column: 23, scope: !3589)
!3606 = !DILocation(line: 612, column: 49, scope: !3589)
!3607 = !DILocation(line: 612, column: 69, scope: !3589)
!3608 = !DILocation(line: 612, column: 54, scope: !3589)
!3609 = !DILocation(line: 612, column: 52, scope: !3589)
!3610 = !DILocation(line: 612, column: 89, scope: !3589)
!3611 = !DILocation(line: 612, column: 74, scope: !3589)
!3612 = !DILocation(line: 612, column: 72, scope: !3589)
!3613 = !DILocation(line: 612, column: 108, scope: !3589)
!3614 = !DILocation(line: 612, column: 93, scope: !3589)
!3615 = !DILocation(line: 612, column: 129, scope: !3589)
!3616 = !DILocation(line: 612, column: 111, scope: !3589)
!3617 = !DILocation(line: 612, column: 110, scope: !3589)
!3618 = !DILocation(line: 612, column: 141, scope: !3589)
!3619 = !DILocation(line: 612, column: 133, scope: !3589)
!3620 = !DILocation(line: 612, column: 5, scope: !3589)
!3621 = !DILocation(line: 614, column: 5, scope: !3589)
!3622 = distinct !DISubprogram(name: "eval_public_map", scope: !62, file: !62, line: 288, type: !3623, scopeLine: 288, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !44, retainedNodes: !65)
!3623 = !DISubroutineType(types: !3624)
!3624 = !{null, !330, !98, !611, !611, !611, !57}
!3625 = !DILocalVariable(name: "p", arg: 1, scope: !3622, file: !62, line: 288, type: !330)
!3626 = !DILocation(line: 288, column: 50, scope: !3622)
!3627 = !DILocalVariable(name: "s", arg: 2, scope: !3622, file: !62, line: 288, type: !98)
!3628 = !DILocation(line: 288, column: 74, scope: !3622)
!3629 = !DILocalVariable(name: "P1", arg: 3, scope: !3622, file: !62, line: 288, type: !611)
!3630 = !DILocation(line: 288, column: 93, scope: !3622)
!3631 = !DILocalVariable(name: "P2", arg: 4, scope: !3622, file: !62, line: 288, type: !611)
!3632 = !DILocation(line: 288, column: 113, scope: !3622)
!3633 = !DILocalVariable(name: "P3", arg: 5, scope: !3622, file: !62, line: 288, type: !611)
!3634 = !DILocation(line: 288, column: 133, scope: !3622)
!3635 = !DILocalVariable(name: "eval", arg: 6, scope: !3622, file: !62, line: 288, type: !57)
!3636 = !DILocation(line: 288, column: 152, scope: !3622)
!3637 = !DILocalVariable(name: "SPS", scope: !3622, file: !62, line: 289, type: !3638)
!3638 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 82944, elements: !3639)
!3639 = !{!3640}
!3640 = !DISubrange(count: 1296)
!3641 = !DILocation(line: 289, column: 14, scope: !3622)
!3642 = !DILocation(line: 291, column: 24, scope: !3622)
!3643 = !DILocation(line: 291, column: 27, scope: !3622)
!3644 = !DILocation(line: 291, column: 31, scope: !3622)
!3645 = !DILocation(line: 291, column: 35, scope: !3622)
!3646 = !DILocation(line: 291, column: 39, scope: !3622)
!3647 = !DILocation(line: 291, column: 42, scope: !3622)
!3648 = !DILocation(line: 291, column: 5, scope: !3622)
!3649 = !DILocalVariable(name: "zero", scope: !3622, file: !62, line: 292, type: !1324)
!3650 = !DILocation(line: 292, column: 19, scope: !3622)
!3651 = !DILocation(line: 293, column: 17, scope: !3622)
!3652 = !DILocation(line: 293, column: 20, scope: !3622)
!3653 = !DILocation(line: 293, column: 25, scope: !3622)
!3654 = !DILocation(line: 293, column: 31, scope: !3622)
!3655 = !DILocation(line: 293, column: 5, scope: !3622)
!3656 = !DILocation(line: 294, column: 1, scope: !3622)
!3657 = distinct !DISubprogram(name: "m_calculate_PS_SPS", scope: !608, file: !608, line: 277, type: !3658, scopeLine: 278, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !44, retainedNodes: !65)
!3658 = !DISubroutineType(types: !3659)
!3659 = !{null, !330, !611, !611, !611, !98, !48}
!3660 = !DILocalVariable(name: "p", arg: 1, scope: !3657, file: !608, line: 277, type: !330)
!3661 = !DILocation(line: 277, column: 60, scope: !3657)
!3662 = !DILocalVariable(name: "P1", arg: 2, scope: !3657, file: !608, line: 277, type: !611)
!3663 = !DILocation(line: 277, column: 79, scope: !3657)
!3664 = !DILocalVariable(name: "P2", arg: 3, scope: !3657, file: !608, line: 277, type: !611)
!3665 = !DILocation(line: 277, column: 99, scope: !3657)
!3666 = !DILocalVariable(name: "P3", arg: 4, scope: !3657, file: !608, line: 277, type: !611)
!3667 = !DILocation(line: 277, column: 119, scope: !3657)
!3668 = !DILocalVariable(name: "s", arg: 5, scope: !3657, file: !608, line: 277, type: !98)
!3669 = !DILocation(line: 277, column: 144, scope: !3657)
!3670 = !DILocalVariable(name: "SPS", arg: 6, scope: !3657, file: !608, line: 278, type: !48)
!3671 = !DILocation(line: 278, column: 49, scope: !3657)
!3672 = !DILocalVariable(name: "PS", scope: !3657, file: !608, line: 286, type: !3673)
!3673 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 1064448, elements: !3674)
!3674 = !{!3675}
!3675 = !DISubrange(count: 16632)
!3676 = !DILocation(line: 286, column: 14, scope: !3657)
!3677 = !DILocation(line: 287, column: 33, scope: !3657)
!3678 = !DILocation(line: 287, column: 37, scope: !3657)
!3679 = !DILocation(line: 287, column: 41, scope: !3657)
!3680 = !DILocation(line: 287, column: 45, scope: !3657)
!3681 = !DILocation(line: 287, column: 56, scope: !3657)
!3682 = !DILocation(line: 287, column: 48, scope: !3657)
!3683 = !DILocation(line: 287, column: 68, scope: !3657)
!3684 = !DILocation(line: 287, column: 60, scope: !3657)
!3685 = !DILocation(line: 287, column: 80, scope: !3657)
!3686 = !DILocation(line: 287, column: 72, scope: !3657)
!3687 = !DILocation(line: 287, column: 92, scope: !3657)
!3688 = !DILocation(line: 287, column: 84, scope: !3657)
!3689 = !DILocation(line: 287, column: 96, scope: !3657)
!3690 = !DILocation(line: 287, column: 5, scope: !3657)
!3691 = !DILocation(line: 290, column: 34, scope: !3657)
!3692 = !DILocation(line: 290, column: 38, scope: !3657)
!3693 = !DILocation(line: 290, column: 49, scope: !3657)
!3694 = !DILocation(line: 290, column: 41, scope: !3657)
!3695 = !DILocation(line: 290, column: 61, scope: !3657)
!3696 = !DILocation(line: 290, column: 53, scope: !3657)
!3697 = !DILocation(line: 290, column: 73, scope: !3657)
!3698 = !DILocation(line: 290, column: 65, scope: !3657)
!3699 = !DILocation(line: 290, column: 77, scope: !3657)
!3700 = !DILocation(line: 290, column: 5, scope: !3657)
!3701 = !DILocation(line: 292, column: 1, scope: !3657)
!3702 = distinct !DISubprogram(name: "mayo_generic_m_calculate_PS", scope: !608, file: !608, line: 151, type: !3703, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !44, retainedNodes: !65)
!3703 = !DISubroutineType(types: !3704)
!3704 = !{null, !611, !611, !611, !98, !411, !411, !411, !411, !48}
!3705 = !DILocalVariable(name: "P1", arg: 1, scope: !3702, file: !608, line: 151, type: !611)
!3706 = !DILocation(line: 151, column: 64, scope: !3702)
!3707 = !DILocalVariable(name: "P2", arg: 2, scope: !3702, file: !608, line: 151, type: !611)
!3708 = !DILocation(line: 151, column: 84, scope: !3702)
!3709 = !DILocalVariable(name: "P3", arg: 3, scope: !3702, file: !608, line: 151, type: !611)
!3710 = !DILocation(line: 151, column: 104, scope: !3702)
!3711 = !DILocalVariable(name: "S", arg: 4, scope: !3702, file: !608, line: 151, type: !98)
!3712 = !DILocation(line: 151, column: 129, scope: !3702)
!3713 = !DILocalVariable(name: "m", arg: 5, scope: !3702, file: !608, line: 152, type: !411)
!3714 = !DILocation(line: 152, column: 58, scope: !3702)
!3715 = !DILocalVariable(name: "v", arg: 6, scope: !3702, file: !608, line: 152, type: !411)
!3716 = !DILocation(line: 152, column: 71, scope: !3702)
!3717 = !DILocalVariable(name: "o", arg: 7, scope: !3702, file: !608, line: 152, type: !411)
!3718 = !DILocation(line: 152, column: 84, scope: !3702)
!3719 = !DILocalVariable(name: "k", arg: 8, scope: !3702, file: !608, line: 152, type: !411)
!3720 = !DILocation(line: 152, column: 97, scope: !3702)
!3721 = !DILocalVariable(name: "PS", arg: 9, scope: !3702, file: !608, line: 152, type: !48)
!3722 = !DILocation(line: 152, column: 110, scope: !3702)
!3723 = !DILocalVariable(name: "n", scope: !3702, file: !608, line: 154, type: !411)
!3724 = !DILocation(line: 154, column: 15, scope: !3702)
!3725 = !DILocation(line: 154, column: 19, scope: !3702)
!3726 = !DILocation(line: 154, column: 23, scope: !3702)
!3727 = !DILocation(line: 154, column: 21, scope: !3702)
!3728 = !DILocalVariable(name: "m_vec_limbs", scope: !3702, file: !608, line: 155, type: !411)
!3729 = !DILocation(line: 155, column: 15, scope: !3702)
!3730 = !DILocation(line: 155, column: 30, scope: !3702)
!3731 = !DILocation(line: 155, column: 32, scope: !3702)
!3732 = !DILocation(line: 155, column: 37, scope: !3702)
!3733 = !DILocalVariable(name: "accumulator", scope: !3702, file: !608, line: 157, type: !3734)
!3734 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 17031168, elements: !3735)
!3735 = !{!3736}
!3736 = !DISubrange(count: 266112)
!3737 = !DILocation(line: 157, column: 14, scope: !3702)
!3738 = !DILocalVariable(name: "P1_used", scope: !3702, file: !608, line: 158, type: !83)
!3739 = !DILocation(line: 158, column: 9, scope: !3702)
!3740 = !DILocalVariable(name: "row", scope: !3741, file: !608, line: 159, type: !83)
!3741 = distinct !DILexicalBlock(scope: !3702, file: !608, line: 159, column: 5)
!3742 = !DILocation(line: 159, column: 14, scope: !3741)
!3743 = !DILocation(line: 159, column: 10, scope: !3741)
!3744 = !DILocation(line: 159, column: 23, scope: !3745)
!3745 = distinct !DILexicalBlock(scope: !3741, file: !608, line: 159, column: 5)
!3746 = !DILocation(line: 159, column: 29, scope: !3745)
!3747 = !DILocation(line: 159, column: 27, scope: !3745)
!3748 = !DILocation(line: 159, column: 5, scope: !3741)
!3749 = !DILocalVariable(name: "j", scope: !3750, file: !608, line: 160, type: !83)
!3750 = distinct !DILexicalBlock(scope: !3751, file: !608, line: 160, column: 9)
!3751 = distinct !DILexicalBlock(scope: !3745, file: !608, line: 159, column: 39)
!3752 = !DILocation(line: 160, column: 18, scope: !3750)
!3753 = !DILocation(line: 160, column: 22, scope: !3750)
!3754 = !DILocation(line: 160, column: 14, scope: !3750)
!3755 = !DILocation(line: 160, column: 27, scope: !3756)
!3756 = distinct !DILexicalBlock(scope: !3750, file: !608, line: 160, column: 9)
!3757 = !DILocation(line: 160, column: 31, scope: !3756)
!3758 = !DILocation(line: 160, column: 29, scope: !3756)
!3759 = !DILocation(line: 160, column: 9, scope: !3750)
!3760 = !DILocalVariable(name: "col", scope: !3761, file: !608, line: 161, type: !83)
!3761 = distinct !DILexicalBlock(scope: !3762, file: !608, line: 161, column: 13)
!3762 = distinct !DILexicalBlock(scope: !3756, file: !608, line: 160, column: 39)
!3763 = !DILocation(line: 161, column: 22, scope: !3761)
!3764 = !DILocation(line: 161, column: 18, scope: !3761)
!3765 = !DILocation(line: 161, column: 31, scope: !3766)
!3766 = distinct !DILexicalBlock(scope: !3761, file: !608, line: 161, column: 13)
!3767 = !DILocation(line: 161, column: 37, scope: !3766)
!3768 = !DILocation(line: 161, column: 35, scope: !3766)
!3769 = !DILocation(line: 161, column: 13, scope: !3761)
!3770 = !DILocation(line: 162, column: 27, scope: !3771)
!3771 = distinct !DILexicalBlock(scope: !3766, file: !608, line: 161, column: 47)
!3772 = !DILocation(line: 162, column: 40, scope: !3771)
!3773 = !DILocation(line: 162, column: 46, scope: !3771)
!3774 = !DILocation(line: 162, column: 56, scope: !3771)
!3775 = !DILocation(line: 162, column: 54, scope: !3771)
!3776 = !DILocation(line: 162, column: 43, scope: !3771)
!3777 = !DILocation(line: 162, column: 70, scope: !3771)
!3778 = !DILocation(line: 162, column: 87, scope: !3771)
!3779 = !DILocation(line: 162, column: 93, scope: !3771)
!3780 = !DILocation(line: 162, column: 91, scope: !3771)
!3781 = !DILocation(line: 162, column: 97, scope: !3771)
!3782 = !DILocation(line: 162, column: 95, scope: !3771)
!3783 = !DILocation(line: 162, column: 102, scope: !3771)
!3784 = !DILocation(line: 162, column: 109, scope: !3771)
!3785 = !DILocation(line: 162, column: 111, scope: !3771)
!3786 = !DILocation(line: 162, column: 117, scope: !3771)
!3787 = !DILocation(line: 162, column: 115, scope: !3771)
!3788 = !DILocation(line: 162, column: 121, scope: !3771)
!3789 = !DILocation(line: 162, column: 119, scope: !3771)
!3790 = !DILocation(line: 162, column: 107, scope: !3771)
!3791 = !DILocation(line: 162, column: 126, scope: !3771)
!3792 = !DILocation(line: 162, column: 125, scope: !3771)
!3793 = !DILocation(line: 162, column: 82, scope: !3771)
!3794 = !DILocation(line: 162, column: 17, scope: !3771)
!3795 = !DILocation(line: 163, column: 13, scope: !3771)
!3796 = !DILocation(line: 161, column: 43, scope: !3766)
!3797 = !DILocation(line: 161, column: 13, scope: !3766)
!3798 = distinct !{!3798, !3769, !3799, !144}
!3799 = !DILocation(line: 163, column: 13, scope: !3761)
!3800 = !DILocation(line: 164, column: 21, scope: !3762)
!3801 = !DILocation(line: 165, column: 9, scope: !3762)
!3802 = !DILocation(line: 160, column: 35, scope: !3756)
!3803 = !DILocation(line: 160, column: 9, scope: !3756)
!3804 = distinct !{!3804, !3759, !3805, !144}
!3805 = !DILocation(line: 165, column: 9, scope: !3750)
!3806 = !DILocalVariable(name: "j", scope: !3807, file: !608, line: 167, type: !83)
!3807 = distinct !DILexicalBlock(scope: !3751, file: !608, line: 167, column: 9)
!3808 = !DILocation(line: 167, column: 18, scope: !3807)
!3809 = !DILocation(line: 167, column: 14, scope: !3807)
!3810 = !DILocation(line: 167, column: 25, scope: !3811)
!3811 = distinct !DILexicalBlock(scope: !3807, file: !608, line: 167, column: 9)
!3812 = !DILocation(line: 167, column: 29, scope: !3811)
!3813 = !DILocation(line: 167, column: 27, scope: !3811)
!3814 = !DILocation(line: 167, column: 9, scope: !3807)
!3815 = !DILocalVariable(name: "col", scope: !3816, file: !608, line: 168, type: !83)
!3816 = distinct !DILexicalBlock(scope: !3817, file: !608, line: 168, column: 13)
!3817 = distinct !DILexicalBlock(scope: !3811, file: !608, line: 167, column: 37)
!3818 = !DILocation(line: 168, column: 22, scope: !3816)
!3819 = !DILocation(line: 168, column: 18, scope: !3816)
!3820 = !DILocation(line: 168, column: 31, scope: !3821)
!3821 = distinct !DILexicalBlock(scope: !3816, file: !608, line: 168, column: 13)
!3822 = !DILocation(line: 168, column: 37, scope: !3821)
!3823 = !DILocation(line: 168, column: 35, scope: !3821)
!3824 = !DILocation(line: 168, column: 13, scope: !3816)
!3825 = !DILocation(line: 169, column: 27, scope: !3826)
!3826 = distinct !DILexicalBlock(scope: !3821, file: !608, line: 168, column: 47)
!3827 = !DILocation(line: 169, column: 40, scope: !3826)
!3828 = !DILocation(line: 169, column: 46, scope: !3826)
!3829 = !DILocation(line: 169, column: 52, scope: !3826)
!3830 = !DILocation(line: 169, column: 50, scope: !3826)
!3831 = !DILocation(line: 169, column: 56, scope: !3826)
!3832 = !DILocation(line: 169, column: 54, scope: !3826)
!3833 = !DILocation(line: 169, column: 59, scope: !3826)
!3834 = !DILocation(line: 169, column: 58, scope: !3826)
!3835 = !DILocation(line: 169, column: 43, scope: !3826)
!3836 = !DILocation(line: 169, column: 72, scope: !3826)
!3837 = !DILocation(line: 169, column: 89, scope: !3826)
!3838 = !DILocation(line: 169, column: 95, scope: !3826)
!3839 = !DILocation(line: 169, column: 93, scope: !3826)
!3840 = !DILocation(line: 169, column: 99, scope: !3826)
!3841 = !DILocation(line: 169, column: 97, scope: !3826)
!3842 = !DILocation(line: 169, column: 104, scope: !3826)
!3843 = !DILocation(line: 169, column: 111, scope: !3826)
!3844 = !DILocation(line: 169, column: 114, scope: !3826)
!3845 = !DILocation(line: 169, column: 120, scope: !3826)
!3846 = !DILocation(line: 169, column: 118, scope: !3826)
!3847 = !DILocation(line: 169, column: 125, scope: !3826)
!3848 = !DILocation(line: 169, column: 123, scope: !3826)
!3849 = !DILocation(line: 169, column: 129, scope: !3826)
!3850 = !DILocation(line: 169, column: 127, scope: !3826)
!3851 = !DILocation(line: 169, column: 109, scope: !3826)
!3852 = !DILocation(line: 169, column: 135, scope: !3826)
!3853 = !DILocation(line: 169, column: 133, scope: !3826)
!3854 = !DILocation(line: 169, column: 84, scope: !3826)
!3855 = !DILocation(line: 169, column: 17, scope: !3826)
!3856 = !DILocation(line: 170, column: 13, scope: !3826)
!3857 = !DILocation(line: 168, column: 43, scope: !3821)
!3858 = !DILocation(line: 168, column: 13, scope: !3821)
!3859 = distinct !{!3859, !3824, !3860, !144}
!3860 = !DILocation(line: 170, column: 13, scope: !3816)
!3861 = !DILocation(line: 171, column: 9, scope: !3817)
!3862 = !DILocation(line: 167, column: 33, scope: !3811)
!3863 = !DILocation(line: 167, column: 9, scope: !3811)
!3864 = distinct !{!3864, !3814, !3865, !144}
!3865 = !DILocation(line: 171, column: 9, scope: !3807)
!3866 = !DILocation(line: 172, column: 5, scope: !3751)
!3867 = !DILocation(line: 159, column: 35, scope: !3745)
!3868 = !DILocation(line: 159, column: 5, scope: !3745)
!3869 = distinct !{!3869, !3748, !3870, !144}
!3870 = !DILocation(line: 172, column: 5, scope: !3741)
!3871 = !DILocalVariable(name: "P3_used", scope: !3702, file: !608, line: 174, type: !83)
!3872 = !DILocation(line: 174, column: 9, scope: !3702)
!3873 = !DILocalVariable(name: "row", scope: !3874, file: !608, line: 175, type: !83)
!3874 = distinct !DILexicalBlock(scope: !3702, file: !608, line: 175, column: 5)
!3875 = !DILocation(line: 175, column: 14, scope: !3874)
!3876 = !DILocation(line: 175, column: 20, scope: !3874)
!3877 = !DILocation(line: 175, column: 10, scope: !3874)
!3878 = !DILocation(line: 175, column: 23, scope: !3879)
!3879 = distinct !DILexicalBlock(scope: !3874, file: !608, line: 175, column: 5)
!3880 = !DILocation(line: 175, column: 29, scope: !3879)
!3881 = !DILocation(line: 175, column: 27, scope: !3879)
!3882 = !DILocation(line: 175, column: 5, scope: !3874)
!3883 = !DILocalVariable(name: "j", scope: !3884, file: !608, line: 176, type: !83)
!3884 = distinct !DILexicalBlock(scope: !3885, file: !608, line: 176, column: 9)
!3885 = distinct !DILexicalBlock(scope: !3879, file: !608, line: 175, column: 39)
!3886 = !DILocation(line: 176, column: 18, scope: !3884)
!3887 = !DILocation(line: 176, column: 22, scope: !3884)
!3888 = !DILocation(line: 176, column: 14, scope: !3884)
!3889 = !DILocation(line: 176, column: 27, scope: !3890)
!3890 = distinct !DILexicalBlock(scope: !3884, file: !608, line: 176, column: 9)
!3891 = !DILocation(line: 176, column: 31, scope: !3890)
!3892 = !DILocation(line: 176, column: 29, scope: !3890)
!3893 = !DILocation(line: 176, column: 9, scope: !3884)
!3894 = !DILocalVariable(name: "col", scope: !3895, file: !608, line: 177, type: !83)
!3895 = distinct !DILexicalBlock(scope: !3896, file: !608, line: 177, column: 13)
!3896 = distinct !DILexicalBlock(scope: !3890, file: !608, line: 176, column: 39)
!3897 = !DILocation(line: 177, column: 22, scope: !3895)
!3898 = !DILocation(line: 177, column: 18, scope: !3895)
!3899 = !DILocation(line: 177, column: 31, scope: !3900)
!3900 = distinct !DILexicalBlock(scope: !3895, file: !608, line: 177, column: 13)
!3901 = !DILocation(line: 177, column: 37, scope: !3900)
!3902 = !DILocation(line: 177, column: 35, scope: !3900)
!3903 = !DILocation(line: 177, column: 13, scope: !3895)
!3904 = !DILocation(line: 178, column: 27, scope: !3905)
!3905 = distinct !DILexicalBlock(scope: !3900, file: !608, line: 177, column: 47)
!3906 = !DILocation(line: 178, column: 40, scope: !3905)
!3907 = !DILocation(line: 178, column: 45, scope: !3905)
!3908 = !DILocation(line: 178, column: 55, scope: !3905)
!3909 = !DILocation(line: 178, column: 53, scope: !3905)
!3910 = !DILocation(line: 178, column: 43, scope: !3905)
!3911 = !DILocation(line: 178, column: 68, scope: !3905)
!3912 = !DILocation(line: 178, column: 85, scope: !3905)
!3913 = !DILocation(line: 178, column: 91, scope: !3905)
!3914 = !DILocation(line: 178, column: 89, scope: !3905)
!3915 = !DILocation(line: 178, column: 95, scope: !3905)
!3916 = !DILocation(line: 178, column: 93, scope: !3905)
!3917 = !DILocation(line: 178, column: 100, scope: !3905)
!3918 = !DILocation(line: 178, column: 107, scope: !3905)
!3919 = !DILocation(line: 178, column: 109, scope: !3905)
!3920 = !DILocation(line: 178, column: 115, scope: !3905)
!3921 = !DILocation(line: 178, column: 113, scope: !3905)
!3922 = !DILocation(line: 178, column: 119, scope: !3905)
!3923 = !DILocation(line: 178, column: 117, scope: !3905)
!3924 = !DILocation(line: 178, column: 105, scope: !3905)
!3925 = !DILocation(line: 178, column: 125, scope: !3905)
!3926 = !DILocation(line: 178, column: 123, scope: !3905)
!3927 = !DILocation(line: 178, column: 80, scope: !3905)
!3928 = !DILocation(line: 178, column: 17, scope: !3905)
!3929 = !DILocation(line: 179, column: 13, scope: !3905)
!3930 = !DILocation(line: 177, column: 43, scope: !3900)
!3931 = !DILocation(line: 177, column: 13, scope: !3900)
!3932 = distinct !{!3932, !3903, !3933, !144}
!3933 = !DILocation(line: 179, column: 13, scope: !3895)
!3934 = !DILocation(line: 180, column: 21, scope: !3896)
!3935 = !DILocation(line: 181, column: 9, scope: !3896)
!3936 = !DILocation(line: 176, column: 35, scope: !3890)
!3937 = !DILocation(line: 176, column: 9, scope: !3890)
!3938 = distinct !{!3938, !3893, !3939, !144}
!3939 = !DILocation(line: 181, column: 9, scope: !3884)
!3940 = !DILocation(line: 182, column: 5, scope: !3885)
!3941 = !DILocation(line: 175, column: 35, scope: !3879)
!3942 = !DILocation(line: 175, column: 5, scope: !3879)
!3943 = distinct !{!3943, !3882, !3944, !144}
!3944 = !DILocation(line: 182, column: 5, scope: !3874)
!3945 = !DILocalVariable(name: "i", scope: !3702, file: !608, line: 185, type: !83)
!3946 = !DILocation(line: 185, column: 9, scope: !3702)
!3947 = !DILocation(line: 186, column: 5, scope: !3702)
!3948 = !DILocation(line: 186, column: 12, scope: !3702)
!3949 = !DILocation(line: 186, column: 16, scope: !3702)
!3950 = !DILocation(line: 186, column: 20, scope: !3702)
!3951 = !DILocation(line: 186, column: 18, scope: !3702)
!3952 = !DILocation(line: 186, column: 14, scope: !3702)
!3953 = !DILocation(line: 187, column: 29, scope: !3954)
!3954 = distinct !DILexicalBlock(scope: !3702, file: !608, line: 186, column: 23)
!3955 = !DILocation(line: 187, column: 42, scope: !3954)
!3956 = !DILocation(line: 187, column: 56, scope: !3954)
!3957 = !DILocation(line: 187, column: 58, scope: !3954)
!3958 = !DILocation(line: 187, column: 65, scope: !3954)
!3959 = !DILocation(line: 187, column: 63, scope: !3954)
!3960 = !DILocation(line: 187, column: 54, scope: !3954)
!3961 = !DILocation(line: 187, column: 78, scope: !3954)
!3962 = !DILocation(line: 187, column: 83, scope: !3954)
!3963 = !DILocation(line: 187, column: 87, scope: !3954)
!3964 = !DILocation(line: 187, column: 85, scope: !3954)
!3965 = !DILocation(line: 187, column: 81, scope: !3954)
!3966 = !DILocation(line: 187, column: 9, scope: !3954)
!3967 = !DILocation(line: 188, column: 10, scope: !3954)
!3968 = distinct !{!3968, !3947, !3969, !144}
!3969 = !DILocation(line: 189, column: 5, scope: !3702)
!3970 = !DILocation(line: 191, column: 1, scope: !3702)
!3971 = distinct !DISubprogram(name: "mayo_generic_m_calculate_SPS", scope: !608, file: !608, line: 195, type: !3972, scopeLine: 195, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !44, retainedNodes: !65)
!3972 = !DISubroutineType(types: !3973)
!3973 = !{null, !611, !98, !83, !83, !83, !48}
!3974 = !DILocalVariable(name: "PS", arg: 1, scope: !3971, file: !608, line: 195, type: !611)
!3975 = !DILocation(line: 195, column: 65, scope: !3971)
!3976 = !DILocalVariable(name: "S", arg: 2, scope: !3971, file: !608, line: 195, type: !98)
!3977 = !DILocation(line: 195, column: 90, scope: !3971)
!3978 = !DILocalVariable(name: "m", arg: 3, scope: !3971, file: !608, line: 195, type: !83)
!3979 = !DILocation(line: 195, column: 97, scope: !3971)
!3980 = !DILocalVariable(name: "k", arg: 4, scope: !3971, file: !608, line: 195, type: !83)
!3981 = !DILocation(line: 195, column: 104, scope: !3971)
!3982 = !DILocalVariable(name: "n", arg: 5, scope: !3971, file: !608, line: 195, type: !83)
!3983 = !DILocation(line: 195, column: 112, scope: !3971)
!3984 = !DILocalVariable(name: "SPS", arg: 6, scope: !3971, file: !608, line: 195, type: !48)
!3985 = !DILocation(line: 195, column: 125, scope: !3971)
!3986 = !DILocalVariable(name: "accumulator", scope: !3971, file: !608, line: 196, type: !3987)
!3987 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 1327104, elements: !3988)
!3988 = !{!3989}
!3989 = !DISubrange(count: 20736)
!3990 = !DILocation(line: 196, column: 14, scope: !3971)
!3991 = !DILocalVariable(name: "m_vec_limbs", scope: !3971, file: !608, line: 197, type: !411)
!3992 = !DILocation(line: 197, column: 15, scope: !3971)
!3993 = !DILocation(line: 197, column: 30, scope: !3971)
!3994 = !DILocation(line: 197, column: 32, scope: !3971)
!3995 = !DILocation(line: 197, column: 37, scope: !3971)
!3996 = !DILocalVariable(name: "row", scope: !3997, file: !608, line: 198, type: !83)
!3997 = distinct !DILexicalBlock(scope: !3971, file: !608, line: 198, column: 5)
!3998 = !DILocation(line: 198, column: 14, scope: !3997)
!3999 = !DILocation(line: 198, column: 10, scope: !3997)
!4000 = !DILocation(line: 198, column: 23, scope: !4001)
!4001 = distinct !DILexicalBlock(scope: !3997, file: !608, line: 198, column: 5)
!4002 = !DILocation(line: 198, column: 29, scope: !4001)
!4003 = !DILocation(line: 198, column: 27, scope: !4001)
!4004 = !DILocation(line: 198, column: 5, scope: !3997)
!4005 = !DILocalVariable(name: "j", scope: !4006, file: !608, line: 199, type: !83)
!4006 = distinct !DILexicalBlock(scope: !4007, file: !608, line: 199, column: 9)
!4007 = distinct !DILexicalBlock(scope: !4001, file: !608, line: 198, column: 39)
!4008 = !DILocation(line: 199, column: 18, scope: !4006)
!4009 = !DILocation(line: 199, column: 14, scope: !4006)
!4010 = !DILocation(line: 199, column: 25, scope: !4011)
!4011 = distinct !DILexicalBlock(scope: !4006, file: !608, line: 199, column: 9)
!4012 = !DILocation(line: 199, column: 29, scope: !4011)
!4013 = !DILocation(line: 199, column: 27, scope: !4011)
!4014 = !DILocation(line: 199, column: 9, scope: !4006)
!4015 = !DILocalVariable(name: "col", scope: !4016, file: !608, line: 200, type: !83)
!4016 = distinct !DILexicalBlock(scope: !4017, file: !608, line: 200, column: 13)
!4017 = distinct !DILexicalBlock(scope: !4011, file: !608, line: 199, column: 37)
!4018 = !DILocation(line: 200, column: 22, scope: !4016)
!4019 = !DILocation(line: 200, column: 18, scope: !4016)
!4020 = !DILocation(line: 200, column: 31, scope: !4021)
!4021 = distinct !DILexicalBlock(scope: !4016, file: !608, line: 200, column: 13)
!4022 = !DILocation(line: 200, column: 37, scope: !4021)
!4023 = !DILocation(line: 200, column: 35, scope: !4021)
!4024 = !DILocation(line: 200, column: 13, scope: !4016)
!4025 = !DILocation(line: 201, column: 31, scope: !4026)
!4026 = distinct !DILexicalBlock(scope: !4021, file: !608, line: 200, column: 50)
!4027 = !DILocation(line: 201, column: 44, scope: !4026)
!4028 = !DILocation(line: 201, column: 50, scope: !4026)
!4029 = !DILocation(line: 201, column: 54, scope: !4026)
!4030 = !DILocation(line: 201, column: 52, scope: !4026)
!4031 = !DILocation(line: 201, column: 58, scope: !4026)
!4032 = !DILocation(line: 201, column: 56, scope: !4026)
!4033 = !DILocation(line: 201, column: 65, scope: !4026)
!4034 = !DILocation(line: 201, column: 63, scope: !4026)
!4035 = !DILocation(line: 201, column: 47, scope: !4026)
!4036 = !DILocation(line: 201, column: 78, scope: !4026)
!4037 = !DILocation(line: 201, column: 95, scope: !4026)
!4038 = !DILocation(line: 201, column: 101, scope: !4026)
!4039 = !DILocation(line: 201, column: 99, scope: !4026)
!4040 = !DILocation(line: 201, column: 105, scope: !4026)
!4041 = !DILocation(line: 201, column: 103, scope: !4026)
!4042 = !DILocation(line: 201, column: 110, scope: !4026)
!4043 = !DILocation(line: 201, column: 117, scope: !4026)
!4044 = !DILocation(line: 201, column: 119, scope: !4026)
!4045 = !DILocation(line: 201, column: 125, scope: !4026)
!4046 = !DILocation(line: 201, column: 123, scope: !4026)
!4047 = !DILocation(line: 201, column: 129, scope: !4026)
!4048 = !DILocation(line: 201, column: 127, scope: !4026)
!4049 = !DILocation(line: 201, column: 115, scope: !4026)
!4050 = !DILocation(line: 201, column: 134, scope: !4026)
!4051 = !DILocation(line: 201, column: 133, scope: !4026)
!4052 = !DILocation(line: 201, column: 90, scope: !4026)
!4053 = !DILocation(line: 201, column: 21, scope: !4026)
!4054 = !DILocation(line: 202, column: 13, scope: !4026)
!4055 = !DILocation(line: 200, column: 44, scope: !4021)
!4056 = !DILocation(line: 200, column: 13, scope: !4021)
!4057 = distinct !{!4057, !4024, !4058, !144}
!4058 = !DILocation(line: 202, column: 13, scope: !4016)
!4059 = !DILocation(line: 203, column: 9, scope: !4017)
!4060 = !DILocation(line: 199, column: 33, scope: !4011)
!4061 = !DILocation(line: 199, column: 9, scope: !4011)
!4062 = distinct !{!4062, !4014, !4063, !144}
!4063 = !DILocation(line: 203, column: 9, scope: !4006)
!4064 = !DILocation(line: 204, column: 5, scope: !4007)
!4065 = !DILocation(line: 198, column: 35, scope: !4001)
!4066 = !DILocation(line: 198, column: 5, scope: !4001)
!4067 = distinct !{!4067, !4004, !4068, !144}
!4068 = !DILocation(line: 204, column: 5, scope: !3997)
!4069 = !DILocalVariable(name: "i", scope: !3971, file: !608, line: 207, type: !83)
!4070 = !DILocation(line: 207, column: 9, scope: !3971)
!4071 = !DILocation(line: 208, column: 5, scope: !3971)
!4072 = !DILocation(line: 208, column: 12, scope: !3971)
!4073 = !DILocation(line: 208, column: 16, scope: !3971)
!4074 = !DILocation(line: 208, column: 18, scope: !3971)
!4075 = !DILocation(line: 208, column: 17, scope: !3971)
!4076 = !DILocation(line: 208, column: 14, scope: !3971)
!4077 = !DILocation(line: 209, column: 29, scope: !4078)
!4078 = distinct !DILexicalBlock(scope: !3971, file: !608, line: 208, column: 21)
!4079 = !DILocation(line: 209, column: 42, scope: !4078)
!4080 = !DILocation(line: 209, column: 56, scope: !4078)
!4081 = !DILocation(line: 209, column: 58, scope: !4078)
!4082 = !DILocation(line: 209, column: 65, scope: !4078)
!4083 = !DILocation(line: 209, column: 63, scope: !4078)
!4084 = !DILocation(line: 209, column: 54, scope: !4078)
!4085 = !DILocation(line: 209, column: 78, scope: !4078)
!4086 = !DILocation(line: 209, column: 84, scope: !4078)
!4087 = !DILocation(line: 209, column: 88, scope: !4078)
!4088 = !DILocation(line: 209, column: 86, scope: !4078)
!4089 = !DILocation(line: 209, column: 82, scope: !4078)
!4090 = !DILocation(line: 209, column: 9, scope: !4078)
!4091 = !DILocation(line: 210, column: 10, scope: !4078)
!4092 = distinct !{!4092, !4071, !4093, !144}
!4093 = !DILocation(line: 211, column: 5, scope: !3971)
!4094 = !DILocation(line: 212, column: 1, scope: !3971)
!4095 = distinct !DISubprogram(name: "m_vec_add", scope: !812, file: !812, line: 17, type: !4096, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !44, retainedNodes: !65)
!4096 = !DISubroutineType(types: !4097)
!4097 = !{null, !83, !611, !48}
!4098 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !4095, file: !812, line: 17, type: !83)
!4099 = !DILocation(line: 17, column: 27, scope: !4095)
!4100 = !DILocalVariable(name: "in", arg: 2, scope: !4095, file: !812, line: 17, type: !611)
!4101 = !DILocation(line: 17, column: 56, scope: !4095)
!4102 = !DILocalVariable(name: "acc", arg: 3, scope: !4095, file: !812, line: 17, type: !48)
!4103 = !DILocation(line: 17, column: 70, scope: !4095)
!4104 = !DILocalVariable(name: "i", scope: !4105, file: !812, line: 18, type: !83)
!4105 = distinct !DILexicalBlock(scope: !4095, file: !812, line: 18, column: 5)
!4106 = !DILocation(line: 18, column: 14, scope: !4105)
!4107 = !DILocation(line: 18, column: 10, scope: !4105)
!4108 = !DILocation(line: 18, column: 21, scope: !4109)
!4109 = distinct !DILexicalBlock(scope: !4105, file: !812, line: 18, column: 5)
!4110 = !DILocation(line: 18, column: 25, scope: !4109)
!4111 = !DILocation(line: 18, column: 23, scope: !4109)
!4112 = !DILocation(line: 18, column: 5, scope: !4105)
!4113 = !DILocation(line: 19, column: 19, scope: !4114)
!4114 = distinct !DILexicalBlock(scope: !4109, file: !812, line: 18, column: 43)
!4115 = !DILocation(line: 19, column: 22, scope: !4114)
!4116 = !DILocation(line: 19, column: 9, scope: !4114)
!4117 = !DILocation(line: 19, column: 13, scope: !4114)
!4118 = !DILocation(line: 19, column: 16, scope: !4114)
!4119 = !DILocation(line: 20, column: 5, scope: !4114)
!4120 = !DILocation(line: 18, column: 39, scope: !4109)
!4121 = !DILocation(line: 18, column: 5, scope: !4109)
!4122 = distinct !{!4122, !4112, !4123, !144}
!4123 = !DILocation(line: 20, column: 5, scope: !4105)
!4124 = !DILocation(line: 21, column: 1, scope: !4095)
!4125 = distinct !DISubprogram(name: "m_vec_multiply_bins", scope: !812, file: !812, line: 49, type: !4126, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !44, retainedNodes: !65)
!4126 = !DISubroutineType(types: !4127)
!4127 = !{null, !83, !48, !48}
!4128 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !4125, file: !812, line: 49, type: !83)
!4129 = !DILocation(line: 49, column: 38, scope: !4125)
!4130 = !DILocalVariable(name: "bins", arg: 2, scope: !4125, file: !812, line: 49, type: !48)
!4131 = !DILocation(line: 49, column: 61, scope: !4125)
!4132 = !DILocalVariable(name: "out", arg: 3, scope: !4125, file: !812, line: 49, type: !48)
!4133 = !DILocation(line: 49, column: 77, scope: !4125)
!4134 = !DILocation(line: 51, column: 26, scope: !4125)
!4135 = !DILocation(line: 51, column: 39, scope: !4125)
!4136 = !DILocation(line: 51, column: 51, scope: !4125)
!4137 = !DILocation(line: 51, column: 49, scope: !4125)
!4138 = !DILocation(line: 51, column: 44, scope: !4125)
!4139 = !DILocation(line: 51, column: 64, scope: !4125)
!4140 = !DILocation(line: 51, column: 77, scope: !4125)
!4141 = !DILocation(line: 51, column: 75, scope: !4125)
!4142 = !DILocation(line: 51, column: 69, scope: !4125)
!4143 = !DILocation(line: 51, column: 5, scope: !4125)
!4144 = !DILocation(line: 52, column: 22, scope: !4125)
!4145 = !DILocation(line: 52, column: 35, scope: !4125)
!4146 = !DILocation(line: 52, column: 47, scope: !4125)
!4147 = !DILocation(line: 52, column: 45, scope: !4125)
!4148 = !DILocation(line: 52, column: 40, scope: !4125)
!4149 = !DILocation(line: 52, column: 60, scope: !4125)
!4150 = !DILocation(line: 52, column: 72, scope: !4125)
!4151 = !DILocation(line: 52, column: 70, scope: !4125)
!4152 = !DILocation(line: 52, column: 65, scope: !4125)
!4153 = !DILocation(line: 52, column: 5, scope: !4125)
!4154 = !DILocation(line: 53, column: 26, scope: !4125)
!4155 = !DILocation(line: 53, column: 39, scope: !4125)
!4156 = !DILocation(line: 53, column: 52, scope: !4125)
!4157 = !DILocation(line: 53, column: 50, scope: !4125)
!4158 = !DILocation(line: 53, column: 44, scope: !4125)
!4159 = !DILocation(line: 53, column: 65, scope: !4125)
!4160 = !DILocation(line: 53, column: 77, scope: !4125)
!4161 = !DILocation(line: 53, column: 75, scope: !4125)
!4162 = !DILocation(line: 53, column: 70, scope: !4125)
!4163 = !DILocation(line: 53, column: 5, scope: !4125)
!4164 = !DILocation(line: 54, column: 22, scope: !4125)
!4165 = !DILocation(line: 54, column: 35, scope: !4125)
!4166 = !DILocation(line: 54, column: 47, scope: !4125)
!4167 = !DILocation(line: 54, column: 45, scope: !4125)
!4168 = !DILocation(line: 54, column: 40, scope: !4125)
!4169 = !DILocation(line: 54, column: 60, scope: !4125)
!4170 = !DILocation(line: 54, column: 72, scope: !4125)
!4171 = !DILocation(line: 54, column: 70, scope: !4125)
!4172 = !DILocation(line: 54, column: 65, scope: !4125)
!4173 = !DILocation(line: 54, column: 5, scope: !4125)
!4174 = !DILocation(line: 55, column: 26, scope: !4125)
!4175 = !DILocation(line: 55, column: 39, scope: !4125)
!4176 = !DILocation(line: 55, column: 51, scope: !4125)
!4177 = !DILocation(line: 55, column: 49, scope: !4125)
!4178 = !DILocation(line: 55, column: 44, scope: !4125)
!4179 = !DILocation(line: 55, column: 64, scope: !4125)
!4180 = !DILocation(line: 55, column: 77, scope: !4125)
!4181 = !DILocation(line: 55, column: 75, scope: !4125)
!4182 = !DILocation(line: 55, column: 69, scope: !4125)
!4183 = !DILocation(line: 55, column: 5, scope: !4125)
!4184 = !DILocation(line: 56, column: 22, scope: !4125)
!4185 = !DILocation(line: 56, column: 35, scope: !4125)
!4186 = !DILocation(line: 56, column: 47, scope: !4125)
!4187 = !DILocation(line: 56, column: 45, scope: !4125)
!4188 = !DILocation(line: 56, column: 40, scope: !4125)
!4189 = !DILocation(line: 56, column: 60, scope: !4125)
!4190 = !DILocation(line: 56, column: 72, scope: !4125)
!4191 = !DILocation(line: 56, column: 70, scope: !4125)
!4192 = !DILocation(line: 56, column: 65, scope: !4125)
!4193 = !DILocation(line: 56, column: 5, scope: !4125)
!4194 = !DILocation(line: 57, column: 26, scope: !4125)
!4195 = !DILocation(line: 57, column: 39, scope: !4125)
!4196 = !DILocation(line: 57, column: 52, scope: !4125)
!4197 = !DILocation(line: 57, column: 50, scope: !4125)
!4198 = !DILocation(line: 57, column: 44, scope: !4125)
!4199 = !DILocation(line: 57, column: 65, scope: !4125)
!4200 = !DILocation(line: 57, column: 78, scope: !4125)
!4201 = !DILocation(line: 57, column: 76, scope: !4125)
!4202 = !DILocation(line: 57, column: 70, scope: !4125)
!4203 = !DILocation(line: 57, column: 5, scope: !4125)
!4204 = !DILocation(line: 58, column: 22, scope: !4125)
!4205 = !DILocation(line: 58, column: 35, scope: !4125)
!4206 = !DILocation(line: 58, column: 47, scope: !4125)
!4207 = !DILocation(line: 58, column: 45, scope: !4125)
!4208 = !DILocation(line: 58, column: 40, scope: !4125)
!4209 = !DILocation(line: 58, column: 60, scope: !4125)
!4210 = !DILocation(line: 58, column: 72, scope: !4125)
!4211 = !DILocation(line: 58, column: 70, scope: !4125)
!4212 = !DILocation(line: 58, column: 65, scope: !4125)
!4213 = !DILocation(line: 58, column: 5, scope: !4125)
!4214 = !DILocation(line: 59, column: 26, scope: !4125)
!4215 = !DILocation(line: 59, column: 39, scope: !4125)
!4216 = !DILocation(line: 59, column: 52, scope: !4125)
!4217 = !DILocation(line: 59, column: 50, scope: !4125)
!4218 = !DILocation(line: 59, column: 44, scope: !4125)
!4219 = !DILocation(line: 59, column: 65, scope: !4125)
!4220 = !DILocation(line: 59, column: 78, scope: !4125)
!4221 = !DILocation(line: 59, column: 76, scope: !4125)
!4222 = !DILocation(line: 59, column: 70, scope: !4125)
!4223 = !DILocation(line: 59, column: 5, scope: !4125)
!4224 = !DILocation(line: 60, column: 22, scope: !4125)
!4225 = !DILocation(line: 60, column: 35, scope: !4125)
!4226 = !DILocation(line: 60, column: 47, scope: !4125)
!4227 = !DILocation(line: 60, column: 45, scope: !4125)
!4228 = !DILocation(line: 60, column: 40, scope: !4125)
!4229 = !DILocation(line: 60, column: 60, scope: !4125)
!4230 = !DILocation(line: 60, column: 72, scope: !4125)
!4231 = !DILocation(line: 60, column: 70, scope: !4125)
!4232 = !DILocation(line: 60, column: 65, scope: !4125)
!4233 = !DILocation(line: 60, column: 5, scope: !4125)
!4234 = !DILocation(line: 61, column: 26, scope: !4125)
!4235 = !DILocation(line: 61, column: 39, scope: !4125)
!4236 = !DILocation(line: 61, column: 52, scope: !4125)
!4237 = !DILocation(line: 61, column: 50, scope: !4125)
!4238 = !DILocation(line: 61, column: 44, scope: !4125)
!4239 = !DILocation(line: 61, column: 65, scope: !4125)
!4240 = !DILocation(line: 61, column: 77, scope: !4125)
!4241 = !DILocation(line: 61, column: 75, scope: !4125)
!4242 = !DILocation(line: 61, column: 70, scope: !4125)
!4243 = !DILocation(line: 61, column: 5, scope: !4125)
!4244 = !DILocation(line: 62, column: 22, scope: !4125)
!4245 = !DILocation(line: 62, column: 35, scope: !4125)
!4246 = !DILocation(line: 62, column: 47, scope: !4125)
!4247 = !DILocation(line: 62, column: 45, scope: !4125)
!4248 = !DILocation(line: 62, column: 40, scope: !4125)
!4249 = !DILocation(line: 62, column: 60, scope: !4125)
!4250 = !DILocation(line: 62, column: 72, scope: !4125)
!4251 = !DILocation(line: 62, column: 70, scope: !4125)
!4252 = !DILocation(line: 62, column: 65, scope: !4125)
!4253 = !DILocation(line: 62, column: 5, scope: !4125)
!4254 = !DILocation(line: 63, column: 26, scope: !4125)
!4255 = !DILocation(line: 63, column: 39, scope: !4125)
!4256 = !DILocation(line: 63, column: 52, scope: !4125)
!4257 = !DILocation(line: 63, column: 50, scope: !4125)
!4258 = !DILocation(line: 63, column: 44, scope: !4125)
!4259 = !DILocation(line: 63, column: 65, scope: !4125)
!4260 = !DILocation(line: 63, column: 77, scope: !4125)
!4261 = !DILocation(line: 63, column: 75, scope: !4125)
!4262 = !DILocation(line: 63, column: 70, scope: !4125)
!4263 = !DILocation(line: 63, column: 5, scope: !4125)
!4264 = !DILocation(line: 64, column: 22, scope: !4125)
!4265 = !DILocation(line: 64, column: 35, scope: !4125)
!4266 = !DILocation(line: 64, column: 47, scope: !4125)
!4267 = !DILocation(line: 64, column: 45, scope: !4125)
!4268 = !DILocation(line: 64, column: 40, scope: !4125)
!4269 = !DILocation(line: 64, column: 60, scope: !4125)
!4270 = !DILocation(line: 64, column: 72, scope: !4125)
!4271 = !DILocation(line: 64, column: 70, scope: !4125)
!4272 = !DILocation(line: 64, column: 65, scope: !4125)
!4273 = !DILocation(line: 64, column: 5, scope: !4125)
!4274 = !DILocation(line: 65, column: 17, scope: !4125)
!4275 = !DILocation(line: 65, column: 30, scope: !4125)
!4276 = !DILocation(line: 65, column: 37, scope: !4125)
!4277 = !DILocation(line: 65, column: 35, scope: !4125)
!4278 = !DILocation(line: 65, column: 50, scope: !4125)
!4279 = !DILocation(line: 65, column: 5, scope: !4125)
!4280 = !DILocation(line: 66, column: 1, scope: !4125)
!4281 = distinct !DISubprogram(name: "m_vec_mul_add_x_inv", scope: !812, file: !812, line: 40, type: !4096, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !44, retainedNodes: !65)
!4282 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !4281, file: !812, line: 40, type: !83)
!4283 = !DILocation(line: 40, column: 38, scope: !4281)
!4284 = !DILocalVariable(name: "in", arg: 2, scope: !4281, file: !812, line: 40, type: !611)
!4285 = !DILocation(line: 40, column: 67, scope: !4281)
!4286 = !DILocalVariable(name: "acc", arg: 3, scope: !4281, file: !812, line: 40, type: !48)
!4287 = !DILocation(line: 40, column: 81, scope: !4281)
!4288 = !DILocalVariable(name: "mask_lsb", scope: !4281, file: !812, line: 41, type: !49)
!4289 = !DILocation(line: 41, column: 14, scope: !4281)
!4290 = !DILocalVariable(name: "i", scope: !4291, file: !812, line: 42, type: !83)
!4291 = distinct !DILexicalBlock(scope: !4281, file: !812, line: 42, column: 5)
!4292 = !DILocation(line: 42, column: 13, scope: !4291)
!4293 = !DILocation(line: 42, column: 9, scope: !4291)
!4294 = !DILocation(line: 42, column: 18, scope: !4295)
!4295 = distinct !DILexicalBlock(scope: !4291, file: !812, line: 42, column: 5)
!4296 = !DILocation(line: 42, column: 22, scope: !4295)
!4297 = !DILocation(line: 42, column: 20, scope: !4295)
!4298 = !DILocation(line: 42, column: 5, scope: !4291)
!4299 = !DILocalVariable(name: "t", scope: !4300, file: !812, line: 43, type: !49)
!4300 = distinct !DILexicalBlock(scope: !4295, file: !812, line: 42, column: 39)
!4301 = !DILocation(line: 43, column: 18, scope: !4300)
!4302 = !DILocation(line: 43, column: 22, scope: !4300)
!4303 = !DILocation(line: 43, column: 25, scope: !4300)
!4304 = !DILocation(line: 43, column: 30, scope: !4300)
!4305 = !DILocation(line: 43, column: 28, scope: !4300)
!4306 = !DILocation(line: 44, column: 21, scope: !4300)
!4307 = !DILocation(line: 44, column: 24, scope: !4300)
!4308 = !DILocation(line: 44, column: 29, scope: !4300)
!4309 = !DILocation(line: 44, column: 27, scope: !4300)
!4310 = !DILocation(line: 44, column: 32, scope: !4300)
!4311 = !DILocation(line: 44, column: 41, scope: !4300)
!4312 = !DILocation(line: 44, column: 43, scope: !4300)
!4313 = !DILocation(line: 44, column: 38, scope: !4300)
!4314 = !DILocation(line: 44, column: 9, scope: !4300)
!4315 = !DILocation(line: 44, column: 13, scope: !4300)
!4316 = !DILocation(line: 44, column: 16, scope: !4300)
!4317 = !DILocation(line: 45, column: 5, scope: !4300)
!4318 = !DILocation(line: 42, column: 36, scope: !4295)
!4319 = !DILocation(line: 42, column: 5, scope: !4295)
!4320 = distinct !{!4320, !4298, !4321, !144}
!4321 = !DILocation(line: 45, column: 5, scope: !4291)
!4322 = !DILocation(line: 46, column: 1, scope: !4281)
!4323 = distinct !DISubprogram(name: "m_vec_mul_add_x", scope: !812, file: !812, line: 31, type: !4096, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !44, retainedNodes: !65)
!4324 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !4323, file: !812, line: 31, type: !83)
!4325 = !DILocation(line: 31, column: 34, scope: !4323)
!4326 = !DILocalVariable(name: "in", arg: 2, scope: !4323, file: !812, line: 31, type: !611)
!4327 = !DILocation(line: 31, column: 63, scope: !4323)
!4328 = !DILocalVariable(name: "acc", arg: 3, scope: !4323, file: !812, line: 31, type: !48)
!4329 = !DILocation(line: 31, column: 77, scope: !4323)
!4330 = !DILocalVariable(name: "mask_msb", scope: !4323, file: !812, line: 32, type: !49)
!4331 = !DILocation(line: 32, column: 14, scope: !4323)
!4332 = !DILocalVariable(name: "i", scope: !4333, file: !812, line: 33, type: !83)
!4333 = distinct !DILexicalBlock(scope: !4323, file: !812, line: 33, column: 5)
!4334 = !DILocation(line: 33, column: 13, scope: !4333)
!4335 = !DILocation(line: 33, column: 9, scope: !4333)
!4336 = !DILocation(line: 33, column: 18, scope: !4337)
!4337 = distinct !DILexicalBlock(scope: !4333, file: !812, line: 33, column: 5)
!4338 = !DILocation(line: 33, column: 22, scope: !4337)
!4339 = !DILocation(line: 33, column: 20, scope: !4337)
!4340 = !DILocation(line: 33, column: 5, scope: !4333)
!4341 = !DILocalVariable(name: "t", scope: !4342, file: !812, line: 34, type: !49)
!4342 = distinct !DILexicalBlock(scope: !4337, file: !812, line: 33, column: 39)
!4343 = !DILocation(line: 34, column: 18, scope: !4342)
!4344 = !DILocation(line: 34, column: 22, scope: !4342)
!4345 = !DILocation(line: 34, column: 25, scope: !4342)
!4346 = !DILocation(line: 34, column: 30, scope: !4342)
!4347 = !DILocation(line: 34, column: 28, scope: !4342)
!4348 = !DILocation(line: 35, column: 21, scope: !4342)
!4349 = !DILocation(line: 35, column: 24, scope: !4342)
!4350 = !DILocation(line: 35, column: 29, scope: !4342)
!4351 = !DILocation(line: 35, column: 27, scope: !4342)
!4352 = !DILocation(line: 35, column: 32, scope: !4342)
!4353 = !DILocation(line: 35, column: 42, scope: !4342)
!4354 = !DILocation(line: 35, column: 44, scope: !4342)
!4355 = !DILocation(line: 35, column: 50, scope: !4342)
!4356 = !DILocation(line: 35, column: 38, scope: !4342)
!4357 = !DILocation(line: 35, column: 9, scope: !4342)
!4358 = !DILocation(line: 35, column: 13, scope: !4342)
!4359 = !DILocation(line: 35, column: 16, scope: !4342)
!4360 = !DILocation(line: 36, column: 5, scope: !4342)
!4361 = !DILocation(line: 33, column: 36, scope: !4337)
!4362 = !DILocation(line: 33, column: 5, scope: !4337)
!4363 = distinct !{!4363, !4340, !4364, !144}
!4364 = !DILocation(line: 36, column: 5, scope: !4333)
!4365 = !DILocation(line: 37, column: 1, scope: !4323)
!4366 = distinct !DISubprogram(name: "m_vec_copy", scope: !812, file: !812, line: 10, type: !4096, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !44, retainedNodes: !65)
!4367 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !4366, file: !812, line: 10, type: !83)
!4368 = !DILocation(line: 10, column: 28, scope: !4366)
!4369 = !DILocalVariable(name: "in", arg: 2, scope: !4366, file: !812, line: 10, type: !611)
!4370 = !DILocation(line: 10, column: 57, scope: !4366)
!4371 = !DILocalVariable(name: "out", arg: 3, scope: !4366, file: !812, line: 10, type: !48)
!4372 = !DILocation(line: 10, column: 71, scope: !4366)
!4373 = !DILocalVariable(name: "i", scope: !4374, file: !812, line: 11, type: !83)
!4374 = distinct !DILexicalBlock(scope: !4366, file: !812, line: 11, column: 5)
!4375 = !DILocation(line: 11, column: 14, scope: !4374)
!4376 = !DILocation(line: 11, column: 10, scope: !4374)
!4377 = !DILocation(line: 11, column: 21, scope: !4378)
!4378 = distinct !DILexicalBlock(scope: !4374, file: !812, line: 11, column: 5)
!4379 = !DILocation(line: 11, column: 25, scope: !4378)
!4380 = !DILocation(line: 11, column: 23, scope: !4378)
!4381 = !DILocation(line: 11, column: 5, scope: !4374)
!4382 = !DILocation(line: 12, column: 18, scope: !4383)
!4383 = distinct !DILexicalBlock(scope: !4378, file: !812, line: 11, column: 43)
!4384 = !DILocation(line: 12, column: 21, scope: !4383)
!4385 = !DILocation(line: 12, column: 9, scope: !4383)
!4386 = !DILocation(line: 12, column: 13, scope: !4383)
!4387 = !DILocation(line: 12, column: 16, scope: !4383)
!4388 = !DILocation(line: 13, column: 5, scope: !4383)
!4389 = !DILocation(line: 11, column: 39, scope: !4378)
!4390 = !DILocation(line: 11, column: 5, scope: !4378)
!4391 = distinct !{!4391, !4381, !4392, !144}
!4392 = !DILocation(line: 13, column: 5, scope: !4374)
!4393 = !DILocation(line: 14, column: 1, scope: !4366)
