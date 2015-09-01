





define float @foo(float %a, float %b) {
entry:





  %0 = fmul float %a, %b
  ret float %0
}

define double @bar(double %a, double %b) {
entry:

  %0 = fmul double %a, %b




  ret double %0
}
