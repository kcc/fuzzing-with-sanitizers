




define <2 x i64> @foo1(i64* %y) nounwind  {
entry:
	%tmp1 = load i64, i64* %y, align 8		
	%s2v = insertelement <2 x i64> undef, i64 %tmp1, i32 0
	%loadl = shufflevector <2 x i64> zeroinitializer, <2 x i64> %s2v, <2 x i32> <i32 2, i32 1>
	ret <2 x i64> %loadl
}


define <4 x float> @foo2(i64* %p) nounwind {
entry:
	%load = load i64, i64* %p
	%s2v = insertelement <2 x i64> undef, i64 %load, i32 0
	%loadl = shufflevector <2 x i64> zeroinitializer, <2 x i64> %s2v, <2 x i32> <i32 2, i32 1>
	%0 = bitcast <2 x i64> %loadl to <4 x float>
	ret <4 x float> %0
}
