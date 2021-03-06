

define <16 x i8> @test_x86_ssse3_pabs_b_128(<16 x i8> %a0) {
  
  %res = call <16 x i8> @llvm.x86.ssse3.pabs.b.128(<16 x i8> %a0) 
  ret <16 x i8> %res
}
declare <16 x i8> @llvm.x86.ssse3.pabs.b.128(<16 x i8>) nounwind readnone


define <4 x i32> @test_x86_ssse3_pabs_d_128(<4 x i32> %a0) {
  
  %res = call <4 x i32> @llvm.x86.ssse3.pabs.d.128(<4 x i32> %a0) 
  ret <4 x i32> %res
}
declare <4 x i32> @llvm.x86.ssse3.pabs.d.128(<4 x i32>) nounwind readnone


define <8 x i16> @test_x86_ssse3_pabs_w_128(<8 x i16> %a0) {
  
  %res = call <8 x i16> @llvm.x86.ssse3.pabs.w.128(<8 x i16> %a0) 
  ret <8 x i16> %res
}
declare <8 x i16> @llvm.x86.ssse3.pabs.w.128(<8 x i16>) nounwind readnone


define <4 x i32> @test_x86_ssse3_phadd_d_128(<4 x i32> %a0, <4 x i32> %a1) {
  
  %res = call <4 x i32> @llvm.x86.ssse3.phadd.d.128(<4 x i32> %a0, <4 x i32> %a1) 
  ret <4 x i32> %res
}
declare <4 x i32> @llvm.x86.ssse3.phadd.d.128(<4 x i32>, <4 x i32>) nounwind readnone


define <8 x i16> @test_x86_ssse3_phadd_sw_128(<8 x i16> %a0, <8 x i16> %a1) {
  
  %res = call <8 x i16> @llvm.x86.ssse3.phadd.sw.128(<8 x i16> %a0, <8 x i16> %a1) 
  ret <8 x i16> %res
}
declare <8 x i16> @llvm.x86.ssse3.phadd.sw.128(<8 x i16>, <8 x i16>) nounwind readnone


define <8 x i16> @test_x86_ssse3_phadd_w_128(<8 x i16> %a0, <8 x i16> %a1) {
  
  %res = call <8 x i16> @llvm.x86.ssse3.phadd.w.128(<8 x i16> %a0, <8 x i16> %a1) 
  ret <8 x i16> %res
}
declare <8 x i16> @llvm.x86.ssse3.phadd.w.128(<8 x i16>, <8 x i16>) nounwind readnone


define <4 x i32> @test_x86_ssse3_phsub_d_128(<4 x i32> %a0, <4 x i32> %a1) {
  
  %res = call <4 x i32> @llvm.x86.ssse3.phsub.d.128(<4 x i32> %a0, <4 x i32> %a1) 
  ret <4 x i32> %res
}
declare <4 x i32> @llvm.x86.ssse3.phsub.d.128(<4 x i32>, <4 x i32>) nounwind readnone


define <8 x i16> @test_x86_ssse3_phsub_sw_128(<8 x i16> %a0, <8 x i16> %a1) {
  
  %res = call <8 x i16> @llvm.x86.ssse3.phsub.sw.128(<8 x i16> %a0, <8 x i16> %a1) 
  ret <8 x i16> %res
}
declare <8 x i16> @llvm.x86.ssse3.phsub.sw.128(<8 x i16>, <8 x i16>) nounwind readnone


define <8 x i16> @test_x86_ssse3_phsub_w_128(<8 x i16> %a0, <8 x i16> %a1) {
  
  %res = call <8 x i16> @llvm.x86.ssse3.phsub.w.128(<8 x i16> %a0, <8 x i16> %a1) 
  ret <8 x i16> %res
}
declare <8 x i16> @llvm.x86.ssse3.phsub.w.128(<8 x i16>, <8 x i16>) nounwind readnone


define <8 x i16> @test_x86_ssse3_pmadd_ub_sw_128(<16 x i8> %a0, <16 x i8> %a1) {
  
  %res = call <8 x i16> @llvm.x86.ssse3.pmadd.ub.sw.128(<16 x i8> %a0, <16 x i8> %a1) 
  ret <8 x i16> %res
}
declare <8 x i16> @llvm.x86.ssse3.pmadd.ub.sw.128(<16 x i8>, <16 x i8>) nounwind readnone


define <8 x i16> @test_x86_ssse3_pmul_hr_sw_128(<8 x i16> %a0, <8 x i16> %a1) {
  
  %res = call <8 x i16> @llvm.x86.ssse3.pmul.hr.sw.128(<8 x i16> %a0, <8 x i16> %a1) 
  ret <8 x i16> %res
}
declare <8 x i16> @llvm.x86.ssse3.pmul.hr.sw.128(<8 x i16>, <8 x i16>) nounwind readnone


define <16 x i8> @test_x86_ssse3_pshuf_b_128(<16 x i8> %a0, <16 x i8> %a1) {
  
  %res = call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %a0, <16 x i8> %a1) 
  ret <16 x i8> %res
}
declare <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8>, <16 x i8>) nounwind readnone


define <16 x i8> @test_x86_ssse3_psign_b_128(<16 x i8> %a0, <16 x i8> %a1) {
  
  %res = call <16 x i8> @llvm.x86.ssse3.psign.b.128(<16 x i8> %a0, <16 x i8> %a1) 
  ret <16 x i8> %res
}
declare <16 x i8> @llvm.x86.ssse3.psign.b.128(<16 x i8>, <16 x i8>) nounwind readnone


define <4 x i32> @test_x86_ssse3_psign_d_128(<4 x i32> %a0, <4 x i32> %a1) {
  
  %res = call <4 x i32> @llvm.x86.ssse3.psign.d.128(<4 x i32> %a0, <4 x i32> %a1) 
  ret <4 x i32> %res
}
declare <4 x i32> @llvm.x86.ssse3.psign.d.128(<4 x i32>, <4 x i32>) nounwind readnone


define <8 x i16> @test_x86_ssse3_psign_w_128(<8 x i16> %a0, <8 x i16> %a1) {
  
  %res = call <8 x i16> @llvm.x86.ssse3.psign.w.128(<8 x i16> %a0, <8 x i16> %a1) 
  ret <8 x i16> %res
}
declare <8 x i16> @llvm.x86.ssse3.psign.w.128(<8 x i16>, <8 x i16>) nounwind readnone
