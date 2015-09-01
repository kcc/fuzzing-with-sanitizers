






define x86_fp80 @f0(float %f) nounwind readnone {
entry:
	%0 = fpext float %f to x86_fp80		
	ret x86_fp80 %0
}








define x86_fp80 @f1(float %f) nounwind readnone noredzone {
entry:
	%0 = fpext float %f to x86_fp80		
	ret x86_fp80 %0
}
