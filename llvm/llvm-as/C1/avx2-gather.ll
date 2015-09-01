


declare <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float>, i8*,
                      <4 x i32>, <4 x float>, i8) nounwind readonly

define <4 x float> @test_x86_avx2_gather_d_ps(i8* %a1,
                     <4 x i32> %idx, <4 x float> %mask) {
  %res = call <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> undef,
                            i8* %a1, <4 x i32> %idx, <4 x float> %mask, i8 2) 
  ret <4 x float> %res
}








declare <2 x double> @llvm.x86.avx2.gather.d.pd(<2 x double>, i8*,
                      <4 x i32>, <2 x double>, i8) nounwind readonly

define <2 x double> @test_x86_avx2_gather_d_pd(i8* %a1,
                     <4 x i32> %idx, <2 x double> %mask) {
  %res = call <2 x double> @llvm.x86.avx2.gather.d.pd(<2 x double> undef,
                            i8* %a1, <4 x i32> %idx, <2 x double> %mask, i8 2) 
  ret <2 x double> %res
}






declare <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float>, i8*,
                      <8 x i32>, <8 x float>, i8) nounwind readonly

define <8 x float> @test_x86_avx2_gather_d_ps_256(i8* %a1,
                     <8 x i32> %idx, <8 x float> %mask) {
  %res = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> undef,
                            i8* %a1, <8 x i32> %idx, <8 x float> %mask, i8 4) 
  ret <8 x float> %res
}




declare <4 x double> @llvm.x86.avx2.gather.d.pd.256(<4 x double>, i8*,
                      <4 x i32>, <4 x double>, i8) nounwind readonly

define <4 x double> @test_x86_avx2_gather_d_pd_256(i8* %a1,
                     <4 x i32> %idx, <4 x double> %mask) {
  %res = call <4 x double> @llvm.x86.avx2.gather.d.pd.256(<4 x double> undef,
                            i8* %a1, <4 x i32> %idx, <4 x double> %mask, i8 8) 
  ret <4 x double> %res
}




