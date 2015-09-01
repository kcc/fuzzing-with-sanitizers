

define <8 x i64> @test_mask_mullo_epi64_rr_512(<8 x i64> %a, <8 x i64> %b) {
  
  
  %res = call <8 x i64> @llvm.x86.avx512.mask.pmull.q.512(<8 x i64> %a, <8 x i64> %b, <8 x i64> zeroinitializer, i8 -1)
  ret <8 x i64> %res
}

define <8 x i64> @test_mask_mullo_epi64_rrk_512(<8 x i64> %a, <8 x i64> %b, <8 x i64> %passThru, i8 %mask) {
  
  
  %res = call <8 x i64> @llvm.x86.avx512.mask.pmull.q.512(<8 x i64> %a, <8 x i64> %b, <8 x i64> %passThru, i8 %mask)
  ret <8 x i64> %res
}

define <8 x i64> @test_mask_mullo_epi64_rrkz_512(<8 x i64> %a, <8 x i64> %b, i8 %mask) {
  
  
  %res = call <8 x i64> @llvm.x86.avx512.mask.pmull.q.512(<8 x i64> %a, <8 x i64> %b, <8 x i64> zeroinitializer, i8 %mask)
  ret <8 x i64> %res
}

define <8 x i64> @test_mask_mullo_epi64_rm_512(<8 x i64> %a, <8 x i64>* %ptr_b) {
  
  
  %b = load <8 x i64>, <8 x i64>* %ptr_b
  %res = call <8 x i64> @llvm.x86.avx512.mask.pmull.q.512(<8 x i64> %a, <8 x i64> %b, <8 x i64> zeroinitializer, i8 -1)
  ret <8 x i64> %res
}

define <8 x i64> @test_mask_mullo_epi64_rmk_512(<8 x i64> %a, <8 x i64>* %ptr_b, <8 x i64> %passThru, i8 %mask) {
  
  
  %b = load <8 x i64>, <8 x i64>* %ptr_b
  %res = call <8 x i64> @llvm.x86.avx512.mask.pmull.q.512(<8 x i64> %a, <8 x i64> %b, <8 x i64> %passThru, i8 %mask)
  ret <8 x i64> %res
}

define <8 x i64> @test_mask_mullo_epi64_rmkz_512(<8 x i64> %a, <8 x i64>* %ptr_b, i8 %mask) {
  
  
  %b = load <8 x i64>, <8 x i64>* %ptr_b
  %res = call <8 x i64> @llvm.x86.avx512.mask.pmull.q.512(<8 x i64> %a, <8 x i64> %b, <8 x i64> zeroinitializer, i8 %mask)
  ret <8 x i64> %res
}

define <8 x i64> @test_mask_mullo_epi64_rmb_512(<8 x i64> %a, i64* %ptr_b) {
  
  
  %q = load i64, i64* %ptr_b
  %vecinit.i = insertelement <8 x i64> undef, i64 %q, i32 0
  %b = shufflevector <8 x i64> %vecinit.i, <8 x i64> undef, <8 x i32> zeroinitializer
  %res = call <8 x i64> @llvm.x86.avx512.mask.pmull.q.512(<8 x i64> %a, <8 x i64> %b, <8 x i64> zeroinitializer, i8 -1)
  ret <8 x i64> %res
}

define <8 x i64> @test_mask_mullo_epi64_rmbk_512(<8 x i64> %a, i64* %ptr_b, <8 x i64> %passThru, i8 %mask) {
  
  
  %q = load i64, i64* %ptr_b
  %vecinit.i = insertelement <8 x i64> undef, i64 %q, i32 0
  %b = shufflevector <8 x i64> %vecinit.i, <8 x i64> undef, <8 x i32> zeroinitializer
  %res = call <8 x i64> @llvm.x86.avx512.mask.pmull.q.512(<8 x i64> %a, <8 x i64> %b, <8 x i64> %passThru, i8 %mask)
  ret <8 x i64> %res
}

define <8 x i64> @test_mask_mullo_epi64_rmbkz_512(<8 x i64> %a, i64* %ptr_b, i8 %mask) {
  
  
  %q = load i64, i64* %ptr_b
  %vecinit.i = insertelement <8 x i64> undef, i64 %q, i32 0
  %b = shufflevector <8 x i64> %vecinit.i, <8 x i64> undef, <8 x i32> zeroinitializer
  %res = call <8 x i64> @llvm.x86.avx512.mask.pmull.q.512(<8 x i64> %a, <8 x i64> %b, <8 x i64> zeroinitializer, i8 %mask)
  ret <8 x i64> %res
}
declare <8 x i64> @llvm.x86.avx512.mask.pmull.q.512(<8 x i64>, <8 x i64>, <8 x i64>, i8)

define <4 x i64> @test_mask_mullo_epi64_rr_256(<4 x i64> %a, <4 x i64> %b) {
  
  
  %res = call <4 x i64> @llvm.x86.avx512.mask.pmull.q.256(<4 x i64> %a, <4 x i64> %b, <4 x i64> zeroinitializer, i8 -1)
  ret <4 x i64> %res
}

define <4 x i64> @test_mask_mullo_epi64_rrk_256(<4 x i64> %a, <4 x i64> %b, <4 x i64> %passThru, i8 %mask) {
  
  
  %res = call <4 x i64> @llvm.x86.avx512.mask.pmull.q.256(<4 x i64> %a, <4 x i64> %b, <4 x i64> %passThru, i8 %mask)
  ret <4 x i64> %res
}

define <4 x i64> @test_mask_mullo_epi64_rrkz_256(<4 x i64> %a, <4 x i64> %b, i8 %mask) {
  
  
  %res = call <4 x i64> @llvm.x86.avx512.mask.pmull.q.256(<4 x i64> %a, <4 x i64> %b, <4 x i64> zeroinitializer, i8 %mask)
  ret <4 x i64> %res
}

define <4 x i64> @test_mask_mullo_epi64_rm_256(<4 x i64> %a, <4 x i64>* %ptr_b) {
  
  
  %b = load <4 x i64>, <4 x i64>* %ptr_b
  %res = call <4 x i64> @llvm.x86.avx512.mask.pmull.q.256(<4 x i64> %a, <4 x i64> %b, <4 x i64> zeroinitializer, i8 -1)
  ret <4 x i64> %res
}

define <4 x i64> @test_mask_mullo_epi64_rmk_256(<4 x i64> %a, <4 x i64>* %ptr_b, <4 x i64> %passThru, i8 %mask) {
  
  
  %b = load <4 x i64>, <4 x i64>* %ptr_b
  %res = call <4 x i64> @llvm.x86.avx512.mask.pmull.q.256(<4 x i64> %a, <4 x i64> %b, <4 x i64> %passThru, i8 %mask)
  ret <4 x i64> %res
}

define <4 x i64> @test_mask_mullo_epi64_rmkz_256(<4 x i64> %a, <4 x i64>* %ptr_b, i8 %mask) {
  
  
  %b = load <4 x i64>, <4 x i64>* %ptr_b
  %res = call <4 x i64> @llvm.x86.avx512.mask.pmull.q.256(<4 x i64> %a, <4 x i64> %b, <4 x i64> zeroinitializer, i8 %mask)
  ret <4 x i64> %res
}

define <4 x i64> @test_mask_mullo_epi64_rmb_256(<4 x i64> %a, i64* %ptr_b) {
  
  
  %q = load i64, i64* %ptr_b
  %vecinit.i = insertelement <4 x i64> undef, i64 %q, i32 0
  %b = shufflevector <4 x i64> %vecinit.i, <4 x i64> undef, <4 x i32> zeroinitializer
  %res = call <4 x i64> @llvm.x86.avx512.mask.pmull.q.256(<4 x i64> %a, <4 x i64> %b, <4 x i64> zeroinitializer, i8 -1)
  ret <4 x i64> %res
}

define <4 x i64> @test_mask_mullo_epi64_rmbk_256(<4 x i64> %a, i64* %ptr_b, <4 x i64> %passThru, i8 %mask) {
  
  
  %q = load i64, i64* %ptr_b
  %vecinit.i = insertelement <4 x i64> undef, i64 %q, i32 0
  %b = shufflevector <4 x i64> %vecinit.i, <4 x i64> undef, <4 x i32> zeroinitializer
  %res = call <4 x i64> @llvm.x86.avx512.mask.pmull.q.256(<4 x i64> %a, <4 x i64> %b, <4 x i64> %passThru, i8 %mask)
  ret <4 x i64> %res
}

define <4 x i64> @test_mask_mullo_epi64_rmbkz_256(<4 x i64> %a, i64* %ptr_b, i8 %mask) {
  
  
  %q = load i64, i64* %ptr_b
  %vecinit.i = insertelement <4 x i64> undef, i64 %q, i32 0
  %b = shufflevector <4 x i64> %vecinit.i, <4 x i64> undef, <4 x i32> zeroinitializer
  %res = call <4 x i64> @llvm.x86.avx512.mask.pmull.q.256(<4 x i64> %a, <4 x i64> %b, <4 x i64> zeroinitializer, i8 %mask)
  ret <4 x i64> %res
}

declare <4 x i64> @llvm.x86.avx512.mask.pmull.q.256(<4 x i64>, <4 x i64>, <4 x i64>, i8)

define <2 x i64> @test_mask_mullo_epi64_rr_128(<2 x i64> %a, <2 x i64> %b) {
  
  
  %res = call <2 x i64> @llvm.x86.avx512.mask.pmull.q.128(<2 x i64> %a, <2 x i64> %b, <2 x i64> zeroinitializer, i8 -1)
  ret <2 x i64> %res
}

define <2 x i64> @test_mask_mullo_epi64_rrk_128(<2 x i64> %a, <2 x i64> %b, <2 x i64> %passThru, i8 %mask) {
  
  
  %res = call <2 x i64> @llvm.x86.avx512.mask.pmull.q.128(<2 x i64> %a, <2 x i64> %b, <2 x i64> %passThru, i8 %mask)
  ret <2 x i64> %res
}

define <2 x i64> @test_mask_mullo_epi64_rrkz_128(<2 x i64> %a, <2 x i64> %b, i8 %mask) {
  
  
  %res = call <2 x i64> @llvm.x86.avx512.mask.pmull.q.128(<2 x i64> %a, <2 x i64> %b, <2 x i64> zeroinitializer, i8 %mask)
  ret <2 x i64> %res
}

define <2 x i64> @test_mask_mullo_epi64_rm_128(<2 x i64> %a, <2 x i64>* %ptr_b) {
  
  
  %b = load <2 x i64>, <2 x i64>* %ptr_b
  %res = call <2 x i64> @llvm.x86.avx512.mask.pmull.q.128(<2 x i64> %a, <2 x i64> %b, <2 x i64> zeroinitializer, i8 -1)
  ret <2 x i64> %res
}

