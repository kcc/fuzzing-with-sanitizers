

declare i32 @llvm.x86.avx512.kortestz.w(i16, i16) nounwind readnone



define i32 @test_kortestz(i16 %a0, i16 %a1) {
  %res = call i32 @llvm.x86.avx512.kortestz.w(i16 %a0, i16 %a1)
  ret i32 %res
}

declare i32 @llvm.x86.avx512.kortestc.w(i16, i16) nounwind readnone



define i32 @test_kortestc(i16 %a0, i16 %a1) {
  %res = call i32 @llvm.x86.avx512.kortestc.w(i16 %a0, i16 %a1)
  ret i32 %res
}

declare i16 @llvm.x86.avx512.kand.w(i16, i16) nounwind readnone



define i16 @test_kand(i16 %a0, i16 %a1) {
  %t1 = call i16 @llvm.x86.avx512.kand.w(i16 %a0, i16 8)
  %t2 = call i16 @llvm.x86.avx512.kand.w(i16 %t1, i16 %a1)
  ret i16 %t2
}

declare i16 @llvm.x86.avx512.knot.w(i16) nounwind readnone


define i16 @test_knot(i16 %a0) {
  %res = call i16 @llvm.x86.avx512.knot.w(i16 %a0)
  ret i16 %res
}

declare i16 @llvm.x86.avx512.kunpck.bw(i16, i16) nounwind readnone




define i16 @unpckbw_test(i16 %a0, i16 %a1) {
  %res = call i16 @llvm.x86.avx512.kunpck.bw(i16 %a0, i16 %a1)
  ret i16 %res
}

define <16 x float> @test_rcp_ps_512(<16 x float> %a0) {
  
  %res = call <16 x float> @llvm.x86.avx512.rcp14.ps.512(<16 x float> %a0, <16 x float> zeroinitializer, i16 -1) 
  ret <16 x float> %res
}
declare <16 x float> @llvm.x86.avx512.rcp14.ps.512(<16 x float>, <16 x float>, i16) nounwind readnone

define <8 x double> @test_rcp_pd_512(<8 x double> %a0) {
  
  %res = call <8 x double> @llvm.x86.avx512.rcp14.pd.512(<8 x double> %a0, <8 x double> zeroinitializer, i8 -1) 
  ret <8 x double> %res
}
declare <8 x double> @llvm.x86.avx512.rcp14.pd.512(<8 x double>, <8 x double>, i8) nounwind readnone

declare <8 x double> @llvm.x86.avx512.mask.rndscale.pd.512(<8 x double>, i32, <8 x double>, i8, i32)

define <8 x double> @test7(<8 x double> %a) {

  %res = call <8 x double> @llvm.x86.avx512.mask.rndscale.pd.512(<8 x double> %a, i32 11, <8 x double> %a, i8 -1, i32 4)
  ret <8 x double>%res
}

declare <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float>, i32, <16 x float>, i16, i32)

define <16 x float> @test8(<16 x float> %a) {

  %res = call <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %a, i32 11, <16 x float> %a, i16 -1, i32 4)
  ret <16 x float>%res
}

define <16 x float> @test_rsqrt_ps_512(<16 x float> %a0) {
  
  %res = call <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %a0, <16 x float> zeroinitializer, i16 -1) 
  ret <16 x float> %res
}
declare <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float>, <16 x float>, i16) nounwind readnone

define <4 x float> @test_rsqrt14_ss(<4 x float> %a0) {
  
  %res = call <4 x float> @llvm.x86.avx512.rsqrt14.ss(<4 x float> %a0, <4 x float> %a0, <4 x float> zeroinitializer, i8 -1) 
  ret <4 x float> %res
}
declare <4 x float> @llvm.x86.avx512.rsqrt14.ss(<4 x float>, <4 x float>, <4 x float>, i8) nounwind readnone

define <4 x float> @test_rcp14_ss(<4 x float> %a0) {
  
  %res = call <4 x float> @llvm.x86.avx512.rcp14.ss(<4 x float> %a0, <4 x float> %a0, <4 x float> zeroinitializer, i8 -1) 
  ret <4 x float> %res
}
declare <4 x float> @llvm.x86.avx512.rcp14.ss(<4 x float>, <4 x float>, <4 x float>, i8) nounwind readnone

define <8 x double> @test_sqrt_pd_512(<8 x double> %a0) {
  
  
  %res = call <8 x double> @llvm.x86.avx512.mask.sqrt.pd.512(<8 x double> %a0,  <8 x double> zeroinitializer, i8 -1, i32 4) 
  ret <8 x double> %res
}
declare <8 x double> @llvm.x86.avx512.mask.sqrt.pd.512(<8 x double>, <8 x double>, i8, i32) nounwind readnone

define <16 x float> @test_sqrt_ps_512(<16 x float> %a0) {
  
  
  %res = call <16 x float> @llvm.x86.avx512.mask.sqrt.ps.512(<16 x float> %a0, <16 x float> zeroinitializer, i16 -1, i32 4) 
  ret <16 x float> %res
}
define <16 x float> @test_sqrt_round_ps_512(<16 x float> %a0) {
  
  
  %res = call <16 x float> @llvm.x86.avx512.mask.sqrt.ps.512(<16 x float> %a0, <16 x float> zeroinitializer, i16 -1, i32 3) 
  ret <16 x float> %res
}
declare <16 x float> @llvm.x86.avx512.mask.sqrt.ps.512(<16 x float>, <16 x float>, i16, i32) nounwind readnone

define <8 x double> @test_getexp_pd_512(<8 x double> %a0) {
  
  
  %res = call <8 x double> @llvm.x86.avx512.mask.getexp.pd.512(<8 x double> %a0,  <8 x double> zeroinitializer, i8 -1, i32 4) 
  ret <8 x double> %res
}
define <8 x double> @test_getexp_round_pd_512(<8 x double> %a0) {
  
  
  %res = call <8 x double> @llvm.x86.avx512.mask.getexp.pd.512(<8 x double> %a0,  <8 x double> zeroinitializer, i8 -1, i32 8) 
  ret <8 x double> %res
}
declare <8 x double> @llvm.x86.avx512.mask.getexp.pd.512(<8 x double>, <8 x double>, i8, i32) nounwind readnone

define <16 x float> @test_getexp_ps_512(<16 x float> %a0) {
  
  
  %res = call <16 x float> @llvm.x86.avx512.mask.getexp.ps.512(<16 x float> %a0, <16 x float> zeroinitializer, i16 -1, i32 4) 
  ret <16 x float> %res
}

define <16 x float> @test_getexp_round_ps_512(<16 x float> %a0) {
  
  
  %res = call <16 x float> @llvm.x86.avx512.mask.getexp.ps.512(<16 x float> %a0, <16 x float> zeroinitializer, i16 -1, i32 8) 
  ret <16 x float> %res
}
declare <16 x float> @llvm.x86.avx512.mask.getexp.ps.512(<16 x float>, <16 x float>, i16, i32) nounwind readnone

define <4 x float> @test_sqrt_ss(<4 x float> %a0, <4 x float> %a1) {
  
  %res = call <4 x float> @llvm.x86.avx512.sqrt.ss(<4 x float> %a0, <4 x float> %a1) 
  ret <4 x float> %res
}
declare <4 x float> @llvm.x86.avx512.sqrt.ss(<4 x float>, <4 x float>) nounwind readnone

define <2 x double> @test_sqrt_sd(<2 x double> %a0, <2 x double> %a1) {
  
  %res = call <2 x double> @llvm.x86.avx512.sqrt.sd(<2 x double> %a0, <2 x double> %a1) 
  ret <2 x double> %res
}
declare <2 x double> @llvm.x86.avx512.sqrt.sd(<2 x double>, <2 x double>) nounwind readnone

define i64 @test_x86_sse2_cvtsd2si64(<2 x double> %a0) {
  
  %res = call i64 @llvm.x86.sse2.cvtsd2si64(<2 x double> %a0) 
  ret i64 %res
}
declare i64 @llvm.x86.sse2.cvtsd2si64(<2 x double>) nounwind readnone

define <2 x double> @test_x86_sse2_cvtsi642sd(<2 x double> %a0, i64 %a1) {
  
  %res = call <2 x double> @llvm.x86.sse2.cvtsi642sd(<2 x double> %a0, i64 %a1) 
  ret <2 x double> %res
}
declare <2 x double> @llvm.x86.sse2.cvtsi642sd(<2 x double>, i64) nounwind readnone

define i64 @test_x86_sse2_cvttsd2si64(<2 x double> %a0) {
  
  %res = call i64 @llvm.x86.sse2.cvttsd2si64(<2 x double> %a0) 
  ret i64 %res
}
declare i64 @llvm.x86.sse2.cvttsd2si64(<2 x double>) nounwind readnone


define i64 @test_x86_sse_cvtss2si64(<4 x float> %a0) {
  
  %res = call i64 @llvm.x86.sse.cvtss2si64(<4 x float> %a0) 
  ret i64 %res
}
declare i64 @llvm.x86.sse.cvtss2si64(<4 x float>) nounwind readnone


define <4 x float> @test_x86_sse_cvtsi642ss(<4 x float> %a0, i64 %a1) {
  
  %res = call <4 x float> @llvm.x86.sse.cvtsi642ss(<4 x float> %a0, i64 %a1) 
  ret <4 x float> %res
}
declare <4 x float> @llvm.x86.sse.cvtsi642ss(<4 x float>, i64) nounwind readnone


define i64 @test_x86_sse_cvttss2si64(<4 x float> %a0) {
  
  %res = call i64 @llvm.x86.sse.cvttss2si64(<4 x float> %a0) 
  ret i64 %res
}
declare i64 @llvm.x86.sse.cvttss2si64(<4 x float>) nounwind readnone

define i64 @test_x86_avx512_cvtsd2usi64(<2 x double> %a0) {
  
  %res = call i64 @llvm.x86.avx512.cvtsd2usi64(<2 x double> %a0) 
  ret i64 %res
}
declare i64 @llvm.x86.avx512.cvtsd2usi64(<2 x double>) nounwind readnone

define <16 x float> @test_x86_vcvtph2ps_512(<16 x i16> %a0) {
  
  %res = call <16 x float> @llvm.x86.avx512.mask.vcvtph2ps.512(<16 x i16> %a0, <16 x float> zeroinitializer, i16 -1, i32 4)
  ret <16 x float> %res
}
declare <16 x float> @llvm.x86.avx512.mask.vcvtph2ps.512(<16 x i16>, <16 x float>, i16, i32) nounwind readonly


define <16 x i16> @test_x86_vcvtps2ph_256(<16 x float> %a0) {
  
  %res = call <16 x i16> @llvm.x86.avx512.mask.vcvtps2ph.512(<16 x float> %a0, i32 2, <16 x i16> zeroinitializer, i16 -1)
  ret <16 x i16> %res
}

declare <16 x i16> @llvm.x86.avx512.mask.vcvtps2ph.512(<16 x float>, i32, <16 x i16>, i16) nounwind readonly

define <16 x float> @test_x86_vbroadcast_ss_512(i8* %a0) {
  
  %res = call <16 x float> @llvm.x86.avx512.vbroadcast.ss.512(i8* %a0) 
  ret <16 x float> %res
}
declare <16 x float> @llvm.x86.avx512.vbroadcast.ss.512(i8*) nounwind readonly

define <8 x double> @test_x86_vbroadcast_sd_512(i8* %a0) {
  
  %res = call <8 x double> @llvm.x86.avx512.vbroadcast.sd.512(i8* %a0) 
  ret <8 x double> %res
}
declare <8 x double> @llvm.x86.avx512.vbroadcast.sd.512(i8*) nounwind readonly

define <16 x float> @test_x86_vbroadcast_ss_ps_512(<4 x float> %a0) {
  
  %res = call <16 x float> @llvm.x86.avx512.vbroadcast.ss.ps.512(<4 x float> %a0) 
  ret <16 x float> %res
}
declare <16 x float> @llvm.x86.avx512.vbroadcast.ss.ps.512(<4 x float>) nounwind readonly

define <8 x double> @test_x86_vbroadcast_sd_pd_512(<2 x double> %a0) {
  
  %res = call <8 x double> @llvm.x86.avx512.vbroadcast.sd.pd.512(<2 x double> %a0) 
  ret <8 x double> %res
}
declare <8 x double> @llvm.x86.avx512.vbroadcast.sd.pd.512(<2 x double>) nounwind readonly

define <16 x i32> @test_x86_pbroadcastd_512(<4 x i32>  %a0) {
  
  %res = call <16 x i32> @llvm.x86.avx512.pbroadcastd.512(<4 x i32> %a0) 
  ret <16 x i32> %res
}
declare <16 x i32> @llvm.x86.avx512.pbroadcastd.512(<4 x i32>) nounwind readonly

define <16 x i32> @test_x86_pbroadcastd_i32_512(i32  %a0) {
  
  %res = call <16 x i32> @llvm.x86.avx512.pbroadcastd.i32.512(i32 %a0) 
  ret <16 x i32> %res
}
declare <16 x i32> @llvm.x86.avx512.pbroadcastd.i32.512(i32) nounwind readonly

define <8 x i64> @test_x86_pbroadcastq_512(<2 x i64> %a0) {
  
  %res = call <8 x i64> @llvm.x86.avx512.pbroadcastq.512(<2 x i64> %a0) 
  ret <8 x i64> %res
}
declare <8 x i64> @llvm.x86.avx512.pbroadcastq.512(<2 x i64>) nounwind readonly

define <8 x i64> @test_x86_pbroadcastq_i64_512(i64 %a0) {
  
  %res = call <8 x i64> @llvm.x86.avx512.pbroadcastq.i64.512(i64 %a0) 
  ret <8 x i64> %res
}
declare <8 x i64> @llvm.x86.avx512.pbroadcastq.i64.512(i64) nounwind readonly

define <16 x i32> @test_conflict_d(<16 x i32> %a) {
  
  
  
  %res = call <16 x i32> @llvm.x86.avx512.mask.conflict.d.512(<16 x i32> %a, <16 x i32> zeroinitializer, i16 -1)
  ret <16 x i32> %res
}

declare <16 x i32> @llvm.x86.avx512.mask.conflict.d.512(<16 x i32>, <16 x i32>, i16) nounwind readonly

define <8 x i64> @test_conflict_q(<8 x i64> %a) {
  
  
  
  %res = call <8 x i64> @llvm.x86.avx512.mask.conflict.q.512(<8 x i64> %a, <8 x i64> zeroinitializer, i8 -1)
  ret <8 x i64> %res
}

declare <8 x i64> @llvm.x86.avx512.mask.conflict.q.512(<8 x i64>, <8 x i64>, i8) nounwind readonly

define <16 x i32> @test_maskz_conflict_d(<16 x i32> %a, i16 %mask) {
  
  %res = call <16 x i32> @llvm.x86.avx512.mask.conflict.d.512(<16 x i32> %a, <16 x i32> zeroinitializer, i16 %mask)
  ret <16 x i32> %res
}

define <8 x i64> @test_mask_conflict_q(<8 x i64> %a, <8 x i64> %b, i8 %mask) {
  
  %res = call <8 x i64> @llvm.x86.avx512.mask.conflict.q.512(<8 x i64> %a, <8 x i64> %b, i8 %mask)
  ret <8 x i64> %res
}

define <16 x i32> @test_lzcnt_d(<16 x i32> %a) {
  
  
  
  %res = call <16 x i32> @llvm.x86.avx512.mask.lzcnt.d.512(<16 x i32> %a, <16 x i32> zeroinitializer, i16 -1)
  ret <16 x i32> %res
}

declare <16 x i32> @llvm.x86.avx512.mask.lzcnt.d.512(<16 x i32>, <16 x i32>, i16) nounwind readonly

define <8 x i64> @test_lzcnt_q(<8 x i64> %a) {
  
  
  
  %res = call <8 x i64> @llvm.x86.avx512.mask.lzcnt.q.512(<8 x i64> %a, <8 x i64> zeroinitializer, i8 -1)
  ret <8 x i64> %res
}

declare <8 x i64> @llvm.x86.avx512.mask.lzcnt.q.512(<8 x i64>, <8 x i64>, i8) nounwind readonly


define <16 x i32> @test_mask_lzcnt_d(<16 x i32> %a, <16 x i32> %b, i16 %mask) {
  
  %res = call <16 x i32> @llvm.x86.avx512.mask.lzcnt.d.512(<16 x i32> %a, <16 x i32> %b, i16 %mask)
  ret <16 x i32> %res
}

define <8 x i64> @test_mask_lzcnt_q(<8 x i64> %a, <8 x i64> %b, i8 %mask) {
  
  %res = call <8 x i64> @llvm.x86.avx512.mask.lzcnt.q.512(<8 x i64> %a, <8 x i64> %b, i8 %mask)
  ret <8 x i64> %res
}

define <16 x i32> @test_ctlz_d(<16 x i32> %a) {
  
  
  %res = call <16 x i32> @llvm.ctlz.v16i32(<16 x i32> %a, i1 false)
  ret <16 x i32> %res
}

declare <16 x i32> @llvm.ctlz.v16i32(<16 x i32>, i1) nounwind readonly

define <8 x i64> @test_ctlz_q(<8 x i64> %a) {
  
  
  %res = call <8 x i64> @llvm.ctlz.v8i64(<8 x i64> %a, i1 false)
  ret <8 x i64> %res
}

declare <8 x i64> @llvm.ctlz.v8i64(<8 x i64>, i1) nounwind readonly

define <16 x float> @test_x86_mask_blend_ps_512(i16 %a0, <16 x float> %a1, <16 x float> %a2) {
  
  %res = call <16 x float> @llvm.x86.avx512.mask.blend.ps.512(<16 x float> %a1, <16 x float> %a2, i16 %a0) 
  ret <16 x float> %res
}

declare <16 x float> @llvm.x86.avx512.mask.blend.ps.512(<16 x float>, <16 x float>, i16) nounwind readonly

define <8 x double> @test_x86_mask_blend_pd_512(i8 %a0, <8 x double> %a1, <8 x double> %a2) {
  
  %res = call <8 x double> @llvm.x86.avx512.mask.blend.pd.512(<8 x double> %a1, <8 x double> %a2, i8 %a0) 
  ret <8 x double> %res
}

define <8 x double> @test_x86_mask_blend_pd_512_memop(<8 x double> %a, <8 x double>* %ptr, i8 %mask) {
  
  
  %b = load <8 x double>, <8 x double>* %ptr
  %res = call <8 x double> @llvm.x86.avx512.mask.blend.pd.512(<8 x double> %a, <8 x double> %b, i8 %mask) 
  ret <8 x double> %res
}
declare <8 x double> @llvm.x86.avx512.mask.blend.pd.512(<8 x double>, <8 x double>, i8) nounwind readonly

define <16 x i32> @test_x86_mask_blend_d_512(i16 %a0, <16 x i32> %a1, <16 x i32> %a2) {
  
  %res = call <16 x i32> @llvm.x86.avx512.mask.blend.d.512(<16 x i32> %a1, <16 x i32> %a2, i16 %a0) 
  ret <16 x i32> %res
}
declare <16 x i32> @llvm.x86.avx512.mask.blend.d.512(<16 x i32>, <16 x i32>, i16) nounwind readonly

define <8 x i64> @test_x86_mask_blend_q_512(i8 %a0, <8 x i64> %a1, <8 x i64> %a2) {
  
  %res = call <8 x i64> @llvm.x86.avx512.mask.blend.q.512(<8 x i64> %a1, <8 x i64> %a2, i8 %a0) 
  ret <8 x i64> %res
}
declare <8 x i64> @llvm.x86.avx512.mask.blend.q.512(<8 x i64>, <8 x i64>, i8) nounwind readonly

 define i16 @test_cmpps(<16 x float> %a, <16 x float> %b) {
 
   %res = call i16 @llvm.x86.avx512.mask.cmp.ps.512(<16 x float> %a, <16 x float> %b, i32 2, i16 -1, i32 8)
   ret i16 %res
 }
 declare i16 @llvm.x86.avx512.mask.cmp.ps.512(<16 x float> , <16 x float> , i32, i16, i32)

 define i8 @test_cmppd(<8 x double> %a, <8 x double> %b) {
 
   %res = call i8 @llvm.x86.avx512.mask.cmp.pd.512(<8 x double> %a, <8 x double> %b, i32 4, i8 -1, i32 4)
   ret i8 %res
 }
 declare i8 @llvm.x86.avx512.mask.cmp.pd.512(<8 x double> , <8 x double> , i32, i8, i32)

 
define <8 x double> @test_vmaxpd(<8 x double> %a0, <8 x double> %a1) {
  
  %res = call <8 x double> @llvm.x86.avx512.mask.max.pd.512(<8 x double> %a0, <8 x double> %a1,
                    <8 x double>zeroinitializer, i8 -1, i32 4)
  ret <8 x double> %res
}
declare <8 x double> @llvm.x86.avx512.mask.max.pd.512(<8 x double>, <8 x double>,
                    <8 x double>, i8, i32)

define <8 x double> @test_vminpd(<8 x double> %a0, <8 x double> %a1) {
  
  %res = call <8 x double> @llvm.x86.avx512.mask.min.pd.512(<8 x double> %a0, <8 x double> %a1,
                    <8 x double>zeroinitializer, i8 -1, i32 4)
  ret <8 x double> %res
}
declare <8 x double> @llvm.x86.avx512.mask.min.pd.512(<8 x double>, <8 x double>,
                    <8 x double>, i8, i32)

 declare <16 x i32> @llvm.x86.avx512.mask.pabs.d.512(<16 x i32>, <16 x i32>, i16)





define <16 x i32>@test_int_x86_avx512_mask_pabs_d_512(<16 x i32> %x0, <16 x i32> %x1, i16 %x2) {
  %res = call <16 x i32> @llvm.x86.avx512.mask.pabs.d.512(<16 x i32> %x0, <16 x i32> %x1, i16 %x2)
  %res1 = call <16 x i32> @llvm.x86.avx512.mask.pabs.d.512(<16 x i32> %x0, <16 x i32> %x1, i16 -1)
  %res2 = add <16 x i32> %res, %res1
  ret <16 x i32> %res2
}

declare <8 x i64> @llvm.x86.avx512.mask.pabs.q.512(<8 x i64>, <8 x i64>, i8)





define <8 x i64>@test_int_x86_avx512_mask_pabs_q_512(<8 x i64> %x0, <8 x i64> %x1, i8 %x2) {
  %res = call <8 x i64> @llvm.x86.avx512.mask.pabs.q.512(<8 x i64> %x0, <8 x i64> %x1, i8 %x2)
  %res1 = call <8 x i64> @llvm.x86.avx512.mask.pabs.q.512(<8 x i64> %x0, <8 x i64> %x1, i8 -1)
  %res2 = add <8 x i64> %res, %res1
  ret <8 x i64> %res2
}

define i8 @test_vptestmq(<8 x i64> %a0, <8 x i64> %a1) {
  
  %res = call i8 @llvm.x86.avx512.mask.ptestm.q.512(<8 x i64> %a0, <8 x i64> %a1, i8 -1)
  ret i8 %res
}
declare i8 @llvm.x86.avx512.mask.ptestm.q.512(<8 x i64>, <8 x i64>, i8)

define i16 @test_vptestmd(<16 x i32> %a0, <16 x i32> %a1) {
  
  %res = call i16 @llvm.x86.avx512.mask.ptestm.d.512(<16 x i32> %a0, <16 x i32> %a1, i16 -1)
  ret i16 %res
}
declare i16 @llvm.x86.avx512.mask.ptestm.d.512(<16 x i32>, <16 x i32>, i16)

define void @test_store1(<16 x float> %data, i8* %ptr, i16 %mask) {

  call void @llvm.x86.avx512.mask.storeu.ps.512(i8* %ptr, <16 x float> %data, i16 %mask)
  ret void
}

declare void @llvm.x86.avx512.mask.storeu.ps.512(i8*, <16 x float>, i16 )

define void @test_store2(<8 x double> %data, i8* %ptr, i8 %mask) {

  call void @llvm.x86.avx512.mask.storeu.pd.512(i8* %ptr, <8 x double> %data, i8 %mask)
  ret void
}

declare void @llvm.x86.avx512.mask.storeu.pd.512(i8*, <8 x double>, i8)

define void @test_mask_store_aligned_ps(<16 x float> %data, i8* %ptr, i16 %mask) {





  call void @llvm.x86.avx512.mask.store.ps.512(i8* %ptr, <16 x float> %data, i16 %mask)
  ret void
}

declare void @llvm.x86.avx512.mask.store.ps.512(i8*, <16 x float>, i16 )

define void @test_mask_store_aligned_pd(<8 x double> %data, i8* %ptr, i8 %mask) {





  call void @llvm.x86.avx512.mask.store.pd.512(i8* %ptr, <8 x double> %data, i8 %mask)
  ret void
}

declare void @llvm.x86.avx512.mask.store.pd.512(i8*, <8 x double>, i8)

define <16 x float> @test_maskz_load_aligned_ps(<16 x float> %data, i8* %ptr, i16 %mask) {





  %res = call <16 x float> @llvm.x86.avx512.mask.load.ps.512(i8* %ptr, <16 x float> zeroinitializer, i16 %mask)
  ret <16 x float> %res
}

declare <16 x float> @llvm.x86.avx512.mask.load.ps.512(i8*, <16 x float>, i16)

define <8 x double> @test_maskz_load_aligned_pd(<8 x double> %data, i8* %ptr, i8 %mask) {





  %res = call <8 x double> @llvm.x86.avx512.mask.load.pd.512(i8* %ptr, <8 x double> zeroinitializer, i8 %mask)
  ret <8 x double> %res
}

declare <8 x double> @llvm.x86.avx512.mask.load.pd.512(i8*, <8 x double>, i8)

define <16 x float> @test_load_aligned_ps(<16 x float> %data, i8* %ptr, i16 %mask) {




  %res = call <16 x float> @llvm.x86.avx512.mask.load.ps.512(i8* %ptr, <16 x float> zeroinitializer, i16 -1)
  ret <16 x float> %res
}

define <8 x double> @test_load_aligned_pd(<8 x double> %data, i8* %ptr, i8 %mask) {




  %res = call <8 x double> @llvm.x86.avx512.mask.load.pd.512(i8* %ptr, <8 x double> zeroinitializer, i8 -1)
  ret <8 x double> %res
}

declare <8 x i64> @llvm.x86.avx512.movntdqa(i8*)

