




define i32 @t1(i1 %c) nounwind readnone {
entry:











  %0 = select i1 %c, i32 10, i32 20
  ret i32 %0
}

define i32 @t2(i1 %c, i32 %a) nounwind readnone {
entry:









  %0 = select i1 %c, i32 %a, i32 20
  ret i32 %0
}

define i32 @t3(i1 %c, i32 %a, i32 %b) nounwind readnone {
entry:









  %0 = select i1 %c, i32 %a, i32 %b
  %1 = add i32 %0, %a
  ret i32 %1
}

define i32 @t4(i1 %c) nounwind readnone {
entry:











  %0 = select i1 %c, i32 -10, i32 -1
  ret i32 %0
}

define i32 @t5(i1 %c, i32 %a) nounwind readnone {
entry:









  %0 = select i1 %c, i32 %a, i32 -2
  ret i32 %0
}


define i32 @t6(i1 %c, i32 %a) nounwind readnone {
entry:









  %0 = select i1 %c, i32 %a, i32 -978945
  ret i32 %0
}