define <2 x i64> @test_mask_mullo_epi64_rmk_128(<2 x i64> %a, <2 x i64>* %ptr_b, <2 x i64> %passThru, i8 %mask) {
  
  
  %b = load <2 x i64>, <2 x i64>* %ptr_b
  %res = call <2 x i64> @llvm.x86.avx512.mask.pmull.q.128(<2 x i64> %a, <2 x i64> %b, <2 x i64> %passThru, i8 %mask)
  ret <2 x i64> %res
}

define <2 x i64> @test_mask_mullo_epi64_rmkz_128(<2 x i64> %a, <2 x i64>* %ptr_b, i8 %mask) {
  
  
  %b = load <2 x i64>, <2 x i64>* %ptr_b
  %res = call <2 x i64> @llvm.x86.avx512.mask.pmull.q.128(<2 x i64> %a, <2 x i64> %b, <2 x i64> zeroinitializer, i8 %mask)
  ret <2 x i64> %res
}

define <2 x i64> @test_mask_mullo_epi64_rmb_128(<2 x i64> %a, i64* %ptr_b) {
  
  
  %q = load i64, i64* %ptr_b
  %vecinit.i = insertelement <2 x i64> undef, i64 %q, i32 0
  %b = shufflevector <2 x i64> %vecinit.i, <2 x i64> undef, <2 x i32> zeroinitializer
  %res = call <2 x i64> @llvm.x86.avx512.mask.pmull.q.128(<2 x i64> %a, <2 x i64> %b, <2 x i64> zeroinitializer, i8 -1)
  ret <2 x i64> %res
}

define <2 x i64> @test_mask_mullo_epi64_rmbk_128(<2 x i64> %a, i64* %ptr_b, <2 x i64> %passThru, i8 %mask) {
  
  
  %q = load i64, i64* %ptr_b
  %vecinit.i = insertelement <2 x i64> undef, i64 %q, i32 0
  %b = shufflevector <2 x i64> %vecinit.i, <2 x i64> undef, <2 x i32> zeroinitializer
  %res = call <2 x i64> @llvm.x86.avx512.mask.pmull.q.128(<2 x i64> %a, <2 x i64> %b, <2 x i64> %passThru, i8 %mask)
  ret <2 x i64> %res
}

define <2 x i64> @test_mask_mullo_epi64_rmbkz_128(<2 x i64> %a, i64* %ptr_b, i8 %mask) {
  
  
  %q = load i64, i64* %ptr_b
  %vecinit.i = insertelement <2 x i64> undef, i64 %q, i32 0
  %b = shufflevector <2 x i64> %vecinit.i, <2 x i64> undef, <2 x i32> zeroinitializer
  %res = call <2 x i64> @llvm.x86.avx512.mask.pmull.q.128(<2 x i64> %a, <2 x i64> %b, <2 x i64> zeroinitializer, i8 %mask)
  ret <2 x i64> %res
}

declare <2 x i64> @llvm.x86.avx512.mask.pmull.q.128(<2 x i64>, <2 x i64>, <2 x i64>, i8)

define <4 x float> @test_mask_andnot_ps_rr_128(<4 x float> %a, <4 x float> %b) {
  
  
  %res = call <4 x float> @llvm.x86.avx512.mask.andn.ps.128(<4 x float> %a, <4 x float> %b, <4 x float> zeroinitializer, i8 -1)
  ret <4 x float> %res
}

define <4 x float> @test_mask_andnot_ps_rrk_128(<4 x float> %a, <4 x float> %b, <4 x float> %passThru, i8 %mask) {
  
  
  %res = call <4 x float> @llvm.x86.avx512.mask.andn.ps.128(<4 x float> %a, <4 x float> %b, <4 x float> %passThru, i8 %mask)
  ret <4 x float> %res
}

define <4 x float> @test_mask_andnot_ps_rrkz_128(<4 x float> %a, <4 x float> %b, i8 %mask) {
  
  
  %res = call <4 x float> @llvm.x86.avx512.mask.andn.ps.128(<4 x float> %a, <4 x float> %b, <4 x float> zeroinitializer, i8 %mask)
  ret <4 x float> %res
}

define <4 x float> @test_mask_andnot_ps_rm_128(<4 x float> %a, <4 x float>* %ptr_b) {
  
  
  %b = load <4 x float>, <4 x float>* %ptr_b
  %res = call <4 x float> @llvm.x86.avx512.mask.andn.ps.128(<4 x float> %a, <4 x float> %b, <4 x float> zeroinitializer, i8 -1)
  ret <4 x float> %res
}

define <4 x float> @test_mask_andnot_ps_rmk_128(<4 x float> %a, <4 x float>* %ptr_b, <4 x float> %passThru, i8 %mask) {
  
  
  %b = load <4 x float>, <4 x float>* %ptr_b
  %res = call <4 x float> @llvm.x86.avx512.mask.andn.ps.128(<4 x float> %a, <4 x float> %b, <4 x float> %passThru, i8 %mask)
  ret <4 x float> %res
}

define <4 x float> @test_mask_andnot_ps_rmkz_128(<4 x float> %a, <4 x float>* %ptr_b, i8 %mask) {
  
  
  %b = load <4 x float>, <4 x float>* %ptr_b
  %res = call <4 x float> @llvm.x86.avx512.mask.andn.ps.128(<4 x float> %a, <4 x float> %b, <4 x float> zeroinitializer, i8 %mask)
  ret <4 x float> %res
}

define <4 x float> @test_mask_andnot_ps_rmb_128(<4 x float> %a, float* %ptr_b) {
  
  
  %q = load float, float* %ptr_b
  %vecinit.i = insertelement <4 x float> undef, float %q, i32 0
  %b = shufflevector <4 x float> %vecinit.i, <4 x float> undef, <4 x i32> zeroinitializer
  %res = call <4 x float> @llvm.x86.avx512.mask.andn.ps.128(<4 x float> %a, <4 x float> %b, <4 x float> zeroinitializer, i8 -1)
  ret <4 x float> %res
}

define <4 x float> @test_mask_andnot_ps_rmbk_128(<4 x float> %a, float* %ptr_b, <4 x float> %passThru, i8 %mask) {
  
  
  %q = load float, float* %ptr_b
  %vecinit.i = insertelement <4 x float> undef, float %q, i32 0
  %b = shufflevector <4 x float> %vecinit.i, <4 x float> undef, <4 x i32> zeroinitializer
  %res = call <4 x float> @llvm.x86.avx512.mask.andn.ps.128(<4 x float> %a, <4 x float> %b, <4 x float> %passThru, i8 %mask)
  ret <4 x float> %res
}

define <4 x float> @test_mask_andnot_ps_rmbkz_128(<4 x float> %a, float* %ptr_b, i8 %mask) {
  
  
  %q = load float, float* %ptr_b
  %vecinit.i = insertelement <4 x float> undef, float %q, i32 0
  %b = shufflevector <4 x float> %vecinit.i, <4 x float> undef, <4 x i32> zeroinitializer
  %res = call <4 x float> @llvm.x86.avx512.mask.andn.ps.128(<4 x float> %a, <4 x float> %b, <4 x float> zeroinitializer, i8 %mask)
  ret <4 x float> %res
}

declare <4 x float> @llvm.x86.avx512.mask.andn.ps.128(<4 x float>, <4 x float>, <4 x float>, i8)

define <8 x float> @test_mask_andnot_ps_rr_256(<8 x float> %a, <8 x float> %b) {
  
  
  %res = call <8 x float> @llvm.x86.avx512.mask.andn.ps.256(<8 x float> %a, <8 x float> %b, <8 x float> zeroinitializer, i8 -1)
  ret <8 x float> %res
}

define <8 x float> @test_mask_andnot_ps_rrk_256(<8 x float> %a, <8 x float> %b, <8 x float> %passThru, i8 %mask) {
  
  
  %res = call <8 x float> @llvm.x86.avx512.mask.andn.ps.256(<8 x float> %a, <8 x float> %b, <8 x float> %passThru, i8 %mask)
  ret <8 x float> %res
}

define <8 x float> @test_mask_andnot_ps_rrkz_256(<8 x float> %a, <8 x float> %b, i8 %mask) {
  
  
  %res = call <8 x float> @llvm.x86.avx512.mask.andn.ps.256(<8 x float> %a, <8 x float> %b, <8 x float> zeroinitializer, i8 %mask)
  ret <8 x float> %res
}

define <8 x float> @test_mask_andnot_ps_rm_256(<8 x float> %a, <8 x float>* %ptr_b) {
  
  
  %b = load <8 x float>, <8 x float>* %ptr_b
  %res = call <8 x float> @llvm.x86.avx512.mask.andn.ps.256(<8 x float> %a, <8 x float> %b, <8 x float> zeroinitializer, i8 -1)
  ret <8 x float> %res
}

define <8 x float> @test_mask_andnot_ps_rmk_256(<8 x float> %a, <8 x float>* %ptr_b, <8 x float> %passThru, i8 %mask) {
  
  
  %b = load <8 x float>, <8 x float>* %ptr_b
  %res = call <8 x float> @llvm.x86.avx512.mask.andn.ps.256(<8 x float> %a, <8 x float> %b, <8 x float> %passThru, i8 %mask)
  ret <8 x float> %res
}

define <8 x float> @test_mask_andnot_ps_rmkz_256(<8 x float> %a, <8 x float>* %ptr_b, i8 %mask) {
  
  
  %b = load <8 x float>, <8 x float>* %ptr_b
  %res = call <8 x float> @llvm.x86.avx512.mask.andn.ps.256(<8 x float> %a, <8 x float> %b, <8 x float> zeroinitializer, i8 %mask)
  ret <8 x float> %res
}

define <8 x float> @test_mask_andnot_ps_rmb_256(<8 x float> %a, float* %ptr_b) {
  
  
  %q = load float, float* %ptr_b
  %vecinit.i = insertelement <8 x float> undef, float %q, i32 0
  %b = shufflevector <8 x float> %vecinit.i, <8 x float> undef, <8 x i32> zeroinitializer
  %res = call <8 x float> @llvm.x86.avx512.mask.andn.ps.256(<8 x float> %a, <8 x float> %b, <8 x float> zeroinitializer, i8 -1)
  ret <8 x float> %res
}

define <8 x float> @test_mask_andnot_ps_rmbk_256(<8 x float> %a, float* %ptr_b, <8 x float> %passThru, i8 %mask) {
  
  
  %q = load float, float* %ptr_b
  %vecinit.i = insertelement <8 x float> undef, float %q, i32 0
  %b = shufflevector <8 x float> %vecinit.i, <8 x float> undef, <8 x i32> zeroinitializer
  %res = call <8 x float> @llvm.x86.avx512.mask.andn.ps.256(<8 x float> %a, <8 x float> %b, <8 x float> %passThru, i8 %mask)
  ret <8 x float> %res
}

define <8 x float> @test_mask_andnot_ps_rmbkz_256(<8 x float> %a, float* %ptr_b, i8 %mask) {
  
  
  %q = load float, float* %ptr_b
  %vecinit.i = insertelement <8 x float> undef, float %q, i32 0
  %b = shufflevector <8 x float> %vecinit.i, <8 x float> undef, <8 x i32> zeroinitializer
  %res = call <8 x float> @llvm.x86.avx512.mask.andn.ps.256(<8 x float> %a, <8 x float> %b, <8 x float> zeroinitializer, i8 %mask)
  ret <8 x float> %res
}

