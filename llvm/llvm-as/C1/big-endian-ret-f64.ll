


define double @fn() {



  %r = alloca double, align 8
  %1 = load double, double* %r, align 8
  ret double %1
}

