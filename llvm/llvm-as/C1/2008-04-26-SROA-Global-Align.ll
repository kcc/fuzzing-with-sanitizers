








target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:32:32-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128"
target triple = "x86_64-apple-darwin8"

%T = type { double, double, double }

@G = internal global %T zeroinitializer, align 16


define void @test() {
  store double 1.0, double* getelementptr (%T, %T* @G, i32 0, i32 0), align 16
  store double 2.0, double* getelementptr (%T, %T* @G, i32 0, i32 1), align 8
  store double 3.0, double* getelementptr (%T, %T* @G, i32 0, i32 2), align 16
  ret void
}

define double @test2() {
  %V1 = load double, double* getelementptr (%T, %T* @G, i32 0, i32 0), align 16
  %V2 = load double, double* getelementptr (%T, %T* @G, i32 0, i32 1), align 8
  %V3 = load double, double* getelementptr (%T, %T* @G, i32 0, i32 2), align 16
  %R = fadd double %V1, %V2
  %R2 = fadd double %R, %V3
  ret double %R2
}