declare <8 x float> @llvm.x86.avx512.mask.andn.ps.256(<8 x float>, <8 x float>, <8 x float>, i8)

define <16 x float> @test_mask_andnot_ps_rr_512(<16 x float> %a, <16 x float> %b) {
  
  
  %res = call <16 x float> @llvm.x86.avx512.mask.andn.ps.512(<16 x float> %a, <16 x float> %b, <16 x float> zeroinitializer, i16 -1)
  ret <16 x float> %res
}

define <16 x float> @test_mask_andnot_ps_rrk_512(<16 x float> %a, <16 x float> %b, <16 x float> %passThru, i16 %mask) {
  
  
  %res = call <16 x float> @llvm.x86.avx512.mask.andn.ps.512(<16 x float> %a, <16 x float> %b, <16 x float> %passThru, i16 %mask)
  ret <16 x float> %res
}

define <16 x float> @test_mask_andnot_ps_rrkz_512(<16 x float> %a, <16 x float> %b, i16 %mask) {
  
  
  %res = call <16 x float> @llvm.x86.avx512.mask.andn.ps.512(<16 x float> %a, <16 x float> %b, <16 x float> zeroinitializer, i16 %mask)
  ret <16 x float> %res
}

define <16 x float> @test_mask_andnot_ps_rm_512(<16 x float> %a, <16 x float>* %ptr_b) {
  
  
  %b = load <16 x float>, <16 x float>* %ptr_b
  %res = call <16 x float> @llvm.x86.avx512.mask.andn.ps.512(<16 x float> %a, <16 x float> %b, <16 x float> zeroinitializer, i16 -1)
  ret <16 x float> %res
}

define <16 x float> @test_mask_andnot_ps_rmk_512(<16 x float> %a, <16 x float>* %ptr_b, <16 x float> %passThru, i16 %mask) {
  
  
  %b = load <16 x float>, <16 x float>* %ptr_b
  %res = call <16 x float> @llvm.x86.avx512.mask.andn.ps.512(<16 x float> %a, <16 x float> %b, <16 x float> %passThru, i16 %mask)
  ret <16 x float> %res
}

define <16 x float> @test_mask_andnot_ps_rmkz_512(<16 x float> %a, <16 x float>* %ptr_b, i16 %mask) {
  
  
  %b = load <16 x float>, <16 x float>* %ptr_b
  %res = call <16 x float> @llvm.x86.avx512.mask.andn.ps.512(<16 x float> %a, <16 x float> %b, <16 x float> zeroinitializer, i16 %mask)
  ret <16 x float> %res
}

define <16 x float> @test_mask_andnot_ps_rmb_512(<16 x float> %a, float* %ptr_b) {
  
  
  %q = load float, float* %ptr_b
  %vecinit.i = insertelement <16 x float> undef, float %q, i32 0
  %b = shufflevector <16 x float> %vecinit.i, <16 x float> undef, <16 x i32> zeroinitializer
  %res = call <16 x float> @llvm.x86.avx512.mask.andn.ps.512(<16 x float> %a, <16 x float> %b, <16 x float> zeroinitializer, i16 -1)
  ret <16 x float> %res
}

define <16 x float> @test_mask_andnot_ps_rmbk_512(<16 x float> %a, float* %ptr_b, <16 x float> %passThru, i16 %mask) {
  
  
  %q = load float, float* %ptr_b
  %vecinit.i = insertelement <16 x float> undef, float %q, i32 0
  %b = shufflevector <16 x float> %vecinit.i, <16 x float> undef, <16 x i32> zeroinitializer
  %res = call <16 x float> @llvm.x86.avx512.mask.andn.ps.512(<16 x float> %a, <16 x float> %b, <16 x float> %passThru, i16 %mask)
  ret <16 x float> %res
}

define <16 x float> @test_mask_andnot_ps_rmbkz_512(<16 x float> %a, float* %ptr_b, i16 %mask) {
  
  
  %q = load float, float* %ptr_b
  %vecinit.i = insertelement <16 x float> undef, float %q, i32 0
  %b = shufflevector <16 x float> %vecinit.i, <16 x float> undef, <16 x i32> zeroinitializer
  %res = call <16 x float> @llvm.x86.avx512.mask.andn.ps.512(<16 x float> %a, <16 x float> %b, <16 x float> zeroinitializer, i16 %mask)
  ret <16 x float> %res
}

declare <16 x float> @llvm.x86.avx512.mask.andn.ps.512(<16 x float>, <16 x float>, <16 x float>, i16)

define <4 x float> @test_mask_and_ps_rr_128(<4 x float> %a, <4 x float> %b) {
  
  
  %res = call <4 x float> @llvm.x86.avx512.mask.and.ps.128(<4 x float> %a, <4 x float> %b, <4 x float> zeroinitializer, i8 -1)
  ret <4 x float> %res
}

define <4 x float> @test_mask_and_ps_rrk_128(<4 x float> %a, <4 x float> %b, <4 x float> %passThru, i8 %mask) {
  
  
  %res = call <4 x float> @llvm.x86.avx512.mask.and.ps.128(<4 x float> %a, <4 x float> %b, <4 x float> %passThru, i8 %mask)
  ret <4 x float> %res
}

define <4 x float> @test_mask_and_ps_rrkz_128(<4 x float> %a, <4 x float> %b, i8 %mask) {
  
  
  %res = call <4 x float> @llvm.x86.avx512.mask.and.ps.128(<4 x float> %a, <4 x float> %b, <4 x float> zeroinitializer, i8 %mask)
  ret <4 x float> %res
}

define <4 x float> @test_mask_and_ps_rm_128(<4 x float> %a, <4 x float>* %ptr_b) {
  
  
  %b = load <4 x float>, <4 x float>* %ptr_b
  %res = call <4 x float> @llvm.x86.avx512.mask.and.ps.128(<4 x float> %a, <4 x float> %b, <4 x float> zeroinitializer, i8 -1)
  ret <4 x float> %res
}

define <4 x float> @test_mask_and_ps_rmk_128(<4 x float> %a, <4 x float>* %ptr_b, <4 x float> %passThru, i8 %mask) {
  
  
  %b = load <4 x float>, <4 x float>* %ptr_b
  %res = call <4 x float> @llvm.x86.avx512.mask.and.ps.128(<4 x float> %a, <4 x float> %b, <4 x float> %passThru, i8 %mask)
  ret <4 x float> %res
}

define <4 x float> @test_mask_and_ps_rmkz_128(<4 x float> %a, <4 x float>* %ptr_b, i8 %mask) {
  
  
  %b = load <4 x float>, <4 x float>* %ptr_b
  %res = call <4 x float> @llvm.x86.avx512.mask.and.ps.128(<4 x float> %a, <4 x float> %b, <4 x float> zeroinitializer, i8 %mask)
  ret <4 x float> %res
}

define <4 x float> @test_mask_and_ps_rmb_128(<4 x float> %a, float* %ptr_b) {
  
  
  %q = load float, float* %ptr_b
  %vecinit.i = insertelement <4 x float> undef, float %q, i32 0
  %b = shufflevector <4 x float> %vecinit.i, <4 x float> undef, <4 x i32> zeroinitializer
  %res = call <4 x float> @llvm.x86.avx512.mask.and.ps.128(<4 x float> %a, <4 x float> %b, <4 x float> zeroinitializer, i8 -1)
  ret <4 x float> %res
}

define <4 x float> @test_mask_and_ps_rmbk_128(<4 x float> %a, float* %ptr_b, <4 x float> %passThru, i8 %mask) {
  
  
  %q = load float, float* %ptr_b
  %vecinit.i = insertelement <4 x float> undef, float %q, i32 0
  %b = shufflevector <4 x float> %vecinit.i, <4 x float> undef, <4 x i32> zeroinitializer
  %res = call <4 x float> @llvm.x86.avx512.mask.and.ps.128(<4 x float> %a, <4 x float> %b, <4 x float> %passThru, i8 %mask)
  ret <4 x float> %res
}

define <4 x float> @test_mask_and_ps_rmbkz_128(<4 x float> %a, float* %ptr_b, i8 %mask) {
  
  
  %q = load float, float* %ptr_b
  %vecinit.i = insertelement <4 x float> undef, float %q, i32 0
  %b = shufflevector <4 x float> %vecinit.i, <4 x float> undef, <4 x i32> zeroinitializer
  %res = call <4 x float> @llvm.x86.avx512.mask.and.ps.128(<4 x float> %a, <4 x float> %b, <4 x float> zeroinitializer, i8 %mask)
  ret <4 x float> %res
}

declare <4 x float> @llvm.x86.avx512.mask.and.ps.128(<4 x float>, <4 x float>, <4 x float>, i8)

define <8 x float> @test_mask_and_ps_rr_256(<8 x float> %a, <8 x float> %b) {
  
  
  %res = call <8 x float> @llvm.x86.avx512.mask.and.ps.256(<8 x float> %a, <8 x float> %b, <8 x float> zeroinitializer, i8 -1)
  ret <8 x float> %res
}

define <8 x float> @test_mask_and_ps_rrk_256(<8 x float> %a, <8 x float> %b, <8 x float> %passThru, i8 %mask) {
  
  
  %res = call <8 x float> @llvm.x86.avx512.mask.and.ps.256(<8 x float> %a, <8 x float> %b, <8 x float> %passThru, i8 %mask)
  ret <8 x float> %res
}

define <8 x float> @test_mask_and_ps_rrkz_256(<8 x float> %a, <8 x float> %b, i8 %mask) {
  
  
  %res = call <8 x float> @llvm.x86.avx512.mask.and.ps.256(<8 x float> %a, <8 x float> %b, <8 x float> zeroinitializer, i8 %mask)
  ret <8 x float> %res
}

define <8 x float> @test_mask_and_ps_rm_256(<8 x float> %a, <8 x float>* %ptr_b) {
  
  
  %b = load <8 x float>, <8 x float>* %ptr_b
  %res = call <8 x float> @llvm.x86.avx512.mask.and.ps.256(<8 x float> %a, <8 x float> %b, <8 x float> zeroinitializer, i8 -1)
  ret <8 x float> %res
}

define <8 x float> @test_mask_and_ps_rmk_256(<8 x float> %a, <8 x float>* %ptr_b, <8 x float> %passThru, i8 %mask) {
  
  
  %b = load <8 x float>, <8 x float>* %ptr_b
  %res = call <8 x float> @llvm.x86.avx512.mask.and.ps.256(<8 x float> %a, <8 x float> %b, <8 x float> %passThru, i8 %mask)
  ret <8 x float> %res
}

