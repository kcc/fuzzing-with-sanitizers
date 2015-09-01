

define i32 @f(i32 %a) {
entry:
	%tmp2 = and i32 %a, 255		
	icmp eq i32 %tmp2, 0		
	%retval = select i1 %0, i32 20, i32 10		
	ret i32 %retval
}

define i32 @g(i32 %a) {
entry:
        %tmp2 = xor i32 %a, 255
	icmp eq i32 %tmp2, 0		
	%retval = select i1 %0, i32 20, i32 10		
	ret i32 %retval
}



