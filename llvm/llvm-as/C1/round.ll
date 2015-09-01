

declare float @llvm.round.f32(float) #0
declare double @llvm.round.f64(double) #0



define float @constant_fold_round_f32_01() #0 {
  %x = call float @llvm.round.f32(float 1.25) #0
  ret float %x
}



define float @constant_fold_round_f32_02() #0 {
  %x = call float @llvm.round.f32(float -1.25) #0
  ret float %x
}



define float @constant_fold_round_f32_03() #0 {
  %x = call float @llvm.round.f32(float 1.5) #0
  ret float %x
}



define float @constant_fold_round_f32_04() #0 {
  %x = call float @llvm.round.f32(float -1.5) #0
  ret float %x
}



define float @constant_fold_round_f32_05() #0 {
  %x = call float @llvm.round.f32(float 2.75) #0
  ret float %x
}



define float @constant_fold_round_f32_06() #0 {
  %x = call float @llvm.round.f32(float -2.75) #0
  ret float %x
}



define double @constant_fold_round_f64_01() #0 {
  %x = call double @llvm.round.f64(double 1.3) #0
  ret double %x
}



define double @constant_fold_round_f64_02() #0 {
  %x = call double @llvm.round.f64(double -1.3) #0
  ret double %x
}



define double @constant_fold_round_f64_03() #0 {
  %x = call double @llvm.round.f64(double 1.5) #0
  ret double %x
}



define double @constant_fold_round_f64_04() #0 {
  %x = call double @llvm.round.f64(double -1.5) #0
  ret double %x
}



define double @constant_fold_round_f64_05() #0 {
  %x = call double @llvm.round.f64(double 2.7) #0
  ret double %x
}



define double @constant_fold_round_f64_06() #0 {
  %x = call double @llvm.round.f64(double -2.7) #0
  ret double %x
}

attributes #0 = { nounwind readnone }
