


define void @func_53(i16 signext %p_56) nounwind {
entry:
	%0 = icmp sgt i16 %p_56, -1		
	%iftmp.0.0 = select i1 %0, i32 -1, i32 0		
	%1 = call i32 (...) @func_4(i32 %iftmp.0.0) nounwind		
	ret void
}

declare i32 @func_4(...)
