














define float @foo0(float %a) nounwind readnone {
entry:




  %call = tail call float @fabsf(float %a) nounwind readnone
  ret float %call
}

declare float @fabsf(float) nounwind readnone

define double @foo1(double %a) nounwind readnone {
entry:




  %call = tail call double @fabs(double %a) nounwind readnone
  ret double %call
}

declare double @fabs(double) nounwind readnone
