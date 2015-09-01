

define double @dofloat(float %a) nounwind {
entry:

	fpext float %a to double		
	ret double %0
}
