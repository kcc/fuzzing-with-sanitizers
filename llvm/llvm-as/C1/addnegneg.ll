


define i32 @l(i32 %a, i32 %b, i32 %c, i32 %d) {
entry:
	%b.neg = sub i32 0, %b		
	%c.neg = sub i32 0, %c		
	%sub4 = add i32 %c.neg, %b.neg		
	%sub6 = add i32 %sub4, %d		
	ret i32 %sub6
}
