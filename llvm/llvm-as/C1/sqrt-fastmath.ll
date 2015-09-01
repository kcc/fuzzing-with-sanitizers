


declare double @__sqrt_finite(double) #0
declare float @__sqrtf_finite(float) #0
declare x86_fp80 @__sqrtl_finite(x86_fp80) #0
declare float @llvm.sqrt.f32(float) #0
declare <4 x float> @llvm.sqrt.v4f32(<4 x float>) #0
declare <8 x float> @llvm.sqrt.v8f32(<8 x float>) #0


define double @fd(double %d) #0 {









  %call = tail call double @__sqrt_finite(double %d) #1
  ret double %call
}


define float @ff(float %f) #0 {


















  %call = tail call float @__sqrtf_finite(float %f) #1
  ret float %call
}


define x86_fp80 @fld(x86_fp80 %ld) #0 {











  %call = tail call x86_fp80 @__sqrtl_finite(x86_fp80 %ld) #1
  ret x86_fp80 %call
}



define float @reciprocal_square_root(float %x) #0 {
















  %sqrt = tail call float @llvm.sqrt.f32(float %x)
  %div = fdiv fast float 1.0, %sqrt
  ret float %div
}

define <4 x float> @reciprocal_square_root_v4f32(<4 x float> %x) #0 {
















  %sqrt = tail call <4 x float> @llvm.sqrt.v4f32(<4 x float> %x)
  %div = fdiv fast <4 x float> <float 1.0, float 1.0, float 1.0, float 1.0>, %sqrt
  ret <4 x float> %div
}

define <8 x float> @reciprocal_square_root_v8f32(<8 x float> %x) #0 {



















  %sqrt = tail call <8 x float> @llvm.sqrt.v8f32(<8 x float> %x)
  %div = fdiv fast <8 x float> <float 1.0, float 1.0, float 1.0, float 1.0, float 1.0, float 1.0, float 1.0, float 1.0>, %sqrt
  ret <8 x float> %div
}


attributes #0 = { "unsafe-fp-math"="true" }
attributes #1 = { nounwind readnone }

