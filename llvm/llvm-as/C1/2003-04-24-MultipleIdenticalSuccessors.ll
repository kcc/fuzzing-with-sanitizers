




define i32 @test(i1 %c1, i1 %c2) {
	%X = alloca i32		
	br i1 %c1, label %Exit, label %B2
B2:		
	store i32 2, i32* %X
	br i1 %c2, label %Exit, label %Exit
Exit:		
	%Y = load i32, i32* %X		
	ret i32 %Y
}

