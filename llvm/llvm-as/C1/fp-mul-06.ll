

declare float @llvm.fma.f32(float %f1, float %f2, float %f3)

define float @f1(float %f1, float %f2, float %acc) {




  %res = call float @llvm.fma.f32 (float %f1, float %f2, float %acc)
  ret float %res
}

define float @f2(float %f1, float *%ptr, float %acc) {




  %f2 = load float , float *%ptr
  %res = call float @llvm.fma.f32 (float %f1, float %f2, float %acc)
  ret float %res
}

define float @f3(float %f1, float *%base, float %acc) {




  %ptr = getelementptr float, float *%base, i64 1023
  %f2 = load float , float *%ptr
  %res = call float @llvm.fma.f32 (float %f1, float %f2, float %acc)
  ret float %res
}

define float @f4(float %f1, float *%base, float %acc) {








  %ptr = getelementptr float, float *%base, i64 1024
  %f2 = load float , float *%ptr
  %res = call float @llvm.fma.f32 (float %f1, float %f2, float %acc)
  ret float %res
}

define float @f5(float %f1, float *%base, float %acc) {








  %ptr = getelementptr float, float *%base, i64 -1
  %f2 = load float , float *%ptr
  %res = call float @llvm.fma.f32 (float %f1, float %f2, float %acc)
  ret float %res
}

define float @f6(float %f1, float *%base, i64 %index, float %acc) {





  %ptr = getelementptr float, float *%base, i64 %index
  %f2 = load float , float *%ptr
  %res = call float @llvm.fma.f32 (float %f1, float %f2, float %acc)
  ret float %res
}

define float @f7(float %f1, float *%base, i64 %index, float %acc) {





  %index2 = add i64 %index, 1023
  %ptr = getelementptr float, float *%base, i64 %index2
  %f2 = load float , float *%ptr
  %res = call float @llvm.fma.f32 (float %f1, float %f2, float %acc)
  ret float %res
}

define float @f8(float %f1, float *%base, i64 %index, float %acc) {






  %index2 = add i64 %index, 1024
  %ptr = getelementptr float, float *%base, i64 %index2
  %f2 = load float , float *%ptr
  %res = call float @llvm.fma.f32 (float %f1, float %f2, float %acc)
  ret float %res
}
