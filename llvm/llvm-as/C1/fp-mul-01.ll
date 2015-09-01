



declare float @foo()


define float @f1(float %f1, float %f2) {



  %res = fmul float %f1, %f2
  ret float %res
}


define float @f2(float %f1, float *%ptr) {



  %f2 = load float , float *%ptr
  %res = fmul float %f1, %f2
  ret float %res
}


define float @f3(float %f1, float *%base) {



  %ptr = getelementptr float, float *%base, i64 1023
  %f2 = load float , float *%ptr
  %res = fmul float %f1, %f2
  ret float %res
}



define float @f4(float %f1, float *%base) {




  %ptr = getelementptr float, float *%base, i64 1024
  %f2 = load float , float *%ptr
  %res = fmul float %f1, %f2
  ret float %res
}


define float @f5(float %f1, float *%base) {




  %ptr = getelementptr float, float *%base, i64 -1
  %f2 = load float , float *%ptr
  %res = fmul float %f1, %f2
  ret float %res
}


define float @f6(float %f1, float *%base, i64 %index) {




  %ptr1 = getelementptr float, float *%base, i64 %index
  %ptr2 = getelementptr float, float *%ptr1, i64 100
  %f2 = load float , float *%ptr2
  %res = fmul float %f1, %f2
  ret float %res
}


define float @f7(float *%ptr0) {




  %ptr1 = getelementptr float, float *%ptr0, i64 2
  %ptr2 = getelementptr float, float *%ptr0, i64 4
  %ptr3 = getelementptr float, float *%ptr0, i64 6
  %ptr4 = getelementptr float, float *%ptr0, i64 8
  %ptr5 = getelementptr float, float *%ptr0, i64 10
  %ptr6 = getelementptr float, float *%ptr0, i64 12
  %ptr7 = getelementptr float, float *%ptr0, i64 14
  %ptr8 = getelementptr float, float *%ptr0, i64 16
  %ptr9 = getelementptr float, float *%ptr0, i64 18
  %ptr10 = getelementptr float, float *%ptr0, i64 20

  %val0 = load float , float *%ptr0
  %val1 = load float , float *%ptr1
  %val2 = load float , float *%ptr2
  %val3 = load float , float *%ptr3
  %val4 = load float , float *%ptr4
  %val5 = load float , float *%ptr5
  %val6 = load float , float *%ptr6
  %val7 = load float , float *%ptr7
  %val8 = load float , float *%ptr8
  %val9 = load float , float *%ptr9
  %val10 = load float , float *%ptr10

  %ret = call float @foo()

  %mul0 = fmul float %ret, %val0
  %mul1 = fmul float %mul0, %val1
  %mul2 = fmul float %mul1, %val2
  %mul3 = fmul float %mul2, %val3
  %mul4 = fmul float %mul3, %val4
  %mul5 = fmul float %mul4, %val5
  %mul6 = fmul float %mul5, %val6
  %mul7 = fmul float %mul6, %val7
  %mul8 = fmul float %mul7, %val8
  %mul9 = fmul float %mul8, %val9
  %mul10 = fmul float %mul9, %val10

  ret float %mul10
}
