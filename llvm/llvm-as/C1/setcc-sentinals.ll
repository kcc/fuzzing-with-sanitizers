

define zeroext i1 @test0(i32 %x) nounwind {






  %cmp1 = icmp ne i32 %x, -1
  %not.cmp = icmp ne i32 %x, 0
  %.cmp1 = and i1 %cmp1, %not.cmp
  ret i1 %.cmp1
}
