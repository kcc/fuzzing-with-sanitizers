

define <4 x float> @f(float %w) nounwind {
entry:
	%retval = alloca <4 x float>		
	%w.addr = alloca float		
	%.compoundliteral = alloca <4 x float>		
	store float %w, float* %w.addr
	%tmp = load float, float* %w.addr		
	%0 = insertelement <4 x float> undef, float %tmp, i32 0		
	%1 = insertelement <4 x float> %0, float 0.000000e+00, i32 1		
	%2 = insertelement <4 x float> %1, float 0.000000e+00, i32 2		
	%3 = insertelement <4 x float> %2, float 0.000000e+00, i32 3		
	store <4 x float> %3, <4 x float>* %.compoundliteral
	%tmp1 = load <4 x float>, <4 x float>* %.compoundliteral		
	store <4 x float> %tmp1, <4 x float>* %retval
	br label %return

return:		
	%4 = load <4 x float>, <4 x float>* %retval		
	ret <4 x float> %4
}
