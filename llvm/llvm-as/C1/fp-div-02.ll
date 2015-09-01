





declare double @foo()


define double @f1(double %f1, double %f2) {



  %res = fdiv double %f1, %f2
  ret double %res
}


define double @f2(double %f1, double *%ptr) {



  %f2 = load double , double *%ptr
  %res = fdiv double %f1, %f2
  ret double %res
}


define double @f3(double %f1, double *%base) {



  %ptr = getelementptr double, double *%base, i64 511
  %f2 = load double , double *%ptr
  %res = fdiv double %f1, %f2
  ret double %res
}



define double @f4(double %f1, double *%base) {




  %ptr = getelementptr double, double *%base, i64 512
  %f2 = load double , double *%ptr
  %res = fdiv double %f1, %f2
  ret double %res
}


define double @f5(double %f1, double *%base) {




  %ptr = getelementptr double, double *%base, i64 -1
  %f2 = load double , double *%ptr
  %res = fdiv double %f1, %f2
  ret double %res
}


define double @f6(double %f1, double *%base, i64 %index) {




  %ptr1 = getelementptr double, double *%base, i64 %index
  %ptr2 = getelementptr double, double *%ptr1, i64 100
  %f2 = load double , double *%ptr2
  %res = fdiv double %f1, %f2
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

  %div0 = fdiv double %ret, %val0
  %div1 = fdiv double %div0, %val1
  %div2 = fdiv double %div1, %val2
  %div3 = fdiv double %div2, %val3
  %div4 = fdiv double %div3, %val4
  %div5 = fdiv double %div4, %val5
  %div6 = fdiv double %div5, %val6
  %div7 = fdiv double %div6, %val7
  %div8 = fdiv double %div7, %val8
  %div9 = fdiv double %div8, %val9
  %div10 = fdiv double %div9, %val10

  ret double %div10
}
