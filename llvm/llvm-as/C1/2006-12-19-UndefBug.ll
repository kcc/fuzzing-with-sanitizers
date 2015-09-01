


define i1 @foo() {
	%X = and i1 false, undef		
	ret i1 %X
}

