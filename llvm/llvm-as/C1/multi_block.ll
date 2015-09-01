

target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.7.0"






















define i32 @bar(double* nocapture %A, i32 %d) {
  %1 = load double, double* %A, align 8
  %2 = getelementptr inbounds double, double* %A, i64 1
  %3 = load double, double* %2, align 8
  %4 = fptrunc double %1 to float
  %5 = fptrunc double %3 to float
  %6 = icmp eq i32 %d, 0
  br i1 %6, label %9, label %7


  %8 = tail call i32 (...) @foo()
  br label %9


  %10 = fadd float %4, 4.000000e+00
  %11 = fadd float %5, 5.000000e+00
  %12 = fpext float %10 to double
  %13 = fadd double %12, 9.000000e+00
  %14 = getelementptr inbounds double, double* %A, i64 8
  store double %13, double* %14, align 8
  %15 = fpext float %11 to double
  %16 = fadd double %15, 5.000000e+00
  %17 = getelementptr inbounds double, double* %A, i64 9
  store double %16, double* %17, align 8
  ret i32 undef
}

declare i32 @foo(...)

