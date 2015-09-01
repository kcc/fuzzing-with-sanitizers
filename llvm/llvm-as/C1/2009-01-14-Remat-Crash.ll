

define double @f1(double %a, double %b, double %c, double %d, double %e, double %f, double %g) nounwind {
entry:
	br i1 false, label %bb113, label %bb129

bb113:		
	ret double 0.000000e+00

bb129:		
	%tmp134 = fsub double %b, %a		
	%tmp136 = fsub double %tmp134, %c		
	%tmp138 = fadd double %tmp136, %d		
	%tmp140 = fsub double %tmp138, %e		
	%tmp142 = fadd double %tmp140, %f		
	%tmp.0 = fmul double %tmp142, 0.000000e+00		
	ret double %tmp.0
}
