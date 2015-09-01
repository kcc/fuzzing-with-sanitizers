



define double @foo_add(double %P) {
	%tmp.1 = fadd double %P, 1.230000e+02		
	ret double %tmp.1
}



define double @foo_mul(double %P) {
	%tmp.1 = fmul double %P, 1.230000e+02		
	ret double %tmp.1
}



define double @foo_sub(double %P) {
	%tmp.1 = fsub double %P, 1.230000e+02		
	ret double %tmp.1
}



define double @foo_subr(double %P) {
	%tmp.1 = fsub double 1.230000e+02, %P		
	ret double %tmp.1
}



define double @foo_div(double %P) {
	%tmp.1 = fdiv double %P, 1.230000e+02		
	ret double %tmp.1
}



define double @foo_divr(double %P) {
	%tmp.1 = fdiv double 1.230000e+02, %P		
	ret double %tmp.1
}



