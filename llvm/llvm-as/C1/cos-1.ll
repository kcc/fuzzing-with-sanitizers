




target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"

declare double @cos(double)



define double @test_simplify1(double %d) {

  %neg = fsub double -0.000000e+00, %d
  %cos = call double @cos(double %neg)

  ret double %cos
}

define float @test_simplify2(float %f) {

  %conv1 = fpext float %f to double
  %neg = fsub double -0.000000e+00, %conv1
  %cos = call double @cos(double %neg)
  %conv2 = fptrunc double %cos to float

  ret float %conv2
}

define float @test_simplify3(float %f) {

  %conv1 = fpext float %f to double
  %neg = fsub double -0.000000e+00, %conv1
  %cos = call double @cos(double %neg)

  %conv2 = fptrunc double %cos to float
  ret float %conv2
}
