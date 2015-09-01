


define i32 @compare_i_gt(i32 %a) {
entry:



  %cmp = icmp sgt i32 %a, -78
  %. = zext i1 %cmp to i32
  ret i32 %.
}

define i32 @compare_r_eq(i32 %a, i32 %b) {
entry:


  %sub = sub nsw i32 0, %b
  %cmp = icmp eq i32 %a, %sub
  %. = zext i1 %cmp to i32
  ret i32 %.
}
