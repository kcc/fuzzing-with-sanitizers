


define <4 x i32> @test1(<4 x i32> %A, <4 x i32> %B) {










  %select = select <4 x i1><i1 true, i1 true, i1 false, i1 false>, <4 x i32> %A, <4 x i32> %B
  ret <4 x i32> %select
}

define <4 x i32> @test2(<4 x i32> %A, <4 x i32> %B) {









  %select = select <4 x i1><i1 false, i1 false, i1 true, i1 true>, <4 x i32> %A, <4 x i32> %B
  ret <4 x i32> %select
}

define <4 x float> @test3(<4 x float> %A, <4 x float> %B) {










  %select = select <4 x i1><i1 true, i1 true, i1 false, i1 false>, <4 x float> %A, <4 x float> %B
  ret <4 x float> %select
}

define <4 x float> @test4(<4 x float> %A, <4 x float> %B) {









  %select = select <4 x i1><i1 false, i1 false, i1 true, i1 true>, <4 x float> %A, <4 x float> %B
  ret <4 x float> %select
}
