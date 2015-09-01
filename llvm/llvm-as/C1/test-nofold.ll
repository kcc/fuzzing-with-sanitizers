

































define i32 @t1(i32 %X) nounwind  {
entry:
	%tmp2 = and i32 %X, 15		
	%tmp4 = icmp eq i32 %tmp2, 0		
	%retval = select i1 %tmp4, i32 %tmp2, i32 42		
	ret i32 %retval
}
