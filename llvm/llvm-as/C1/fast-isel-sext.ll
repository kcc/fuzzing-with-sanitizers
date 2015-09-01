



define i32 @f(i32* %y) {
  %x = load i32, i32* %y
  %dec = add i32 %x, -2
  ret i32 %dec
}
