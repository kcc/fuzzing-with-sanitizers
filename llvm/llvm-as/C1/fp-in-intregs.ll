





define i32 @test1(float %x) nounwind  {
entry:
	%tmp2 = fsub float -0.000000e+00, %x		
	%tmp210 = bitcast float %tmp2 to i32		
	ret i32 %tmp210
}

define i32 @test2(float %x) nounwind  {
entry:
	%tmp2 = tail call float @copysignf( float 1.000000e+00, float %x ) nounwind readnone 		
	%tmp210 = bitcast float %tmp2 to i32		
	ret i32 %tmp210
}

declare float @copysignf(float, float) nounwind readnone 