define <8 x float> @test_mask_and_ps_rmkz_256(<8 x float> %a, <8 x float>* %ptr_b, i8 %mask) {
  
  
  %b = load <8 x float>, <8 x float>* %ptr_b
  %res = call <8 x float> @llvm.x86.avx512.mask.and.ps.256(<8 x float> %a, <8 x float> %b, <8 x float> zeroinitializer, i8 %mask)
  ret <8 x float> %res
}

define <8 x float> @test_mask_and_ps_rmb_256(<8 x float> %a, float* %ptr_b) {
  
  
  %q = load float, float* %ptr_b
  %vecinit.i = insertelement <8 x float> undef, float %q, i32 0
  %b = shufflevector <8 x float> %vecinit.i, <8 x float> undef, <8 x i32> zeroinitializer
  %res = call <8 x float> @llvm.x86.avx512.mask.and.ps.256(<8 x float> %a, <8 x float> %b, <8 x float> zeroinitializer, i8 -1)
  ret <8 x float> %res
}

define <8 x float> @test_mask_and_ps_rmbk_256(<8 x float> %a, float* %ptr_b, <8 x float> %passThru, i8 %mask) {
  
  
  %q = load float, float* %ptr_b
  %vecinit.i = insertelement <8 x float> undef, float %q, i32 0
  %b = shufflevector <8 x float> %vecinit.i, <8 x float> undef, <8 x i32> zeroinitializer
  %res = call <8 x float> @llvm.x86.avx512.mask.and.ps.256(<8 x float> %a, <8 x float> %b, <8 x float> %passThru, i8 %mask)
  ret <8 x float> %res
}

define <8 x float> @test_mask_and_ps_rmbkz_256(<8 x float> %a, float* %ptr_b, i8 %mask) {
  
  
  %q = load float, float* %ptr_b
  %vecinit.i = insertelement <8 x float> undef, float %q, i32 0
  %b = shufflevector <8 x float> %vecinit.i, <8 x float> undef, <8 x i32> zeroinitializer
  %res = call <8 x float> @llvm.x86.avx512.mask.and.ps.256(<8 x float> %a, <8 x float> %b, <8 x float> zeroinitializer, i8 %mask)
  ret <8 x float> %res
}

declare <8 x float> @llvm.x86.avx512.mask.and.ps.256(<8 x float>, <8 x float>, <8 x float>, i8)

define <16 x float> @test_mask_and_ps_rr_512(<16 x float> %a, <16 x float> %b) {
  
  
  %res = call <16 x float> @llvm.x86.avx512.mask.and.ps.512(<16 x float> %a, <16 x float> %b, <16 x float> zeroinitializer, i16 -1)
  ret <16 x float> %res
}

define <16 x float> @test_mask_and_ps_rrk_512(<16 x float> %a, <16 x float> %b, <16 x float> %passThru, i16 %mask) {
  
  
  %res = call <16 x float> @llvm.x86.avx512.mask.and.ps.512(<16 x float> %a, <16 x float> %b, <16 x float> %passThru, i16 %mask)
  ret <16 x float> %res
}

define <16 x float> @test_mask_and_ps_rrkz_512(<16 x float> %a, <16 x float> %b, i16 %mask) {
  
  
  %res = call <16 x float> @llvm.x86.avx512.mask.and.ps.512(<16 x float> %a, <16 x float> %b, <16 x float> zeroinitializer, i16 %mask)
  ret <16 x float> %res
}

define <16 x float> @test_mask_and_ps_rm_512(<16 x float> %a, <16 x float>* %ptr_b) {
  
  
  %b = load <16 x float>, <16 x float>* %ptr_b
  %res = call <16 x float> @llvm.x86.avx512.mask.and.ps.512(<16 x float> %a, <16 x float> %b, <16 x float> zeroinitializer, i16 -1)
  ret <16 x float> %res
}

define <16 x float> @test_mask_and_ps_rmk_512(<16 x float> %a, <16 x float>* %ptr_b, <16 x float> %passThru, i16 %mask) {
  
  
  %b = load <16 x float>, <16 x float>* %ptr_b
  %res = call <16 x float> @llvm.x86.avx512.mask.and.ps.512(<16 x float> %a, <16 x float> %b, <16 x float> %passThru, i16 %mask)
  ret <16 x float> %res
}

define <16 x float> @test_mask_and_ps_rmkz_512(<16 x float> %a, <16 x float>* %ptr_b, i16 %mask) {
  
  
  %b = load <16 x float>, <16 x float>* %ptr_b
  %res = call <16 x float> @llvm.x86.avx512.mask.and.ps.512(<16 x float> %a, <16 x float> %b, <16 x float> zeroinitializer, i16 %mask)
  ret <16 x float> %res
}

define <16 x float> @test_mask_and_ps_rmb_512(<16 x float> %a, float* %ptr_b) {
  
  
  %q = load float, float* %ptr_b
  %vecinit.i = insertelement <16 x float> undef, float %q, i32 0
  %b = shufflevector <16 x float> %vecinit.i, <16 x float> undef, <16 x i32> zeroinitializer
  %res = call <16 x float> @llvm.x86.avx512.mask.and.ps.512(<16 x float> %a, <16 x float> %b, <16 x float> zeroinitializer, i16 -1)
  ret <16 x float> %res
}

define <16 x float> @test_mask_and_ps_rmbk_512(<16 x float> %a, float* %ptr_b, <16 x float> %passThru, i16 %mask) {
  
  
  %q = load float, float* %ptr_b
  %vecinit.i = insertelement <16 x float> undef, float %q, i32 0
  %b = shufflevector <16 x float> %vecinit.i, <16 x float> undef, <16 x i32> zeroinitializer
  %res = call <16 x float> @llvm.x86.avx512.mask.and.ps.512(<16 x float> %a, <16 x float> %b, <16 x float> %passThru, i16 %mask)
  ret <16 x float> %res
}

define <16 x float> @test_mask_and_ps_rmbkz_512(<16 x float> %a, float* %ptr_b, i16 %mask) {
  
  
  %q = load float, float* %ptr_b
  %vecinit.i = insertelement <16 x float> undef, float %q, i32 0
  %b = shufflevector <16 x float> %vecinit.i, <16 x float> undef, <16 x i32> zeroinitializer
  %res = call <16 x float> @llvm.x86.avx512.mask.and.ps.512(<16 x float> %a, <16 x float> %b, <16 x float> zeroinitializer, i16 %mask)
  ret <16 x float> %res
}

declare <16 x float> @llvm.x86.avx512.mask.and.ps.512(<16 x float>, <16 x float>, <16 x float>, i16)

define <4 x float> @test_mask_or_ps_rr_128(<4 x float> %a, <4 x float> %b) {
  
  
  %res = call <4 x float> @llvm.x86.avx512.mask.or.ps.128(<4 x float> %a, <4 x float> %b, <4 x float> zeroinitializer, i8 -1)
  ret <4 x float> %res
}

define <4 x float> @test_mask_or_ps_rrk_128(<4 x float> %a, <4 x float> %b, <4 x float> %passThru, i8 %mask) {
  
  
  %res = call <4 x float> @llvm.x86.avx512.mask.or.ps.128(<4 x float> %a, <4 x float> %b, <4 x float> %passThru, i8 %mask)
  ret <4 x float> %res
}

define <4 x float> @test_mask_or_ps_rrkz_128(<4 x float> %a, <4 x float> %b, i8 %mask) {
  
  
  %res = call <4 x float> @llvm.x86.avx512.mask.or.ps.128(<4 x float> %a, <4 x float> %b, <4 x float> zeroinitializer, i8 %mask)
  ret <4 x float> %res
}

define <4 x float> @test_mask_or_ps_rm_128(<4 x float> %a, <4 x float>* %ptr_b) {
  
  
  %b = load <4 x float>, <4 x float>* %ptr_b
  %res = call <4 x float> @llvm.x86.avx512.mask.or.ps.128(<4 x float> %a, <4 x float> %b, <4 x float> zeroinitializer, i8 -1)
  ret <4 x float> %res
}

define <4 x float> @test_mask_or_ps_rmk_128(<4 x float> %a, <4 x float>* %ptr_b, <4 x float> %passThru, i8 %mask) {
  
  
  %b = load <4 x float>, <4 x float>* %ptr_b
  %res = call <4 x float> @llvm.x86.avx512.mask.or.ps.128(<4 x float> %a, <4 x float> %b, <4 x float> %passThru, i8 %mask)
  ret <4 x float> %res
}

define <4 x float> @test_mask_or_ps_rmkz_128(<4 x float> %a, <4 x float>* %ptr_b, i8 %mask) {
  
  
  %b = load <4 x float>, <4 x float>* %ptr_b
  %res = call <4 x float> @llvm.x86.avx512.mask.or.ps.128(<4 x float> %a, <4 x float> %b, <4 x float> zeroinitializer, i8 %mask)
  ret <4 x float> %res
}

define <4 x float> @test_mask_or_ps_rmb_128(<4 x float> %a, float* %ptr_b) {
  
  
  %q = load float, float* %ptr_b
  %vecinit.i = insertelement <4 x float> undef, float %q, i32 0
  %b = shufflevector <4 x float> %vecinit.i, <4 x float> undef, <4 x i32> zeroinitializer
  %res = call <4 x float> @llvm.x86.avx512.mask.or.ps.128(<4 x float> %a, <4 x float> %b, <4 x float> zeroinitializer, i8 -1)
  ret <4 x float> %res
}

define <4 x float> @test_mask_or_ps_rmbk_128(<4 x float> %a, float* %ptr_b, <4 x float> %passThru, i8 %mask) {
  
  
  %q = load float, float* %ptr_b
  %vecinit.i = insertelement <4 x float> undef, float %q, i32 0
  %b = shufflevector <4 x float> %vecinit.i, <4 x float> undef, <4 x i32> zeroinitializer
  %res = call <4 x float> @llvm.x86.avx512.mask.or.ps.128(<4 x float> %a, <4 x float> %b, <4 x float> %passThru, i8 %mask)
  ret <4 x float> %res
}

define <4 x float> @test_mask_or_ps_rmbkz_128(<4 x float> %a, float* %ptr_b, i8 %mask) {
  
  
  %q = load float, float* %ptr_b
  %vecinit.i = insertelement <4 x float> undef, float %q, i32 0
  %b = shufflevector <4 x float> %vecinit.i, <4 x float> undef, <4 x i32> zeroinitializer
  %res = call <4 x float> @llvm.x86.avx512.mask.or.ps.128(<4 x float> %a, <4 x float> %b, <4 x float> zeroinitializer, i8 %mask)
  ret <4 x float> %res
}

declare <4 x float> @llvm.x86.avx512.mask.or.ps.128(<4 x float>, <4 x float>, <4 x float>, i8)

define <8 x float> @test_mask_or_ps_rr_256(<8 x float> %a, <8 x float> %b) {
  
  
  %res = call <8 x float> @llvm.x86.avx512.mask.or.ps.256(<8 x float> %a, <8 x float> %b, <8 x float> zeroinitializer, i8 -1)
  ret <8 x float> %res
}

