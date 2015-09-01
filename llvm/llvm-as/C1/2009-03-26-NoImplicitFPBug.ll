

define double @t(double %x) nounwind ssp noimplicitfloat {
entry:
	br i1 false, label %return, label %bb3

bb3:		
	ret double 0.000000e+00

return:		
	ret double undef
}
