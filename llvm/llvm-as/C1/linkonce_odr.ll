
















define linkonce_odr i32 @funB(i32 %x, i32 %y) {
  %sum = add i32 %x, %y
  %sum2 = add i32 %x, %sum
  %sum3 = add i32 %x, %sum2
  ret i32 %sum3
}

define linkonce_odr i32 @funA(i32 %x, i32 %y) {
  %sum = add i32 %x, %y
  %sum2 = add i32 %x, %sum
  %sum3 = add i32 %x, %sum2
  ret i32 %sum3
}
