







define i1 @test1(i32 %a) {
entry:
  %0 = or i32 %a, 1
  %1 = shl i32 %0, 31
  %2 = mul nsw i32 %1, 4
  %3 = and i32 %2, -4
  %4 = icmp ne i32 %3, 0
  ret i1 %4
}
