














define <4 x i32> @test1(<4 x i32>* %p0, <4 x i32> %in1) nounwind {
  %in0 = load <4 x i32>, <4 x i32>* %p0, align 2
  %a = and <4 x i32> %in0, %in1
  ret <4 x i32> %a










}

