

define float @f(float %a, float %b) nounwind  {
	%tmp = fdiv float %a, %b
	ret float %tmp
}
