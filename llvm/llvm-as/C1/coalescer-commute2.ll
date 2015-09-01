










define <2 x i64> @test1(<2 x i64> %x, <2 x i64> %y) nounwind  {
entry:
	%tmp6 = bitcast <2 x i64> %y to <8 x i16>		
	%tmp8 = bitcast <2 x i64> %x to <8 x i16>		
	%tmp9 = add <8 x i16> %tmp8, %tmp6		
	%tmp10 = bitcast <8 x i16> %tmp9 to <2 x i64>		
	ret <2 x i64> %tmp10
}

define <2 x i64> @test2(<2 x i64> %x, <2 x i64> %y) nounwind  {
entry:
	%tmp6 = bitcast <2 x i64> %x to <8 x i16>		
	%tmp8 = bitcast <2 x i64> %y to <8 x i16>		
	%tmp9 = add <8 x i16> %tmp8, %tmp6		
	%tmp10 = bitcast <8 x i16> %tmp9 to <2 x i64>		
	ret <2 x i64> %tmp10
}
