

define <2 x i64> @test_x86_sse2_psll_dq_bs(<2 x i64> %a0) {
  
  %res = call <2 x i64> @llvm.x86.sse2.psll.dq.bs(<2 x i64> %a0, i32 7) 
  ret <2 x i64> %res
}
declare <2 x i64> @llvm.x86.sse2.psll.dq.bs(<2 x i64>, i32) nounwind readnone


define <2 x i64> @test_x86_sse2_psrl_dq_bs(<2 x i64> %a0) {
  
  %res = call <2 x i64> @llvm.x86.sse2.psrl.dq.bs(<2 x i64> %a0, i32 7) 
  ret <2 x i64> %res
}
declare <2 x i64> @llvm.x86.sse2.psrl.dq.bs(<2 x i64>, i32) nounwind readnone

define <2 x i64> @test_x86_sse2_psll_dq(<2 x i64> %a0) {
  
  %res = call <2 x i64> @llvm.x86.sse2.psll.dq(<2 x i64> %a0, i32 8) 
  ret <2 x i64> %res
}
declare <2 x i64> @llvm.x86.sse2.psll.dq(<2 x i64>, i32) nounwind readnone


define <2 x i64> @test_x86_sse2_psrl_dq(<2 x i64> %a0) {
  
  %res = call <2 x i64> @llvm.x86.sse2.psrl.dq(<2 x i64> %a0, i32 8) 
  ret <2 x i64> %res
}
declare <2 x i64> @llvm.x86.sse2.psrl.dq(<2 x i64>, i32) nounwind readnone
