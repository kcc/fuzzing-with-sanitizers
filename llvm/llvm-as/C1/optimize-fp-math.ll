










define float @test_sqrtf_float_(float %a) {
entry:
  %call = tail call float @sqrtf(float %a)
  ret float %call
}

declare float @sqrtf(float)








define double @test_sqrt_double_(double %a) {
entry:
  %call = tail call double @sqrt(double %a)
  ret double %call
}

declare double @sqrt(double)
