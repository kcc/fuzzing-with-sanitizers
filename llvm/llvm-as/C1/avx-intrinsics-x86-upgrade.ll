



define <4 x double> @test_x86_avx_vinsertf128_pd_256_1(<4 x double> %a0, <2 x double> %a1) {


  %res = call <4 x double> @llvm.x86.avx.vinsertf128.pd.256(<4 x double> %a0, <2 x double> %a1, i8 1)
  ret <4 x double> %res
}
declare <4 x double> @llvm.x86.avx.vinsertf128.pd.256(<4 x double>, <2 x double>, i8) nounwind readnone

define <8 x float> @test_x86_avx_vinsertf128_ps_256_1(<8 x float> %a0, <4 x float> %a1) {


  %res = call <8 x float> @llvm.x86.avx.vinsertf128.ps.256(<8 x float> %a0, <4 x float> %a1, i8 1)
  ret <8 x float> %res
}
declare <8 x float> @llvm.x86.avx.vinsertf128.ps.256(<8 x float>, <4 x float>, i8) nounwind readnone

define <8 x i32> @test_x86_avx_vinsertf128_si_256_1(<8 x i32> %a0, <4 x i32> %a1) {


  %res = call <8 x i32> @llvm.x86.avx.vinsertf128.si.256(<8 x i32> %a0, <4 x i32> %a1, i8 1)
  ret <8 x i32> %res
}




define <8 x i32> @test_x86_avx_vinsertf128_si_256_2(<8 x i32> %a0, <4 x i32> %a1) {


  %res = call <8 x i32> @llvm.x86.avx.vinsertf128.si.256(<8 x i32> %a0, <4 x i32> %a1, i8 2)
  ret <8 x i32> %res
}
declare <8 x i32> @llvm.x86.avx.vinsertf128.si.256(<8 x i32>, <4 x i32>, i8) nounwind readnone



define <2 x double> @test_x86_avx_vextractf128_pd_256_1(<4 x double> %a0) {


  %res = call <2 x double> @llvm.x86.avx.vextractf128.pd.256(<4 x double> %a0, i8 1)
  ret <2 x double> %res
}
declare <2 x double> @llvm.x86.avx.vextractf128.pd.256(<4 x double>, i8) nounwind readnone

define <4 x float> @test_x86_avx_vextractf128_ps_256_1(<8 x float> %a0) {


  %res = call <4 x float> @llvm.x86.avx.vextractf128.ps.256(<8 x float> %a0, i8 1)
  ret <4 x float> %res
}
declare <4 x float> @llvm.x86.avx.vextractf128.ps.256(<8 x float>, i8) nounwind readnone

define <4 x i32> @test_x86_avx_vextractf128_si_256_1(<8 x i32> %a0) {


  %res = call <4 x i32> @llvm.x86.avx.vextractf128.si.256(<8 x i32> %a0, i8 1)
  ret <4 x i32> %res
}
declare <4 x i32> @llvm.x86.avx.vextractf128.si.256(<8 x i32>, i8) nounwind readnone




define <2 x double> @test_x86_avx_extractf128_pd_256_2(<4 x double> %a0) {


  %res = call <2 x double> @llvm.x86.avx.vextractf128.pd.256(<4 x double> %a0, i8 2)
  ret <2 x double> %res
}


define <4 x double> @test_x86_avx_blend_pd_256(<4 x double> %a0, <4 x double> %a1) {


  %res = call <4 x double> @llvm.x86.avx.blend.pd.256(<4 x double> %a0, <4 x double> %a1, i32 7) 
  ret <4 x double> %res
}
declare <4 x double> @llvm.x86.avx.blend.pd.256(<4 x double>, <4 x double>, i32) nounwind readnone


define <8 x float> @test_x86_avx_blend_ps_256(<8 x float> %a0, <8 x float> %a1) {


  %res = call <8 x float> @llvm.x86.avx.blend.ps.256(<8 x float> %a0, <8 x float> %a1, i32 7) 
  ret <8 x float> %res
}
declare <8 x float> @llvm.x86.avx.blend.ps.256(<8 x float>, <8 x float>, i32) nounwind readnone


define <8 x float> @test_x86_avx_dp_ps_256(<8 x float> %a0, <8 x float> %a1) {


  %res = call <8 x float> @llvm.x86.avx.dp.ps.256(<8 x float> %a0, <8 x float> %a1, i32 7) 
  ret <8 x float> %res
}
declare <8 x float> @llvm.x86.avx.dp.ps.256(<8 x float>, <8 x float>, i32) nounwind readnone


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


define <2 x double> @test_x86_sse41_blendpd(<2 x double> %a0, <2 x double> %a1) {


  %res = call <2 x double> @llvm.x86.sse41.blendpd(<2 x double> %a0, <2 x double> %a1, i8 2) 
  ret <2 x double> %res
}
declare <2 x double> @llvm.x86.sse41.blendpd(<2 x double>, <2 x double>, i8) nounwind readnone


define <4 x float> @test_x86_sse41_blendps(<4 x float> %a0, <4 x float> %a1) {


  %res = call <4 x float> @llvm.x86.sse41.blendps(<4 x float> %a0, <4 x float> %a1, i8 7) 
  ret <4 x float> %res
}
declare <4 x float> @llvm.x86.sse41.blendps(<4 x float>, <4 x float>, i8) nounwind readnone


define <8 x i16> @test_x86_sse41_pblendw(<8 x i16> %a0, <8 x i16> %a1) {


  %res = call <8 x i16> @llvm.x86.sse41.pblendw(<8 x i16> %a0, <8 x i16> %a1, i8 7) 
  ret <8 x i16> %res
}
declare <8 x i16> @llvm.x86.sse41.pblendw(<8 x i16>, <8 x i16>, i8) nounwind readnone
