



define i1 @test(i1 %c) {

	br i1 %c, label %Loop, label %Out
Loop:		
	store i32 0, i32* null
	br i1 %c, label %Loop, label %Out
Out:		
	%X = phi i1 [ %c, %0 ], [ true, %Loop ]		
	ret i1 %X
}