define <8 x i64> @test_valign_q(<8 x i64> %a, <8 x i64> %b) {


  %res = call <8 x i64> @llvm.x86.avx512.mask.valign.q.512(<8 x i64> %a, <8 x i64> %b, i32 2, <8 x i64> zeroinitializer, i8 -1)
  ret <8 x i64> %res
}

define <8 x i64> @test_mask_valign_q(<8 x i64> %a, <8 x i64> %b, <8 x i64> %src, i8 %mask) {


  %res = call <8 x i64> @llvm.x86.avx512.mask.valign.q.512(<8 x i64> %a, <8 x i64> %b, i32 2, <8 x i64> %src, i8 %mask)
  ret <8 x i64> %res
}

declare <8 x i64> @llvm.x86.avx512.mask.valign.q.512(<8 x i64>, <8 x i64>, i32, <8 x i64>, i8)

define <16 x i32> @test_maskz_valign_d(<16 x i32> %a, <16 x i32> %b, i16 %mask) {


  %res = call <16 x i32> @llvm.x86.avx512.mask.valign.d.512(<16 x i32> %a, <16 x i32> %b, i32 5, <16 x i32> zeroinitializer, i16 %mask)
  ret <16 x i32> %res
}

declare <16 x i32> @llvm.x86.avx512.mask.valign.d.512(<16 x i32>, <16 x i32>, i32, <16 x i32>, i16)

define void @test_mask_store_ss(i8* %ptr, <4 x float> %data, i8 %mask) {
 
 
 call void @llvm.x86.avx512.mask.store.ss(i8* %ptr, <4 x float> %data, i8 %mask)
 ret void
}

declare void @llvm.x86.avx512.mask.store.ss(i8*, <4 x float>, i8 )

define i16 @test_pcmpeq_d(<16 x i32> %a, <16 x i32> %b) {


  %res = call i16 @llvm.x86.avx512.mask.pcmpeq.d.512(<16 x i32> %a, <16 x i32> %b, i16 -1)
  ret i16 %res
}

define i16 @test_mask_pcmpeq_d(<16 x i32> %a, <16 x i32> %b, i16 %mask) {


  %res = call i16 @llvm.x86.avx512.mask.pcmpeq.d.512(<16 x i32> %a, <16 x i32> %b, i16 %mask)
  ret i16 %res
}

declare i16 @llvm.x86.avx512.mask.pcmpeq.d.512(<16 x i32>, <16 x i32>, i16)

define i8 @test_pcmpeq_q(<8 x i64> %a, <8 x i64> %b) {


  %res = call i8 @llvm.x86.avx512.mask.pcmpeq.q.512(<8 x i64> %a, <8 x i64> %b, i8 -1)
  ret i8 %res
}

define i8 @test_mask_pcmpeq_q(<8 x i64> %a, <8 x i64> %b, i8 %mask) {


  %res = call i8 @llvm.x86.avx512.mask.pcmpeq.q.512(<8 x i64> %a, <8 x i64> %b, i8 %mask)
  ret i8 %res
}

declare i8 @llvm.x86.avx512.mask.pcmpeq.q.512(<8 x i64>, <8 x i64>, i8)

define i16 @test_pcmpgt_d(<16 x i32> %a, <16 x i32> %b) {


  %res = call i16 @llvm.x86.avx512.mask.pcmpgt.d.512(<16 x i32> %a, <16 x i32> %b, i16 -1)
  ret i16 %res
}

define i16 @test_mask_pcmpgt_d(<16 x i32> %a, <16 x i32> %b, i16 %mask) {


  %res = call i16 @llvm.x86.avx512.mask.pcmpgt.d.512(<16 x i32> %a, <16 x i32> %b, i16 %mask)
  ret i16 %res
}

declare i16 @llvm.x86.avx512.mask.pcmpgt.d.512(<16 x i32>, <16 x i32>, i16)

define i8 @test_pcmpgt_q(<8 x i64> %a, <8 x i64> %b) {


  %res = call i8 @llvm.x86.avx512.mask.pcmpgt.q.512(<8 x i64> %a, <8 x i64> %b, i8 -1)
  ret i8 %res
}

define i8 @test_mask_pcmpgt_q(<8 x i64> %a, <8 x i64> %b, i8 %mask) {


  %res = call i8 @llvm.x86.avx512.mask.pcmpgt.q.512(<8 x i64> %a, <8 x i64> %b, i8 %mask)
  ret i8 %res
}

declare i8 @llvm.x86.avx512.mask.pcmpgt.q.512(<8 x i64>, <8 x i64>, i8)

define <8 x i16> @test_cmp_d_512(<16 x i32> %a0, <16 x i32> %a1) {


  %res0 = call i16 @llvm.x86.avx512.mask.cmp.d.512(<16 x i32> %a0, <16 x i32> %a1, i32 0, i16 -1)
  %vec0 = insertelement <8 x i16> undef, i16 %res0, i32 0

  %res1 = call i16 @llvm.x86.avx512.mask.cmp.d.512(<16 x i32> %a0, <16 x i32> %a1, i32 1, i16 -1)
  %vec1 = insertelement <8 x i16> %vec0, i16 %res1, i32 1

  %res2 = call i16 @llvm.x86.avx512.mask.cmp.d.512(<16 x i32> %a0, <16 x i32> %a1, i32 2, i16 -1)
  %vec2 = insertelement <8 x i16> %vec1, i16 %res2, i32 2

  %res3 = call i16 @llvm.x86.avx512.mask.cmp.d.512(<16 x i32> %a0, <16 x i32> %a1, i32 3, i16 -1)
  %vec3 = insertelement <8 x i16> %vec2, i16 %res3, i32 3

  %res4 = call i16 @llvm.x86.avx512.mask.cmp.d.512(<16 x i32> %a0, <16 x i32> %a1, i32 4, i16 -1)
  %vec4 = insertelement <8 x i16> %vec3, i16 %res4, i32 4

  %res5 = call i16 @llvm.x86.avx512.mask.cmp.d.512(<16 x i32> %a0, <16 x i32> %a1, i32 5, i16 -1)
  %vec5 = insertelement <8 x i16> %vec4, i16 %res5, i32 5

  %res6 = call i16 @llvm.x86.avx512.mask.cmp.d.512(<16 x i32> %a0, <16 x i32> %a1, i32 6, i16 -1)
  %vec6 = insertelement <8 x i16> %vec5, i16 %res6, i32 6

  %res7 = call i16 @llvm.x86.avx512.mask.cmp.d.512(<16 x i32> %a0, <16 x i32> %a1, i32 7, i16 -1)
  %vec7 = insertelement <8 x i16> %vec6, i16 %res7, i32 7
  ret <8 x i16> %vec7
}

define <8 x i16> @test_mask_cmp_d_512(<16 x i32> %a0, <16 x i32> %a1, i16 %mask) {


  %res0 = call i16 @llvm.x86.avx512.mask.cmp.d.512(<16 x i32> %a0, <16 x i32> %a1, i32 0, i16 %mask)
  %vec0 = insertelement <8 x i16> undef, i16 %res0, i32 0

  %res1 = call i16 @llvm.x86.avx512.mask.cmp.d.512(<16 x i32> %a0, <16 x i32> %a1, i32 1, i16 %mask)
  %vec1 = insertelement <8 x i16> %vec0, i16 %res1, i32 1

  %res2 = call i16 @llvm.x86.avx512.mask.cmp.d.512(<16 x i32> %a0, <16 x i32> %a1, i32 2, i16 %mask)
  %vec2 = insertelement <8 x i16> %vec1, i16 %res2, i32 2

  %res3 = call i16 @llvm.x86.avx512.mask.cmp.d.512(<16 x i32> %a0, <16 x i32> %a1, i32 3, i16 %mask)
  %vec3 = insertelement <8 x i16> %vec2, i16 %res3, i32 3

  %res4 = call i16 @llvm.x86.avx512.mask.cmp.d.512(<16 x i32> %a0, <16 x i32> %a1, i32 4, i16 %mask)
  %vec4 = insertelement <8 x i16> %vec3, i16 %res4, i32 4

  %res5 = call i16 @llvm.x86.avx512.mask.cmp.d.512(<16 x i32> %a0, <16 x i32> %a1, i32 5, i16 %mask)
  %vec5 = insertelement <8 x i16> %vec4, i16 %res5, i32 5

  %res6 = call i16 @llvm.x86.avx512.mask.cmp.d.512(<16 x i32> %a0, <16 x i32> %a1, i32 6, i16 %mask)
  %vec6 = insertelement <8 x i16> %vec5, i16 %res6, i32 6

  %res7 = call i16 @llvm.x86.avx512.mask.cmp.d.512(<16 x i32> %a0, <16 x i32> %a1, i32 7, i16 %mask)
  %vec7 = insertelement <8 x i16> %vec6, i16 %res7, i32 7
  ret <8 x i16> %vec7
}

declare i16 @llvm.x86.avx512.mask.cmp.d.512(<16 x i32>, <16 x i32>, i32, i16) nounwind readnone

define <8 x i16> @test_ucmp_d_512(<16 x i32> %a0, <16 x i32> %a1) {


  %res0 = call i16 @llvm.x86.avx512.mask.ucmp.d.512(<16 x i32> %a0, <16 x i32> %a1, i32 0, i16 -1)
  %vec0 = insertelement <8 x i16> undef, i16 %res0, i32 0

  %res1 = call i16 @llvm.x86.avx512.mask.ucmp.d.512(<16 x i32> %a0, <16 x i32> %a1, i32 1, i16 -1)
  %vec1 = insertelement <8 x i16> %vec0, i16 %res1, i32 1

  %res2 = call i16 @llvm.x86.avx512.mask.ucmp.d.512(<16 x i32> %a0, <16 x i32> %a1, i32 2, i16 -1)
  %vec2 = insertelement <8 x i16> %vec1, i16 %res2, i32 2

  %res3 = call i16 @llvm.x86.avx512.mask.ucmp.d.512(<16 x i32> %a0, <16 x i32> %a1, i32 3, i16 -1)
  %vec3 = insertelement <8 x i16> %vec2, i16 %res3, i32 3

  %res4 = call i16 @llvm.x86.avx512.mask.ucmp.d.512(<16 x i32> %a0, <16 x i32> %a1, i32 4, i16 -1)
  %vec4 = insertelement <8 x i16> %vec3, i16 %res4, i32 4

  %res5 = call i16 @llvm.x86.avx512.mask.ucmp.d.512(<16 x i32> %a0, <16 x i32> %a1, i32 5, i16 -1)
  %vec5 = insertelement <8 x i16> %vec4, i16 %res5, i32 5

  %res6 = call i16 @llvm.x86.avx512.mask.ucmp.d.512(<16 x i32> %a0, <16 x i32> %a1, i32 6, i16 -1)
  %vec6 = insertelement <8 x i16> %vec5, i16 %res6, i32 6

  %res7 = call i16 @llvm.x86.avx512.mask.ucmp.d.512(<16 x i32> %a0, <16 x i32> %a1, i32 7, i16 -1)
  %vec7 = insertelement <8 x i16> %vec6, i16 %res7, i32 7
  ret <8 x i16> %vec7
}

define <8 x i16> @test_mask_ucmp_d_512(<16 x i32> %a0, <16 x i32> %a1, i16 %mask) {


  %res0 = call i16 @llvm.x86.avx512.mask.ucmp.d.512(<16 x i32> %a0, <16 x i32> %a1, i32 0, i16 %mask)
  %vec0 = insertelement <8 x i16> undef, i16 %res0, i32 0

  %res1 = call i16 @llvm.x86.avx512.mask.ucmp.d.512(<16 x i32> %a0, <16 x i32> %a1, i32 1, i16 %mask)
  %vec1 = insertelement <8 x i16> %vec0, i16 %res1, i32 1

  %res2 = call i16 @llvm.x86.avx512.mask.ucmp.d.512(<16 x i32> %a0, <16 x i32> %a1, i32 2, i16 %mask)
  %vec2 = insertelement <8 x i16> %vec1, i16 %res2, i32 2

  %res3 = call i16 @llvm.x86.avx512.mask.ucmp.d.512(<16 x i32> %a0, <16 x i32> %a1, i32 3, i16 %mask)
  %vec3 = insertelement <8 x i16> %vec2, i16 %res3, i32 3

  %res4 = call i16 @llvm.x86.avx512.mask.ucmp.d.512(<16 x i32> %a0, <16 x i32> %a1, i32 4, i16 %mask)
  %vec4 = insertelement <8 x i16> %vec3, i16 %res4, i32 4

  %res5 = call i16 @llvm.x86.avx512.mask.ucmp.d.512(<16 x i32> %a0, <16 x i32> %a1, i32 5, i16 %mask)
  %vec5 = insertelement <8 x i16> %vec4, i16 %res5, i32 5

  %res6 = call i16 @llvm.x86.avx512.mask.ucmp.d.512(<16 x i32> %a0, <16 x i32> %a1, i32 6, i16 %mask)
  %vec6 = insertelement <8 x i16> %vec5, i16 %res6, i32 6

  %res7 = call i16 @llvm.x86.avx512.mask.ucmp.d.512(<16 x i32> %a0, <16 x i32> %a1, i32 7, i16 %mask)
  %vec7 = insertelement <8 x i16> %vec6, i16 %res7, i32 7
  ret <8 x i16> %vec7
}

declare i16 @llvm.x86.avx512.mask.ucmp.d.512(<16 x i32>, <16 x i32>, i32, i16) nounwind readnone

define <8 x i8> @test_cmp_q_512(<8 x i64> %a0, <8 x i64> %a1) {


  %res0 = call i8 @llvm.x86.avx512.mask.cmp.q.512(<8 x i64> %a0, <8 x i64> %a1, i32 0, i8 -1)
  %vec0 = insertelement <8 x i8> undef, i8 %res0, i32 0

  %res1 = call i8 @llvm.x86.avx512.mask.cmp.q.512(<8 x i64> %a0, <8 x i64> %a1, i32 1, i8 -1)
  %vec1 = insertelement <8 x i8> %vec0, i8 %res1, i32 1

  %res2 = call i8 @llvm.x86.avx512.mask.cmp.q.512(<8 x i64> %a0, <8 x i64> %a1, i32 2, i8 -1)
  %vec2 = insertelement <8 x i8> %vec1, i8 %res2, i32 2

  %res3 = call i8 @llvm.x86.avx512.mask.cmp.q.512(<8 x i64> %a0, <8 x i64> %a1, i32 3, i8 -1)
  %vec3 = insertelement <8 x i8> %vec2, i8 %res3, i32 3

  %res4 = call i8 @llvm.x86.avx512.mask.cmp.q.512(<8 x i64> %a0, <8 x i64> %a1, i32 4, i8 -1)
  %vec4 = insertelement <8 x i8> %vec3, i8 %res4, i32 4

  %res5 = call i8 @llvm.x86.avx512.mask.cmp.q.512(<8 x i64> %a0, <8 x i64> %a1, i32 5, i8 -1)
  %vec5 = insertelement <8 x i8> %vec4, i8 %res5, i32 5

  %res6 = call i8 @llvm.x86.avx512.mask.cmp.q.512(<8 x i64> %a0, <8 x i64> %a1, i32 6, i8 -1)
  %vec6 = insertelement <8 x i8> %vec5, i8 %res6, i32 6

  %res7 = call i8 @llvm.x86.avx512.mask.cmp.q.512(<8 x i64> %a0, <8 x i64> %a1, i32 7, i8 -1)
  %vec7 = insertelement <8 x i8> %vec6, i8 %res7, i32 7
  ret <8 x i8> %vec7
}

define <8 x i8> @test_mask_cmp_q_512(<8 x i64> %a0, <8 x i64> %a1, i8 %mask) {


  %res0 = call i8 @llvm.x86.avx512.mask.cmp.q.512(<8 x i64> %a0, <8 x i64> %a1, i32 0, i8 %mask)
  %vec0 = insertelement <8 x i8> undef, i8 %res0, i32 0

  %res1 = call i8 @llvm.x86.avx512.mask.cmp.q.512(<8 x i64> %a0, <8 x i64> %a1, i32 1, i8 %mask)
  %vec1 = insertelement <8 x i8> %vec0, i8 %res1, i32 1

  %res2 = call i8 @llvm.x86.avx512.mask.cmp.q.512(<8 x i64> %a0, <8 x i64> %a1, i32 2, i8 %mask)
  %vec2 = insertelement <8 x i8> %vec1, i8 %res2, i32 2

  %res3 = call i8 @llvm.x86.avx512.mask.cmp.q.512(<8 x i64> %a0, <8 x i64> %a1, i32 3, i8 %mask)
  %vec3 = insertelement <8 x i8> %vec2, i8 %res3, i32 3

  %res4 = call i8 @llvm.x86.avx512.mask.cmp.q.512(<8 x i64> %a0, <8 x i64> %a1, i32 4, i8 %mask)
  %vec4 = insertelement <8 x i8> %vec3, i8 %res4, i32 4

  %res5 = call i8 @llvm.x86.avx512.mask.cmp.q.512(<8 x i64> %a0, <8 x i64> %a1, i32 5, i8 %mask)
  %vec5 = insertelement <8 x i8> %vec4, i8 %res5, i32 5

  %res6 = call i8 @llvm.x86.avx512.mask.cmp.q.512(<8 x i64> %a0, <8 x i64> %a1, i32 6, i8 %mask)
  %vec6 = insertelement <8 x i8> %vec5, i8 %res6, i32 6

  %res7 = call i8 @llvm.x86.avx512.mask.cmp.q.512(<8 x i64> %a0, <8 x i64> %a1, i32 7, i8 %mask)
  %vec7 = insertelement <8 x i8> %vec6, i8 %res7, i32 7
  ret <8 x i8> %vec7
}

declare i8 @llvm.x86.avx512.mask.cmp.q.512(<8 x i64>, <8 x i64>, i32, i8) nounwind readnone

define <8 x i8> @test_ucmp_q_512(<8 x i64> %a0, <8 x i64> %a1) {


  %res0 = call i8 @llvm.x86.avx512.mask.ucmp.q.512(<8 x i64> %a0, <8 x i64> %a1, i32 0, i8 -1)
  %vec0 = insertelement <8 x i8> undef, i8 %res0, i32 0

  %res1 = call i8 @llvm.x86.avx512.mask.ucmp.q.512(<8 x i64> %a0, <8 x i64> %a1, i32 1, i8 -1)
  %vec1 = insertelement <8 x i8> %vec0, i8 %res1, i32 1

  %res2 = call i8 @llvm.x86.avx512.mask.ucmp.q.512(<8 x i64> %a0, <8 x i64> %a1, i32 2, i8 -1)
  %vec2 = insertelement <8 x i8> %vec1, i8 %res2, i32 2

  %res3 = call i8 @llvm.x86.avx512.mask.ucmp.q.512(<8 x i64> %a0, <8 x i64> %a1, i32 3, i8 -1)
  %vec3 = insertelement <8 x i8> %vec2, i8 %res3, i32 3

  %res4 = call i8 @llvm.x86.avx512.mask.ucmp.q.512(<8 x i64> %a0, <8 x i64> %a1, i32 4, i8 -1)
  %vec4 = insertelement <8 x i8> %vec3, i8 %res4, i32 4

  %res5 = call i8 @llvm.x86.avx512.mask.ucmp.q.512(<8 x i64> %a0, <8 x i64> %a1, i32 5, i8 -1)
  %vec5 = insertelement <8 x i8> %vec4, i8 %res5, i32 5

  %res6 = call i8 @llvm.x86.avx512.mask.ucmp.q.512(<8 x i64> %a0, <8 x i64> %a1, i32 6, i8 -1)
  %vec6 = insertelement <8 x i8> %vec5, i8 %res6, i32 6

  %res7 = call i8 @llvm.x86.avx512.mask.ucmp.q.512(<8 x i64> %a0, <8 x i64> %a1, i32 7, i8 -1)
  %vec7 = insertelement <8 x i8> %vec6, i8 %res7, i32 7
  ret <8 x i8> %vec7
}

define <8 x i8> @test_mask_ucmp_q_512(<8 x i64> %a0, <8 x i64> %a1, i8 %mask) {


  %res0 = call i8 @llvm.x86.avx512.mask.ucmp.q.512(<8 x i64> %a0, <8 x i64> %a1, i32 0, i8 %mask)
  %vec0 = insertelement <8 x i8> undef, i8 %res0, i32 0

  %res1 = call i8 @llvm.x86.avx512.mask.ucmp.q.512(<8 x i64> %a0, <8 x i64> %a1, i32 1, i8 %mask)
  %vec1 = insertelement <8 x i8> %vec0, i8 %res1, i32 1

  %res2 = call i8 @llvm.x86.avx512.mask.ucmp.q.512(<8 x i64> %a0, <8 x i64> %a1, i32 2, i8 %mask)
  %vec2 = insertelement <8 x i8> %vec1, i8 %res2, i32 2

  %res3 = call i8 @llvm.x86.avx512.mask.ucmp.q.512(<8 x i64> %a0, <8 x i64> %a1, i32 3, i8 %mask)
  %vec3 = insertelement <8 x i8> %vec2, i8 %res3, i32 3

  %res4 = call i8 @llvm.x86.avx512.mask.ucmp.q.512(<8 x i64> %a0, <8 x i64> %a1, i32 4, i8 %mask)
  %vec4 = insertelement <8 x i8> %vec3, i8 %res4, i32 4

  %res5 = call i8 @llvm.x86.avx512.mask.ucmp.q.512(<8 x i64> %a0, <8 x i64> %a1, i32 5, i8 %mask)
  %vec5 = insertelement <8 x i8> %vec4, i8 %res5, i32 5

  %res6 = call i8 @llvm.x86.avx512.mask.ucmp.q.512(<8 x i64> %a0, <8 x i64> %a1, i32 6, i8 %mask)
  %vec6 = insertelement <8 x i8> %vec5, i8 %res6, i32 6

  %res7 = call i8 @llvm.x86.avx512.mask.ucmp.q.512(<8 x i64> %a0, <8 x i64> %a1, i32 7, i8 %mask)
  %vec7 = insertelement <8 x i8> %vec6, i8 %res7, i32 7
  ret <8 x i8> %vec7
}

declare i8 @llvm.x86.avx512.mask.ucmp.q.512(<8 x i64>, <8 x i64>, i32, i8) nounwind readnone

define <4 x float> @test_mask_vextractf32x4(<4 x float> %b, <16 x float> %a, i8 %mask) {


  %res = call <4 x float> @llvm.x86.avx512.mask.vextractf32x4.512(<16 x float> %a, i8 2, <4 x float> %b, i8 %mask)
  ret <4 x float> %res
}

declare <4 x float> @llvm.x86.avx512.mask.vextractf32x4.512(<16 x float>, i8, <4 x float>, i8)

define <4 x i64> @test_mask_vextracti64x4(<4 x i64> %b, <8 x i64> %a, i8 %mask) {


  %res = call <4 x i64> @llvm.x86.avx512.mask.vextracti64x4.512(<8 x i64> %a, i8 2, <4 x i64> %b, i8 %mask)
  ret <4 x i64> %res
}

declare <4 x i64> @llvm.x86.avx512.mask.vextracti64x4.512(<8 x i64>, i8, <4 x i64>, i8)

define <4 x i32> @test_maskz_vextracti32x4(<16 x i32> %a, i8 %mask) {


  %res = call <4 x i32> @llvm.x86.avx512.mask.vextracti32x4.512(<16 x i32> %a, i8 2, <4 x i32> zeroinitializer, i8 %mask)
  ret <4 x i32> %res
}

declare <4 x i32> @llvm.x86.avx512.mask.vextracti32x4.512(<16 x i32>, i8, <4 x i32>, i8)

define <4 x double> @test_vextractf64x4(<8 x double> %a) {


  %res = call <4 x double> @llvm.x86.avx512.mask.vextractf64x4.512(<8 x double> %a, i8 2, <4 x double> zeroinitializer, i8 -1)
  ret <4 x double> %res
}

declare <4 x double> @llvm.x86.avx512.mask.vextractf64x4.512(<8 x double>, i8, <4 x double>, i8)

define <16 x i32> @test_x86_avx512_pslli_d(<16 x i32> %a0) {
  
  
  %res = call <16 x i32> @llvm.x86.avx512.mask.pslli.d(<16 x i32> %a0, i32 7, <16 x i32> zeroinitializer, i16 -1)
  ret <16 x i32> %res
}

define <16 x i32> @test_x86_avx512_mask_pslli_d(<16 x i32> %a0, <16 x i32> %a1, i16 %mask) {
  
  
  %res = call <16 x i32> @llvm.x86.avx512.mask.pslli.d(<16 x i32> %a0, i32 7, <16 x i32> %a1, i16 %mask)
  ret <16 x i32> %res
}

define <16 x i32> @test_x86_avx512_maskz_pslli_d(<16 x i32> %a0, i16 %mask) {
  
  
  %res = call <16 x i32> @llvm.x86.avx512.mask.pslli.d(<16 x i32> %a0, i32 7, <16 x i32> zeroinitializer, i16 %mask)
  ret <16 x i32> %res
}

declare <16 x i32> @llvm.x86.avx512.mask.pslli.d(<16 x i32>, i32, <16 x i32>, i16) nounwind readnone

define <8 x i64> @test_x86_avx512_pslli_q(<8 x i64> %a0) {
  
  
  %res = call <8 x i64> @llvm.x86.avx512.mask.pslli.q(<8 x i64> %a0, i32 7, <8 x i64> zeroinitializer, i8 -1)
  ret <8 x i64> %res
}

define <8 x i64> @test_x86_avx512_mask_pslli_q(<8 x i64> %a0, <8 x i64> %a1, i8 %mask) {
  
  
  %res = call <8 x i64> @llvm.x86.avx512.mask.pslli.q(<8 x i64> %a0, i32 7, <8 x i64> %a1, i8 %mask)
  ret <8 x i64> %res
}

define <8 x i64> @test_x86_avx512_maskz_pslli_q(<8 x i64> %a0, i8 %mask) {
  
  
  %res = call <8 x i64> @llvm.x86.avx512.mask.pslli.q(<8 x i64> %a0, i32 7, <8 x i64> zeroinitializer, i8 %mask)
  ret <8 x i64> %res
}

declare <8 x i64> @llvm.x86.avx512.mask.pslli.q(<8 x i64>, i32, <8 x i64>, i8) nounwind readnone

