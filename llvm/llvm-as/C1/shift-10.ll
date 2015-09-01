




define i64 @f1(i32 %a) {




  %shr = lshr i32 %a, 1
  %trunc = trunc i32 %shr to i1
  %ext = sext i1 %trunc to i64
  ret i64 %ext
}



define i64 @f2(i32 %a) {




  %shr = lshr i32 %a, 30
  %trunc = trunc i32 %shr to i1
  %ext = sext i1 %trunc to i64
  ret i64 %ext
}



define i64 @f3(i32 %a) {



  %shr = lshr i32 %a, 1
  %ext = zext i32 %shr to i64
  %shl = shl i64 %ext, 10
  %and = and i64 %shl, 137438952960
  ret i64 %and
}


define i64 @f4(i32 %a) {



  %shr = lshr i32 %a, 30
  %ext = sext i32 %shr to i64
  %shl = shl i64 %ext, 33
  %and = and i64 %shl, 8589934592
  ret i64 %and
}



define i64 @f5(i32 %a) {




  %shr = lshr i32 %a, 30
  %ext = sext i32 %shr to i64
  %shl = shl i64 %ext, 33
  %or = or i64 %shl, 7
  ret i64 %or
}



define i64 @f6(i64 %a) {



  %shl = shl i64 %a, 10
  %shr = ashr i64 %shl, 60
  %and = and i64 %shr, 256
  ret i64 %and
}


define i64 @f7(i32 %a) {




  %1 = shl i32 %a, 30
  %sext = ashr i32 %1, 31
  %ext = sext i32 %sext to i64
  ret i64 %ext
}
