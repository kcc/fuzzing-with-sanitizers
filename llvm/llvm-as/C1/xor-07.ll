




define i32 @f1(i32 %a, i32 %b, i32 %c) {



  %xor = xor i32 %b, %c
  ret i32 %xor
}


define i32 @f2(i32 %a, i32 %b) {



  %xor = xor i32 %a, %b
  ret i32 %xor
}


define i64 @f3(i64 %a, i64 %b, i64 %c) {



  %xor = xor i64 %b, %c
  ret i64 %xor
}


define i64 @f4(i64 %a, i64 %b) {



  %xor = xor i64 %a, %b
  ret i64 %xor
}
