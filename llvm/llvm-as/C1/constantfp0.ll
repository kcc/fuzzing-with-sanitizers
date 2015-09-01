

define i32 @branch(double %d) nounwind readnone {
entry:



  %tobool = fcmp une double %d, 0.000000e+00
  %. = zext i1 %tobool to i32
  ret i32 %.
}
