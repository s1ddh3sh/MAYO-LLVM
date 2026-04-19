; ModuleID = 'test.c'
source_filename = "test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i8 @lincomb(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store i32 %2, ptr %7, align 4
  store i32 %3, ptr %8, align 4
  store i8 0, ptr %9, align 1
  store i32 0, ptr %10, align 4
  br label %11

11:                                               ; preds = %29, %4
  %12 = load i32, ptr %10, align 4
  %13 = load i32, ptr %7, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %36

15:                                               ; preds = %11
  %16 = load ptr, ptr %5, align 8
  %17 = load i32, ptr %10, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, ptr %16, i64 %18
  %20 = load i8, ptr %19, align 1
  %21 = load ptr, ptr %6, align 8
  %22 = load i8, ptr %21, align 1
  %23 = call zeroext i8 @mul_f(i8 noundef zeroext %20, i8 noundef zeroext %22)
  %24 = zext i8 %23 to i32
  %25 = load i8, ptr %9, align 1
  %26 = zext i8 %25 to i32
  %27 = xor i32 %24, %26
  %28 = trunc i32 %27 to i8
  store i8 %28, ptr %9, align 1
  br label %29

29:                                               ; preds = %15
  %30 = load i32, ptr %10, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, ptr %10, align 4
  %32 = load i32, ptr %8, align 4
  %33 = load ptr, ptr %6, align 8
  %34 = sext i32 %32 to i64
  %35 = getelementptr inbounds i8, ptr %33, i64 %34
  store ptr %35, ptr %6, align 8
  br label %11, !llvm.loop !6

36:                                               ; preds = %11
  %37 = load ptr, ptr %5, align 8
  %38 = load ptr, ptr %6, align 8
  %39 = icmp eq ptr %37, %38
  %40 = call zeroext i1 @assert(i1 noundef zeroext %39)
  %41 = load i8, ptr %9, align 1
  ret i8 %41
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @mul_f(i8 noundef zeroext %0, i8 noundef zeroext %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  store i8 %0, ptr %3, align 1
  store i8 %1, ptr %4, align 1
  %8 = load i8, ptr %3, align 1
  %9 = zext i8 %8 to i32
  %10 = and i32 %9, 1
  %11 = load i8, ptr %4, align 1
  %12 = zext i8 %11 to i32
  %13 = mul nsw i32 %10, %12
  %14 = trunc i32 %13 to i8
  store i8 %14, ptr %5, align 1
  %15 = load i8, ptr %3, align 1
  %16 = zext i8 %15 to i32
  %17 = and i32 %16, 2
  %18 = load i8, ptr %4, align 1
  %19 = zext i8 %18 to i32
  %20 = mul nsw i32 %17, %19
  %21 = load i8, ptr %5, align 1
  %22 = zext i8 %21 to i32
  %23 = xor i32 %22, %20
  %24 = trunc i32 %23 to i8
  store i8 %24, ptr %5, align 1
  %25 = load i8, ptr %3, align 1
  %26 = zext i8 %25 to i32
  %27 = and i32 %26, 4
  %28 = load i8, ptr %4, align 1
  %29 = zext i8 %28 to i32
  %30 = mul nsw i32 %27, %29
  %31 = load i8, ptr %5, align 1
  %32 = zext i8 %31 to i32
  %33 = xor i32 %32, %30
  %34 = trunc i32 %33 to i8
  store i8 %34, ptr %5, align 1
  %35 = load i8, ptr %3, align 1
  %36 = zext i8 %35 to i32
  %37 = and i32 %36, 8
  %38 = load i8, ptr %4, align 1
  %39 = zext i8 %38 to i32
  %40 = mul nsw i32 %37, %39
  %41 = load i8, ptr %5, align 1
  %42 = zext i8 %41 to i32
  %43 = xor i32 %42, %40
  %44 = trunc i32 %43 to i8
  store i8 %44, ptr %5, align 1
  %45 = load i8, ptr %5, align 1
  %46 = zext i8 %45 to i32
  %47 = and i32 %46, 240
  %48 = trunc i32 %47 to i8
  store i8 %48, ptr %6, align 1
  %49 = load i8, ptr %5, align 1
  %50 = zext i8 %49 to i32
  %51 = load i8, ptr %6, align 1
  %52 = zext i8 %51 to i32
  %53 = ashr i32 %52, 4
  %54 = xor i32 %50, %53
  %55 = load i8, ptr %6, align 1
  %56 = zext i8 %55 to i32
  %57 = ashr i32 %56, 3
  %58 = xor i32 %54, %57
  %59 = and i32 %58, 15
  %60 = trunc i32 %59 to i8
  store i8 %60, ptr %7, align 1
  %61 = load i8, ptr %7, align 1
  ret i8 %61
}

declare zeroext i1 @assert(i1 noundef zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 20.1.2 (0ubuntu1~24.04.2)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
