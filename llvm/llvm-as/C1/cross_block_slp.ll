

target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.8.0"






















define i32 @foo(double* nocapture %A, float* nocapture %B, i32 %g) {
entry:
  %0 = load float, float* %B, align 4
  %arrayidx1 = getelementptr inbounds float, float* %B, i64 1
  %1 = load float, float* %arrayidx1, align 4
  %add = fadd float %0, 5.000000e+00
  %add2 = fadd float %1, 8.000000e+00
  %tobool = icmp eq i32 %g, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:
  %call = tail call i32 (...) @bar()
  br label %if.end

if.end:
  %conv = fpext float %add to double
  %2 = load double, double* %A, align 8
  %add4 = fadd double %conv, %2
  store double %add4, double* %A, align 8
  %conv5 = fpext float %add2 to double
  %arrayidx6 = getelementptr inbounds double, double* %A, i64 1
  %3 = load double, double* %arrayidx6, align 8
  %add7 = fadd double %conv5, %3
  store double %add7, double* %arrayidx6, align 8
  ret i32 undef
}

declare i32 @bar(...)
