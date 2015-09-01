




define i32 @test() {
        
	%X = alloca i32		
	%Y = load i32, i32* %X		
	ret i32 %Y
}
