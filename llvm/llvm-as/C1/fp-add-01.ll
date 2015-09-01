



declare float @foo()


define float @f1(float %f1, float %f2) {



  %res = fadd float %f1, %f2
  ret float %res
}


define float @f2(float %f1, float *%ptr) {



  %f2 = load float , float *%ptr
  %res = fadd float %f1, %f2
  ret float %res
}


define float @f3(float %f1, float *%base) {



  %ptr = getelementptr float, float *%base, i64 1023
  %f2 = load float , float *%ptr
  %res = fadd float %f1, %f2
  ret float %res
}



define float @f4(float %f1, float *%base) {




  %ptr = getelementptr float, float *%base, i64 1024
  %f2 = load float , float *%ptr
  %res = fadd float %f1, %f2
  ret float %res
}


define float @f5(float %f1, float *%base) {




  %ptr = getelementptr float, float *%base, i64 -1
  %f2 = load float , float *%ptr
  %res = fadd float %f1, %f2
  ret float %res
}


define float @f6(float %f1, float *%base, i64 %index) {




  %ptr1 = getelementptr float, float *%base, i64 %index
  %ptr2 = getelementptr float, float *%ptr1, i64 100
  %f2 = load float , float *%ptr2
  %res = fadd float %f1, %f2
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

  %add0 = fadd float %ret, %val0
  %add1 = fadd float %add0, %val1
  %add2 = fadd float %add1, %val2
  %add3 = fadd float %add2, %val3
  %add4 = fadd float %add3, %val4
  %add5 = fadd float %add4, %val5
  %add6 = fadd float %add5, %val6
  %add7 = fadd float %add6, %val7
  %add8 = fadd float %add7, %val8
  %add9 = fadd float %add8, %val9
  %add10 = fadd float %add9, %val10

  ret float %add10
}
