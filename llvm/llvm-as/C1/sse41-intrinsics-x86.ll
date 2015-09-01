


define <2 x double> @test_x86_sse41_blendpd(<2 x double> %a0, <2 x double> %a1) {
  
  %res = call <2 x double> @llvm.x86.sse41.blendpd(<2 x double> %a0, <2 x double> %a1, i8 7) 
  ret <2 x double> %res
}
declare <2 x double> @llvm.x86.sse41.blendpd(<2 x double>, <2 x double>, i8) nounwind readnone


define <4 x float> @test_x86_sse41_blendps(<4 x float> %a0, <4 x float> %a1) {
  
  %res = call <4 x float> @llvm.x86.sse41.blendps(<4 x float> %a0, <4 x float> %a1, i8 7) 
  ret <4 x float> %res
}
declare <4 x float> @llvm.x86.sse41.blendps(<4 x float>, <4 x float>, i8) nounwind readnone


define <2 x double> @test_x86_sse41_blendvpd(<2 x double> %a0, <2 x double> %a1, <2 x double> %a2) {
  
  %res = call <2 x double> @llvm.x86.sse41.blendvpd(<2 x double> %a0, <2 x double> %a1, <2 x double> %a2) 
  ret <2 x double> %res
}
declare <2 x double> @llvm.x86.sse41.blendvpd(<2 x double>, <2 x double>, <2 x double>) nounwind readnone


define <4 x float> @test_x86_sse41_blendvps(<4 x float> %a0, <4 x float> %a1, <4 x float> %a2) {
  
  %res = call <4 x float> @llvm.x86.sse41.blendvps(<4 x float> %a0, <4 x float> %a1, <4 x float> %a2) 
  ret <4 x float> %res
}
declare <4 x float> @llvm.x86.sse41.blendvps(<4 x float>, <4 x float>, <4 x float>) nounwind readnone


define <2 x double> @test_x86_sse41_dppd(<2 x double> %a0, <2 x double> %a1) {
  
  %res = call <2 x double> @llvm.x86.sse41.dppd(<2 x double> %a0, <2 x double> %a1, i8 7) 
  ret <2 x double> %res
}
declare <2 x double> @llvm.x86.sse41.dppd(<2 x double>, <2 x double>, i8) nounwind readnone


define <4 x float> @test_x86_sse41_dpps(<4 x float> %a0, <4 x float> %a1) {
  
  %res = call <4 x float> @llvm.x86.sse41.dpps(<4 x float> %a0, <4 x float> %a1, i8 7) 
  ret <4 x float> %res
}
declare <4 x float> @llvm.x86.sse41.dpps(<4 x float>, <4 x float>, i8) nounwind readnone


define <4 x float> @test_x86_sse41_insertps(<4 x float> %a0, <4 x float> %a1) {
  
  %res = call <4 x float> @llvm.x86.sse41.insertps(<4 x float> %a0, <4 x float> %a1, i8 7) 
  ret <4 x float> %res
}
declare <4 x float> @llvm.x86.sse41.insertps(<4 x float>, <4 x float>, i8) nounwind readnone



define <8 x i16> @test_x86_sse41_mpsadbw(<16 x i8> %a0, <16 x i8> %a1) {
  
  %res = call <8 x i16> @llvm.x86.sse41.mpsadbw(<16 x i8> %a0, <16 x i8> %a1, i8 7) 
  ret <8 x i16> %res
}
declare <8 x i16> @llvm.x86.sse41.mpsadbw(<16 x i8>, <16 x i8>, i8) nounwind readnone


define <8 x i16> @test_x86_sse41_packusdw(<4 x i32> %a0, <4 x i32> %a1) {
  
  %res = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %a0, <4 x i32> %a1) 
  ret <8 x i16> %res
}
declare <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32>, <4 x i32>) nounwind readnone


