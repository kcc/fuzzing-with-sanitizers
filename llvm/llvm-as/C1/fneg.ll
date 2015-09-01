














define float @foo0(float %d) nounwind readnone {
entry:


  %sub = fsub float -0.000000e+00, %d
  ret float %sub
}

define double @foo1(double %d) nounwind readnone {
entry:


  %sub = fsub double -0.000000e+00, %d
  ret double %sub
}
