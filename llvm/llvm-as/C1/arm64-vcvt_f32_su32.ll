

define <2 x float> @ucvt(<2 x i32> %a) nounwind readnone ssp {




  %vcvt.i = uitofp <2 x i32> %a to <2 x float>
  ret <2 x float> %vcvt.i
}

define <2 x float> @scvt(<2 x i32> %a) nounwind readnone ssp {



  %vcvt.i = sitofp <2 x i32> %a to <2 x float>
  ret <2 x float> %vcvt.i
}

define <4 x float> @ucvtq(<4 x i32> %a) nounwind readnone ssp {



  %vcvt.i = uitofp <4 x i32> %a to <4 x float>
  ret <4 x float> %vcvt.i
}

define <4 x float> @scvtq(<4 x i32> %a) nounwind readnone ssp {



  %vcvt.i = sitofp <4 x i32> %a to <4 x float>
  ret <4 x float> %vcvt.i
}

define <4 x float> @cvtf16(<4 x i16> %a) nounwind readnone ssp {



  %vcvt1.i = tail call <4 x float> @llvm.aarch64.neon.vcvthf2fp(<4 x i16> %a) nounwind
  ret <4 x float> %vcvt1.i
}

define <4 x float> @cvtf16_high(<8 x i16> %a) nounwind readnone ssp {



  %in = shufflevector <8 x i16> %a, <8 x i16> undef, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %vcvt1.i = tail call <4 x float> @llvm.aarch64.neon.vcvthf2fp(<4 x i16> %in) nounwind
  ret <4 x float> %vcvt1.i
}



define <4 x i16> @cvtf16f32(<4 x float> %a) nounwind readnone ssp {



  %vcvt1.i = tail call <4 x i16> @llvm.aarch64.neon.vcvtfp2hf(<4 x float> %a) nounwind
  ret <4 x i16> %vcvt1.i
}

define <8 x i16> @cvtf16f32_high(<4 x i16> %low, <4 x float> %high_big) {



  %high = call <4 x i16> @llvm.aarch64.neon.vcvtfp2hf(<4 x float> %high_big)
  %res = shufflevector <4 x i16> %low, <4 x i16> %high, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  ret <8 x i16> %res
}

declare <4 x float> @llvm.aarch64.neon.vcvthf2fp(<4 x i16>) nounwind readnone
declare <4 x i16> @llvm.aarch64.neon.vcvtfp2hf(<4 x float>) nounwind readnone
