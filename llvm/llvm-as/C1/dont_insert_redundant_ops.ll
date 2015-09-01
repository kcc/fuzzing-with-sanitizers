






declare i1 @pred()

define void @test1({ i32, i32 }* %P) {

	br label %Loop
Loop:		
	%INDVAR = phi i32 [ 0, %0 ], [ %INDVAR2, %Loop ]		
	%gep1 = getelementptr { i32, i32 }, { i32, i32 }* %P, i32 %INDVAR, i32 0		
	store i32 0, i32* %gep1
	%gep2 = getelementptr { i32, i32 }, { i32, i32 }* %P, i32 %INDVAR, i32 1		
	store i32 0, i32* %gep2
	%INDVAR2 = add i32 %INDVAR, 1		
	%cond = call i1 @pred( )		
	br i1 %cond, label %Loop, label %Out
Out:		
	ret void
}

define void @test2([2 x i32]* %P) {

	br label %Loop
Loop:		
	%INDVAR = phi i32 [ 0, %0 ], [ %INDVAR2, %Loop ]		
	%gep1 = getelementptr [2 x i32], [2 x i32]* %P, i32 %INDVAR, i64 0		
	store i32 0, i32* %gep1
	%gep2 = getelementptr [2 x i32], [2 x i32]* %P, i32 %INDVAR, i64 1		
	store i32 0, i32* %gep2
	%INDVAR2 = add i32 %INDVAR, 1		
	%cond = call i1 @pred( )		
	br i1 %cond, label %Loop, label %Out
Out:		
	ret void
}
