


define <2 x double> @test_x86_sse2_add_sd(<2 x double> %a0, <2 x double> %a1) {
  
  %res = call <2 x double> @llvm.x86.sse2.add.sd(<2 x double> %a0, <2 x double> %a1) 
  ret <2 x double> %res
}
declare <2 x double> @llvm.x86.sse2.add.sd(<2 x double>, <2 x double>) nounwind readnone


define <2 x double> @test_x86_sse2_cmp_pd(<2 x double> %a0, <2 x double> %a1) {
  
  %res = call <2 x double> @llvm.x86.sse2.cmp.pd(<2 x double> %a0, <2 x double> %a1, i8 7) 
  ret <2 x double> %res
}
declare <2 x double> @llvm.x86.sse2.cmp.pd(<2 x double>, <2 x double>, i8) nounwind readnone


define <2 x double> @test_x86_sse2_cmp_sd(<2 x double> %a0, <2 x double> %a1) {
  
  %res = call <2 x double> @llvm.x86.sse2.cmp.sd(<2 x double> %a0, <2 x double> %a1, i8 7) 
  ret <2 x double> %res
}
declare <2 x double> @llvm.x86.sse2.cmp.sd(<2 x double>, <2 x double>, i8) nounwind readnone


define i32 @test_x86_sse2_comieq_sd(<2 x double> %a0, <2 x double> %a1) {
  
  
  
  %res = call i32 @llvm.x86.sse2.comieq.sd(<2 x double> %a0, <2 x double> %a1) 
  ret i32 %res
}
declare i32 @llvm.x86.sse2.comieq.sd(<2 x double>, <2 x double>) nounwind readnone


define i32 @test_x86_sse2_comige_sd(<2 x double> %a0, <2 x double> %a1) {
  
  
  
  %res = call i32 @llvm.x86.sse2.comige.sd(<2 x double> %a0, <2 x double> %a1) 
  ret i32 %res
}
declare i32 @llvm.x86.sse2.comige.sd(<2 x double>, <2 x double>) nounwind readnone


define i32 @test_x86_sse2_comigt_sd(<2 x double> %a0, <2 x double> %a1) {
  
  
  
  %res = call i32 @llvm.x86.sse2.comigt.sd(<2 x double> %a0, <2 x double> %a1) 
  ret i32 %res
}
declare i32 @llvm.x86.sse2.comigt.sd(<2 x double>, <2 x double>) nounwind readnone


define i32 @test_x86_sse2_comile_sd(<2 x double> %a0, <2 x double> %a1) {
  
  
  
  %res = call i32 @llvm.x86.sse2.comile.sd(<2 x double> %a0, <2 x double> %a1) 
  ret i32 %res
}
declare i32 @llvm.x86.sse2.comile.sd(<2 x double>, <2 x double>) nounwind readnone


define i32 @test_x86_sse2_comilt_sd(<2 x double> %a0, <2 x double> %a1) {
  
  
  
  %res = call i32 @llvm.x86.sse2.comilt.sd(<2 x double> %a0, <2 x double> %a1) 
  ret i32 %res
}
declare i32 @llvm.x86.sse2.comilt.sd(<2 x double>, <2 x double>) nounwind readnone


define i32 @test_x86_sse2_comineq_sd(<2 x double> %a0, <2 x double> %a1) {
  
  
  
  %res = call i32 @llvm.x86.sse2.comineq.sd(<2 x double> %a0, <2 x double> %a1) 
  ret i32 %res
}
declare i32 @llvm.x86.sse2.comineq.sd(<2 x double>, <2 x double>) nounwind readnone


define <2 x double> @test_x86_sse2_cvtdq2pd(<4 x i32> %a0) {
  
  %res = call <2 x double> @llvm.x86.sse2.cvtdq2pd(<4 x i32> %a0) 
  ret <2 x double> %res
}
declare <2 x double> @llvm.x86.sse2.cvtdq2pd(<4 x i32>) nounwind readnone