define <8 x float> @test_mask_or_ps_rrk_256(<8 x float> %a, <8 x float> %b, <8 x float> %passThru, i8 %mask) {
  
  
  %res = call <8 x float> @llvm.x86.avx512.mask.or.ps.256(<8 x float> %a, <8 x float> %b, <8 x float> %passThru, i8 %mask)
  ret <8 x float> %res
}

define <8 x float> @test_mask_or_ps_rrkz_256(<8 x float> %a, <8 x float> %b, i8 %mask) {
  
  
  %res = call <8 x float> @llvm.x86.avx512.mask.or.ps.256(<8 x float> %a, <8 x float> %b, <8 x float> zeroinitializer, i8 %mask)
  ret <8 x float> %res
}

define <8 x float> @test_mask_or_ps_rm_256(<8 x float> %a, <8 x float>* %ptr_b) {
  
  
  %b = load <8 x float>, <8 x float>* %ptr_b
  %res = call <8 x float> @llvm.x86.avx512.mask.or.ps.256(<8 x float> %a, <8 x float> %b, <8 x float> zeroinitializer, i8 -1)
  ret <8 x float> %res
}

define <8 x float> @test_mask_or_ps_rmk_256(<8 x float> %a, <8 x float>* %ptr_b, <8 x float> %passThru, i8 %mask) {
  
  
  %b = load <8 x float>, <8 x float>* %ptr_b
  %res = call <8 x float> @llvm.x86.avx512.mask.or.ps.256(<8 x float> %a, <8 x float> %b, <8 x float> %passThru, i8 %mask)
  ret <8 x float> %res
}

define <8 x float> @test_mask_or_ps_rmkz_256(<8 x float> %a, <8 x float>* %ptr_b, i8 %mask) {
  
  
  %b = load <8 x float>, <8 x float>* %ptr_b
  %res = call <8 x float> @llvm.x86.avx512.mask.or.ps.256(<8 x float> %a, <8 x float> %b, <8 x float> zeroinitializer, i8 %mask)
  ret <8 x float> %res
}

define <8 x float> @test_mask_or_ps_rmb_256(<8 x float> %a, float* %ptr_b) {
  
  
  %q = load float, float* %ptr_b
  %vecinit.i = insertelement <8 x float> undef, float %q, i32 0
  %b = shufflevector <8 x float> %vecinit.i, <8 x float> undef, <8 x i32> zeroinitializer
  %res = call <8 x float> @llvm.x86.avx512.mask.or.ps.256(<8 x float> %a, <8 x float> %b, <8 x float> zeroinitializer, i8 -1)
  ret <8 x float> %res
}

define <8 x float> @test_mask_or_ps_rmbk_256(<8 x float> %a, float* %ptr_b, <8 x float> %passThru, i8 %mask) {
  
  
  %q = load float, float* %ptr_b
  %vecinit.i = insertelement <8 x float> undef, float %q, i32 0
  %b = shufflevector <8 x float> %vecinit.i, <8 x float> undef, <8 x i32> zeroinitializer
  %res = call <8 x float> @llvm.x86.avx512.mask.or.ps.256(<8 x float> %a, <8 x float> %b, <8 x float> %passThru, i8 %mask)
  ret <8 x float> %res
}

define <8 x float> @test_mask_or_ps_rmbkz_256(<8 x float> %a, float* %ptr_b, i8 %mask) {
  
  
  %q = load float, float* %ptr_b
  %vecinit.i = insertelement <8 x float> undef, float %q, i32 0
  %b = shufflevector <8 x float> %vecinit.i, <8 x float> undef, <8 x i32> zeroinitializer
  %res = call <8 x float> @llvm.x86.avx512.mask.or.ps.256(<8 x float> %a, <8 x float> %b, <8 x float> zeroinitializer, i8 %mask)
  ret <8 x float> %res
}

declare <8 x float> @llvm.x86.avx512.mask.or.ps.256(<8 x float>, <8 x float>, <8 x float>, i8)

define <16 x float> @test_mask_or_ps_rr_512(<16 x float> %a, <16 x float> %b) {
  
  
  %res = call <16 x float> @llvm.x86.avx512.mask.or.ps.512(<16 x float> %a, <16 x float> %b, <16 x float> zeroinitializer, i16 -1)
  ret <16 x float> %res
}

define <16 x float> @test_mask_or_ps_rrk_512(<16 x float> %a, <16 x float> %b, <16 x float> %passThru, i16 %mask) {
  
  
  %res = call <16 x float> @llvm.x86.avx512.mask.or.ps.512(<16 x float> %a, <16 x float> %b, <16 x float> %passThru, i16 %mask)
  ret <16 x float> %res
}

define <16 x float> @test_mask_or_ps_rrkz_512(<16 x float> %a, <16 x float> %b, i16 %mask) {
  
  
  %res = call <16 x float> @llvm.x86.avx512.mask.or.ps.512(<16 x float> %a, <16 x float> %b, <16 x float> zeroinitializer, i16 %mask)
  ret <16 x float> %res
}

define <16 x float> @test_mask_or_ps_rm_512(<16 x float> %a, <16 x float>* %ptr_b) {
  
  
  %b = load <16 x float>, <16 x float>* %ptr_b
  %res = call <16 x float> @llvm.x86.avx512.mask.or.ps.512(<16 x float> %a, <16 x float> %b, <16 x float> zeroinitializer, i16 -1)
  ret <16 x float> %res
}

define <16 x float> @test_mask_or_ps_rmk_512(<16 x float> %a, <16 x float>* %ptr_b, <16 x float> %passThru, i16 %mask) {
  
  
  %b = load <16 x float>, <16 x float>* %ptr_b
  %res = call <16 x float> @llvm.x86.avx512.mask.or.ps.512(<16 x float> %a, <16 x float> %b, <16 x float> %passThru, i16 %mask)
  ret <16 x float> %res
}

define <16 x float> @test_mask_or_ps_rmkz_512(<16 x float> %a, <16 x float>* %ptr_b, i16 %mask) {
  
  
  %b = load <16 x float>, <16 x float>* %ptr_b
  %res = call <16 x float> @llvm.x86.avx512.mask.or.ps.512(<16 x float> %a, <16 x float> %b, <16 x float> zeroinitializer, i16 %mask)
  ret <16 x float> %res
}

define <16 x float> @test_mask_or_ps_rmb_512(<16 x float> %a, float* %ptr_b) {
  
  
  %q = load float, float* %ptr_b
  %vecinit.i = insertelement <16 x float> undef, float %q, i32 0
  %b = shufflevector <16 x float> %vecinit.i, <16 x float> undef, <16 x i32> zeroinitializer
  %res = call <16 x float> @llvm.x86.avx512.mask.or.ps.512(<16 x float> %a, <16 x float> %b, <16 x float> zeroinitializer, i16 -1)
  ret <16 x float> %res
}

define <16 x float> @test_mask_or_ps_rmbk_512(<16 x float> %a, float* %ptr_b, <16 x float> %passThru, i16 %mask) {
  
  
  %q = load float, float* %ptr_b
  %vecinit.i = insertelement <16 x float> undef, float %q, i32 0
  %b = shufflevector <16 x float> %vecinit.i, <16 x float> undef, <16 x i32> zeroinitializer
  %res = call <16 x float> @llvm.x86.avx512.mask.or.ps.512(<16 x float> %a, <16 x float> %b, <16 x float> %passThru, i16 %mask)
  ret <16 x float> %res
}

define <16 x float> @test_mask_or_ps_rmbkz_512(<16 x float> %a, float* %ptr_b, i16 %mask) {
  
  
  %q = load float, float* %ptr_b
  %vecinit.i = insertelement <16 x float> undef, float %q, i32 0
  %b = shufflevector <16 x float> %vecinit.i, <16 x float> undef, <16 x i32> zeroinitializer
  %res = call <16 x float> @llvm.x86.avx512.mask.or.ps.512(<16 x float> %a, <16 x float> %b, <16 x float> zeroinitializer, i16 %mask)
  ret <16 x float> %res
}

declare <16 x float> @llvm.x86.avx512.mask.or.ps.512(<16 x float>, <16 x float>, <16 x float>, i16)

define <4 x float> @test_mask_xor_ps_rr_128(<4 x float> %a, <4 x float> %b) {
  
  
  %res = call <4 x float> @llvm.x86.avx512.mask.xor.ps.128(<4 x float> %a, <4 x float> %b, <4 x float> zeroinitializer, i8 -1)
  ret <4 x float> %res
}

define <4 x float> @test_mask_xor_ps_rrk_128(<4 x float> %a, <4 x float> %b, <4 x float> %passThru, i8 %mask) {
  
  
  %res = call <4 x float> @llvm.x86.avx512.mask.xor.ps.128(<4 x float> %a, <4 x float> %b, <4 x float> %passThru, i8 %mask)
  ret <4 x float> %res
}

define <4 x float> @test_mask_xor_ps_rrkz_128(<4 x float> %a, <4 x float> %b, i8 %mask) {
  
  
  %res = call <4 x float> @llvm.x86.avx512.mask.xor.ps.128(<4 x float> %a, <4 x float> %b, <4 x float> zeroinitializer, i8 %mask)
  ret <4 x float> %res
}

define <4 x float> @test_mask_xor_ps_rm_128(<4 x float> %a, <4 x float>* %ptr_b) {
  
  
  %b = load <4 x float>, <4 x float>* %ptr_b
  %res = call <4 x float> @llvm.x86.avx512.mask.xor.ps.128(<4 x float> %a, <4 x float> %b, <4 x float> zeroinitializer, i8 -1)
  ret <4 x float> %res
}

define <4 x float> @test_mask_xor_ps_rmk_128(<4 x float> %a, <4 x float>* %ptr_b, <4 x float> %passThru, i8 %mask) {
  
  
  %b = load <4 x float>, <4 x float>* %ptr_b
  %res = call <4 x float> @llvm.x86.avx512.mask.xor.ps.128(<4 x float> %a, <4 x float> %b, <4 x float> %passThru, i8 %mask)
  ret <4 x float> %res
}

define <4 x float> @test_mask_xor_ps_rmkz_128(<4 x float> %a, <4 x float>* %ptr_b, i8 %mask) {
  
  
  %b = load <4 x float>, <4 x float>* %ptr_b
  %res = call <4 x float> @llvm.x86.avx512.mask.xor.ps.128(<4 x float> %a, <4 x float> %b, <4 x float> zeroinitializer, i8 %mask)
  ret <4 x float> %res
}

define <4 x float> @test_mask_xor_ps_rmb_128(<4 x float> %a, float* %ptr_b) {
  
  
  %q = load float, float* %ptr_b
  %vecinit.i = insertelement <4 x float> undef, float %q, i32 0
  %b = shufflevector <4 x float> %vecinit.i, <4 x float> undef, <4 x i32> zeroinitializer
  %res = call <4 x float> @llvm.x86.avx512.mask.xor.ps.128(<4 x float> %a, <4 x float> %b, <4 x float> zeroinitializer, i8 -1)
  ret <4 x float> %res
}

