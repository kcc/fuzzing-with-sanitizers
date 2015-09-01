




define i32 @f1(i32 %a, i32 %b, i32 %amt) {



  %add = add i32 %amt, 15
  %shift = shl i32 %b, %add
  ret i32 %shift
}


define i32 @f2(i32 %a, i32 %amt) {



  %add = add i32 %amt, 15
  %shift = shl i32 %a, %add
  ret i32 %shift
}


define i32 @f3(i32 %a, i32 %b, i32 %amt) {



  %add = add i32 %amt, 15
  %shift = lshr i32 %b, %add
  ret i32 %shift
}


define i32 @f4(i32 %a, i32 %amt) {



  %add = add i32 %amt, 15
  %shift = lshr i32 %a, %add
  ret i32 %shift
}


define i32 @f5(i32 %a, i32 %b, i32 %amt) {



  %add = add i32 %amt, 15
  %shift = ashr i32 %b, %add
  ret i32 %shift
}


define i32 @f6(i32 %a, i32 %amt) {



  %add = add i32 %amt, 15
  %shift = ashr i32 %a, %add
  ret i32 %shift
}
