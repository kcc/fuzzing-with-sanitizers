

define i32 @main() {

	br label %Loop
Loop:		
	%I = phi i32 [ 0, %0 ], [ %i2, %Loop ]		
	%i2 = add i32 %I, 1		
	%C = icmp eq i32 %i2, 10		
	br i1 %C, label %Out, label %Loop
Out:		
	ret i32 0
}

