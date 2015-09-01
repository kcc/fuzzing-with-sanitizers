
@a_str = internal constant [8 x i8] c"a = %d\0A\00"		
@b_str = internal constant [8 x i8] c"b = %d\0A\00"		
@add_str = internal constant [12 x i8] c"a + b = %d\0A\00"		
@sub_str = internal constant [12 x i8] c"a - b = %d\0A\00"		
@mul_str = internal constant [12 x i8] c"a * b = %d\0A\00"		
@div_str = internal constant [12 x i8] c"b / a = %d\0A\00"		
@rem_str = internal constant [13 x i8] c"b \5C% a = %d\0A\00"		
@lt_str = internal constant [12 x i8] c"a < b = %d\0A\00"		
@le_str = internal constant [13 x i8] c"a <= b = %d\0A\00"		
@gt_str = internal constant [12 x i8] c"a > b = %d\0A\00"		
@ge_str = internal constant [13 x i8] c"a >= b = %d\0A\00"		
@eq_str = internal constant [13 x i8] c"a == b = %d\0A\00"		
@ne_str = internal constant [13 x i8] c"a != b = %d\0A\00"		
@and_str = internal constant [12 x i8] c"a & b = %d\0A\00"		
@or_str = internal constant [12 x i8] c"a | b = %d\0A\00"		
@xor_str = internal constant [12 x i8] c"a ^ b = %d\0A\00"		
@shl_str = internal constant [13 x i8] c"b << a = %d\0A\00"		
@shr_str = internal constant [13 x i8] c"b >> a = %d\0A\00"		
@A = global i32 2		
@B = global i32 5		

declare i32 @printf(i8*, ...)

define i32 @main() {
	%a = load i32, i32* @A		
	%b = load i32, i32* @B		
	%a_s = getelementptr [8 x i8], [8 x i8]* @a_str, i64 0, i64 0		
	%b_s = getelementptr [8 x i8], [8 x i8]* @b_str, i64 0, i64 0		
	call i32 (i8*, ...) @printf( i8* %a_s, i32 %a )		
	call i32 (i8*, ...) @printf( i8* %b_s, i32 %b )		
	%add_r = add i32 %a, %b		
	%sub_r = sub i32 %a, %b		
	%mul_r = mul i32 %a, %b		
	%div_r = sdiv i32 %b, %a		
	%rem_r = srem i32 %b, %a		
	%add_s = getelementptr [12 x i8], [12 x i8]* @add_str, i64 0, i64 0		
	%sub_s = getelementptr [12 x i8], [12 x i8]* @sub_str, i64 0, i64 0		
	%mul_s = getelementptr [12 x i8], [12 x i8]* @mul_str, i64 0, i64 0		
	%div_s = getelementptr [12 x i8], [12 x i8]* @div_str, i64 0, i64 0		
	%rem_s = getelementptr [13 x i8], [13 x i8]* @rem_str, i64 0, i64 0		
	call i32 (i8*, ...) @printf( i8* %add_s, i32 %add_r )		
	call i32 (i8*, ...) @printf( i8* %sub_s, i32 %sub_r )		
	call i32 (i8*, ...) @printf( i8* %mul_s, i32 %mul_r )		
	call i32 (i8*, ...) @printf( i8* %div_s, i32 %div_r )		
	call i32 (i8*, ...) @printf( i8* %rem_s, i32 %rem_r )		
	%lt_r = icmp slt i32 %a, %b		
	%le_r = icmp sle i32 %a, %b		
	%gt_r = icmp sgt i32 %a, %b		
	%ge_r = icmp sge i32 %a, %b		
	%eq_r = icmp eq i32 %a, %b		
	%ne_r = icmp ne i32 %a, %b		
	%lt_s = getelementptr [12 x i8], [12 x i8]* @lt_str, i64 0, i64 0		
	%le_s = getelementptr [13 x i8], [13 x i8]* @le_str, i64 0, i64 0		
	%gt_s = getelementptr [12 x i8], [12 x i8]* @gt_str, i64 0, i64 0		
	%ge_s = getelementptr [13 x i8], [13 x i8]* @ge_str, i64 0, i64 0		
	%eq_s = getelementptr [13 x i8], [13 x i8]* @eq_str, i64 0, i64 0		
	%ne_s = getelementptr [13 x i8], [13 x i8]* @ne_str, i64 0, i64 0		
	call i32 (i8*, ...) @printf( i8* %lt_s, i1 %lt_r )		
	call i32 (i8*, ...) @printf( i8* %le_s, i1 %le_r )		
	call i32 (i8*, ...) @printf( i8* %gt_s, i1 %gt_r )		
	call i32 (i8*, ...) @printf( i8* %ge_s, i1 %ge_r )		
	call i32 (i8*, ...) @printf( i8* %eq_s, i1 %eq_r )		
	call i32 (i8*, ...) @printf( i8* %ne_s, i1 %ne_r )		
	%and_r = and i32 %a, %b		
	%or_r = or i32 %a, %b		
	%xor_r = xor i32 %a, %b		
	%u = trunc i32 %a to i8		
	%shift.upgrd.1 = zext i8 %u to i32		
	%shl_r = shl i32 %b, %shift.upgrd.1		
	%shift.upgrd.2 = zext i8 %u to i32		
	%shr_r = ashr i32 %b, %shift.upgrd.2		
	%and_s = getelementptr [12 x i8], [12 x i8]* @and_str, i64 0, i64 0		
	%or_s = getelementptr [12 x i8], [12 x i8]* @or_str, i64 0, i64 0		
	%xor_s = getelementptr [12 x i8], [12 x i8]* @xor_str, i64 0, i64 0		
	%shl_s = getelementptr [13 x i8], [13 x i8]* @shl_str, i64 0, i64 0		
	%shr_s = getelementptr [13 x i8], [13 x i8]* @shr_str, i64 0, i64 0		
	call i32 (i8*, ...) @printf( i8* %and_s, i32 %and_r )		
	call i32 (i8*, ...) @printf( i8* %or_s, i32 %or_r )		
	call i32 (i8*, ...) @printf( i8* %xor_s, i32 %xor_r )		
	call i32 (i8*, ...) @printf( i8* %shl_s, i32 %shl_r )		
	call i32 (i8*, ...) @printf( i8* %shr_s, i32 %shr_r )		
	ret i32 0
}
