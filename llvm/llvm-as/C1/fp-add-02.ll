




declare double @foo()


define double @f1(double %f1, double %f2) {



  %res = fadd double %f1, %f2
  ret double %res
}


define double @f2(double %f1, double *%ptr) {



  %f2 = load double , double *%ptr
  %res = fadd double %f1, %f2
  ret double %res
}


define double @f3(double %f1, double *%base) {



  %ptr = getelementptr double, double *%base, i64 511
  %f2 = load double , double *%ptr
  %res = fadd double %f1, %f2
  ret double %res
}



define double @f4(double %f1, double *%base) {




  %ptr = getelementptr double, double *%base, i64 512
  %f2 = load double , double *%ptr
  %res = fadd double %f1, %f2
  ret double %res
}


define double @f5(double %f1, double *%base) {




  %ptr = getelementptr double, double *%base, i64 -1
  %f2 = load double , double *%ptr
  %res = fadd double %f1, %f2
  ret double %res
}


define double @f6(double %f1, double *%base, i64 %index) {




  %ptr1 = getelementptr double, double *%base, i64 %index
  %ptr2 = getelementptr double, double *%ptr1, i64 100
  %f2 = load double , double *%ptr2
  %res = fadd double %f1, %f2
  ret double %res
}


define double @f7(double *%ptr0) {




  %ptr1 = getelementptr double, double *%ptr0, i64 2
  %ptr2 = getelementptr double, double *%ptr0, i64 4
  %ptr3 = getelementptr double, double *%ptr0, i64 6
  %ptr4 = getelementptr double, double *%ptr0, i64 8
  %ptr5 = getelementptr double, double *%ptr0, i64 10
  %ptr6 = getelementptr double, double *%ptr0, i64 12
  %ptr7 = getelementptr double, double *%ptr0, i64 14
  %ptr8 = getelementptr double, double *%ptr0, i64 16
  %ptr9 = getelementptr double, double *%ptr0, i64 18
  %ptr10 = getelementptr double, double *%ptr0, i64 20

  %val0 = load double , double *%ptr0
  %val1 = load double , double *%ptr1
  %val2 = load double , double *%ptr2
  %val3 = load double , double *%ptr3
  %val4 = load double , double *%ptr4
  %val5 = load double , double *%ptr5
  %val6 = load double , double *%ptr6
  %val7 = load double , double *%ptr7
  %val8 = load double , double *%ptr8
  %val9 = load double , double *%ptr9
  %val10 = load double , double *%ptr10

  %ret = call double @foo()

  %add0 = fadd double %ret, %val0
  %add1 = fadd double %add0, %val1
  %add2 = fadd double %add1, %val2
  %add3 = fadd double %add2, %val3
  %add4 = fadd double %add3, %val4
  %add5 = fadd double %add4, %val5
  %add6 = fadd double %add5, %val6
  %add7 = fadd double %add6, %val7
  %add8 = fadd double %add7, %val8
  %add9 = fadd double %add8, %val9
  %add10 = fadd double %add9, %val10

  ret double %add10
}
