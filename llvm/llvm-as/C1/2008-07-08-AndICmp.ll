


define i1 @foo(i32 %a, i32 %b) nounwind {
entry:
	icmp ult i32 %a, 8		
	icmp ult i32 %b, 8		
	and i1 %1, %0		
	ret i1 %2
}