define <4 x float> @test_x86_sse2_cvtdq2ps(<4 x i32> %a0) {
  
  %res = call <4 x float> @llvm.x86.sse2.cvtdq2ps(<4 x i32> %a0) 
  ret <4 x float> %res
}
declare <4 x float> @llvm.x86.sse2.cvtdq2ps(<4 x i32>) nounwind readnone


define <4 x i32> @test_x86_sse2_cvtpd2dq(<2 x double> %a0) {
  
  %res = call <4 x i32> @llvm.x86.sse2.cvtpd2dq(<2 x double> %a0) 
  ret <4 x i32> %res
}
declare <4 x i32> @llvm.x86.sse2.cvtpd2dq(<2 x double>) nounwind readnone


define <4 x float> @test_x86_sse2_cvtpd2ps(<2 x double> %a0) {
  
  %res = call <4 x float> @llvm.x86.sse2.cvtpd2ps(<2 x double> %a0) 
  ret <4 x float> %res
}
declare <4 x float> @llvm.x86.sse2.cvtpd2ps(<2 x double>) nounwind readnone


define <4 x i32> @test_x86_sse2_cvtps2dq(<4 x float> %a0) {
  
  %res = call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %a0) 
  ret <4 x i32> %res
}
declare <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float>) nounwind readnone


define <2 x double> @test_x86_sse2_cvtps2pd(<4 x float> %a0) {
  
  %res = call <2 x double> @llvm.x86.sse2.cvtps2pd(<4 x float> %a0) 
  ret <2 x double> %res
}
declare <2 x double> @llvm.x86.sse2.cvtps2pd(<4 x float>) nounwind readnone


define i32 @test_x86_sse2_cvtsd2si(<2 x double> %a0) {
  
  %res = call i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %a0) 
  ret i32 %res
}
declare i32 @llvm.x86.sse2.cvtsd2si(<2 x double>) nounwind readnone


define <4 x float> @test_x86_sse2_cvtsd2ss(<4 x float> %a0, <2 x double> %a1) {
  
  
  %res = call <4 x float> @llvm.x86.sse2.cvtsd2ss(<4 x float> %a0, <2 x double> %a1) 
  ret <4 x float> %res
}
declare <4 x float> @llvm.x86.sse2.cvtsd2ss(<4 x float>, <2 x double>) nounwind readnone


define <2 x double> @test_x86_sse2_cvtsi2sd(<2 x double> %a0) {
  
  
  %res = call <2 x double> @llvm.x86.sse2.cvtsi2sd(<2 x double> %a0, i32 7) 
  ret <2 x double> %res
}
declare <2 x double> @llvm.x86.sse2.cvtsi2sd(<2 x double>, i32) nounwind readnone


define <2 x double> @test_x86_sse2_cvtss2sd(<2 x double> %a0, <4 x float> %a1) {
  
  %res = call <2 x double> @llvm.x86.sse2.cvtss2sd(<2 x double> %a0, <4 x float> %a1) 
  ret <2 x double> %res
}
declare <2 x double> @llvm.x86.sse2.cvtss2sd(<2 x double>, <4 x float>) nounwind readnone


define <4 x i32> @test_x86_sse2_cvttpd2dq(<2 x double> %a0) {
  
  %res = call <4 x i32> @llvm.x86.sse2.cvttpd2dq(<2 x double> %a0) 
  ret <4 x i32> %res
}
declare <4 x i32> @llvm.x86.sse2.cvttpd2dq(<2 x double>) nounwind readnone


define <4 x i32> @test_x86_sse2_cvttps2dq(<4 x float> %a0) {
  
  %res = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %a0) 
  ret <4 x i32> %res
}
declare <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float>) nounwind readnone


