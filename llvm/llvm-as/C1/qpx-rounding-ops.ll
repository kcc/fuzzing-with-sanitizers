

target datalayout = "E-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f128:128:128-v128:128:128-n32:64"
target triple = "powerpc64-unknown-linux-gnu"

define <4 x float> @test1(<4 x float> %x) nounwind  {
  %call = tail call <4 x float> @llvm.floor.v4f32(<4 x float> %x) nounwind readnone
  ret <4 x float> %call






}

declare <4 x float> @llvm.floor.v4f32(<4 x float>) nounwind readnone

define <4 x double> @test2(<4 x double> %x) nounwind  {
  %call = tail call <4 x double> @llvm.floor.v4f64(<4 x double> %x) nounwind readnone
  ret <4 x double> %call






}

declare <4 x double> @llvm.floor.v4f64(<4 x double>) nounwind readnone

define <4 x float> @test3(<4 x float> %x) nounwind  {
  %call = tail call <4 x float> @llvm.nearbyint.v4f32(<4 x float> %x) nounwind readnone
  ret <4 x float> %call






}

declare <4 x float> @llvm.nearbyint.v4f32(<4 x float>) nounwind readnone

define <4 x double> @test4(<4 x double> %x) nounwind  {
  %call = tail call <4 x double> @llvm.nearbyint.v4f64(<4 x double> %x) nounwind readnone
  ret <4 x double> %call






}

declare <4 x double> @llvm.nearbyint.v4f64(<4 x double>) nounwind readnone

define <4 x float> @test5(<4 x float> %x) nounwind  {
  %call = tail call <4 x float> @llvm.ceil.v4f32(<4 x float> %x) nounwind readnone
  ret <4 x float> %call






}

declare <4 x float> @llvm.ceil.v4f32(<4 x float>) nounwind readnone

define <4 x double> @test6(<4 x double> %x) nounwind  {
  %call = tail call <4 x double> @llvm.ceil.v4f64(<4 x double> %x) nounwind readnone
  ret <4 x double> %call






}

declare <4 x double> @llvm.ceil.v4f64(<4 x double>) nounwind readnone

define <4 x float> @test9(<4 x float> %x) nounwind  {
  %call = tail call <4 x float> @llvm.trunc.v4f32(<4 x float> %x) nounwind readnone
  ret <4 x float> %call






}

declare <4 x float> @llvm.trunc.v4f32(<4 x float>) nounwind readnone

define <4 x double> @test10(<4 x double> %x) nounwind  {
  %call = tail call <4 x double> @llvm.trunc.v4f64(<4 x double> %x) nounwind readnone
  ret <4 x double> %call






}

declare <4 x double> @llvm.trunc.v4f64(<4 x double>) nounwind readnone

