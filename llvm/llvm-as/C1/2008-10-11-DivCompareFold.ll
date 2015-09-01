


define i1 @x(i32 %x) nounwind {
	%div = sdiv i32 %x, 65536		
	%cmp = icmp slt i32 %div, -65536
	ret i1 %cmp
}
