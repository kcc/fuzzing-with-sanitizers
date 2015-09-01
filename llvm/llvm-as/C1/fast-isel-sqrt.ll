


define float @test_sqrt_f32(float %a) {


  %res = call float @llvm.sqrt.f32(float %a)
  ret float %res
}
declare float @llvm.sqrt.f32(float) nounwind readnone

define double @test_sqrt_f64(double %a) {


  %res = call double @llvm.sqrt.f64(double %a)
  ret double %res
}
declare double @llvm.sqrt.f64(double) nounwind readnone


