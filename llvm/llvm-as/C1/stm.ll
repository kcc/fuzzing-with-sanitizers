

@"\01LC" = internal constant [32 x i8] c"Boolean Not: %d %d %d %d %d %d\0A\00", section "__TEXT,__cstring,cstring_literals"		
@"\01LC1" = internal constant [26 x i8] c"Bitwise Not: %d %d %d %d\0A\00", section "__TEXT,__cstring,cstring_literals"		

declare i32 @printf(i8* nocapture, ...) nounwind

define i32 @main() nounwind {
entry:



	%0 = tail call i32 (i8*, ...) @printf(i8* getelementptr ([26 x i8], [26 x i8]* @"\01LC1", i32 0, i32 0), i32 -2, i32 -3, i32 2, i32 -6) nounwind		
	%1 = tail call i32 (i8*, ...) @printf(i8* getelementptr ([32 x i8], [32 x i8]* @"\01LC", i32 0, i32 0), i32 0, i32 1, i32 0, i32 1, i32 0, i32 1) nounwind		
	ret i32 0
}
