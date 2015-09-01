



define i32 @foo(i32 %A, i32 %B) {
entry:
	%A_addr = alloca i32		
	%B_addr = alloca i32		
	%retval = alloca i32, align 4		
	%tmp = alloca i32, align 4		
	%ret = alloca i32, align 4		
	store i32 %A, i32* %A_addr
	store i32 %B, i32* %B_addr
	%tmp1 = load i32, i32* %A_addr		
	%tmp2 = call i32 asm "roll $1,$0", "=r,I,0,~{dirflag},~{fpsr},~{flags},~{cc}"( i32 7, i32 %tmp1 )		
	store i32 %tmp2, i32* %ret
	%tmp3 = load i32, i32* %ret		
	store i32 %tmp3, i32* %tmp
	%tmp4 = load i32, i32* %tmp		
	store i32 %tmp4, i32* %retval
	br label %return

return:		
	%retval5 = load i32, i32* %retval		
	ret i32 %retval5
}
