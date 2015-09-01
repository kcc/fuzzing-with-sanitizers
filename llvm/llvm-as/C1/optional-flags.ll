







define i64 @test0(i64 %a, i64 %b, i64 %c) {
  %y = add nsw i64 %c, %b
  %z = add i64 %y, %a
  ret i64 %z
}




define i64 @test1(i64 %a, i64 %b, i64 %c) {
  %y = add i64 %c, %b
  %z = add nsw i64 %y, %a
  ret i64 %z
}



define i32 @test2(i32 %x, i32 %y) {
  %s = add nsw i32 %x, %y
  ret i32 %s
}
