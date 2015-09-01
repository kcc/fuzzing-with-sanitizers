

























declare double @floor(double)
declare double @ceil(double)
declare double @round(double)
declare double @nearbyint(double)
declare double @trunc(double)
declare double @fabs(double)

define float @test_floor(float %C) {
  %D = fpext float %C to double
  
  %E = call double @floor(double %D)
  %F = fptrunc double %E to float
  ret float %F
}

define float @test_ceil(float %C) {
  %D = fpext float %C to double
  
  %E = call double @ceil(double %D)
  %F = fptrunc double %E to float
  ret float %F
}

define float @test_round(float %C) {
  %D = fpext float %C to double
  
  %E = call double @round(double %D)
  %F = fptrunc double %E to float
  ret float %F
}

define float @test_nearbyint(float %C) {
  %D = fpext float %C to double
  
  %E = call double @nearbyint(double %D)
  %F = fptrunc double %E to float
  ret float %F
}

define float @test_trunc(float %C) {
  %D = fpext float %C to double
  
  %E = call double @trunc(double %D)
  %F = fptrunc double %E to float
  ret float %F
}

define float @test_fabs(float %C) {
  %D = fpext float %C to double
  
  %E = call double @fabs(double %D)
  %F = fptrunc double %E to float
  ret float %F
}
