


declare float @llvm.fma.f32(float, float, float)
declare double @llvm.fma.f64(double, double, double)

define float @test_fmadd(float %a, float %b, float %c) {


  %val = call float @llvm.fma.f32(float %a, float %b, float %c)


  ret float %val
}

define float @test_fmsub(float %a, float %b, float %c) {


  %nega = fsub float -0.0, %a
  %val = call float @llvm.fma.f32(float %nega, float %b, float %c)


  ret float %val
}

define float @test_fnmadd(float %a, float %b, float %c) {


  %nega = fsub float -0.0, %a
  %negc = fsub float -0.0, %c
  %val = call float @llvm.fma.f32(float %nega, float %b, float %negc)


  ret float %val
}

define float @test_fnmsub(float %a, float %b, float %c) {


  %negc = fsub float -0.0, %c
  %val = call float @llvm.fma.f32(float %a, float %b, float %negc)


  ret float %val
}

define double @testd_fmadd(double %a, double %b, double %c) {


  %val = call double @llvm.fma.f64(double %a, double %b, double %c)


  ret double %val
}

define double @testd_fmsub(double %a, double %b, double %c) {


  %nega = fsub double -0.0, %a
  %val = call double @llvm.fma.f64(double %nega, double %b, double %c)


  ret double %val
}

define double @testd_fnmadd(double %a, double %b, double %c) {


  %nega = fsub double -0.0, %a
  %negc = fsub double -0.0, %c
  %val = call double @llvm.fma.f64(double %nega, double %b, double %negc)


  ret double %val
}

define double @testd_fnmsub(double %a, double %b, double %c) {


  %negc = fsub double -0.0, %c
  %val = call double @llvm.fma.f64(double %a, double %b, double %negc)


  ret double %val
}

define float @test_fmadd_unfused(float %a, float %b, float %c) {


  %prod = fmul float %b, %c
  %sum = fadd float %a, %prod




  ret float %sum
}

define float @test_fmsub_unfused(float %a, float %b, float %c) {


  %prod = fmul float %b, %c
  %diff = fsub float %a, %prod




  ret float %diff
}

define float @test_fnmadd_unfused(float %a, float %b, float %c) {


  %nega = fsub float -0.0, %a
  %prod = fmul float %b, %c
  %diff = fsub float %nega, %prod





  ret float %diff
}

define float @test_fnmsub_unfused(float %a, float %b, float %c) {


  %nega = fsub float -0.0, %a
  %prod = fmul float %b, %c
  %sum = fadd float %nega, %prod




  ret float %sum
}



define float @test_fmadd_unfused_su(float %a, float %b, float %c) {

  %prod = fmul float %b, %c
  %sum = fadd float %a, %prod
  %res = fadd float %sum, %prod




  ret float %res
}

define float @test_fmsub_unfused_su(float %a, float %b, float %c) {

  %prod = fmul float %b, %c
  %diff = fsub float %a, %prod
  %res = fsub float %diff, %prod




  ret float %res
}

