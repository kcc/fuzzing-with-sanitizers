




define i32 @f1(i32 %a) {



  %shift = ashr i32 %a, 1
  ret i32 %shift
}


define i32 @f2(i32 %a) {



  %shift = ashr i32 %a, 31
  ret i32 %shift
}


define i32 @f3(i32 %a) {



  %shift = ashr i32 %a, 32
  ret i32 %shift
}


define i32 @f4(i32 %a, i32 %amt) {



  %sub = sub i32 %amt, 1
  %shift = ashr i32 %a, %sub
  ret i32 %shift
}


define i32 @f5(i32 %a, i32 %amt) {



  %shift = ashr i32 %a, %amt
  ret i32 %shift
}


define i32 @f6(i32 %a, i32 %amt) {



  %add = add i32 %amt, 10
  %shift = ashr i32 %a, %add
  ret i32 %shift
}


define i32 @f7(i32 %a, i64 %amt) {



  %add = add i64 %amt, 10
  %trunc = trunc i64 %add to i32
  %shift = ashr i32 %a, %trunc
  ret i32 %shift
}



define i32 @f8(i32 %a, i32 %amt) {



  %add = add i32 %amt, 4095
  %shift = ashr i32 %a, %add
  ret i32 %shift
}


define i32 @f9(i32 %a, i32 %amt) {




  %add = add i32 %amt, 4096
  %shift = ashr i32 %a, %add
  ret i32 %shift
}


define i32 @f10(i32 %a, i32 %b, i32 %c) {




  %add = add i32 %b, %c
  %shift = ashr i32 %a, %add
  ret i32 %shift
}


define i32 @f11(i32 %a, i32 *%ptr) {




  %amt = load i32 , i32 *%ptr
  %shift = ashr i32 %a, %amt
  ret i32 %shift
}
