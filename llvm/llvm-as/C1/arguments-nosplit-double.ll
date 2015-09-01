


define i32 @f(i64 %z, i32 %a, double %b) {
	%tmp = call i32 @g(double %b)
	ret i32 %tmp
}

declare i32 @g(double)