define i32 @test_x86_sse2_cvttsd2si(<2 x double> %a0) {
  
  %res = call i32 @llvm.x86.sse2.cvttsd2si(<2 x double> %a0) 
  ret i32 %res
}
declare i32 @llvm.x86.sse2.cvttsd2si(<2 x double>) nounwind readnone


define <2 x double> @test_x86_sse2_div_sd(<2 x double> %a0, <2 x double> %a1) {
  
  %res = call <2 x double> @llvm.x86.sse2.div.sd(<2 x double> %a0, <2 x double> %a1) 
  ret <2 x double> %res
}
declare <2 x double> @llvm.x86.sse2.div.sd(<2 x double>, <2 x double>) nounwind readnone



define <2 x double> @test_x86_sse2_max_pd(<2 x double> %a0, <2 x double> %a1) {
  
  %res = call <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %a0, <2 x double> %a1) 
  ret <2 x double> %res
}
declare <2 x double> @llvm.x86.sse2.max.pd(<2 x double>, <2 x double>) nounwind readnone


define <2 x double> @test_x86_sse2_max_sd(<2 x double> %a0, <2 x double> %a1) {
  
  %res = call <2 x double> @llvm.x86.sse2.max.sd(<2 x double> %a0, <2 x double> %a1) 
  ret <2 x double> %res
}
declare <2 x double> @llvm.x86.sse2.max.sd(<2 x double>, <2 x double>) nounwind readnone


define <2 x double> @test_x86_sse2_min_pd(<2 x double> %a0, <2 x double> %a1) {
  
  %res = call <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %a0, <2 x double> %a1) 
  ret <2 x double> %res
}
declare <2 x double> @llvm.x86.sse2.min.pd(<2 x double>, <2 x double>) nounwind readnone


define <2 x double> @test_x86_sse2_min_sd(<2 x double> %a0, <2 x double> %a1) {
  
  %res = call <2 x double> @llvm.x86.sse2.min.sd(<2 x double> %a0, <2 x double> %a1) 
  ret <2 x double> %res
}
declare <2 x double> @llvm.x86.sse2.min.sd(<2 x double>, <2 x double>) nounwind readnone


define i32 @test_x86_sse2_movmsk_pd(<2 x double> %a0) {
  
  %res = call i32 @llvm.x86.sse2.movmsk.pd(<2 x double> %a0) 
  ret i32 %res
}
declare i32 @llvm.x86.sse2.movmsk.pd(<2 x double>) nounwind readnone




define <2 x double> @test_x86_sse2_mul_sd(<2 x double> %a0, <2 x double> %a1) {
  
  
  %res = call <2 x double> @llvm.x86.sse2.mul.sd(<2 x double> %a0, <2 x double> %a1) 
  ret <2 x double> %res
}
declare <2 x double> @llvm.x86.sse2.mul.sd(<2 x double>, <2 x double>) nounwind readnone


define <8 x i16> @test_x86_sse2_packssdw_128(<4 x i32> %a0, <4 x i32> %a1) {
  
  %res = call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %a0, <4 x i32> %a1) 
  ret <8 x i16> %res
}
declare <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32>, <4 x i32>) nounwind readnone


define <16 x i8> @test_x86_sse2_packsswb_128(<8 x i16> %a0, <8 x i16> %a1) {
  
  %res = call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %a0, <8 x i16> %a1) 
  ret <16 x i8> %res
}
declare <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16>, <8 x i16>) nounwind readnone


define <16 x i8> @test_x86_sse2_packuswb_128(<8 x i16> %a0, <8 x i16> %a1) {
  
  %res = call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %a0, <8 x i16> %a1) 
  ret <16 x i8> %res
}
declare <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16>, <8 x i16>) nounwind readnone


define <16 x i8> @test_x86_sse2_padds_b(<16 x i8> %a0, <16 x i8> %a1) {
  
  %res = call <16 x i8> @llvm.x86.sse2.padds.b(<16 x i8> %a0, <16 x i8> %a1) 
  ret <16 x i8> %res
}
declare <16 x i8> @llvm.x86.sse2.padds.b(<16 x i8>, <16 x i8>) nounwind readnone


