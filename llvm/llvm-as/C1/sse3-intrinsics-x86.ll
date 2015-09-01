

define <2 x double> @test_x86_sse3_addsub_pd(<2 x double> %a0, <2 x double> %a1) {
  
  %res = call <2 x double> @llvm.x86.sse3.addsub.pd(<2 x double> %a0, <2 x double> %a1) 
  ret <2 x double> %res
}
declare <2 x double> @llvm.x86.sse3.addsub.pd(<2 x double>, <2 x double>) nounwind readnone


define <4 x float> @test_x86_sse3_addsub_ps(<4 x float> %a0, <4 x float> %a1) {
  
  %res = call <4 x float> @llvm.x86.sse3.addsub.ps(<4 x float> %a0, <4 x float> %a1) 
  ret <4 x float> %res
}
declare <4 x float> @llvm.x86.sse3.addsub.ps(<4 x float>, <4 x float>) nounwind readnone


define <2 x double> @test_x86_sse3_hadd_pd(<2 x double> %a0, <2 x double> %a1) {
  
  %res = call <2 x double> @llvm.x86.sse3.hadd.pd(<2 x double> %a0, <2 x double> %a1) 
  ret <2 x double> %res
}
declare <2 x double> @llvm.x86.sse3.hadd.pd(<2 x double>, <2 x double>) nounwind readnone


define <4 x float> @test_x86_sse3_hadd_ps(<4 x float> %a0, <4 x float> %a1) {
  
  %res = call <4 x float> @llvm.x86.sse3.hadd.ps(<4 x float> %a0, <4 x float> %a1) 
  ret <4 x float> %res
}
declare <4 x float> @llvm.x86.sse3.hadd.ps(<4 x float>, <4 x float>) nounwind readnone


define <2 x double> @test_x86_sse3_hsub_pd(<2 x double> %a0, <2 x double> %a1) {
  
  %res = call <2 x double> @llvm.x86.sse3.hsub.pd(<2 x double> %a0, <2 x double> %a1) 
  ret <2 x double> %res
}
declare <2 x double> @llvm.x86.sse3.hsub.pd(<2 x double>, <2 x double>) nounwind readnone


define <4 x float> @test_x86_sse3_hsub_ps(<4 x float> %a0, <4 x float> %a1) {
  
  %res = call <4 x float> @llvm.x86.sse3.hsub.ps(<4 x float> %a0, <4 x float> %a1) 
  ret <4 x float> %res
}
declare <4 x float> @llvm.x86.sse3.hsub.ps(<4 x float>, <4 x float>) nounwind readnone


define <16 x i8> @test_x86_sse3_ldu_dq(i8* %a0) {
  
  
  %res = call <16 x i8> @llvm.x86.sse3.ldu.dq(i8* %a0) 
  ret <16 x i8> %res
}
declare <16 x i8> @llvm.x86.sse3.ldu.dq(i8*) nounwind readonly