define <16 x i8> @test_x86_sse41_pblendvb(<16 x i8> %a0, <16 x i8> %a1, <16 x i8> %a2) {
  
  %res = call <16 x i8> @llvm.x86.sse41.pblendvb(<16 x i8> %a0, <16 x i8> %a1, <16 x i8> %a2) 
  ret <16 x i8> %res
}
declare <16 x i8> @llvm.x86.sse41.pblendvb(<16 x i8>, <16 x i8>, <16 x i8>) nounwind readnone


define <8 x i16> @test_x86_sse41_pblendw(<8 x i16> %a0, <8 x i16> %a1) {
  
  %res = call <8 x i16> @llvm.x86.sse41.pblendw(<8 x i16> %a0, <8 x i16> %a1, i8 7) 
  ret <8 x i16> %res
}
declare <8 x i16> @llvm.x86.sse41.pblendw(<8 x i16>, <8 x i16>, i8) nounwind readnone


define <8 x i16> @test_x86_sse41_phminposuw(<8 x i16> %a0) {
  
  %res = call <8 x i16> @llvm.x86.sse41.phminposuw(<8 x i16> %a0) 
  ret <8 x i16> %res
}
declare <8 x i16> @llvm.x86.sse41.phminposuw(<8 x i16>) nounwind readnone


define <16 x i8> @test_x86_sse41_pmaxsb(<16 x i8> %a0, <16 x i8> %a1) {
  
  %res = call <16 x i8> @llvm.x86.sse41.pmaxsb(<16 x i8> %a0, <16 x i8> %a1) 
  ret <16 x i8> %res
}
declare <16 x i8> @llvm.x86.sse41.pmaxsb(<16 x i8>, <16 x i8>) nounwind readnone


define <4 x i32> @test_x86_sse41_pmaxsd(<4 x i32> %a0, <4 x i32> %a1) {
  
  %res = call <4 x i32> @llvm.x86.sse41.pmaxsd(<4 x i32> %a0, <4 x i32> %a1) 
  ret <4 x i32> %res
}
declare <4 x i32> @llvm.x86.sse41.pmaxsd(<4 x i32>, <4 x i32>) nounwind readnone


define <4 x i32> @test_x86_sse41_pmaxud(<4 x i32> %a0, <4 x i32> %a1) {
  
  %res = call <4 x i32> @llvm.x86.sse41.pmaxud(<4 x i32> %a0, <4 x i32> %a1) 
  ret <4 x i32> %res
}
declare <4 x i32> @llvm.x86.sse41.pmaxud(<4 x i32>, <4 x i32>) nounwind readnone


define <8 x i16> @test_x86_sse41_pmaxuw(<8 x i16> %a0, <8 x i16> %a1) {
  
  %res = call <8 x i16> @llvm.x86.sse41.pmaxuw(<8 x i16> %a0, <8 x i16> %a1) 
  ret <8 x i16> %res
}
declare <8 x i16> @llvm.x86.sse41.pmaxuw(<8 x i16>, <8 x i16>) nounwind readnone


define <16 x i8> @test_x86_sse41_pminsb(<16 x i8> %a0, <16 x i8> %a1) {
  
  %res = call <16 x i8> @llvm.x86.sse41.pminsb(<16 x i8> %a0, <16 x i8> %a1) 
  ret <16 x i8> %res
}
declare <16 x i8> @llvm.x86.sse41.pminsb(<16 x i8>, <16 x i8>) nounwind readnone


define <4 x i32> @test_x86_sse41_pminsd(<4 x i32> %a0, <4 x i32> %a1) {
  
  %res = call <4 x i32> @llvm.x86.sse41.pminsd(<4 x i32> %a0, <4 x i32> %a1) 
  ret <4 x i32> %res
}
declare <4 x i32> @llvm.x86.sse41.pminsd(<4 x i32>, <4 x i32>) nounwind readnone


define <4 x i32> @test_x86_sse41_pminud(<4 x i32> %a0, <4 x i32> %a1) {
  
  %res = call <4 x i32> @llvm.x86.sse41.pminud(<4 x i32> %a0, <4 x i32> %a1) 
  ret <4 x i32> %res
}
declare <4 x i32> @llvm.x86.sse41.pminud(<4 x i32>, <4 x i32>) nounwind readnone