define <8 x i16> @test_x86_sse2_padds_w(<8 x i16> %a0, <8 x i16> %a1) {
  
  %res = call <8 x i16> @llvm.x86.sse2.padds.w(<8 x i16> %a0, <8 x i16> %a1) 
  ret <8 x i16> %res
}
declare <8 x i16> @llvm.x86.sse2.padds.w(<8 x i16>, <8 x i16>) nounwind readnone


define <16 x i8> @test_x86_sse2_paddus_b(<16 x i8> %a0, <16 x i8> %a1) {
  
  %res = call <16 x i8> @llvm.x86.sse2.paddus.b(<16 x i8> %a0, <16 x i8> %a1) 
  ret <16 x i8> %res
}
declare <16 x i8> @llvm.x86.sse2.paddus.b(<16 x i8>, <16 x i8>) nounwind readnone


define <8 x i16> @test_x86_sse2_paddus_w(<8 x i16> %a0, <8 x i16> %a1) {
  
  %res = call <8 x i16> @llvm.x86.sse2.paddus.w(<8 x i16> %a0, <8 x i16> %a1) 
  ret <8 x i16> %res
}
declare <8 x i16> @llvm.x86.sse2.paddus.w(<8 x i16>, <8 x i16>) nounwind readnone


define <16 x i8> @test_x86_sse2_pavg_b(<16 x i8> %a0, <16 x i8> %a1) {
  
  %res = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %a0, <16 x i8> %a1) 
  ret <16 x i8> %res
}
declare <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8>, <16 x i8>) nounwind readnone


define <8 x i16> @test_x86_sse2_pavg_w(<8 x i16> %a0, <8 x i16> %a1) {
  
  %res = call <8 x i16> @llvm.x86.sse2.pavg.w(<8 x i16> %a0, <8 x i16> %a1) 
  ret <8 x i16> %res
}
declare <8 x i16> @llvm.x86.sse2.pavg.w(<8 x i16>, <8 x i16>) nounwind readnone


define <4 x i32> @test_x86_sse2_pmadd_wd(<8 x i16> %a0, <8 x i16> %a1) {
  
  %res = call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %a0, <8 x i16> %a1) 
  ret <4 x i32> %res
}
declare <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16>, <8 x i16>) nounwind readnone


define <8 x i16> @test_x86_sse2_pmaxs_w(<8 x i16> %a0, <8 x i16> %a1) {
  
  %res = call <8 x i16> @llvm.x86.sse2.pmaxs.w(<8 x i16> %a0, <8 x i16> %a1) 
  ret <8 x i16> %res
}
declare <8 x i16> @llvm.x86.sse2.pmaxs.w(<8 x i16>, <8 x i16>) nounwind readnone


define <16 x i8> @test_x86_sse2_pmaxu_b(<16 x i8> %a0, <16 x i8> %a1) {
  
  %res = call <16 x i8> @llvm.x86.sse2.pmaxu.b(<16 x i8> %a0, <16 x i8> %a1) 
  ret <16 x i8> %res
}
declare <16 x i8> @llvm.x86.sse2.pmaxu.b(<16 x i8>, <16 x i8>) nounwind readnone


define <8 x i16> @test_x86_sse2_pmins_w(<8 x i16> %a0, <8 x i16> %a1) {
  
  %res = call <8 x i16> @llvm.x86.sse2.pmins.w(<8 x i16> %a0, <8 x i16> %a1) 
  ret <8 x i16> %res
}
declare <8 x i16> @llvm.x86.sse2.pmins.w(<8 x i16>, <8 x i16>) nounwind readnone


