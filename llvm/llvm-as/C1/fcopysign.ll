





define double @func0(double %d0, double %d1) nounwind readnone {
entry:

























  %call = tail call double @copysign(double %d0, double %d1) nounwind readnone
  ret double %call
}

declare double @copysign(double, double) nounwind readnone

define float @func1(float %f0, float %f1) nounwind readnone {
entry:













  %call = tail call float @copysignf(float %f0, float %f1) nounwind readnone
  ret float %call
}

declare float @copysignf(float, float) nounwind readnone

