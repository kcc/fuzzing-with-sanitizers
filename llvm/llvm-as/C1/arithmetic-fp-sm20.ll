









define double @fadd_f64(double %a, double %b) {


  %ret = fadd double %a, %b
  ret double %ret
}

define double @fsub_f64(double %a, double %b) {


  %ret = fsub double %a, %b
  ret double %ret
}

define double @fmul_f64(double %a, double %b) {


  %ret = fmul double %a, %b
  ret double %ret
}

define double @fdiv_f64(double %a, double %b) {


  %ret = fdiv double %a, %b
  ret double %ret
}






define float @fadd_f32(float %a, float %b) {


  %ret = fadd float %a, %b
  ret float %ret
}

define float @fsub_f32(float %a, float %b) {


  %ret = fsub float %a, %b
  ret float %ret
}

define float @fmul_f32(float %a, float %b) {


  %ret = fmul float %a, %b
  ret float %ret
}

define float @fdiv_f32(float %a, float %b) {


  %ret = fdiv float %a, %b
  ret float %ret
}


