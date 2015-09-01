




define void @test() {
	%r = alloca i32		
	store i32 4, i32* %r
	store i32* %r, i32** null
	ret void
}

