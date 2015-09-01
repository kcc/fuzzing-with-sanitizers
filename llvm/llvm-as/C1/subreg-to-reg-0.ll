




define i64 @foo(i32* %p) nounwind {
  %t = load i32, i32* %p
  %n = add i32 %t, 1
  %z = zext i32 %n to i64
  ret i64 %z
}
