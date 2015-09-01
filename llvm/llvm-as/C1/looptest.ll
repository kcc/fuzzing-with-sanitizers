















@.LC0 = internal global [4 x i8] c"%d\0A\00"		

declare i32 @printf(i8*, ...)


define void @test(i32 %Num, i32* %Array) {
bb0:
	%cond221 = icmp eq i32 0, %Num		
	br i1 %cond221, label %bb7, label %bb2
bb2:		
	%reg115 = phi i32 [ %reg120, %bb6 ], [ 0, %bb0 ]		
	br i1 %cond221, label %bb6, label %bb3
bb3:		
	%reg116 = phi i32 [ %reg119, %bb5 ], [ 0, %bb2 ]		
	br i1 %cond221, label %bb5, label %bb4
bb4:		
	%reg117 = phi i32 [ %reg118, %bb4 ], [ 0, %bb3 ]		
	%reg113 = add i32 %reg115, %reg117		
	%reg114 = add i32 %reg113, %reg116		
	%cast227 = getelementptr [4 x i8], [4 x i8]* @.LC0, i64 0, i64 0		
	call i32 (i8*, ...) @printf( i8* %cast227, i32 %reg114 )		
	%reg118 = add i32 %reg117, 1		
	%cond224 = icmp ne i32 %reg118, %Num		
	br i1 %cond224, label %bb4, label %bb5
bb5:		
	%reg119 = add i32 %reg116, 1		
	%cond225 = icmp ne i32 %reg119, %Num		
	br i1 %cond225, label %bb3, label %bb6
bb6:		
	%reg120 = add i32 %reg115, 1		
	%cond226 = icmp ne i32 %reg120, %Num		
	br i1 %cond226, label %bb2, label %bb7
bb7:		
	ret void
}
