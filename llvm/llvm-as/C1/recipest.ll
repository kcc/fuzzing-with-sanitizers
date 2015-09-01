


target datalayout = "E-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f128:128:128-v128:128:128-n32:64"
target triple = "powerpc64-unknown-linux-gnu"

declare double @llvm.sqrt.f64(double)
declare float @llvm.sqrt.f32(float)
declare <4 x float> @llvm.sqrt.v4f32(<4 x float>)

define double @foo(double %a, double %b) nounwind {
  %x = call double @llvm.sqrt.f64(double %b)
  %r = fdiv double %a, %x
  ret double %r
























}

define double @foof(double %a, float %b) nounwind {
  %x = call float @llvm.sqrt.f32(float %b)
  %y = fpext float %x to double
  %r = fdiv double %a, %y
  ret double %r














}

define float @food(float %a, double %b) nounwind {
  %x = call double @llvm.sqrt.f64(double %b)
  %y = fptrunc double %x to float
  %r = fdiv float %a, %y
  ret float %r


















}

define float @goo(float %a, float %b) nounwind {
  %x = call float @llvm.sqrt.f32(float %b)
  %r = fdiv float %a, %x
  ret float %r





















}



define float @rsqrt_fmul(float %a, float %b, float %c) {
  %x = call float @llvm.sqrt.f32(float %a)
  %y = fmul float %x, %b 
  %z = fdiv float %c, %y
  ret float %z



















}

define <4 x float> @hoo(<4 x float> %a, <4 x float> %b) nounwind {
  %x = call <4 x float> @llvm.sqrt.v4f32(<4 x float> %b)
  %r = fdiv <4 x float> %a, %x
  ret <4 x float> %r







}

define double @foo2(double %a, double %b) nounwind {
  %r = fdiv double %a, %b
  ret double %r













}

define float @goo2(float %a, float %b) nounwind {
  %r = fdiv float %a, %b
  ret float %r











}

define <4 x float> @hoo2(<4 x float> %a, <4 x float> %b) nounwind {
  %r = fdiv <4 x float> %a, %b
  ret <4 x float> %r







}

define double @foo3(double %a) nounwind {
  %r = call double @llvm.sqrt.f64(double %a)
  ret double %r

















}

define float @goo3(float %a) nounwind {
  %r = call float @llvm.sqrt.f32(float %a)
  ret float %r














}

define <4 x float> @hoo3(<4 x float> %a) nounwind {
  %r = call <4 x float> @llvm.sqrt.v4f32(<4 x float> %a)
  ret <4 x float> %r








}

