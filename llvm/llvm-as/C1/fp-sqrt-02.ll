





declare double @llvm.sqrt.f64(double %f)
declare double @sqrt(double)


define double @f1(double %val) {



  %res = call double @llvm.sqrt.f64(double %val)
  ret double %res
}


define double @f2(double *%ptr) {



  %val = load double , double *%ptr
  %res = call double @llvm.sqrt.f64(double %val)
  ret double %res
}


define double @f3(double *%base) {



  %ptr = getelementptr double, double *%base, i64 511
  %val = load double , double *%ptr
  %res = call double @llvm.sqrt.f64(double %val)
  ret double %res
}



define double @f4(double *%base) {




  %ptr = getelementptr double, double *%base, i64 512
  %val = load double , double *%ptr
  %res = call double @llvm.sqrt.f64(double %val)
  ret double %res
}


define double @f5(double *%base) {




  %ptr = getelementptr double, double *%base, i64 -1
  %val = load double , double *%ptr
  %res = call double @llvm.sqrt.f64(double %val)
  ret double %res
}


define double @f6(double *%base, i64 %index) {




  %ptr1 = getelementptr double, double *%base, i64 %index
  %ptr2 = getelementptr double, double *%ptr1, i64 100
  %val = load double , double *%ptr2
  %res = call double @llvm.sqrt.f64(double %val)
  ret double %res
}



define void @f7(double *%ptr) {



  %val0 = load volatile double , double *%ptr
  %val1 = load volatile double , double *%ptr
  %val2 = load volatile double , double *%ptr
  %val3 = load volatile double , double *%ptr
  %val4 = load volatile double , double *%ptr
  %val5 = load volatile double , double *%ptr
  %val6 = load volatile double , double *%ptr
  %val7 = load volatile double , double *%ptr
  %val8 = load volatile double , double *%ptr
  %val9 = load volatile double , double *%ptr
  %val10 = load volatile double , double *%ptr
  %val11 = load volatile double , double *%ptr
  %val12 = load volatile double , double *%ptr
  %val13 = load volatile double , double *%ptr
  %val14 = load volatile double , double *%ptr
  %val15 = load volatile double , double *%ptr
  %val16 = load volatile double , double *%ptr

  %sqrt0 = call double @llvm.sqrt.f64(double %val0)
  %sqrt1 = call double @llvm.sqrt.f64(double %val1)
  %sqrt2 = call double @llvm.sqrt.f64(double %val2)
  %sqrt3 = call double @llvm.sqrt.f64(double %val3)
  %sqrt4 = call double @llvm.sqrt.f64(double %val4)
  %sqrt5 = call double @llvm.sqrt.f64(double %val5)
  %sqrt6 = call double @llvm.sqrt.f64(double %val6)
  %sqrt7 = call double @llvm.sqrt.f64(double %val7)
  %sqrt8 = call double @llvm.sqrt.f64(double %val8)
  %sqrt9 = call double @llvm.sqrt.f64(double %val9)
  %sqrt10 = call double @llvm.sqrt.f64(double %val10)
  %sqrt11 = call double @llvm.sqrt.f64(double %val11)
  %sqrt12 = call double @llvm.sqrt.f64(double %val12)
  %sqrt13 = call double @llvm.sqrt.f64(double %val13)
  %sqrt14 = call double @llvm.sqrt.f64(double %val14)
  %sqrt15 = call double @llvm.sqrt.f64(double %val15)
  %sqrt16 = call double @llvm.sqrt.f64(double %val16)

  store volatile double %val0, double *%ptr
  store volatile double %val1, double *%ptr
  store volatile double %val2, double *%ptr
  store volatile double %val3, double *%ptr
  store volatile double %val4, double *%ptr
  store volatile double %val5, double *%ptr
  store volatile double %val6, double *%ptr
  store volatile double %val7, double *%ptr
  store volatile double %val8, double *%ptr
  store volatile double %val9, double *%ptr
  store volatile double %val10, double *%ptr
  store volatile double %val11, double *%ptr
  store volatile double %val12, double *%ptr
  store volatile double %val13, double *%ptr
  store volatile double %val14, double *%ptr
  store volatile double %val15, double *%ptr
  store volatile double %val16, double *%ptr

  store volatile double %sqrt0, double *%ptr
  store volatile double %sqrt1, double *%ptr
  store volatile double %sqrt2, double *%ptr
  store volatile double %sqrt3, double *%ptr
  store volatile double %sqrt4, double *%ptr
  store volatile double %sqrt5, double *%ptr
  store volatile double %sqrt6, double *%ptr
  store volatile double %sqrt7, double *%ptr
  store volatile double %sqrt8, double *%ptr
  store volatile double %sqrt9, double *%ptr
  store volatile double %sqrt10, double *%ptr
  store volatile double %sqrt11, double *%ptr
  store volatile double %sqrt12, double *%ptr
  store volatile double %sqrt13, double *%ptr
  store volatile double %sqrt14, double *%ptr
  store volatile double %sqrt15, double *%ptr
  store volatile double %sqrt16, double *%ptr

  ret void
}


define double @f8(double %dummy, double %val) {








  %res = tail call double @sqrt(double %val)
  ret double %res
}
