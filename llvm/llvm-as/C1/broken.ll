


define i32 @foo(i32 %v) {
  %first = add i32 %v, %second
  %second = add i32 %v, 3
  ret i32 %first
}
