




define i32 @test(i32 %i) {
  %t = trunc i32 %i to i4
  %r = sext i4 %t to i32
  ret i32 %r
}
