





define i32 @test(i32* %a) {
  %w = getelementptr i32, i32* %a, <2 x i32> <i32 5, i32 9>
  ret i32 %w
}
