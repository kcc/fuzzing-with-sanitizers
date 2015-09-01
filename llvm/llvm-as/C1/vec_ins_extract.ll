




target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32"

define void @test(<4 x float>* %F, float %f) {
entry:
	%tmp = load <4 x float>, <4 x float>* %F		
	%tmp3 = fadd <4 x float> %tmp, %tmp		
	%tmp10 = insertelement <4 x float> %tmp3, float %f, i32 0		
	%tmp6 = fadd <4 x float> %tmp10, %tmp10		
	store <4 x float> %tmp6, <4 x float>* %F
	ret void
}

define void @test2(<4 x float>* %F, float %f) {
entry:
	%G = alloca <4 x float>, align 16		
	%tmp = load <4 x float>, <4 x float>* %F		
	%tmp3 = fadd <4 x float> %tmp, %tmp		
	store <4 x float> %tmp3, <4 x float>* %G
	%tmp.upgrd.1 = getelementptr <4 x float>, <4 x float>* %G, i32 0, i32 2		
	store float %f, float* %tmp.upgrd.1
	%tmp4 = load <4 x float>, <4 x float>* %G		
	%tmp6 = fadd <4 x float> %tmp4, %tmp4		
	store <4 x float> %tmp6, <4 x float>* %F
	ret void
}

define void @test3(<4 x float>* %F, float* %f) {
entry:
	%G = alloca <4 x float>, align 16		
	%tmp = load <4 x float>, <4 x float>* %F		
	%tmp3 = fadd <4 x float> %tmp, %tmp		
	store <4 x float> %tmp3, <4 x float>* %G
	%tmp.upgrd.2 = getelementptr <4 x float>, <4 x float>* %G, i32 0, i32 2		
	%tmp.upgrd.3 = load float, float* %tmp.upgrd.2		
	store float %tmp.upgrd.3, float* %f
	ret void
}

define void @test4(<4 x float>* %F, float* %f) {
entry:
	%tmp = load <4 x float>, <4 x float>* %F		
	%tmp5.lhs = extractelement <4 x float> %tmp, i32 0		
	%tmp5.rhs = extractelement <4 x float> %tmp, i32 0		
	%tmp5 = fadd float %tmp5.lhs, %tmp5.rhs		
	store float %tmp5, float* %f
	ret void
}
