






define i32 @test1(i32 %x) {
  %n = and i32 %x, 255
  %y = xor i32 %n, 255
  ret i32 %y
}









define i64 @test2(i64 %x) {
  %a = shl i64 %x, 3
  %t = and i64 %a, 8
  %z = xor i64 %t, 8
  ret i64 %z
}
