
@t0.1441 = internal global double 0x3FD5555555555555, align 8		

define double @foo() nounwind  {
entry:
	%tmp1 = load volatile double, double* @t0.1441, align 8		
	%tmp4 = fmul double %tmp1, %tmp1		
	ret double %tmp4
}
