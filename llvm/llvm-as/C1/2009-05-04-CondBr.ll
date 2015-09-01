


define i32 @some_func(i32 %a) nounwind {
entry:
	%retval = alloca i32		
	%a.addr = alloca i32		
	store i32 %a, i32* %a.addr
	%tmp = load i32, i32* %a.addr		
	%inc = add i32 %tmp, 1		
	store i32 %inc, i32* %a.addr
	%tmp1 = load i32, i32* %a.addr		
	%cmp = icmp slt i32 %tmp1, 3		
	br i1 %cmp, label %if.then, label %if.end

if.then:		
	store i32 7, i32* %a.addr
	br label %if.end

if.end:		
	%tmp2 = load i32, i32* %a.addr		
	%inc3 = add i32 %tmp2, 1		
	store i32 %inc3, i32* %a.addr
	%tmp4 = load i32, i32* %a.addr		
	store i32 %tmp4, i32* %retval
	%0 = load i32, i32* %retval		
	ret i32 %0
}