define <4 x float> @test_mask_xor_ps_rmbk_128(<4 x float> %a, float* %ptr_b, <4 x float> %passThru, i8 %mask) {
  
  
  %q = load float, float* %ptr_b
  %vecinit.i = insertelement <4 x float> undef, float %q, i32 0
  %b = shufflevector <4 x float> %vecinit.i, <4 x float> undef, <4 x i32> zeroinitializer
  %res = call <4 x float> @llvm.x86.avx512.mask.xor.ps.128(<4 x float> %a, <4 x float> %b, <4 x float> %passThru, i8 %mask)
  ret <4 x float> %res
}

define <4 x float> @test_mask_xor_ps_rmbkz_128(<4 x float> %a, float* %ptr_b, i8 %mask) {
  
  
  %q = load float, float* %ptr_b
  %vecinit.i = insertelement <4 x float> undef, float %q, i32 0
  %b = shufflevector <4 x float> %vecinit.i, <4 x float> undef, <4 x i32> zeroinitializer
  %res = call <4 x float> @llvm.x86.avx512.mask.xor.ps.128(<4 x float> %a, <4 x float> %b, <4 x float> zeroinitializer, i8 %mask)
  ret <4 x float> %res
}

declare <4 x float> @llvm.x86.avx512.mask.xor.ps.128(<4 x float>, <4 x float>, <4 x float>, i8)

define <8 x float> @test_mask_xor_ps_rr_256(<8 x float> %a, <8 x float> %b) {
  
  
  %res = call <8 x float> @llvm.x86.avx512.mask.xor.ps.256(<8 x float> %a, <8 x float> %b, <8 x float> zeroinitializer, i8 -1)
  ret <8 x float> %res
}

define <8 x float> @test_mask_xor_ps_rrk_256(<8 x float> %a, <8 x float> %b, <8 x float> %passThru, i8 %mask) {
  
  
  %res = call <8 x float> @llvm.x86.avx512.mask.xor.ps.256(<8 x float> %a, <8 x float> %b, <8 x float> %passThru, i8 %mask)
  ret <8 x float> %res
}

define <8 x float> @test_mask_xor_ps_rrkz_256(<8 x float> %a, <8 x float> %b, i8 %mask) {
  
  
  %res = call <8 x float> @llvm.x86.avx512.mask.xor.ps.256(<8 x float> %a, <8 x float> %b, <8 x float> zeroinitializer, i8 %mask)
  ret <8 x float> %res
}

define <8 x float> @test_mask_xor_ps_rm_256(<8 x float> %a, <8 x float>* %ptr_b) {
  
  
  %b = load <8 x float>, <8 x float>* %ptr_b
  %res = call <8 x float> @llvm.x86.avx512.mask.xor.ps.256(<8 x float> %a, <8 x float> %b, <8 x float> zeroinitializer, i8 -1)
  ret <8 x float> %res
}

define <8 x float> @test_mask_xor_ps_rmk_256(<8 x float> %a, <8 x float>* %ptr_b, <8 x float> %passThru, i8 %mask) {
  
  
  %b = load <8 x float>, <8 x float>* %ptr_b
  %res = call <8 x float> @llvm.x86.avx512.mask.xor.ps.256(<8 x float> %a, <8 x float> %b, <8 x float> %passThru, i8 %mask)
  ret <8 x float> %res
}

define <8 x float> @test_mask_xor_ps_rmkz_256(<8 x float> %a, <8 x float>* %ptr_b, i8 %mask) {
  
  
  %b = load <8 x float>, <8 x float>* %ptr_b
  %res = call <8 x float> @llvm.x86.avx512.mask.xor.ps.256(<8 x float> %a, <8 x float> %b, <8 x float> zeroinitializer, i8 %mask)
  ret <8 x float> %res
}

define <8 x float> @test_mask_xor_ps_rmb_256(<8 x float> %a, float* %ptr_b) {
  
  
  %q = load float, float* %ptr_b
  %vecinit.i = insertelement <8 x float> undef, float %q, i32 0
  %b = shufflevector <8 x float> %vecinit.i, <8 x float> undef, <8 x i32> zeroinitializer
  %res = call <8 x float> @llvm.x86.avx512.mask.xor.ps.256(<8 x float> %a, <8 x float> %b, <8 x float> zeroinitializer, i8 -1)
  ret <8 x float> %res
}

define <8 x float> @test_mask_xor_ps_rmbk_256(<8 x float> %a, float* %ptr_b, <8 x float> %passThru, i8 %mask) {
  
  
  %q = load float, float* %ptr_b
  %vecinit.i = insertelement <8 x float> undef, float %q, i32 0
  %b = shufflevector <8 x float> %vecinit.i, <8 x float> undef, <8 x i32> zeroinitializer
  %res = call <8 x float> @llvm.x86.avx512.mask.xor.ps.256(<8 x float> %a, <8 x float> %b, <8 x float> %passThru, i8 %mask)
  ret <8 x float> %res
}

define <8 x float> @test_mask_xor_ps_rmbkz_256(<8 x float> %a, float* %ptr_b, i8 %mask) {
  
  
  %q = load float, float* %ptr_b
  %vecinit.i = insertelement <8 x float> undef, float %q, i32 0
  %b = shufflevector <8 x float> %vecinit.i, <8 x float> undef, <8 x i32> zeroinitializer
  %res = call <8 x float> @llvm.x86.avx512.mask.xor.ps.256(<8 x float> %a, <8 x float> %b, <8 x float> zeroinitializer, i8 %mask)
  ret <8 x float> %res
}

declare <8 x float> @llvm.x86.avx512.mask.xor.ps.256(<8 x float>, <8 x float>, <8 x float>, i8)

define <16 x float> @test_mask_xor_ps_rr_512(<16 x float> %a, <16 x float> %b) {
  
  
  %res = call <16 x float> @llvm.x86.avx512.mask.xor.ps.512(<16 x float> %a, <16 x float> %b, <16 x float> zeroinitializer, i16 -1)
  ret <16 x float> %res
}

define <16 x float> @test_mask_xor_ps_rrk_512(<16 x float> %a, <16 x float> %b, <16 x float> %passThru, i16 %mask) {
  
  
  %res = call <16 x float> @llvm.x86.avx512.mask.xor.ps.512(<16 x float> %a, <16 x float> %b, <16 x float> %passThru, i16 %mask)
  ret <16 x float> %res
}

define <16 x float> @test_mask_xor_ps_rrkz_512(<16 x float> %a, <16 x float> %b, i16 %mask) {
  
  
  %res = call <16 x float> @llvm.x86.avx512.mask.xor.ps.512(<16 x float> %a, <16 x float> %b, <16 x float> zeroinitializer, i16 %mask)
  ret <16 x float> %res
}

define <16 x float> @test_mask_xor_ps_rm_512(<16 x float> %a, <16 x float>* %ptr_b) {
  
  
  %b = load <16 x float>, <16 x float>* %ptr_b
  %res = call <16 x float> @llvm.x86.avx512.mask.xor.ps.512(<16 x float> %a, <16 x float> %b, <16 x float> zeroinitializer, i16 -1)
  ret <16 x float> %res
}

define <16 x float> @test_mask_xor_ps_rmk_512(<16 x float> %a, <16 x float>* %ptr_b, <16 x float> %passThru, i16 %mask) {
  
  
  %b = load <16 x float>, <16 x float>* %ptr_b
  %res = call <16 x float> @llvm.x86.avx512.mask.xor.ps.512(<16 x float> %a, <16 x float> %b, <16 x float> %passThru, i16 %mask)
  ret <16 x float> %res
}

define <16 x float> @test_mask_xor_ps_rmkz_512(<16 x float> %a, <16 x float>* %ptr_b, i16 %mask) {
  
  
  %b = load <16 x float>, <16 x float>* %ptr_b
  %res = call <16 x float> @llvm.x86.avx512.mask.xor.ps.512(<16 x float> %a, <16 x float> %b, <16 x float> zeroinitializer, i16 %mask)
  ret <16 x float> %res
}

define <16 x float> @test_mask_xor_ps_rmb_512(<16 x float> %a, float* %ptr_b) {
  
  
  %q = load float, float* %ptr_b
  %vecinit.i = insertelement <16 x float> undef, float %q, i32 0
  %b = shufflevector <16 x float> %vecinit.i, <16 x float> undef, <16 x i32> zeroinitializer
  %res = call <16 x float> @llvm.x86.avx512.mask.xor.ps.512(<16 x float> %a, <16 x float> %b, <16 x float> zeroinitializer, i16 -1)
  ret <16 x float> %res
}

define <16 x float> @test_mask_xor_ps_rmbk_512(<16 x float> %a, float* %ptr_b, <16 x float> %passThru, i16 %mask) {
  
  
  %q = load float, float* %ptr_b
  %vecinit.i = insertelement <16 x float> undef, float %q, i32 0
  %b = shufflevector <16 x float> %vecinit.i, <16 x float> undef, <16 x i32> zeroinitializer
  %res = call <16 x float> @llvm.x86.avx512.mask.xor.ps.512(<16 x float> %a, <16 x float> %b, <16 x float> %passThru, i16 %mask)
  ret <16 x float> %res
}

define <16 x float> @test_mask_xor_ps_rmbkz_512(<16 x float> %a, float* %ptr_b, i16 %mask) {
  
  
  %q = load float, float* %ptr_b
  %vecinit.i = insertelement <16 x float> undef, float %q, i32 0
  %b = shufflevector <16 x float> %vecinit.i, <16 x float> undef, <16 x i32> zeroinitializer
  %res = call <16 x float> @llvm.x86.avx512.mask.xor.ps.512(<16 x float> %a, <16 x float> %b, <16 x float> zeroinitializer, i16 %mask)
  ret <16 x float> %res
}

declare <16 x float> @llvm.x86.avx512.mask.xor.ps.512(<16 x float>, <16 x float>, <16 x float>, i16)

declare <2 x i64> @llvm.x86.avx512.mask.cvtpd2qq.128(<2 x double>, <2 x i64>, i8)

define <2 x i64>@test_int_x86_avx512_mask_cvt_pd2qq_128(<2 x double> %x0, <2 x i64> %x1, i8 %x2) {







  %res = call <2 x i64> @llvm.x86.avx512.mask.cvtpd2qq.128(<2 x double> %x0, <2 x i64> %x1, i8 %x2)
  %res1 = call <2 x i64> @llvm.x86.avx512.mask.cvtpd2qq.128(<2 x double> %x0, <2 x i64> %x1, i8 -1)
  %res2 = add <2 x i64> %res, %res1
  ret <2 x i64> %res2
}

declare <4 x i64> @llvm.x86.avx512.mask.cvtpd2qq.256(<4 x double>, <4 x i64>, i8)

define <4 x i64>@test_int_x86_avx512_mask_cvt_pd2qq_256(<4 x double> %x0, <4 x i64> %x1, i8 %x2) {







  %res = call <4 x i64> @llvm.x86.avx512.mask.cvtpd2qq.256(<4 x double> %x0, <4 x i64> %x1, i8 %x2)
  %res1 = call <4 x i64> @llvm.x86.avx512.mask.cvtpd2qq.256(<4 x double> %x0, <4 x i64> %x1, i8 -1)
  %res2 = add <4 x i64> %res, %res1
  ret <4 x i64> %res2
}

