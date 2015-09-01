

define <16 x i16> @test_x86_avx2_pblendw(<16 x i16> %a0, <16 x i16> %a1) {
  
  %res = call <16 x i16> @llvm.x86.avx2.pblendw(<16 x i16> %a0, <16 x i16> %a1, i32 7) 
  ret <16 x i16> %res
}
declare <16 x i16> @llvm.x86.avx2.pblendw(<16 x i16>, <16 x i16>, i32) nounwind readnone


define <4 x i32> @test_x86_avx2_pblendd_128(<4 x i32> %a0, <4 x i32> %a1) {
  
  %res = call <4 x i32> @llvm.x86.avx2.pblendd.128(<4 x i32> %a0, <4 x i32> %a1, i32 7) 
  ret <4 x i32> %res
}
declare <4 x i32> @llvm.x86.avx2.pblendd.128(<4 x i32>, <4 x i32>, i32) nounwind readnone


define <8 x i32> @test_x86_avx2_pblendd_256(<8 x i32> %a0, <8 x i32> %a1) {
  
  %res = call <8 x i32> @llvm.x86.avx2.pblendd.256(<8 x i32> %a0, <8 x i32> %a1, i32 7) 
  ret <8 x i32> %res
}
declare <8 x i32> @llvm.x86.avx2.pblendd.256(<8 x i32>, <8 x i32>, i32) nounwind readnone


define <16 x i16> @test_x86_avx2_mpsadbw(<32 x i8> %a0, <32 x i8> %a1) {
  
  %res = call <16 x i16> @llvm.x86.avx2.mpsadbw(<32 x i8> %a0, <32 x i8> %a1, i32 7) 
  ret <16 x i16> %res
}
declare <16 x i16> @llvm.x86.avx2.mpsadbw(<32 x i8>, <32 x i8>, i32) nounwind readnone


define <4 x i64> @test_x86_avx2_psll_dq_bs(<4 x i64> %a0) {
  
  %res = call <4 x i64> @llvm.x86.avx2.psll.dq.bs(<4 x i64> %a0, i32 7) 
  ret <4 x i64> %res
}
declare <4 x i64> @llvm.x86.avx2.psll.dq.bs(<4 x i64>, i32) nounwind readnone


define <4 x i64> @test_x86_avx2_psrl_dq_bs(<4 x i64> %a0) {
  
  %res = call <4 x i64> @llvm.x86.avx2.psrl.dq.bs(<4 x i64> %a0, i32 7) 
  ret <4 x i64> %res
}
declare <4 x i64> @llvm.x86.avx2.psrl.dq.bs(<4 x i64>, i32) nounwind readnone


define <4 x i64> @test_x86_avx2_psll_dq(<4 x i64> %a0) {
  
  %res = call <4 x i64> @llvm.x86.avx2.psll.dq(<4 x i64> %a0, i32 8) 
  ret <4 x i64> %res
}
declare <4 x i64> @llvm.x86.avx2.psll.dq(<4 x i64>, i32) nounwind readnone


define <4 x i64> @test_x86_avx2_psrl_dq(<4 x i64> %a0) {
  
  %res = call <4 x i64> @llvm.x86.avx2.psrl.dq(<4 x i64> %a0, i32 8) 
  ret <4 x i64> %res
}
declare <4 x i64> @llvm.x86.avx2.psrl.dq(<4 x i64>, i32) nounwind readnone


define <2 x i64> @test_x86_avx2_vextracti128(<4 x i64> %a0) {



  %res = call <2 x i64> @llvm.x86.avx2.vextracti128(<4 x i64> %a0, i8 7)
  ret <2 x i64> %res
}
declare <2 x i64> @llvm.x86.avx2.vextracti128(<4 x i64>, i8) nounwind readnone


define <4 x i64> @test_x86_avx2_vinserti128(<4 x i64> %a0, <2 x i64> %a1) {



  %res = call <4 x i64> @llvm.x86.avx2.vinserti128(<4 x i64> %a0, <2 x i64> %a1, i8 7)
  ret <4 x i64> %res
}
declare <4 x i64> @llvm.x86.avx2.vinserti128(<4 x i64>, <2 x i64>, i8) nounwind readnone


