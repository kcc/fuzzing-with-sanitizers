

define double @test(double* %DP, double %Arg) nounwind {
	%D = load double, double* %DP		
	%V = fadd double %D, 1.000000e+00		
	%W = fsub double %V, %V		
	%X = fmul double %W, %W		
	%Y = fdiv double %X, %X		
	%Q = fadd double %Y, %Arg		
	%R = bitcast double %Q to double		
	store double %Q, double* %DP
	ret double %Y
}

define i32 @main() nounwind {
	%X = alloca double		
	store double 0.000000e+00, double* %X
	call double @test( double* %X, double 2.000000e+00 )		
	ret i32 0
}
