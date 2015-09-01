




define void @test(i32 %B, i1 %C) {
	%A = alloca i32		
	store i32 %B, i32* %A
	br i1 %C, label %L1, label %L2
L1:		
	store i32 %B, i32* %A
	%D = load i32, i32* %A		
	call void @test( i32 %D, i1 false )
	br label %L3
L2:		
	%E = load i32, i32* %A		
	call void @test( i32 %E, i1 true )
	br label %L3
L3:		
	ret void
}