define <16 x i8> @test_x86_sse2_pminu_b(<16 x i8> %a0, <16 x i8> %a1) {
  
  %res = call <16 x i8> @llvm.x86.sse2.pminu.b(<16 x i8> %a0, <16 x i8> %a1) 
  ret <16 x i8> %res
}
declare <16 x i8> @llvm.x86.sse2.pminu.b(<16 x i8>, <16 x i8>) nounwind readnone


define i32 @test_x86_sse2_pmovmskb_128(<16 x i8> %a0) {
  
  %res = call i32 @llvm.x86.sse2.pmovmskb.128(<16 x i8> %a0) 
  ret i32 %res
}
declare i32 @llvm.x86.sse2.pmovmskb.128(<16 x i8>) nounwind readnone


define <8 x i16> @test_x86_sse2_pmulh_w(<8 x i16> %a0, <8 x i16> %a1) {
  
  %res = call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %a0, <8 x i16> %a1) 
  ret <8 x i16> %res
}
declare <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16>, <8 x i16>) nounwind readnone


define <8 x i16> @test_x86_sse2_pmulhu_w(<8 x i16> %a0, <8 x i16> %a1) {
  
  %res = call <8 x i16> @llvm.x86.sse2.pmulhu.w(<8 x i16> %a0, <8 x i16> %a1) 
  ret <8 x i16> %res
}
declare <8 x i16> @llvm.x86.sse2.pmulhu.w(<8 x i16>, <8 x i16>) nounwind readnone


define <2 x i64> @test_x86_sse2_pmulu_dq(<4 x i32> %a0, <4 x i32> %a1) {
  
  %res = call <2 x i64> @llvm.x86.sse2.pmulu.dq(<4 x i32> %a0, <4 x i32> %a1) 
  ret <2 x i64> %res
}
declare <2 x i64> @llvm.x86.sse2.pmulu.dq(<4 x i32>, <4 x i32>) nounwind readnone


define <2 x i64> @test_x86_sse2_psad_bw(<16 x i8> %a0, <16 x i8> %a1) {
  
  %res = call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %a0, <16 x i8> %a1) 
  ret <2 x i64> %res
}
declare <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8>, <16 x i8>) nounwind readnone


define <4 x i32> @test_x86_sse2_psll_d(<4 x i32> %a0, <4 x i32> %a1) {
  
  %res = call <4 x i32> @llvm.x86.sse2.psll.d(<4 x i32> %a0, <4 x i32> %a1) 
  ret <4 x i32> %res
}
declare <4 x i32> @llvm.x86.sse2.psll.d(<4 x i32>, <4 x i32>) nounwind readnone


define <2 x i64> @test_x86_sse2_psll_q(<2 x i64> %a0, <2 x i64> %a1) {
  
  %res = call <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %a0, <2 x i64> %a1) 
  ret <2 x i64> %res
}
declare <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64>, <2 x i64>) nounwind readnone


define <8 x i16> @test_x86_sse2_psll_w(<8 x i16> %a0, <8 x i16> %a1) {
  
  %res = call <8 x i16> @llvm.x86.sse2.psll.w(<8 x i16> %a0, <8 x i16> %a1) 
  ret <8 x i16> %res
}
declare <8 x i16> @llvm.x86.sse2.psll.w(<8 x i16>, <8 x i16>) nounwind readnone


define <4 x i32> @test_x86_sse2_pslli_d(<4 x i32> %a0) {
  
  %res = call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %a0, i32 7) 
  ret <4 x i32> %res
}
declare <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32>, i32) nounwind readnone


define <2 x i64> @test_x86_sse2_pslli_q(<2 x i64> %a0) {
  
  %res = call <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64> %a0, i32 7) 
  ret <2 x i64> %res
}
declare <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64>, i32) nounwind readnone


