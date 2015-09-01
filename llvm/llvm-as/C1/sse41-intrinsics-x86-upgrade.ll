



define <2 x double> @test_x86_sse41_blendpd(<2 x double> %a0, <2 x double> %a1) {
  
  %res = call <2 x double> @llvm.x86.sse41.blendpd(<2 x double> %a0, <2 x double> %a1, i32 7) 
  ret <2 x double> %res
}
declare <2 x double> @llvm.x86.sse41.blendpd(<2 x double>, <2 x double>, i32) nounwind readnone


define <4 x float> @test_x86_sse41_blendps(<4 x float> %a0, <4 x float> %a1) {
  
  %res = call <4 x float> @llvm.x86.sse41.blendps(<4 x float> %a0, <4 x float> %a1, i32 7) 
  ret <4 x float> %res
}
declare <4 x float> @llvm.x86.sse41.blendps(<4 x float>, <4 x float>, i32) nounwind readnone


define <2 x double> @test_x86_sse41_dppd(<2 x double> %a0, <2 x double> %a1) {
  
  %res = call <2 x double> @llvm.x86.sse41.dppd(<2 x double> %a0, <2 x double> %a1, i32 7) 
  ret <2 x double> %res
}
declare <2 x double> @llvm.x86.sse41.dppd(<2 x double>, <2 x double>, i32) nounwind readnone


define <4 x float> @test_x86_sse41_dpps(<4 x float> %a0, <4 x float> %a1) {
  
  %res = call <4 x float> @llvm.x86.sse41.dpps(<4 x float> %a0, <4 x float> %a1, i32 7) 
  ret <4 x float> %res
}
declare <4 x float> @llvm.x86.sse41.dpps(<4 x float>, <4 x float>, i32) nounwind readnone


define <4 x float> @test_x86_sse41_insertps(<4 x float> %a0, <4 x float> %a1) {
  
  %res = call <4 x float> @llvm.x86.sse41.insertps(<4 x float> %a0, <4 x float> %a1, i32 7) 
  ret <4 x float> %res
}
declare <4 x float> @llvm.x86.sse41.insertps(<4 x float>, <4 x float>, i32) nounwind readnone



define <8 x i16> @test_x86_sse41_mpsadbw(<16 x i8> %a0, <16 x i8> %a1) {
  
  %res = call <8 x i16> @llvm.x86.sse41.mpsadbw(<16 x i8> %a0, <16 x i8> %a1, i32 7) 
  ret <8 x i16> %res
}
declare <8 x i16> @llvm.x86.sse41.mpsadbw(<16 x i8>, <16 x i8>, i32) nounwind readnone


define <8 x i16> @test_x86_sse41_pblendw(<8 x i16> %a0, <8 x i16> %a1) {
  
  %res = call <8 x i16> @llvm.x86.sse41.pblendw(<8 x i16> %a0, <8 x i16> %a1, i32 7) 
  ret <8 x i16> %res
}
declare <8 x i16> @llvm.x86.sse41.pblendw(<8 x i16>, <8 x i16>, i32) nounwind readnone


