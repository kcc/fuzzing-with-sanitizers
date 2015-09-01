







define <4 x i32> @test(<4 x i32> %a, <4 x i32> %b) {
  
  %shuffle = shufflevector <4 x i32> %a, <4 x i32> %b, <4 x i32> <i32 4, i32 5, i32 6, i32 3>
  ret <4 x i32> %shuffle
}
