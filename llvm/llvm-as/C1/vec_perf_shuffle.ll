

define <4 x float> @test_uu72(<4 x float>* %P1, <4 x float>* %P2) {
	%V1 = load <4 x float>, <4 x float>* %P1		
	%V2 = load <4 x float>, <4 x float>* %P2		
	%V3 = shufflevector <4 x float> %V1, <4 x float> %V2, <4 x i32> < i32 undef, i32 undef, i32 7, i32 2 >		
	ret <4 x float> %V3
}

define <4 x float> @test_30u5(<4 x float>* %P1, <4 x float>* %P2) {
	%V1 = load <4 x float>, <4 x float>* %P1		
	%V2 = load <4 x float>, <4 x float>* %P2		
	%V3 = shufflevector <4 x float> %V1, <4 x float> %V2, <4 x i32> < i32 3, i32 0, i32 undef, i32 5 >		
	ret <4 x float> %V3
}

define <4 x float> @test_3u73(<4 x float>* %P1, <4 x float>* %P2) {
	%V1 = load <4 x float>, <4 x float>* %P1		
	%V2 = load <4 x float>, <4 x float>* %P2		
	%V3 = shufflevector <4 x float> %V1, <4 x float> %V2, <4 x i32> < i32 3, i32 undef, i32 7, i32 3 >		
	ret <4 x float> %V3
}

define <4 x float> @test_3774(<4 x float>* %P1, <4 x float>* %P2) {
	%V1 = load <4 x float>, <4 x float>* %P1		
	%V2 = load <4 x float>, <4 x float>* %P2		
	%V3 = shufflevector <4 x float> %V1, <4 x float> %V2, <4 x i32> < i32 3, i32 7, i32 7, i32 4 >		
	ret <4 x float> %V3
}

define <4 x float> @test_4450(<4 x float>* %P1, <4 x float>* %P2) {
	%V1 = load <4 x float>, <4 x float>* %P1		
	%V2 = load <4 x float>, <4 x float>* %P2		
	%V3 = shufflevector <4 x float> %V1, <4 x float> %V2, <4 x i32> < i32 4, i32 4, i32 5, i32 0 >		
	ret <4 x float> %V3
}
