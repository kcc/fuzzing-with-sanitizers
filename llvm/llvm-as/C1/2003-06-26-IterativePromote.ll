


define i32 @test2() {
	%result = alloca i32		
	%a = alloca i32		
	%p = alloca i32*		
	store i32 0, i32* %a
	store i32* %a, i32** %p
	%tmp.0 = load i32*, i32** %p		
	%tmp.1 = load i32, i32* %tmp.0		
	store i32 %tmp.1, i32* %result
	%tmp.2 = load i32, i32* %result		
	ret i32 %tmp.2
}