define <16 x i32> @test_x86_avx512_psrli_d(<16 x i32> %a0) {
  
  
  %res = call <16 x i32> @llvm.x86.avx512.mask.psrli.d(<16 x i32> %a0, i32 7, <16 x i32> zeroinitializer, i16 -1)
  ret <16 x i32> %res
}

define <16 x i32> @test_x86_avx512_mask_psrli_d(<16 x i32> %a0, <16 x i32> %a1, i16 %mask) {
  
  
  %res = call <16 x i32> @llvm.x86.avx512.mask.psrli.d(<16 x i32> %a0, i32 7, <16 x i32> %a1, i16 %mask)
  ret <16 x i32> %res
}

define <16 x i32> @test_x86_avx512_maskz_psrli_d(<16 x i32> %a0, i16 %mask) {
  
  
  %res = call <16 x i32> @llvm.x86.avx512.mask.psrli.d(<16 x i32> %a0, i32 7, <16 x i32> zeroinitializer, i16 %mask)
  ret <16 x i32> %res
}

declare <16 x i32> @llvm.x86.avx512.mask.psrli.d(<16 x i32>, i32, <16 x i32>, i16) nounwind readnone

define <8 x i64> @test_x86_avx512_psrli_q(<8 x i64> %a0) {
  
  
  %res = call <8 x i64> @llvm.x86.avx512.mask.psrli.q(<8 x i64> %a0, i32 7, <8 x i64> zeroinitializer, i8 -1)
  ret <8 x i64> %res
}

define <8 x i64> @test_x86_avx512_mask_psrli_q(<8 x i64> %a0, <8 x i64> %a1, i8 %mask) {
  
  
  %res = call <8 x i64> @llvm.x86.avx512.mask.psrli.q(<8 x i64> %a0, i32 7, <8 x i64> %a1, i8 %mask)
  ret <8 x i64> %res
}

define <8 x i64> @test_x86_avx512_maskz_psrli_q(<8 x i64> %a0, i8 %mask) {
  
  
  %res = call <8 x i64> @llvm.x86.avx512.mask.psrli.q(<8 x i64> %a0, i32 7, <8 x i64> zeroinitializer, i8 %mask)
  ret <8 x i64> %res
}

declare <8 x i64> @llvm.x86.avx512.mask.psrli.q(<8 x i64>, i32, <8 x i64>, i8) nounwind readnone

define <16 x i32> @test_x86_avx512_psrai_d(<16 x i32> %a0) {
  
  
  %res = call <16 x i32> @llvm.x86.avx512.mask.psrai.d(<16 x i32> %a0, i32 7, <16 x i32> zeroinitializer, i16 -1)
  ret <16 x i32> %res
}

define <16 x i32> @test_x86_avx512_mask_psrai_d(<16 x i32> %a0, <16 x i32> %a1, i16 %mask) {
  
  
  %res = call <16 x i32> @llvm.x86.avx512.mask.psrai.d(<16 x i32> %a0, i32 7, <16 x i32> %a1, i16 %mask)
  ret <16 x i32> %res
}

define <16 x i32> @test_x86_avx512_maskz_psrai_d(<16 x i32> %a0, i16 %mask) {
  
  
  %res = call <16 x i32> @llvm.x86.avx512.mask.psrai.d(<16 x i32> %a0, i32 7, <16 x i32> zeroinitializer, i16 %mask)
  ret <16 x i32> %res
}

declare <16 x i32> @llvm.x86.avx512.mask.psrai.d(<16 x i32>, i32, <16 x i32>, i16) nounwind readnone

define <8 x i64> @test_x86_avx512_psrai_q(<8 x i64> %a0) {
  
  
  %res = call <8 x i64> @llvm.x86.avx512.mask.psrai.q(<8 x i64> %a0, i32 7, <8 x i64> zeroinitializer, i8 -1)
  ret <8 x i64> %res
}

define <8 x i64> @test_x86_avx512_mask_psrai_q(<8 x i64> %a0, <8 x i64> %a1, i8 %mask) {
  
  
  %res = call <8 x i64> @llvm.x86.avx512.mask.psrai.q(<8 x i64> %a0, i32 7, <8 x i64> %a1, i8 %mask)
  ret <8 x i64> %res
}

define <8 x i64> @test_x86_avx512_maskz_psrai_q(<8 x i64> %a0, i8 %mask) {
  
  
  %res = call <8 x i64> @llvm.x86.avx512.mask.psrai.q(<8 x i64> %a0, i32 7, <8 x i64> zeroinitializer, i8 %mask)
  ret <8 x i64> %res
}

declare <8 x i64> @llvm.x86.avx512.mask.psrai.q(<8 x i64>, i32, <8 x i64>, i8) nounwind readnone

define <16 x i32> @test_x86_avx512_psll_d(<16 x i32> %a0, <4 x i32> %a1) {
  
  
  %res = call <16 x i32> @llvm.x86.avx512.mask.psll.d(<16 x i32> %a0, <4 x i32> %a1, <16 x i32> zeroinitializer, i16 -1)
  ret <16 x i32> %res
}

define <16 x i32> @test_x86_avx512_mask_psll_d(<16 x i32> %a0, <4 x i32> %a1, <16 x i32> %a2, i16 %mask) {
  
  
  %res = call <16 x i32> @llvm.x86.avx512.mask.psll.d(<16 x i32> %a0, <4 x i32> %a1, <16 x i32> %a2, i16 %mask)
  ret <16 x i32> %res
}

define <16 x i32> @test_x86_avx512_maskz_psll_d(<16 x i32> %a0, <4 x i32> %a1, i16 %mask) {
  
  
  %res = call <16 x i32> @llvm.x86.avx512.mask.psll.d(<16 x i32> %a0, <4 x i32> %a1, <16 x i32> zeroinitializer, i16 %mask)
  ret <16 x i32> %res
}

declare <16 x i32> @llvm.x86.avx512.mask.psll.d(<16 x i32>, <4 x i32>, <16 x i32>, i16) nounwind readnone

define <8 x i64> @test_x86_avx512_psll_q(<8 x i64> %a0, <2 x i64> %a1) {
  
  
  %res = call <8 x i64> @llvm.x86.avx512.mask.psll.q(<8 x i64> %a0, <2 x i64> %a1, <8 x i64> zeroinitializer, i8 -1)
  ret <8 x i64> %res
}

define <8 x i64> @test_x86_avx512_mask_psll_q(<8 x i64> %a0, <2 x i64> %a1, <8 x i64> %a2, i8 %mask) {
  
  
  %res = call <8 x i64> @llvm.x86.avx512.mask.psll.q(<8 x i64> %a0, <2 x i64> %a1, <8 x i64> %a2, i8 %mask)
  ret <8 x i64> %res
}

define <8 x i64> @test_x86_avx512_maskz_psll_q(<8 x i64> %a0, <2 x i64> %a1, i8 %mask) {
  
  
  %res = call <8 x i64> @llvm.x86.avx512.mask.psll.q(<8 x i64> %a0, <2 x i64> %a1, <8 x i64> zeroinitializer, i8 %mask)
  ret <8 x i64> %res
}

declare <8 x i64> @llvm.x86.avx512.mask.psll.q(<8 x i64>, <2 x i64>, <8 x i64>, i8) nounwind readnone

define <16 x i32> @test_x86_avx512_psrl_d(<16 x i32> %a0, <4 x i32> %a1) {
  
  
  %res = call <16 x i32> @llvm.x86.avx512.mask.psrl.d(<16 x i32> %a0, <4 x i32> %a1, <16 x i32> zeroinitializer, i16 -1)
  ret <16 x i32> %res
}

define <16 x i32> @test_x86_avx512_mask_psrl_d(<16 x i32> %a0, <4 x i32> %a1, <16 x i32> %a2, i16 %mask) {
  
  
  %res = call <16 x i32> @llvm.x86.avx512.mask.psrl.d(<16 x i32> %a0, <4 x i32> %a1, <16 x i32> %a2, i16 %mask)
  ret <16 x i32> %res
}

define <16 x i32> @test_x86_avx512_maskz_psrl_d(<16 x i32> %a0, <4 x i32> %a1, i16 %mask) {
  
  
  %res = call <16 x i32> @llvm.x86.avx512.mask.psrl.d(<16 x i32> %a0, <4 x i32> %a1, <16 x i32> zeroinitializer, i16 %mask)
  ret <16 x i32> %res
}

declare <16 x i32> @llvm.x86.avx512.mask.psrl.d(<16 x i32>, <4 x i32>, <16 x i32>, i16) nounwind readnone

define <8 x i64> @test_x86_avx512_psrl_q(<8 x i64> %a0, <2 x i64> %a1) {
  
  
  %res = call <8 x i64> @llvm.x86.avx512.mask.psrl.q(<8 x i64> %a0, <2 x i64> %a1, <8 x i64> zeroinitializer, i8 -1)
  ret <8 x i64> %res
}

define <8 x i64> @test_x86_avx512_mask_psrl_q(<8 x i64> %a0, <2 x i64> %a1, <8 x i64> %a2, i8 %mask) {
  
  
  %res = call <8 x i64> @llvm.x86.avx512.mask.psrl.q(<8 x i64> %a0, <2 x i64> %a1, <8 x i64> %a2, i8 %mask)
  ret <8 x i64> %res
}

define <8 x i64> @test_x86_avx512_maskz_psrl_q(<8 x i64> %a0, <2 x i64> %a1, i8 %mask) {
  
  
  %res = call <8 x i64> @llvm.x86.avx512.mask.psrl.q(<8 x i64> %a0, <2 x i64> %a1, <8 x i64> zeroinitializer, i8 %mask)
  ret <8 x i64> %res
}

declare <8 x i64> @llvm.x86.avx512.mask.psrl.q(<8 x i64>, <2 x i64>, <8 x i64>, i8) nounwind readnone

define <16 x i32> @test_x86_avx512_psra_d(<16 x i32> %a0, <4 x i32> %a1) {
  
  
  %res = call <16 x i32> @llvm.x86.avx512.mask.psra.d(<16 x i32> %a0, <4 x i32> %a1, <16 x i32> zeroinitializer, i16 -1)
  ret <16 x i32> %res
}

define <16 x i32> @test_x86_avx512_mask_psra_d(<16 x i32> %a0, <4 x i32> %a1, <16 x i32> %a2, i16 %mask) {
  
  
  %res = call <16 x i32> @llvm.x86.avx512.mask.psra.d(<16 x i32> %a0, <4 x i32> %a1, <16 x i32> %a2, i16 %mask)
  ret <16 x i32> %res
}

define <16 x i32> @test_x86_avx512_maskz_psra_d(<16 x i32> %a0, <4 x i32> %a1, i16 %mask) {
  
  
  %res = call <16 x i32> @llvm.x86.avx512.mask.psra.d(<16 x i32> %a0, <4 x i32> %a1, <16 x i32> zeroinitializer, i16 %mask)
  ret <16 x i32> %res
}

declare <16 x i32> @llvm.x86.avx512.mask.psra.d(<16 x i32>, <4 x i32>, <16 x i32>, i16) nounwind readnone

define <8 x i64> @test_x86_avx512_psra_q(<8 x i64> %a0, <2 x i64> %a1) {
  
  
  %res = call <8 x i64> @llvm.x86.avx512.mask.psra.q(<8 x i64> %a0, <2 x i64> %a1, <8 x i64> zeroinitializer, i8 -1)
  ret <8 x i64> %res
}

define <8 x i64> @test_x86_avx512_mask_psra_q(<8 x i64> %a0, <2 x i64> %a1, <8 x i64> %a2, i8 %mask) {
  
  
  %res = call <8 x i64> @llvm.x86.avx512.mask.psra.q(<8 x i64> %a0, <2 x i64> %a1, <8 x i64> %a2, i8 %mask)
  ret <8 x i64> %res
}

define <8 x i64> @test_x86_avx512_maskz_psra_q(<8 x i64> %a0, <2 x i64> %a1, i8 %mask) {
  
  
  %res = call <8 x i64> @llvm.x86.avx512.mask.psra.q(<8 x i64> %a0, <2 x i64> %a1, <8 x i64> zeroinitializer, i8 %mask)
  ret <8 x i64> %res
}

declare <8 x i64> @llvm.x86.avx512.mask.psra.q(<8 x i64>, <2 x i64>, <8 x i64>, i8) nounwind readnone

define <16 x i32> @test_x86_avx512_psllv_d(<16 x i32> %a0, <16 x i32> %a1) {
  
  
  %res = call <16 x i32> @llvm.x86.avx512.mask.psllv.d(<16 x i32> %a0, <16 x i32> %a1, <16 x i32> zeroinitializer, i16 -1)
  ret <16 x i32> %res
}

define <16 x i32> @test_x86_avx512_mask_psllv_d(<16 x i32> %a0, <16 x i32> %a1, <16 x i32> %a2, i16 %mask) {
  
  
  %res = call <16 x i32> @llvm.x86.avx512.mask.psllv.d(<16 x i32> %a0, <16 x i32> %a1, <16 x i32> %a2, i16 %mask)
  ret <16 x i32> %res
}

define <16 x i32> @test_x86_avx512_maskz_psllv_d(<16 x i32> %a0, <16 x i32> %a1, i16 %mask) {
  
  
  %res = call <16 x i32> @llvm.x86.avx512.mask.psllv.d(<16 x i32> %a0, <16 x i32> %a1, <16 x i32> zeroinitializer, i16 %mask)
  ret <16 x i32> %res
}

declare <16 x i32> @llvm.x86.avx512.mask.psllv.d(<16 x i32>, <16 x i32>, <16 x i32>, i16) nounwind readnone

define <8 x i64> @test_x86_avx512_psllv_q(<8 x i64> %a0, <8 x i64> %a1) {
  
  
  %res = call <8 x i64> @llvm.x86.avx512.mask.psllv.q(<8 x i64> %a0, <8 x i64> %a1, <8 x i64> zeroinitializer, i8 -1)
  ret <8 x i64> %res
}

define <8 x i64> @test_x86_avx512_mask_psllv_q(<8 x i64> %a0, <8 x i64> %a1, <8 x i64> %a2, i8 %mask) {
  
  
  %res = call <8 x i64> @llvm.x86.avx512.mask.psllv.q(<8 x i64> %a0, <8 x i64> %a1, <8 x i64> %a2, i8 %mask)
  ret <8 x i64> %res
}

define <8 x i64> @test_x86_avx512_maskz_psllv_q(<8 x i64> %a0, <8 x i64> %a1, i8 %mask) {
  
  
  %res = call <8 x i64> @llvm.x86.avx512.mask.psllv.q(<8 x i64> %a0, <8 x i64> %a1, <8 x i64> zeroinitializer, i8 %mask)
  ret <8 x i64> %res
}

declare <8 x i64> @llvm.x86.avx512.mask.psllv.q(<8 x i64>, <8 x i64>, <8 x i64>, i8) nounwind readnone


define <16 x i32> @test_x86_avx512_psrav_d(<16 x i32> %a0, <16 x i32> %a1) {
  
  
  %res = call <16 x i32> @llvm.x86.avx512.mask.psrav.d(<16 x i32> %a0, <16 x i32> %a1, <16 x i32> zeroinitializer, i16 -1)
  ret <16 x i32> %res
}

define <16 x i32> @test_x86_avx512_mask_psrav_d(<16 x i32> %a0, <16 x i32> %a1, <16 x i32> %a2, i16 %mask) {
  
  
  %res = call <16 x i32> @llvm.x86.avx512.mask.psrav.d(<16 x i32> %a0, <16 x i32> %a1, <16 x i32> %a2, i16 %mask)
  ret <16 x i32> %res
}

define <16 x i32> @test_x86_avx512_maskz_psrav_d(<16 x i32> %a0, <16 x i32> %a1, i16 %mask) {
  
  
  %res = call <16 x i32> @llvm.x86.avx512.mask.psrav.d(<16 x i32> %a0, <16 x i32> %a1, <16 x i32> zeroinitializer, i16 %mask)
  ret <16 x i32> %res
}

declare <16 x i32> @llvm.x86.avx512.mask.psrav.d(<16 x i32>, <16 x i32>, <16 x i32>, i16) nounwind readnone

define <8 x i64> @test_x86_avx512_psrav_q(<8 x i64> %a0, <8 x i64> %a1) {
  
  
  %res = call <8 x i64> @llvm.x86.avx512.mask.psrav.q(<8 x i64> %a0, <8 x i64> %a1, <8 x i64> zeroinitializer, i8 -1)
  ret <8 x i64> %res
}

define <8 x i64> @test_x86_avx512_mask_psrav_q(<8 x i64> %a0, <8 x i64> %a1, <8 x i64> %a2, i8 %mask) {
  
  
  %res = call <8 x i64> @llvm.x86.avx512.mask.psrav.q(<8 x i64> %a0, <8 x i64> %a1, <8 x i64> %a2, i8 %mask)
  ret <8 x i64> %res
}

define <8 x i64> @test_x86_avx512_maskz_psrav_q(<8 x i64> %a0, <8 x i64> %a1, i8 %mask) {
  
  
  %res = call <8 x i64> @llvm.x86.avx512.mask.psrav.q(<8 x i64> %a0, <8 x i64> %a1, <8 x i64> zeroinitializer, i8 %mask)
  ret <8 x i64> %res
}

declare <8 x i64> @llvm.x86.avx512.mask.psrav.q(<8 x i64>, <8 x i64>, <8 x i64>, i8) nounwind readnone

define <16 x i32> @test_x86_avx512_psrlv_d(<16 x i32> %a0, <16 x i32> %a1) {
  
  
  %res = call <16 x i32> @llvm.x86.avx512.mask.psrlv.d(<16 x i32> %a0, <16 x i32> %a1, <16 x i32> zeroinitializer, i16 -1)
  ret <16 x i32> %res
}

define <16 x i32> @test_x86_avx512_mask_psrlv_d(<16 x i32> %a0, <16 x i32> %a1, <16 x i32> %a2, i16 %mask) {
  
  
  %res = call <16 x i32> @llvm.x86.avx512.mask.psrlv.d(<16 x i32> %a0, <16 x i32> %a1, <16 x i32> %a2, i16 %mask)
  ret <16 x i32> %res
}

define <16 x i32> @test_x86_avx512_maskz_psrlv_d(<16 x i32> %a0, <16 x i32> %a1, i16 %mask) {
  
  
  %res = call <16 x i32> @llvm.x86.avx512.mask.psrlv.d(<16 x i32> %a0, <16 x i32> %a1, <16 x i32> zeroinitializer, i16 %mask)
  ret <16 x i32> %res
}

declare <16 x i32> @llvm.x86.avx512.mask.psrlv.d(<16 x i32>, <16 x i32>, <16 x i32>, i16) nounwind readnone

define <8 x i64> @test_x86_avx512_psrlv_q(<8 x i64> %a0, <8 x i64> %a1) {
  
  
  %res = call <8 x i64> @llvm.x86.avx512.mask.psrlv.q(<8 x i64> %a0, <8 x i64> %a1, <8 x i64> zeroinitializer, i8 -1)
  ret <8 x i64> %res
}

define <8 x i64> @test_x86_avx512_mask_psrlv_q(<8 x i64> %a0, <8 x i64> %a1, <8 x i64> %a2, i8 %mask) {
  
  
  %res = call <8 x i64> @llvm.x86.avx512.mask.psrlv.q(<8 x i64> %a0, <8 x i64> %a1, <8 x i64> %a2, i8 %mask)
  ret <8 x i64> %res
}

define <8 x i64> @test_x86_avx512_maskz_psrlv_q(<8 x i64> %a0, <8 x i64> %a1, i8 %mask) {
  
  
  %res = call <8 x i64> @llvm.x86.avx512.mask.psrlv.q(<8 x i64> %a0, <8 x i64> %a1, <8 x i64> zeroinitializer, i8 %mask)
  ret <8 x i64> %res
}

declare <8 x i64> @llvm.x86.avx512.mask.psrlv.q(<8 x i64>, <8 x i64>, <8 x i64>, i8) nounwind readnone

define <8 x i64> @test_x86_avx512_psrlv_q_memop(<8 x i64> %a0, <8 x i64>* %ptr) {
  
  
  %b = load <8 x i64>, <8 x i64>* %ptr
  %res = call <8 x i64> @llvm.x86.avx512.mask.psrlv.q(<8 x i64> %a0, <8 x i64> %b, <8 x i64> zeroinitializer, i8 -1)
  ret <8 x i64> %res
}

declare <16 x float> @llvm.x86.avx512.mask.sub.ps.512(<16 x float>, <16 x float>, <16 x float>, i16, i32)
declare <16 x float> @llvm.x86.avx512.mask.mul.ps.512(<16 x float>, <16 x float>, <16 x float>, i16, i32)
declare <8 x double> @llvm.x86.avx512.mask.mul.pd.512(<8 x double>, <8 x double>, <8 x double>, i8, i32)

define <16 x float> @test_vsubps_rn(<16 x float> %a0, <16 x float> %a1) {
  
  
  %res = call <16 x float> @llvm.x86.avx512.mask.sub.ps.512(<16 x float> %a0, <16 x float> %a1,
                    <16 x float> zeroinitializer, i16 -1, i32 0)
  ret <16 x float> %res
}

define <16 x float> @test_vsubps_rd(<16 x float> %a0, <16 x float> %a1) {
  
  
  %res = call <16 x float> @llvm.x86.avx512.mask.sub.ps.512(<16 x float> %a0, <16 x float> %a1,
                    <16 x float> zeroinitializer, i16 -1, i32 1)
  ret <16 x float> %res
}

define <16 x float> @test_vsubps_ru(<16 x float> %a0, <16 x float> %a1) {
  
  
  %res = call <16 x float> @llvm.x86.avx512.mask.sub.ps.512(<16 x float> %a0, <16 x float> %a1,
                    <16 x float> zeroinitializer, i16 -1, i32 2)
  ret <16 x float> %res
}

define <16 x float> @test_vsubps_rz(<16 x float> %a0, <16 x float> %a1) {
  
  
  %res = call <16 x float> @llvm.x86.avx512.mask.sub.ps.512(<16 x float> %a0, <16 x float> %a1,
                    <16 x float> zeroinitializer, i16 -1, i32 3)
  ret <16 x float> %res
}

define <16 x float> @test_vmulps_rn(<16 x float> %a0, <16 x float> %a1) {
  
  
  %res = call <16 x float> @llvm.x86.avx512.mask.mul.ps.512(<16 x float> %a0, <16 x float> %a1,
                    <16 x float> zeroinitializer, i16 -1, i32 0)
  ret <16 x float> %res
}

define <16 x float> @test_vmulps_rd(<16 x float> %a0, <16 x float> %a1) {
  
  
  %res = call <16 x float> @llvm.x86.avx512.mask.mul.ps.512(<16 x float> %a0, <16 x float> %a1,
                    <16 x float> zeroinitializer, i16 -1, i32 1)
  ret <16 x float> %res
}

define <16 x float> @test_vmulps_ru(<16 x float> %a0, <16 x float> %a1) {
  
  
  %res = call <16 x float> @llvm.x86.avx512.mask.mul.ps.512(<16 x float> %a0, <16 x float> %a1,
                    <16 x float> zeroinitializer, i16 -1, i32 2)
  ret <16 x float> %res
}

define <16 x float> @test_vmulps_rz(<16 x float> %a0, <16 x float> %a1) {
  
  
  %res = call <16 x float> @llvm.x86.avx512.mask.mul.ps.512(<16 x float> %a0, <16 x float> %a1,
                    <16 x float> zeroinitializer, i16 -1, i32 3)
  ret <16 x float> %res
}


define <16 x float> @test_vmulps_mask_rn(<16 x float> %a0, <16 x float> %a1, i16 %mask) {
  
  
  %res = call <16 x float> @llvm.x86.avx512.mask.mul.ps.512(<16 x float> %a0, <16 x float> %a1,
                    <16 x float> zeroinitializer, i16 %mask, i32 0)
  ret <16 x float> %res
}

define <16 x float> @test_vmulps_mask_rd(<16 x float> %a0, <16 x float> %a1, i16 %mask) {
  
  
  %res = call <16 x float> @llvm.x86.avx512.mask.mul.ps.512(<16 x float> %a0, <16 x float> %a1,
                    <16 x float> zeroinitializer, i16 %mask, i32 1)
  ret <16 x float> %res
}

define <16 x float> @test_vmulps_mask_ru(<16 x float> %a0, <16 x float> %a1, i16 %mask) {
  
  
  %res = call <16 x float> @llvm.x86.avx512.mask.mul.ps.512(<16 x float> %a0, <16 x float> %a1,
                    <16 x float> zeroinitializer, i16 %mask, i32 2)
  ret <16 x float> %res
}

define <16 x float> @test_vmulps_mask_rz(<16 x float> %a0, <16 x float> %a1, i16 %mask) {
  
  
  %res = call <16 x float> @llvm.x86.avx512.mask.mul.ps.512(<16 x float> %a0, <16 x float> %a1,
                    <16 x float> zeroinitializer, i16 %mask, i32 3)
  ret <16 x float> %res
}


define <16 x float> @test_vmulps_mask_passthru_rn(<16 x float> %a0, <16 x float> %a1, <16 x float> %passthru, i16 %mask) {
  
  
  %res = call <16 x float> @llvm.x86.avx512.mask.mul.ps.512(<16 x float> %a0, <16 x float> %a1,
                    <16 x float> %passthru, i16 %mask, i32 0)
  ret <16 x float> %res
}

define <16 x float> @test_vmulps_mask_passthru_rd(<16 x float> %a0, <16 x float> %a1, <16 x float> %passthru, i16 %mask) {
  
  
  %res = call <16 x float> @llvm.x86.avx512.mask.mul.ps.512(<16 x float> %a0, <16 x float> %a1,
                    <16 x float> %passthru, i16 %mask, i32 1)
  ret <16 x float> %res
}

define <16 x float> @test_vmulps_mask_passthru_ru(<16 x float> %a0, <16 x float> %a1, <16 x float> %passthru, i16 %mask) {
  
  
  %res = call <16 x float> @llvm.x86.avx512.mask.mul.ps.512(<16 x float> %a0, <16 x float> %a1,
                    <16 x float> %passthru, i16 %mask, i32 2)
  ret <16 x float> %res
}

define <16 x float> @test_vmulps_mask_passthru_rz(<16 x float> %a0, <16 x float> %a1, <16 x float> %passthru, i16 %mask) {
  
  
  %res = call <16 x float> @llvm.x86.avx512.mask.mul.ps.512(<16 x float> %a0, <16 x float> %a1,
                    <16 x float> %passthru, i16 %mask, i32 3)
  ret <16 x float> %res
}


