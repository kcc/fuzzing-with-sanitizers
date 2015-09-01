


define i32 @sdiv_i32_exact(i32 %a) {


  %1 = sdiv exact i32 %a, 8
  ret i32 %1
}

define i32 @sdiv_i32_pos(i32 %a) {





  %1 = sdiv i32 %a, 8
  ret i32 %1
}

define i32 @sdiv_i32_neg(i32 %a) {





  %1 = sdiv i32 %a, -8
  ret i32 %1
}

define i64 @sdiv_i64_exact(i64 %a) {


  %1 = sdiv exact i64 %a, 16
  ret i64 %1
}

define i64 @sdiv_i64_pos(i64 %a) {





  %1 = sdiv i64 %a, 16
  ret i64 %1
}

define i64 @sdiv_i64_neg(i64 %a) {





  %1 = sdiv i64 %a, -16
  ret i64 %1
}
