



define float @constpool_float(float %x) {





  %1 = fadd float %x, 16.50e+01
  ret float %1
}

define double @constpool_double(double %x) nounwind {





  %1 = fadd double %x, 8.500000e-01
  ret double %1
}