define <4 x double> @test_x86_avx2_vbroadcast_sd_pd_256(<2 x double> %a0) {
  
  
  
  
  %res = call <4 x double> @llvm.x86.avx2.vbroadcast.sd.pd.256(<2 x double> %a0)
  ret <4 x double> %res
}
declare <4 x double> @llvm.x86.avx2.vbroadcast.sd.pd.256(<2 x double>) nounwind readonly


define <4 x float> @test_x86_avx2_vbroadcast_ss_ps(<4 x float> %a0) {
  
  
  
  
  %res = call <4 x float> @llvm.x86.avx2.vbroadcast.ss.ps(<4 x float> %a0)
  ret <4 x float> %res
}
declare <4 x float> @llvm.x86.avx2.vbroadcast.ss.ps(<4 x float>) nounwind readonly


define <8 x float> @test_x86_avx2_vbroadcast_ss_ps_256(<4 x float> %a0) {
  
  
  
  
  %res = call <8 x float> @llvm.x86.avx2.vbroadcast.ss.ps.256(<4 x float> %a0)
  ret <8 x float> %res
}
declare <8 x float> @llvm.x86.avx2.vbroadcast.ss.ps.256(<4 x float>) nounwind readonly


define <16 x i8> @test_x86_avx2_pbroadcastb_128(<16 x i8> %a0) {




  %res = call <16 x i8> @llvm.x86.avx2.pbroadcastb.128(<16 x i8> %a0)
  ret <16 x i8> %res
}
declare <16 x i8> @llvm.x86.avx2.pbroadcastb.128(<16 x i8>) nounwind readonly


define <32 x i8> @test_x86_avx2_pbroadcastb_256(<16 x i8> %a0) {




  %res = call <32 x i8> @llvm.x86.avx2.pbroadcastb.256(<16 x i8> %a0)
  ret <32 x i8> %res
}
declare <32 x i8> @llvm.x86.avx2.pbroadcastb.256(<16 x i8>) nounwind readonly


define <8 x i16> @test_x86_avx2_pbroadcastw_128(<8 x i16> %a0) {




  %res = call <8 x i16> @llvm.x86.avx2.pbroadcastw.128(<8 x i16> %a0)
  ret <8 x i16> %res
}
declare <8 x i16> @llvm.x86.avx2.pbroadcastw.128(<8 x i16>) nounwind readonly


define <16 x i16> @test_x86_avx2_pbroadcastw_256(<8 x i16> %a0) {




  %res = call <16 x i16> @llvm.x86.avx2.pbroadcastw.256(<8 x i16> %a0)
  ret <16 x i16> %res
}
declare <16 x i16> @llvm.x86.avx2.pbroadcastw.256(<8 x i16>) nounwind readonly


define <4 x i32> @test_x86_avx2_pbroadcastd_128(<4 x i32> %a0) {




  %res = call <4 x i32> @llvm.x86.avx2.pbroadcastd.128(<4 x i32> %a0)
  ret <4 x i32> %res
}
declare <4 x i32> @llvm.x86.avx2.pbroadcastd.128(<4 x i32>) nounwind readonly


define <8 x i32> @test_x86_avx2_pbroadcastd_256(<4 x i32> %a0) {




  %res = call <8 x i32> @llvm.x86.avx2.pbroadcastd.256(<4 x i32> %a0)
  ret <8 x i32> %res
}
declare <8 x i32> @llvm.x86.avx2.pbroadcastd.256(<4 x i32>) nounwind readonly


define <2 x i64> @test_x86_avx2_pbroadcastq_128(<2 x i64> %a0) {




  %res = call <2 x i64> @llvm.x86.avx2.pbroadcastq.128(<2 x i64> %a0)
  ret <2 x i64> %res
}
declare <2 x i64> @llvm.x86.avx2.pbroadcastq.128(<2 x i64>) nounwind readonly


define <4 x i64> @test_x86_avx2_pbroadcastq_256(<2 x i64> %a0) {




  %res = call <4 x i64> @llvm.x86.avx2.pbroadcastq.256(<2 x i64> %a0)
  ret <4 x i64> %res
}
declare <4 x i64> @llvm.x86.avx2.pbroadcastq.256(<2 x i64>) nounwind readonly
