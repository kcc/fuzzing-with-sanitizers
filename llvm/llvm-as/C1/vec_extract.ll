

target triple = "x86_64-unknown-linux-gnu"

define void @test1(<4 x float>* %F, float* %f) nounwind {








entry:
	%tmp = load <4 x float>, <4 x float>* %F		
	%tmp7 = fadd <4 x float> %tmp, %tmp		
	%tmp2 = extractelement <4 x float> %tmp7, i32 0		
	store float %tmp2, float* %f
	ret void
}

define float @test2(<4 x float>* %F, float* %f) nounwind {











entry:
	%tmp = load <4 x float>, <4 x float>* %F		
	%tmp7 = fadd <4 x float> %tmp, %tmp		
	%tmp2 = extractelement <4 x float> %tmp7, i32 2		
	ret float %tmp2
}

define void @test3(float* %R, <4 x float>* %P1) nounwind {







entry:
	%X = load <4 x float>, <4 x float>* %P1		
	%tmp = extractelement <4 x float> %X, i32 3		
	store float %tmp, float* %R
	ret void
}

define double @test4(double %A) nounwind {










entry:
	%tmp1 = call <2 x double> @foo( )		
	%tmp2 = extractelement <2 x double> %tmp1, i32 1		
	%tmp3 = fadd double %tmp2, %A		
	ret double %tmp3
}

declare <2 x double> @foo()
