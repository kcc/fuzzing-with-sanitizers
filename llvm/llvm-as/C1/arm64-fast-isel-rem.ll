











define i32 @t1(i32 %a, i32 %b) {



  %1 = srem i32 %a, %b
  ret i32 %1
}

define i64 @t2(i64 %a, i64 %b) {



  %1 = srem i64 %a, %b
  ret i64 %1
}

define i32 @t3(i32 %a, i32 %b) {



  %1 = urem i32 %a, %b
  ret i32 %1
}

define i64 @t4(i64 %a, i64 %b) {



  %1 = urem i64 %a, %b
  ret i64 %1
}
