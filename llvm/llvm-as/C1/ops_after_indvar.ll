




target datalayout = "e-p:32:32:32-n32"

declare i1 @pred()

declare i32 @getidx()

define void @test([10000 x i32]* %P) {

	br label %Loop
Loop:		
	%INDVAR = phi i32 [ 0, %0 ], [ %INDVAR2, %Loop ]		
	%idx = call i32 @getidx( )		
	%STRRED = getelementptr [10000 x i32], [10000 x i32]* %P, i32 %INDVAR, i32 %idx		
	store i32 0, i32* %STRRED
	%INDVAR2 = add i32 %INDVAR, 1		
	%cond = call i1 @pred( )		
	br i1 %cond, label %Loop, label %Out
Out:		
	ret void
}

