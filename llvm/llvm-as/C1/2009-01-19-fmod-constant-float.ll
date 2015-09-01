




target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:128:128"
target triple = "i386-apple-darwin9.6"

define float @test1() nounwind {
entry:
	%retval = alloca float		
	%0 = alloca float		
	%"alloca point" = bitcast i32 0 to i32		
	%1 = frem double 1.000000e-01, 1.000000e+00	
	%2 = fptrunc double %1 to float		
	store float %2, float* %0, align 4
	%3 = load float, float* %0, align 4		
	store float %3, float* %retval, align 4
	br label %return

return:		
	%retval1 = load float, float* %retval		
	ret float %retval1
}

define float @test2() nounwind {
entry:
	%retval = alloca float		
	%0 = alloca float		
	%"alloca point" = bitcast i32 0 to i32		
	%1 = frem double -1.000000e-01, 1.000000e+00	
	%2 = fptrunc double %1 to float		
	store float %2, float* %0, align 4
	%3 = load float, float* %0, align 4		
	store float %3, float* %retval, align 4
	br label %return

return:		
	%retval1 = load float, float* %retval		
	ret float %retval1
}

define float @test3() nounwind {
entry:
	%retval = alloca float		
	%0 = alloca float		
	%"alloca point" = bitcast i32 0 to i32		
	%1 = frem double 1.000000e-01, -1.000000e+00	
	%2 = fptrunc double %1 to float		
	store float %2, float* %0, align 4
	%3 = load float, float* %0, align 4		
	store float %3, float* %retval, align 4
	br label %return

return:		
	%retval1 = load float, float* %retval		
	ret float %retval1
}

define float @test4() nounwind {
entry:
	%retval = alloca float		
	%0 = alloca float		
	%"alloca point" = bitcast i32 0 to i32		
	%1 = frem double -1.000000e-01, -1.000000e+00	
	%2 = fptrunc double %1 to float		
	store float %2, float* %0, align 4
	%3 = load float, float* %0, align 4		
	store float %3, float* %retval, align 4
	br label %return

return:		
	%retval1 = load float, float* %retval		
	ret float %retval1
}
