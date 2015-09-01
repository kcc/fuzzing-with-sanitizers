















define i64 @main(i1 %tobool1) nounwind {
entry:
  %0 = zext i1 %tobool1 to i32
  %. = xor i32 %0, 1
  %.21 = select i1 %tobool1, i32 -12, i32 -1
  %conv = sext i32 %.21 to i64
  %1 = add i64 %conv, -1
  %cmp10 = icmp slt i64 %1, 0
  %sub17 = select i1 %cmp10, i64 0, i64 %conv
  ret i64 %sub17
}