define <8 x double> @test_vmulpd_mask_rn(<8 x double> %a0, <8 x double> %a1, i8 %mask) {
  
  
  %res = call <8 x double> @llvm.x86.avx512.mask.mul.pd.512(<8 x double> %a0, <8 x double> %a1,
                    <8 x double> zeroinitializer, i8 %mask, i32 0)
  ret <8 x double> %res
}

define <8 x double> @test_vmulpd_mask_rd(<8 x double> %a0, <8 x double> %a1, i8 %mask) {
  
  
  %res = call <8 x double> @llvm.x86.avx512.mask.mul.pd.512(<8 x double> %a0, <8 x double> %a1,
                    <8 x double> zeroinitializer, i8 %mask, i32 1)
  ret <8 x double> %res
}

define <8 x double> @test_vmulpd_mask_ru(<8 x double> %a0, <8 x double> %a1, i8 %mask) {
  
  
  %res = call <8 x double> @llvm.x86.avx512.mask.mul.pd.512(<8 x double> %a0, <8 x double> %a1,
                    <8 x double> zeroinitializer, i8 %mask, i32 2)
  ret <8 x double> %res
}

define <8 x double> @test_vmulpd_mask_rz(<8 x double> %a0, <8 x double> %a1, i8 %mask) {
  
  
  %res = call <8 x double> @llvm.x86.avx512.mask.mul.pd.512(<8 x double> %a0, <8 x double> %a1,
                    <8 x double> zeroinitializer, i8 %mask, i32 3)
  ret <8 x double> %res
}

define <16 x i32> @test_xor_epi32(<16 x i32> %a, <16 x i32> %b) {
  
  
  %res = call <16 x i32> @llvm.x86.avx512.mask.pxor.d.512(<16 x i32> %a,<16 x i32> %b, <16 x i32>zeroinitializer, i16 -1)
  ret < 16 x i32> %res
}

define <16 x i32> @test_mask_xor_epi32(<16 x i32> %a,<16 x i32> %b, <16 x i32> %passThru, i16 %mask) {
  
  
  %res = call <16 x i32> @llvm.x86.avx512.mask.pxor.d.512(<16 x i32> %a, <16 x i32> %b, <16 x i32> %passThru, i16 %mask)
  ret < 16 x i32> %res
}

declare <16 x i32> @llvm.x86.avx512.mask.pxor.d.512(<16 x i32>, <16 x i32>, <16 x i32>, i16)

define <16 x i32> @test_or_epi32(<16 x i32> %a, <16 x i32> %b) {
  
  
  %res = call <16 x i32> @llvm.x86.avx512.mask.por.d.512(<16 x i32> %a,<16 x i32> %b, <16 x i32>zeroinitializer, i16 -1)
  ret < 16 x i32> %res
}

define <16 x i32> @test_mask_or_epi32(<16 x i32> %a,<16 x i32> %b, <16 x i32> %passThru, i16 %mask) {
  
  
  %res = call <16 x i32> @llvm.x86.avx512.mask.por.d.512(<16 x i32> %a, <16 x i32> %b, <16 x i32> %passThru, i16 %mask)
  ret < 16 x i32> %res
}

declare <16 x i32> @llvm.x86.avx512.mask.por.d.512(<16 x i32>, <16 x i32>, <16 x i32>, i16)

define <16 x i32> @test_and_epi32(<16 x i32> %a, <16 x i32> %b) {
  
  
  %res = call <16 x i32> @llvm.x86.avx512.mask.pand.d.512(<16 x i32> %a,<16 x i32> %b, <16 x i32>zeroinitializer, i16 -1)
  ret < 16 x i32> %res
}

define <16 x i32> @test_mask_and_epi32(<16 x i32> %a,<16 x i32> %b, <16 x i32> %passThru, i16 %mask) {
  
  
  %res = call <16 x i32> @llvm.x86.avx512.mask.pand.d.512(<16 x i32> %a, <16 x i32> %b, <16 x i32> %passThru, i16 %mask)
  ret < 16 x i32> %res
}

declare <16 x i32> @llvm.x86.avx512.mask.pand.d.512(<16 x i32>, <16 x i32>, <16 x i32>, i16)

define <8 x i64> @test_xor_epi64(<8 x i64> %a, <8 x i64> %b) {
  
  
  %res = call <8 x i64> @llvm.x86.avx512.mask.pxor.q.512(<8 x i64> %a,<8 x i64> %b, <8 x i64>zeroinitializer, i8 -1)
  ret < 8 x i64> %res
}

define <8 x i64> @test_mask_xor_epi64(<8 x i64> %a,<8 x i64> %b, <8 x i64> %passThru, i8 %mask) {
  
  
  %res = call <8 x i64> @llvm.x86.avx512.mask.pxor.q.512(<8 x i64> %a, <8 x i64> %b, <8 x i64> %passThru, i8 %mask)
  ret < 8 x i64> %res
}

declare <8 x i64> @llvm.x86.avx512.mask.pxor.q.512(<8 x i64>, <8 x i64>, <8 x i64>, i8)

define <8 x i64> @test_or_epi64(<8 x i64> %a, <8 x i64> %b) {
  
  
  %res = call <8 x i64> @llvm.x86.avx512.mask.por.q.512(<8 x i64> %a,<8 x i64> %b, <8 x i64>zeroinitializer, i8 -1)
  ret < 8 x i64> %res
}

define <8 x i64> @test_mask_or_epi64(<8 x i64> %a,<8 x i64> %b, <8 x i64> %passThru, i8 %mask) {
  
  
  %res = call <8 x i64> @llvm.x86.avx512.mask.por.q.512(<8 x i64> %a, <8 x i64> %b, <8 x i64> %passThru, i8 %mask)
  ret < 8 x i64> %res
}

declare <8 x i64> @llvm.x86.avx512.mask.por.q.512(<8 x i64>, <8 x i64>, <8 x i64>, i8)

define <8 x i64> @test_and_epi64(<8 x i64> %a, <8 x i64> %b) {
  
  
  %res = call <8 x i64> @llvm.x86.avx512.mask.pand.q.512(<8 x i64> %a,<8 x i64> %b, <8 x i64>zeroinitializer, i8 -1)
  ret < 8 x i64> %res
}

define <8 x i64> @test_mask_and_epi64(<8 x i64> %a,<8 x i64> %b, <8 x i64> %passThru, i8 %mask) {
  
  
  %res = call <8 x i64> @llvm.x86.avx512.mask.pand.q.512(<8 x i64> %a, <8 x i64> %b, <8 x i64> %passThru, i8 %mask)
  ret < 8 x i64> %res
}

declare <8 x i64> @llvm.x86.avx512.mask.pand.q.512(<8 x i64>, <8 x i64>, <8 x i64>, i8)


define <16 x i32> @test_mask_add_epi32_rr(<16 x i32> %a, <16 x i32> %b) {
  
  
  %res = call <16 x i32> @llvm.x86.avx512.mask.padd.d.512(<16 x i32> %a, <16 x i32> %b, <16 x i32> zeroinitializer, i16 -1)
  ret < 16 x i32> %res
}

define <16 x i32> @test_mask_add_epi32_rrk(<16 x i32> %a, <16 x i32> %b, <16 x i32> %passThru, i16 %mask) {
  
  
  %res = call <16 x i32> @llvm.x86.avx512.mask.padd.d.512(<16 x i32> %a, <16 x i32> %b, <16 x i32> %passThru, i16 %mask)
  ret < 16 x i32> %res
}

define <16 x i32> @test_mask_add_epi32_rrkz(<16 x i32> %a, <16 x i32> %b, i16 %mask) {
  
  
  %res = call <16 x i32> @llvm.x86.avx512.mask.padd.d.512(<16 x i32> %a, <16 x i32> %b, <16 x i32> zeroinitializer, i16 %mask)
  ret < 16 x i32> %res
}

define <16 x i32> @test_mask_add_epi32_rm(<16 x i32> %a, <16 x i32>* %ptr_b) {
  
  
  %b = load <16 x i32>, <16 x i32>* %ptr_b
  %res = call <16 x i32> @llvm.x86.avx512.mask.padd.d.512(<16 x i32> %a, <16 x i32> %b, <16 x i32> zeroinitializer, i16 -1)
  ret < 16 x i32> %res
}

define <16 x i32> @test_mask_add_epi32_rmk(<16 x i32> %a, <16 x i32>* %ptr_b, <16 x i32> %passThru, i16 %mask) {
  
  
  %b = load <16 x i32>, <16 x i32>* %ptr_b
  %res = call <16 x i32> @llvm.x86.avx512.mask.padd.d.512(<16 x i32> %a, <16 x i32> %b, <16 x i32> %passThru, i16 %mask)
  ret < 16 x i32> %res
}

define <16 x i32> @test_mask_add_epi32_rmkz(<16 x i32> %a, <16 x i32>* %ptr_b, i16 %mask) {
  
  
  %b = load <16 x i32>, <16 x i32>* %ptr_b
  %res = call <16 x i32> @llvm.x86.avx512.mask.padd.d.512(<16 x i32> %a, <16 x i32> %b, <16 x i32> zeroinitializer, i16 %mask)
  ret < 16 x i32> %res
}

define <16 x i32> @test_mask_add_epi32_rmb(<16 x i32> %a, i32* %ptr_b) {
  
  
  %q = load i32, i32* %ptr_b
  %vecinit.i = insertelement <16 x i32> undef, i32 %q, i32 0
  %b = shufflevector <16 x i32> %vecinit.i, <16 x i32> undef, <16 x i32> zeroinitializer
  %res = call <16 x i32> @llvm.x86.avx512.mask.padd.d.512(<16 x i32> %a, <16 x i32> %b, <16 x i32> zeroinitializer, i16 -1)
  ret < 16 x i32> %res
}

define <16 x i32> @test_mask_add_epi32_rmbk(<16 x i32> %a, i32* %ptr_b, <16 x i32> %passThru, i16 %mask) {
  
  
  %q = load i32, i32* %ptr_b
  %vecinit.i = insertelement <16 x i32> undef, i32 %q, i32 0
  %b = shufflevector <16 x i32> %vecinit.i, <16 x i32> undef, <16 x i32> zeroinitializer
  %res = call <16 x i32> @llvm.x86.avx512.mask.padd.d.512(<16 x i32> %a, <16 x i32> %b, <16 x i32> %passThru, i16 %mask)
  ret < 16 x i32> %res
}

define <16 x i32> @test_mask_add_epi32_rmbkz(<16 x i32> %a, i32* %ptr_b, i16 %mask) {
  
  
  %q = load i32, i32* %ptr_b
  %vecinit.i = insertelement <16 x i32> undef, i32 %q, i32 0
  %b = shufflevector <16 x i32> %vecinit.i, <16 x i32> undef, <16 x i32> zeroinitializer
  %res = call <16 x i32> @llvm.x86.avx512.mask.padd.d.512(<16 x i32> %a, <16 x i32> %b, <16 x i32> zeroinitializer, i16 %mask)
  ret < 16 x i32> %res
}

declare <16 x i32> @llvm.x86.avx512.mask.padd.d.512(<16 x i32>, <16 x i32>, <16 x i32>, i16)

define <16 x i32> @test_mask_sub_epi32_rr(<16 x i32> %a, <16 x i32> %b) {
  
  
  %res = call <16 x i32> @llvm.x86.avx512.mask.psub.d.512(<16 x i32> %a, <16 x i32> %b, <16 x i32> zeroinitializer, i16 -1)
  ret < 16 x i32> %res
}

define <16 x i32> @test_mask_sub_epi32_rrk(<16 x i32> %a, <16 x i32> %b, <16 x i32> %passThru, i16 %mask) {
  
  
  %res = call <16 x i32> @llvm.x86.avx512.mask.psub.d.512(<16 x i32> %a, <16 x i32> %b, <16 x i32> %passThru, i16 %mask)
  ret < 16 x i32> %res
}

define <16 x i32> @test_mask_sub_epi32_rrkz(<16 x i32> %a, <16 x i32> %b, i16 %mask) {
  
  
  %res = call <16 x i32> @llvm.x86.avx512.mask.psub.d.512(<16 x i32> %a, <16 x i32> %b, <16 x i32> zeroinitializer, i16 %mask)
  ret < 16 x i32> %res
}

define <16 x i32> @test_mask_sub_epi32_rm(<16 x i32> %a, <16 x i32>* %ptr_b) {
  
  
  %b = load <16 x i32>, <16 x i32>* %ptr_b
  %res = call <16 x i32> @llvm.x86.avx512.mask.psub.d.512(<16 x i32> %a, <16 x i32> %b, <16 x i32> zeroinitializer, i16 -1)
  ret < 16 x i32> %res
}

define <16 x i32> @test_mask_sub_epi32_rmk(<16 x i32> %a, <16 x i32>* %ptr_b, <16 x i32> %passThru, i16 %mask) {
  
  
  %b = load <16 x i32>, <16 x i32>* %ptr_b
  %res = call <16 x i32> @llvm.x86.avx512.mask.psub.d.512(<16 x i32> %a, <16 x i32> %b, <16 x i32> %passThru, i16 %mask)
  ret < 16 x i32> %res
}

define <16 x i32> @test_mask_sub_epi32_rmkz(<16 x i32> %a, <16 x i32>* %ptr_b, i16 %mask) {
  
  
  %b = load <16 x i32>, <16 x i32>* %ptr_b
  %res = call <16 x i32> @llvm.x86.avx512.mask.psub.d.512(<16 x i32> %a, <16 x i32> %b, <16 x i32> zeroinitializer, i16 %mask)
  ret < 16 x i32> %res
}

define <16 x i32> @test_mask_sub_epi32_rmb(<16 x i32> %a, i32* %ptr_b) {
  
  
  %q = load i32, i32* %ptr_b
  %vecinit.i = insertelement <16 x i32> undef, i32 %q, i32 0
  %b = shufflevector <16 x i32> %vecinit.i, <16 x i32> undef, <16 x i32> zeroinitializer
  %res = call <16 x i32> @llvm.x86.avx512.mask.psub.d.512(<16 x i32> %a, <16 x i32> %b, <16 x i32> zeroinitializer, i16 -1)
  ret < 16 x i32> %res
}

define <16 x i32> @test_mask_sub_epi32_rmbk(<16 x i32> %a, i32* %ptr_b, <16 x i32> %passThru, i16 %mask) {
  
  
  %q = load i32, i32* %ptr_b
  %vecinit.i = insertelement <16 x i32> undef, i32 %q, i32 0
  %b = shufflevector <16 x i32> %vecinit.i, <16 x i32> undef, <16 x i32> zeroinitializer
  %res = call <16 x i32> @llvm.x86.avx512.mask.psub.d.512(<16 x i32> %a, <16 x i32> %b, <16 x i32> %passThru, i16 %mask)
  ret < 16 x i32> %res
}

define <16 x i32> @test_mask_sub_epi32_rmbkz(<16 x i32> %a, i32* %ptr_b, i16 %mask) {
  
  
  %q = load i32, i32* %ptr_b
  %vecinit.i = insertelement <16 x i32> undef, i32 %q, i32 0
  %b = shufflevector <16 x i32> %vecinit.i, <16 x i32> undef, <16 x i32> zeroinitializer
  %res = call <16 x i32> @llvm.x86.avx512.mask.psub.d.512(<16 x i32> %a, <16 x i32> %b, <16 x i32> zeroinitializer, i16 %mask)
  ret < 16 x i32> %res
}

declare <16 x i32> @llvm.x86.avx512.mask.psub.d.512(<16 x i32>, <16 x i32>, <16 x i32>, i16)

define <8 x i64> @test_mask_add_epi64_rr(<8 x i64> %a, <8 x i64> %b) {
  
  
  %res = call <8 x i64> @llvm.x86.avx512.mask.padd.q.512(<8 x i64> %a, <8 x i64> %b, <8 x i64> zeroinitializer, i8 -1)
  ret < 8 x i64> %res
}

define <8 x i64> @test_mask_add_epi64_rrk(<8 x i64> %a, <8 x i64> %b, <8 x i64> %passThru, i8 %mask) {
  
  
  %res = call <8 x i64> @llvm.x86.avx512.mask.padd.q.512(<8 x i64> %a, <8 x i64> %b, <8 x i64> %passThru, i8 %mask)
  ret < 8 x i64> %res
}

define <8 x i64> @test_mask_add_epi64_rrkz(<8 x i64> %a, <8 x i64> %b, i8 %mask) {
  
  
  %res = call <8 x i64> @llvm.x86.avx512.mask.padd.q.512(<8 x i64> %a, <8 x i64> %b, <8 x i64> zeroinitializer, i8 %mask)
  ret < 8 x i64> %res
}

define <8 x i64> @test_mask_add_epi64_rm(<8 x i64> %a, <8 x i64>* %ptr_b) {
  
  
  %b = load <8 x i64>, <8 x i64>* %ptr_b
  %res = call <8 x i64> @llvm.x86.avx512.mask.padd.q.512(<8 x i64> %a, <8 x i64> %b, <8 x i64> zeroinitializer, i8 -1)
  ret < 8 x i64> %res
}

define <8 x i64> @test_mask_add_epi64_rmk(<8 x i64> %a, <8 x i64>* %ptr_b, <8 x i64> %passThru, i8 %mask) {
  
  
  %b = load <8 x i64>, <8 x i64>* %ptr_b
  %res = call <8 x i64> @llvm.x86.avx512.mask.padd.q.512(<8 x i64> %a, <8 x i64> %b, <8 x i64> %passThru, i8 %mask)
  ret < 8 x i64> %res
}

define <8 x i64> @test_mask_add_epi64_rmkz(<8 x i64> %a, <8 x i64>* %ptr_b, i8 %mask) {
  
  
  %b = load <8 x i64>, <8 x i64>* %ptr_b
  %res = call <8 x i64> @llvm.x86.avx512.mask.padd.q.512(<8 x i64> %a, <8 x i64> %b, <8 x i64> zeroinitializer, i8 %mask)
  ret < 8 x i64> %res
}

define <8 x i64> @test_mask_add_epi64_rmb(<8 x i64> %a, i64* %ptr_b) {
  
  
  %q = load i64, i64* %ptr_b
  %vecinit.i = insertelement <8 x i64> undef, i64 %q, i32 0
  %b = shufflevector <8 x i64> %vecinit.i, <8 x i64> undef, <8 x i32> zeroinitializer
  %res = call <8 x i64> @llvm.x86.avx512.mask.padd.q.512(<8 x i64> %a, <8 x i64> %b, <8 x i64> zeroinitializer, i8 -1)
  ret < 8 x i64> %res
}

define <8 x i64> @test_mask_add_epi64_rmbk(<8 x i64> %a, i64* %ptr_b, <8 x i64> %passThru, i8 %mask) {
  
  
  %q = load i64, i64* %ptr_b
  %vecinit.i = insertelement <8 x i64> undef, i64 %q, i32 0
  %b = shufflevector <8 x i64> %vecinit.i, <8 x i64> undef, <8 x i32> zeroinitializer
  %res = call <8 x i64> @llvm.x86.avx512.mask.padd.q.512(<8 x i64> %a, <8 x i64> %b, <8 x i64> %passThru, i8 %mask)
  ret < 8 x i64> %res
}

define <8 x i64> @test_mask_add_epi64_rmbkz(<8 x i64> %a, i64* %ptr_b, i8 %mask) {
  
  
  %q = load i64, i64* %ptr_b
  %vecinit.i = insertelement <8 x i64> undef, i64 %q, i32 0
  %b = shufflevector <8 x i64> %vecinit.i, <8 x i64> undef, <8 x i32> zeroinitializer
  %res = call <8 x i64> @llvm.x86.avx512.mask.padd.q.512(<8 x i64> %a, <8 x i64> %b, <8 x i64> zeroinitializer, i8 %mask)
  ret < 8 x i64> %res
}

declare <8 x i64> @llvm.x86.avx512.mask.padd.q.512(<8 x i64>, <8 x i64>, <8 x i64>, i8)

define <8 x i64> @test_mask_sub_epi64_rr(<8 x i64> %a, <8 x i64> %b) {
  
  
  %res = call <8 x i64> @llvm.x86.avx512.mask.psub.q.512(<8 x i64> %a, <8 x i64> %b, <8 x i64> zeroinitializer, i8 -1)
  ret < 8 x i64> %res
}

define <8 x i64> @test_mask_sub_epi64_rrk(<8 x i64> %a, <8 x i64> %b, <8 x i64> %passThru, i8 %mask) {
  
  
  %res = call <8 x i64> @llvm.x86.avx512.mask.psub.q.512(<8 x i64> %a, <8 x i64> %b, <8 x i64> %passThru, i8 %mask)
  ret < 8 x i64> %res
}

define <8 x i64> @test_mask_sub_epi64_rrkz(<8 x i64> %a, <8 x i64> %b, i8 %mask) {
  
  
  %res = call <8 x i64> @llvm.x86.avx512.mask.psub.q.512(<8 x i64> %a, <8 x i64> %b, <8 x i64> zeroinitializer, i8 %mask)
  ret < 8 x i64> %res
}

define <8 x i64> @test_mask_sub_epi64_rm(<8 x i64> %a, <8 x i64>* %ptr_b) {
  
  
  %b = load <8 x i64>, <8 x i64>* %ptr_b
  %res = call <8 x i64> @llvm.x86.avx512.mask.psub.q.512(<8 x i64> %a, <8 x i64> %b, <8 x i64> zeroinitializer, i8 -1)
  ret < 8 x i64> %res
}

define <8 x i64> @test_mask_sub_epi64_rmk(<8 x i64> %a, <8 x i64>* %ptr_b, <8 x i64> %passThru, i8 %mask) {
  
  
  %b = load <8 x i64>, <8 x i64>* %ptr_b
  %res = call <8 x i64> @llvm.x86.avx512.mask.psub.q.512(<8 x i64> %a, <8 x i64> %b, <8 x i64> %passThru, i8 %mask)
  ret < 8 x i64> %res
}

define <8 x i64> @test_mask_sub_epi64_rmkz(<8 x i64> %a, <8 x i64>* %ptr_b, i8 %mask) {
  
  
  %b = load <8 x i64>, <8 x i64>* %ptr_b
  %res = call <8 x i64> @llvm.x86.avx512.mask.psub.q.512(<8 x i64> %a, <8 x i64> %b, <8 x i64> zeroinitializer, i8 %mask)
  ret < 8 x i64> %res
}

define <8 x i64> @test_mask_sub_epi64_rmb(<8 x i64> %a, i64* %ptr_b) {
  
  
  %q = load i64, i64* %ptr_b
  %vecinit.i = insertelement <8 x i64> undef, i64 %q, i32 0
  %b = shufflevector <8 x i64> %vecinit.i, <8 x i64> undef, <8 x i32> zeroinitializer
  %res = call <8 x i64> @llvm.x86.avx512.mask.psub.q.512(<8 x i64> %a, <8 x i64> %b, <8 x i64> zeroinitializer, i8 -1)
  ret < 8 x i64> %res
}

define <8 x i64> @test_mask_sub_epi64_rmbk(<8 x i64> %a, i64* %ptr_b, <8 x i64> %passThru, i8 %mask) {
  
  
  %q = load i64, i64* %ptr_b
  %vecinit.i = insertelement <8 x i64> undef, i64 %q, i32 0
  %b = shufflevector <8 x i64> %vecinit.i, <8 x i64> undef, <8 x i32> zeroinitializer
  %res = call <8 x i64> @llvm.x86.avx512.mask.psub.q.512(<8 x i64> %a, <8 x i64> %b, <8 x i64> %passThru, i8 %mask)
  ret < 8 x i64> %res
}

define <8 x i64> @test_mask_sub_epi64_rmbkz(<8 x i64> %a, i64* %ptr_b, i8 %mask) {
  
  
  %q = load i64, i64* %ptr_b
  %vecinit.i = insertelement <8 x i64> undef, i64 %q, i32 0
  %b = shufflevector <8 x i64> %vecinit.i, <8 x i64> undef, <8 x i32> zeroinitializer
  %res = call <8 x i64> @llvm.x86.avx512.mask.psub.q.512(<8 x i64> %a, <8 x i64> %b, <8 x i64> zeroinitializer, i8 %mask)
  ret < 8 x i64> %res
}

declare <8 x i64> @llvm.x86.avx512.mask.psub.q.512(<8 x i64>, <8 x i64>, <8 x i64>, i8)

define <8 x i64> @test_mask_mul_epi32_rr(<16 x i32> %a, <16 x i32> %b) {
  
  
  %res = call <8 x i64> @llvm.x86.avx512.mask.pmul.dq.512(<16 x i32> %a, <16 x i32> %b, <8 x i64> zeroinitializer, i8 -1)
  ret < 8 x i64> %res
}

define <8 x i64> @test_mask_mul_epi32_rrk(<16 x i32> %a, <16 x i32> %b, <8 x i64> %passThru, i8 %mask) {
  
  
  %res = call <8 x i64> @llvm.x86.avx512.mask.pmul.dq.512(<16 x i32> %a, <16 x i32> %b, <8 x i64> %passThru, i8 %mask)
  ret < 8 x i64> %res
}

define <8 x i64> @test_mask_mul_epi32_rrkz(<16 x i32> %a, <16 x i32> %b, i8 %mask) {
  
  
  %res = call <8 x i64> @llvm.x86.avx512.mask.pmul.dq.512(<16 x i32> %a, <16 x i32> %b, <8 x i64> zeroinitializer, i8 %mask)
  ret < 8 x i64> %res
}

define <8 x i64> @test_mask_mul_epi32_rm(<16 x i32> %a, <16 x i32>* %ptr_b) {
  
  
  %b = load <16 x i32>, <16 x i32>* %ptr_b
  %res = call <8 x i64> @llvm.x86.avx512.mask.pmul.dq.512(<16 x i32> %a, <16 x i32> %b, <8 x i64> zeroinitializer, i8 -1)
  ret < 8 x i64> %res
}

define <8 x i64> @test_mask_mul_epi32_rmk(<16 x i32> %a, <16 x i32>* %ptr_b, <8 x i64> %passThru, i8 %mask) {
  
  
  %b = load <16 x i32>, <16 x i32>* %ptr_b
  %res = call <8 x i64> @llvm.x86.avx512.mask.pmul.dq.512(<16 x i32> %a, <16 x i32> %b, <8 x i64> %passThru, i8 %mask)
  ret < 8 x i64> %res
}

