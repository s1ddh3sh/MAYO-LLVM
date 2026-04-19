; ModuleID = '../test.ll'
source_filename = "test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i8 @lincomb(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  br label %5

5:                                                ; preds = %17, %4
  %.02 = phi i8 [ 0, %4 ], [ %16, %17 ]
  %.01 = phi ptr [ %1, %4 ], [ %20, %17 ]
  %.0 = phi i32 [ 0, %4 ], [ %18, %17 ]
  %6 = icmp slt i32 %.0, %2
  br i1 %6, label %7, label %21

7:                                                ; preds = %5
  %8 = sext i32 %.0 to i64
  %9 = getelementptr inbounds i8, ptr %0, i64 %8
  %10 = load i8, ptr %9, align 1
  %11 = load i8, ptr %.01, align 1
  %12 = call zeroext i8 @mul_f(i8 noundef zeroext %10, i8 noundef zeroext %11)
  %13 = zext i8 %12 to i32
  %14 = zext i8 %.02 to i32
  %15 = xor i32 %13, %14
  %16 = trunc i32 %15 to i8
  br label %17

17:                                               ; preds = %7
  %18 = add nsw i32 %.0, 1
  %19 = sext i32 %3 to i64
  %20 = getelementptr inbounds i8, ptr %.01, i64 %19
  br label %5, !llvm.loop !6

21:                                               ; preds = %5
  %22 = icmp eq ptr %0, %.01
  %23 = call zeroext i1 @assert(i1 noundef zeroext %22)
  ret i8 %.02
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @mul_f(i8 noundef zeroext %0, i8 noundef zeroext %1) #0 {
  %3 = zext i8 %0 to i32
  %4 = and i32 %3, 1
  %5 = zext i8 %1 to i32
  %6 = mul nsw i32 %4, %5
  %7 = trunc i32 %6 to i8
  %8 = zext i8 %0 to i32
  %9 = and i32 %8, 2
  %10 = zext i8 %1 to i32
  %11 = mul nsw i32 %9, %10
  %12 = zext i8 %7 to i32
  %13 = xor i32 %12, %11
  %14 = trunc i32 %13 to i8
  %15 = zext i8 %0 to i32
  %16 = and i32 %15, 4
  %17 = zext i8 %1 to i32
  %18 = mul nsw i32 %16, %17
  %19 = zext i8 %14 to i32
  %20 = xor i32 %19, %18
  %21 = trunc i32 %20 to i8
  %22 = zext i8 %0 to i32
  %23 = and i32 %22, 8
  %24 = zext i8 %1 to i32
  %25 = mul nsw i32 %23, %24
  %26 = zext i8 %21 to i32
  %27 = xor i32 %26, %25
  %28 = trunc i32 %27 to i8
  %29 = zext i8 %28 to i32
  %30 = and i32 %29, 240
  %31 = trunc i32 %30 to i8
  %32 = zext i8 %28 to i32
  %33 = zext i8 %31 to i32
  %34 = ashr i32 %33, 4
  %35 = xor i32 %32, %34
  %36 = zext i8 %31 to i32
  %37 = ashr i32 %36, 3
  %38 = xor i32 %35, %37
  %39 = and i32 %38, 15
  %40 = trunc i32 %39 to i8
  ret i8 %40
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