define <8 x i16> @test_x86_sse41_pminuw(<8 x i16> %a0, <8 x i16> %a1) {
  
  %res = call <8 x i16> @llvm.x86.sse41.pminuw(<8 x i16> %a0, <8 x i16> %a1) 
  ret <8 x i16> %res
}
declare <8 x i16> @llvm.x86.sse41.pminuw(<8 x i16>, <8 x i16>) nounwind readnone


define <4 x i32> @test_x86_sse41_pmovsxbd(<16 x i8> %a0) {
  
  %res = call <4 x i32> @llvm.x86.sse41.pmovsxbd(<16 x i8> %a0) 
  ret <4 x i32> %res
}
declare <4 x i32> @llvm.x86.sse41.pmovsxbd(<16 x i8>) nounwind readnone


define <2 x i64> @test_x86_sse41_pmovsxbq(<16 x i8> %a0) {
  
  %res = call <2 x i64> @llvm.x86.sse41.pmovsxbq(<16 x i8> %a0) 
  ret <2 x i64> %res
}
declare <2 x i64> @llvm.x86.sse41.pmovsxbq(<16 x i8>) nounwind readnone


define <8 x i16> @test_x86_sse41_pmovsxbw(<16 x i8> %a0) {
  
  %res = call <8 x i16> @llvm.x86.sse41.pmovsxbw(<16 x i8> %a0) 
  ret <8 x i16> %res
}
declare <8 x i16> @llvm.x86.sse41.pmovsxbw(<16 x i8>) nounwind readnone


define <2 x i64> @test_x86_sse41_pmovsxdq(<4 x i32> %a0) {
  
  %res = call <2 x i64> @llvm.x86.sse41.pmovsxdq(<4 x i32> %a0) 
  ret <2 x i64> %res
}
declare <2 x i64> @llvm.x86.sse41.pmovsxdq(<4 x i32>) nounwind readnone


define <4 x i32> @test_x86_sse41_pmovsxwd(<8 x i16> %a0) {
  
  %res = call <4 x i32> @llvm.x86.sse41.pmovsxwd(<8 x i16> %a0) 
  ret <4 x i32> %res
}
declare <4 x i32> @llvm.x86.sse41.pmovsxwd(<8 x i16>) nounwind readnone


define <2 x i64> @test_x86_sse41_pmovsxwq(<8 x i16> %a0) {
  
  %res = call <2 x i64> @llvm.x86.sse41.pmovsxwq(<8 x i16> %a0) 
  ret <2 x i64> %res
}
declare <2 x i64> @llvm.x86.sse41.pmovsxwq(<8 x i16>) nounwind readnone


define <4 x i32> @test_x86_sse41_pmovzxbd(<16 x i8> %a0) {
  
  %res = call <4 x i32> @llvm.x86.sse41.pmovzxbd(<16 x i8> %a0) 
  ret <4 x i32> %res
}
declare <4 x i32> @llvm.x86.sse41.pmovzxbd(<16 x i8>) nounwind readnone


define <2 x i64> @test_x86_sse41_pmovzxbq(<16 x i8> %a0) {
  
  %res = call <2 x i64> @llvm.x86.sse41.pmovzxbq(<16 x i8> %a0) 
  ret <2 x i64> %res
}
declare <2 x i64> @llvm.x86.sse41.pmovzxbq(<16 x i8>) nounwind readnone


define <8 x i16> @test_x86_sse41_pmovzxbw(<16 x i8> %a0) {
  
  %res = call <8 x i16> @llvm.x86.sse41.pmovzxbw(<16 x i8> %a0) 
  ret <8 x i16> %res
}
declare <8 x i16> @llvm.x86.sse41.pmovzxbw(<16 x i8>) nounwind readnone


define <2 x i64> @test_x86_sse41_pmovzxdq(<4 x i32> %a0) {
  
  %res = call <2 x i64> @llvm.x86.sse41.pmovzxdq(<4 x i32> %a0) 
  ret <2 x i64> %res
}
declare <2 x i64> @llvm.x86.sse41.pmovzxdq(<4 x i32>) nounwind readnone


