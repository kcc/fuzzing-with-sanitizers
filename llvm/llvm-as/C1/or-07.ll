




define i32 @f1(i32 %a, i32 %b, i32 %c) {



  %or = or i32 %b, %c
  ret i32 %or
}


define i32 @f2(i32 %a, i32 %b) {



  %or = or i32 %a, %b
  ret i32 %or
}


define i64 @f3(i64 %a, i64 %b, i64 %c) {



  %or = or i64 %b, %c
  ret i64 %or
}


define i64 @f4(i64 %a, i64 %b) {



  %or = or i64 %a, %b
  ret i64 %or
}
