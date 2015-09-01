




define i32 @f1(i32 %a, i32 %b, i32 %c) {



  %and = and i32 %b, %c
  ret i32 %and
}


define i32 @f2(i32 %a, i32 %b) {



  %and = and i32 %a, %b
  ret i32 %and
}


define i64 @f3(i64 %a, i64 %b, i64 %c) {



  %and = and i64 %b, %c
  ret i64 %and
}


define i64 @f4(i64 %a, i64 %b) {



  %and = and i64 %a, %b
  ret i64 %and
}
