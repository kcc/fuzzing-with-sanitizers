







define float @test_fdiv(float %a, float %b) {
  %c = fdiv float %a, %b
  ret float %c
}






define float @test_fsub(float %a, float %b) {
  %c = fsub float %a, %b
  ret float %c
}






define double @test_fadd(double %a, double %b) {
  %c = fadd double %a, %b
  ret double %c
}

declare float     @llvm.trunc.f32(float  %Val)
declare double    @llvm.trunc.f64(double %Val)
declare float     @llvm.rint.f32(float  %Val)
declare double    @llvm.rint.f64(double %Val)
declare double    @llvm.sqrt.f64(double %Val)
declare float     @llvm.sqrt.f32(float  %Val)






define float @test_trunc(float %a) {
  %c = call float @llvm.trunc.f32(float %a)
  ret float %c
}






define double @test_sqrt(double %a) {
  %c = call double @llvm.sqrt.f64(double %a)
  ret double %c
}






define float @test_rint(float %a) {
  %c = call float @llvm.rint.f32(float %a)
  ret float %c
}






define float @test_vmax(float %i, float %j) {
  %cmp_res = fcmp ogt float %i, %j
  %max = select i1 %cmp_res, float %i, float %j
  ret float %max
}






define float @test_mov(float %a, float %b, float %i, float %j) {
  %cmp_res = fcmp ogt float %i, %j
  %max = select i1 %cmp_res, float %b, float %a
  ret float %max
}

