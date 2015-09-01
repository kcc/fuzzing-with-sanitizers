






define i32 @t1(i64 %a) nounwind ssp {
entry:




  %cmp = icmp sgt i64 %a, -1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}
