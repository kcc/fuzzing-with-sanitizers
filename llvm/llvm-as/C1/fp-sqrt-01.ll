



declare float @llvm.sqrt.f32(float)
declare float @sqrtf(float)


define float @f1(float %val) {



  %res = call float @llvm.sqrt.f32(float %val)
  ret float %res
}


define float @f2(float *%ptr) {



  %val = load float , float *%ptr
  %res = call float @llvm.sqrt.f32(float %val)
  ret float %res
}


define float @f3(float *%base) {



  %ptr = getelementptr float, float *%base, i64 1023
  %val = load float , float *%ptr
  %res = call float @llvm.sqrt.f32(float %val)
  ret float %res
}



define float @f4(float *%base) {




  %ptr = getelementptr float, float *%base, i64 1024
  %val = load float , float *%ptr
  %res = call float @llvm.sqrt.f32(float %val)
  ret float %res
}


define float @f5(float *%base) {




  %ptr = getelementptr float, float *%base, i64 -1
  %val = load float , float *%ptr
  %res = call float @llvm.sqrt.f32(float %val)
  ret float %res
}


define float @f6(float *%base, i64 %index) {




  %ptr1 = getelementptr float, float *%base, i64 %index
  %ptr2 = getelementptr float, float *%ptr1, i64 100
  %val = load float , float *%ptr2
  %res = call float @llvm.sqrt.f32(float %val)
  ret float %res
}



define void @f7(float *%ptr) {



  %val0 = load volatile float , float *%ptr
  %val1 = load volatile float , float *%ptr
  %val2 = load volatile float , float *%ptr
  %val3 = load volatile float , float *%ptr
  %val4 = load volatile float , float *%ptr
  %val5 = load volatile float , float *%ptr
  %val6 = load volatile float , float *%ptr
  %val7 = load volatile float , float *%ptr
  %val8 = load volatile float , float *%ptr
  %val9 = load volatile float , float *%ptr
  %val10 = load volatile float , float *%ptr
  %val11 = load volatile float , float *%ptr
  %val12 = load volatile float , float *%ptr
  %val13 = load volatile float , float *%ptr
  %val14 = load volatile float , float *%ptr
  %val15 = load volatile float , float *%ptr
  %val16 = load volatile float , float *%ptr

  %sqrt0 = call float @llvm.sqrt.f32(float %val0)
  %sqrt1 = call float @llvm.sqrt.f32(float %val1)
  %sqrt2 = call float @llvm.sqrt.f32(float %val2)
  %sqrt3 = call float @llvm.sqrt.f32(float %val3)
  %sqrt4 = call float @llvm.sqrt.f32(float %val4)
  %sqrt5 = call float @llvm.sqrt.f32(float %val5)
  %sqrt6 = call float @llvm.sqrt.f32(float %val6)
  %sqrt7 = call float @llvm.sqrt.f32(float %val7)
  %sqrt8 = call float @llvm.sqrt.f32(float %val8)
  %sqrt9 = call float @llvm.sqrt.f32(float %val9)
  %sqrt10 = call float @llvm.sqrt.f32(float %val10)
  %sqrt11 = call float @llvm.sqrt.f32(float %val11)
  %sqrt12 = call float @llvm.sqrt.f32(float %val12)
  %sqrt13 = call float @llvm.sqrt.f32(float %val13)
  %sqrt14 = call float @llvm.sqrt.f32(float %val14)
  %sqrt15 = call float @llvm.sqrt.f32(float %val15)
  %sqrt16 = call float @llvm.sqrt.f32(float %val16)

  store volatile float %val0, float *%ptr
  store volatile float %val1, float *%ptr
  store volatile float %val2, float *%ptr
  store volatile float %val3, float *%ptr
  store volatile float %val4, float *%ptr
  store volatile float %val5, float *%ptr
  store volatile float %val6, float *%ptr
  store volatile float %val7, float *%ptr
  store volatile float %val8, float *%ptr
  store volatile float %val9, float *%ptr
  store volatile float %val10, float *%ptr
  store volatile float %val11, float *%ptr
  store volatile float %val12, float *%ptr
  store volatile float %val13, float *%ptr
  store volatile float %val14, float *%ptr
  store volatile float %val15, float *%ptr
  store volatile float %val16, float *%ptr

  store volatile float %sqrt0, float *%ptr
  store volatile float %sqrt1, float *%ptr
  store volatile float %sqrt2, float *%ptr
  store volatile float %sqrt3, float *%ptr
  store volatile float %sqrt4, float *%ptr
  store volatile float %sqrt5, float *%ptr
  store volatile float %sqrt6, float *%ptr
  store volatile float %sqrt7, float *%ptr
  store volatile float %sqrt8, float *%ptr
  store volatile float %sqrt9, float *%ptr
  store volatile float %sqrt10, float *%ptr
  store volatile float %sqrt11, float *%ptr
  store volatile float %sqrt12, float *%ptr
  store volatile float %sqrt13, float *%ptr
  store volatile float %sqrt14, float *%ptr
  store volatile float %sqrt15, float *%ptr
  store volatile float %sqrt16, float *%ptr

  ret void
}


define float @f8(float %dummy, float %val) {








  %res = tail call float @sqrtf(float %val)
  ret float %res
}
