


define i32 @foo(i32 %x) {
  %y = xor i32 %x, 3
  %z = srem i32 1656690544, %y
  %sext = shl i32 %z, 24
  %s = ashr exact i32 %sext, 24
  ret i32 %s


}
