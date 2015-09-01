





define void @bar() unnamed_addr {
entry-block:
  %a = alloca double
  %b = alloca float

  store double 3.140000e+00, double* %a
  %0 = load double, double* %a

  %1 = fptrunc double %0 to float

  store float %1, float* %b

  ret void
}
