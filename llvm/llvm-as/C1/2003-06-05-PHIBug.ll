



define i32 @main() {
entry:
	%X = add i32 1, -1		
	br label %Next
Next:		
	%A = phi i32 [ %X, %entry ]		
	%B = phi i32 [ %X, %entry ]		
	%C = phi i32 [ %X, %entry ]		
	ret i32 %C
}

