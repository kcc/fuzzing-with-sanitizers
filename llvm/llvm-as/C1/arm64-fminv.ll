

define float @test_fminv_v2f32(<2 x float> %in) {


  %min = call float @llvm.aarch64.neon.fminv.f32.v2f32(<2 x float> %in)
  ret float %min
}

define float @test_fminv_v4f32(<4 x float> %in) {


  %min = call float @llvm.aarch64.neon.fminv.f32.v4f32(<4 x float> %in)
  ret float %min
}

define double @test_fminv_v2f64(<2 x double> %in) {


  %min = call double @llvm.aarch64.neon.fminv.f64.v2f64(<2 x double> %in)
  ret double %min
}

declare float @llvm.aarch64.neon.fminv.f32.v2f32(<2 x float>)
declare float @llvm.aarch64.neon.fminv.f32.v4f32(<4 x float>)
declare double @llvm.aarch64.neon.fminv.f64.v2f64(<2 x double>)

define float @test_fmaxv_v2f32(<2 x float> %in) {


  %max = call float @llvm.aarch64.neon.fmaxv.f32.v2f32(<2 x float> %in)
  ret float %max
}

define float @test_fmaxv_v4f32(<4 x float> %in) {


  %max = call float @llvm.aarch64.neon.fmaxv.f32.v4f32(<4 x float> %in)
  ret float %max
}

define double @test_fmaxv_v2f64(<2 x double> %in) {


  %max = call double @llvm.aarch64.neon.fmaxv.f64.v2f64(<2 x double> %in)
  ret double %max
}

declare float @llvm.aarch64.neon.fmaxv.f32.v2f32(<2 x float>)
declare float @llvm.aarch64.neon.fmaxv.f32.v4f32(<4 x float>)
declare double @llvm.aarch64.neon.fmaxv.f64.v2f64(<2 x double>)

define float @test_fminnmv_v2f32(<2 x float> %in) {


  %minnm = call float @llvm.aarch64.neon.fminnmv.f32.v2f32(<2 x float> %in)
  ret float %minnm
}

define float @test_fminnmv_v4f32(<4 x float> %in) {


  %minnm = call float @llvm.aarch64.neon.fminnmv.f32.v4f32(<4 x float> %in)
  ret float %minnm
}

define double @test_fminnmv_v2f64(<2 x double> %in) {


  %minnm = call double @llvm.aarch64.neon.fminnmv.f64.v2f64(<2 x double> %in)
  ret double %minnm
}

declare float @llvm.aarch64.neon.fminnmv.f32.v2f32(<2 x float>)
declare float @llvm.aarch64.neon.fminnmv.f32.v4f32(<4 x float>)
declare double @llvm.aarch64.neon.fminnmv.f64.v2f64(<2 x double>)

define float @test_fmaxnmv_v2f32(<2 x float> %in) {


  %maxnm = call float @llvm.aarch64.neon.fmaxnmv.f32.v2f32(<2 x float> %in)
  ret float %maxnm
}

define float @test_fmaxnmv_v4f32(<4 x float> %in) {


  %maxnm = call float @llvm.aarch64.neon.fmaxnmv.f32.v4f32(<4 x float> %in)
  ret float %maxnm
}

define double @test_fmaxnmv_v2f64(<2 x double> %in) {


  %maxnm = call double @llvm.aarch64.neon.fmaxnmv.f64.v2f64(<2 x double> %in)
  ret double %maxnm
}

declare float @llvm.aarch64.neon.fmaxnmv.f32.v2f32(<2 x float>)
declare float @llvm.aarch64.neon.fmaxnmv.f32.v4f32(<4 x float>)
declare double @llvm.aarch64.neon.fmaxnmv.f64.v2f64(<2 x double>)
