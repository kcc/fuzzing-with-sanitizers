


define i32 @x(i32 %t) nounwind readnone ssp {
entry:



  %and = and i32 %t, 256
  %tobool = icmp eq i32 %and, 0
  %retval.0 = select i1 %tobool, i32 0, i32 -26
  ret i32 %retval.0
}
