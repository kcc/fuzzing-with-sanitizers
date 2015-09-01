















define i64 @lshift1(i64 %a, i64 %b) nounwind readnone uwtable {
entry:
  %shl = shl i64 %a, 1
  %shr = lshr i64 %b, 63
  %or = or i64 %shr, %shl
  ret i64 %or
}











define i64 @lshift2(i64 %a, i64 %b) nounwind readnone uwtable {
entry:
  %shl = shl i64 %a, 2
  %shr = lshr i64 %b, 62
  %or = or i64 %shr, %shl
  ret i64 %or
}











define i64 @lshift7(i64 %a, i64 %b) nounwind readnone uwtable {
entry:
  %shl = shl i64 %a, 7
  %shr = lshr i64 %b, 57
  %or = or i64 %shr, %shl
  ret i64 %or
}











define i64 @lshift63(i64 %a, i64 %b) nounwind readnone uwtable {
entry:
  %shl = shl i64 %a, 63
  %shr = lshr i64 %b, 1
  %or = or i64 %shr, %shl
  ret i64 %or
}
