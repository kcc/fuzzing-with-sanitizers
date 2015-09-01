




define i64 @f1(i64 %a, i32 %b) {




  %low = zext i32 %b to i64
  %high = and i64 %a, -4294967296
  %res = or i64 %high, %low
  ret i64 %res
}


define i64 @f2(i64 %a, i32 %b) {




  %low = zext i32 %b to i64
  %high = and i64 %a, -4294967296
  %res = or i64 %low, %high
  ret i64 %res
}


define i64 @f3(i64 %a, i64 %b) {




  %low = and i64 %b, 4294967295
  %high = and i64 %a, -4294967296
  %res = or i64 %high, %low
  ret i64 %res
}


define i64 @f4(i64 %a, i64 %b) {




  %low = and i64 %b, 4294967295
  %high = and i64 %a, -4294967296
  %res = or i64 %low, %high
  ret i64 %res
}


define i64 @f5(i64 %a, i32 %b) {




  %neg = sub i32 0, %b
  %low = zext i32 %neg to i64
  %high = and i64 %a, -4294967296
  %res = or i64 %high, %low
  ret i64 %res
}


define i64 @f6(i64 %a, i32 %b) {




  %parta = shl i32 %b, 1
  %partb = lshr i32 %b, 31
  %rot = or i32 %parta, %partb
  %low = zext i32 %rot to i64
  %high = and i64 %a, -4294967296
  %res = or i64 %low, %high
  ret i64 %res
}



define i64 @f7(i64 %a, i32 *%src) {




  %b = load i32 , i32 *%src
  %low = zext i32 %b to i64
  %high = and i64 %a, -4294967296
  %res = or i64 %high, %low
  ret i64 %res
}


define i64 @f8(i64 %a, i8 *%src) {




  %byte = load i8 , i8 *%src
  %b = sext i8 %byte to i32
  %low = zext i32 %b to i64
  %high = and i64 %a, -4294967296
  %res = or i64 %high, %low
  ret i64 %res
}




define i64 @f9(i64 %a, i32 %b) {




  %shift = shl i64 %a, 32
  %low = zext i32 %b to i64
  %or = or i64 %shift, %low
  ret i64 %or
}


define i64 @f10(i64 %a, i32 %b) {




  %shift = shl i64 %a, 32
  %low = zext i32 %b to i64
  %or = or i64 %low, %shift
  ret i64 %or
}


define i64 @f11(i64 %a, i64 %b) {



  %shift = shl i64 %a, 32
  %low = and i64 %b, 4294967295
  %or = or i64 %shift, %low
  ret i64 %or
}


define i64 @f12(i64 %a, i64 %b) {



  %shift = shl i64 %a, 32
  %low = and i64 %b, 4294967295
  %or = or i64 %low, %shift
  ret i64 %or
}


define i64 @f13(i64 %a, i32 %b) {




  %shift = shl i64 %a, 60
  %low = zext i32 %b to i64
  %or = or i64 %shift, %low
  ret i64 %or
}


define i64 @f14(i64 %a, i64 %b) {



  %and1 = and i64 %a, 144115188075855872
  %and2 = and i64 %b, 15
  %or = or i64 %and1, %and2
  %res = icmp eq i64 %or, 0
  %ext = sext i1 %res to i64
  ret i64 %ext
}


define i64 @f15(i64 %a, i8 *%src) {




  %byte = load i8 , i8 *%src
  %b = sext i8 %byte to i64
  %low = and i64 %b, 4294967295
  %high = and i64 %a, -4294967296
  %res = or i64 %high, %low
  ret i64 %res
}
