

target datalayout = "E-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f128:128:128-v128:128:128-n32:64"
target triple = "powerpc64-unknown-linux-gnu"

declare <4 x double> @llvm.sqrt.v4f64(<4 x double>)
declare <4 x float> @llvm.sqrt.v4f32(<4 x float>)

define <4 x double> @foo(<4 x double> %a, <4 x double> %b) nounwind {
entry:
  %x = call <4 x double> @llvm.sqrt.v4f64(<4 x double> %b)
  %r = fdiv <4 x double> %a, %x
  ret <4 x double> %r



















}

define <4 x double> @foof(<4 x double> %a, <4 x float> %b) nounwind {
entry:
  %x = call <4 x float> @llvm.sqrt.v4f32(<4 x float> %b)
  %y = fpext <4 x float> %x to <4 x double>
  %r = fdiv <4 x double> %a, %y
  ret <4 x double> %r
















}

define <4 x float> @food(<4 x float> %a, <4 x double> %b) nounwind {
entry:
  %x = call <4 x double> @llvm.sqrt.v4f64(<4 x double> %b)
  %y = fptrunc <4 x double> %x to <4 x float>
  %r = fdiv <4 x float> %a, %y
  ret <4 x float> %r




















}

define <4 x float> @goo(<4 x float> %a, <4 x float> %b) nounwind {
entry:
  %x = call <4 x float> @llvm.sqrt.v4f32(<4 x float> %b)
  %r = fdiv <4 x float> %a, %x
  ret <4 x float> %r
















}

define <4 x double> @foo2(<4 x double> %a, <4 x double> %b) nounwind {
entry:
  %r = fdiv <4 x double> %a, %b
  ret <4 x double> %r













}

define <4 x float> @goo2(<4 x float> %a, <4 x float> %b) nounwind {
entry:
  %r = fdiv <4 x float> %a, %b
  ret <4 x float> %r











}

define <4 x double> @foo3(<4 x double> %a) nounwind {
entry:
  %r = call <4 x double> @llvm.sqrt.v4f64(<4 x double> %a)
  ret <4 x double> %r




















}

define <4 x float> @goo3(<4 x float> %a) nounwind {
entry:
  %r = call <4 x float> @llvm.sqrt.v4f32(<4 x float> %a)
  ret <4 x float> %r

















}

