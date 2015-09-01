

















define float @t1(float %acc, float %a, float %b) nounwind {
entry:













	%0 = fmul float %a, %b
	%1 = fsub float -0.0, %0
        %2 = fsub float %1, %acc
	ret float %2
}

define float @t2(float %acc, float %a, float %b) nounwind {
entry:













	%0 = fmul float %a, %b
	%1 = fmul float -1.0, %0
        %2 = fsub float %1, %acc
	ret float %2
}

define double @t3(double %acc, double %a, double %b) nounwind {
entry:













	%0 = fmul double %a, %b
	%1 = fsub double -0.0, %0
        %2 = fsub double %1, %acc
	ret double %2
}

define double @t4(double %acc, double %a, double %b) nounwind {
entry:













	%0 = fmul double %a, %b
	%1 = fmul double -1.0, %0
        %2 = fsub double %1, %acc
	ret double %2
}
