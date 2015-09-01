

@X = external global float 
@Y = external global float

define void @test() nounwind  {
entry:
	%tmp = load float, float* @X, align 4		
	%tmp1 = fpext float %tmp to double		
	%tmp3 = fadd double %tmp1, 0.000000e+00		
	%tmp34 = fptrunc double %tmp3 to float		
	store float %tmp34, float* @X, align 4
	ret void
}

define void @test2() nounwind  {
entry:
	%tmp = load float, float* @X, align 4		
	%tmp1 = fpext float %tmp to double		
	%tmp2 = load float, float* @Y, align 4		
	%tmp23 = fpext float %tmp2 to double		
	%tmp5 = fmul double %tmp1, %tmp23		
	%tmp56 = fptrunc double %tmp5 to float		
	store float %tmp56, float* @X, align 4
	ret void
}

define void @test3() nounwind  {
entry:
	%tmp = load float, float* @X, align 4		
	%tmp1 = fpext float %tmp to double		
	%tmp2 = load float, float* @Y, align 4		
	%tmp23 = fpext float %tmp2 to double		
	%tmp5 = fdiv double %tmp1, %tmp23		
	%tmp56 = fptrunc double %tmp5 to float		
	store float %tmp56, float* @X, align 4
	ret void
}

define void @test4() nounwind  {
entry:
	%tmp = load float, float* @X, align 4		
	%tmp1 = fpext float %tmp to double		
	%tmp2 = fsub double -0.000000e+00, %tmp1		
	%tmp34 = fptrunc double %tmp2 to float		
	store float %tmp34, float* @X, align 4
	ret void
}
