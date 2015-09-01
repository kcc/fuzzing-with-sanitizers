




define i32 @foo() {
	br i1 undef, label %T, label %T
T:		
	%X = add i32 0, 1		
	ret i32 %X
}

