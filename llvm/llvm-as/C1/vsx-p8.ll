



target datalayout = "E-m:e-i64:64-n32:64"
target triple = "powerpc64-unknown-linux-gnu"



define <2 x double> @test28u(<2 x double>* %a) {
  %v = load <2 x double>, <2 x double>* %a, align 8
  ret <2 x double> %v




}

define void @test29u(<2 x double>* %a, <2 x double> %b) {
  store <2 x double> %b, <2 x double>* %a, align 8
  ret void




}

define <4 x float> @test32u(<4 x float>* %a) {
  %v = load <4 x float>, <4 x float>* %a, align 8
  ret <4 x float> %v









}

define void @test33u(<4 x float>* %a, <4 x float> %b) {
  store <4 x float> %b, <4 x float>* %a, align 8
  ret void









}

