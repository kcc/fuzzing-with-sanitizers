



define float @test1(float %x, float %y) nounwind {
entry:



  %0 = tail call float @copysignf(float %x, float %y) nounwind readnone
  ret float %0
}

define double @test2(double %x, double %y) nounwind {
entry:




  %0 = tail call double @copysign(double %x, double %y) nounwind readnone
  ret double %0
}


define double @test3(double %a, float %b, float %c) nounwind {




  %tmp1 = fadd float %b, %c
  %tmp2 = fpext float %tmp1 to double
  %tmp = tail call double @copysign( double %a, double %tmp2 ) nounwind readnone
  ret double %tmp
}

define float @test4() nounwind {
entry:




  %0 = tail call double (...) @bar() nounwind
  %1 = fptrunc double %0 to float
  %2 = tail call float @copysignf(float 5.000000e-01, float %1) nounwind readnone
  %3 = fadd float %1, %2
  ret float %3
}

declare double @bar(...)
declare double @copysign(double, double) nounwind readnone
declare float @copysignf(float, float) nounwind readnone
