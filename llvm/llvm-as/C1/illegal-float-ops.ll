

@varfloat = global float 0.0
@vardouble = global double 0.0
@varfp128 = global fp128 zeroinitializer

declare float @llvm.cos.f32(float)
declare double @llvm.cos.f64(double)
declare fp128 @llvm.cos.f128(fp128)

define void @test_cos(float %float, double %double, fp128 %fp128) {


   %cosfloat = call float @llvm.cos.f32(float %float)
   store float %cosfloat, float* @varfloat


   %cosdouble = call double @llvm.cos.f64(double %double)
   store double %cosdouble, double* @vardouble


   %cosfp128 = call fp128 @llvm.cos.f128(fp128 %fp128)
   store fp128 %cosfp128, fp128* @varfp128


  ret void
}

declare float @llvm.exp.f32(float)
declare double @llvm.exp.f64(double)
declare fp128 @llvm.exp.f128(fp128)

define void @test_exp(float %float, double %double, fp128 %fp128) {


   %expfloat = call float @llvm.exp.f32(float %float)
   store float %expfloat, float* @varfloat


   %expdouble = call double @llvm.exp.f64(double %double)
   store double %expdouble, double* @vardouble


   %expfp128 = call fp128 @llvm.exp.f128(fp128 %fp128)
   store fp128 %expfp128, fp128* @varfp128


  ret void
}

declare float @llvm.exp2.f32(float)
declare double @llvm.exp2.f64(double)
declare fp128 @llvm.exp2.f128(fp128)

define void @test_exp2(float %float, double %double, fp128 %fp128) {


   %exp2float = call float @llvm.exp2.f32(float %float)
   store float %exp2float, float* @varfloat


   %exp2double = call double @llvm.exp2.f64(double %double)
   store double %exp2double, double* @vardouble


   %exp2fp128 = call fp128 @llvm.exp2.f128(fp128 %fp128)
   store fp128 %exp2fp128, fp128* @varfp128

  ret void

}

declare float @llvm.log.f32(float)
declare double @llvm.log.f64(double)
declare fp128 @llvm.log.f128(fp128)

define void @test_log(float %float, double %double, fp128 %fp128) {


   %logfloat = call float @llvm.log.f32(float %float)
   store float %logfloat, float* @varfloat


   %logdouble = call double @llvm.log.f64(double %double)
   store double %logdouble, double* @vardouble


   %logfp128 = call fp128 @llvm.log.f128(fp128 %fp128)
   store fp128 %logfp128, fp128* @varfp128


  ret void
}

declare float @llvm.log2.f32(float)
declare double @llvm.log2.f64(double)
declare fp128 @llvm.log2.f128(fp128)

define void @test_log2(float %float, double %double, fp128 %fp128) {


   %log2float = call float @llvm.log2.f32(float %float)
   store float %log2float, float* @varfloat


   %log2double = call double @llvm.log2.f64(double %double)
   store double %log2double, double* @vardouble


   %log2fp128 = call fp128 @llvm.log2.f128(fp128 %fp128)
   store fp128 %log2fp128, fp128* @varfp128

  ret void

}

declare float @llvm.log10.f32(float)
declare double @llvm.log10.f64(double)
declare fp128 @llvm.log10.f128(fp128)

define void @test_log10(float %float, double %double, fp128 %fp128) {


   %log10float = call float @llvm.log10.f32(float %float)
   store float %log10float, float* @varfloat


   %log10double = call double @llvm.log10.f64(double %double)
   store double %log10double, double* @vardouble


   %log10fp128 = call fp128 @llvm.log10.f128(fp128 %fp128)
   store fp128 %log10fp128, fp128* @varfp128


  ret void
}

declare float @llvm.sin.f32(float)
declare double @llvm.sin.f64(double)
declare fp128 @llvm.sin.f128(fp128)

define void @test_sin(float %float, double %double, fp128 %fp128) {


   %sinfloat = call float @llvm.sin.f32(float %float)
   store float %sinfloat, float* @varfloat


   %sindouble = call double @llvm.sin.f64(double %double)
   store double %sindouble, double* @vardouble


   %sinfp128 = call fp128 @llvm.sin.f128(fp128 %fp128)
   store fp128 %sinfp128, fp128* @varfp128

  ret void

}

declare float @llvm.pow.f32(float, float)
declare double @llvm.pow.f64(double, double)
declare fp128 @llvm.pow.f128(fp128, fp128)

define void @test_pow(float %float, double %double, fp128 %fp128) {


   %powfloat = call float @llvm.pow.f32(float %float, float %float)
   store float %powfloat, float* @varfloat


   %powdouble = call double @llvm.pow.f64(double %double, double %double)
   store double %powdouble, double* @vardouble


   %powfp128 = call fp128 @llvm.pow.f128(fp128 %fp128, fp128 %fp128)
   store fp128 %powfp128, fp128* @varfp128


  ret void
}

declare float @llvm.powi.f32(float, i32)
declare double @llvm.powi.f64(double, i32)
declare fp128 @llvm.powi.f128(fp128, i32)

define void @test_powi(float %float, double %double, i32 %exponent, fp128 %fp128) {


   %powifloat = call float @llvm.powi.f32(float %float, i32 %exponent)
   store float %powifloat, float* @varfloat


   %powidouble = call double @llvm.powi.f64(double %double, i32 %exponent)
   store double %powidouble, double* @vardouble


   %powifp128 = call fp128 @llvm.powi.f128(fp128 %fp128, i32 %exponent)
   store fp128 %powifp128, fp128* @varfp128

  ret void

}

define void @test_frem(float %float, double %double, fp128 %fp128) {


  %fremfloat = frem float %float, %float
  store float %fremfloat, float* @varfloat


  %fremdouble = frem double %double, %double
  store double %fremdouble, double* @vardouble


  %fremfp128 = frem fp128 %fp128, %fp128
  store fp128 %fremfp128, fp128* @varfp128


  ret void
}

declare fp128 @llvm.fma.f128(fp128, fp128, fp128)

define void @test_fma(fp128 %fp128) {


  %fmafp128 = call fp128 @llvm.fma.f128(fp128 %fp128, fp128 %fp128, fp128 %fp128)
  store fp128 %fmafp128, fp128* @varfp128


  ret void
}

declare fp128 @llvm.fmuladd.f128(fp128, fp128, fp128)

define void @test_fmuladd(fp128 %fp128) {


  %fmuladdfp128 = call fp128 @llvm.fmuladd.f128(fp128 %fp128, fp128 %fp128, fp128 %fp128)
  store fp128 %fmuladdfp128, fp128* @varfp128




  ret void
}
