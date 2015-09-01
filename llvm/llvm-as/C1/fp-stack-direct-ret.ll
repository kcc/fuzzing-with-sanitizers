


declare double @foo()

define double @bar() {
entry:
	%tmp5 = tail call double @foo()
	ret double %tmp5
}

