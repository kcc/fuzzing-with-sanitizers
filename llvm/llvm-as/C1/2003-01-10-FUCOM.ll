

define i32 @main() {
	%X = fadd double 0.000000e+00, 1.000000e+00		
	%Y = fsub double 0.000000e+00, 1.000000e+00		
	%Z = fcmp oeq double %X, %Y		
	fadd double %Y, 0.000000e+00		
	ret i32 0
}

