




define i32 @f1(i32 %a) {



  %and = and i32 %a, 1
  ret i32 %and
}


define i32 @f2(i32 %a, i32 %b) {



  %and = and i32 %b, 1
  ret i32 %and
}


define i32 @f3(i32 %a, i32 %b) {



  %and = and i32 %b, 4
  ret i32 %and
}


define i32 @f4(i32 %a) {



  %and = and i32 %a, 5
  ret i32 %and
}


define i32 @f5(i32 %a, i32 %b) {



  %and = and i32 %b, 5
  ret i32 %and
}


define i32 @f6(i32 %a) {



  %and = and i32 %a, 65533
  ret i32 %and
}


define i32 @f7(i32 %a, i32 %b) {



  %and = and i32 %b, 65533
  ret i32 %and
}


define i32 @f8(i32 %a) {



  %and = and i32 %a, 65534
  ret i32 %and
}


define i32 @f9(i32 %a, i32 %b) {



  %and = and i32 %b, 65534
  ret i32 %and
}


define i32 @f10(i32 %a, i32 %b) {



  %and = and i32 %b, 65535
  ret i32 %and
}


define i32 @f11(i32 %a) {



  %and = and i32 %a, 65536
  ret i32 %and
}


define i32 @f12(i32 %a, i32 %b) {



  %and = and i32 %b, 65536
  ret i32 %and
}


define i32 @f13(i32 %a) {



  %and = and i32 %a, 131071
  ret i32 %and
}


define i32 @f14(i32 %a, i32 %b) {



  %and = and i32 %b, 131071
  ret i32 %and
}


define i32 @f15(i32 %a) {



  %and = and i32 %a, -65538
  ret i32 %and
}


define i32 @f16(i32 %a) {



  %and = and i32 %a, -65537
  ret i32 %and
}


define i32 @f17(i32 %a) {



  %and = and i32 %a, -65536
  ret i32 %and
}


define i32 @f18(i32 %a, i32 %b) {



  %and = and i32 %b, -65536
  ret i32 %and
}


define i32 @f19(i32 %a) {



  %and = and i32 %a, -65535
  ret i32 %and
}


define i32 @f20(i32 %a, i32 %b) {



  %and = and i32 %b, -65534
  ret i32 %and
}


define i32 @f21(i32 %a) {



  %and = and i32 %a, -2
  ret i32 %and
}


define i32 @f22(i32 %a, i32 %b) {



  %and = and i32 %b, -2
  ret i32 %and
}



define i64 @f23(i64 %a, i32 %b) {



  %and1 = and i64 %a, -4294967296
  %and2 = and i32 %b, 2
  %ext = zext i32 %and2 to i64
  %or = or i64 %and1, %ext
  ret i64 %or
}


define i64 @f24(i64 %a, i32 %b) {



  %and1 = and i64 %a, -4294967296
  %and2 = and i32 %b, -5
  %ext = zext i32 %and2 to i64
  %or = or i64 %and1, %ext
  ret i64 %or
}
