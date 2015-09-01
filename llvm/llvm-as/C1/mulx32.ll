

define i64 @f1(i32 %a, i32 %b) {
  %x = zext i32 %a to i64
  %y = zext i32 %b to i64
  %r = mul i64 %x, %y



  ret i64 %r
}

define i64 @f2(i32 %a, i32* %p) {
  %b = load i32, i32* %p
  %x = zext i32 %a to i64
  %y = zext i32 %b to i64
  %r = mul i64 %x, %y



  ret i64 %r
}
