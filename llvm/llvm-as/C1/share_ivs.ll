





declare i1 @cond(i32)

define void @test(i32 %B) {

	br label %Loop
Loop:		
	%IV = phi i32 [ 0, %0 ], [ %IVn, %Loop ]		
	%C = mul i32 %IV, 18		
	%D = mul i32 %IV, 18		
	%E = add i32 %D, %B		
	%cnd = call i1 @cond( i32 %E )		
	call i1 @cond( i32 %C )		
	%IVn = add i32 %IV, 1		
	br i1 %cnd, label %Loop, label %Out
Out:		
	ret void
}

