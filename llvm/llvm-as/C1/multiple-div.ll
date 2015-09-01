














define i32 @two_divides(i32 %a, i32 %b) {
  %r = udiv i32 %a, %b
  %r2 = udiv i32 %b, %a
  %r3 = add i32 %r, %r2
  ret i32 %r3
}
