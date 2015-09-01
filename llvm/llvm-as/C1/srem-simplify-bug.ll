


define i1 @f(i32 %x) {
  %A = or i32 %x, 1
  %B = srem i32 %A, 1
  %C = icmp ne i32 %B, 0
  ret i1 %C
}
