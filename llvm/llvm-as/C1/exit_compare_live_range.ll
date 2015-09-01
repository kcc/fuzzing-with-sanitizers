





define void @foo(float* %D, i32 %E) {
entry:
	br label %no_exit
no_exit:		
	%indvar = phi i32 [ 0, %entry ], [ %indvar.next, %no_exit ]		
	store volatile float 0.000000e+00, float* %D
	%indvar.next = add i32 %indvar, 1		


	%exitcond = icmp eq i32 %indvar.next, %E		
	br i1 %exitcond, label %loopexit, label %no_exit
loopexit:		
	ret void
}

