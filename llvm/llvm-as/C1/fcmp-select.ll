






define double @f0(double %x) nounwind readnone {
entry:
  %cmp = fcmp une double %x, -1.0
  %cond = select i1 %cmp, double %x, double -1.0
  ret double %cond
}


define double @f1(double %x) nounwind readnone {
entry:
  %cmp = fcmp une double %x, -1.0
  %cond = select i1 %cmp, double -1.0, double %x
  ret double %cond
}


define double @f2(double %x, double %y) nounwind readnone {
entry:
  %cmp = fcmp une double %x, %y
  %cond = select i1 %cmp, double %x, double %y
  ret double %cond
}


define double @f3(double %x, double %y) nounwind readnone {
entry:
  %cmp = fcmp une double %x, %y
  %cond = select i1 %cmp, double %y, double %x
  ret double %cond
}


define double @f4(double %x) nounwind readnone {
entry:
  %cmp = fcmp one double %x, -1.0
  %cond = select i1 %cmp, double %x, double -1.0
  ret double %cond
}


define double @f5(double %x) nounwind readnone {
entry:
  %cmp = fcmp one double %x, -1.0
  %cond = select i1 %cmp, double -1.0, double %x
  ret double %cond
}