define <4 x i32> @test_x86_sse41_pmovzxwd(<8 x i16> %a0) {
  
  %res = call <4 x i32> @llvm.x86.sse41.pmovzxwd(<8 x i16> %a0) 
  ret <4 x i32> %res
}
declare <4 x i32> @llvm.x86.sse41.pmovzxwd(<8 x i16>) nounwind readnone


define <2 x i64> @test_x86_sse41_pmovzxwq(<8 x i16> %a0) {
  
  %res = call <2 x i64> @llvm.x86.sse41.pmovzxwq(<8 x i16> %a0) 
  ret <2 x i64> %res
}
declare <2 x i64> @llvm.x86.sse41.pmovzxwq(<8 x i16>) nounwind readnone


define <2 x i64> @test_x86_sse41_pmuldq(<4 x i32> %a0, <4 x i32> %a1) {
  
  %res = call <2 x i64> @llvm.x86.sse41.pmuldq(<4 x i32> %a0, <4 x i32> %a1) 
  ret <2 x i64> %res
}
declare <2 x i64> @llvm.x86.sse41.pmuldq(<4 x i32>, <4 x i32>) nounwind readnone


define i32 @test_x86_sse41_ptestc(<2 x i64> %a0, <2 x i64> %a1) {
  
  
  %res = call i32 @llvm.x86.sse41.ptestc(<2 x i64> %a0, <2 x i64> %a1) 
  ret i32 %res
}
declare i32 @llvm.x86.sse41.ptestc(<2 x i64>, <2 x i64>) nounwind readnone


define i32 @test_x86_sse41_ptestnzc(<2 x i64> %a0, <2 x i64> %a1) {
  
  
  
  %res = call i32 @llvm.x86.sse41.ptestnzc(<2 x i64> %a0, <2 x i64> %a1) 
  ret i32 %res
}
declare i32 @llvm.x86.sse41.ptestnzc(<2 x i64>, <2 x i64>) nounwind readnone


define i32 @test_x86_sse41_ptestz(<2 x i64> %a0, <2 x i64> %a1) {
  
  
  
  %res = call i32 @llvm.x86.sse41.ptestz(<2 x i64> %a0, <2 x i64> %a1) 
  ret i32 %res
}
declare i32 @llvm.x86.sse41.ptestz(<2 x i64>, <2 x i64>) nounwind readnone


define <2 x double> @test_x86_sse41_round_pd(<2 x double> %a0) {
  
  %res = call <2 x double> @llvm.x86.sse41.round.pd(<2 x double> %a0, i32 7) 
  ret <2 x double> %res
}
declare <2 x double> @llvm.x86.sse41.round.pd(<2 x double>, i32) nounwind readnone


define <4 x float> @test_x86_sse41_round_ps(<4 x float> %a0) {
  
  %res = call <4 x float> @llvm.x86.sse41.round.ps(<4 x float> %a0, i32 7) 
  ret <4 x float> %res
}
declare <4 x float> @llvm.x86.sse41.round.ps(<4 x float>, i32) nounwind readnone


define <2 x double> @test_x86_sse41_round_sd(<2 x double> %a0, <2 x double> %a1) {
  
  %res = call <2 x double> @llvm.x86.sse41.round.sd(<2 x double> %a0, <2 x double> %a1, i32 7) 
  ret <2 x double> %res
}
declare <2 x double> @llvm.x86.sse41.round.sd(<2 x double>, <2 x double>, i32) nounwind readnone


define <4 x float> @test_x86_sse41_round_ss(<4 x float> %a0, <4 x float> %a1) {
  
  %res = call <4 x float> @llvm.x86.sse41.round.ss(<4 x float> %a0, <4 x float> %a1, i32 7) 
  ret <4 x float> %res
}
declare <4 x float> @llvm.x86.sse41.round.ss(<4 x float>, <4 x float>, i32) nounwind readnone
