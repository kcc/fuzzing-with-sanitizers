




define i32 @f1(i32 %a, i32 %b) {



  %andb = and i32 %b, 16
  %or = or i32 %a, %andb
  ret i32 %or
}


define i64 @f2(i64 %a, i64 %b) {



  %andb = and i64 %b, 16
  %or = or i64 %a, %andb
  ret i64 %or
}


define i32 @f3(i32 %a, i32 %b) {



  %andb = and i32 %b, -7
  %or = or i32 %a, %andb
  ret i32 %or
}


define i64 @f4(i64 %a, i64 %b) {



  %andb = and i64 %b, -7
  %or = or i64 %a, %andb
  ret i64 %or
}


define i32 @f6(i32 %a, i32 %b) {



  %shrb = shl i32 %b, 12
  %or = or i32 %a, %shrb
  ret i32 %or
}


define i64 @f7(i64 %a, i64 %b) {



  %shrb = shl i64 %b, 12
  %or = or i64 %a, %shrb
  ret i64 %or
}


define i32 @f8(i32 %a, i32 %b) {




  %shlb = shl i32 %b, 30
  %shrb = lshr i32 %b, 2
  %rotlb = or i32 %shlb, %shrb
  %or = or i32 %a, %rotlb
  ret i32 %or
}


define i64 @f9(i64 %a, i64 %b) {



  %shlb = shl i64 %b, 47
  %shrb = lshr i64 %b, 17
  %rotlb = or i64 %shlb, %shrb
  %or = or i64 %a, %rotlb
  ret i64 %or
}


define i32 @f10(i32 %a, i32 %b) {



  %shrb = shl i32 %b, 4
  %andb = and i32 %shrb, 240
  %or = or i32 %a, %andb
  ret i32 %or
}


define i64 @f11(i64 %a, i64 %b) {



  %shrb = shl i64 %b, 4
  %andb = and i64 %shrb, 240
  %or = or i64 %a, %andb
  ret i64 %or
}


define i64 @f12(i64 %a, i32 %b) {



  %add = add i32 %b, 1
  %ext = zext i32 %add to i64
  %or = or i64 %a, %ext
  ret i64 %or
}
