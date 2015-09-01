














define i64 @rshift1(i64 %a, i64 %b) nounwind readnone uwtable {
  %1 = lshr i64 %a, 1
  %2 = shl i64 %b, 63
  %3 = or i64 %2, %1
  ret i64 %3
}












define i64 @rshift2(i64 %a, i64 %b) nounwind readnone uwtable {
  %1 = lshr i64 %a, 2
  %2 = shl i64 %b, 62
  %3 = or i64 %2, %1
  ret i64 %3
}












define i64 @rshift7(i64 %a, i64 %b) nounwind readnone uwtable {
  %1 = lshr i64 %a, 7
  %2 = shl i64 %b, 57
  %3 = or i64 %2, %1
  ret i64 %3
}











define i64 @rshift63(i64 %a, i64 %b) nounwind readnone uwtable {
  %1 = lshr i64 %a, 63
  %2 = shl i64 %b, 1
  %3 = or i64 %2, %1
  ret i64 %3
}
