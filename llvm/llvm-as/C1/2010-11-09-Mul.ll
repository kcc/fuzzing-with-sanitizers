


define i32 @mul1(i32 %a, i32 %b) nounwind readnone {
entry:
  %mul = mul i32 %b, %a
  ret i32 %mul
}


define i32 @mul2(i32 %a, i32 %b) nounwind readnone {
entry:
  %mul = mul nsw i32 %b, %a
  ret i32 %mul
}
