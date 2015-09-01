


define i64 @test1(i32 %A) {




	%B = ashr i32 %A, 7		
	%C = ashr i32 %A, 9		
	%D = sext i32 %B to i64		
	%E = sext i32 %C to i64		
	%F = add i64 %D, %E		
	ret i64 %F
}

