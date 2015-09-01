






define i32 @mul5_32(i32 signext %a) {
entry:
  %mul = mul nsw i32 %a, 5
  ret i32 %mul
}







define i32 @mul27_32(i32 signext %a) {
entry:
  %mul = mul nsw i32 %a, 27
  ret i32 %mul
}







define i32 @muln2147483643_32(i32 signext %a) {
entry:
  %mul = mul nsw i32 %a, -2147483643
  ret i32 %mul
}







define i64 @muln9223372036854775805_64(i64 signext %a) {
entry:
  %mul = mul nsw i64 %a, -9223372036854775805
  ret i64 %mul
}
