

define float @f1(float %a, float %b) {


entry:
	%tmp = fadd float %a, %b		
	ret float %tmp
}

define double @f2(double %a, double %b) {


entry:
	%tmp = fadd double %a, %b		
	ret double %tmp
}

define float @f3(float %a, float %b) {


entry:
	%tmp = fmul float %a, %b		
	ret float %tmp
}

define double @f4(double %a, double %b) {


entry:
	%tmp = fmul double %a, %b		
	ret double %tmp
}

define float @f5(float %a, float %b) {


entry:
	%tmp = fsub float %a, %b		
	ret float %tmp
}

define double @f6(double %a, double %b) {


entry:
	%tmp = fsub double %a, %b		
	ret double %tmp
}

define float @f7(float %a) {


entry:
	%tmp1 = fsub float -0.000000e+00, %a		
	ret float %tmp1
}

define arm_aapcs_vfpcc double @f8(double %a) {


entry:
	%tmp1 = fsub double -0.000000e+00, %a		
	ret double %tmp1
}

define float @f9(float %a, float %b) {


entry:
	%tmp1 = fdiv float %a, %b		
	ret float %tmp1
}

define double @f10(double %a, double %b) {


entry:
	%tmp1 = fdiv double %a, %b		
	ret double %tmp1
}

define float @f11(float %a) {


entry:
	%tmp1 = call float @fabsf( float %a ) readnone	
	ret float %tmp1
}

declare float @fabsf(float)

define arm_aapcs_vfpcc double @f12(double %a) {


entry:
	%tmp1 = call double @fabs( double %a ) readnone	
	ret double %tmp1
}

declare double @fabs(double)
