






declare fastcc double @tailcallee(x86_fp80, <2 x float>) 
	
define fastcc double @tailcall() {
entry:
  %tmp = fpext float 1.000000e+00 to x86_fp80
	%tmp2 = tail call fastcc double @tailcallee( x86_fp80 %tmp,  <2 x float> <float 1.000000e+00, float 1.000000e+00>)
	ret double %tmp2
}