declare <2 x i64> @llvm.x86.avx512.mask.cvtpd2uqq.128(<2 x double>, <2 x i64>, i8)

define <2 x i64>@test_int_x86_avx512_mask_cvt_pd2uqq_128(<2 x double> %x0, <2 x i64> %x1, i8 %x2) {







  %res = call <2 x i64> @llvm.x86.avx512.mask.cvtpd2uqq.128(<2 x double> %x0, <2 x i64> %x1, i8 %x2)
  %res1 = call <2 x i64> @llvm.x86.avx512.mask.cvtpd2uqq.128(<2 x double> %x0, <2 x i64> %x1, i8 -1)
  %res2 = add <2 x i64> %res, %res1
  ret <2 x i64> %res2
}

declare <4 x i64> @llvm.x86.avx512.mask.cvtpd2uqq.256(<4 x double>, <4 x i64>, i8)

define <4 x i64>@test_int_x86_avx512_mask_cvt_pd2uqq_256(<4 x double> %x0, <4 x i64> %x1, i8 %x2) {







  %res = call <4 x i64> @llvm.x86.avx512.mask.cvtpd2uqq.256(<4 x double> %x0, <4 x i64> %x1, i8 %x2)
  %res1 = call <4 x i64> @llvm.x86.avx512.mask.cvtpd2uqq.256(<4 x double> %x0, <4 x i64> %x1, i8 -1)
  %res2 = add <4 x i64> %res, %res1
  ret <4 x i64> %res2
}

declare <2 x i64> @llvm.x86.avx512.mask.cvtps2qq.128(<4 x float>, <2 x i64>, i8)

define <2 x i64>@test_int_x86_avx512_mask_cvt_ps2qq_128(<4 x float> %x0, <2 x i64> %x1, i8 %x2) {







  %res = call <2 x i64> @llvm.x86.avx512.mask.cvtps2qq.128(<4 x float> %x0, <2 x i64> %x1, i8 %x2)
  %res1 = call <2 x i64> @llvm.x86.avx512.mask.cvtps2qq.128(<4 x float> %x0, <2 x i64> %x1, i8 -1)
  %res2 = add <2 x i64> %res, %res1
  ret <2 x i64> %res2
}

declare <4 x i64> @llvm.x86.avx512.mask.cvtps2qq.256(<4 x float>, <4 x i64>, i8)

define <4 x i64>@test_int_x86_avx512_mask_cvt_ps2qq_256(<4 x float> %x0, <4 x i64> %x1, i8 %x2) {







  %res = call <4 x i64> @llvm.x86.avx512.mask.cvtps2qq.256(<4 x float> %x0, <4 x i64> %x1, i8 %x2)
  %res1 = call <4 x i64> @llvm.x86.avx512.mask.cvtps2qq.256(<4 x float> %x0, <4 x i64> %x1, i8 -1)
  %res2 = add <4 x i64> %res, %res1
  ret <4 x i64> %res2
}

declare <2 x i64> @llvm.x86.avx512.mask.cvtps2uqq.128(<4 x float>, <2 x i64>, i8)

define <2 x i64>@test_int_x86_avx512_mask_cvt_ps2uqq_128(<4 x float> %x0, <2 x i64> %x1, i8 %x2) {







  %res = call <2 x i64> @llvm.x86.avx512.mask.cvtps2uqq.128(<4 x float> %x0, <2 x i64> %x1, i8 %x2)
  %res1 = call <2 x i64> @llvm.x86.avx512.mask.cvtps2uqq.128(<4 x float> %x0, <2 x i64> %x1, i8 -1)
  %res2 = add <2 x i64> %res, %res1
  ret <2 x i64> %res2
}

declare <4 x i64> @llvm.x86.avx512.mask.cvtps2uqq.256(<4 x float>, <4 x i64>, i8)

define <4 x i64>@test_int_x86_avx512_mask_cvt_ps2uqq_256(<4 x float> %x0, <4 x i64> %x1, i8 %x2) {







  %res = call <4 x i64> @llvm.x86.avx512.mask.cvtps2uqq.256(<4 x float> %x0, <4 x i64> %x1, i8 %x2)
  %res1 = call <4 x i64> @llvm.x86.avx512.mask.cvtps2uqq.256(<4 x float> %x0, <4 x i64> %x1, i8 -1)
  %res2 = add <4 x i64> %res, %res1
  ret <4 x i64> %res2
}

declare <2 x double> @llvm.x86.avx512.mask.cvtqq2pd.128(<2 x i64>, <2 x double>, i8)

define <2 x double>@test_int_x86_avx512_mask_cvt_qq2pd_128(<2 x i64> %x0, <2 x double> %x1, i8 %x2) {







  %res = call <2 x double> @llvm.x86.avx512.mask.cvtqq2pd.128(<2 x i64> %x0, <2 x double> %x1, i8 %x2)
  %res1 = call <2 x double> @llvm.x86.avx512.mask.cvtqq2pd.128(<2 x i64> %x0, <2 x double> %x1, i8 -1)
  %res2 = fadd <2 x double> %res, %res1
  ret <2 x double> %res2
}

declare <4 x double> @llvm.x86.avx512.mask.cvtqq2pd.256(<4 x i64>, <4 x double>, i8)

define <4 x double>@test_int_x86_avx512_mask_cvt_qq2pd_256(<4 x i64> %x0, <4 x double> %x1, i8 %x2) {







  %res = call <4 x double> @llvm.x86.avx512.mask.cvtqq2pd.256(<4 x i64> %x0, <4 x double> %x1, i8 %x2)
  %res1 = call <4 x double> @llvm.x86.avx512.mask.cvtqq2pd.256(<4 x i64> %x0, <4 x double> %x1, i8 -1)
  %res2 = fadd <4 x double> %res, %res1
  ret <4 x double> %res2
}

declare <4 x float> @llvm.x86.avx512.mask.cvtqq2ps.128(<2 x i64>, <4 x float>, i8)

define <4 x float>@test_int_x86_avx512_mask_cvt_qq2ps_128(<2 x i64> %x0, <4 x float> %x1, i8 %x2) {







  %res = call <4 x float> @llvm.x86.avx512.mask.cvtqq2ps.128(<2 x i64> %x0, <4 x float> %x1, i8 %x2)
  %res1 = call <4 x float> @llvm.x86.avx512.mask.cvtqq2ps.128(<2 x i64> %x0, <4 x float> %x1, i8 -1)
  %res2 = fadd <4 x float> %res, %res1
  ret <4 x float> %res2
}

declare <4 x float> @llvm.x86.avx512.mask.cvtqq2ps.256(<4 x i64>, <4 x float>, i8)

define <4 x float>@test_int_x86_avx512_mask_cvt_qq2ps_256(<4 x i64> %x0, <4 x float> %x1, i8 %x2) {







  %res = call <4 x float> @llvm.x86.avx512.mask.cvtqq2ps.256(<4 x i64> %x0, <4 x float> %x1, i8 %x2)
  %res1 = call <4 x float> @llvm.x86.avx512.mask.cvtqq2ps.256(<4 x i64> %x0, <4 x float> %x1, i8 -1)
  %res2 = fadd <4 x float> %res, %res1
  ret <4 x float> %res2
}

declare <2 x i64> @llvm.x86.avx512.mask.cvttpd2qq.128(<2 x double>, <2 x i64>, i8)

define <2 x i64>@test_int_x86_avx512_mask_cvtt_pd2qq_128(<2 x double> %x0, <2 x i64> %x1, i8 %x2) {







  %res = call <2 x i64> @llvm.x86.avx512.mask.cvttpd2qq.128(<2 x double> %x0, <2 x i64> %x1, i8 %x2)
  %res1 = call <2 x i64> @llvm.x86.avx512.mask.cvttpd2qq.128(<2 x double> %x0, <2 x i64> %x1, i8 -1)
  %res2 = add <2 x i64> %res, %res1
  ret <2 x i64> %res2
}

declare <4 x i64> @llvm.x86.avx512.mask.cvttpd2qq.256(<4 x double>, <4 x i64>, i8)

define <4 x i64>@test_int_x86_avx512_mask_cvtt_pd2qq_256(<4 x double> %x0, <4 x i64> %x1, i8 %x2) {







  %res = call <4 x i64> @llvm.x86.avx512.mask.cvttpd2qq.256(<4 x double> %x0, <4 x i64> %x1, i8 %x2)
  %res1 = call <4 x i64> @llvm.x86.avx512.mask.cvttpd2qq.256(<4 x double> %x0, <4 x i64> %x1, i8 -1)
  %res2 = add <4 x i64> %res, %res1
  ret <4 x i64> %res2
}

declare <2 x i64> @llvm.x86.avx512.mask.cvttpd2uqq.128(<2 x double>, <2 x i64>, i8)

define <2 x i64>@test_int_x86_avx512_mask_cvtt_pd2uqq_128(<2 x double> %x0, <2 x i64> %x1, i8 %x2) {







  %res = call <2 x i64> @llvm.x86.avx512.mask.cvttpd2uqq.128(<2 x double> %x0, <2 x i64> %x1, i8 %x2)
  %res1 = call <2 x i64> @llvm.x86.avx512.mask.cvttpd2uqq.128(<2 x double> %x0, <2 x i64> %x1, i8 -1)
  %res2 = add <2 x i64> %res, %res1
  ret <2 x i64> %res2
}

declare <4 x i64> @llvm.x86.avx512.mask.cvttpd2uqq.256(<4 x double>, <4 x i64>, i8)

define <4 x i64>@test_int_x86_avx512_mask_cvtt_pd2uqq_256(<4 x double> %x0, <4 x i64> %x1, i8 %x2) {







  %res = call <4 x i64> @llvm.x86.avx512.mask.cvttpd2uqq.256(<4 x double> %x0, <4 x i64> %x1, i8 %x2)
  %res1 = call <4 x i64> @llvm.x86.avx512.mask.cvttpd2uqq.256(<4 x double> %x0, <4 x i64> %x1, i8 -1)
  %res2 = add <4 x i64> %res, %res1
  ret <4 x i64> %res2
}

declare <2 x i64> @llvm.x86.avx512.mask.cvttps2qq.128(<4 x float>, <2 x i64>, i8)

define <2 x i64>@test_int_x86_avx512_mask_cvtt_ps2qq_128(<4 x float> %x0, <2 x i64> %x1, i8 %x2) {







  %res = call <2 x i64> @llvm.x86.avx512.mask.cvttps2qq.128(<4 x float> %x0, <2 x i64> %x1, i8 %x2)
  %res1 = call <2 x i64> @llvm.x86.avx512.mask.cvttps2qq.128(<4 x float> %x0, <2 x i64> %x1, i8 -1)
  %res2 = add <2 x i64> %res, %res1
  ret <2 x i64> %res2
}

