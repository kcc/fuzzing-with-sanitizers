


define float @frem_f32(float %a, float %b) {






  %1 = frem float %a, %b
  ret float %1
}

define double @frem_f64(double %a, double %b) {






  %1 = frem double %a, %b
  ret double %1
}

define float @sin_f32(float %a) {






  %1 = call float @llvm.sin.f32(float %a)
  ret float %1
}

define double @sin_f64(double %a) {






  %1 = call double @llvm.sin.f64(double %a)
  ret double %1
}

define float @cos_f32(float %a) {






  %1 = call float @llvm.cos.f32(float %a)
  ret float %1
}

define double @cos_f64(double %a) {






  %1 = call double @llvm.cos.f64(double %a)
  ret double %1
}

define float @pow_f32(float %a, float %b) {






  %1 = call float @llvm.pow.f32(float %a, float %b)
  ret float %1
}

define double @pow_f64(double %a, double %b) {






  %1 = call double @llvm.pow.f64(double %a, double %b)
  ret double %1
}
declare float @llvm.sin.f32(float)
declare double @llvm.sin.f64(double)
declare float @llvm.cos.f32(float)
declare double @llvm.cos.f64(double)
declare float @llvm.pow.f32(float, float)
declare double @llvm.pow.f64(double, double)
