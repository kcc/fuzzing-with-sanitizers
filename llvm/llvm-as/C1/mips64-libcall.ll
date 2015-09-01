









define double @callfloor(double %d) nounwind readnone {
entry:
  %add = fadd double %d, 1.000000e+00
  %call = tail call double @floor(double %add) nounwind readnone
  ret double %call
}

declare double @floor(double) nounwind readnone






define double @f64add(double %a, double %b) {
entry:
  %add = fadd double %a, %b
  ret double %add
}
