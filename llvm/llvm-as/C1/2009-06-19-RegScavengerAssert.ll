


define float @__ieee754_acosf(float %x) nounwind {
entry:
	br i1 undef, label %bb, label %bb4

bb:		
	ret float undef

bb4:		
	br i1 undef, label %bb5, label %bb6

bb5:		
	ret float undef

bb6:		
	br i1 undef, label %bb11, label %bb12

bb11:		
	%0 = tail call float @__ieee754_sqrtf(float undef) nounwind		
	%1 = fmul float %0, -2.000000e+00		
	%2 = fadd float %1, 0x400921FB40000000		
	ret float %2

bb12:		
	ret float undef
}

declare float @__ieee754_sqrtf(float)