define <8 x i64> @test_mask_mul_epi32_rmkz(<16 x i32> %a, <16 x i32>* %ptr_b, i8 %mask) {
  
  
  %b = load <16 x i32>, <16 x i32>* %ptr_b
  %res = call <8 x i64> @llvm.x86.avx512.mask.pmul.dq.512(<16 x i32> %a, <16 x i32> %b, <8 x i64> zeroinitializer, i8 %mask)
  ret < 8 x i64> %res
}

define <8 x i64> @test_mask_mul_epi32_rmb(<16 x i32> %a, i64* %ptr_b) {
  
  
  %q = load i64, i64* %ptr_b
  %vecinit.i = insertelement <8 x i64> undef, i64 %q, i32 0
  %b64 = shufflevector <8 x i64> %vecinit.i, <8 x i64> undef, <8 x i32> zeroinitializer
  %b = bitcast <8 x i64> %b64 to <16 x i32>
  %res = call <8 x i64> @llvm.x86.avx512.mask.pmul.dq.512(<16 x i32> %a, <16 x i32> %b, <8 x i64> zeroinitializer, i8 -1)
  ret < 8 x i64> %res
}

define <8 x i64> @test_mask_mul_epi32_rmbk(<16 x i32> %a, i64* %ptr_b, <8 x i64> %passThru, i8 %mask) {
  
  
  %q = load i64, i64* %ptr_b
  %vecinit.i = insertelement <8 x i64> undef, i64 %q, i32 0
  %b64 = shufflevector <8 x i64> %vecinit.i, <8 x i64> undef, <8 x i32> zeroinitializer
  %b = bitcast <8 x i64> %b64 to <16 x i32>
  %res = call <8 x i64> @llvm.x86.avx512.mask.pmul.dq.512(<16 x i32> %a, <16 x i32> %b, <8 x i64> %passThru, i8 %mask)
  ret < 8 x i64> %res
}

define <8 x i64> @test_mask_mul_epi32_rmbkz(<16 x i32> %a, i64* %ptr_b, i8 %mask) {
  
  
  %q = load i64, i64* %ptr_b
  %vecinit.i = insertelement <8 x i64> undef, i64 %q, i32 0
  %b64 = shufflevector <8 x i64> %vecinit.i, <8 x i64> undef, <8 x i32> zeroinitializer
  %b = bitcast <8 x i64> %b64 to <16 x i32>
  %res = call <8 x i64> @llvm.x86.avx512.mask.pmul.dq.512(<16 x i32> %a, <16 x i32> %b, <8 x i64> zeroinitializer, i8 %mask)
  ret < 8 x i64> %res
}

declare <8 x i64> @llvm.x86.avx512.mask.pmul.dq.512(<16 x i32>, <16 x i32>, <8 x i64>, i8)

define <8 x i64> @test_mask_mul_epu32_rr(<16 x i32> %a, <16 x i32> %b) {
  
  
  %res = call <8 x i64> @llvm.x86.avx512.mask.pmulu.dq.512(<16 x i32> %a, <16 x i32> %b, <8 x i64> zeroinitializer, i8 -1)
  ret < 8 x i64> %res
}

define <8 x i64> @test_mask_mul_epu32_rrk(<16 x i32> %a, <16 x i32> %b, <8 x i64> %passThru, i8 %mask) {
  
  
  %res = call <8 x i64> @llvm.x86.avx512.mask.pmulu.dq.512(<16 x i32> %a, <16 x i32> %b, <8 x i64> %passThru, i8 %mask)
  ret < 8 x i64> %res
}

define <8 x i64> @test_mask_mul_epu32_rrkz(<16 x i32> %a, <16 x i32> %b, i8 %mask) {
  
  
  %res = call <8 x i64> @llvm.x86.avx512.mask.pmulu.dq.512(<16 x i32> %a, <16 x i32> %b, <8 x i64> zeroinitializer, i8 %mask)
  ret < 8 x i64> %res
}

define <8 x i64> @test_mask_mul_epu32_rm(<16 x i32> %a, <16 x i32>* %ptr_b) {
  
  
  %b = load <16 x i32>, <16 x i32>* %ptr_b
  %res = call <8 x i64> @llvm.x86.avx512.mask.pmulu.dq.512(<16 x i32> %a, <16 x i32> %b, <8 x i64> zeroinitializer, i8 -1)
  ret < 8 x i64> %res
}

define <8 x i64> @test_mask_mul_epu32_rmk(<16 x i32> %a, <16 x i32>* %ptr_b, <8 x i64> %passThru, i8 %mask) {
  
  
  %b = load <16 x i32>, <16 x i32>* %ptr_b
  %res = call <8 x i64> @llvm.x86.avx512.mask.pmulu.dq.512(<16 x i32> %a, <16 x i32> %b, <8 x i64> %passThru, i8 %mask)
  ret < 8 x i64> %res
}

define <8 x i64> @test_mask_mul_epu32_rmkz(<16 x i32> %a, <16 x i32>* %ptr_b, i8 %mask) {
  
  
  %b = load <16 x i32>, <16 x i32>* %ptr_b
  %res = call <8 x i64> @llvm.x86.avx512.mask.pmulu.dq.512(<16 x i32> %a, <16 x i32> %b, <8 x i64> zeroinitializer, i8 %mask)
  ret < 8 x i64> %res
}

define <8 x i64> @test_mask_mul_epu32_rmb(<16 x i32> %a, i64* %ptr_b) {
  
  
  %q = load i64, i64* %ptr_b
  %vecinit.i = insertelement <8 x i64> undef, i64 %q, i32 0
  %b64 = shufflevector <8 x i64> %vecinit.i, <8 x i64> undef, <8 x i32> zeroinitializer
  %b = bitcast <8 x i64> %b64 to <16 x i32>
  %res = call <8 x i64> @llvm.x86.avx512.mask.pmulu.dq.512(<16 x i32> %a, <16 x i32> %b, <8 x i64> zeroinitializer, i8 -1)
  ret < 8 x i64> %res
}

define <8 x i64> @test_mask_mul_epu32_rmbk(<16 x i32> %a, i64* %ptr_b, <8 x i64> %passThru, i8 %mask) {
  
  
  %q = load i64, i64* %ptr_b
  %vecinit.i = insertelement <8 x i64> undef, i64 %q, i32 0
  %b64 = shufflevector <8 x i64> %vecinit.i, <8 x i64> undef, <8 x i32> zeroinitializer
  %b = bitcast <8 x i64> %b64 to <16 x i32>
  %res = call <8 x i64> @llvm.x86.avx512.mask.pmulu.dq.512(<16 x i32> %a, <16 x i32> %b, <8 x i64> %passThru, i8 %mask)
  ret < 8 x i64> %res
}

define <8 x i64> @test_mask_mul_epu32_rmbkz(<16 x i32> %a, i64* %ptr_b, i8 %mask) {
  
  
  %q = load i64, i64* %ptr_b
  %vecinit.i = insertelement <8 x i64> undef, i64 %q, i32 0
  %b64 = shufflevector <8 x i64> %vecinit.i, <8 x i64> undef, <8 x i32> zeroinitializer
  %b = bitcast <8 x i64> %b64 to <16 x i32>
  %res = call <8 x i64> @llvm.x86.avx512.mask.pmulu.dq.512(<16 x i32> %a, <16 x i32> %b, <8 x i64> zeroinitializer, i8 %mask)
  ret < 8 x i64> %res
}

declare <8 x i64> @llvm.x86.avx512.mask.pmulu.dq.512(<16 x i32>, <16 x i32>, <8 x i64>, i8)

define <16 x i32> @test_mask_mullo_epi32_rr_512(<16 x i32> %a, <16 x i32> %b) {
  
  
  %res = call <16 x i32> @llvm.x86.avx512.mask.pmull.d.512(<16 x i32> %a, <16 x i32> %b, <16 x i32> zeroinitializer, i16 -1)
  ret <16 x i32> %res
}

define <16 x i32> @test_mask_mullo_epi32_rrk_512(<16 x i32> %a, <16 x i32> %b, <16 x i32> %passThru, i16 %mask) {
  
  
  %res = call <16 x i32> @llvm.x86.avx512.mask.pmull.d.512(<16 x i32> %a, <16 x i32> %b, <16 x i32> %passThru, i16 %mask)
  ret < 16 x i32> %res
}

define <16 x i32> @test_mask_mullo_epi32_rrkz_512(<16 x i32> %a, <16 x i32> %b, i16 %mask) {
  
  
  %res = call <16 x i32> @llvm.x86.avx512.mask.pmull.d.512(<16 x i32> %a, <16 x i32> %b, <16 x i32> zeroinitializer, i16 %mask)
  ret < 16 x i32> %res
}

define <16 x i32> @test_mask_mullo_epi32_rm_512(<16 x i32> %a, <16 x i32>* %ptr_b) {
  
  
  %b = load <16 x i32>, <16 x i32>* %ptr_b
  %res = call <16 x i32> @llvm.x86.avx512.mask.pmull.d.512(<16 x i32> %a, <16 x i32> %b, <16 x i32> zeroinitializer, i16 -1)
  ret < 16 x i32> %res
}

define <16 x i32> @test_mask_mullo_epi32_rmk_512(<16 x i32> %a, <16 x i32>* %ptr_b, <16 x i32> %passThru, i16 %mask) {
  
  
  %b = load <16 x i32>, <16 x i32>* %ptr_b
  %res = call <16 x i32> @llvm.x86.avx512.mask.pmull.d.512(<16 x i32> %a, <16 x i32> %b, <16 x i32> %passThru, i16 %mask)
  ret < 16 x i32> %res
}

define <16 x i32> @test_mask_mullo_epi32_rmkz_512(<16 x i32> %a, <16 x i32>* %ptr_b, i16 %mask) {
  
  
  %b = load <16 x i32>, <16 x i32>* %ptr_b
  %res = call <16 x i32> @llvm.x86.avx512.mask.pmull.d.512(<16 x i32> %a, <16 x i32> %b, <16 x i32> zeroinitializer, i16 %mask)
  ret < 16 x i32> %res
}

define <16 x i32> @test_mask_mullo_epi32_rmb_512(<16 x i32> %a, i32* %ptr_b) {
  
  
  %q = load i32, i32* %ptr_b
  %vecinit.i = insertelement <16 x i32> undef, i32 %q, i32 0
  %b = shufflevector <16 x i32> %vecinit.i, <16 x i32> undef, <16 x i32> zeroinitializer
  %res = call <16 x i32> @llvm.x86.avx512.mask.pmull.d.512(<16 x i32> %a, <16 x i32> %b, <16 x i32> zeroinitializer, i16 -1)
  ret < 16 x i32> %res
}

define <16 x i32> @test_mask_mullo_epi32_rmbk_512(<16 x i32> %a, i32* %ptr_b, <16 x i32> %passThru, i16 %mask) {
  
  
  %q = load i32, i32* %ptr_b
  %vecinit.i = insertelement <16 x i32> undef, i32 %q, i32 0
  %b = shufflevector <16 x i32> %vecinit.i, <16 x i32> undef, <16 x i32> zeroinitializer
  %res = call <16 x i32> @llvm.x86.avx512.mask.pmull.d.512(<16 x i32> %a, <16 x i32> %b, <16 x i32> %passThru, i16 %mask)
  ret < 16 x i32> %res
}

define <16 x i32> @test_mask_mullo_epi32_rmbkz_512(<16 x i32> %a, i32* %ptr_b, i16 %mask) {
  
  
  %q = load i32, i32* %ptr_b
  %vecinit.i = insertelement <16 x i32> undef, i32 %q, i32 0
  %b = shufflevector <16 x i32> %vecinit.i, <16 x i32> undef, <16 x i32> zeroinitializer
  %res = call <16 x i32> @llvm.x86.avx512.mask.pmull.d.512(<16 x i32> %a, <16 x i32> %b, <16 x i32> zeroinitializer, i16 %mask)
  ret < 16 x i32> %res
}

declare <16 x i32> @llvm.x86.avx512.mask.pmull.d.512(<16 x i32>, <16 x i32>, <16 x i32>, i16)

define <16 x float> @test_mm512_maskz_add_round_ps_rn_sae(<16 x float> %a0, <16 x float> %a1, i16 %mask) {
  
  
  %res = call <16 x float> @llvm.x86.avx512.mask.add.ps.512(<16 x float> %a0, <16 x float> %a1, <16 x float>zeroinitializer, i16 %mask, i32 0)
  ret <16 x float> %res
}
define <16 x float> @test_mm512_maskz_add_round_ps_rd_sae(<16 x float> %a0, <16 x float> %a1, i16 %mask) {
  
  
  %res = call <16 x float> @llvm.x86.avx512.mask.add.ps.512(<16 x float> %a0, <16 x float> %a1, <16 x float>zeroinitializer, i16 %mask, i32 1)
  ret <16 x float> %res
}
define <16 x float> @test_mm512_maskz_add_round_ps_ru_sae(<16 x float> %a0, <16 x float> %a1, i16 %mask) {
  
  
  %res = call <16 x float> @llvm.x86.avx512.mask.add.ps.512(<16 x float> %a0, <16 x float> %a1, <16 x float>zeroinitializer, i16 %mask, i32 2)
  ret <16 x float> %res
}

define <16 x float> @test_mm512_maskz_add_round_ps_rz_sae(<16 x float> %a0, <16 x float> %a1, i16 %mask) {
  
  
  %res = call <16 x float> @llvm.x86.avx512.mask.add.ps.512(<16 x float> %a0, <16 x float> %a1, <16 x float>zeroinitializer, i16 %mask, i32 3)
  ret <16 x float> %res
}


define <16 x float> @test_mm512_maskz_add_round_ps_current(<16 x float> %a0, <16 x float> %a1, i16 %mask) {
  
  
  %res = call <16 x float> @llvm.x86.avx512.mask.add.ps.512(<16 x float> %a0, <16 x float> %a1, <16 x float>zeroinitializer, i16 %mask, i32 4)
  ret <16 x float> %res
}

define <16 x float> @test_mm512_mask_add_round_ps_rn_sae(<16 x float> %a0, <16 x float> %a1, <16 x float> %src, i16 %mask) {
  
  
  %res = call <16 x float> @llvm.x86.avx512.mask.add.ps.512(<16 x float> %a0, <16 x float> %a1, <16 x float> %src, i16 %mask, i32 0)
  ret <16 x float> %res
}
define <16 x float> @test_mm512_mask_add_round_ps_rd_sae(<16 x float> %a0, <16 x float> %a1, <16 x float> %src, i16 %mask) {
  
  
  %res = call <16 x float> @llvm.x86.avx512.mask.add.ps.512(<16 x float> %a0, <16 x float> %a1, <16 x float> %src, i16 %mask, i32 1)
  ret <16 x float> %res
}
define <16 x float> @test_mm512_mask_add_round_ps_ru_sae(<16 x float> %a0, <16 x float> %a1, <16 x float> %src, i16 %mask) {
  
  
  %res = call <16 x float> @llvm.x86.avx512.mask.add.ps.512(<16 x float> %a0, <16 x float> %a1, <16 x float> %src, i16 %mask, i32 2)
  ret <16 x float> %res
}

define <16 x float> @test_mm512_mask_add_round_ps_rz_sae(<16 x float> %a0, <16 x float> %a1, <16 x float> %src, i16 %mask) {
  
  
  %res = call <16 x float> @llvm.x86.avx512.mask.add.ps.512(<16 x float> %a0, <16 x float> %a1, <16 x float> %src, i16 %mask, i32 3)
  ret <16 x float> %res
}


define <16 x float> @test_mm512_mask_add_round_ps_current(<16 x float> %a0, <16 x float> %a1, <16 x float> %src, i16 %mask) {
  
  
  %res = call <16 x float> @llvm.x86.avx512.mask.add.ps.512(<16 x float> %a0, <16 x float> %a1, <16 x float> %src, i16 %mask, i32 4)
  ret <16 x float> %res
}


define <16 x float> @test_mm512_add_round_ps_rn_sae(<16 x float> %a0, <16 x float> %a1, i16 %mask) {
  
  
  %res = call <16 x float> @llvm.x86.avx512.mask.add.ps.512(<16 x float> %a0, <16 x float> %a1, <16 x float>zeroinitializer, i16 -1, i32 0)
  ret <16 x float> %res
}
define <16 x float> @test_mm512_add_round_ps_rd_sae(<16 x float> %a0, <16 x float> %a1, i16 %mask) {
  
  
  %res = call <16 x float> @llvm.x86.avx512.mask.add.ps.512(<16 x float> %a0, <16 x float> %a1, <16 x float>zeroinitializer, i16 -1, i32 1)
  ret <16 x float> %res
}
define <16 x float> @test_mm512_add_round_ps_ru_sae(<16 x float> %a0, <16 x float> %a1, i16 %mask) {
  
  
  %res = call <16 x float> @llvm.x86.avx512.mask.add.ps.512(<16 x float> %a0, <16 x float> %a1, <16 x float>zeroinitializer, i16 -1, i32 2)
  ret <16 x float> %res
}

define <16 x float> @test_mm512_add_round_ps_rz_sae(<16 x float> %a0, <16 x float> %a1, i16 %mask) {
  
  
  %res = call <16 x float> @llvm.x86.avx512.mask.add.ps.512(<16 x float> %a0, <16 x float> %a1, <16 x float>zeroinitializer, i16 -1, i32 3)
  ret <16 x float> %res
}

define <16 x float> @test_mm512_add_round_ps_current(<16 x float> %a0, <16 x float> %a1, i16 %mask) {
  
  
  %res = call <16 x float> @llvm.x86.avx512.mask.add.ps.512(<16 x float> %a0, <16 x float> %a1, <16 x float>zeroinitializer, i16 -1, i32 4)
  ret <16 x float> %res
}
declare <16 x float> @llvm.x86.avx512.mask.add.ps.512(<16 x float>, <16 x float>, <16 x float>, i16, i32)

define <16 x float> @test_mm512_mask_sub_round_ps_rn_sae(<16 x float> %a0, <16 x float> %a1, <16 x float> %src, i16 %mask) {
  
  
  %res = call <16 x float> @llvm.x86.avx512.mask.sub.ps.512(<16 x float> %a0, <16 x float> %a1, <16 x float> %src, i16 %mask, i32 0)
  ret <16 x float> %res
}
define <16 x float> @test_mm512_mask_sub_round_ps_rd_sae(<16 x float> %a0, <16 x float> %a1, <16 x float> %src, i16 %mask) {
  
  
  %res = call <16 x float> @llvm.x86.avx512.mask.sub.ps.512(<16 x float> %a0, <16 x float> %a1, <16 x float> %src, i16 %mask, i32 1)
  ret <16 x float> %res
}
define <16 x float> @test_mm512_mask_sub_round_ps_ru_sae(<16 x float> %a0, <16 x float> %a1, <16 x float> %src, i16 %mask) {
  
  
  %res = call <16 x float> @llvm.x86.avx512.mask.sub.ps.512(<16 x float> %a0, <16 x float> %a1, <16 x float> %src, i16 %mask, i32 2)
  ret <16 x float> %res
}

define <16 x float> @test_mm512_mask_sub_round_ps_rz_sae(<16 x float> %a0, <16 x float> %a1, <16 x float> %src, i16 %mask) {
  
  
  %res = call <16 x float> @llvm.x86.avx512.mask.sub.ps.512(<16 x float> %a0, <16 x float> %a1, <16 x float> %src, i16 %mask, i32 3)
  ret <16 x float> %res
}


define <16 x float> @test_mm512_mask_sub_round_ps_current(<16 x float> %a0, <16 x float> %a1, <16 x float> %src, i16 %mask) {
  
  
  %res = call <16 x float> @llvm.x86.avx512.mask.sub.ps.512(<16 x float> %a0, <16 x float> %a1, <16 x float> %src, i16 %mask, i32 4)
  ret <16 x float> %res
}

define <16 x float> @test_mm512_sub_round_ps_rn_sae(<16 x float> %a0, <16 x float> %a1, i16 %mask) {
  
  
  %res = call <16 x float> @llvm.x86.avx512.mask.sub.ps.512(<16 x float> %a0, <16 x float> %a1, <16 x float>zeroinitializer, i16 -1, i32 0)
  ret <16 x float> %res
}
define <16 x float> @test_mm512_sub_round_ps_rd_sae(<16 x float> %a0, <16 x float> %a1, i16 %mask) {
  
  
  %res = call <16 x float> @llvm.x86.avx512.mask.sub.ps.512(<16 x float> %a0, <16 x float> %a1, <16 x float>zeroinitializer, i16 -1, i32 1)
  ret <16 x float> %res
}
define <16 x float> @test_mm512_sub_round_ps_ru_sae(<16 x float> %a0, <16 x float> %a1, i16 %mask) {
  
  
  %res = call <16 x float> @llvm.x86.avx512.mask.sub.ps.512(<16 x float> %a0, <16 x float> %a1, <16 x float>zeroinitializer, i16 -1, i32 2)
  ret <16 x float> %res
}

define <16 x float> @test_mm512_sub_round_ps_rz_sae(<16 x float> %a0, <16 x float> %a1, i16 %mask) {
  
  
  %res = call <16 x float> @llvm.x86.avx512.mask.sub.ps.512(<16 x float> %a0, <16 x float> %a1, <16 x float>zeroinitializer, i16 -1, i32 3)
  ret <16 x float> %res
}

define <16 x float> @test_mm512_sub_round_ps_current(<16 x float> %a0, <16 x float> %a1, i16 %mask) {
  
  
  %res = call <16 x float> @llvm.x86.avx512.mask.sub.ps.512(<16 x float> %a0, <16 x float> %a1, <16 x float>zeroinitializer, i16 -1, i32 4)
  ret <16 x float> %res
}

define <16 x float> @test_mm512_maskz_div_round_ps_rn_sae(<16 x float> %a0, <16 x float> %a1, i16 %mask) {
  
  
  %res = call <16 x float> @llvm.x86.avx512.mask.div.ps.512(<16 x float> %a0, <16 x float> %a1, <16 x float>zeroinitializer, i16 %mask, i32 0)
  ret <16 x float> %res
}
define <16 x float> @test_mm512_maskz_div_round_ps_rd_sae(<16 x float> %a0, <16 x float> %a1, i16 %mask) {
  
  
  %res = call <16 x float> @llvm.x86.avx512.mask.div.ps.512(<16 x float> %a0, <16 x float> %a1, <16 x float>zeroinitializer, i16 %mask, i32 1)
  ret <16 x float> %res
}
define <16 x float> @test_mm512_maskz_div_round_ps_ru_sae(<16 x float> %a0, <16 x float> %a1, i16 %mask) {
  
  
  %res = call <16 x float> @llvm.x86.avx512.mask.div.ps.512(<16 x float> %a0, <16 x float> %a1, <16 x float>zeroinitializer, i16 %mask, i32 2)
  ret <16 x float> %res
}

define <16 x float> @test_mm512_maskz_div_round_ps_rz_sae(<16 x float> %a0, <16 x float> %a1, i16 %mask) {
  
  
  %res = call <16 x float> @llvm.x86.avx512.mask.div.ps.512(<16 x float> %a0, <16 x float> %a1, <16 x float>zeroinitializer, i16 %mask, i32 3)
  ret <16 x float> %res
}


define <16 x float> @test_mm512_maskz_div_round_ps_current(<16 x float> %a0, <16 x float> %a1, i16 %mask) {
  
  
  %res = call <16 x float> @llvm.x86.avx512.mask.div.ps.512(<16 x float> %a0, <16 x float> %a1, <16 x float>zeroinitializer, i16 %mask, i32 4)
  ret <16 x float> %res
}

define <16 x float> @test_mm512_mask_div_round_ps_rn_sae(<16 x float> %a0, <16 x float> %a1, <16 x float> %src, i16 %mask) {
  
  
  %res = call <16 x float> @llvm.x86.avx512.mask.div.ps.512(<16 x float> %a0, <16 x float> %a1, <16 x float> %src, i16 %mask, i32 0)
  ret <16 x float> %res
}
define <16 x float> @test_mm512_mask_div_round_ps_rd_sae(<16 x float> %a0, <16 x float> %a1, <16 x float> %src, i16 %mask) {
  
  
  %res = call <16 x float> @llvm.x86.avx512.mask.div.ps.512(<16 x float> %a0, <16 x float> %a1, <16 x float> %src, i16 %mask, i32 1)
  ret <16 x float> %res
}
define <16 x float> @test_mm512_mask_div_round_ps_ru_sae(<16 x float> %a0, <16 x float> %a1, <16 x float> %src, i16 %mask) {
  
  
  %res = call <16 x float> @llvm.x86.avx512.mask.div.ps.512(<16 x float> %a0, <16 x float> %a1, <16 x float> %src, i16 %mask, i32 2)
  ret <16 x float> %res
}

define <16 x float> @test_mm512_mask_div_round_ps_rz_sae(<16 x float> %a0, <16 x float> %a1, <16 x float> %src, i16 %mask) {
  
  
  %res = call <16 x float> @llvm.x86.avx512.mask.div.ps.512(<16 x float> %a0, <16 x float> %a1, <16 x float> %src, i16 %mask, i32 3)
  ret <16 x float> %res
}


define <16 x float> @test_mm512_mask_div_round_ps_current(<16 x float> %a0, <16 x float> %a1, <16 x float> %src, i16 %mask) {
  
  
  %res = call <16 x float> @llvm.x86.avx512.mask.div.ps.512(<16 x float> %a0, <16 x float> %a1, <16 x float> %src, i16 %mask, i32 4)
  ret <16 x float> %res
}


define <16 x float> @test_mm512_div_round_ps_rn_sae(<16 x float> %a0, <16 x float> %a1, i16 %mask) {
  
  
  %res = call <16 x float> @llvm.x86.avx512.mask.div.ps.512(<16 x float> %a0, <16 x float> %a1, <16 x float>zeroinitializer, i16 -1, i32 0)
  ret <16 x float> %res
}
define <16 x float> @test_mm512_div_round_ps_rd_sae(<16 x float> %a0, <16 x float> %a1, i16 %mask) {
  
  
  %res = call <16 x float> @llvm.x86.avx512.mask.div.ps.512(<16 x float> %a0, <16 x float> %a1, <16 x float>zeroinitializer, i16 -1, i32 1)
  ret <16 x float> %res
}
define <16 x float> @test_mm512_div_round_ps_ru_sae(<16 x float> %a0, <16 x float> %a1, i16 %mask) {
  
  
  %res = call <16 x float> @llvm.x86.avx512.mask.div.ps.512(<16 x float> %a0, <16 x float> %a1, <16 x float>zeroinitializer, i16 -1, i32 2)
  ret <16 x float> %res
}

