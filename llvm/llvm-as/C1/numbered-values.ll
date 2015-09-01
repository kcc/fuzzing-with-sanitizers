



define i32 @test(i32 %X) nounwind {
entry:
	%X_addr = alloca i32		
	%retval = alloca i32		
	%0 = alloca i32		
	%"alloca point" = bitcast i32 0 to i32		
	store i32 %X, i32* %X_addr
	%1 = load i32, i32* %X_addr, align 4		
	mul i32 %1, 4		
	%3 = add i32 %2, 123		
	store i32 %3, i32* %0, align 4
	ret i32 %3
}
