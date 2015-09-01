





















define double @single_to_double_rr(float %x) {




entry:
  %conv = fpext float %x to double
  ret double %conv
}

define float @double_to_single_rr(double %x) {




entry:
  %conv = fptrunc double %x to float
  ret float %conv
}

define double @single_to_double_rm(float* %x) {





entry:
  %0 = load float, float* %x, align 4
  %conv = fpext float %0 to double
  ret double %conv
}

define float @double_to_single_rm(double* %x) {





entry:
  %0 = load double, double* %x, align 8
  %conv = fptrunc double %0 to float
  ret float %conv
}
