





define <2 x i32*> @test7(<2 x {i32, i32}*> %a) {
  %w = getelementptr {i32, i32}, <2 x {i32, i32}*> %a, <2 x i32> <i32 5, i32 9>, <2 x i32> <i32 0, i32 1>
  ret <2 x i32*> %w
}
