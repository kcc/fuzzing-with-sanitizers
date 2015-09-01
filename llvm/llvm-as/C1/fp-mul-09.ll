




declare double @llvm.fma.f64(double %f1, double %f2, double %f3)

define double @f1(double %f1, double %f2, double %acc) {





  %negacc = fsub double -0.0, %acc
  %res = call double @llvm.fma.f64 (double %f1, double %f2, double %negacc)
  ret double %res
}

define double @f2(double %f1, double *%ptr, double %acc) {




  %f2 = load double , double *%ptr
  %negacc = fsub double -0.0, %acc
  %res = call double @llvm.fma.f64 (double %f1, double %f2, double %negacc)
  ret double %res
}

define double @f3(double %f1, double *%base, double %acc) {




  %ptr = getelementptr double, double *%base, i64 511
  %f2 = load double , double *%ptr
  %negacc = fsub double -0.0, %acc
  %res = call double @llvm.fma.f64 (double %f1, double %f2, double %negacc)
  ret double %res
}

define double @f4(double %f1, double *%base, double %acc) {








  %ptr = getelementptr double, double *%base, i64 512
  %f2 = load double , double *%ptr
  %negacc = fsub double -0.0, %acc
  %res = call double @llvm.fma.f64 (double %f1, double %f2, double %negacc)
  ret double %res
}

define double @f5(double %f1, double *%base, double %acc) {








  %ptr = getelementptr double, double *%base, i64 -1
  %f2 = load double , double *%ptr
  %negacc = fsub double -0.0, %acc
  %res = call double @llvm.fma.f64 (double %f1, double %f2, double %negacc)
  ret double %res
}

define double @f6(double %f1, double *%base, i64 %index, double %acc) {





  %ptr = getelementptr double, double *%base, i64 %index
  %f2 = load double , double *%ptr
  %negacc = fsub double -0.0, %acc
  %res = call double @llvm.fma.f64 (double %f1, double %f2, double %negacc)
  ret double %res
}

define double @f7(double %f1, double *%base, i64 %index, double %acc) {





  %index2 = add i64 %index, 511
  %ptr = getelementptr double, double *%base, i64 %index2
  %f2 = load double , double *%ptr
  %negacc = fsub double -0.0, %acc
  %res = call double @llvm.fma.f64 (double %f1, double %f2, double %negacc)
  ret double %res
}

define double @f8(double %f1, double *%base, i64 %index, double %acc) {






  %index2 = add i64 %index, 512
  %ptr = getelementptr double, double *%base, i64 %index2
  %f2 = load double , double *%ptr
  %negacc = fsub double -0.0, %acc
  %res = call double @llvm.fma.f64 (double %f1, double %f2, double %negacc)
  ret double %res
}
