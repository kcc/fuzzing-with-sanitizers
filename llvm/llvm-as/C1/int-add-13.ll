




define i32 @f1(i32 %a, i32 %b, i32 %c) {



  %add = add i32 %b, %c
  ret i32 %add
}


define i32 @f2(i32 %a, i32 %b) {



  %add = add i32 %a, %b
  ret i32 %add
}


define i64 @f3(i64 %a, i64 %b, i64 %c) {



  %add = add i64 %b, %c
  ret i64 %add
}


define i64 @f4(i64 %a, i64 %b) {



  %add = add i64 %a, %b
  ret i64 %add
}
