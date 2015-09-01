

define i32 @test(i32 %A, i32 %B, i1 %cond) {
J:
	%C = add i32 %A, 12		
	br i1 %cond, label %L, label %L
L:		
	%Q = phi i32 [ %C, %J ], [ %C, %J ]		
	%D = add i32 %C, %B		
	%E = add i32 %Q, %D		
	ret i32 %E
}

