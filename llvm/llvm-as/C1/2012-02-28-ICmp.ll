










define i1 @f1(i32 %x) {
  %a = trunc i32 %x to i8
  %b = icmp ne i8 %a, 0
  %c = and i32 %x, 16711680
  %d = icmp ne i32 %c, 0
  %e = and i1 %b, %d
  ret i1 %e
}
