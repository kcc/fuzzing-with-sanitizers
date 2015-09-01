

define i64 @t1(double %d_ivar) nounwind uwtable ssp {
entry:

  %0 = bitcast double %d_ivar to i64


  ret i64 %0
}

define double @t2(i64 %d_ivar) nounwind uwtable ssp {
entry:

  %0 = bitcast i64 %d_ivar to double


  ret double %0
}
