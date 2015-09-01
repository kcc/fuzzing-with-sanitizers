




define double @test_add(double %X, double* %P) {
	%Y = load double, double* %P		
	%R = fadd double %X, %Y		
	ret double %R
}

define double @test_mul(double %X, double* %P) {
	%Y = load double, double* %P		
	%R = fmul double %X, %Y		
	ret double %R
}

define double @test_sub(double %X, double* %P) {
	%Y = load double, double* %P		
	%R = fsub double %X, %Y		
	ret double %R
}

define double @test_subr(double %X, double* %P) {
	%Y = load double, double* %P		
	%R = fsub double %Y, %X		
	ret double %R
}

define double @test_div(double %X, double* %P) {
	%Y = load double, double* %P		
	%R = fdiv double %X, %Y		
	ret double %R
}

define double @test_divr(double %X, double* %P) {
	%Y = load double, double* %P		
	%R = fdiv double %Y, %X		
	ret double %R
}
