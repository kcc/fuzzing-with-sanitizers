







@Arr = external global [0 x i32]		

define void @foo(i32 %N.in, i32 %x) nounwind {
entry:
	%N = bitcast i32 %N.in to i32		
	br label %cond_true

cond_true:		
	%indvar = phi i32 [ %x, %entry ], [ %indvar.next, %cond_true ]		
	%i.0.0 = bitcast i32 %indvar to i32		
	%tmp = getelementptr [0 x i32], [0 x i32]* @Arr, i32 0, i32 %i.0.0		
	store i32 %i.0.0, i32* %tmp
	%indvar.next = add i32 %indvar, 1		
	%exitcond = icmp eq i32 %indvar.next, %N		
	br i1 %exitcond, label %return, label %cond_true

return:		
	ret void
}
