





define <4 x i32> @test(<4 x i32>* %a) {
  %w = getelementptr <4 x i32>, <4 x i32>* %a, <2 x i32> <i32 5, i32 9>
  ret i32 %w
}
