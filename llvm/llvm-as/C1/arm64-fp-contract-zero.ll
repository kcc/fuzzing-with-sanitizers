




define double @test_fms_fold(double %a, double %b) {



  %mul = fmul double %a, 0.000000e+00
  %mul1 = fmul double %b, 0.000000e+00
  %sub = fsub double %mul, %mul1
  ret double %sub
}