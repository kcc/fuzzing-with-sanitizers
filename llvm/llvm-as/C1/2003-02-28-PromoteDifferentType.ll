



define void @test(i32* %P) {
	br label %Loop
Loop:		
	store i32 5, i32* %P
	%P2 = bitcast i32* %P to i8*		
	store i8 4, i8* %P2
	br i1 true, label %Loop, label %Out
Out:		
	ret void
}

