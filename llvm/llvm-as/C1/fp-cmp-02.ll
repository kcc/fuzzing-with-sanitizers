







declare double @foo()


define i64 @f1(i64 %a, i64 %b, double %f1, double %f2) {






  %cond = fcmp oeq double %f1, %f2
  %res = select i1 %cond, i64 %a, i64 %b
  ret i64 %res
}


define i64 @f2(i64 %a, i64 %b, double %f1, double *%ptr) {






  %f2 = load double , double *%ptr
  %cond = fcmp oeq double %f1, %f2
  %res = select i1 %cond, i64 %a, i64 %b
  ret i64 %res
}


define i64 @f3(i64 %a, i64 %b, double %f1, double *%base) {






  %ptr = getelementptr double, double *%base, i64 511
  %f2 = load double , double *%ptr
  %cond = fcmp oeq double %f1, %f2
  %res = select i1 %cond, i64 %a, i64 %b
  ret i64 %res
}



define i64 @f4(i64 %a, i64 %b, double %f1, double *%base) {







  %ptr = getelementptr double, double *%base, i64 512
  %f2 = load double , double *%ptr
  %cond = fcmp oeq double %f1, %f2
  %res = select i1 %cond, i64 %a, i64 %b
  ret i64 %res
}


define i64 @f5(i64 %a, i64 %b, double %f1, double *%base) {







  %ptr = getelementptr double, double *%base, i64 -1
  %f2 = load double , double *%ptr
  %cond = fcmp oeq double %f1, %f2
  %res = select i1 %cond, i64 %a, i64 %b
  ret i64 %res
}


define i64 @f6(i64 %a, i64 %b, double %f1, double *%base, i64 %index) {







  %ptr1 = getelementptr double, double *%base, i64 %index
  %ptr2 = getelementptr double, double *%ptr1, i64 100
  %f2 = load double , double *%ptr2
  %cond = fcmp oeq double %f1, %f2
  %res = select i1 %cond, i64 %a, i64 %b
  ret i64 %res
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

  %cmp0 = fcmp olt double %ret, %val0
  %cmp1 = fcmp olt double %ret, %val1
  %cmp2 = fcmp olt double %ret, %val2
  %cmp3 = fcmp olt double %ret, %val3
  %cmp4 = fcmp olt double %ret, %val4
  %cmp5 = fcmp olt double %ret, %val5
  %cmp6 = fcmp olt double %ret, %val6
  %cmp7 = fcmp olt double %ret, %val7
  %cmp8 = fcmp olt double %ret, %val8
  %cmp9 = fcmp olt double %ret, %val9
  %cmp10 = fcmp olt double %ret, %val10

  %sel0 = select i1 %cmp0, double %ret, double 0.0
  %sel1 = select i1 %cmp1, double %sel0, double 1.0
  %sel2 = select i1 %cmp2, double %sel1, double 2.0
  %sel3 = select i1 %cmp3, double %sel2, double 3.0
  %sel4 = select i1 %cmp4, double %sel3, double 4.0
  %sel5 = select i1 %cmp5, double %sel4, double 5.0
  %sel6 = select i1 %cmp6, double %sel5, double 6.0
  %sel7 = select i1 %cmp7, double %sel6, double 7.0
  %sel8 = select i1 %cmp8, double %sel7, double 8.0
  %sel9 = select i1 %cmp9, double %sel8, double 9.0
  %sel10 = select i1 %cmp10, double %sel9, double 10.0

  ret double %sel10
}


define i64 @f8(i64 %a, i64 %b, double %f) {








  %cond = fcmp oeq double %f, 0.0
  %res = select i1 %cond, i64 %a, i64 %b
  ret i64 %res
}


define i64 @f9(i64 %a, i64 %b, double %f2, double *%ptr) {






  %f1 = load double , double *%ptr
  %cond = fcmp ogt double %f1, %f2
  %res = select i1 %cond, i64 %a, i64 %b
  ret i64 %res
}
