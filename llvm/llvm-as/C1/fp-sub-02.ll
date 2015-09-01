





declare double @foo()


define double @f1(double %f1, double %f2) {



  %res = fsub double %f1, %f2
  ret double %res
}


define double @f2(double %f1, double *%ptr) {



  %f2 = load double , double *%ptr
  %res = fsub double %f1, %f2
  ret double %res
}


define double @f3(double %f1, double *%base) {



  %ptr = getelementptr double, double *%base, i64 511
  %f2 = load double , double *%ptr
  %res = fsub double %f1, %f2
  ret double %res
}



define double @f4(double %f1, double *%base) {




  %ptr = getelementptr double, double *%base, i64 512
  %f2 = load double , double *%ptr
  %res = fsub double %f1, %f2
  ret double %res
}


define double @f5(double %f1, double *%base) {




  %ptr = getelementptr double, double *%base, i64 -1
  %f2 = load double , double *%ptr
  %res = fsub double %f1, %f2
  ret double %res
}


define double @f6(double %f1, double *%base, i64 %index) {




  %ptr1 = getelementptr double, double *%base, i64 %index
  %ptr2 = getelementptr double, double *%ptr1, i64 100
  %f2 = load double , double *%ptr2
  %res = fsub double %f1, %f2
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

  %sub0 = fsub double %ret, %val0
  %sub1 = fsub double %sub0, %val1
  %sub2 = fsub double %sub1, %val2
  %sub3 = fsub double %sub2, %val3
  %sub4 = fsub double %sub3, %val4
  %sub5 = fsub double %sub4, %val5
  %sub6 = fsub double %sub5, %val6
  %sub7 = fsub double %sub6, %val7
  %sub8 = fsub double %sub7, %val8
  %sub9 = fsub double %sub8, %val9
  %sub10 = fsub double %sub9, %val10

  ret double %sub10
}
