

@a_str = internal constant [8 x i8] c"a = %d\0A\00"		
@a_mul_str = internal constant [13 x i8] c"a * %d = %d\0A\00"		
@A = global i32 2		

declare i32 @printf(i8*, ...)

define i32 @main() {
	%a = load i32, i32* @A		
	%a_s = getelementptr [8 x i8], [8 x i8]* @a_str, i64 0, i64 0		
	%a_mul_s = getelementptr [13 x i8], [13 x i8]* @a_mul_str, i64 0, i64 0		
	call i32 (i8*, ...) @printf( i8* %a_s, i32 %a )		
	%r_0 = mul i32 %a, 0		
	%r_1 = mul i32 %a, 1		
	%r_2 = mul i32 %a, 2		
	%r_3 = mul i32 %a, 3		
	%r_4 = mul i32 %a, 4		
	%r_5 = mul i32 %a, 5		
	%r_6 = mul i32 %a, 6		
	%r_7 = mul i32 %a, 7		
	%r_8 = mul i32 %a, 8		
	%r_9 = mul i32 %a, 9		
	%r_10 = mul i32 %a, 10		
	%r_11 = mul i32 %a, 11		
	%r_12 = mul i32 %a, 12		
	%r_13 = mul i32 %a, 13		
	%r_14 = mul i32 %a, 14		
	%r_15 = mul i32 %a, 15		
	%r_16 = mul i32 %a, 16		
	%r_17 = mul i32 %a, 17		
	%r_18 = mul i32 %a, 18		
	%r_19 = mul i32 %a, 19		
	call i32 (i8*, ...) @printf( i8* %a_mul_s, i32 0, i32 %r_0 )		
	call i32 (i8*, ...) @printf( i8* %a_mul_s, i32 1, i32 %r_1 )		
	call i32 (i8*, ...) @printf( i8* %a_mul_s, i32 2, i32 %r_2 )		
	call i32 (i8*, ...) @printf( i8* %a_mul_s, i32 3, i32 %r_3 )		
	call i32 (i8*, ...) @printf( i8* %a_mul_s, i32 4, i32 %r_4 )		
	call i32 (i8*, ...) @printf( i8* %a_mul_s, i32 5, i32 %r_5 )		
	call i32 (i8*, ...) @printf( i8* %a_mul_s, i32 6, i32 %r_6 )		
	call i32 (i8*, ...) @printf( i8* %a_mul_s, i32 7, i32 %r_7 )		
	call i32 (i8*, ...) @printf( i8* %a_mul_s, i32 8, i32 %r_8 )		
	call i32 (i8*, ...) @printf( i8* %a_mul_s, i32 9, i32 %r_9 )		
	call i32 (i8*, ...) @printf( i8* %a_mul_s, i32 10, i32 %r_10 )		
	call i32 (i8*, ...) @printf( i8* %a_mul_s, i32 11, i32 %r_11 )		
	call i32 (i8*, ...) @printf( i8* %a_mul_s, i32 12, i32 %r_12 )		
	call i32 (i8*, ...) @printf( i8* %a_mul_s, i32 13, i32 %r_13 )		
	call i32 (i8*, ...) @printf( i8* %a_mul_s, i32 14, i32 %r_14 )		
	call i32 (i8*, ...) @printf( i8* %a_mul_s, i32 15, i32 %r_15 )		
	call i32 (i8*, ...) @printf( i8* %a_mul_s, i32 16, i32 %r_16 )		
	call i32 (i8*, ...) @printf( i8* %a_mul_s, i32 17, i32 %r_17 )		
	call i32 (i8*, ...) @printf( i8* %a_mul_s, i32 18, i32 %r_18 )		
	call i32 (i8*, ...) @printf( i8* %a_mul_s, i32 19, i32 %r_19 )		
	ret i32 0
}
