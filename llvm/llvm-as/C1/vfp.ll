


define void @test(float* %P, double* %D) {
	%A = load float, float* %P		
	%B = load double, double* %D		
	store float %A, float* %P
	store double %B, double* %D
	ret void
}

declare float @fabsf(float)

declare double @fabs(double)

define void @test_abs(float* %P, double* %D) {

	%a = load float, float* %P		

	%b = call float @fabsf( float %a ) readnone	
	store float %b, float* %P
	%A = load double, double* %D		

	%B = call double @fabs( double %A ) readnone	
	store double %B, double* %D
	ret void
}

define void @test_add(float* %P, double* %D) {

	%a = load float, float* %P		
	%b = fadd float %a, %a		
	store float %b, float* %P
	%A = load double, double* %D		
	%B = fadd double %A, %A		
	store double %B, double* %D
	ret void
}

define void @test_ext_round(float* %P, double* %D) {

	%a = load float, float* %P		


	%b = fpext float %a to double		
	%A = load double, double* %D		
	%B = fptrunc double %A to float		
	store double %b, double* %D
	store float %B, float* %P
	ret void
}

define void @test_fma(float* %P1, float* %P2, float* %P3) {

	%a1 = load float, float* %P1		
	%a2 = load float, float* %P2		
	%a3 = load float, float* %P3		

	%X = fmul float %a1, %a2		
	%Y = fsub float %X, %a3		
	store float %Y, float* %P1
	ret void
}

define i32 @test_ftoi(float* %P1) {

	%a1 = load float, float* %P1		

	%b1 = fptosi float %a1 to i32		
	ret i32 %b1
}

define i32 @test_ftou(float* %P1) {

	%a1 = load float, float* %P1		

	%b1 = fptoui float %a1 to i32		
	ret i32 %b1
}

define i32 @test_dtoi(double* %P1) {

	%a1 = load double, double* %P1		

	%b1 = fptosi double %a1 to i32		
	ret i32 %b1
}

define i32 @test_dtou(double* %P1) {

	%a1 = load double, double* %P1		

	%b1 = fptoui double %a1 to i32		
	ret i32 %b1
}

define void @test_utod(double* %P1, i32 %X) {


	%b1 = uitofp i32 %X to double		
	store double %b1, double* %P1
	ret void
}

define void @test_utod2(double* %P1, i8 %X) {


	%b1 = uitofp i8 %X to double		
	store double %b1, double* %P1
	ret void
}

define void @test_cmp(float* %glob, i32 %X) {

entry:
	%tmp = load float, float* %glob		
	%tmp3 = getelementptr float, float* %glob, i32 2		
	%tmp4 = load float, float* %tmp3		
	%tmp.upgrd.1 = fcmp oeq float %tmp, %tmp4		
	%tmp5 = fcmp uno float %tmp, %tmp4		
	%tmp6 = or i1 %tmp.upgrd.1, %tmp5		


	br i1 %tmp6, label %cond_true, label %cond_false

cond_true:		
	%tmp.upgrd.2 = tail call i32 (...) @bar( )		
	ret void

cond_false:		
	%tmp7 = tail call i32 (...) @baz( )		
	ret void
}

declare i1 @llvm.isunordered.f32(float, float)

declare i32 @bar(...)

declare i32 @baz(...)

define void @test_cmpfp0(float* %glob, i32 %X) {

entry:
	%tmp = load float, float* %glob		

	%tmp.upgrd.3 = fcmp ogt float %tmp, 0.000000e+00		
	br i1 %tmp.upgrd.3, label %cond_true, label %cond_false

cond_true:		
	%tmp.upgrd.4 = tail call i32 (...) @bar( )		
	ret void

cond_false:		
	%tmp1 = tail call i32 (...) @baz( )		
	ret void
}
