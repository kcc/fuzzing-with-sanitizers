


define i32 @test() {
	%X = alloca i32		
	store i32 6, i32* %X
	br label %Loop
Loop:		
	store i32 5, i32* %X
	br label %EndOfLoop
Unreachable:		
	br label %EndOfLoop
EndOfLoop:		
	br label %Loop
}

