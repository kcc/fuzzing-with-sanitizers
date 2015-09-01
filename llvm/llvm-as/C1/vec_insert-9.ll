


define <4 x i32> @var_insert2(<4 x i32> %x, i32 %val, i32 %idx) nounwind  {
entry:
	%tmp3 = insertelement <4 x i32> undef, i32 %val, i32 0		
	%tmp4 = insertelement <4 x i32> %tmp3, i32 %idx, i32 3		
	ret <4 x i32> %tmp4
}