define <16 x float> @test_mm512_div_round_ps_rz_sae(<16 x float> %a0, <16 x float> %a1, i16 %mask) {
  
  
  %res = call <16 x float> @llvm.x86.avx512.mask.div.ps.512(<16 x float> %a0, <16 x float> %a1, <16 x float>zeroinitializer, i16 -1, i32 3)
  ret <16 x float> %res
}

define <16 x float> @test_mm512_div_round_ps_current(<16 x float> %a0, <16 x float> %a1, i16 %mask) {
  
  
  %res = call <16 x float> @llvm.x86.avx512.mask.div.ps.512(<16 x float> %a0, <16 x float> %a1, <16 x float>zeroinitializer, i16 -1, i32 4)
  ret <16 x float> %res
}
declare <16 x float> @llvm.x86.avx512.mask.div.ps.512(<16 x float>, <16 x float>, <16 x float>, i16, i32)

define <16 x float> @test_mm512_maskz_min_round_ps_sae(<16 x float> %a0, <16 x float> %a1, i16 %mask) {
  
  
  %res = call <16 x float> @llvm.x86.avx512.mask.min.ps.512(<16 x float> %a0, <16 x float> %a1, <16 x float>zeroinitializer, i16 %mask, i32 8)
  ret <16 x float> %res
}

define <16 x float> @test_mm512_maskz_min_round_ps_current(<16 x float> %a0, <16 x float> %a1, i16 %mask) {
  
  
  %res = call <16 x float> @llvm.x86.avx512.mask.min.ps.512(<16 x float> %a0, <16 x float> %a1, <16 x float>zeroinitializer, i16 %mask, i32 4)
  ret <16 x float> %res
}

define <16 x float> @test_mm512_mask_min_round_ps_sae(<16 x float> %a0, <16 x float> %a1, <16 x float> %src, i16 %mask) {
  
  
  %res = call <16 x float> @llvm.x86.avx512.mask.min.ps.512(<16 x float> %a0, <16 x float> %a1, <16 x float> %src, i16 %mask, i32 8)
  ret <16 x float> %res
}

define <16 x float> @test_mm512_mask_min_round_ps_current(<16 x float> %a0, <16 x float> %a1, <16 x float> %src, i16 %mask) {
  
  
  %res = call <16 x float> @llvm.x86.avx512.mask.min.ps.512(<16 x float> %a0, <16 x float> %a1, <16 x float> %src, i16 %mask, i32 4)
  ret <16 x float> %res
}

define <16 x float> @test_mm512_min_round_ps_sae(<16 x float> %a0, <16 x float> %a1, i16 %mask) {
  
  
  %res = call <16 x float> @llvm.x86.avx512.mask.min.ps.512(<16 x float> %a0, <16 x float> %a1, <16 x float>zeroinitializer, i16 -1, i32 8)
  ret <16 x float> %res
}

define <16 x float> @test_mm512_min_round_ps_current(<16 x float> %a0, <16 x float> %a1, i16 %mask) {
  
  
  %res = call <16 x float> @llvm.x86.avx512.mask.min.ps.512(<16 x float> %a0, <16 x float> %a1, <16 x float>zeroinitializer, i16 -1, i32 4)
  ret <16 x float> %res
}
declare <16 x float> @llvm.x86.avx512.mask.min.ps.512(<16 x float>, <16 x float>, <16 x float>, i16, i32)

define <16 x float> @test_mm512_maskz_max_round_ps_sae(<16 x float> %a0, <16 x float> %a1, i16 %mask) {
  
  
  %res = call <16 x float> @llvm.x86.avx512.mask.max.ps.512(<16 x float> %a0, <16 x float> %a1, <16 x float>zeroinitializer, i16 %mask, i32 8)
  ret <16 x float> %res
}

define <16 x float> @test_mm512_maskz_max_round_ps_current(<16 x float> %a0, <16 x float> %a1, i16 %mask) {
  
  
  %res = call <16 x float> @llvm.x86.avx512.mask.max.ps.512(<16 x float> %a0, <16 x float> %a1, <16 x float>zeroinitializer, i16 %mask, i32 4)
  ret <16 x float> %res
}

define <16 x float> @test_mm512_mask_max_round_ps_sae(<16 x float> %a0, <16 x float> %a1, <16 x float> %src, i16 %mask) {
  
  
  %res = call <16 x float> @llvm.x86.avx512.mask.max.ps.512(<16 x float> %a0, <16 x float> %a1, <16 x float> %src, i16 %mask, i32 8)
  ret <16 x float> %res
}

define <16 x float> @test_mm512_mask_max_round_ps_current(<16 x float> %a0, <16 x float> %a1, <16 x float> %src, i16 %mask) {
  
  
  %res = call <16 x float> @llvm.x86.avx512.mask.max.ps.512(<16 x float> %a0, <16 x float> %a1, <16 x float> %src, i16 %mask, i32 4)
  ret <16 x float> %res
}

define <16 x float> @test_mm512_max_round_ps_sae(<16 x float> %a0, <16 x float> %a1, i16 %mask) {
  
  
  %res = call <16 x float> @llvm.x86.avx512.mask.max.ps.512(<16 x float> %a0, <16 x float> %a1, <16 x float>zeroinitializer, i16 -1, i32 8)
  ret <16 x float> %res
}

define <16 x float> @test_mm512_max_round_ps_current(<16 x float> %a0, <16 x float> %a1, i16 %mask) {
  
  
  %res = call <16 x float> @llvm.x86.avx512.mask.max.ps.512(<16 x float> %a0, <16 x float> %a1, <16 x float>zeroinitializer, i16 -1, i32 4)
  ret <16 x float> %res
}
declare <16 x float> @llvm.x86.avx512.mask.max.ps.512(<16 x float>, <16 x float>, <16 x float>, i16, i32)

declare <4 x float> @llvm.x86.avx512.mask.add.ss.round(<4 x float>, <4 x float>, <4 x float>, i8, i32) nounwind readnone

define <4 x float> @test_mask_add_ss_rn(<4 x float> %a0, <4 x float> %a1, <4 x float> %a2, i8 %mask) {


  %res = call <4 x float> @llvm.x86.avx512.mask.add.ss.round(<4 x float>%a0, <4 x float> %a1, <4 x float> %a2, i8 %mask, i32 0)
  ret <4 x float> %res
}

define <4 x float> @test_mask_add_ss_rd(<4 x float> %a0, <4 x float> %a1, <4 x float> %a2, i8 %mask) {


  %res = call <4 x float> @llvm.x86.avx512.mask.add.ss.round(<4 x float>%a0, <4 x float> %a1, <4 x float> %a2, i8 %mask, i32 1)
  ret <4 x float> %res
}

define <4 x float> @test_mask_add_ss_ru(<4 x float> %a0, <4 x float> %a1, <4 x float> %a2, i8 %mask) {


  %res = call <4 x float> @llvm.x86.avx512.mask.add.ss.round(<4 x float>%a0, <4 x float> %a1, <4 x float> %a2, i8 %mask, i32 2)
  ret <4 x float> %res
}

define <4 x float> @test_mask_add_ss_rz(<4 x float> %a0, <4 x float> %a1, <4 x float> %a2, i8 %mask) {


  %res = call <4 x float> @llvm.x86.avx512.mask.add.ss.round(<4 x float>%a0, <4 x float> %a1, <4 x float> %a2, i8 %mask, i32 3)
  ret <4 x float> %res
}

define <4 x float> @test_mask_add_ss_current(<4 x float> %a0, <4 x float> %a1, <4 x float> %a2, i8 %mask) {


  %res = call <4 x float> @llvm.x86.avx512.mask.add.ss.round(<4 x float>%a0, <4 x float> %a1, <4 x float> %a2, i8 %mask, i32 4)
  ret <4 x float> %res
}

define <4 x float> @test_maskz_add_ss_rn(<4 x float> %a0, <4 x float> %a1, i8 %mask) {


  %res = call <4 x float> @llvm.x86.avx512.mask.add.ss.round(<4 x float>%a0, <4 x float> %a1, <4 x float> zeroinitializer, i8 %mask, i32 0)
  ret <4 x float> %res
}

define <4 x float> @test_add_ss_rn(<4 x float> %a0, <4 x float> %a1) {


  %res = call <4 x float> @llvm.x86.avx512.mask.add.ss.round(<4 x float>%a0, <4 x float> %a1, <4 x float> zeroinitializer, i8 -1, i32 0)
  ret <4 x float> %res
}

declare <2 x double> @llvm.x86.avx512.mask.add.sd.round(<2 x double>, <2 x double>, <2 x double>, i8, i32) nounwind readnone

define <2 x double> @test_mask_add_sd_rn(<2 x double> %a0, <2 x double> %a1, <2 x double> %a2, i8 %mask) {


  %res = call <2 x double> @llvm.x86.avx512.mask.add.sd.round(<2 x double>%a0, <2 x double> %a1, <2 x double> %a2, i8 %mask, i32 0)
  ret <2 x double> %res
}

define <2 x double> @test_mask_add_sd_rd(<2 x double> %a0, <2 x double> %a1, <2 x double> %a2, i8 %mask) {


  %res = call <2 x double> @llvm.x86.avx512.mask.add.sd.round(<2 x double>%a0, <2 x double> %a1, <2 x double> %a2, i8 %mask, i32 1)
  ret <2 x double> %res
}

define <2 x double> @test_mask_add_sd_ru(<2 x double> %a0, <2 x double> %a1, <2 x double> %a2, i8 %mask) {


  %res = call <2 x double> @llvm.x86.avx512.mask.add.sd.round(<2 x double>%a0, <2 x double> %a1, <2 x double> %a2, i8 %mask, i32 2)
  ret <2 x double> %res
}

define <2 x double> @test_mask_add_sd_rz(<2 x double> %a0, <2 x double> %a1, <2 x double> %a2, i8 %mask) {


  %res = call <2 x double> @llvm.x86.avx512.mask.add.sd.round(<2 x double>%a0, <2 x double> %a1, <2 x double> %a2, i8 %mask, i32 3)
  ret <2 x double> %res
}

define <2 x double> @test_mask_add_sd_current(<2 x double> %a0, <2 x double> %a1, <2 x double> %a2, i8 %mask) {


  %res = call <2 x double> @llvm.x86.avx512.mask.add.sd.round(<2 x double>%a0, <2 x double> %a1, <2 x double> %a2, i8 %mask, i32 4)
  ret <2 x double> %res
}

define <2 x double> @test_maskz_add_sd_rn(<2 x double> %a0, <2 x double> %a1, i8 %mask) {


  %res = call <2 x double> @llvm.x86.avx512.mask.add.sd.round(<2 x double>%a0, <2 x double> %a1, <2 x double> zeroinitializer, i8 %mask, i32 0)
  ret <2 x double> %res
}

define <2 x double> @test_add_sd_rn(<2 x double> %a0, <2 x double> %a1) {


  %res = call <2 x double> @llvm.x86.avx512.mask.add.sd.round(<2 x double>%a0, <2 x double> %a1, <2 x double> zeroinitializer, i8 -1, i32 0)
  ret <2 x double> %res
}

declare <4 x float> @llvm.x86.avx512.mask.max.ss.round(<4 x float>, <4 x float>, <4 x float>, i8, i32) nounwind readnone

define <4 x float> @test_mask_max_ss_sae(<4 x float> %a0, <4 x float> %a1, <4 x float> %a2, i8 %mask) {


  %res = call <4 x float> @llvm.x86.avx512.mask.max.ss.round(<4 x float>%a0, <4 x float> %a1, <4 x float> %a2, i8 %mask, i32 8)
  ret <4 x float> %res
}

define <4 x float> @test_maskz_max_ss_sae(<4 x float> %a0, <4 x float> %a1, i8 %mask) {


  %res = call <4 x float> @llvm.x86.avx512.mask.max.ss.round(<4 x float>%a0, <4 x float> %a1, <4 x float> zeroinitializer, i8 %mask, i32 8)
  ret <4 x float> %res
}

define <4 x float> @test_max_ss_sae(<4 x float> %a0, <4 x float> %a1) {


  %res = call <4 x float> @llvm.x86.avx512.mask.max.ss.round(<4 x float>%a0, <4 x float> %a1, <4 x float> zeroinitializer, i8 -1, i32 8)
  ret <4 x float> %res
}

define <4 x float> @test_mask_max_ss(<4 x float> %a0, <4 x float> %a1, <4 x float> %a2, i8 %mask) {


  %res = call <4 x float> @llvm.x86.avx512.mask.max.ss.round(<4 x float>%a0, <4 x float> %a1, <4 x float> %a2, i8 %mask, i32 4)
  ret <4 x float> %res
}

define <4 x float> @test_maskz_max_ss(<4 x float> %a0, <4 x float> %a1, i8 %mask) {


  %res = call <4 x float> @llvm.x86.avx512.mask.max.ss.round(<4 x float>%a0, <4 x float> %a1, <4 x float> zeroinitializer, i8 %mask, i32 4)
  ret <4 x float> %res
}

define <4 x float> @test_max_ss(<4 x float> %a0, <4 x float> %a1) {


  %res = call <4 x float> @llvm.x86.avx512.mask.max.ss.round(<4 x float>%a0, <4 x float> %a1, <4 x float> zeroinitializer, i8 -1, i32 4)
  ret <4 x float> %res
}
declare <2 x double> @llvm.x86.avx512.mask.max.sd.round(<2 x double>, <2 x double>, <2 x double>, i8, i32) nounwind readnone

define <2 x double> @test_mask_max_sd_sae(<2 x double> %a0, <2 x double> %a1, <2 x double> %a2, i8 %mask) {


  %res = call <2 x double> @llvm.x86.avx512.mask.max.sd.round(<2 x double>%a0, <2 x double> %a1, <2 x double> %a2, i8 %mask, i32 8)
  ret <2 x double> %res
}

define <2 x double> @test_maskz_max_sd_sae(<2 x double> %a0, <2 x double> %a1, i8 %mask) {


  %res = call <2 x double> @llvm.x86.avx512.mask.max.sd.round(<2 x double>%a0, <2 x double> %a1, <2 x double> zeroinitializer, i8 %mask, i32 8)
  ret <2 x double> %res
}

define <2 x double> @test_max_sd_sae(<2 x double> %a0, <2 x double> %a1) {


  %res = call <2 x double> @llvm.x86.avx512.mask.max.sd.round(<2 x double>%a0, <2 x double> %a1, <2 x double> zeroinitializer, i8 -1, i32 8)
  ret <2 x double> %res
}

define <2 x double> @test_mask_max_sd(<2 x double> %a0, <2 x double> %a1, <2 x double> %a2, i8 %mask) {


  %res = call <2 x double> @llvm.x86.avx512.mask.max.sd.round(<2 x double>%a0, <2 x double> %a1, <2 x double> %a2, i8 %mask, i32 4)
  ret <2 x double> %res
}

define <2 x double> @test_maskz_max_sd(<2 x double> %a0, <2 x double> %a1, i8 %mask) {


  %res = call <2 x double> @llvm.x86.avx512.mask.max.sd.round(<2 x double>%a0, <2 x double> %a1, <2 x double> zeroinitializer, i8 %mask, i32 4)
  ret <2 x double> %res
}

define <2 x double> @test_max_sd(<2 x double> %a0, <2 x double> %a1) {


  %res = call <2 x double> @llvm.x86.avx512.mask.max.sd.round(<2 x double>%a0, <2 x double> %a1, <2 x double> zeroinitializer, i8 -1, i32 4)
  ret <2 x double> %res
}

define <2 x double> @test_x86_avx512_cvtsi2sd32(<2 x double> %a, i32 %b) {




  %res = call <2 x double> @llvm.x86.avx512.cvtsi2sd32(<2 x double> %a, i32 %b, i32 3) 
  ret <2 x double> %res
}
declare <2 x double> @llvm.x86.avx512.cvtsi2sd32(<2 x double>, i32, i32) nounwind readnone

define <2 x double> @test_x86_avx512_cvtsi2sd64(<2 x double> %a, i64 %b) {




  %res = call <2 x double> @llvm.x86.avx512.cvtsi2sd64(<2 x double> %a, i64 %b, i32 3) 
  ret <2 x double> %res
}
declare <2 x double> @llvm.x86.avx512.cvtsi2sd64(<2 x double>, i64, i32) nounwind readnone

define <4 x float> @test_x86_avx512_cvtsi2ss32(<4 x float> %a, i32 %b) {




  %res = call <4 x float> @llvm.x86.avx512.cvtsi2ss32(<4 x float> %a, i32 %b, i32 3) 
  ret <4 x float> %res
}
declare <4 x float> @llvm.x86.avx512.cvtsi2ss32(<4 x float>, i32, i32) nounwind readnone

define <4 x float> @test_x86_avx512_cvtsi2ss64(<4 x float> %a, i64 %b) {




  %res = call <4 x float> @llvm.x86.avx512.cvtsi2ss64(<4 x float> %a, i64 %b, i32 3) 
  ret <4 x float> %res
}
declare <4 x float> @llvm.x86.avx512.cvtsi2ss64(<4 x float>, i64, i32) nounwind readnone

define <4 x float> @test_x86_avx512__mm_cvt_roundu32_ss (<4 x float> %a, i32 %b)




{
  %res = call <4 x float> @llvm.x86.avx512.cvtusi2ss(<4 x float> %a, i32 %b, i32 1) 
  ret <4 x float> %res
}

define <4 x float> @test_x86_avx512__mm_cvt_roundu32_ss_mem(<4 x float> %a, i32* %ptr)





{
  %b = load i32, i32* %ptr
  %res = call <4 x float> @llvm.x86.avx512.cvtusi2ss(<4 x float> %a, i32 %b, i32 1) 
  ret <4 x float> %res
}

define <4 x float> @test_x86_avx512__mm_cvtu32_ss(<4 x float> %a, i32 %b)




{
  %res = call <4 x float> @llvm.x86.avx512.cvtusi2ss(<4 x float> %a, i32 %b, i32 4) 
  ret <4 x float> %res
}

define <4 x float> @test_x86_avx512__mm_cvtu32_ss_mem(<4 x float> %a, i32* %ptr)




{
  %b = load i32, i32* %ptr
  %res = call <4 x float> @llvm.x86.avx512.cvtusi2ss(<4 x float> %a, i32 %b, i32 4) 
  ret <4 x float> %res
}
declare <4 x float> @llvm.x86.avx512.cvtusi2ss(<4 x float>, i32, i32) nounwind readnone

define <4 x float> @_mm_cvt_roundu64_ss (<4 x float> %a, i64 %b)




{
  %res = call <4 x float> @llvm.x86.avx512.cvtusi642ss(<4 x float> %a, i64 %b, i32 1) 
  ret <4 x float> %res
}

define <4 x float> @_mm_cvtu64_ss(<4 x float> %a, i64 %b)




{
  %res = call <4 x float> @llvm.x86.avx512.cvtusi642ss(<4 x float> %a, i64 %b, i32 4) 
  ret <4 x float> %res
}
declare <4 x float> @llvm.x86.avx512.cvtusi642ss(<4 x float>, i64, i32) nounwind readnone

define <2 x double> @test_x86_avx512_mm_cvtu32_sd(<2 x double> %a, i32 %b)




{
  %res = call <2 x double> @llvm.x86.avx512.cvtusi2sd(<2 x double> %a, i32 %b) 
  ret <2 x double> %res
}
declare <2 x double> @llvm.x86.avx512.cvtusi2sd(<2 x double>, i32) nounwind readnone

define <2 x double> @test_x86_avx512_mm_cvtu64_sd(<2 x double> %a, i64 %b)




{
  %res = call <2 x double> @llvm.x86.avx512.cvtusi642sd(<2 x double> %a, i64 %b, i32 1) 
  ret <2 x double> %res
}

define <2 x double> @test_x86_avx512__mm_cvt_roundu64_sd(<2 x double> %a, i64 %b)




{
  %res = call <2 x double> @llvm.x86.avx512.cvtusi642sd(<2 x double> %a, i64 %b, i32 4) 
  ret <2 x double> %res
}
declare <2 x double> @llvm.x86.avx512.cvtusi642sd(<2 x double>, i64, i32) nounwind readnone

define <8 x i64> @test_vpmaxq(<8 x i64> %a0, <8 x i64> %a1) {
  
  %res = call <8 x i64> @llvm.x86.avx512.mask.pmaxs.q.512(<8 x i64> %a0, <8 x i64> %a1,
                    <8 x i64>zeroinitializer, i8 -1)
  ret <8 x i64> %res
}
declare <8 x i64> @llvm.x86.avx512.mask.pmaxs.q.512(<8 x i64>, <8 x i64>, <8 x i64>, i8)

define <16 x i32> @test_vpminud(<16 x i32> %a0, <16 x i32> %a1) {
  
  %res = call <16 x i32> @llvm.x86.avx512.mask.pminu.d.512(<16 x i32> %a0, <16 x i32> %a1,
                    <16 x i32>zeroinitializer, i16 -1)
  ret <16 x i32> %res
}
declare <16 x i32> @llvm.x86.avx512.mask.pminu.d.512(<16 x i32>, <16 x i32>, <16 x i32>, i16)

define <16 x i32> @test_vpmaxsd(<16 x i32> %a0, <16 x i32> %a1) {
  
  %res = call <16 x i32> @llvm.x86.avx512.mask.pmaxs.d.512(<16 x i32> %a0, <16 x i32> %a1,
                    <16 x i32>zeroinitializer, i16 -1)
  ret <16 x i32> %res
}
declare <16 x i32> @llvm.x86.avx512.mask.pmaxs.d.512(<16 x i32>, <16 x i32>, <16 x i32>, i16)





define <16 x i32>@test_int_x86_avx512_mask_pmaxs_d_512(<16 x i32> %x0, <16 x i32> %x1, <16 x i32> %x2, i16 %x3) {
  %res = call <16 x i32> @llvm.x86.avx512.mask.pmaxs.d.512(<16 x i32> %x0, <16 x i32> %x1, <16 x i32> %x2, i16 %x3)
  %res1 = call <16 x i32> @llvm.x86.avx512.mask.pmaxs.d.512(<16 x i32> %x0, <16 x i32> %x1, <16 x i32> %x2, i16 -1)
  %res2 = add <16 x i32> %res, %res1
  ret <16 x i32> %res2
}





define <8 x i64>@test_int_x86_avx512_mask_pmaxs_q_512(<8 x i64> %x0, <8 x i64> %x1, <8 x i64> %x2, i8 %x3) {
  %res = call <8 x i64> @llvm.x86.avx512.mask.pmaxs.q.512(<8 x i64> %x0, <8 x i64> %x1, <8 x i64> %x2, i8 %x3)
  %res1 = call <8 x i64> @llvm.x86.avx512.mask.pmaxs.q.512(<8 x i64> %x0, <8 x i64> %x1, <8 x i64> %x2, i8 -1)
  %res2 = add <8 x i64> %res, %res1
  ret <8 x i64> %res2
}

declare <16 x i32> @llvm.x86.avx512.mask.pmaxu.d.512(<16 x i32>, <16 x i32>, <16 x i32>, i16)





define <16 x i32>@test_int_x86_avx512_mask_pmaxu_d_512(<16 x i32> %x0, <16 x i32> %x1, <16 x i32> %x2, i16 %x3) {
  %res = call <16 x i32> @llvm.x86.avx512.mask.pmaxu.d.512(<16 x i32> %x0, <16 x i32> %x1, <16 x i32> %x2, i16 %x3)
  %res1 = call <16 x i32> @llvm.x86.avx512.mask.pmaxu.d.512(<16 x i32> %x0, <16 x i32> %x1, <16 x i32> %x2, i16 -1)
  %res2 = add <16 x i32> %res, %res1
  ret <16 x i32> %res2
}

declare <8 x i64> @llvm.x86.avx512.mask.pmaxu.q.512(<8 x i64>, <8 x i64>, <8 x i64>, i8)





define <8 x i64>@test_int_x86_avx512_mask_pmaxu_q_512(<8 x i64> %x0, <8 x i64> %x1, <8 x i64> %x2, i8 %x3) {
  %res = call <8 x i64> @llvm.x86.avx512.mask.pmaxu.q.512(<8 x i64> %x0, <8 x i64> %x1, <8 x i64> %x2, i8 %x3)
  %res1 = call <8 x i64> @llvm.x86.avx512.mask.pmaxu.q.512(<8 x i64> %x0, <8 x i64> %x1, <8 x i64> %x2, i8 -1)
  %res2 = add <8 x i64> %res, %res1
  ret <8 x i64> %res2
}

declare <16 x i32> @llvm.x86.avx512.mask.pmins.d.512(<16 x i32>, <16 x i32>, <16 x i32>, i16)





define <16 x i32>@test_int_x86_avx512_mask_pmins_d_512(<16 x i32> %x0, <16 x i32> %x1, <16 x i32> %x2, i16 %x3) {
  %res = call <16 x i32> @llvm.x86.avx512.mask.pmins.d.512(<16 x i32> %x0, <16 x i32> %x1, <16 x i32> %x2, i16 %x3)
  %res1 = call <16 x i32> @llvm.x86.avx512.mask.pmins.d.512(<16 x i32> %x0, <16 x i32> %x1, <16 x i32> %x2, i16 -1)
  %res2 = add <16 x i32> %res, %res1
  ret <16 x i32> %res2
}

declare <8 x i64> @llvm.x86.avx512.mask.pmins.q.512(<8 x i64>, <8 x i64>, <8 x i64>, i8)





define <8 x i64>@test_int_x86_avx512_mask_pmins_q_512(<8 x i64> %x0, <8 x i64> %x1, <8 x i64> %x2, i8 %x3) {
  %res = call <8 x i64> @llvm.x86.avx512.mask.pmins.q.512(<8 x i64> %x0, <8 x i64> %x1, <8 x i64> %x2, i8 %x3)
  %res1 = call <8 x i64> @llvm.x86.avx512.mask.pmins.q.512(<8 x i64> %x0, <8 x i64> %x1, <8 x i64> %x2, i8 -1)
  %res2 = add <8 x i64> %res, %res1
  ret <8 x i64> %res2
}





