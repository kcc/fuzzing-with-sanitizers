


define void @testfunc(i32 %i.s, i1 %ifcond) {
	br i1 %ifcond, label %Then, label %Else
Then:		
	br label %Loop
Else:		
	br label %Loop
Loop:		
	%j = phi i32 [ 0, %Then ], [ 12, %Else ], [ %Next, %Loop ]		
	%i = bitcast i32 %i.s to i32		
	%i2 = mul i32 %i, 17		
	%Next = add i32 %j, %i2		
	%cond = icmp eq i32 %Next, 0		
	br i1 %cond, label %Out, label %Loop
Out:		
	ret void
}

