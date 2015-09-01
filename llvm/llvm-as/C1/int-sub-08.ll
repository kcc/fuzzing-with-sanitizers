




define i32 @f1(i32 %a, i32 %b, i32 %c) {



  %sub = sub i32 %b, %c
  ret i32 %sub
}


define i32 @f2(i32 %a, i32 %b) {



  %sub = sub i32 %a, %b
  ret i32 %sub
}


define i64 @f3(i64 %a, i64 %b, i64 %c) {



  %sub = sub i64 %b, %c
  ret i64 %sub
}


define i64 @f4(i64 %a, i64 %b) {



  %sub = sub i64 %a, %b
  ret i64 %sub
}
