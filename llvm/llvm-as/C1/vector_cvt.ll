

target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

declare i32 @llvm.x86.sse2.cvtsd2si(<2 x double>) nounwind readnone
declare <2 x double> @llvm.x86.sse2.cvtsi2sd(<2 x double>, i32) nounwind readnone
declare x86_mmx @llvm.x86.sse.cvtps2pi(<4 x float>) nounwind readnone



define i32 @test_cvtsd2si(<2 x double> %value) sanitize_memory {
entry:
  %0 = tail call i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %value)
  ret i32 %0
}












define <2 x double> @test_cvtsi2sd(i32 %a, double %b) sanitize_memory {
entry:
  %vec = insertelement <2 x double> undef, double %b, i32 1
  %0 = tail call <2 x double> @llvm.x86.sse2.cvtsi2sd(<2 x double> %vec, i32 %a)
  ret <2 x double> %0
}
















define x86_mmx @test_cvtps2pi(<4 x float> %value) sanitize_memory {
entry:
  %0 = tail call x86_mmx @llvm.x86.sse.cvtps2pi(<4 x float> %value)
  ret x86_mmx %0
}