define <16 x i32>@test_int_x86_avx512_mask_pminu_d_512(<16 x i32> %x0, <16 x i32> %x1, <16 x i32> %x2, i16 %x3) {
  %res = call <16 x i32> @llvm.x86.avx512.mask.pminu.d.512(<16 x i32> %x0, <16 x i32> %x1, <16 x i32> %x2, i16 %x3)
  %res1 = call <16 x i32> @llvm.x86.avx512.mask.pminu.d.512(<16 x i32> %x0, <16 x i32> %x1, <16 x i32> %x2, i16 -1)
  %res2 = add <16 x i32> %res, %res1
  ret <16 x i32> %res2
}

declare <8 x i64> @llvm.x86.avx512.mask.pminu.q.512(<8 x i64>, <8 x i64>, <8 x i64>, i8)





define <8 x i64>@test_int_x86_avx512_mask_pminu_q_512(<8 x i64> %x0, <8 x i64> %x1, <8 x i64> %x2, i8 %x3) {
  %res = call <8 x i64> @llvm.x86.avx512.mask.pminu.q.512(<8 x i64> %x0, <8 x i64> %x1, <8 x i64> %x2, i8 %x3)
  %res1 = call <8 x i64> @llvm.x86.avx512.mask.pminu.q.512(<8 x i64> %x0, <8 x i64> %x1, <8 x i64> %x2, i8 -1)
  %res2 = add <8 x i64> %res, %res1
  ret <8 x i64> %res2
}

declare <16 x i32> @llvm.x86.avx512.mask.vpermi2var.d.512(<16 x i32>, <16 x i32>, <16 x i32>, i16)





define <16 x i32>@test_int_x86_avx512_mask_vpermi2var_d_512(<16 x i32> %x0, <16 x i32> %x1, <16 x i32> %x2, i16 %x3) {
  %res = call <16 x i32> @llvm.x86.avx512.mask.vpermi2var.d.512(<16 x i32> %x0, <16 x i32> %x1, <16 x i32> %x2, i16 %x3)
  %res1 = call <16 x i32> @llvm.x86.avx512.mask.vpermi2var.d.512(<16 x i32> %x0, <16 x i32> %x1, <16 x i32> %x2, i16 -1)
  %res2 = add <16 x i32> %res, %res1
  ret <16 x i32> %res2
}

declare <8 x double> @llvm.x86.avx512.mask.vpermi2var.pd.512(<8 x double>, <8 x i64>, <8 x double>, i8)





define <8 x double>@test_int_x86_avx512_mask_vpermi2var_pd_512(<8 x double> %x0, <8 x i64> %x1, <8 x double> %x2, i8 %x3) {
  %res = call <8 x double> @llvm.x86.avx512.mask.vpermi2var.pd.512(<8 x double> %x0, <8 x i64> %x1, <8 x double> %x2, i8 %x3)
  %res1 = call <8 x double> @llvm.x86.avx512.mask.vpermi2var.pd.512(<8 x double> %x0, <8 x i64> %x1, <8 x double> %x2, i8 -1)
  %res2 = fadd <8 x double> %res, %res1
  ret <8 x double> %res2
}

declare <16 x float> @llvm.x86.avx512.mask.vpermi2var.ps.512(<16 x float>, <16 x i32>, <16 x float>, i16)





define <16 x float>@test_int_x86_avx512_mask_vpermi2var_ps_512(<16 x float> %x0, <16 x i32> %x1, <16 x float> %x2, i16 %x3) {
  %res = call <16 x float> @llvm.x86.avx512.mask.vpermi2var.ps.512(<16 x float> %x0, <16 x i32> %x1, <16 x float> %x2, i16 %x3)
  %res1 = call <16 x float> @llvm.x86.avx512.mask.vpermi2var.ps.512(<16 x float> %x0, <16 x i32> %x1, <16 x float> %x2, i16 -1)
  %res2 = fadd <16 x float> %res, %res1
  ret <16 x float> %res2
}

declare <8 x i64> @llvm.x86.avx512.mask.vpermi2var.q.512(<8 x i64>, <8 x i64>, <8 x i64>, i8)





define <8 x i64>@test_int_x86_avx512_mask_vpermi2var_q_512(<8 x i64> %x0, <8 x i64> %x1, <8 x i64> %x2, i8 %x3) {
  %res = call <8 x i64> @llvm.x86.avx512.mask.vpermi2var.q.512(<8 x i64> %x0, <8 x i64> %x1, <8 x i64> %x2, i8 %x3)
  %res1 = call <8 x i64> @llvm.x86.avx512.mask.vpermi2var.q.512(<8 x i64> %x0, <8 x i64> %x1, <8 x i64> %x2, i8 -1)
  %res2 = add <8 x i64> %res, %res1
  ret <8 x i64> %res2
}

declare <16 x i32> @llvm.x86.avx512.maskz.vpermt2var.d.512(<16 x i32>, <16 x i32>, <16 x i32>, i16)





define <16 x i32>@test_int_x86_avx512_maskz_vpermt2var_d_512(<16 x i32> %x0, <16 x i32> %x1, <16 x i32> %x2, i16 %x3) {
  %res = call <16 x i32> @llvm.x86.avx512.maskz.vpermt2var.d.512(<16 x i32> %x0, <16 x i32> %x1, <16 x i32> %x2, i16 %x3)
  %res1 = call <16 x i32> @llvm.x86.avx512.maskz.vpermt2var.d.512(<16 x i32> %x0, <16 x i32> %x1, <16 x i32> %x2, i16 -1)
  %res2 = add <16 x i32> %res, %res1
  ret <16 x i32> %res2
}

declare <8 x double> @llvm.x86.avx512.maskz.vpermt2var.pd.512(<8 x i64>, <8 x double>, <8 x double>, i8)





define <8 x double>@test_int_x86_avx512_maskz_vpermt2var_pd_512(<8 x i64> %x0, <8 x double> %x1, <8 x double> %x2, i8 %x3) {
  %res = call <8 x double> @llvm.x86.avx512.maskz.vpermt2var.pd.512(<8 x i64> %x0, <8 x double> %x1, <8 x double> %x2, i8 %x3)
  %res1 = call <8 x double> @llvm.x86.avx512.maskz.vpermt2var.pd.512(<8 x i64> %x0, <8 x double> %x1, <8 x double> %x2, i8 -1)
  %res2 = fadd <8 x double> %res, %res1
  ret <8 x double> %res2
}

declare <16 x float> @llvm.x86.avx512.maskz.vpermt2var.ps.512(<16 x i32>, <16 x float>, <16 x float>, i16)





define <16 x float>@test_int_x86_avx512_maskz_vpermt2var_ps_512(<16 x i32> %x0, <16 x float> %x1, <16 x float> %x2, i16 %x3) {
  %res = call <16 x float> @llvm.x86.avx512.maskz.vpermt2var.ps.512(<16 x i32> %x0, <16 x float> %x1, <16 x float> %x2, i16 %x3)
  %res1 = call <16 x float> @llvm.x86.avx512.maskz.vpermt2var.ps.512(<16 x i32> %x0, <16 x float> %x1, <16 x float> %x2, i16 -1)
  %res2 = fadd <16 x float> %res, %res1
  ret <16 x float> %res2
}


declare <8 x i64> @llvm.x86.avx512.maskz.vpermt2var.q.512(<8 x i64>, <8 x i64>, <8 x i64>, i8)





define <8 x i64>@test_int_x86_avx512_maskz_vpermt2var_q_512(<8 x i64> %x0, <8 x i64> %x1, <8 x i64> %x2, i8 %x3) {
  %res = call <8 x i64> @llvm.x86.avx512.maskz.vpermt2var.q.512(<8 x i64> %x0, <8 x i64> %x1, <8 x i64> %x2, i8 %x3)
  %res1 = call <8 x i64> @llvm.x86.avx512.maskz.vpermt2var.q.512(<8 x i64> %x0, <8 x i64> %x1, <8 x i64> %x2, i8 -1)
  %res2 = add <8 x i64> %res, %res1
  ret <8 x i64> %res2
}

declare <16 x i32> @llvm.x86.avx512.mask.vpermt2var.d.512(<16 x i32>, <16 x i32>, <16 x i32>, i16)






define <16 x i32>@test_int_x86_avx512_mask_vpermt2var_d_512(<16 x i32> %x0, <16 x i32> %x1, <16 x i32> %x2, i16 %x3) {
  %res = call <16 x i32> @llvm.x86.avx512.mask.vpermt2var.d.512(<16 x i32> %x0, <16 x i32> %x1, <16 x i32> %x2, i16 %x3)
  %res1 = call <16 x i32> @llvm.x86.avx512.mask.vpermt2var.d.512(<16 x i32> %x0, <16 x i32> %x1, <16 x i32> %x2, i16 -1)
  %res2 = add <16 x i32> %res, %res1
  ret <16 x i32> %res2
}

declare <8 x double> @llvm.x86.avx512.mask.scalef.pd.512(<8 x double>, <8 x double>, <8 x double>, i8, i32)




define <8 x double>@test_int_x86_avx512_mask_scalef_pd_512(<8 x double> %x0, <8 x double> %x1, <8 x double> %x2, i8 %x3) {
  %res = call <8 x double> @llvm.x86.avx512.mask.scalef.pd.512(<8 x double> %x0, <8 x double> %x1, <8 x double> %x2, i8 %x3, i32 3)
  %res1 = call <8 x double> @llvm.x86.avx512.mask.scalef.pd.512(<8 x double> %x0, <8 x double> %x1, <8 x double> %x2, i8 -1, i32 0)
  %res2 = fadd <8 x double> %res, %res1
  ret <8 x double> %res2
}

declare <16 x float> @llvm.x86.avx512.mask.scalef.ps.512(<16 x float>, <16 x float>, <16 x float>, i16, i32)




define <16 x float>@test_int_x86_avx512_mask_scalef_ps_512(<16 x float> %x0, <16 x float> %x1, <16 x float> %x2, i16 %x3) {
  %res = call <16 x float> @llvm.x86.avx512.mask.scalef.ps.512(<16 x float> %x0, <16 x float> %x1, <16 x float> %x2, i16 %x3, i32 2)
  %res1 = call <16 x float> @llvm.x86.avx512.mask.scalef.ps.512(<16 x float> %x0, <16 x float> %x1, <16 x float> %x2, i16 -1, i32 0)
  %res2 = fadd <16 x float> %res, %res1
  ret <16 x float> %res2
}

declare <8 x double> @llvm.x86.avx512.mask.unpckh.pd.512(<8 x double>, <8 x double>, <8 x double>, i8)

define <8 x double>@test_int_x86_avx512_mask_unpckh_pd_512(<8 x double> %x0, <8 x double> %x1, <8 x double> %x2, i8 %x3) {






  %res = call <8 x double> @llvm.x86.avx512.mask.unpckh.pd.512(<8 x double> %x0, <8 x double> %x1, <8 x double> %x2, i8 %x3)
  %res1 = call <8 x double> @llvm.x86.avx512.mask.unpckh.pd.512(<8 x double> %x0, <8 x double> %x1, <8 x double> %x2, i8 -1)
  %res2 = fadd <8 x double> %res, %res1
  ret <8 x double> %res2
}

declare <16 x float> @llvm.x86.avx512.mask.unpckh.ps.512(<16 x float>, <16 x float>, <16 x float>, i16)

define <16 x float>@test_int_x86_avx512_mask_unpckh_ps_512(<16 x float> %x0, <16 x float> %x1, <16 x float> %x2, i16 %x3) {





  %res = call <16 x float> @llvm.x86.avx512.mask.unpckh.ps.512(<16 x float> %x0, <16 x float> %x1, <16 x float> %x2, i16 %x3)
  %res1 = call <16 x float> @llvm.x86.avx512.mask.unpckh.ps.512(<16 x float> %x0, <16 x float> %x1, <16 x float> %x2, i16 -1)
  %res2 = fadd <16 x float> %res, %res1
  ret <16 x float> %res2
}

declare <8 x double> @llvm.x86.avx512.mask.unpckl.pd.512(<8 x double>, <8 x double>, <8 x double>, i8)

define <8 x double>@test_int_x86_avx512_mask_unpckl_pd_512(<8 x double> %x0, <8 x double> %x1, <8 x double> %x2, i8 %x3) {






  %res = call <8 x double> @llvm.x86.avx512.mask.unpckl.pd.512(<8 x double> %x0, <8 x double> %x1, <8 x double> %x2, i8 %x3)
  %res1 = call <8 x double> @llvm.x86.avx512.mask.unpckl.pd.512(<8 x double> %x0, <8 x double> %x1, <8 x double> %x2, i8 -1)
  %res2 = fadd <8 x double> %res, %res1
  ret <8 x double> %res2
}

declare <16 x float> @llvm.x86.avx512.mask.unpckl.ps.512(<16 x float>, <16 x float>, <16 x float>, i16)

define <16 x float>@test_int_x86_avx512_mask_unpckl_ps_512(<16 x float> %x0, <16 x float> %x1, <16 x float> %x2, i16 %x3) {





  %res = call <16 x float> @llvm.x86.avx512.mask.unpckl.ps.512(<16 x float> %x0, <16 x float> %x1, <16 x float> %x2, i16 %x3)
  %res1 = call <16 x float> @llvm.x86.avx512.mask.unpckl.ps.512(<16 x float> %x0, <16 x float> %x1, <16 x float> %x2, i16 -1)
  %res2 = fadd <16 x float> %res, %res1
  ret <16 x float> %res2
}

declare <8 x i64> @llvm.x86.avx512.mask.punpcklqd.q.512(<8 x i64>, <8 x i64>, <8 x i64>, i8)

define <8 x i64>@test_int_x86_avx512_mask_punpcklqd_q_512(<8 x i64> %x0, <8 x i64> %x1, <8 x i64> %x2, i8 %x3) {










  %res = call <8 x i64> @llvm.x86.avx512.mask.punpcklqd.q.512(<8 x i64> %x0, <8 x i64> %x1, <8 x i64> %x2, i8 %x3)
  %res1 = call <8 x i64> @llvm.x86.avx512.mask.punpcklqd.q.512(<8 x i64> %x0, <8 x i64> %x1, <8 x i64> %x2, i8 -1)
  %res2 = call <8 x i64> @llvm.x86.avx512.mask.punpcklqd.q.512(<8 x i64> %x0, <8 x i64> %x1, <8 x i64> zeroinitializer,i8 %x3)
  %res3 = add <8 x i64> %res, %res1
  %res4 = add <8 x i64> %res2, %res3
  ret <8 x i64> %res4
}

declare <8 x i64> @llvm.x86.avx512.mask.punpckhqd.q.512(<8 x i64>, <8 x i64>, <8 x i64>, i8)

define <8 x i64>@test_int_x86_avx512_mask_punpckhqd_q_512(<8 x i64> %x0, <8 x i64> %x1, <8 x i64> %x2, i8 %x3) {








  %res = call <8 x i64> @llvm.x86.avx512.mask.punpckhqd.q.512(<8 x i64> %x0, <8 x i64> %x1, <8 x i64> %x2, i8 %x3)
  %res1 = call <8 x i64> @llvm.x86.avx512.mask.punpckhqd.q.512(<8 x i64> %x0, <8 x i64> %x1, <8 x i64> %x2, i8 -1)
  %res2 = add <8 x i64> %res, %res1
  ret <8 x i64> %res2
}

declare <16 x i32> @llvm.x86.avx512.mask.punpckhd.q.512(<16 x i32>, <16 x i32>, <16 x i32>, i16)

define <16 x i32>@test_int_x86_avx512_mask_punpckhd_q_512(<16 x i32> %x0, <16 x i32> %x1, <16 x i32> %x2, i16 %x3) {







  %res = call <16 x i32> @llvm.x86.avx512.mask.punpckhd.q.512(<16 x i32> %x0, <16 x i32> %x1, <16 x i32> %x2, i16 %x3)
  %res1 = call <16 x i32> @llvm.x86.avx512.mask.punpckhd.q.512(<16 x i32> %x0, <16 x i32> %x1, <16 x i32> %x2, i16 -1)
  %res2 = add <16 x i32> %res, %res1
  ret <16 x i32> %res2
}

declare <16 x i32> @llvm.x86.avx512.mask.punpckld.q.512(<16 x i32>, <16 x i32>, <16 x i32>, i16)

define <16 x i32>@test_int_x86_avx512_mask_punpckld_q_512(<16 x i32> %x0, <16 x i32> %x1, <16 x i32> %x2, i16 %x3) {







  %res = call <16 x i32> @llvm.x86.avx512.mask.punpckld.q.512(<16 x i32> %x0, <16 x i32> %x1, <16 x i32> %x2, i16 %x3)
  %res1 = call <16 x i32> @llvm.x86.avx512.mask.punpckld.q.512(<16 x i32> %x0, <16 x i32> %x1, <16 x i32> %x2, i16 -1)
  %res2 = add <16 x i32> %res, %res1
  ret <16 x i32> %res2
}

declare <16 x i8> @llvm.x86.avx512.mask.pmov.qb.512(<8 x i64>, <16 x i8>, i8)

define <16 x i8>@test_int_x86_avx512_mask_pmov_qb_512(<8 x i64> %x0, <16 x i8> %x1, i8 %x2) {




    %res0 = call <16 x i8> @llvm.x86.avx512.mask.pmov.qb.512(<8 x i64> %x0, <16 x i8> %x1, i8 -1)
    %res1 = call <16 x i8> @llvm.x86.avx512.mask.pmov.qb.512(<8 x i64> %x0, <16 x i8> %x1, i8 %x2)
    %res2 = call <16 x i8> @llvm.x86.avx512.mask.pmov.qb.512(<8 x i64> %x0, <16 x i8> zeroinitializer, i8 %x2)
    %res3 = add <16 x i8> %res0, %res1
    %res4 = add <16 x i8> %res3, %res2
    ret <16 x i8> %res4
}

declare void @llvm.x86.avx512.mask.pmov.qb.mem.512(i8* %ptr, <8 x i64>, i8)

define void @test_int_x86_avx512_mask_pmov_qb_mem_512(i8* %ptr, <8 x i64> %x1, i8 %x2) {



    call void @llvm.x86.avx512.mask.pmov.qb.mem.512(i8* %ptr, <8 x i64> %x1, i8 -1)
    call void @llvm.x86.avx512.mask.pmov.qb.mem.512(i8* %ptr, <8 x i64> %x1, i8 %x2)
    ret void
}

declare <16 x i8> @llvm.x86.avx512.mask.pmovs.qb.512(<8 x i64>, <16 x i8>, i8)

define <16 x i8>@test_int_x86_avx512_mask_pmovs_qb_512(<8 x i64> %x0, <16 x i8> %x1, i8 %x2) {




    %res0 = call <16 x i8> @llvm.x86.avx512.mask.pmovs.qb.512(<8 x i64> %x0, <16 x i8> %x1, i8 -1)
    %res1 = call <16 x i8> @llvm.x86.avx512.mask.pmovs.qb.512(<8 x i64> %x0, <16 x i8> %x1, i8 %x2)
    %res2 = call <16 x i8> @llvm.x86.avx512.mask.pmovs.qb.512(<8 x i64> %x0, <16 x i8> zeroinitializer, i8 %x2)
    %res3 = add <16 x i8> %res0, %res1
    %res4 = add <16 x i8> %res3, %res2
    ret <16 x i8> %res4
}

declare void @llvm.x86.avx512.mask.pmovs.qb.mem.512(i8* %ptr, <8 x i64>, i8)

define void @test_int_x86_avx512_mask_pmovs_qb_mem_512(i8* %ptr, <8 x i64> %x1, i8 %x2) {



    call void @llvm.x86.avx512.mask.pmovs.qb.mem.512(i8* %ptr, <8 x i64> %x1, i8 -1)
    call void @llvm.x86.avx512.mask.pmovs.qb.mem.512(i8* %ptr, <8 x i64> %x1, i8 %x2)
    ret void
}

declare <16 x i8> @llvm.x86.avx512.mask.pmovus.qb.512(<8 x i64>, <16 x i8>, i8)

define <16 x i8>@test_int_x86_avx512_mask_pmovus_qb_512(<8 x i64> %x0, <16 x i8> %x1, i8 %x2) {




    %res0 = call <16 x i8> @llvm.x86.avx512.mask.pmovus.qb.512(<8 x i64> %x0, <16 x i8> %x1, i8 -1)
    %res1 = call <16 x i8> @llvm.x86.avx512.mask.pmovus.qb.512(<8 x i64> %x0, <16 x i8> %x1, i8 %x2)
    %res2 = call <16 x i8> @llvm.x86.avx512.mask.pmovus.qb.512(<8 x i64> %x0, <16 x i8> zeroinitializer, i8 %x2)
    %res3 = add <16 x i8> %res0, %res1
    %res4 = add <16 x i8> %res3, %res2
    ret <16 x i8> %res4
}

declare void @llvm.x86.avx512.mask.pmovus.qb.mem.512(i8* %ptr, <8 x i64>, i8)

define void @test_int_x86_avx512_mask_pmovus_qb_mem_512(i8* %ptr, <8 x i64> %x1, i8 %x2) {



    call void @llvm.x86.avx512.mask.pmovus.qb.mem.512(i8* %ptr, <8 x i64> %x1, i8 -1)
    call void @llvm.x86.avx512.mask.pmovus.qb.mem.512(i8* %ptr, <8 x i64> %x1, i8 %x2)
    ret void
}

declare <8 x i16> @llvm.x86.avx512.mask.pmov.qw.512(<8 x i64>, <8 x i16>, i8)

define <8 x i16>@test_int_x86_avx512_mask_pmov_qw_512(<8 x i64> %x0, <8 x i16> %x1, i8 %x2) {




    %res0 = call <8 x i16> @llvm.x86.avx512.mask.pmov.qw.512(<8 x i64> %x0, <8 x i16> %x1, i8 -1)
    %res1 = call <8 x i16> @llvm.x86.avx512.mask.pmov.qw.512(<8 x i64> %x0, <8 x i16> %x1, i8 %x2)
    %res2 = call <8 x i16> @llvm.x86.avx512.mask.pmov.qw.512(<8 x i64> %x0, <8 x i16> zeroinitializer, i8 %x2)
    %res3 = add <8 x i16> %res0, %res1
    %res4 = add <8 x i16> %res3, %res2
    ret <8 x i16> %res4
}

declare void @llvm.x86.avx512.mask.pmov.qw.mem.512(i8* %ptr, <8 x i64>, i8)

define void @test_int_x86_avx512_mask_pmov_qw_mem_512(i8* %ptr, <8 x i64> %x1, i8 %x2) {



    call void @llvm.x86.avx512.mask.pmov.qw.mem.512(i8* %ptr, <8 x i64> %x1, i8 -1)
    call void @llvm.x86.avx512.mask.pmov.qw.mem.512(i8* %ptr, <8 x i64> %x1, i8 %x2)
    ret void
}

declare <8 x i16> @llvm.x86.avx512.mask.pmovs.qw.512(<8 x i64>, <8 x i16>, i8)

define <8 x i16>@test_int_x86_avx512_mask_pmovs_qw_512(<8 x i64> %x0, <8 x i16> %x1, i8 %x2) {




    %res0 = call <8 x i16> @llvm.x86.avx512.mask.pmovs.qw.512(<8 x i64> %x0, <8 x i16> %x1, i8 -1)
    %res1 = call <8 x i16> @llvm.x86.avx512.mask.pmovs.qw.512(<8 x i64> %x0, <8 x i16> %x1, i8 %x2)
    %res2 = call <8 x i16> @llvm.x86.avx512.mask.pmovs.qw.512(<8 x i64> %x0, <8 x i16> zeroinitializer, i8 %x2)
    %res3 = add <8 x i16> %res0, %res1
    %res4 = add <8 x i16> %res3, %res2
    ret <8 x i16> %res4
}

declare void @llvm.x86.avx512.mask.pmovs.qw.mem.512(i8* %ptr, <8 x i64>, i8)

define void @test_int_x86_avx512_mask_pmovs_qw_mem_512(i8* %ptr, <8 x i64> %x1, i8 %x2) {



    call void @llvm.x86.avx512.mask.pmovs.qw.mem.512(i8* %ptr, <8 x i64> %x1, i8 -1)
    call void @llvm.x86.avx512.mask.pmovs.qw.mem.512(i8* %ptr, <8 x i64> %x1, i8 %x2)
    ret void
}

declare <8 x i16> @llvm.x86.avx512.mask.pmovus.qw.512(<8 x i64>, <8 x i16>, i8)

define <8 x i16>@test_int_x86_avx512_mask_pmovus_qw_512(<8 x i64> %x0, <8 x i16> %x1, i8 %x2) {




    %res0 = call <8 x i16> @llvm.x86.avx512.mask.pmovus.qw.512(<8 x i64> %x0, <8 x i16> %x1, i8 -1)
    %res1 = call <8 x i16> @llvm.x86.avx512.mask.pmovus.qw.512(<8 x i64> %x0, <8 x i16> %x1, i8 %x2)
    %res2 = call <8 x i16> @llvm.x86.avx512.mask.pmovus.qw.512(<8 x i64> %x0, <8 x i16> zeroinitializer, i8 %x2)
    %res3 = add <8 x i16> %res0, %res1
    %res4 = add <8 x i16> %res3, %res2
    ret <8 x i16> %res4
}

declare void @llvm.x86.avx512.mask.pmovus.qw.mem.512(i8* %ptr, <8 x i64>, i8)

define void @test_int_x86_avx512_mask_pmovus_qw_mem_512(i8* %ptr, <8 x i64> %x1, i8 %x2) {



    call void @llvm.x86.avx512.mask.pmovus.qw.mem.512(i8* %ptr, <8 x i64> %x1, i8 -1)
    call void @llvm.x86.avx512.mask.pmovus.qw.mem.512(i8* %ptr, <8 x i64> %x1, i8 %x2)
    ret void
}

declare <8 x i32> @llvm.x86.avx512.mask.pmov.qd.512(<8 x i64>, <8 x i32>, i8)

define <8 x i32>@test_int_x86_avx512_mask_pmov_qd_512(<8 x i64> %x0, <8 x i32> %x1, i8 %x2) {




    %res0 = call <8 x i32> @llvm.x86.avx512.mask.pmov.qd.512(<8 x i64> %x0, <8 x i32> %x1, i8 -1)
    %res1 = call <8 x i32> @llvm.x86.avx512.mask.pmov.qd.512(<8 x i64> %x0, <8 x i32> %x1, i8 %x2)
    %res2 = call <8 x i32> @llvm.x86.avx512.mask.pmov.qd.512(<8 x i64> %x0, <8 x i32> zeroinitializer, i8 %x2)
    %res3 = add <8 x i32> %res0, %res1
    %res4 = add <8 x i32> %res3, %res2
    ret <8 x i32> %res4
}

