



define i64 @t1(i64 %a) nounwind readnone {
entry:
  %0 = mul i64 %a, 81


  ret i64 %0
}

define i64 @t2(i64 %a) nounwind readnone {
entry:
  %0 = mul i64 %a, 40


  ret i64 %0
}
