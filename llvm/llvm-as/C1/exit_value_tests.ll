






define i32 @polynomial_constant() {

	br label %Loop

Loop:		
	%A1 = phi i32 [ 0, %0 ], [ %A2, %Loop ]		
	%B1 = phi i32 [ 0, %0 ], [ %B2, %Loop ]		
	%A2 = add i32 %A1, 1		
	%B2 = add i32 %B1, %A1		
	%C = icmp eq i32 %A1, 1000		
	br i1 %C, label %Out, label %Loop

Out:		
	ret i32 %B2
}

define i32 @NSquare(i32 %N) {

	br label %Loop

Loop:		
	%X = phi i32 [ 0, %0 ], [ %X2, %Loop ]		
	%X2 = add i32 %X, 1		
	%c = icmp eq i32 %X, %N		
	br i1 %c, label %Out, label %Loop

Out:		
	%Y = mul i32 %X, %X		
	ret i32 %Y
}

define i32 @NSquareOver2(i32 %N) {

	br label %Loop

Loop:		
	%X = phi i32 [ 0, %0 ], [ %X2, %Loop ]		
	%Y = phi i32 [ 15, %0 ], [ %Y2, %Loop ]		
	%Y2 = add i32 %Y, %X		
	%X2 = add i32 %X, 1		
	%c = icmp eq i32 %X, %N		
	br i1 %c, label %Out, label %Loop

Out:		
	ret i32 %Y2
}

define i32 @strength_reduced() {

	br label %Loop

Loop:		
	%A1 = phi i32 [ 0, %0 ], [ %A2, %Loop ]		
	%B1 = phi i32 [ 0, %0 ], [ %B2, %Loop ]		
	%A2 = add i32 %A1, 1		
	%B2 = add i32 %B1, %A1		
	%C = icmp eq i32 %A1, 1000		
	br i1 %C, label %Out, label %Loop

Out:		
	ret i32 %B2
}

define i32 @chrec_equals() {
entry:
	br label %no_exit

no_exit:		
	%i0 = phi i32 [ 0, %entry ], [ %i1, %no_exit ]		
	%ISq = mul i32 %i0, %i0		
	%i1 = add i32 %i0, 1		
	%tmp.1 = icmp ne i32 %ISq, 10000		
	br i1 %tmp.1, label %no_exit, label %loopexit

loopexit:		
	ret i32 %i1
}

define i16 @cast_chrec_test() {

	br label %Loop

Loop:		
	%A1 = phi i32 [ 0, %0 ], [ %A2, %Loop ]		
	%B1 = trunc i32 %A1 to i16		
	%A2 = add i32 %A1, 1		
	%C = icmp eq i16 %B1, 1000		
	br i1 %C, label %Out, label %Loop

Out:		
	ret i16 %B1
}

define i32 @linear_div_fold() {
entry:
	br label %loop

loop:		
	%i = phi i32 [ 4, %entry ], [ %i.next, %loop ]		
	%i.next = add i32 %i, 8		
	%RV = udiv i32 %i, 2		
	%c = icmp ne i32 %i, 68		
	br i1 %c, label %loop, label %loopexit

loopexit:		
	ret i32 %RV
}
