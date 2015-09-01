
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.9.0"









%0 = type { %1, %2 }
%1 = type { double, double }
%2 = type { double, double }



define void @bar() {
  %1 = getelementptr inbounds %0, %0* undef, i64 0, i32 1, i32 0
  %2 = getelementptr inbounds %0, %0* undef, i64 0, i32 1, i32 1
  %3 = getelementptr inbounds %0, %0* undef, i64 0, i32 1, i32 0
  %4 = getelementptr inbounds %0, %0* undef, i64 0, i32 1, i32 1
  %5 = getelementptr inbounds %0, %0* undef, i64 0, i32 1, i32 0
  %6 = getelementptr inbounds %0, %0* undef, i64 0, i32 1, i32 1
  br label %7


  %8 = phi double [ 2.800000e+01, %0 ], [ %11, %18 ], [ %11, %17 ], [ %11, %17 ]
  %9 = phi double [ 1.800000e+01, %0 ], [ %10, %18 ], [ %10, %17 ], [ %10, %17 ]
  store double %9, double* %1, align 8
  store double %8, double* %2, align 8
  %10 = load double, double* %3, align 8
  %11 = load double, double* %4, align 8
  br i1 undef, label %12, label %13


  ret void


  store double %10, double* %5, align 8
  store double %11, double* %6, align 8
  br i1 undef, label %14, label %15


  br label %15


  br i1 undef, label %16, label %17


  unreachable


  switch i32 undef, label %18 [
    i32 32, label %7
    i32 103, label %7
  ]


  br i1 undef, label %7, label %19


  unreachable
}
