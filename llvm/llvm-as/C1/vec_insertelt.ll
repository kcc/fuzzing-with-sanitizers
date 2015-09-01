



define <4 x i32> @test1(<4 x i32> %A) {
	%B = insertelement <4 x i32> %A, i32 undef, i32 1
	ret <4 x i32> %B
}
