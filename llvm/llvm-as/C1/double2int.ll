

define i32 @f1(double %d) nounwind readnone {
entry:

  %conv = fptosi double %d to i32
  ret i32 %conv
}
