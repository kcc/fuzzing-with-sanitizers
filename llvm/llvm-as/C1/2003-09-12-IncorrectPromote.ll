



define i8* @test() {
	%A = alloca [30 x i8]		
	%B = getelementptr [30 x i8], [30 x i8]* %A, i64 0, i64 0		
	%C = getelementptr i8, i8* %B, i64 1		
	store i8 0, i8* %B
	ret i8* %C
}

