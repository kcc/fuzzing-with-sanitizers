



target datalayout = "n8:16:32:64"

declare i1 @pred()

define void @test(i32* %P) {

	br label %Loop
Loop:		
        %i = phi i32 [ 0, %0 ], [ %i.next, %Loop ]
	%INDVAR = phi i32 [ 0, %0 ], [ %INDVAR2, %Loop ]		
	%STRRED = getelementptr i32, i32* %P, i32 %INDVAR		
	store i32 0, i32* %STRRED
	%INDVAR2 = add i32 %INDVAR, 1		
        %i.next = add i32 %i, 1
	%cond = call i1 @pred( )		
	br i1 %cond, label %Loop, label %Out
Out:		
	ret void
}

