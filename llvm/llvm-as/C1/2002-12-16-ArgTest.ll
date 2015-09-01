

@.LC0 = internal global [10 x i8] c"argc: %d\0A\00"		

declare i32 @puts(i8*)

define void @getoptions(i32* %argc) {
bb0:
	ret void
}

declare i32 @printf(i8*, ...)

define i32 @main(i32 %argc, i8** %argv) {
bb0:
	call i32 (i8*, ...) @printf( i8* getelementptr ([10 x i8], [10 x i8]* @.LC0, i64 0, i64 0), i32 %argc )		
	%cast224 = bitcast i8** %argv to i8*		
	%local = alloca i8*		
	store i8* %cast224, i8** %local
	%cond226 = icmp sle i32 %argc, 0		
	br i1 %cond226, label %bb3, label %bb2
bb2:		
	%cann-indvar = phi i32 [ 0, %bb0 ], [ %add1-indvar, %bb2 ]		
	%add1-indvar = add i32 %cann-indvar, 1		
	%cann-indvar-idxcast = sext i32 %cann-indvar to i64		
	%CT = bitcast i8** %local to i8***		
	%reg115 = load i8**, i8*** %CT		
	%cast235 = getelementptr i8*, i8** %reg115, i64 %cann-indvar-idxcast		
	%reg117 = load i8*, i8** %cast235		
	%reg236 = call i32 @puts( i8* %reg117 )		
	%cond239 = icmp slt i32 %add1-indvar, %argc		
	br i1 %cond239, label %bb2, label %bb3
bb3:		
	%cast243 = bitcast i8** %local to i32*		
	call void @getoptions( i32* %cast243 )
	ret i32 0
}
