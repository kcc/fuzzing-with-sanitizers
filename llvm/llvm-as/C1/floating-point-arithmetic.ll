



define float @fsub_0_0_x(float %a) {
  %t1 = fsub float -0.0, %a
  %ret = fsub float -0.0, %t1


  ret float %ret
}



define float @fsub_x_0(float %a) {
  %ret = fsub float %a, 0.0

  ret float %ret
}



define float @fadd_x_n0(float %a) {
  %ret = fadd float %a, -0.0

  ret float %ret
}



define double @fmul_X_1(double %a) {
  %b = fmul double 1.000000e+00, %a                
  
  ret double %b
}










declare float @sqrtf(float)

define float @PR22688(float %x) {
  %1 = call float @sqrtf(float %x)
  %2 = call float @sqrtf(float %1)
  %3 = call float @sqrtf(float %2)
  %4 = call float @sqrtf(float %3)
  %5 = call float @sqrtf(float %4)
  %6 = call float @sqrtf(float %5)
  %7 = fadd float %6, 0.0
  ret float %7



}

