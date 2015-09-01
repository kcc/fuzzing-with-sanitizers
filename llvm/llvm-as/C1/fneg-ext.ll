


define double @test1(float %a, double %b) nounwind readnone ssp uwtable {



  %1 = fsub float -0.000000e+00, %a
  %2 = fpext float %1 to double
  %3 = fsub double %b, %2
  ret double %3
}


define double @test2(float %a, double %b) nounwind readnone ssp uwtable {



  %1 = fsub float -0.000000e+00, %a
  %2 = fpext float %1 to double
  %3 = fsub fast double %b, %2
  ret double %3
}
