

@str = internal constant [14 x i8] c"Hello world!\0A\00"		
@str.upgrd.1 = internal constant [13 x i8] c"Blah world!\0A\00"		

define i32 @test(i32 %argc, i8** %argv) nounwind {
entry:




	switch i32 %argc, label %UnifiedReturnBlock [
		 i32 1, label %bb
		 i32 2, label %bb2
	]

bb:		
	%tmp1 = tail call i32 (i8*, ...) @printf( i8* getelementptr ([14 x i8], [14 x i8]* @str, i32 0, i64 0) )		
	ret i32 0

bb2:		
	%tmp4 = tail call i32 (i8*, ...) @printf( i8* getelementptr ([13 x i8], [13 x i8]* @str.upgrd.1, i32 0, i64 0) )		
	ret i32 0

UnifiedReturnBlock:		
	ret i32 0
}

declare i32 @printf(i8*, ...)