declare <4 x i64> @llvm.x86.avx512.mask.cvttps2qq.256(<4 x float>, <4 x i64>, i8)

define <4 x i64>@test_int_x86_avx512_mask_cvtt_ps2qq_256(<4 x float> %x0, <4 x i64> %x1, i8 %x2) {







  %res = call <4 x i64> @llvm.x86.avx512.mask.cvttps2qq.256(<4 x float> %x0, <4 x i64> %x1, i8 %x2)
  %res1 = call <4 x i64> @llvm.x86.avx512.mask.cvttps2qq.256(<4 x float> %x0, <4 x i64> %x1, i8 -1)
  %res2 = add <4 x i64> %res, %res1
  ret <4 x i64> %res2
}

declare <2 x double> @llvm.x86.avx512.mask.cvtuqq2pd.128(<2 x i64>, <2 x double>, i8)

define <2 x double>@test_int_x86_avx512_mask_cvt_uqq2pd_128(<2 x i64> %x0, <2 x double> %x1, i8 %x2) {







  %res = call <2 x double> @llvm.x86.avx512.mask.cvtuqq2pd.128(<2 x i64> %x0, <2 x double> %x1, i8 %x2)
  %res1 = call <2 x double> @llvm.x86.avx512.mask.cvtuqq2pd.128(<2 x i64> %x0, <2 x double> %x1, i8 -1)
  %res2 = fadd <2 x double> %res, %res1
  ret <2 x double> %res2
}

declare <4 x double> @llvm.x86.avx512.mask.cvtuqq2pd.256(<4 x i64>, <4 x double>, i8)

define <4 x double>@test_int_x86_avx512_mask_cvt_uqq2pd_256(<4 x i64> %x0, <4 x double> %x1, i8 %x2) {







  %res = call <4 x double> @llvm.x86.avx512.mask.cvtuqq2pd.256(<4 x i64> %x0, <4 x double> %x1, i8 %x2)
  %res1 = call <4 x double> @llvm.x86.avx512.mask.cvtuqq2pd.256(<4 x i64> %x0, <4 x double> %x1, i8 -1)
  %res2 = fadd <4 x double> %res, %res1
  ret <4 x double> %res2
}

declare <4 x float> @llvm.x86.avx512.mask.cvtuqq2ps.128(<2 x i64>, <4 x float>, i8)

define <4 x float>@test_int_x86_avx512_mask_cvt_uqq2ps_128(<2 x i64> %x0, <4 x float> %x1, i8 %x2) {







  %res = call <4 x float> @llvm.x86.avx512.mask.cvtuqq2ps.128(<2 x i64> %x0, <4 x float> %x1, i8 %x2)
  %res1 = call <4 x float> @llvm.x86.avx512.mask.cvtuqq2ps.128(<2 x i64> %x0, <4 x float> %x1, i8 -1)
  %res2 = fadd <4 x float> %res, %res1
  ret <4 x float> %res2
}

declare <4 x float> @llvm.x86.avx512.mask.cvtuqq2ps.256(<4 x i64>, <4 x float>, i8)

define <4 x float>@test_int_x86_avx512_mask_cvt_uqq2ps_256(<4 x i64> %x0, <4 x float> %x1, i8 %x2) {







  %res = call <4 x float> @llvm.x86.avx512.mask.cvtuqq2ps.256(<4 x i64> %x0, <4 x float> %x1, i8 %x2)
  %res1 = call <4 x float> @llvm.x86.avx512.mask.cvtuqq2ps.256(<4 x i64> %x0, <4 x float> %x1, i8 -1)
  %res2 = fadd <4 x float> %res, %res1
  ret <4 x float> %res2
}

declare <2 x i64> @llvm.x86.avx512.mask.cvttps2uqq.128(<4 x float>, <2 x i64>, i8)

define <2 x i64>@test_int_x86_avx512_mask_cvtt_ps2uqq_128(<4 x float> %x0, <2 x i64> %x1, i8 %x2) {







  %res = call <2 x i64> @llvm.x86.avx512.mask.cvttps2uqq.128(<4 x float> %x0, <2 x i64> %x1, i8 %x2)
  %res1 = call <2 x i64> @llvm.x86.avx512.mask.cvttps2uqq.128(<4 x float> %x0, <2 x i64> %x1, i8 -1)
  %res2 = add <2 x i64> %res, %res1
  ret <2 x i64> %res2
}

declare <4 x i64> @llvm.x86.avx512.mask.cvttps2uqq.256(<4 x float>, <4 x i64>, i8)

define <4 x i64>@test_int_x86_avx512_mask_cvtt_ps2uqq_256(<4 x float> %x0, <4 x i64> %x1, i8 %x2) {







  %res = call <4 x i64> @llvm.x86.avx512.mask.cvttps2uqq.256(<4 x float> %x0, <4 x i64> %x1, i8 %x2)
  %res1 = call <4 x i64> @llvm.x86.avx512.mask.cvttps2uqq.256(<4 x float> %x0, <4 x i64> %x1, i8 -1)
  %res2 = add <4 x i64> %res, %res1
  ret <4 x i64> %res2
}

declare <2 x double> @llvm.x86.avx512.mask.reduce.pd.128(<2 x double>, i32, <2 x double>, i8)






define <2 x double>@test_int_x86_avx512_mask_reduce_pd_128(<2 x double> %x0, <2 x double> %x2, i8 %x3) {
  %res = call <2 x double> @llvm.x86.avx512.mask.reduce.pd.128(<2 x double> %x0, i32 4, <2 x double> %x2, i8 %x3)
  %res1 = call <2 x double> @llvm.x86.avx512.mask.reduce.pd.128(<2 x double> %x0, i32 8, <2 x double> %x2, i8 -1)
  %res2 = fadd <2 x double> %res, %res1
  ret <2 x double> %res2
}

declare <4 x double> @llvm.x86.avx512.mask.reduce.pd.256(<4 x double>, i32, <4 x double>, i8)






define <4 x double>@test_int_x86_avx512_mask_reduce_pd_256(<4 x double> %x0, <4 x double> %x2, i8 %x3) {
  %res = call <4 x double> @llvm.x86.avx512.mask.reduce.pd.256(<4 x double> %x0, i32 4, <4 x double> %x2, i8 %x3)
  %res1 = call <4 x double> @llvm.x86.avx512.mask.reduce.pd.256(<4 x double> %x0, i32 0, <4 x double> %x2, i8 -1)
  %res2 = fadd <4 x double> %res, %res1
  ret <4 x double> %res2
}

declare <4 x float> @llvm.x86.avx512.mask.reduce.ps.128(<4 x float>, i32, <4 x float>, i8)





define <4 x float>@test_int_x86_avx512_mask_reduce_ps_128(<4 x float> %x0, <4 x float> %x2, i8 %x3) {
  %res = call <4 x float> @llvm.x86.avx512.mask.reduce.ps.128(<4 x float> %x0, i32 4, <4 x float> %x2, i8 %x3)
  %res1 = call <4 x float> @llvm.x86.avx512.mask.reduce.ps.128(<4 x float> %x0, i32 88, <4 x float> %x2, i8 -1)
  %res2 = fadd <4 x float> %res, %res1
  ret <4 x float> %res2
}

declare <8 x float> @llvm.x86.avx512.mask.reduce.ps.256(<8 x float>, i32, <8 x float>, i8)






define <8 x float>@test_int_x86_avx512_mask_reduce_ps_256(<8 x float> %x0, <8 x float> %x2, i8 %x3) {
  %res = call <8 x float> @llvm.x86.avx512.mask.reduce.ps.256(<8 x float> %x0, i32 11, <8 x float> %x2, i8 %x3)
  %res1 = call <8 x float> @llvm.x86.avx512.mask.reduce.ps.256(<8 x float> %x0, i32 11, <8 x float> %x2, i8 -1)
  %res2 = fadd <8 x float> %res, %res1
  ret <8 x float> %res2
}

declare <2 x double> @llvm.x86.avx512.mask.range.pd.128(<2 x double>, <2 x double>, i32, <2 x double>, i8)






define <2 x double>@test_int_x86_avx512_mask_range_pd_128(<2 x double> %x0, <2 x double> %x1, <2 x double> %x3, i8 %x4) {
  %res = call <2 x double> @llvm.x86.avx512.mask.range.pd.128(<2 x double> %x0, <2 x double> %x1, i32 4, <2 x double> %x3, i8 %x4)
  %res1 = call <2 x double> @llvm.x86.avx512.mask.range.pd.128(<2 x double> %x0, <2 x double> %x1, i32 8, <2 x double> %x3, i8 -1)
  %res2 = fadd <2 x double> %res, %res1
  ret <2 x double> %res2
}

declare <4 x double> @llvm.x86.avx512.mask.range.pd.256(<4 x double>, <4 x double>, i32, <4 x double>, i8)






define <4 x double>@test_int_x86_avx512_mask_range_pd_256(<4 x double> %x0, <4 x double> %x1, <4 x double> %x3, i8 %x4) {
  %res = call <4 x double> @llvm.x86.avx512.mask.range.pd.256(<4 x double> %x0, <4 x double> %x1, i32 4, <4 x double> %x3, i8 %x4)
  %res1 = call <4 x double> @llvm.x86.avx512.mask.range.pd.256(<4 x double> %x0, <4 x double> %x1, i32 88, <4 x double> %x3, i8 -1)
  %res2 = fadd <4 x double> %res, %res1
  ret <4 x double> %res2
}

declare <4 x float> @llvm.x86.avx512.mask.range.ps.128(<4 x float>, <4 x float>, i32, <4 x float>, i8)






define <4 x float>@test_int_x86_avx512_mask_range_ps_128(<4 x float> %x0, <4 x float> %x1, <4 x float> %x3, i8 %x4) {
  %res = call <4 x float> @llvm.x86.avx512.mask.range.ps.128(<4 x float> %x0, <4 x float> %x1, i32 4, <4 x float> %x3, i8 %x4)
  %res1 = call <4 x float> @llvm.x86.avx512.mask.range.ps.128(<4 x float> %x0, <4 x float> %x1, i32 88, <4 x float> %x3, i8 -1)
  %res2 = fadd <4 x float> %res, %res1
  ret <4 x float> %res2
}

declare <8 x float> @llvm.x86.avx512.mask.range.ps.256(<8 x float>, <8 x float>, i32, <8 x float>, i8)






define <8 x float>@test_int_x86_avx512_mask_range_ps_256(<8 x float> %x0, <8 x float> %x1, <8 x float> %x3, i8 %x4) {
  %res = call <8 x float> @llvm.x86.avx512.mask.range.ps.256(<8 x float> %x0, <8 x float> %x1, i32 4, <8 x float> %x3, i8 %x4)
  %res1 = call <8 x float> @llvm.x86.avx512.mask.range.ps.256(<8 x float> %x0, <8 x float> %x1, i32 88, <8 x float> %x3, i8 -1)
  %res2 = fadd <8 x float> %res, %res1
  ret <8 x float> %res2
}
