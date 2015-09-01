

define weak i32 @sum(i32 %x, i32 %y) {
  %sum = add i32 %x, %y
  %sum2 = add i32 %sum, %y
  %sum3 = add i32 %sum2, %y
  ret i32 %sum3
}

define weak i32 @add(i32 %x, i32 %y) {
  %sum = add i32 %x, %y
  %sum2 = add i32 %sum, %y
  %sum3 = add i32 %sum2, %y
  ret i32 %sum3
}


























define i32 @use_weak(i32 %a, i32 %b) {
  %res = call i32 @add(i32 %a, i32 %b)
  %res2 = call i32 @sum(i32 %a, i32 %b)
  %res3 = add i32 %res, %res2
  ret i32 %res3
}
