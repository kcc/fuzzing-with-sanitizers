

define double @dofloat(double %a, double %b) nounwind {
entry:

	fadd double %a, %b		
	ret double %0
}
