

define i128 @f1(i64 %a, i64 %b) {
  %x = zext i64 %a to i128
  %y = zext i64 %b to i128
  %r = mul i128 %x, %y



  ret i128 %r
}

define i128 @f2(i64 %a, i64* %p) {
  %b = load i64, i64* %p
  %x = zext i64 %a to i128
  %y = zext i64 %b to i128
  %r = mul i128 %x, %y



  ret i128 %r
}
