

define i16 @test5(i16 %f12) nounwind {
	%f11 = shl i16 %f12, 2		
	%tmp7.25 = ashr i16 %f11, 8		
	ret i16 %tmp7.25
}