define <8 x i16> @test_x86_sse2_pslli_w(<8 x i16> %a0) {
  
  %res = call <8 x i16> @llvm.x86.sse2.pslli.w(<8 x i16> %a0, i32 7) 
  ret <8 x i16> %res
}
declare <8 x i16> @llvm.x86.sse2.pslli.w(<8 x i16>, i32) nounwind readnone


define <4 x i32> @test_x86_sse2_psra_d(<4 x i32> %a0, <4 x i32> %a1) {
  
  %res = call <4 x i32> @llvm.x86.sse2.psra.d(<4 x i32> %a0, <4 x i32> %a1) 
  ret <4 x i32> %res
}
declare <4 x i32> @llvm.x86.sse2.psra.d(<4 x i32>, <4 x i32>) nounwind readnone


define <8 x i16> @test_x86_sse2_psra_w(<8 x i16> %a0, <8 x i16> %a1) {
  
  %res = call <8 x i16> @llvm.x86.sse2.psra.w(<8 x i16> %a0, <8 x i16> %a1) 
  ret <8 x i16> %res
}
declare <8 x i16> @llvm.x86.sse2.psra.w(<8 x i16>, <8 x i16>) nounwind readnone


define <4 x i32> @test_x86_sse2_psrai_d(<4 x i32> %a0) {
  
  %res = call <4 x i32> @llvm.x86.sse2.psrai.d(<4 x i32> %a0, i32 7) 
  ret <4 x i32> %res
}
declare <4 x i32> @llvm.x86.sse2.psrai.d(<4 x i32>, i32) nounwind readnone


define <8 x i16> @test_x86_sse2_psrai_w(<8 x i16> %a0) {
  
  %res = call <8 x i16> @llvm.x86.sse2.psrai.w(<8 x i16> %a0, i32 7) 
  ret <8 x i16> %res
}
declare <8 x i16> @llvm.x86.sse2.psrai.w(<8 x i16>, i32) nounwind readnone


define <4 x i32> @test_x86_sse2_psrl_d(<4 x i32> %a0, <4 x i32> %a1) {
  
  %res = call <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32> %a0, <4 x i32> %a1) 
  ret <4 x i32> %res
}
declare <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32>, <4 x i32>) nounwind readnone


define <2 x i64> @test_x86_sse2_psrl_q(<2 x i64> %a0, <2 x i64> %a1) {
  
  %res = call <2 x i64> @llvm.x86.sse2.psrl.q(<2 x i64> %a0, <2 x i64> %a1) 
  ret <2 x i64> %res
}
declare <2 x i64> @llvm.x86.sse2.psrl.q(<2 x i64>, <2 x i64>) nounwind readnone


define <8 x i16> @test_x86_sse2_psrl_w(<8 x i16> %a0, <8 x i16> %a1) {
  
  %res = call <8 x i16> @llvm.x86.sse2.psrl.w(<8 x i16> %a0, <8 x i16> %a1) 
  ret <8 x i16> %res
}
declare <8 x i16> @llvm.x86.sse2.psrl.w(<8 x i16>, <8 x i16>) nounwind readnone


define <4 x i32> @test_x86_sse2_psrli_d(<4 x i32> %a0) {
  
  %res = call <4 x i32> @llvm.x86.sse2.psrli.d(<4 x i32> %a0, i32 7) 
  ret <4 x i32> %res
}
declare <4 x i32> @llvm.x86.sse2.psrli.d(<4 x i32>, i32) nounwind readnone


define <2 x i64> @test_x86_sse2_psrli_q(<2 x i64> %a0) {
  
  %res = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %a0, i32 7) 
  ret <2 x i64> %res
}
declare <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64>, i32) nounwind readnone


define <8 x i16> @test_x86_sse2_psrli_w(<8 x i16> %a0) {
  
  %res = call <8 x i16> @llvm.x86.sse2.psrli.w(<8 x i16> %a0, i32 7) 
  ret <8 x i16> %res
}
declare <8 x i16> @llvm.x86.sse2.psrli.w(<8 x i16>, i32) nounwind readnone


