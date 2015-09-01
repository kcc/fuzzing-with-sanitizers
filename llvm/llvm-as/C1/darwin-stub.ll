


@"\01LC" = internal constant [13 x i8] c"Hello World!\00"		

define i32 @main() nounwind {
entry:
	%0 = tail call i32 @puts(i8* getelementptr ([13 x i8], [13 x i8]* @"\01LC", i32 0, i32 0)) nounwind		
	ret i32 0
}

declare i32 @puts(i8*)
