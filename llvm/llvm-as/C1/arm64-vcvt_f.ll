


define <2 x double> @test_vcvt_f64_f32(<2 x float> %x) nounwind readnone ssp {

  %vcvt1.i = fpext <2 x float> %x to <2 x double>

  ret <2 x double> %vcvt1.i

}

define <2 x double> @test_vcvt_high_f64_f32(<4 x float> %x) nounwind readnone ssp {

  %cvt_in = shufflevector <4 x float> %x, <4 x float> undef, <2 x i32> <i32 2, i32 3>
  %vcvt1.i = fpext <2 x float> %cvt_in to <2 x double>

  ret <2 x double> %vcvt1.i

}

define <2 x float> @test_vcvt_f32_f64(<2 x double> %v) nounwind readnone ssp {

  %vcvt1.i = fptrunc <2 x double> %v to <2 x float>

  ret <2 x float> %vcvt1.i

}

define <4 x float> @test_vcvt_high_f32_f64(<2 x float> %x, <2 x double> %v) nounwind readnone ssp {


  %cvt = fptrunc <2 x double> %v to <2 x float>
  %vcvt2.i = shufflevector <2 x float> %x, <2 x float> %cvt, <4 x i32> <i32 0, i32 1, i32 2, i32 3>

  ret <4 x float> %vcvt2.i

}

define <2 x float> @test_vcvtx_f32_f64(<2 x double> %v) nounwind readnone ssp {

  %vcvtx1.i = tail call <2 x float> @llvm.aarch64.neon.fcvtxn.v2f32.v2f64(<2 x double> %v) nounwind

  ret <2 x float> %vcvtx1.i

}

define <4 x float> @test_vcvtx_high_f32_f64(<2 x float> %x, <2 x double> %v) nounwind readnone ssp {

  %vcvtx2.i = tail call <2 x float> @llvm.aarch64.neon.fcvtxn.v2f32.v2f64(<2 x double> %v) nounwind
  %res = shufflevector <2 x float> %x, <2 x float> %vcvtx2.i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>

  ret <4 x float> %res

}


declare <2 x double> @llvm.aarch64.neon.vcvthighfp2df(<4 x float>) nounwind readnone
declare <2 x double> @llvm.aarch64.neon.vcvtfp2df(<2 x float>) nounwind readnone

declare <2 x float> @llvm.aarch64.neon.vcvtdf2fp(<2 x double>) nounwind readnone
declare <4 x float> @llvm.aarch64.neon.vcvthighdf2fp(<2 x float>, <2 x double>) nounwind readnone

declare <2 x float> @llvm.aarch64.neon.fcvtxn.v2f32.v2f64(<2 x double>) nounwind readnone

define i16 @to_half(float %in) {



  %res = call i16 @llvm.convert.to.fp16.f32(float %in)
  ret i16 %res
}

define float @from_half(i16 %in) {



  %res = call float @llvm.convert.from.fp16.f32(i16 %in)
  ret float %res
}

declare float @llvm.convert.from.fp16.f32(i16) #1
declare i16 @llvm.convert.to.fp16.f32(float) #1
