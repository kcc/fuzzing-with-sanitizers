



define float @t1(float %acc, float %a, float %b) {
entry:









	%0 = fmul float %a, %b
        %1 = fsub float %0, %acc
	ret float %1
}

define double @t2(double %acc, double %a, double %b) {
entry:









	%0 = fmul double %a, %b
        %1 = fsub double %0, %acc
	ret double %1
}
