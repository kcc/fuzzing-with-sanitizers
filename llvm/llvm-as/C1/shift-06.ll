




define i64 @f1(i64 %a) {



  %shift = lshr i64 %a, 1
  ret i64 %shift
}


define i64 @f2(i64 %a) {



  %shift = lshr i64 %a, 63
  ret i64 %shift
}


define i64 @f3(i64 %a) {



  %shift = lshr i64 %a, 64
  ret i64 %shift
}


define i64 @f4(i64 %a, i64 %amt) {



  %shift = lshr i64 %a, %amt
  ret i64 %shift
}


define i64 @f5(i64 %a, i64 %amt) {



  %add = add i64 %amt, 10
  %shift = lshr i64 %a, %add
  ret i64 %shift
}


define i64 @f6(i64 %a, i32 %amt) {



  %add = add i32 %amt, 10
  %addext = sext i32 %add to i64
  %shift = lshr i64 %a, %addext
  ret i64 %shift
}


define i64 @f7(i64 %a, i32 %amt) {



  %add = add i32 %amt, 10
  %addext = zext i32 %add to i64
  %shift = lshr i64 %a, %addext
  ret i64 %shift
}



define i64 @f8(i64 %a, i64 %amt) {



  %add = add i64 %amt, 524287
  %shift = lshr i64 %a, %add
  ret i64 %shift
}



define i64 @f9(i64 %a, i64 %amt) {




  %add = add i64 %amt, 524288
  %shift = lshr i64 %a, %add
  ret i64 %shift
}


define i64 @f10(i64 %a, i64 %amt) {



  %sub = sub i64 %amt, 1
  %shift = lshr i64 %a, %sub
  ret i64 %shift
}



define i64 @f11(i64 %a, i64 %amt) {



  %sub = sub i64 %amt, 524288
  %shift = lshr i64 %a, %sub
  ret i64 %shift
}



define i64 @f12(i64 %a, i64 %amt) {




  %sub = sub i64 %amt, 524289
  %shift = lshr i64 %a, %sub
  ret i64 %shift
}


define i64 @f13(i64 %a, i64 %b, i64 %c) {




  %add = add i64 %b, %c
  %shift = lshr i64 %a, %add
  ret i64 %shift
}


define i64 @f14(i64 %a, i64 *%ptr) {




  %amt = load i64 , i64 *%ptr
  %shift = lshr i64 %a, %amt
  ret i64 %shift
}
