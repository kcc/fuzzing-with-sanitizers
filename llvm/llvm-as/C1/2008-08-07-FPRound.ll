

define float @round2float(double %a) nounwind {
entry:

	fptrunc double %a to float		
	ret float %0
}
