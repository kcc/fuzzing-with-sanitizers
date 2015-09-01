





define <4 x i32> @test_v4i32(<4 x i32>* %X, <4 x i32>* %Y) {
	%tmp = load <4 x i32>, <4 x i32>* %X		
	%tmp2 = load <4 x i32>, <4 x i32>* %Y		
	%tmp3 = mul <4 x i32> %tmp, %tmp2		
	ret <4 x i32> %tmp3
}













define <8 x i16> @test_v8i16(<8 x i16>* %X, <8 x i16>* %Y) {
	%tmp = load <8 x i16>, <8 x i16>* %X		
	%tmp2 = load <8 x i16>, <8 x i16>* %Y		
	%tmp3 = mul <8 x i16> %tmp, %tmp2		
	ret <8 x i16> %tmp3
}













define <16 x i8> @test_v16i8(<16 x i8>* %X, <16 x i8>* %Y) {
	%tmp = load <16 x i8>, <16 x i8>* %X		
	%tmp2 = load <16 x i8>, <16 x i8>* %Y		
	%tmp3 = mul <16 x i8> %tmp, %tmp2		
	ret <16 x i8> %tmp3
}



















define <4 x float> @test_float(<4 x float>* %X, <4 x float>* %Y) {
	%tmp = load <4 x float>, <4 x float>* %X
	%tmp2 = load <4 x float>, <4 x float>* %Y
	%tmp3 = fmul <4 x float> %tmp, %tmp2
	ret <4 x float> %tmp3
}















