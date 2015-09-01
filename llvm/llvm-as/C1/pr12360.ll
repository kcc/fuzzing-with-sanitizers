

define zeroext i1 @f1(i8* %x) {




entry:
  %0 = load i8, i8* %x, align 1, !range !0
  %tobool = trunc i8 %0 to i1
  ret i1 %tobool
}

define zeroext i1 @f2(i8* %x) {




entry:
  %0 = load i8, i8* %x, align 1, !range !0
  %tobool = icmp ne i8 %0, 0
  ret i1 %tobool
}

!0 = !{i8 0, i8 2}



define zeroext i1 @f3(i1 %x) {


entry:
  %tobool = icmp ne i1 %x, 0
  ret i1 %tobool
}


define zeroext i1 @f4(i32 %x) {



entry:
  %y = and i32 %x, 32768
  %z = icmp ne i32 %y, 0
  ret i1 %z
}
