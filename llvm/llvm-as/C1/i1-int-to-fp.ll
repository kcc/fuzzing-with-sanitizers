





define float @foo(i1 %a) {
  %ret = uitofp i1 %a to float
  ret float %ret
}





define float @foo2(i1 %a) {
  %ret = sitofp i1 %a to float
  ret float %ret
}





define double @foo3(i1 %a) {
  %ret = uitofp i1 %a to double
  ret double %ret
}





define double @foo4(i1 %a) {
  %ret = sitofp i1 %a to double
  ret double %ret
}
