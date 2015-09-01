


define i32 @foo() nounwind {
entry:
	%retval = alloca i32, align 4		
	%temp = alloca i32, align 4		
	%ctz_x = alloca i32, align 4		
	%ctz_c = alloca i32, align 4		
	store i32 61440, i32* %ctz_x
	%tmp = load i32, i32* %ctz_x		
	%tmp1 = sub i32 0, %tmp		
	%tmp2 = load i32, i32* %ctz_x		
	%tmp3 = and i32 %tmp1, %tmp2		
	%tmp4 = call i32 asm "$(cntlz$|cntlzw$) $0,$1", "=r,r,~{dirflag},~{fpsr},~{flags}"( i32 %tmp3 )		
	store i32 %tmp4, i32* %ctz_c
	%tmp5 = load i32, i32* %ctz_c		
	store i32 %tmp5, i32* %temp
	%tmp6 = load i32, i32* %temp		
	store i32 %tmp6, i32* %retval
	br label %return

return:		
	%retval2 = load i32, i32* %retval		
	ret i32 %retval2
}
