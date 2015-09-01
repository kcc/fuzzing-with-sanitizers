



target datalayout = "n8:16:32:64"

declare i1 @pred(i32)

define void @test([10000 x i32]* %P, i32 %STRIDE) {

	br label %Loop
Loop:		
	%INDVAR = phi i32 [ 0, %0 ], [ %INDVAR2, %Loop ]		
	%Idx = mul i32 %INDVAR, %STRIDE		
	%cond = call i1 @pred( i32 %Idx )		
	%INDVAR2 = add i32 %INDVAR, 1		
	br i1 %cond, label %Loop, label %Out
Out:		
	ret void
}

