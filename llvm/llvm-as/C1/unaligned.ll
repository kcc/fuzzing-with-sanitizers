
target datalayout = "E-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f128:64:128-n32"

target datalayout = "E-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f128:64:128-n32"

define void @foo1(i16* %p, i16* %r) nounwind {
entry:
  %v = load i16, i16* %p, align 1
  store i16 %v, i16* %r, align 1
  ret void








}

define void @foo2(i32* %p, i32* %r) nounwind {
entry:
  %v = load i32, i32* %p, align 1
  store i32 %v, i32* %r, align 1
  ret void








}

define void @foo3(i64* %p, i64* %r) nounwind {
entry:
  %v = load i64, i64* %p, align 1
  store i64 %v, i64* %r, align 1
  ret void








}

define void @foo4(float* %p, float* %r) nounwind {
entry:
  %v = load float, float* %p, align 1
  store float %v, float* %r, align 1
  ret void








}

define void @foo5(double* %p, double* %r) nounwind {
entry:
  %v = load double, double* %p, align 1
  store double %v, double* %r, align 1
  ret void








}

define void @foo6(<4 x float>* %p, <4 x float>* %r) nounwind {
entry:
  %v = load <4 x float>, <4 x float>* %p, align 1
  store <4 x float> %v, <4 x float>* %r, align 1
  ret void


















}

