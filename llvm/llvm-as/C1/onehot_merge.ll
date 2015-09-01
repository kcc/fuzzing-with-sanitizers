





define i1 @and_consts(i32 %k, i32 %c1, i32 %c2) {
bb:
  %tmp1 = and i32 4, %k
  %tmp2 = icmp eq i32 %tmp1, 0
  %tmp5 = and i32 8, %k
  %tmp6 = icmp eq i32 %tmp5, 0
  %or = or i1 %tmp2, %tmp6
  ret i1 %or
}








define i1 @foo1_and(i32 %k, i32 %c1, i32 %c2) {
bb:
  %tmp = shl i32 1, %c1
  %tmp4 = lshr i32 -2147483648, %c2
  %tmp1 = and i32 %tmp, %k
  %tmp2 = icmp eq i32 %tmp1, 0
  %tmp5 = and i32 %tmp4, %k
  %tmp6 = icmp eq i32 %tmp5, 0
  %or = or i1 %tmp2, %tmp6
  ret i1 %or
}

