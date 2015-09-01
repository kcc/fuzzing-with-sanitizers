




















define float @test1(float* %a) {
entry:
	%0 = load float, float* %a, align 4		
	%1 = fsub float -0.000000e+00, %0		
	%2 = fpext float %1 to double		
	%3 = fcmp olt double %2, 1.234000e+00		
	%retval = select i1 %3, float %1, float %0		
	ret float %retval
}


















define float @test2(float* %a) {
entry:
	%0 = load float, float* %a, align 4		
	%1 = fmul float -1.000000e+00, %0		
	%2 = fpext float %1 to double		
	%3 = fcmp olt double %2, 1.234000e+00		
	%retval = select i1 %3, float %1, float %0		
	ret float %retval
}





























define <2 x float> @fneg_bitcast(i64 %i) {
  %bitcast = bitcast i64 %i to <2 x float>
  %fneg = fsub <2 x float> <float -0.0, float -0.0>, %bitcast
  ret <2 x float> %fneg
}






























