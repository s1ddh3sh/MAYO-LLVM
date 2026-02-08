; ModuleID = 'composite'
source_filename = "composite"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mayo_params_t = type { i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.sk_t = type { [113103 x i64], [2414 x i8] }

@MAYO_1 = external constant %struct.mayo_params_t, align 8
@MAYO_2 = external constant %struct.mayo_params_t, align 8
@MAYO_3 = external constant %struct.mayo_params_t, align 8
@MAYO_5 = external constant %struct.mayo_params_t, align 8
@__const.main.params = private unnamed_addr constant [4 x ptr] [ptr @MAYO_1, ptr @MAYO_2, ptr @MAYO_3, ptr @MAYO_5], align 16
@__const.example_mayo.msg = private unnamed_addr constant <{ i8, [31 x i8] }> <{ i8 14, [31 x i8] zeroinitializer }>, align 16
@.str = private unnamed_addr constant [17 x i8] c"Example with %s\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [17 x i8] c"mayo_keypair -> \00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [6 x i8] c"FAIL\0A\00", align 1, !dbg !9
@.str.3 = private unnamed_addr constant [4 x i8] c"OK\0A\00", align 1, !dbg !14
@.str.4 = private unnamed_addr constant [19 x i8] c"mayo_expand_sk -> \00", align 1, !dbg !19
@.str.5 = private unnamed_addr constant [19 x i8] c"mayo_expand_pk -> \00", align 1, !dbg !24
@.str.6 = private unnamed_addr constant [14 x i8] c"mayo_sign -> \00", align 1, !dbg !26
@.str.7 = private unnamed_addr constant [39 x i8] c"mayo_open (with correct signature) -> \00", align 1, !dbg !31
@.str.8 = private unnamed_addr constant [41 x i8] c"mayo_verify (with correct signature) -> \00", align 1, !dbg !36
@.str.9 = private unnamed_addr constant [39 x i8] c"mayo_open (with altered signature) -> \00", align 1, !dbg !41
@.str.10 = private unnamed_addr constant [41 x i8] c"mayo_verify (with altered signature) -> \00", align 1, !dbg !43
@unsigned_char_blocker = external global i8, align 1

; Function Attrs: noinline nounwind optnone
define dso_local i32 @main() #0 !dbg !79 {
entry:
  %retval = alloca i32, align 4
  %params = alloca [4 x ptr], align 16
  %paramslen = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
    #dbg_declare(ptr %params, !83, !DIExpression(), !118)
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %params, ptr align 16 @__const.main.params, i64 32, i1 false), !dbg !118
    #dbg_declare(ptr %paramslen, !119, !DIExpression(), !120)
  store i32 4, ptr %paramslen, align 4, !dbg !120
    #dbg_declare(ptr %i, !121, !DIExpression(), !123)
  store i32 0, ptr %i, align 4, !dbg !123
  br label %for.cond, !dbg !124

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !125
  %1 = load i32, ptr %paramslen, align 4, !dbg !127
  %cmp = icmp slt i32 %0, %1, !dbg !128
  br i1 %cmp, label %for.body, label %for.end, !dbg !129

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4, !dbg !130
  %idxprom = sext i32 %2 to i64, !dbg !133
  %arrayidx = getelementptr inbounds [4 x ptr], ptr %params, i64 0, i64 %idxprom, !dbg !133
  %3 = load ptr, ptr %arrayidx, align 8, !dbg !133
  %call = call i32 @example_mayo(ptr noundef %3), !dbg !134
  %cmp1 = icmp ne i32 %call, 0, !dbg !135
  br i1 %cmp1, label %if.then, label %if.end, !dbg !135

if.then:                                          ; preds = %for.body
  store i32 -1, ptr %retval, align 4, !dbg !136
  br label %for.end, !dbg !136

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !138

for.inc:                                          ; preds = %if.end
  %4 = load i32, ptr %i, align 4, !dbg !139
  %inc = add nsw i32 %4, 1, !dbg !139
  store i32 %inc, ptr %i, align 4, !dbg !139
  br label %for.cond, !dbg !140, !llvm.loop !141

for.end:                                          ; preds = %if.then, %for.cond
  %5 = load i32, ptr %retval, align 4, !dbg !144
  ret i32 %5, !dbg !144
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noinline nounwind optnone
define internal i32 @example_mayo(ptr noundef %p) #0 !dbg !145 {
entry:
  %p.addr = alloca ptr, align 8
  %msglen = alloca i64, align 8
  %smlen = alloca i64, align 8
  %pk = alloca ptr, align 8
  %sk = alloca ptr, align 8
  %epk = alloca ptr, align 8
  %esk = alloca ptr, align 8
  %sig = alloca ptr, align 8
  %msg = alloca [32 x i8], align 16
  %msg2 = alloca [32 x i8], align 16
  %res = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
    #dbg_declare(ptr %p.addr, !148, !DIExpression(), !149)
    #dbg_declare(ptr %msglen, !150, !DIExpression(), !151)
  store i64 32, ptr %msglen, align 8, !dbg !151
    #dbg_declare(ptr %smlen, !152, !DIExpression(), !153)
  %0 = load ptr, ptr %p.addr, align 8, !dbg !154
  %sig_bytes = getelementptr inbounds nuw %struct.mayo_params_t, ptr %0, i32 0, i32 16, !dbg !155
  %1 = load i32, ptr %sig_bytes, align 8, !dbg !155
  %conv = sext i32 %1 to i64, !dbg !155
  %2 = load i64, ptr %msglen, align 8, !dbg !156
  %add = add i64 %conv, %2, !dbg !157
  store i64 %add, ptr %smlen, align 8, !dbg !153
    #dbg_declare(ptr %pk, !158, !DIExpression(), !159)
  %3 = load ptr, ptr %p.addr, align 8, !dbg !160
  %cpk_bytes = getelementptr inbounds nuw %struct.mayo_params_t, ptr %3, i32 0, i32 15, !dbg !161
  %4 = load i32, ptr %cpk_bytes, align 4, !dbg !161
  %conv1 = sext i32 %4 to i64, !dbg !161
  %call = call noalias ptr @calloc(i64 noundef %conv1, i64 noundef 1) #7, !dbg !162
  store ptr %call, ptr %pk, align 8, !dbg !159
    #dbg_declare(ptr %sk, !163, !DIExpression(), !164)
  %5 = load ptr, ptr %p.addr, align 8, !dbg !165
  %csk_bytes = getelementptr inbounds nuw %struct.mayo_params_t, ptr %5, i32 0, i32 14, !dbg !166
  %6 = load i32, ptr %csk_bytes, align 8, !dbg !166
  %conv2 = sext i32 %6 to i64, !dbg !166
  %call3 = call noalias ptr @calloc(i64 noundef %conv2, i64 noundef 1) #7, !dbg !167
  store ptr %call3, ptr %sk, align 8, !dbg !164
    #dbg_declare(ptr %epk, !168, !DIExpression(), !169)
  %call4 = call noalias ptr @calloc(i64 noundef 1, i64 noundef 915840) #7, !dbg !170
  store ptr %call4, ptr %epk, align 8, !dbg !169
    #dbg_declare(ptr %esk, !171, !DIExpression(), !186)
  %call5 = call noalias ptr @calloc(i64 noundef 1, i64 noundef 907240) #7, !dbg !187
  store ptr %call5, ptr %esk, align 8, !dbg !186
    #dbg_declare(ptr %sig, !188, !DIExpression(), !189)
  %7 = load ptr, ptr %p.addr, align 8, !dbg !190
  %sig_bytes6 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %7, i32 0, i32 16, !dbg !191
  %8 = load i32, ptr %sig_bytes6, align 8, !dbg !191
  %conv7 = sext i32 %8 to i64, !dbg !191
  %9 = load i64, ptr %msglen, align 8, !dbg !192
  %add8 = add i64 %conv7, %9, !dbg !193
  %call9 = call noalias ptr @calloc(i64 noundef %add8, i64 noundef 1) #7, !dbg !194
  store ptr %call9, ptr %sig, align 8, !dbg !189
    #dbg_declare(ptr %msg, !195, !DIExpression(), !199)
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %msg, ptr align 16 @__const.example_mayo.msg, i64 32, i1 false), !dbg !199
    #dbg_declare(ptr %msg2, !200, !DIExpression(), !201)
  call void @llvm.memset.p0.i64(ptr align 16 %msg2, i8 0, i64 32, i1 false), !dbg !201
  %10 = load ptr, ptr %p.addr, align 8, !dbg !202
  %name = getelementptr inbounds nuw %struct.mayo_params_t, ptr %10, i32 0, i32 22, !dbg !203
  %11 = load ptr, ptr %name, align 8, !dbg !203
  %call10 = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %11), !dbg !204
  %call11 = call i32 (ptr, ...) @printf(ptr noundef @.str.1), !dbg !205
    #dbg_declare(ptr %res, !206, !DIExpression(), !207)
  %12 = load ptr, ptr %p.addr, align 8, !dbg !208
  %13 = load ptr, ptr %pk, align 8, !dbg !209
  %14 = load ptr, ptr %sk, align 8, !dbg !210
  %call12 = call i32 @mayo_keypair(ptr noundef %12, ptr noundef %13, ptr noundef %14), !dbg !211
  store i32 %call12, ptr %res, align 4, !dbg !207
  %15 = load i32, ptr %res, align 4, !dbg !212
  %cmp = icmp ne i32 %15, 0, !dbg !214
  br i1 %cmp, label %if.then, label %if.else, !dbg !214

if.then:                                          ; preds = %entry
  %call14 = call i32 (ptr, ...) @printf(ptr noundef @.str.2), !dbg !215
  store i32 -1, ptr %res, align 4, !dbg !217
  br label %err, !dbg !218

if.else:                                          ; preds = %entry
  %call15 = call i32 (ptr, ...) @printf(ptr noundef @.str.3), !dbg !219
  br label %if.end

if.end:                                           ; preds = %if.else
  %call16 = call i32 (ptr, ...) @printf(ptr noundef @.str.4), !dbg !221
  %16 = load ptr, ptr %p.addr, align 8, !dbg !222
  %17 = load ptr, ptr %sk, align 8, !dbg !223
  %18 = load ptr, ptr %esk, align 8, !dbg !224
  %call17 = call i32 @mayo_expand_sk(ptr noundef %16, ptr noundef %17, ptr noundef %18), !dbg !225
  store i32 %call17, ptr %res, align 4, !dbg !226
  %19 = load i32, ptr %res, align 4, !dbg !227
  %cmp18 = icmp ne i32 %19, 0, !dbg !229
  br i1 %cmp18, label %if.then20, label %if.else22, !dbg !229

if.then20:                                        ; preds = %if.end
  %call21 = call i32 (ptr, ...) @printf(ptr noundef @.str.2), !dbg !230
  store i32 -1, ptr %res, align 4, !dbg !232
  br label %err, !dbg !233

if.else22:                                        ; preds = %if.end
  %call23 = call i32 (ptr, ...) @printf(ptr noundef @.str.3), !dbg !234
  br label %if.end24

if.end24:                                         ; preds = %if.else22
  %call25 = call i32 (ptr, ...) @printf(ptr noundef @.str.5), !dbg !236
  %20 = load ptr, ptr %p.addr, align 8, !dbg !237
  %21 = load ptr, ptr %pk, align 8, !dbg !238
  %22 = load ptr, ptr %epk, align 8, !dbg !239
  %call26 = call i32 @mayo_expand_pk(ptr noundef %20, ptr noundef %21, ptr noundef %22), !dbg !240
  store i32 %call26, ptr %res, align 4, !dbg !241
  %23 = load i32, ptr %res, align 4, !dbg !242
  %cmp27 = icmp ne i32 %23, 0, !dbg !244
  br i1 %cmp27, label %if.then29, label %if.else31, !dbg !244

if.then29:                                        ; preds = %if.end24
  %call30 = call i32 (ptr, ...) @printf(ptr noundef @.str.2), !dbg !245
  store i32 -1, ptr %res, align 4, !dbg !247
  br label %err, !dbg !248

if.else31:                                        ; preds = %if.end24
  %call32 = call i32 (ptr, ...) @printf(ptr noundef @.str.3), !dbg !249
  br label %if.end33

if.end33:                                         ; preds = %if.else31
  %call34 = call i32 (ptr, ...) @printf(ptr noundef @.str.6), !dbg !251
  %24 = load ptr, ptr %p.addr, align 8, !dbg !252
  %25 = load ptr, ptr %sig, align 8, !dbg !253
  %arraydecay = getelementptr inbounds [32 x i8], ptr %msg, i64 0, i64 0, !dbg !254
  %26 = load i64, ptr %msglen, align 8, !dbg !255
  %27 = load ptr, ptr %sk, align 8, !dbg !256
  %call35 = call i32 @mayo_sign(ptr noundef %24, ptr noundef %25, ptr noundef %smlen, ptr noundef %arraydecay, i64 noundef %26, ptr noundef %27), !dbg !257
  store i32 %call35, ptr %res, align 4, !dbg !258
  %28 = load i32, ptr %res, align 4, !dbg !259
  %cmp36 = icmp ne i32 %28, 0, !dbg !261
  br i1 %cmp36, label %if.then38, label %if.else40, !dbg !261

if.then38:                                        ; preds = %if.end33
  %call39 = call i32 (ptr, ...) @printf(ptr noundef @.str.2), !dbg !262
  store i32 -1, ptr %res, align 4, !dbg !264
  br label %err, !dbg !265

if.else40:                                        ; preds = %if.end33
  %call41 = call i32 (ptr, ...) @printf(ptr noundef @.str.3), !dbg !266
  br label %if.end42

if.end42:                                         ; preds = %if.else40
  %call43 = call i32 (ptr, ...) @printf(ptr noundef @.str.7), !dbg !268
  %29 = load ptr, ptr %p.addr, align 8, !dbg !269
  %arraydecay44 = getelementptr inbounds [32 x i8], ptr %msg2, i64 0, i64 0, !dbg !270
  %30 = load ptr, ptr %sig, align 8, !dbg !271
  %31 = load i64, ptr %smlen, align 8, !dbg !272
  %32 = load ptr, ptr %pk, align 8, !dbg !273
  %call45 = call i32 @mayo_open(ptr noundef %29, ptr noundef %arraydecay44, ptr noundef %msglen, ptr noundef %30, i64 noundef %31, ptr noundef %32), !dbg !274
  store i32 %call45, ptr %res, align 4, !dbg !275
  %33 = load i32, ptr %res, align 4, !dbg !276
  %cmp46 = icmp ne i32 %33, 0, !dbg !278
  br i1 %cmp46, label %if.then51, label %lor.lhs.false, !dbg !279

lor.lhs.false:                                    ; preds = %if.end42
  %arraydecay48 = getelementptr inbounds [32 x i8], ptr %msg, i64 0, i64 0, !dbg !280
  %arraydecay49 = getelementptr inbounds [32 x i8], ptr %msg2, i64 0, i64 0, !dbg !281
  %34 = load i64, ptr %msglen, align 8, !dbg !282
  %call50 = call i32 @memcmp(ptr noundef %arraydecay48, ptr noundef %arraydecay49, i64 noundef %34) #8, !dbg !283
  %tobool = icmp ne i32 %call50, 0, !dbg !283
  br i1 %tobool, label %if.then51, label %if.else53, !dbg !279

if.then51:                                        ; preds = %lor.lhs.false, %if.end42
  %call52 = call i32 (ptr, ...) @printf(ptr noundef @.str.2), !dbg !284
  store i32 -1, ptr %res, align 4, !dbg !286
  br label %err, !dbg !287

if.else53:                                        ; preds = %lor.lhs.false
  store i32 0, ptr %res, align 4, !dbg !288
  %call54 = call i32 (ptr, ...) @printf(ptr noundef @.str.3), !dbg !290
  br label %if.end55

if.end55:                                         ; preds = %if.else53
  %call56 = call i32 (ptr, ...) @printf(ptr noundef @.str.8), !dbg !291
  %35 = load ptr, ptr %p.addr, align 8, !dbg !292
  %arraydecay57 = getelementptr inbounds [32 x i8], ptr %msg, i64 0, i64 0, !dbg !293
  %36 = load i64, ptr %msglen, align 8, !dbg !294
  %37 = load ptr, ptr %sig, align 8, !dbg !295
  %38 = load ptr, ptr %pk, align 8, !dbg !296
  %call58 = call i32 @mayo_verify(ptr noundef %35, ptr noundef %arraydecay57, i64 noundef %36, ptr noundef %37, ptr noundef %38), !dbg !297
  store i32 %call58, ptr %res, align 4, !dbg !298
  %39 = load i32, ptr %res, align 4, !dbg !299
  %cmp59 = icmp ne i32 %39, 0, !dbg !301
  br i1 %cmp59, label %if.then61, label %if.else63, !dbg !301

if.then61:                                        ; preds = %if.end55
  %call62 = call i32 (ptr, ...) @printf(ptr noundef @.str.2), !dbg !302
  store i32 -1, ptr %res, align 4, !dbg !304
  br label %err, !dbg !305

if.else63:                                        ; preds = %if.end55
  store i32 0, ptr %res, align 4, !dbg !306
  %call64 = call i32 (ptr, ...) @printf(ptr noundef @.str.3), !dbg !308
  br label %if.end65

if.end65:                                         ; preds = %if.else63
  %call66 = call i32 (ptr, ...) @printf(ptr noundef @.str.9), !dbg !309
  %40 = load ptr, ptr %sig, align 8, !dbg !310
  %arrayidx = getelementptr inbounds i8, ptr %40, i64 0, !dbg !310
  %41 = load i8, ptr %arrayidx, align 1, !dbg !310
  %conv67 = zext i8 %41 to i32, !dbg !310
  %not = xor i32 %conv67, -1, !dbg !311
  %conv68 = trunc i32 %not to i8, !dbg !311
  %42 = load ptr, ptr %sig, align 8, !dbg !312
  %arrayidx69 = getelementptr inbounds i8, ptr %42, i64 0, !dbg !312
  store i8 %conv68, ptr %arrayidx69, align 1, !dbg !313
  %arraydecay70 = getelementptr inbounds [32 x i8], ptr %msg2, i64 0, i64 0, !dbg !314
  %43 = load i64, ptr %msglen, align 8, !dbg !315
  call void @llvm.memset.p0.i64(ptr align 16 %arraydecay70, i8 0, i64 %43, i1 false), !dbg !314
  %44 = load ptr, ptr %p.addr, align 8, !dbg !316
  %arraydecay71 = getelementptr inbounds [32 x i8], ptr %msg2, i64 0, i64 0, !dbg !317
  %45 = load ptr, ptr %sig, align 8, !dbg !318
  %46 = load i64, ptr %smlen, align 8, !dbg !319
  %47 = load ptr, ptr %pk, align 8, !dbg !320
  %call72 = call i32 @mayo_open(ptr noundef %44, ptr noundef %arraydecay71, ptr noundef %msglen, ptr noundef %45, i64 noundef %46, ptr noundef %47), !dbg !321
  store i32 %call72, ptr %res, align 4, !dbg !322
  %48 = load i32, ptr %res, align 4, !dbg !323
  %cmp73 = icmp ne i32 %48, 1, !dbg !325
  br i1 %cmp73, label %if.then80, label %lor.lhs.false75, !dbg !326

lor.lhs.false75:                                  ; preds = %if.end65
  %arraydecay76 = getelementptr inbounds [32 x i8], ptr %msg, i64 0, i64 0, !dbg !327
  %arraydecay77 = getelementptr inbounds [32 x i8], ptr %msg2, i64 0, i64 0, !dbg !328
  %49 = load i64, ptr %msglen, align 8, !dbg !329
  %call78 = call i32 @memcmp(ptr noundef %arraydecay76, ptr noundef %arraydecay77, i64 noundef %49) #8, !dbg !330
  %tobool79 = icmp ne i32 %call78, 0, !dbg !330
  br i1 %tobool79, label %if.else82, label %if.then80, !dbg !326

if.then80:                                        ; preds = %lor.lhs.false75, %if.end65
  %call81 = call i32 (ptr, ...) @printf(ptr noundef @.str.2), !dbg !331
  store i32 -1, ptr %res, align 4, !dbg !333
  br label %err, !dbg !334

if.else82:                                        ; preds = %lor.lhs.false75
  store i32 0, ptr %res, align 4, !dbg !335
  %call83 = call i32 (ptr, ...) @printf(ptr noundef @.str.3), !dbg !337
  br label %if.end84

if.end84:                                         ; preds = %if.else82
  %call85 = call i32 (ptr, ...) @printf(ptr noundef @.str.10), !dbg !338
  %50 = load ptr, ptr %p.addr, align 8, !dbg !339
  %arraydecay86 = getelementptr inbounds [32 x i8], ptr %msg, i64 0, i64 0, !dbg !340
  %51 = load i64, ptr %msglen, align 8, !dbg !341
  %52 = load ptr, ptr %sig, align 8, !dbg !342
  %53 = load ptr, ptr %pk, align 8, !dbg !343
  %call87 = call i32 @mayo_verify(ptr noundef %50, ptr noundef %arraydecay86, i64 noundef %51, ptr noundef %52, ptr noundef %53), !dbg !344
  store i32 %call87, ptr %res, align 4, !dbg !345
  %54 = load i32, ptr %res, align 4, !dbg !346
  %cmp88 = icmp eq i32 %54, 0, !dbg !348
  br i1 %cmp88, label %if.then90, label %if.else92, !dbg !348

if.then90:                                        ; preds = %if.end84
  %call91 = call i32 (ptr, ...) @printf(ptr noundef @.str.2), !dbg !349
  store i32 -1, ptr %res, align 4, !dbg !351
  br label %err, !dbg !352

if.else92:                                        ; preds = %if.end84
  store i32 0, ptr %res, align 4, !dbg !353
  %call93 = call i32 (ptr, ...) @printf(ptr noundef @.str.3), !dbg !355
  br label %if.end94

if.end94:                                         ; preds = %if.else92
  br label %err, !dbg !356

err:                                              ; preds = %if.end94, %if.then90, %if.then80, %if.then61, %if.then51, %if.then38, %if.then29, %if.then20, %if.then
    #dbg_label(!357, !358)
  %55 = load ptr, ptr %pk, align 8, !dbg !359
  call void @free(ptr noundef %55) #9, !dbg !360
  %56 = load ptr, ptr %epk, align 8, !dbg !361
  call void @free(ptr noundef %56) #9, !dbg !362
  %57 = load ptr, ptr %sk, align 8, !dbg !363
  %58 = load ptr, ptr %p.addr, align 8, !dbg !364
  %csk_bytes95 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %58, i32 0, i32 14, !dbg !365
  %59 = load i32, ptr %csk_bytes95, align 8, !dbg !365
  %conv96 = sext i32 %59 to i64, !dbg !365
  call void @mayo_secure_free(ptr noundef %57, i64 noundef %conv96), !dbg !366
  %60 = load ptr, ptr %esk, align 8, !dbg !367
  call void @mayo_secure_free(ptr noundef %60, i64 noundef 907240), !dbg !368
  %61 = load ptr, ptr %sig, align 8, !dbg !369
  call void @free(ptr noundef %61) #9, !dbg !370
  %62 = load i32, ptr %res, align 4, !dbg !371
  ret i32 %62, !dbg !372
}

; Function Attrs: nounwind allocsize(0,1)
declare noalias ptr @calloc(i64 noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare i32 @printf(ptr noundef, ...) #4

; Function Attrs: nounwind willreturn memory(read)
declare i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #5

; Function Attrs: nounwind
declare void @free(ptr noundef) #6

declare void @mayo_secure_free(ptr noundef, i64 noundef) #4

; Function Attrs: noinline nounwind optnone
define dso_local i32 @mayo_keypair(ptr noundef %p, ptr noundef %pk, ptr noundef %sk) #0 !dbg !373 {
entry:
  %p.addr = alloca ptr, align 8
  %pk.addr = alloca ptr, align 8
  %sk.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
    #dbg_declare(ptr %p.addr, !404, !DIExpression(), !405)
  store ptr %pk, ptr %pk.addr, align 8
    #dbg_declare(ptr %pk.addr, !406, !DIExpression(), !407)
  store ptr %sk, ptr %sk.addr, align 8
    #dbg_declare(ptr %sk.addr, !408, !DIExpression(), !409)
    #dbg_declare(ptr %ret, !410, !DIExpression(), !411)
  store i32 0, ptr %ret, align 4, !dbg !411
  %0 = load ptr, ptr %p.addr, align 8, !dbg !412
  %1 = load ptr, ptr %pk.addr, align 8, !dbg !413
  %2 = load ptr, ptr %sk.addr, align 8, !dbg !414
  %call = call i32 @mayo_keypair_compact(ptr noundef %0, ptr noundef %1, ptr noundef %2), !dbg !415
  store i32 %call, ptr %ret, align 4, !dbg !416
  %3 = load i32, ptr %ret, align 4, !dbg !417
  %cmp = icmp ne i32 %3, 0, !dbg !419
  br i1 %cmp, label %if.then, label %if.end, !dbg !419

if.then:                                          ; preds = %entry
  br label %err, !dbg !420

if.end:                                           ; preds = %entry
  br label %err, !dbg !422

err:                                              ; preds = %if.end, %if.then
    #dbg_label(!423, !424)
  %4 = load i32, ptr %ret, align 4, !dbg !425
  ret i32 %4, !dbg !426
}

; Function Attrs: noinline nounwind optnone
define dso_local i32 @mayo_keypair_compact(ptr noundef %p, ptr noundef %cpk, ptr noundef %csk) #0 !dbg !427 {
entry:
  %p.addr = alloca ptr, align 8
  %cpk.addr = alloca ptr, align 8
  %csk.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %seed_sk = alloca ptr, align 8
  %S = alloca [868 x i8], align 16
  %P = alloca [113103 x i64], align 16
  %P3 = alloca [2601 x i64], align 16
  %seed_pk = alloca ptr, align 8
  %O = alloca [2414 x i8], align 16
  %m_vec_limbs = alloca i32, align 4
  %param_m = alloca i32, align 4
  %param_v = alloca i32, align 4
  %param_o = alloca i32, align 4
  %param_O_bytes = alloca i32, align 4
  %param_P1_limbs = alloca i32, align 4
  %param_P3_limbs = alloca i32, align 4
  %param_pk_seed_bytes = alloca i32, align 4
  %param_sk_seed_bytes = alloca i32, align 4
  %P1 = alloca ptr, align 8
  %P2 = alloca ptr, align 8
  %P3_upper = alloca [1377 x i64], align 16
  store ptr %p, ptr %p.addr, align 8
    #dbg_declare(ptr %p.addr, !428, !DIExpression(), !429)
  store ptr %cpk, ptr %cpk.addr, align 8
    #dbg_declare(ptr %cpk.addr, !430, !DIExpression(), !431)
  store ptr %csk, ptr %csk.addr, align 8
    #dbg_declare(ptr %csk.addr, !432, !DIExpression(), !433)
    #dbg_declare(ptr %ret, !434, !DIExpression(), !435)
  store i32 0, ptr %ret, align 4, !dbg !435
    #dbg_declare(ptr %seed_sk, !436, !DIExpression(), !437)
  %0 = load ptr, ptr %csk.addr, align 8, !dbg !438
  store ptr %0, ptr %seed_sk, align 8, !dbg !437
    #dbg_declare(ptr %S, !439, !DIExpression(), !443)
    #dbg_declare(ptr %P, !444, !DIExpression(), !445)
    #dbg_declare(ptr %P3, !446, !DIExpression(), !450)
  call void @llvm.memset.p0.i64(ptr align 16 %P3, i8 0, i64 20808, i1 false), !dbg !450
    #dbg_declare(ptr %seed_pk, !451, !DIExpression(), !452)
    #dbg_declare(ptr %O, !453, !DIExpression(), !455)
    #dbg_declare(ptr %m_vec_limbs, !456, !DIExpression(), !458)
  %1 = load ptr, ptr %p.addr, align 8, !dbg !459
  %m_vec_limbs1 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %1, i32 0, i32 21, !dbg !460
  %2 = load i32, ptr %m_vec_limbs1, align 4, !dbg !460
  store i32 %2, ptr %m_vec_limbs, align 4, !dbg !458
    #dbg_declare(ptr %param_m, !461, !DIExpression(), !462)
  %3 = load ptr, ptr %p.addr, align 8, !dbg !463
  %m = getelementptr inbounds nuw %struct.mayo_params_t, ptr %3, i32 0, i32 0, !dbg !464
  %4 = load i32, ptr %m, align 8, !dbg !464
  store i32 %4, ptr %param_m, align 4, !dbg !462
    #dbg_declare(ptr %param_v, !465, !DIExpression(), !466)
  %5 = load ptr, ptr %p.addr, align 8, !dbg !467
  %n = getelementptr inbounds nuw %struct.mayo_params_t, ptr %5, i32 0, i32 1, !dbg !468
  %6 = load i32, ptr %n, align 4, !dbg !468
  %7 = load ptr, ptr %p.addr, align 8, !dbg !467
  %o = getelementptr inbounds nuw %struct.mayo_params_t, ptr %7, i32 0, i32 2, !dbg !468
  %8 = load i32, ptr %o, align 8, !dbg !468
  %sub = sub nsw i32 %6, %8, !dbg !468
  store i32 %sub, ptr %param_v, align 4, !dbg !466
    #dbg_declare(ptr %param_o, !469, !DIExpression(), !470)
  %9 = load ptr, ptr %p.addr, align 8, !dbg !471
  %o2 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %9, i32 0, i32 2, !dbg !472
  %10 = load i32, ptr %o2, align 8, !dbg !472
  store i32 %10, ptr %param_o, align 4, !dbg !470
    #dbg_declare(ptr %param_O_bytes, !473, !DIExpression(), !474)
  %11 = load ptr, ptr %p.addr, align 8, !dbg !475
  %O_bytes = getelementptr inbounds nuw %struct.mayo_params_t, ptr %11, i32 0, i32 7, !dbg !476
  %12 = load i32, ptr %O_bytes, align 4, !dbg !476
  store i32 %12, ptr %param_O_bytes, align 4, !dbg !474
    #dbg_declare(ptr %param_P1_limbs, !477, !DIExpression(), !478)
  %13 = load ptr, ptr %p.addr, align 8, !dbg !479
  %n3 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %13, i32 0, i32 1, !dbg !480
  %14 = load i32, ptr %n3, align 4, !dbg !480
  %15 = load ptr, ptr %p.addr, align 8, !dbg !479
  %o4 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %15, i32 0, i32 2, !dbg !480
  %16 = load i32, ptr %o4, align 8, !dbg !480
  %sub5 = sub nsw i32 %14, %16, !dbg !480
  %17 = load ptr, ptr %p.addr, align 8, !dbg !479
  %n6 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %17, i32 0, i32 1, !dbg !480
  %18 = load i32, ptr %n6, align 4, !dbg !480
  %19 = load ptr, ptr %p.addr, align 8, !dbg !479
  %o7 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %19, i32 0, i32 2, !dbg !480
  %20 = load i32, ptr %o7, align 8, !dbg !480
  %sub8 = sub nsw i32 %18, %20, !dbg !480
  %add = add nsw i32 %sub8, 1, !dbg !480
  %mul = mul nsw i32 %sub5, %add, !dbg !480
  %div = sdiv i32 %mul, 2, !dbg !480
  %21 = load ptr, ptr %p.addr, align 8, !dbg !479
  %m_vec_limbs9 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %21, i32 0, i32 21, !dbg !480
  %22 = load i32, ptr %m_vec_limbs9, align 4, !dbg !480
  %mul10 = mul nsw i32 %div, %22, !dbg !480
  store i32 %mul10, ptr %param_P1_limbs, align 4, !dbg !478
    #dbg_declare(ptr %param_P3_limbs, !481, !DIExpression(), !482)
  %23 = load ptr, ptr %p.addr, align 8, !dbg !483
  %o11 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %23, i32 0, i32 2, !dbg !484
  %24 = load i32, ptr %o11, align 8, !dbg !484
  %25 = load ptr, ptr %p.addr, align 8, !dbg !483
  %o12 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %25, i32 0, i32 2, !dbg !484
  %26 = load i32, ptr %o12, align 8, !dbg !484
  %add13 = add nsw i32 %26, 1, !dbg !484
  %mul14 = mul nsw i32 %24, %add13, !dbg !484
  %div15 = sdiv i32 %mul14, 2, !dbg !484
  %27 = load ptr, ptr %p.addr, align 8, !dbg !483
  %m_vec_limbs16 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %27, i32 0, i32 21, !dbg !484
  %28 = load i32, ptr %m_vec_limbs16, align 4, !dbg !484
  %mul17 = mul nsw i32 %div15, %28, !dbg !484
  store i32 %mul17, ptr %param_P3_limbs, align 4, !dbg !482
    #dbg_declare(ptr %param_pk_seed_bytes, !485, !DIExpression(), !486)
  %29 = load ptr, ptr %p.addr, align 8, !dbg !487
  %pk_seed_bytes = getelementptr inbounds nuw %struct.mayo_params_t, ptr %29, i32 0, i32 20, !dbg !488
  %30 = load i32, ptr %pk_seed_bytes, align 8, !dbg !488
  store i32 %30, ptr %param_pk_seed_bytes, align 4, !dbg !486
    #dbg_declare(ptr %param_sk_seed_bytes, !489, !DIExpression(), !490)
  %31 = load ptr, ptr %p.addr, align 8, !dbg !491
  %sk_seed_bytes = getelementptr inbounds nuw %struct.mayo_params_t, ptr %31, i32 0, i32 18, !dbg !492
  %32 = load i32, ptr %sk_seed_bytes, align 8, !dbg !492
  store i32 %32, ptr %param_sk_seed_bytes, align 4, !dbg !490
    #dbg_declare(ptr %P1, !493, !DIExpression(), !494)
  %arraydecay = getelementptr inbounds [113103 x i64], ptr %P, i64 0, i64 0, !dbg !495
  store ptr %arraydecay, ptr %P1, align 8, !dbg !494
    #dbg_declare(ptr %P2, !496, !DIExpression(), !497)
  %arraydecay18 = getelementptr inbounds [113103 x i64], ptr %P, i64 0, i64 0, !dbg !498
  %33 = load i32, ptr %param_P1_limbs, align 4, !dbg !499
  %idx.ext = sext i32 %33 to i64, !dbg !500
  %add.ptr = getelementptr inbounds i64, ptr %arraydecay18, i64 %idx.ext, !dbg !500
  store ptr %add.ptr, ptr %P2, align 8, !dbg !497
  %34 = load ptr, ptr %seed_sk, align 8, !dbg !501
  %35 = load i32, ptr %param_sk_seed_bytes, align 4, !dbg !503
  %conv = sext i32 %35 to i64, !dbg !503
  %call = call i32 @randombytes(ptr noundef %34, i64 noundef %conv), !dbg !504
  %cmp = icmp ne i32 %call, 0, !dbg !505
  br i1 %cmp, label %if.then, label %if.end, !dbg !505

if.then:                                          ; preds = %entry
  store i32 1, ptr %ret, align 4, !dbg !506
  br label %err, !dbg !508

if.end:                                           ; preds = %entry
  %arraydecay20 = getelementptr inbounds [868 x i8], ptr %S, i64 0, i64 0, !dbg !509
  %36 = load i32, ptr %param_pk_seed_bytes, align 4, !dbg !510
  %37 = load i32, ptr %param_O_bytes, align 4, !dbg !511
  %add21 = add nsw i32 %36, %37, !dbg !512
  %conv22 = sext i32 %add21 to i64, !dbg !510
  %38 = load ptr, ptr %seed_sk, align 8, !dbg !513
  %39 = load i32, ptr %param_sk_seed_bytes, align 4, !dbg !514
  %conv23 = sext i32 %39 to i64, !dbg !514
  %call24 = call i32 @shake256(ptr noundef %arraydecay20, i64 noundef %conv22, ptr noundef %38, i64 noundef %conv23), !dbg !515
  %arraydecay25 = getelementptr inbounds [868 x i8], ptr %S, i64 0, i64 0, !dbg !516
  store ptr %arraydecay25, ptr %seed_pk, align 8, !dbg !517
  %arraydecay26 = getelementptr inbounds [868 x i8], ptr %S, i64 0, i64 0, !dbg !518
  %40 = load i32, ptr %param_pk_seed_bytes, align 4, !dbg !519
  %idx.ext27 = sext i32 %40 to i64, !dbg !520
  %add.ptr28 = getelementptr inbounds i8, ptr %arraydecay26, i64 %idx.ext27, !dbg !520
  %arraydecay29 = getelementptr inbounds [2414 x i8], ptr %O, i64 0, i64 0, !dbg !521
  %41 = load i32, ptr %param_v, align 4, !dbg !522
  %42 = load i32, ptr %param_o, align 4, !dbg !523
  %mul30 = mul nsw i32 %41, %42, !dbg !524
  call void @decode(ptr noundef %add.ptr28, ptr noundef %arraydecay29, i32 noundef %mul30), !dbg !525
  %43 = load ptr, ptr %p.addr, align 8, !dbg !526
  %arraydecay31 = getelementptr inbounds [113103 x i64], ptr %P, i64 0, i64 0, !dbg !527
  %44 = load ptr, ptr %seed_pk, align 8, !dbg !528
  call void @expand_P1_P2(ptr noundef %43, ptr noundef %arraydecay31, ptr noundef %44), !dbg !529
  %45 = load ptr, ptr %p.addr, align 8, !dbg !530
  %46 = load ptr, ptr %P1, align 8, !dbg !531
  %47 = load ptr, ptr %P2, align 8, !dbg !532
  %arraydecay32 = getelementptr inbounds [2414 x i8], ptr %O, i64 0, i64 0, !dbg !533
  %arraydecay33 = getelementptr inbounds [2601 x i64], ptr %P3, i64 0, i64 0, !dbg !534
  call void @compute_P3(ptr noundef %45, ptr noundef %46, ptr noundef %47, ptr noundef %arraydecay32, ptr noundef %arraydecay33), !dbg !535
  %48 = load ptr, ptr %cpk.addr, align 8, !dbg !536
  %49 = load ptr, ptr %seed_pk, align 8, !dbg !537
  %50 = load i32, ptr %param_pk_seed_bytes, align 4, !dbg !538
  %conv34 = sext i32 %50 to i64, !dbg !538
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %48, ptr align 1 %49, i64 %conv34, i1 false), !dbg !539
    #dbg_declare(ptr %P3_upper, !540, !DIExpression(), !544)
  %51 = load ptr, ptr %p.addr, align 8, !dbg !545
  %arraydecay35 = getelementptr inbounds [2601 x i64], ptr %P3, i64 0, i64 0, !dbg !546
  %arraydecay36 = getelementptr inbounds [1377 x i64], ptr %P3_upper, i64 0, i64 0, !dbg !547
  %52 = load i32, ptr %param_o, align 4, !dbg !548
  call void @m_upper(ptr noundef %51, ptr noundef %arraydecay35, ptr noundef %arraydecay36, i32 noundef %52), !dbg !549
  %arraydecay37 = getelementptr inbounds [1377 x i64], ptr %P3_upper, i64 0, i64 0, !dbg !550
  %53 = load ptr, ptr %cpk.addr, align 8, !dbg !551
  %54 = load i32, ptr %param_pk_seed_bytes, align 4, !dbg !552
  %idx.ext38 = sext i32 %54 to i64, !dbg !553
  %add.ptr39 = getelementptr inbounds i8, ptr %53, i64 %idx.ext38, !dbg !553
  %55 = load i32, ptr %param_P3_limbs, align 4, !dbg !554
  %56 = load i32, ptr %m_vec_limbs, align 4, !dbg !555
  %div40 = sdiv i32 %55, %56, !dbg !556
  %57 = load i32, ptr %param_m, align 4, !dbg !557
  call void @pack_m_vecs(ptr noundef %arraydecay37, ptr noundef %add.ptr39, i32 noundef %div40, i32 noundef %57), !dbg !558
  br label %err, !dbg !558

err:                                              ; preds = %if.end, %if.then
    #dbg_label(!559, !560)
  %arraydecay41 = getelementptr inbounds [2414 x i8], ptr %O, i64 0, i64 0, !dbg !561
  call void @mayo_secure_clear(ptr noundef %arraydecay41, i64 noundef 2414), !dbg !562
  %58 = load ptr, ptr %P2, align 8, !dbg !563
  %59 = load ptr, ptr %p.addr, align 8, !dbg !564
  %n42 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %59, i32 0, i32 1, !dbg !565
  %60 = load i32, ptr %n42, align 4, !dbg !565
  %61 = load ptr, ptr %p.addr, align 8, !dbg !564
  %o43 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %61, i32 0, i32 2, !dbg !565
  %62 = load i32, ptr %o43, align 8, !dbg !565
  %sub44 = sub nsw i32 %60, %62, !dbg !565
  %63 = load ptr, ptr %p.addr, align 8, !dbg !564
  %o45 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %63, i32 0, i32 2, !dbg !565
  %64 = load i32, ptr %o45, align 8, !dbg !565
  %mul46 = mul nsw i32 %sub44, %64, !dbg !565
  %65 = load ptr, ptr %p.addr, align 8, !dbg !564
  %m_vec_limbs47 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %65, i32 0, i32 21, !dbg !565
  %66 = load i32, ptr %m_vec_limbs47, align 4, !dbg !565
  %mul48 = mul nsw i32 %mul46, %66, !dbg !565
  %conv49 = sext i32 %mul48 to i64, !dbg !565
  %mul50 = mul i64 %conv49, 8, !dbg !566
  call void @mayo_secure_clear(ptr noundef %58, i64 noundef %mul50), !dbg !567
  %arraydecay51 = getelementptr inbounds [2601 x i64], ptr %P3, i64 0, i64 0, !dbg !568
  call void @mayo_secure_clear(ptr noundef %arraydecay51, i64 noundef 20808), !dbg !569
  %67 = load i32, ptr %ret, align 4, !dbg !570
  ret i32 %67, !dbg !571
}

declare i32 @randombytes(ptr noundef, i64 noundef) #4

declare i32 @shake256(ptr noundef, i64 noundef, ptr noundef, i64 noundef) #4

; Function Attrs: noinline nounwind optnone
define internal void @decode(ptr noundef %m, ptr noundef %mdec, i32 noundef %mdeclen) #0 !dbg !572 {
entry:
  %m.addr = alloca ptr, align 8
  %mdec.addr = alloca ptr, align 8
  %mdeclen.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %m, ptr %m.addr, align 8
    #dbg_declare(ptr %m.addr, !575, !DIExpression(), !576)
  store ptr %mdec, ptr %mdec.addr, align 8
    #dbg_declare(ptr %mdec.addr, !577, !DIExpression(), !578)
  store i32 %mdeclen, ptr %mdeclen.addr, align 4
    #dbg_declare(ptr %mdeclen.addr, !579, !DIExpression(), !580)
    #dbg_declare(ptr %i, !581, !DIExpression(), !582)
  store i32 0, ptr %i, align 4, !dbg !583
  br label %for.cond, !dbg !585

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !586
  %1 = load i32, ptr %mdeclen.addr, align 4, !dbg !588
  %div = sdiv i32 %1, 2, !dbg !589
  %cmp = icmp slt i32 %0, %div, !dbg !590
  br i1 %cmp, label %for.body, label %for.end, !dbg !591

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %m.addr, align 8, !dbg !592
  %3 = load i32, ptr %i, align 4, !dbg !594
  %idxprom = sext i32 %3 to i64, !dbg !592
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 %idxprom, !dbg !592
  %4 = load i8, ptr %arrayidx, align 1, !dbg !592
  %conv = zext i8 %4 to i32, !dbg !592
  %and = and i32 %conv, 15, !dbg !595
  %conv1 = trunc i32 %and to i8, !dbg !592
  %5 = load ptr, ptr %mdec.addr, align 8, !dbg !596
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %5, i32 1, !dbg !596
  store ptr %incdec.ptr, ptr %mdec.addr, align 8, !dbg !596
  store i8 %conv1, ptr %5, align 1, !dbg !597
  %6 = load ptr, ptr %m.addr, align 8, !dbg !598
  %7 = load i32, ptr %i, align 4, !dbg !599
  %idxprom2 = sext i32 %7 to i64, !dbg !598
  %arrayidx3 = getelementptr inbounds i8, ptr %6, i64 %idxprom2, !dbg !598
  %8 = load i8, ptr %arrayidx3, align 1, !dbg !598
  %conv4 = zext i8 %8 to i32, !dbg !598
  %shr = ashr i32 %conv4, 4, !dbg !600
  %conv5 = trunc i32 %shr to i8, !dbg !598
  %9 = load ptr, ptr %mdec.addr, align 8, !dbg !601
  %incdec.ptr6 = getelementptr inbounds nuw i8, ptr %9, i32 1, !dbg !601
  store ptr %incdec.ptr6, ptr %mdec.addr, align 8, !dbg !601
  store i8 %conv5, ptr %9, align 1, !dbg !602
  br label %for.inc, !dbg !603

for.inc:                                          ; preds = %for.body
  %10 = load i32, ptr %i, align 4, !dbg !604
  %inc = add nsw i32 %10, 1, !dbg !604
  store i32 %inc, ptr %i, align 4, !dbg !604
  br label %for.cond, !dbg !605, !llvm.loop !606

for.end:                                          ; preds = %for.cond
  %11 = load i32, ptr %mdeclen.addr, align 4, !dbg !608
  %rem = srem i32 %11, 2, !dbg !610
  %cmp7 = icmp eq i32 %rem, 1, !dbg !611
  br i1 %cmp7, label %if.then, label %if.end, !dbg !611

if.then:                                          ; preds = %for.end
  %12 = load ptr, ptr %m.addr, align 8, !dbg !612
  %13 = load i32, ptr %i, align 4, !dbg !614
  %idxprom9 = sext i32 %13 to i64, !dbg !612
  %arrayidx10 = getelementptr inbounds i8, ptr %12, i64 %idxprom9, !dbg !612
  %14 = load i8, ptr %arrayidx10, align 1, !dbg !612
  %conv11 = zext i8 %14 to i32, !dbg !612
  %and12 = and i32 %conv11, 15, !dbg !615
  %conv13 = trunc i32 %and12 to i8, !dbg !612
  %15 = load ptr, ptr %mdec.addr, align 8, !dbg !616
  %incdec.ptr14 = getelementptr inbounds nuw i8, ptr %15, i32 1, !dbg !616
  store ptr %incdec.ptr14, ptr %mdec.addr, align 8, !dbg !616
  store i8 %conv13, ptr %15, align 1, !dbg !617
  br label %if.end, !dbg !618

if.end:                                           ; preds = %if.then, %for.end
  ret void, !dbg !619
}

; Function Attrs: noinline nounwind optnone
define internal void @expand_P1_P2(ptr noundef %p, ptr noundef %P, ptr noundef %seed_pk) #0 !dbg !620 {
entry:
  %p.addr = alloca ptr, align 8
  %P.addr = alloca ptr, align 8
  %seed_pk.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
    #dbg_declare(ptr %p.addr, !623, !DIExpression(), !624)
  store ptr %P, ptr %P.addr, align 8
    #dbg_declare(ptr %P.addr, !625, !DIExpression(), !626)
  store ptr %seed_pk, ptr %seed_pk.addr, align 8
    #dbg_declare(ptr %seed_pk.addr, !627, !DIExpression(), !628)
  %0 = load ptr, ptr %P.addr, align 8, !dbg !629
  %1 = load ptr, ptr %p.addr, align 8, !dbg !630
  %P1_bytes = getelementptr inbounds nuw %struct.mayo_params_t, ptr %1, i32 0, i32 11, !dbg !631
  %2 = load i32, ptr %P1_bytes, align 4, !dbg !631
  %3 = load ptr, ptr %p.addr, align 8, !dbg !632
  %P2_bytes = getelementptr inbounds nuw %struct.mayo_params_t, ptr %3, i32 0, i32 12, !dbg !633
  %4 = load i32, ptr %P2_bytes, align 8, !dbg !633
  %add = add nsw i32 %2, %4, !dbg !634
  %conv = sext i32 %add to i64, !dbg !631
  %5 = load ptr, ptr %seed_pk.addr, align 8, !dbg !635
  %6 = load ptr, ptr %p.addr, align 8, !dbg !636
  %pk_seed_bytes = getelementptr inbounds nuw %struct.mayo_params_t, ptr %6, i32 0, i32 20, !dbg !637
  %7 = load i32, ptr %pk_seed_bytes, align 8, !dbg !637
  %conv1 = sext i32 %7 to i64, !dbg !637
  %call = call i32 @AES_128_CTR(ptr noundef %0, i64 noundef %conv, ptr noundef %5, i64 noundef %conv1), !dbg !638
  %8 = load ptr, ptr %P.addr, align 8, !dbg !639
  %9 = load ptr, ptr %P.addr, align 8, !dbg !640
  %10 = load ptr, ptr %p.addr, align 8, !dbg !641
  %n = getelementptr inbounds nuw %struct.mayo_params_t, ptr %10, i32 0, i32 1, !dbg !642
  %11 = load i32, ptr %n, align 4, !dbg !642
  %12 = load ptr, ptr %p.addr, align 8, !dbg !641
  %o = getelementptr inbounds nuw %struct.mayo_params_t, ptr %12, i32 0, i32 2, !dbg !642
  %13 = load i32, ptr %o, align 8, !dbg !642
  %sub = sub nsw i32 %11, %13, !dbg !642
  %14 = load ptr, ptr %p.addr, align 8, !dbg !641
  %n2 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %14, i32 0, i32 1, !dbg !642
  %15 = load i32, ptr %n2, align 4, !dbg !642
  %16 = load ptr, ptr %p.addr, align 8, !dbg !641
  %o3 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %16, i32 0, i32 2, !dbg !642
  %17 = load i32, ptr %o3, align 8, !dbg !642
  %sub4 = sub nsw i32 %15, %17, !dbg !642
  %add5 = add nsw i32 %sub4, 1, !dbg !642
  %mul = mul nsw i32 %sub, %add5, !dbg !642
  %div = sdiv i32 %mul, 2, !dbg !642
  %18 = load ptr, ptr %p.addr, align 8, !dbg !641
  %m_vec_limbs = getelementptr inbounds nuw %struct.mayo_params_t, ptr %18, i32 0, i32 21, !dbg !642
  %19 = load i32, ptr %m_vec_limbs, align 4, !dbg !642
  %mul6 = mul nsw i32 %div, %19, !dbg !642
  %20 = load ptr, ptr %p.addr, align 8, !dbg !643
  %n7 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %20, i32 0, i32 1, !dbg !644
  %21 = load i32, ptr %n7, align 4, !dbg !644
  %22 = load ptr, ptr %p.addr, align 8, !dbg !643
  %o8 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %22, i32 0, i32 2, !dbg !644
  %23 = load i32, ptr %o8, align 8, !dbg !644
  %sub9 = sub nsw i32 %21, %23, !dbg !644
  %24 = load ptr, ptr %p.addr, align 8, !dbg !643
  %o10 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %24, i32 0, i32 2, !dbg !644
  %25 = load i32, ptr %o10, align 8, !dbg !644
  %mul11 = mul nsw i32 %sub9, %25, !dbg !644
  %26 = load ptr, ptr %p.addr, align 8, !dbg !643
  %m_vec_limbs12 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %26, i32 0, i32 21, !dbg !644
  %27 = load i32, ptr %m_vec_limbs12, align 4, !dbg !644
  %mul13 = mul nsw i32 %mul11, %27, !dbg !644
  %add14 = add nsw i32 %mul6, %mul13, !dbg !645
  %28 = load ptr, ptr %p.addr, align 8, !dbg !646
  %m_vec_limbs15 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %28, i32 0, i32 21, !dbg !647
  %29 = load i32, ptr %m_vec_limbs15, align 4, !dbg !647
  %div16 = sdiv i32 %add14, %29, !dbg !648
  %30 = load ptr, ptr %p.addr, align 8, !dbg !649
  %m = getelementptr inbounds nuw %struct.mayo_params_t, ptr %30, i32 0, i32 0, !dbg !650
  %31 = load i32, ptr %m, align 8, !dbg !650
  call void @unpack_m_vecs(ptr noundef %8, ptr noundef %9, i32 noundef %div16, i32 noundef %31), !dbg !651
  ret void, !dbg !652
}

; Function Attrs: noinline nounwind optnone
define internal void @compute_P3(ptr noundef %p, ptr noundef %P1, ptr noundef %P2, ptr noundef %O, ptr noundef %P3) #0 !dbg !653 {
entry:
  %p.addr = alloca ptr, align 8
  %P1.addr = alloca ptr, align 8
  %P2.addr = alloca ptr, align 8
  %O.addr = alloca ptr, align 8
  %P3.addr = alloca ptr, align 8
  %m_vec_limbs = alloca i32, align 4
  %param_v = alloca i32, align 4
  %param_o = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
    #dbg_declare(ptr %p.addr, !658, !DIExpression(), !659)
  store ptr %P1, ptr %P1.addr, align 8
    #dbg_declare(ptr %P1.addr, !660, !DIExpression(), !661)
  store ptr %P2, ptr %P2.addr, align 8
    #dbg_declare(ptr %P2.addr, !662, !DIExpression(), !663)
  store ptr %O, ptr %O.addr, align 8
    #dbg_declare(ptr %O.addr, !664, !DIExpression(), !665)
  store ptr %P3, ptr %P3.addr, align 8
    #dbg_declare(ptr %P3.addr, !666, !DIExpression(), !667)
    #dbg_declare(ptr %m_vec_limbs, !668, !DIExpression(), !669)
  %0 = load ptr, ptr %p.addr, align 8, !dbg !670
  %m_vec_limbs1 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %0, i32 0, i32 21, !dbg !671
  %1 = load i32, ptr %m_vec_limbs1, align 4, !dbg !671
  store i32 %1, ptr %m_vec_limbs, align 4, !dbg !669
    #dbg_declare(ptr %param_v, !672, !DIExpression(), !673)
  %2 = load ptr, ptr %p.addr, align 8, !dbg !674
  %n = getelementptr inbounds nuw %struct.mayo_params_t, ptr %2, i32 0, i32 1, !dbg !675
  %3 = load i32, ptr %n, align 4, !dbg !675
  %4 = load ptr, ptr %p.addr, align 8, !dbg !674
  %o = getelementptr inbounds nuw %struct.mayo_params_t, ptr %4, i32 0, i32 2, !dbg !675
  %5 = load i32, ptr %o, align 8, !dbg !675
  %sub = sub nsw i32 %3, %5, !dbg !675
  store i32 %sub, ptr %param_v, align 4, !dbg !673
    #dbg_declare(ptr %param_o, !676, !DIExpression(), !677)
  %6 = load ptr, ptr %p.addr, align 8, !dbg !678
  %o2 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %6, i32 0, i32 2, !dbg !679
  %7 = load i32, ptr %o2, align 8, !dbg !679
  store i32 %7, ptr %param_o, align 4, !dbg !677
  %8 = load ptr, ptr %p.addr, align 8, !dbg !680
  %9 = load ptr, ptr %P1.addr, align 8, !dbg !681
  %10 = load ptr, ptr %O.addr, align 8, !dbg !682
  %11 = load ptr, ptr %P2.addr, align 8, !dbg !683
  call void @P1_times_O(ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11), !dbg !684
  %12 = load i32, ptr %m_vec_limbs, align 4, !dbg !685
  %13 = load ptr, ptr %O.addr, align 8, !dbg !686
  %14 = load ptr, ptr %P2.addr, align 8, !dbg !687
  %15 = load ptr, ptr %P3.addr, align 8, !dbg !688
  %16 = load i32, ptr %param_v, align 4, !dbg !689
  %17 = load i32, ptr %param_o, align 4, !dbg !690
  %18 = load i32, ptr %param_o, align 4, !dbg !691
  call void @mul_add_mat_trans_x_m_mat(i32 noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef %15, i32 noundef %16, i32 noundef %17, i32 noundef %18), !dbg !692
  ret void, !dbg !693
}

declare void @m_upper(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: noinline nounwind optnone
define internal void @pack_m_vecs(ptr noundef %in, ptr noundef %out, i32 noundef %vecs, i32 noundef %m) #0 !dbg !694 {
entry:
  %in.addr = alloca ptr, align 8
  %out.addr = alloca ptr, align 8
  %vecs.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %m_vec_limbs = alloca i32, align 4
  %_in = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %in, ptr %in.addr, align 8
    #dbg_declare(ptr %in.addr, !697, !DIExpression(), !698)
  store ptr %out, ptr %out.addr, align 8
    #dbg_declare(ptr %out.addr, !699, !DIExpression(), !700)
  store i32 %vecs, ptr %vecs.addr, align 4
    #dbg_declare(ptr %vecs.addr, !701, !DIExpression(), !702)
  store i32 %m, ptr %m.addr, align 4
    #dbg_declare(ptr %m.addr, !703, !DIExpression(), !704)
    #dbg_declare(ptr %m_vec_limbs, !705, !DIExpression(), !706)
  %0 = load i32, ptr %m.addr, align 4, !dbg !707
  %add = add nsw i32 %0, 15, !dbg !708
  %div = sdiv i32 %add, 16, !dbg !709
  store i32 %div, ptr %m_vec_limbs, align 4, !dbg !706
    #dbg_declare(ptr %_in, !710, !DIExpression(), !711)
  %1 = load ptr, ptr %in.addr, align 8, !dbg !712
  store ptr %1, ptr %_in, align 8, !dbg !711
    #dbg_declare(ptr %i, !713, !DIExpression(), !715)
  store i32 0, ptr %i, align 4, !dbg !715
  br label %for.cond, !dbg !716

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4, !dbg !717
  %3 = load i32, ptr %vecs.addr, align 4, !dbg !719
  %cmp = icmp slt i32 %2, %3, !dbg !720
  br i1 %cmp, label %for.body, label %for.end, !dbg !721

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %out.addr, align 8, !dbg !722
  %5 = load i32, ptr %i, align 4, !dbg !724
  %6 = load i32, ptr %m.addr, align 4, !dbg !725
  %mul = mul nsw i32 %5, %6, !dbg !726
  %div1 = sdiv i32 %mul, 2, !dbg !727
  %idx.ext = sext i32 %div1 to i64, !dbg !728
  %add.ptr = getelementptr inbounds i8, ptr %4, i64 %idx.ext, !dbg !728
  %7 = load ptr, ptr %_in, align 8, !dbg !729
  %8 = load i32, ptr %i, align 4, !dbg !730
  %9 = load i32, ptr %m_vec_limbs, align 4, !dbg !731
  %mul2 = mul nsw i32 %8, %9, !dbg !732
  %conv = sext i32 %mul2 to i64, !dbg !730
  %mul3 = mul i64 %conv, 8, !dbg !733
  %add.ptr4 = getelementptr inbounds nuw i8, ptr %7, i64 %mul3, !dbg !728
  %10 = load i32, ptr %m.addr, align 4, !dbg !734
  %div5 = sdiv i32 %10, 2, !dbg !735
  %conv6 = sext i32 %div5 to i64, !dbg !734
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %add.ptr, ptr align 1 %add.ptr4, i64 %conv6, i1 false), !dbg !728
  br label %for.inc, !dbg !736

for.inc:                                          ; preds = %for.body
  %11 = load i32, ptr %i, align 4, !dbg !737
  %inc = add nsw i32 %11, 1, !dbg !737
  store i32 %inc, ptr %i, align 4, !dbg !737
  br label %for.cond, !dbg !738, !llvm.loop !739

for.end:                                          ; preds = %for.cond
  ret void, !dbg !741
}

declare void @mayo_secure_clear(ptr noundef, i64 noundef) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noinline nounwind optnone
define internal void @P1_times_O(ptr noundef %p, ptr noundef %P1, ptr noundef %O, ptr noundef %acc) #0 !dbg !742 {
entry:
  %p.addr = alloca ptr, align 8
  %P1.addr = alloca ptr, align 8
  %O.addr = alloca ptr, align 8
  %acc.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
    #dbg_declare(ptr %p.addr, !745, !DIExpression(), !746)
  store ptr %P1, ptr %P1.addr, align 8
    #dbg_declare(ptr %P1.addr, !747, !DIExpression(), !748)
  store ptr %O, ptr %O.addr, align 8
    #dbg_declare(ptr %O.addr, !749, !DIExpression(), !750)
  store ptr %acc, ptr %acc.addr, align 8
    #dbg_declare(ptr %acc.addr, !751, !DIExpression(), !752)
  %0 = load ptr, ptr %p.addr, align 8, !dbg !753
  %m_vec_limbs = getelementptr inbounds nuw %struct.mayo_params_t, ptr %0, i32 0, i32 21, !dbg !754
  %1 = load i32, ptr %m_vec_limbs, align 4, !dbg !754
  %2 = load ptr, ptr %P1.addr, align 8, !dbg !755
  %3 = load ptr, ptr %O.addr, align 8, !dbg !756
  %4 = load ptr, ptr %acc.addr, align 8, !dbg !757
  %5 = load ptr, ptr %p.addr, align 8, !dbg !758
  %n = getelementptr inbounds nuw %struct.mayo_params_t, ptr %5, i32 0, i32 1, !dbg !759
  %6 = load i32, ptr %n, align 4, !dbg !759
  %7 = load ptr, ptr %p.addr, align 8, !dbg !758
  %o = getelementptr inbounds nuw %struct.mayo_params_t, ptr %7, i32 0, i32 2, !dbg !759
  %8 = load i32, ptr %o, align 8, !dbg !759
  %sub = sub nsw i32 %6, %8, !dbg !759
  %9 = load ptr, ptr %p.addr, align 8, !dbg !760
  %n1 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %9, i32 0, i32 1, !dbg !761
  %10 = load i32, ptr %n1, align 4, !dbg !761
  %11 = load ptr, ptr %p.addr, align 8, !dbg !760
  %o2 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %11, i32 0, i32 2, !dbg !761
  %12 = load i32, ptr %o2, align 8, !dbg !761
  %sub3 = sub nsw i32 %10, %12, !dbg !761
  %13 = load ptr, ptr %p.addr, align 8, !dbg !762
  %o4 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %13, i32 0, i32 2, !dbg !763
  %14 = load i32, ptr %o4, align 8, !dbg !763
  call void @mul_add_m_upper_triangular_mat_x_mat(i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %sub, i32 noundef %sub3, i32 noundef %14, i32 noundef 1), !dbg !764
  ret void, !dbg !765
}

; Function Attrs: noinline nounwind optnone
define internal void @mul_add_mat_trans_x_m_mat(i32 noundef %m_vec_limbs, ptr noundef %mat, ptr noundef %bs_mat, ptr noundef %acc, i32 noundef %mat_rows, i32 noundef %mat_cols, i32 noundef %bs_mat_cols) #0 !dbg !766 {
entry:
  %m_vec_limbs.addr = alloca i32, align 4
  %mat.addr = alloca ptr, align 8
  %bs_mat.addr = alloca ptr, align 8
  %acc.addr = alloca ptr, align 8
  %mat_rows.addr = alloca i32, align 4
  %mat_cols.addr = alloca i32, align 4
  %bs_mat_cols.addr = alloca i32, align 4
  %r = alloca i32, align 4
  %c = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %m_vec_limbs, ptr %m_vec_limbs.addr, align 4
    #dbg_declare(ptr %m_vec_limbs.addr, !769, !DIExpression(), !770)
  store ptr %mat, ptr %mat.addr, align 8
    #dbg_declare(ptr %mat.addr, !771, !DIExpression(), !772)
  store ptr %bs_mat, ptr %bs_mat.addr, align 8
    #dbg_declare(ptr %bs_mat.addr, !773, !DIExpression(), !774)
  store ptr %acc, ptr %acc.addr, align 8
    #dbg_declare(ptr %acc.addr, !775, !DIExpression(), !776)
  store i32 %mat_rows, ptr %mat_rows.addr, align 4
    #dbg_declare(ptr %mat_rows.addr, !777, !DIExpression(), !778)
  store i32 %mat_cols, ptr %mat_cols.addr, align 4
    #dbg_declare(ptr %mat_cols.addr, !779, !DIExpression(), !780)
  store i32 %bs_mat_cols, ptr %bs_mat_cols.addr, align 4
    #dbg_declare(ptr %bs_mat_cols.addr, !781, !DIExpression(), !782)
    #dbg_declare(ptr %r, !783, !DIExpression(), !785)
  store i32 0, ptr %r, align 4, !dbg !785
  br label %for.cond, !dbg !786

for.cond:                                         ; preds = %for.inc18, %entry
  %0 = load i32, ptr %r, align 4, !dbg !787
  %1 = load i32, ptr %mat_cols.addr, align 4, !dbg !789
  %cmp = icmp slt i32 %0, %1, !dbg !790
  br i1 %cmp, label %for.body, label %for.end20, !dbg !791

for.body:                                         ; preds = %for.cond
    #dbg_declare(ptr %c, !792, !DIExpression(), !795)
  store i32 0, ptr %c, align 4, !dbg !795
  br label %for.cond1, !dbg !796

for.cond1:                                        ; preds = %for.inc16, %for.body
  %2 = load i32, ptr %c, align 4, !dbg !797
  %3 = load i32, ptr %mat_rows.addr, align 4, !dbg !799
  %cmp2 = icmp slt i32 %2, %3, !dbg !800
  br i1 %cmp2, label %for.body3, label %for.end17, !dbg !801

for.body3:                                        ; preds = %for.cond1
    #dbg_declare(ptr %k, !802, !DIExpression(), !805)
  store i32 0, ptr %k, align 4, !dbg !805
  br label %for.cond4, !dbg !806

for.cond4:                                        ; preds = %for.inc, %for.body3
  %4 = load i32, ptr %k, align 4, !dbg !807
  %5 = load i32, ptr %bs_mat_cols.addr, align 4, !dbg !809
  %cmp5 = icmp slt i32 %4, %5, !dbg !810
  br i1 %cmp5, label %for.body6, label %for.end, !dbg !811

for.body6:                                        ; preds = %for.cond4
  %6 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !812
  %7 = load ptr, ptr %bs_mat.addr, align 8, !dbg !814
  %8 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !815
  %9 = load i32, ptr %c, align 4, !dbg !816
  %10 = load i32, ptr %bs_mat_cols.addr, align 4, !dbg !817
  %mul = mul nsw i32 %9, %10, !dbg !818
  %11 = load i32, ptr %k, align 4, !dbg !819
  %add = add nsw i32 %mul, %11, !dbg !820
  %mul7 = mul nsw i32 %8, %add, !dbg !821
  %idx.ext = sext i32 %mul7 to i64, !dbg !822
  %add.ptr = getelementptr inbounds i64, ptr %7, i64 %idx.ext, !dbg !822
  %12 = load ptr, ptr %mat.addr, align 8, !dbg !823
  %13 = load i32, ptr %c, align 4, !dbg !824
  %14 = load i32, ptr %mat_cols.addr, align 4, !dbg !825
  %mul8 = mul nsw i32 %13, %14, !dbg !826
  %15 = load i32, ptr %r, align 4, !dbg !827
  %add9 = add nsw i32 %mul8, %15, !dbg !828
  %idxprom = sext i32 %add9 to i64, !dbg !823
  %arrayidx = getelementptr inbounds i8, ptr %12, i64 %idxprom, !dbg !823
  %16 = load i8, ptr %arrayidx, align 1, !dbg !823
  %17 = load ptr, ptr %acc.addr, align 8, !dbg !829
  %18 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !830
  %19 = load i32, ptr %r, align 4, !dbg !831
  %20 = load i32, ptr %bs_mat_cols.addr, align 4, !dbg !832
  %mul10 = mul nsw i32 %19, %20, !dbg !833
  %21 = load i32, ptr %k, align 4, !dbg !834
  %add11 = add nsw i32 %mul10, %21, !dbg !835
  %mul12 = mul nsw i32 %18, %add11, !dbg !836
  %idx.ext13 = sext i32 %mul12 to i64, !dbg !837
  %add.ptr14 = getelementptr inbounds i64, ptr %17, i64 %idx.ext13, !dbg !837
  call void @m_vec_mul_add(i32 noundef %6, ptr noundef %add.ptr, i8 noundef zeroext %16, ptr noundef %add.ptr14), !dbg !838
  br label %for.inc, !dbg !839

for.inc:                                          ; preds = %for.body6
  %22 = load i32, ptr %k, align 4, !dbg !840
  %add15 = add nsw i32 %22, 1, !dbg !840
  store i32 %add15, ptr %k, align 4, !dbg !840
  br label %for.cond4, !dbg !841, !llvm.loop !842

for.end:                                          ; preds = %for.cond4
  br label %for.inc16, !dbg !844

for.inc16:                                        ; preds = %for.end
  %23 = load i32, ptr %c, align 4, !dbg !845
  %inc = add nsw i32 %23, 1, !dbg !845
  store i32 %inc, ptr %c, align 4, !dbg !845
  br label %for.cond1, !dbg !846, !llvm.loop !847

for.end17:                                        ; preds = %for.cond1
  br label %for.inc18, !dbg !849

for.inc18:                                        ; preds = %for.end17
  %24 = load i32, ptr %r, align 4, !dbg !850
  %inc19 = add nsw i32 %24, 1, !dbg !850
  store i32 %inc19, ptr %r, align 4, !dbg !850
  br label %for.cond, !dbg !851, !llvm.loop !852

for.end20:                                        ; preds = %for.cond
  ret void, !dbg !854
}

; Function Attrs: noinline nounwind optnone
define internal void @m_vec_mul_add(i32 noundef %m_vec_limbs, ptr noundef %in, i8 noundef zeroext %a, ptr noundef %acc) #0 !dbg !855 {
entry:
  %m_vec_limbs.addr = alloca i32, align 4
  %in.addr = alloca ptr, align 8
  %a.addr = alloca i8, align 1
  %acc.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store i32 %m_vec_limbs, ptr %m_vec_limbs.addr, align 4
    #dbg_declare(ptr %m_vec_limbs.addr, !859, !DIExpression(), !860)
  store ptr %in, ptr %in.addr, align 8
    #dbg_declare(ptr %in.addr, !861, !DIExpression(), !862)
  store i8 %a, ptr %a.addr, align 1
    #dbg_declare(ptr %a.addr, !863, !DIExpression(), !864)
  store ptr %acc, ptr %acc.addr, align 8
    #dbg_declare(ptr %acc.addr, !865, !DIExpression(), !866)
    #dbg_declare(ptr %i, !867, !DIExpression(), !869)
  store i32 0, ptr %i, align 4, !dbg !869
  br label %for.cond, !dbg !870

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !871
  %1 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !873
  %cmp = icmp slt i32 %0, %1, !dbg !874
  br i1 %cmp, label %for.body, label %for.end, !dbg !875

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %in.addr, align 8, !dbg !876
  %3 = load i32, ptr %i, align 4, !dbg !878
  %idxprom = sext i32 %3 to i64, !dbg !876
  %arrayidx = getelementptr inbounds i64, ptr %2, i64 %idxprom, !dbg !876
  %4 = load i64, ptr %arrayidx, align 8, !dbg !876
  %5 = load i8, ptr %a.addr, align 1, !dbg !879
  %call = call i64 @gf16v_mul_u64(i64 noundef %4, i8 noundef zeroext %5), !dbg !880
  %6 = load ptr, ptr %acc.addr, align 8, !dbg !881
  %7 = load i32, ptr %i, align 4, !dbg !882
  %idxprom1 = sext i32 %7 to i64, !dbg !881
  %arrayidx2 = getelementptr inbounds i64, ptr %6, i64 %idxprom1, !dbg !881
  %8 = load i64, ptr %arrayidx2, align 8, !dbg !883
  %xor = xor i64 %8, %call, !dbg !883
  store i64 %xor, ptr %arrayidx2, align 8, !dbg !883
  br label %for.inc, !dbg !884

for.inc:                                          ; preds = %for.body
  %9 = load i32, ptr %i, align 4, !dbg !885
  %inc = add nsw i32 %9, 1, !dbg !885
  store i32 %inc, ptr %i, align 4, !dbg !885
  br label %for.cond, !dbg !886, !llvm.loop !887

for.end:                                          ; preds = %for.cond
  ret void, !dbg !889
}

; Function Attrs: noinline nounwind optnone
define internal i64 @gf16v_mul_u64(i64 noundef %a, i8 noundef zeroext %b) #0 !dbg !890 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i8, align 1
  %mask_msb = alloca i64, align 8
  %a_msb = alloca i64, align 8
  %a64 = alloca i64, align 8
  %b32 = alloca i64, align 8
  %r64 = alloca i64, align 8
  store i64 %a, ptr %a.addr, align 8
    #dbg_declare(ptr %a.addr, !894, !DIExpression(), !895)
  store i8 %b, ptr %b.addr, align 1
    #dbg_declare(ptr %b.addr, !896, !DIExpression(), !897)
    #dbg_declare(ptr %mask_msb, !898, !DIExpression(), !899)
  store i64 -8608480567731124088, ptr %mask_msb, align 8, !dbg !899
    #dbg_declare(ptr %a_msb, !900, !DIExpression(), !901)
    #dbg_declare(ptr %a64, !902, !DIExpression(), !903)
  %0 = load i64, ptr %a.addr, align 8, !dbg !904
  store i64 %0, ptr %a64, align 8, !dbg !903
    #dbg_declare(ptr %b32, !905, !DIExpression(), !906)
  %1 = load i8, ptr %b.addr, align 1, !dbg !907
  %conv = zext i8 %1 to i32, !dbg !907
  %2 = load volatile i8, ptr @unsigned_char_blocker, align 1, !dbg !908
  %conv1 = zext i8 %2 to i32, !dbg !908
  %xor = xor i32 %conv, %conv1, !dbg !909
  %conv2 = sext i32 %xor to i64, !dbg !907
  store i64 %conv2, ptr %b32, align 8, !dbg !906
    #dbg_declare(ptr %r64, !910, !DIExpression(), !911)
  %3 = load i64, ptr %a64, align 8, !dbg !912
  %4 = load i64, ptr %b32, align 8, !dbg !913
  %and = and i64 %4, 1, !dbg !914
  %mul = mul i64 %3, %and, !dbg !915
  store i64 %mul, ptr %r64, align 8, !dbg !911
  %5 = load i64, ptr %a64, align 8, !dbg !916
  %6 = load i64, ptr %mask_msb, align 8, !dbg !917
  %and3 = and i64 %5, %6, !dbg !918
  store i64 %and3, ptr %a_msb, align 8, !dbg !919
  %7 = load i64, ptr %a_msb, align 8, !dbg !920
  %8 = load i64, ptr %a64, align 8, !dbg !921
  %xor4 = xor i64 %8, %7, !dbg !921
  store i64 %xor4, ptr %a64, align 8, !dbg !921
  %9 = load i64, ptr %a64, align 8, !dbg !922
  %shl = shl i64 %9, 1, !dbg !923
  %10 = load i64, ptr %a_msb, align 8, !dbg !924
  %shr = lshr i64 %10, 3, !dbg !925
  %mul5 = mul i64 %shr, 3, !dbg !926
  %xor6 = xor i64 %shl, %mul5, !dbg !927
  store i64 %xor6, ptr %a64, align 8, !dbg !928
  %11 = load i64, ptr %a64, align 8, !dbg !929
  %12 = load i64, ptr %b32, align 8, !dbg !930
  %shr7 = lshr i64 %12, 1, !dbg !931
  %and8 = and i64 %shr7, 1, !dbg !932
  %mul9 = mul i64 %11, %and8, !dbg !933
  %13 = load i64, ptr %r64, align 8, !dbg !934
  %xor10 = xor i64 %13, %mul9, !dbg !934
  store i64 %xor10, ptr %r64, align 8, !dbg !934
  %14 = load i64, ptr %a64, align 8, !dbg !935
  %15 = load i64, ptr %mask_msb, align 8, !dbg !936
  %and11 = and i64 %14, %15, !dbg !937
  store i64 %and11, ptr %a_msb, align 8, !dbg !938
  %16 = load i64, ptr %a_msb, align 8, !dbg !939
  %17 = load i64, ptr %a64, align 8, !dbg !940
  %xor12 = xor i64 %17, %16, !dbg !940
  store i64 %xor12, ptr %a64, align 8, !dbg !940
  %18 = load i64, ptr %a64, align 8, !dbg !941
  %shl13 = shl i64 %18, 1, !dbg !942
  %19 = load i64, ptr %a_msb, align 8, !dbg !943
  %shr14 = lshr i64 %19, 3, !dbg !944
  %mul15 = mul i64 %shr14, 3, !dbg !945
  %xor16 = xor i64 %shl13, %mul15, !dbg !946
  store i64 %xor16, ptr %a64, align 8, !dbg !947
  %20 = load i64, ptr %a64, align 8, !dbg !948
  %21 = load i64, ptr %b32, align 8, !dbg !949
  %shr17 = lshr i64 %21, 2, !dbg !950
  %and18 = and i64 %shr17, 1, !dbg !951
  %mul19 = mul i64 %20, %and18, !dbg !952
  %22 = load i64, ptr %r64, align 8, !dbg !953
  %xor20 = xor i64 %22, %mul19, !dbg !953
  store i64 %xor20, ptr %r64, align 8, !dbg !953
  %23 = load i64, ptr %a64, align 8, !dbg !954
  %24 = load i64, ptr %mask_msb, align 8, !dbg !955
  %and21 = and i64 %23, %24, !dbg !956
  store i64 %and21, ptr %a_msb, align 8, !dbg !957
  %25 = load i64, ptr %a_msb, align 8, !dbg !958
  %26 = load i64, ptr %a64, align 8, !dbg !959
  %xor22 = xor i64 %26, %25, !dbg !959
  store i64 %xor22, ptr %a64, align 8, !dbg !959
  %27 = load i64, ptr %a64, align 8, !dbg !960
  %shl23 = shl i64 %27, 1, !dbg !961
  %28 = load i64, ptr %a_msb, align 8, !dbg !962
  %shr24 = lshr i64 %28, 3, !dbg !963
  %mul25 = mul i64 %shr24, 3, !dbg !964
  %xor26 = xor i64 %shl23, %mul25, !dbg !965
  store i64 %xor26, ptr %a64, align 8, !dbg !966
  %29 = load i64, ptr %a64, align 8, !dbg !967
  %30 = load i64, ptr %b32, align 8, !dbg !968
  %shr27 = lshr i64 %30, 3, !dbg !969
  %and28 = and i64 %shr27, 1, !dbg !970
  %mul29 = mul i64 %29, %and28, !dbg !971
  %31 = load i64, ptr %r64, align 8, !dbg !972
  %xor30 = xor i64 %31, %mul29, !dbg !972
  store i64 %xor30, ptr %r64, align 8, !dbg !972
  %32 = load i64, ptr %r64, align 8, !dbg !973
  ret i64 %32, !dbg !974
}

; Function Attrs: noinline nounwind optnone
define internal void @mul_add_m_upper_triangular_mat_x_mat(i32 noundef %m_vec_limbs, ptr noundef %bs_mat, ptr noundef %mat, ptr noundef %acc, i32 noundef %bs_mat_rows, i32 noundef %bs_mat_cols, i32 noundef %mat_cols, i32 noundef %triangular) #0 !dbg !975 {
entry:
  %m_vec_limbs.addr = alloca i32, align 4
  %bs_mat.addr = alloca ptr, align 8
  %mat.addr = alloca ptr, align 8
  %acc.addr = alloca ptr, align 8
  %bs_mat_rows.addr = alloca i32, align 4
  %bs_mat_cols.addr = alloca i32, align 4
  %mat_cols.addr = alloca i32, align 4
  %triangular.addr = alloca i32, align 4
  %bs_mat_entries_used = alloca i32, align 4
  %r = alloca i32, align 4
  %c = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %m_vec_limbs, ptr %m_vec_limbs.addr, align 4
    #dbg_declare(ptr %m_vec_limbs.addr, !978, !DIExpression(), !979)
  store ptr %bs_mat, ptr %bs_mat.addr, align 8
    #dbg_declare(ptr %bs_mat.addr, !980, !DIExpression(), !981)
  store ptr %mat, ptr %mat.addr, align 8
    #dbg_declare(ptr %mat.addr, !982, !DIExpression(), !983)
  store ptr %acc, ptr %acc.addr, align 8
    #dbg_declare(ptr %acc.addr, !984, !DIExpression(), !985)
  store i32 %bs_mat_rows, ptr %bs_mat_rows.addr, align 4
    #dbg_declare(ptr %bs_mat_rows.addr, !986, !DIExpression(), !987)
  store i32 %bs_mat_cols, ptr %bs_mat_cols.addr, align 4
    #dbg_declare(ptr %bs_mat_cols.addr, !988, !DIExpression(), !989)
  store i32 %mat_cols, ptr %mat_cols.addr, align 4
    #dbg_declare(ptr %mat_cols.addr, !990, !DIExpression(), !991)
  store i32 %triangular, ptr %triangular.addr, align 4
    #dbg_declare(ptr %triangular.addr, !992, !DIExpression(), !993)
    #dbg_declare(ptr %bs_mat_entries_used, !994, !DIExpression(), !995)
  store i32 0, ptr %bs_mat_entries_used, align 4, !dbg !995
    #dbg_declare(ptr %r, !996, !DIExpression(), !998)
  store i32 0, ptr %r, align 4, !dbg !998
  br label %for.cond, !dbg !999

for.cond:                                         ; preds = %for.inc18, %entry
  %0 = load i32, ptr %r, align 4, !dbg !1000
  %1 = load i32, ptr %bs_mat_rows.addr, align 4, !dbg !1002
  %cmp = icmp slt i32 %0, %1, !dbg !1003
  br i1 %cmp, label %for.body, label %for.end20, !dbg !1004

for.body:                                         ; preds = %for.cond
    #dbg_declare(ptr %c, !1005, !DIExpression(), !1008)
  %2 = load i32, ptr %triangular.addr, align 4, !dbg !1009
  %3 = load i32, ptr %r, align 4, !dbg !1010
  %mul = mul nsw i32 %2, %3, !dbg !1011
  store i32 %mul, ptr %c, align 4, !dbg !1008
  br label %for.cond1, !dbg !1012

for.cond1:                                        ; preds = %for.inc16, %for.body
  %4 = load i32, ptr %c, align 4, !dbg !1013
  %5 = load i32, ptr %bs_mat_cols.addr, align 4, !dbg !1015
  %cmp2 = icmp slt i32 %4, %5, !dbg !1016
  br i1 %cmp2, label %for.body3, label %for.end17, !dbg !1017

for.body3:                                        ; preds = %for.cond1
    #dbg_declare(ptr %k, !1018, !DIExpression(), !1021)
  store i32 0, ptr %k, align 4, !dbg !1021
  br label %for.cond4, !dbg !1022

for.cond4:                                        ; preds = %for.inc, %for.body3
  %6 = load i32, ptr %k, align 4, !dbg !1023
  %7 = load i32, ptr %mat_cols.addr, align 4, !dbg !1025
  %cmp5 = icmp slt i32 %6, %7, !dbg !1026
  br i1 %cmp5, label %for.body6, label %for.end, !dbg !1027

for.body6:                                        ; preds = %for.cond4
  %8 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !1028
  %9 = load ptr, ptr %bs_mat.addr, align 8, !dbg !1030
  %10 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !1031
  %11 = load i32, ptr %bs_mat_entries_used, align 4, !dbg !1032
  %mul7 = mul nsw i32 %10, %11, !dbg !1033
  %idx.ext = sext i32 %mul7 to i64, !dbg !1034
  %add.ptr = getelementptr inbounds i64, ptr %9, i64 %idx.ext, !dbg !1034
  %12 = load ptr, ptr %mat.addr, align 8, !dbg !1035
  %13 = load i32, ptr %c, align 4, !dbg !1036
  %14 = load i32, ptr %mat_cols.addr, align 4, !dbg !1037
  %mul8 = mul nsw i32 %13, %14, !dbg !1038
  %15 = load i32, ptr %k, align 4, !dbg !1039
  %add = add nsw i32 %mul8, %15, !dbg !1040
  %idxprom = sext i32 %add to i64, !dbg !1035
  %arrayidx = getelementptr inbounds i8, ptr %12, i64 %idxprom, !dbg !1035
  %16 = load i8, ptr %arrayidx, align 1, !dbg !1035
  %17 = load ptr, ptr %acc.addr, align 8, !dbg !1041
  %18 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !1042
  %19 = load i32, ptr %r, align 4, !dbg !1043
  %20 = load i32, ptr %mat_cols.addr, align 4, !dbg !1044
  %mul9 = mul nsw i32 %19, %20, !dbg !1045
  %21 = load i32, ptr %k, align 4, !dbg !1046
  %add10 = add nsw i32 %mul9, %21, !dbg !1047
  %mul11 = mul nsw i32 %18, %add10, !dbg !1048
  %idx.ext12 = sext i32 %mul11 to i64, !dbg !1049
  %add.ptr13 = getelementptr inbounds i64, ptr %17, i64 %idx.ext12, !dbg !1049
  call void @m_vec_mul_add(i32 noundef %8, ptr noundef %add.ptr, i8 noundef zeroext %16, ptr noundef %add.ptr13), !dbg !1050
  br label %for.inc, !dbg !1051

for.inc:                                          ; preds = %for.body6
  %22 = load i32, ptr %k, align 4, !dbg !1052
  %add14 = add nsw i32 %22, 1, !dbg !1052
  store i32 %add14, ptr %k, align 4, !dbg !1052
  br label %for.cond4, !dbg !1053, !llvm.loop !1054

for.end:                                          ; preds = %for.cond4
  %23 = load i32, ptr %bs_mat_entries_used, align 4, !dbg !1056
  %add15 = add nsw i32 %23, 1, !dbg !1056
  store i32 %add15, ptr %bs_mat_entries_used, align 4, !dbg !1056
  br label %for.inc16, !dbg !1057

for.inc16:                                        ; preds = %for.end
  %24 = load i32, ptr %c, align 4, !dbg !1058
  %inc = add nsw i32 %24, 1, !dbg !1058
  store i32 %inc, ptr %c, align 4, !dbg !1058
  br label %for.cond1, !dbg !1059, !llvm.loop !1060

for.end17:                                        ; preds = %for.cond1
  br label %for.inc18, !dbg !1062

for.inc18:                                        ; preds = %for.end17
  %25 = load i32, ptr %r, align 4, !dbg !1063
  %inc19 = add nsw i32 %25, 1, !dbg !1063
  store i32 %inc19, ptr %r, align 4, !dbg !1063
  br label %for.cond, !dbg !1064, !llvm.loop !1065

for.end20:                                        ; preds = %for.cond
  ret void, !dbg !1067
}

declare i32 @AES_128_CTR(ptr noundef, i64 noundef, ptr noundef, i64 noundef) #4

; Function Attrs: noinline nounwind optnone
define internal void @unpack_m_vecs(ptr noundef %in, ptr noundef %out, i32 noundef %vecs, i32 noundef %m) #0 !dbg !1068 {
entry:
  %in.addr = alloca ptr, align 8
  %out.addr = alloca ptr, align 8
  %vecs.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %m_vec_limbs = alloca i32, align 4
  %_out = alloca ptr, align 8
  %tmp = alloca [9 x i64], align 16
  %i = alloca i32, align 4
  store ptr %in, ptr %in.addr, align 8
    #dbg_declare(ptr %in.addr, !1071, !DIExpression(), !1072)
  store ptr %out, ptr %out.addr, align 8
    #dbg_declare(ptr %out.addr, !1073, !DIExpression(), !1074)
  store i32 %vecs, ptr %vecs.addr, align 4
    #dbg_declare(ptr %vecs.addr, !1075, !DIExpression(), !1076)
  store i32 %m, ptr %m.addr, align 4
    #dbg_declare(ptr %m.addr, !1077, !DIExpression(), !1078)
    #dbg_declare(ptr %m_vec_limbs, !1079, !DIExpression(), !1080)
  %0 = load i32, ptr %m.addr, align 4, !dbg !1081
  %add = add nsw i32 %0, 15, !dbg !1082
  %div = sdiv i32 %add, 16, !dbg !1083
  store i32 %div, ptr %m_vec_limbs, align 4, !dbg !1080
    #dbg_declare(ptr %_out, !1084, !DIExpression(), !1085)
  %1 = load ptr, ptr %out.addr, align 8, !dbg !1086
  store ptr %1, ptr %_out, align 8, !dbg !1085
    #dbg_declare(ptr %tmp, !1087, !DIExpression(), !1091)
  call void @llvm.memset.p0.i64(ptr align 16 %tmp, i8 0, i64 72, i1 false), !dbg !1091
    #dbg_declare(ptr %i, !1092, !DIExpression(), !1094)
  %2 = load i32, ptr %vecs.addr, align 4, !dbg !1095
  %sub = sub nsw i32 %2, 1, !dbg !1096
  store i32 %sub, ptr %i, align 4, !dbg !1094
  br label %for.cond, !dbg !1097

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, ptr %i, align 4, !dbg !1098
  %cmp = icmp sge i32 %3, 0, !dbg !1100
  br i1 %cmp, label %for.body, label %for.end, !dbg !1101

for.body:                                         ; preds = %for.cond
  %arraydecay = getelementptr inbounds [9 x i64], ptr %tmp, i64 0, i64 0, !dbg !1102
  %4 = load ptr, ptr %in.addr, align 8, !dbg !1104
  %5 = load i32, ptr %i, align 4, !dbg !1105
  %6 = load i32, ptr %m.addr, align 4, !dbg !1106
  %mul = mul nsw i32 %5, %6, !dbg !1107
  %div1 = sdiv i32 %mul, 2, !dbg !1108
  %idx.ext = sext i32 %div1 to i64, !dbg !1102
  %add.ptr = getelementptr inbounds i8, ptr %4, i64 %idx.ext, !dbg !1102
  %7 = load i32, ptr %m.addr, align 4, !dbg !1109
  %div2 = sdiv i32 %7, 2, !dbg !1110
  %conv = sext i32 %div2 to i64, !dbg !1109
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %arraydecay, ptr align 1 %add.ptr, i64 %conv, i1 false), !dbg !1102
  %8 = load ptr, ptr %_out, align 8, !dbg !1111
  %9 = load i32, ptr %i, align 4, !dbg !1112
  %10 = load i32, ptr %m_vec_limbs, align 4, !dbg !1113
  %mul3 = mul nsw i32 %9, %10, !dbg !1114
  %conv4 = sext i32 %mul3 to i64, !dbg !1112
  %mul5 = mul i64 %conv4, 8, !dbg !1115
  %add.ptr6 = getelementptr inbounds nuw i8, ptr %8, i64 %mul5, !dbg !1116
  %arraydecay7 = getelementptr inbounds [9 x i64], ptr %tmp, i64 0, i64 0, !dbg !1116
  %11 = load i32, ptr %m_vec_limbs, align 4, !dbg !1117
  %conv8 = sext i32 %11 to i64, !dbg !1117
  %mul9 = mul i64 %conv8, 8, !dbg !1118
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr6, ptr align 16 %arraydecay7, i64 %mul9, i1 false), !dbg !1116
  br label %for.inc, !dbg !1119

for.inc:                                          ; preds = %for.body
  %12 = load i32, ptr %i, align 4, !dbg !1120
  %dec = add nsw i32 %12, -1, !dbg !1120
  store i32 %dec, ptr %i, align 4, !dbg !1120
  br label %for.cond, !dbg !1121, !llvm.loop !1122

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1124
}

; Function Attrs: noinline nounwind optnone
define dso_local i32 @mayo_expand_sk(ptr noundef %p, ptr noundef %csk, ptr noundef %sk) #0 !dbg !1125 {
entry:
  %p.addr = alloca ptr, align 8
  %csk.addr = alloca ptr, align 8
  %sk.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %S = alloca [868 x i8], align 16
  %P = alloca ptr, align 8
  %O = alloca ptr, align 8
  %param_o = alloca i32, align 4
  %param_v = alloca i32, align 4
  %param_O_bytes = alloca i32, align 4
  %param_pk_seed_bytes = alloca i32, align 4
  %param_sk_seed_bytes = alloca i32, align 4
  %seed_sk = alloca ptr, align 8
  %seed_pk = alloca ptr, align 8
  %P2 = alloca ptr, align 8
  %P1 = alloca ptr, align 8
  %L = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
    #dbg_declare(ptr %p.addr, !1134, !DIExpression(), !1135)
  store ptr %csk, ptr %csk.addr, align 8
    #dbg_declare(ptr %csk.addr, !1136, !DIExpression(), !1137)
  store ptr %sk, ptr %sk.addr, align 8
    #dbg_declare(ptr %sk.addr, !1138, !DIExpression(), !1139)
    #dbg_declare(ptr %ret, !1140, !DIExpression(), !1141)
  store i32 0, ptr %ret, align 4, !dbg !1141
    #dbg_declare(ptr %S, !1142, !DIExpression(), !1143)
    #dbg_declare(ptr %P, !1144, !DIExpression(), !1145)
  %0 = load ptr, ptr %sk.addr, align 8, !dbg !1146
  %p1 = getelementptr inbounds nuw %struct.sk_t, ptr %0, i32 0, i32 0, !dbg !1147
  %arraydecay = getelementptr inbounds [113103 x i64], ptr %p1, i64 0, i64 0, !dbg !1146
  store ptr %arraydecay, ptr %P, align 8, !dbg !1145
    #dbg_declare(ptr %O, !1148, !DIExpression(), !1149)
  %1 = load ptr, ptr %sk.addr, align 8, !dbg !1150
  %O2 = getelementptr inbounds nuw %struct.sk_t, ptr %1, i32 0, i32 1, !dbg !1151
  %arraydecay3 = getelementptr inbounds [2414 x i8], ptr %O2, i64 0, i64 0, !dbg !1150
  store ptr %arraydecay3, ptr %O, align 8, !dbg !1149
    #dbg_declare(ptr %param_o, !1152, !DIExpression(), !1153)
  %2 = load ptr, ptr %p.addr, align 8, !dbg !1154
  %o = getelementptr inbounds nuw %struct.mayo_params_t, ptr %2, i32 0, i32 2, !dbg !1155
  %3 = load i32, ptr %o, align 8, !dbg !1155
  store i32 %3, ptr %param_o, align 4, !dbg !1153
    #dbg_declare(ptr %param_v, !1156, !DIExpression(), !1157)
  %4 = load ptr, ptr %p.addr, align 8, !dbg !1158
  %n = getelementptr inbounds nuw %struct.mayo_params_t, ptr %4, i32 0, i32 1, !dbg !1159
  %5 = load i32, ptr %n, align 4, !dbg !1159
  %6 = load ptr, ptr %p.addr, align 8, !dbg !1158
  %o4 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %6, i32 0, i32 2, !dbg !1159
  %7 = load i32, ptr %o4, align 8, !dbg !1159
  %sub = sub nsw i32 %5, %7, !dbg !1159
  store i32 %sub, ptr %param_v, align 4, !dbg !1157
    #dbg_declare(ptr %param_O_bytes, !1160, !DIExpression(), !1161)
  %8 = load ptr, ptr %p.addr, align 8, !dbg !1162
  %O_bytes = getelementptr inbounds nuw %struct.mayo_params_t, ptr %8, i32 0, i32 7, !dbg !1163
  %9 = load i32, ptr %O_bytes, align 4, !dbg !1163
  store i32 %9, ptr %param_O_bytes, align 4, !dbg !1161
    #dbg_declare(ptr %param_pk_seed_bytes, !1164, !DIExpression(), !1165)
  %10 = load ptr, ptr %p.addr, align 8, !dbg !1166
  %pk_seed_bytes = getelementptr inbounds nuw %struct.mayo_params_t, ptr %10, i32 0, i32 20, !dbg !1167
  %11 = load i32, ptr %pk_seed_bytes, align 8, !dbg !1167
  store i32 %11, ptr %param_pk_seed_bytes, align 4, !dbg !1165
    #dbg_declare(ptr %param_sk_seed_bytes, !1168, !DIExpression(), !1169)
  %12 = load ptr, ptr %p.addr, align 8, !dbg !1170
  %sk_seed_bytes = getelementptr inbounds nuw %struct.mayo_params_t, ptr %12, i32 0, i32 18, !dbg !1171
  %13 = load i32, ptr %sk_seed_bytes, align 8, !dbg !1171
  store i32 %13, ptr %param_sk_seed_bytes, align 4, !dbg !1169
    #dbg_declare(ptr %seed_sk, !1172, !DIExpression(), !1173)
  %14 = load ptr, ptr %csk.addr, align 8, !dbg !1174
  store ptr %14, ptr %seed_sk, align 8, !dbg !1173
    #dbg_declare(ptr %seed_pk, !1175, !DIExpression(), !1176)
  %arraydecay5 = getelementptr inbounds [868 x i8], ptr %S, i64 0, i64 0, !dbg !1177
  store ptr %arraydecay5, ptr %seed_pk, align 8, !dbg !1176
  %arraydecay6 = getelementptr inbounds [868 x i8], ptr %S, i64 0, i64 0, !dbg !1178
  %15 = load i32, ptr %param_pk_seed_bytes, align 4, !dbg !1179
  %16 = load i32, ptr %param_O_bytes, align 4, !dbg !1180
  %add = add nsw i32 %15, %16, !dbg !1181
  %conv = sext i32 %add to i64, !dbg !1179
  %17 = load ptr, ptr %seed_sk, align 8, !dbg !1182
  %18 = load i32, ptr %param_sk_seed_bytes, align 4, !dbg !1183
  %conv7 = sext i32 %18 to i64, !dbg !1183
  %call = call i32 @shake256(ptr noundef %arraydecay6, i64 noundef %conv, ptr noundef %17, i64 noundef %conv7), !dbg !1184
  %arraydecay8 = getelementptr inbounds [868 x i8], ptr %S, i64 0, i64 0, !dbg !1185
  %19 = load i32, ptr %param_pk_seed_bytes, align 4, !dbg !1186
  %idx.ext = sext i32 %19 to i64, !dbg !1187
  %add.ptr = getelementptr inbounds i8, ptr %arraydecay8, i64 %idx.ext, !dbg !1187
  %20 = load ptr, ptr %O, align 8, !dbg !1188
  %21 = load i32, ptr %param_v, align 4, !dbg !1189
  %22 = load i32, ptr %param_o, align 4, !dbg !1190
  %mul = mul nsw i32 %21, %22, !dbg !1191
  call void @decode(ptr noundef %add.ptr, ptr noundef %20, i32 noundef %mul), !dbg !1192
  %23 = load ptr, ptr %p.addr, align 8, !dbg !1193
  %24 = load ptr, ptr %P, align 8, !dbg !1194
  %25 = load ptr, ptr %seed_pk, align 8, !dbg !1195
  call void @expand_P1_P2(ptr noundef %23, ptr noundef %24, ptr noundef %25), !dbg !1196
    #dbg_declare(ptr %P2, !1197, !DIExpression(), !1198)
  %26 = load ptr, ptr %P, align 8, !dbg !1199
  %27 = load ptr, ptr %p.addr, align 8, !dbg !1200
  %n9 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %27, i32 0, i32 1, !dbg !1201
  %28 = load i32, ptr %n9, align 4, !dbg !1201
  %29 = load ptr, ptr %p.addr, align 8, !dbg !1200
  %o10 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %29, i32 0, i32 2, !dbg !1201
  %30 = load i32, ptr %o10, align 8, !dbg !1201
  %sub11 = sub nsw i32 %28, %30, !dbg !1201
  %31 = load ptr, ptr %p.addr, align 8, !dbg !1200
  %n12 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %31, i32 0, i32 1, !dbg !1201
  %32 = load i32, ptr %n12, align 4, !dbg !1201
  %33 = load ptr, ptr %p.addr, align 8, !dbg !1200
  %o13 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %33, i32 0, i32 2, !dbg !1201
  %34 = load i32, ptr %o13, align 8, !dbg !1201
  %sub14 = sub nsw i32 %32, %34, !dbg !1201
  %add15 = add nsw i32 %sub14, 1, !dbg !1201
  %mul16 = mul nsw i32 %sub11, %add15, !dbg !1201
  %div = sdiv i32 %mul16, 2, !dbg !1201
  %35 = load ptr, ptr %p.addr, align 8, !dbg !1200
  %m_vec_limbs = getelementptr inbounds nuw %struct.mayo_params_t, ptr %35, i32 0, i32 21, !dbg !1201
  %36 = load i32, ptr %m_vec_limbs, align 4, !dbg !1201
  %mul17 = mul nsw i32 %div, %36, !dbg !1201
  %idx.ext18 = sext i32 %mul17 to i64, !dbg !1202
  %add.ptr19 = getelementptr inbounds i64, ptr %26, i64 %idx.ext18, !dbg !1202
  store ptr %add.ptr19, ptr %P2, align 8, !dbg !1198
    #dbg_declare(ptr %P1, !1203, !DIExpression(), !1204)
  %37 = load ptr, ptr %P, align 8, !dbg !1205
  store ptr %37, ptr %P1, align 8, !dbg !1204
    #dbg_declare(ptr %L, !1206, !DIExpression(), !1207)
  %38 = load ptr, ptr %P2, align 8, !dbg !1208
  store ptr %38, ptr %L, align 8, !dbg !1207
  %39 = load ptr, ptr %p.addr, align 8, !dbg !1209
  %40 = load ptr, ptr %P1, align 8, !dbg !1210
  %41 = load ptr, ptr %O, align 8, !dbg !1211
  %42 = load ptr, ptr %L, align 8, !dbg !1212
  call void @P1P1t_times_O(ptr noundef %39, ptr noundef %40, ptr noundef %41, ptr noundef %42), !dbg !1213
  %arraydecay20 = getelementptr inbounds [868 x i8], ptr %S, i64 0, i64 0, !dbg !1214
  call void @mayo_secure_clear(ptr noundef %arraydecay20, i64 noundef 868), !dbg !1215
  %43 = load i32, ptr %ret, align 4, !dbg !1216
  ret i32 %43, !dbg !1217
}

; Function Attrs: noinline nounwind optnone
define internal void @P1P1t_times_O(ptr noundef %p, ptr noundef %P1, ptr noundef %O, ptr noundef %acc) #0 !dbg !1218 {
entry:
  %p.addr = alloca ptr, align 8
  %P1.addr = alloca ptr, align 8
  %O.addr = alloca ptr, align 8
  %acc.addr = alloca ptr, align 8
  %param_o = alloca i32, align 4
  %param_v = alloca i32, align 4
  %m_vec_limbs = alloca i32, align 4
  %bs_mat_entries_used = alloca i32, align 4
  %r = alloca i32, align 4
  %c = alloca i32, align 4
  %k = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
    #dbg_declare(ptr %p.addr, !1219, !DIExpression(), !1220)
  store ptr %P1, ptr %P1.addr, align 8
    #dbg_declare(ptr %P1.addr, !1221, !DIExpression(), !1222)
  store ptr %O, ptr %O.addr, align 8
    #dbg_declare(ptr %O.addr, !1223, !DIExpression(), !1224)
  store ptr %acc, ptr %acc.addr, align 8
    #dbg_declare(ptr %acc.addr, !1225, !DIExpression(), !1226)
    #dbg_declare(ptr %param_o, !1227, !DIExpression(), !1228)
  %0 = load ptr, ptr %p.addr, align 8, !dbg !1229
  %o = getelementptr inbounds nuw %struct.mayo_params_t, ptr %0, i32 0, i32 2, !dbg !1230
  %1 = load i32, ptr %o, align 8, !dbg !1230
  store i32 %1, ptr %param_o, align 4, !dbg !1228
    #dbg_declare(ptr %param_v, !1231, !DIExpression(), !1232)
  %2 = load ptr, ptr %p.addr, align 8, !dbg !1233
  %n = getelementptr inbounds nuw %struct.mayo_params_t, ptr %2, i32 0, i32 1, !dbg !1234
  %3 = load i32, ptr %n, align 4, !dbg !1234
  %4 = load ptr, ptr %p.addr, align 8, !dbg !1233
  %o1 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %4, i32 0, i32 2, !dbg !1234
  %5 = load i32, ptr %o1, align 8, !dbg !1234
  %sub = sub nsw i32 %3, %5, !dbg !1234
  store i32 %sub, ptr %param_v, align 4, !dbg !1232
    #dbg_declare(ptr %m_vec_limbs, !1235, !DIExpression(), !1236)
  %6 = load ptr, ptr %p.addr, align 8, !dbg !1237
  %m_vec_limbs2 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %6, i32 0, i32 21, !dbg !1238
  %7 = load i32, ptr %m_vec_limbs2, align 4, !dbg !1238
  store i32 %7, ptr %m_vec_limbs, align 4, !dbg !1236
    #dbg_declare(ptr %bs_mat_entries_used, !1239, !DIExpression(), !1240)
  store i32 0, ptr %bs_mat_entries_used, align 4, !dbg !1240
    #dbg_declare(ptr %r, !1241, !DIExpression(), !1243)
  store i32 0, ptr %r, align 4, !dbg !1243
  br label %for.cond, !dbg !1244

for.cond:                                         ; preds = %for.inc33, %entry
  %8 = load i32, ptr %r, align 4, !dbg !1245
  %9 = load i32, ptr %param_v, align 4, !dbg !1247
  %cmp = icmp slt i32 %8, %9, !dbg !1248
  br i1 %cmp, label %for.body, label %for.end35, !dbg !1249

for.body:                                         ; preds = %for.cond
    #dbg_declare(ptr %c, !1250, !DIExpression(), !1253)
  %10 = load i32, ptr %r, align 4, !dbg !1254
  store i32 %10, ptr %c, align 4, !dbg !1253
  br label %for.cond3, !dbg !1255

for.cond3:                                        ; preds = %for.inc31, %for.body
  %11 = load i32, ptr %c, align 4, !dbg !1256
  %12 = load i32, ptr %param_v, align 4, !dbg !1258
  %cmp4 = icmp slt i32 %11, %12, !dbg !1259
  br i1 %cmp4, label %for.body5, label %for.end32, !dbg !1260

for.body5:                                        ; preds = %for.cond3
  %13 = load i32, ptr %c, align 4, !dbg !1261
  %14 = load i32, ptr %r, align 4, !dbg !1264
  %cmp6 = icmp eq i32 %13, %14, !dbg !1265
  br i1 %cmp6, label %if.then, label %if.end, !dbg !1265

if.then:                                          ; preds = %for.body5
  %15 = load i32, ptr %bs_mat_entries_used, align 4, !dbg !1266
  %add = add nsw i32 %15, 1, !dbg !1266
  store i32 %add, ptr %bs_mat_entries_used, align 4, !dbg !1266
  br label %for.inc31, !dbg !1268

if.end:                                           ; preds = %for.body5
    #dbg_declare(ptr %k, !1269, !DIExpression(), !1271)
  store i32 0, ptr %k, align 4, !dbg !1271
  br label %for.cond7, !dbg !1272

for.cond7:                                        ; preds = %for.inc, %if.end
  %16 = load i32, ptr %k, align 4, !dbg !1273
  %17 = load i32, ptr %param_o, align 4, !dbg !1275
  %cmp8 = icmp slt i32 %16, %17, !dbg !1276
  br i1 %cmp8, label %for.body9, label %for.end, !dbg !1277

for.body9:                                        ; preds = %for.cond7
  %18 = load i32, ptr %m_vec_limbs, align 4, !dbg !1278
  %19 = load ptr, ptr %P1.addr, align 8, !dbg !1280
  %20 = load i32, ptr %m_vec_limbs, align 4, !dbg !1281
  %21 = load i32, ptr %bs_mat_entries_used, align 4, !dbg !1282
  %mul = mul nsw i32 %20, %21, !dbg !1283
  %idx.ext = sext i32 %mul to i64, !dbg !1284
  %add.ptr = getelementptr inbounds i64, ptr %19, i64 %idx.ext, !dbg !1284
  %22 = load ptr, ptr %O.addr, align 8, !dbg !1285
  %23 = load i32, ptr %c, align 4, !dbg !1286
  %24 = load i32, ptr %param_o, align 4, !dbg !1287
  %mul10 = mul nsw i32 %23, %24, !dbg !1288
  %25 = load i32, ptr %k, align 4, !dbg !1289
  %add11 = add nsw i32 %mul10, %25, !dbg !1290
  %idxprom = sext i32 %add11 to i64, !dbg !1285
  %arrayidx = getelementptr inbounds i8, ptr %22, i64 %idxprom, !dbg !1285
  %26 = load i8, ptr %arrayidx, align 1, !dbg !1285
  %27 = load ptr, ptr %acc.addr, align 8, !dbg !1291
  %28 = load i32, ptr %m_vec_limbs, align 4, !dbg !1292
  %29 = load i32, ptr %r, align 4, !dbg !1293
  %30 = load i32, ptr %param_o, align 4, !dbg !1294
  %mul12 = mul nsw i32 %29, %30, !dbg !1295
  %31 = load i32, ptr %k, align 4, !dbg !1296
  %add13 = add nsw i32 %mul12, %31, !dbg !1297
  %mul14 = mul nsw i32 %28, %add13, !dbg !1298
  %idx.ext15 = sext i32 %mul14 to i64, !dbg !1299
  %add.ptr16 = getelementptr inbounds i64, ptr %27, i64 %idx.ext15, !dbg !1299
  call void @m_vec_mul_add(i32 noundef %18, ptr noundef %add.ptr, i8 noundef zeroext %26, ptr noundef %add.ptr16), !dbg !1300
  %32 = load i32, ptr %m_vec_limbs, align 4, !dbg !1301
  %33 = load ptr, ptr %P1.addr, align 8, !dbg !1302
  %34 = load i32, ptr %m_vec_limbs, align 4, !dbg !1303
  %35 = load i32, ptr %bs_mat_entries_used, align 4, !dbg !1304
  %mul17 = mul nsw i32 %34, %35, !dbg !1305
  %idx.ext18 = sext i32 %mul17 to i64, !dbg !1306
  %add.ptr19 = getelementptr inbounds i64, ptr %33, i64 %idx.ext18, !dbg !1306
  %36 = load ptr, ptr %O.addr, align 8, !dbg !1307
  %37 = load i32, ptr %r, align 4, !dbg !1308
  %38 = load i32, ptr %param_o, align 4, !dbg !1309
  %mul20 = mul nsw i32 %37, %38, !dbg !1310
  %39 = load i32, ptr %k, align 4, !dbg !1311
  %add21 = add nsw i32 %mul20, %39, !dbg !1312
  %idxprom22 = sext i32 %add21 to i64, !dbg !1307
  %arrayidx23 = getelementptr inbounds i8, ptr %36, i64 %idxprom22, !dbg !1307
  %40 = load i8, ptr %arrayidx23, align 1, !dbg !1307
  %41 = load ptr, ptr %acc.addr, align 8, !dbg !1313
  %42 = load i32, ptr %m_vec_limbs, align 4, !dbg !1314
  %43 = load i32, ptr %c, align 4, !dbg !1315
  %44 = load i32, ptr %param_o, align 4, !dbg !1316
  %mul24 = mul nsw i32 %43, %44, !dbg !1317
  %45 = load i32, ptr %k, align 4, !dbg !1318
  %add25 = add nsw i32 %mul24, %45, !dbg !1319
  %mul26 = mul nsw i32 %42, %add25, !dbg !1320
  %idx.ext27 = sext i32 %mul26 to i64, !dbg !1321
  %add.ptr28 = getelementptr inbounds i64, ptr %41, i64 %idx.ext27, !dbg !1321
  call void @m_vec_mul_add(i32 noundef %32, ptr noundef %add.ptr19, i8 noundef zeroext %40, ptr noundef %add.ptr28), !dbg !1322
  br label %for.inc, !dbg !1323

for.inc:                                          ; preds = %for.body9
  %46 = load i32, ptr %k, align 4, !dbg !1324
  %add29 = add nsw i32 %46, 1, !dbg !1324
  store i32 %add29, ptr %k, align 4, !dbg !1324
  br label %for.cond7, !dbg !1325, !llvm.loop !1326

for.end:                                          ; preds = %for.cond7
  %47 = load i32, ptr %bs_mat_entries_used, align 4, !dbg !1328
  %add30 = add nsw i32 %47, 1, !dbg !1328
  store i32 %add30, ptr %bs_mat_entries_used, align 4, !dbg !1328
  br label %for.inc31, !dbg !1329

for.inc31:                                        ; preds = %for.end, %if.then
  %48 = load i32, ptr %c, align 4, !dbg !1330
  %inc = add nsw i32 %48, 1, !dbg !1330
  store i32 %inc, ptr %c, align 4, !dbg !1330
  br label %for.cond3, !dbg !1331, !llvm.loop !1332

for.end32:                                        ; preds = %for.cond3
  br label %for.inc33, !dbg !1334

for.inc33:                                        ; preds = %for.end32
  %49 = load i32, ptr %r, align 4, !dbg !1335
  %inc34 = add nsw i32 %49, 1, !dbg !1335
  store i32 %inc34, ptr %r, align 4, !dbg !1335
  br label %for.cond, !dbg !1336, !llvm.loop !1337

for.end35:                                        ; preds = %for.cond
  ret void, !dbg !1339
}

; Function Attrs: noinline nounwind optnone
define dso_local i32 @mayo_sign_signature(ptr noundef %p, ptr noundef %sig, ptr noundef %siglen, ptr noundef %m, i64 noundef %mlen, ptr noundef %csk) #0 !dbg !1340 {
entry:
  %p.addr = alloca ptr, align 8
  %sig.addr = alloca ptr, align 8
  %siglen.addr = alloca ptr, align 8
  %m.addr = alloca ptr, align 8
  %mlen.addr = alloca i64, align 8
  %csk.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %tenc = alloca [71 x i8], align 16
  %t = alloca [142 x i8], align 16
  %y = alloca [142 x i8], align 16
  %salt = alloca [40 x i8], align 16
  %V = alloca [924 x i8], align 16
  %Vdec = alloca [1704 x i8], align 16
  %A = alloca [29520 x i8], align 16
  %x = alloca [1848 x i8], align 16
  %r = alloca [205 x i8], align 16
  %s = alloca [1848 x i8], align 16
  %seed_sk = alloca ptr, align 8
  %sk = alloca %struct.sk_t, align 32
  %Ox = alloca [142 x i8], align 16
  %tmp = alloca [145 x i8], align 16
  %ctrbyte = alloca ptr, align 8
  %vi = alloca ptr, align 8
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
  %P1 = alloca ptr, align 8
  %L = alloca ptr, align 8
  %Mtmp = alloca [1836 x i64], align 16
  %ctr = alloca i32, align 4
  %i = alloca i32, align 4
  %i94 = alloca i32, align 4
  %i125 = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
    #dbg_declare(ptr %p.addr, !1344, !DIExpression(), !1345)
  store ptr %sig, ptr %sig.addr, align 8
    #dbg_declare(ptr %sig.addr, !1346, !DIExpression(), !1347)
  store ptr %siglen, ptr %siglen.addr, align 8
    #dbg_declare(ptr %siglen.addr, !1348, !DIExpression(), !1349)
  store ptr %m, ptr %m.addr, align 8
    #dbg_declare(ptr %m.addr, !1350, !DIExpression(), !1351)
  store i64 %mlen, ptr %mlen.addr, align 8
    #dbg_declare(ptr %mlen.addr, !1352, !DIExpression(), !1353)
  store ptr %csk, ptr %csk.addr, align 8
    #dbg_declare(ptr %csk.addr, !1354, !DIExpression(), !1355)
    #dbg_declare(ptr %ret, !1356, !DIExpression(), !1357)
  store i32 0, ptr %ret, align 4, !dbg !1357
    #dbg_declare(ptr %tenc, !1358, !DIExpression(), !1362)
    #dbg_declare(ptr %t, !1363, !DIExpression(), !1367)
    #dbg_declare(ptr %y, !1368, !DIExpression(), !1369)
    #dbg_declare(ptr %salt, !1370, !DIExpression(), !1374)
    #dbg_declare(ptr %V, !1375, !DIExpression(), !1379)
    #dbg_declare(ptr %Vdec, !1380, !DIExpression(), !1384)
    #dbg_declare(ptr %A, !1385, !DIExpression(), !1389)
  call void @llvm.memset.p0.i64(ptr align 16 %A, i8 0, i64 29520, i1 false), !dbg !1389
    #dbg_declare(ptr %x, !1390, !DIExpression(), !1394)
    #dbg_declare(ptr %r, !1395, !DIExpression(), !1399)
  call void @llvm.memset.p0.i64(ptr align 16 %r, i8 0, i64 205, i1 false), !dbg !1399
    #dbg_declare(ptr %s, !1400, !DIExpression(), !1401)
    #dbg_declare(ptr %seed_sk, !1402, !DIExpression(), !1403)
    #dbg_declare(ptr %sk, !1404, !DIExpression(), !1405)
    #dbg_declare(ptr %Ox, !1406, !DIExpression(), !1407)
    #dbg_declare(ptr %tmp, !1408, !DIExpression(), !1412)
    #dbg_declare(ptr %ctrbyte, !1413, !DIExpression(), !1414)
    #dbg_declare(ptr %vi, !1415, !DIExpression(), !1416)
    #dbg_declare(ptr %param_m, !1417, !DIExpression(), !1418)
  %0 = load ptr, ptr %p.addr, align 8, !dbg !1419
  %m1 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %0, i32 0, i32 0, !dbg !1420
  %1 = load i32, ptr %m1, align 8, !dbg !1420
  store i32 %1, ptr %param_m, align 4, !dbg !1418
    #dbg_declare(ptr %param_n, !1421, !DIExpression(), !1422)
  %2 = load ptr, ptr %p.addr, align 8, !dbg !1423
  %n = getelementptr inbounds nuw %struct.mayo_params_t, ptr %2, i32 0, i32 1, !dbg !1424
  %3 = load i32, ptr %n, align 4, !dbg !1424
  store i32 %3, ptr %param_n, align 4, !dbg !1422
    #dbg_declare(ptr %param_o, !1425, !DIExpression(), !1426)
  %4 = load ptr, ptr %p.addr, align 8, !dbg !1427
  %o = getelementptr inbounds nuw %struct.mayo_params_t, ptr %4, i32 0, i32 2, !dbg !1428
  %5 = load i32, ptr %o, align 8, !dbg !1428
  store i32 %5, ptr %param_o, align 4, !dbg !1426
    #dbg_declare(ptr %param_k, !1429, !DIExpression(), !1430)
  %6 = load ptr, ptr %p.addr, align 8, !dbg !1431
  %k = getelementptr inbounds nuw %struct.mayo_params_t, ptr %6, i32 0, i32 3, !dbg !1432
  %7 = load i32, ptr %k, align 4, !dbg !1432
  store i32 %7, ptr %param_k, align 4, !dbg !1430
    #dbg_declare(ptr %param_v, !1433, !DIExpression(), !1434)
  %8 = load ptr, ptr %p.addr, align 8, !dbg !1435
  %n2 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %8, i32 0, i32 1, !dbg !1436
  %9 = load i32, ptr %n2, align 4, !dbg !1436
  %10 = load ptr, ptr %p.addr, align 8, !dbg !1435
  %o3 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %10, i32 0, i32 2, !dbg !1436
  %11 = load i32, ptr %o3, align 8, !dbg !1436
  %sub = sub nsw i32 %9, %11, !dbg !1436
  store i32 %sub, ptr %param_v, align 4, !dbg !1434
    #dbg_declare(ptr %param_m_bytes, !1437, !DIExpression(), !1438)
  %12 = load ptr, ptr %p.addr, align 8, !dbg !1439
  %m_bytes = getelementptr inbounds nuw %struct.mayo_params_t, ptr %12, i32 0, i32 6, !dbg !1440
  %13 = load i32, ptr %m_bytes, align 8, !dbg !1440
  store i32 %13, ptr %param_m_bytes, align 4, !dbg !1438
    #dbg_declare(ptr %param_v_bytes, !1441, !DIExpression(), !1442)
  %14 = load ptr, ptr %p.addr, align 8, !dbg !1443
  %v_bytes = getelementptr inbounds nuw %struct.mayo_params_t, ptr %14, i32 0, i32 8, !dbg !1444
  %15 = load i32, ptr %v_bytes, align 8, !dbg !1444
  store i32 %15, ptr %param_v_bytes, align 4, !dbg !1442
    #dbg_declare(ptr %param_r_bytes, !1445, !DIExpression(), !1446)
  %16 = load ptr, ptr %p.addr, align 8, !dbg !1447
  %r_bytes = getelementptr inbounds nuw %struct.mayo_params_t, ptr %16, i32 0, i32 9, !dbg !1448
  %17 = load i32, ptr %r_bytes, align 4, !dbg !1448
  store i32 %17, ptr %param_r_bytes, align 4, !dbg !1446
    #dbg_declare(ptr %param_sig_bytes, !1449, !DIExpression(), !1450)
  %18 = load ptr, ptr %p.addr, align 8, !dbg !1451
  %sig_bytes = getelementptr inbounds nuw %struct.mayo_params_t, ptr %18, i32 0, i32 16, !dbg !1452
  %19 = load i32, ptr %sig_bytes, align 8, !dbg !1452
  store i32 %19, ptr %param_sig_bytes, align 4, !dbg !1450
    #dbg_declare(ptr %param_A_cols, !1453, !DIExpression(), !1454)
  %20 = load ptr, ptr %p.addr, align 8, !dbg !1455
  %k4 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %20, i32 0, i32 3, !dbg !1456
  %21 = load i32, ptr %k4, align 4, !dbg !1456
  %22 = load ptr, ptr %p.addr, align 8, !dbg !1455
  %o5 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %22, i32 0, i32 2, !dbg !1456
  %23 = load i32, ptr %o5, align 8, !dbg !1456
  %mul = mul nsw i32 %21, %23, !dbg !1456
  %add = add nsw i32 %mul, 1, !dbg !1456
  store i32 %add, ptr %param_A_cols, align 4, !dbg !1454
    #dbg_declare(ptr %param_digest_bytes, !1457, !DIExpression(), !1458)
  %24 = load ptr, ptr %p.addr, align 8, !dbg !1459
  %digest_bytes = getelementptr inbounds nuw %struct.mayo_params_t, ptr %24, i32 0, i32 19, !dbg !1460
  %25 = load i32, ptr %digest_bytes, align 4, !dbg !1460
  store i32 %25, ptr %param_digest_bytes, align 4, !dbg !1458
    #dbg_declare(ptr %param_sk_seed_bytes, !1461, !DIExpression(), !1462)
  %26 = load ptr, ptr %p.addr, align 8, !dbg !1463
  %sk_seed_bytes = getelementptr inbounds nuw %struct.mayo_params_t, ptr %26, i32 0, i32 18, !dbg !1464
  %27 = load i32, ptr %sk_seed_bytes, align 8, !dbg !1464
  store i32 %27, ptr %param_sk_seed_bytes, align 4, !dbg !1462
    #dbg_declare(ptr %param_salt_bytes, !1465, !DIExpression(), !1466)
  %28 = load ptr, ptr %p.addr, align 8, !dbg !1467
  %salt_bytes = getelementptr inbounds nuw %struct.mayo_params_t, ptr %28, i32 0, i32 17, !dbg !1468
  %29 = load i32, ptr %salt_bytes, align 4, !dbg !1468
  store i32 %29, ptr %param_salt_bytes, align 4, !dbg !1466
  %30 = load ptr, ptr %p.addr, align 8, !dbg !1469
  %31 = load ptr, ptr %csk.addr, align 8, !dbg !1470
  %call = call i32 @mayo_expand_sk(ptr noundef %30, ptr noundef %31, ptr noundef %sk), !dbg !1471
  store i32 %call, ptr %ret, align 4, !dbg !1472
  %32 = load i32, ptr %ret, align 4, !dbg !1473
  %cmp = icmp ne i32 %32, 0, !dbg !1475
  br i1 %cmp, label %if.then, label %if.end, !dbg !1475

if.then:                                          ; preds = %entry
  br label %err, !dbg !1476

if.end:                                           ; preds = %entry
  %33 = load ptr, ptr %csk.addr, align 8, !dbg !1478
  store ptr %33, ptr %seed_sk, align 8, !dbg !1479
  %arraydecay = getelementptr inbounds [145 x i8], ptr %tmp, i64 0, i64 0, !dbg !1480
  %34 = load i32, ptr %param_digest_bytes, align 4, !dbg !1481
  %conv = sext i32 %34 to i64, !dbg !1481
  %35 = load ptr, ptr %m.addr, align 8, !dbg !1482
  %36 = load i64, ptr %mlen.addr, align 8, !dbg !1483
  %call6 = call i32 @shake256(ptr noundef %arraydecay, i64 noundef %conv, ptr noundef %35, i64 noundef %36), !dbg !1484
    #dbg_declare(ptr %P1, !1485, !DIExpression(), !1486)
  %p7 = getelementptr inbounds nuw %struct.sk_t, ptr %sk, i32 0, i32 0, !dbg !1487
  %arraydecay8 = getelementptr inbounds [113103 x i64], ptr %p7, i64 0, i64 0, !dbg !1488
  store ptr %arraydecay8, ptr %P1, align 8, !dbg !1486
    #dbg_declare(ptr %L, !1489, !DIExpression(), !1490)
  %37 = load ptr, ptr %P1, align 8, !dbg !1491
  %38 = load ptr, ptr %p.addr, align 8, !dbg !1492
  %n9 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %38, i32 0, i32 1, !dbg !1493
  %39 = load i32, ptr %n9, align 4, !dbg !1493
  %40 = load ptr, ptr %p.addr, align 8, !dbg !1492
  %o10 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %40, i32 0, i32 2, !dbg !1493
  %41 = load i32, ptr %o10, align 8, !dbg !1493
  %sub11 = sub nsw i32 %39, %41, !dbg !1493
  %42 = load ptr, ptr %p.addr, align 8, !dbg !1492
  %n12 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %42, i32 0, i32 1, !dbg !1493
  %43 = load i32, ptr %n12, align 4, !dbg !1493
  %44 = load ptr, ptr %p.addr, align 8, !dbg !1492
  %o13 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %44, i32 0, i32 2, !dbg !1493
  %45 = load i32, ptr %o13, align 8, !dbg !1493
  %sub14 = sub nsw i32 %43, %45, !dbg !1493
  %add15 = add nsw i32 %sub14, 1, !dbg !1493
  %mul16 = mul nsw i32 %sub11, %add15, !dbg !1493
  %div = sdiv i32 %mul16, 2, !dbg !1493
  %46 = load ptr, ptr %p.addr, align 8, !dbg !1492
  %m_vec_limbs = getelementptr inbounds nuw %struct.mayo_params_t, ptr %46, i32 0, i32 21, !dbg !1493
  %47 = load i32, ptr %m_vec_limbs, align 4, !dbg !1493
  %mul17 = mul nsw i32 %div, %47, !dbg !1493
  %idx.ext = sext i32 %mul17 to i64, !dbg !1494
  %add.ptr = getelementptr inbounds i64, ptr %37, i64 %idx.ext, !dbg !1494
  store ptr %add.ptr, ptr %L, align 8, !dbg !1490
    #dbg_declare(ptr %Mtmp, !1495, !DIExpression(), !1499)
  call void @llvm.memset.p0.i64(ptr align 16 %Mtmp, i8 0, i64 14688, i1 false), !dbg !1499
  %arraydecay18 = getelementptr inbounds [145 x i8], ptr %tmp, i64 0, i64 0, !dbg !1500
  %48 = load i32, ptr %param_digest_bytes, align 4, !dbg !1502
  %idx.ext19 = sext i32 %48 to i64, !dbg !1503
  %add.ptr20 = getelementptr inbounds i8, ptr %arraydecay18, i64 %idx.ext19, !dbg !1503
  %49 = load i32, ptr %param_salt_bytes, align 4, !dbg !1504
  %conv21 = sext i32 %49 to i64, !dbg !1504
  %call22 = call i32 @randombytes(ptr noundef %add.ptr20, i64 noundef %conv21), !dbg !1505
  %cmp23 = icmp ne i32 %call22, 0, !dbg !1506
  br i1 %cmp23, label %if.then25, label %if.end26, !dbg !1506

if.then25:                                        ; preds = %if.end
  store i32 1, ptr %ret, align 4, !dbg !1507
  br label %err, !dbg !1509

if.end26:                                         ; preds = %if.end
  %arraydecay27 = getelementptr inbounds [145 x i8], ptr %tmp, i64 0, i64 0, !dbg !1510
  %50 = load i32, ptr %param_digest_bytes, align 4, !dbg !1511
  %idx.ext28 = sext i32 %50 to i64, !dbg !1510
  %add.ptr29 = getelementptr inbounds i8, ptr %arraydecay27, i64 %idx.ext28, !dbg !1510
  %51 = load i32, ptr %param_salt_bytes, align 4, !dbg !1512
  %idx.ext30 = sext i32 %51 to i64, !dbg !1510
  %add.ptr31 = getelementptr inbounds i8, ptr %add.ptr29, i64 %idx.ext30, !dbg !1510
  %52 = load ptr, ptr %seed_sk, align 8, !dbg !1513
  %53 = load i32, ptr %param_sk_seed_bytes, align 4, !dbg !1514
  %conv32 = sext i32 %53 to i64, !dbg !1514
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr31, ptr align 1 %52, i64 %conv32, i1 false), !dbg !1510
  %arraydecay33 = getelementptr inbounds [40 x i8], ptr %salt, i64 0, i64 0, !dbg !1515
  %54 = load i32, ptr %param_salt_bytes, align 4, !dbg !1516
  %conv34 = sext i32 %54 to i64, !dbg !1516
  %arraydecay35 = getelementptr inbounds [145 x i8], ptr %tmp, i64 0, i64 0, !dbg !1517
  %55 = load i32, ptr %param_digest_bytes, align 4, !dbg !1518
  %56 = load i32, ptr %param_salt_bytes, align 4, !dbg !1519
  %add36 = add nsw i32 %55, %56, !dbg !1520
  %57 = load i32, ptr %param_sk_seed_bytes, align 4, !dbg !1521
  %add37 = add nsw i32 %add36, %57, !dbg !1522
  %conv38 = sext i32 %add37 to i64, !dbg !1518
  %call39 = call i32 @shake256(ptr noundef %arraydecay33, i64 noundef %conv34, ptr noundef %arraydecay35, i64 noundef %conv38), !dbg !1523
  %arraydecay40 = getelementptr inbounds [145 x i8], ptr %tmp, i64 0, i64 0, !dbg !1524
  %58 = load i32, ptr %param_digest_bytes, align 4, !dbg !1525
  %idx.ext41 = sext i32 %58 to i64, !dbg !1524
  %add.ptr42 = getelementptr inbounds i8, ptr %arraydecay40, i64 %idx.ext41, !dbg !1524
  %arraydecay43 = getelementptr inbounds [40 x i8], ptr %salt, i64 0, i64 0, !dbg !1524
  %59 = load i32, ptr %param_salt_bytes, align 4, !dbg !1526
  %conv44 = sext i32 %59 to i64, !dbg !1526
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr42, ptr align 16 %arraydecay43, i64 %conv44, i1 false), !dbg !1524
  %arraydecay45 = getelementptr inbounds [145 x i8], ptr %tmp, i64 0, i64 0, !dbg !1527
  %60 = load i32, ptr %param_digest_bytes, align 4, !dbg !1528
  %idx.ext46 = sext i32 %60 to i64, !dbg !1529
  %add.ptr47 = getelementptr inbounds i8, ptr %arraydecay45, i64 %idx.ext46, !dbg !1529
  %61 = load i32, ptr %param_salt_bytes, align 4, !dbg !1530
  %idx.ext48 = sext i32 %61 to i64, !dbg !1531
  %add.ptr49 = getelementptr inbounds i8, ptr %add.ptr47, i64 %idx.ext48, !dbg !1531
  %62 = load i32, ptr %param_sk_seed_bytes, align 4, !dbg !1532
  %idx.ext50 = sext i32 %62 to i64, !dbg !1533
  %add.ptr51 = getelementptr inbounds i8, ptr %add.ptr49, i64 %idx.ext50, !dbg !1533
  store ptr %add.ptr51, ptr %ctrbyte, align 8, !dbg !1534
  %arraydecay52 = getelementptr inbounds [71 x i8], ptr %tenc, i64 0, i64 0, !dbg !1535
  %63 = load i32, ptr %param_m_bytes, align 4, !dbg !1536
  %conv53 = sext i32 %63 to i64, !dbg !1536
  %arraydecay54 = getelementptr inbounds [145 x i8], ptr %tmp, i64 0, i64 0, !dbg !1537
  %64 = load i32, ptr %param_digest_bytes, align 4, !dbg !1538
  %65 = load i32, ptr %param_salt_bytes, align 4, !dbg !1539
  %add55 = add nsw i32 %64, %65, !dbg !1540
  %conv56 = sext i32 %add55 to i64, !dbg !1538
  %call57 = call i32 @shake256(ptr noundef %arraydecay52, i64 noundef %conv53, ptr noundef %arraydecay54, i64 noundef %conv56), !dbg !1541
  %arraydecay58 = getelementptr inbounds [71 x i8], ptr %tenc, i64 0, i64 0, !dbg !1542
  %arraydecay59 = getelementptr inbounds [142 x i8], ptr %t, i64 0, i64 0, !dbg !1543
  %66 = load i32, ptr %param_m, align 4, !dbg !1544
  call void @decode(ptr noundef %arraydecay58, ptr noundef %arraydecay59, i32 noundef %66), !dbg !1545
    #dbg_declare(ptr %ctr, !1546, !DIExpression(), !1548)
  store i32 0, ptr %ctr, align 4, !dbg !1548
  br label %for.cond, !dbg !1549

for.cond:                                         ; preds = %for.inc122, %if.end26
  %67 = load i32, ptr %ctr, align 4, !dbg !1550
  %cmp60 = icmp sle i32 %67, 255, !dbg !1552
  br i1 %cmp60, label %for.body, label %for.end124, !dbg !1553

for.body:                                         ; preds = %for.cond
  %68 = load i32, ptr %ctr, align 4, !dbg !1554
  %conv62 = trunc i32 %68 to i8, !dbg !1556
  %69 = load ptr, ptr %ctrbyte, align 8, !dbg !1557
  store i8 %conv62, ptr %69, align 1, !dbg !1558
  %arraydecay63 = getelementptr inbounds [924 x i8], ptr %V, i64 0, i64 0, !dbg !1559
  %70 = load i32, ptr %param_k, align 4, !dbg !1560
  %71 = load i32, ptr %param_v_bytes, align 4, !dbg !1561
  %mul64 = mul nsw i32 %70, %71, !dbg !1562
  %72 = load i32, ptr %param_r_bytes, align 4, !dbg !1563
  %add65 = add nsw i32 %mul64, %72, !dbg !1564
  %conv66 = sext i32 %add65 to i64, !dbg !1560
  %arraydecay67 = getelementptr inbounds [145 x i8], ptr %tmp, i64 0, i64 0, !dbg !1565
  %73 = load i32, ptr %param_digest_bytes, align 4, !dbg !1566
  %74 = load i32, ptr %param_salt_bytes, align 4, !dbg !1567
  %add68 = add nsw i32 %73, %74, !dbg !1568
  %75 = load i32, ptr %param_sk_seed_bytes, align 4, !dbg !1569
  %add69 = add nsw i32 %add68, %75, !dbg !1570
  %add70 = add nsw i32 %add69, 1, !dbg !1571
  %conv71 = sext i32 %add70 to i64, !dbg !1566
  %call72 = call i32 @shake256(ptr noundef %arraydecay63, i64 noundef %conv66, ptr noundef %arraydecay67, i64 noundef %conv71), !dbg !1572
    #dbg_declare(ptr %i, !1573, !DIExpression(), !1575)
  store i32 0, ptr %i, align 4, !dbg !1575
  br label %for.cond73, !dbg !1576

for.cond73:                                       ; preds = %for.inc, %for.body
  %76 = load i32, ptr %i, align 4, !dbg !1577
  %77 = load i32, ptr %param_k, align 4, !dbg !1579
  %sub74 = sub nsw i32 %77, 1, !dbg !1580
  %cmp75 = icmp sle i32 %76, %sub74, !dbg !1581
  br i1 %cmp75, label %for.body77, label %for.end, !dbg !1582

for.body77:                                       ; preds = %for.cond73
  %arraydecay78 = getelementptr inbounds [924 x i8], ptr %V, i64 0, i64 0, !dbg !1583
  %78 = load i32, ptr %i, align 4, !dbg !1585
  %79 = load i32, ptr %param_v_bytes, align 4, !dbg !1586
  %mul79 = mul nsw i32 %78, %79, !dbg !1587
  %idx.ext80 = sext i32 %mul79 to i64, !dbg !1588
  %add.ptr81 = getelementptr inbounds i8, ptr %arraydecay78, i64 %idx.ext80, !dbg !1588
  %arraydecay82 = getelementptr inbounds [1704 x i8], ptr %Vdec, i64 0, i64 0, !dbg !1589
  %80 = load i32, ptr %i, align 4, !dbg !1590
  %81 = load i32, ptr %param_v, align 4, !dbg !1591
  %mul83 = mul nsw i32 %80, %81, !dbg !1592
  %idx.ext84 = sext i32 %mul83 to i64, !dbg !1593
  %add.ptr85 = getelementptr inbounds i8, ptr %arraydecay82, i64 %idx.ext84, !dbg !1593
  %82 = load i32, ptr %param_v, align 4, !dbg !1594
  call void @decode(ptr noundef %add.ptr81, ptr noundef %add.ptr85, i32 noundef %82), !dbg !1595
  br label %for.inc, !dbg !1596

for.inc:                                          ; preds = %for.body77
  %83 = load i32, ptr %i, align 4, !dbg !1597
  %inc = add nsw i32 %83, 1, !dbg !1597
  store i32 %inc, ptr %i, align 4, !dbg !1597
  br label %for.cond73, !dbg !1598, !llvm.loop !1599

for.end:                                          ; preds = %for.cond73
  %84 = load ptr, ptr %p.addr, align 8, !dbg !1601
  %arraydecay86 = getelementptr inbounds [1704 x i8], ptr %Vdec, i64 0, i64 0, !dbg !1602
  %85 = load ptr, ptr %L, align 8, !dbg !1603
  %86 = load ptr, ptr %P1, align 8, !dbg !1604
  %arraydecay87 = getelementptr inbounds [1836 x i64], ptr %Mtmp, i64 0, i64 0, !dbg !1605
  %arraydecay88 = getelementptr inbounds [29520 x i8], ptr %A, i64 0, i64 0, !dbg !1606
  call void @compute_M_and_VPV(ptr noundef %84, ptr noundef %arraydecay86, ptr noundef %85, ptr noundef %86, ptr noundef %arraydecay87, ptr noundef %arraydecay88), !dbg !1607
  %87 = load ptr, ptr %p.addr, align 8, !dbg !1608
  %arraydecay89 = getelementptr inbounds [29520 x i8], ptr %A, i64 0, i64 0, !dbg !1609
  %arraydecay90 = getelementptr inbounds [142 x i8], ptr %t, i64 0, i64 0, !dbg !1610
  %arraydecay91 = getelementptr inbounds [142 x i8], ptr %y, i64 0, i64 0, !dbg !1611
  call void @compute_rhs(ptr noundef %87, ptr noundef %arraydecay89, ptr noundef %arraydecay90, ptr noundef %arraydecay91), !dbg !1612
  %88 = load ptr, ptr %p.addr, align 8, !dbg !1613
  %arraydecay92 = getelementptr inbounds [1836 x i64], ptr %Mtmp, i64 0, i64 0, !dbg !1614
  %arraydecay93 = getelementptr inbounds [29520 x i8], ptr %A, i64 0, i64 0, !dbg !1615
  call void @compute_A(ptr noundef %88, ptr noundef %arraydecay92, ptr noundef %arraydecay93), !dbg !1616
    #dbg_declare(ptr %i94, !1617, !DIExpression(), !1619)
  store i32 0, ptr %i94, align 4, !dbg !1619
  br label %for.cond95, !dbg !1620

for.cond95:                                       ; preds = %for.inc104, %for.end
  %89 = load i32, ptr %i94, align 4, !dbg !1621
  %90 = load i32, ptr %param_m, align 4, !dbg !1623
  %cmp96 = icmp slt i32 %89, %90, !dbg !1624
  br i1 %cmp96, label %for.body98, label %for.end106, !dbg !1625

for.body98:                                       ; preds = %for.cond95
  %91 = load i32, ptr %i94, align 4, !dbg !1626
  %add99 = add nsw i32 1, %91, !dbg !1628
  %92 = load i32, ptr %param_k, align 4, !dbg !1629
  %93 = load i32, ptr %param_o, align 4, !dbg !1630
  %mul100 = mul nsw i32 %92, %93, !dbg !1631
  %add101 = add nsw i32 %mul100, 1, !dbg !1632
  %mul102 = mul nsw i32 %add99, %add101, !dbg !1633
  %sub103 = sub nsw i32 %mul102, 1, !dbg !1634
  %idxprom = sext i32 %sub103 to i64, !dbg !1635
  %arrayidx = getelementptr inbounds [29520 x i8], ptr %A, i64 0, i64 %idxprom, !dbg !1635
  store i8 0, ptr %arrayidx, align 1, !dbg !1636
  br label %for.inc104, !dbg !1637

for.inc104:                                       ; preds = %for.body98
  %94 = load i32, ptr %i94, align 4, !dbg !1638
  %inc105 = add nsw i32 %94, 1, !dbg !1638
  store i32 %inc105, ptr %i94, align 4, !dbg !1638
  br label %for.cond95, !dbg !1639, !llvm.loop !1640

for.end106:                                       ; preds = %for.cond95
  %arraydecay107 = getelementptr inbounds [924 x i8], ptr %V, i64 0, i64 0, !dbg !1642
  %95 = load i32, ptr %param_k, align 4, !dbg !1643
  %96 = load i32, ptr %param_v_bytes, align 4, !dbg !1644
  %mul108 = mul nsw i32 %95, %96, !dbg !1645
  %idx.ext109 = sext i32 %mul108 to i64, !dbg !1646
  %add.ptr110 = getelementptr inbounds i8, ptr %arraydecay107, i64 %idx.ext109, !dbg !1646
  %arraydecay111 = getelementptr inbounds [205 x i8], ptr %r, i64 0, i64 0, !dbg !1647
  %97 = load i32, ptr %param_k, align 4, !dbg !1648
  %98 = load i32, ptr %param_o, align 4, !dbg !1649
  %mul112 = mul nsw i32 %97, %98, !dbg !1650
  call void @decode(ptr noundef %add.ptr110, ptr noundef %arraydecay111, i32 noundef %mul112), !dbg !1651
  %99 = load ptr, ptr %p.addr, align 8, !dbg !1652
  %arraydecay113 = getelementptr inbounds [29520 x i8], ptr %A, i64 0, i64 0, !dbg !1654
  %arraydecay114 = getelementptr inbounds [142 x i8], ptr %y, i64 0, i64 0, !dbg !1655
  %arraydecay115 = getelementptr inbounds [205 x i8], ptr %r, i64 0, i64 0, !dbg !1656
  %arraydecay116 = getelementptr inbounds [1848 x i8], ptr %x, i64 0, i64 0, !dbg !1657
  %100 = load i32, ptr %param_k, align 4, !dbg !1658
  %101 = load i32, ptr %param_o, align 4, !dbg !1659
  %102 = load i32, ptr %param_m, align 4, !dbg !1660
  %103 = load i32, ptr %param_A_cols, align 4, !dbg !1661
  %call117 = call i32 @sample_solution(ptr noundef %99, ptr noundef %arraydecay113, ptr noundef %arraydecay114, ptr noundef %arraydecay115, ptr noundef %arraydecay116, i32 noundef %100, i32 noundef %101, i32 noundef %102, i32 noundef %103), !dbg !1662
  %tobool = icmp ne i32 %call117, 0, !dbg !1662
  br i1 %tobool, label %if.then118, label %if.else, !dbg !1662

if.then118:                                       ; preds = %for.end106
  br label %for.end124, !dbg !1663

if.else:                                          ; preds = %for.end106
  %arraydecay119 = getelementptr inbounds [1836 x i64], ptr %Mtmp, i64 0, i64 0, !dbg !1665
  call void @llvm.memset.p0.i64(ptr align 16 %arraydecay119, i8 0, i64 14688, i1 false), !dbg !1665
  %arraydecay120 = getelementptr inbounds [29520 x i8], ptr %A, i64 0, i64 0, !dbg !1667
  call void @llvm.memset.p0.i64(ptr align 16 %arraydecay120, i8 0, i64 29520, i1 false), !dbg !1667
  br label %if.end121

if.end121:                                        ; preds = %if.else
  br label %for.inc122, !dbg !1668

for.inc122:                                       ; preds = %if.end121
  %104 = load i32, ptr %ctr, align 4, !dbg !1669
  %inc123 = add nsw i32 %104, 1, !dbg !1669
  store i32 %inc123, ptr %ctr, align 4, !dbg !1669
  br label %for.cond, !dbg !1670, !llvm.loop !1671

for.end124:                                       ; preds = %if.then118, %for.cond
    #dbg_declare(ptr %i125, !1673, !DIExpression(), !1675)
  store i32 0, ptr %i125, align 4, !dbg !1675
  br label %for.cond126, !dbg !1676

for.cond126:                                      ; preds = %for.inc161, %for.end124
  %105 = load i32, ptr %i125, align 4, !dbg !1677
  %106 = load i32, ptr %param_k, align 4, !dbg !1679
  %sub127 = sub nsw i32 %106, 1, !dbg !1680
  %cmp128 = icmp sle i32 %105, %sub127, !dbg !1681
  br i1 %cmp128, label %for.body130, label %for.end163, !dbg !1682

for.body130:                                      ; preds = %for.cond126
  %arraydecay131 = getelementptr inbounds [1704 x i8], ptr %Vdec, i64 0, i64 0, !dbg !1683
  %107 = load i32, ptr %i125, align 4, !dbg !1685
  %108 = load i32, ptr %param_n, align 4, !dbg !1686
  %109 = load i32, ptr %param_o, align 4, !dbg !1687
  %sub132 = sub nsw i32 %108, %109, !dbg !1688
  %mul133 = mul nsw i32 %107, %sub132, !dbg !1689
  %idx.ext134 = sext i32 %mul133 to i64, !dbg !1690
  %add.ptr135 = getelementptr inbounds i8, ptr %arraydecay131, i64 %idx.ext134, !dbg !1690
  store ptr %add.ptr135, ptr %vi, align 8, !dbg !1691
  %O = getelementptr inbounds nuw %struct.sk_t, ptr %sk, i32 0, i32 1, !dbg !1692
  %arraydecay136 = getelementptr inbounds [2414 x i8], ptr %O, i64 0, i64 0, !dbg !1693
  %arraydecay137 = getelementptr inbounds [1848 x i8], ptr %x, i64 0, i64 0, !dbg !1694
  %110 = load i32, ptr %i125, align 4, !dbg !1695
  %111 = load i32, ptr %param_o, align 4, !dbg !1696
  %mul138 = mul nsw i32 %110, %111, !dbg !1697
  %idx.ext139 = sext i32 %mul138 to i64, !dbg !1698
  %add.ptr140 = getelementptr inbounds i8, ptr %arraydecay137, i64 %idx.ext139, !dbg !1698
  %arraydecay141 = getelementptr inbounds [142 x i8], ptr %Ox, i64 0, i64 0, !dbg !1699
  %112 = load i32, ptr %param_o, align 4, !dbg !1700
  %113 = load i32, ptr %param_n, align 4, !dbg !1701
  %114 = load i32, ptr %param_o, align 4, !dbg !1702
  %sub142 = sub nsw i32 %113, %114, !dbg !1703
  call void @mat_mul(ptr noundef %arraydecay136, ptr noundef %add.ptr140, ptr noundef %arraydecay141, i32 noundef %112, i32 noundef %sub142, i32 noundef 1), !dbg !1704
  %115 = load ptr, ptr %vi, align 8, !dbg !1705
  %arraydecay143 = getelementptr inbounds [142 x i8], ptr %Ox, i64 0, i64 0, !dbg !1706
  %arraydecay144 = getelementptr inbounds [1848 x i8], ptr %s, i64 0, i64 0, !dbg !1707
  %116 = load i32, ptr %i125, align 4, !dbg !1708
  %117 = load i32, ptr %param_n, align 4, !dbg !1709
  %mul145 = mul nsw i32 %116, %117, !dbg !1710
  %idx.ext146 = sext i32 %mul145 to i64, !dbg !1711
  %add.ptr147 = getelementptr inbounds i8, ptr %arraydecay144, i64 %idx.ext146, !dbg !1711
  %118 = load i32, ptr %param_n, align 4, !dbg !1712
  %119 = load i32, ptr %param_o, align 4, !dbg !1713
  %sub148 = sub nsw i32 %118, %119, !dbg !1714
  call void @mat_add(ptr noundef %115, ptr noundef %arraydecay143, ptr noundef %add.ptr147, i32 noundef %sub148, i32 noundef 1), !dbg !1715
  %arraydecay149 = getelementptr inbounds [1848 x i8], ptr %s, i64 0, i64 0, !dbg !1716
  %120 = load i32, ptr %i125, align 4, !dbg !1717
  %121 = load i32, ptr %param_n, align 4, !dbg !1718
  %mul150 = mul nsw i32 %120, %121, !dbg !1719
  %idx.ext151 = sext i32 %mul150 to i64, !dbg !1716
  %add.ptr152 = getelementptr inbounds i8, ptr %arraydecay149, i64 %idx.ext151, !dbg !1716
  %122 = load i32, ptr %param_n, align 4, !dbg !1720
  %123 = load i32, ptr %param_o, align 4, !dbg !1721
  %sub153 = sub nsw i32 %122, %123, !dbg !1722
  %idx.ext154 = sext i32 %sub153 to i64, !dbg !1716
  %add.ptr155 = getelementptr inbounds i8, ptr %add.ptr152, i64 %idx.ext154, !dbg !1716
  %arraydecay156 = getelementptr inbounds [1848 x i8], ptr %x, i64 0, i64 0, !dbg !1716
  %124 = load i32, ptr %i125, align 4, !dbg !1723
  %125 = load i32, ptr %param_o, align 4, !dbg !1724
  %mul157 = mul nsw i32 %124, %125, !dbg !1725
  %idx.ext158 = sext i32 %mul157 to i64, !dbg !1716
  %add.ptr159 = getelementptr inbounds i8, ptr %arraydecay156, i64 %idx.ext158, !dbg !1716
  %126 = load i32, ptr %param_o, align 4, !dbg !1726
  %conv160 = sext i32 %126 to i64, !dbg !1726
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr155, ptr align 1 %add.ptr159, i64 %conv160, i1 false), !dbg !1716
  br label %for.inc161, !dbg !1727

for.inc161:                                       ; preds = %for.body130
  %127 = load i32, ptr %i125, align 4, !dbg !1728
  %inc162 = add nsw i32 %127, 1, !dbg !1728
  store i32 %inc162, ptr %i125, align 4, !dbg !1728
  br label %for.cond126, !dbg !1729, !llvm.loop !1730

for.end163:                                       ; preds = %for.cond126
  %arraydecay164 = getelementptr inbounds [1848 x i8], ptr %s, i64 0, i64 0, !dbg !1732
  %128 = load ptr, ptr %sig.addr, align 8, !dbg !1733
  %129 = load i32, ptr %param_n, align 4, !dbg !1734
  %130 = load i32, ptr %param_k, align 4, !dbg !1735
  %mul165 = mul nsw i32 %129, %130, !dbg !1736
  call void @encode(ptr noundef %arraydecay164, ptr noundef %128, i32 noundef %mul165), !dbg !1737
  %131 = load ptr, ptr %sig.addr, align 8, !dbg !1738
  %132 = load i32, ptr %param_sig_bytes, align 4, !dbg !1739
  %idx.ext166 = sext i32 %132 to i64, !dbg !1740
  %add.ptr167 = getelementptr inbounds i8, ptr %131, i64 %idx.ext166, !dbg !1740
  %133 = load i32, ptr %param_salt_bytes, align 4, !dbg !1741
  %idx.ext168 = sext i32 %133 to i64, !dbg !1740
  %idx.neg = sub i64 0, %idx.ext168, !dbg !1740
  %add.ptr169 = getelementptr inbounds i8, ptr %add.ptr167, i64 %idx.neg, !dbg !1740
  %arraydecay170 = getelementptr inbounds [40 x i8], ptr %salt, i64 0, i64 0, !dbg !1740
  %134 = load i32, ptr %param_salt_bytes, align 4, !dbg !1742
  %conv171 = sext i32 %134 to i64, !dbg !1742
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr169, ptr align 16 %arraydecay170, i64 %conv171, i1 false), !dbg !1740
  %135 = load i32, ptr %param_sig_bytes, align 4, !dbg !1743
  %conv172 = sext i32 %135 to i64, !dbg !1743
  %136 = load ptr, ptr %siglen.addr, align 8, !dbg !1744
  store i64 %conv172, ptr %136, align 8, !dbg !1745
  br label %err, !dbg !1746

err:                                              ; preds = %for.end163, %if.then25, %if.then
    #dbg_label(!1747, !1748)
  %arraydecay173 = getelementptr inbounds [924 x i8], ptr %V, i64 0, i64 0, !dbg !1749
  call void @mayo_secure_clear(ptr noundef %arraydecay173, i64 noundef 924), !dbg !1750
  %arraydecay174 = getelementptr inbounds [1704 x i8], ptr %Vdec, i64 0, i64 0, !dbg !1751
  call void @mayo_secure_clear(ptr noundef %arraydecay174, i64 noundef 1704), !dbg !1752
  %arraydecay175 = getelementptr inbounds [29520 x i8], ptr %A, i64 0, i64 0, !dbg !1753
  call void @mayo_secure_clear(ptr noundef %arraydecay175, i64 noundef 29520), !dbg !1754
  %arraydecay176 = getelementptr inbounds [205 x i8], ptr %r, i64 0, i64 0, !dbg !1755
  call void @mayo_secure_clear(ptr noundef %arraydecay176, i64 noundef 205), !dbg !1756
  %O177 = getelementptr inbounds nuw %struct.sk_t, ptr %sk, i32 0, i32 1, !dbg !1757
  %arraydecay178 = getelementptr inbounds [2414 x i8], ptr %O177, i64 0, i64 0, !dbg !1758
  call void @mayo_secure_clear(ptr noundef %arraydecay178, i64 noundef 2414), !dbg !1759
  call void @mayo_secure_clear(ptr noundef %sk, i64 noundef 907240), !dbg !1760
  %arraydecay179 = getelementptr inbounds [142 x i8], ptr %Ox, i64 0, i64 0, !dbg !1761
  call void @mayo_secure_clear(ptr noundef %arraydecay179, i64 noundef 142), !dbg !1762
  %arraydecay180 = getelementptr inbounds [145 x i8], ptr %tmp, i64 0, i64 0, !dbg !1763
  call void @mayo_secure_clear(ptr noundef %arraydecay180, i64 noundef 145), !dbg !1764
  %arraydecay181 = getelementptr inbounds [1836 x i64], ptr %Mtmp, i64 0, i64 0, !dbg !1765
  call void @mayo_secure_clear(ptr noundef %arraydecay181, i64 noundef 14688), !dbg !1766
  %137 = load i32, ptr %ret, align 4, !dbg !1767
  ret i32 %137, !dbg !1768
}

; Function Attrs: noinline nounwind optnone
define internal void @compute_M_and_VPV(ptr noundef %p, ptr noundef %Vdec, ptr noundef %L, ptr noundef %P1, ptr noundef %VL, ptr noundef %VP1V) #0 !dbg !1769 {
entry:
  %p.addr = alloca ptr, align 8
  %Vdec.addr = alloca ptr, align 8
  %L.addr = alloca ptr, align 8
  %P1.addr = alloca ptr, align 8
  %VL.addr = alloca ptr, align 8
  %VP1V.addr = alloca ptr, align 8
  %param_k = alloca i32, align 4
  %param_v = alloca i32, align 4
  %param_o = alloca i32, align 4
  %Pv = alloca [15336 x i64], align 16
  store ptr %p, ptr %p.addr, align 8
    #dbg_declare(ptr %p.addr, !1772, !DIExpression(), !1773)
  store ptr %Vdec, ptr %Vdec.addr, align 8
    #dbg_declare(ptr %Vdec.addr, !1774, !DIExpression(), !1775)
  store ptr %L, ptr %L.addr, align 8
    #dbg_declare(ptr %L.addr, !1776, !DIExpression(), !1777)
  store ptr %P1, ptr %P1.addr, align 8
    #dbg_declare(ptr %P1.addr, !1778, !DIExpression(), !1779)
  store ptr %VL, ptr %VL.addr, align 8
    #dbg_declare(ptr %VL.addr, !1780, !DIExpression(), !1781)
  store ptr %VP1V, ptr %VP1V.addr, align 8
    #dbg_declare(ptr %VP1V.addr, !1782, !DIExpression(), !1783)
    #dbg_declare(ptr %param_k, !1784, !DIExpression(), !1785)
  %0 = load ptr, ptr %p.addr, align 8, !dbg !1786
  %k = getelementptr inbounds nuw %struct.mayo_params_t, ptr %0, i32 0, i32 3, !dbg !1787
  %1 = load i32, ptr %k, align 4, !dbg !1787
  store i32 %1, ptr %param_k, align 4, !dbg !1785
    #dbg_declare(ptr %param_v, !1788, !DIExpression(), !1789)
  %2 = load ptr, ptr %p.addr, align 8, !dbg !1790
  %n = getelementptr inbounds nuw %struct.mayo_params_t, ptr %2, i32 0, i32 1, !dbg !1791
  %3 = load i32, ptr %n, align 4, !dbg !1791
  %4 = load ptr, ptr %p.addr, align 8, !dbg !1790
  %o = getelementptr inbounds nuw %struct.mayo_params_t, ptr %4, i32 0, i32 2, !dbg !1791
  %5 = load i32, ptr %o, align 8, !dbg !1791
  %sub = sub nsw i32 %3, %5, !dbg !1791
  store i32 %sub, ptr %param_v, align 4, !dbg !1789
    #dbg_declare(ptr %param_o, !1792, !DIExpression(), !1793)
  %6 = load ptr, ptr %p.addr, align 8, !dbg !1794
  %o1 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %6, i32 0, i32 2, !dbg !1795
  %7 = load i32, ptr %o1, align 8, !dbg !1795
  store i32 %7, ptr %param_o, align 4, !dbg !1793
  %8 = load ptr, ptr %p.addr, align 8, !dbg !1796
  %m_vec_limbs = getelementptr inbounds nuw %struct.mayo_params_t, ptr %8, i32 0, i32 21, !dbg !1797
  %9 = load i32, ptr %m_vec_limbs, align 4, !dbg !1797
  %10 = load ptr, ptr %Vdec.addr, align 8, !dbg !1798
  %11 = load ptr, ptr %L.addr, align 8, !dbg !1799
  %12 = load ptr, ptr %VL.addr, align 8, !dbg !1800
  %13 = load i32, ptr %param_k, align 4, !dbg !1801
  %14 = load i32, ptr %param_v, align 4, !dbg !1802
  %15 = load i32, ptr %param_o, align 4, !dbg !1803
  call void @mul_add_mat_x_m_mat(i32 noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, i32 noundef %13, i32 noundef %14, i32 noundef %15), !dbg !1804
    #dbg_declare(ptr %Pv, !1805, !DIExpression(), !1809)
  call void @llvm.memset.p0.i64(ptr align 16 %Pv, i8 0, i64 122688, i1 false), !dbg !1809
  %16 = load ptr, ptr %p.addr, align 8, !dbg !1810
  %17 = load ptr, ptr %P1.addr, align 8, !dbg !1811
  %18 = load ptr, ptr %Vdec.addr, align 8, !dbg !1812
  %arraydecay = getelementptr inbounds [15336 x i64], ptr %Pv, i64 0, i64 0, !dbg !1813
  call void @P1_times_Vt(ptr noundef %16, ptr noundef %17, ptr noundef %18, ptr noundef %arraydecay), !dbg !1814
  %19 = load ptr, ptr %p.addr, align 8, !dbg !1815
  %m_vec_limbs2 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %19, i32 0, i32 21, !dbg !1816
  %20 = load i32, ptr %m_vec_limbs2, align 4, !dbg !1816
  %21 = load ptr, ptr %Vdec.addr, align 8, !dbg !1817
  %arraydecay3 = getelementptr inbounds [15336 x i64], ptr %Pv, i64 0, i64 0, !dbg !1818
  %22 = load ptr, ptr %VP1V.addr, align 8, !dbg !1819
  %23 = load i32, ptr %param_k, align 4, !dbg !1820
  %24 = load i32, ptr %param_v, align 4, !dbg !1821
  %25 = load i32, ptr %param_k, align 4, !dbg !1822
  call void @mul_add_mat_x_m_mat(i32 noundef %20, ptr noundef %21, ptr noundef %arraydecay3, ptr noundef %22, i32 noundef %23, i32 noundef %24, i32 noundef %25), !dbg !1823
  ret void, !dbg !1824
}

; Function Attrs: noinline nounwind optnone
define internal void @compute_rhs(ptr noundef %p, ptr noundef %vPv, ptr noundef %t, ptr noundef %y) #0 !dbg !1825 {
entry:
  %p.addr = alloca ptr, align 8
  %vPv.addr = alloca ptr, align 8
  %t.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %top_pos = alloca i64, align 8
  %m_vec_limbs = alloca i64, align 8
  %mask = alloca i64, align 8
  %i = alloca i32, align 4
  %temp = alloca [9 x i64], align 16
  %temp_bytes = alloca ptr, align 8
  %i17 = alloca i32, align 4
  %j = alloca i32, align 4
  %top = alloca i8, align 1
  %k36 = alloca i32, align 4
  %jj = alloca i32, align 4
  %k85 = alloca i64, align 8
  %i120 = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
    #dbg_declare(ptr %p.addr, !1828, !DIExpression(), !1829)
  store ptr %vPv, ptr %vPv.addr, align 8
    #dbg_declare(ptr %vPv.addr, !1830, !DIExpression(), !1831)
  store ptr %t, ptr %t.addr, align 8
    #dbg_declare(ptr %t.addr, !1832, !DIExpression(), !1833)
  store ptr %y, ptr %y.addr, align 8
    #dbg_declare(ptr %y.addr, !1834, !DIExpression(), !1835)
    #dbg_declare(ptr %top_pos, !1836, !DIExpression(), !1838)
  %0 = load ptr, ptr %p.addr, align 8, !dbg !1839
  %m = getelementptr inbounds nuw %struct.mayo_params_t, ptr %0, i32 0, i32 0, !dbg !1840
  %1 = load i32, ptr %m, align 8, !dbg !1840
  %sub = sub nsw i32 %1, 1, !dbg !1841
  %rem = srem i32 %sub, 16, !dbg !1842
  %mul = mul nsw i32 %rem, 4, !dbg !1843
  %conv = sext i32 %mul to i64, !dbg !1844
  store i64 %conv, ptr %top_pos, align 8, !dbg !1838
    #dbg_declare(ptr %m_vec_limbs, !1845, !DIExpression(), !1846)
  %2 = load ptr, ptr %p.addr, align 8, !dbg !1847
  %m_vec_limbs1 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %2, i32 0, i32 21, !dbg !1848
  %3 = load i32, ptr %m_vec_limbs1, align 4, !dbg !1848
  %conv2 = sext i32 %3 to i64, !dbg !1848
  store i64 %conv2, ptr %m_vec_limbs, align 8, !dbg !1846
  %4 = load ptr, ptr %p.addr, align 8, !dbg !1849
  %m3 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %4, i32 0, i32 0, !dbg !1851
  %5 = load i32, ptr %m3, align 8, !dbg !1851
  %rem4 = srem i32 %5, 16, !dbg !1852
  %cmp = icmp ne i32 %rem4, 0, !dbg !1853
  br i1 %cmp, label %if.then, label %if.end, !dbg !1853

if.then:                                          ; preds = %entry
    #dbg_declare(ptr %mask, !1854, !DIExpression(), !1856)
  store i64 1, ptr %mask, align 8, !dbg !1856
  %6 = load ptr, ptr %p.addr, align 8, !dbg !1857
  %m6 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %6, i32 0, i32 0, !dbg !1858
  %7 = load i32, ptr %m6, align 8, !dbg !1858
  %rem7 = srem i32 %7, 16, !dbg !1859
  %mul8 = mul nsw i32 %rem7, 4, !dbg !1860
  %8 = load i64, ptr %mask, align 8, !dbg !1861
  %sh_prom = zext i32 %mul8 to i64, !dbg !1861
  %shl = shl i64 %8, %sh_prom, !dbg !1861
  store i64 %shl, ptr %mask, align 8, !dbg !1861
  %9 = load i64, ptr %mask, align 8, !dbg !1862
  %sub9 = sub i64 %9, 1, !dbg !1862
  store i64 %sub9, ptr %mask, align 8, !dbg !1862
    #dbg_declare(ptr %i, !1863, !DIExpression(), !1865)
  store i32 0, ptr %i, align 4, !dbg !1865
  br label %for.cond, !dbg !1866

for.cond:                                         ; preds = %for.inc, %if.then
  %10 = load i32, ptr %i, align 4, !dbg !1867
  %11 = load ptr, ptr %p.addr, align 8, !dbg !1869
  %k = getelementptr inbounds nuw %struct.mayo_params_t, ptr %11, i32 0, i32 3, !dbg !1870
  %12 = load i32, ptr %k, align 4, !dbg !1870
  %13 = load ptr, ptr %p.addr, align 8, !dbg !1871
  %k10 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %13, i32 0, i32 3, !dbg !1872
  %14 = load i32, ptr %k10, align 4, !dbg !1872
  %mul11 = mul nsw i32 %12, %14, !dbg !1873
  %cmp12 = icmp slt i32 %10, %mul11, !dbg !1874
  br i1 %cmp12, label %for.body, label %for.end, !dbg !1875

for.body:                                         ; preds = %for.cond
  %15 = load i64, ptr %mask, align 8, !dbg !1876
  %16 = load ptr, ptr %vPv.addr, align 8, !dbg !1878
  %17 = load i32, ptr %i, align 4, !dbg !1879
  %conv14 = sext i32 %17 to i64, !dbg !1879
  %18 = load i64, ptr %m_vec_limbs, align 8, !dbg !1880
  %mul15 = mul i64 %conv14, %18, !dbg !1881
  %19 = load i64, ptr %m_vec_limbs, align 8, !dbg !1882
  %add = add i64 %mul15, %19, !dbg !1883
  %sub16 = sub i64 %add, 1, !dbg !1884
  %arrayidx = getelementptr inbounds nuw i64, ptr %16, i64 %sub16, !dbg !1878
  %20 = load i64, ptr %arrayidx, align 8, !dbg !1885
  %and = and i64 %20, %15, !dbg !1885
  store i64 %and, ptr %arrayidx, align 8, !dbg !1885
  br label %for.inc, !dbg !1886

for.inc:                                          ; preds = %for.body
  %21 = load i32, ptr %i, align 4, !dbg !1887
  %inc = add nsw i32 %21, 1, !dbg !1887
  store i32 %inc, ptr %i, align 4, !dbg !1887
  br label %for.cond, !dbg !1888, !llvm.loop !1889

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !1891

if.end:                                           ; preds = %for.end, %entry
    #dbg_declare(ptr %temp, !1892, !DIExpression(), !1893)
  call void @llvm.memset.p0.i64(ptr align 16 %temp, i8 0, i64 72, i1 false), !dbg !1893
    #dbg_declare(ptr %temp_bytes, !1894, !DIExpression(), !1895)
  %arraydecay = getelementptr inbounds [9 x i64], ptr %temp, i64 0, i64 0, !dbg !1896
  store ptr %arraydecay, ptr %temp_bytes, align 8, !dbg !1895
    #dbg_declare(ptr %i17, !1897, !DIExpression(), !1899)
  %22 = load ptr, ptr %p.addr, align 8, !dbg !1900
  %k18 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %22, i32 0, i32 3, !dbg !1901
  %23 = load i32, ptr %k18, align 4, !dbg !1901
  %sub19 = sub nsw i32 %23, 1, !dbg !1902
  store i32 %sub19, ptr %i17, align 4, !dbg !1899
  br label %for.cond20, !dbg !1903

for.cond20:                                       ; preds = %for.inc117, %if.end
  %24 = load i32, ptr %i17, align 4, !dbg !1904
  %cmp21 = icmp sge i32 %24, 0, !dbg !1906
  br i1 %cmp21, label %for.body23, label %for.end119, !dbg !1907

for.body23:                                       ; preds = %for.cond20
    #dbg_declare(ptr %j, !1908, !DIExpression(), !1911)
  %25 = load i32, ptr %i17, align 4, !dbg !1912
  store i32 %25, ptr %j, align 4, !dbg !1911
  br label %for.cond24, !dbg !1913

for.cond24:                                       ; preds = %for.inc114, %for.body23
  %26 = load i32, ptr %j, align 4, !dbg !1914
  %27 = load ptr, ptr %p.addr, align 8, !dbg !1916
  %k25 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %27, i32 0, i32 3, !dbg !1917
  %28 = load i32, ptr %k25, align 4, !dbg !1917
  %cmp26 = icmp slt i32 %26, %28, !dbg !1918
  br i1 %cmp26, label %for.body28, label %for.end116, !dbg !1919

for.body28:                                       ; preds = %for.cond24
    #dbg_declare(ptr %top, !1920, !DIExpression(), !1922)
  %29 = load i64, ptr %m_vec_limbs, align 8, !dbg !1923
  %sub29 = sub i64 %29, 1, !dbg !1924
  %arrayidx30 = getelementptr inbounds nuw [9 x i64], ptr %temp, i64 0, i64 %sub29, !dbg !1925
  %30 = load i64, ptr %arrayidx30, align 8, !dbg !1925
  %31 = load i64, ptr %top_pos, align 8, !dbg !1926
  %shr = lshr i64 %30, %31, !dbg !1927
  %rem31 = urem i64 %shr, 16, !dbg !1928
  %conv32 = trunc i64 %rem31 to i8, !dbg !1929
  store i8 %conv32, ptr %top, align 1, !dbg !1922
  %32 = load i64, ptr %m_vec_limbs, align 8, !dbg !1930
  %sub33 = sub i64 %32, 1, !dbg !1931
  %arrayidx34 = getelementptr inbounds nuw [9 x i64], ptr %temp, i64 0, i64 %sub33, !dbg !1932
  %33 = load i64, ptr %arrayidx34, align 8, !dbg !1933
  %shl35 = shl i64 %33, 4, !dbg !1933
  store i64 %shl35, ptr %arrayidx34, align 8, !dbg !1933
    #dbg_declare(ptr %k36, !1934, !DIExpression(), !1936)
  %34 = load i64, ptr %m_vec_limbs, align 8, !dbg !1937
  %sub37 = sub i64 %34, 2, !dbg !1938
  %conv38 = trunc i64 %sub37 to i32, !dbg !1937
  store i32 %conv38, ptr %k36, align 4, !dbg !1936
  br label %for.cond39, !dbg !1939

for.cond39:                                       ; preds = %for.inc51, %for.body28
  %35 = load i32, ptr %k36, align 4, !dbg !1940
  %cmp40 = icmp sge i32 %35, 0, !dbg !1942
  br i1 %cmp40, label %for.body42, label %for.end52, !dbg !1943

for.body42:                                       ; preds = %for.cond39
  %36 = load i32, ptr %k36, align 4, !dbg !1944
  %idxprom = sext i32 %36 to i64, !dbg !1946
  %arrayidx43 = getelementptr inbounds [9 x i64], ptr %temp, i64 0, i64 %idxprom, !dbg !1946
  %37 = load i64, ptr %arrayidx43, align 8, !dbg !1946
  %shr44 = lshr i64 %37, 60, !dbg !1947
  %38 = load i32, ptr %k36, align 4, !dbg !1948
  %add45 = add nsw i32 %38, 1, !dbg !1949
  %idxprom46 = sext i32 %add45 to i64, !dbg !1950
  %arrayidx47 = getelementptr inbounds [9 x i64], ptr %temp, i64 0, i64 %idxprom46, !dbg !1950
  %39 = load i64, ptr %arrayidx47, align 8, !dbg !1951
  %xor = xor i64 %39, %shr44, !dbg !1951
  store i64 %xor, ptr %arrayidx47, align 8, !dbg !1951
  %40 = load i32, ptr %k36, align 4, !dbg !1952
  %idxprom48 = sext i32 %40 to i64, !dbg !1953
  %arrayidx49 = getelementptr inbounds [9 x i64], ptr %temp, i64 0, i64 %idxprom48, !dbg !1953
  %41 = load i64, ptr %arrayidx49, align 8, !dbg !1954
  %shl50 = shl i64 %41, 4, !dbg !1954
  store i64 %shl50, ptr %arrayidx49, align 8, !dbg !1954
  br label %for.inc51, !dbg !1955

for.inc51:                                        ; preds = %for.body42
  %42 = load i32, ptr %k36, align 4, !dbg !1956
  %dec = add nsw i32 %42, -1, !dbg !1956
  store i32 %dec, ptr %k36, align 4, !dbg !1956
  br label %for.cond39, !dbg !1957, !llvm.loop !1958

for.end52:                                        ; preds = %for.cond39
    #dbg_declare(ptr %jj, !1960, !DIExpression(), !1962)
  store i32 0, ptr %jj, align 4, !dbg !1962
  br label %for.cond53, !dbg !1963

for.cond53:                                       ; preds = %for.inc82, %for.end52
  %43 = load i32, ptr %jj, align 4, !dbg !1964
  %cmp54 = icmp slt i32 %43, 4, !dbg !1966
  br i1 %cmp54, label %for.body56, label %for.end84, !dbg !1967

for.body56:                                       ; preds = %for.cond53
  %44 = load i32, ptr %jj, align 4, !dbg !1968
  %rem57 = srem i32 %44, 2, !dbg !1971
  %cmp58 = icmp eq i32 %rem57, 0, !dbg !1972
  br i1 %cmp58, label %if.then60, label %if.else, !dbg !1972

if.then60:                                        ; preds = %for.body56
  %45 = load i8, ptr %top, align 1, !dbg !1973
  %46 = load ptr, ptr %p.addr, align 8, !dbg !1975
  %f_tail = getelementptr inbounds nuw %struct.mayo_params_t, ptr %46, i32 0, i32 5, !dbg !1976
  %47 = load ptr, ptr %f_tail, align 8, !dbg !1976
  %48 = load i32, ptr %jj, align 4, !dbg !1977
  %idxprom61 = sext i32 %48 to i64, !dbg !1976
  %arrayidx62 = getelementptr inbounds i8, ptr %47, i64 %idxprom61, !dbg !1976
  %49 = load i8, ptr %arrayidx62, align 1, !dbg !1976
  %call = call zeroext i8 @mul_f(i8 noundef zeroext %45, i8 noundef zeroext %49), !dbg !1978
  %conv63 = zext i8 %call to i32, !dbg !1978
  %50 = load ptr, ptr %temp_bytes, align 8, !dbg !1979
  %51 = load i32, ptr %jj, align 4, !dbg !1980
  %div = sdiv i32 %51, 2, !dbg !1981
  %idxprom64 = sext i32 %div to i64, !dbg !1979
  %arrayidx65 = getelementptr inbounds i8, ptr %50, i64 %idxprom64, !dbg !1979
  %52 = load i8, ptr %arrayidx65, align 1, !dbg !1982
  %conv66 = zext i8 %52 to i32, !dbg !1982
  %xor67 = xor i32 %conv66, %conv63, !dbg !1982
  %conv68 = trunc i32 %xor67 to i8, !dbg !1982
  store i8 %conv68, ptr %arrayidx65, align 1, !dbg !1982
  br label %if.end81, !dbg !1983

if.else:                                          ; preds = %for.body56
  %53 = load i8, ptr %top, align 1, !dbg !1984
  %54 = load ptr, ptr %p.addr, align 8, !dbg !1986
  %f_tail69 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %54, i32 0, i32 5, !dbg !1987
  %55 = load ptr, ptr %f_tail69, align 8, !dbg !1987
  %56 = load i32, ptr %jj, align 4, !dbg !1988
  %idxprom70 = sext i32 %56 to i64, !dbg !1987
  %arrayidx71 = getelementptr inbounds i8, ptr %55, i64 %idxprom70, !dbg !1987
  %57 = load i8, ptr %arrayidx71, align 1, !dbg !1987
  %call72 = call zeroext i8 @mul_f(i8 noundef zeroext %53, i8 noundef zeroext %57), !dbg !1989
  %conv73 = zext i8 %call72 to i32, !dbg !1989
  %shl74 = shl i32 %conv73, 4, !dbg !1990
  %58 = load ptr, ptr %temp_bytes, align 8, !dbg !1991
  %59 = load i32, ptr %jj, align 4, !dbg !1992
  %div75 = sdiv i32 %59, 2, !dbg !1993
  %idxprom76 = sext i32 %div75 to i64, !dbg !1991
  %arrayidx77 = getelementptr inbounds i8, ptr %58, i64 %idxprom76, !dbg !1991
  %60 = load i8, ptr %arrayidx77, align 1, !dbg !1994
  %conv78 = zext i8 %60 to i32, !dbg !1994
  %xor79 = xor i32 %conv78, %shl74, !dbg !1994
  %conv80 = trunc i32 %xor79 to i8, !dbg !1994
  store i8 %conv80, ptr %arrayidx77, align 1, !dbg !1994
  br label %if.end81

if.end81:                                         ; preds = %if.else, %if.then60
  br label %for.inc82, !dbg !1995

for.inc82:                                        ; preds = %if.end81
  %61 = load i32, ptr %jj, align 4, !dbg !1996
  %inc83 = add nsw i32 %61, 1, !dbg !1996
  store i32 %inc83, ptr %jj, align 4, !dbg !1996
  br label %for.cond53, !dbg !1997, !llvm.loop !1998

for.end84:                                        ; preds = %for.cond53
    #dbg_declare(ptr %k85, !2000, !DIExpression(), !2002)
  store i64 0, ptr %k85, align 8, !dbg !2002
  br label %for.cond86, !dbg !2003

for.cond86:                                       ; preds = %for.inc111, %for.end84
  %62 = load i64, ptr %k85, align 8, !dbg !2004
  %63 = load i64, ptr %m_vec_limbs, align 8, !dbg !2006
  %cmp87 = icmp ult i64 %62, %63, !dbg !2007
  br i1 %cmp87, label %for.body89, label %for.end113, !dbg !2008

for.body89:                                       ; preds = %for.cond86
  %64 = load ptr, ptr %vPv.addr, align 8, !dbg !2009
  %65 = load i32, ptr %i17, align 4, !dbg !2011
  %66 = load ptr, ptr %p.addr, align 8, !dbg !2012
  %k90 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %66, i32 0, i32 3, !dbg !2013
  %67 = load i32, ptr %k90, align 4, !dbg !2013
  %mul91 = mul nsw i32 %65, %67, !dbg !2014
  %68 = load i32, ptr %j, align 4, !dbg !2015
  %add92 = add nsw i32 %mul91, %68, !dbg !2016
  %conv93 = sext i32 %add92 to i64, !dbg !2017
  %69 = load i64, ptr %m_vec_limbs, align 8, !dbg !2018
  %mul94 = mul i64 %conv93, %69, !dbg !2019
  %70 = load i64, ptr %k85, align 8, !dbg !2020
  %add95 = add i64 %mul94, %70, !dbg !2021
  %arrayidx96 = getelementptr inbounds nuw i64, ptr %64, i64 %add95, !dbg !2009
  %71 = load i64, ptr %arrayidx96, align 8, !dbg !2009
  %72 = load i32, ptr %i17, align 4, !dbg !2022
  %73 = load i32, ptr %j, align 4, !dbg !2023
  %cmp97 = icmp ne i32 %72, %73, !dbg !2024
  %conv98 = zext i1 %cmp97 to i32, !dbg !2024
  %conv99 = sext i32 %conv98 to i64, !dbg !2025
  %74 = load ptr, ptr %vPv.addr, align 8, !dbg !2026
  %75 = load i32, ptr %j, align 4, !dbg !2027
  %76 = load ptr, ptr %p.addr, align 8, !dbg !2028
  %k100 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %76, i32 0, i32 3, !dbg !2029
  %77 = load i32, ptr %k100, align 4, !dbg !2029
  %mul101 = mul nsw i32 %75, %77, !dbg !2030
  %78 = load i32, ptr %i17, align 4, !dbg !2031
  %add102 = add nsw i32 %mul101, %78, !dbg !2032
  %conv103 = sext i32 %add102 to i64, !dbg !2033
  %79 = load i64, ptr %m_vec_limbs, align 8, !dbg !2034
  %mul104 = mul i64 %conv103, %79, !dbg !2035
  %80 = load i64, ptr %k85, align 8, !dbg !2036
  %add105 = add i64 %mul104, %80, !dbg !2037
  %arrayidx106 = getelementptr inbounds nuw i64, ptr %74, i64 %add105, !dbg !2026
  %81 = load i64, ptr %arrayidx106, align 8, !dbg !2026
  %mul107 = mul i64 %conv99, %81, !dbg !2038
  %xor108 = xor i64 %71, %mul107, !dbg !2039
  %82 = load i64, ptr %k85, align 8, !dbg !2040
  %arrayidx109 = getelementptr inbounds nuw [9 x i64], ptr %temp, i64 0, i64 %82, !dbg !2041
  %83 = load i64, ptr %arrayidx109, align 8, !dbg !2042
  %xor110 = xor i64 %83, %xor108, !dbg !2042
  store i64 %xor110, ptr %arrayidx109, align 8, !dbg !2042
  br label %for.inc111, !dbg !2043

for.inc111:                                       ; preds = %for.body89
  %84 = load i64, ptr %k85, align 8, !dbg !2044
  %inc112 = add i64 %84, 1, !dbg !2044
  store i64 %inc112, ptr %k85, align 8, !dbg !2044
  br label %for.cond86, !dbg !2045, !llvm.loop !2046

for.end113:                                       ; preds = %for.cond86
  br label %for.inc114, !dbg !2048

for.inc114:                                       ; preds = %for.end113
  %85 = load i32, ptr %j, align 4, !dbg !2049
  %inc115 = add nsw i32 %85, 1, !dbg !2049
  store i32 %inc115, ptr %j, align 4, !dbg !2049
  br label %for.cond24, !dbg !2050, !llvm.loop !2051

for.end116:                                       ; preds = %for.cond24
  br label %for.inc117, !dbg !2053

for.inc117:                                       ; preds = %for.end116
  %86 = load i32, ptr %i17, align 4, !dbg !2054
  %dec118 = add nsw i32 %86, -1, !dbg !2054
  store i32 %dec118, ptr %i17, align 4, !dbg !2054
  br label %for.cond20, !dbg !2055, !llvm.loop !2056

for.end119:                                       ; preds = %for.cond20
    #dbg_declare(ptr %i120, !2058, !DIExpression(), !2060)
  store i32 0, ptr %i120, align 4, !dbg !2060
  br label %for.cond121, !dbg !2061

for.cond121:                                      ; preds = %for.inc152, %for.end119
  %87 = load i32, ptr %i120, align 4, !dbg !2062
  %88 = load ptr, ptr %p.addr, align 8, !dbg !2064
  %m122 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %88, i32 0, i32 0, !dbg !2065
  %89 = load i32, ptr %m122, align 8, !dbg !2065
  %cmp123 = icmp slt i32 %87, %89, !dbg !2066
  br i1 %cmp123, label %for.body125, label %for.end154, !dbg !2067

for.body125:                                      ; preds = %for.cond121
  %90 = load ptr, ptr %t.addr, align 8, !dbg !2068
  %91 = load i32, ptr %i120, align 4, !dbg !2070
  %idxprom126 = sext i32 %91 to i64, !dbg !2068
  %arrayidx127 = getelementptr inbounds i8, ptr %90, i64 %idxprom126, !dbg !2068
  %92 = load i8, ptr %arrayidx127, align 1, !dbg !2068
  %conv128 = zext i8 %92 to i32, !dbg !2068
  %93 = load ptr, ptr %temp_bytes, align 8, !dbg !2071
  %94 = load i32, ptr %i120, align 4, !dbg !2072
  %div129 = sdiv i32 %94, 2, !dbg !2073
  %idxprom130 = sext i32 %div129 to i64, !dbg !2071
  %arrayidx131 = getelementptr inbounds i8, ptr %93, i64 %idxprom130, !dbg !2071
  %95 = load i8, ptr %arrayidx131, align 1, !dbg !2071
  %conv132 = zext i8 %95 to i32, !dbg !2071
  %and133 = and i32 %conv132, 15, !dbg !2074
  %xor134 = xor i32 %conv128, %and133, !dbg !2075
  %conv135 = trunc i32 %xor134 to i8, !dbg !2068
  %96 = load ptr, ptr %y.addr, align 8, !dbg !2076
  %97 = load i32, ptr %i120, align 4, !dbg !2077
  %idxprom136 = sext i32 %97 to i64, !dbg !2076
  %arrayidx137 = getelementptr inbounds i8, ptr %96, i64 %idxprom136, !dbg !2076
  store i8 %conv135, ptr %arrayidx137, align 1, !dbg !2078
  %98 = load ptr, ptr %t.addr, align 8, !dbg !2079
  %99 = load i32, ptr %i120, align 4, !dbg !2080
  %add138 = add nsw i32 %99, 1, !dbg !2081
  %idxprom139 = sext i32 %add138 to i64, !dbg !2079
  %arrayidx140 = getelementptr inbounds i8, ptr %98, i64 %idxprom139, !dbg !2079
  %100 = load i8, ptr %arrayidx140, align 1, !dbg !2079
  %conv141 = zext i8 %100 to i32, !dbg !2079
  %101 = load ptr, ptr %temp_bytes, align 8, !dbg !2082
  %102 = load i32, ptr %i120, align 4, !dbg !2083
  %div142 = sdiv i32 %102, 2, !dbg !2084
  %idxprom143 = sext i32 %div142 to i64, !dbg !2082
  %arrayidx144 = getelementptr inbounds i8, ptr %101, i64 %idxprom143, !dbg !2082
  %103 = load i8, ptr %arrayidx144, align 1, !dbg !2082
  %conv145 = zext i8 %103 to i32, !dbg !2082
  %shr146 = ashr i32 %conv145, 4, !dbg !2085
  %xor147 = xor i32 %conv141, %shr146, !dbg !2086
  %conv148 = trunc i32 %xor147 to i8, !dbg !2079
  %104 = load ptr, ptr %y.addr, align 8, !dbg !2087
  %105 = load i32, ptr %i120, align 4, !dbg !2088
  %add149 = add nsw i32 %105, 1, !dbg !2089
  %idxprom150 = sext i32 %add149 to i64, !dbg !2087
  %arrayidx151 = getelementptr inbounds i8, ptr %104, i64 %idxprom150, !dbg !2087
  store i8 %conv148, ptr %arrayidx151, align 1, !dbg !2090
  br label %for.inc152, !dbg !2091

for.inc152:                                       ; preds = %for.body125
  %106 = load i32, ptr %i120, align 4, !dbg !2092
  %add153 = add nsw i32 %106, 2, !dbg !2092
  store i32 %add153, ptr %i120, align 4, !dbg !2092
  br label %for.cond121, !dbg !2093, !llvm.loop !2094

for.end154:                                       ; preds = %for.cond121
  ret void, !dbg !2096
}

; Function Attrs: noinline nounwind optnone
define internal void @compute_A(ptr noundef %p, ptr noundef %VtL, ptr noundef %A_out) #0 !dbg !2097 {
entry:
  %p.addr = alloca ptr, align 8
  %VtL.addr = alloca ptr, align 8
  %A_out.addr = alloca ptr, align 8
  %bits_to_shift = alloca i32, align 4
  %words_to_shift = alloca i32, align 4
  %m_vec_limbs = alloca i32, align 4
  %A = alloca [3744 x i64], align 16
  %A_width = alloca i64, align 8
  %Mi = alloca ptr, align 8
  %Mj = alloca ptr, align 8
  %mask = alloca i64, align 8
  %i = alloca i32, align 4
  %i15 = alloca i32, align 4
  %j = alloca i32, align 4
  %c = alloca i32, align 4
  %k36 = alloca i32, align 4
  %c91 = alloca i32, align 4
  %k97 = alloca i32, align 4
  %c158 = alloca i64, align 8
  %tab = alloca [16 x i8], align 16
  %i178 = alloca i64, align 8
  %low_bit_in_nibble = alloca i64, align 8
  %c207 = alloca i64, align 8
  %r = alloca i32, align 4
  %pos = alloca i64, align 8
  %t0 = alloca i64, align 8
  %t1 = alloca i64, align 8
  %t2 = alloca i64, align 8
  %t3 = alloca i64, align 8
  %t = alloca i64, align 8
  %r295 = alloca i32, align 4
  %c301 = alloca i32, align 4
  %i311 = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
    #dbg_declare(ptr %p.addr, !2100, !DIExpression(), !2101)
  store ptr %VtL, ptr %VtL.addr, align 8
    #dbg_declare(ptr %VtL.addr, !2102, !DIExpression(), !2103)
  store ptr %A_out, ptr %A_out.addr, align 8
    #dbg_declare(ptr %A_out.addr, !2104, !DIExpression(), !2105)
    #dbg_declare(ptr %bits_to_shift, !2106, !DIExpression(), !2107)
  store i32 0, ptr %bits_to_shift, align 4, !dbg !2107
    #dbg_declare(ptr %words_to_shift, !2108, !DIExpression(), !2109)
  store i32 0, ptr %words_to_shift, align 4, !dbg !2109
    #dbg_declare(ptr %m_vec_limbs, !2110, !DIExpression(), !2111)
  %0 = load ptr, ptr %p.addr, align 8, !dbg !2112
  %m_vec_limbs1 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %0, i32 0, i32 21, !dbg !2113
  %1 = load i32, ptr %m_vec_limbs1, align 4, !dbg !2113
  store i32 %1, ptr %m_vec_limbs, align 4, !dbg !2111
    #dbg_declare(ptr %A, !2114, !DIExpression(), !2118)
  call void @llvm.memset.p0.i64(ptr align 16 %A, i8 0, i64 29952, i1 false), !dbg !2118
    #dbg_declare(ptr %A_width, !2119, !DIExpression(), !2120)
  %2 = load ptr, ptr %p.addr, align 8, !dbg !2121
  %o = getelementptr inbounds nuw %struct.mayo_params_t, ptr %2, i32 0, i32 2, !dbg !2122
  %3 = load i32, ptr %o, align 8, !dbg !2122
  %4 = load ptr, ptr %p.addr, align 8, !dbg !2123
  %k = getelementptr inbounds nuw %struct.mayo_params_t, ptr %4, i32 0, i32 3, !dbg !2124
  %5 = load i32, ptr %k, align 4, !dbg !2124
  %mul = mul nsw i32 %3, %5, !dbg !2125
  %add = add nsw i32 %mul, 15, !dbg !2126
  %div = sdiv i32 %add, 16, !dbg !2127
  %mul2 = mul nsw i32 %div, 16, !dbg !2128
  %conv = sext i32 %mul2 to i64, !dbg !2129
  store i64 %conv, ptr %A_width, align 8, !dbg !2120
    #dbg_declare(ptr %Mi, !2130, !DIExpression(), !2131)
    #dbg_declare(ptr %Mj, !2132, !DIExpression(), !2133)
  %6 = load ptr, ptr %p.addr, align 8, !dbg !2134
  %m = getelementptr inbounds nuw %struct.mayo_params_t, ptr %6, i32 0, i32 0, !dbg !2136
  %7 = load i32, ptr %m, align 8, !dbg !2136
  %rem = srem i32 %7, 16, !dbg !2137
  %cmp = icmp ne i32 %rem, 0, !dbg !2138
  br i1 %cmp, label %if.then, label %if.end, !dbg !2138

if.then:                                          ; preds = %entry
    #dbg_declare(ptr %mask, !2139, !DIExpression(), !2141)
  store i64 1, ptr %mask, align 8, !dbg !2141
  %8 = load ptr, ptr %p.addr, align 8, !dbg !2142
  %m4 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %8, i32 0, i32 0, !dbg !2143
  %9 = load i32, ptr %m4, align 8, !dbg !2143
  %rem5 = srem i32 %9, 16, !dbg !2144
  %mul6 = mul nsw i32 %rem5, 4, !dbg !2145
  %10 = load i64, ptr %mask, align 8, !dbg !2146
  %sh_prom = zext i32 %mul6 to i64, !dbg !2146
  %shl = shl i64 %10, %sh_prom, !dbg !2146
  store i64 %shl, ptr %mask, align 8, !dbg !2146
  %11 = load i64, ptr %mask, align 8, !dbg !2147
  %sub = sub i64 %11, 1, !dbg !2147
  store i64 %sub, ptr %mask, align 8, !dbg !2147
    #dbg_declare(ptr %i, !2148, !DIExpression(), !2150)
  store i32 0, ptr %i, align 4, !dbg !2150
  br label %for.cond, !dbg !2151

for.cond:                                         ; preds = %for.inc, %if.then
  %12 = load i32, ptr %i, align 4, !dbg !2152
  %13 = load ptr, ptr %p.addr, align 8, !dbg !2154
  %o7 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %13, i32 0, i32 2, !dbg !2155
  %14 = load i32, ptr %o7, align 8, !dbg !2155
  %15 = load ptr, ptr %p.addr, align 8, !dbg !2156
  %k8 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %15, i32 0, i32 3, !dbg !2157
  %16 = load i32, ptr %k8, align 4, !dbg !2157
  %mul9 = mul nsw i32 %14, %16, !dbg !2158
  %cmp10 = icmp slt i32 %12, %mul9, !dbg !2159
  br i1 %cmp10, label %for.body, label %for.end, !dbg !2160

for.body:                                         ; preds = %for.cond
  %17 = load i64, ptr %mask, align 8, !dbg !2161
  %18 = load ptr, ptr %VtL.addr, align 8, !dbg !2163
  %19 = load i32, ptr %i, align 4, !dbg !2164
  %20 = load i32, ptr %m_vec_limbs, align 4, !dbg !2165
  %mul12 = mul nsw i32 %19, %20, !dbg !2166
  %21 = load i32, ptr %m_vec_limbs, align 4, !dbg !2167
  %add13 = add nsw i32 %mul12, %21, !dbg !2168
  %sub14 = sub nsw i32 %add13, 1, !dbg !2169
  %idxprom = sext i32 %sub14 to i64, !dbg !2163
  %arrayidx = getelementptr inbounds i64, ptr %18, i64 %idxprom, !dbg !2163
  %22 = load i64, ptr %arrayidx, align 8, !dbg !2170
  %and = and i64 %22, %17, !dbg !2170
  store i64 %and, ptr %arrayidx, align 8, !dbg !2170
  br label %for.inc, !dbg !2171

for.inc:                                          ; preds = %for.body
  %23 = load i32, ptr %i, align 4, !dbg !2172
  %inc = add nsw i32 %23, 1, !dbg !2172
  store i32 %inc, ptr %i, align 4, !dbg !2172
  br label %for.cond, !dbg !2173, !llvm.loop !2174

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !2176

if.end:                                           ; preds = %for.end, %entry
    #dbg_declare(ptr %i15, !2177, !DIExpression(), !2179)
  store i32 0, ptr %i15, align 4, !dbg !2179
  br label %for.cond16, !dbg !2180

for.cond16:                                       ; preds = %for.inc155, %if.end
  %24 = load i32, ptr %i15, align 4, !dbg !2181
  %25 = load ptr, ptr %p.addr, align 8, !dbg !2183
  %k17 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %25, i32 0, i32 3, !dbg !2184
  %26 = load i32, ptr %k17, align 4, !dbg !2184
  %sub18 = sub nsw i32 %26, 1, !dbg !2185
  %cmp19 = icmp sle i32 %24, %sub18, !dbg !2186
  br i1 %cmp19, label %for.body21, label %for.end157, !dbg !2187

for.body21:                                       ; preds = %for.cond16
    #dbg_declare(ptr %j, !2188, !DIExpression(), !2191)
  %27 = load ptr, ptr %p.addr, align 8, !dbg !2192
  %k22 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %27, i32 0, i32 3, !dbg !2193
  %28 = load i32, ptr %k22, align 4, !dbg !2193
  %sub23 = sub nsw i32 %28, 1, !dbg !2194
  store i32 %sub23, ptr %j, align 4, !dbg !2191
  br label %for.cond24, !dbg !2195

for.cond24:                                       ; preds = %for.inc153, %for.body21
  %29 = load i32, ptr %j, align 4, !dbg !2196
  %30 = load i32, ptr %i15, align 4, !dbg !2198
  %cmp25 = icmp sge i32 %29, %30, !dbg !2199
  br i1 %cmp25, label %for.body27, label %for.end154, !dbg !2200

for.body27:                                       ; preds = %for.cond24
  %31 = load ptr, ptr %VtL.addr, align 8, !dbg !2201
  %32 = load i32, ptr %j, align 4, !dbg !2203
  %33 = load i32, ptr %m_vec_limbs, align 4, !dbg !2204
  %mul28 = mul nsw i32 %32, %33, !dbg !2205
  %34 = load ptr, ptr %p.addr, align 8, !dbg !2206
  %o29 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %34, i32 0, i32 2, !dbg !2207
  %35 = load i32, ptr %o29, align 8, !dbg !2207
  %mul30 = mul nsw i32 %mul28, %35, !dbg !2208
  %idx.ext = sext i32 %mul30 to i64, !dbg !2209
  %add.ptr = getelementptr inbounds i64, ptr %31, i64 %idx.ext, !dbg !2209
  store ptr %add.ptr, ptr %Mj, align 8, !dbg !2210
    #dbg_declare(ptr %c, !2211, !DIExpression(), !2213)
  store i32 0, ptr %c, align 4, !dbg !2213
  br label %for.cond31, !dbg !2214

for.cond31:                                       ; preds = %for.inc80, %for.body27
  %36 = load i32, ptr %c, align 4, !dbg !2215
  %37 = load ptr, ptr %p.addr, align 8, !dbg !2217
  %o32 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %37, i32 0, i32 2, !dbg !2218
  %38 = load i32, ptr %o32, align 8, !dbg !2218
  %cmp33 = icmp slt i32 %36, %38, !dbg !2219
  br i1 %cmp33, label %for.body35, label %for.end82, !dbg !2220

for.body35:                                       ; preds = %for.cond31
    #dbg_declare(ptr %k36, !2221, !DIExpression(), !2224)
  store i32 0, ptr %k36, align 4, !dbg !2224
  br label %for.cond37, !dbg !2225

for.cond37:                                       ; preds = %for.inc77, %for.body35
  %39 = load i32, ptr %k36, align 4, !dbg !2226
  %40 = load i32, ptr %m_vec_limbs, align 4, !dbg !2228
  %cmp38 = icmp slt i32 %39, %40, !dbg !2229
  br i1 %cmp38, label %for.body40, label %for.end79, !dbg !2230

for.body40:                                       ; preds = %for.cond37
  %41 = load ptr, ptr %Mj, align 8, !dbg !2231
  %42 = load i32, ptr %k36, align 4, !dbg !2233
  %43 = load i32, ptr %c, align 4, !dbg !2234
  %44 = load i32, ptr %m_vec_limbs, align 4, !dbg !2235
  %mul41 = mul nsw i32 %43, %44, !dbg !2236
  %add42 = add nsw i32 %42, %mul41, !dbg !2237
  %idxprom43 = sext i32 %add42 to i64, !dbg !2231
  %arrayidx44 = getelementptr inbounds i64, ptr %41, i64 %idxprom43, !dbg !2231
  %45 = load i64, ptr %arrayidx44, align 8, !dbg !2231
  %46 = load i32, ptr %bits_to_shift, align 4, !dbg !2238
  %sh_prom45 = zext i32 %46 to i64, !dbg !2239
  %shl46 = shl i64 %45, %sh_prom45, !dbg !2239
  %47 = load ptr, ptr %p.addr, align 8, !dbg !2240
  %o47 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %47, i32 0, i32 2, !dbg !2241
  %48 = load i32, ptr %o47, align 8, !dbg !2241
  %49 = load i32, ptr %i15, align 4, !dbg !2242
  %mul48 = mul nsw i32 %48, %49, !dbg !2243
  %50 = load i32, ptr %c, align 4, !dbg !2244
  %add49 = add nsw i32 %mul48, %50, !dbg !2245
  %conv50 = sext i32 %add49 to i64, !dbg !2241
  %51 = load i32, ptr %k36, align 4, !dbg !2246
  %52 = load i32, ptr %words_to_shift, align 4, !dbg !2247
  %add51 = add nsw i32 %51, %52, !dbg !2248
  %conv52 = sext i32 %add51 to i64, !dbg !2249
  %53 = load i64, ptr %A_width, align 8, !dbg !2250
  %mul53 = mul i64 %conv52, %53, !dbg !2251
  %add54 = add i64 %conv50, %mul53, !dbg !2252
  %arrayidx55 = getelementptr inbounds nuw [3744 x i64], ptr %A, i64 0, i64 %add54, !dbg !2253
  %54 = load i64, ptr %arrayidx55, align 8, !dbg !2254
  %xor = xor i64 %54, %shl46, !dbg !2254
  store i64 %xor, ptr %arrayidx55, align 8, !dbg !2254
  %55 = load i32, ptr %bits_to_shift, align 4, !dbg !2255
  %cmp56 = icmp sgt i32 %55, 0, !dbg !2257
  br i1 %cmp56, label %if.then58, label %if.end76, !dbg !2257

if.then58:                                        ; preds = %for.body40
  %56 = load ptr, ptr %Mj, align 8, !dbg !2258
  %57 = load i32, ptr %k36, align 4, !dbg !2260
  %58 = load i32, ptr %c, align 4, !dbg !2261
  %59 = load i32, ptr %m_vec_limbs, align 4, !dbg !2262
  %mul59 = mul nsw i32 %58, %59, !dbg !2263
  %add60 = add nsw i32 %57, %mul59, !dbg !2264
  %idxprom61 = sext i32 %add60 to i64, !dbg !2258
  %arrayidx62 = getelementptr inbounds i64, ptr %56, i64 %idxprom61, !dbg !2258
  %60 = load i64, ptr %arrayidx62, align 8, !dbg !2258
  %61 = load i32, ptr %bits_to_shift, align 4, !dbg !2265
  %sub63 = sub nsw i32 64, %61, !dbg !2266
  %sh_prom64 = zext i32 %sub63 to i64, !dbg !2267
  %shr = lshr i64 %60, %sh_prom64, !dbg !2267
  %62 = load ptr, ptr %p.addr, align 8, !dbg !2268
  %o65 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %62, i32 0, i32 2, !dbg !2269
  %63 = load i32, ptr %o65, align 8, !dbg !2269
  %64 = load i32, ptr %i15, align 4, !dbg !2270
  %mul66 = mul nsw i32 %63, %64, !dbg !2271
  %65 = load i32, ptr %c, align 4, !dbg !2272
  %add67 = add nsw i32 %mul66, %65, !dbg !2273
  %conv68 = sext i32 %add67 to i64, !dbg !2269
  %66 = load i32, ptr %k36, align 4, !dbg !2274
  %67 = load i32, ptr %words_to_shift, align 4, !dbg !2275
  %add69 = add nsw i32 %66, %67, !dbg !2276
  %add70 = add nsw i32 %add69, 1, !dbg !2277
  %conv71 = sext i32 %add70 to i64, !dbg !2278
  %68 = load i64, ptr %A_width, align 8, !dbg !2279
  %mul72 = mul i64 %conv71, %68, !dbg !2280
  %add73 = add i64 %conv68, %mul72, !dbg !2281
  %arrayidx74 = getelementptr inbounds nuw [3744 x i64], ptr %A, i64 0, i64 %add73, !dbg !2282
  %69 = load i64, ptr %arrayidx74, align 8, !dbg !2283
  %xor75 = xor i64 %69, %shr, !dbg !2283
  store i64 %xor75, ptr %arrayidx74, align 8, !dbg !2283
  br label %if.end76, !dbg !2284

if.end76:                                         ; preds = %if.then58, %for.body40
  br label %for.inc77, !dbg !2285

for.inc77:                                        ; preds = %if.end76
  %70 = load i32, ptr %k36, align 4, !dbg !2286
  %inc78 = add nsw i32 %70, 1, !dbg !2286
  store i32 %inc78, ptr %k36, align 4, !dbg !2286
  br label %for.cond37, !dbg !2287, !llvm.loop !2288

for.end79:                                        ; preds = %for.cond37
  br label %for.inc80, !dbg !2290

for.inc80:                                        ; preds = %for.end79
  %71 = load i32, ptr %c, align 4, !dbg !2291
  %inc81 = add nsw i32 %71, 1, !dbg !2291
  store i32 %inc81, ptr %c, align 4, !dbg !2291
  br label %for.cond31, !dbg !2292, !llvm.loop !2293

for.end82:                                        ; preds = %for.cond31
  %72 = load i32, ptr %i15, align 4, !dbg !2295
  %73 = load i32, ptr %j, align 4, !dbg !2297
  %cmp83 = icmp ne i32 %72, %73, !dbg !2298
  br i1 %cmp83, label %if.then85, label %if.end146, !dbg !2298

if.then85:                                        ; preds = %for.end82
  %74 = load ptr, ptr %VtL.addr, align 8, !dbg !2299
  %75 = load i32, ptr %i15, align 4, !dbg !2301
  %76 = load i32, ptr %m_vec_limbs, align 4, !dbg !2302
  %mul86 = mul nsw i32 %75, %76, !dbg !2303
  %77 = load ptr, ptr %p.addr, align 8, !dbg !2304
  %o87 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %77, i32 0, i32 2, !dbg !2305
  %78 = load i32, ptr %o87, align 8, !dbg !2305
  %mul88 = mul nsw i32 %mul86, %78, !dbg !2306
  %idx.ext89 = sext i32 %mul88 to i64, !dbg !2307
  %add.ptr90 = getelementptr inbounds i64, ptr %74, i64 %idx.ext89, !dbg !2307
  store ptr %add.ptr90, ptr %Mi, align 8, !dbg !2308
    #dbg_declare(ptr %c91, !2309, !DIExpression(), !2311)
  store i32 0, ptr %c91, align 4, !dbg !2311
  br label %for.cond92, !dbg !2312

for.cond92:                                       ; preds = %for.inc143, %if.then85
  %79 = load i32, ptr %c91, align 4, !dbg !2313
  %80 = load ptr, ptr %p.addr, align 8, !dbg !2315
  %o93 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %80, i32 0, i32 2, !dbg !2316
  %81 = load i32, ptr %o93, align 8, !dbg !2316
  %cmp94 = icmp slt i32 %79, %81, !dbg !2317
  br i1 %cmp94, label %for.body96, label %for.end145, !dbg !2318

for.body96:                                       ; preds = %for.cond92
    #dbg_declare(ptr %k97, !2319, !DIExpression(), !2322)
  store i32 0, ptr %k97, align 4, !dbg !2322
  br label %for.cond98, !dbg !2323

for.cond98:                                       ; preds = %for.inc140, %for.body96
  %82 = load i32, ptr %k97, align 4, !dbg !2324
  %83 = load i32, ptr %m_vec_limbs, align 4, !dbg !2326
  %cmp99 = icmp slt i32 %82, %83, !dbg !2327
  br i1 %cmp99, label %for.body101, label %for.end142, !dbg !2328

for.body101:                                      ; preds = %for.cond98
  %84 = load ptr, ptr %Mi, align 8, !dbg !2329
  %85 = load i32, ptr %k97, align 4, !dbg !2331
  %86 = load i32, ptr %c91, align 4, !dbg !2332
  %87 = load i32, ptr %m_vec_limbs, align 4, !dbg !2333
  %mul102 = mul nsw i32 %86, %87, !dbg !2334
  %add103 = add nsw i32 %85, %mul102, !dbg !2335
  %idxprom104 = sext i32 %add103 to i64, !dbg !2329
  %arrayidx105 = getelementptr inbounds i64, ptr %84, i64 %idxprom104, !dbg !2329
  %88 = load i64, ptr %arrayidx105, align 8, !dbg !2329
  %89 = load i32, ptr %bits_to_shift, align 4, !dbg !2336
  %sh_prom106 = zext i32 %89 to i64, !dbg !2337
  %shl107 = shl i64 %88, %sh_prom106, !dbg !2337
  %90 = load ptr, ptr %p.addr, align 8, !dbg !2338
  %o108 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %90, i32 0, i32 2, !dbg !2339
  %91 = load i32, ptr %o108, align 8, !dbg !2339
  %92 = load i32, ptr %j, align 4, !dbg !2340
  %mul109 = mul nsw i32 %91, %92, !dbg !2341
  %93 = load i32, ptr %c91, align 4, !dbg !2342
  %add110 = add nsw i32 %mul109, %93, !dbg !2343
  %conv111 = sext i32 %add110 to i64, !dbg !2339
  %94 = load i32, ptr %k97, align 4, !dbg !2344
  %95 = load i32, ptr %words_to_shift, align 4, !dbg !2345
  %add112 = add nsw i32 %94, %95, !dbg !2346
  %conv113 = sext i32 %add112 to i64, !dbg !2347
  %96 = load i64, ptr %A_width, align 8, !dbg !2348
  %mul114 = mul i64 %conv113, %96, !dbg !2349
  %add115 = add i64 %conv111, %mul114, !dbg !2350
  %arrayidx116 = getelementptr inbounds nuw [3744 x i64], ptr %A, i64 0, i64 %add115, !dbg !2351
  %97 = load i64, ptr %arrayidx116, align 8, !dbg !2352
  %xor117 = xor i64 %97, %shl107, !dbg !2352
  store i64 %xor117, ptr %arrayidx116, align 8, !dbg !2352
  %98 = load i32, ptr %bits_to_shift, align 4, !dbg !2353
  %cmp118 = icmp sgt i32 %98, 0, !dbg !2355
  br i1 %cmp118, label %if.then120, label %if.end139, !dbg !2355

if.then120:                                       ; preds = %for.body101
  %99 = load ptr, ptr %Mi, align 8, !dbg !2356
  %100 = load i32, ptr %k97, align 4, !dbg !2358
  %101 = load i32, ptr %c91, align 4, !dbg !2359
  %102 = load i32, ptr %m_vec_limbs, align 4, !dbg !2360
  %mul121 = mul nsw i32 %101, %102, !dbg !2361
  %add122 = add nsw i32 %100, %mul121, !dbg !2362
  %idxprom123 = sext i32 %add122 to i64, !dbg !2356
  %arrayidx124 = getelementptr inbounds i64, ptr %99, i64 %idxprom123, !dbg !2356
  %103 = load i64, ptr %arrayidx124, align 8, !dbg !2356
  %104 = load i32, ptr %bits_to_shift, align 4, !dbg !2363
  %sub125 = sub nsw i32 64, %104, !dbg !2364
  %sh_prom126 = zext i32 %sub125 to i64, !dbg !2365
  %shr127 = lshr i64 %103, %sh_prom126, !dbg !2365
  %105 = load ptr, ptr %p.addr, align 8, !dbg !2366
  %o128 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %105, i32 0, i32 2, !dbg !2367
  %106 = load i32, ptr %o128, align 8, !dbg !2367
  %107 = load i32, ptr %j, align 4, !dbg !2368
  %mul129 = mul nsw i32 %106, %107, !dbg !2369
  %108 = load i32, ptr %c91, align 4, !dbg !2370
  %add130 = add nsw i32 %mul129, %108, !dbg !2371
  %conv131 = sext i32 %add130 to i64, !dbg !2367
  %109 = load i32, ptr %k97, align 4, !dbg !2372
  %110 = load i32, ptr %words_to_shift, align 4, !dbg !2373
  %add132 = add nsw i32 %109, %110, !dbg !2374
  %add133 = add nsw i32 %add132, 1, !dbg !2375
  %conv134 = sext i32 %add133 to i64, !dbg !2376
  %111 = load i64, ptr %A_width, align 8, !dbg !2377
  %mul135 = mul i64 %conv134, %111, !dbg !2378
  %add136 = add i64 %conv131, %mul135, !dbg !2379
  %arrayidx137 = getelementptr inbounds nuw [3744 x i64], ptr %A, i64 0, i64 %add136, !dbg !2380
  %112 = load i64, ptr %arrayidx137, align 8, !dbg !2381
  %xor138 = xor i64 %112, %shr127, !dbg !2381
  store i64 %xor138, ptr %arrayidx137, align 8, !dbg !2381
  br label %if.end139, !dbg !2382

if.end139:                                        ; preds = %if.then120, %for.body101
  br label %for.inc140, !dbg !2383

for.inc140:                                       ; preds = %if.end139
  %113 = load i32, ptr %k97, align 4, !dbg !2384
  %inc141 = add nsw i32 %113, 1, !dbg !2384
  store i32 %inc141, ptr %k97, align 4, !dbg !2384
  br label %for.cond98, !dbg !2385, !llvm.loop !2386

for.end142:                                       ; preds = %for.cond98
  br label %for.inc143, !dbg !2388

for.inc143:                                       ; preds = %for.end142
  %114 = load i32, ptr %c91, align 4, !dbg !2389
  %inc144 = add nsw i32 %114, 1, !dbg !2389
  store i32 %inc144, ptr %c91, align 4, !dbg !2389
  br label %for.cond92, !dbg !2390, !llvm.loop !2391

for.end145:                                       ; preds = %for.cond92
  br label %if.end146, !dbg !2393

if.end146:                                        ; preds = %for.end145, %for.end82
  %115 = load i32, ptr %bits_to_shift, align 4, !dbg !2394
  %add147 = add nsw i32 %115, 4, !dbg !2394
  store i32 %add147, ptr %bits_to_shift, align 4, !dbg !2394
  %116 = load i32, ptr %bits_to_shift, align 4, !dbg !2395
  %cmp148 = icmp eq i32 %116, 64, !dbg !2397
  br i1 %cmp148, label %if.then150, label %if.end152, !dbg !2397

if.then150:                                       ; preds = %if.end146
  %117 = load i32, ptr %words_to_shift, align 4, !dbg !2398
  %inc151 = add nsw i32 %117, 1, !dbg !2398
  store i32 %inc151, ptr %words_to_shift, align 4, !dbg !2398
  store i32 0, ptr %bits_to_shift, align 4, !dbg !2400
  br label %if.end152, !dbg !2401

if.end152:                                        ; preds = %if.then150, %if.end146
  br label %for.inc153, !dbg !2402

for.inc153:                                       ; preds = %if.end152
  %118 = load i32, ptr %j, align 4, !dbg !2403
  %dec = add nsw i32 %118, -1, !dbg !2403
  store i32 %dec, ptr %j, align 4, !dbg !2403
  br label %for.cond24, !dbg !2404, !llvm.loop !2405

for.end154:                                       ; preds = %for.cond24
  br label %for.inc155, !dbg !2407

for.inc155:                                       ; preds = %for.end154
  %119 = load i32, ptr %i15, align 4, !dbg !2408
  %inc156 = add nsw i32 %119, 1, !dbg !2408
  store i32 %inc156, ptr %i15, align 4, !dbg !2408
  br label %for.cond16, !dbg !2409, !llvm.loop !2410

for.end157:                                       ; preds = %for.cond16
    #dbg_declare(ptr %c158, !2412, !DIExpression(), !2414)
  store i64 0, ptr %c158, align 8, !dbg !2414
  br label %for.cond159, !dbg !2415

for.cond159:                                      ; preds = %for.inc175, %for.end157
  %120 = load i64, ptr %c158, align 8, !dbg !2416
  %121 = load i64, ptr %A_width, align 8, !dbg !2418
  %122 = load ptr, ptr %p.addr, align 8, !dbg !2419
  %m160 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %122, i32 0, i32 0, !dbg !2420
  %123 = load i32, ptr %m160, align 8, !dbg !2420
  %124 = load ptr, ptr %p.addr, align 8, !dbg !2421
  %k161 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %124, i32 0, i32 3, !dbg !2422
  %125 = load i32, ptr %k161, align 4, !dbg !2422
  %add162 = add nsw i32 %125, 1, !dbg !2423
  %126 = load ptr, ptr %p.addr, align 8, !dbg !2424
  %k163 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %126, i32 0, i32 3, !dbg !2425
  %127 = load i32, ptr %k163, align 4, !dbg !2425
  %mul164 = mul nsw i32 %add162, %127, !dbg !2426
  %div165 = sdiv i32 %mul164, 2, !dbg !2427
  %add166 = add nsw i32 %123, %div165, !dbg !2428
  %add167 = add nsw i32 %add166, 15, !dbg !2429
  %div168 = sdiv i32 %add167, 16, !dbg !2430
  %conv169 = sext i32 %div168 to i64, !dbg !2431
  %mul170 = mul i64 %121, %conv169, !dbg !2432
  %cmp171 = icmp ult i64 %120, %mul170, !dbg !2433
  br i1 %cmp171, label %for.body173, label %for.end177, !dbg !2434

for.body173:                                      ; preds = %for.cond159
  %arraydecay = getelementptr inbounds [3744 x i64], ptr %A, i64 0, i64 0, !dbg !2435
  %128 = load i64, ptr %c158, align 8, !dbg !2437
  %add.ptr174 = getelementptr inbounds nuw i64, ptr %arraydecay, i64 %128, !dbg !2438
  call void @transpose_16x16_nibbles(ptr noundef %add.ptr174), !dbg !2439
  br label %for.inc175, !dbg !2440

for.inc175:                                       ; preds = %for.body173
  %129 = load i64, ptr %c158, align 8, !dbg !2441
  %add176 = add i64 %129, 16, !dbg !2441
  store i64 %add176, ptr %c158, align 8, !dbg !2441
  br label %for.cond159, !dbg !2442, !llvm.loop !2443

for.end177:                                       ; preds = %for.cond159
    #dbg_declare(ptr %tab, !2445, !DIExpression(), !2449)
  call void @llvm.memset.p0.i64(ptr align 16 %tab, i8 0, i64 16, i1 false), !dbg !2449
    #dbg_declare(ptr %i178, !2450, !DIExpression(), !2452)
  store i64 0, ptr %i178, align 8, !dbg !2452
  br label %for.cond179, !dbg !2453

for.cond179:                                      ; preds = %for.inc204, %for.end177
  %130 = load i64, ptr %i178, align 8, !dbg !2454
  %cmp180 = icmp ult i64 %130, 4, !dbg !2456
  br i1 %cmp180, label %for.body182, label %for.end206, !dbg !2457

for.body182:                                      ; preds = %for.cond179
  %131 = load ptr, ptr %p.addr, align 8, !dbg !2458
  %f_tail = getelementptr inbounds nuw %struct.mayo_params_t, ptr %131, i32 0, i32 5, !dbg !2460
  %132 = load ptr, ptr %f_tail, align 8, !dbg !2460
  %133 = load i64, ptr %i178, align 8, !dbg !2461
  %arrayidx183 = getelementptr inbounds nuw i8, ptr %132, i64 %133, !dbg !2460
  %134 = load i8, ptr %arrayidx183, align 1, !dbg !2460
  %call = call zeroext i8 @mul_f(i8 noundef zeroext %134, i8 noundef zeroext 1), !dbg !2462
  %135 = load i64, ptr %i178, align 8, !dbg !2463
  %mul184 = mul i64 4, %135, !dbg !2464
  %arrayidx185 = getelementptr inbounds nuw [16 x i8], ptr %tab, i64 0, i64 %mul184, !dbg !2465
  store i8 %call, ptr %arrayidx185, align 1, !dbg !2466
  %136 = load ptr, ptr %p.addr, align 8, !dbg !2467
  %f_tail186 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %136, i32 0, i32 5, !dbg !2468
  %137 = load ptr, ptr %f_tail186, align 8, !dbg !2468
  %138 = load i64, ptr %i178, align 8, !dbg !2469
  %arrayidx187 = getelementptr inbounds nuw i8, ptr %137, i64 %138, !dbg !2468
  %139 = load i8, ptr %arrayidx187, align 1, !dbg !2468
  %call188 = call zeroext i8 @mul_f(i8 noundef zeroext %139, i8 noundef zeroext 2), !dbg !2470
  %140 = load i64, ptr %i178, align 8, !dbg !2471
  %mul189 = mul i64 4, %140, !dbg !2472
  %add190 = add i64 %mul189, 1, !dbg !2473
  %arrayidx191 = getelementptr inbounds nuw [16 x i8], ptr %tab, i64 0, i64 %add190, !dbg !2474
  store i8 %call188, ptr %arrayidx191, align 1, !dbg !2475
  %141 = load ptr, ptr %p.addr, align 8, !dbg !2476
  %f_tail192 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %141, i32 0, i32 5, !dbg !2477
  %142 = load ptr, ptr %f_tail192, align 8, !dbg !2477
  %143 = load i64, ptr %i178, align 8, !dbg !2478
  %arrayidx193 = getelementptr inbounds nuw i8, ptr %142, i64 %143, !dbg !2477
  %144 = load i8, ptr %arrayidx193, align 1, !dbg !2477
  %call194 = call zeroext i8 @mul_f(i8 noundef zeroext %144, i8 noundef zeroext 4), !dbg !2479
  %145 = load i64, ptr %i178, align 8, !dbg !2480
  %mul195 = mul i64 4, %145, !dbg !2481
  %add196 = add i64 %mul195, 2, !dbg !2482
  %arrayidx197 = getelementptr inbounds nuw [16 x i8], ptr %tab, i64 0, i64 %add196, !dbg !2483
  store i8 %call194, ptr %arrayidx197, align 1, !dbg !2484
  %146 = load ptr, ptr %p.addr, align 8, !dbg !2485
  %f_tail198 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %146, i32 0, i32 5, !dbg !2486
  %147 = load ptr, ptr %f_tail198, align 8, !dbg !2486
  %148 = load i64, ptr %i178, align 8, !dbg !2487
  %arrayidx199 = getelementptr inbounds nuw i8, ptr %147, i64 %148, !dbg !2486
  %149 = load i8, ptr %arrayidx199, align 1, !dbg !2486
  %call200 = call zeroext i8 @mul_f(i8 noundef zeroext %149, i8 noundef zeroext 8), !dbg !2488
  %150 = load i64, ptr %i178, align 8, !dbg !2489
  %mul201 = mul i64 4, %150, !dbg !2490
  %add202 = add i64 %mul201, 3, !dbg !2491
  %arrayidx203 = getelementptr inbounds nuw [16 x i8], ptr %tab, i64 0, i64 %add202, !dbg !2492
  store i8 %call200, ptr %arrayidx203, align 1, !dbg !2493
  br label %for.inc204, !dbg !2494

for.inc204:                                       ; preds = %for.body182
  %151 = load i64, ptr %i178, align 8, !dbg !2495
  %inc205 = add i64 %151, 1, !dbg !2495
  store i64 %inc205, ptr %i178, align 8, !dbg !2495
  br label %for.cond179, !dbg !2496, !llvm.loop !2497

for.end206:                                       ; preds = %for.cond179
    #dbg_declare(ptr %low_bit_in_nibble, !2499, !DIExpression(), !2500)
  store i64 1229782938247303441, ptr %low_bit_in_nibble, align 8, !dbg !2500
    #dbg_declare(ptr %c207, !2501, !DIExpression(), !2503)
  store i64 0, ptr %c207, align 8, !dbg !2503
  br label %for.cond208, !dbg !2504

for.cond208:                                      ; preds = %for.inc292, %for.end206
  %152 = load i64, ptr %c207, align 8, !dbg !2505
  %153 = load i64, ptr %A_width, align 8, !dbg !2507
  %cmp209 = icmp ult i64 %152, %153, !dbg !2508
  br i1 %cmp209, label %for.body211, label %for.end294, !dbg !2509

for.body211:                                      ; preds = %for.cond208
    #dbg_declare(ptr %r, !2510, !DIExpression(), !2513)
  %154 = load ptr, ptr %p.addr, align 8, !dbg !2514
  %m212 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %154, i32 0, i32 0, !dbg !2515
  %155 = load i32, ptr %m212, align 8, !dbg !2515
  store i32 %155, ptr %r, align 4, !dbg !2513
  br label %for.cond213, !dbg !2516

for.cond213:                                      ; preds = %for.inc289, %for.body211
  %156 = load i32, ptr %r, align 4, !dbg !2517
  %157 = load ptr, ptr %p.addr, align 8, !dbg !2519
  %m214 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %157, i32 0, i32 0, !dbg !2520
  %158 = load i32, ptr %m214, align 8, !dbg !2520
  %159 = load ptr, ptr %p.addr, align 8, !dbg !2521
  %k215 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %159, i32 0, i32 3, !dbg !2522
  %160 = load i32, ptr %k215, align 4, !dbg !2522
  %add216 = add nsw i32 %160, 1, !dbg !2523
  %161 = load ptr, ptr %p.addr, align 8, !dbg !2524
  %k217 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %161, i32 0, i32 3, !dbg !2525
  %162 = load i32, ptr %k217, align 4, !dbg !2525
  %mul218 = mul nsw i32 %add216, %162, !dbg !2526
  %div219 = sdiv i32 %mul218, 2, !dbg !2527
  %add220 = add nsw i32 %158, %div219, !dbg !2528
  %cmp221 = icmp slt i32 %156, %add220, !dbg !2529
  br i1 %cmp221, label %for.body223, label %for.end291, !dbg !2530

for.body223:                                      ; preds = %for.cond213
    #dbg_declare(ptr %pos, !2531, !DIExpression(), !2533)
  %163 = load i32, ptr %r, align 4, !dbg !2534
  %div224 = sdiv i32 %163, 16, !dbg !2535
  %conv225 = sext i32 %div224 to i64, !dbg !2536
  %164 = load i64, ptr %A_width, align 8, !dbg !2537
  %mul226 = mul i64 %conv225, %164, !dbg !2538
  %165 = load i64, ptr %c207, align 8, !dbg !2539
  %add227 = add i64 %mul226, %165, !dbg !2540
  %166 = load i32, ptr %r, align 4, !dbg !2541
  %rem228 = srem i32 %166, 16, !dbg !2542
  %conv229 = sext i32 %rem228 to i64, !dbg !2543
  %add230 = add i64 %add227, %conv229, !dbg !2544
  store i64 %add230, ptr %pos, align 8, !dbg !2533
    #dbg_declare(ptr %t0, !2545, !DIExpression(), !2546)
  %167 = load i64, ptr %pos, align 8, !dbg !2547
  %arrayidx231 = getelementptr inbounds nuw [3744 x i64], ptr %A, i64 0, i64 %167, !dbg !2548
  %168 = load i64, ptr %arrayidx231, align 8, !dbg !2548
  %169 = load i64, ptr %low_bit_in_nibble, align 8, !dbg !2549
  %and232 = and i64 %168, %169, !dbg !2550
  store i64 %and232, ptr %t0, align 8, !dbg !2546
    #dbg_declare(ptr %t1, !2551, !DIExpression(), !2552)
  %170 = load i64, ptr %pos, align 8, !dbg !2553
  %arrayidx233 = getelementptr inbounds nuw [3744 x i64], ptr %A, i64 0, i64 %170, !dbg !2554
  %171 = load i64, ptr %arrayidx233, align 8, !dbg !2554
  %shr234 = lshr i64 %171, 1, !dbg !2555
  %172 = load i64, ptr %low_bit_in_nibble, align 8, !dbg !2556
  %and235 = and i64 %shr234, %172, !dbg !2557
  store i64 %and235, ptr %t1, align 8, !dbg !2552
    #dbg_declare(ptr %t2, !2558, !DIExpression(), !2559)
  %173 = load i64, ptr %pos, align 8, !dbg !2560
  %arrayidx236 = getelementptr inbounds nuw [3744 x i64], ptr %A, i64 0, i64 %173, !dbg !2561
  %174 = load i64, ptr %arrayidx236, align 8, !dbg !2561
  %shr237 = lshr i64 %174, 2, !dbg !2562
  %175 = load i64, ptr %low_bit_in_nibble, align 8, !dbg !2563
  %and238 = and i64 %shr237, %175, !dbg !2564
  store i64 %and238, ptr %t2, align 8, !dbg !2559
    #dbg_declare(ptr %t3, !2565, !DIExpression(), !2566)
  %176 = load i64, ptr %pos, align 8, !dbg !2567
  %arrayidx239 = getelementptr inbounds nuw [3744 x i64], ptr %A, i64 0, i64 %176, !dbg !2568
  %177 = load i64, ptr %arrayidx239, align 8, !dbg !2568
  %shr240 = lshr i64 %177, 3, !dbg !2569
  %178 = load i64, ptr %low_bit_in_nibble, align 8, !dbg !2570
  %and241 = and i64 %shr240, %178, !dbg !2571
  store i64 %and241, ptr %t3, align 8, !dbg !2566
    #dbg_declare(ptr %t, !2572, !DIExpression(), !2574)
  store i64 0, ptr %t, align 8, !dbg !2574
  br label %for.cond242, !dbg !2575

for.cond242:                                      ; preds = %for.inc286, %for.body223
  %179 = load i64, ptr %t, align 8, !dbg !2576
  %cmp243 = icmp ult i64 %179, 4, !dbg !2578
  br i1 %cmp243, label %for.body245, label %for.end288, !dbg !2579

for.body245:                                      ; preds = %for.cond242
  %180 = load i64, ptr %t0, align 8, !dbg !2580
  %181 = load i64, ptr %t, align 8, !dbg !2582
  %mul246 = mul i64 4, %181, !dbg !2583
  %add247 = add i64 %mul246, 0, !dbg !2584
  %arrayidx248 = getelementptr inbounds nuw [16 x i8], ptr %tab, i64 0, i64 %add247, !dbg !2585
  %182 = load i8, ptr %arrayidx248, align 1, !dbg !2585
  %conv249 = zext i8 %182 to i64, !dbg !2585
  %mul250 = mul i64 %180, %conv249, !dbg !2586
  %183 = load i64, ptr %t1, align 8, !dbg !2587
  %184 = load i64, ptr %t, align 8, !dbg !2588
  %mul251 = mul i64 4, %184, !dbg !2589
  %add252 = add i64 %mul251, 1, !dbg !2590
  %arrayidx253 = getelementptr inbounds nuw [16 x i8], ptr %tab, i64 0, i64 %add252, !dbg !2591
  %185 = load i8, ptr %arrayidx253, align 1, !dbg !2591
  %conv254 = zext i8 %185 to i64, !dbg !2591
  %mul255 = mul i64 %183, %conv254, !dbg !2592
  %xor256 = xor i64 %mul250, %mul255, !dbg !2593
  %186 = load i64, ptr %t2, align 8, !dbg !2594
  %187 = load i64, ptr %t, align 8, !dbg !2595
  %mul257 = mul i64 4, %187, !dbg !2596
  %add258 = add i64 %mul257, 2, !dbg !2597
  %arrayidx259 = getelementptr inbounds nuw [16 x i8], ptr %tab, i64 0, i64 %add258, !dbg !2598
  %188 = load i8, ptr %arrayidx259, align 1, !dbg !2598
  %conv260 = zext i8 %188 to i64, !dbg !2598
  %mul261 = mul i64 %186, %conv260, !dbg !2599
  %xor262 = xor i64 %xor256, %mul261, !dbg !2600
  %189 = load i64, ptr %t3, align 8, !dbg !2601
  %190 = load i64, ptr %t, align 8, !dbg !2602
  %mul263 = mul i64 4, %190, !dbg !2603
  %add264 = add i64 %mul263, 3, !dbg !2604
  %arrayidx265 = getelementptr inbounds nuw [16 x i8], ptr %tab, i64 0, i64 %add264, !dbg !2605
  %191 = load i8, ptr %arrayidx265, align 1, !dbg !2605
  %conv266 = zext i8 %191 to i64, !dbg !2605
  %mul267 = mul i64 %189, %conv266, !dbg !2606
  %xor268 = xor i64 %xor262, %mul267, !dbg !2607
  %192 = load i32, ptr %r, align 4, !dbg !2608
  %conv269 = sext i32 %192 to i64, !dbg !2608
  %193 = load i64, ptr %t, align 8, !dbg !2609
  %add270 = add i64 %conv269, %193, !dbg !2610
  %194 = load ptr, ptr %p.addr, align 8, !dbg !2611
  %m271 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %194, i32 0, i32 0, !dbg !2612
  %195 = load i32, ptr %m271, align 8, !dbg !2612
  %conv272 = sext i32 %195 to i64, !dbg !2612
  %sub273 = sub i64 %add270, %conv272, !dbg !2613
  %div274 = udiv i64 %sub273, 16, !dbg !2614
  %196 = load i64, ptr %A_width, align 8, !dbg !2615
  %mul275 = mul i64 %div274, %196, !dbg !2616
  %197 = load i64, ptr %c207, align 8, !dbg !2617
  %add276 = add i64 %mul275, %197, !dbg !2618
  %198 = load i32, ptr %r, align 4, !dbg !2619
  %conv277 = sext i32 %198 to i64, !dbg !2619
  %199 = load i64, ptr %t, align 8, !dbg !2620
  %add278 = add i64 %conv277, %199, !dbg !2621
  %200 = load ptr, ptr %p.addr, align 8, !dbg !2622
  %m279 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %200, i32 0, i32 0, !dbg !2623
  %201 = load i32, ptr %m279, align 8, !dbg !2623
  %conv280 = sext i32 %201 to i64, !dbg !2623
  %sub281 = sub i64 %add278, %conv280, !dbg !2624
  %rem282 = urem i64 %sub281, 16, !dbg !2625
  %add283 = add i64 %add276, %rem282, !dbg !2626
  %arrayidx284 = getelementptr inbounds nuw [3744 x i64], ptr %A, i64 0, i64 %add283, !dbg !2627
  %202 = load i64, ptr %arrayidx284, align 8, !dbg !2628
  %xor285 = xor i64 %202, %xor268, !dbg !2628
  store i64 %xor285, ptr %arrayidx284, align 8, !dbg !2628
  br label %for.inc286, !dbg !2629

for.inc286:                                       ; preds = %for.body245
  %203 = load i64, ptr %t, align 8, !dbg !2630
  %inc287 = add i64 %203, 1, !dbg !2630
  store i64 %inc287, ptr %t, align 8, !dbg !2630
  br label %for.cond242, !dbg !2631, !llvm.loop !2632

for.end288:                                       ; preds = %for.cond242
  br label %for.inc289, !dbg !2634

for.inc289:                                       ; preds = %for.end288
  %204 = load i32, ptr %r, align 4, !dbg !2635
  %inc290 = add nsw i32 %204, 1, !dbg !2635
  store i32 %inc290, ptr %r, align 4, !dbg !2635
  br label %for.cond213, !dbg !2636, !llvm.loop !2637

for.end291:                                       ; preds = %for.cond213
  br label %for.inc292, !dbg !2639

for.inc292:                                       ; preds = %for.end291
  %205 = load i64, ptr %c207, align 8, !dbg !2640
  %add293 = add i64 %205, 16, !dbg !2640
  store i64 %add293, ptr %c207, align 8, !dbg !2640
  br label %for.cond208, !dbg !2641, !llvm.loop !2642

for.end294:                                       ; preds = %for.cond208
    #dbg_declare(ptr %r295, !2644, !DIExpression(), !2646)
  store i32 0, ptr %r295, align 4, !dbg !2646
  br label %for.cond296, !dbg !2647

for.cond296:                                      ; preds = %for.inc356, %for.end294
  %206 = load i32, ptr %r295, align 4, !dbg !2648
  %207 = load ptr, ptr %p.addr, align 8, !dbg !2650
  %m297 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %207, i32 0, i32 0, !dbg !2651
  %208 = load i32, ptr %m297, align 8, !dbg !2651
  %cmp298 = icmp slt i32 %206, %208, !dbg !2652
  br i1 %cmp298, label %for.body300, label %for.end358, !dbg !2653

for.body300:                                      ; preds = %for.cond296
    #dbg_declare(ptr %c301, !2654, !DIExpression(), !2657)
  store i32 0, ptr %c301, align 4, !dbg !2657
  br label %for.cond302, !dbg !2658

for.cond302:                                      ; preds = %for.inc353, %for.body300
  %209 = load i32, ptr %c301, align 4, !dbg !2659
  %210 = load ptr, ptr %p.addr, align 8, !dbg !2661
  %k303 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %210, i32 0, i32 3, !dbg !2662
  %211 = load i32, ptr %k303, align 4, !dbg !2662
  %212 = load ptr, ptr %p.addr, align 8, !dbg !2661
  %o304 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %212, i32 0, i32 2, !dbg !2662
  %213 = load i32, ptr %o304, align 8, !dbg !2662
  %mul305 = mul nsw i32 %211, %213, !dbg !2662
  %add306 = add nsw i32 %mul305, 1, !dbg !2662
  %sub307 = sub nsw i32 %add306, 1, !dbg !2663
  %cmp308 = icmp slt i32 %209, %sub307, !dbg !2664
  br i1 %cmp308, label %for.body310, label %for.end355, !dbg !2665

for.body310:                                      ; preds = %for.cond302
    #dbg_declare(ptr %i311, !2666, !DIExpression(), !2669)
  store i32 0, ptr %i311, align 4, !dbg !2669
  br label %for.cond312, !dbg !2670

for.cond312:                                      ; preds = %for.inc350, %for.body310
  %214 = load i32, ptr %i311, align 4, !dbg !2671
  %215 = load i32, ptr %r295, align 4, !dbg !2673
  %add313 = add nsw i32 %214, %215, !dbg !2674
  %216 = load ptr, ptr %p.addr, align 8, !dbg !2675
  %m314 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %216, i32 0, i32 0, !dbg !2676
  %217 = load i32, ptr %m314, align 8, !dbg !2676
  %cmp315 = icmp slt i32 %add313, %217, !dbg !2677
  br i1 %cmp315, label %for.body317, label %for.end352, !dbg !2678

for.body317:                                      ; preds = %for.cond312
  %218 = load i32, ptr %r295, align 4, !dbg !2679
  %conv318 = sext i32 %218 to i64, !dbg !2679
  %219 = load i64, ptr %A_width, align 8, !dbg !2681
  %mul319 = mul i64 %conv318, %219, !dbg !2682
  %div320 = udiv i64 %mul319, 16, !dbg !2683
  %220 = load i32, ptr %c301, align 4, !dbg !2684
  %conv321 = sext i32 %220 to i64, !dbg !2684
  %add322 = add i64 %div320, %conv321, !dbg !2685
  %221 = load i32, ptr %i311, align 4, !dbg !2686
  %conv323 = sext i32 %221 to i64, !dbg !2686
  %add324 = add i64 %add322, %conv323, !dbg !2687
  %arrayidx325 = getelementptr inbounds nuw [3744 x i64], ptr %A, i64 0, i64 %add324, !dbg !2688
  %222 = load ptr, ptr %A_out.addr, align 8, !dbg !2689
  %223 = load ptr, ptr %p.addr, align 8, !dbg !2690
  %k326 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %223, i32 0, i32 3, !dbg !2691
  %224 = load i32, ptr %k326, align 4, !dbg !2691
  %225 = load ptr, ptr %p.addr, align 8, !dbg !2690
  %o327 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %225, i32 0, i32 2, !dbg !2691
  %226 = load i32, ptr %o327, align 8, !dbg !2691
  %mul328 = mul nsw i32 %224, %226, !dbg !2691
  %add329 = add nsw i32 %mul328, 1, !dbg !2691
  %227 = load i32, ptr %r295, align 4, !dbg !2692
  %228 = load i32, ptr %i311, align 4, !dbg !2693
  %add330 = add nsw i32 %227, %228, !dbg !2694
  %mul331 = mul nsw i32 %add329, %add330, !dbg !2695
  %idx.ext332 = sext i32 %mul331 to i64, !dbg !2696
  %add.ptr333 = getelementptr inbounds i8, ptr %222, i64 %idx.ext332, !dbg !2696
  %229 = load i32, ptr %c301, align 4, !dbg !2697
  %idx.ext334 = sext i32 %229 to i64, !dbg !2698
  %add.ptr335 = getelementptr inbounds i8, ptr %add.ptr333, i64 %idx.ext334, !dbg !2698
  %230 = load ptr, ptr %p.addr, align 8, !dbg !2699
  %k336 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %230, i32 0, i32 3, !dbg !2700
  %231 = load i32, ptr %k336, align 4, !dbg !2700
  %232 = load ptr, ptr %p.addr, align 8, !dbg !2699
  %o337 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %232, i32 0, i32 2, !dbg !2700
  %233 = load i32, ptr %o337, align 8, !dbg !2700
  %mul338 = mul nsw i32 %231, %233, !dbg !2700
  %add339 = add nsw i32 %mul338, 1, !dbg !2700
  %sub340 = sub nsw i32 %add339, 1, !dbg !2701
  %234 = load i32, ptr %c301, align 4, !dbg !2702
  %sub341 = sub nsw i32 %sub340, %234, !dbg !2703
  %cmp342 = icmp slt i32 16, %sub341, !dbg !2704
  br i1 %cmp342, label %cond.true, label %cond.false, !dbg !2704

cond.true:                                        ; preds = %for.body317
  br label %cond.end, !dbg !2704

cond.false:                                       ; preds = %for.body317
  %235 = load ptr, ptr %p.addr, align 8, !dbg !2699
  %k344 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %235, i32 0, i32 3, !dbg !2700
  %236 = load i32, ptr %k344, align 4, !dbg !2700
  %237 = load ptr, ptr %p.addr, align 8, !dbg !2699
  %o345 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %237, i32 0, i32 2, !dbg !2700
  %238 = load i32, ptr %o345, align 8, !dbg !2700
  %mul346 = mul nsw i32 %236, %238, !dbg !2700
  %add347 = add nsw i32 %mul346, 1, !dbg !2700
  %sub348 = sub nsw i32 %add347, 1, !dbg !2701
  %239 = load i32, ptr %c301, align 4, !dbg !2702
  %sub349 = sub nsw i32 %sub348, %239, !dbg !2703
  br label %cond.end, !dbg !2704

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 16, %cond.true ], [ %sub349, %cond.false ], !dbg !2704
  call void @decode(ptr noundef %arrayidx325, ptr noundef %add.ptr335, i32 noundef %cond), !dbg !2705
  br label %for.inc350, !dbg !2706

for.inc350:                                       ; preds = %cond.end
  %240 = load i32, ptr %i311, align 4, !dbg !2707
  %inc351 = add nsw i32 %240, 1, !dbg !2707
  store i32 %inc351, ptr %i311, align 4, !dbg !2707
  br label %for.cond312, !dbg !2708, !llvm.loop !2709

for.end352:                                       ; preds = %for.cond312
  br label %for.inc353, !dbg !2711

for.inc353:                                       ; preds = %for.end352
  %241 = load i32, ptr %c301, align 4, !dbg !2712
  %add354 = add nsw i32 %241, 16, !dbg !2712
  store i32 %add354, ptr %c301, align 4, !dbg !2712
  br label %for.cond302, !dbg !2713, !llvm.loop !2714

for.end355:                                       ; preds = %for.cond302
  br label %for.inc356, !dbg !2716

for.inc356:                                       ; preds = %for.end355
  %242 = load i32, ptr %r295, align 4, !dbg !2717
  %add357 = add nsw i32 %242, 16, !dbg !2717
  store i32 %add357, ptr %r295, align 4, !dbg !2717
  br label %for.cond296, !dbg !2718, !llvm.loop !2719

for.end358:                                       ; preds = %for.cond296
  ret void, !dbg !2721
}

declare i32 @sample_solution(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #4

; Function Attrs: noinline nounwind optnone
define internal void @mat_mul(ptr noundef %a, ptr noundef %b, ptr noundef %c, i32 noundef %colrow_ab, i32 noundef %row_a, i32 noundef %col_b) #0 !dbg !2722 {
entry:
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %c.addr = alloca ptr, align 8
  %colrow_ab.addr = alloca i32, align 4
  %row_a.addr = alloca i32, align 4
  %col_b.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8
    #dbg_declare(ptr %a.addr, !2725, !DIExpression(), !2726)
  store ptr %b, ptr %b.addr, align 8
    #dbg_declare(ptr %b.addr, !2727, !DIExpression(), !2728)
  store ptr %c, ptr %c.addr, align 8
    #dbg_declare(ptr %c.addr, !2729, !DIExpression(), !2730)
  store i32 %colrow_ab, ptr %colrow_ab.addr, align 4
    #dbg_declare(ptr %colrow_ab.addr, !2731, !DIExpression(), !2732)
  store i32 %row_a, ptr %row_a.addr, align 4
    #dbg_declare(ptr %row_a.addr, !2733, !DIExpression(), !2734)
  store i32 %col_b, ptr %col_b.addr, align 4
    #dbg_declare(ptr %col_b.addr, !2735, !DIExpression(), !2736)
    #dbg_declare(ptr %i, !2737, !DIExpression(), !2739)
  store i32 0, ptr %i, align 4, !dbg !2739
  br label %for.cond, !dbg !2740

for.cond:                                         ; preds = %for.inc4, %entry
  %0 = load i32, ptr %i, align 4, !dbg !2741
  %1 = load i32, ptr %row_a.addr, align 4, !dbg !2743
  %cmp = icmp slt i32 %0, %1, !dbg !2744
  br i1 %cmp, label %for.body, label %for.end8, !dbg !2745

for.body:                                         ; preds = %for.cond
    #dbg_declare(ptr %j, !2746, !DIExpression(), !2749)
  store i32 0, ptr %j, align 4, !dbg !2749
  br label %for.cond1, !dbg !2750

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %j, align 4, !dbg !2751
  %3 = load i32, ptr %col_b.addr, align 4, !dbg !2753
  %cmp2 = icmp slt i32 %2, %3, !dbg !2754
  br i1 %cmp2, label %for.body3, label %for.end, !dbg !2755

for.body3:                                        ; preds = %for.cond1
  %4 = load ptr, ptr %a.addr, align 8, !dbg !2756
  %5 = load ptr, ptr %b.addr, align 8, !dbg !2758
  %6 = load i32, ptr %j, align 4, !dbg !2759
  %idx.ext = sext i32 %6 to i64, !dbg !2760
  %add.ptr = getelementptr inbounds i8, ptr %5, i64 %idx.ext, !dbg !2760
  %7 = load i32, ptr %colrow_ab.addr, align 4, !dbg !2761
  %8 = load i32, ptr %col_b.addr, align 4, !dbg !2762
  %call = call zeroext i8 @lincomb(ptr noundef %4, ptr noundef %add.ptr, i32 noundef %7, i32 noundef %8), !dbg !2763
  %9 = load ptr, ptr %c.addr, align 8, !dbg !2764
  store i8 %call, ptr %9, align 1, !dbg !2765
  br label %for.inc, !dbg !2766

for.inc:                                          ; preds = %for.body3
  %10 = load i32, ptr %j, align 4, !dbg !2767
  %inc = add nsw i32 %10, 1, !dbg !2767
  store i32 %inc, ptr %j, align 4, !dbg !2767
  %11 = load ptr, ptr %c.addr, align 8, !dbg !2768
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %11, i32 1, !dbg !2768
  store ptr %incdec.ptr, ptr %c.addr, align 8, !dbg !2768
  br label %for.cond1, !dbg !2769, !llvm.loop !2770

for.end:                                          ; preds = %for.cond1
  br label %for.inc4, !dbg !2772

for.inc4:                                         ; preds = %for.end
  %12 = load i32, ptr %i, align 4, !dbg !2773
  %inc5 = add nsw i32 %12, 1, !dbg !2773
  store i32 %inc5, ptr %i, align 4, !dbg !2773
  %13 = load i32, ptr %colrow_ab.addr, align 4, !dbg !2774
  %14 = load ptr, ptr %a.addr, align 8, !dbg !2775
  %idx.ext6 = sext i32 %13 to i64, !dbg !2775
  %add.ptr7 = getelementptr inbounds i8, ptr %14, i64 %idx.ext6, !dbg !2775
  store ptr %add.ptr7, ptr %a.addr, align 8, !dbg !2775
  br label %for.cond, !dbg !2776, !llvm.loop !2777

for.end8:                                         ; preds = %for.cond
  ret void, !dbg !2779
}

; Function Attrs: noinline nounwind optnone
define internal void @mat_add(ptr noundef %a, ptr noundef %b, ptr noundef %c, i32 noundef %m, i32 noundef %n) #0 !dbg !2780 {
entry:
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %c.addr = alloca ptr, align 8
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8
    #dbg_declare(ptr %a.addr, !2783, !DIExpression(), !2784)
  store ptr %b, ptr %b.addr, align 8
    #dbg_declare(ptr %b.addr, !2785, !DIExpression(), !2786)
  store ptr %c, ptr %c.addr, align 8
    #dbg_declare(ptr %c.addr, !2787, !DIExpression(), !2788)
  store i32 %m, ptr %m.addr, align 4
    #dbg_declare(ptr %m.addr, !2789, !DIExpression(), !2790)
  store i32 %n, ptr %n.addr, align 4
    #dbg_declare(ptr %n.addr, !2791, !DIExpression(), !2792)
    #dbg_declare(ptr %i, !2793, !DIExpression(), !2795)
  store i32 0, ptr %i, align 4, !dbg !2795
  br label %for.cond, !dbg !2796

for.cond:                                         ; preds = %for.inc16, %entry
  %0 = load i32, ptr %i, align 4, !dbg !2797
  %1 = load i32, ptr %m.addr, align 4, !dbg !2799
  %cmp = icmp slt i32 %0, %1, !dbg !2800
  br i1 %cmp, label %for.body, label %for.end18, !dbg !2801

for.body:                                         ; preds = %for.cond
    #dbg_declare(ptr %j, !2802, !DIExpression(), !2805)
  store i32 0, ptr %j, align 4, !dbg !2805
  br label %for.cond1, !dbg !2806

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %j, align 4, !dbg !2807
  %3 = load i32, ptr %n.addr, align 4, !dbg !2809
  %cmp2 = icmp slt i32 %2, %3, !dbg !2810
  br i1 %cmp2, label %for.body3, label %for.end, !dbg !2811

for.body3:                                        ; preds = %for.cond1
  %4 = load ptr, ptr %a.addr, align 8, !dbg !2812
  %5 = load i32, ptr %i, align 4, !dbg !2814
  %6 = load i32, ptr %n.addr, align 4, !dbg !2815
  %mul = mul nsw i32 %5, %6, !dbg !2816
  %idx.ext = sext i32 %mul to i64, !dbg !2817
  %add.ptr = getelementptr inbounds i8, ptr %4, i64 %idx.ext, !dbg !2817
  %7 = load i32, ptr %j, align 4, !dbg !2818
  %idx.ext4 = sext i32 %7 to i64, !dbg !2817
  %add.ptr5 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext4, !dbg !2817
  %8 = load i8, ptr %add.ptr5, align 1, !dbg !2817
  %9 = load ptr, ptr %b.addr, align 8, !dbg !2819
  %10 = load i32, ptr %i, align 4, !dbg !2820
  %11 = load i32, ptr %n.addr, align 4, !dbg !2821
  %mul6 = mul nsw i32 %10, %11, !dbg !2822
  %idx.ext7 = sext i32 %mul6 to i64, !dbg !2823
  %add.ptr8 = getelementptr inbounds i8, ptr %9, i64 %idx.ext7, !dbg !2823
  %12 = load i32, ptr %j, align 4, !dbg !2824
  %idx.ext9 = sext i32 %12 to i64, !dbg !2823
  %add.ptr10 = getelementptr inbounds i8, ptr %add.ptr8, i64 %idx.ext9, !dbg !2823
  %13 = load i8, ptr %add.ptr10, align 1, !dbg !2823
  %call = call zeroext i8 @add_f(i8 noundef zeroext %8, i8 noundef zeroext %13), !dbg !2825
  %14 = load ptr, ptr %c.addr, align 8, !dbg !2826
  %15 = load i32, ptr %i, align 4, !dbg !2827
  %16 = load i32, ptr %n.addr, align 4, !dbg !2828
  %mul11 = mul nsw i32 %15, %16, !dbg !2829
  %idx.ext12 = sext i32 %mul11 to i64, !dbg !2830
  %add.ptr13 = getelementptr inbounds i8, ptr %14, i64 %idx.ext12, !dbg !2830
  %17 = load i32, ptr %j, align 4, !dbg !2831
  %idx.ext14 = sext i32 %17 to i64, !dbg !2830
  %add.ptr15 = getelementptr inbounds i8, ptr %add.ptr13, i64 %idx.ext14, !dbg !2830
  store i8 %call, ptr %add.ptr15, align 1, !dbg !2832
  br label %for.inc, !dbg !2833

for.inc:                                          ; preds = %for.body3
  %18 = load i32, ptr %j, align 4, !dbg !2834
  %inc = add nsw i32 %18, 1, !dbg !2834
  store i32 %inc, ptr %j, align 4, !dbg !2834
  br label %for.cond1, !dbg !2835, !llvm.loop !2836

for.end:                                          ; preds = %for.cond1
  br label %for.inc16, !dbg !2838

for.inc16:                                        ; preds = %for.end
  %19 = load i32, ptr %i, align 4, !dbg !2839
  %inc17 = add nsw i32 %19, 1, !dbg !2839
  store i32 %inc17, ptr %i, align 4, !dbg !2839
  br label %for.cond, !dbg !2840, !llvm.loop !2841

for.end18:                                        ; preds = %for.cond
  ret void, !dbg !2843
}

; Function Attrs: noinline nounwind optnone
define internal void @encode(ptr noundef %m, ptr noundef %menc, i32 noundef %mlen) #0 !dbg !2844 {
entry:
  %m.addr = alloca ptr, align 8
  %menc.addr = alloca ptr, align 8
  %mlen.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %m, ptr %m.addr, align 8
    #dbg_declare(ptr %m.addr, !2845, !DIExpression(), !2846)
  store ptr %menc, ptr %menc.addr, align 8
    #dbg_declare(ptr %menc.addr, !2847, !DIExpression(), !2848)
  store i32 %mlen, ptr %mlen.addr, align 4
    #dbg_declare(ptr %mlen.addr, !2849, !DIExpression(), !2850)
    #dbg_declare(ptr %i, !2851, !DIExpression(), !2852)
  store i32 0, ptr %i, align 4, !dbg !2853
  br label %for.cond, !dbg !2855

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !2856
  %1 = load i32, ptr %mlen.addr, align 4, !dbg !2858
  %div = sdiv i32 %1, 2, !dbg !2859
  %cmp = icmp slt i32 %0, %div, !dbg !2860
  br i1 %cmp, label %for.body, label %for.end, !dbg !2861

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %m.addr, align 8, !dbg !2862
  %3 = load i8, ptr %2, align 1, !dbg !2864
  %conv = zext i8 %3 to i32, !dbg !2865
  %4 = load ptr, ptr %m.addr, align 8, !dbg !2866
  %add.ptr = getelementptr inbounds i8, ptr %4, i64 1, !dbg !2867
  %5 = load i8, ptr %add.ptr, align 1, !dbg !2867
  %conv1 = zext i8 %5 to i32, !dbg !2867
  %shl = shl i32 %conv1, 4, !dbg !2868
  %or = or i32 %conv, %shl, !dbg !2869
  %conv2 = trunc i32 %or to i8, !dbg !2865
  %6 = load ptr, ptr %menc.addr, align 8, !dbg !2870
  %7 = load i32, ptr %i, align 4, !dbg !2871
  %idxprom = sext i32 %7 to i64, !dbg !2870
  %arrayidx = getelementptr inbounds i8, ptr %6, i64 %idxprom, !dbg !2870
  store i8 %conv2, ptr %arrayidx, align 1, !dbg !2872
  br label %for.inc, !dbg !2873

for.inc:                                          ; preds = %for.body
  %8 = load i32, ptr %i, align 4, !dbg !2874
  %inc = add nsw i32 %8, 1, !dbg !2874
  store i32 %inc, ptr %i, align 4, !dbg !2874
  %9 = load ptr, ptr %m.addr, align 8, !dbg !2875
  %add.ptr3 = getelementptr inbounds i8, ptr %9, i64 2, !dbg !2875
  store ptr %add.ptr3, ptr %m.addr, align 8, !dbg !2875
  br label %for.cond, !dbg !2876, !llvm.loop !2877

for.end:                                          ; preds = %for.cond
  %10 = load i32, ptr %mlen.addr, align 4, !dbg !2879
  %rem = srem i32 %10, 2, !dbg !2881
  %cmp4 = icmp eq i32 %rem, 1, !dbg !2882
  br i1 %cmp4, label %if.then, label %if.end, !dbg !2882

if.then:                                          ; preds = %for.end
  %11 = load ptr, ptr %m.addr, align 8, !dbg !2883
  %12 = load i8, ptr %11, align 1, !dbg !2885
  %13 = load ptr, ptr %menc.addr, align 8, !dbg !2886
  %14 = load i32, ptr %i, align 4, !dbg !2887
  %idxprom6 = sext i32 %14 to i64, !dbg !2886
  %arrayidx7 = getelementptr inbounds i8, ptr %13, i64 %idxprom6, !dbg !2886
  store i8 %12, ptr %arrayidx7, align 1, !dbg !2888
  br label %if.end, !dbg !2889

if.end:                                           ; preds = %if.then, %for.end
  ret void, !dbg !2890
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i8 @add_f(i8 noundef zeroext %a, i8 noundef zeroext %b) #0 !dbg !2891 {
entry:
  %a.addr = alloca i8, align 1
  %b.addr = alloca i8, align 1
  store i8 %a, ptr %a.addr, align 1
    #dbg_declare(ptr %a.addr, !2894, !DIExpression(), !2895)
  store i8 %b, ptr %b.addr, align 1
    #dbg_declare(ptr %b.addr, !2896, !DIExpression(), !2897)
  %0 = load i8, ptr %a.addr, align 1, !dbg !2898
  %conv = zext i8 %0 to i32, !dbg !2898
  %1 = load i8, ptr %b.addr, align 1, !dbg !2899
  %conv1 = zext i8 %1 to i32, !dbg !2899
  %xor = xor i32 %conv, %conv1, !dbg !2900
  %conv2 = trunc i32 %xor to i8, !dbg !2898
  ret i8 %conv2, !dbg !2901
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i8 @lincomb(ptr noundef %a, ptr noundef %b, i32 noundef %n, i32 noundef %m) #0 !dbg !2902 {
entry:
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %ret = alloca i8, align 1
  %i = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8
    #dbg_declare(ptr %a.addr, !2905, !DIExpression(), !2906)
  store ptr %b, ptr %b.addr, align 8
    #dbg_declare(ptr %b.addr, !2907, !DIExpression(), !2908)
  store i32 %n, ptr %n.addr, align 4
    #dbg_declare(ptr %n.addr, !2909, !DIExpression(), !2910)
  store i32 %m, ptr %m.addr, align 4
    #dbg_declare(ptr %m.addr, !2911, !DIExpression(), !2912)
    #dbg_declare(ptr %ret, !2913, !DIExpression(), !2914)
  store i8 0, ptr %ret, align 1, !dbg !2914
    #dbg_declare(ptr %i, !2915, !DIExpression(), !2917)
  store i32 0, ptr %i, align 4, !dbg !2917
  br label %for.cond, !dbg !2918

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !2919
  %1 = load i32, ptr %n.addr, align 4, !dbg !2921
  %cmp = icmp slt i32 %0, %1, !dbg !2922
  br i1 %cmp, label %for.body, label %for.end, !dbg !2923

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %a.addr, align 8, !dbg !2924
  %3 = load i32, ptr %i, align 4, !dbg !2926
  %idxprom = sext i32 %3 to i64, !dbg !2924
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 %idxprom, !dbg !2924
  %4 = load i8, ptr %arrayidx, align 1, !dbg !2924
  %5 = load ptr, ptr %b.addr, align 8, !dbg !2927
  %6 = load i8, ptr %5, align 1, !dbg !2928
  %call = call zeroext i8 @mul_f(i8 noundef zeroext %4, i8 noundef zeroext %6), !dbg !2929
  %7 = load i8, ptr %ret, align 1, !dbg !2930
  %call1 = call zeroext i8 @add_f(i8 noundef zeroext %call, i8 noundef zeroext %7), !dbg !2931
  store i8 %call1, ptr %ret, align 1, !dbg !2932
  br label %for.inc, !dbg !2933

for.inc:                                          ; preds = %for.body
  %8 = load i32, ptr %i, align 4, !dbg !2934
  %inc = add nsw i32 %8, 1, !dbg !2934
  store i32 %inc, ptr %i, align 4, !dbg !2934
  %9 = load i32, ptr %m.addr, align 4, !dbg !2935
  %10 = load ptr, ptr %b.addr, align 8, !dbg !2936
  %idx.ext = sext i32 %9 to i64, !dbg !2936
  %add.ptr = getelementptr inbounds i8, ptr %10, i64 %idx.ext, !dbg !2936
  store ptr %add.ptr, ptr %b.addr, align 8, !dbg !2936
  br label %for.cond, !dbg !2937, !llvm.loop !2938

for.end:                                          ; preds = %for.cond
  %11 = load i8, ptr %ret, align 1, !dbg !2940
  ret i8 %11, !dbg !2941
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i8 @mul_f(i8 noundef zeroext %a, i8 noundef zeroext %b) #0 !dbg !2942 {
entry:
  %a.addr = alloca i8, align 1
  %b.addr = alloca i8, align 1
  %p = alloca i8, align 1
  %top_p = alloca i8, align 1
  %out = alloca i8, align 1
  store i8 %a, ptr %a.addr, align 1
    #dbg_declare(ptr %a.addr, !2943, !DIExpression(), !2944)
  store i8 %b, ptr %b.addr, align 1
    #dbg_declare(ptr %b.addr, !2945, !DIExpression(), !2946)
    #dbg_declare(ptr %p, !2947, !DIExpression(), !2948)
  %0 = load volatile i8, ptr @unsigned_char_blocker, align 1, !dbg !2949
  %conv = zext i8 %0 to i32, !dbg !2949
  %1 = load i8, ptr %a.addr, align 1, !dbg !2950
  %conv1 = zext i8 %1 to i32, !dbg !2950
  %xor = xor i32 %conv1, %conv, !dbg !2950
  %conv2 = trunc i32 %xor to i8, !dbg !2950
  store i8 %conv2, ptr %a.addr, align 1, !dbg !2950
  %2 = load i8, ptr %a.addr, align 1, !dbg !2951
  %conv3 = zext i8 %2 to i32, !dbg !2951
  %and = and i32 %conv3, 1, !dbg !2952
  %3 = load i8, ptr %b.addr, align 1, !dbg !2953
  %conv4 = zext i8 %3 to i32, !dbg !2953
  %mul = mul nsw i32 %and, %conv4, !dbg !2954
  %conv5 = trunc i32 %mul to i8, !dbg !2955
  store i8 %conv5, ptr %p, align 1, !dbg !2956
  %4 = load i8, ptr %a.addr, align 1, !dbg !2957
  %conv6 = zext i8 %4 to i32, !dbg !2957
  %and7 = and i32 %conv6, 2, !dbg !2958
  %5 = load i8, ptr %b.addr, align 1, !dbg !2959
  %conv8 = zext i8 %5 to i32, !dbg !2959
  %mul9 = mul nsw i32 %and7, %conv8, !dbg !2960
  %6 = load i8, ptr %p, align 1, !dbg !2961
  %conv10 = zext i8 %6 to i32, !dbg !2961
  %xor11 = xor i32 %conv10, %mul9, !dbg !2961
  %conv12 = trunc i32 %xor11 to i8, !dbg !2961
  store i8 %conv12, ptr %p, align 1, !dbg !2961
  %7 = load i8, ptr %a.addr, align 1, !dbg !2962
  %conv13 = zext i8 %7 to i32, !dbg !2962
  %and14 = and i32 %conv13, 4, !dbg !2963
  %8 = load i8, ptr %b.addr, align 1, !dbg !2964
  %conv15 = zext i8 %8 to i32, !dbg !2964
  %mul16 = mul nsw i32 %and14, %conv15, !dbg !2965
  %9 = load i8, ptr %p, align 1, !dbg !2966
  %conv17 = zext i8 %9 to i32, !dbg !2966
  %xor18 = xor i32 %conv17, %mul16, !dbg !2966
  %conv19 = trunc i32 %xor18 to i8, !dbg !2966
  store i8 %conv19, ptr %p, align 1, !dbg !2966
  %10 = load i8, ptr %a.addr, align 1, !dbg !2967
  %conv20 = zext i8 %10 to i32, !dbg !2967
  %and21 = and i32 %conv20, 8, !dbg !2968
  %11 = load i8, ptr %b.addr, align 1, !dbg !2969
  %conv22 = zext i8 %11 to i32, !dbg !2969
  %mul23 = mul nsw i32 %and21, %conv22, !dbg !2970
  %12 = load i8, ptr %p, align 1, !dbg !2971
  %conv24 = zext i8 %12 to i32, !dbg !2971
  %xor25 = xor i32 %conv24, %mul23, !dbg !2971
  %conv26 = trunc i32 %xor25 to i8, !dbg !2971
  store i8 %conv26, ptr %p, align 1, !dbg !2971
    #dbg_declare(ptr %top_p, !2972, !DIExpression(), !2973)
  %13 = load i8, ptr %p, align 1, !dbg !2974
  %conv27 = zext i8 %13 to i32, !dbg !2974
  %and28 = and i32 %conv27, 240, !dbg !2975
  %conv29 = trunc i32 %and28 to i8, !dbg !2974
  store i8 %conv29, ptr %top_p, align 1, !dbg !2973
    #dbg_declare(ptr %out, !2976, !DIExpression(), !2977)
  %14 = load i8, ptr %p, align 1, !dbg !2978
  %conv30 = zext i8 %14 to i32, !dbg !2978
  %15 = load i8, ptr %top_p, align 1, !dbg !2979
  %conv31 = zext i8 %15 to i32, !dbg !2979
  %shr = ashr i32 %conv31, 4, !dbg !2980
  %xor32 = xor i32 %conv30, %shr, !dbg !2981
  %16 = load i8, ptr %top_p, align 1, !dbg !2982
  %conv33 = zext i8 %16 to i32, !dbg !2982
  %shr34 = ashr i32 %conv33, 3, !dbg !2983
  %xor35 = xor i32 %xor32, %shr34, !dbg !2984
  %and36 = and i32 %xor35, 15, !dbg !2985
  %conv37 = trunc i32 %and36 to i8, !dbg !2986
  store i8 %conv37, ptr %out, align 1, !dbg !2977
  %17 = load i8, ptr %out, align 1, !dbg !2987
  ret i8 %17, !dbg !2988
}

; Function Attrs: noinline nounwind optnone
define internal void @transpose_16x16_nibbles(ptr noundef %M) #0 !dbg !64 {
entry:
  %M.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %t = alloca i64, align 8
  %i8 = alloca i64, align 8
  %t0 = alloca i64, align 8
  %t1 = alloca i64, align 8
  %i41 = alloca i64, align 8
  %t045 = alloca i64, align 8
  %t152 = alloca i64, align 8
  %i75 = alloca i64, align 8
  %t79 = alloca i64, align 8
  store ptr %M, ptr %M.addr, align 8
    #dbg_declare(ptr %M.addr, !2989, !DIExpression(), !2990)
    #dbg_declare(ptr %i, !2991, !DIExpression(), !2993)
  store i64 0, ptr %i, align 8, !dbg !2993
  br label %for.cond, !dbg !2994

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !dbg !2995
  %cmp = icmp ult i64 %0, 16, !dbg !2997
  br i1 %cmp, label %for.body, label %for.end, !dbg !2998

for.body:                                         ; preds = %for.cond
    #dbg_declare(ptr %t, !2999, !DIExpression(), !3001)
  %1 = load ptr, ptr %M.addr, align 8, !dbg !3002
  %2 = load i64, ptr %i, align 8, !dbg !3003
  %arrayidx = getelementptr inbounds nuw i64, ptr %1, i64 %2, !dbg !3002
  %3 = load i64, ptr %arrayidx, align 8, !dbg !3002
  %shr = lshr i64 %3, 4, !dbg !3004
  %4 = load ptr, ptr %M.addr, align 8, !dbg !3005
  %5 = load i64, ptr %i, align 8, !dbg !3006
  %add = add i64 %5, 1, !dbg !3007
  %arrayidx1 = getelementptr inbounds nuw i64, ptr %4, i64 %add, !dbg !3005
  %6 = load i64, ptr %arrayidx1, align 8, !dbg !3005
  %xor = xor i64 %shr, %6, !dbg !3008
  %and = and i64 %xor, 1085102592571150095, !dbg !3009
  store i64 %and, ptr %t, align 8, !dbg !3001
  %7 = load i64, ptr %t, align 8, !dbg !3010
  %shl = shl i64 %7, 4, !dbg !3011
  %8 = load ptr, ptr %M.addr, align 8, !dbg !3012
  %9 = load i64, ptr %i, align 8, !dbg !3013
  %arrayidx2 = getelementptr inbounds nuw i64, ptr %8, i64 %9, !dbg !3012
  %10 = load i64, ptr %arrayidx2, align 8, !dbg !3014
  %xor3 = xor i64 %10, %shl, !dbg !3014
  store i64 %xor3, ptr %arrayidx2, align 8, !dbg !3014
  %11 = load i64, ptr %t, align 8, !dbg !3015
  %12 = load ptr, ptr %M.addr, align 8, !dbg !3016
  %13 = load i64, ptr %i, align 8, !dbg !3017
  %add4 = add i64 %13, 1, !dbg !3018
  %arrayidx5 = getelementptr inbounds nuw i64, ptr %12, i64 %add4, !dbg !3016
  %14 = load i64, ptr %arrayidx5, align 8, !dbg !3019
  %xor6 = xor i64 %14, %11, !dbg !3019
  store i64 %xor6, ptr %arrayidx5, align 8, !dbg !3019
  br label %for.inc, !dbg !3020

for.inc:                                          ; preds = %for.body
  %15 = load i64, ptr %i, align 8, !dbg !3021
  %add7 = add i64 %15, 2, !dbg !3021
  store i64 %add7, ptr %i, align 8, !dbg !3021
  br label %for.cond, !dbg !3022, !llvm.loop !3023

for.end:                                          ; preds = %for.cond
    #dbg_declare(ptr %i8, !3025, !DIExpression(), !3027)
  store i64 0, ptr %i8, align 8, !dbg !3027
  br label %for.cond9, !dbg !3028

for.cond9:                                        ; preds = %for.inc38, %for.end
  %16 = load i64, ptr %i8, align 8, !dbg !3029
  %cmp10 = icmp ult i64 %16, 16, !dbg !3031
  br i1 %cmp10, label %for.body11, label %for.end40, !dbg !3032

for.body11:                                       ; preds = %for.cond9
    #dbg_declare(ptr %t0, !3033, !DIExpression(), !3035)
  %17 = load ptr, ptr %M.addr, align 8, !dbg !3036
  %18 = load i64, ptr %i8, align 8, !dbg !3037
  %arrayidx12 = getelementptr inbounds nuw i64, ptr %17, i64 %18, !dbg !3036
  %19 = load i64, ptr %arrayidx12, align 8, !dbg !3036
  %shr13 = lshr i64 %19, 8, !dbg !3038
  %20 = load ptr, ptr %M.addr, align 8, !dbg !3039
  %21 = load i64, ptr %i8, align 8, !dbg !3040
  %add14 = add i64 %21, 2, !dbg !3041
  %arrayidx15 = getelementptr inbounds nuw i64, ptr %20, i64 %add14, !dbg !3039
  %22 = load i64, ptr %arrayidx15, align 8, !dbg !3039
  %xor16 = xor i64 %shr13, %22, !dbg !3042
  %and17 = and i64 %xor16, 71777214294589695, !dbg !3043
  store i64 %and17, ptr %t0, align 8, !dbg !3035
    #dbg_declare(ptr %t1, !3044, !DIExpression(), !3045)
  %23 = load ptr, ptr %M.addr, align 8, !dbg !3046
  %24 = load i64, ptr %i8, align 8, !dbg !3047
  %add18 = add i64 %24, 1, !dbg !3048
  %arrayidx19 = getelementptr inbounds nuw i64, ptr %23, i64 %add18, !dbg !3046
  %25 = load i64, ptr %arrayidx19, align 8, !dbg !3046
  %shr20 = lshr i64 %25, 8, !dbg !3049
  %26 = load ptr, ptr %M.addr, align 8, !dbg !3050
  %27 = load i64, ptr %i8, align 8, !dbg !3051
  %add21 = add i64 %27, 3, !dbg !3052
  %arrayidx22 = getelementptr inbounds nuw i64, ptr %26, i64 %add21, !dbg !3050
  %28 = load i64, ptr %arrayidx22, align 8, !dbg !3050
  %xor23 = xor i64 %shr20, %28, !dbg !3053
  %and24 = and i64 %xor23, 71777214294589695, !dbg !3054
  store i64 %and24, ptr %t1, align 8, !dbg !3045
  %29 = load i64, ptr %t0, align 8, !dbg !3055
  %shl25 = shl i64 %29, 8, !dbg !3056
  %30 = load ptr, ptr %M.addr, align 8, !dbg !3057
  %31 = load i64, ptr %i8, align 8, !dbg !3058
  %arrayidx26 = getelementptr inbounds nuw i64, ptr %30, i64 %31, !dbg !3057
  %32 = load i64, ptr %arrayidx26, align 8, !dbg !3059
  %xor27 = xor i64 %32, %shl25, !dbg !3059
  store i64 %xor27, ptr %arrayidx26, align 8, !dbg !3059
  %33 = load i64, ptr %t1, align 8, !dbg !3060
  %shl28 = shl i64 %33, 8, !dbg !3061
  %34 = load ptr, ptr %M.addr, align 8, !dbg !3062
  %35 = load i64, ptr %i8, align 8, !dbg !3063
  %add29 = add i64 %35, 1, !dbg !3064
  %arrayidx30 = getelementptr inbounds nuw i64, ptr %34, i64 %add29, !dbg !3062
  %36 = load i64, ptr %arrayidx30, align 8, !dbg !3065
  %xor31 = xor i64 %36, %shl28, !dbg !3065
  store i64 %xor31, ptr %arrayidx30, align 8, !dbg !3065
  %37 = load i64, ptr %t0, align 8, !dbg !3066
  %38 = load ptr, ptr %M.addr, align 8, !dbg !3067
  %39 = load i64, ptr %i8, align 8, !dbg !3068
  %add32 = add i64 %39, 2, !dbg !3069
  %arrayidx33 = getelementptr inbounds nuw i64, ptr %38, i64 %add32, !dbg !3067
  %40 = load i64, ptr %arrayidx33, align 8, !dbg !3070
  %xor34 = xor i64 %40, %37, !dbg !3070
  store i64 %xor34, ptr %arrayidx33, align 8, !dbg !3070
  %41 = load i64, ptr %t1, align 8, !dbg !3071
  %42 = load ptr, ptr %M.addr, align 8, !dbg !3072
  %43 = load i64, ptr %i8, align 8, !dbg !3073
  %add35 = add i64 %43, 3, !dbg !3074
  %arrayidx36 = getelementptr inbounds nuw i64, ptr %42, i64 %add35, !dbg !3072
  %44 = load i64, ptr %arrayidx36, align 8, !dbg !3075
  %xor37 = xor i64 %44, %41, !dbg !3075
  store i64 %xor37, ptr %arrayidx36, align 8, !dbg !3075
  br label %for.inc38, !dbg !3076

for.inc38:                                        ; preds = %for.body11
  %45 = load i64, ptr %i8, align 8, !dbg !3077
  %add39 = add i64 %45, 4, !dbg !3077
  store i64 %add39, ptr %i8, align 8, !dbg !3077
  br label %for.cond9, !dbg !3078, !llvm.loop !3079

for.end40:                                        ; preds = %for.cond9
    #dbg_declare(ptr %i41, !3081, !DIExpression(), !3083)
  store i64 0, ptr %i41, align 8, !dbg !3083
  br label %for.cond42, !dbg !3084

for.cond42:                                       ; preds = %for.inc73, %for.end40
  %46 = load i64, ptr %i41, align 8, !dbg !3085
  %cmp43 = icmp ult i64 %46, 4, !dbg !3087
  br i1 %cmp43, label %for.body44, label %for.end74, !dbg !3088

for.body44:                                       ; preds = %for.cond42
    #dbg_declare(ptr %t045, !3089, !DIExpression(), !3091)
  %47 = load ptr, ptr %M.addr, align 8, !dbg !3092
  %48 = load i64, ptr %i41, align 8, !dbg !3093
  %arrayidx46 = getelementptr inbounds nuw i64, ptr %47, i64 %48, !dbg !3092
  %49 = load i64, ptr %arrayidx46, align 8, !dbg !3092
  %shr47 = lshr i64 %49, 16, !dbg !3094
  %50 = load ptr, ptr %M.addr, align 8, !dbg !3095
  %51 = load i64, ptr %i41, align 8, !dbg !3096
  %add48 = add i64 %51, 4, !dbg !3097
  %arrayidx49 = getelementptr inbounds nuw i64, ptr %50, i64 %add48, !dbg !3095
  %52 = load i64, ptr %arrayidx49, align 8, !dbg !3095
  %xor50 = xor i64 %shr47, %52, !dbg !3098
  %and51 = and i64 %xor50, 281470681808895, !dbg !3099
  store i64 %and51, ptr %t045, align 8, !dbg !3091
    #dbg_declare(ptr %t152, !3100, !DIExpression(), !3101)
  %53 = load ptr, ptr %M.addr, align 8, !dbg !3102
  %54 = load i64, ptr %i41, align 8, !dbg !3103
  %add53 = add i64 %54, 8, !dbg !3104
  %arrayidx54 = getelementptr inbounds nuw i64, ptr %53, i64 %add53, !dbg !3102
  %55 = load i64, ptr %arrayidx54, align 8, !dbg !3102
  %shr55 = lshr i64 %55, 16, !dbg !3105
  %56 = load ptr, ptr %M.addr, align 8, !dbg !3106
  %57 = load i64, ptr %i41, align 8, !dbg !3107
  %add56 = add i64 %57, 12, !dbg !3108
  %arrayidx57 = getelementptr inbounds nuw i64, ptr %56, i64 %add56, !dbg !3106
  %58 = load i64, ptr %arrayidx57, align 8, !dbg !3106
  %xor58 = xor i64 %shr55, %58, !dbg !3109
  %and59 = and i64 %xor58, 281470681808895, !dbg !3110
  store i64 %and59, ptr %t152, align 8, !dbg !3101
  %59 = load i64, ptr %t045, align 8, !dbg !3111
  %shl60 = shl i64 %59, 16, !dbg !3112
  %60 = load ptr, ptr %M.addr, align 8, !dbg !3113
  %61 = load i64, ptr %i41, align 8, !dbg !3114
  %arrayidx61 = getelementptr inbounds nuw i64, ptr %60, i64 %61, !dbg !3113
  %62 = load i64, ptr %arrayidx61, align 8, !dbg !3115
  %xor62 = xor i64 %62, %shl60, !dbg !3115
  store i64 %xor62, ptr %arrayidx61, align 8, !dbg !3115
  %63 = load i64, ptr %t152, align 8, !dbg !3116
  %shl63 = shl i64 %63, 16, !dbg !3117
  %64 = load ptr, ptr %M.addr, align 8, !dbg !3118
  %65 = load i64, ptr %i41, align 8, !dbg !3119
  %add64 = add i64 %65, 8, !dbg !3120
  %arrayidx65 = getelementptr inbounds nuw i64, ptr %64, i64 %add64, !dbg !3118
  %66 = load i64, ptr %arrayidx65, align 8, !dbg !3121
  %xor66 = xor i64 %66, %shl63, !dbg !3121
  store i64 %xor66, ptr %arrayidx65, align 8, !dbg !3121
  %67 = load i64, ptr %t045, align 8, !dbg !3122
  %68 = load ptr, ptr %M.addr, align 8, !dbg !3123
  %69 = load i64, ptr %i41, align 8, !dbg !3124
  %add67 = add i64 %69, 4, !dbg !3125
  %arrayidx68 = getelementptr inbounds nuw i64, ptr %68, i64 %add67, !dbg !3123
  %70 = load i64, ptr %arrayidx68, align 8, !dbg !3126
  %xor69 = xor i64 %70, %67, !dbg !3126
  store i64 %xor69, ptr %arrayidx68, align 8, !dbg !3126
  %71 = load i64, ptr %t152, align 8, !dbg !3127
  %72 = load ptr, ptr %M.addr, align 8, !dbg !3128
  %73 = load i64, ptr %i41, align 8, !dbg !3129
  %add70 = add i64 %73, 12, !dbg !3130
  %arrayidx71 = getelementptr inbounds nuw i64, ptr %72, i64 %add70, !dbg !3128
  %74 = load i64, ptr %arrayidx71, align 8, !dbg !3131
  %xor72 = xor i64 %74, %71, !dbg !3131
  store i64 %xor72, ptr %arrayidx71, align 8, !dbg !3131
  br label %for.inc73, !dbg !3132

for.inc73:                                        ; preds = %for.body44
  %75 = load i64, ptr %i41, align 8, !dbg !3133
  %inc = add i64 %75, 1, !dbg !3133
  store i64 %inc, ptr %i41, align 8, !dbg !3133
  br label %for.cond42, !dbg !3134, !llvm.loop !3135

for.end74:                                        ; preds = %for.cond42
    #dbg_declare(ptr %i75, !3137, !DIExpression(), !3139)
  store i64 0, ptr %i75, align 8, !dbg !3139
  br label %for.cond76, !dbg !3140

for.cond76:                                       ; preds = %for.inc92, %for.end74
  %76 = load i64, ptr %i75, align 8, !dbg !3141
  %cmp77 = icmp ult i64 %76, 8, !dbg !3143
  br i1 %cmp77, label %for.body78, label %for.end94, !dbg !3144

for.body78:                                       ; preds = %for.cond76
    #dbg_declare(ptr %t79, !3145, !DIExpression(), !3147)
  %77 = load ptr, ptr %M.addr, align 8, !dbg !3148
  %78 = load i64, ptr %i75, align 8, !dbg !3149
  %arrayidx80 = getelementptr inbounds nuw i64, ptr %77, i64 %78, !dbg !3148
  %79 = load i64, ptr %arrayidx80, align 8, !dbg !3148
  %shr81 = lshr i64 %79, 32, !dbg !3150
  %80 = load ptr, ptr %M.addr, align 8, !dbg !3151
  %81 = load i64, ptr %i75, align 8, !dbg !3152
  %add82 = add i64 %81, 8, !dbg !3153
  %arrayidx83 = getelementptr inbounds nuw i64, ptr %80, i64 %add82, !dbg !3151
  %82 = load i64, ptr %arrayidx83, align 8, !dbg !3151
  %xor84 = xor i64 %shr81, %82, !dbg !3154
  %and85 = and i64 %xor84, 4294967295, !dbg !3155
  store i64 %and85, ptr %t79, align 8, !dbg !3147
  %83 = load i64, ptr %t79, align 8, !dbg !3156
  %shl86 = shl i64 %83, 32, !dbg !3157
  %84 = load ptr, ptr %M.addr, align 8, !dbg !3158
  %85 = load i64, ptr %i75, align 8, !dbg !3159
  %arrayidx87 = getelementptr inbounds nuw i64, ptr %84, i64 %85, !dbg !3158
  %86 = load i64, ptr %arrayidx87, align 8, !dbg !3160
  %xor88 = xor i64 %86, %shl86, !dbg !3160
  store i64 %xor88, ptr %arrayidx87, align 8, !dbg !3160
  %87 = load i64, ptr %t79, align 8, !dbg !3161
  %88 = load ptr, ptr %M.addr, align 8, !dbg !3162
  %89 = load i64, ptr %i75, align 8, !dbg !3163
  %add89 = add i64 %89, 8, !dbg !3164
  %arrayidx90 = getelementptr inbounds nuw i64, ptr %88, i64 %add89, !dbg !3162
  %90 = load i64, ptr %arrayidx90, align 8, !dbg !3165
  %xor91 = xor i64 %90, %87, !dbg !3165
  store i64 %xor91, ptr %arrayidx90, align 8, !dbg !3165
  br label %for.inc92, !dbg !3166

for.inc92:                                        ; preds = %for.body78
  %91 = load i64, ptr %i75, align 8, !dbg !3167
  %inc93 = add i64 %91, 1, !dbg !3167
  store i64 %inc93, ptr %i75, align 8, !dbg !3167
  br label %for.cond76, !dbg !3168, !llvm.loop !3169

for.end94:                                        ; preds = %for.cond76
  ret void, !dbg !3171
}

; Function Attrs: noinline nounwind optnone
define internal void @mul_add_mat_x_m_mat(i32 noundef %m_vec_limbs, ptr noundef %mat, ptr noundef %bs_mat, ptr noundef %acc, i32 noundef %mat_rows, i32 noundef %mat_cols, i32 noundef %bs_mat_cols) #0 !dbg !3172 {
entry:
  %m_vec_limbs.addr = alloca i32, align 4
  %mat.addr = alloca ptr, align 8
  %bs_mat.addr = alloca ptr, align 8
  %acc.addr = alloca ptr, align 8
  %mat_rows.addr = alloca i32, align 4
  %mat_cols.addr = alloca i32, align 4
  %bs_mat_cols.addr = alloca i32, align 4
  %r = alloca i32, align 4
  %c = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %m_vec_limbs, ptr %m_vec_limbs.addr, align 4
    #dbg_declare(ptr %m_vec_limbs.addr, !3173, !DIExpression(), !3174)
  store ptr %mat, ptr %mat.addr, align 8
    #dbg_declare(ptr %mat.addr, !3175, !DIExpression(), !3176)
  store ptr %bs_mat, ptr %bs_mat.addr, align 8
    #dbg_declare(ptr %bs_mat.addr, !3177, !DIExpression(), !3178)
  store ptr %acc, ptr %acc.addr, align 8
    #dbg_declare(ptr %acc.addr, !3179, !DIExpression(), !3180)
  store i32 %mat_rows, ptr %mat_rows.addr, align 4
    #dbg_declare(ptr %mat_rows.addr, !3181, !DIExpression(), !3182)
  store i32 %mat_cols, ptr %mat_cols.addr, align 4
    #dbg_declare(ptr %mat_cols.addr, !3183, !DIExpression(), !3184)
  store i32 %bs_mat_cols, ptr %bs_mat_cols.addr, align 4
    #dbg_declare(ptr %bs_mat_cols.addr, !3185, !DIExpression(), !3186)
    #dbg_declare(ptr %r, !3187, !DIExpression(), !3189)
  store i32 0, ptr %r, align 4, !dbg !3189
  br label %for.cond, !dbg !3190

for.cond:                                         ; preds = %for.inc18, %entry
  %0 = load i32, ptr %r, align 4, !dbg !3191
  %1 = load i32, ptr %mat_rows.addr, align 4, !dbg !3193
  %cmp = icmp slt i32 %0, %1, !dbg !3194
  br i1 %cmp, label %for.body, label %for.end20, !dbg !3195

for.body:                                         ; preds = %for.cond
    #dbg_declare(ptr %c, !3196, !DIExpression(), !3199)
  store i32 0, ptr %c, align 4, !dbg !3199
  br label %for.cond1, !dbg !3200

for.cond1:                                        ; preds = %for.inc16, %for.body
  %2 = load i32, ptr %c, align 4, !dbg !3201
  %3 = load i32, ptr %mat_cols.addr, align 4, !dbg !3203
  %cmp2 = icmp slt i32 %2, %3, !dbg !3204
  br i1 %cmp2, label %for.body3, label %for.end17, !dbg !3205

for.body3:                                        ; preds = %for.cond1
    #dbg_declare(ptr %k, !3206, !DIExpression(), !3209)
  store i32 0, ptr %k, align 4, !dbg !3209
  br label %for.cond4, !dbg !3210

for.cond4:                                        ; preds = %for.inc, %for.body3
  %4 = load i32, ptr %k, align 4, !dbg !3211
  %5 = load i32, ptr %bs_mat_cols.addr, align 4, !dbg !3213
  %cmp5 = icmp slt i32 %4, %5, !dbg !3214
  br i1 %cmp5, label %for.body6, label %for.end, !dbg !3215

for.body6:                                        ; preds = %for.cond4
  %6 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !3216
  %7 = load ptr, ptr %bs_mat.addr, align 8, !dbg !3218
  %8 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !3219
  %9 = load i32, ptr %c, align 4, !dbg !3220
  %10 = load i32, ptr %bs_mat_cols.addr, align 4, !dbg !3221
  %mul = mul nsw i32 %9, %10, !dbg !3222
  %11 = load i32, ptr %k, align 4, !dbg !3223
  %add = add nsw i32 %mul, %11, !dbg !3224
  %mul7 = mul nsw i32 %8, %add, !dbg !3225
  %idx.ext = sext i32 %mul7 to i64, !dbg !3226
  %add.ptr = getelementptr inbounds i64, ptr %7, i64 %idx.ext, !dbg !3226
  %12 = load ptr, ptr %mat.addr, align 8, !dbg !3227
  %13 = load i32, ptr %r, align 4, !dbg !3228
  %14 = load i32, ptr %mat_cols.addr, align 4, !dbg !3229
  %mul8 = mul nsw i32 %13, %14, !dbg !3230
  %15 = load i32, ptr %c, align 4, !dbg !3231
  %add9 = add nsw i32 %mul8, %15, !dbg !3232
  %idxprom = sext i32 %add9 to i64, !dbg !3227
  %arrayidx = getelementptr inbounds i8, ptr %12, i64 %idxprom, !dbg !3227
  %16 = load i8, ptr %arrayidx, align 1, !dbg !3227
  %17 = load ptr, ptr %acc.addr, align 8, !dbg !3233
  %18 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !3234
  %19 = load i32, ptr %r, align 4, !dbg !3235
  %20 = load i32, ptr %bs_mat_cols.addr, align 4, !dbg !3236
  %mul10 = mul nsw i32 %19, %20, !dbg !3237
  %21 = load i32, ptr %k, align 4, !dbg !3238
  %add11 = add nsw i32 %mul10, %21, !dbg !3239
  %mul12 = mul nsw i32 %18, %add11, !dbg !3240
  %idx.ext13 = sext i32 %mul12 to i64, !dbg !3241
  %add.ptr14 = getelementptr inbounds i64, ptr %17, i64 %idx.ext13, !dbg !3241
  call void @m_vec_mul_add(i32 noundef %6, ptr noundef %add.ptr, i8 noundef zeroext %16, ptr noundef %add.ptr14), !dbg !3242
  br label %for.inc, !dbg !3243

for.inc:                                          ; preds = %for.body6
  %22 = load i32, ptr %k, align 4, !dbg !3244
  %add15 = add nsw i32 %22, 1, !dbg !3244
  store i32 %add15, ptr %k, align 4, !dbg !3244
  br label %for.cond4, !dbg !3245, !llvm.loop !3246

for.end:                                          ; preds = %for.cond4
  br label %for.inc16, !dbg !3248

for.inc16:                                        ; preds = %for.end
  %23 = load i32, ptr %c, align 4, !dbg !3249
  %inc = add nsw i32 %23, 1, !dbg !3249
  store i32 %inc, ptr %c, align 4, !dbg !3249
  br label %for.cond1, !dbg !3250, !llvm.loop !3251

for.end17:                                        ; preds = %for.cond1
  br label %for.inc18, !dbg !3253

for.inc18:                                        ; preds = %for.end17
  %24 = load i32, ptr %r, align 4, !dbg !3254
  %inc19 = add nsw i32 %24, 1, !dbg !3254
  store i32 %inc19, ptr %r, align 4, !dbg !3254
  br label %for.cond, !dbg !3255, !llvm.loop !3256

for.end20:                                        ; preds = %for.cond
  ret void, !dbg !3258
}

; Function Attrs: noinline nounwind optnone
define internal void @P1_times_Vt(ptr noundef %p, ptr noundef %P1, ptr noundef %V, ptr noundef %acc) #0 !dbg !3259 {
entry:
  %p.addr = alloca ptr, align 8
  %P1.addr = alloca ptr, align 8
  %V.addr = alloca ptr, align 8
  %acc.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
    #dbg_declare(ptr %p.addr, !3260, !DIExpression(), !3261)
  store ptr %P1, ptr %P1.addr, align 8
    #dbg_declare(ptr %P1.addr, !3262, !DIExpression(), !3263)
  store ptr %V, ptr %V.addr, align 8
    #dbg_declare(ptr %V.addr, !3264, !DIExpression(), !3265)
  store ptr %acc, ptr %acc.addr, align 8
    #dbg_declare(ptr %acc.addr, !3266, !DIExpression(), !3267)
  %0 = load ptr, ptr %p.addr, align 8, !dbg !3268
  %m_vec_limbs = getelementptr inbounds nuw %struct.mayo_params_t, ptr %0, i32 0, i32 21, !dbg !3269
  %1 = load i32, ptr %m_vec_limbs, align 4, !dbg !3269
  %2 = load ptr, ptr %P1.addr, align 8, !dbg !3270
  %3 = load ptr, ptr %V.addr, align 8, !dbg !3271
  %4 = load ptr, ptr %acc.addr, align 8, !dbg !3272
  %5 = load ptr, ptr %p.addr, align 8, !dbg !3273
  %n = getelementptr inbounds nuw %struct.mayo_params_t, ptr %5, i32 0, i32 1, !dbg !3274
  %6 = load i32, ptr %n, align 4, !dbg !3274
  %7 = load ptr, ptr %p.addr, align 8, !dbg !3273
  %o = getelementptr inbounds nuw %struct.mayo_params_t, ptr %7, i32 0, i32 2, !dbg !3274
  %8 = load i32, ptr %o, align 8, !dbg !3274
  %sub = sub nsw i32 %6, %8, !dbg !3274
  %9 = load ptr, ptr %p.addr, align 8, !dbg !3275
  %n1 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %9, i32 0, i32 1, !dbg !3276
  %10 = load i32, ptr %n1, align 4, !dbg !3276
  %11 = load ptr, ptr %p.addr, align 8, !dbg !3275
  %o2 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %11, i32 0, i32 2, !dbg !3276
  %12 = load i32, ptr %o2, align 8, !dbg !3276
  %sub3 = sub nsw i32 %10, %12, !dbg !3276
  %13 = load ptr, ptr %p.addr, align 8, !dbg !3277
  %k = getelementptr inbounds nuw %struct.mayo_params_t, ptr %13, i32 0, i32 3, !dbg !3278
  %14 = load i32, ptr %k, align 4, !dbg !3278
  call void @mul_add_m_upper_triangular_mat_x_mat_trans(i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %sub, i32 noundef %sub3, i32 noundef %14, i32 noundef 1), !dbg !3279
  ret void, !dbg !3280
}

; Function Attrs: noinline nounwind optnone
define internal void @mul_add_m_upper_triangular_mat_x_mat_trans(i32 noundef %m_vec_limbs, ptr noundef %bs_mat, ptr noundef %mat, ptr noundef %acc, i32 noundef %bs_mat_rows, i32 noundef %bs_mat_cols, i32 noundef %mat_rows, i32 noundef %triangular) #0 !dbg !3281 {
entry:
  %m_vec_limbs.addr = alloca i32, align 4
  %bs_mat.addr = alloca ptr, align 8
  %mat.addr = alloca ptr, align 8
  %acc.addr = alloca ptr, align 8
  %bs_mat_rows.addr = alloca i32, align 4
  %bs_mat_cols.addr = alloca i32, align 4
  %mat_rows.addr = alloca i32, align 4
  %triangular.addr = alloca i32, align 4
  %bs_mat_entries_used = alloca i32, align 4
  %r = alloca i32, align 4
  %c = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %m_vec_limbs, ptr %m_vec_limbs.addr, align 4
    #dbg_declare(ptr %m_vec_limbs.addr, !3282, !DIExpression(), !3283)
  store ptr %bs_mat, ptr %bs_mat.addr, align 8
    #dbg_declare(ptr %bs_mat.addr, !3284, !DIExpression(), !3285)
  store ptr %mat, ptr %mat.addr, align 8
    #dbg_declare(ptr %mat.addr, !3286, !DIExpression(), !3287)
  store ptr %acc, ptr %acc.addr, align 8
    #dbg_declare(ptr %acc.addr, !3288, !DIExpression(), !3289)
  store i32 %bs_mat_rows, ptr %bs_mat_rows.addr, align 4
    #dbg_declare(ptr %bs_mat_rows.addr, !3290, !DIExpression(), !3291)
  store i32 %bs_mat_cols, ptr %bs_mat_cols.addr, align 4
    #dbg_declare(ptr %bs_mat_cols.addr, !3292, !DIExpression(), !3293)
  store i32 %mat_rows, ptr %mat_rows.addr, align 4
    #dbg_declare(ptr %mat_rows.addr, !3294, !DIExpression(), !3295)
  store i32 %triangular, ptr %triangular.addr, align 4
    #dbg_declare(ptr %triangular.addr, !3296, !DIExpression(), !3297)
    #dbg_declare(ptr %bs_mat_entries_used, !3298, !DIExpression(), !3299)
  store i32 0, ptr %bs_mat_entries_used, align 4, !dbg !3299
    #dbg_declare(ptr %r, !3300, !DIExpression(), !3302)
  store i32 0, ptr %r, align 4, !dbg !3302
  br label %for.cond, !dbg !3303

for.cond:                                         ; preds = %for.inc18, %entry
  %0 = load i32, ptr %r, align 4, !dbg !3304
  %1 = load i32, ptr %bs_mat_rows.addr, align 4, !dbg !3306
  %cmp = icmp slt i32 %0, %1, !dbg !3307
  br i1 %cmp, label %for.body, label %for.end20, !dbg !3308

for.body:                                         ; preds = %for.cond
    #dbg_declare(ptr %c, !3309, !DIExpression(), !3312)
  %2 = load i32, ptr %triangular.addr, align 4, !dbg !3313
  %3 = load i32, ptr %r, align 4, !dbg !3314
  %mul = mul nsw i32 %2, %3, !dbg !3315
  store i32 %mul, ptr %c, align 4, !dbg !3312
  br label %for.cond1, !dbg !3316

for.cond1:                                        ; preds = %for.inc16, %for.body
  %4 = load i32, ptr %c, align 4, !dbg !3317
  %5 = load i32, ptr %bs_mat_cols.addr, align 4, !dbg !3319
  %cmp2 = icmp slt i32 %4, %5, !dbg !3320
  br i1 %cmp2, label %for.body3, label %for.end17, !dbg !3321

for.body3:                                        ; preds = %for.cond1
    #dbg_declare(ptr %k, !3322, !DIExpression(), !3325)
  store i32 0, ptr %k, align 4, !dbg !3325
  br label %for.cond4, !dbg !3326

for.cond4:                                        ; preds = %for.inc, %for.body3
  %6 = load i32, ptr %k, align 4, !dbg !3327
  %7 = load i32, ptr %mat_rows.addr, align 4, !dbg !3329
  %cmp5 = icmp slt i32 %6, %7, !dbg !3330
  br i1 %cmp5, label %for.body6, label %for.end, !dbg !3331

for.body6:                                        ; preds = %for.cond4
  %8 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !3332
  %9 = load ptr, ptr %bs_mat.addr, align 8, !dbg !3334
  %10 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !3335
  %11 = load i32, ptr %bs_mat_entries_used, align 4, !dbg !3336
  %mul7 = mul nsw i32 %10, %11, !dbg !3337
  %idx.ext = sext i32 %mul7 to i64, !dbg !3338
  %add.ptr = getelementptr inbounds i64, ptr %9, i64 %idx.ext, !dbg !3338
  %12 = load ptr, ptr %mat.addr, align 8, !dbg !3339
  %13 = load i32, ptr %k, align 4, !dbg !3340
  %14 = load i32, ptr %bs_mat_cols.addr, align 4, !dbg !3341
  %mul8 = mul nsw i32 %13, %14, !dbg !3342
  %15 = load i32, ptr %c, align 4, !dbg !3343
  %add = add nsw i32 %mul8, %15, !dbg !3344
  %idxprom = sext i32 %add to i64, !dbg !3339
  %arrayidx = getelementptr inbounds i8, ptr %12, i64 %idxprom, !dbg !3339
  %16 = load i8, ptr %arrayidx, align 1, !dbg !3339
  %17 = load ptr, ptr %acc.addr, align 8, !dbg !3345
  %18 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !3346
  %19 = load i32, ptr %r, align 4, !dbg !3347
  %20 = load i32, ptr %mat_rows.addr, align 4, !dbg !3348
  %mul9 = mul nsw i32 %19, %20, !dbg !3349
  %21 = load i32, ptr %k, align 4, !dbg !3350
  %add10 = add nsw i32 %mul9, %21, !dbg !3351
  %mul11 = mul nsw i32 %18, %add10, !dbg !3352
  %idx.ext12 = sext i32 %mul11 to i64, !dbg !3353
  %add.ptr13 = getelementptr inbounds i64, ptr %17, i64 %idx.ext12, !dbg !3353
  call void @m_vec_mul_add(i32 noundef %8, ptr noundef %add.ptr, i8 noundef zeroext %16, ptr noundef %add.ptr13), !dbg !3354
  br label %for.inc, !dbg !3355

for.inc:                                          ; preds = %for.body6
  %22 = load i32, ptr %k, align 4, !dbg !3356
  %add14 = add nsw i32 %22, 1, !dbg !3356
  store i32 %add14, ptr %k, align 4, !dbg !3356
  br label %for.cond4, !dbg !3357, !llvm.loop !3358

for.end:                                          ; preds = %for.cond4
  %23 = load i32, ptr %bs_mat_entries_used, align 4, !dbg !3360
  %add15 = add nsw i32 %23, 1, !dbg !3360
  store i32 %add15, ptr %bs_mat_entries_used, align 4, !dbg !3360
  br label %for.inc16, !dbg !3361

for.inc16:                                        ; preds = %for.end
  %24 = load i32, ptr %c, align 4, !dbg !3362
  %inc = add nsw i32 %24, 1, !dbg !3362
  store i32 %inc, ptr %c, align 4, !dbg !3362
  br label %for.cond1, !dbg !3363, !llvm.loop !3364

for.end17:                                        ; preds = %for.cond1
  br label %for.inc18, !dbg !3366

for.inc18:                                        ; preds = %for.end17
  %25 = load i32, ptr %r, align 4, !dbg !3367
  %inc19 = add nsw i32 %25, 1, !dbg !3367
  store i32 %inc19, ptr %r, align 4, !dbg !3367
  br label %for.cond, !dbg !3368, !llvm.loop !3369

for.end20:                                        ; preds = %for.cond
  ret void, !dbg !3371
}

; Function Attrs: noinline nounwind optnone
define dso_local i32 @mayo_sign(ptr noundef %p, ptr noundef %sm, ptr noundef %smlen, ptr noundef %m, i64 noundef %mlen, ptr noundef %csk) #0 !dbg !3372 {
entry:
  %p.addr = alloca ptr, align 8
  %sm.addr = alloca ptr, align 8
  %smlen.addr = alloca ptr, align 8
  %m.addr = alloca ptr, align 8
  %mlen.addr = alloca i64, align 8
  %csk.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %param_sig_bytes = alloca i32, align 4
  %siglen = alloca i64, align 8
  store ptr %p, ptr %p.addr, align 8
    #dbg_declare(ptr %p.addr, !3373, !DIExpression(), !3374)
  store ptr %sm, ptr %sm.addr, align 8
    #dbg_declare(ptr %sm.addr, !3375, !DIExpression(), !3376)
  store ptr %smlen, ptr %smlen.addr, align 8
    #dbg_declare(ptr %smlen.addr, !3377, !DIExpression(), !3378)
  store ptr %m, ptr %m.addr, align 8
    #dbg_declare(ptr %m.addr, !3379, !DIExpression(), !3380)
  store i64 %mlen, ptr %mlen.addr, align 8
    #dbg_declare(ptr %mlen.addr, !3381, !DIExpression(), !3382)
  store ptr %csk, ptr %csk.addr, align 8
    #dbg_declare(ptr %csk.addr, !3383, !DIExpression(), !3384)
    #dbg_declare(ptr %ret, !3385, !DIExpression(), !3386)
  store i32 0, ptr %ret, align 4, !dbg !3386
    #dbg_declare(ptr %param_sig_bytes, !3387, !DIExpression(), !3388)
  %0 = load ptr, ptr %p.addr, align 8, !dbg !3389
  %sig_bytes = getelementptr inbounds nuw %struct.mayo_params_t, ptr %0, i32 0, i32 16, !dbg !3390
  %1 = load i32, ptr %sig_bytes, align 8, !dbg !3390
  store i32 %1, ptr %param_sig_bytes, align 4, !dbg !3388
    #dbg_declare(ptr %siglen, !3391, !DIExpression(), !3392)
  %2 = load ptr, ptr %sm.addr, align 8, !dbg !3393
  %3 = load i32, ptr %param_sig_bytes, align 4, !dbg !3394
  %idx.ext = sext i32 %3 to i64, !dbg !3395
  %add.ptr = getelementptr inbounds i8, ptr %2, i64 %idx.ext, !dbg !3395
  %4 = load ptr, ptr %m.addr, align 8, !dbg !3396
  %5 = load i64, ptr %mlen.addr, align 8, !dbg !3397
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %add.ptr, ptr align 1 %4, i64 %5, i1 false), !dbg !3395
  %6 = load ptr, ptr %p.addr, align 8, !dbg !3398
  %7 = load ptr, ptr %sm.addr, align 8, !dbg !3399
  %8 = load ptr, ptr %sm.addr, align 8, !dbg !3400
  %9 = load i32, ptr %param_sig_bytes, align 4, !dbg !3401
  %idx.ext1 = sext i32 %9 to i64, !dbg !3402
  %add.ptr2 = getelementptr inbounds i8, ptr %8, i64 %idx.ext1, !dbg !3402
  %10 = load i64, ptr %mlen.addr, align 8, !dbg !3403
  %11 = load ptr, ptr %csk.addr, align 8, !dbg !3404
  %call = call i32 @mayo_sign_signature(ptr noundef %6, ptr noundef %7, ptr noundef %siglen, ptr noundef %add.ptr2, i64 noundef %10, ptr noundef %11), !dbg !3405
  store i32 %call, ptr %ret, align 4, !dbg !3406
  %12 = load i32, ptr %ret, align 4, !dbg !3407
  %cmp = icmp ne i32 %12, 0, !dbg !3409
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !3410

lor.lhs.false:                                    ; preds = %entry
  %13 = load i64, ptr %siglen, align 8, !dbg !3411
  %14 = load i32, ptr %param_sig_bytes, align 4, !dbg !3412
  %conv = sext i32 %14 to i64, !dbg !3413
  %cmp3 = icmp ne i64 %13, %conv, !dbg !3414
  br i1 %cmp3, label %if.then, label %if.end, !dbg !3410

if.then:                                          ; preds = %lor.lhs.false, %entry
  %15 = load ptr, ptr %sm.addr, align 8, !dbg !3415
  %16 = load i64, ptr %siglen, align 8, !dbg !3417
  %17 = load i64, ptr %mlen.addr, align 8, !dbg !3418
  %add = add i64 %16, %17, !dbg !3419
  call void @llvm.memset.p0.i64(ptr align 1 %15, i8 0, i64 %add, i1 false), !dbg !3420
  br label %err, !dbg !3421

if.end:                                           ; preds = %lor.lhs.false
  %18 = load i64, ptr %siglen, align 8, !dbg !3422
  %19 = load i64, ptr %mlen.addr, align 8, !dbg !3423
  %add5 = add i64 %18, %19, !dbg !3424
  %20 = load ptr, ptr %smlen.addr, align 8, !dbg !3425
  store i64 %add5, ptr %20, align 8, !dbg !3426
  br label %err, !dbg !3427

err:                                              ; preds = %if.end, %if.then
    #dbg_label(!3428, !3429)
  %21 = load i32, ptr %ret, align 4, !dbg !3430
  ret i32 %21, !dbg !3431
}

; Function Attrs: noinline nounwind optnone
define dso_local i32 @mayo_open(ptr noundef %p, ptr noundef %m, ptr noundef %mlen, ptr noundef %sm, i64 noundef %smlen, ptr noundef %pk) #0 !dbg !3432 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %m.addr = alloca ptr, align 8
  %mlen.addr = alloca ptr, align 8
  %sm.addr = alloca ptr, align 8
  %smlen.addr = alloca i64, align 8
  %pk.addr = alloca ptr, align 8
  %param_sig_bytes = alloca i32, align 4
  %result = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
    #dbg_declare(ptr %p.addr, !3433, !DIExpression(), !3434)
  store ptr %m, ptr %m.addr, align 8
    #dbg_declare(ptr %m.addr, !3435, !DIExpression(), !3436)
  store ptr %mlen, ptr %mlen.addr, align 8
    #dbg_declare(ptr %mlen.addr, !3437, !DIExpression(), !3438)
  store ptr %sm, ptr %sm.addr, align 8
    #dbg_declare(ptr %sm.addr, !3439, !DIExpression(), !3440)
  store i64 %smlen, ptr %smlen.addr, align 8
    #dbg_declare(ptr %smlen.addr, !3441, !DIExpression(), !3442)
  store ptr %pk, ptr %pk.addr, align 8
    #dbg_declare(ptr %pk.addr, !3443, !DIExpression(), !3444)
    #dbg_declare(ptr %param_sig_bytes, !3445, !DIExpression(), !3446)
  %0 = load ptr, ptr %p.addr, align 8, !dbg !3447
  %sig_bytes = getelementptr inbounds nuw %struct.mayo_params_t, ptr %0, i32 0, i32 16, !dbg !3448
  %1 = load i32, ptr %sig_bytes, align 8, !dbg !3448
  store i32 %1, ptr %param_sig_bytes, align 4, !dbg !3446
  %2 = load i64, ptr %smlen.addr, align 8, !dbg !3449
  %3 = load i32, ptr %param_sig_bytes, align 4, !dbg !3451
  %conv = sext i32 %3 to i64, !dbg !3452
  %cmp = icmp ult i64 %2, %conv, !dbg !3453
  br i1 %cmp, label %if.then, label %if.end, !dbg !3453

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !3454
  br label %return, !dbg !3454

if.end:                                           ; preds = %entry
    #dbg_declare(ptr %result, !3456, !DIExpression(), !3457)
  %4 = load ptr, ptr %p.addr, align 8, !dbg !3458
  %5 = load ptr, ptr %sm.addr, align 8, !dbg !3459
  %6 = load i32, ptr %param_sig_bytes, align 4, !dbg !3460
  %idx.ext = sext i32 %6 to i64, !dbg !3461
  %add.ptr = getelementptr inbounds i8, ptr %5, i64 %idx.ext, !dbg !3461
  %7 = load i64, ptr %smlen.addr, align 8, !dbg !3462
  %8 = load i32, ptr %param_sig_bytes, align 4, !dbg !3463
  %conv2 = sext i32 %8 to i64, !dbg !3463
  %sub = sub i64 %7, %conv2, !dbg !3464
  %9 = load ptr, ptr %sm.addr, align 8, !dbg !3465
  %10 = load ptr, ptr %pk.addr, align 8, !dbg !3466
  %call = call i32 @mayo_verify(ptr noundef %4, ptr noundef %add.ptr, i64 noundef %sub, ptr noundef %9, ptr noundef %10), !dbg !3467
  store i32 %call, ptr %result, align 4, !dbg !3457
  %11 = load i32, ptr %result, align 4, !dbg !3468
  %cmp3 = icmp eq i32 %11, 0, !dbg !3470
  br i1 %cmp3, label %if.then5, label %if.end10, !dbg !3470

if.then5:                                         ; preds = %if.end
  %12 = load i64, ptr %smlen.addr, align 8, !dbg !3471
  %13 = load i32, ptr %param_sig_bytes, align 4, !dbg !3473
  %conv6 = sext i32 %13 to i64, !dbg !3473
  %sub7 = sub i64 %12, %conv6, !dbg !3474
  %14 = load ptr, ptr %mlen.addr, align 8, !dbg !3475
  store i64 %sub7, ptr %14, align 8, !dbg !3476
  %15 = load ptr, ptr %m.addr, align 8, !dbg !3477
  %16 = load ptr, ptr %sm.addr, align 8, !dbg !3478
  %17 = load i32, ptr %param_sig_bytes, align 4, !dbg !3479
  %idx.ext8 = sext i32 %17 to i64, !dbg !3480
  %add.ptr9 = getelementptr inbounds i8, ptr %16, i64 %idx.ext8, !dbg !3480
  %18 = load ptr, ptr %mlen.addr, align 8, !dbg !3481
  %19 = load i64, ptr %18, align 8, !dbg !3482
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %15, ptr align 1 %add.ptr9, i64 %19, i1 false), !dbg !3480
  br label %if.end10, !dbg !3483

if.end10:                                         ; preds = %if.then5, %if.end
  %20 = load i32, ptr %result, align 4, !dbg !3484
  store i32 %20, ptr %retval, align 4, !dbg !3485
  br label %return, !dbg !3485

return:                                           ; preds = %if.end10, %if.then
  %21 = load i32, ptr %retval, align 4, !dbg !3486
  ret i32 %21, !dbg !3486
}

; Function Attrs: noinline nounwind optnone
define dso_local i32 @mayo_verify(ptr noundef %p, ptr noundef %m, i64 noundef %mlen, ptr noundef %sig, ptr noundef %cpk) #0 !dbg !3487 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %m.addr = alloca ptr, align 8
  %mlen.addr = alloca i64, align 8
  %sig.addr = alloca ptr, align 8
  %cpk.addr = alloca ptr, align 8
  %tEnc = alloca [71 x i8], align 16
  %t = alloca [142 x i8], align 16
  %y = alloca [284 x i8], align 16
  %s = alloca [1848 x i8], align 16
  %pk = alloca [114480 x i64], align 16
  %tmp = alloca [104 x i8], align 16
  %param_m = alloca i32, align 4
  %param_n = alloca i32, align 4
  %param_k = alloca i32, align 4
  %param_m_bytes = alloca i32, align 4
  %param_sig_bytes = alloca i32, align 4
  %param_digest_bytes = alloca i32, align 4
  %param_salt_bytes = alloca i32, align 4
  %ret = alloca i32, align 4
  %P1 = alloca ptr, align 8
  %P2 = alloca ptr, align 8
  %P3 = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
    #dbg_declare(ptr %p.addr, !3490, !DIExpression(), !3491)
  store ptr %m, ptr %m.addr, align 8
    #dbg_declare(ptr %m.addr, !3492, !DIExpression(), !3493)
  store i64 %mlen, ptr %mlen.addr, align 8
    #dbg_declare(ptr %mlen.addr, !3494, !DIExpression(), !3495)
  store ptr %sig, ptr %sig.addr, align 8
    #dbg_declare(ptr %sig.addr, !3496, !DIExpression(), !3497)
  store ptr %cpk, ptr %cpk.addr, align 8
    #dbg_declare(ptr %cpk.addr, !3498, !DIExpression(), !3499)
    #dbg_declare(ptr %tEnc, !3500, !DIExpression(), !3501)
    #dbg_declare(ptr %t, !3502, !DIExpression(), !3503)
    #dbg_declare(ptr %y, !3504, !DIExpression(), !3508)
  call void @llvm.memset.p0.i64(ptr align 16 %y, i8 0, i64 284, i1 false), !dbg !3508
    #dbg_declare(ptr %s, !3509, !DIExpression(), !3510)
    #dbg_declare(ptr %pk, !3511, !DIExpression(), !3515)
  call void @llvm.memset.p0.i64(ptr align 16 %pk, i8 0, i64 915840, i1 false), !dbg !3515
    #dbg_declare(ptr %tmp, !3516, !DIExpression(), !3520)
    #dbg_declare(ptr %param_m, !3521, !DIExpression(), !3522)
  %0 = load ptr, ptr %p.addr, align 8, !dbg !3523
  %m1 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %0, i32 0, i32 0, !dbg !3524
  %1 = load i32, ptr %m1, align 8, !dbg !3524
  store i32 %1, ptr %param_m, align 4, !dbg !3522
    #dbg_declare(ptr %param_n, !3525, !DIExpression(), !3526)
  %2 = load ptr, ptr %p.addr, align 8, !dbg !3527
  %n = getelementptr inbounds nuw %struct.mayo_params_t, ptr %2, i32 0, i32 1, !dbg !3528
  %3 = load i32, ptr %n, align 4, !dbg !3528
  store i32 %3, ptr %param_n, align 4, !dbg !3526
    #dbg_declare(ptr %param_k, !3529, !DIExpression(), !3530)
  %4 = load ptr, ptr %p.addr, align 8, !dbg !3531
  %k = getelementptr inbounds nuw %struct.mayo_params_t, ptr %4, i32 0, i32 3, !dbg !3532
  %5 = load i32, ptr %k, align 4, !dbg !3532
  store i32 %5, ptr %param_k, align 4, !dbg !3530
    #dbg_declare(ptr %param_m_bytes, !3533, !DIExpression(), !3534)
  %6 = load ptr, ptr %p.addr, align 8, !dbg !3535
  %m_bytes = getelementptr inbounds nuw %struct.mayo_params_t, ptr %6, i32 0, i32 6, !dbg !3536
  %7 = load i32, ptr %m_bytes, align 8, !dbg !3536
  store i32 %7, ptr %param_m_bytes, align 4, !dbg !3534
    #dbg_declare(ptr %param_sig_bytes, !3537, !DIExpression(), !3538)
  %8 = load ptr, ptr %p.addr, align 8, !dbg !3539
  %sig_bytes = getelementptr inbounds nuw %struct.mayo_params_t, ptr %8, i32 0, i32 16, !dbg !3540
  %9 = load i32, ptr %sig_bytes, align 8, !dbg !3540
  store i32 %9, ptr %param_sig_bytes, align 4, !dbg !3538
    #dbg_declare(ptr %param_digest_bytes, !3541, !DIExpression(), !3542)
  %10 = load ptr, ptr %p.addr, align 8, !dbg !3543
  %digest_bytes = getelementptr inbounds nuw %struct.mayo_params_t, ptr %10, i32 0, i32 19, !dbg !3544
  %11 = load i32, ptr %digest_bytes, align 4, !dbg !3544
  store i32 %11, ptr %param_digest_bytes, align 4, !dbg !3542
    #dbg_declare(ptr %param_salt_bytes, !3545, !DIExpression(), !3546)
  %12 = load ptr, ptr %p.addr, align 8, !dbg !3547
  %salt_bytes = getelementptr inbounds nuw %struct.mayo_params_t, ptr %12, i32 0, i32 17, !dbg !3548
  %13 = load i32, ptr %salt_bytes, align 4, !dbg !3548
  store i32 %13, ptr %param_salt_bytes, align 4, !dbg !3546
    #dbg_declare(ptr %ret, !3549, !DIExpression(), !3550)
  %14 = load ptr, ptr %p.addr, align 8, !dbg !3551
  %15 = load ptr, ptr %cpk.addr, align 8, !dbg !3552
  %arraydecay = getelementptr inbounds [114480 x i64], ptr %pk, i64 0, i64 0, !dbg !3553
  %call = call i32 @mayo_expand_pk(ptr noundef %14, ptr noundef %15, ptr noundef %arraydecay), !dbg !3554
  store i32 %call, ptr %ret, align 4, !dbg !3550
  %16 = load i32, ptr %ret, align 4, !dbg !3555
  %cmp = icmp ne i32 %16, 0, !dbg !3557
  br i1 %cmp, label %if.then, label %if.end, !dbg !3557

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !3558
  br label %return, !dbg !3558

if.end:                                           ; preds = %entry
    #dbg_declare(ptr %P1, !3560, !DIExpression(), !3561)
  %arraydecay2 = getelementptr inbounds [114480 x i64], ptr %pk, i64 0, i64 0, !dbg !3562
  store ptr %arraydecay2, ptr %P1, align 8, !dbg !3561
    #dbg_declare(ptr %P2, !3563, !DIExpression(), !3564)
  %17 = load ptr, ptr %P1, align 8, !dbg !3565
  %18 = load ptr, ptr %p.addr, align 8, !dbg !3566
  %n3 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %18, i32 0, i32 1, !dbg !3567
  %19 = load i32, ptr %n3, align 4, !dbg !3567
  %20 = load ptr, ptr %p.addr, align 8, !dbg !3566
  %o = getelementptr inbounds nuw %struct.mayo_params_t, ptr %20, i32 0, i32 2, !dbg !3567
  %21 = load i32, ptr %o, align 8, !dbg !3567
  %sub = sub nsw i32 %19, %21, !dbg !3567
  %22 = load ptr, ptr %p.addr, align 8, !dbg !3566
  %n4 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %22, i32 0, i32 1, !dbg !3567
  %23 = load i32, ptr %n4, align 4, !dbg !3567
  %24 = load ptr, ptr %p.addr, align 8, !dbg !3566
  %o5 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %24, i32 0, i32 2, !dbg !3567
  %25 = load i32, ptr %o5, align 8, !dbg !3567
  %sub6 = sub nsw i32 %23, %25, !dbg !3567
  %add = add nsw i32 %sub6, 1, !dbg !3567
  %mul = mul nsw i32 %sub, %add, !dbg !3567
  %div = sdiv i32 %mul, 2, !dbg !3567
  %26 = load ptr, ptr %p.addr, align 8, !dbg !3566
  %m_vec_limbs = getelementptr inbounds nuw %struct.mayo_params_t, ptr %26, i32 0, i32 21, !dbg !3567
  %27 = load i32, ptr %m_vec_limbs, align 4, !dbg !3567
  %mul7 = mul nsw i32 %div, %27, !dbg !3567
  %idx.ext = sext i32 %mul7 to i64, !dbg !3568
  %add.ptr = getelementptr inbounds i64, ptr %17, i64 %idx.ext, !dbg !3568
  store ptr %add.ptr, ptr %P2, align 8, !dbg !3564
    #dbg_declare(ptr %P3, !3569, !DIExpression(), !3570)
  %28 = load ptr, ptr %P2, align 8, !dbg !3571
  %29 = load ptr, ptr %p.addr, align 8, !dbg !3572
  %n8 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %29, i32 0, i32 1, !dbg !3573
  %30 = load i32, ptr %n8, align 4, !dbg !3573
  %31 = load ptr, ptr %p.addr, align 8, !dbg !3572
  %o9 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %31, i32 0, i32 2, !dbg !3573
  %32 = load i32, ptr %o9, align 8, !dbg !3573
  %sub10 = sub nsw i32 %30, %32, !dbg !3573
  %33 = load ptr, ptr %p.addr, align 8, !dbg !3572
  %o11 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %33, i32 0, i32 2, !dbg !3573
  %34 = load i32, ptr %o11, align 8, !dbg !3573
  %mul12 = mul nsw i32 %sub10, %34, !dbg !3573
  %35 = load ptr, ptr %p.addr, align 8, !dbg !3572
  %m_vec_limbs13 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %35, i32 0, i32 21, !dbg !3573
  %36 = load i32, ptr %m_vec_limbs13, align 4, !dbg !3573
  %mul14 = mul nsw i32 %mul12, %36, !dbg !3573
  %idx.ext15 = sext i32 %mul14 to i64, !dbg !3574
  %add.ptr16 = getelementptr inbounds i64, ptr %28, i64 %idx.ext15, !dbg !3574
  store ptr %add.ptr16, ptr %P3, align 8, !dbg !3570
  %arraydecay17 = getelementptr inbounds [104 x i8], ptr %tmp, i64 0, i64 0, !dbg !3575
  %37 = load i32, ptr %param_digest_bytes, align 4, !dbg !3576
  %conv = sext i32 %37 to i64, !dbg !3576
  %38 = load ptr, ptr %m.addr, align 8, !dbg !3577
  %39 = load i64, ptr %mlen.addr, align 8, !dbg !3578
  %call18 = call i32 @shake256(ptr noundef %arraydecay17, i64 noundef %conv, ptr noundef %38, i64 noundef %39), !dbg !3579
  %arraydecay19 = getelementptr inbounds [104 x i8], ptr %tmp, i64 0, i64 0, !dbg !3580
  %40 = load i32, ptr %param_digest_bytes, align 4, !dbg !3581
  %idx.ext20 = sext i32 %40 to i64, !dbg !3580
  %add.ptr21 = getelementptr inbounds i8, ptr %arraydecay19, i64 %idx.ext20, !dbg !3580
  %41 = load ptr, ptr %sig.addr, align 8, !dbg !3582
  %42 = load i32, ptr %param_sig_bytes, align 4, !dbg !3583
  %idx.ext22 = sext i32 %42 to i64, !dbg !3580
  %add.ptr23 = getelementptr inbounds i8, ptr %41, i64 %idx.ext22, !dbg !3580
  %43 = load i32, ptr %param_salt_bytes, align 4, !dbg !3584
  %idx.ext24 = sext i32 %43 to i64, !dbg !3580
  %idx.neg = sub i64 0, %idx.ext24, !dbg !3580
  %add.ptr25 = getelementptr inbounds i8, ptr %add.ptr23, i64 %idx.neg, !dbg !3580
  %44 = load i32, ptr %param_salt_bytes, align 4, !dbg !3585
  %conv26 = sext i32 %44 to i64, !dbg !3585
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr21, ptr align 1 %add.ptr25, i64 %conv26, i1 false), !dbg !3580
  %arraydecay27 = getelementptr inbounds [71 x i8], ptr %tEnc, i64 0, i64 0, !dbg !3586
  %45 = load i32, ptr %param_m_bytes, align 4, !dbg !3587
  %conv28 = sext i32 %45 to i64, !dbg !3587
  %arraydecay29 = getelementptr inbounds [104 x i8], ptr %tmp, i64 0, i64 0, !dbg !3588
  %46 = load i32, ptr %param_digest_bytes, align 4, !dbg !3589
  %47 = load i32, ptr %param_salt_bytes, align 4, !dbg !3590
  %add30 = add nsw i32 %46, %47, !dbg !3591
  %conv31 = sext i32 %add30 to i64, !dbg !3589
  %call32 = call i32 @shake256(ptr noundef %arraydecay27, i64 noundef %conv28, ptr noundef %arraydecay29, i64 noundef %conv31), !dbg !3592
  %arraydecay33 = getelementptr inbounds [71 x i8], ptr %tEnc, i64 0, i64 0, !dbg !3593
  %arraydecay34 = getelementptr inbounds [142 x i8], ptr %t, i64 0, i64 0, !dbg !3594
  %48 = load i32, ptr %param_m, align 4, !dbg !3595
  call void @decode(ptr noundef %arraydecay33, ptr noundef %arraydecay34, i32 noundef %48), !dbg !3596
  %49 = load ptr, ptr %sig.addr, align 8, !dbg !3597
  %arraydecay35 = getelementptr inbounds [1848 x i8], ptr %s, i64 0, i64 0, !dbg !3598
  %50 = load i32, ptr %param_k, align 4, !dbg !3599
  %51 = load i32, ptr %param_n, align 4, !dbg !3600
  %mul36 = mul nsw i32 %50, %51, !dbg !3601
  call void @decode(ptr noundef %49, ptr noundef %arraydecay35, i32 noundef %mul36), !dbg !3602
  %52 = load ptr, ptr %p.addr, align 8, !dbg !3603
  %arraydecay37 = getelementptr inbounds [1848 x i8], ptr %s, i64 0, i64 0, !dbg !3604
  %53 = load ptr, ptr %P1, align 8, !dbg !3605
  %54 = load ptr, ptr %P2, align 8, !dbg !3606
  %55 = load ptr, ptr %P3, align 8, !dbg !3607
  %arraydecay38 = getelementptr inbounds [284 x i8], ptr %y, i64 0, i64 0, !dbg !3608
  call void @eval_public_map(ptr noundef %52, ptr noundef %arraydecay37, ptr noundef %53, ptr noundef %54, ptr noundef %55, ptr noundef %arraydecay38), !dbg !3609
  %arraydecay39 = getelementptr inbounds [284 x i8], ptr %y, i64 0, i64 0, !dbg !3610
  %arraydecay40 = getelementptr inbounds [142 x i8], ptr %t, i64 0, i64 0, !dbg !3612
  %56 = load i32, ptr %param_m, align 4, !dbg !3613
  %conv41 = sext i32 %56 to i64, !dbg !3613
  %call42 = call i32 @memcmp(ptr noundef %arraydecay39, ptr noundef %arraydecay40, i64 noundef %conv41) #8, !dbg !3614
  %cmp43 = icmp eq i32 %call42, 0, !dbg !3615
  br i1 %cmp43, label %if.then45, label %if.end46, !dbg !3615

if.then45:                                        ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !3616
  br label %return, !dbg !3616

if.end46:                                         ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !3618
  br label %return, !dbg !3618

return:                                           ; preds = %if.end46, %if.then45, %if.then
  %57 = load i32, ptr %retval, align 4, !dbg !3619
  ret i32 %57, !dbg !3619
}

; Function Attrs: noinline nounwind optnone
define dso_local i32 @mayo_expand_pk(ptr noundef %p, ptr noundef %cpk, ptr noundef %pk) #0 !dbg !3620 {
entry:
  %p.addr = alloca ptr, align 8
  %cpk.addr = alloca ptr, align 8
  %pk.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
    #dbg_declare(ptr %p.addr, !3623, !DIExpression(), !3624)
  store ptr %cpk, ptr %cpk.addr, align 8
    #dbg_declare(ptr %cpk.addr, !3625, !DIExpression(), !3626)
  store ptr %pk, ptr %pk.addr, align 8
    #dbg_declare(ptr %pk.addr, !3627, !DIExpression(), !3628)
  %0 = load ptr, ptr %p.addr, align 8, !dbg !3629
  %1 = load ptr, ptr %pk.addr, align 8, !dbg !3630
  %2 = load ptr, ptr %cpk.addr, align 8, !dbg !3631
  call void @expand_P1_P2(ptr noundef %0, ptr noundef %1, ptr noundef %2), !dbg !3632
  %3 = load ptr, ptr %cpk.addr, align 8, !dbg !3633
  %4 = load ptr, ptr %p.addr, align 8, !dbg !3634
  %pk_seed_bytes = getelementptr inbounds nuw %struct.mayo_params_t, ptr %4, i32 0, i32 20, !dbg !3635
  %5 = load i32, ptr %pk_seed_bytes, align 8, !dbg !3635
  %idx.ext = sext i32 %5 to i64, !dbg !3636
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 %idx.ext, !dbg !3636
  %6 = load ptr, ptr %pk.addr, align 8, !dbg !3637
  %7 = load ptr, ptr %p.addr, align 8, !dbg !3638
  %n = getelementptr inbounds nuw %struct.mayo_params_t, ptr %7, i32 0, i32 1, !dbg !3639
  %8 = load i32, ptr %n, align 4, !dbg !3639
  %9 = load ptr, ptr %p.addr, align 8, !dbg !3638
  %o = getelementptr inbounds nuw %struct.mayo_params_t, ptr %9, i32 0, i32 2, !dbg !3639
  %10 = load i32, ptr %o, align 8, !dbg !3639
  %sub = sub nsw i32 %8, %10, !dbg !3639
  %11 = load ptr, ptr %p.addr, align 8, !dbg !3638
  %n1 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %11, i32 0, i32 1, !dbg !3639
  %12 = load i32, ptr %n1, align 4, !dbg !3639
  %13 = load ptr, ptr %p.addr, align 8, !dbg !3638
  %o2 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %13, i32 0, i32 2, !dbg !3639
  %14 = load i32, ptr %o2, align 8, !dbg !3639
  %sub3 = sub nsw i32 %12, %14, !dbg !3639
  %add = add nsw i32 %sub3, 1, !dbg !3639
  %mul = mul nsw i32 %sub, %add, !dbg !3639
  %div = sdiv i32 %mul, 2, !dbg !3639
  %15 = load ptr, ptr %p.addr, align 8, !dbg !3638
  %m_vec_limbs = getelementptr inbounds nuw %struct.mayo_params_t, ptr %15, i32 0, i32 21, !dbg !3639
  %16 = load i32, ptr %m_vec_limbs, align 4, !dbg !3639
  %mul4 = mul nsw i32 %div, %16, !dbg !3639
  %idx.ext5 = sext i32 %mul4 to i64, !dbg !3640
  %add.ptr6 = getelementptr inbounds i64, ptr %6, i64 %idx.ext5, !dbg !3640
  %17 = load ptr, ptr %p.addr, align 8, !dbg !3641
  %n7 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %17, i32 0, i32 1, !dbg !3642
  %18 = load i32, ptr %n7, align 4, !dbg !3642
  %19 = load ptr, ptr %p.addr, align 8, !dbg !3641
  %o8 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %19, i32 0, i32 2, !dbg !3642
  %20 = load i32, ptr %o8, align 8, !dbg !3642
  %sub9 = sub nsw i32 %18, %20, !dbg !3642
  %21 = load ptr, ptr %p.addr, align 8, !dbg !3641
  %o10 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %21, i32 0, i32 2, !dbg !3642
  %22 = load i32, ptr %o10, align 8, !dbg !3642
  %mul11 = mul nsw i32 %sub9, %22, !dbg !3642
  %23 = load ptr, ptr %p.addr, align 8, !dbg !3641
  %m_vec_limbs12 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %23, i32 0, i32 21, !dbg !3642
  %24 = load i32, ptr %m_vec_limbs12, align 4, !dbg !3642
  %mul13 = mul nsw i32 %mul11, %24, !dbg !3642
  %idx.ext14 = sext i32 %mul13 to i64, !dbg !3643
  %add.ptr15 = getelementptr inbounds i64, ptr %add.ptr6, i64 %idx.ext14, !dbg !3643
  %25 = load ptr, ptr %p.addr, align 8, !dbg !3644
  %o16 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %25, i32 0, i32 2, !dbg !3645
  %26 = load i32, ptr %o16, align 8, !dbg !3645
  %27 = load ptr, ptr %p.addr, align 8, !dbg !3644
  %o17 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %27, i32 0, i32 2, !dbg !3645
  %28 = load i32, ptr %o17, align 8, !dbg !3645
  %add18 = add nsw i32 %28, 1, !dbg !3645
  %mul19 = mul nsw i32 %26, %add18, !dbg !3645
  %div20 = sdiv i32 %mul19, 2, !dbg !3645
  %29 = load ptr, ptr %p.addr, align 8, !dbg !3644
  %m_vec_limbs21 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %29, i32 0, i32 21, !dbg !3645
  %30 = load i32, ptr %m_vec_limbs21, align 4, !dbg !3645
  %mul22 = mul nsw i32 %div20, %30, !dbg !3645
  %31 = load ptr, ptr %p.addr, align 8, !dbg !3646
  %m_vec_limbs23 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %31, i32 0, i32 21, !dbg !3647
  %32 = load i32, ptr %m_vec_limbs23, align 4, !dbg !3647
  %div24 = sdiv i32 %mul22, %32, !dbg !3648
  %33 = load ptr, ptr %p.addr, align 8, !dbg !3649
  %m = getelementptr inbounds nuw %struct.mayo_params_t, ptr %33, i32 0, i32 0, !dbg !3650
  %34 = load i32, ptr %m, align 8, !dbg !3650
  call void @unpack_m_vecs(ptr noundef %add.ptr, ptr noundef %add.ptr15, i32 noundef %div24, i32 noundef %34), !dbg !3651
  ret i32 0, !dbg !3652
}

; Function Attrs: noinline nounwind optnone
define internal void @eval_public_map(ptr noundef %p, ptr noundef %s, ptr noundef %P1, ptr noundef %P2, ptr noundef %P3, ptr noundef %eval) #0 !dbg !3653 {
entry:
  %p.addr = alloca ptr, align 8
  %s.addr = alloca ptr, align 8
  %P1.addr = alloca ptr, align 8
  %P2.addr = alloca ptr, align 8
  %P3.addr = alloca ptr, align 8
  %eval.addr = alloca ptr, align 8
  %SPS = alloca [1296 x i64], align 16
  %zero = alloca [142 x i8], align 16
  store ptr %p, ptr %p.addr, align 8
    #dbg_declare(ptr %p.addr, !3656, !DIExpression(), !3657)
  store ptr %s, ptr %s.addr, align 8
    #dbg_declare(ptr %s.addr, !3658, !DIExpression(), !3659)
  store ptr %P1, ptr %P1.addr, align 8
    #dbg_declare(ptr %P1.addr, !3660, !DIExpression(), !3661)
  store ptr %P2, ptr %P2.addr, align 8
    #dbg_declare(ptr %P2.addr, !3662, !DIExpression(), !3663)
  store ptr %P3, ptr %P3.addr, align 8
    #dbg_declare(ptr %P3.addr, !3664, !DIExpression(), !3665)
  store ptr %eval, ptr %eval.addr, align 8
    #dbg_declare(ptr %eval.addr, !3666, !DIExpression(), !3667)
    #dbg_declare(ptr %SPS, !3668, !DIExpression(), !3672)
  call void @llvm.memset.p0.i64(ptr align 16 %SPS, i8 0, i64 10368, i1 false), !dbg !3672
  %0 = load ptr, ptr %p.addr, align 8, !dbg !3673
  %1 = load ptr, ptr %P1.addr, align 8, !dbg !3674
  %2 = load ptr, ptr %P2.addr, align 8, !dbg !3675
  %3 = load ptr, ptr %P3.addr, align 8, !dbg !3676
  %4 = load ptr, ptr %s.addr, align 8, !dbg !3677
  %arraydecay = getelementptr inbounds [1296 x i64], ptr %SPS, i64 0, i64 0, !dbg !3678
  call void @m_calculate_PS_SPS(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %arraydecay), !dbg !3679
    #dbg_declare(ptr %zero, !3680, !DIExpression(), !3681)
  call void @llvm.memset.p0.i64(ptr align 16 %zero, i8 0, i64 142, i1 false), !dbg !3681
  %5 = load ptr, ptr %p.addr, align 8, !dbg !3682
  %arraydecay1 = getelementptr inbounds [1296 x i64], ptr %SPS, i64 0, i64 0, !dbg !3683
  %arraydecay2 = getelementptr inbounds [142 x i8], ptr %zero, i64 0, i64 0, !dbg !3684
  %6 = load ptr, ptr %eval.addr, align 8, !dbg !3685
  call void @compute_rhs(ptr noundef %5, ptr noundef %arraydecay1, ptr noundef %arraydecay2, ptr noundef %6), !dbg !3686
  ret void, !dbg !3687
}

; Function Attrs: noinline nounwind optnone
define internal void @m_calculate_PS_SPS(ptr noundef %p, ptr noundef %P1, ptr noundef %P2, ptr noundef %P3, ptr noundef %s, ptr noundef %SPS) #0 !dbg !3688 {
entry:
  %p.addr = alloca ptr, align 8
  %P1.addr = alloca ptr, align 8
  %P2.addr = alloca ptr, align 8
  %P3.addr = alloca ptr, align 8
  %s.addr = alloca ptr, align 8
  %SPS.addr = alloca ptr, align 8
  %PS = alloca [16632 x i64], align 16
  store ptr %p, ptr %p.addr, align 8
    #dbg_declare(ptr %p.addr, !3691, !DIExpression(), !3692)
  store ptr %P1, ptr %P1.addr, align 8
    #dbg_declare(ptr %P1.addr, !3693, !DIExpression(), !3694)
  store ptr %P2, ptr %P2.addr, align 8
    #dbg_declare(ptr %P2.addr, !3695, !DIExpression(), !3696)
  store ptr %P3, ptr %P3.addr, align 8
    #dbg_declare(ptr %P3.addr, !3697, !DIExpression(), !3698)
  store ptr %s, ptr %s.addr, align 8
    #dbg_declare(ptr %s.addr, !3699, !DIExpression(), !3700)
  store ptr %SPS, ptr %SPS.addr, align 8
    #dbg_declare(ptr %SPS.addr, !3701, !DIExpression(), !3702)
    #dbg_declare(ptr %PS, !3703, !DIExpression(), !3707)
  call void @llvm.memset.p0.i64(ptr align 16 %PS, i8 0, i64 133056, i1 false), !dbg !3707
  %0 = load ptr, ptr %P1.addr, align 8, !dbg !3708
  %1 = load ptr, ptr %P2.addr, align 8, !dbg !3709
  %2 = load ptr, ptr %P3.addr, align 8, !dbg !3710
  %3 = load ptr, ptr %s.addr, align 8, !dbg !3711
  %4 = load ptr, ptr %p.addr, align 8, !dbg !3712
  %m = getelementptr inbounds nuw %struct.mayo_params_t, ptr %4, i32 0, i32 0, !dbg !3713
  %5 = load i32, ptr %m, align 8, !dbg !3713
  %6 = load ptr, ptr %p.addr, align 8, !dbg !3714
  %n = getelementptr inbounds nuw %struct.mayo_params_t, ptr %6, i32 0, i32 1, !dbg !3715
  %7 = load i32, ptr %n, align 4, !dbg !3715
  %8 = load ptr, ptr %p.addr, align 8, !dbg !3714
  %o = getelementptr inbounds nuw %struct.mayo_params_t, ptr %8, i32 0, i32 2, !dbg !3715
  %9 = load i32, ptr %o, align 8, !dbg !3715
  %sub = sub nsw i32 %7, %9, !dbg !3715
  %10 = load ptr, ptr %p.addr, align 8, !dbg !3716
  %o1 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %10, i32 0, i32 2, !dbg !3717
  %11 = load i32, ptr %o1, align 8, !dbg !3717
  %12 = load ptr, ptr %p.addr, align 8, !dbg !3718
  %k = getelementptr inbounds nuw %struct.mayo_params_t, ptr %12, i32 0, i32 3, !dbg !3719
  %13 = load i32, ptr %k, align 4, !dbg !3719
  %arraydecay = getelementptr inbounds [16632 x i64], ptr %PS, i64 0, i64 0, !dbg !3720
  call void @mayo_generic_m_calculate_PS(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %5, i32 noundef %sub, i32 noundef %11, i32 noundef %13, ptr noundef %arraydecay), !dbg !3721
  %arraydecay2 = getelementptr inbounds [16632 x i64], ptr %PS, i64 0, i64 0, !dbg !3722
  %14 = load ptr, ptr %s.addr, align 8, !dbg !3723
  %15 = load ptr, ptr %p.addr, align 8, !dbg !3724
  %m3 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %15, i32 0, i32 0, !dbg !3725
  %16 = load i32, ptr %m3, align 8, !dbg !3725
  %17 = load ptr, ptr %p.addr, align 8, !dbg !3726
  %k4 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %17, i32 0, i32 3, !dbg !3727
  %18 = load i32, ptr %k4, align 4, !dbg !3727
  %19 = load ptr, ptr %p.addr, align 8, !dbg !3728
  %n5 = getelementptr inbounds nuw %struct.mayo_params_t, ptr %19, i32 0, i32 1, !dbg !3729
  %20 = load i32, ptr %n5, align 4, !dbg !3729
  %21 = load ptr, ptr %SPS.addr, align 8, !dbg !3730
  call void @mayo_generic_m_calculate_SPS(ptr noundef %arraydecay2, ptr noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %20, ptr noundef %21), !dbg !3731
  ret void, !dbg !3732
}

; Function Attrs: noinline nounwind optnone
define internal void @mayo_generic_m_calculate_PS(ptr noundef %P1, ptr noundef %P2, ptr noundef %P3, ptr noundef %S, i32 noundef %m, i32 noundef %v, i32 noundef %o, i32 noundef %k, ptr noundef %PS) #0 !dbg !3733 {
entry:
  %P1.addr = alloca ptr, align 8
  %P2.addr = alloca ptr, align 8
  %P3.addr = alloca ptr, align 8
  %S.addr = alloca ptr, align 8
  %m.addr = alloca i32, align 4
  %v.addr = alloca i32, align 4
  %o.addr = alloca i32, align 4
  %k.addr = alloca i32, align 4
  %PS.addr = alloca ptr, align 8
  %n = alloca i32, align 4
  %m_vec_limbs = alloca i32, align 4
  %accumulator = alloca [266112 x i64], align 16
  %P1_used = alloca i32, align 4
  %row = alloca i32, align 4
  %j = alloca i32, align 4
  %col = alloca i32, align 4
  %j21 = alloca i32, align 4
  %col26 = alloca i32, align 4
  %P3_used = alloca i32, align 4
  %row59 = alloca i32, align 4
  %j64 = alloca i32, align 4
  %col69 = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %P1, ptr %P1.addr, align 8
    #dbg_declare(ptr %P1.addr, !3736, !DIExpression(), !3737)
  store ptr %P2, ptr %P2.addr, align 8
    #dbg_declare(ptr %P2.addr, !3738, !DIExpression(), !3739)
  store ptr %P3, ptr %P3.addr, align 8
    #dbg_declare(ptr %P3.addr, !3740, !DIExpression(), !3741)
  store ptr %S, ptr %S.addr, align 8
    #dbg_declare(ptr %S.addr, !3742, !DIExpression(), !3743)
  store i32 %m, ptr %m.addr, align 4
    #dbg_declare(ptr %m.addr, !3744, !DIExpression(), !3745)
  store i32 %v, ptr %v.addr, align 4
    #dbg_declare(ptr %v.addr, !3746, !DIExpression(), !3747)
  store i32 %o, ptr %o.addr, align 4
    #dbg_declare(ptr %o.addr, !3748, !DIExpression(), !3749)
  store i32 %k, ptr %k.addr, align 4
    #dbg_declare(ptr %k.addr, !3750, !DIExpression(), !3751)
  store ptr %PS, ptr %PS.addr, align 8
    #dbg_declare(ptr %PS.addr, !3752, !DIExpression(), !3753)
    #dbg_declare(ptr %n, !3754, !DIExpression(), !3755)
  %0 = load i32, ptr %o.addr, align 4, !dbg !3756
  %1 = load i32, ptr %v.addr, align 4, !dbg !3757
  %add = add nsw i32 %0, %1, !dbg !3758
  store i32 %add, ptr %n, align 4, !dbg !3755
    #dbg_declare(ptr %m_vec_limbs, !3759, !DIExpression(), !3760)
  %2 = load i32, ptr %m.addr, align 4, !dbg !3761
  %add1 = add nsw i32 %2, 15, !dbg !3762
  %div = sdiv i32 %add1, 16, !dbg !3763
  store i32 %div, ptr %m_vec_limbs, align 4, !dbg !3760
    #dbg_declare(ptr %accumulator, !3764, !DIExpression(), !3768)
  call void @llvm.memset.p0.i64(ptr align 16 %accumulator, i8 0, i64 2128896, i1 false), !dbg !3768
    #dbg_declare(ptr %P1_used, !3769, !DIExpression(), !3770)
  store i32 0, ptr %P1_used, align 4, !dbg !3770
    #dbg_declare(ptr %row, !3771, !DIExpression(), !3773)
  store i32 0, ptr %row, align 4, !dbg !3773
  br label %for.cond, !dbg !3774

for.cond:                                         ; preds = %for.inc56, %entry
  %3 = load i32, ptr %row, align 4, !dbg !3775
  %4 = load i32, ptr %v.addr, align 4, !dbg !3777
  %cmp = icmp slt i32 %3, %4, !dbg !3778
  br i1 %cmp, label %for.body, label %for.end58, !dbg !3779

for.body:                                         ; preds = %for.cond
    #dbg_declare(ptr %j, !3780, !DIExpression(), !3783)
  %5 = load i32, ptr %row, align 4, !dbg !3784
  store i32 %5, ptr %j, align 4, !dbg !3783
  br label %for.cond2, !dbg !3785

for.cond2:                                        ; preds = %for.inc18, %for.body
  %6 = load i32, ptr %j, align 4, !dbg !3786
  %7 = load i32, ptr %v.addr, align 4, !dbg !3788
  %cmp3 = icmp slt i32 %6, %7, !dbg !3789
  br i1 %cmp3, label %for.body4, label %for.end20, !dbg !3790

for.body4:                                        ; preds = %for.cond2
    #dbg_declare(ptr %col, !3791, !DIExpression(), !3794)
  store i32 0, ptr %col, align 4, !dbg !3794
  br label %for.cond5, !dbg !3795

for.cond5:                                        ; preds = %for.inc, %for.body4
  %8 = load i32, ptr %col, align 4, !dbg !3796
  %9 = load i32, ptr %k.addr, align 4, !dbg !3798
  %cmp6 = icmp slt i32 %8, %9, !dbg !3799
  br i1 %cmp6, label %for.body7, label %for.end, !dbg !3800

for.body7:                                        ; preds = %for.cond5
  %10 = load i32, ptr %m_vec_limbs, align 4, !dbg !3801
  %11 = load ptr, ptr %P1.addr, align 8, !dbg !3803
  %12 = load i32, ptr %P1_used, align 4, !dbg !3804
  %13 = load i32, ptr %m_vec_limbs, align 4, !dbg !3805
  %mul = mul nsw i32 %12, %13, !dbg !3806
  %idx.ext = sext i32 %mul to i64, !dbg !3807
  %add.ptr = getelementptr inbounds i64, ptr %11, i64 %idx.ext, !dbg !3807
  %arraydecay = getelementptr inbounds [266112 x i64], ptr %accumulator, i64 0, i64 0, !dbg !3808
  %14 = load i32, ptr %row, align 4, !dbg !3809
  %15 = load i32, ptr %k.addr, align 4, !dbg !3810
  %mul8 = mul nsw i32 %14, %15, !dbg !3811
  %16 = load i32, ptr %col, align 4, !dbg !3812
  %add9 = add nsw i32 %mul8, %16, !dbg !3813
  %mul10 = mul nsw i32 %add9, 16, !dbg !3814
  %17 = load ptr, ptr %S.addr, align 8, !dbg !3815
  %18 = load i32, ptr %col, align 4, !dbg !3816
  %19 = load i32, ptr %n, align 4, !dbg !3817
  %mul11 = mul nsw i32 %18, %19, !dbg !3818
  %20 = load i32, ptr %j, align 4, !dbg !3819
  %add12 = add nsw i32 %mul11, %20, !dbg !3820
  %idxprom = sext i32 %add12 to i64, !dbg !3815
  %arrayidx = getelementptr inbounds i8, ptr %17, i64 %idxprom, !dbg !3815
  %21 = load i8, ptr %arrayidx, align 1, !dbg !3815
  %conv = zext i8 %21 to i32, !dbg !3815
  %add13 = add nsw i32 %mul10, %conv, !dbg !3821
  %22 = load i32, ptr %m_vec_limbs, align 4, !dbg !3822
  %mul14 = mul nsw i32 %add13, %22, !dbg !3823
  %idx.ext15 = sext i32 %mul14 to i64, !dbg !3824
  %add.ptr16 = getelementptr inbounds i64, ptr %arraydecay, i64 %idx.ext15, !dbg !3824
  call void @m_vec_add(i32 noundef %10, ptr noundef %add.ptr, ptr noundef %add.ptr16), !dbg !3825
  br label %for.inc, !dbg !3826

for.inc:                                          ; preds = %for.body7
  %23 = load i32, ptr %col, align 4, !dbg !3827
  %inc = add nsw i32 %23, 1, !dbg !3827
  store i32 %inc, ptr %col, align 4, !dbg !3827
  br label %for.cond5, !dbg !3828, !llvm.loop !3829

for.end:                                          ; preds = %for.cond5
  %24 = load i32, ptr %P1_used, align 4, !dbg !3831
  %inc17 = add nsw i32 %24, 1, !dbg !3831
  store i32 %inc17, ptr %P1_used, align 4, !dbg !3831
  br label %for.inc18, !dbg !3832

for.inc18:                                        ; preds = %for.end
  %25 = load i32, ptr %j, align 4, !dbg !3833
  %inc19 = add nsw i32 %25, 1, !dbg !3833
  store i32 %inc19, ptr %j, align 4, !dbg !3833
  br label %for.cond2, !dbg !3834, !llvm.loop !3835

for.end20:                                        ; preds = %for.cond2
    #dbg_declare(ptr %j21, !3837, !DIExpression(), !3839)
  store i32 0, ptr %j21, align 4, !dbg !3839
  br label %for.cond22, !dbg !3840

for.cond22:                                       ; preds = %for.inc53, %for.end20
  %26 = load i32, ptr %j21, align 4, !dbg !3841
  %27 = load i32, ptr %o.addr, align 4, !dbg !3843
  %cmp23 = icmp slt i32 %26, %27, !dbg !3844
  br i1 %cmp23, label %for.body25, label %for.end55, !dbg !3845

for.body25:                                       ; preds = %for.cond22
    #dbg_declare(ptr %col26, !3846, !DIExpression(), !3849)
  store i32 0, ptr %col26, align 4, !dbg !3849
  br label %for.cond27, !dbg !3850

for.cond27:                                       ; preds = %for.inc50, %for.body25
  %28 = load i32, ptr %col26, align 4, !dbg !3851
  %29 = load i32, ptr %k.addr, align 4, !dbg !3853
  %cmp28 = icmp slt i32 %28, %29, !dbg !3854
  br i1 %cmp28, label %for.body30, label %for.end52, !dbg !3855

for.body30:                                       ; preds = %for.cond27
  %30 = load i32, ptr %m_vec_limbs, align 4, !dbg !3856
  %31 = load ptr, ptr %P2.addr, align 8, !dbg !3858
  %32 = load i32, ptr %row, align 4, !dbg !3859
  %33 = load i32, ptr %o.addr, align 4, !dbg !3860
  %mul31 = mul nsw i32 %32, %33, !dbg !3861
  %34 = load i32, ptr %j21, align 4, !dbg !3862
  %add32 = add nsw i32 %mul31, %34, !dbg !3863
  %35 = load i32, ptr %m_vec_limbs, align 4, !dbg !3864
  %mul33 = mul nsw i32 %add32, %35, !dbg !3865
  %idx.ext34 = sext i32 %mul33 to i64, !dbg !3866
  %add.ptr35 = getelementptr inbounds i64, ptr %31, i64 %idx.ext34, !dbg !3866
  %arraydecay36 = getelementptr inbounds [266112 x i64], ptr %accumulator, i64 0, i64 0, !dbg !3867
  %36 = load i32, ptr %row, align 4, !dbg !3868
  %37 = load i32, ptr %k.addr, align 4, !dbg !3869
  %mul37 = mul nsw i32 %36, %37, !dbg !3870
  %38 = load i32, ptr %col26, align 4, !dbg !3871
  %add38 = add nsw i32 %mul37, %38, !dbg !3872
  %mul39 = mul nsw i32 %add38, 16, !dbg !3873
  %39 = load ptr, ptr %S.addr, align 8, !dbg !3874
  %40 = load i32, ptr %col26, align 4, !dbg !3875
  %41 = load i32, ptr %n, align 4, !dbg !3876
  %mul40 = mul nsw i32 %40, %41, !dbg !3877
  %42 = load i32, ptr %j21, align 4, !dbg !3878
  %add41 = add nsw i32 %mul40, %42, !dbg !3879
  %43 = load i32, ptr %v.addr, align 4, !dbg !3880
  %add42 = add nsw i32 %add41, %43, !dbg !3881
  %idxprom43 = sext i32 %add42 to i64, !dbg !3874
  %arrayidx44 = getelementptr inbounds i8, ptr %39, i64 %idxprom43, !dbg !3874
  %44 = load i8, ptr %arrayidx44, align 1, !dbg !3874
  %conv45 = zext i8 %44 to i32, !dbg !3874
  %add46 = add nsw i32 %mul39, %conv45, !dbg !3882
  %45 = load i32, ptr %m_vec_limbs, align 4, !dbg !3883
  %mul47 = mul nsw i32 %add46, %45, !dbg !3884
  %idx.ext48 = sext i32 %mul47 to i64, !dbg !3885
  %add.ptr49 = getelementptr inbounds i64, ptr %arraydecay36, i64 %idx.ext48, !dbg !3885
  call void @m_vec_add(i32 noundef %30, ptr noundef %add.ptr35, ptr noundef %add.ptr49), !dbg !3886
  br label %for.inc50, !dbg !3887

for.inc50:                                        ; preds = %for.body30
  %46 = load i32, ptr %col26, align 4, !dbg !3888
  %inc51 = add nsw i32 %46, 1, !dbg !3888
  store i32 %inc51, ptr %col26, align 4, !dbg !3888
  br label %for.cond27, !dbg !3889, !llvm.loop !3890

for.end52:                                        ; preds = %for.cond27
  br label %for.inc53, !dbg !3892

for.inc53:                                        ; preds = %for.end52
  %47 = load i32, ptr %j21, align 4, !dbg !3893
  %inc54 = add nsw i32 %47, 1, !dbg !3893
  store i32 %inc54, ptr %j21, align 4, !dbg !3893
  br label %for.cond22, !dbg !3894, !llvm.loop !3895

for.end55:                                        ; preds = %for.cond22
  br label %for.inc56, !dbg !3897

for.inc56:                                        ; preds = %for.end55
  %48 = load i32, ptr %row, align 4, !dbg !3898
  %inc57 = add nsw i32 %48, 1, !dbg !3898
  store i32 %inc57, ptr %row, align 4, !dbg !3898
  br label %for.cond, !dbg !3899, !llvm.loop !3900

for.end58:                                        ; preds = %for.cond
    #dbg_declare(ptr %P3_used, !3902, !DIExpression(), !3903)
  store i32 0, ptr %P3_used, align 4, !dbg !3903
    #dbg_declare(ptr %row59, !3904, !DIExpression(), !3906)
  %49 = load i32, ptr %v.addr, align 4, !dbg !3907
  store i32 %49, ptr %row59, align 4, !dbg !3906
  br label %for.cond60, !dbg !3908

for.cond60:                                       ; preds = %for.inc97, %for.end58
  %50 = load i32, ptr %row59, align 4, !dbg !3909
  %51 = load i32, ptr %n, align 4, !dbg !3911
  %cmp61 = icmp slt i32 %50, %51, !dbg !3912
  br i1 %cmp61, label %for.body63, label %for.end99, !dbg !3913

for.body63:                                       ; preds = %for.cond60
    #dbg_declare(ptr %j64, !3914, !DIExpression(), !3917)
  %52 = load i32, ptr %row59, align 4, !dbg !3918
  store i32 %52, ptr %j64, align 4, !dbg !3917
  br label %for.cond65, !dbg !3919

for.cond65:                                       ; preds = %for.inc94, %for.body63
  %53 = load i32, ptr %j64, align 4, !dbg !3920
  %54 = load i32, ptr %n, align 4, !dbg !3922
  %cmp66 = icmp slt i32 %53, %54, !dbg !3923
  br i1 %cmp66, label %for.body68, label %for.end96, !dbg !3924

for.body68:                                       ; preds = %for.cond65
    #dbg_declare(ptr %col69, !3925, !DIExpression(), !3928)
  store i32 0, ptr %col69, align 4, !dbg !3928
  br label %for.cond70, !dbg !3929

for.cond70:                                       ; preds = %for.inc90, %for.body68
  %55 = load i32, ptr %col69, align 4, !dbg !3930
  %56 = load i32, ptr %k.addr, align 4, !dbg !3932
  %cmp71 = icmp slt i32 %55, %56, !dbg !3933
  br i1 %cmp71, label %for.body73, label %for.end92, !dbg !3934

for.body73:                                       ; preds = %for.cond70
  %57 = load i32, ptr %m_vec_limbs, align 4, !dbg !3935
  %58 = load ptr, ptr %P3.addr, align 8, !dbg !3937
  %59 = load i32, ptr %P3_used, align 4, !dbg !3938
  %60 = load i32, ptr %m_vec_limbs, align 4, !dbg !3939
  %mul74 = mul nsw i32 %59, %60, !dbg !3940
  %idx.ext75 = sext i32 %mul74 to i64, !dbg !3941
  %add.ptr76 = getelementptr inbounds i64, ptr %58, i64 %idx.ext75, !dbg !3941
  %arraydecay77 = getelementptr inbounds [266112 x i64], ptr %accumulator, i64 0, i64 0, !dbg !3942
  %61 = load i32, ptr %row59, align 4, !dbg !3943
  %62 = load i32, ptr %k.addr, align 4, !dbg !3944
  %mul78 = mul nsw i32 %61, %62, !dbg !3945
  %63 = load i32, ptr %col69, align 4, !dbg !3946
  %add79 = add nsw i32 %mul78, %63, !dbg !3947
  %mul80 = mul nsw i32 %add79, 16, !dbg !3948
  %64 = load ptr, ptr %S.addr, align 8, !dbg !3949
  %65 = load i32, ptr %col69, align 4, !dbg !3950
  %66 = load i32, ptr %n, align 4, !dbg !3951
  %mul81 = mul nsw i32 %65, %66, !dbg !3952
  %67 = load i32, ptr %j64, align 4, !dbg !3953
  %add82 = add nsw i32 %mul81, %67, !dbg !3954
  %idxprom83 = sext i32 %add82 to i64, !dbg !3949
  %arrayidx84 = getelementptr inbounds i8, ptr %64, i64 %idxprom83, !dbg !3949
  %68 = load i8, ptr %arrayidx84, align 1, !dbg !3949
  %conv85 = zext i8 %68 to i32, !dbg !3949
  %add86 = add nsw i32 %mul80, %conv85, !dbg !3955
  %69 = load i32, ptr %m_vec_limbs, align 4, !dbg !3956
  %mul87 = mul nsw i32 %add86, %69, !dbg !3957
  %idx.ext88 = sext i32 %mul87 to i64, !dbg !3958
  %add.ptr89 = getelementptr inbounds i64, ptr %arraydecay77, i64 %idx.ext88, !dbg !3958
  call void @m_vec_add(i32 noundef %57, ptr noundef %add.ptr76, ptr noundef %add.ptr89), !dbg !3959
  br label %for.inc90, !dbg !3960

for.inc90:                                        ; preds = %for.body73
  %70 = load i32, ptr %col69, align 4, !dbg !3961
  %inc91 = add nsw i32 %70, 1, !dbg !3961
  store i32 %inc91, ptr %col69, align 4, !dbg !3961
  br label %for.cond70, !dbg !3962, !llvm.loop !3963

for.end92:                                        ; preds = %for.cond70
  %71 = load i32, ptr %P3_used, align 4, !dbg !3965
  %inc93 = add nsw i32 %71, 1, !dbg !3965
  store i32 %inc93, ptr %P3_used, align 4, !dbg !3965
  br label %for.inc94, !dbg !3966

for.inc94:                                        ; preds = %for.end92
  %72 = load i32, ptr %j64, align 4, !dbg !3967
  %inc95 = add nsw i32 %72, 1, !dbg !3967
  store i32 %inc95, ptr %j64, align 4, !dbg !3967
  br label %for.cond65, !dbg !3968, !llvm.loop !3969

for.end96:                                        ; preds = %for.cond65
  br label %for.inc97, !dbg !3971

for.inc97:                                        ; preds = %for.end96
  %73 = load i32, ptr %row59, align 4, !dbg !3972
  %inc98 = add nsw i32 %73, 1, !dbg !3972
  store i32 %inc98, ptr %row59, align 4, !dbg !3972
  br label %for.cond60, !dbg !3973, !llvm.loop !3974

for.end99:                                        ; preds = %for.cond60
    #dbg_declare(ptr %i, !3976, !DIExpression(), !3977)
  store i32 0, ptr %i, align 4, !dbg !3977
  br label %while.cond, !dbg !3978

while.cond:                                       ; preds = %while.body, %for.end99
  %74 = load i32, ptr %i, align 4, !dbg !3979
  %75 = load i32, ptr %n, align 4, !dbg !3980
  %76 = load i32, ptr %k.addr, align 4, !dbg !3981
  %mul100 = mul nsw i32 %75, %76, !dbg !3982
  %cmp101 = icmp slt i32 %74, %mul100, !dbg !3983
  br i1 %cmp101, label %while.body, label %while.end, !dbg !3978

while.body:                                       ; preds = %while.cond
  %77 = load i32, ptr %m_vec_limbs, align 4, !dbg !3984
  %arraydecay103 = getelementptr inbounds [266112 x i64], ptr %accumulator, i64 0, i64 0, !dbg !3986
  %78 = load i32, ptr %i, align 4, !dbg !3987
  %mul104 = mul nsw i32 %78, 16, !dbg !3988
  %79 = load i32, ptr %m_vec_limbs, align 4, !dbg !3989
  %mul105 = mul nsw i32 %mul104, %79, !dbg !3990
  %idx.ext106 = sext i32 %mul105 to i64, !dbg !3991
  %add.ptr107 = getelementptr inbounds i64, ptr %arraydecay103, i64 %idx.ext106, !dbg !3991
  %80 = load ptr, ptr %PS.addr, align 8, !dbg !3992
  %81 = load i32, ptr %i, align 4, !dbg !3993
  %82 = load i32, ptr %m_vec_limbs, align 4, !dbg !3994
  %mul108 = mul nsw i32 %81, %82, !dbg !3995
  %idx.ext109 = sext i32 %mul108 to i64, !dbg !3996
  %add.ptr110 = getelementptr inbounds i64, ptr %80, i64 %idx.ext109, !dbg !3996
  call void @m_vec_multiply_bins(i32 noundef %77, ptr noundef %add.ptr107, ptr noundef %add.ptr110), !dbg !3997
  %83 = load i32, ptr %i, align 4, !dbg !3998
  %inc111 = add nsw i32 %83, 1, !dbg !3998
  store i32 %inc111, ptr %i, align 4, !dbg !3998
  br label %while.cond, !dbg !3978, !llvm.loop !3999

while.end:                                        ; preds = %while.cond
  ret void, !dbg !4001
}

; Function Attrs: noinline nounwind optnone
define internal void @mayo_generic_m_calculate_SPS(ptr noundef %PS, ptr noundef %S, i32 noundef %m, i32 noundef %k, i32 noundef %n, ptr noundef %SPS) #0 !dbg !4002 {
entry:
  %PS.addr = alloca ptr, align 8
  %S.addr = alloca ptr, align 8
  %m.addr = alloca i32, align 4
  %k.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %SPS.addr = alloca ptr, align 8
  %accumulator = alloca [20736 x i64], align 16
  %m_vec_limbs = alloca i32, align 4
  %row = alloca i32, align 4
  %j = alloca i32, align 4
  %col = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %PS, ptr %PS.addr, align 8
    #dbg_declare(ptr %PS.addr, !4005, !DIExpression(), !4006)
  store ptr %S, ptr %S.addr, align 8
    #dbg_declare(ptr %S.addr, !4007, !DIExpression(), !4008)
  store i32 %m, ptr %m.addr, align 4
    #dbg_declare(ptr %m.addr, !4009, !DIExpression(), !4010)
  store i32 %k, ptr %k.addr, align 4
    #dbg_declare(ptr %k.addr, !4011, !DIExpression(), !4012)
  store i32 %n, ptr %n.addr, align 4
    #dbg_declare(ptr %n.addr, !4013, !DIExpression(), !4014)
  store ptr %SPS, ptr %SPS.addr, align 8
    #dbg_declare(ptr %SPS.addr, !4015, !DIExpression(), !4016)
    #dbg_declare(ptr %accumulator, !4017, !DIExpression(), !4021)
  call void @llvm.memset.p0.i64(ptr align 16 %accumulator, i8 0, i64 165888, i1 false), !dbg !4021
    #dbg_declare(ptr %m_vec_limbs, !4022, !DIExpression(), !4023)
  %0 = load i32, ptr %m.addr, align 4, !dbg !4024
  %add = add nsw i32 %0, 15, !dbg !4025
  %div = sdiv i32 %add, 16, !dbg !4026
  store i32 %div, ptr %m_vec_limbs, align 4, !dbg !4023
    #dbg_declare(ptr %row, !4027, !DIExpression(), !4029)
  store i32 0, ptr %row, align 4, !dbg !4029
  br label %for.cond, !dbg !4030

for.cond:                                         ; preds = %for.inc21, %entry
  %1 = load i32, ptr %row, align 4, !dbg !4031
  %2 = load i32, ptr %k.addr, align 4, !dbg !4033
  %cmp = icmp slt i32 %1, %2, !dbg !4034
  br i1 %cmp, label %for.body, label %for.end23, !dbg !4035

for.body:                                         ; preds = %for.cond
    #dbg_declare(ptr %j, !4036, !DIExpression(), !4039)
  store i32 0, ptr %j, align 4, !dbg !4039
  br label %for.cond1, !dbg !4040

for.cond1:                                        ; preds = %for.inc19, %for.body
  %3 = load i32, ptr %j, align 4, !dbg !4041
  %4 = load i32, ptr %n.addr, align 4, !dbg !4043
  %cmp2 = icmp slt i32 %3, %4, !dbg !4044
  br i1 %cmp2, label %for.body3, label %for.end20, !dbg !4045

for.body3:                                        ; preds = %for.cond1
    #dbg_declare(ptr %col, !4046, !DIExpression(), !4049)
  store i32 0, ptr %col, align 4, !dbg !4049
  br label %for.cond4, !dbg !4050

for.cond4:                                        ; preds = %for.inc, %for.body3
  %5 = load i32, ptr %col, align 4, !dbg !4051
  %6 = load i32, ptr %k.addr, align 4, !dbg !4053
  %cmp5 = icmp slt i32 %5, %6, !dbg !4054
  br i1 %cmp5, label %for.body6, label %for.end, !dbg !4055

for.body6:                                        ; preds = %for.cond4
  %7 = load i32, ptr %m_vec_limbs, align 4, !dbg !4056
  %8 = load ptr, ptr %PS.addr, align 8, !dbg !4058
  %9 = load i32, ptr %j, align 4, !dbg !4059
  %10 = load i32, ptr %k.addr, align 4, !dbg !4060
  %mul = mul nsw i32 %9, %10, !dbg !4061
  %11 = load i32, ptr %col, align 4, !dbg !4062
  %add7 = add nsw i32 %mul, %11, !dbg !4063
  %12 = load i32, ptr %m_vec_limbs, align 4, !dbg !4064
  %mul8 = mul nsw i32 %add7, %12, !dbg !4065
  %idx.ext = sext i32 %mul8 to i64, !dbg !4066
  %add.ptr = getelementptr inbounds i64, ptr %8, i64 %idx.ext, !dbg !4066
  %arraydecay = getelementptr inbounds [20736 x i64], ptr %accumulator, i64 0, i64 0, !dbg !4067
  %13 = load i32, ptr %row, align 4, !dbg !4068
  %14 = load i32, ptr %k.addr, align 4, !dbg !4069
  %mul9 = mul nsw i32 %13, %14, !dbg !4070
  %15 = load i32, ptr %col, align 4, !dbg !4071
  %add10 = add nsw i32 %mul9, %15, !dbg !4072
  %mul11 = mul nsw i32 %add10, 16, !dbg !4073
  %16 = load ptr, ptr %S.addr, align 8, !dbg !4074
  %17 = load i32, ptr %row, align 4, !dbg !4075
  %18 = load i32, ptr %n.addr, align 4, !dbg !4076
  %mul12 = mul nsw i32 %17, %18, !dbg !4077
  %19 = load i32, ptr %j, align 4, !dbg !4078
  %add13 = add nsw i32 %mul12, %19, !dbg !4079
  %idxprom = sext i32 %add13 to i64, !dbg !4074
  %arrayidx = getelementptr inbounds i8, ptr %16, i64 %idxprom, !dbg !4074
  %20 = load i8, ptr %arrayidx, align 1, !dbg !4074
  %conv = zext i8 %20 to i32, !dbg !4074
  %add14 = add nsw i32 %mul11, %conv, !dbg !4080
  %21 = load i32, ptr %m_vec_limbs, align 4, !dbg !4081
  %mul15 = mul nsw i32 %add14, %21, !dbg !4082
  %idx.ext16 = sext i32 %mul15 to i64, !dbg !4083
  %add.ptr17 = getelementptr inbounds i64, ptr %arraydecay, i64 %idx.ext16, !dbg !4083
  call void @m_vec_add(i32 noundef %7, ptr noundef %add.ptr, ptr noundef %add.ptr17), !dbg !4084
  br label %for.inc, !dbg !4085

for.inc:                                          ; preds = %for.body6
  %22 = load i32, ptr %col, align 4, !dbg !4086
  %add18 = add nsw i32 %22, 1, !dbg !4086
  store i32 %add18, ptr %col, align 4, !dbg !4086
  br label %for.cond4, !dbg !4087, !llvm.loop !4088

for.end:                                          ; preds = %for.cond4
  br label %for.inc19, !dbg !4090

for.inc19:                                        ; preds = %for.end
  %23 = load i32, ptr %j, align 4, !dbg !4091
  %inc = add nsw i32 %23, 1, !dbg !4091
  store i32 %inc, ptr %j, align 4, !dbg !4091
  br label %for.cond1, !dbg !4092, !llvm.loop !4093

for.end20:                                        ; preds = %for.cond1
  br label %for.inc21, !dbg !4095

for.inc21:                                        ; preds = %for.end20
  %24 = load i32, ptr %row, align 4, !dbg !4096
  %inc22 = add nsw i32 %24, 1, !dbg !4096
  store i32 %inc22, ptr %row, align 4, !dbg !4096
  br label %for.cond, !dbg !4097, !llvm.loop !4098

for.end23:                                        ; preds = %for.cond
    #dbg_declare(ptr %i, !4100, !DIExpression(), !4101)
  store i32 0, ptr %i, align 4, !dbg !4101
  br label %while.cond, !dbg !4102

while.cond:                                       ; preds = %while.body, %for.end23
  %25 = load i32, ptr %i, align 4, !dbg !4103
  %26 = load i32, ptr %k.addr, align 4, !dbg !4104
  %27 = load i32, ptr %k.addr, align 4, !dbg !4105
  %mul24 = mul nsw i32 %26, %27, !dbg !4106
  %cmp25 = icmp slt i32 %25, %mul24, !dbg !4107
  br i1 %cmp25, label %while.body, label %while.end, !dbg !4102

while.body:                                       ; preds = %while.cond
  %28 = load i32, ptr %m_vec_limbs, align 4, !dbg !4108
  %arraydecay27 = getelementptr inbounds [20736 x i64], ptr %accumulator, i64 0, i64 0, !dbg !4110
  %29 = load i32, ptr %i, align 4, !dbg !4111
  %mul28 = mul nsw i32 %29, 16, !dbg !4112
  %30 = load i32, ptr %m_vec_limbs, align 4, !dbg !4113
  %mul29 = mul nsw i32 %mul28, %30, !dbg !4114
  %idx.ext30 = sext i32 %mul29 to i64, !dbg !4115
  %add.ptr31 = getelementptr inbounds i64, ptr %arraydecay27, i64 %idx.ext30, !dbg !4115
  %31 = load ptr, ptr %SPS.addr, align 8, !dbg !4116
  %32 = load i32, ptr %i, align 4, !dbg !4117
  %33 = load i32, ptr %m_vec_limbs, align 4, !dbg !4118
  %mul32 = mul nsw i32 %32, %33, !dbg !4119
  %idx.ext33 = sext i32 %mul32 to i64, !dbg !4120
  %add.ptr34 = getelementptr inbounds i64, ptr %31, i64 %idx.ext33, !dbg !4120
  call void @m_vec_multiply_bins(i32 noundef %28, ptr noundef %add.ptr31, ptr noundef %add.ptr34), !dbg !4121
  %34 = load i32, ptr %i, align 4, !dbg !4122
  %inc35 = add nsw i32 %34, 1, !dbg !4122
  store i32 %inc35, ptr %i, align 4, !dbg !4122
  br label %while.cond, !dbg !4102, !llvm.loop !4123

while.end:                                        ; preds = %while.cond
  ret void, !dbg !4125
}

; Function Attrs: noinline nounwind optnone
define internal void @m_vec_add(i32 noundef %m_vec_limbs, ptr noundef %in, ptr noundef %acc) #0 !dbg !4126 {
entry:
  %m_vec_limbs.addr = alloca i32, align 4
  %in.addr = alloca ptr, align 8
  %acc.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store i32 %m_vec_limbs, ptr %m_vec_limbs.addr, align 4
    #dbg_declare(ptr %m_vec_limbs.addr, !4129, !DIExpression(), !4130)
  store ptr %in, ptr %in.addr, align 8
    #dbg_declare(ptr %in.addr, !4131, !DIExpression(), !4132)
  store ptr %acc, ptr %acc.addr, align 8
    #dbg_declare(ptr %acc.addr, !4133, !DIExpression(), !4134)
    #dbg_declare(ptr %i, !4135, !DIExpression(), !4137)
  store i32 0, ptr %i, align 4, !dbg !4137
  br label %for.cond, !dbg !4138

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !4139
  %1 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4141
  %cmp = icmp slt i32 %0, %1, !dbg !4142
  br i1 %cmp, label %for.body, label %for.end, !dbg !4143

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %in.addr, align 8, !dbg !4144
  %3 = load i32, ptr %i, align 4, !dbg !4146
  %idxprom = sext i32 %3 to i64, !dbg !4144
  %arrayidx = getelementptr inbounds i64, ptr %2, i64 %idxprom, !dbg !4144
  %4 = load i64, ptr %arrayidx, align 8, !dbg !4144
  %5 = load ptr, ptr %acc.addr, align 8, !dbg !4147
  %6 = load i32, ptr %i, align 4, !dbg !4148
  %idxprom1 = sext i32 %6 to i64, !dbg !4147
  %arrayidx2 = getelementptr inbounds i64, ptr %5, i64 %idxprom1, !dbg !4147
  %7 = load i64, ptr %arrayidx2, align 8, !dbg !4149
  %xor = xor i64 %7, %4, !dbg !4149
  store i64 %xor, ptr %arrayidx2, align 8, !dbg !4149
  br label %for.inc, !dbg !4150

for.inc:                                          ; preds = %for.body
  %8 = load i32, ptr %i, align 4, !dbg !4151
  %inc = add nsw i32 %8, 1, !dbg !4151
  store i32 %inc, ptr %i, align 4, !dbg !4151
  br label %for.cond, !dbg !4152, !llvm.loop !4153

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4155
}

; Function Attrs: noinline nounwind optnone
define internal void @m_vec_multiply_bins(i32 noundef %m_vec_limbs, ptr noundef %bins, ptr noundef %out) #0 !dbg !4156 {
entry:
  %m_vec_limbs.addr = alloca i32, align 4
  %bins.addr = alloca ptr, align 8
  %out.addr = alloca ptr, align 8
  store i32 %m_vec_limbs, ptr %m_vec_limbs.addr, align 4
    #dbg_declare(ptr %m_vec_limbs.addr, !4159, !DIExpression(), !4160)
  store ptr %bins, ptr %bins.addr, align 8
    #dbg_declare(ptr %bins.addr, !4161, !DIExpression(), !4162)
  store ptr %out, ptr %out.addr, align 8
    #dbg_declare(ptr %out.addr, !4163, !DIExpression(), !4164)
  %0 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4165
  %1 = load ptr, ptr %bins.addr, align 8, !dbg !4166
  %2 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4167
  %mul = mul nsw i32 5, %2, !dbg !4168
  %idx.ext = sext i32 %mul to i64, !dbg !4169
  %add.ptr = getelementptr inbounds i64, ptr %1, i64 %idx.ext, !dbg !4169
  %3 = load ptr, ptr %bins.addr, align 8, !dbg !4170
  %4 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4171
  %mul1 = mul nsw i32 10, %4, !dbg !4172
  %idx.ext2 = sext i32 %mul1 to i64, !dbg !4173
  %add.ptr3 = getelementptr inbounds i64, ptr %3, i64 %idx.ext2, !dbg !4173
  call void @m_vec_mul_add_x_inv(i32 noundef %0, ptr noundef %add.ptr, ptr noundef %add.ptr3), !dbg !4174
  %5 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4175
  %6 = load ptr, ptr %bins.addr, align 8, !dbg !4176
  %7 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4177
  %mul4 = mul nsw i32 11, %7, !dbg !4178
  %idx.ext5 = sext i32 %mul4 to i64, !dbg !4179
  %add.ptr6 = getelementptr inbounds i64, ptr %6, i64 %idx.ext5, !dbg !4179
  %8 = load ptr, ptr %bins.addr, align 8, !dbg !4180
  %9 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4181
  %mul7 = mul nsw i32 12, %9, !dbg !4182
  %idx.ext8 = sext i32 %mul7 to i64, !dbg !4183
  %add.ptr9 = getelementptr inbounds i64, ptr %8, i64 %idx.ext8, !dbg !4183
  call void @m_vec_mul_add_x(i32 noundef %5, ptr noundef %add.ptr6, ptr noundef %add.ptr9), !dbg !4184
  %10 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4185
  %11 = load ptr, ptr %bins.addr, align 8, !dbg !4186
  %12 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4187
  %mul10 = mul nsw i32 10, %12, !dbg !4188
  %idx.ext11 = sext i32 %mul10 to i64, !dbg !4189
  %add.ptr12 = getelementptr inbounds i64, ptr %11, i64 %idx.ext11, !dbg !4189
  %13 = load ptr, ptr %bins.addr, align 8, !dbg !4190
  %14 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4191
  %mul13 = mul nsw i32 7, %14, !dbg !4192
  %idx.ext14 = sext i32 %mul13 to i64, !dbg !4193
  %add.ptr15 = getelementptr inbounds i64, ptr %13, i64 %idx.ext14, !dbg !4193
  call void @m_vec_mul_add_x_inv(i32 noundef %10, ptr noundef %add.ptr12, ptr noundef %add.ptr15), !dbg !4194
  %15 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4195
  %16 = load ptr, ptr %bins.addr, align 8, !dbg !4196
  %17 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4197
  %mul16 = mul nsw i32 12, %17, !dbg !4198
  %idx.ext17 = sext i32 %mul16 to i64, !dbg !4199
  %add.ptr18 = getelementptr inbounds i64, ptr %16, i64 %idx.ext17, !dbg !4199
  %18 = load ptr, ptr %bins.addr, align 8, !dbg !4200
  %19 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4201
  %mul19 = mul nsw i32 6, %19, !dbg !4202
  %idx.ext20 = sext i32 %mul19 to i64, !dbg !4203
  %add.ptr21 = getelementptr inbounds i64, ptr %18, i64 %idx.ext20, !dbg !4203
  call void @m_vec_mul_add_x(i32 noundef %15, ptr noundef %add.ptr18, ptr noundef %add.ptr21), !dbg !4204
  %20 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4205
  %21 = load ptr, ptr %bins.addr, align 8, !dbg !4206
  %22 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4207
  %mul22 = mul nsw i32 7, %22, !dbg !4208
  %idx.ext23 = sext i32 %mul22 to i64, !dbg !4209
  %add.ptr24 = getelementptr inbounds i64, ptr %21, i64 %idx.ext23, !dbg !4209
  %23 = load ptr, ptr %bins.addr, align 8, !dbg !4210
  %24 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4211
  %mul25 = mul nsw i32 14, %24, !dbg !4212
  %idx.ext26 = sext i32 %mul25 to i64, !dbg !4213
  %add.ptr27 = getelementptr inbounds i64, ptr %23, i64 %idx.ext26, !dbg !4213
  call void @m_vec_mul_add_x_inv(i32 noundef %20, ptr noundef %add.ptr24, ptr noundef %add.ptr27), !dbg !4214
  %25 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4215
  %26 = load ptr, ptr %bins.addr, align 8, !dbg !4216
  %27 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4217
  %mul28 = mul nsw i32 6, %27, !dbg !4218
  %idx.ext29 = sext i32 %mul28 to i64, !dbg !4219
  %add.ptr30 = getelementptr inbounds i64, ptr %26, i64 %idx.ext29, !dbg !4219
  %28 = load ptr, ptr %bins.addr, align 8, !dbg !4220
  %29 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4221
  %mul31 = mul nsw i32 3, %29, !dbg !4222
  %idx.ext32 = sext i32 %mul31 to i64, !dbg !4223
  %add.ptr33 = getelementptr inbounds i64, ptr %28, i64 %idx.ext32, !dbg !4223
  call void @m_vec_mul_add_x(i32 noundef %25, ptr noundef %add.ptr30, ptr noundef %add.ptr33), !dbg !4224
  %30 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4225
  %31 = load ptr, ptr %bins.addr, align 8, !dbg !4226
  %32 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4227
  %mul34 = mul nsw i32 14, %32, !dbg !4228
  %idx.ext35 = sext i32 %mul34 to i64, !dbg !4229
  %add.ptr36 = getelementptr inbounds i64, ptr %31, i64 %idx.ext35, !dbg !4229
  %33 = load ptr, ptr %bins.addr, align 8, !dbg !4230
  %34 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4231
  %mul37 = mul nsw i32 15, %34, !dbg !4232
  %idx.ext38 = sext i32 %mul37 to i64, !dbg !4233
  %add.ptr39 = getelementptr inbounds i64, ptr %33, i64 %idx.ext38, !dbg !4233
  call void @m_vec_mul_add_x_inv(i32 noundef %30, ptr noundef %add.ptr36, ptr noundef %add.ptr39), !dbg !4234
  %35 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4235
  %36 = load ptr, ptr %bins.addr, align 8, !dbg !4236
  %37 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4237
  %mul40 = mul nsw i32 3, %37, !dbg !4238
  %idx.ext41 = sext i32 %mul40 to i64, !dbg !4239
  %add.ptr42 = getelementptr inbounds i64, ptr %36, i64 %idx.ext41, !dbg !4239
  %38 = load ptr, ptr %bins.addr, align 8, !dbg !4240
  %39 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4241
  %mul43 = mul nsw i32 8, %39, !dbg !4242
  %idx.ext44 = sext i32 %mul43 to i64, !dbg !4243
  %add.ptr45 = getelementptr inbounds i64, ptr %38, i64 %idx.ext44, !dbg !4243
  call void @m_vec_mul_add_x(i32 noundef %35, ptr noundef %add.ptr42, ptr noundef %add.ptr45), !dbg !4244
  %40 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4245
  %41 = load ptr, ptr %bins.addr, align 8, !dbg !4246
  %42 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4247
  %mul46 = mul nsw i32 15, %42, !dbg !4248
  %idx.ext47 = sext i32 %mul46 to i64, !dbg !4249
  %add.ptr48 = getelementptr inbounds i64, ptr %41, i64 %idx.ext47, !dbg !4249
  %43 = load ptr, ptr %bins.addr, align 8, !dbg !4250
  %44 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4251
  %mul49 = mul nsw i32 13, %44, !dbg !4252
  %idx.ext50 = sext i32 %mul49 to i64, !dbg !4253
  %add.ptr51 = getelementptr inbounds i64, ptr %43, i64 %idx.ext50, !dbg !4253
  call void @m_vec_mul_add_x_inv(i32 noundef %40, ptr noundef %add.ptr48, ptr noundef %add.ptr51), !dbg !4254
  %45 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4255
  %46 = load ptr, ptr %bins.addr, align 8, !dbg !4256
  %47 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4257
  %mul52 = mul nsw i32 8, %47, !dbg !4258
  %idx.ext53 = sext i32 %mul52 to i64, !dbg !4259
  %add.ptr54 = getelementptr inbounds i64, ptr %46, i64 %idx.ext53, !dbg !4259
  %48 = load ptr, ptr %bins.addr, align 8, !dbg !4260
  %49 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4261
  %mul55 = mul nsw i32 4, %49, !dbg !4262
  %idx.ext56 = sext i32 %mul55 to i64, !dbg !4263
  %add.ptr57 = getelementptr inbounds i64, ptr %48, i64 %idx.ext56, !dbg !4263
  call void @m_vec_mul_add_x(i32 noundef %45, ptr noundef %add.ptr54, ptr noundef %add.ptr57), !dbg !4264
  %50 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4265
  %51 = load ptr, ptr %bins.addr, align 8, !dbg !4266
  %52 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4267
  %mul58 = mul nsw i32 13, %52, !dbg !4268
  %idx.ext59 = sext i32 %mul58 to i64, !dbg !4269
  %add.ptr60 = getelementptr inbounds i64, ptr %51, i64 %idx.ext59, !dbg !4269
  %53 = load ptr, ptr %bins.addr, align 8, !dbg !4270
  %54 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4271
  %mul61 = mul nsw i32 9, %54, !dbg !4272
  %idx.ext62 = sext i32 %mul61 to i64, !dbg !4273
  %add.ptr63 = getelementptr inbounds i64, ptr %53, i64 %idx.ext62, !dbg !4273
  call void @m_vec_mul_add_x_inv(i32 noundef %50, ptr noundef %add.ptr60, ptr noundef %add.ptr63), !dbg !4274
  %55 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4275
  %56 = load ptr, ptr %bins.addr, align 8, !dbg !4276
  %57 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4277
  %mul64 = mul nsw i32 4, %57, !dbg !4278
  %idx.ext65 = sext i32 %mul64 to i64, !dbg !4279
  %add.ptr66 = getelementptr inbounds i64, ptr %56, i64 %idx.ext65, !dbg !4279
  %58 = load ptr, ptr %bins.addr, align 8, !dbg !4280
  %59 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4281
  %mul67 = mul nsw i32 2, %59, !dbg !4282
  %idx.ext68 = sext i32 %mul67 to i64, !dbg !4283
  %add.ptr69 = getelementptr inbounds i64, ptr %58, i64 %idx.ext68, !dbg !4283
  call void @m_vec_mul_add_x(i32 noundef %55, ptr noundef %add.ptr66, ptr noundef %add.ptr69), !dbg !4284
  %60 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4285
  %61 = load ptr, ptr %bins.addr, align 8, !dbg !4286
  %62 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4287
  %mul70 = mul nsw i32 9, %62, !dbg !4288
  %idx.ext71 = sext i32 %mul70 to i64, !dbg !4289
  %add.ptr72 = getelementptr inbounds i64, ptr %61, i64 %idx.ext71, !dbg !4289
  %63 = load ptr, ptr %bins.addr, align 8, !dbg !4290
  %64 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4291
  %mul73 = mul nsw i32 1, %64, !dbg !4292
  %idx.ext74 = sext i32 %mul73 to i64, !dbg !4293
  %add.ptr75 = getelementptr inbounds i64, ptr %63, i64 %idx.ext74, !dbg !4293
  call void @m_vec_mul_add_x_inv(i32 noundef %60, ptr noundef %add.ptr72, ptr noundef %add.ptr75), !dbg !4294
  %65 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4295
  %66 = load ptr, ptr %bins.addr, align 8, !dbg !4296
  %67 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4297
  %mul76 = mul nsw i32 2, %67, !dbg !4298
  %idx.ext77 = sext i32 %mul76 to i64, !dbg !4299
  %add.ptr78 = getelementptr inbounds i64, ptr %66, i64 %idx.ext77, !dbg !4299
  %68 = load ptr, ptr %bins.addr, align 8, !dbg !4300
  %69 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4301
  %mul79 = mul nsw i32 1, %69, !dbg !4302
  %idx.ext80 = sext i32 %mul79 to i64, !dbg !4303
  %add.ptr81 = getelementptr inbounds i64, ptr %68, i64 %idx.ext80, !dbg !4303
  call void @m_vec_mul_add_x(i32 noundef %65, ptr noundef %add.ptr78, ptr noundef %add.ptr81), !dbg !4304
  %70 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4305
  %71 = load ptr, ptr %bins.addr, align 8, !dbg !4306
  %72 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4307
  %idx.ext82 = sext i32 %72 to i64, !dbg !4308
  %add.ptr83 = getelementptr inbounds i64, ptr %71, i64 %idx.ext82, !dbg !4308
  %73 = load ptr, ptr %out.addr, align 8, !dbg !4309
  call void @m_vec_copy(i32 noundef %70, ptr noundef %add.ptr83, ptr noundef %73), !dbg !4310
  ret void, !dbg !4311
}

; Function Attrs: noinline nounwind optnone
define internal void @m_vec_mul_add_x_inv(i32 noundef %m_vec_limbs, ptr noundef %in, ptr noundef %acc) #0 !dbg !4312 {
entry:
  %m_vec_limbs.addr = alloca i32, align 4
  %in.addr = alloca ptr, align 8
  %acc.addr = alloca ptr, align 8
  %mask_lsb = alloca i64, align 8
  %i = alloca i32, align 4
  %t = alloca i64, align 8
  store i32 %m_vec_limbs, ptr %m_vec_limbs.addr, align 4
    #dbg_declare(ptr %m_vec_limbs.addr, !4313, !DIExpression(), !4314)
  store ptr %in, ptr %in.addr, align 8
    #dbg_declare(ptr %in.addr, !4315, !DIExpression(), !4316)
  store ptr %acc, ptr %acc.addr, align 8
    #dbg_declare(ptr %acc.addr, !4317, !DIExpression(), !4318)
    #dbg_declare(ptr %mask_lsb, !4319, !DIExpression(), !4320)
  store i64 1229782938247303441, ptr %mask_lsb, align 8, !dbg !4320
    #dbg_declare(ptr %i, !4321, !DIExpression(), !4323)
  store i32 0, ptr %i, align 4, !dbg !4323
  br label %for.cond, !dbg !4324

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !4325
  %1 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4327
  %cmp = icmp slt i32 %0, %1, !dbg !4328
  br i1 %cmp, label %for.body, label %for.end, !dbg !4329

for.body:                                         ; preds = %for.cond
    #dbg_declare(ptr %t, !4330, !DIExpression(), !4332)
  %2 = load ptr, ptr %in.addr, align 8, !dbg !4333
  %3 = load i32, ptr %i, align 4, !dbg !4334
  %idxprom = sext i32 %3 to i64, !dbg !4333
  %arrayidx = getelementptr inbounds i64, ptr %2, i64 %idxprom, !dbg !4333
  %4 = load i64, ptr %arrayidx, align 8, !dbg !4333
  %5 = load i64, ptr %mask_lsb, align 8, !dbg !4335
  %and = and i64 %4, %5, !dbg !4336
  store i64 %and, ptr %t, align 8, !dbg !4332
  %6 = load ptr, ptr %in.addr, align 8, !dbg !4337
  %7 = load i32, ptr %i, align 4, !dbg !4338
  %idxprom1 = sext i32 %7 to i64, !dbg !4337
  %arrayidx2 = getelementptr inbounds i64, ptr %6, i64 %idxprom1, !dbg !4337
  %8 = load i64, ptr %arrayidx2, align 8, !dbg !4337
  %9 = load i64, ptr %t, align 8, !dbg !4339
  %xor = xor i64 %8, %9, !dbg !4340
  %shr = lshr i64 %xor, 1, !dbg !4341
  %10 = load i64, ptr %t, align 8, !dbg !4342
  %mul = mul i64 %10, 9, !dbg !4343
  %xor3 = xor i64 %shr, %mul, !dbg !4344
  %11 = load ptr, ptr %acc.addr, align 8, !dbg !4345
  %12 = load i32, ptr %i, align 4, !dbg !4346
  %idxprom4 = sext i32 %12 to i64, !dbg !4345
  %arrayidx5 = getelementptr inbounds i64, ptr %11, i64 %idxprom4, !dbg !4345
  %13 = load i64, ptr %arrayidx5, align 8, !dbg !4347
  %xor6 = xor i64 %13, %xor3, !dbg !4347
  store i64 %xor6, ptr %arrayidx5, align 8, !dbg !4347
  br label %for.inc, !dbg !4348

for.inc:                                          ; preds = %for.body
  %14 = load i32, ptr %i, align 4, !dbg !4349
  %inc = add nsw i32 %14, 1, !dbg !4349
  store i32 %inc, ptr %i, align 4, !dbg !4349
  br label %for.cond, !dbg !4350, !llvm.loop !4351

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4353
}

; Function Attrs: noinline nounwind optnone
define internal void @m_vec_mul_add_x(i32 noundef %m_vec_limbs, ptr noundef %in, ptr noundef %acc) #0 !dbg !4354 {
entry:
  %m_vec_limbs.addr = alloca i32, align 4
  %in.addr = alloca ptr, align 8
  %acc.addr = alloca ptr, align 8
  %mask_msb = alloca i64, align 8
  %i = alloca i32, align 4
  %t = alloca i64, align 8
  store i32 %m_vec_limbs, ptr %m_vec_limbs.addr, align 4
    #dbg_declare(ptr %m_vec_limbs.addr, !4355, !DIExpression(), !4356)
  store ptr %in, ptr %in.addr, align 8
    #dbg_declare(ptr %in.addr, !4357, !DIExpression(), !4358)
  store ptr %acc, ptr %acc.addr, align 8
    #dbg_declare(ptr %acc.addr, !4359, !DIExpression(), !4360)
    #dbg_declare(ptr %mask_msb, !4361, !DIExpression(), !4362)
  store i64 -8608480567731124088, ptr %mask_msb, align 8, !dbg !4362
    #dbg_declare(ptr %i, !4363, !DIExpression(), !4365)
  store i32 0, ptr %i, align 4, !dbg !4365
  br label %for.cond, !dbg !4366

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !4367
  %1 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4369
  %cmp = icmp slt i32 %0, %1, !dbg !4370
  br i1 %cmp, label %for.body, label %for.end, !dbg !4371

for.body:                                         ; preds = %for.cond
    #dbg_declare(ptr %t, !4372, !DIExpression(), !4374)
  %2 = load ptr, ptr %in.addr, align 8, !dbg !4375
  %3 = load i32, ptr %i, align 4, !dbg !4376
  %idxprom = sext i32 %3 to i64, !dbg !4375
  %arrayidx = getelementptr inbounds i64, ptr %2, i64 %idxprom, !dbg !4375
  %4 = load i64, ptr %arrayidx, align 8, !dbg !4375
  %5 = load i64, ptr %mask_msb, align 8, !dbg !4377
  %and = and i64 %4, %5, !dbg !4378
  store i64 %and, ptr %t, align 8, !dbg !4374
  %6 = load ptr, ptr %in.addr, align 8, !dbg !4379
  %7 = load i32, ptr %i, align 4, !dbg !4380
  %idxprom1 = sext i32 %7 to i64, !dbg !4379
  %arrayidx2 = getelementptr inbounds i64, ptr %6, i64 %idxprom1, !dbg !4379
  %8 = load i64, ptr %arrayidx2, align 8, !dbg !4379
  %9 = load i64, ptr %t, align 8, !dbg !4381
  %xor = xor i64 %8, %9, !dbg !4382
  %shl = shl i64 %xor, 1, !dbg !4383
  %10 = load i64, ptr %t, align 8, !dbg !4384
  %shr = lshr i64 %10, 3, !dbg !4385
  %mul = mul i64 %shr, 3, !dbg !4386
  %xor3 = xor i64 %shl, %mul, !dbg !4387
  %11 = load ptr, ptr %acc.addr, align 8, !dbg !4388
  %12 = load i32, ptr %i, align 4, !dbg !4389
  %idxprom4 = sext i32 %12 to i64, !dbg !4388
  %arrayidx5 = getelementptr inbounds i64, ptr %11, i64 %idxprom4, !dbg !4388
  %13 = load i64, ptr %arrayidx5, align 8, !dbg !4390
  %xor6 = xor i64 %13, %xor3, !dbg !4390
  store i64 %xor6, ptr %arrayidx5, align 8, !dbg !4390
  br label %for.inc, !dbg !4391

for.inc:                                          ; preds = %for.body
  %14 = load i32, ptr %i, align 4, !dbg !4392
  %inc = add nsw i32 %14, 1, !dbg !4392
  store i32 %inc, ptr %i, align 4, !dbg !4392
  br label %for.cond, !dbg !4393, !llvm.loop !4394

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4396
}

; Function Attrs: noinline nounwind optnone
define internal void @m_vec_copy(i32 noundef %m_vec_limbs, ptr noundef %in, ptr noundef %out) #0 !dbg !4397 {
entry:
  %m_vec_limbs.addr = alloca i32, align 4
  %in.addr = alloca ptr, align 8
  %out.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store i32 %m_vec_limbs, ptr %m_vec_limbs.addr, align 4
    #dbg_declare(ptr %m_vec_limbs.addr, !4398, !DIExpression(), !4399)
  store ptr %in, ptr %in.addr, align 8
    #dbg_declare(ptr %in.addr, !4400, !DIExpression(), !4401)
  store ptr %out, ptr %out.addr, align 8
    #dbg_declare(ptr %out.addr, !4402, !DIExpression(), !4403)
    #dbg_declare(ptr %i, !4404, !DIExpression(), !4406)
  store i32 0, ptr %i, align 4, !dbg !4406
  br label %for.cond, !dbg !4407

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !4408
  %1 = load i32, ptr %m_vec_limbs.addr, align 4, !dbg !4410
  %cmp = icmp slt i32 %0, %1, !dbg !4411
  br i1 %cmp, label %for.body, label %for.end, !dbg !4412

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %in.addr, align 8, !dbg !4413
  %3 = load i32, ptr %i, align 4, !dbg !4415
  %idxprom = sext i32 %3 to i64, !dbg !4413
  %arrayidx = getelementptr inbounds i64, ptr %2, i64 %idxprom, !dbg !4413
  %4 = load i64, ptr %arrayidx, align 8, !dbg !4413
  %5 = load ptr, ptr %out.addr, align 8, !dbg !4416
  %6 = load i32, ptr %i, align 4, !dbg !4417
  %idxprom1 = sext i32 %6 to i64, !dbg !4416
  %arrayidx2 = getelementptr inbounds i64, ptr %5, i64 %idxprom1, !dbg !4416
  store i64 %4, ptr %arrayidx2, align 8, !dbg !4418
  br label %for.inc, !dbg !4419

for.inc:                                          ; preds = %for.body
  %7 = load i32, ptr %i, align 4, !dbg !4420
  %inc = add nsw i32 %7, 1, !dbg !4420
  store i32 %inc, ptr %i, align 4, !dbg !4420
  br label %for.cond, !dbg !4421, !llvm.loop !4422

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4424
}

attributes #0 = { noinline nounwind optnone "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+cx8,+mmx,+sse,+sse2,+x87" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+cx8,+mmx,+sse,+sse2,+x87" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+cx8,+mmx,+sse,+sse2,+x87" }
attributes #5 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+cx8,+mmx,+sse,+sse2,+x87" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+cx8,+mmx,+sse,+sse2,+x87" }
attributes #7 = { nounwind allocsize(0,1) }
attributes #8 = { nounwind willreturn memory(read) }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!45, !48}
!llvm.ident = !{!76}
!llvm.module.flags = !{!77, !78}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 41, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "example.c", directory: "")
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
!42 = distinct !DIGlobalVariable(scope: null, file: !2, line: 105, type: !33, isLocal: true, isDefinition: true)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(scope: null, file: !2, line: 118, type: !38, isLocal: true, isDefinition: true)
!45 = distinct !DICompileUnit(language: DW_LANG_C11, file: !46, producer: "clang version 23.0.0git (https://github.com/llvm/llvm-project.git 49a2335fab0e61117655f25393e86cd48d99445c)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !47, splitDebugInlining: false, nameTableKind: None)
!46 = !DIFile(filename: "<stdin>", directory: "")
!47 = !{!0, !7, !9, !14, !19, !24, !26, !31, !36, !41, !43}
!48 = distinct !DICompileUnit(language: DW_LANG_C11, file: !49, producer: "clang version 23.0.0git (https://github.com/llvm/llvm-project.git 49a2335fab0e61117655f25393e86cd48d99445c)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !50, globals: !61, splitDebugInlining: false, nameTableKind: None)
!49 = !DIFile(filename: "../src/<stdin>", directory: "")
!50 = !{!51, !52, !58, !60}
!51 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !54, line: 27, baseType: !55)
!54 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !56, line: 45, baseType: !57)
!56 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!57 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !59, line: 18, baseType: !57)
!59 = !DIFile(filename: "/usr/local/lib/clang/23/include/__stddef_size_t.h", directory: "")
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!61 = !{!62, !70, !72, !74}
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(name: "even_nibbles", scope: !64, file: !65, line: 112, type: !69, isLocal: true, isDefinition: true)
!64 = distinct !DISubprogram(name: "transpose_16x16_nibbles", scope: !65, file: !65, line: 111, type: !66, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !68)
!65 = !DIFile(filename: "../src/mayo.c", directory: "")
!66 = !DISubroutineType(types: !67)
!67 = !{null, !52}
!68 = !{}
!69 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !53)
!70 = !DIGlobalVariableExpression(var: !71, expr: !DIExpression())
!71 = distinct !DIGlobalVariable(name: "even_bytes", scope: !64, file: !65, line: 113, type: !69, isLocal: true, isDefinition: true)
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(name: "even_2bytes", scope: !64, file: !65, line: 114, type: !69, isLocal: true, isDefinition: true)
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(name: "even_half", scope: !64, file: !65, line: 115, type: !69, isLocal: true, isDefinition: true)
!76 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project.git 49a2335fab0e61117655f25393e86cd48d99445c)"}
!77 = !{i32 2, !"Debug Info Version", i32 3}
!78 = !{i32 1, !"wchar_size", i32 4}
!79 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 138, type: !80, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !45, retainedNodes: !68)
!80 = !DISubroutineType(types: !81)
!81 = !{!82}
!82 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!83 = !DILocalVariable(name: "params", scope: !79, file: !2, line: 140, type: !84)
!84 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 256, elements: !17)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !87)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "mayo_params_t", file: !88, line: 289, baseType: !89)
!88 = !DIFile(filename: "../include/mayo.h", directory: "")
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !88, line: 265, size: 832, elements: !90)
!90 = !{!91, !92, !93, !94, !95, !96, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !89, file: !88, line: 266, baseType: !82, size: 32)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !89, file: !88, line: 267, baseType: !82, size: 32, offset: 32)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "o", scope: !89, file: !88, line: 268, baseType: !82, size: 32, offset: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !89, file: !88, line: 269, baseType: !82, size: 32, offset: 96)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !89, file: !88, line: 270, baseType: !82, size: 32, offset: 128)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "f_tail", scope: !89, file: !88, line: 271, baseType: !97, size: 64, offset: 192)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "m_bytes", scope: !89, file: !88, line: 272, baseType: !82, size: 32, offset: 256)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "O_bytes", scope: !89, file: !88, line: 273, baseType: !82, size: 32, offset: 288)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "v_bytes", scope: !89, file: !88, line: 274, baseType: !82, size: 32, offset: 320)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "r_bytes", scope: !89, file: !88, line: 275, baseType: !82, size: 32, offset: 352)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "R_bytes", scope: !89, file: !88, line: 276, baseType: !82, size: 32, offset: 384)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "P1_bytes", scope: !89, file: !88, line: 277, baseType: !82, size: 32, offset: 416)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "P2_bytes", scope: !89, file: !88, line: 278, baseType: !82, size: 32, offset: 448)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "P3_bytes", scope: !89, file: !88, line: 279, baseType: !82, size: 32, offset: 480)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "csk_bytes", scope: !89, file: !88, line: 280, baseType: !82, size: 32, offset: 512)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "cpk_bytes", scope: !89, file: !88, line: 281, baseType: !82, size: 32, offset: 544)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "sig_bytes", scope: !89, file: !88, line: 282, baseType: !82, size: 32, offset: 576)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "salt_bytes", scope: !89, file: !88, line: 283, baseType: !82, size: 32, offset: 608)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "sk_seed_bytes", scope: !89, file: !88, line: 284, baseType: !82, size: 32, offset: 640)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "digest_bytes", scope: !89, file: !88, line: 285, baseType: !82, size: 32, offset: 672)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "pk_seed_bytes", scope: !89, file: !88, line: 286, baseType: !82, size: 32, offset: 704)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "m_vec_limbs", scope: !89, file: !88, line: 287, baseType: !82, size: 32, offset: 736)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !89, file: !88, line: 288, baseType: !116, size: 64, offset: 768)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!118 = !DILocation(line: 140, column: 26, scope: !79)
!119 = !DILocalVariable(name: "paramslen", scope: !79, file: !2, line: 141, type: !82)
!120 = !DILocation(line: 141, column: 9, scope: !79)
!121 = !DILocalVariable(name: "i", scope: !122, file: !2, line: 142, type: !82)
!122 = distinct !DILexicalBlock(scope: !79, file: !2, line: 142, column: 5)
!123 = !DILocation(line: 142, column: 14, scope: !122)
!124 = !DILocation(line: 142, column: 10, scope: !122)
!125 = !DILocation(line: 142, column: 21, scope: !126)
!126 = distinct !DILexicalBlock(scope: !122, file: !2, line: 142, column: 5)
!127 = !DILocation(line: 142, column: 25, scope: !126)
!128 = !DILocation(line: 142, column: 23, scope: !126)
!129 = !DILocation(line: 142, column: 5, scope: !122)
!130 = !DILocation(line: 143, column: 33, scope: !131)
!131 = distinct !DILexicalBlock(scope: !132, file: !2, line: 143, column: 13)
!132 = distinct !DILexicalBlock(scope: !126, file: !2, line: 142, column: 41)
!133 = !DILocation(line: 143, column: 26, scope: !131)
!134 = !DILocation(line: 143, column: 13, scope: !131)
!135 = !DILocation(line: 143, column: 37, scope: !131)
!136 = !DILocation(line: 144, column: 13, scope: !137)
!137 = distinct !DILexicalBlock(scope: !131, file: !2, line: 143, column: 49)
!138 = !DILocation(line: 146, column: 5, scope: !132)
!139 = !DILocation(line: 142, column: 36, scope: !126)
!140 = !DILocation(line: 142, column: 5, scope: !126)
!141 = distinct !{!141, !129, !142, !143}
!142 = !DILocation(line: 146, column: 5, scope: !122)
!143 = !{!"llvm.loop.mustprogress"}
!144 = !DILocation(line: 150, column: 1, scope: !79)
!145 = distinct !DISubprogram(name: "example_mayo", scope: !2, file: !2, line: 25, type: !146, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !45, retainedNodes: !68)
!146 = !DISubroutineType(types: !147)
!147 = !{!82, !85}
!148 = !DILocalVariable(name: "p", arg: 1, scope: !145, file: !2, line: 25, type: !85)
!149 = !DILocation(line: 25, column: 46, scope: !145)
!150 = !DILocalVariable(name: "msglen", scope: !145, file: !2, line: 27, type: !58)
!151 = !DILocation(line: 27, column: 12, scope: !145)
!152 = !DILocalVariable(name: "smlen", scope: !145, file: !2, line: 28, type: !58)
!153 = !DILocation(line: 28, column: 12, scope: !145)
!154 = !DILocation(line: 28, column: 36, scope: !145)
!155 = !DILocation(line: 28, column: 20, scope: !145)
!156 = !DILocation(line: 28, column: 41, scope: !145)
!157 = !DILocation(line: 28, column: 39, scope: !145)
!158 = !DILocalVariable(name: "pk", scope: !145, file: !2, line: 30, type: !60)
!159 = !DILocation(line: 30, column: 20, scope: !145)
!160 = !DILocation(line: 30, column: 49, scope: !145)
!161 = !DILocation(line: 30, column: 33, scope: !145)
!162 = !DILocation(line: 30, column: 26, scope: !145)
!163 = !DILocalVariable(name: "sk", scope: !145, file: !2, line: 31, type: !60)
!164 = !DILocation(line: 31, column: 20, scope: !145)
!165 = !DILocation(line: 31, column: 49, scope: !145)
!166 = !DILocation(line: 31, column: 33, scope: !145)
!167 = !DILocation(line: 31, column: 26, scope: !145)
!168 = !DILocalVariable(name: "epk", scope: !145, file: !2, line: 33, type: !52)
!169 = !DILocation(line: 33, column: 15, scope: !145)
!170 = !DILocation(line: 33, column: 21, scope: !145)
!171 = !DILocalVariable(name: "esk", scope: !145, file: !2, line: 34, type: !172)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "sk_t", file: !88, line: 294, baseType: !174)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sk_t", file: !88, line: 291, size: 7257920, elements: !175)
!175 = !{!176, !180}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !174, file: !88, line: 292, baseType: !177, size: 7238592)
!177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 7238592, elements: !178)
!178 = !{!179}
!179 = !DISubrange(count: 113103)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "O", scope: !174, file: !88, line: 293, baseType: !181, size: 19312, offset: 7238592)
!181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 19312, elements: !184)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !54, line: 24, baseType: !183)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !56, line: 38, baseType: !51)
!184 = !{!185}
!185 = !DISubrange(count: 2414)
!186 = !DILocation(line: 34, column: 11, scope: !145)
!187 = !DILocation(line: 34, column: 17, scope: !145)
!188 = !DILocalVariable(name: "sig", scope: !145, file: !2, line: 36, type: !60)
!189 = !DILocation(line: 36, column: 20, scope: !145)
!190 = !DILocation(line: 36, column: 49, scope: !145)
!191 = !DILocation(line: 36, column: 33, scope: !145)
!192 = !DILocation(line: 36, column: 54, scope: !145)
!193 = !DILocation(line: 36, column: 52, scope: !145)
!194 = !DILocation(line: 36, column: 26, scope: !145)
!195 = !DILocalVariable(name: "msg", scope: !145, file: !2, line: 38, type: !196)
!196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 256, elements: !197)
!197 = !{!198}
!198 = !DISubrange(count: 32)
!199 = !DILocation(line: 38, column: 19, scope: !145)
!200 = !DILocalVariable(name: "msg2", scope: !145, file: !2, line: 39, type: !196)
!201 = !DILocation(line: 39, column: 19, scope: !145)
!202 = !DILocation(line: 41, column: 44, scope: !145)
!203 = !DILocation(line: 41, column: 33, scope: !145)
!204 = !DILocation(line: 41, column: 5, scope: !145)
!205 = !DILocation(line: 43, column: 5, scope: !145)
!206 = !DILocalVariable(name: "res", scope: !145, file: !2, line: 44, type: !82)
!207 = !DILocation(line: 44, column: 9, scope: !145)
!208 = !DILocation(line: 44, column: 28, scope: !145)
!209 = !DILocation(line: 44, column: 31, scope: !145)
!210 = !DILocation(line: 44, column: 35, scope: !145)
!211 = !DILocation(line: 44, column: 15, scope: !145)
!212 = !DILocation(line: 45, column: 9, scope: !213)
!213 = distinct !DILexicalBlock(scope: !145, file: !2, line: 45, column: 9)
!214 = !DILocation(line: 45, column: 13, scope: !213)
!215 = !DILocation(line: 46, column: 9, scope: !216)
!216 = distinct !DILexicalBlock(scope: !213, file: !2, line: 45, column: 25)
!217 = !DILocation(line: 47, column: 13, scope: !216)
!218 = !DILocation(line: 48, column: 9, scope: !216)
!219 = !DILocation(line: 50, column: 9, scope: !220)
!220 = distinct !DILexicalBlock(scope: !213, file: !2, line: 49, column: 12)
!221 = !DILocation(line: 53, column: 5, scope: !145)
!222 = !DILocation(line: 54, column: 26, scope: !145)
!223 = !DILocation(line: 54, column: 29, scope: !145)
!224 = !DILocation(line: 54, column: 33, scope: !145)
!225 = !DILocation(line: 54, column: 11, scope: !145)
!226 = !DILocation(line: 54, column: 9, scope: !145)
!227 = !DILocation(line: 55, column: 9, scope: !228)
!228 = distinct !DILexicalBlock(scope: !145, file: !2, line: 55, column: 9)
!229 = !DILocation(line: 55, column: 13, scope: !228)
!230 = !DILocation(line: 56, column: 9, scope: !231)
!231 = distinct !DILexicalBlock(scope: !228, file: !2, line: 55, column: 25)
!232 = !DILocation(line: 57, column: 13, scope: !231)
!233 = !DILocation(line: 58, column: 9, scope: !231)
!234 = !DILocation(line: 60, column: 9, scope: !235)
!235 = distinct !DILexicalBlock(scope: !228, file: !2, line: 59, column: 12)
!236 = !DILocation(line: 63, column: 5, scope: !145)
!237 = !DILocation(line: 64, column: 26, scope: !145)
!238 = !DILocation(line: 64, column: 29, scope: !145)
!239 = !DILocation(line: 64, column: 33, scope: !145)
!240 = !DILocation(line: 64, column: 11, scope: !145)
!241 = !DILocation(line: 64, column: 9, scope: !145)
!242 = !DILocation(line: 65, column: 9, scope: !243)
!243 = distinct !DILexicalBlock(scope: !145, file: !2, line: 65, column: 9)
!244 = !DILocation(line: 65, column: 13, scope: !243)
!245 = !DILocation(line: 66, column: 9, scope: !246)
!246 = distinct !DILexicalBlock(scope: !243, file: !2, line: 65, column: 25)
!247 = !DILocation(line: 67, column: 13, scope: !246)
!248 = !DILocation(line: 68, column: 9, scope: !246)
!249 = !DILocation(line: 70, column: 9, scope: !250)
!250 = distinct !DILexicalBlock(scope: !243, file: !2, line: 69, column: 12)
!251 = !DILocation(line: 73, column: 5, scope: !145)
!252 = !DILocation(line: 74, column: 21, scope: !145)
!253 = !DILocation(line: 74, column: 24, scope: !145)
!254 = !DILocation(line: 74, column: 37, scope: !145)
!255 = !DILocation(line: 74, column: 42, scope: !145)
!256 = !DILocation(line: 74, column: 50, scope: !145)
!257 = !DILocation(line: 74, column: 11, scope: !145)
!258 = !DILocation(line: 74, column: 9, scope: !145)
!259 = !DILocation(line: 75, column: 9, scope: !260)
!260 = distinct !DILexicalBlock(scope: !145, file: !2, line: 75, column: 9)
!261 = !DILocation(line: 75, column: 13, scope: !260)
!262 = !DILocation(line: 76, column: 9, scope: !263)
!263 = distinct !DILexicalBlock(scope: !260, file: !2, line: 75, column: 25)
!264 = !DILocation(line: 77, column: 13, scope: !263)
!265 = !DILocation(line: 78, column: 9, scope: !263)
!266 = !DILocation(line: 80, column: 9, scope: !267)
!267 = distinct !DILexicalBlock(scope: !260, file: !2, line: 79, column: 12)
!268 = !DILocation(line: 83, column: 5, scope: !145)
!269 = !DILocation(line: 84, column: 21, scope: !145)
!270 = !DILocation(line: 84, column: 24, scope: !145)
!271 = !DILocation(line: 84, column: 39, scope: !145)
!272 = !DILocation(line: 84, column: 44, scope: !145)
!273 = !DILocation(line: 84, column: 51, scope: !145)
!274 = !DILocation(line: 84, column: 11, scope: !145)
!275 = !DILocation(line: 84, column: 9, scope: !145)
!276 = !DILocation(line: 85, column: 9, scope: !277)
!277 = distinct !DILexicalBlock(scope: !145, file: !2, line: 85, column: 9)
!278 = !DILocation(line: 85, column: 13, scope: !277)
!279 = !DILocation(line: 85, column: 24, scope: !277)
!280 = !DILocation(line: 85, column: 34, scope: !277)
!281 = !DILocation(line: 85, column: 39, scope: !277)
!282 = !DILocation(line: 85, column: 45, scope: !277)
!283 = !DILocation(line: 85, column: 27, scope: !277)
!284 = !DILocation(line: 86, column: 9, scope: !285)
!285 = distinct !DILexicalBlock(scope: !277, file: !2, line: 85, column: 54)
!286 = !DILocation(line: 87, column: 13, scope: !285)
!287 = !DILocation(line: 88, column: 9, scope: !285)
!288 = !DILocation(line: 90, column: 13, scope: !289)
!289 = distinct !DILexicalBlock(scope: !277, file: !2, line: 89, column: 12)
!290 = !DILocation(line: 91, column: 9, scope: !289)
!291 = !DILocation(line: 94, column: 5, scope: !145)
!292 = !DILocation(line: 95, column: 23, scope: !145)
!293 = !DILocation(line: 95, column: 26, scope: !145)
!294 = !DILocation(line: 95, column: 31, scope: !145)
!295 = !DILocation(line: 95, column: 39, scope: !145)
!296 = !DILocation(line: 95, column: 44, scope: !145)
!297 = !DILocation(line: 95, column: 11, scope: !145)
!298 = !DILocation(line: 95, column: 9, scope: !145)
!299 = !DILocation(line: 96, column: 9, scope: !300)
!300 = distinct !DILexicalBlock(scope: !145, file: !2, line: 96, column: 9)
!301 = !DILocation(line: 96, column: 13, scope: !300)
!302 = !DILocation(line: 97, column: 9, scope: !303)
!303 = distinct !DILexicalBlock(scope: !300, file: !2, line: 96, column: 25)
!304 = !DILocation(line: 98, column: 13, scope: !303)
!305 = !DILocation(line: 99, column: 9, scope: !303)
!306 = !DILocation(line: 101, column: 13, scope: !307)
!307 = distinct !DILexicalBlock(scope: !300, file: !2, line: 100, column: 12)
!308 = !DILocation(line: 102, column: 9, scope: !307)
!309 = !DILocation(line: 105, column: 5, scope: !145)
!310 = !DILocation(line: 106, column: 15, scope: !145)
!311 = !DILocation(line: 106, column: 14, scope: !145)
!312 = !DILocation(line: 106, column: 5, scope: !145)
!313 = !DILocation(line: 106, column: 12, scope: !145)
!314 = !DILocation(line: 107, column: 5, scope: !145)
!315 = !DILocation(line: 107, column: 21, scope: !145)
!316 = !DILocation(line: 108, column: 21, scope: !145)
!317 = !DILocation(line: 108, column: 24, scope: !145)
!318 = !DILocation(line: 108, column: 39, scope: !145)
!319 = !DILocation(line: 108, column: 44, scope: !145)
!320 = !DILocation(line: 108, column: 51, scope: !145)
!321 = !DILocation(line: 108, column: 11, scope: !145)
!322 = !DILocation(line: 108, column: 9, scope: !145)
!323 = !DILocation(line: 109, column: 9, scope: !324)
!324 = distinct !DILexicalBlock(scope: !145, file: !2, line: 109, column: 9)
!325 = !DILocation(line: 109, column: 13, scope: !324)
!326 = !DILocation(line: 109, column: 25, scope: !324)
!327 = !DILocation(line: 109, column: 36, scope: !324)
!328 = !DILocation(line: 109, column: 41, scope: !324)
!329 = !DILocation(line: 109, column: 47, scope: !324)
!330 = !DILocation(line: 109, column: 29, scope: !324)
!331 = !DILocation(line: 110, column: 9, scope: !332)
!332 = distinct !DILexicalBlock(scope: !324, file: !2, line: 109, column: 56)
!333 = !DILocation(line: 111, column: 13, scope: !332)
!334 = !DILocation(line: 112, column: 9, scope: !332)
!335 = !DILocation(line: 114, column: 13, scope: !336)
!336 = distinct !DILexicalBlock(scope: !324, file: !2, line: 113, column: 12)
!337 = !DILocation(line: 115, column: 9, scope: !336)
!338 = !DILocation(line: 118, column: 5, scope: !145)
!339 = !DILocation(line: 119, column: 23, scope: !145)
!340 = !DILocation(line: 119, column: 26, scope: !145)
!341 = !DILocation(line: 119, column: 31, scope: !145)
!342 = !DILocation(line: 119, column: 39, scope: !145)
!343 = !DILocation(line: 119, column: 44, scope: !145)
!344 = !DILocation(line: 119, column: 11, scope: !145)
!345 = !DILocation(line: 119, column: 9, scope: !145)
!346 = !DILocation(line: 120, column: 9, scope: !347)
!347 = distinct !DILexicalBlock(scope: !145, file: !2, line: 120, column: 9)
!348 = !DILocation(line: 120, column: 13, scope: !347)
!349 = !DILocation(line: 121, column: 9, scope: !350)
!350 = distinct !DILexicalBlock(scope: !347, file: !2, line: 120, column: 25)
!351 = !DILocation(line: 122, column: 13, scope: !350)
!352 = !DILocation(line: 123, column: 9, scope: !350)
!353 = !DILocation(line: 125, column: 13, scope: !354)
!354 = distinct !DILexicalBlock(scope: !347, file: !2, line: 124, column: 12)
!355 = !DILocation(line: 126, column: 9, scope: !354)
!356 = !DILocation(line: 120, column: 16, scope: !347)
!357 = !DILabel(scope: !145, name: "err", file: !2, line: 129, column: 1)
!358 = !DILocation(line: 129, column: 1, scope: !145)
!359 = !DILocation(line: 130, column: 10, scope: !145)
!360 = !DILocation(line: 130, column: 5, scope: !145)
!361 = !DILocation(line: 131, column: 10, scope: !145)
!362 = !DILocation(line: 131, column: 5, scope: !145)
!363 = !DILocation(line: 132, column: 22, scope: !145)
!364 = !DILocation(line: 132, column: 42, scope: !145)
!365 = !DILocation(line: 132, column: 26, scope: !145)
!366 = !DILocation(line: 132, column: 5, scope: !145)
!367 = !DILocation(line: 133, column: 22, scope: !145)
!368 = !DILocation(line: 133, column: 5, scope: !145)
!369 = !DILocation(line: 134, column: 10, scope: !145)
!370 = !DILocation(line: 134, column: 5, scope: !145)
!371 = !DILocation(line: 135, column: 12, scope: !145)
!372 = !DILocation(line: 135, column: 5, scope: !145)
!373 = distinct !DISubprogram(name: "mayo_keypair", scope: !65, file: !65, line: 298, type: !374, scopeLine: 298, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !68)
!374 = !DISubroutineType(types: !375)
!375 = !{!82, !376, !60, !60}
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !378)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "mayo_params_t", file: !88, line: 289, baseType: !379)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !88, line: 265, size: 832, elements: !380)
!380 = !{!381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !379, file: !88, line: 266, baseType: !82, size: 32)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !379, file: !88, line: 267, baseType: !82, size: 32, offset: 32)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "o", scope: !379, file: !88, line: 268, baseType: !82, size: 32, offset: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !379, file: !88, line: 269, baseType: !82, size: 32, offset: 96)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !379, file: !88, line: 270, baseType: !82, size: 32, offset: 128)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "f_tail", scope: !379, file: !88, line: 271, baseType: !97, size: 64, offset: 192)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "m_bytes", scope: !379, file: !88, line: 272, baseType: !82, size: 32, offset: 256)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "O_bytes", scope: !379, file: !88, line: 273, baseType: !82, size: 32, offset: 288)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "v_bytes", scope: !379, file: !88, line: 274, baseType: !82, size: 32, offset: 320)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "r_bytes", scope: !379, file: !88, line: 275, baseType: !82, size: 32, offset: 352)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "R_bytes", scope: !379, file: !88, line: 276, baseType: !82, size: 32, offset: 384)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "P1_bytes", scope: !379, file: !88, line: 277, baseType: !82, size: 32, offset: 416)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "P2_bytes", scope: !379, file: !88, line: 278, baseType: !82, size: 32, offset: 448)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "P3_bytes", scope: !379, file: !88, line: 279, baseType: !82, size: 32, offset: 480)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "csk_bytes", scope: !379, file: !88, line: 280, baseType: !82, size: 32, offset: 512)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "cpk_bytes", scope: !379, file: !88, line: 281, baseType: !82, size: 32, offset: 544)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "sig_bytes", scope: !379, file: !88, line: 282, baseType: !82, size: 32, offset: 576)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "salt_bytes", scope: !379, file: !88, line: 283, baseType: !82, size: 32, offset: 608)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "sk_seed_bytes", scope: !379, file: !88, line: 284, baseType: !82, size: 32, offset: 640)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "digest_bytes", scope: !379, file: !88, line: 285, baseType: !82, size: 32, offset: 672)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "pk_seed_bytes", scope: !379, file: !88, line: 286, baseType: !82, size: 32, offset: 704)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "m_vec_limbs", scope: !379, file: !88, line: 287, baseType: !82, size: 32, offset: 736)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !379, file: !88, line: 288, baseType: !116, size: 64, offset: 768)
!404 = !DILocalVariable(name: "p", arg: 1, scope: !373, file: !65, line: 298, type: !376)
!405 = !DILocation(line: 298, column: 39, scope: !373)
!406 = !DILocalVariable(name: "pk", arg: 2, scope: !373, file: !65, line: 298, type: !60)
!407 = !DILocation(line: 298, column: 57, scope: !373)
!408 = !DILocalVariable(name: "sk", arg: 3, scope: !373, file: !65, line: 298, type: !60)
!409 = !DILocation(line: 298, column: 76, scope: !373)
!410 = !DILocalVariable(name: "ret", scope: !373, file: !65, line: 299, type: !82)
!411 = !DILocation(line: 299, column: 9, scope: !373)
!412 = !DILocation(line: 301, column: 32, scope: !373)
!413 = !DILocation(line: 301, column: 35, scope: !373)
!414 = !DILocation(line: 301, column: 39, scope: !373)
!415 = !DILocation(line: 301, column: 11, scope: !373)
!416 = !DILocation(line: 301, column: 9, scope: !373)
!417 = !DILocation(line: 302, column: 9, scope: !418)
!418 = distinct !DILexicalBlock(scope: !373, file: !65, line: 302, column: 9)
!419 = !DILocation(line: 302, column: 13, scope: !418)
!420 = !DILocation(line: 303, column: 9, scope: !421)
!421 = distinct !DILexicalBlock(scope: !418, file: !65, line: 302, column: 25)
!422 = !DILocation(line: 302, column: 16, scope: !418)
!423 = !DILabel(scope: !373, name: "err", file: !65, line: 306, column: 1)
!424 = !DILocation(line: 306, column: 1, scope: !373)
!425 = !DILocation(line: 307, column: 12, scope: !373)
!426 = !DILocation(line: 307, column: 5, scope: !373)
!427 = distinct !DISubprogram(name: "mayo_keypair_compact", scope: !65, file: !65, line: 538, type: !374, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !68)
!428 = !DILocalVariable(name: "p", arg: 1, scope: !427, file: !65, line: 538, type: !376)
!429 = !DILocation(line: 538, column: 47, scope: !427)
!430 = !DILocalVariable(name: "cpk", arg: 2, scope: !427, file: !65, line: 538, type: !60)
!431 = !DILocation(line: 538, column: 65, scope: !427)
!432 = !DILocalVariable(name: "csk", arg: 3, scope: !427, file: !65, line: 539, type: !60)
!433 = !DILocation(line: 539, column: 41, scope: !427)
!434 = !DILocalVariable(name: "ret", scope: !427, file: !65, line: 540, type: !82)
!435 = !DILocation(line: 540, column: 9, scope: !427)
!436 = !DILocalVariable(name: "seed_sk", scope: !427, file: !65, line: 541, type: !60)
!437 = !DILocation(line: 541, column: 20, scope: !427)
!438 = !DILocation(line: 541, column: 30, scope: !427)
!439 = !DILocalVariable(name: "S", scope: !427, file: !65, line: 542, type: !440)
!440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 6944, elements: !441)
!441 = !{!442}
!442 = !DISubrange(count: 868)
!443 = !DILocation(line: 542, column: 19, scope: !427)
!444 = !DILocalVariable(name: "P", scope: !427, file: !65, line: 543, type: !177)
!445 = !DILocation(line: 543, column: 14, scope: !427)
!446 = !DILocalVariable(name: "P3", scope: !427, file: !65, line: 544, type: !447)
!447 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 166464, elements: !448)
!448 = !{!449}
!449 = !DISubrange(count: 2601)
!450 = !DILocation(line: 544, column: 14, scope: !427)
!451 = !DILocalVariable(name: "seed_pk", scope: !427, file: !65, line: 546, type: !60)
!452 = !DILocation(line: 546, column: 20, scope: !427)
!453 = !DILocalVariable(name: "O", scope: !427, file: !65, line: 547, type: !454)
!454 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 19312, elements: !184)
!455 = !DILocation(line: 547, column: 19, scope: !427)
!456 = !DILocalVariable(name: "m_vec_limbs", scope: !427, file: !65, line: 549, type: !457)
!457 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !82)
!458 = !DILocation(line: 549, column: 15, scope: !427)
!459 = !DILocation(line: 549, column: 47, scope: !427)
!460 = !DILocation(line: 549, column: 29, scope: !427)
!461 = !DILocalVariable(name: "param_m", scope: !427, file: !65, line: 550, type: !457)
!462 = !DILocation(line: 550, column: 15, scope: !427)
!463 = !DILocation(line: 550, column: 33, scope: !427)
!464 = !DILocation(line: 550, column: 25, scope: !427)
!465 = !DILocalVariable(name: "param_v", scope: !427, file: !65, line: 551, type: !457)
!466 = !DILocation(line: 551, column: 15, scope: !427)
!467 = !DILocation(line: 551, column: 33, scope: !427)
!468 = !DILocation(line: 551, column: 25, scope: !427)
!469 = !DILocalVariable(name: "param_o", scope: !427, file: !65, line: 552, type: !457)
!470 = !DILocation(line: 552, column: 15, scope: !427)
!471 = !DILocation(line: 552, column: 33, scope: !427)
!472 = !DILocation(line: 552, column: 25, scope: !427)
!473 = !DILocalVariable(name: "param_O_bytes", scope: !427, file: !65, line: 553, type: !457)
!474 = !DILocation(line: 553, column: 15, scope: !427)
!475 = !DILocation(line: 553, column: 45, scope: !427)
!476 = !DILocation(line: 553, column: 31, scope: !427)
!477 = !DILocalVariable(name: "param_P1_limbs", scope: !427, file: !65, line: 554, type: !457)
!478 = !DILocation(line: 554, column: 15, scope: !427)
!479 = !DILocation(line: 554, column: 47, scope: !427)
!480 = !DILocation(line: 554, column: 32, scope: !427)
!481 = !DILocalVariable(name: "param_P3_limbs", scope: !427, file: !65, line: 555, type: !457)
!482 = !DILocation(line: 555, column: 15, scope: !427)
!483 = !DILocation(line: 555, column: 47, scope: !427)
!484 = !DILocation(line: 555, column: 32, scope: !427)
!485 = !DILocalVariable(name: "param_pk_seed_bytes", scope: !427, file: !65, line: 556, type: !457)
!486 = !DILocation(line: 556, column: 15, scope: !427)
!487 = !DILocation(line: 556, column: 57, scope: !427)
!488 = !DILocation(line: 556, column: 37, scope: !427)
!489 = !DILocalVariable(name: "param_sk_seed_bytes", scope: !427, file: !65, line: 557, type: !457)
!490 = !DILocation(line: 557, column: 15, scope: !427)
!491 = !DILocation(line: 557, column: 57, scope: !427)
!492 = !DILocation(line: 557, column: 37, scope: !427)
!493 = !DILocalVariable(name: "P1", scope: !427, file: !65, line: 559, type: !52)
!494 = !DILocation(line: 559, column: 15, scope: !427)
!495 = !DILocation(line: 559, column: 20, scope: !427)
!496 = !DILocalVariable(name: "P2", scope: !427, file: !65, line: 560, type: !52)
!497 = !DILocation(line: 560, column: 15, scope: !427)
!498 = !DILocation(line: 560, column: 20, scope: !427)
!499 = !DILocation(line: 560, column: 24, scope: !427)
!500 = !DILocation(line: 560, column: 22, scope: !427)
!501 = !DILocation(line: 566, column: 21, scope: !502)
!502 = distinct !DILexicalBlock(scope: !427, file: !65, line: 566, column: 9)
!503 = !DILocation(line: 566, column: 30, scope: !502)
!504 = !DILocation(line: 566, column: 9, scope: !502)
!505 = !DILocation(line: 566, column: 51, scope: !502)
!506 = !DILocation(line: 567, column: 13, scope: !507)
!507 = distinct !DILexicalBlock(scope: !502, file: !65, line: 566, column: 63)
!508 = !DILocation(line: 568, column: 9, scope: !507)
!509 = !DILocation(line: 573, column: 14, scope: !427)
!510 = !DILocation(line: 573, column: 17, scope: !427)
!511 = !DILocation(line: 573, column: 39, scope: !427)
!512 = !DILocation(line: 573, column: 37, scope: !427)
!513 = !DILocation(line: 573, column: 54, scope: !427)
!514 = !DILocation(line: 574, column: 14, scope: !427)
!515 = !DILocation(line: 573, column: 5, scope: !427)
!516 = !DILocation(line: 576, column: 15, scope: !427)
!517 = !DILocation(line: 576, column: 13, scope: !427)
!518 = !DILocation(line: 579, column: 12, scope: !427)
!519 = !DILocation(line: 579, column: 16, scope: !427)
!520 = !DILocation(line: 579, column: 14, scope: !427)
!521 = !DILocation(line: 579, column: 37, scope: !427)
!522 = !DILocation(line: 579, column: 40, scope: !427)
!523 = !DILocation(line: 579, column: 50, scope: !427)
!524 = !DILocation(line: 579, column: 48, scope: !427)
!525 = !DILocation(line: 579, column: 5, scope: !427)
!526 = !DILocation(line: 585, column: 18, scope: !427)
!527 = !DILocation(line: 585, column: 21, scope: !427)
!528 = !DILocation(line: 585, column: 24, scope: !427)
!529 = !DILocation(line: 585, column: 5, scope: !427)
!530 = !DILocation(line: 588, column: 16, scope: !427)
!531 = !DILocation(line: 588, column: 19, scope: !427)
!532 = !DILocation(line: 588, column: 23, scope: !427)
!533 = !DILocation(line: 588, column: 27, scope: !427)
!534 = !DILocation(line: 588, column: 30, scope: !427)
!535 = !DILocation(line: 588, column: 5, scope: !427)
!536 = !DILocation(line: 591, column: 12, scope: !427)
!537 = !DILocation(line: 591, column: 17, scope: !427)
!538 = !DILocation(line: 591, column: 26, scope: !427)
!539 = !DILocation(line: 591, column: 5, scope: !427)
!540 = !DILocalVariable(name: "P3_upper", scope: !427, file: !65, line: 593, type: !541)
!541 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 88128, elements: !542)
!542 = !{!543}
!543 = !DISubrange(count: 1377)
!544 = !DILocation(line: 593, column: 14, scope: !427)
!545 = !DILocation(line: 596, column: 13, scope: !427)
!546 = !DILocation(line: 596, column: 16, scope: !427)
!547 = !DILocation(line: 596, column: 20, scope: !427)
!548 = !DILocation(line: 596, column: 30, scope: !427)
!549 = !DILocation(line: 596, column: 5, scope: !427)
!550 = !DILocation(line: 597, column: 17, scope: !427)
!551 = !DILocation(line: 597, column: 27, scope: !427)
!552 = !DILocation(line: 597, column: 33, scope: !427)
!553 = !DILocation(line: 597, column: 31, scope: !427)
!554 = !DILocation(line: 597, column: 54, scope: !427)
!555 = !DILocation(line: 597, column: 69, scope: !427)
!556 = !DILocation(line: 597, column: 68, scope: !427)
!557 = !DILocation(line: 597, column: 82, scope: !427)
!558 = !DILocation(line: 597, column: 5, scope: !427)
!559 = !DILabel(scope: !427, name: "err", file: !65, line: 600, column: 5)
!560 = !DILocation(line: 600, column: 5, scope: !427)
!561 = !DILocation(line: 602, column: 23, scope: !427)
!562 = !DILocation(line: 602, column: 5, scope: !427)
!563 = !DILocation(line: 603, column: 23, scope: !427)
!564 = !DILocation(line: 603, column: 42, scope: !427)
!565 = !DILocation(line: 603, column: 27, scope: !427)
!566 = !DILocation(line: 603, column: 44, scope: !427)
!567 = !DILocation(line: 603, column: 5, scope: !427)
!568 = !DILocation(line: 604, column: 23, scope: !427)
!569 = !DILocation(line: 604, column: 5, scope: !427)
!570 = !DILocation(line: 605, column: 12, scope: !427)
!571 = !DILocation(line: 605, column: 5, scope: !427)
!572 = distinct !DISubprogram(name: "decode", scope: !65, file: !65, line: 20, type: !573, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !68)
!573 = !DISubroutineType(types: !574)
!574 = !{null, !97, !60, !82}
!575 = !DILocalVariable(name: "m", arg: 1, scope: !572, file: !65, line: 20, type: !97)
!576 = !DILocation(line: 20, column: 41, scope: !572)
!577 = !DILocalVariable(name: "mdec", arg: 2, scope: !572, file: !65, line: 20, type: !60)
!578 = !DILocation(line: 20, column: 59, scope: !572)
!579 = !DILocalVariable(name: "mdeclen", arg: 3, scope: !572, file: !65, line: 20, type: !82)
!580 = !DILocation(line: 20, column: 69, scope: !572)
!581 = !DILocalVariable(name: "i", scope: !572, file: !65, line: 21, type: !82)
!582 = !DILocation(line: 21, column: 9, scope: !572)
!583 = !DILocation(line: 22, column: 12, scope: !584)
!584 = distinct !DILexicalBlock(scope: !572, file: !65, line: 22, column: 5)
!585 = !DILocation(line: 22, column: 10, scope: !584)
!586 = !DILocation(line: 22, column: 17, scope: !587)
!587 = distinct !DILexicalBlock(scope: !584, file: !65, line: 22, column: 5)
!588 = !DILocation(line: 22, column: 21, scope: !587)
!589 = !DILocation(line: 22, column: 29, scope: !587)
!590 = !DILocation(line: 22, column: 19, scope: !587)
!591 = !DILocation(line: 22, column: 5, scope: !584)
!592 = !DILocation(line: 23, column: 19, scope: !593)
!593 = distinct !DILexicalBlock(scope: !587, file: !65, line: 22, column: 39)
!594 = !DILocation(line: 23, column: 21, scope: !593)
!595 = !DILocation(line: 23, column: 24, scope: !593)
!596 = !DILocation(line: 23, column: 14, scope: !593)
!597 = !DILocation(line: 23, column: 17, scope: !593)
!598 = !DILocation(line: 24, column: 19, scope: !593)
!599 = !DILocation(line: 24, column: 21, scope: !593)
!600 = !DILocation(line: 24, column: 24, scope: !593)
!601 = !DILocation(line: 24, column: 14, scope: !593)
!602 = !DILocation(line: 24, column: 17, scope: !593)
!603 = !DILocation(line: 25, column: 5, scope: !593)
!604 = !DILocation(line: 22, column: 34, scope: !587)
!605 = !DILocation(line: 22, column: 5, scope: !587)
!606 = distinct !{!606, !591, !607, !143}
!607 = !DILocation(line: 25, column: 5, scope: !584)
!608 = !DILocation(line: 27, column: 9, scope: !609)
!609 = distinct !DILexicalBlock(scope: !572, file: !65, line: 27, column: 9)
!610 = !DILocation(line: 27, column: 17, scope: !609)
!611 = !DILocation(line: 27, column: 21, scope: !609)
!612 = !DILocation(line: 28, column: 19, scope: !613)
!613 = distinct !DILexicalBlock(scope: !609, file: !65, line: 27, column: 27)
!614 = !DILocation(line: 28, column: 21, scope: !613)
!615 = !DILocation(line: 28, column: 24, scope: !613)
!616 = !DILocation(line: 28, column: 14, scope: !613)
!617 = !DILocation(line: 28, column: 17, scope: !613)
!618 = !DILocation(line: 29, column: 5, scope: !613)
!619 = !DILocation(line: 30, column: 1, scope: !572)
!620 = distinct !DISubprogram(name: "expand_P1_P2", scope: !65, file: !65, line: 280, type: !621, scopeLine: 280, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !68)
!621 = !DISubroutineType(types: !622)
!622 = !{null, !376, !52, !97}
!623 = !DILocalVariable(name: "p", arg: 1, scope: !620, file: !65, line: 280, type: !376)
!624 = !DILocation(line: 280, column: 47, scope: !620)
!625 = !DILocalVariable(name: "P", arg: 2, scope: !620, file: !65, line: 280, type: !52)
!626 = !DILocation(line: 280, column: 60, scope: !620)
!627 = !DILocalVariable(name: "seed_pk", arg: 3, scope: !620, file: !65, line: 280, type: !97)
!628 = !DILocation(line: 280, column: 84, scope: !620)
!629 = !DILocation(line: 284, column: 29, scope: !620)
!630 = !DILocation(line: 284, column: 47, scope: !620)
!631 = !DILocation(line: 284, column: 32, scope: !620)
!632 = !DILocation(line: 284, column: 67, scope: !620)
!633 = !DILocation(line: 284, column: 52, scope: !620)
!634 = !DILocation(line: 284, column: 50, scope: !620)
!635 = !DILocation(line: 284, column: 71, scope: !620)
!636 = !DILocation(line: 284, column: 100, scope: !620)
!637 = !DILocation(line: 284, column: 80, scope: !620)
!638 = !DILocation(line: 284, column: 5, scope: !620)
!639 = !DILocation(line: 285, column: 36, scope: !620)
!640 = !DILocation(line: 285, column: 39, scope: !620)
!641 = !DILocation(line: 285, column: 58, scope: !620)
!642 = !DILocation(line: 285, column: 43, scope: !620)
!643 = !DILocation(line: 285, column: 78, scope: !620)
!644 = !DILocation(line: 285, column: 63, scope: !620)
!645 = !DILocation(line: 285, column: 61, scope: !620)
!646 = !DILocation(line: 285, column: 100, scope: !620)
!647 = !DILocation(line: 285, column: 82, scope: !620)
!648 = !DILocation(line: 285, column: 81, scope: !620)
!649 = !DILocation(line: 285, column: 112, scope: !620)
!650 = !DILocation(line: 285, column: 104, scope: !620)
!651 = !DILocation(line: 285, column: 5, scope: !620)
!652 = !DILocation(line: 286, column: 1, scope: !620)
!653 = distinct !DISubprogram(name: "compute_P3", scope: !654, file: !654, line: 260, type: !655, scopeLine: 260, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !68)
!654 = !DIFile(filename: "../src/generic/generic_arithmetic.h", directory: "")
!655 = !DISubroutineType(types: !656)
!656 = !{null, !376, !657, !52, !97, !52}
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!658 = !DILocalVariable(name: "p", arg: 1, scope: !653, file: !654, line: 260, type: !376)
!659 = !DILocation(line: 260, column: 38, scope: !653)
!660 = !DILocalVariable(name: "P1", arg: 2, scope: !653, file: !654, line: 260, type: !657)
!661 = !DILocation(line: 260, column: 57, scope: !653)
!662 = !DILocalVariable(name: "P2", arg: 3, scope: !653, file: !654, line: 260, type: !52)
!663 = !DILocation(line: 260, column: 71, scope: !653)
!664 = !DILocalVariable(name: "O", arg: 4, scope: !653, file: !654, line: 260, type: !97)
!665 = !DILocation(line: 260, column: 96, scope: !653)
!666 = !DILocalVariable(name: "P3", arg: 5, scope: !653, file: !654, line: 260, type: !52)
!667 = !DILocation(line: 260, column: 109, scope: !653)
!668 = !DILocalVariable(name: "m_vec_limbs", scope: !653, file: !654, line: 262, type: !457)
!669 = !DILocation(line: 262, column: 15, scope: !653)
!670 = !DILocation(line: 262, column: 47, scope: !653)
!671 = !DILocation(line: 262, column: 29, scope: !653)
!672 = !DILocalVariable(name: "param_v", scope: !653, file: !654, line: 263, type: !457)
!673 = !DILocation(line: 263, column: 15, scope: !653)
!674 = !DILocation(line: 263, column: 33, scope: !653)
!675 = !DILocation(line: 263, column: 25, scope: !653)
!676 = !DILocalVariable(name: "param_o", scope: !653, file: !654, line: 264, type: !457)
!677 = !DILocation(line: 264, column: 15, scope: !653)
!678 = !DILocation(line: 264, column: 33, scope: !653)
!679 = !DILocation(line: 264, column: 25, scope: !653)
!680 = !DILocation(line: 267, column: 16, scope: !653)
!681 = !DILocation(line: 267, column: 19, scope: !653)
!682 = !DILocation(line: 267, column: 23, scope: !653)
!683 = !DILocation(line: 267, column: 26, scope: !653)
!684 = !DILocation(line: 267, column: 5, scope: !653)
!685 = !DILocation(line: 270, column: 31, scope: !653)
!686 = !DILocation(line: 270, column: 44, scope: !653)
!687 = !DILocation(line: 270, column: 47, scope: !653)
!688 = !DILocation(line: 270, column: 51, scope: !653)
!689 = !DILocation(line: 270, column: 55, scope: !653)
!690 = !DILocation(line: 270, column: 64, scope: !653)
!691 = !DILocation(line: 270, column: 73, scope: !653)
!692 = !DILocation(line: 270, column: 5, scope: !653)
!693 = !DILocation(line: 271, column: 1, scope: !653)
!694 = distinct !DISubprogram(name: "pack_m_vecs", scope: !65, file: !65, line: 272, type: !695, scopeLine: 272, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !68)
!695 = !DISubroutineType(types: !696)
!696 = !{null, !657, !60, !82, !82}
!697 = !DILocalVariable(name: "in", arg: 1, scope: !694, file: !65, line: 272, type: !657)
!698 = !DILocation(line: 272, column: 41, scope: !694)
!699 = !DILocalVariable(name: "out", arg: 2, scope: !694, file: !65, line: 272, type: !60)
!700 = !DILocation(line: 272, column: 60, scope: !694)
!701 = !DILocalVariable(name: "vecs", arg: 3, scope: !694, file: !65, line: 272, type: !82)
!702 = !DILocation(line: 272, column: 69, scope: !694)
!703 = !DILocalVariable(name: "m", arg: 4, scope: !694, file: !65, line: 272, type: !82)
!704 = !DILocation(line: 272, column: 79, scope: !694)
!705 = !DILocalVariable(name: "m_vec_limbs", scope: !694, file: !65, line: 273, type: !457)
!706 = !DILocation(line: 273, column: 15, scope: !694)
!707 = !DILocation(line: 273, column: 30, scope: !694)
!708 = !DILocation(line: 273, column: 32, scope: !694)
!709 = !DILocation(line: 273, column: 38, scope: !694)
!710 = !DILocalVariable(name: "_in", scope: !694, file: !65, line: 274, type: !60)
!711 = !DILocation(line: 274, column: 20, scope: !694)
!712 = !DILocation(line: 274, column: 44, scope: !694)
!713 = !DILocalVariable(name: "i", scope: !714, file: !65, line: 275, type: !82)
!714 = distinct !DILexicalBlock(scope: !694, file: !65, line: 275, column: 5)
!715 = !DILocation(line: 275, column: 14, scope: !714)
!716 = !DILocation(line: 275, column: 10, scope: !714)
!717 = !DILocation(line: 275, column: 21, scope: !718)
!718 = distinct !DILexicalBlock(scope: !714, file: !65, line: 275, column: 5)
!719 = !DILocation(line: 275, column: 25, scope: !718)
!720 = !DILocation(line: 275, column: 23, scope: !718)
!721 = !DILocation(line: 275, column: 5, scope: !714)
!722 = !DILocation(line: 277, column: 17, scope: !723)
!723 = distinct !DILexicalBlock(scope: !718, file: !65, line: 276, column: 5)
!724 = !DILocation(line: 277, column: 24, scope: !723)
!725 = !DILocation(line: 277, column: 26, scope: !723)
!726 = !DILocation(line: 277, column: 25, scope: !723)
!727 = !DILocation(line: 277, column: 27, scope: !723)
!728 = !DILocation(line: 277, column: 9, scope: !723)
!729 = !DILocation(line: 277, column: 32, scope: !723)
!730 = !DILocation(line: 277, column: 38, scope: !723)
!731 = !DILocation(line: 277, column: 40, scope: !723)
!732 = !DILocation(line: 277, column: 39, scope: !723)
!733 = !DILocation(line: 277, column: 51, scope: !723)
!734 = !DILocation(line: 277, column: 70, scope: !723)
!735 = !DILocation(line: 277, column: 71, scope: !723)
!736 = !DILocation(line: 278, column: 5, scope: !723)
!737 = !DILocation(line: 275, column: 32, scope: !718)
!738 = !DILocation(line: 275, column: 5, scope: !718)
!739 = distinct !{!739, !721, !740, !143}
!740 = !DILocation(line: 278, column: 5, scope: !714)
!741 = !DILocation(line: 279, column: 1, scope: !694)
!742 = distinct !DISubprogram(name: "P1_times_O", scope: !654, file: !654, line: 74, type: !743, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !68)
!743 = !DISubroutineType(types: !744)
!744 = !{null, !376, !657, !97, !52}
!745 = !DILocalVariable(name: "p", arg: 1, scope: !742, file: !654, line: 74, type: !376)
!746 = !DILocation(line: 74, column: 38, scope: !742)
!747 = !DILocalVariable(name: "P1", arg: 2, scope: !742, file: !654, line: 74, type: !657)
!748 = !DILocation(line: 74, column: 57, scope: !742)
!749 = !DILocalVariable(name: "O", arg: 3, scope: !742, file: !654, line: 74, type: !97)
!750 = !DILocation(line: 74, column: 82, scope: !742)
!751 = !DILocalVariable(name: "acc", arg: 4, scope: !742, file: !654, line: 74, type: !52)
!752 = !DILocation(line: 74, column: 95, scope: !742)
!753 = !DILocation(line: 78, column: 60, scope: !742)
!754 = !DILocation(line: 78, column: 42, scope: !742)
!755 = !DILocation(line: 78, column: 64, scope: !742)
!756 = !DILocation(line: 78, column: 68, scope: !742)
!757 = !DILocation(line: 78, column: 71, scope: !742)
!758 = !DILocation(line: 78, column: 84, scope: !742)
!759 = !DILocation(line: 78, column: 76, scope: !742)
!760 = !DILocation(line: 78, column: 96, scope: !742)
!761 = !DILocation(line: 78, column: 88, scope: !742)
!762 = !DILocation(line: 78, column: 108, scope: !742)
!763 = !DILocation(line: 78, column: 100, scope: !742)
!764 = !DILocation(line: 78, column: 5, scope: !742)
!765 = !DILocation(line: 79, column: 1, scope: !742)
!766 = distinct !DISubprogram(name: "mul_add_mat_trans_x_m_mat", scope: !654, file: !654, line: 47, type: !767, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !68)
!767 = !DISubroutineType(types: !768)
!768 = !{null, !457, !97, !657, !52, !457, !457, !457}
!769 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !766, file: !654, line: 47, type: !457)
!770 = !DILocation(line: 47, column: 42, scope: !766)
!771 = !DILocalVariable(name: "mat", arg: 2, scope: !766, file: !654, line: 47, type: !97)
!772 = !DILocation(line: 47, column: 76, scope: !766)
!773 = !DILocalVariable(name: "bs_mat", arg: 3, scope: !766, file: !654, line: 47, type: !657)
!774 = !DILocation(line: 47, column: 97, scope: !766)
!775 = !DILocalVariable(name: "acc", arg: 4, scope: !766, file: !654, line: 47, type: !52)
!776 = !DILocation(line: 47, column: 115, scope: !766)
!777 = !DILocalVariable(name: "mat_rows", arg: 5, scope: !766, file: !654, line: 48, type: !457)
!778 = !DILocation(line: 48, column: 42, scope: !766)
!779 = !DILocalVariable(name: "mat_cols", arg: 6, scope: !766, file: !654, line: 48, type: !457)
!780 = !DILocation(line: 48, column: 62, scope: !766)
!781 = !DILocalVariable(name: "bs_mat_cols", arg: 7, scope: !766, file: !654, line: 48, type: !457)
!782 = !DILocation(line: 48, column: 82, scope: !766)
!783 = !DILocalVariable(name: "r", scope: !784, file: !654, line: 50, type: !82)
!784 = distinct !DILexicalBlock(scope: !766, file: !654, line: 50, column: 5)
!785 = !DILocation(line: 50, column: 14, scope: !784)
!786 = !DILocation(line: 50, column: 10, scope: !784)
!787 = !DILocation(line: 50, column: 21, scope: !788)
!788 = distinct !DILexicalBlock(scope: !784, file: !654, line: 50, column: 5)
!789 = !DILocation(line: 50, column: 25, scope: !788)
!790 = !DILocation(line: 50, column: 23, scope: !788)
!791 = !DILocation(line: 50, column: 5, scope: !784)
!792 = !DILocalVariable(name: "c", scope: !793, file: !654, line: 51, type: !82)
!793 = distinct !DILexicalBlock(scope: !794, file: !654, line: 51, column: 9)
!794 = distinct !DILexicalBlock(scope: !788, file: !654, line: 50, column: 40)
!795 = !DILocation(line: 51, column: 18, scope: !793)
!796 = !DILocation(line: 51, column: 14, scope: !793)
!797 = !DILocation(line: 51, column: 25, scope: !798)
!798 = distinct !DILexicalBlock(scope: !793, file: !654, line: 51, column: 9)
!799 = !DILocation(line: 51, column: 29, scope: !798)
!800 = !DILocation(line: 51, column: 27, scope: !798)
!801 = !DILocation(line: 51, column: 9, scope: !793)
!802 = !DILocalVariable(name: "k", scope: !803, file: !654, line: 52, type: !82)
!803 = distinct !DILexicalBlock(scope: !804, file: !654, line: 52, column: 13)
!804 = distinct !DILexicalBlock(scope: !798, file: !654, line: 51, column: 44)
!805 = !DILocation(line: 52, column: 22, scope: !803)
!806 = !DILocation(line: 52, column: 18, scope: !803)
!807 = !DILocation(line: 52, column: 29, scope: !808)
!808 = distinct !DILexicalBlock(scope: !803, file: !654, line: 52, column: 13)
!809 = !DILocation(line: 52, column: 33, scope: !808)
!810 = !DILocation(line: 52, column: 31, scope: !808)
!811 = !DILocation(line: 52, column: 13, scope: !803)
!812 = !DILocation(line: 53, column: 31, scope: !813)
!813 = distinct !DILexicalBlock(scope: !808, file: !654, line: 52, column: 54)
!814 = !DILocation(line: 53, column: 44, scope: !813)
!815 = !DILocation(line: 53, column: 53, scope: !813)
!816 = !DILocation(line: 53, column: 68, scope: !813)
!817 = !DILocation(line: 53, column: 72, scope: !813)
!818 = !DILocation(line: 53, column: 70, scope: !813)
!819 = !DILocation(line: 53, column: 86, scope: !813)
!820 = !DILocation(line: 53, column: 84, scope: !813)
!821 = !DILocation(line: 53, column: 65, scope: !813)
!822 = !DILocation(line: 53, column: 51, scope: !813)
!823 = !DILocation(line: 53, column: 90, scope: !813)
!824 = !DILocation(line: 53, column: 94, scope: !813)
!825 = !DILocation(line: 53, column: 98, scope: !813)
!826 = !DILocation(line: 53, column: 96, scope: !813)
!827 = !DILocation(line: 53, column: 109, scope: !813)
!828 = !DILocation(line: 53, column: 107, scope: !813)
!829 = !DILocation(line: 53, column: 113, scope: !813)
!830 = !DILocation(line: 53, column: 119, scope: !813)
!831 = !DILocation(line: 53, column: 134, scope: !813)
!832 = !DILocation(line: 53, column: 138, scope: !813)
!833 = !DILocation(line: 53, column: 136, scope: !813)
!834 = !DILocation(line: 53, column: 152, scope: !813)
!835 = !DILocation(line: 53, column: 150, scope: !813)
!836 = !DILocation(line: 53, column: 131, scope: !813)
!837 = !DILocation(line: 53, column: 117, scope: !813)
!838 = !DILocation(line: 53, column: 17, scope: !813)
!839 = !DILocation(line: 54, column: 13, scope: !813)
!840 = !DILocation(line: 52, column: 48, scope: !808)
!841 = !DILocation(line: 52, column: 13, scope: !808)
!842 = distinct !{!842, !811, !843, !143}
!843 = !DILocation(line: 54, column: 13, scope: !803)
!844 = !DILocation(line: 55, column: 9, scope: !804)
!845 = !DILocation(line: 51, column: 40, scope: !798)
!846 = !DILocation(line: 51, column: 9, scope: !798)
!847 = distinct !{!847, !801, !848, !143}
!848 = !DILocation(line: 55, column: 9, scope: !793)
!849 = !DILocation(line: 56, column: 5, scope: !794)
!850 = !DILocation(line: 50, column: 36, scope: !788)
!851 = !DILocation(line: 50, column: 5, scope: !788)
!852 = distinct !{!852, !791, !853, !143}
!853 = !DILocation(line: 56, column: 5, scope: !784)
!854 = !DILocation(line: 57, column: 1, scope: !766)
!855 = distinct !DISubprogram(name: "m_vec_mul_add", scope: !856, file: !856, line: 24, type: !857, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !68)
!856 = !DIFile(filename: "../src/generic/arithmetic_dynamic.h", directory: "")
!857 = !DISubroutineType(types: !858)
!858 = !{null, !82, !657, !51, !52}
!859 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !855, file: !856, line: 24, type: !82)
!860 = !DILocation(line: 24, column: 24, scope: !855)
!861 = !DILocalVariable(name: "in", arg: 2, scope: !855, file: !856, line: 24, type: !657)
!862 = !DILocation(line: 24, column: 53, scope: !855)
!863 = !DILocalVariable(name: "a", arg: 3, scope: !855, file: !856, line: 24, type: !51)
!864 = !DILocation(line: 24, column: 71, scope: !855)
!865 = !DILocalVariable(name: "acc", arg: 4, scope: !855, file: !856, line: 24, type: !52)
!866 = !DILocation(line: 24, column: 84, scope: !855)
!867 = !DILocalVariable(name: "i", scope: !868, file: !856, line: 25, type: !82)
!868 = distinct !DILexicalBlock(scope: !855, file: !856, line: 25, column: 5)
!869 = !DILocation(line: 25, column: 13, scope: !868)
!870 = !DILocation(line: 25, column: 9, scope: !868)
!871 = !DILocation(line: 25, column: 18, scope: !872)
!872 = distinct !DILexicalBlock(scope: !868, file: !856, line: 25, column: 5)
!873 = !DILocation(line: 25, column: 22, scope: !872)
!874 = !DILocation(line: 25, column: 20, scope: !872)
!875 = !DILocation(line: 25, column: 5, scope: !868)
!876 = !DILocation(line: 26, column: 33, scope: !877)
!877 = distinct !DILexicalBlock(scope: !872, file: !856, line: 25, column: 39)
!878 = !DILocation(line: 26, column: 36, scope: !877)
!879 = !DILocation(line: 26, column: 40, scope: !877)
!880 = !DILocation(line: 26, column: 19, scope: !877)
!881 = !DILocation(line: 26, column: 9, scope: !877)
!882 = !DILocation(line: 26, column: 13, scope: !877)
!883 = !DILocation(line: 26, column: 16, scope: !877)
!884 = !DILocation(line: 27, column: 5, scope: !877)
!885 = !DILocation(line: 25, column: 36, scope: !872)
!886 = !DILocation(line: 25, column: 5, scope: !872)
!887 = distinct !{!887, !875, !888, !143}
!888 = !DILocation(line: 27, column: 5, scope: !868)
!889 = !DILocation(line: 28, column: 1, scope: !855)
!890 = distinct !DISubprogram(name: "gf16v_mul_u64", scope: !891, file: !891, line: 96, type: !892, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !68)
!891 = !DIFile(filename: "../src/simple_arithmetic.h", directory: "")
!892 = !DISubroutineType(types: !893)
!893 = !{!53, !53, !182}
!894 = !DILocalVariable(name: "a", arg: 1, scope: !890, file: !891, line: 96, type: !53)
!895 = !DILocation(line: 96, column: 48, scope: !890)
!896 = !DILocalVariable(name: "b", arg: 2, scope: !890, file: !891, line: 96, type: !182)
!897 = !DILocation(line: 96, column: 59, scope: !890)
!898 = !DILocalVariable(name: "mask_msb", scope: !890, file: !891, line: 97, type: !53)
!899 = !DILocation(line: 97, column: 14, scope: !890)
!900 = !DILocalVariable(name: "a_msb", scope: !890, file: !891, line: 98, type: !53)
!901 = !DILocation(line: 98, column: 14, scope: !890)
!902 = !DILocalVariable(name: "a64", scope: !890, file: !891, line: 99, type: !53)
!903 = !DILocation(line: 99, column: 14, scope: !890)
!904 = !DILocation(line: 99, column: 20, scope: !890)
!905 = !DILocalVariable(name: "b32", scope: !890, file: !891, line: 101, type: !53)
!906 = !DILocation(line: 101, column: 14, scope: !890)
!907 = !DILocation(line: 101, column: 20, scope: !890)
!908 = !DILocation(line: 101, column: 24, scope: !890)
!909 = !DILocation(line: 101, column: 22, scope: !890)
!910 = !DILocalVariable(name: "r64", scope: !890, file: !891, line: 105, type: !53)
!911 = !DILocation(line: 105, column: 14, scope: !890)
!912 = !DILocation(line: 105, column: 20, scope: !890)
!913 = !DILocation(line: 105, column: 27, scope: !890)
!914 = !DILocation(line: 105, column: 31, scope: !890)
!915 = !DILocation(line: 105, column: 24, scope: !890)
!916 = !DILocation(line: 107, column: 13, scope: !890)
!917 = !DILocation(line: 107, column: 19, scope: !890)
!918 = !DILocation(line: 107, column: 17, scope: !890)
!919 = !DILocation(line: 107, column: 11, scope: !890)
!920 = !DILocation(line: 108, column: 12, scope: !890)
!921 = !DILocation(line: 108, column: 9, scope: !890)
!922 = !DILocation(line: 109, column: 12, scope: !890)
!923 = !DILocation(line: 109, column: 16, scope: !890)
!924 = !DILocation(line: 109, column: 26, scope: !890)
!925 = !DILocation(line: 109, column: 32, scope: !890)
!926 = !DILocation(line: 109, column: 38, scope: !890)
!927 = !DILocation(line: 109, column: 22, scope: !890)
!928 = !DILocation(line: 109, column: 9, scope: !890)
!929 = !DILocation(line: 110, column: 13, scope: !890)
!930 = !DILocation(line: 110, column: 22, scope: !890)
!931 = !DILocation(line: 110, column: 26, scope: !890)
!932 = !DILocation(line: 110, column: 32, scope: !890)
!933 = !DILocation(line: 110, column: 18, scope: !890)
!934 = !DILocation(line: 110, column: 9, scope: !890)
!935 = !DILocation(line: 112, column: 13, scope: !890)
!936 = !DILocation(line: 112, column: 19, scope: !890)
!937 = !DILocation(line: 112, column: 17, scope: !890)
!938 = !DILocation(line: 112, column: 11, scope: !890)
!939 = !DILocation(line: 113, column: 12, scope: !890)
!940 = !DILocation(line: 113, column: 9, scope: !890)
!941 = !DILocation(line: 114, column: 12, scope: !890)
!942 = !DILocation(line: 114, column: 16, scope: !890)
!943 = !DILocation(line: 114, column: 26, scope: !890)
!944 = !DILocation(line: 114, column: 32, scope: !890)
!945 = !DILocation(line: 114, column: 38, scope: !890)
!946 = !DILocation(line: 114, column: 22, scope: !890)
!947 = !DILocation(line: 114, column: 9, scope: !890)
!948 = !DILocation(line: 115, column: 13, scope: !890)
!949 = !DILocation(line: 115, column: 22, scope: !890)
!950 = !DILocation(line: 115, column: 26, scope: !890)
!951 = !DILocation(line: 115, column: 32, scope: !890)
!952 = !DILocation(line: 115, column: 18, scope: !890)
!953 = !DILocation(line: 115, column: 9, scope: !890)
!954 = !DILocation(line: 117, column: 13, scope: !890)
!955 = !DILocation(line: 117, column: 19, scope: !890)
!956 = !DILocation(line: 117, column: 17, scope: !890)
!957 = !DILocation(line: 117, column: 11, scope: !890)
!958 = !DILocation(line: 118, column: 12, scope: !890)
!959 = !DILocation(line: 118, column: 9, scope: !890)
!960 = !DILocation(line: 119, column: 12, scope: !890)
!961 = !DILocation(line: 119, column: 16, scope: !890)
!962 = !DILocation(line: 119, column: 26, scope: !890)
!963 = !DILocation(line: 119, column: 32, scope: !890)
!964 = !DILocation(line: 119, column: 38, scope: !890)
!965 = !DILocation(line: 119, column: 22, scope: !890)
!966 = !DILocation(line: 119, column: 9, scope: !890)
!967 = !DILocation(line: 120, column: 13, scope: !890)
!968 = !DILocation(line: 120, column: 22, scope: !890)
!969 = !DILocation(line: 120, column: 26, scope: !890)
!970 = !DILocation(line: 120, column: 32, scope: !890)
!971 = !DILocation(line: 120, column: 18, scope: !890)
!972 = !DILocation(line: 120, column: 9, scope: !890)
!973 = !DILocation(line: 122, column: 12, scope: !890)
!974 = !DILocation(line: 122, column: 5, scope: !890)
!975 = distinct !DISubprogram(name: "mul_add_m_upper_triangular_mat_x_mat", scope: !654, file: !654, line: 16, type: !976, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !68)
!976 = !DISubroutineType(types: !977)
!977 = !{null, !457, !657, !97, !52, !457, !457, !457, !457}
!978 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !975, file: !654, line: 16, type: !457)
!979 = !DILocation(line: 16, column: 53, scope: !975)
!980 = !DILocalVariable(name: "bs_mat", arg: 2, scope: !975, file: !654, line: 16, type: !657)
!981 = !DILocation(line: 16, column: 82, scope: !975)
!982 = !DILocalVariable(name: "mat", arg: 3, scope: !975, file: !654, line: 16, type: !97)
!983 = !DILocation(line: 16, column: 111, scope: !975)
!984 = !DILocalVariable(name: "acc", arg: 4, scope: !975, file: !654, line: 16, type: !52)
!985 = !DILocation(line: 16, column: 126, scope: !975)
!986 = !DILocalVariable(name: "bs_mat_rows", arg: 5, scope: !975, file: !654, line: 17, type: !457)
!987 = !DILocation(line: 17, column: 53, scope: !975)
!988 = !DILocalVariable(name: "bs_mat_cols", arg: 6, scope: !975, file: !654, line: 17, type: !457)
!989 = !DILocation(line: 17, column: 76, scope: !975)
!990 = !DILocalVariable(name: "mat_cols", arg: 7, scope: !975, file: !654, line: 17, type: !457)
!991 = !DILocation(line: 17, column: 99, scope: !975)
!992 = !DILocalVariable(name: "triangular", arg: 8, scope: !975, file: !654, line: 17, type: !457)
!993 = !DILocation(line: 17, column: 119, scope: !975)
!994 = !DILocalVariable(name: "bs_mat_entries_used", scope: !975, file: !654, line: 19, type: !82)
!995 = !DILocation(line: 19, column: 9, scope: !975)
!996 = !DILocalVariable(name: "r", scope: !997, file: !654, line: 20, type: !82)
!997 = distinct !DILexicalBlock(scope: !975, file: !654, line: 20, column: 5)
!998 = !DILocation(line: 20, column: 14, scope: !997)
!999 = !DILocation(line: 20, column: 10, scope: !997)
!1000 = !DILocation(line: 20, column: 21, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !997, file: !654, line: 20, column: 5)
!1002 = !DILocation(line: 20, column: 25, scope: !1001)
!1003 = !DILocation(line: 20, column: 23, scope: !1001)
!1004 = !DILocation(line: 20, column: 5, scope: !997)
!1005 = !DILocalVariable(name: "c", scope: !1006, file: !654, line: 21, type: !82)
!1006 = distinct !DILexicalBlock(scope: !1007, file: !654, line: 21, column: 9)
!1007 = distinct !DILexicalBlock(scope: !1001, file: !654, line: 20, column: 43)
!1008 = !DILocation(line: 21, column: 18, scope: !1006)
!1009 = !DILocation(line: 21, column: 22, scope: !1006)
!1010 = !DILocation(line: 21, column: 35, scope: !1006)
!1011 = !DILocation(line: 21, column: 33, scope: !1006)
!1012 = !DILocation(line: 21, column: 14, scope: !1006)
!1013 = !DILocation(line: 21, column: 38, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !1006, file: !654, line: 21, column: 9)
!1015 = !DILocation(line: 21, column: 42, scope: !1014)
!1016 = !DILocation(line: 21, column: 40, scope: !1014)
!1017 = !DILocation(line: 21, column: 9, scope: !1006)
!1018 = !DILocalVariable(name: "k", scope: !1019, file: !654, line: 22, type: !82)
!1019 = distinct !DILexicalBlock(scope: !1020, file: !654, line: 22, column: 13)
!1020 = distinct !DILexicalBlock(scope: !1014, file: !654, line: 21, column: 60)
!1021 = !DILocation(line: 22, column: 22, scope: !1019)
!1022 = !DILocation(line: 22, column: 18, scope: !1019)
!1023 = !DILocation(line: 22, column: 29, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !1019, file: !654, line: 22, column: 13)
!1025 = !DILocation(line: 22, column: 33, scope: !1024)
!1026 = !DILocation(line: 22, column: 31, scope: !1024)
!1027 = !DILocation(line: 22, column: 13, scope: !1019)
!1028 = !DILocation(line: 23, column: 31, scope: !1029)
!1029 = distinct !DILexicalBlock(scope: !1024, file: !654, line: 22, column: 51)
!1030 = !DILocation(line: 23, column: 44, scope: !1029)
!1031 = !DILocation(line: 23, column: 53, scope: !1029)
!1032 = !DILocation(line: 23, column: 67, scope: !1029)
!1033 = !DILocation(line: 23, column: 65, scope: !1029)
!1034 = !DILocation(line: 23, column: 51, scope: !1029)
!1035 = !DILocation(line: 23, column: 88, scope: !1029)
!1036 = !DILocation(line: 23, column: 92, scope: !1029)
!1037 = !DILocation(line: 23, column: 96, scope: !1029)
!1038 = !DILocation(line: 23, column: 94, scope: !1029)
!1039 = !DILocation(line: 23, column: 107, scope: !1029)
!1040 = !DILocation(line: 23, column: 105, scope: !1029)
!1041 = !DILocation(line: 23, column: 111, scope: !1029)
!1042 = !DILocation(line: 23, column: 117, scope: !1029)
!1043 = !DILocation(line: 23, column: 132, scope: !1029)
!1044 = !DILocation(line: 23, column: 136, scope: !1029)
!1045 = !DILocation(line: 23, column: 134, scope: !1029)
!1046 = !DILocation(line: 23, column: 147, scope: !1029)
!1047 = !DILocation(line: 23, column: 145, scope: !1029)
!1048 = !DILocation(line: 23, column: 129, scope: !1029)
!1049 = !DILocation(line: 23, column: 115, scope: !1029)
!1050 = !DILocation(line: 23, column: 17, scope: !1029)
!1051 = !DILocation(line: 24, column: 13, scope: !1029)
!1052 = !DILocation(line: 22, column: 45, scope: !1024)
!1053 = !DILocation(line: 22, column: 13, scope: !1024)
!1054 = distinct !{!1054, !1027, !1055, !143}
!1055 = !DILocation(line: 24, column: 13, scope: !1019)
!1056 = !DILocation(line: 25, column: 33, scope: !1020)
!1057 = !DILocation(line: 26, column: 9, scope: !1020)
!1058 = !DILocation(line: 21, column: 56, scope: !1014)
!1059 = !DILocation(line: 21, column: 9, scope: !1014)
!1060 = distinct !{!1060, !1017, !1061, !143}
!1061 = !DILocation(line: 26, column: 9, scope: !1006)
!1062 = !DILocation(line: 27, column: 5, scope: !1007)
!1063 = !DILocation(line: 20, column: 39, scope: !1001)
!1064 = !DILocation(line: 20, column: 5, scope: !1001)
!1065 = distinct !{!1065, !1004, !1066, !143}
!1066 = !DILocation(line: 27, column: 5, scope: !997)
!1067 = !DILocation(line: 28, column: 1, scope: !975)
!1068 = distinct !DISubprogram(name: "unpack_m_vecs", scope: !65, file: !65, line: 262, type: !1069, scopeLine: 262, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !68)
!1069 = !DISubroutineType(types: !1070)
!1070 = !{null, !97, !52, !82, !82}
!1071 = !DILocalVariable(name: "in", arg: 1, scope: !1068, file: !65, line: 262, type: !97)
!1072 = !DILocation(line: 262, column: 48, scope: !1068)
!1073 = !DILocalVariable(name: "out", arg: 2, scope: !1068, file: !65, line: 262, type: !52)
!1074 = !DILocation(line: 262, column: 62, scope: !1068)
!1075 = !DILocalVariable(name: "vecs", arg: 3, scope: !1068, file: !65, line: 262, type: !82)
!1076 = !DILocation(line: 262, column: 71, scope: !1068)
!1077 = !DILocalVariable(name: "m", arg: 4, scope: !1068, file: !65, line: 262, type: !82)
!1078 = !DILocation(line: 262, column: 81, scope: !1068)
!1079 = !DILocalVariable(name: "m_vec_limbs", scope: !1068, file: !65, line: 263, type: !457)
!1080 = !DILocation(line: 263, column: 15, scope: !1068)
!1081 = !DILocation(line: 263, column: 30, scope: !1068)
!1082 = !DILocation(line: 263, column: 32, scope: !1068)
!1083 = !DILocation(line: 263, column: 38, scope: !1068)
!1084 = !DILocalVariable(name: "_out", scope: !1068, file: !65, line: 264, type: !60)
!1085 = !DILocation(line: 264, column: 20, scope: !1068)
!1086 = !DILocation(line: 264, column: 45, scope: !1068)
!1087 = !DILocalVariable(name: "tmp", scope: !1068, file: !65, line: 265, type: !1088)
!1088 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 576, elements: !1089)
!1089 = !{!1090}
!1090 = !DISubrange(count: 9)
!1091 = !DILocation(line: 265, column: 14, scope: !1068)
!1092 = !DILocalVariable(name: "i", scope: !1093, file: !65, line: 266, type: !82)
!1093 = distinct !DILexicalBlock(scope: !1068, file: !65, line: 266, column: 5)
!1094 = !DILocation(line: 266, column: 14, scope: !1093)
!1095 = !DILocation(line: 266, column: 18, scope: !1093)
!1096 = !DILocation(line: 266, column: 22, scope: !1093)
!1097 = !DILocation(line: 266, column: 10, scope: !1093)
!1098 = !DILocation(line: 266, column: 26, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !1093, file: !65, line: 266, column: 5)
!1100 = !DILocation(line: 266, column: 28, scope: !1099)
!1101 = !DILocation(line: 266, column: 5, scope: !1093)
!1102 = !DILocation(line: 268, column: 9, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1099, file: !65, line: 267, column: 5)
!1104 = !DILocation(line: 268, column: 21, scope: !1103)
!1105 = !DILocation(line: 268, column: 26, scope: !1103)
!1106 = !DILocation(line: 268, column: 28, scope: !1103)
!1107 = !DILocation(line: 268, column: 27, scope: !1103)
!1108 = !DILocation(line: 268, column: 29, scope: !1103)
!1109 = !DILocation(line: 268, column: 33, scope: !1103)
!1110 = !DILocation(line: 268, column: 34, scope: !1103)
!1111 = !DILocation(line: 269, column: 16, scope: !1103)
!1112 = !DILocation(line: 269, column: 23, scope: !1103)
!1113 = !DILocation(line: 269, column: 25, scope: !1103)
!1114 = !DILocation(line: 269, column: 24, scope: !1103)
!1115 = !DILocation(line: 269, column: 36, scope: !1103)
!1116 = !DILocation(line: 269, column: 9, scope: !1103)
!1117 = !DILocation(line: 269, column: 60, scope: !1103)
!1118 = !DILocation(line: 269, column: 71, scope: !1103)
!1119 = !DILocation(line: 270, column: 5, scope: !1103)
!1120 = !DILocation(line: 266, column: 35, scope: !1099)
!1121 = !DILocation(line: 266, column: 5, scope: !1099)
!1122 = distinct !{!1122, !1101, !1123, !143}
!1123 = !DILocation(line: 270, column: 5, scope: !1093)
!1124 = !DILocation(line: 271, column: 1, scope: !1068)
!1125 = distinct !DISubprogram(name: "mayo_expand_sk", scope: !65, file: !65, line: 310, type: !1126, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !68)
!1126 = !DISubroutineType(types: !1127)
!1127 = !{!82, !376, !97, !1128}
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = !DIDerivedType(tag: DW_TAG_typedef, name: "sk_t", file: !88, line: 294, baseType: !1130)
!1130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sk_t", file: !88, line: 291, size: 7257920, elements: !1131)
!1131 = !{!1132, !1133}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1130, file: !88, line: 292, baseType: !177, size: 7238592)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "O", scope: !1130, file: !88, line: 293, baseType: !181, size: 19312, offset: 7238592)
!1134 = !DILocalVariable(name: "p", arg: 1, scope: !1125, file: !65, line: 310, type: !376)
!1135 = !DILocation(line: 310, column: 41, scope: !1125)
!1136 = !DILocalVariable(name: "csk", arg: 2, scope: !1125, file: !65, line: 310, type: !97)
!1137 = !DILocation(line: 310, column: 65, scope: !1125)
!1138 = !DILocalVariable(name: "sk", arg: 3, scope: !1125, file: !65, line: 311, type: !1128)
!1139 = !DILocation(line: 311, column: 26, scope: !1125)
!1140 = !DILocalVariable(name: "ret", scope: !1125, file: !65, line: 312, type: !82)
!1141 = !DILocation(line: 312, column: 9, scope: !1125)
!1142 = !DILocalVariable(name: "S", scope: !1125, file: !65, line: 313, type: !440)
!1143 = !DILocation(line: 313, column: 19, scope: !1125)
!1144 = !DILocalVariable(name: "P", scope: !1125, file: !65, line: 314, type: !52)
!1145 = !DILocation(line: 314, column: 15, scope: !1125)
!1146 = !DILocation(line: 314, column: 19, scope: !1125)
!1147 = !DILocation(line: 314, column: 23, scope: !1125)
!1148 = !DILocalVariable(name: "O", scope: !1125, file: !65, line: 315, type: !60)
!1149 = !DILocation(line: 315, column: 20, scope: !1125)
!1150 = !DILocation(line: 315, column: 24, scope: !1125)
!1151 = !DILocation(line: 315, column: 28, scope: !1125)
!1152 = !DILocalVariable(name: "param_o", scope: !1125, file: !65, line: 317, type: !457)
!1153 = !DILocation(line: 317, column: 15, scope: !1125)
!1154 = !DILocation(line: 317, column: 33, scope: !1125)
!1155 = !DILocation(line: 317, column: 25, scope: !1125)
!1156 = !DILocalVariable(name: "param_v", scope: !1125, file: !65, line: 318, type: !457)
!1157 = !DILocation(line: 318, column: 15, scope: !1125)
!1158 = !DILocation(line: 318, column: 33, scope: !1125)
!1159 = !DILocation(line: 318, column: 25, scope: !1125)
!1160 = !DILocalVariable(name: "param_O_bytes", scope: !1125, file: !65, line: 319, type: !457)
!1161 = !DILocation(line: 319, column: 15, scope: !1125)
!1162 = !DILocation(line: 319, column: 45, scope: !1125)
!1163 = !DILocation(line: 319, column: 31, scope: !1125)
!1164 = !DILocalVariable(name: "param_pk_seed_bytes", scope: !1125, file: !65, line: 320, type: !457)
!1165 = !DILocation(line: 320, column: 15, scope: !1125)
!1166 = !DILocation(line: 320, column: 57, scope: !1125)
!1167 = !DILocation(line: 320, column: 37, scope: !1125)
!1168 = !DILocalVariable(name: "param_sk_seed_bytes", scope: !1125, file: !65, line: 321, type: !457)
!1169 = !DILocation(line: 321, column: 15, scope: !1125)
!1170 = !DILocation(line: 321, column: 57, scope: !1125)
!1171 = !DILocation(line: 321, column: 37, scope: !1125)
!1172 = !DILocalVariable(name: "seed_sk", scope: !1125, file: !65, line: 323, type: !97)
!1173 = !DILocation(line: 323, column: 26, scope: !1125)
!1174 = !DILocation(line: 323, column: 36, scope: !1125)
!1175 = !DILocalVariable(name: "seed_pk", scope: !1125, file: !65, line: 324, type: !60)
!1176 = !DILocation(line: 324, column: 20, scope: !1125)
!1177 = !DILocation(line: 324, column: 30, scope: !1125)
!1178 = !DILocation(line: 326, column: 14, scope: !1125)
!1179 = !DILocation(line: 326, column: 17, scope: !1125)
!1180 = !DILocation(line: 326, column: 39, scope: !1125)
!1181 = !DILocation(line: 326, column: 37, scope: !1125)
!1182 = !DILocation(line: 326, column: 54, scope: !1125)
!1183 = !DILocation(line: 327, column: 14, scope: !1125)
!1184 = !DILocation(line: 326, column: 5, scope: !1125)
!1185 = !DILocation(line: 328, column: 12, scope: !1125)
!1186 = !DILocation(line: 328, column: 16, scope: !1125)
!1187 = !DILocation(line: 328, column: 14, scope: !1125)
!1188 = !DILocation(line: 328, column: 37, scope: !1125)
!1189 = !DILocation(line: 328, column: 40, scope: !1125)
!1190 = !DILocation(line: 328, column: 50, scope: !1125)
!1191 = !DILocation(line: 328, column: 48, scope: !1125)
!1192 = !DILocation(line: 328, column: 5, scope: !1125)
!1193 = !DILocation(line: 334, column: 18, scope: !1125)
!1194 = !DILocation(line: 334, column: 21, scope: !1125)
!1195 = !DILocation(line: 334, column: 24, scope: !1125)
!1196 = !DILocation(line: 334, column: 5, scope: !1125)
!1197 = !DILocalVariable(name: "P2", scope: !1125, file: !65, line: 341, type: !52)
!1198 = !DILocation(line: 341, column: 15, scope: !1125)
!1199 = !DILocation(line: 341, column: 20, scope: !1125)
!1200 = !DILocation(line: 341, column: 39, scope: !1125)
!1201 = !DILocation(line: 341, column: 24, scope: !1125)
!1202 = !DILocation(line: 341, column: 22, scope: !1125)
!1203 = !DILocalVariable(name: "P1", scope: !1125, file: !65, line: 343, type: !52)
!1204 = !DILocation(line: 343, column: 15, scope: !1125)
!1205 = !DILocation(line: 343, column: 20, scope: !1125)
!1206 = !DILocalVariable(name: "L", scope: !1125, file: !65, line: 346, type: !52)
!1207 = !DILocation(line: 346, column: 15, scope: !1125)
!1208 = !DILocation(line: 346, column: 19, scope: !1125)
!1209 = !DILocation(line: 347, column: 19, scope: !1125)
!1210 = !DILocation(line: 347, column: 22, scope: !1125)
!1211 = !DILocation(line: 347, column: 26, scope: !1125)
!1212 = !DILocation(line: 347, column: 29, scope: !1125)
!1213 = !DILocation(line: 347, column: 5, scope: !1125)
!1214 = !DILocation(line: 355, column: 23, scope: !1125)
!1215 = !DILocation(line: 355, column: 5, scope: !1125)
!1216 = !DILocation(line: 356, column: 12, scope: !1125)
!1217 = !DILocation(line: 356, column: 5, scope: !1125)
!1218 = distinct !DISubprogram(name: "P1P1t_times_O", scope: !654, file: !654, line: 218, type: !743, scopeLine: 218, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !68)
!1219 = !DILocalVariable(name: "p", arg: 1, scope: !1218, file: !654, line: 218, type: !376)
!1220 = !DILocation(line: 218, column: 41, scope: !1218)
!1221 = !DILocalVariable(name: "P1", arg: 2, scope: !1218, file: !654, line: 218, type: !657)
!1222 = !DILocation(line: 218, column: 60, scope: !1218)
!1223 = !DILocalVariable(name: "O", arg: 3, scope: !1218, file: !654, line: 218, type: !97)
!1224 = !DILocation(line: 218, column: 85, scope: !1218)
!1225 = !DILocalVariable(name: "acc", arg: 4, scope: !1218, file: !654, line: 218, type: !52)
!1226 = !DILocation(line: 218, column: 98, scope: !1218)
!1227 = !DILocalVariable(name: "param_o", scope: !1218, file: !654, line: 222, type: !457)
!1228 = !DILocation(line: 222, column: 15, scope: !1218)
!1229 = !DILocation(line: 222, column: 33, scope: !1218)
!1230 = !DILocation(line: 222, column: 25, scope: !1218)
!1231 = !DILocalVariable(name: "param_v", scope: !1218, file: !654, line: 223, type: !457)
!1232 = !DILocation(line: 223, column: 15, scope: !1218)
!1233 = !DILocation(line: 223, column: 33, scope: !1218)
!1234 = !DILocation(line: 223, column: 25, scope: !1218)
!1235 = !DILocalVariable(name: "m_vec_limbs", scope: !1218, file: !654, line: 224, type: !457)
!1236 = !DILocation(line: 224, column: 15, scope: !1218)
!1237 = !DILocation(line: 224, column: 47, scope: !1218)
!1238 = !DILocation(line: 224, column: 29, scope: !1218)
!1239 = !DILocalVariable(name: "bs_mat_entries_used", scope: !1218, file: !654, line: 226, type: !82)
!1240 = !DILocation(line: 226, column: 9, scope: !1218)
!1241 = !DILocalVariable(name: "r", scope: !1242, file: !654, line: 227, type: !82)
!1242 = distinct !DILexicalBlock(scope: !1218, file: !654, line: 227, column: 5)
!1243 = !DILocation(line: 227, column: 14, scope: !1242)
!1244 = !DILocation(line: 227, column: 10, scope: !1242)
!1245 = !DILocation(line: 227, column: 21, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1242, file: !654, line: 227, column: 5)
!1247 = !DILocation(line: 227, column: 25, scope: !1246)
!1248 = !DILocation(line: 227, column: 23, scope: !1246)
!1249 = !DILocation(line: 227, column: 5, scope: !1242)
!1250 = !DILocalVariable(name: "c", scope: !1251, file: !654, line: 228, type: !82)
!1251 = distinct !DILexicalBlock(scope: !1252, file: !654, line: 228, column: 9)
!1252 = distinct !DILexicalBlock(scope: !1246, file: !654, line: 227, column: 39)
!1253 = !DILocation(line: 228, column: 18, scope: !1251)
!1254 = !DILocation(line: 228, column: 22, scope: !1251)
!1255 = !DILocation(line: 228, column: 14, scope: !1251)
!1256 = !DILocation(line: 228, column: 25, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1251, file: !654, line: 228, column: 9)
!1258 = !DILocation(line: 228, column: 29, scope: !1257)
!1259 = !DILocation(line: 228, column: 27, scope: !1257)
!1260 = !DILocation(line: 228, column: 9, scope: !1251)
!1261 = !DILocation(line: 229, column: 16, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1263, file: !654, line: 229, column: 16)
!1263 = distinct !DILexicalBlock(scope: !1257, file: !654, line: 228, column: 43)
!1264 = !DILocation(line: 229, column: 19, scope: !1262)
!1265 = !DILocation(line: 229, column: 17, scope: !1262)
!1266 = !DILocation(line: 230, column: 37, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !1262, file: !654, line: 229, column: 22)
!1268 = !DILocation(line: 231, column: 17, scope: !1267)
!1269 = !DILocalVariable(name: "k", scope: !1270, file: !654, line: 233, type: !82)
!1270 = distinct !DILexicalBlock(scope: !1263, file: !654, line: 233, column: 13)
!1271 = !DILocation(line: 233, column: 22, scope: !1270)
!1272 = !DILocation(line: 233, column: 18, scope: !1270)
!1273 = !DILocation(line: 233, column: 29, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1270, file: !654, line: 233, column: 13)
!1275 = !DILocation(line: 233, column: 33, scope: !1274)
!1276 = !DILocation(line: 233, column: 31, scope: !1274)
!1277 = !DILocation(line: 233, column: 13, scope: !1270)
!1278 = !DILocation(line: 234, column: 31, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1274, file: !654, line: 233, column: 50)
!1280 = !DILocation(line: 234, column: 44, scope: !1279)
!1281 = !DILocation(line: 234, column: 49, scope: !1279)
!1282 = !DILocation(line: 234, column: 63, scope: !1279)
!1283 = !DILocation(line: 234, column: 61, scope: !1279)
!1284 = !DILocation(line: 234, column: 47, scope: !1279)
!1285 = !DILocation(line: 234, column: 84, scope: !1279)
!1286 = !DILocation(line: 234, column: 86, scope: !1279)
!1287 = !DILocation(line: 234, column: 90, scope: !1279)
!1288 = !DILocation(line: 234, column: 88, scope: !1279)
!1289 = !DILocation(line: 234, column: 100, scope: !1279)
!1290 = !DILocation(line: 234, column: 98, scope: !1279)
!1291 = !DILocation(line: 234, column: 104, scope: !1279)
!1292 = !DILocation(line: 234, column: 110, scope: !1279)
!1293 = !DILocation(line: 234, column: 125, scope: !1279)
!1294 = !DILocation(line: 234, column: 129, scope: !1279)
!1295 = !DILocation(line: 234, column: 127, scope: !1279)
!1296 = !DILocation(line: 234, column: 139, scope: !1279)
!1297 = !DILocation(line: 234, column: 137, scope: !1279)
!1298 = !DILocation(line: 234, column: 122, scope: !1279)
!1299 = !DILocation(line: 234, column: 108, scope: !1279)
!1300 = !DILocation(line: 234, column: 17, scope: !1279)
!1301 = !DILocation(line: 235, column: 31, scope: !1279)
!1302 = !DILocation(line: 235, column: 44, scope: !1279)
!1303 = !DILocation(line: 235, column: 49, scope: !1279)
!1304 = !DILocation(line: 235, column: 63, scope: !1279)
!1305 = !DILocation(line: 235, column: 61, scope: !1279)
!1306 = !DILocation(line: 235, column: 47, scope: !1279)
!1307 = !DILocation(line: 235, column: 84, scope: !1279)
!1308 = !DILocation(line: 235, column: 86, scope: !1279)
!1309 = !DILocation(line: 235, column: 90, scope: !1279)
!1310 = !DILocation(line: 235, column: 88, scope: !1279)
!1311 = !DILocation(line: 235, column: 100, scope: !1279)
!1312 = !DILocation(line: 235, column: 98, scope: !1279)
!1313 = !DILocation(line: 235, column: 104, scope: !1279)
!1314 = !DILocation(line: 235, column: 110, scope: !1279)
!1315 = !DILocation(line: 235, column: 125, scope: !1279)
!1316 = !DILocation(line: 235, column: 129, scope: !1279)
!1317 = !DILocation(line: 235, column: 127, scope: !1279)
!1318 = !DILocation(line: 235, column: 139, scope: !1279)
!1319 = !DILocation(line: 235, column: 137, scope: !1279)
!1320 = !DILocation(line: 235, column: 122, scope: !1279)
!1321 = !DILocation(line: 235, column: 108, scope: !1279)
!1322 = !DILocation(line: 235, column: 17, scope: !1279)
!1323 = !DILocation(line: 236, column: 13, scope: !1279)
!1324 = !DILocation(line: 233, column: 44, scope: !1274)
!1325 = !DILocation(line: 233, column: 13, scope: !1274)
!1326 = distinct !{!1326, !1277, !1327, !143}
!1327 = !DILocation(line: 236, column: 13, scope: !1270)
!1328 = !DILocation(line: 237, column: 33, scope: !1263)
!1329 = !DILocation(line: 238, column: 9, scope: !1263)
!1330 = !DILocation(line: 228, column: 39, scope: !1257)
!1331 = !DILocation(line: 228, column: 9, scope: !1257)
!1332 = distinct !{!1332, !1260, !1333, !143}
!1333 = !DILocation(line: 238, column: 9, scope: !1251)
!1334 = !DILocation(line: 239, column: 5, scope: !1252)
!1335 = !DILocation(line: 227, column: 35, scope: !1246)
!1336 = !DILocation(line: 227, column: 5, scope: !1246)
!1337 = distinct !{!1337, !1249, !1338, !143}
!1338 = !DILocation(line: 239, column: 5, scope: !1242)
!1339 = !DILocation(line: 240, column: 1, scope: !1218)
!1340 = distinct !DISubprogram(name: "mayo_sign_signature", scope: !65, file: !65, line: 359, type: !1341, scopeLine: 361, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !68)
!1341 = !DISubroutineType(types: !1342)
!1342 = !{!82, !376, !60, !1343, !97, !58, !97}
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!1344 = !DILocalVariable(name: "p", arg: 1, scope: !1340, file: !65, line: 359, type: !376)
!1345 = !DILocation(line: 359, column: 46, scope: !1340)
!1346 = !DILocalVariable(name: "sig", arg: 2, scope: !1340, file: !65, line: 359, type: !60)
!1347 = !DILocation(line: 359, column: 64, scope: !1340)
!1348 = !DILocalVariable(name: "siglen", arg: 3, scope: !1340, file: !65, line: 360, type: !1343)
!1349 = !DILocation(line: 360, column: 23, scope: !1340)
!1350 = !DILocalVariable(name: "m", arg: 4, scope: !1340, file: !65, line: 360, type: !97)
!1351 = !DILocation(line: 360, column: 52, scope: !1340)
!1352 = !DILocalVariable(name: "mlen", arg: 5, scope: !1340, file: !65, line: 361, type: !58)
!1353 = !DILocation(line: 361, column: 22, scope: !1340)
!1354 = !DILocalVariable(name: "csk", arg: 6, scope: !1340, file: !65, line: 361, type: !97)
!1355 = !DILocation(line: 361, column: 49, scope: !1340)
!1356 = !DILocalVariable(name: "ret", scope: !1340, file: !65, line: 362, type: !82)
!1357 = !DILocation(line: 362, column: 9, scope: !1340)
!1358 = !DILocalVariable(name: "tenc", scope: !1340, file: !65, line: 363, type: !1359)
!1359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 568, elements: !1360)
!1360 = !{!1361}
!1361 = !DISubrange(count: 71)
!1362 = !DILocation(line: 363, column: 19, scope: !1340)
!1363 = !DILocalVariable(name: "t", scope: !1340, file: !65, line: 363, type: !1364)
!1364 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 1136, elements: !1365)
!1365 = !{!1366}
!1366 = !DISubrange(count: 142)
!1367 = !DILocation(line: 363, column: 38, scope: !1340)
!1368 = !DILocalVariable(name: "y", scope: !1340, file: !65, line: 364, type: !1364)
!1369 = !DILocation(line: 364, column: 19, scope: !1340)
!1370 = !DILocalVariable(name: "salt", scope: !1340, file: !65, line: 365, type: !1371)
!1371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 320, elements: !1372)
!1372 = !{!1373}
!1373 = !DISubrange(count: 40)
!1374 = !DILocation(line: 365, column: 19, scope: !1340)
!1375 = !DILocalVariable(name: "V", scope: !1340, file: !65, line: 366, type: !1376)
!1376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 7392, elements: !1377)
!1377 = !{!1378}
!1378 = !DISubrange(count: 924)
!1379 = !DILocation(line: 366, column: 19, scope: !1340)
!1380 = !DILocalVariable(name: "Vdec", scope: !1340, file: !65, line: 366, type: !1381)
!1381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 13632, elements: !1382)
!1382 = !{!1383}
!1383 = !DISubrange(count: 1704)
!1384 = !DILocation(line: 366, column: 57, scope: !1340)
!1385 = !DILocalVariable(name: "A", scope: !1340, file: !65, line: 367, type: !1386)
!1386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 236160, elements: !1387)
!1387 = !{!1388}
!1388 = !DISubrange(count: 29520)
!1389 = !DILocation(line: 367, column: 19, scope: !1340)
!1390 = !DILocalVariable(name: "x", scope: !1340, file: !65, line: 368, type: !1391)
!1391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 14784, elements: !1392)
!1392 = !{!1393}
!1393 = !DISubrange(count: 1848)
!1394 = !DILocation(line: 368, column: 19, scope: !1340)
!1395 = !DILocalVariable(name: "r", scope: !1340, file: !65, line: 369, type: !1396)
!1396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 1640, elements: !1397)
!1397 = !{!1398}
!1398 = !DISubrange(count: 205)
!1399 = !DILocation(line: 369, column: 19, scope: !1340)
!1400 = !DILocalVariable(name: "s", scope: !1340, file: !65, line: 370, type: !1391)
!1401 = !DILocation(line: 370, column: 19, scope: !1340)
!1402 = !DILocalVariable(name: "seed_sk", scope: !1340, file: !65, line: 371, type: !97)
!1403 = !DILocation(line: 371, column: 26, scope: !1340)
!1404 = !DILocalVariable(name: "sk", scope: !1340, file: !65, line: 372, type: !1129, align: 256)
!1405 = !DILocation(line: 372, column: 22, scope: !1340)
!1406 = !DILocalVariable(name: "Ox", scope: !1340, file: !65, line: 373, type: !1364)
!1407 = !DILocation(line: 373, column: 19, scope: !1340)
!1408 = !DILocalVariable(name: "tmp", scope: !1340, file: !65, line: 374, type: !1409)
!1409 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 1160, elements: !1410)
!1410 = !{!1411}
!1411 = !DISubrange(count: 145)
!1412 = !DILocation(line: 374, column: 19, scope: !1340)
!1413 = !DILocalVariable(name: "ctrbyte", scope: !1340, file: !65, line: 375, type: !60)
!1414 = !DILocation(line: 375, column: 20, scope: !1340)
!1415 = !DILocalVariable(name: "vi", scope: !1340, file: !65, line: 376, type: !60)
!1416 = !DILocation(line: 376, column: 20, scope: !1340)
!1417 = !DILocalVariable(name: "param_m", scope: !1340, file: !65, line: 378, type: !457)
!1418 = !DILocation(line: 378, column: 15, scope: !1340)
!1419 = !DILocation(line: 378, column: 33, scope: !1340)
!1420 = !DILocation(line: 378, column: 25, scope: !1340)
!1421 = !DILocalVariable(name: "param_n", scope: !1340, file: !65, line: 379, type: !457)
!1422 = !DILocation(line: 379, column: 15, scope: !1340)
!1423 = !DILocation(line: 379, column: 33, scope: !1340)
!1424 = !DILocation(line: 379, column: 25, scope: !1340)
!1425 = !DILocalVariable(name: "param_o", scope: !1340, file: !65, line: 380, type: !457)
!1426 = !DILocation(line: 380, column: 15, scope: !1340)
!1427 = !DILocation(line: 380, column: 33, scope: !1340)
!1428 = !DILocation(line: 380, column: 25, scope: !1340)
!1429 = !DILocalVariable(name: "param_k", scope: !1340, file: !65, line: 381, type: !457)
!1430 = !DILocation(line: 381, column: 15, scope: !1340)
!1431 = !DILocation(line: 381, column: 33, scope: !1340)
!1432 = !DILocation(line: 381, column: 25, scope: !1340)
!1433 = !DILocalVariable(name: "param_v", scope: !1340, file: !65, line: 382, type: !457)
!1434 = !DILocation(line: 382, column: 15, scope: !1340)
!1435 = !DILocation(line: 382, column: 33, scope: !1340)
!1436 = !DILocation(line: 382, column: 25, scope: !1340)
!1437 = !DILocalVariable(name: "param_m_bytes", scope: !1340, file: !65, line: 383, type: !457)
!1438 = !DILocation(line: 383, column: 15, scope: !1340)
!1439 = !DILocation(line: 383, column: 45, scope: !1340)
!1440 = !DILocation(line: 383, column: 31, scope: !1340)
!1441 = !DILocalVariable(name: "param_v_bytes", scope: !1340, file: !65, line: 384, type: !457)
!1442 = !DILocation(line: 384, column: 15, scope: !1340)
!1443 = !DILocation(line: 384, column: 45, scope: !1340)
!1444 = !DILocation(line: 384, column: 31, scope: !1340)
!1445 = !DILocalVariable(name: "param_r_bytes", scope: !1340, file: !65, line: 385, type: !457)
!1446 = !DILocation(line: 385, column: 15, scope: !1340)
!1447 = !DILocation(line: 385, column: 45, scope: !1340)
!1448 = !DILocation(line: 385, column: 31, scope: !1340)
!1449 = !DILocalVariable(name: "param_sig_bytes", scope: !1340, file: !65, line: 386, type: !457)
!1450 = !DILocation(line: 386, column: 15, scope: !1340)
!1451 = !DILocation(line: 386, column: 49, scope: !1340)
!1452 = !DILocation(line: 386, column: 33, scope: !1340)
!1453 = !DILocalVariable(name: "param_A_cols", scope: !1340, file: !65, line: 387, type: !457)
!1454 = !DILocation(line: 387, column: 15, scope: !1340)
!1455 = !DILocation(line: 387, column: 43, scope: !1340)
!1456 = !DILocation(line: 387, column: 30, scope: !1340)
!1457 = !DILocalVariable(name: "param_digest_bytes", scope: !1340, file: !65, line: 388, type: !457)
!1458 = !DILocation(line: 388, column: 15, scope: !1340)
!1459 = !DILocation(line: 388, column: 55, scope: !1340)
!1460 = !DILocation(line: 388, column: 36, scope: !1340)
!1461 = !DILocalVariable(name: "param_sk_seed_bytes", scope: !1340, file: !65, line: 389, type: !457)
!1462 = !DILocation(line: 389, column: 15, scope: !1340)
!1463 = !DILocation(line: 389, column: 57, scope: !1340)
!1464 = !DILocation(line: 389, column: 37, scope: !1340)
!1465 = !DILocalVariable(name: "param_salt_bytes", scope: !1340, file: !65, line: 390, type: !457)
!1466 = !DILocation(line: 390, column: 15, scope: !1340)
!1467 = !DILocation(line: 390, column: 51, scope: !1340)
!1468 = !DILocation(line: 390, column: 34, scope: !1340)
!1469 = !DILocation(line: 392, column: 26, scope: !1340)
!1470 = !DILocation(line: 392, column: 29, scope: !1340)
!1471 = !DILocation(line: 392, column: 11, scope: !1340)
!1472 = !DILocation(line: 392, column: 9, scope: !1340)
!1473 = !DILocation(line: 393, column: 9, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !1340, file: !65, line: 393, column: 9)
!1475 = !DILocation(line: 393, column: 13, scope: !1474)
!1476 = !DILocation(line: 394, column: 9, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !1474, file: !65, line: 393, column: 25)
!1478 = !DILocation(line: 397, column: 15, scope: !1340)
!1479 = !DILocation(line: 397, column: 13, scope: !1340)
!1480 = !DILocation(line: 401, column: 14, scope: !1340)
!1481 = !DILocation(line: 401, column: 19, scope: !1340)
!1482 = !DILocation(line: 401, column: 39, scope: !1340)
!1483 = !DILocation(line: 401, column: 42, scope: !1340)
!1484 = !DILocation(line: 401, column: 5, scope: !1340)
!1485 = !DILocalVariable(name: "P1", scope: !1340, file: !65, line: 403, type: !52)
!1486 = !DILocation(line: 403, column: 15, scope: !1340)
!1487 = !DILocation(line: 403, column: 23, scope: !1340)
!1488 = !DILocation(line: 403, column: 20, scope: !1340)
!1489 = !DILocalVariable(name: "L", scope: !1340, file: !65, line: 404, type: !52)
!1490 = !DILocation(line: 404, column: 15, scope: !1340)
!1491 = !DILocation(line: 404, column: 20, scope: !1340)
!1492 = !DILocation(line: 404, column: 40, scope: !1340)
!1493 = !DILocation(line: 404, column: 25, scope: !1340)
!1494 = !DILocation(line: 404, column: 23, scope: !1340)
!1495 = !DILocalVariable(name: "Mtmp", scope: !1340, file: !65, line: 405, type: !1496)
!1496 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 117504, elements: !1497)
!1497 = !{!1498}
!1498 = !DISubrange(count: 1836)
!1499 = !DILocation(line: 405, column: 14, scope: !1340)
!1500 = !DILocation(line: 420, column: 21, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1340, file: !65, line: 420, column: 9)
!1502 = !DILocation(line: 420, column: 27, scope: !1501)
!1503 = !DILocation(line: 420, column: 25, scope: !1501)
!1504 = !DILocation(line: 420, column: 47, scope: !1501)
!1505 = !DILocation(line: 420, column: 9, scope: !1501)
!1506 = !DILocation(line: 420, column: 65, scope: !1501)
!1507 = !DILocation(line: 421, column: 13, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1501, file: !65, line: 420, column: 77)
!1509 = !DILocation(line: 422, column: 9, scope: !1508)
!1510 = !DILocation(line: 427, column: 5, scope: !1340)
!1511 = !DILocation(line: 427, column: 18, scope: !1340)
!1512 = !DILocation(line: 427, column: 39, scope: !1340)
!1513 = !DILocation(line: 427, column: 57, scope: !1340)
!1514 = !DILocation(line: 428, column: 12, scope: !1340)
!1515 = !DILocation(line: 429, column: 14, scope: !1340)
!1516 = !DILocation(line: 429, column: 20, scope: !1340)
!1517 = !DILocation(line: 429, column: 38, scope: !1340)
!1518 = !DILocation(line: 430, column: 14, scope: !1340)
!1519 = !DILocation(line: 430, column: 35, scope: !1340)
!1520 = !DILocation(line: 430, column: 33, scope: !1340)
!1521 = !DILocation(line: 430, column: 54, scope: !1340)
!1522 = !DILocation(line: 430, column: 52, scope: !1340)
!1523 = !DILocation(line: 429, column: 5, scope: !1340)
!1524 = !DILocation(line: 437, column: 5, scope: !1340)
!1525 = !DILocation(line: 437, column: 18, scope: !1340)
!1526 = !DILocation(line: 437, column: 44, scope: !1340)
!1527 = !DILocation(line: 438, column: 15, scope: !1340)
!1528 = !DILocation(line: 438, column: 21, scope: !1340)
!1529 = !DILocation(line: 438, column: 19, scope: !1340)
!1530 = !DILocation(line: 438, column: 42, scope: !1340)
!1531 = !DILocation(line: 438, column: 40, scope: !1340)
!1532 = !DILocation(line: 438, column: 61, scope: !1340)
!1533 = !DILocation(line: 438, column: 59, scope: !1340)
!1534 = !DILocation(line: 438, column: 13, scope: !1340)
!1535 = !DILocation(line: 440, column: 14, scope: !1340)
!1536 = !DILocation(line: 440, column: 20, scope: !1340)
!1537 = !DILocation(line: 440, column: 35, scope: !1340)
!1538 = !DILocation(line: 440, column: 40, scope: !1340)
!1539 = !DILocation(line: 440, column: 61, scope: !1340)
!1540 = !DILocation(line: 440, column: 59, scope: !1340)
!1541 = !DILocation(line: 440, column: 5, scope: !1340)
!1542 = !DILocation(line: 442, column: 12, scope: !1340)
!1543 = !DILocation(line: 442, column: 18, scope: !1340)
!1544 = !DILocation(line: 442, column: 21, scope: !1340)
!1545 = !DILocation(line: 442, column: 5, scope: !1340)
!1546 = !DILocalVariable(name: "ctr", scope: !1547, file: !65, line: 444, type: !82)
!1547 = distinct !DILexicalBlock(scope: !1340, file: !65, line: 444, column: 5)
!1548 = !DILocation(line: 444, column: 14, scope: !1547)
!1549 = !DILocation(line: 444, column: 10, scope: !1547)
!1550 = !DILocation(line: 444, column: 23, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !1547, file: !65, line: 444, column: 5)
!1552 = !DILocation(line: 444, column: 27, scope: !1551)
!1553 = !DILocation(line: 444, column: 5, scope: !1547)
!1554 = !DILocation(line: 445, column: 35, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1551, file: !65, line: 444, column: 42)
!1556 = !DILocation(line: 445, column: 20, scope: !1555)
!1557 = !DILocation(line: 445, column: 10, scope: !1555)
!1558 = !DILocation(line: 445, column: 18, scope: !1555)
!1559 = !DILocation(line: 447, column: 18, scope: !1555)
!1560 = !DILocation(line: 447, column: 21, scope: !1555)
!1561 = !DILocation(line: 447, column: 31, scope: !1555)
!1562 = !DILocation(line: 447, column: 29, scope: !1555)
!1563 = !DILocation(line: 447, column: 47, scope: !1555)
!1564 = !DILocation(line: 447, column: 45, scope: !1555)
!1565 = !DILocation(line: 447, column: 62, scope: !1555)
!1566 = !DILocation(line: 448, column: 18, scope: !1555)
!1567 = !DILocation(line: 448, column: 39, scope: !1555)
!1568 = !DILocation(line: 448, column: 37, scope: !1555)
!1569 = !DILocation(line: 448, column: 58, scope: !1555)
!1570 = !DILocation(line: 448, column: 56, scope: !1555)
!1571 = !DILocation(line: 448, column: 78, scope: !1555)
!1572 = !DILocation(line: 447, column: 9, scope: !1555)
!1573 = !DILocalVariable(name: "i", scope: !1574, file: !65, line: 451, type: !82)
!1574 = distinct !DILexicalBlock(scope: !1555, file: !65, line: 451, column: 9)
!1575 = !DILocation(line: 451, column: 18, scope: !1574)
!1576 = !DILocation(line: 451, column: 14, scope: !1574)
!1577 = !DILocation(line: 451, column: 25, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !1574, file: !65, line: 451, column: 9)
!1579 = !DILocation(line: 451, column: 30, scope: !1578)
!1580 = !DILocation(line: 451, column: 38, scope: !1578)
!1581 = !DILocation(line: 451, column: 27, scope: !1578)
!1582 = !DILocation(line: 451, column: 9, scope: !1574)
!1583 = !DILocation(line: 452, column: 20, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1578, file: !65, line: 451, column: 48)
!1585 = !DILocation(line: 452, column: 24, scope: !1584)
!1586 = !DILocation(line: 452, column: 28, scope: !1584)
!1587 = !DILocation(line: 452, column: 26, scope: !1584)
!1588 = !DILocation(line: 452, column: 22, scope: !1584)
!1589 = !DILocation(line: 452, column: 43, scope: !1584)
!1590 = !DILocation(line: 452, column: 50, scope: !1584)
!1591 = !DILocation(line: 452, column: 54, scope: !1584)
!1592 = !DILocation(line: 452, column: 52, scope: !1584)
!1593 = !DILocation(line: 452, column: 48, scope: !1584)
!1594 = !DILocation(line: 452, column: 63, scope: !1584)
!1595 = !DILocation(line: 452, column: 13, scope: !1584)
!1596 = !DILocation(line: 453, column: 9, scope: !1584)
!1597 = !DILocation(line: 451, column: 43, scope: !1578)
!1598 = !DILocation(line: 451, column: 9, scope: !1578)
!1599 = distinct !{!1599, !1582, !1600, !143}
!1600 = !DILocation(line: 453, column: 9, scope: !1574)
!1601 = !DILocation(line: 456, column: 27, scope: !1555)
!1602 = !DILocation(line: 456, column: 30, scope: !1555)
!1603 = !DILocation(line: 456, column: 36, scope: !1555)
!1604 = !DILocation(line: 456, column: 39, scope: !1555)
!1605 = !DILocation(line: 456, column: 43, scope: !1555)
!1606 = !DILocation(line: 456, column: 61, scope: !1555)
!1607 = !DILocation(line: 456, column: 9, scope: !1555)
!1608 = !DILocation(line: 458, column: 21, scope: !1555)
!1609 = !DILocation(line: 458, column: 36, scope: !1555)
!1610 = !DILocation(line: 458, column: 39, scope: !1555)
!1611 = !DILocation(line: 458, column: 42, scope: !1555)
!1612 = !DILocation(line: 458, column: 9, scope: !1555)
!1613 = !DILocation(line: 459, column: 19, scope: !1555)
!1614 = !DILocation(line: 459, column: 22, scope: !1555)
!1615 = !DILocation(line: 459, column: 28, scope: !1555)
!1616 = !DILocation(line: 459, column: 9, scope: !1555)
!1617 = !DILocalVariable(name: "i", scope: !1618, file: !65, line: 461, type: !82)
!1618 = distinct !DILexicalBlock(scope: !1555, file: !65, line: 461, column: 9)
!1619 = !DILocation(line: 461, column: 18, scope: !1618)
!1620 = !DILocation(line: 461, column: 14, scope: !1618)
!1621 = !DILocation(line: 461, column: 25, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !1618, file: !65, line: 461, column: 9)
!1623 = !DILocation(line: 461, column: 29, scope: !1622)
!1624 = !DILocation(line: 461, column: 27, scope: !1622)
!1625 = !DILocation(line: 461, column: 9, scope: !1618)
!1626 = !DILocation(line: 463, column: 18, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !1622, file: !65, line: 462, column: 9)
!1628 = !DILocation(line: 463, column: 17, scope: !1627)
!1629 = !DILocation(line: 463, column: 22, scope: !1627)
!1630 = !DILocation(line: 463, column: 30, scope: !1627)
!1631 = !DILocation(line: 463, column: 29, scope: !1627)
!1632 = !DILocation(line: 463, column: 38, scope: !1627)
!1633 = !DILocation(line: 463, column: 20, scope: !1627)
!1634 = !DILocation(line: 463, column: 43, scope: !1627)
!1635 = !DILocation(line: 463, column: 13, scope: !1627)
!1636 = !DILocation(line: 463, column: 48, scope: !1627)
!1637 = !DILocation(line: 464, column: 9, scope: !1627)
!1638 = !DILocation(line: 461, column: 39, scope: !1622)
!1639 = !DILocation(line: 461, column: 9, scope: !1622)
!1640 = distinct !{!1640, !1625, !1641, !143}
!1641 = !DILocation(line: 464, column: 9, scope: !1618)
!1642 = !DILocation(line: 466, column: 16, scope: !1555)
!1643 = !DILocation(line: 466, column: 20, scope: !1555)
!1644 = !DILocation(line: 466, column: 30, scope: !1555)
!1645 = !DILocation(line: 466, column: 28, scope: !1555)
!1646 = !DILocation(line: 466, column: 18, scope: !1555)
!1647 = !DILocation(line: 466, column: 45, scope: !1555)
!1648 = !DILocation(line: 467, column: 16, scope: !1555)
!1649 = !DILocation(line: 468, column: 16, scope: !1555)
!1650 = !DILocation(line: 467, column: 24, scope: !1555)
!1651 = !DILocation(line: 466, column: 9, scope: !1555)
!1652 = !DILocation(line: 470, column: 29, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !1555, file: !65, line: 470, column: 13)
!1654 = !DILocation(line: 470, column: 32, scope: !1653)
!1655 = !DILocation(line: 470, column: 35, scope: !1653)
!1656 = !DILocation(line: 470, column: 38, scope: !1653)
!1657 = !DILocation(line: 470, column: 41, scope: !1653)
!1658 = !DILocation(line: 470, column: 44, scope: !1653)
!1659 = !DILocation(line: 470, column: 53, scope: !1653)
!1660 = !DILocation(line: 470, column: 62, scope: !1653)
!1661 = !DILocation(line: 470, column: 71, scope: !1653)
!1662 = !DILocation(line: 470, column: 13, scope: !1653)
!1663 = !DILocation(line: 471, column: 13, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1653, file: !65, line: 470, column: 86)
!1665 = !DILocation(line: 473, column: 13, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !1653, file: !65, line: 472, column: 16)
!1667 = !DILocation(line: 474, column: 13, scope: !1666)
!1668 = !DILocation(line: 476, column: 5, scope: !1555)
!1669 = !DILocation(line: 444, column: 35, scope: !1551)
!1670 = !DILocation(line: 444, column: 5, scope: !1551)
!1671 = distinct !{!1671, !1553, !1672, !143}
!1672 = !DILocation(line: 476, column: 5, scope: !1547)
!1673 = !DILocalVariable(name: "i", scope: !1674, file: !65, line: 478, type: !82)
!1674 = distinct !DILexicalBlock(scope: !1340, file: !65, line: 478, column: 5)
!1675 = !DILocation(line: 478, column: 14, scope: !1674)
!1676 = !DILocation(line: 478, column: 10, scope: !1674)
!1677 = !DILocation(line: 478, column: 21, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1674, file: !65, line: 478, column: 5)
!1679 = !DILocation(line: 478, column: 26, scope: !1678)
!1680 = !DILocation(line: 478, column: 34, scope: !1678)
!1681 = !DILocation(line: 478, column: 23, scope: !1678)
!1682 = !DILocation(line: 478, column: 5, scope: !1674)
!1683 = !DILocation(line: 479, column: 14, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1678, file: !65, line: 478, column: 44)
!1685 = !DILocation(line: 479, column: 21, scope: !1684)
!1686 = !DILocation(line: 479, column: 26, scope: !1684)
!1687 = !DILocation(line: 479, column: 36, scope: !1684)
!1688 = !DILocation(line: 479, column: 34, scope: !1684)
!1689 = !DILocation(line: 479, column: 23, scope: !1684)
!1690 = !DILocation(line: 479, column: 19, scope: !1684)
!1691 = !DILocation(line: 479, column: 12, scope: !1684)
!1692 = !DILocation(line: 480, column: 20, scope: !1684)
!1693 = !DILocation(line: 480, column: 17, scope: !1684)
!1694 = !DILocation(line: 480, column: 23, scope: !1684)
!1695 = !DILocation(line: 480, column: 27, scope: !1684)
!1696 = !DILocation(line: 480, column: 31, scope: !1684)
!1697 = !DILocation(line: 480, column: 29, scope: !1684)
!1698 = !DILocation(line: 480, column: 25, scope: !1684)
!1699 = !DILocation(line: 480, column: 40, scope: !1684)
!1700 = !DILocation(line: 480, column: 44, scope: !1684)
!1701 = !DILocation(line: 480, column: 53, scope: !1684)
!1702 = !DILocation(line: 480, column: 63, scope: !1684)
!1703 = !DILocation(line: 480, column: 61, scope: !1684)
!1704 = !DILocation(line: 480, column: 9, scope: !1684)
!1705 = !DILocation(line: 481, column: 17, scope: !1684)
!1706 = !DILocation(line: 481, column: 21, scope: !1684)
!1707 = !DILocation(line: 481, column: 25, scope: !1684)
!1708 = !DILocation(line: 481, column: 29, scope: !1684)
!1709 = !DILocation(line: 481, column: 33, scope: !1684)
!1710 = !DILocation(line: 481, column: 31, scope: !1684)
!1711 = !DILocation(line: 481, column: 27, scope: !1684)
!1712 = !DILocation(line: 481, column: 42, scope: !1684)
!1713 = !DILocation(line: 481, column: 52, scope: !1684)
!1714 = !DILocation(line: 481, column: 50, scope: !1684)
!1715 = !DILocation(line: 481, column: 9, scope: !1684)
!1716 = !DILocation(line: 482, column: 9, scope: !1684)
!1717 = !DILocation(line: 482, column: 20, scope: !1684)
!1718 = !DILocation(line: 482, column: 24, scope: !1684)
!1719 = !DILocation(line: 482, column: 22, scope: !1684)
!1720 = !DILocation(line: 482, column: 35, scope: !1684)
!1721 = !DILocation(line: 482, column: 45, scope: !1684)
!1722 = !DILocation(line: 482, column: 43, scope: !1684)
!1723 = !DILocation(line: 482, column: 59, scope: !1684)
!1724 = !DILocation(line: 482, column: 63, scope: !1684)
!1725 = !DILocation(line: 482, column: 61, scope: !1684)
!1726 = !DILocation(line: 482, column: 72, scope: !1684)
!1727 = !DILocation(line: 483, column: 5, scope: !1684)
!1728 = !DILocation(line: 478, column: 39, scope: !1678)
!1729 = !DILocation(line: 478, column: 5, scope: !1678)
!1730 = distinct !{!1730, !1682, !1731, !143}
!1731 = !DILocation(line: 483, column: 5, scope: !1674)
!1732 = !DILocation(line: 484, column: 12, scope: !1340)
!1733 = !DILocation(line: 484, column: 15, scope: !1340)
!1734 = !DILocation(line: 484, column: 20, scope: !1340)
!1735 = !DILocation(line: 484, column: 30, scope: !1340)
!1736 = !DILocation(line: 484, column: 28, scope: !1340)
!1737 = !DILocation(line: 484, column: 5, scope: !1340)
!1738 = !DILocation(line: 486, column: 12, scope: !1340)
!1739 = !DILocation(line: 486, column: 18, scope: !1340)
!1740 = !DILocation(line: 486, column: 5, scope: !1340)
!1741 = !DILocation(line: 486, column: 36, scope: !1340)
!1742 = !DILocation(line: 486, column: 60, scope: !1340)
!1743 = !DILocation(line: 487, column: 15, scope: !1340)
!1744 = !DILocation(line: 487, column: 6, scope: !1340)
!1745 = !DILocation(line: 487, column: 13, scope: !1340)
!1746 = !DILocation(line: 487, column: 5, scope: !1340)
!1747 = !DILabel(scope: !1340, name: "err", file: !65, line: 489, column: 1)
!1748 = !DILocation(line: 489, column: 1, scope: !1340)
!1749 = !DILocation(line: 490, column: 23, scope: !1340)
!1750 = !DILocation(line: 490, column: 5, scope: !1340)
!1751 = !DILocation(line: 491, column: 23, scope: !1340)
!1752 = !DILocation(line: 491, column: 5, scope: !1340)
!1753 = !DILocation(line: 492, column: 23, scope: !1340)
!1754 = !DILocation(line: 492, column: 5, scope: !1340)
!1755 = !DILocation(line: 493, column: 23, scope: !1340)
!1756 = !DILocation(line: 493, column: 5, scope: !1340)
!1757 = !DILocation(line: 494, column: 26, scope: !1340)
!1758 = !DILocation(line: 494, column: 23, scope: !1340)
!1759 = !DILocation(line: 494, column: 5, scope: !1340)
!1760 = !DILocation(line: 495, column: 5, scope: !1340)
!1761 = !DILocation(line: 496, column: 23, scope: !1340)
!1762 = !DILocation(line: 496, column: 5, scope: !1340)
!1763 = !DILocation(line: 497, column: 23, scope: !1340)
!1764 = !DILocation(line: 497, column: 5, scope: !1340)
!1765 = !DILocation(line: 498, column: 23, scope: !1340)
!1766 = !DILocation(line: 498, column: 5, scope: !1340)
!1767 = !DILocation(line: 499, column: 12, scope: !1340)
!1768 = !DILocation(line: 499, column: 5, scope: !1340)
!1769 = distinct !DISubprogram(name: "compute_M_and_VPV", scope: !654, file: !654, line: 244, type: !1770, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !68)
!1770 = !DISubroutineType(types: !1771)
!1771 = !{null, !376, !97, !657, !657, !52, !52}
!1772 = !DILocalVariable(name: "p", arg: 1, scope: !1769, file: !654, line: 244, type: !376)
!1773 = !DILocation(line: 244, column: 45, scope: !1769)
!1774 = !DILocalVariable(name: "Vdec", arg: 2, scope: !1769, file: !654, line: 244, type: !97)
!1775 = !DILocation(line: 244, column: 69, scope: !1769)
!1776 = !DILocalVariable(name: "L", arg: 3, scope: !1769, file: !654, line: 244, type: !657)
!1777 = !DILocation(line: 244, column: 91, scope: !1769)
!1778 = !DILocalVariable(name: "P1", arg: 4, scope: !1769, file: !654, line: 244, type: !657)
!1779 = !DILocation(line: 244, column: 110, scope: !1769)
!1780 = !DILocalVariable(name: "VL", arg: 5, scope: !1769, file: !654, line: 244, type: !52)
!1781 = !DILocation(line: 244, column: 124, scope: !1769)
!1782 = !DILocalVariable(name: "VP1V", arg: 6, scope: !1769, file: !654, line: 244, type: !52)
!1783 = !DILocation(line: 244, column: 138, scope: !1769)
!1784 = !DILocalVariable(name: "param_k", scope: !1769, file: !654, line: 246, type: !457)
!1785 = !DILocation(line: 246, column: 15, scope: !1769)
!1786 = !DILocation(line: 246, column: 33, scope: !1769)
!1787 = !DILocation(line: 246, column: 25, scope: !1769)
!1788 = !DILocalVariable(name: "param_v", scope: !1769, file: !654, line: 247, type: !457)
!1789 = !DILocation(line: 247, column: 15, scope: !1769)
!1790 = !DILocation(line: 247, column: 33, scope: !1769)
!1791 = !DILocation(line: 247, column: 25, scope: !1769)
!1792 = !DILocalVariable(name: "param_o", scope: !1769, file: !654, line: 248, type: !457)
!1793 = !DILocation(line: 248, column: 15, scope: !1769)
!1794 = !DILocation(line: 248, column: 33, scope: !1769)
!1795 = !DILocation(line: 248, column: 25, scope: !1769)
!1796 = !DILocation(line: 251, column: 43, scope: !1769)
!1797 = !DILocation(line: 251, column: 25, scope: !1769)
!1798 = !DILocation(line: 251, column: 47, scope: !1769)
!1799 = !DILocation(line: 251, column: 53, scope: !1769)
!1800 = !DILocation(line: 251, column: 56, scope: !1769)
!1801 = !DILocation(line: 251, column: 60, scope: !1769)
!1802 = !DILocation(line: 251, column: 69, scope: !1769)
!1803 = !DILocation(line: 251, column: 78, scope: !1769)
!1804 = !DILocation(line: 251, column: 5, scope: !1769)
!1805 = !DILocalVariable(name: "Pv", scope: !1769, file: !654, line: 254, type: !1806)
!1806 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 981504, elements: !1807)
!1807 = !{!1808}
!1808 = !DISubrange(count: 15336)
!1809 = !DILocation(line: 254, column: 14, scope: !1769)
!1810 = !DILocation(line: 255, column: 17, scope: !1769)
!1811 = !DILocation(line: 255, column: 20, scope: !1769)
!1812 = !DILocation(line: 255, column: 24, scope: !1769)
!1813 = !DILocation(line: 255, column: 30, scope: !1769)
!1814 = !DILocation(line: 255, column: 5, scope: !1769)
!1815 = !DILocation(line: 256, column: 43, scope: !1769)
!1816 = !DILocation(line: 256, column: 25, scope: !1769)
!1817 = !DILocation(line: 256, column: 47, scope: !1769)
!1818 = !DILocation(line: 256, column: 53, scope: !1769)
!1819 = !DILocation(line: 256, column: 57, scope: !1769)
!1820 = !DILocation(line: 256, column: 63, scope: !1769)
!1821 = !DILocation(line: 256, column: 72, scope: !1769)
!1822 = !DILocation(line: 256, column: 81, scope: !1769)
!1823 = !DILocation(line: 256, column: 5, scope: !1769)
!1824 = !DILocation(line: 257, column: 1, scope: !1769)
!1825 = distinct !DISubprogram(name: "compute_rhs", scope: !65, file: !65, line: 43, type: !1826, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !68)
!1826 = !DISubroutineType(types: !1827)
!1827 = !{null, !376, !52, !97, !60}
!1828 = !DILocalVariable(name: "p", arg: 1, scope: !1825, file: !65, line: 43, type: !376)
!1829 = !DILocation(line: 43, column: 46, scope: !1825)
!1830 = !DILocalVariable(name: "vPv", arg: 2, scope: !1825, file: !65, line: 43, type: !52)
!1831 = !DILocation(line: 43, column: 59, scope: !1825)
!1832 = !DILocalVariable(name: "t", arg: 3, scope: !1825, file: !65, line: 43, type: !97)
!1833 = !DILocation(line: 43, column: 85, scope: !1825)
!1834 = !DILocalVariable(name: "y", arg: 4, scope: !1825, file: !65, line: 43, type: !60)
!1835 = !DILocation(line: 43, column: 103, scope: !1825)
!1836 = !DILocalVariable(name: "top_pos", scope: !1825, file: !65, line: 48, type: !1837)
!1837 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!1838 = !DILocation(line: 48, column: 18, scope: !1825)
!1839 = !DILocation(line: 48, column: 38, scope: !1825)
!1840 = !DILocation(line: 48, column: 30, scope: !1825)
!1841 = !DILocation(line: 48, column: 41, scope: !1825)
!1842 = !DILocation(line: 48, column: 46, scope: !1825)
!1843 = !DILocation(line: 48, column: 52, scope: !1825)
!1844 = !DILocation(line: 48, column: 28, scope: !1825)
!1845 = !DILocalVariable(name: "m_vec_limbs", scope: !1825, file: !65, line: 49, type: !1837)
!1846 = !DILocation(line: 49, column: 18, scope: !1825)
!1847 = !DILocation(line: 49, column: 50, scope: !1825)
!1848 = !DILocation(line: 49, column: 32, scope: !1825)
!1849 = !DILocation(line: 52, column: 16, scope: !1850)
!1850 = distinct !DILexicalBlock(scope: !1825, file: !65, line: 52, column: 8)
!1851 = !DILocation(line: 52, column: 8, scope: !1850)
!1852 = !DILocation(line: 52, column: 19, scope: !1850)
!1853 = !DILocation(line: 52, column: 24, scope: !1850)
!1854 = !DILocalVariable(name: "mask", scope: !1855, file: !65, line: 53, type: !53)
!1855 = distinct !DILexicalBlock(scope: !1850, file: !65, line: 52, column: 29)
!1856 = !DILocation(line: 53, column: 18, scope: !1855)
!1857 = !DILocation(line: 54, column: 28, scope: !1855)
!1858 = !DILocation(line: 54, column: 20, scope: !1855)
!1859 = !DILocation(line: 54, column: 31, scope: !1855)
!1860 = !DILocation(line: 54, column: 36, scope: !1855)
!1861 = !DILocation(line: 54, column: 14, scope: !1855)
!1862 = !DILocation(line: 55, column: 14, scope: !1855)
!1863 = !DILocalVariable(name: "i", scope: !1864, file: !65, line: 56, type: !82)
!1864 = distinct !DILexicalBlock(scope: !1855, file: !65, line: 56, column: 9)
!1865 = !DILocation(line: 56, column: 18, scope: !1864)
!1866 = !DILocation(line: 56, column: 14, scope: !1864)
!1867 = !DILocation(line: 56, column: 25, scope: !1868)
!1868 = distinct !DILexicalBlock(scope: !1864, file: !65, line: 56, column: 9)
!1869 = !DILocation(line: 56, column: 37, scope: !1868)
!1870 = !DILocation(line: 56, column: 29, scope: !1868)
!1871 = !DILocation(line: 56, column: 48, scope: !1868)
!1872 = !DILocation(line: 56, column: 40, scope: !1868)
!1873 = !DILocation(line: 56, column: 39, scope: !1868)
!1874 = !DILocation(line: 56, column: 27, scope: !1868)
!1875 = !DILocation(line: 56, column: 9, scope: !1864)
!1876 = !DILocation(line: 58, column: 53, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !1868, file: !65, line: 57, column: 9)
!1878 = !DILocation(line: 58, column: 13, scope: !1877)
!1879 = !DILocation(line: 58, column: 17, scope: !1877)
!1880 = !DILocation(line: 58, column: 19, scope: !1877)
!1881 = !DILocation(line: 58, column: 18, scope: !1877)
!1882 = !DILocation(line: 58, column: 33, scope: !1877)
!1883 = !DILocation(line: 58, column: 31, scope: !1877)
!1884 = !DILocation(line: 58, column: 45, scope: !1877)
!1885 = !DILocation(line: 58, column: 50, scope: !1877)
!1886 = !DILocation(line: 59, column: 9, scope: !1877)
!1887 = !DILocation(line: 56, column: 53, scope: !1868)
!1888 = !DILocation(line: 56, column: 9, scope: !1868)
!1889 = distinct !{!1889, !1875, !1890, !143}
!1890 = !DILocation(line: 59, column: 9, scope: !1864)
!1891 = !DILocation(line: 60, column: 5, scope: !1855)
!1892 = !DILocalVariable(name: "temp", scope: !1825, file: !65, line: 62, type: !1088)
!1893 = !DILocation(line: 62, column: 14, scope: !1825)
!1894 = !DILocalVariable(name: "temp_bytes", scope: !1825, file: !65, line: 63, type: !60)
!1895 = !DILocation(line: 63, column: 20, scope: !1825)
!1896 = !DILocation(line: 63, column: 51, scope: !1825)
!1897 = !DILocalVariable(name: "i", scope: !1898, file: !65, line: 64, type: !82)
!1898 = distinct !DILexicalBlock(scope: !1825, file: !65, line: 64, column: 5)
!1899 = !DILocation(line: 64, column: 14, scope: !1898)
!1900 = !DILocation(line: 64, column: 26, scope: !1898)
!1901 = !DILocation(line: 64, column: 18, scope: !1898)
!1902 = !DILocation(line: 64, column: 29, scope: !1898)
!1903 = !DILocation(line: 64, column: 10, scope: !1898)
!1904 = !DILocation(line: 64, column: 34, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1898, file: !65, line: 64, column: 5)
!1906 = !DILocation(line: 64, column: 36, scope: !1905)
!1907 = !DILocation(line: 64, column: 5, scope: !1898)
!1908 = !DILocalVariable(name: "j", scope: !1909, file: !65, line: 65, type: !82)
!1909 = distinct !DILexicalBlock(scope: !1910, file: !65, line: 65, column: 9)
!1910 = distinct !DILexicalBlock(scope: !1905, file: !65, line: 64, column: 48)
!1911 = !DILocation(line: 65, column: 18, scope: !1909)
!1912 = !DILocation(line: 65, column: 22, scope: !1909)
!1913 = !DILocation(line: 65, column: 14, scope: !1909)
!1914 = !DILocation(line: 65, column: 25, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1909, file: !65, line: 65, column: 9)
!1916 = !DILocation(line: 65, column: 37, scope: !1915)
!1917 = !DILocation(line: 65, column: 29, scope: !1915)
!1918 = !DILocation(line: 65, column: 27, scope: !1915)
!1919 = !DILocation(line: 65, column: 9, scope: !1909)
!1920 = !DILocalVariable(name: "top", scope: !1921, file: !65, line: 67, type: !51)
!1921 = distinct !DILexicalBlock(scope: !1915, file: !65, line: 65, column: 46)
!1922 = !DILocation(line: 67, column: 27, scope: !1921)
!1923 = !DILocation(line: 67, column: 39, scope: !1921)
!1924 = !DILocation(line: 67, column: 50, scope: !1921)
!1925 = !DILocation(line: 67, column: 34, scope: !1921)
!1926 = !DILocation(line: 67, column: 57, scope: !1921)
!1927 = !DILocation(line: 67, column: 54, scope: !1921)
!1928 = !DILocation(line: 67, column: 66, scope: !1921)
!1929 = !DILocation(line: 67, column: 33, scope: !1921)
!1930 = !DILocation(line: 68, column: 18, scope: !1921)
!1931 = !DILocation(line: 68, column: 29, scope: !1921)
!1932 = !DILocation(line: 68, column: 13, scope: !1921)
!1933 = !DILocation(line: 68, column: 33, scope: !1921)
!1934 = !DILocalVariable(name: "k", scope: !1935, file: !65, line: 69, type: !82)
!1935 = distinct !DILexicalBlock(scope: !1921, file: !65, line: 69, column: 13)
!1936 = !DILocation(line: 69, column: 21, scope: !1935)
!1937 = !DILocation(line: 69, column: 25, scope: !1935)
!1938 = !DILocation(line: 69, column: 37, scope: !1935)
!1939 = !DILocation(line: 69, column: 17, scope: !1935)
!1940 = !DILocation(line: 69, column: 42, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1935, file: !65, line: 69, column: 13)
!1942 = !DILocation(line: 69, column: 43, scope: !1941)
!1943 = !DILocation(line: 69, column: 13, scope: !1935)
!1944 = !DILocation(line: 70, column: 35, scope: !1945)
!1945 = distinct !DILexicalBlock(scope: !1941, file: !65, line: 69, column: 52)
!1946 = !DILocation(line: 70, column: 30, scope: !1945)
!1947 = !DILocation(line: 70, column: 38, scope: !1945)
!1948 = !DILocation(line: 70, column: 22, scope: !1945)
!1949 = !DILocation(line: 70, column: 23, scope: !1945)
!1950 = !DILocation(line: 70, column: 17, scope: !1945)
!1951 = !DILocation(line: 70, column: 27, scope: !1945)
!1952 = !DILocation(line: 71, column: 22, scope: !1945)
!1953 = !DILocation(line: 71, column: 17, scope: !1945)
!1954 = !DILocation(line: 71, column: 25, scope: !1945)
!1955 = !DILocation(line: 72, column: 13, scope: !1945)
!1956 = !DILocation(line: 69, column: 49, scope: !1941)
!1957 = !DILocation(line: 69, column: 13, scope: !1941)
!1958 = distinct !{!1958, !1943, !1959, !143}
!1959 = !DILocation(line: 72, column: 13, scope: !1935)
!1960 = !DILocalVariable(name: "jj", scope: !1961, file: !65, line: 74, type: !82)
!1961 = distinct !DILexicalBlock(scope: !1921, file: !65, line: 74, column: 13)
!1962 = !DILocation(line: 74, column: 22, scope: !1961)
!1963 = !DILocation(line: 74, column: 18, scope: !1961)
!1964 = !DILocation(line: 74, column: 30, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1961, file: !65, line: 74, column: 13)
!1966 = !DILocation(line: 74, column: 33, scope: !1965)
!1967 = !DILocation(line: 74, column: 13, scope: !1961)
!1968 = !DILocation(line: 75, column: 20, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !1970, file: !65, line: 75, column: 20)
!1970 = distinct !DILexicalBlock(scope: !1965, file: !65, line: 74, column: 53)
!1971 = !DILocation(line: 75, column: 22, scope: !1969)
!1972 = !DILocation(line: 75, column: 25, scope: !1969)
!1973 = !DILocation(line: 79, column: 47, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !1969, file: !65, line: 75, column: 30)
!1975 = !DILocation(line: 79, column: 65, scope: !1974)
!1976 = !DILocation(line: 79, column: 52, scope: !1974)
!1977 = !DILocation(line: 79, column: 68, scope: !1974)
!1978 = !DILocation(line: 79, column: 41, scope: !1974)
!1979 = !DILocation(line: 79, column: 21, scope: !1974)
!1980 = !DILocation(line: 79, column: 32, scope: !1974)
!1981 = !DILocation(line: 79, column: 34, scope: !1974)
!1982 = !DILocation(line: 79, column: 38, scope: !1974)
!1983 = !DILocation(line: 81, column: 17, scope: !1974)
!1984 = !DILocation(line: 86, column: 47, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1969, file: !65, line: 82, column: 22)
!1986 = !DILocation(line: 86, column: 65, scope: !1985)
!1987 = !DILocation(line: 86, column: 52, scope: !1985)
!1988 = !DILocation(line: 86, column: 68, scope: !1985)
!1989 = !DILocation(line: 86, column: 41, scope: !1985)
!1990 = !DILocation(line: 86, column: 73, scope: !1985)
!1991 = !DILocation(line: 86, column: 21, scope: !1985)
!1992 = !DILocation(line: 86, column: 32, scope: !1985)
!1993 = !DILocation(line: 86, column: 34, scope: !1985)
!1994 = !DILocation(line: 86, column: 38, scope: !1985)
!1995 = !DILocation(line: 89, column: 13, scope: !1970)
!1996 = !DILocation(line: 74, column: 49, scope: !1965)
!1997 = !DILocation(line: 74, column: 13, scope: !1965)
!1998 = distinct !{!1998, !1967, !1999, !143}
!1999 = !DILocation(line: 89, column: 13, scope: !1961)
!2000 = !DILocalVariable(name: "k", scope: !2001, file: !65, line: 92, type: !58)
!2001 = distinct !DILexicalBlock(scope: !1921, file: !65, line: 92, column: 13)
!2002 = !DILocation(line: 92, column: 24, scope: !2001)
!2003 = !DILocation(line: 92, column: 17, scope: !2001)
!2004 = !DILocation(line: 92, column: 29, scope: !2005)
!2005 = distinct !DILexicalBlock(scope: !2001, file: !65, line: 92, column: 13)
!2006 = !DILocation(line: 92, column: 33, scope: !2005)
!2007 = !DILocation(line: 92, column: 31, scope: !2005)
!2008 = !DILocation(line: 92, column: 13, scope: !2001)
!2009 = !DILocation(line: 93, column: 28, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !2005, file: !65, line: 92, column: 51)
!2011 = !DILocation(line: 93, column: 34, scope: !2010)
!2012 = !DILocation(line: 93, column: 46, scope: !2010)
!2013 = !DILocation(line: 93, column: 38, scope: !2010)
!2014 = !DILocation(line: 93, column: 36, scope: !2010)
!2015 = !DILocation(line: 93, column: 51, scope: !2010)
!2016 = !DILocation(line: 93, column: 49, scope: !2010)
!2017 = !DILocation(line: 93, column: 32, scope: !2010)
!2018 = !DILocation(line: 93, column: 56, scope: !2010)
!2019 = !DILocation(line: 93, column: 54, scope: !2010)
!2020 = !DILocation(line: 93, column: 70, scope: !2010)
!2021 = !DILocation(line: 93, column: 68, scope: !2010)
!2022 = !DILocation(line: 93, column: 77, scope: !2010)
!2023 = !DILocation(line: 93, column: 80, scope: !2010)
!2024 = !DILocation(line: 93, column: 78, scope: !2010)
!2025 = !DILocation(line: 93, column: 76, scope: !2010)
!2026 = !DILocation(line: 93, column: 83, scope: !2010)
!2027 = !DILocation(line: 93, column: 89, scope: !2010)
!2028 = !DILocation(line: 93, column: 101, scope: !2010)
!2029 = !DILocation(line: 93, column: 93, scope: !2010)
!2030 = !DILocation(line: 93, column: 91, scope: !2010)
!2031 = !DILocation(line: 93, column: 106, scope: !2010)
!2032 = !DILocation(line: 93, column: 104, scope: !2010)
!2033 = !DILocation(line: 93, column: 87, scope: !2010)
!2034 = !DILocation(line: 93, column: 111, scope: !2010)
!2035 = !DILocation(line: 93, column: 109, scope: !2010)
!2036 = !DILocation(line: 93, column: 125, scope: !2010)
!2037 = !DILocation(line: 93, column: 123, scope: !2010)
!2038 = !DILocation(line: 93, column: 82, scope: !2010)
!2039 = !DILocation(line: 93, column: 73, scope: !2010)
!2040 = !DILocation(line: 93, column: 22, scope: !2010)
!2041 = !DILocation(line: 93, column: 17, scope: !2010)
!2042 = !DILocation(line: 93, column: 25, scope: !2010)
!2043 = !DILocation(line: 94, column: 13, scope: !2010)
!2044 = !DILocation(line: 92, column: 48, scope: !2005)
!2045 = !DILocation(line: 92, column: 13, scope: !2005)
!2046 = distinct !{!2046, !2008, !2047, !143}
!2047 = !DILocation(line: 94, column: 13, scope: !2001)
!2048 = !DILocation(line: 95, column: 9, scope: !1921)
!2049 = !DILocation(line: 65, column: 42, scope: !1915)
!2050 = !DILocation(line: 65, column: 9, scope: !1915)
!2051 = distinct !{!2051, !1919, !2052, !143}
!2052 = !DILocation(line: 95, column: 9, scope: !1909)
!2053 = !DILocation(line: 96, column: 5, scope: !1910)
!2054 = !DILocation(line: 64, column: 44, scope: !1905)
!2055 = !DILocation(line: 64, column: 5, scope: !1905)
!2056 = distinct !{!2056, !1907, !2057, !143}
!2057 = !DILocation(line: 96, column: 5, scope: !1898)
!2058 = !DILocalVariable(name: "i", scope: !2059, file: !65, line: 99, type: !82)
!2059 = distinct !DILexicalBlock(scope: !1825, file: !65, line: 99, column: 5)
!2060 = !DILocation(line: 99, column: 14, scope: !2059)
!2061 = !DILocation(line: 99, column: 10, scope: !2059)
!2062 = !DILocation(line: 99, column: 21, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !2059, file: !65, line: 99, column: 5)
!2064 = !DILocation(line: 99, column: 33, scope: !2063)
!2065 = !DILocation(line: 99, column: 25, scope: !2063)
!2066 = !DILocation(line: 99, column: 23, scope: !2063)
!2067 = !DILocation(line: 99, column: 5, scope: !2059)
!2068 = !DILocation(line: 105, column: 18, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2063, file: !65, line: 100, column: 5)
!2070 = !DILocation(line: 105, column: 20, scope: !2069)
!2071 = !DILocation(line: 105, column: 28, scope: !2069)
!2072 = !DILocation(line: 105, column: 39, scope: !2069)
!2073 = !DILocation(line: 105, column: 40, scope: !2069)
!2074 = !DILocation(line: 105, column: 44, scope: !2069)
!2075 = !DILocation(line: 105, column: 25, scope: !2069)
!2076 = !DILocation(line: 105, column: 9, scope: !2069)
!2077 = !DILocation(line: 105, column: 11, scope: !2069)
!2078 = !DILocation(line: 105, column: 16, scope: !2069)
!2079 = !DILocation(line: 106, column: 18, scope: !2069)
!2080 = !DILocation(line: 106, column: 20, scope: !2069)
!2081 = !DILocation(line: 106, column: 21, scope: !2069)
!2082 = !DILocation(line: 106, column: 28, scope: !2069)
!2083 = !DILocation(line: 106, column: 39, scope: !2069)
!2084 = !DILocation(line: 106, column: 40, scope: !2069)
!2085 = !DILocation(line: 106, column: 44, scope: !2069)
!2086 = !DILocation(line: 106, column: 25, scope: !2069)
!2087 = !DILocation(line: 106, column: 9, scope: !2069)
!2088 = !DILocation(line: 106, column: 11, scope: !2069)
!2089 = !DILocation(line: 106, column: 12, scope: !2069)
!2090 = !DILocation(line: 106, column: 16, scope: !2069)
!2091 = !DILocation(line: 108, column: 5, scope: !2069)
!2092 = !DILocation(line: 99, column: 38, scope: !2063)
!2093 = !DILocation(line: 99, column: 5, scope: !2063)
!2094 = distinct !{!2094, !2067, !2095, !143}
!2095 = !DILocation(line: 108, column: 5, scope: !2059)
!2096 = !DILocation(line: 109, column: 1, scope: !1825)
!2097 = distinct !DISubprogram(name: "compute_A", scope: !65, file: !65, line: 154, type: !2098, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !68)
!2098 = !DISubroutineType(types: !2099)
!2099 = !{null, !376, !52, !60}
!2100 = !DILocalVariable(name: "p", arg: 1, scope: !2097, file: !65, line: 154, type: !376)
!2101 = !DILocation(line: 154, column: 44, scope: !2097)
!2102 = !DILocalVariable(name: "VtL", arg: 2, scope: !2097, file: !65, line: 154, type: !52)
!2103 = !DILocation(line: 154, column: 57, scope: !2097)
!2104 = !DILocalVariable(name: "A_out", arg: 3, scope: !2097, file: !65, line: 154, type: !60)
!2105 = !DILocation(line: 154, column: 77, scope: !2097)
!2106 = !DILocalVariable(name: "bits_to_shift", scope: !2097, file: !65, line: 159, type: !82)
!2107 = !DILocation(line: 159, column: 9, scope: !2097)
!2108 = !DILocalVariable(name: "words_to_shift", scope: !2097, file: !65, line: 160, type: !82)
!2109 = !DILocation(line: 160, column: 9, scope: !2097)
!2110 = !DILocalVariable(name: "m_vec_limbs", scope: !2097, file: !65, line: 161, type: !457)
!2111 = !DILocation(line: 161, column: 15, scope: !2097)
!2112 = !DILocation(line: 161, column: 47, scope: !2097)
!2113 = !DILocation(line: 161, column: 29, scope: !2097)
!2114 = !DILocalVariable(name: "A", scope: !2097, file: !65, line: 162, type: !2115)
!2115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 239616, elements: !2116)
!2116 = !{!2117}
!2117 = !DISubrange(count: 3744)
!2118 = !DILocation(line: 162, column: 14, scope: !2097)
!2119 = !DILocalVariable(name: "A_width", scope: !2097, file: !65, line: 163, type: !58)
!2120 = !DILocation(line: 163, column: 12, scope: !2097)
!2121 = !DILocation(line: 163, column: 32, scope: !2097)
!2122 = !DILocation(line: 163, column: 24, scope: !2097)
!2123 = !DILocation(line: 163, column: 43, scope: !2097)
!2124 = !DILocation(line: 163, column: 35, scope: !2097)
!2125 = !DILocation(line: 163, column: 34, scope: !2097)
!2126 = !DILocation(line: 163, column: 46, scope: !2097)
!2127 = !DILocation(line: 163, column: 51, scope: !2097)
!2128 = !DILocation(line: 163, column: 55, scope: !2097)
!2129 = !DILocation(line: 163, column: 22, scope: !2097)
!2130 = !DILocalVariable(name: "Mi", scope: !2097, file: !65, line: 164, type: !657)
!2131 = !DILocation(line: 164, column: 21, scope: !2097)
!2132 = !DILocalVariable(name: "Mj", scope: !2097, file: !65, line: 164, type: !657)
!2133 = !DILocation(line: 164, column: 26, scope: !2097)
!2134 = !DILocation(line: 167, column: 16, scope: !2135)
!2135 = distinct !DILexicalBlock(scope: !2097, file: !65, line: 167, column: 8)
!2136 = !DILocation(line: 167, column: 8, scope: !2135)
!2137 = !DILocation(line: 167, column: 19, scope: !2135)
!2138 = !DILocation(line: 167, column: 24, scope: !2135)
!2139 = !DILocalVariable(name: "mask", scope: !2140, file: !65, line: 168, type: !53)
!2140 = distinct !DILexicalBlock(scope: !2135, file: !65, line: 167, column: 29)
!2141 = !DILocation(line: 168, column: 18, scope: !2140)
!2142 = !DILocation(line: 169, column: 27, scope: !2140)
!2143 = !DILocation(line: 169, column: 19, scope: !2140)
!2144 = !DILocation(line: 169, column: 30, scope: !2140)
!2145 = !DILocation(line: 169, column: 35, scope: !2140)
!2146 = !DILocation(line: 169, column: 14, scope: !2140)
!2147 = !DILocation(line: 170, column: 14, scope: !2140)
!2148 = !DILocalVariable(name: "i", scope: !2149, file: !65, line: 171, type: !82)
!2149 = distinct !DILexicalBlock(scope: !2140, file: !65, line: 171, column: 9)
!2150 = !DILocation(line: 171, column: 18, scope: !2149)
!2151 = !DILocation(line: 171, column: 14, scope: !2149)
!2152 = !DILocation(line: 171, column: 25, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !2149, file: !65, line: 171, column: 9)
!2154 = !DILocation(line: 171, column: 37, scope: !2153)
!2155 = !DILocation(line: 171, column: 29, scope: !2153)
!2156 = !DILocation(line: 171, column: 48, scope: !2153)
!2157 = !DILocation(line: 171, column: 40, scope: !2153)
!2158 = !DILocation(line: 171, column: 39, scope: !2153)
!2159 = !DILocation(line: 171, column: 27, scope: !2153)
!2160 = !DILocation(line: 171, column: 9, scope: !2149)
!2161 = !DILocation(line: 173, column: 53, scope: !2162)
!2162 = distinct !DILexicalBlock(scope: !2153, file: !65, line: 172, column: 9)
!2163 = !DILocation(line: 173, column: 13, scope: !2162)
!2164 = !DILocation(line: 173, column: 17, scope: !2162)
!2165 = !DILocation(line: 173, column: 19, scope: !2162)
!2166 = !DILocation(line: 173, column: 18, scope: !2162)
!2167 = !DILocation(line: 173, column: 33, scope: !2162)
!2168 = !DILocation(line: 173, column: 31, scope: !2162)
!2169 = !DILocation(line: 173, column: 45, scope: !2162)
!2170 = !DILocation(line: 173, column: 50, scope: !2162)
!2171 = !DILocation(line: 174, column: 9, scope: !2162)
!2172 = !DILocation(line: 171, column: 53, scope: !2153)
!2173 = !DILocation(line: 171, column: 9, scope: !2153)
!2174 = distinct !{!2174, !2160, !2175, !143}
!2175 = !DILocation(line: 174, column: 9, scope: !2149)
!2176 = !DILocation(line: 175, column: 5, scope: !2140)
!2177 = !DILocalVariable(name: "i", scope: !2178, file: !65, line: 177, type: !82)
!2178 = distinct !DILexicalBlock(scope: !2097, file: !65, line: 177, column: 5)
!2179 = !DILocation(line: 177, column: 14, scope: !2178)
!2180 = !DILocation(line: 177, column: 10, scope: !2178)
!2181 = !DILocation(line: 177, column: 21, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !2178, file: !65, line: 177, column: 5)
!2183 = !DILocation(line: 177, column: 34, scope: !2182)
!2184 = !DILocation(line: 177, column: 26, scope: !2182)
!2185 = !DILocation(line: 177, column: 37, scope: !2182)
!2186 = !DILocation(line: 177, column: 23, scope: !2182)
!2187 = !DILocation(line: 177, column: 5, scope: !2178)
!2188 = !DILocalVariable(name: "j", scope: !2189, file: !65, line: 178, type: !82)
!2189 = distinct !DILexicalBlock(scope: !2190, file: !65, line: 178, column: 9)
!2190 = distinct !DILexicalBlock(scope: !2182, file: !65, line: 177, column: 47)
!2191 = !DILocation(line: 178, column: 18, scope: !2189)
!2192 = !DILocation(line: 178, column: 30, scope: !2189)
!2193 = !DILocation(line: 178, column: 22, scope: !2189)
!2194 = !DILocation(line: 178, column: 33, scope: !2189)
!2195 = !DILocation(line: 178, column: 14, scope: !2189)
!2196 = !DILocation(line: 178, column: 38, scope: !2197)
!2197 = distinct !DILexicalBlock(scope: !2189, file: !65, line: 178, column: 9)
!2198 = !DILocation(line: 178, column: 43, scope: !2197)
!2199 = !DILocation(line: 178, column: 40, scope: !2197)
!2200 = !DILocation(line: 178, column: 9, scope: !2189)
!2201 = !DILocation(line: 180, column: 18, scope: !2202)
!2202 = distinct !DILexicalBlock(scope: !2197, file: !65, line: 178, column: 51)
!2203 = !DILocation(line: 180, column: 24, scope: !2202)
!2204 = !DILocation(line: 180, column: 28, scope: !2202)
!2205 = !DILocation(line: 180, column: 26, scope: !2202)
!2206 = !DILocation(line: 180, column: 50, scope: !2202)
!2207 = !DILocation(line: 180, column: 42, scope: !2202)
!2208 = !DILocation(line: 180, column: 40, scope: !2202)
!2209 = !DILocation(line: 180, column: 22, scope: !2202)
!2210 = !DILocation(line: 180, column: 16, scope: !2202)
!2211 = !DILocalVariable(name: "c", scope: !2212, file: !65, line: 181, type: !82)
!2212 = distinct !DILexicalBlock(scope: !2202, file: !65, line: 181, column: 13)
!2213 = !DILocation(line: 181, column: 22, scope: !2212)
!2214 = !DILocation(line: 181, column: 18, scope: !2212)
!2215 = !DILocation(line: 181, column: 29, scope: !2216)
!2216 = distinct !DILexicalBlock(scope: !2212, file: !65, line: 181, column: 13)
!2217 = !DILocation(line: 181, column: 41, scope: !2216)
!2218 = !DILocation(line: 181, column: 33, scope: !2216)
!2219 = !DILocation(line: 181, column: 31, scope: !2216)
!2220 = !DILocation(line: 181, column: 13, scope: !2212)
!2221 = !DILocalVariable(name: "k", scope: !2222, file: !65, line: 182, type: !82)
!2222 = distinct !DILexicalBlock(scope: !2223, file: !65, line: 182, column: 17)
!2223 = distinct !DILexicalBlock(scope: !2216, file: !65, line: 181, column: 50)
!2224 = !DILocation(line: 182, column: 26, scope: !2222)
!2225 = !DILocation(line: 182, column: 22, scope: !2222)
!2226 = !DILocation(line: 182, column: 33, scope: !2227)
!2227 = distinct !DILexicalBlock(scope: !2222, file: !65, line: 182, column: 17)
!2228 = !DILocation(line: 182, column: 37, scope: !2227)
!2229 = !DILocation(line: 182, column: 35, scope: !2227)
!2230 = !DILocation(line: 182, column: 17, scope: !2222)
!2231 = !DILocation(line: 184, column: 78, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !2227, file: !65, line: 183, column: 17)
!2233 = !DILocation(line: 184, column: 81, scope: !2232)
!2234 = !DILocation(line: 184, column: 85, scope: !2232)
!2235 = !DILocation(line: 184, column: 87, scope: !2232)
!2236 = !DILocation(line: 184, column: 86, scope: !2232)
!2237 = !DILocation(line: 184, column: 83, scope: !2232)
!2238 = !DILocation(line: 184, column: 103, scope: !2232)
!2239 = !DILocation(line: 184, column: 100, scope: !2232)
!2240 = !DILocation(line: 184, column: 32, scope: !2232)
!2241 = !DILocation(line: 184, column: 24, scope: !2232)
!2242 = !DILocation(line: 184, column: 37, scope: !2232)
!2243 = !DILocation(line: 184, column: 35, scope: !2232)
!2244 = !DILocation(line: 184, column: 41, scope: !2232)
!2245 = !DILocation(line: 184, column: 39, scope: !2232)
!2246 = !DILocation(line: 184, column: 46, scope: !2232)
!2247 = !DILocation(line: 184, column: 50, scope: !2232)
!2248 = !DILocation(line: 184, column: 48, scope: !2232)
!2249 = !DILocation(line: 184, column: 45, scope: !2232)
!2250 = !DILocation(line: 184, column: 66, scope: !2232)
!2251 = !DILocation(line: 184, column: 65, scope: !2232)
!2252 = !DILocation(line: 184, column: 43, scope: !2232)
!2253 = !DILocation(line: 184, column: 21, scope: !2232)
!2254 = !DILocation(line: 184, column: 75, scope: !2232)
!2255 = !DILocation(line: 185, column: 24, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !2232, file: !65, line: 185, column: 24)
!2257 = !DILocation(line: 185, column: 38, scope: !2256)
!2258 = !DILocation(line: 186, column: 86, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !2256, file: !65, line: 185, column: 42)
!2260 = !DILocation(line: 186, column: 89, scope: !2259)
!2261 = !DILocation(line: 186, column: 93, scope: !2259)
!2262 = !DILocation(line: 186, column: 95, scope: !2259)
!2263 = !DILocation(line: 186, column: 94, scope: !2259)
!2264 = !DILocation(line: 186, column: 91, scope: !2259)
!2265 = !DILocation(line: 186, column: 115, scope: !2259)
!2266 = !DILocation(line: 186, column: 114, scope: !2259)
!2267 = !DILocation(line: 186, column: 108, scope: !2259)
!2268 = !DILocation(line: 186, column: 36, scope: !2259)
!2269 = !DILocation(line: 186, column: 28, scope: !2259)
!2270 = !DILocation(line: 186, column: 41, scope: !2259)
!2271 = !DILocation(line: 186, column: 39, scope: !2259)
!2272 = !DILocation(line: 186, column: 45, scope: !2259)
!2273 = !DILocation(line: 186, column: 43, scope: !2259)
!2274 = !DILocation(line: 186, column: 50, scope: !2259)
!2275 = !DILocation(line: 186, column: 54, scope: !2259)
!2276 = !DILocation(line: 186, column: 52, scope: !2259)
!2277 = !DILocation(line: 186, column: 69, scope: !2259)
!2278 = !DILocation(line: 186, column: 49, scope: !2259)
!2279 = !DILocation(line: 186, column: 74, scope: !2259)
!2280 = !DILocation(line: 186, column: 73, scope: !2259)
!2281 = !DILocation(line: 186, column: 47, scope: !2259)
!2282 = !DILocation(line: 186, column: 25, scope: !2259)
!2283 = !DILocation(line: 186, column: 83, scope: !2259)
!2284 = !DILocation(line: 187, column: 21, scope: !2259)
!2285 = !DILocation(line: 188, column: 17, scope: !2232)
!2286 = !DILocation(line: 182, column: 51, scope: !2227)
!2287 = !DILocation(line: 182, column: 17, scope: !2227)
!2288 = distinct !{!2288, !2230, !2289, !143}
!2289 = !DILocation(line: 188, column: 17, scope: !2222)
!2290 = !DILocation(line: 189, column: 13, scope: !2223)
!2291 = !DILocation(line: 181, column: 46, scope: !2216)
!2292 = !DILocation(line: 181, column: 13, scope: !2216)
!2293 = distinct !{!2293, !2220, !2294, !143}
!2294 = !DILocation(line: 189, column: 13, scope: !2212)
!2295 = !DILocation(line: 191, column: 17, scope: !2296)
!2296 = distinct !DILexicalBlock(scope: !2202, file: !65, line: 191, column: 17)
!2297 = !DILocation(line: 191, column: 22, scope: !2296)
!2298 = !DILocation(line: 191, column: 19, scope: !2296)
!2299 = !DILocation(line: 192, column: 22, scope: !2300)
!2300 = distinct !DILexicalBlock(scope: !2296, file: !65, line: 191, column: 25)
!2301 = !DILocation(line: 192, column: 28, scope: !2300)
!2302 = !DILocation(line: 192, column: 32, scope: !2300)
!2303 = !DILocation(line: 192, column: 30, scope: !2300)
!2304 = !DILocation(line: 192, column: 54, scope: !2300)
!2305 = !DILocation(line: 192, column: 46, scope: !2300)
!2306 = !DILocation(line: 192, column: 44, scope: !2300)
!2307 = !DILocation(line: 192, column: 26, scope: !2300)
!2308 = !DILocation(line: 192, column: 20, scope: !2300)
!2309 = !DILocalVariable(name: "c", scope: !2310, file: !65, line: 193, type: !82)
!2310 = distinct !DILexicalBlock(scope: !2300, file: !65, line: 193, column: 17)
!2311 = !DILocation(line: 193, column: 26, scope: !2310)
!2312 = !DILocation(line: 193, column: 22, scope: !2310)
!2313 = !DILocation(line: 193, column: 33, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !2310, file: !65, line: 193, column: 17)
!2315 = !DILocation(line: 193, column: 45, scope: !2314)
!2316 = !DILocation(line: 193, column: 37, scope: !2314)
!2317 = !DILocation(line: 193, column: 35, scope: !2314)
!2318 = !DILocation(line: 193, column: 17, scope: !2310)
!2319 = !DILocalVariable(name: "k", scope: !2320, file: !65, line: 194, type: !82)
!2320 = distinct !DILexicalBlock(scope: !2321, file: !65, line: 194, column: 21)
!2321 = distinct !DILexicalBlock(scope: !2314, file: !65, line: 193, column: 54)
!2322 = !DILocation(line: 194, column: 30, scope: !2320)
!2323 = !DILocation(line: 194, column: 26, scope: !2320)
!2324 = !DILocation(line: 194, column: 37, scope: !2325)
!2325 = distinct !DILexicalBlock(scope: !2320, file: !65, line: 194, column: 21)
!2326 = !DILocation(line: 194, column: 41, scope: !2325)
!2327 = !DILocation(line: 194, column: 39, scope: !2325)
!2328 = !DILocation(line: 194, column: 21, scope: !2320)
!2329 = !DILocation(line: 196, column: 81, scope: !2330)
!2330 = distinct !DILexicalBlock(scope: !2325, file: !65, line: 195, column: 21)
!2331 = !DILocation(line: 196, column: 84, scope: !2330)
!2332 = !DILocation(line: 196, column: 88, scope: !2330)
!2333 = !DILocation(line: 196, column: 90, scope: !2330)
!2334 = !DILocation(line: 196, column: 89, scope: !2330)
!2335 = !DILocation(line: 196, column: 86, scope: !2330)
!2336 = !DILocation(line: 196, column: 106, scope: !2330)
!2337 = !DILocation(line: 196, column: 103, scope: !2330)
!2338 = !DILocation(line: 196, column: 35, scope: !2330)
!2339 = !DILocation(line: 196, column: 27, scope: !2330)
!2340 = !DILocation(line: 196, column: 40, scope: !2330)
!2341 = !DILocation(line: 196, column: 38, scope: !2330)
!2342 = !DILocation(line: 196, column: 44, scope: !2330)
!2343 = !DILocation(line: 196, column: 42, scope: !2330)
!2344 = !DILocation(line: 196, column: 49, scope: !2330)
!2345 = !DILocation(line: 196, column: 53, scope: !2330)
!2346 = !DILocation(line: 196, column: 51, scope: !2330)
!2347 = !DILocation(line: 196, column: 48, scope: !2330)
!2348 = !DILocation(line: 196, column: 69, scope: !2330)
!2349 = !DILocation(line: 196, column: 68, scope: !2330)
!2350 = !DILocation(line: 196, column: 46, scope: !2330)
!2351 = !DILocation(line: 196, column: 25, scope: !2330)
!2352 = !DILocation(line: 196, column: 78, scope: !2330)
!2353 = !DILocation(line: 197, column: 28, scope: !2354)
!2354 = distinct !DILexicalBlock(scope: !2330, file: !65, line: 197, column: 28)
!2355 = !DILocation(line: 197, column: 42, scope: !2354)
!2356 = !DILocation(line: 198, column: 89, scope: !2357)
!2357 = distinct !DILexicalBlock(scope: !2354, file: !65, line: 197, column: 46)
!2358 = !DILocation(line: 198, column: 92, scope: !2357)
!2359 = !DILocation(line: 198, column: 96, scope: !2357)
!2360 = !DILocation(line: 198, column: 98, scope: !2357)
!2361 = !DILocation(line: 198, column: 97, scope: !2357)
!2362 = !DILocation(line: 198, column: 94, scope: !2357)
!2363 = !DILocation(line: 198, column: 118, scope: !2357)
!2364 = !DILocation(line: 198, column: 117, scope: !2357)
!2365 = !DILocation(line: 198, column: 111, scope: !2357)
!2366 = !DILocation(line: 198, column: 39, scope: !2357)
!2367 = !DILocation(line: 198, column: 31, scope: !2357)
!2368 = !DILocation(line: 198, column: 44, scope: !2357)
!2369 = !DILocation(line: 198, column: 42, scope: !2357)
!2370 = !DILocation(line: 198, column: 48, scope: !2357)
!2371 = !DILocation(line: 198, column: 46, scope: !2357)
!2372 = !DILocation(line: 198, column: 53, scope: !2357)
!2373 = !DILocation(line: 198, column: 57, scope: !2357)
!2374 = !DILocation(line: 198, column: 55, scope: !2357)
!2375 = !DILocation(line: 198, column: 72, scope: !2357)
!2376 = !DILocation(line: 198, column: 52, scope: !2357)
!2377 = !DILocation(line: 198, column: 77, scope: !2357)
!2378 = !DILocation(line: 198, column: 76, scope: !2357)
!2379 = !DILocation(line: 198, column: 50, scope: !2357)
!2380 = !DILocation(line: 198, column: 29, scope: !2357)
!2381 = !DILocation(line: 198, column: 86, scope: !2357)
!2382 = !DILocation(line: 199, column: 25, scope: !2357)
!2383 = !DILocation(line: 200, column: 21, scope: !2330)
!2384 = !DILocation(line: 194, column: 55, scope: !2325)
!2385 = !DILocation(line: 194, column: 21, scope: !2325)
!2386 = distinct !{!2386, !2328, !2387, !143}
!2387 = !DILocation(line: 200, column: 21, scope: !2320)
!2388 = !DILocation(line: 201, column: 17, scope: !2321)
!2389 = !DILocation(line: 193, column: 50, scope: !2314)
!2390 = !DILocation(line: 193, column: 17, scope: !2314)
!2391 = distinct !{!2391, !2318, !2392, !143}
!2392 = !DILocation(line: 201, column: 17, scope: !2310)
!2393 = !DILocation(line: 202, column: 13, scope: !2300)
!2394 = !DILocation(line: 204, column: 27, scope: !2202)
!2395 = !DILocation(line: 205, column: 16, scope: !2396)
!2396 = distinct !DILexicalBlock(scope: !2202, file: !65, line: 205, column: 16)
!2397 = !DILocation(line: 205, column: 30, scope: !2396)
!2398 = !DILocation(line: 206, column: 32, scope: !2399)
!2399 = distinct !DILexicalBlock(scope: !2396, file: !65, line: 205, column: 36)
!2400 = !DILocation(line: 207, column: 31, scope: !2399)
!2401 = !DILocation(line: 208, column: 13, scope: !2399)
!2402 = !DILocation(line: 209, column: 9, scope: !2202)
!2403 = !DILocation(line: 178, column: 46, scope: !2197)
!2404 = !DILocation(line: 178, column: 9, scope: !2197)
!2405 = distinct !{!2405, !2200, !2406, !143}
!2406 = !DILocation(line: 209, column: 9, scope: !2189)
!2407 = !DILocation(line: 210, column: 5, scope: !2190)
!2408 = !DILocation(line: 177, column: 42, scope: !2182)
!2409 = !DILocation(line: 177, column: 5, scope: !2182)
!2410 = distinct !{!2410, !2187, !2411, !143}
!2411 = !DILocation(line: 210, column: 5, scope: !2178)
!2412 = !DILocalVariable(name: "c", scope: !2413, file: !65, line: 212, type: !58)
!2413 = distinct !DILexicalBlock(scope: !2097, file: !65, line: 212, column: 5)
!2414 = !DILocation(line: 212, column: 17, scope: !2413)
!2415 = !DILocation(line: 212, column: 10, scope: !2413)
!2416 = !DILocation(line: 212, column: 24, scope: !2417)
!2417 = distinct !DILexicalBlock(scope: !2413, file: !65, line: 212, column: 5)
!2418 = !DILocation(line: 212, column: 28, scope: !2417)
!2419 = !DILocation(line: 212, column: 46, scope: !2417)
!2420 = !DILocation(line: 212, column: 38, scope: !2417)
!2421 = !DILocation(line: 212, column: 60, scope: !2417)
!2422 = !DILocation(line: 212, column: 52, scope: !2417)
!2423 = !DILocation(line: 212, column: 62, scope: !2417)
!2424 = !DILocation(line: 212, column: 74, scope: !2417)
!2425 = !DILocation(line: 212, column: 66, scope: !2417)
!2426 = !DILocation(line: 212, column: 65, scope: !2417)
!2427 = !DILocation(line: 212, column: 76, scope: !2417)
!2428 = !DILocation(line: 212, column: 49, scope: !2417)
!2429 = !DILocation(line: 212, column: 79, scope: !2417)
!2430 = !DILocation(line: 212, column: 83, scope: !2417)
!2431 = !DILocation(line: 212, column: 36, scope: !2417)
!2432 = !DILocation(line: 212, column: 35, scope: !2417)
!2433 = !DILocation(line: 212, column: 26, scope: !2417)
!2434 = !DILocation(line: 212, column: 5, scope: !2413)
!2435 = !DILocation(line: 214, column: 33, scope: !2436)
!2436 = distinct !DILexicalBlock(scope: !2417, file: !65, line: 213, column: 5)
!2437 = !DILocation(line: 214, column: 37, scope: !2436)
!2438 = !DILocation(line: 214, column: 35, scope: !2436)
!2439 = !DILocation(line: 214, column: 9, scope: !2436)
!2440 = !DILocation(line: 215, column: 5, scope: !2436)
!2441 = !DILocation(line: 212, column: 91, scope: !2417)
!2442 = !DILocation(line: 212, column: 5, scope: !2417)
!2443 = distinct !{!2443, !2434, !2444, !143}
!2444 = !DILocation(line: 215, column: 5, scope: !2413)
!2445 = !DILocalVariable(name: "tab", scope: !2097, file: !65, line: 217, type: !2446)
!2446 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 128, elements: !2447)
!2447 = !{!2448}
!2448 = !DISubrange(count: 16)
!2449 = !DILocation(line: 217, column: 19, scope: !2097)
!2450 = !DILocalVariable(name: "i", scope: !2451, file: !65, line: 218, type: !58)
!2451 = distinct !DILexicalBlock(scope: !2097, file: !65, line: 218, column: 5)
!2452 = !DILocation(line: 218, column: 17, scope: !2451)
!2453 = !DILocation(line: 218, column: 10, scope: !2451)
!2454 = !DILocation(line: 218, column: 24, scope: !2455)
!2455 = distinct !DILexicalBlock(scope: !2451, file: !65, line: 218, column: 5)
!2456 = !DILocation(line: 218, column: 26, scope: !2455)
!2457 = !DILocation(line: 218, column: 5, scope: !2451)
!2458 = !DILocation(line: 220, column: 41, scope: !2459)
!2459 = distinct !DILexicalBlock(scope: !2455, file: !65, line: 219, column: 5)
!2460 = !DILocation(line: 220, column: 28, scope: !2459)
!2461 = !DILocation(line: 220, column: 44, scope: !2459)
!2462 = !DILocation(line: 220, column: 22, scope: !2459)
!2463 = !DILocation(line: 220, column: 15, scope: !2459)
!2464 = !DILocation(line: 220, column: 14, scope: !2459)
!2465 = !DILocation(line: 220, column: 9, scope: !2459)
!2466 = !DILocation(line: 220, column: 20, scope: !2459)
!2467 = !DILocation(line: 221, column: 41, scope: !2459)
!2468 = !DILocation(line: 221, column: 28, scope: !2459)
!2469 = !DILocation(line: 221, column: 44, scope: !2459)
!2470 = !DILocation(line: 221, column: 22, scope: !2459)
!2471 = !DILocation(line: 221, column: 15, scope: !2459)
!2472 = !DILocation(line: 221, column: 14, scope: !2459)
!2473 = !DILocation(line: 221, column: 16, scope: !2459)
!2474 = !DILocation(line: 221, column: 9, scope: !2459)
!2475 = !DILocation(line: 221, column: 20, scope: !2459)
!2476 = !DILocation(line: 222, column: 41, scope: !2459)
!2477 = !DILocation(line: 222, column: 28, scope: !2459)
!2478 = !DILocation(line: 222, column: 44, scope: !2459)
!2479 = !DILocation(line: 222, column: 22, scope: !2459)
!2480 = !DILocation(line: 222, column: 15, scope: !2459)
!2481 = !DILocation(line: 222, column: 14, scope: !2459)
!2482 = !DILocation(line: 222, column: 16, scope: !2459)
!2483 = !DILocation(line: 222, column: 9, scope: !2459)
!2484 = !DILocation(line: 222, column: 20, scope: !2459)
!2485 = !DILocation(line: 223, column: 41, scope: !2459)
!2486 = !DILocation(line: 223, column: 28, scope: !2459)
!2487 = !DILocation(line: 223, column: 44, scope: !2459)
!2488 = !DILocation(line: 223, column: 22, scope: !2459)
!2489 = !DILocation(line: 223, column: 15, scope: !2459)
!2490 = !DILocation(line: 223, column: 14, scope: !2459)
!2491 = !DILocation(line: 223, column: 16, scope: !2459)
!2492 = !DILocation(line: 223, column: 9, scope: !2459)
!2493 = !DILocation(line: 223, column: 20, scope: !2459)
!2494 = !DILocation(line: 224, column: 5, scope: !2459)
!2495 = !DILocation(line: 218, column: 41, scope: !2455)
!2496 = !DILocation(line: 218, column: 5, scope: !2455)
!2497 = distinct !{!2497, !2457, !2498, !143}
!2498 = !DILocation(line: 224, column: 5, scope: !2451)
!2499 = !DILocalVariable(name: "low_bit_in_nibble", scope: !2097, file: !65, line: 226, type: !53)
!2500 = !DILocation(line: 226, column: 14, scope: !2097)
!2501 = !DILocalVariable(name: "c", scope: !2502, file: !65, line: 228, type: !58)
!2502 = distinct !DILexicalBlock(scope: !2097, file: !65, line: 228, column: 5)
!2503 = !DILocation(line: 228, column: 17, scope: !2502)
!2504 = !DILocation(line: 228, column: 10, scope: !2502)
!2505 = !DILocation(line: 228, column: 24, scope: !2506)
!2506 = distinct !DILexicalBlock(scope: !2502, file: !65, line: 228, column: 5)
!2507 = !DILocation(line: 228, column: 28, scope: !2506)
!2508 = !DILocation(line: 228, column: 26, scope: !2506)
!2509 = !DILocation(line: 228, column: 5, scope: !2502)
!2510 = !DILocalVariable(name: "r", scope: !2511, file: !65, line: 230, type: !82)
!2511 = distinct !DILexicalBlock(scope: !2512, file: !65, line: 230, column: 9)
!2512 = distinct !DILexicalBlock(scope: !2506, file: !65, line: 229, column: 5)
!2513 = !DILocation(line: 230, column: 18, scope: !2511)
!2514 = !DILocation(line: 230, column: 30, scope: !2511)
!2515 = !DILocation(line: 230, column: 22, scope: !2511)
!2516 = !DILocation(line: 230, column: 14, scope: !2511)
!2517 = !DILocation(line: 230, column: 34, scope: !2518)
!2518 = distinct !DILexicalBlock(scope: !2511, file: !65, line: 230, column: 9)
!2519 = !DILocation(line: 230, column: 46, scope: !2518)
!2520 = !DILocation(line: 230, column: 38, scope: !2518)
!2521 = !DILocation(line: 230, column: 60, scope: !2518)
!2522 = !DILocation(line: 230, column: 52, scope: !2518)
!2523 = !DILocation(line: 230, column: 62, scope: !2518)
!2524 = !DILocation(line: 230, column: 74, scope: !2518)
!2525 = !DILocation(line: 230, column: 66, scope: !2518)
!2526 = !DILocation(line: 230, column: 65, scope: !2518)
!2527 = !DILocation(line: 230, column: 76, scope: !2518)
!2528 = !DILocation(line: 230, column: 49, scope: !2518)
!2529 = !DILocation(line: 230, column: 36, scope: !2518)
!2530 = !DILocation(line: 230, column: 9, scope: !2511)
!2531 = !DILocalVariable(name: "pos", scope: !2532, file: !65, line: 232, type: !58)
!2532 = distinct !DILexicalBlock(scope: !2518, file: !65, line: 231, column: 9)
!2533 = !DILocation(line: 232, column: 20, scope: !2532)
!2534 = !DILocation(line: 232, column: 27, scope: !2532)
!2535 = !DILocation(line: 232, column: 28, scope: !2532)
!2536 = !DILocation(line: 232, column: 26, scope: !2532)
!2537 = !DILocation(line: 232, column: 33, scope: !2532)
!2538 = !DILocation(line: 232, column: 32, scope: !2532)
!2539 = !DILocation(line: 232, column: 43, scope: !2532)
!2540 = !DILocation(line: 232, column: 41, scope: !2532)
!2541 = !DILocation(line: 232, column: 48, scope: !2532)
!2542 = !DILocation(line: 232, column: 49, scope: !2532)
!2543 = !DILocation(line: 232, column: 47, scope: !2532)
!2544 = !DILocation(line: 232, column: 45, scope: !2532)
!2545 = !DILocalVariable(name: "t0", scope: !2532, file: !65, line: 233, type: !53)
!2546 = !DILocation(line: 233, column: 22, scope: !2532)
!2547 = !DILocation(line: 233, column: 30, scope: !2532)
!2548 = !DILocation(line: 233, column: 28, scope: !2532)
!2549 = !DILocation(line: 233, column: 43, scope: !2532)
!2550 = !DILocation(line: 233, column: 41, scope: !2532)
!2551 = !DILocalVariable(name: "t1", scope: !2532, file: !65, line: 234, type: !53)
!2552 = !DILocation(line: 234, column: 22, scope: !2532)
!2553 = !DILocation(line: 234, column: 30, scope: !2532)
!2554 = !DILocation(line: 234, column: 28, scope: !2532)
!2555 = !DILocation(line: 234, column: 35, scope: !2532)
!2556 = !DILocation(line: 234, column: 43, scope: !2532)
!2557 = !DILocation(line: 234, column: 41, scope: !2532)
!2558 = !DILocalVariable(name: "t2", scope: !2532, file: !65, line: 235, type: !53)
!2559 = !DILocation(line: 235, column: 22, scope: !2532)
!2560 = !DILocation(line: 235, column: 30, scope: !2532)
!2561 = !DILocation(line: 235, column: 28, scope: !2532)
!2562 = !DILocation(line: 235, column: 35, scope: !2532)
!2563 = !DILocation(line: 235, column: 43, scope: !2532)
!2564 = !DILocation(line: 235, column: 41, scope: !2532)
!2565 = !DILocalVariable(name: "t3", scope: !2532, file: !65, line: 236, type: !53)
!2566 = !DILocation(line: 236, column: 22, scope: !2532)
!2567 = !DILocation(line: 236, column: 30, scope: !2532)
!2568 = !DILocation(line: 236, column: 28, scope: !2532)
!2569 = !DILocation(line: 236, column: 35, scope: !2532)
!2570 = !DILocation(line: 236, column: 43, scope: !2532)
!2571 = !DILocation(line: 236, column: 41, scope: !2532)
!2572 = !DILocalVariable(name: "t", scope: !2573, file: !65, line: 237, type: !58)
!2573 = distinct !DILexicalBlock(scope: !2532, file: !65, line: 237, column: 13)
!2574 = !DILocation(line: 237, column: 25, scope: !2573)
!2575 = !DILocation(line: 237, column: 18, scope: !2573)
!2576 = !DILocation(line: 237, column: 32, scope: !2577)
!2577 = distinct !DILexicalBlock(scope: !2573, file: !65, line: 237, column: 13)
!2578 = !DILocation(line: 237, column: 34, scope: !2577)
!2579 = !DILocation(line: 237, column: 13, scope: !2573)
!2580 = !DILocation(line: 239, column: 81, scope: !2581)
!2581 = distinct !DILexicalBlock(scope: !2577, file: !65, line: 238, column: 13)
!2582 = !DILocation(line: 239, column: 90, scope: !2581)
!2583 = !DILocation(line: 239, column: 89, scope: !2581)
!2584 = !DILocation(line: 239, column: 91, scope: !2581)
!2585 = !DILocation(line: 239, column: 84, scope: !2581)
!2586 = !DILocation(line: 239, column: 83, scope: !2581)
!2587 = !DILocation(line: 239, column: 97, scope: !2581)
!2588 = !DILocation(line: 239, column: 106, scope: !2581)
!2589 = !DILocation(line: 239, column: 105, scope: !2581)
!2590 = !DILocation(line: 239, column: 107, scope: !2581)
!2591 = !DILocation(line: 239, column: 100, scope: !2581)
!2592 = !DILocation(line: 239, column: 99, scope: !2581)
!2593 = !DILocation(line: 239, column: 95, scope: !2581)
!2594 = !DILocation(line: 239, column: 113, scope: !2581)
!2595 = !DILocation(line: 239, column: 122, scope: !2581)
!2596 = !DILocation(line: 239, column: 121, scope: !2581)
!2597 = !DILocation(line: 239, column: 123, scope: !2581)
!2598 = !DILocation(line: 239, column: 116, scope: !2581)
!2599 = !DILocation(line: 239, column: 115, scope: !2581)
!2600 = !DILocation(line: 239, column: 111, scope: !2581)
!2601 = !DILocation(line: 239, column: 129, scope: !2581)
!2602 = !DILocation(line: 239, column: 138, scope: !2581)
!2603 = !DILocation(line: 239, column: 137, scope: !2581)
!2604 = !DILocation(line: 239, column: 139, scope: !2581)
!2605 = !DILocation(line: 239, column: 132, scope: !2581)
!2606 = !DILocation(line: 239, column: 131, scope: !2581)
!2607 = !DILocation(line: 239, column: 127, scope: !2581)
!2608 = !DILocation(line: 239, column: 21, scope: !2581)
!2609 = !DILocation(line: 239, column: 23, scope: !2581)
!2610 = !DILocation(line: 239, column: 22, scope: !2581)
!2611 = !DILocation(line: 239, column: 33, scope: !2581)
!2612 = !DILocation(line: 239, column: 25, scope: !2581)
!2613 = !DILocation(line: 239, column: 24, scope: !2581)
!2614 = !DILocation(line: 239, column: 36, scope: !2581)
!2615 = !DILocation(line: 239, column: 41, scope: !2581)
!2616 = !DILocation(line: 239, column: 40, scope: !2581)
!2617 = !DILocation(line: 239, column: 51, scope: !2581)
!2618 = !DILocation(line: 239, column: 49, scope: !2581)
!2619 = !DILocation(line: 239, column: 57, scope: !2581)
!2620 = !DILocation(line: 239, column: 59, scope: !2581)
!2621 = !DILocation(line: 239, column: 58, scope: !2581)
!2622 = !DILocation(line: 239, column: 69, scope: !2581)
!2623 = !DILocation(line: 239, column: 61, scope: !2581)
!2624 = !DILocation(line: 239, column: 60, scope: !2581)
!2625 = !DILocation(line: 239, column: 72, scope: !2581)
!2626 = !DILocation(line: 239, column: 53, scope: !2581)
!2627 = !DILocation(line: 239, column: 17, scope: !2581)
!2628 = !DILocation(line: 239, column: 78, scope: !2581)
!2629 = !DILocation(line: 240, column: 13, scope: !2581)
!2630 = !DILocation(line: 237, column: 49, scope: !2577)
!2631 = !DILocation(line: 237, column: 13, scope: !2577)
!2632 = distinct !{!2632, !2579, !2633, !143}
!2633 = !DILocation(line: 240, column: 13, scope: !2573)
!2634 = !DILocation(line: 241, column: 9, scope: !2532)
!2635 = !DILocation(line: 230, column: 82, scope: !2518)
!2636 = !DILocation(line: 230, column: 9, scope: !2518)
!2637 = distinct !{!2637, !2530, !2638, !143}
!2638 = !DILocation(line: 241, column: 9, scope: !2511)
!2639 = !DILocation(line: 242, column: 5, scope: !2512)
!2640 = !DILocation(line: 228, column: 38, scope: !2506)
!2641 = !DILocation(line: 228, column: 5, scope: !2506)
!2642 = distinct !{!2642, !2509, !2643, !143}
!2643 = !DILocation(line: 242, column: 5, scope: !2502)
!2644 = !DILocalVariable(name: "r", scope: !2645, file: !65, line: 250, type: !82)
!2645 = distinct !DILexicalBlock(scope: !2097, file: !65, line: 250, column: 5)
!2646 = !DILocation(line: 250, column: 14, scope: !2645)
!2647 = !DILocation(line: 250, column: 10, scope: !2645)
!2648 = !DILocation(line: 250, column: 21, scope: !2649)
!2649 = distinct !DILexicalBlock(scope: !2645, file: !65, line: 250, column: 5)
!2650 = !DILocation(line: 250, column: 33, scope: !2649)
!2651 = !DILocation(line: 250, column: 25, scope: !2649)
!2652 = !DILocation(line: 250, column: 23, scope: !2649)
!2653 = !DILocation(line: 250, column: 5, scope: !2645)
!2654 = !DILocalVariable(name: "c", scope: !2655, file: !65, line: 252, type: !82)
!2655 = distinct !DILexicalBlock(scope: !2656, file: !65, line: 252, column: 9)
!2656 = distinct !DILexicalBlock(scope: !2649, file: !65, line: 251, column: 5)
!2657 = !DILocation(line: 252, column: 18, scope: !2655)
!2658 = !DILocation(line: 252, column: 14, scope: !2655)
!2659 = !DILocation(line: 252, column: 25, scope: !2660)
!2660 = distinct !DILexicalBlock(scope: !2655, file: !65, line: 252, column: 9)
!2661 = !DILocation(line: 252, column: 42, scope: !2660)
!2662 = !DILocation(line: 252, column: 29, scope: !2660)
!2663 = !DILocation(line: 252, column: 44, scope: !2660)
!2664 = !DILocation(line: 252, column: 27, scope: !2660)
!2665 = !DILocation(line: 252, column: 9, scope: !2655)
!2666 = !DILocalVariable(name: "i", scope: !2667, file: !65, line: 254, type: !82)
!2667 = distinct !DILexicalBlock(scope: !2668, file: !65, line: 254, column: 13)
!2668 = distinct !DILexicalBlock(scope: !2660, file: !65, line: 253, column: 9)
!2669 = !DILocation(line: 254, column: 22, scope: !2667)
!2670 = !DILocation(line: 254, column: 18, scope: !2667)
!2671 = !DILocation(line: 254, column: 29, scope: !2672)
!2672 = distinct !DILexicalBlock(scope: !2667, file: !65, line: 254, column: 13)
!2673 = !DILocation(line: 254, column: 33, scope: !2672)
!2674 = !DILocation(line: 254, column: 31, scope: !2672)
!2675 = !DILocation(line: 254, column: 45, scope: !2672)
!2676 = !DILocation(line: 254, column: 37, scope: !2672)
!2677 = !DILocation(line: 254, column: 35, scope: !2672)
!2678 = !DILocation(line: 254, column: 13, scope: !2667)
!2679 = !DILocation(line: 256, column: 46, scope: !2680)
!2680 = distinct !DILexicalBlock(scope: !2672, file: !65, line: 255, column: 13)
!2681 = !DILocation(line: 256, column: 48, scope: !2680)
!2682 = !DILocation(line: 256, column: 47, scope: !2680)
!2683 = !DILocation(line: 256, column: 55, scope: !2680)
!2684 = !DILocation(line: 256, column: 61, scope: !2680)
!2685 = !DILocation(line: 256, column: 59, scope: !2680)
!2686 = !DILocation(line: 256, column: 65, scope: !2680)
!2687 = !DILocation(line: 256, column: 63, scope: !2680)
!2688 = !DILocation(line: 256, column: 44, scope: !2680)
!2689 = !DILocation(line: 256, column: 69, scope: !2680)
!2690 = !DILocation(line: 256, column: 90, scope: !2680)
!2691 = !DILocation(line: 256, column: 77, scope: !2680)
!2692 = !DILocation(line: 256, column: 94, scope: !2680)
!2693 = !DILocation(line: 256, column: 96, scope: !2680)
!2694 = !DILocation(line: 256, column: 95, scope: !2680)
!2695 = !DILocation(line: 256, column: 92, scope: !2680)
!2696 = !DILocation(line: 256, column: 75, scope: !2680)
!2697 = !DILocation(line: 256, column: 101, scope: !2680)
!2698 = !DILocation(line: 256, column: 99, scope: !2680)
!2699 = !DILocation(line: 256, column: 130, scope: !2680)
!2700 = !DILocation(line: 256, column: 117, scope: !2680)
!2701 = !DILocation(line: 256, column: 132, scope: !2680)
!2702 = !DILocation(line: 256, column: 135, scope: !2680)
!2703 = !DILocation(line: 256, column: 134, scope: !2680)
!2704 = !DILocation(line: 256, column: 104, scope: !2680)
!2705 = !DILocation(line: 256, column: 17, scope: !2680)
!2706 = !DILocation(line: 257, column: 13, scope: !2680)
!2707 = !DILocation(line: 254, column: 50, scope: !2672)
!2708 = !DILocation(line: 254, column: 13, scope: !2672)
!2709 = distinct !{!2709, !2678, !2710, !143}
!2710 = !DILocation(line: 257, column: 13, scope: !2667)
!2711 = !DILocation(line: 258, column: 9, scope: !2668)
!2712 = !DILocation(line: 252, column: 50, scope: !2660)
!2713 = !DILocation(line: 252, column: 9, scope: !2660)
!2714 = distinct !{!2714, !2665, !2715, !143}
!2715 = !DILocation(line: 258, column: 9, scope: !2655)
!2716 = !DILocation(line: 259, column: 5, scope: !2656)
!2717 = !DILocation(line: 250, column: 38, scope: !2649)
!2718 = !DILocation(line: 250, column: 5, scope: !2649)
!2719 = distinct !{!2719, !2653, !2720, !143}
!2720 = !DILocation(line: 259, column: 5, scope: !2645)
!2721 = !DILocation(line: 260, column: 1, scope: !2097)
!2722 = distinct !DISubprogram(name: "mat_mul", scope: !891, file: !891, line: 78, type: !2723, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !68)
!2723 = !DISubroutineType(types: !2724)
!2724 = !{null, !97, !97, !60, !82, !82, !82}
!2725 = !DILocalVariable(name: "a", arg: 1, scope: !2722, file: !891, line: 78, type: !97)
!2726 = !DILocation(line: 78, column: 49, scope: !2722)
!2727 = !DILocalVariable(name: "b", arg: 2, scope: !2722, file: !891, line: 78, type: !97)
!2728 = !DILocation(line: 78, column: 73, scope: !2722)
!2729 = !DILocalVariable(name: "c", arg: 3, scope: !2722, file: !891, line: 79, type: !60)
!2730 = !DILocation(line: 79, column: 36, scope: !2722)
!2731 = !DILocalVariable(name: "colrow_ab", arg: 4, scope: !2722, file: !891, line: 79, type: !82)
!2732 = !DILocation(line: 79, column: 43, scope: !2722)
!2733 = !DILocalVariable(name: "row_a", arg: 5, scope: !2722, file: !891, line: 79, type: !82)
!2734 = !DILocation(line: 79, column: 58, scope: !2722)
!2735 = !DILocalVariable(name: "col_b", arg: 6, scope: !2722, file: !891, line: 79, type: !82)
!2736 = !DILocation(line: 79, column: 69, scope: !2722)
!2737 = !DILocalVariable(name: "i", scope: !2738, file: !891, line: 80, type: !82)
!2738 = distinct !DILexicalBlock(scope: !2722, file: !891, line: 80, column: 5)
!2739 = !DILocation(line: 80, column: 14, scope: !2738)
!2740 = !DILocation(line: 80, column: 10, scope: !2738)
!2741 = !DILocation(line: 80, column: 21, scope: !2742)
!2742 = distinct !DILexicalBlock(scope: !2738, file: !891, line: 80, column: 5)
!2743 = !DILocation(line: 80, column: 25, scope: !2742)
!2744 = !DILocation(line: 80, column: 23, scope: !2742)
!2745 = !DILocation(line: 80, column: 5, scope: !2738)
!2746 = !DILocalVariable(name: "j", scope: !2747, file: !891, line: 81, type: !82)
!2747 = distinct !DILexicalBlock(scope: !2748, file: !891, line: 81, column: 9)
!2748 = distinct !DILexicalBlock(scope: !2742, file: !891, line: 80, column: 53)
!2749 = !DILocation(line: 81, column: 18, scope: !2747)
!2750 = !DILocation(line: 81, column: 14, scope: !2747)
!2751 = !DILocation(line: 81, column: 25, scope: !2752)
!2752 = distinct !DILexicalBlock(scope: !2747, file: !891, line: 81, column: 9)
!2753 = !DILocation(line: 81, column: 29, scope: !2752)
!2754 = !DILocation(line: 81, column: 27, scope: !2752)
!2755 = !DILocation(line: 81, column: 9, scope: !2747)
!2756 = !DILocation(line: 82, column: 26, scope: !2757)
!2757 = distinct !DILexicalBlock(scope: !2752, file: !891, line: 81, column: 46)
!2758 = !DILocation(line: 82, column: 29, scope: !2757)
!2759 = !DILocation(line: 82, column: 33, scope: !2757)
!2760 = !DILocation(line: 82, column: 31, scope: !2757)
!2761 = !DILocation(line: 82, column: 36, scope: !2757)
!2762 = !DILocation(line: 82, column: 47, scope: !2757)
!2763 = !DILocation(line: 82, column: 18, scope: !2757)
!2764 = !DILocation(line: 82, column: 14, scope: !2757)
!2765 = !DILocation(line: 82, column: 16, scope: !2757)
!2766 = !DILocation(line: 83, column: 9, scope: !2757)
!2767 = !DILocation(line: 81, column: 36, scope: !2752)
!2768 = !DILocation(line: 81, column: 41, scope: !2752)
!2769 = !DILocation(line: 81, column: 9, scope: !2752)
!2770 = distinct !{!2770, !2755, !2771, !143}
!2771 = !DILocation(line: 83, column: 9, scope: !2747)
!2772 = !DILocation(line: 84, column: 5, scope: !2748)
!2773 = !DILocation(line: 80, column: 32, scope: !2742)
!2774 = !DILocation(line: 80, column: 42, scope: !2742)
!2775 = !DILocation(line: 80, column: 39, scope: !2742)
!2776 = !DILocation(line: 80, column: 5, scope: !2742)
!2777 = distinct !{!2777, !2745, !2778, !143}
!2778 = !DILocation(line: 84, column: 5, scope: !2738)
!2779 = !DILocation(line: 85, column: 1, scope: !2722)
!2780 = distinct !DISubprogram(name: "mat_add", scope: !891, file: !891, line: 87, type: !2781, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !68)
!2781 = !DISubroutineType(types: !2782)
!2782 = !{null, !97, !97, !60, !82, !82}
!2783 = !DILocalVariable(name: "a", arg: 1, scope: !2780, file: !891, line: 87, type: !97)
!2784 = !DILocation(line: 87, column: 49, scope: !2780)
!2785 = !DILocalVariable(name: "b", arg: 2, scope: !2780, file: !891, line: 87, type: !97)
!2786 = !DILocation(line: 87, column: 73, scope: !2780)
!2787 = !DILocalVariable(name: "c", arg: 3, scope: !2780, file: !891, line: 88, type: !60)
!2788 = !DILocation(line: 88, column: 36, scope: !2780)
!2789 = !DILocalVariable(name: "m", arg: 4, scope: !2780, file: !891, line: 88, type: !82)
!2790 = !DILocation(line: 88, column: 43, scope: !2780)
!2791 = !DILocalVariable(name: "n", arg: 5, scope: !2780, file: !891, line: 88, type: !82)
!2792 = !DILocation(line: 88, column: 50, scope: !2780)
!2793 = !DILocalVariable(name: "i", scope: !2794, file: !891, line: 89, type: !82)
!2794 = distinct !DILexicalBlock(scope: !2780, file: !891, line: 89, column: 5)
!2795 = !DILocation(line: 89, column: 14, scope: !2794)
!2796 = !DILocation(line: 89, column: 10, scope: !2794)
!2797 = !DILocation(line: 89, column: 21, scope: !2798)
!2798 = distinct !DILexicalBlock(scope: !2794, file: !891, line: 89, column: 5)
!2799 = !DILocation(line: 89, column: 25, scope: !2798)
!2800 = !DILocation(line: 89, column: 23, scope: !2798)
!2801 = !DILocation(line: 89, column: 5, scope: !2794)
!2802 = !DILocalVariable(name: "j", scope: !2803, file: !891, line: 90, type: !82)
!2803 = distinct !DILexicalBlock(scope: !2804, file: !891, line: 90, column: 9)
!2804 = distinct !DILexicalBlock(scope: !2798, file: !891, line: 89, column: 33)
!2805 = !DILocation(line: 90, column: 18, scope: !2803)
!2806 = !DILocation(line: 90, column: 14, scope: !2803)
!2807 = !DILocation(line: 90, column: 25, scope: !2808)
!2808 = distinct !DILexicalBlock(scope: !2803, file: !891, line: 90, column: 9)
!2809 = !DILocation(line: 90, column: 29, scope: !2808)
!2810 = !DILocation(line: 90, column: 27, scope: !2808)
!2811 = !DILocation(line: 90, column: 9, scope: !2803)
!2812 = !DILocation(line: 91, column: 40, scope: !2813)
!2813 = distinct !DILexicalBlock(scope: !2808, file: !891, line: 90, column: 37)
!2814 = !DILocation(line: 91, column: 44, scope: !2813)
!2815 = !DILocation(line: 91, column: 48, scope: !2813)
!2816 = !DILocation(line: 91, column: 46, scope: !2813)
!2817 = !DILocation(line: 91, column: 38, scope: !2813)
!2818 = !DILocation(line: 91, column: 52, scope: !2813)
!2819 = !DILocation(line: 91, column: 58, scope: !2813)
!2820 = !DILocation(line: 91, column: 62, scope: !2813)
!2821 = !DILocation(line: 91, column: 66, scope: !2813)
!2822 = !DILocation(line: 91, column: 64, scope: !2813)
!2823 = !DILocation(line: 91, column: 56, scope: !2813)
!2824 = !DILocation(line: 91, column: 70, scope: !2813)
!2825 = !DILocation(line: 91, column: 32, scope: !2813)
!2826 = !DILocation(line: 91, column: 15, scope: !2813)
!2827 = !DILocation(line: 91, column: 19, scope: !2813)
!2828 = !DILocation(line: 91, column: 23, scope: !2813)
!2829 = !DILocation(line: 91, column: 21, scope: !2813)
!2830 = !DILocation(line: 91, column: 13, scope: !2813)
!2831 = !DILocation(line: 91, column: 27, scope: !2813)
!2832 = !DILocation(line: 91, column: 30, scope: !2813)
!2833 = !DILocation(line: 92, column: 9, scope: !2813)
!2834 = !DILocation(line: 90, column: 32, scope: !2808)
!2835 = !DILocation(line: 90, column: 9, scope: !2808)
!2836 = distinct !{!2836, !2811, !2837, !143}
!2837 = !DILocation(line: 92, column: 9, scope: !2803)
!2838 = !DILocation(line: 93, column: 5, scope: !2804)
!2839 = !DILocation(line: 89, column: 28, scope: !2798)
!2840 = !DILocation(line: 89, column: 5, scope: !2798)
!2841 = distinct !{!2841, !2801, !2842, !143}
!2842 = !DILocation(line: 93, column: 5, scope: !2794)
!2843 = !DILocation(line: 94, column: 1, scope: !2780)
!2844 = distinct !DISubprogram(name: "encode", scope: !65, file: !65, line: 32, type: !573, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !68)
!2845 = !DILocalVariable(name: "m", arg: 1, scope: !2844, file: !65, line: 32, type: !97)
!2846 = !DILocation(line: 32, column: 41, scope: !2844)
!2847 = !DILocalVariable(name: "menc", arg: 2, scope: !2844, file: !65, line: 32, type: !60)
!2848 = !DILocation(line: 32, column: 59, scope: !2844)
!2849 = !DILocalVariable(name: "mlen", arg: 3, scope: !2844, file: !65, line: 32, type: !82)
!2850 = !DILocation(line: 32, column: 69, scope: !2844)
!2851 = !DILocalVariable(name: "i", scope: !2844, file: !65, line: 33, type: !82)
!2852 = !DILocation(line: 33, column: 9, scope: !2844)
!2853 = !DILocation(line: 34, column: 12, scope: !2854)
!2854 = distinct !DILexicalBlock(scope: !2844, file: !65, line: 34, column: 5)
!2855 = !DILocation(line: 34, column: 10, scope: !2854)
!2856 = !DILocation(line: 34, column: 17, scope: !2857)
!2857 = distinct !DILexicalBlock(scope: !2854, file: !65, line: 34, column: 5)
!2858 = !DILocation(line: 34, column: 21, scope: !2857)
!2859 = !DILocation(line: 34, column: 26, scope: !2857)
!2860 = !DILocation(line: 34, column: 19, scope: !2857)
!2861 = !DILocation(line: 34, column: 5, scope: !2854)
!2862 = !DILocation(line: 35, column: 21, scope: !2863)
!2863 = distinct !DILexicalBlock(scope: !2857, file: !65, line: 34, column: 44)
!2864 = !DILocation(line: 35, column: 20, scope: !2863)
!2865 = !DILocation(line: 35, column: 19, scope: !2863)
!2866 = !DILocation(line: 35, column: 29, scope: !2863)
!2867 = !DILocation(line: 35, column: 27, scope: !2863)
!2868 = !DILocation(line: 35, column: 36, scope: !2863)
!2869 = !DILocation(line: 35, column: 24, scope: !2863)
!2870 = !DILocation(line: 35, column: 9, scope: !2863)
!2871 = !DILocation(line: 35, column: 14, scope: !2863)
!2872 = !DILocation(line: 35, column: 17, scope: !2863)
!2873 = !DILocation(line: 36, column: 5, scope: !2863)
!2874 = !DILocation(line: 34, column: 31, scope: !2857)
!2875 = !DILocation(line: 34, column: 38, scope: !2857)
!2876 = !DILocation(line: 34, column: 5, scope: !2857)
!2877 = distinct !{!2877, !2861, !2878, !143}
!2878 = !DILocation(line: 36, column: 5, scope: !2854)
!2879 = !DILocation(line: 38, column: 9, scope: !2880)
!2880 = distinct !DILexicalBlock(scope: !2844, file: !65, line: 38, column: 9)
!2881 = !DILocation(line: 38, column: 14, scope: !2880)
!2882 = !DILocation(line: 38, column: 18, scope: !2880)
!2883 = !DILocation(line: 39, column: 21, scope: !2884)
!2884 = distinct !DILexicalBlock(scope: !2880, file: !65, line: 38, column: 24)
!2885 = !DILocation(line: 39, column: 20, scope: !2884)
!2886 = !DILocation(line: 39, column: 9, scope: !2884)
!2887 = !DILocation(line: 39, column: 14, scope: !2884)
!2888 = !DILocation(line: 39, column: 17, scope: !2884)
!2889 = !DILocation(line: 40, column: 5, scope: !2884)
!2890 = !DILocation(line: 41, column: 1, scope: !2844)
!2891 = distinct !DISubprogram(name: "add_f", scope: !891, file: !891, line: 42, type: !2892, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !68)
!2892 = !DISubroutineType(types: !2893)
!2893 = !{!51, !51, !51}
!2894 = !DILocalVariable(name: "a", arg: 1, scope: !2891, file: !891, line: 42, type: !51)
!2895 = !DILocation(line: 42, column: 49, scope: !2891)
!2896 = !DILocalVariable(name: "b", arg: 2, scope: !2891, file: !891, line: 42, type: !51)
!2897 = !DILocation(line: 42, column: 66, scope: !2891)
!2898 = !DILocation(line: 43, column: 12, scope: !2891)
!2899 = !DILocation(line: 43, column: 16, scope: !2891)
!2900 = !DILocation(line: 43, column: 14, scope: !2891)
!2901 = !DILocation(line: 43, column: 5, scope: !2891)
!2902 = distinct !DISubprogram(name: "lincomb", scope: !891, file: !891, line: 69, type: !2903, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !68)
!2903 = !DISubroutineType(types: !2904)
!2904 = !{!51, !97, !97, !82, !82}
!2905 = !DILocalVariable(name: "a", arg: 1, scope: !2902, file: !891, line: 69, type: !97)
!2906 = !DILocation(line: 69, column: 58, scope: !2902)
!2907 = !DILocalVariable(name: "b", arg: 2, scope: !2902, file: !891, line: 70, type: !97)
!2908 = !DILocation(line: 70, column: 58, scope: !2902)
!2909 = !DILocalVariable(name: "n", arg: 3, scope: !2902, file: !891, line: 70, type: !82)
!2910 = !DILocation(line: 70, column: 65, scope: !2902)
!2911 = !DILocalVariable(name: "m", arg: 4, scope: !2902, file: !891, line: 70, type: !82)
!2912 = !DILocation(line: 70, column: 72, scope: !2902)
!2913 = !DILocalVariable(name: "ret", scope: !2902, file: !891, line: 71, type: !51)
!2914 = !DILocation(line: 71, column: 19, scope: !2902)
!2915 = !DILocalVariable(name: "i", scope: !2916, file: !891, line: 72, type: !82)
!2916 = distinct !DILexicalBlock(scope: !2902, file: !891, line: 72, column: 5)
!2917 = !DILocation(line: 72, column: 14, scope: !2916)
!2918 = !DILocation(line: 72, column: 10, scope: !2916)
!2919 = !DILocation(line: 72, column: 21, scope: !2920)
!2920 = distinct !DILexicalBlock(scope: !2916, file: !891, line: 72, column: 5)
!2921 = !DILocation(line: 72, column: 25, scope: !2920)
!2922 = !DILocation(line: 72, column: 23, scope: !2920)
!2923 = !DILocation(line: 72, column: 5, scope: !2916)
!2924 = !DILocation(line: 73, column: 27, scope: !2925)
!2925 = distinct !DILexicalBlock(scope: !2920, file: !891, line: 72, column: 41)
!2926 = !DILocation(line: 73, column: 29, scope: !2925)
!2927 = !DILocation(line: 73, column: 34, scope: !2925)
!2928 = !DILocation(line: 73, column: 33, scope: !2925)
!2929 = !DILocation(line: 73, column: 21, scope: !2925)
!2930 = !DILocation(line: 73, column: 38, scope: !2925)
!2931 = !DILocation(line: 73, column: 15, scope: !2925)
!2932 = !DILocation(line: 73, column: 13, scope: !2925)
!2933 = !DILocation(line: 74, column: 5, scope: !2925)
!2934 = !DILocation(line: 72, column: 28, scope: !2920)
!2935 = !DILocation(line: 72, column: 38, scope: !2920)
!2936 = !DILocation(line: 72, column: 35, scope: !2920)
!2937 = !DILocation(line: 72, column: 5, scope: !2920)
!2938 = distinct !{!2938, !2923, !2939, !143}
!2939 = !DILocation(line: 74, column: 5, scope: !2916)
!2940 = !DILocation(line: 75, column: 12, scope: !2902)
!2941 = !DILocation(line: 75, column: 5, scope: !2902)
!2942 = distinct !DISubprogram(name: "mul_f", scope: !891, file: !891, line: 8, type: !2892, scopeLine: 8, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !68)
!2943 = !DILocalVariable(name: "a", arg: 1, scope: !2942, file: !891, line: 8, type: !51)
!2944 = !DILocation(line: 8, column: 49, scope: !2942)
!2945 = !DILocalVariable(name: "b", arg: 2, scope: !2942, file: !891, line: 8, type: !51)
!2946 = !DILocation(line: 8, column: 66, scope: !2942)
!2947 = !DILocalVariable(name: "p", scope: !2942, file: !891, line: 10, type: !51)
!2948 = !DILocation(line: 10, column: 19, scope: !2942)
!2949 = !DILocation(line: 13, column: 10, scope: !2942)
!2950 = !DILocation(line: 13, column: 7, scope: !2942)
!2951 = !DILocation(line: 16, column: 11, scope: !2942)
!2952 = !DILocation(line: 16, column: 13, scope: !2942)
!2953 = !DILocation(line: 16, column: 18, scope: !2942)
!2954 = !DILocation(line: 16, column: 17, scope: !2942)
!2955 = !DILocation(line: 16, column: 10, scope: !2942)
!2956 = !DILocation(line: 16, column: 8, scope: !2942)
!2957 = !DILocation(line: 17, column: 11, scope: !2942)
!2958 = !DILocation(line: 17, column: 13, scope: !2942)
!2959 = !DILocation(line: 17, column: 18, scope: !2942)
!2960 = !DILocation(line: 17, column: 17, scope: !2942)
!2961 = !DILocation(line: 17, column: 7, scope: !2942)
!2962 = !DILocation(line: 18, column: 11, scope: !2942)
!2963 = !DILocation(line: 18, column: 13, scope: !2942)
!2964 = !DILocation(line: 18, column: 18, scope: !2942)
!2965 = !DILocation(line: 18, column: 17, scope: !2942)
!2966 = !DILocation(line: 18, column: 7, scope: !2942)
!2967 = !DILocation(line: 19, column: 11, scope: !2942)
!2968 = !DILocation(line: 19, column: 13, scope: !2942)
!2969 = !DILocation(line: 19, column: 18, scope: !2942)
!2970 = !DILocation(line: 19, column: 17, scope: !2942)
!2971 = !DILocation(line: 19, column: 7, scope: !2942)
!2972 = !DILocalVariable(name: "top_p", scope: !2942, file: !891, line: 22, type: !51)
!2973 = !DILocation(line: 22, column: 19, scope: !2942)
!2974 = !DILocation(line: 22, column: 27, scope: !2942)
!2975 = !DILocation(line: 22, column: 29, scope: !2942)
!2976 = !DILocalVariable(name: "out", scope: !2942, file: !891, line: 23, type: !51)
!2977 = !DILocation(line: 23, column: 19, scope: !2942)
!2978 = !DILocation(line: 23, column: 26, scope: !2942)
!2979 = !DILocation(line: 23, column: 31, scope: !2942)
!2980 = !DILocation(line: 23, column: 37, scope: !2942)
!2981 = !DILocation(line: 23, column: 28, scope: !2942)
!2982 = !DILocation(line: 23, column: 46, scope: !2942)
!2983 = !DILocation(line: 23, column: 52, scope: !2942)
!2984 = !DILocation(line: 23, column: 43, scope: !2942)
!2985 = !DILocation(line: 23, column: 59, scope: !2942)
!2986 = !DILocation(line: 23, column: 25, scope: !2942)
!2987 = !DILocation(line: 24, column: 12, scope: !2942)
!2988 = !DILocation(line: 24, column: 5, scope: !2942)
!2989 = !DILocalVariable(name: "M", arg: 1, scope: !64, file: !65, line: 111, type: !52)
!2990 = !DILocation(line: 111, column: 47, scope: !64)
!2991 = !DILocalVariable(name: "i", scope: !2992, file: !65, line: 117, type: !58)
!2992 = distinct !DILexicalBlock(scope: !64, file: !65, line: 117, column: 5)
!2993 = !DILocation(line: 117, column: 17, scope: !2992)
!2994 = !DILocation(line: 117, column: 10, scope: !2992)
!2995 = !DILocation(line: 117, column: 24, scope: !2996)
!2996 = distinct !DILexicalBlock(scope: !2992, file: !65, line: 117, column: 5)
!2997 = !DILocation(line: 117, column: 26, scope: !2996)
!2998 = !DILocation(line: 117, column: 5, scope: !2992)
!2999 = !DILocalVariable(name: "t", scope: !3000, file: !65, line: 119, type: !53)
!3000 = distinct !DILexicalBlock(scope: !2996, file: !65, line: 118, column: 5)
!3001 = !DILocation(line: 119, column: 18, scope: !3000)
!3002 = !DILocation(line: 119, column: 24, scope: !3000)
!3003 = !DILocation(line: 119, column: 26, scope: !3000)
!3004 = !DILocation(line: 119, column: 29, scope: !3000)
!3005 = !DILocation(line: 119, column: 38, scope: !3000)
!3006 = !DILocation(line: 119, column: 40, scope: !3000)
!3007 = !DILocation(line: 119, column: 41, scope: !3000)
!3008 = !DILocation(line: 119, column: 36, scope: !3000)
!3009 = !DILocation(line: 119, column: 46, scope: !3000)
!3010 = !DILocation(line: 120, column: 19, scope: !3000)
!3011 = !DILocation(line: 120, column: 21, scope: !3000)
!3012 = !DILocation(line: 120, column: 9, scope: !3000)
!3013 = !DILocation(line: 120, column: 11, scope: !3000)
!3014 = !DILocation(line: 120, column: 16, scope: !3000)
!3015 = !DILocation(line: 121, column: 19, scope: !3000)
!3016 = !DILocation(line: 121, column: 9, scope: !3000)
!3017 = !DILocation(line: 121, column: 11, scope: !3000)
!3018 = !DILocation(line: 121, column: 12, scope: !3000)
!3019 = !DILocation(line: 121, column: 16, scope: !3000)
!3020 = !DILocation(line: 122, column: 5, scope: !3000)
!3021 = !DILocation(line: 117, column: 33, scope: !2996)
!3022 = !DILocation(line: 117, column: 5, scope: !2996)
!3023 = distinct !{!3023, !2998, !3024, !143}
!3024 = !DILocation(line: 122, column: 5, scope: !2992)
!3025 = !DILocalVariable(name: "i", scope: !3026, file: !65, line: 124, type: !58)
!3026 = distinct !DILexicalBlock(scope: !64, file: !65, line: 124, column: 5)
!3027 = !DILocation(line: 124, column: 17, scope: !3026)
!3028 = !DILocation(line: 124, column: 10, scope: !3026)
!3029 = !DILocation(line: 124, column: 24, scope: !3030)
!3030 = distinct !DILexicalBlock(scope: !3026, file: !65, line: 124, column: 5)
!3031 = !DILocation(line: 124, column: 26, scope: !3030)
!3032 = !DILocation(line: 124, column: 5, scope: !3026)
!3033 = !DILocalVariable(name: "t0", scope: !3034, file: !65, line: 126, type: !53)
!3034 = distinct !DILexicalBlock(scope: !3030, file: !65, line: 125, column: 5)
!3035 = !DILocation(line: 126, column: 18, scope: !3034)
!3036 = !DILocation(line: 126, column: 25, scope: !3034)
!3037 = !DILocation(line: 126, column: 27, scope: !3034)
!3038 = !DILocation(line: 126, column: 32, scope: !3034)
!3039 = !DILocation(line: 126, column: 40, scope: !3034)
!3040 = !DILocation(line: 126, column: 42, scope: !3034)
!3041 = !DILocation(line: 126, column: 43, scope: !3034)
!3042 = !DILocation(line: 126, column: 38, scope: !3034)
!3043 = !DILocation(line: 126, column: 48, scope: !3034)
!3044 = !DILocalVariable(name: "t1", scope: !3034, file: !65, line: 127, type: !53)
!3045 = !DILocation(line: 127, column: 18, scope: !3034)
!3046 = !DILocation(line: 127, column: 25, scope: !3034)
!3047 = !DILocation(line: 127, column: 27, scope: !3034)
!3048 = !DILocation(line: 127, column: 28, scope: !3034)
!3049 = !DILocation(line: 127, column: 32, scope: !3034)
!3050 = !DILocation(line: 127, column: 40, scope: !3034)
!3051 = !DILocation(line: 127, column: 42, scope: !3034)
!3052 = !DILocation(line: 127, column: 43, scope: !3034)
!3053 = !DILocation(line: 127, column: 38, scope: !3034)
!3054 = !DILocation(line: 127, column: 48, scope: !3034)
!3055 = !DILocation(line: 128, column: 20, scope: !3034)
!3056 = !DILocation(line: 128, column: 23, scope: !3034)
!3057 = !DILocation(line: 128, column: 9, scope: !3034)
!3058 = !DILocation(line: 128, column: 11, scope: !3034)
!3059 = !DILocation(line: 128, column: 16, scope: !3034)
!3060 = !DILocation(line: 129, column: 20, scope: !3034)
!3061 = !DILocation(line: 129, column: 23, scope: !3034)
!3062 = !DILocation(line: 129, column: 9, scope: !3034)
!3063 = !DILocation(line: 129, column: 11, scope: !3034)
!3064 = !DILocation(line: 129, column: 12, scope: !3034)
!3065 = !DILocation(line: 129, column: 16, scope: !3034)
!3066 = !DILocation(line: 130, column: 19, scope: !3034)
!3067 = !DILocation(line: 130, column: 9, scope: !3034)
!3068 = !DILocation(line: 130, column: 11, scope: !3034)
!3069 = !DILocation(line: 130, column: 12, scope: !3034)
!3070 = !DILocation(line: 130, column: 16, scope: !3034)
!3071 = !DILocation(line: 131, column: 19, scope: !3034)
!3072 = !DILocation(line: 131, column: 9, scope: !3034)
!3073 = !DILocation(line: 131, column: 11, scope: !3034)
!3074 = !DILocation(line: 131, column: 12, scope: !3034)
!3075 = !DILocation(line: 131, column: 16, scope: !3034)
!3076 = !DILocation(line: 132, column: 5, scope: !3034)
!3077 = !DILocation(line: 124, column: 33, scope: !3030)
!3078 = !DILocation(line: 124, column: 5, scope: !3030)
!3079 = distinct !{!3079, !3032, !3080, !143}
!3080 = !DILocation(line: 132, column: 5, scope: !3026)
!3081 = !DILocalVariable(name: "i", scope: !3082, file: !65, line: 134, type: !58)
!3082 = distinct !DILexicalBlock(scope: !64, file: !65, line: 134, column: 5)
!3083 = !DILocation(line: 134, column: 17, scope: !3082)
!3084 = !DILocation(line: 134, column: 10, scope: !3082)
!3085 = !DILocation(line: 134, column: 24, scope: !3086)
!3086 = distinct !DILexicalBlock(scope: !3082, file: !65, line: 134, column: 5)
!3087 = !DILocation(line: 134, column: 26, scope: !3086)
!3088 = !DILocation(line: 134, column: 5, scope: !3082)
!3089 = !DILocalVariable(name: "t0", scope: !3090, file: !65, line: 136, type: !53)
!3090 = distinct !DILexicalBlock(scope: !3086, file: !65, line: 135, column: 5)
!3091 = !DILocation(line: 136, column: 18, scope: !3090)
!3092 = !DILocation(line: 136, column: 25, scope: !3090)
!3093 = !DILocation(line: 136, column: 27, scope: !3090)
!3094 = !DILocation(line: 136, column: 32, scope: !3090)
!3095 = !DILocation(line: 136, column: 41, scope: !3090)
!3096 = !DILocation(line: 136, column: 43, scope: !3090)
!3097 = !DILocation(line: 136, column: 44, scope: !3090)
!3098 = !DILocation(line: 136, column: 39, scope: !3090)
!3099 = !DILocation(line: 136, column: 50, scope: !3090)
!3100 = !DILocalVariable(name: "t1", scope: !3090, file: !65, line: 137, type: !53)
!3101 = !DILocation(line: 137, column: 18, scope: !3090)
!3102 = !DILocation(line: 137, column: 25, scope: !3090)
!3103 = !DILocation(line: 137, column: 27, scope: !3090)
!3104 = !DILocation(line: 137, column: 28, scope: !3090)
!3105 = !DILocation(line: 137, column: 32, scope: !3090)
!3106 = !DILocation(line: 137, column: 41, scope: !3090)
!3107 = !DILocation(line: 137, column: 43, scope: !3090)
!3108 = !DILocation(line: 137, column: 44, scope: !3090)
!3109 = !DILocation(line: 137, column: 39, scope: !3090)
!3110 = !DILocation(line: 137, column: 50, scope: !3090)
!3111 = !DILocation(line: 139, column: 20, scope: !3090)
!3112 = !DILocation(line: 139, column: 23, scope: !3090)
!3113 = !DILocation(line: 139, column: 9, scope: !3090)
!3114 = !DILocation(line: 139, column: 11, scope: !3090)
!3115 = !DILocation(line: 139, column: 17, scope: !3090)
!3116 = !DILocation(line: 140, column: 20, scope: !3090)
!3117 = !DILocation(line: 140, column: 23, scope: !3090)
!3118 = !DILocation(line: 140, column: 9, scope: !3090)
!3119 = !DILocation(line: 140, column: 11, scope: !3090)
!3120 = !DILocation(line: 140, column: 12, scope: !3090)
!3121 = !DILocation(line: 140, column: 17, scope: !3090)
!3122 = !DILocation(line: 141, column: 20, scope: !3090)
!3123 = !DILocation(line: 141, column: 9, scope: !3090)
!3124 = !DILocation(line: 141, column: 11, scope: !3090)
!3125 = !DILocation(line: 141, column: 12, scope: !3090)
!3126 = !DILocation(line: 141, column: 17, scope: !3090)
!3127 = !DILocation(line: 142, column: 20, scope: !3090)
!3128 = !DILocation(line: 142, column: 9, scope: !3090)
!3129 = !DILocation(line: 142, column: 11, scope: !3090)
!3130 = !DILocation(line: 142, column: 12, scope: !3090)
!3131 = !DILocation(line: 142, column: 17, scope: !3090)
!3132 = !DILocation(line: 143, column: 5, scope: !3090)
!3133 = !DILocation(line: 134, column: 32, scope: !3086)
!3134 = !DILocation(line: 134, column: 5, scope: !3086)
!3135 = distinct !{!3135, !3088, !3136, !143}
!3136 = !DILocation(line: 143, column: 5, scope: !3082)
!3137 = !DILocalVariable(name: "i", scope: !3138, file: !65, line: 145, type: !58)
!3138 = distinct !DILexicalBlock(scope: !64, file: !65, line: 145, column: 5)
!3139 = !DILocation(line: 145, column: 17, scope: !3138)
!3140 = !DILocation(line: 145, column: 10, scope: !3138)
!3141 = !DILocation(line: 145, column: 24, scope: !3142)
!3142 = distinct !DILexicalBlock(scope: !3138, file: !65, line: 145, column: 5)
!3143 = !DILocation(line: 145, column: 26, scope: !3142)
!3144 = !DILocation(line: 145, column: 5, scope: !3138)
!3145 = !DILocalVariable(name: "t", scope: !3146, file: !65, line: 147, type: !53)
!3146 = distinct !DILexicalBlock(scope: !3142, file: !65, line: 146, column: 5)
!3147 = !DILocation(line: 147, column: 18, scope: !3146)
!3148 = !DILocation(line: 147, column: 24, scope: !3146)
!3149 = !DILocation(line: 147, column: 26, scope: !3146)
!3150 = !DILocation(line: 147, column: 28, scope: !3146)
!3151 = !DILocation(line: 147, column: 36, scope: !3146)
!3152 = !DILocation(line: 147, column: 38, scope: !3146)
!3153 = !DILocation(line: 147, column: 39, scope: !3146)
!3154 = !DILocation(line: 147, column: 34, scope: !3146)
!3155 = !DILocation(line: 147, column: 44, scope: !3146)
!3156 = !DILocation(line: 148, column: 19, scope: !3146)
!3157 = !DILocation(line: 148, column: 21, scope: !3146)
!3158 = !DILocation(line: 148, column: 9, scope: !3146)
!3159 = !DILocation(line: 148, column: 11, scope: !3146)
!3160 = !DILocation(line: 148, column: 16, scope: !3146)
!3161 = !DILocation(line: 149, column: 19, scope: !3146)
!3162 = !DILocation(line: 149, column: 9, scope: !3146)
!3163 = !DILocation(line: 149, column: 11, scope: !3146)
!3164 = !DILocation(line: 149, column: 12, scope: !3146)
!3165 = !DILocation(line: 149, column: 16, scope: !3146)
!3166 = !DILocation(line: 150, column: 5, scope: !3146)
!3167 = !DILocation(line: 145, column: 32, scope: !3142)
!3168 = !DILocation(line: 145, column: 5, scope: !3142)
!3169 = distinct !{!3169, !3144, !3170, !143}
!3170 = !DILocation(line: 150, column: 5, scope: !3138)
!3171 = !DILocation(line: 151, column: 1, scope: !64)
!3172 = distinct !DISubprogram(name: "mul_add_mat_x_m_mat", scope: !654, file: !654, line: 61, type: !767, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !68)
!3173 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !3172, file: !654, line: 61, type: !457)
!3174 = !DILocation(line: 61, column: 36, scope: !3172)
!3175 = !DILocalVariable(name: "mat", arg: 2, scope: !3172, file: !654, line: 61, type: !97)
!3176 = !DILocation(line: 61, column: 70, scope: !3172)
!3177 = !DILocalVariable(name: "bs_mat", arg: 3, scope: !3172, file: !654, line: 61, type: !657)
!3178 = !DILocation(line: 61, column: 91, scope: !3172)
!3179 = !DILocalVariable(name: "acc", arg: 4, scope: !3172, file: !654, line: 61, type: !52)
!3180 = !DILocation(line: 61, column: 109, scope: !3172)
!3181 = !DILocalVariable(name: "mat_rows", arg: 5, scope: !3172, file: !654, line: 62, type: !457)
!3182 = !DILocation(line: 62, column: 36, scope: !3172)
!3183 = !DILocalVariable(name: "mat_cols", arg: 6, scope: !3172, file: !654, line: 62, type: !457)
!3184 = !DILocation(line: 62, column: 56, scope: !3172)
!3185 = !DILocalVariable(name: "bs_mat_cols", arg: 7, scope: !3172, file: !654, line: 62, type: !457)
!3186 = !DILocation(line: 62, column: 76, scope: !3172)
!3187 = !DILocalVariable(name: "r", scope: !3188, file: !654, line: 64, type: !82)
!3188 = distinct !DILexicalBlock(scope: !3172, file: !654, line: 64, column: 5)
!3189 = !DILocation(line: 64, column: 14, scope: !3188)
!3190 = !DILocation(line: 64, column: 10, scope: !3188)
!3191 = !DILocation(line: 64, column: 21, scope: !3192)
!3192 = distinct !DILexicalBlock(scope: !3188, file: !654, line: 64, column: 5)
!3193 = !DILocation(line: 64, column: 25, scope: !3192)
!3194 = !DILocation(line: 64, column: 23, scope: !3192)
!3195 = !DILocation(line: 64, column: 5, scope: !3188)
!3196 = !DILocalVariable(name: "c", scope: !3197, file: !654, line: 65, type: !82)
!3197 = distinct !DILexicalBlock(scope: !3198, file: !654, line: 65, column: 9)
!3198 = distinct !DILexicalBlock(scope: !3192, file: !654, line: 64, column: 40)
!3199 = !DILocation(line: 65, column: 18, scope: !3197)
!3200 = !DILocation(line: 65, column: 14, scope: !3197)
!3201 = !DILocation(line: 65, column: 25, scope: !3202)
!3202 = distinct !DILexicalBlock(scope: !3197, file: !654, line: 65, column: 9)
!3203 = !DILocation(line: 65, column: 29, scope: !3202)
!3204 = !DILocation(line: 65, column: 27, scope: !3202)
!3205 = !DILocation(line: 65, column: 9, scope: !3197)
!3206 = !DILocalVariable(name: "k", scope: !3207, file: !654, line: 66, type: !82)
!3207 = distinct !DILexicalBlock(scope: !3208, file: !654, line: 66, column: 13)
!3208 = distinct !DILexicalBlock(scope: !3202, file: !654, line: 65, column: 44)
!3209 = !DILocation(line: 66, column: 22, scope: !3207)
!3210 = !DILocation(line: 66, column: 18, scope: !3207)
!3211 = !DILocation(line: 66, column: 29, scope: !3212)
!3212 = distinct !DILexicalBlock(scope: !3207, file: !654, line: 66, column: 13)
!3213 = !DILocation(line: 66, column: 33, scope: !3212)
!3214 = !DILocation(line: 66, column: 31, scope: !3212)
!3215 = !DILocation(line: 66, column: 13, scope: !3207)
!3216 = !DILocation(line: 67, column: 31, scope: !3217)
!3217 = distinct !DILexicalBlock(scope: !3212, file: !654, line: 66, column: 54)
!3218 = !DILocation(line: 67, column: 44, scope: !3217)
!3219 = !DILocation(line: 67, column: 53, scope: !3217)
!3220 = !DILocation(line: 67, column: 68, scope: !3217)
!3221 = !DILocation(line: 67, column: 72, scope: !3217)
!3222 = !DILocation(line: 67, column: 70, scope: !3217)
!3223 = !DILocation(line: 67, column: 86, scope: !3217)
!3224 = !DILocation(line: 67, column: 84, scope: !3217)
!3225 = !DILocation(line: 67, column: 65, scope: !3217)
!3226 = !DILocation(line: 67, column: 51, scope: !3217)
!3227 = !DILocation(line: 67, column: 90, scope: !3217)
!3228 = !DILocation(line: 67, column: 94, scope: !3217)
!3229 = !DILocation(line: 67, column: 98, scope: !3217)
!3230 = !DILocation(line: 67, column: 96, scope: !3217)
!3231 = !DILocation(line: 67, column: 109, scope: !3217)
!3232 = !DILocation(line: 67, column: 107, scope: !3217)
!3233 = !DILocation(line: 67, column: 113, scope: !3217)
!3234 = !DILocation(line: 67, column: 119, scope: !3217)
!3235 = !DILocation(line: 67, column: 134, scope: !3217)
!3236 = !DILocation(line: 67, column: 138, scope: !3217)
!3237 = !DILocation(line: 67, column: 136, scope: !3217)
!3238 = !DILocation(line: 67, column: 152, scope: !3217)
!3239 = !DILocation(line: 67, column: 150, scope: !3217)
!3240 = !DILocation(line: 67, column: 131, scope: !3217)
!3241 = !DILocation(line: 67, column: 117, scope: !3217)
!3242 = !DILocation(line: 67, column: 17, scope: !3217)
!3243 = !DILocation(line: 68, column: 13, scope: !3217)
!3244 = !DILocation(line: 66, column: 48, scope: !3212)
!3245 = !DILocation(line: 66, column: 13, scope: !3212)
!3246 = distinct !{!3246, !3215, !3247, !143}
!3247 = !DILocation(line: 68, column: 13, scope: !3207)
!3248 = !DILocation(line: 69, column: 9, scope: !3208)
!3249 = !DILocation(line: 65, column: 40, scope: !3202)
!3250 = !DILocation(line: 65, column: 9, scope: !3202)
!3251 = distinct !{!3251, !3205, !3252, !143}
!3252 = !DILocation(line: 69, column: 9, scope: !3197)
!3253 = !DILocation(line: 70, column: 5, scope: !3198)
!3254 = !DILocation(line: 64, column: 36, scope: !3192)
!3255 = !DILocation(line: 64, column: 5, scope: !3192)
!3256 = distinct !{!3256, !3195, !3257, !143}
!3257 = !DILocation(line: 70, column: 5, scope: !3188)
!3258 = !DILocation(line: 71, column: 1, scope: !3172)
!3259 = distinct !DISubprogram(name: "P1_times_Vt", scope: !654, file: !654, line: 82, type: !743, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !68)
!3260 = !DILocalVariable(name: "p", arg: 1, scope: !3259, file: !654, line: 82, type: !376)
!3261 = !DILocation(line: 82, column: 39, scope: !3259)
!3262 = !DILocalVariable(name: "P1", arg: 2, scope: !3259, file: !654, line: 82, type: !657)
!3263 = !DILocation(line: 82, column: 58, scope: !3259)
!3264 = !DILocalVariable(name: "V", arg: 3, scope: !3259, file: !654, line: 82, type: !97)
!3265 = !DILocation(line: 82, column: 83, scope: !3259)
!3266 = !DILocalVariable(name: "acc", arg: 4, scope: !3259, file: !654, line: 82, type: !52)
!3267 = !DILocation(line: 82, column: 96, scope: !3259)
!3268 = !DILocation(line: 86, column: 66, scope: !3259)
!3269 = !DILocation(line: 86, column: 48, scope: !3259)
!3270 = !DILocation(line: 86, column: 70, scope: !3259)
!3271 = !DILocation(line: 86, column: 74, scope: !3259)
!3272 = !DILocation(line: 86, column: 77, scope: !3259)
!3273 = !DILocation(line: 86, column: 90, scope: !3259)
!3274 = !DILocation(line: 86, column: 82, scope: !3259)
!3275 = !DILocation(line: 86, column: 102, scope: !3259)
!3276 = !DILocation(line: 86, column: 94, scope: !3259)
!3277 = !DILocation(line: 86, column: 114, scope: !3259)
!3278 = !DILocation(line: 86, column: 106, scope: !3259)
!3279 = !DILocation(line: 86, column: 5, scope: !3259)
!3280 = !DILocation(line: 87, column: 1, scope: !3259)
!3281 = distinct !DISubprogram(name: "mul_add_m_upper_triangular_mat_x_mat_trans", scope: !654, file: !654, line: 32, type: !976, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !68)
!3282 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !3281, file: !654, line: 32, type: !457)
!3283 = !DILocation(line: 32, column: 59, scope: !3281)
!3284 = !DILocalVariable(name: "bs_mat", arg: 2, scope: !3281, file: !654, line: 32, type: !657)
!3285 = !DILocation(line: 32, column: 88, scope: !3281)
!3286 = !DILocalVariable(name: "mat", arg: 3, scope: !3281, file: !654, line: 32, type: !97)
!3287 = !DILocation(line: 32, column: 117, scope: !3281)
!3288 = !DILocalVariable(name: "acc", arg: 4, scope: !3281, file: !654, line: 32, type: !52)
!3289 = !DILocation(line: 32, column: 132, scope: !3281)
!3290 = !DILocalVariable(name: "bs_mat_rows", arg: 5, scope: !3281, file: !654, line: 33, type: !457)
!3291 = !DILocation(line: 33, column: 59, scope: !3281)
!3292 = !DILocalVariable(name: "bs_mat_cols", arg: 6, scope: !3281, file: !654, line: 33, type: !457)
!3293 = !DILocation(line: 33, column: 82, scope: !3281)
!3294 = !DILocalVariable(name: "mat_rows", arg: 7, scope: !3281, file: !654, line: 33, type: !457)
!3295 = !DILocation(line: 33, column: 105, scope: !3281)
!3296 = !DILocalVariable(name: "triangular", arg: 8, scope: !3281, file: !654, line: 33, type: !457)
!3297 = !DILocation(line: 33, column: 125, scope: !3281)
!3298 = !DILocalVariable(name: "bs_mat_entries_used", scope: !3281, file: !654, line: 34, type: !82)
!3299 = !DILocation(line: 34, column: 9, scope: !3281)
!3300 = !DILocalVariable(name: "r", scope: !3301, file: !654, line: 35, type: !82)
!3301 = distinct !DILexicalBlock(scope: !3281, file: !654, line: 35, column: 5)
!3302 = !DILocation(line: 35, column: 14, scope: !3301)
!3303 = !DILocation(line: 35, column: 10, scope: !3301)
!3304 = !DILocation(line: 35, column: 21, scope: !3305)
!3305 = distinct !DILexicalBlock(scope: !3301, file: !654, line: 35, column: 5)
!3306 = !DILocation(line: 35, column: 25, scope: !3305)
!3307 = !DILocation(line: 35, column: 23, scope: !3305)
!3308 = !DILocation(line: 35, column: 5, scope: !3301)
!3309 = !DILocalVariable(name: "c", scope: !3310, file: !654, line: 36, type: !82)
!3310 = distinct !DILexicalBlock(scope: !3311, file: !654, line: 36, column: 9)
!3311 = distinct !DILexicalBlock(scope: !3305, file: !654, line: 35, column: 43)
!3312 = !DILocation(line: 36, column: 18, scope: !3310)
!3313 = !DILocation(line: 36, column: 22, scope: !3310)
!3314 = !DILocation(line: 36, column: 35, scope: !3310)
!3315 = !DILocation(line: 36, column: 33, scope: !3310)
!3316 = !DILocation(line: 36, column: 14, scope: !3310)
!3317 = !DILocation(line: 36, column: 38, scope: !3318)
!3318 = distinct !DILexicalBlock(scope: !3310, file: !654, line: 36, column: 9)
!3319 = !DILocation(line: 36, column: 42, scope: !3318)
!3320 = !DILocation(line: 36, column: 40, scope: !3318)
!3321 = !DILocation(line: 36, column: 9, scope: !3310)
!3322 = !DILocalVariable(name: "k", scope: !3323, file: !654, line: 37, type: !82)
!3323 = distinct !DILexicalBlock(scope: !3324, file: !654, line: 37, column: 13)
!3324 = distinct !DILexicalBlock(scope: !3318, file: !654, line: 36, column: 60)
!3325 = !DILocation(line: 37, column: 22, scope: !3323)
!3326 = !DILocation(line: 37, column: 18, scope: !3323)
!3327 = !DILocation(line: 37, column: 29, scope: !3328)
!3328 = distinct !DILexicalBlock(scope: !3323, file: !654, line: 37, column: 13)
!3329 = !DILocation(line: 37, column: 33, scope: !3328)
!3330 = !DILocation(line: 37, column: 31, scope: !3328)
!3331 = !DILocation(line: 37, column: 13, scope: !3323)
!3332 = !DILocation(line: 38, column: 31, scope: !3333)
!3333 = distinct !DILexicalBlock(scope: !3328, file: !654, line: 37, column: 51)
!3334 = !DILocation(line: 38, column: 44, scope: !3333)
!3335 = !DILocation(line: 38, column: 53, scope: !3333)
!3336 = !DILocation(line: 38, column: 67, scope: !3333)
!3337 = !DILocation(line: 38, column: 65, scope: !3333)
!3338 = !DILocation(line: 38, column: 51, scope: !3333)
!3339 = !DILocation(line: 38, column: 88, scope: !3333)
!3340 = !DILocation(line: 38, column: 92, scope: !3333)
!3341 = !DILocation(line: 38, column: 96, scope: !3333)
!3342 = !DILocation(line: 38, column: 94, scope: !3333)
!3343 = !DILocation(line: 38, column: 110, scope: !3333)
!3344 = !DILocation(line: 38, column: 108, scope: !3333)
!3345 = !DILocation(line: 38, column: 114, scope: !3333)
!3346 = !DILocation(line: 38, column: 120, scope: !3333)
!3347 = !DILocation(line: 38, column: 135, scope: !3333)
!3348 = !DILocation(line: 38, column: 139, scope: !3333)
!3349 = !DILocation(line: 38, column: 137, scope: !3333)
!3350 = !DILocation(line: 38, column: 150, scope: !3333)
!3351 = !DILocation(line: 38, column: 148, scope: !3333)
!3352 = !DILocation(line: 38, column: 132, scope: !3333)
!3353 = !DILocation(line: 38, column: 118, scope: !3333)
!3354 = !DILocation(line: 38, column: 17, scope: !3333)
!3355 = !DILocation(line: 39, column: 13, scope: !3333)
!3356 = !DILocation(line: 37, column: 45, scope: !3328)
!3357 = !DILocation(line: 37, column: 13, scope: !3328)
!3358 = distinct !{!3358, !3331, !3359, !143}
!3359 = !DILocation(line: 39, column: 13, scope: !3323)
!3360 = !DILocation(line: 40, column: 33, scope: !3324)
!3361 = !DILocation(line: 41, column: 9, scope: !3324)
!3362 = !DILocation(line: 36, column: 56, scope: !3318)
!3363 = !DILocation(line: 36, column: 9, scope: !3318)
!3364 = distinct !{!3364, !3321, !3365, !143}
!3365 = !DILocation(line: 41, column: 9, scope: !3310)
!3366 = !DILocation(line: 42, column: 5, scope: !3311)
!3367 = !DILocation(line: 35, column: 39, scope: !3305)
!3368 = !DILocation(line: 35, column: 5, scope: !3305)
!3369 = distinct !{!3369, !3308, !3370, !143}
!3370 = !DILocation(line: 42, column: 5, scope: !3301)
!3371 = !DILocation(line: 43, column: 1, scope: !3281)
!3372 = distinct !DISubprogram(name: "mayo_sign", scope: !65, file: !65, line: 502, type: !1341, scopeLine: 504, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !68)
!3373 = !DILocalVariable(name: "p", arg: 1, scope: !3372, file: !65, line: 502, type: !376)
!3374 = !DILocation(line: 502, column: 36, scope: !3372)
!3375 = !DILocalVariable(name: "sm", arg: 2, scope: !3372, file: !65, line: 502, type: !60)
!3376 = !DILocation(line: 502, column: 54, scope: !3372)
!3377 = !DILocalVariable(name: "smlen", arg: 3, scope: !3372, file: !65, line: 503, type: !1343)
!3378 = !DILocation(line: 503, column: 23, scope: !3372)
!3379 = !DILocalVariable(name: "m", arg: 4, scope: !3372, file: !65, line: 503, type: !97)
!3380 = !DILocation(line: 503, column: 51, scope: !3372)
!3381 = !DILocalVariable(name: "mlen", arg: 5, scope: !3372, file: !65, line: 504, type: !58)
!3382 = !DILocation(line: 504, column: 22, scope: !3372)
!3383 = !DILocalVariable(name: "csk", arg: 6, scope: !3372, file: !65, line: 504, type: !97)
!3384 = !DILocation(line: 504, column: 49, scope: !3372)
!3385 = !DILocalVariable(name: "ret", scope: !3372, file: !65, line: 505, type: !82)
!3386 = !DILocation(line: 505, column: 9, scope: !3372)
!3387 = !DILocalVariable(name: "param_sig_bytes", scope: !3372, file: !65, line: 506, type: !457)
!3388 = !DILocation(line: 506, column: 15, scope: !3372)
!3389 = !DILocation(line: 506, column: 49, scope: !3372)
!3390 = !DILocation(line: 506, column: 33, scope: !3372)
!3391 = !DILocalVariable(name: "siglen", scope: !3372, file: !65, line: 507, type: !58)
!3392 = !DILocation(line: 507, column: 12, scope: !3372)
!3393 = !DILocation(line: 508, column: 13, scope: !3372)
!3394 = !DILocation(line: 508, column: 18, scope: !3372)
!3395 = !DILocation(line: 508, column: 5, scope: !3372)
!3396 = !DILocation(line: 508, column: 35, scope: !3372)
!3397 = !DILocation(line: 508, column: 38, scope: !3372)
!3398 = !DILocation(line: 509, column: 31, scope: !3372)
!3399 = !DILocation(line: 509, column: 34, scope: !3372)
!3400 = !DILocation(line: 509, column: 47, scope: !3372)
!3401 = !DILocation(line: 509, column: 52, scope: !3372)
!3402 = !DILocation(line: 509, column: 50, scope: !3372)
!3403 = !DILocation(line: 509, column: 69, scope: !3372)
!3404 = !DILocation(line: 509, column: 75, scope: !3372)
!3405 = !DILocation(line: 509, column: 11, scope: !3372)
!3406 = !DILocation(line: 509, column: 9, scope: !3372)
!3407 = !DILocation(line: 510, column: 9, scope: !3408)
!3408 = distinct !DILexicalBlock(scope: !3372, file: !65, line: 510, column: 9)
!3409 = !DILocation(line: 510, column: 13, scope: !3408)
!3410 = !DILocation(line: 510, column: 24, scope: !3408)
!3411 = !DILocation(line: 510, column: 27, scope: !3408)
!3412 = !DILocation(line: 510, column: 46, scope: !3408)
!3413 = !DILocation(line: 510, column: 37, scope: !3408)
!3414 = !DILocation(line: 510, column: 34, scope: !3408)
!3415 = !DILocation(line: 511, column: 16, scope: !3416)
!3416 = distinct !DILexicalBlock(scope: !3408, file: !65, line: 510, column: 62)
!3417 = !DILocation(line: 511, column: 23, scope: !3416)
!3418 = !DILocation(line: 511, column: 32, scope: !3416)
!3419 = !DILocation(line: 511, column: 30, scope: !3416)
!3420 = !DILocation(line: 511, column: 9, scope: !3416)
!3421 = !DILocation(line: 512, column: 9, scope: !3416)
!3422 = !DILocation(line: 515, column: 14, scope: !3372)
!3423 = !DILocation(line: 515, column: 23, scope: !3372)
!3424 = !DILocation(line: 515, column: 21, scope: !3372)
!3425 = !DILocation(line: 515, column: 6, scope: !3372)
!3426 = !DILocation(line: 515, column: 12, scope: !3372)
!3427 = !DILocation(line: 515, column: 5, scope: !3372)
!3428 = !DILabel(scope: !3372, name: "err", file: !65, line: 516, column: 1)
!3429 = !DILocation(line: 516, column: 1, scope: !3372)
!3430 = !DILocation(line: 517, column: 12, scope: !3372)
!3431 = !DILocation(line: 517, column: 5, scope: !3372)
!3432 = distinct !DISubprogram(name: "mayo_open", scope: !65, file: !65, line: 520, type: !1341, scopeLine: 522, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !68)
!3433 = !DILocalVariable(name: "p", arg: 1, scope: !3432, file: !65, line: 520, type: !376)
!3434 = !DILocation(line: 520, column: 36, scope: !3432)
!3435 = !DILocalVariable(name: "m", arg: 2, scope: !3432, file: !65, line: 520, type: !60)
!3436 = !DILocation(line: 520, column: 54, scope: !3432)
!3437 = !DILocalVariable(name: "mlen", arg: 3, scope: !3432, file: !65, line: 521, type: !1343)
!3438 = !DILocation(line: 521, column: 23, scope: !3432)
!3439 = !DILocalVariable(name: "sm", arg: 4, scope: !3432, file: !65, line: 521, type: !97)
!3440 = !DILocation(line: 521, column: 50, scope: !3432)
!3441 = !DILocalVariable(name: "smlen", arg: 5, scope: !3432, file: !65, line: 522, type: !58)
!3442 = !DILocation(line: 522, column: 22, scope: !3432)
!3443 = !DILocalVariable(name: "pk", arg: 6, scope: !3432, file: !65, line: 522, type: !97)
!3444 = !DILocation(line: 522, column: 50, scope: !3432)
!3445 = !DILocalVariable(name: "param_sig_bytes", scope: !3432, file: !65, line: 523, type: !457)
!3446 = !DILocation(line: 523, column: 15, scope: !3432)
!3447 = !DILocation(line: 523, column: 49, scope: !3432)
!3448 = !DILocation(line: 523, column: 33, scope: !3432)
!3449 = !DILocation(line: 524, column: 9, scope: !3450)
!3450 = distinct !DILexicalBlock(scope: !3432, file: !65, line: 524, column: 9)
!3451 = !DILocation(line: 524, column: 25, scope: !3450)
!3452 = !DILocation(line: 524, column: 17, scope: !3450)
!3453 = !DILocation(line: 524, column: 15, scope: !3450)
!3454 = !DILocation(line: 525, column: 9, scope: !3455)
!3455 = distinct !DILexicalBlock(scope: !3450, file: !65, line: 524, column: 42)
!3456 = !DILocalVariable(name: "result", scope: !3432, file: !65, line: 527, type: !82)
!3457 = !DILocation(line: 527, column: 9, scope: !3432)
!3458 = !DILocation(line: 527, column: 30, scope: !3432)
!3459 = !DILocation(line: 527, column: 33, scope: !3432)
!3460 = !DILocation(line: 527, column: 38, scope: !3432)
!3461 = !DILocation(line: 527, column: 36, scope: !3432)
!3462 = !DILocation(line: 527, column: 55, scope: !3432)
!3463 = !DILocation(line: 527, column: 63, scope: !3432)
!3464 = !DILocation(line: 527, column: 61, scope: !3432)
!3465 = !DILocation(line: 527, column: 80, scope: !3432)
!3466 = !DILocation(line: 528, column: 30, scope: !3432)
!3467 = !DILocation(line: 527, column: 18, scope: !3432)
!3468 = !DILocation(line: 530, column: 9, scope: !3469)
!3469 = distinct !DILexicalBlock(scope: !3432, file: !65, line: 530, column: 9)
!3470 = !DILocation(line: 530, column: 16, scope: !3469)
!3471 = !DILocation(line: 531, column: 17, scope: !3472)
!3472 = distinct !DILexicalBlock(scope: !3469, file: !65, line: 530, column: 28)
!3473 = !DILocation(line: 531, column: 25, scope: !3472)
!3474 = !DILocation(line: 531, column: 23, scope: !3472)
!3475 = !DILocation(line: 531, column: 10, scope: !3472)
!3476 = !DILocation(line: 531, column: 15, scope: !3472)
!3477 = !DILocation(line: 532, column: 17, scope: !3472)
!3478 = !DILocation(line: 532, column: 20, scope: !3472)
!3479 = !DILocation(line: 532, column: 25, scope: !3472)
!3480 = !DILocation(line: 532, column: 9, scope: !3472)
!3481 = !DILocation(line: 532, column: 43, scope: !3472)
!3482 = !DILocation(line: 532, column: 42, scope: !3472)
!3483 = !DILocation(line: 533, column: 5, scope: !3472)
!3484 = !DILocation(line: 535, column: 12, scope: !3432)
!3485 = !DILocation(line: 535, column: 5, scope: !3432)
!3486 = !DILocation(line: 536, column: 1, scope: !3432)
!3487 = distinct !DISubprogram(name: "mayo_verify", scope: !65, file: !65, line: 617, type: !3488, scopeLine: 619, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !68)
!3488 = !DISubroutineType(types: !3489)
!3489 = !{!82, !376, !97, !58, !97, !97}
!3490 = !DILocalVariable(name: "p", arg: 1, scope: !3487, file: !65, line: 617, type: !376)
!3491 = !DILocation(line: 617, column: 38, scope: !3487)
!3492 = !DILocalVariable(name: "m", arg: 2, scope: !3487, file: !65, line: 617, type: !97)
!3493 = !DILocation(line: 617, column: 62, scope: !3487)
!3494 = !DILocalVariable(name: "mlen", arg: 3, scope: !3487, file: !65, line: 618, type: !58)
!3495 = !DILocation(line: 618, column: 24, scope: !3487)
!3496 = !DILocalVariable(name: "sig", arg: 4, scope: !3487, file: !65, line: 618, type: !97)
!3497 = !DILocation(line: 618, column: 51, scope: !3487)
!3498 = !DILocalVariable(name: "cpk", arg: 5, scope: !3487, file: !65, line: 619, type: !97)
!3499 = !DILocation(line: 619, column: 38, scope: !3487)
!3500 = !DILocalVariable(name: "tEnc", scope: !3487, file: !65, line: 620, type: !1359)
!3501 = !DILocation(line: 620, column: 19, scope: !3487)
!3502 = !DILocalVariable(name: "t", scope: !3487, file: !65, line: 621, type: !1364)
!3503 = !DILocation(line: 621, column: 19, scope: !3487)
!3504 = !DILocalVariable(name: "y", scope: !3487, file: !65, line: 622, type: !3505)
!3505 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 2272, elements: !3506)
!3506 = !{!3507}
!3507 = !DISubrange(count: 284)
!3508 = !DILocation(line: 622, column: 19, scope: !3487)
!3509 = !DILocalVariable(name: "s", scope: !3487, file: !65, line: 623, type: !1391)
!3510 = !DILocation(line: 623, column: 19, scope: !3487)
!3511 = !DILocalVariable(name: "pk", scope: !3487, file: !65, line: 624, type: !3512)
!3512 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 7326720, elements: !3513)
!3513 = !{!3514}
!3514 = !DISubrange(count: 114480)
!3515 = !DILocation(line: 624, column: 14, scope: !3487)
!3516 = !DILocalVariable(name: "tmp", scope: !3487, file: !65, line: 625, type: !3517)
!3517 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 832, elements: !3518)
!3518 = !{!3519}
!3519 = !DISubrange(count: 104)
!3520 = !DILocation(line: 625, column: 19, scope: !3487)
!3521 = !DILocalVariable(name: "param_m", scope: !3487, file: !65, line: 627, type: !457)
!3522 = !DILocation(line: 627, column: 15, scope: !3487)
!3523 = !DILocation(line: 627, column: 33, scope: !3487)
!3524 = !DILocation(line: 627, column: 25, scope: !3487)
!3525 = !DILocalVariable(name: "param_n", scope: !3487, file: !65, line: 628, type: !457)
!3526 = !DILocation(line: 628, column: 15, scope: !3487)
!3527 = !DILocation(line: 628, column: 33, scope: !3487)
!3528 = !DILocation(line: 628, column: 25, scope: !3487)
!3529 = !DILocalVariable(name: "param_k", scope: !3487, file: !65, line: 629, type: !457)
!3530 = !DILocation(line: 629, column: 15, scope: !3487)
!3531 = !DILocation(line: 629, column: 33, scope: !3487)
!3532 = !DILocation(line: 629, column: 25, scope: !3487)
!3533 = !DILocalVariable(name: "param_m_bytes", scope: !3487, file: !65, line: 630, type: !457)
!3534 = !DILocation(line: 630, column: 15, scope: !3487)
!3535 = !DILocation(line: 630, column: 45, scope: !3487)
!3536 = !DILocation(line: 630, column: 31, scope: !3487)
!3537 = !DILocalVariable(name: "param_sig_bytes", scope: !3487, file: !65, line: 631, type: !457)
!3538 = !DILocation(line: 631, column: 15, scope: !3487)
!3539 = !DILocation(line: 631, column: 49, scope: !3487)
!3540 = !DILocation(line: 631, column: 33, scope: !3487)
!3541 = !DILocalVariable(name: "param_digest_bytes", scope: !3487, file: !65, line: 632, type: !457)
!3542 = !DILocation(line: 632, column: 15, scope: !3487)
!3543 = !DILocation(line: 632, column: 55, scope: !3487)
!3544 = !DILocation(line: 632, column: 36, scope: !3487)
!3545 = !DILocalVariable(name: "param_salt_bytes", scope: !3487, file: !65, line: 633, type: !457)
!3546 = !DILocation(line: 633, column: 15, scope: !3487)
!3547 = !DILocation(line: 633, column: 51, scope: !3487)
!3548 = !DILocation(line: 633, column: 34, scope: !3487)
!3549 = !DILocalVariable(name: "ret", scope: !3487, file: !65, line: 635, type: !82)
!3550 = !DILocation(line: 635, column: 9, scope: !3487)
!3551 = !DILocation(line: 635, column: 30, scope: !3487)
!3552 = !DILocation(line: 635, column: 33, scope: !3487)
!3553 = !DILocation(line: 635, column: 38, scope: !3487)
!3554 = !DILocation(line: 635, column: 15, scope: !3487)
!3555 = !DILocation(line: 636, column: 9, scope: !3556)
!3556 = distinct !DILexicalBlock(scope: !3487, file: !65, line: 636, column: 9)
!3557 = !DILocation(line: 636, column: 13, scope: !3556)
!3558 = !DILocation(line: 637, column: 9, scope: !3559)
!3559 = distinct !DILexicalBlock(scope: !3556, file: !65, line: 636, column: 25)
!3560 = !DILocalVariable(name: "P1", scope: !3487, file: !65, line: 640, type: !52)
!3561 = !DILocation(line: 640, column: 15, scope: !3487)
!3562 = !DILocation(line: 640, column: 20, scope: !3487)
!3563 = !DILocalVariable(name: "P2", scope: !3487, file: !65, line: 641, type: !52)
!3564 = !DILocation(line: 641, column: 15, scope: !3487)
!3565 = !DILocation(line: 641, column: 20, scope: !3487)
!3566 = !DILocation(line: 641, column: 40, scope: !3487)
!3567 = !DILocation(line: 641, column: 25, scope: !3487)
!3568 = !DILocation(line: 641, column: 23, scope: !3487)
!3569 = !DILocalVariable(name: "P3", scope: !3487, file: !65, line: 642, type: !52)
!3570 = !DILocation(line: 642, column: 15, scope: !3487)
!3571 = !DILocation(line: 642, column: 20, scope: !3487)
!3572 = !DILocation(line: 642, column: 40, scope: !3487)
!3573 = !DILocation(line: 642, column: 25, scope: !3487)
!3574 = !DILocation(line: 642, column: 23, scope: !3487)
!3575 = !DILocation(line: 657, column: 14, scope: !3487)
!3576 = !DILocation(line: 657, column: 19, scope: !3487)
!3577 = !DILocation(line: 657, column: 39, scope: !3487)
!3578 = !DILocation(line: 657, column: 42, scope: !3487)
!3579 = !DILocation(line: 657, column: 5, scope: !3487)
!3580 = !DILocation(line: 660, column: 5, scope: !3487)
!3581 = !DILocation(line: 660, column: 18, scope: !3487)
!3582 = !DILocation(line: 660, column: 38, scope: !3487)
!3583 = !DILocation(line: 660, column: 44, scope: !3487)
!3584 = !DILocation(line: 660, column: 62, scope: !3487)
!3585 = !DILocation(line: 661, column: 12, scope: !3487)
!3586 = !DILocation(line: 662, column: 14, scope: !3487)
!3587 = !DILocation(line: 662, column: 20, scope: !3487)
!3588 = !DILocation(line: 662, column: 35, scope: !3487)
!3589 = !DILocation(line: 662, column: 40, scope: !3487)
!3590 = !DILocation(line: 662, column: 61, scope: !3487)
!3591 = !DILocation(line: 662, column: 59, scope: !3487)
!3592 = !DILocation(line: 662, column: 5, scope: !3487)
!3593 = !DILocation(line: 663, column: 12, scope: !3487)
!3594 = !DILocation(line: 663, column: 18, scope: !3487)
!3595 = !DILocation(line: 663, column: 21, scope: !3487)
!3596 = !DILocation(line: 663, column: 5, scope: !3487)
!3597 = !DILocation(line: 666, column: 12, scope: !3487)
!3598 = !DILocation(line: 666, column: 17, scope: !3487)
!3599 = !DILocation(line: 666, column: 20, scope: !3487)
!3600 = !DILocation(line: 666, column: 30, scope: !3487)
!3601 = !DILocation(line: 666, column: 28, scope: !3487)
!3602 = !DILocation(line: 666, column: 5, scope: !3487)
!3603 = !DILocation(line: 668, column: 21, scope: !3487)
!3604 = !DILocation(line: 668, column: 24, scope: !3487)
!3605 = !DILocation(line: 668, column: 27, scope: !3487)
!3606 = !DILocation(line: 668, column: 31, scope: !3487)
!3607 = !DILocation(line: 668, column: 35, scope: !3487)
!3608 = !DILocation(line: 668, column: 39, scope: !3487)
!3609 = !DILocation(line: 668, column: 5, scope: !3487)
!3610 = !DILocation(line: 670, column: 16, scope: !3611)
!3611 = distinct !DILexicalBlock(scope: !3487, file: !65, line: 670, column: 9)
!3612 = !DILocation(line: 670, column: 19, scope: !3611)
!3613 = !DILocation(line: 670, column: 22, scope: !3611)
!3614 = !DILocation(line: 670, column: 9, scope: !3611)
!3615 = !DILocation(line: 670, column: 31, scope: !3611)
!3616 = !DILocation(line: 671, column: 9, scope: !3617)
!3617 = distinct !DILexicalBlock(scope: !3611, file: !65, line: 670, column: 37)
!3618 = !DILocation(line: 673, column: 5, scope: !3487)
!3619 = !DILocation(line: 674, column: 1, scope: !3487)
!3620 = distinct !DISubprogram(name: "mayo_expand_pk", scope: !65, file: !65, line: 608, type: !3621, scopeLine: 609, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !68)
!3621 = !DISubroutineType(types: !3622)
!3622 = !{!82, !376, !97, !52}
!3623 = !DILocalVariable(name: "p", arg: 1, scope: !3620, file: !65, line: 608, type: !376)
!3624 = !DILocation(line: 608, column: 41, scope: !3620)
!3625 = !DILocalVariable(name: "cpk", arg: 2, scope: !3620, file: !65, line: 608, type: !97)
!3626 = !DILocation(line: 608, column: 65, scope: !3620)
!3627 = !DILocalVariable(name: "pk", arg: 3, scope: !3620, file: !65, line: 609, type: !52)
!3628 = !DILocation(line: 609, column: 30, scope: !3620)
!3629 = !DILocation(line: 610, column: 18, scope: !3620)
!3630 = !DILocation(line: 610, column: 21, scope: !3620)
!3631 = !DILocation(line: 610, column: 25, scope: !3620)
!3632 = !DILocation(line: 610, column: 5, scope: !3620)
!3633 = !DILocation(line: 612, column: 19, scope: !3620)
!3634 = !DILocation(line: 612, column: 45, scope: !3620)
!3635 = !DILocation(line: 612, column: 25, scope: !3620)
!3636 = !DILocation(line: 612, column: 23, scope: !3620)
!3637 = !DILocation(line: 612, column: 49, scope: !3620)
!3638 = !DILocation(line: 612, column: 69, scope: !3620)
!3639 = !DILocation(line: 612, column: 54, scope: !3620)
!3640 = !DILocation(line: 612, column: 52, scope: !3620)
!3641 = !DILocation(line: 612, column: 89, scope: !3620)
!3642 = !DILocation(line: 612, column: 74, scope: !3620)
!3643 = !DILocation(line: 612, column: 72, scope: !3620)
!3644 = !DILocation(line: 612, column: 108, scope: !3620)
!3645 = !DILocation(line: 612, column: 93, scope: !3620)
!3646 = !DILocation(line: 612, column: 129, scope: !3620)
!3647 = !DILocation(line: 612, column: 111, scope: !3620)
!3648 = !DILocation(line: 612, column: 110, scope: !3620)
!3649 = !DILocation(line: 612, column: 141, scope: !3620)
!3650 = !DILocation(line: 612, column: 133, scope: !3620)
!3651 = !DILocation(line: 612, column: 5, scope: !3620)
!3652 = !DILocation(line: 614, column: 5, scope: !3620)
!3653 = distinct !DISubprogram(name: "eval_public_map", scope: !65, file: !65, line: 288, type: !3654, scopeLine: 288, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !68)
!3654 = !DISubroutineType(types: !3655)
!3655 = !{null, !376, !97, !657, !657, !657, !60}
!3656 = !DILocalVariable(name: "p", arg: 1, scope: !3653, file: !65, line: 288, type: !376)
!3657 = !DILocation(line: 288, column: 50, scope: !3653)
!3658 = !DILocalVariable(name: "s", arg: 2, scope: !3653, file: !65, line: 288, type: !97)
!3659 = !DILocation(line: 288, column: 74, scope: !3653)
!3660 = !DILocalVariable(name: "P1", arg: 3, scope: !3653, file: !65, line: 288, type: !657)
!3661 = !DILocation(line: 288, column: 93, scope: !3653)
!3662 = !DILocalVariable(name: "P2", arg: 4, scope: !3653, file: !65, line: 288, type: !657)
!3663 = !DILocation(line: 288, column: 113, scope: !3653)
!3664 = !DILocalVariable(name: "P3", arg: 5, scope: !3653, file: !65, line: 288, type: !657)
!3665 = !DILocation(line: 288, column: 133, scope: !3653)
!3666 = !DILocalVariable(name: "eval", arg: 6, scope: !3653, file: !65, line: 288, type: !60)
!3667 = !DILocation(line: 288, column: 152, scope: !3653)
!3668 = !DILocalVariable(name: "SPS", scope: !3653, file: !65, line: 289, type: !3669)
!3669 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 82944, elements: !3670)
!3670 = !{!3671}
!3671 = !DISubrange(count: 1296)
!3672 = !DILocation(line: 289, column: 14, scope: !3653)
!3673 = !DILocation(line: 291, column: 24, scope: !3653)
!3674 = !DILocation(line: 291, column: 27, scope: !3653)
!3675 = !DILocation(line: 291, column: 31, scope: !3653)
!3676 = !DILocation(line: 291, column: 35, scope: !3653)
!3677 = !DILocation(line: 291, column: 39, scope: !3653)
!3678 = !DILocation(line: 291, column: 42, scope: !3653)
!3679 = !DILocation(line: 291, column: 5, scope: !3653)
!3680 = !DILocalVariable(name: "zero", scope: !3653, file: !65, line: 292, type: !1364)
!3681 = !DILocation(line: 292, column: 19, scope: !3653)
!3682 = !DILocation(line: 293, column: 17, scope: !3653)
!3683 = !DILocation(line: 293, column: 20, scope: !3653)
!3684 = !DILocation(line: 293, column: 25, scope: !3653)
!3685 = !DILocation(line: 293, column: 31, scope: !3653)
!3686 = !DILocation(line: 293, column: 5, scope: !3653)
!3687 = !DILocation(line: 294, column: 1, scope: !3653)
!3688 = distinct !DISubprogram(name: "m_calculate_PS_SPS", scope: !654, file: !654, line: 277, type: !3689, scopeLine: 278, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !68)
!3689 = !DISubroutineType(types: !3690)
!3690 = !{null, !376, !657, !657, !657, !97, !52}
!3691 = !DILocalVariable(name: "p", arg: 1, scope: !3688, file: !654, line: 277, type: !376)
!3692 = !DILocation(line: 277, column: 60, scope: !3688)
!3693 = !DILocalVariable(name: "P1", arg: 2, scope: !3688, file: !654, line: 277, type: !657)
!3694 = !DILocation(line: 277, column: 79, scope: !3688)
!3695 = !DILocalVariable(name: "P2", arg: 3, scope: !3688, file: !654, line: 277, type: !657)
!3696 = !DILocation(line: 277, column: 99, scope: !3688)
!3697 = !DILocalVariable(name: "P3", arg: 4, scope: !3688, file: !654, line: 277, type: !657)
!3698 = !DILocation(line: 277, column: 119, scope: !3688)
!3699 = !DILocalVariable(name: "s", arg: 5, scope: !3688, file: !654, line: 277, type: !97)
!3700 = !DILocation(line: 277, column: 144, scope: !3688)
!3701 = !DILocalVariable(name: "SPS", arg: 6, scope: !3688, file: !654, line: 278, type: !52)
!3702 = !DILocation(line: 278, column: 49, scope: !3688)
!3703 = !DILocalVariable(name: "PS", scope: !3688, file: !654, line: 286, type: !3704)
!3704 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 1064448, elements: !3705)
!3705 = !{!3706}
!3706 = !DISubrange(count: 16632)
!3707 = !DILocation(line: 286, column: 14, scope: !3688)
!3708 = !DILocation(line: 287, column: 33, scope: !3688)
!3709 = !DILocation(line: 287, column: 37, scope: !3688)
!3710 = !DILocation(line: 287, column: 41, scope: !3688)
!3711 = !DILocation(line: 287, column: 45, scope: !3688)
!3712 = !DILocation(line: 287, column: 56, scope: !3688)
!3713 = !DILocation(line: 287, column: 48, scope: !3688)
!3714 = !DILocation(line: 287, column: 68, scope: !3688)
!3715 = !DILocation(line: 287, column: 60, scope: !3688)
!3716 = !DILocation(line: 287, column: 80, scope: !3688)
!3717 = !DILocation(line: 287, column: 72, scope: !3688)
!3718 = !DILocation(line: 287, column: 92, scope: !3688)
!3719 = !DILocation(line: 287, column: 84, scope: !3688)
!3720 = !DILocation(line: 287, column: 96, scope: !3688)
!3721 = !DILocation(line: 287, column: 5, scope: !3688)
!3722 = !DILocation(line: 290, column: 34, scope: !3688)
!3723 = !DILocation(line: 290, column: 38, scope: !3688)
!3724 = !DILocation(line: 290, column: 49, scope: !3688)
!3725 = !DILocation(line: 290, column: 41, scope: !3688)
!3726 = !DILocation(line: 290, column: 61, scope: !3688)
!3727 = !DILocation(line: 290, column: 53, scope: !3688)
!3728 = !DILocation(line: 290, column: 73, scope: !3688)
!3729 = !DILocation(line: 290, column: 65, scope: !3688)
!3730 = !DILocation(line: 290, column: 77, scope: !3688)
!3731 = !DILocation(line: 290, column: 5, scope: !3688)
!3732 = !DILocation(line: 292, column: 1, scope: !3688)
!3733 = distinct !DISubprogram(name: "mayo_generic_m_calculate_PS", scope: !654, file: !654, line: 151, type: !3734, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !68)
!3734 = !DISubroutineType(types: !3735)
!3735 = !{null, !657, !657, !657, !97, !457, !457, !457, !457, !52}
!3736 = !DILocalVariable(name: "P1", arg: 1, scope: !3733, file: !654, line: 151, type: !657)
!3737 = !DILocation(line: 151, column: 64, scope: !3733)
!3738 = !DILocalVariable(name: "P2", arg: 2, scope: !3733, file: !654, line: 151, type: !657)
!3739 = !DILocation(line: 151, column: 84, scope: !3733)
!3740 = !DILocalVariable(name: "P3", arg: 3, scope: !3733, file: !654, line: 151, type: !657)
!3741 = !DILocation(line: 151, column: 104, scope: !3733)
!3742 = !DILocalVariable(name: "S", arg: 4, scope: !3733, file: !654, line: 151, type: !97)
!3743 = !DILocation(line: 151, column: 129, scope: !3733)
!3744 = !DILocalVariable(name: "m", arg: 5, scope: !3733, file: !654, line: 152, type: !457)
!3745 = !DILocation(line: 152, column: 58, scope: !3733)
!3746 = !DILocalVariable(name: "v", arg: 6, scope: !3733, file: !654, line: 152, type: !457)
!3747 = !DILocation(line: 152, column: 71, scope: !3733)
!3748 = !DILocalVariable(name: "o", arg: 7, scope: !3733, file: !654, line: 152, type: !457)
!3749 = !DILocation(line: 152, column: 84, scope: !3733)
!3750 = !DILocalVariable(name: "k", arg: 8, scope: !3733, file: !654, line: 152, type: !457)
!3751 = !DILocation(line: 152, column: 97, scope: !3733)
!3752 = !DILocalVariable(name: "PS", arg: 9, scope: !3733, file: !654, line: 152, type: !52)
!3753 = !DILocation(line: 152, column: 110, scope: !3733)
!3754 = !DILocalVariable(name: "n", scope: !3733, file: !654, line: 154, type: !457)
!3755 = !DILocation(line: 154, column: 15, scope: !3733)
!3756 = !DILocation(line: 154, column: 19, scope: !3733)
!3757 = !DILocation(line: 154, column: 23, scope: !3733)
!3758 = !DILocation(line: 154, column: 21, scope: !3733)
!3759 = !DILocalVariable(name: "m_vec_limbs", scope: !3733, file: !654, line: 155, type: !457)
!3760 = !DILocation(line: 155, column: 15, scope: !3733)
!3761 = !DILocation(line: 155, column: 30, scope: !3733)
!3762 = !DILocation(line: 155, column: 32, scope: !3733)
!3763 = !DILocation(line: 155, column: 37, scope: !3733)
!3764 = !DILocalVariable(name: "accumulator", scope: !3733, file: !654, line: 157, type: !3765)
!3765 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 17031168, elements: !3766)
!3766 = !{!3767}
!3767 = !DISubrange(count: 266112)
!3768 = !DILocation(line: 157, column: 14, scope: !3733)
!3769 = !DILocalVariable(name: "P1_used", scope: !3733, file: !654, line: 158, type: !82)
!3770 = !DILocation(line: 158, column: 9, scope: !3733)
!3771 = !DILocalVariable(name: "row", scope: !3772, file: !654, line: 159, type: !82)
!3772 = distinct !DILexicalBlock(scope: !3733, file: !654, line: 159, column: 5)
!3773 = !DILocation(line: 159, column: 14, scope: !3772)
!3774 = !DILocation(line: 159, column: 10, scope: !3772)
!3775 = !DILocation(line: 159, column: 23, scope: !3776)
!3776 = distinct !DILexicalBlock(scope: !3772, file: !654, line: 159, column: 5)
!3777 = !DILocation(line: 159, column: 29, scope: !3776)
!3778 = !DILocation(line: 159, column: 27, scope: !3776)
!3779 = !DILocation(line: 159, column: 5, scope: !3772)
!3780 = !DILocalVariable(name: "j", scope: !3781, file: !654, line: 160, type: !82)
!3781 = distinct !DILexicalBlock(scope: !3782, file: !654, line: 160, column: 9)
!3782 = distinct !DILexicalBlock(scope: !3776, file: !654, line: 159, column: 39)
!3783 = !DILocation(line: 160, column: 18, scope: !3781)
!3784 = !DILocation(line: 160, column: 22, scope: !3781)
!3785 = !DILocation(line: 160, column: 14, scope: !3781)
!3786 = !DILocation(line: 160, column: 27, scope: !3787)
!3787 = distinct !DILexicalBlock(scope: !3781, file: !654, line: 160, column: 9)
!3788 = !DILocation(line: 160, column: 31, scope: !3787)
!3789 = !DILocation(line: 160, column: 29, scope: !3787)
!3790 = !DILocation(line: 160, column: 9, scope: !3781)
!3791 = !DILocalVariable(name: "col", scope: !3792, file: !654, line: 161, type: !82)
!3792 = distinct !DILexicalBlock(scope: !3793, file: !654, line: 161, column: 13)
!3793 = distinct !DILexicalBlock(scope: !3787, file: !654, line: 160, column: 39)
!3794 = !DILocation(line: 161, column: 22, scope: !3792)
!3795 = !DILocation(line: 161, column: 18, scope: !3792)
!3796 = !DILocation(line: 161, column: 31, scope: !3797)
!3797 = distinct !DILexicalBlock(scope: !3792, file: !654, line: 161, column: 13)
!3798 = !DILocation(line: 161, column: 37, scope: !3797)
!3799 = !DILocation(line: 161, column: 35, scope: !3797)
!3800 = !DILocation(line: 161, column: 13, scope: !3792)
!3801 = !DILocation(line: 162, column: 27, scope: !3802)
!3802 = distinct !DILexicalBlock(scope: !3797, file: !654, line: 161, column: 47)
!3803 = !DILocation(line: 162, column: 40, scope: !3802)
!3804 = !DILocation(line: 162, column: 46, scope: !3802)
!3805 = !DILocation(line: 162, column: 56, scope: !3802)
!3806 = !DILocation(line: 162, column: 54, scope: !3802)
!3807 = !DILocation(line: 162, column: 43, scope: !3802)
!3808 = !DILocation(line: 162, column: 70, scope: !3802)
!3809 = !DILocation(line: 162, column: 87, scope: !3802)
!3810 = !DILocation(line: 162, column: 93, scope: !3802)
!3811 = !DILocation(line: 162, column: 91, scope: !3802)
!3812 = !DILocation(line: 162, column: 97, scope: !3802)
!3813 = !DILocation(line: 162, column: 95, scope: !3802)
!3814 = !DILocation(line: 162, column: 102, scope: !3802)
!3815 = !DILocation(line: 162, column: 109, scope: !3802)
!3816 = !DILocation(line: 162, column: 111, scope: !3802)
!3817 = !DILocation(line: 162, column: 117, scope: !3802)
!3818 = !DILocation(line: 162, column: 115, scope: !3802)
!3819 = !DILocation(line: 162, column: 121, scope: !3802)
!3820 = !DILocation(line: 162, column: 119, scope: !3802)
!3821 = !DILocation(line: 162, column: 107, scope: !3802)
!3822 = !DILocation(line: 162, column: 126, scope: !3802)
!3823 = !DILocation(line: 162, column: 125, scope: !3802)
!3824 = !DILocation(line: 162, column: 82, scope: !3802)
!3825 = !DILocation(line: 162, column: 17, scope: !3802)
!3826 = !DILocation(line: 163, column: 13, scope: !3802)
!3827 = !DILocation(line: 161, column: 43, scope: !3797)
!3828 = !DILocation(line: 161, column: 13, scope: !3797)
!3829 = distinct !{!3829, !3800, !3830, !143}
!3830 = !DILocation(line: 163, column: 13, scope: !3792)
!3831 = !DILocation(line: 164, column: 21, scope: !3793)
!3832 = !DILocation(line: 165, column: 9, scope: !3793)
!3833 = !DILocation(line: 160, column: 35, scope: !3787)
!3834 = !DILocation(line: 160, column: 9, scope: !3787)
!3835 = distinct !{!3835, !3790, !3836, !143}
!3836 = !DILocation(line: 165, column: 9, scope: !3781)
!3837 = !DILocalVariable(name: "j", scope: !3838, file: !654, line: 167, type: !82)
!3838 = distinct !DILexicalBlock(scope: !3782, file: !654, line: 167, column: 9)
!3839 = !DILocation(line: 167, column: 18, scope: !3838)
!3840 = !DILocation(line: 167, column: 14, scope: !3838)
!3841 = !DILocation(line: 167, column: 25, scope: !3842)
!3842 = distinct !DILexicalBlock(scope: !3838, file: !654, line: 167, column: 9)
!3843 = !DILocation(line: 167, column: 29, scope: !3842)
!3844 = !DILocation(line: 167, column: 27, scope: !3842)
!3845 = !DILocation(line: 167, column: 9, scope: !3838)
!3846 = !DILocalVariable(name: "col", scope: !3847, file: !654, line: 168, type: !82)
!3847 = distinct !DILexicalBlock(scope: !3848, file: !654, line: 168, column: 13)
!3848 = distinct !DILexicalBlock(scope: !3842, file: !654, line: 167, column: 37)
!3849 = !DILocation(line: 168, column: 22, scope: !3847)
!3850 = !DILocation(line: 168, column: 18, scope: !3847)
!3851 = !DILocation(line: 168, column: 31, scope: !3852)
!3852 = distinct !DILexicalBlock(scope: !3847, file: !654, line: 168, column: 13)
!3853 = !DILocation(line: 168, column: 37, scope: !3852)
!3854 = !DILocation(line: 168, column: 35, scope: !3852)
!3855 = !DILocation(line: 168, column: 13, scope: !3847)
!3856 = !DILocation(line: 169, column: 27, scope: !3857)
!3857 = distinct !DILexicalBlock(scope: !3852, file: !654, line: 168, column: 47)
!3858 = !DILocation(line: 169, column: 40, scope: !3857)
!3859 = !DILocation(line: 169, column: 46, scope: !3857)
!3860 = !DILocation(line: 169, column: 52, scope: !3857)
!3861 = !DILocation(line: 169, column: 50, scope: !3857)
!3862 = !DILocation(line: 169, column: 56, scope: !3857)
!3863 = !DILocation(line: 169, column: 54, scope: !3857)
!3864 = !DILocation(line: 169, column: 59, scope: !3857)
!3865 = !DILocation(line: 169, column: 58, scope: !3857)
!3866 = !DILocation(line: 169, column: 43, scope: !3857)
!3867 = !DILocation(line: 169, column: 72, scope: !3857)
!3868 = !DILocation(line: 169, column: 89, scope: !3857)
!3869 = !DILocation(line: 169, column: 95, scope: !3857)
!3870 = !DILocation(line: 169, column: 93, scope: !3857)
!3871 = !DILocation(line: 169, column: 99, scope: !3857)
!3872 = !DILocation(line: 169, column: 97, scope: !3857)
!3873 = !DILocation(line: 169, column: 104, scope: !3857)
!3874 = !DILocation(line: 169, column: 111, scope: !3857)
!3875 = !DILocation(line: 169, column: 114, scope: !3857)
!3876 = !DILocation(line: 169, column: 120, scope: !3857)
!3877 = !DILocation(line: 169, column: 118, scope: !3857)
!3878 = !DILocation(line: 169, column: 125, scope: !3857)
!3879 = !DILocation(line: 169, column: 123, scope: !3857)
!3880 = !DILocation(line: 169, column: 129, scope: !3857)
!3881 = !DILocation(line: 169, column: 127, scope: !3857)
!3882 = !DILocation(line: 169, column: 109, scope: !3857)
!3883 = !DILocation(line: 169, column: 135, scope: !3857)
!3884 = !DILocation(line: 169, column: 133, scope: !3857)
!3885 = !DILocation(line: 169, column: 84, scope: !3857)
!3886 = !DILocation(line: 169, column: 17, scope: !3857)
!3887 = !DILocation(line: 170, column: 13, scope: !3857)
!3888 = !DILocation(line: 168, column: 43, scope: !3852)
!3889 = !DILocation(line: 168, column: 13, scope: !3852)
!3890 = distinct !{!3890, !3855, !3891, !143}
!3891 = !DILocation(line: 170, column: 13, scope: !3847)
!3892 = !DILocation(line: 171, column: 9, scope: !3848)
!3893 = !DILocation(line: 167, column: 33, scope: !3842)
!3894 = !DILocation(line: 167, column: 9, scope: !3842)
!3895 = distinct !{!3895, !3845, !3896, !143}
!3896 = !DILocation(line: 171, column: 9, scope: !3838)
!3897 = !DILocation(line: 172, column: 5, scope: !3782)
!3898 = !DILocation(line: 159, column: 35, scope: !3776)
!3899 = !DILocation(line: 159, column: 5, scope: !3776)
!3900 = distinct !{!3900, !3779, !3901, !143}
!3901 = !DILocation(line: 172, column: 5, scope: !3772)
!3902 = !DILocalVariable(name: "P3_used", scope: !3733, file: !654, line: 174, type: !82)
!3903 = !DILocation(line: 174, column: 9, scope: !3733)
!3904 = !DILocalVariable(name: "row", scope: !3905, file: !654, line: 175, type: !82)
!3905 = distinct !DILexicalBlock(scope: !3733, file: !654, line: 175, column: 5)
!3906 = !DILocation(line: 175, column: 14, scope: !3905)
!3907 = !DILocation(line: 175, column: 20, scope: !3905)
!3908 = !DILocation(line: 175, column: 10, scope: !3905)
!3909 = !DILocation(line: 175, column: 23, scope: !3910)
!3910 = distinct !DILexicalBlock(scope: !3905, file: !654, line: 175, column: 5)
!3911 = !DILocation(line: 175, column: 29, scope: !3910)
!3912 = !DILocation(line: 175, column: 27, scope: !3910)
!3913 = !DILocation(line: 175, column: 5, scope: !3905)
!3914 = !DILocalVariable(name: "j", scope: !3915, file: !654, line: 176, type: !82)
!3915 = distinct !DILexicalBlock(scope: !3916, file: !654, line: 176, column: 9)
!3916 = distinct !DILexicalBlock(scope: !3910, file: !654, line: 175, column: 39)
!3917 = !DILocation(line: 176, column: 18, scope: !3915)
!3918 = !DILocation(line: 176, column: 22, scope: !3915)
!3919 = !DILocation(line: 176, column: 14, scope: !3915)
!3920 = !DILocation(line: 176, column: 27, scope: !3921)
!3921 = distinct !DILexicalBlock(scope: !3915, file: !654, line: 176, column: 9)
!3922 = !DILocation(line: 176, column: 31, scope: !3921)
!3923 = !DILocation(line: 176, column: 29, scope: !3921)
!3924 = !DILocation(line: 176, column: 9, scope: !3915)
!3925 = !DILocalVariable(name: "col", scope: !3926, file: !654, line: 177, type: !82)
!3926 = distinct !DILexicalBlock(scope: !3927, file: !654, line: 177, column: 13)
!3927 = distinct !DILexicalBlock(scope: !3921, file: !654, line: 176, column: 39)
!3928 = !DILocation(line: 177, column: 22, scope: !3926)
!3929 = !DILocation(line: 177, column: 18, scope: !3926)
!3930 = !DILocation(line: 177, column: 31, scope: !3931)
!3931 = distinct !DILexicalBlock(scope: !3926, file: !654, line: 177, column: 13)
!3932 = !DILocation(line: 177, column: 37, scope: !3931)
!3933 = !DILocation(line: 177, column: 35, scope: !3931)
!3934 = !DILocation(line: 177, column: 13, scope: !3926)
!3935 = !DILocation(line: 178, column: 27, scope: !3936)
!3936 = distinct !DILexicalBlock(scope: !3931, file: !654, line: 177, column: 47)
!3937 = !DILocation(line: 178, column: 40, scope: !3936)
!3938 = !DILocation(line: 178, column: 45, scope: !3936)
!3939 = !DILocation(line: 178, column: 55, scope: !3936)
!3940 = !DILocation(line: 178, column: 53, scope: !3936)
!3941 = !DILocation(line: 178, column: 43, scope: !3936)
!3942 = !DILocation(line: 178, column: 68, scope: !3936)
!3943 = !DILocation(line: 178, column: 85, scope: !3936)
!3944 = !DILocation(line: 178, column: 91, scope: !3936)
!3945 = !DILocation(line: 178, column: 89, scope: !3936)
!3946 = !DILocation(line: 178, column: 95, scope: !3936)
!3947 = !DILocation(line: 178, column: 93, scope: !3936)
!3948 = !DILocation(line: 178, column: 100, scope: !3936)
!3949 = !DILocation(line: 178, column: 107, scope: !3936)
!3950 = !DILocation(line: 178, column: 109, scope: !3936)
!3951 = !DILocation(line: 178, column: 115, scope: !3936)
!3952 = !DILocation(line: 178, column: 113, scope: !3936)
!3953 = !DILocation(line: 178, column: 119, scope: !3936)
!3954 = !DILocation(line: 178, column: 117, scope: !3936)
!3955 = !DILocation(line: 178, column: 105, scope: !3936)
!3956 = !DILocation(line: 178, column: 125, scope: !3936)
!3957 = !DILocation(line: 178, column: 123, scope: !3936)
!3958 = !DILocation(line: 178, column: 80, scope: !3936)
!3959 = !DILocation(line: 178, column: 17, scope: !3936)
!3960 = !DILocation(line: 179, column: 13, scope: !3936)
!3961 = !DILocation(line: 177, column: 43, scope: !3931)
!3962 = !DILocation(line: 177, column: 13, scope: !3931)
!3963 = distinct !{!3963, !3934, !3964, !143}
!3964 = !DILocation(line: 179, column: 13, scope: !3926)
!3965 = !DILocation(line: 180, column: 21, scope: !3927)
!3966 = !DILocation(line: 181, column: 9, scope: !3927)
!3967 = !DILocation(line: 176, column: 35, scope: !3921)
!3968 = !DILocation(line: 176, column: 9, scope: !3921)
!3969 = distinct !{!3969, !3924, !3970, !143}
!3970 = !DILocation(line: 181, column: 9, scope: !3915)
!3971 = !DILocation(line: 182, column: 5, scope: !3916)
!3972 = !DILocation(line: 175, column: 35, scope: !3910)
!3973 = !DILocation(line: 175, column: 5, scope: !3910)
!3974 = distinct !{!3974, !3913, !3975, !143}
!3975 = !DILocation(line: 182, column: 5, scope: !3905)
!3976 = !DILocalVariable(name: "i", scope: !3733, file: !654, line: 185, type: !82)
!3977 = !DILocation(line: 185, column: 9, scope: !3733)
!3978 = !DILocation(line: 186, column: 5, scope: !3733)
!3979 = !DILocation(line: 186, column: 12, scope: !3733)
!3980 = !DILocation(line: 186, column: 16, scope: !3733)
!3981 = !DILocation(line: 186, column: 20, scope: !3733)
!3982 = !DILocation(line: 186, column: 18, scope: !3733)
!3983 = !DILocation(line: 186, column: 14, scope: !3733)
!3984 = !DILocation(line: 187, column: 29, scope: !3985)
!3985 = distinct !DILexicalBlock(scope: !3733, file: !654, line: 186, column: 23)
!3986 = !DILocation(line: 187, column: 42, scope: !3985)
!3987 = !DILocation(line: 187, column: 56, scope: !3985)
!3988 = !DILocation(line: 187, column: 58, scope: !3985)
!3989 = !DILocation(line: 187, column: 65, scope: !3985)
!3990 = !DILocation(line: 187, column: 63, scope: !3985)
!3991 = !DILocation(line: 187, column: 54, scope: !3985)
!3992 = !DILocation(line: 187, column: 78, scope: !3985)
!3993 = !DILocation(line: 187, column: 83, scope: !3985)
!3994 = !DILocation(line: 187, column: 87, scope: !3985)
!3995 = !DILocation(line: 187, column: 85, scope: !3985)
!3996 = !DILocation(line: 187, column: 81, scope: !3985)
!3997 = !DILocation(line: 187, column: 9, scope: !3985)
!3998 = !DILocation(line: 188, column: 10, scope: !3985)
!3999 = distinct !{!3999, !3978, !4000, !143}
!4000 = !DILocation(line: 189, column: 5, scope: !3733)
!4001 = !DILocation(line: 191, column: 1, scope: !3733)
!4002 = distinct !DISubprogram(name: "mayo_generic_m_calculate_SPS", scope: !654, file: !654, line: 195, type: !4003, scopeLine: 195, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !68)
!4003 = !DISubroutineType(types: !4004)
!4004 = !{null, !657, !97, !82, !82, !82, !52}
!4005 = !DILocalVariable(name: "PS", arg: 1, scope: !4002, file: !654, line: 195, type: !657)
!4006 = !DILocation(line: 195, column: 65, scope: !4002)
!4007 = !DILocalVariable(name: "S", arg: 2, scope: !4002, file: !654, line: 195, type: !97)
!4008 = !DILocation(line: 195, column: 90, scope: !4002)
!4009 = !DILocalVariable(name: "m", arg: 3, scope: !4002, file: !654, line: 195, type: !82)
!4010 = !DILocation(line: 195, column: 97, scope: !4002)
!4011 = !DILocalVariable(name: "k", arg: 4, scope: !4002, file: !654, line: 195, type: !82)
!4012 = !DILocation(line: 195, column: 104, scope: !4002)
!4013 = !DILocalVariable(name: "n", arg: 5, scope: !4002, file: !654, line: 195, type: !82)
!4014 = !DILocation(line: 195, column: 112, scope: !4002)
!4015 = !DILocalVariable(name: "SPS", arg: 6, scope: !4002, file: !654, line: 195, type: !52)
!4016 = !DILocation(line: 195, column: 125, scope: !4002)
!4017 = !DILocalVariable(name: "accumulator", scope: !4002, file: !654, line: 196, type: !4018)
!4018 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 1327104, elements: !4019)
!4019 = !{!4020}
!4020 = !DISubrange(count: 20736)
!4021 = !DILocation(line: 196, column: 14, scope: !4002)
!4022 = !DILocalVariable(name: "m_vec_limbs", scope: !4002, file: !654, line: 197, type: !457)
!4023 = !DILocation(line: 197, column: 15, scope: !4002)
!4024 = !DILocation(line: 197, column: 30, scope: !4002)
!4025 = !DILocation(line: 197, column: 32, scope: !4002)
!4026 = !DILocation(line: 197, column: 37, scope: !4002)
!4027 = !DILocalVariable(name: "row", scope: !4028, file: !654, line: 198, type: !82)
!4028 = distinct !DILexicalBlock(scope: !4002, file: !654, line: 198, column: 5)
!4029 = !DILocation(line: 198, column: 14, scope: !4028)
!4030 = !DILocation(line: 198, column: 10, scope: !4028)
!4031 = !DILocation(line: 198, column: 23, scope: !4032)
!4032 = distinct !DILexicalBlock(scope: !4028, file: !654, line: 198, column: 5)
!4033 = !DILocation(line: 198, column: 29, scope: !4032)
!4034 = !DILocation(line: 198, column: 27, scope: !4032)
!4035 = !DILocation(line: 198, column: 5, scope: !4028)
!4036 = !DILocalVariable(name: "j", scope: !4037, file: !654, line: 199, type: !82)
!4037 = distinct !DILexicalBlock(scope: !4038, file: !654, line: 199, column: 9)
!4038 = distinct !DILexicalBlock(scope: !4032, file: !654, line: 198, column: 39)
!4039 = !DILocation(line: 199, column: 18, scope: !4037)
!4040 = !DILocation(line: 199, column: 14, scope: !4037)
!4041 = !DILocation(line: 199, column: 25, scope: !4042)
!4042 = distinct !DILexicalBlock(scope: !4037, file: !654, line: 199, column: 9)
!4043 = !DILocation(line: 199, column: 29, scope: !4042)
!4044 = !DILocation(line: 199, column: 27, scope: !4042)
!4045 = !DILocation(line: 199, column: 9, scope: !4037)
!4046 = !DILocalVariable(name: "col", scope: !4047, file: !654, line: 200, type: !82)
!4047 = distinct !DILexicalBlock(scope: !4048, file: !654, line: 200, column: 13)
!4048 = distinct !DILexicalBlock(scope: !4042, file: !654, line: 199, column: 37)
!4049 = !DILocation(line: 200, column: 22, scope: !4047)
!4050 = !DILocation(line: 200, column: 18, scope: !4047)
!4051 = !DILocation(line: 200, column: 31, scope: !4052)
!4052 = distinct !DILexicalBlock(scope: !4047, file: !654, line: 200, column: 13)
!4053 = !DILocation(line: 200, column: 37, scope: !4052)
!4054 = !DILocation(line: 200, column: 35, scope: !4052)
!4055 = !DILocation(line: 200, column: 13, scope: !4047)
!4056 = !DILocation(line: 201, column: 31, scope: !4057)
!4057 = distinct !DILexicalBlock(scope: !4052, file: !654, line: 200, column: 50)
!4058 = !DILocation(line: 201, column: 44, scope: !4057)
!4059 = !DILocation(line: 201, column: 50, scope: !4057)
!4060 = !DILocation(line: 201, column: 54, scope: !4057)
!4061 = !DILocation(line: 201, column: 52, scope: !4057)
!4062 = !DILocation(line: 201, column: 58, scope: !4057)
!4063 = !DILocation(line: 201, column: 56, scope: !4057)
!4064 = !DILocation(line: 201, column: 65, scope: !4057)
!4065 = !DILocation(line: 201, column: 63, scope: !4057)
!4066 = !DILocation(line: 201, column: 47, scope: !4057)
!4067 = !DILocation(line: 201, column: 78, scope: !4057)
!4068 = !DILocation(line: 201, column: 95, scope: !4057)
!4069 = !DILocation(line: 201, column: 101, scope: !4057)
!4070 = !DILocation(line: 201, column: 99, scope: !4057)
!4071 = !DILocation(line: 201, column: 105, scope: !4057)
!4072 = !DILocation(line: 201, column: 103, scope: !4057)
!4073 = !DILocation(line: 201, column: 110, scope: !4057)
!4074 = !DILocation(line: 201, column: 117, scope: !4057)
!4075 = !DILocation(line: 201, column: 119, scope: !4057)
!4076 = !DILocation(line: 201, column: 125, scope: !4057)
!4077 = !DILocation(line: 201, column: 123, scope: !4057)
!4078 = !DILocation(line: 201, column: 129, scope: !4057)
!4079 = !DILocation(line: 201, column: 127, scope: !4057)
!4080 = !DILocation(line: 201, column: 115, scope: !4057)
!4081 = !DILocation(line: 201, column: 134, scope: !4057)
!4082 = !DILocation(line: 201, column: 133, scope: !4057)
!4083 = !DILocation(line: 201, column: 90, scope: !4057)
!4084 = !DILocation(line: 201, column: 21, scope: !4057)
!4085 = !DILocation(line: 202, column: 13, scope: !4057)
!4086 = !DILocation(line: 200, column: 44, scope: !4052)
!4087 = !DILocation(line: 200, column: 13, scope: !4052)
!4088 = distinct !{!4088, !4055, !4089, !143}
!4089 = !DILocation(line: 202, column: 13, scope: !4047)
!4090 = !DILocation(line: 203, column: 9, scope: !4048)
!4091 = !DILocation(line: 199, column: 33, scope: !4042)
!4092 = !DILocation(line: 199, column: 9, scope: !4042)
!4093 = distinct !{!4093, !4045, !4094, !143}
!4094 = !DILocation(line: 203, column: 9, scope: !4037)
!4095 = !DILocation(line: 204, column: 5, scope: !4038)
!4096 = !DILocation(line: 198, column: 35, scope: !4032)
!4097 = !DILocation(line: 198, column: 5, scope: !4032)
!4098 = distinct !{!4098, !4035, !4099, !143}
!4099 = !DILocation(line: 204, column: 5, scope: !4028)
!4100 = !DILocalVariable(name: "i", scope: !4002, file: !654, line: 207, type: !82)
!4101 = !DILocation(line: 207, column: 9, scope: !4002)
!4102 = !DILocation(line: 208, column: 5, scope: !4002)
!4103 = !DILocation(line: 208, column: 12, scope: !4002)
!4104 = !DILocation(line: 208, column: 16, scope: !4002)
!4105 = !DILocation(line: 208, column: 18, scope: !4002)
!4106 = !DILocation(line: 208, column: 17, scope: !4002)
!4107 = !DILocation(line: 208, column: 14, scope: !4002)
!4108 = !DILocation(line: 209, column: 29, scope: !4109)
!4109 = distinct !DILexicalBlock(scope: !4002, file: !654, line: 208, column: 21)
!4110 = !DILocation(line: 209, column: 42, scope: !4109)
!4111 = !DILocation(line: 209, column: 56, scope: !4109)
!4112 = !DILocation(line: 209, column: 58, scope: !4109)
!4113 = !DILocation(line: 209, column: 65, scope: !4109)
!4114 = !DILocation(line: 209, column: 63, scope: !4109)
!4115 = !DILocation(line: 209, column: 54, scope: !4109)
!4116 = !DILocation(line: 209, column: 78, scope: !4109)
!4117 = !DILocation(line: 209, column: 84, scope: !4109)
!4118 = !DILocation(line: 209, column: 88, scope: !4109)
!4119 = !DILocation(line: 209, column: 86, scope: !4109)
!4120 = !DILocation(line: 209, column: 82, scope: !4109)
!4121 = !DILocation(line: 209, column: 9, scope: !4109)
!4122 = !DILocation(line: 210, column: 10, scope: !4109)
!4123 = distinct !{!4123, !4102, !4124, !143}
!4124 = !DILocation(line: 211, column: 5, scope: !4002)
!4125 = !DILocation(line: 212, column: 1, scope: !4002)
!4126 = distinct !DISubprogram(name: "m_vec_add", scope: !856, file: !856, line: 17, type: !4127, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !68)
!4127 = !DISubroutineType(types: !4128)
!4128 = !{null, !82, !657, !52}
!4129 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !4126, file: !856, line: 17, type: !82)
!4130 = !DILocation(line: 17, column: 27, scope: !4126)
!4131 = !DILocalVariable(name: "in", arg: 2, scope: !4126, file: !856, line: 17, type: !657)
!4132 = !DILocation(line: 17, column: 56, scope: !4126)
!4133 = !DILocalVariable(name: "acc", arg: 3, scope: !4126, file: !856, line: 17, type: !52)
!4134 = !DILocation(line: 17, column: 70, scope: !4126)
!4135 = !DILocalVariable(name: "i", scope: !4136, file: !856, line: 18, type: !82)
!4136 = distinct !DILexicalBlock(scope: !4126, file: !856, line: 18, column: 5)
!4137 = !DILocation(line: 18, column: 14, scope: !4136)
!4138 = !DILocation(line: 18, column: 10, scope: !4136)
!4139 = !DILocation(line: 18, column: 21, scope: !4140)
!4140 = distinct !DILexicalBlock(scope: !4136, file: !856, line: 18, column: 5)
!4141 = !DILocation(line: 18, column: 25, scope: !4140)
!4142 = !DILocation(line: 18, column: 23, scope: !4140)
!4143 = !DILocation(line: 18, column: 5, scope: !4136)
!4144 = !DILocation(line: 19, column: 19, scope: !4145)
!4145 = distinct !DILexicalBlock(scope: !4140, file: !856, line: 18, column: 43)
!4146 = !DILocation(line: 19, column: 22, scope: !4145)
!4147 = !DILocation(line: 19, column: 9, scope: !4145)
!4148 = !DILocation(line: 19, column: 13, scope: !4145)
!4149 = !DILocation(line: 19, column: 16, scope: !4145)
!4150 = !DILocation(line: 20, column: 5, scope: !4145)
!4151 = !DILocation(line: 18, column: 39, scope: !4140)
!4152 = !DILocation(line: 18, column: 5, scope: !4140)
!4153 = distinct !{!4153, !4143, !4154, !143}
!4154 = !DILocation(line: 20, column: 5, scope: !4136)
!4155 = !DILocation(line: 21, column: 1, scope: !4126)
!4156 = distinct !DISubprogram(name: "m_vec_multiply_bins", scope: !856, file: !856, line: 49, type: !4157, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !68)
!4157 = !DISubroutineType(types: !4158)
!4158 = !{null, !82, !52, !52}
!4159 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !4156, file: !856, line: 49, type: !82)
!4160 = !DILocation(line: 49, column: 38, scope: !4156)
!4161 = !DILocalVariable(name: "bins", arg: 2, scope: !4156, file: !856, line: 49, type: !52)
!4162 = !DILocation(line: 49, column: 61, scope: !4156)
!4163 = !DILocalVariable(name: "out", arg: 3, scope: !4156, file: !856, line: 49, type: !52)
!4164 = !DILocation(line: 49, column: 77, scope: !4156)
!4165 = !DILocation(line: 51, column: 26, scope: !4156)
!4166 = !DILocation(line: 51, column: 39, scope: !4156)
!4167 = !DILocation(line: 51, column: 51, scope: !4156)
!4168 = !DILocation(line: 51, column: 49, scope: !4156)
!4169 = !DILocation(line: 51, column: 44, scope: !4156)
!4170 = !DILocation(line: 51, column: 64, scope: !4156)
!4171 = !DILocation(line: 51, column: 77, scope: !4156)
!4172 = !DILocation(line: 51, column: 75, scope: !4156)
!4173 = !DILocation(line: 51, column: 69, scope: !4156)
!4174 = !DILocation(line: 51, column: 5, scope: !4156)
!4175 = !DILocation(line: 52, column: 22, scope: !4156)
!4176 = !DILocation(line: 52, column: 35, scope: !4156)
!4177 = !DILocation(line: 52, column: 47, scope: !4156)
!4178 = !DILocation(line: 52, column: 45, scope: !4156)
!4179 = !DILocation(line: 52, column: 40, scope: !4156)
!4180 = !DILocation(line: 52, column: 60, scope: !4156)
!4181 = !DILocation(line: 52, column: 72, scope: !4156)
!4182 = !DILocation(line: 52, column: 70, scope: !4156)
!4183 = !DILocation(line: 52, column: 65, scope: !4156)
!4184 = !DILocation(line: 52, column: 5, scope: !4156)
!4185 = !DILocation(line: 53, column: 26, scope: !4156)
!4186 = !DILocation(line: 53, column: 39, scope: !4156)
!4187 = !DILocation(line: 53, column: 52, scope: !4156)
!4188 = !DILocation(line: 53, column: 50, scope: !4156)
!4189 = !DILocation(line: 53, column: 44, scope: !4156)
!4190 = !DILocation(line: 53, column: 65, scope: !4156)
!4191 = !DILocation(line: 53, column: 77, scope: !4156)
!4192 = !DILocation(line: 53, column: 75, scope: !4156)
!4193 = !DILocation(line: 53, column: 70, scope: !4156)
!4194 = !DILocation(line: 53, column: 5, scope: !4156)
!4195 = !DILocation(line: 54, column: 22, scope: !4156)
!4196 = !DILocation(line: 54, column: 35, scope: !4156)
!4197 = !DILocation(line: 54, column: 47, scope: !4156)
!4198 = !DILocation(line: 54, column: 45, scope: !4156)
!4199 = !DILocation(line: 54, column: 40, scope: !4156)
!4200 = !DILocation(line: 54, column: 60, scope: !4156)
!4201 = !DILocation(line: 54, column: 72, scope: !4156)
!4202 = !DILocation(line: 54, column: 70, scope: !4156)
!4203 = !DILocation(line: 54, column: 65, scope: !4156)
!4204 = !DILocation(line: 54, column: 5, scope: !4156)
!4205 = !DILocation(line: 55, column: 26, scope: !4156)
!4206 = !DILocation(line: 55, column: 39, scope: !4156)
!4207 = !DILocation(line: 55, column: 51, scope: !4156)
!4208 = !DILocation(line: 55, column: 49, scope: !4156)
!4209 = !DILocation(line: 55, column: 44, scope: !4156)
!4210 = !DILocation(line: 55, column: 64, scope: !4156)
!4211 = !DILocation(line: 55, column: 77, scope: !4156)
!4212 = !DILocation(line: 55, column: 75, scope: !4156)
!4213 = !DILocation(line: 55, column: 69, scope: !4156)
!4214 = !DILocation(line: 55, column: 5, scope: !4156)
!4215 = !DILocation(line: 56, column: 22, scope: !4156)
!4216 = !DILocation(line: 56, column: 35, scope: !4156)
!4217 = !DILocation(line: 56, column: 47, scope: !4156)
!4218 = !DILocation(line: 56, column: 45, scope: !4156)
!4219 = !DILocation(line: 56, column: 40, scope: !4156)
!4220 = !DILocation(line: 56, column: 60, scope: !4156)
!4221 = !DILocation(line: 56, column: 72, scope: !4156)
!4222 = !DILocation(line: 56, column: 70, scope: !4156)
!4223 = !DILocation(line: 56, column: 65, scope: !4156)
!4224 = !DILocation(line: 56, column: 5, scope: !4156)
!4225 = !DILocation(line: 57, column: 26, scope: !4156)
!4226 = !DILocation(line: 57, column: 39, scope: !4156)
!4227 = !DILocation(line: 57, column: 52, scope: !4156)
!4228 = !DILocation(line: 57, column: 50, scope: !4156)
!4229 = !DILocation(line: 57, column: 44, scope: !4156)
!4230 = !DILocation(line: 57, column: 65, scope: !4156)
!4231 = !DILocation(line: 57, column: 78, scope: !4156)
!4232 = !DILocation(line: 57, column: 76, scope: !4156)
!4233 = !DILocation(line: 57, column: 70, scope: !4156)
!4234 = !DILocation(line: 57, column: 5, scope: !4156)
!4235 = !DILocation(line: 58, column: 22, scope: !4156)
!4236 = !DILocation(line: 58, column: 35, scope: !4156)
!4237 = !DILocation(line: 58, column: 47, scope: !4156)
!4238 = !DILocation(line: 58, column: 45, scope: !4156)
!4239 = !DILocation(line: 58, column: 40, scope: !4156)
!4240 = !DILocation(line: 58, column: 60, scope: !4156)
!4241 = !DILocation(line: 58, column: 72, scope: !4156)
!4242 = !DILocation(line: 58, column: 70, scope: !4156)
!4243 = !DILocation(line: 58, column: 65, scope: !4156)
!4244 = !DILocation(line: 58, column: 5, scope: !4156)
!4245 = !DILocation(line: 59, column: 26, scope: !4156)
!4246 = !DILocation(line: 59, column: 39, scope: !4156)
!4247 = !DILocation(line: 59, column: 52, scope: !4156)
!4248 = !DILocation(line: 59, column: 50, scope: !4156)
!4249 = !DILocation(line: 59, column: 44, scope: !4156)
!4250 = !DILocation(line: 59, column: 65, scope: !4156)
!4251 = !DILocation(line: 59, column: 78, scope: !4156)
!4252 = !DILocation(line: 59, column: 76, scope: !4156)
!4253 = !DILocation(line: 59, column: 70, scope: !4156)
!4254 = !DILocation(line: 59, column: 5, scope: !4156)
!4255 = !DILocation(line: 60, column: 22, scope: !4156)
!4256 = !DILocation(line: 60, column: 35, scope: !4156)
!4257 = !DILocation(line: 60, column: 47, scope: !4156)
!4258 = !DILocation(line: 60, column: 45, scope: !4156)
!4259 = !DILocation(line: 60, column: 40, scope: !4156)
!4260 = !DILocation(line: 60, column: 60, scope: !4156)
!4261 = !DILocation(line: 60, column: 72, scope: !4156)
!4262 = !DILocation(line: 60, column: 70, scope: !4156)
!4263 = !DILocation(line: 60, column: 65, scope: !4156)
!4264 = !DILocation(line: 60, column: 5, scope: !4156)
!4265 = !DILocation(line: 61, column: 26, scope: !4156)
!4266 = !DILocation(line: 61, column: 39, scope: !4156)
!4267 = !DILocation(line: 61, column: 52, scope: !4156)
!4268 = !DILocation(line: 61, column: 50, scope: !4156)
!4269 = !DILocation(line: 61, column: 44, scope: !4156)
!4270 = !DILocation(line: 61, column: 65, scope: !4156)
!4271 = !DILocation(line: 61, column: 77, scope: !4156)
!4272 = !DILocation(line: 61, column: 75, scope: !4156)
!4273 = !DILocation(line: 61, column: 70, scope: !4156)
!4274 = !DILocation(line: 61, column: 5, scope: !4156)
!4275 = !DILocation(line: 62, column: 22, scope: !4156)
!4276 = !DILocation(line: 62, column: 35, scope: !4156)
!4277 = !DILocation(line: 62, column: 47, scope: !4156)
!4278 = !DILocation(line: 62, column: 45, scope: !4156)
!4279 = !DILocation(line: 62, column: 40, scope: !4156)
!4280 = !DILocation(line: 62, column: 60, scope: !4156)
!4281 = !DILocation(line: 62, column: 72, scope: !4156)
!4282 = !DILocation(line: 62, column: 70, scope: !4156)
!4283 = !DILocation(line: 62, column: 65, scope: !4156)
!4284 = !DILocation(line: 62, column: 5, scope: !4156)
!4285 = !DILocation(line: 63, column: 26, scope: !4156)
!4286 = !DILocation(line: 63, column: 39, scope: !4156)
!4287 = !DILocation(line: 63, column: 52, scope: !4156)
!4288 = !DILocation(line: 63, column: 50, scope: !4156)
!4289 = !DILocation(line: 63, column: 44, scope: !4156)
!4290 = !DILocation(line: 63, column: 65, scope: !4156)
!4291 = !DILocation(line: 63, column: 77, scope: !4156)
!4292 = !DILocation(line: 63, column: 75, scope: !4156)
!4293 = !DILocation(line: 63, column: 70, scope: !4156)
!4294 = !DILocation(line: 63, column: 5, scope: !4156)
!4295 = !DILocation(line: 64, column: 22, scope: !4156)
!4296 = !DILocation(line: 64, column: 35, scope: !4156)
!4297 = !DILocation(line: 64, column: 47, scope: !4156)
!4298 = !DILocation(line: 64, column: 45, scope: !4156)
!4299 = !DILocation(line: 64, column: 40, scope: !4156)
!4300 = !DILocation(line: 64, column: 60, scope: !4156)
!4301 = !DILocation(line: 64, column: 72, scope: !4156)
!4302 = !DILocation(line: 64, column: 70, scope: !4156)
!4303 = !DILocation(line: 64, column: 65, scope: !4156)
!4304 = !DILocation(line: 64, column: 5, scope: !4156)
!4305 = !DILocation(line: 65, column: 17, scope: !4156)
!4306 = !DILocation(line: 65, column: 30, scope: !4156)
!4307 = !DILocation(line: 65, column: 37, scope: !4156)
!4308 = !DILocation(line: 65, column: 35, scope: !4156)
!4309 = !DILocation(line: 65, column: 50, scope: !4156)
!4310 = !DILocation(line: 65, column: 5, scope: !4156)
!4311 = !DILocation(line: 66, column: 1, scope: !4156)
!4312 = distinct !DISubprogram(name: "m_vec_mul_add_x_inv", scope: !856, file: !856, line: 40, type: !4127, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !68)
!4313 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !4312, file: !856, line: 40, type: !82)
!4314 = !DILocation(line: 40, column: 38, scope: !4312)
!4315 = !DILocalVariable(name: "in", arg: 2, scope: !4312, file: !856, line: 40, type: !657)
!4316 = !DILocation(line: 40, column: 67, scope: !4312)
!4317 = !DILocalVariable(name: "acc", arg: 3, scope: !4312, file: !856, line: 40, type: !52)
!4318 = !DILocation(line: 40, column: 81, scope: !4312)
!4319 = !DILocalVariable(name: "mask_lsb", scope: !4312, file: !856, line: 41, type: !53)
!4320 = !DILocation(line: 41, column: 14, scope: !4312)
!4321 = !DILocalVariable(name: "i", scope: !4322, file: !856, line: 42, type: !82)
!4322 = distinct !DILexicalBlock(scope: !4312, file: !856, line: 42, column: 5)
!4323 = !DILocation(line: 42, column: 13, scope: !4322)
!4324 = !DILocation(line: 42, column: 9, scope: !4322)
!4325 = !DILocation(line: 42, column: 18, scope: !4326)
!4326 = distinct !DILexicalBlock(scope: !4322, file: !856, line: 42, column: 5)
!4327 = !DILocation(line: 42, column: 22, scope: !4326)
!4328 = !DILocation(line: 42, column: 20, scope: !4326)
!4329 = !DILocation(line: 42, column: 5, scope: !4322)
!4330 = !DILocalVariable(name: "t", scope: !4331, file: !856, line: 43, type: !53)
!4331 = distinct !DILexicalBlock(scope: !4326, file: !856, line: 42, column: 39)
!4332 = !DILocation(line: 43, column: 18, scope: !4331)
!4333 = !DILocation(line: 43, column: 22, scope: !4331)
!4334 = !DILocation(line: 43, column: 25, scope: !4331)
!4335 = !DILocation(line: 43, column: 30, scope: !4331)
!4336 = !DILocation(line: 43, column: 28, scope: !4331)
!4337 = !DILocation(line: 44, column: 21, scope: !4331)
!4338 = !DILocation(line: 44, column: 24, scope: !4331)
!4339 = !DILocation(line: 44, column: 29, scope: !4331)
!4340 = !DILocation(line: 44, column: 27, scope: !4331)
!4341 = !DILocation(line: 44, column: 32, scope: !4331)
!4342 = !DILocation(line: 44, column: 41, scope: !4331)
!4343 = !DILocation(line: 44, column: 43, scope: !4331)
!4344 = !DILocation(line: 44, column: 38, scope: !4331)
!4345 = !DILocation(line: 44, column: 9, scope: !4331)
!4346 = !DILocation(line: 44, column: 13, scope: !4331)
!4347 = !DILocation(line: 44, column: 16, scope: !4331)
!4348 = !DILocation(line: 45, column: 5, scope: !4331)
!4349 = !DILocation(line: 42, column: 36, scope: !4326)
!4350 = !DILocation(line: 42, column: 5, scope: !4326)
!4351 = distinct !{!4351, !4329, !4352, !143}
!4352 = !DILocation(line: 45, column: 5, scope: !4322)
!4353 = !DILocation(line: 46, column: 1, scope: !4312)
!4354 = distinct !DISubprogram(name: "m_vec_mul_add_x", scope: !856, file: !856, line: 31, type: !4127, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !68)
!4355 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !4354, file: !856, line: 31, type: !82)
!4356 = !DILocation(line: 31, column: 34, scope: !4354)
!4357 = !DILocalVariable(name: "in", arg: 2, scope: !4354, file: !856, line: 31, type: !657)
!4358 = !DILocation(line: 31, column: 63, scope: !4354)
!4359 = !DILocalVariable(name: "acc", arg: 3, scope: !4354, file: !856, line: 31, type: !52)
!4360 = !DILocation(line: 31, column: 77, scope: !4354)
!4361 = !DILocalVariable(name: "mask_msb", scope: !4354, file: !856, line: 32, type: !53)
!4362 = !DILocation(line: 32, column: 14, scope: !4354)
!4363 = !DILocalVariable(name: "i", scope: !4364, file: !856, line: 33, type: !82)
!4364 = distinct !DILexicalBlock(scope: !4354, file: !856, line: 33, column: 5)
!4365 = !DILocation(line: 33, column: 13, scope: !4364)
!4366 = !DILocation(line: 33, column: 9, scope: !4364)
!4367 = !DILocation(line: 33, column: 18, scope: !4368)
!4368 = distinct !DILexicalBlock(scope: !4364, file: !856, line: 33, column: 5)
!4369 = !DILocation(line: 33, column: 22, scope: !4368)
!4370 = !DILocation(line: 33, column: 20, scope: !4368)
!4371 = !DILocation(line: 33, column: 5, scope: !4364)
!4372 = !DILocalVariable(name: "t", scope: !4373, file: !856, line: 34, type: !53)
!4373 = distinct !DILexicalBlock(scope: !4368, file: !856, line: 33, column: 39)
!4374 = !DILocation(line: 34, column: 18, scope: !4373)
!4375 = !DILocation(line: 34, column: 22, scope: !4373)
!4376 = !DILocation(line: 34, column: 25, scope: !4373)
!4377 = !DILocation(line: 34, column: 30, scope: !4373)
!4378 = !DILocation(line: 34, column: 28, scope: !4373)
!4379 = !DILocation(line: 35, column: 21, scope: !4373)
!4380 = !DILocation(line: 35, column: 24, scope: !4373)
!4381 = !DILocation(line: 35, column: 29, scope: !4373)
!4382 = !DILocation(line: 35, column: 27, scope: !4373)
!4383 = !DILocation(line: 35, column: 32, scope: !4373)
!4384 = !DILocation(line: 35, column: 42, scope: !4373)
!4385 = !DILocation(line: 35, column: 44, scope: !4373)
!4386 = !DILocation(line: 35, column: 50, scope: !4373)
!4387 = !DILocation(line: 35, column: 38, scope: !4373)
!4388 = !DILocation(line: 35, column: 9, scope: !4373)
!4389 = !DILocation(line: 35, column: 13, scope: !4373)
!4390 = !DILocation(line: 35, column: 16, scope: !4373)
!4391 = !DILocation(line: 36, column: 5, scope: !4373)
!4392 = !DILocation(line: 33, column: 36, scope: !4368)
!4393 = !DILocation(line: 33, column: 5, scope: !4368)
!4394 = distinct !{!4394, !4371, !4395, !143}
!4395 = !DILocation(line: 36, column: 5, scope: !4364)
!4396 = !DILocation(line: 37, column: 1, scope: !4354)
!4397 = distinct !DISubprogram(name: "m_vec_copy", scope: !856, file: !856, line: 10, type: !4127, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !48, retainedNodes: !68)
!4398 = !DILocalVariable(name: "m_vec_limbs", arg: 1, scope: !4397, file: !856, line: 10, type: !82)
!4399 = !DILocation(line: 10, column: 28, scope: !4397)
!4400 = !DILocalVariable(name: "in", arg: 2, scope: !4397, file: !856, line: 10, type: !657)
!4401 = !DILocation(line: 10, column: 57, scope: !4397)
!4402 = !DILocalVariable(name: "out", arg: 3, scope: !4397, file: !856, line: 10, type: !52)
!4403 = !DILocation(line: 10, column: 71, scope: !4397)
!4404 = !DILocalVariable(name: "i", scope: !4405, file: !856, line: 11, type: !82)
!4405 = distinct !DILexicalBlock(scope: !4397, file: !856, line: 11, column: 5)
!4406 = !DILocation(line: 11, column: 14, scope: !4405)
!4407 = !DILocation(line: 11, column: 10, scope: !4405)
!4408 = !DILocation(line: 11, column: 21, scope: !4409)
!4409 = distinct !DILexicalBlock(scope: !4405, file: !856, line: 11, column: 5)
!4410 = !DILocation(line: 11, column: 25, scope: !4409)
!4411 = !DILocation(line: 11, column: 23, scope: !4409)
!4412 = !DILocation(line: 11, column: 5, scope: !4405)
!4413 = !DILocation(line: 12, column: 18, scope: !4414)
!4414 = distinct !DILexicalBlock(scope: !4409, file: !856, line: 11, column: 43)
!4415 = !DILocation(line: 12, column: 21, scope: !4414)
!4416 = !DILocation(line: 12, column: 9, scope: !4414)
!4417 = !DILocation(line: 12, column: 13, scope: !4414)
!4418 = !DILocation(line: 12, column: 16, scope: !4414)
!4419 = !DILocation(line: 13, column: 5, scope: !4414)
!4420 = !DILocation(line: 11, column: 39, scope: !4409)
!4421 = !DILocation(line: 11, column: 5, scope: !4409)
!4422 = distinct !{!4422, !4412, !4423, !143}
!4423 = !DILocation(line: 13, column: 5, scope: !4405)
!4424 = !DILocation(line: 14, column: 1, scope: !4397)
