


define i1 @foo(i32 %a) nounwind  {
entry:
	%tmp15 = shl i32 1, %a		
	%tmp237 = and i32 %tmp15, 1		
	%toBool = icmp eq i32 %tmp237, 0		
	ret i1 %toBool
}
