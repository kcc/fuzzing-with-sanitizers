



define <4 x i32> @var_insert(<4 x i32> %x, i32 %val, i32 %idx) nounwind  {
entry:
	%tmp3 = insertelement <4 x i32> %x, i32 %val, i32 %idx		
	ret <4 x i32> %tmp3
}

define i32 @var_extract(<4 x i32> %x, i32 %idx) nounwind  {
entry:
	%tmp3 = extractelement <4 x i32> %x, i32 %idx		
	ret i32 %tmp3
}
