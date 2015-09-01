




define i32 @f1(i32 %a, i32 %b) {



  %anda = and i32 %a, -15
  %andb = and i32 %b, 14
  %or = or i32 %anda, %andb
  ret i32 %or
}


define i64 @f2(i64 %a, i64 %b) {



  %anda = and i64 %a, -15
  %andb = and i64 %b, 14
  %or = or i64 %anda, %andb
  ret i64 %or
}


define i32 @f3(i32 %a, i32 %b) {



  %anda = and i32 %a, -16
  %shr = lshr i32 %b, 8
  %andb = and i32 %shr, 15
  %or = or i32 %anda, %andb
  ret i32 %or
}


define i64 @f4(i64 %a, i64 %b) {



  %anda = and i64 %a, -16
  %shr = lshr i64 %b, 8
  %andb = and i64 %shr, 15
  %or = or i64 %anda, %andb
  ret i64 %or
}


define i32 @f5(i32 %a, i32 %b) {



  %anda = and i32 %a, 1023
  %shlb = shl i32 %b, 10
  %or = or i32 %anda, %shlb
  ret i32 %or
}


define i64 @f6(i64 %a, i64 %b) {



  %anda = and i64 %a, 1023
  %shlb = shl i64 %b, 10
  %or = or i64 %anda, %shlb
  ret i64 %or
}


define i32 @f7(i32 %a, i32 %b) {



  %anda = and i32 %a, -16777216
  %shrb = lshr i32 %b, 8
  %or = or i32 %anda, %shrb
  ret i32 %or
}


define i64 @f8(i64 %a, i64 %b) {



  %anda = and i64 %a, -72057594037927936
  %shrb = lshr i64 %b, 8
  %or = or i64 %anda, %shrb
  ret i64 %or
}
