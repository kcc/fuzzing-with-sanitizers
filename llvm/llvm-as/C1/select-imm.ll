







define i32 @t1(i32 %c) nounwind readnone {
entry:













  %0 = icmp sgt i32 %c, 1
  %1 = select i1 %0, i32 123, i32 357
  ret i32 %1
}

define i32 @t2(i32 %c) nounwind readnone {
entry:













  %0 = icmp sgt i32 %c, 1
  %1 = select i1 %0, i32 357, i32 123
  ret i32 %1
}

define i32 @t3(i32 %a) nounwind readnone {
entry:











  %0 = icmp eq i32 %a, 160
  %1 = zext i1 %0 to i32
  ret i32 %1
}

define i32 @t4(i32 %a, i32 %b, i32 %x) nounwind {
entry:










  %0 = icmp slt i32 %a, %b
  %1 = select i1 %0, i32 4283826005, i32 %x
  ret i32 %1
}


define i32 @t5(i32 %a) nounwind {
entry:











  %cmp = icmp eq i32 %a, 1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

define i32 @t6(i32 %a) nounwind {
entry:










  %tobool = icmp ne i32 %a, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}
