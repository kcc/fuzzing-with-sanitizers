


define void @foo(...) nounwind {
entry:
	%rr = alloca i32		
	%0 = load i32, i32* %rr		
	%1 = call i32 asm "nop", "=r,0"(i32 %0) nounwind		
	store i32 %1, i32* %rr
	br label %return

return:		
	ret void
}
