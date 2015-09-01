

@varfloat = global float 0.0
@vardouble = global double 0.0

define void @testfloat() {

  %val1 = load float, float* @varfloat

  %val2 = fadd float %val1, %val1


  %val3 = fmul float %val2, %val1


  %val4 = fdiv float %val3, %val1


  %val5 = fsub float %val4, %val2


  store volatile float %val5, float* @varfloat


  %val6 = fmul float %val1, %val2
  %val7 = fsub float -0.0, %val6


  store volatile float %val7, float* @varfloat

  ret void
}

define void @testdouble() {

  %val1 = load double, double* @vardouble

  %val2 = fadd double %val1, %val1


  %val3 = fmul double %val2, %val1


  %val4 = fdiv double %val3, %val1


  %val5 = fsub double %val4, %val2


  store volatile double %val5, double* @vardouble


   %val6 = fmul double %val1, %val2
   %val7 = fsub double -0.0, %val6


   store volatile double %val7, double* @vardouble

  ret void
}