define <16 x i8> @test_x86_sse2_psubs_b(<16 x i8> %a0, <16 x i8> %a1) {
  
  %res = call <16 x i8> @llvm.x86.sse2.psubs.b(<16 x i8> %a0, <16 x i8> %a1) 
  ret <16 x i8> %res
}
declare <16 x i8> @llvm.x86.sse2.psubs.b(<16 x i8>, <16 x i8>) nounwind readnone


define <8 x i16> @test_x86_sse2_psubs_w(<8 x i16> %a0, <8 x i16> %a1) {
  
  %res = call <8 x i16> @llvm.x86.sse2.psubs.w(<8 x i16> %a0, <8 x i16> %a1) 
  ret <8 x i16> %res
}
declare <8 x i16> @llvm.x86.sse2.psubs.w(<8 x i16>, <8 x i16>) nounwind readnone


define <16 x i8> @test_x86_sse2_psubus_b(<16 x i8> %a0, <16 x i8> %a1) {
  
  %res = call <16 x i8> @llvm.x86.sse2.psubus.b(<16 x i8> %a0, <16 x i8> %a1) 
  ret <16 x i8> %res
}
declare <16 x i8> @llvm.x86.sse2.psubus.b(<16 x i8>, <16 x i8>) nounwind readnone


define <8 x i16> @test_x86_sse2_psubus_w(<8 x i16> %a0, <8 x i16> %a1) {
  
  %res = call <8 x i16> @llvm.x86.sse2.psubus.w(<8 x i16> %a0, <8 x i16> %a1) 
  ret <8 x i16> %res
}
declare <8 x i16> @llvm.x86.sse2.psubus.w(<8 x i16>, <8 x i16>) nounwind readnone


define <2 x double> @test_x86_sse2_sqrt_pd(<2 x double> %a0) {
  
  %res = call <2 x double> @llvm.x86.sse2.sqrt.pd(<2 x double> %a0) 
  ret <2 x double> %res
}
declare <2 x double> @llvm.x86.sse2.sqrt.pd(<2 x double>) nounwind readnone


define <2 x double> @test_x86_sse2_sqrt_sd(<2 x double> %a0) {
  
  %res = call <2 x double> @llvm.x86.sse2.sqrt.sd(<2 x double> %a0) 
  ret <2 x double> %res
}
declare <2 x double> @llvm.x86.sse2.sqrt.sd(<2 x double>) nounwind readnone


define void @test_x86_sse2_storel_dq(i8* %a0, <4 x i32> %a1) {
  
  
  
  call void @llvm.x86.sse2.storel.dq(i8* %a0, <4 x i32> %a1)
  ret void
}
declare void @llvm.x86.sse2.storel.dq(i8*, <4 x i32>) nounwind


define void @test_x86_sse2_storeu_dq(i8* %a0, <16 x i8> %a1) {
  
  
  
  
  %a2 = add <16 x i8> %a1, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  call void @llvm.x86.sse2.storeu.dq(i8* %a0, <16 x i8> %a2)
  ret void
}
declare void @llvm.x86.sse2.storeu.dq(i8*, <16 x i8>) nounwind


define void @test_x86_sse2_storeu_pd(i8* %a0, <2 x double> %a1) {
  
  
  
  
  %a2 = fadd <2 x double> %a1, <double 0x0, double 0x4200000000000000>
  call void @llvm.x86.sse2.storeu.pd(i8* %a0, <2 x double> %a2)
  ret void
}
declare void @llvm.x86.sse2.storeu.pd(i8*, <2 x double>) nounwind


define <2 x double> @test_x86_sse2_sub_sd(<2 x double> %a0, <2 x double> %a1) {
  
  
  %res = call <2 x double> @llvm.x86.sse2.sub.sd(<2 x double> %a0, <2 x double> %a1) 
  ret <2 x double> %res
}
declare <2 x double> @llvm.x86.sse2.sub.sd(<2 x double>, <2 x double>) nounwind readnone


