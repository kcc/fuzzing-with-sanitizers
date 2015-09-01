

@G = external global [40 x i32]		

define i32* @test() {
	%X = getelementptr [40 x i32], [40 x i32]* @G, i64 0, i64 0		
	ret i32* %X
}