declare void @llvm.x86.avx512.mask.pmov.qd.mem.512(i8* %ptr, <8 x i64>, i8)

define void @test_int_x86_avx512_mask_pmov_qd_mem_512(i8* %ptr, <8 x i64> %x1, i8 %x2) {



    call void @llvm.x86.avx512.mask.pmov.qd.mem.512(i8* %ptr, <8 x i64> %x1, i8 -1)
    call void @llvm.x86.avx512.mask.pmov.qd.mem.512(i8* %ptr, <8 x i64> %x1, i8 %x2)
    ret void
}

declare <8 x i32> @llvm.x86.avx512.mask.pmovs.qd.512(<8 x i64>, <8 x i32>, i8)

define <8 x i32>@test_int_x86_avx512_mask_pmovs_qd_512(<8 x i64> %x0, <8 x i32> %x1, i8 %x2) {




    %res0 = call <8 x i32> @llvm.x86.avx512.mask.pmovs.qd.512(<8 x i64> %x0, <8 x i32> %x1, i8 -1)
    %res1 = call <8 x i32> @llvm.x86.avx512.mask.pmovs.qd.512(<8 x i64> %x0, <8 x i32> %x1, i8 %x2)
    %res2 = call <8 x i32> @llvm.x86.avx512.mask.pmovs.qd.512(<8 x i64> %x0, <8 x i32> zeroinitializer, i8 %x2)
    %res3 = add <8 x i32> %res0, %res1
    %res4 = add <8 x i32> %res3, %res2
    ret <8 x i32> %res4
}

declare void @llvm.x86.avx512.mask.pmovs.qd.mem.512(i8* %ptr, <8 x i64>, i8)

define void @test_int_x86_avx512_mask_pmovs_qd_mem_512(i8* %ptr, <8 x i64> %x1, i8 %x2) {



    call void @llvm.x86.avx512.mask.pmovs.qd.mem.512(i8* %ptr, <8 x i64> %x1, i8 -1)
    call void @llvm.x86.avx512.mask.pmovs.qd.mem.512(i8* %ptr, <8 x i64> %x1, i8 %x2)
    ret void
}

declare <8 x i32> @llvm.x86.avx512.mask.pmovus.qd.512(<8 x i64>, <8 x i32>, i8)

define <8 x i32>@test_int_x86_avx512_mask_pmovus_qd_512(<8 x i64> %x0, <8 x i32> %x1, i8 %x2) {




    %res0 = call <8 x i32> @llvm.x86.avx512.mask.pmovus.qd.512(<8 x i64> %x0, <8 x i32> %x1, i8 -1)
    %res1 = call <8 x i32> @llvm.x86.avx512.mask.pmovus.qd.512(<8 x i64> %x0, <8 x i32> %x1, i8 %x2)
    %res2 = call <8 x i32> @llvm.x86.avx512.mask.pmovus.qd.512(<8 x i64> %x0, <8 x i32> zeroinitializer, i8 %x2)
    %res3 = add <8 x i32> %res0, %res1
    %res4 = add <8 x i32> %res3, %res2
    ret <8 x i32> %res4
}

declare void @llvm.x86.avx512.mask.pmovus.qd.mem.512(i8* %ptr, <8 x i64>, i8)

define void @test_int_x86_avx512_mask_pmovus_qd_mem_512(i8* %ptr, <8 x i64> %x1, i8 %x2) {



    call void @llvm.x86.avx512.mask.pmovus.qd.mem.512(i8* %ptr, <8 x i64> %x1, i8 -1)
    call void @llvm.x86.avx512.mask.pmovus.qd.mem.512(i8* %ptr, <8 x i64> %x1, i8 %x2)
    ret void
}

declare <16 x i8> @llvm.x86.avx512.mask.pmov.db.512(<16 x i32>, <16 x i8>, i16)

define <16 x i8>@test_int_x86_avx512_mask_pmov_db_512(<16 x i32> %x0, <16 x i8> %x1, i16 %x2) {




    %res0 = call <16 x i8> @llvm.x86.avx512.mask.pmov.db.512(<16 x i32> %x0, <16 x i8> %x1, i16 -1)
    %res1 = call <16 x i8> @llvm.x86.avx512.mask.pmov.db.512(<16 x i32> %x0, <16 x i8> %x1, i16 %x2)
    %res2 = call <16 x i8> @llvm.x86.avx512.mask.pmov.db.512(<16 x i32> %x0, <16 x i8> zeroinitializer, i16 %x2)
    %res3 = add <16 x i8> %res0, %res1
    %res4 = add <16 x i8> %res3, %res2
    ret <16 x i8> %res4
}

declare void @llvm.x86.avx512.mask.pmov.db.mem.512(i8* %ptr, <16 x i32>, i16)

define void @test_int_x86_avx512_mask_pmov_db_mem_512(i8* %ptr, <16 x i32> %x1, i16 %x2) {



    call void @llvm.x86.avx512.mask.pmov.db.mem.512(i8* %ptr, <16 x i32> %x1, i16 -1)
    call void @llvm.x86.avx512.mask.pmov.db.mem.512(i8* %ptr, <16 x i32> %x1, i16 %x2)
    ret void
}

declare <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32>, <16 x i8>, i16)

define <16 x i8>@test_int_x86_avx512_mask_pmovs_db_512(<16 x i32> %x0, <16 x i8> %x1, i16 %x2) {




    %res0 = call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %x0, <16 x i8> %x1, i16 -1)
    %res1 = call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %x0, <16 x i8> %x1, i16 %x2)
    %res2 = call <16 x i8> @llvm.x86.avx512.mask.pmovs.db.512(<16 x i32> %x0, <16 x i8> zeroinitializer, i16 %x2)
    %res3 = add <16 x i8> %res0, %res1
    %res4 = add <16 x i8> %res3, %res2
    ret <16 x i8> %res4
}

declare void @llvm.x86.avx512.mask.pmovs.db.mem.512(i8* %ptr, <16 x i32>, i16)

define void @test_int_x86_avx512_mask_pmovs_db_mem_512(i8* %ptr, <16 x i32> %x1, i16 %x2) {



    call void @llvm.x86.avx512.mask.pmovs.db.mem.512(i8* %ptr, <16 x i32> %x1, i16 -1)
    call void @llvm.x86.avx512.mask.pmovs.db.mem.512(i8* %ptr, <16 x i32> %x1, i16 %x2)
    ret void
}

declare <16 x i8> @llvm.x86.avx512.mask.pmovus.db.512(<16 x i32>, <16 x i8>, i16)

define <16 x i8>@test_int_x86_avx512_mask_pmovus_db_512(<16 x i32> %x0, <16 x i8> %x1, i16 %x2) {




    %res0 = call <16 x i8> @llvm.x86.avx512.mask.pmovus.db.512(<16 x i32> %x0, <16 x i8> %x1, i16 -1)
    %res1 = call <16 x i8> @llvm.x86.avx512.mask.pmovus.db.512(<16 x i32> %x0, <16 x i8> %x1, i16 %x2)
    %res2 = call <16 x i8> @llvm.x86.avx512.mask.pmovus.db.512(<16 x i32> %x0, <16 x i8> zeroinitializer, i16 %x2)
    %res3 = add <16 x i8> %res0, %res1
    %res4 = add <16 x i8> %res3, %res2
    ret <16 x i8> %res4
}

declare void @llvm.x86.avx512.mask.pmovus.db.mem.512(i8* %ptr, <16 x i32>, i16)

define void @test_int_x86_avx512_mask_pmovus_db_mem_512(i8* %ptr, <16 x i32> %x1, i16 %x2) {



    call void @llvm.x86.avx512.mask.pmovus.db.mem.512(i8* %ptr, <16 x i32> %x1, i16 -1)
    call void @llvm.x86.avx512.mask.pmovus.db.mem.512(i8* %ptr, <16 x i32> %x1, i16 %x2)
    ret void
}

declare <16 x i16> @llvm.x86.avx512.mask.pmov.dw.512(<16 x i32>, <16 x i16>, i16)

define <16 x i16>@test_int_x86_avx512_mask_pmov_dw_512(<16 x i32> %x0, <16 x i16> %x1, i16 %x2) {




    %res0 = call <16 x i16> @llvm.x86.avx512.mask.pmov.dw.512(<16 x i32> %x0, <16 x i16> %x1, i16 -1)
    %res1 = call <16 x i16> @llvm.x86.avx512.mask.pmov.dw.512(<16 x i32> %x0, <16 x i16> %x1, i16 %x2)
    %res2 = call <16 x i16> @llvm.x86.avx512.mask.pmov.dw.512(<16 x i32> %x0, <16 x i16> zeroinitializer, i16 %x2)
    %res3 = add <16 x i16> %res0, %res1
    %res4 = add <16 x i16> %res3, %res2
    ret <16 x i16> %res4
}

declare void @llvm.x86.avx512.mask.pmov.dw.mem.512(i8* %ptr, <16 x i32>, i16)

define void @test_int_x86_avx512_mask_pmov_dw_mem_512(i8* %ptr, <16 x i32> %x1, i16 %x2) {



    call void @llvm.x86.avx512.mask.pmov.dw.mem.512(i8* %ptr, <16 x i32> %x1, i16 -1)
    call void @llvm.x86.avx512.mask.pmov.dw.mem.512(i8* %ptr, <16 x i32> %x1, i16 %x2)
    ret void
}

declare <16 x i16> @llvm.x86.avx512.mask.pmovs.dw.512(<16 x i32>, <16 x i16>, i16)

define <16 x i16>@test_int_x86_avx512_mask_pmovs_dw_512(<16 x i32> %x0, <16 x i16> %x1, i16 %x2) {




    %res0 = call <16 x i16> @llvm.x86.avx512.mask.pmovs.dw.512(<16 x i32> %x0, <16 x i16> %x1, i16 -1)
    %res1 = call <16 x i16> @llvm.x86.avx512.mask.pmovs.dw.512(<16 x i32> %x0, <16 x i16> %x1, i16 %x2)
    %res2 = call <16 x i16> @llvm.x86.avx512.mask.pmovs.dw.512(<16 x i32> %x0, <16 x i16> zeroinitializer, i16 %x2)
    %res3 = add <16 x i16> %res0, %res1
    %res4 = add <16 x i16> %res3, %res2
    ret <16 x i16> %res4
}

declare void @llvm.x86.avx512.mask.pmovs.dw.mem.512(i8* %ptr, <16 x i32>, i16)

define void @test_int_x86_avx512_mask_pmovs_dw_mem_512(i8* %ptr, <16 x i32> %x1, i16 %x2) {



    call void @llvm.x86.avx512.mask.pmovs.dw.mem.512(i8* %ptr, <16 x i32> %x1, i16 -1)
    call void @llvm.x86.avx512.mask.pmovs.dw.mem.512(i8* %ptr, <16 x i32> %x1, i16 %x2)
    ret void
}

declare <16 x i16> @llvm.x86.avx512.mask.pmovus.dw.512(<16 x i32>, <16 x i16>, i16)

define <16 x i16>@test_int_x86_avx512_mask_pmovus_dw_512(<16 x i32> %x0, <16 x i16> %x1, i16 %x2) {




    %res0 = call <16 x i16> @llvm.x86.avx512.mask.pmovus.dw.512(<16 x i32> %x0, <16 x i16> %x1, i16 -1)
    %res1 = call <16 x i16> @llvm.x86.avx512.mask.pmovus.dw.512(<16 x i32> %x0, <16 x i16> %x1, i16 %x2)
    %res2 = call <16 x i16> @llvm.x86.avx512.mask.pmovus.dw.512(<16 x i32> %x0, <16 x i16> zeroinitializer, i16 %x2)
    %res3 = add <16 x i16> %res0, %res1
    %res4 = add <16 x i16> %res3, %res2
    ret <16 x i16> %res4
}

declare void @llvm.x86.avx512.mask.pmovus.dw.mem.512(i8* %ptr, <16 x i32>, i16)

define void @test_int_x86_avx512_mask_pmovus_dw_mem_512(i8* %ptr, <16 x i32> %x1, i16 %x2) {



    call void @llvm.x86.avx512.mask.pmovus.dw.mem.512(i8* %ptr, <16 x i32> %x1, i16 -1)
    call void @llvm.x86.avx512.mask.pmovus.dw.mem.512(i8* %ptr, <16 x i32> %x1, i16 %x2)
    ret void
}

declare <8 x double> @llvm.x86.avx512.mask.cvtdq2pd.512(<8 x i32>, <8 x double>, i8)

define <8 x double>@test_int_x86_avx512_mask_cvt_dq2pd_512(<8 x i32> %x0, <8 x double> %x1, i8 %x2) {








  %res = call <8 x double> @llvm.x86.avx512.mask.cvtdq2pd.512(<8 x i32> %x0, <8 x double> %x1, i8 %x2)
  %res1 = call <8 x double> @llvm.x86.avx512.mask.cvtdq2pd.512(<8 x i32> %x0, <8 x double> %x1, i8 -1)
  %res2 = fadd <8 x double> %res, %res1
  ret <8 x double> %res2
}

declare <16 x float> @llvm.x86.avx512.mask.cvtdq2ps.512(<16 x i32>, <16 x float>, i16, i32)

define <16 x float>@test_int_x86_avx512_mask_cvt_dq2ps_512(<16 x i32> %x0, <16 x float> %x1, i16 %x2) {







  %res = call <16 x float> @llvm.x86.avx512.mask.cvtdq2ps.512(<16 x i32> %x0, <16 x float> %x1, i16 %x2, i32 4)
  %res1 = call <16 x float> @llvm.x86.avx512.mask.cvtdq2ps.512(<16 x i32> %x0, <16 x float> %x1, i16 -1, i32 0)
  %res2 = fadd <16 x float> %res, %res1
  ret <16 x float> %res2
}

declare <8 x i32> @llvm.x86.avx512.mask.cvtpd2dq.512(<8 x double>, <8 x i32>, i8, i32)

define <8 x i32>@test_int_x86_avx512_mask_cvt_pd2dq_512(<8 x double> %x0, <8 x i32> %x1, i8 %x2) {








  %res = call <8 x i32> @llvm.x86.avx512.mask.cvtpd2dq.512(<8 x double> %x0, <8 x i32> %x1, i8 %x2, i32 4)
  %res1 = call <8 x i32> @llvm.x86.avx512.mask.cvtpd2dq.512(<8 x double> %x0, <8 x i32> %x1, i8 -1, i32 0)
  %res2 = add <8 x i32> %res, %res1
  ret <8 x i32> %res2
}

declare <8 x float> @llvm.x86.avx512.mask.cvtpd2ps.512(<8 x double>, <8 x float>, i8, i32)

define <8 x float>@test_int_x86_avx512_mask_cvt_pd2ps_512(<8 x double> %x0, <8 x float> %x1, i8 %x2) {








  %res = call <8 x float> @llvm.x86.avx512.mask.cvtpd2ps.512(<8 x double> %x0, <8 x float> %x1, i8 %x2, i32 4)
  %res1 = call <8 x float> @llvm.x86.avx512.mask.cvtpd2ps.512(<8 x double> %x0, <8 x float> %x1, i8 -1, i32 2)
  %res2 = fadd <8 x float> %res, %res1
  ret <8 x float> %res2
}

declare <8 x i32> @llvm.x86.avx512.mask.cvtpd2udq.512(<8 x double>, <8 x i32>, i8, i32)

define <8 x i32>@test_int_x86_avx512_mask_cvt_pd2udq_512(<8 x double> %x0, <8 x i32> %x1, i8 %x2) {








  %res = call <8 x i32> @llvm.x86.avx512.mask.cvtpd2udq.512(<8 x double> %x0, <8 x i32> %x1, i8 %x2, i32 2)
  %res1 = call <8 x i32> @llvm.x86.avx512.mask.cvtpd2udq.512(<8 x double> %x0, <8 x i32> %x1, i8 -1, i32 0)
  %res2 = add <8 x i32> %res, %res1
  ret <8 x i32> %res2
}

declare <16 x i32> @llvm.x86.avx512.mask.cvtps2dq.512(<16 x float>, <16 x i32>, i16, i32)

define <16 x i32>@test_int_x86_avx512_mask_cvt_ps2dq_512(<16 x float> %x0, <16 x i32> %x1, i16 %x2) {







  %res = call <16 x i32> @llvm.x86.avx512.mask.cvtps2dq.512(<16 x float> %x0, <16 x i32> %x1, i16 %x2, i32 2)
  %res1 = call <16 x i32> @llvm.x86.avx512.mask.cvtps2dq.512(<16 x float> %x0, <16 x i32> %x1, i16 -1, i32 0)
  %res2 = add <16 x i32> %res, %res1
  ret <16 x i32> %res2
}

declare <8 x double> @llvm.x86.avx512.mask.cvtps2pd.512(<8 x float>, <8 x double>, i8, i32)

define <8 x double>@test_int_x86_avx512_mask_cvt_ps2pd_512(<8 x float> %x0, <8 x double> %x1, i8 %x2) {








  %res = call <8 x double> @llvm.x86.avx512.mask.cvtps2pd.512(<8 x float> %x0, <8 x double> %x1, i8 %x2, i32 4)
  %res1 = call <8 x double> @llvm.x86.avx512.mask.cvtps2pd.512(<8 x float> %x0, <8 x double> %x1, i8 -1, i32 8)
  %res2 = fadd <8 x double> %res, %res1
  ret <8 x double> %res2
}

declare <16 x i32> @llvm.x86.avx512.mask.cvtps2udq.512(<16 x float>, <16 x i32>, i16, i32)

define <16 x i32>@test_int_x86_avx512_mask_cvt_ps2udq_512(<16 x float> %x0, <16 x i32> %x1, i16 %x2) {







  %res = call <16 x i32> @llvm.x86.avx512.mask.cvtps2udq.512(<16 x float> %x0, <16 x i32> %x1, i16 %x2, i32 2)
  %res1 = call <16 x i32> @llvm.x86.avx512.mask.cvtps2udq.512(<16 x float> %x0, <16 x i32> %x1, i16 -1, i32 0)
  %res2 = add <16 x i32> %res, %res1
  ret <16 x i32> %res2
}

declare <8 x i32> @llvm.x86.avx512.mask.cvttpd2dq.512(<8 x double>, <8 x i32>, i8, i32)

define <8 x i32>@test_int_x86_avx512_mask_cvtt_pd2dq_512(<8 x double> %x0, <8 x i32> %x1, i8 %x2) {








  %res = call <8 x i32> @llvm.x86.avx512.mask.cvttpd2dq.512(<8 x double> %x0, <8 x i32> %x1, i8 %x2, i32 4)
  %res1 = call <8 x i32> @llvm.x86.avx512.mask.cvttpd2dq.512(<8 x double> %x0, <8 x i32> %x1, i8 -1, i32 8)
  %res2 = add <8 x i32> %res, %res1
  ret <8 x i32> %res2
}

declare <8 x double> @llvm.x86.avx512.mask.cvtudq2pd.512(<8 x i32>, <8 x double>, i8)

define <8 x double>@test_int_x86_avx512_mask_cvt_udq2pd_512(<8 x i32> %x0, <8 x double> %x1, i8 %x2) {








  %res = call <8 x double> @llvm.x86.avx512.mask.cvtudq2pd.512(<8 x i32> %x0, <8 x double> %x1, i8 %x2)
  %res1 = call <8 x double> @llvm.x86.avx512.mask.cvtudq2pd.512(<8 x i32> %x0, <8 x double> %x1, i8 -1)
  %res2 = fadd <8 x double> %res, %res1
  ret <8 x double> %res2
}


declare <16 x float> @llvm.x86.avx512.mask.cvtudq2ps.512(<16 x i32>, <16 x float>, i16, i32)

define <16 x float>@test_int_x86_avx512_mask_cvt_udq2ps_512(<16 x i32> %x0, <16 x float> %x1, i16 %x2) {







  %res = call <16 x float> @llvm.x86.avx512.mask.cvtudq2ps.512(<16 x i32> %x0, <16 x float> %x1, i16 %x2, i32 4)
  %res1 = call <16 x float> @llvm.x86.avx512.mask.cvtudq2ps.512(<16 x i32> %x0, <16 x float> %x1, i16 -1, i32 0)
  %res2 = fadd <16 x float> %res, %res1
  ret <16 x float> %res2
}

declare <8 x i32> @llvm.x86.avx512.mask.cvttpd2udq.512(<8 x double>, <8 x i32>, i8, i32)

define <8 x i32>@test_int_x86_avx512_mask_cvtt_pd2udq_512(<8 x double> %x0, <8 x i32> %x1, i8 %x2) {








  %res = call <8 x i32> @llvm.x86.avx512.mask.cvttpd2udq.512(<8 x double> %x0, <8 x i32> %x1, i8 %x2, i32 4)
  %res1 = call <8 x i32> @llvm.x86.avx512.mask.cvttpd2udq.512(<8 x double> %x0, <8 x i32> %x1, i8 -1, i32 8)
  %res2 = add <8 x i32> %res, %res1
  ret <8 x i32> %res2
}

declare <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float>, <16 x i32>, i16, i32)

define <16 x i32>@test_int_x86_avx512_mask_cvtt_ps2dq_512(<16 x float> %x0, <16 x i32> %x1, i16 %x2) {







  %res = call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %x0, <16 x i32> %x1, i16 %x2, i32 4)
  %res1 = call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %x0, <16 x i32> %x1, i16 -1, i32 8)
  %res2 = add <16 x i32> %res, %res1
  ret <16 x i32> %res2
}

declare <16 x i32> @llvm.x86.avx512.mask.cvttps2udq.512(<16 x float>, <16 x i32>, i16, i32)

define <16 x i32>@test_int_x86_avx512_mask_cvtt_ps2udq_512(<16 x float> %x0, <16 x i32> %x1, i16 %x2) {







  %res = call <16 x i32> @llvm.x86.avx512.mask.cvttps2udq.512(<16 x float> %x0, <16 x i32> %x1, i16 %x2, i32 4)
  %res1 = call <16 x i32> @llvm.x86.avx512.mask.cvttps2udq.512(<16 x float> %x0, <16 x i32> %x1, i16 -1, i32 8)
  %res2 = add <16 x i32> %res, %res1
  ret <16 x i32> %res2
}


declare <4 x float> @llvm.x86.avx512.mask.scalef.ss(<4 x float>, <4 x float>,<4 x float>, i8, i32)





define <4 x float>@test_int_x86_avx512_mask_scalef_ss(<4 x float> %x0, <4 x float> %x1, <4 x float> %x3, i8 %x4) {
  %res = call <4 x float> @llvm.x86.avx512.mask.scalef.ss(<4 x float> %x0, <4 x float> %x1, <4 x float> %x3, i8 %x4, i32 4)
  %res1 = call <4 x float> @llvm.x86.avx512.mask.scalef.ss(<4 x float> %x0, <4 x float> %x1, <4 x float> %x3, i8 -1, i32 8)
  %res2 = fadd <4 x float> %res, %res1
  ret <4 x float> %res2
}

declare <2 x double> @llvm.x86.avx512.mask.scalef.sd(<2 x double>, <2 x double>,<2 x double>, i8, i32)





define <2 x double>@test_int_x86_avx512_mask_scalef_sd(<2 x double> %x0, <2 x double> %x1, <2 x double> %x3, i8 %x4) {
  %res = call <2 x double> @llvm.x86.avx512.mask.scalef.sd(<2 x double> %x0, <2 x double> %x1, <2 x double> %x3, i8 %x4, i32 4)
  %res1 = call <2 x double> @llvm.x86.avx512.mask.scalef.sd(<2 x double> %x0, <2 x double> %x1, <2 x double> %x3, i8 -1, i32 8)
  %res2 = fadd <2 x double> %res, %res1
  ret <2 x double> %res2
}

declare <4 x float> @llvm.x86.avx512.mask.getexp.ss(<4 x float>, <4 x float>, <4 x float>, i8, i32) nounwind readnone

define <4 x float> @test_getexp_ss(<4 x float> %a0, <4 x float> %a1, <4 x float> %a2, i8 %mask) {













  %res0 = call <4 x float> @llvm.x86.avx512.mask.getexp.ss(<4 x float>%a0, <4 x float> %a1, <4 x float> %a2, i8 %mask, i32 4)
  %res1 = call <4 x float> @llvm.x86.avx512.mask.getexp.ss(<4 x float>%a0, <4 x float> %a1, <4 x float> %a2, i8 %mask, i32 8)
  %res2 = call <4 x float> @llvm.x86.avx512.mask.getexp.ss(<4 x float>%a0, <4 x float> %a1, <4 x float> zeroinitializer, i8 %mask, i32 8)
  %res3 = call <4 x float> @llvm.x86.avx512.mask.getexp.ss(<4 x float>%a0, <4 x float> %a1, <4 x float> zeroinitializer, i8 -1, i32 8)

  %res.1 = fadd <4 x float> %res0, %res1
  %res.2 = fadd <4 x float> %res2, %res3
  %res   = fadd <4 x float> %res.1, %res.2
  ret <4 x float> %res
}

declare <2 x double> @llvm.x86.avx512.mask.getexp.sd(<2 x double>, <2 x double>, <2 x double>, i8, i32) nounwind readnone

define <2 x double> @test_getexp_sd(<2 x double> %a0, <2 x double> %a1, <2 x double> %a2, i8 %mask) {













  %res0 = call <2 x double> @llvm.x86.avx512.mask.getexp.sd(<2 x double>%a0, <2 x double> %a1, <2 x double> %a2, i8 %mask, i32 4)
  %res1 = call <2 x double> @llvm.x86.avx512.mask.getexp.sd(<2 x double>%a0, <2 x double> %a1, <2 x double> %a2, i8 %mask, i32 8)
  %res2 = call <2 x double> @llvm.x86.avx512.mask.getexp.sd(<2 x double>%a0, <2 x double> %a1, <2 x double> zeroinitializer, i8 %mask, i32 8)
  %res3 = call <2 x double> @llvm.x86.avx512.mask.getexp.sd(<2 x double>%a0, <2 x double> %a1, <2 x double> zeroinitializer, i8 -1, i32 4)

  %res.1 = fadd <2 x double> %res0, %res1
  %res.2 = fadd <2 x double> %res2, %res3
  %res   = fadd <2 x double> %res.1, %res.2
  ret <2 x double> %res
}

