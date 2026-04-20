; ModuleID = '../test.ll'
source_filename = "test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: inlinehint nounwind uwtable
define dso_local zeroext range(i8 0, 16) i8 @lincomb(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  br label %3

3:                                                ; preds = %2, %3
  %indvars.iv = phi i64 [ 0, %2 ], [ %indvars.iv.next, %3 ]
  %.014 = phi i8 [ 0, %2 ], [ %23, %3 ]
  %.023 = phi ptr [ %1, %2 ], [ %24, %3 ]
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %5 = load i8, ptr %4, align 1
  %6 = and i8 %5, 8
  %7 = load i8, ptr %.023, align 1
  %8 = mul i8 %6, %7
  %9 = and i8 %5, 4
  %10 = mul i8 %9, %7
  %11 = trunc i8 %5 to i1
  %12 = select i1 %11, i8 %7, i8 0
  %13 = and i8 %5, 2
  %14 = mul i8 %13, %7
  %15 = xor i8 %12, %14
  %16 = xor i8 %10, %15
  %17 = xor i8 %8, %16
  %18 = lshr i8 %17, 4
  %19 = lshr i8 %17, 3
  %20 = and i8 %19, 14
  %21 = xor i8 %18, %20
  %.masked = and i8 %17, 15
  %22 = xor i8 %21, %.masked
  %23 = xor i8 %22, %.014
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %24 = getelementptr inbounds nuw i8, ptr %.023, i64 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 2
  br i1 %exitcond.not, label %25, label %3, !llvm.loop !6

25:                                               ; preds = %3
  %scevgep = getelementptr i8, ptr %1, i64 2
  %26 = icmp eq ptr %0, %scevgep
  %27 = call zeroext i1 @assert(i1 noundef zeroext %26) #2
  ret i8 %23
}

declare zeroext i1 @assert(i1 noundef zeroext) local_unnamed_addr #1

attributes #0 = { inlinehint nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

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
