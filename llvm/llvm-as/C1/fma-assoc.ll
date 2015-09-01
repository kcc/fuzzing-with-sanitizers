

define ptx_device float @t1_f32(float %x, float %y, float %z,
                                float %u, float %v) {



  %a = fmul float %x, %y
  %b = fmul float %u, %v
  %c = fadd float %a, %b
  %d = fadd float %c, %z
  ret float %d
}

define ptx_device double @t1_f64(double %x, double %y, double %z,
                                 double %u, double %v) {



  %a = fmul double %x, %y
  %b = fmul double %u, %v
  %c = fadd double %a, %b
  %d = fadd double %c, %z
  ret double %d
}

define double @two_choices(double %val1, double %val2) {




  %1 = fmul double %val1, %val2
  %2 = fmul double %1, %1
  %3 = fadd double %1, %2

  ret double %3
}

