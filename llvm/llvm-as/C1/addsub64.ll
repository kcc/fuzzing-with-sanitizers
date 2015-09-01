
define i64 @add64(i64 %a, i64 %b) {
	%result = add i64 %a, %b
	ret i64 %result
}






define i64 @sub64(i64 %a, i64 %b) {
	%result = sub i64 %a, %b
	ret i64 %result
}






define i64 @maccu(i64 %a, i32 %b, i32 %c) {
entry:
	%0 = zext i32 %b to i64
	%1 = zext i32 %c to i64
	%2 = mul i64 %1, %0
	%3 = add i64 %2, %a
	ret i64 %3
}




define i64 @maccs(i64 %a, i32 %b, i32 %c) {
entry:
	%0 = sext i32 %b to i64
	%1 = sext i32 %c to i64
	%2 = mul i64 %1, %0
	%3 = add i64 %2, %a
	ret i64 %3
}




define i64 @lmul(i32 %a, i32 %b, i32 %c, i32 %d) {
entry:
	%0 = zext i32 %a to i64
	%1 = zext i32 %b to i64
	%2 = zext i32 %c to i64
	%3 = zext i32 %d to i64
	%4 = mul i64 %1, %0
	%5 = add i64 %4, %2
	%6 = add i64 %5, %3
	ret i64 %6
}



