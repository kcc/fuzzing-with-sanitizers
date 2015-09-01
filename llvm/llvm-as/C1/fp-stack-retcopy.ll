



declare double @foo()

define double @carg({ double, double }* byval  %z) nounwind  {
entry:
	%tmp5 = tail call double @foo() nounwind 		
	ret double %tmp5
}

