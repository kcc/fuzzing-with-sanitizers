





declare i1 @pred(i32)

define void @test(i8* %PTR) {

	br label %Loop
Loop:		
	%INDVAR = phi i32 [ 0, %0 ], [ %INDVAR2, %Loop ]		
	%STRRED = getelementptr i8, i8* %PTR, i32 %INDVAR		
	store i8 0, i8* %STRRED
	%INDVAR2 = add i32 %INDVAR, 1		
        
	%cond = call i1 @pred( i32 %INDVAR2 )		
	br i1 %cond, label %Loop, label %Out
Out:		
	ret void
}
