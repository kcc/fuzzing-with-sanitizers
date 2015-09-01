



target datalayout = "e-p:32:32:32-n32"
declare i1 @pred()

define void @test([10000 x i32]* %P, i32 %outer) {

	br label %Loop
Loop:		
	%INDVAR = phi i32 [ 0, %0 ], [ %INDVAR2, %Loop ]		
	%STRRED = getelementptr [10000 x i32], [10000 x i32]* %P, i32 %outer, i32 %INDVAR		
	store i32 0, i32* %STRRED
	%INDVAR2 = add i32 %INDVAR, 1		
	%cond = call i1 @pred( )		
	br i1 %cond, label %Loop, label %Out
Out:		
	ret void
}

