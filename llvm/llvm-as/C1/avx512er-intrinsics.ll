

define <16 x float> @test_rsqrt28_ps(<16 x float> %a0) {
  
  %res = call <16 x float> @llvm.x86.avx512.rsqrt28.ps(<16 x float> %a0, <16 x float> zeroinitializer, i16 -1, i32 8)
  ret <16 x float> %res
}

define <16 x float> @test1_rsqrt28_ps(<16 x float> %a0, <16 x float> %a1) {
  
  
  %res = call <16 x float> @llvm.x86.avx512.rsqrt28.ps(<16 x float> %a0, <16 x float> %a1, i16 6, i32 8)
  ret <16 x float> %res
}

define <16 x float> @test2_rsqrt28_ps(<16 x float> %a0) {
  
  %res = call <16 x float> @llvm.x86.avx512.rsqrt28.ps(<16 x float> %a0, <16 x float> undef, i16 6, i32 4)
  ret <16 x float> %res
}

define <16 x float> @test3_rsqrt28_ps(<16 x float> %a0) {
  
  
  %res = call <16 x float> @llvm.x86.avx512.rsqrt28.ps(<16 x float> %a0, <16 x float> zeroinitializer, i16 6, i32 4)
  ret <16 x float> %res
}

define <16 x float> @test4_rsqrt28_ps(<16 x float> %a0) {
  
  %res = call <16 x float> @llvm.x86.avx512.rsqrt28.ps(<16 x float> %a0, <16 x float> undef, i16 6, i32 8) 
  ret <16 x float> %res
}


declare <16 x float> @llvm.x86.avx512.rsqrt28.ps(<16 x float>, <16 x float>, i16, i32) nounwind readnone

define <16 x float> @test_rcp28_ps_512(<16 x float> %a0) {
  
  %res = call <16 x float> @llvm.x86.avx512.rcp28.ps(<16 x float> %a0, <16 x float> zeroinitializer, i16 -1, i32 8)
  ret <16 x float> %res
}
declare <16 x float> @llvm.x86.avx512.rcp28.ps(<16 x float>, <16 x float>, i16, i32) nounwind readnone

define <8 x double> @test_rcp28_pd_512(<8 x double> %a0) {
  
  %res = call <8 x double> @llvm.x86.avx512.rcp28.pd(<8 x double> %a0, <8 x double> zeroinitializer, i8 -1, i32 8) 
  ret <8 x double> %res
}
declare <8 x double> @llvm.x86.avx512.rcp28.pd(<8 x double>, <8 x double>, i8, i32) nounwind readnone

define <16 x float> @test_exp2_ps_512(<16 x float> %a0) {
  
  %res = call <16 x float> @llvm.x86.avx512.exp2.ps(<16 x float> %a0, <16 x float> zeroinitializer, i16 -1, i32 8)
  ret <16 x float> %res
}
declare <16 x float> @llvm.x86.avx512.exp2.ps(<16 x float>, <16 x float>, i16, i32) nounwind readnone

define <8 x double> @test_exp2_pd_512(<8 x double> %a0) {
  
  %res = call <8 x double> @llvm.x86.avx512.exp2.pd(<8 x double> %a0, <8 x double> zeroinitializer, i8 -1, i32 8)
  ret <8 x double> %res
}
declare <8 x double> @llvm.x86.avx512.exp2.pd(<8 x double>, <8 x double>, i8, i32) nounwind readnone

define <4 x float> @test_rsqrt28_ss(<4 x float> %a0) {
  
  %res = call <4 x float> @llvm.x86.avx512.rsqrt28.ss(<4 x float> %a0, <4 x float> %a0, <4 x float> zeroinitializer, i8 -1, i32 8) 
  ret <4 x float> %res
}
declare <4 x float> @llvm.x86.avx512.rsqrt28.ss(<4 x float>, <4 x float>, <4 x float>, i8, i32) nounwind readnone

define <4 x float> @test_rcp28_ss(<4 x float> %a0) {
  
  %res = call <4 x float> @llvm.x86.avx512.rcp28.ss(<4 x float> %a0, <4 x float> %a0, <4 x float> zeroinitializer, i8 -1, i32 8) 
  ret <4 x float> %res
}
declare <4 x float> @llvm.x86.avx512.rcp28.ss(<4 x float>, <4 x float>, <4 x float>, i8, i32) nounwind readnone

define <4 x float> @test_rsqrt28_ss_maskz(<4 x float> %a0) {
  
  %res = call <4 x float> @llvm.x86.avx512.rsqrt28.ss(<4 x float> %a0, <4 x float> %a0, <4 x float> zeroinitializer, i8 7, i32 8) 
  ret <4 x float> %res
}

define <4 x float> @test_rsqrt28_ss_mask(<4 x float> %a0, <4 x float> %b0, <4 x float> %c0) {
  
  %res = call <4 x float> @llvm.x86.avx512.rsqrt28.ss(<4 x float> %a0, <4 x float> %b0, <4 x float> %c0, i8 7, i32 8) 
  ret <4 x float> %res
}

define <2 x double> @test_rsqrt28_sd_maskz(<2 x double> %a0) {
  
  %res = call <2 x double> @llvm.x86.avx512.rsqrt28.sd(<2 x double> %a0, <2 x double> %a0, <2 x double> zeroinitializer, i8 7, i32 8) 
  ret <2 x double> %res
}

declare <2 x double> @llvm.x86.avx512.rsqrt28.sd(<2 x double>, <2 x double>, <2 x double>, i8, i32) nounwind readnone

define <2 x double> @test_rsqrt28_sd_maskz_mem(<2 x double> %a0, double* %ptr ) {
  
  %mem = load double , double * %ptr, align 8
  %mem_v = insertelement <2 x double> undef, double %mem, i32 0
  %res = call <2 x double> @llvm.x86.avx512.rsqrt28.sd(<2 x double> %a0, <2 x double> %mem_v, <2 x double> zeroinitializer, i8 7, i32 4) 
  ret <2 x double> %res
}

define <2 x double> @test_rsqrt28_sd_maskz_mem_offset(<2 x double> %a0, double* %ptr ) {
  
  %ptr1 = getelementptr double, double* %ptr, i32 18
  %mem = load double , double * %ptr1, align 8
  %mem_v = insertelement <2 x double> undef, double %mem, i32 0
  %res = call <2 x double> @llvm.x86.avx512.rsqrt28.sd(<2 x double> %a0, <2 x double> %mem_v, <2 x double> zeroinitializer, i8 7, i32 4) 
  ret <2 x double> %res
}

