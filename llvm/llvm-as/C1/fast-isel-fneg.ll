








define double @doo(double %x) nounwind {
  %y = fsub double -0.0, %x
  ret double %y
}



define float @foo(float %x) nounwind {
  %y = fsub float -0.0, %x
  ret float %y
}