define i32 @test_x86_sse2_ucomieq_sd(<2 x double> %a0, <2 x double> %a1) {
  
  
  
  %res = call i32 @llvm.x86.sse2.ucomieq.sd(<2 x double> %a0, <2 x double> %a1) 
  ret i32 %res
}
declare i32 @llvm.x86.sse2.ucomieq.sd(<2 x double>, <2 x double>) nounwind readnone


define i32 @test_x86_sse2_ucomige_sd(<2 x double> %a0, <2 x double> %a1) {
  
  
  
  %res = call i32 @llvm.x86.sse2.ucomige.sd(<2 x double> %a0, <2 x double> %a1) 
  ret i32 %res
}
declare i32 @llvm.x86.sse2.ucomige.sd(<2 x double>, <2 x double>) nounwind readnone


define i32 @test_x86_sse2_ucomigt_sd(<2 x double> %a0, <2 x double> %a1) {
  
  
  
  %res = call i32 @llvm.x86.sse2.ucomigt.sd(<2 x double> %a0, <2 x double> %a1) 
  ret i32 %res
}
declare i32 @llvm.x86.sse2.ucomigt.sd(<2 x double>, <2 x double>) nounwind readnone


define i32 @test_x86_sse2_ucomile_sd(<2 x double> %a0, <2 x double> %a1) {
  
  
  
  %res = call i32 @llvm.x86.sse2.ucomile.sd(<2 x double> %a0, <2 x double> %a1) 
  ret i32 %res
}
declare i32 @llvm.x86.sse2.ucomile.sd(<2 x double>, <2 x double>) nounwind readnone


define i32 @test_x86_sse2_ucomilt_sd(<2 x double> %a0, <2 x double> %a1) {
  
  
  %res = call i32 @llvm.x86.sse2.ucomilt.sd(<2 x double> %a0, <2 x double> %a1) 
  ret i32 %res
}
declare i32 @llvm.x86.sse2.ucomilt.sd(<2 x double>, <2 x double>) nounwind readnone


define i32 @test_x86_sse2_ucomineq_sd(<2 x double> %a0, <2 x double> %a1) {
  
  
  
  %res = call i32 @llvm.x86.sse2.ucomineq.sd(<2 x double> %a0, <2 x double> %a1) 
  ret i32 %res
}
declare i32 @llvm.x86.sse2.ucomineq.sd(<2 x double>, <2 x double>) nounwind readnone

define void @test_x86_sse2_pause() {
  
  tail call void @llvm.x86.sse2.pause()
  ret void 
}
declare void @llvm.x86.sse2.pause() nounwind

define <4 x i32> @test_x86_sse2_pshuf_d(<4 x i32> %a) {


entry:
   %res = call <4 x i32> @llvm.x86.sse2.pshuf.d(<4 x i32> %a, i8 27) nounwind readnone
   ret <4 x i32> %res
}
declare <4 x i32> @llvm.x86.sse2.pshuf.d(<4 x i32>, i8) nounwind readnone

define <8 x i16> @test_x86_sse2_pshufl_w(<8 x i16> %a) {


entry:
   %res = call <8 x i16> @llvm.x86.sse2.pshufl.w(<8 x i16> %a, i8 27) nounwind readnone
   ret <8 x i16> %res
}
declare <8 x i16> @llvm.x86.sse2.pshufl.w(<8 x i16>, i8) nounwind readnone

define <8 x i16> @test_x86_sse2_pshufh_w(<8 x i16> %a) {


entry:
   %res = call <8 x i16> @llvm.x86.sse2.pshufh.w(<8 x i16> %a, i8 27) nounwind readnone
   ret <8 x i16> %res
}
declare <8 x i16> @llvm.x86.sse2.pshufh.w(<8 x i16>, i8) nounwind readnone
