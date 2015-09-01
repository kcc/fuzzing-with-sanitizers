

@.str = internal constant [26 x i8] c"%d, %f, %d, %lld, %d, %f\0A\00"		

declare i32 @printf(i8*, ...) nounwind 

define i32 @main() nounwind  {
entry:
	%tmp10.i = tail call i32 (i8*, ...) @printf( i8* getelementptr ([26 x i8], [26 x i8]* @.str, i32 0, i64 0), i32 12, double 0x3FF3EB8520000000, i32 120, i64 123456677890, i32 -10, double 4.500000e+15 ) nounwind 		
	ret i32 0
}
