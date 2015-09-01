





define float @negfp(float %a, float %b) {
entry:
	%sub = fsub float %a, %b		
	%neg = fsub float -0.000000e+00, %sub		
	ret float %neg
}
