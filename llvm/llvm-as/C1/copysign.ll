

declare float @llvm.copysign.f32(float, float) #0
declare double @llvm.copysign.f64(double, double) #0



define float @constant_fold_copysign_f32_01() #0 {
  %x = call float @llvm.copysign.f32(float 1.0, float -2.0) #0
  ret float %x
}



define float @constant_fold_copysign_f32_02() #0 {
  %x = call float @llvm.copysign.f32(float -2.0, float 1.0) #0
  ret float %x
}



define float @constant_fold_copysign_f32_03() #0 {
  %x = call float @llvm.copysign.f32(float -2.0, float -1.0) #0
  ret float %x
}



define double @constant_fold_copysign_f64_01() #0 {
  %x = call double @llvm.copysign.f64(double 1.0, double -2.0) #0
  ret double %x
}



define double @constant_fold_copysign_f64_02() #0 {
  %x = call double @llvm.copysign.f64(double -1.0, double 2.0) #0
  ret double %x
}



define double @constant_fold_copysign_f64_03() #0 {
  %x = call double @llvm.copysign.f64(double -1.0, double -2.0) #0
  ret double %x
}


attributes #0 = { nounwind readnone }
