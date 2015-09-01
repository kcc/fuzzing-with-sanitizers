


define i32 @test(i32* %X, i32 %B) {








	
	%P = getelementptr i32, i32* %X, i32 %B
	%G = icmp ult i32 %B, 1234
	br i1 %G, label %T, label %F
T:
	store i32 4, i32* %P
	ret i32 141
F:
	%V = load i32, i32* %P
	ret i32 %V
}
