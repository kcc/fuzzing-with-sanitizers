

define i32 @_swilseek(i32) nounwind {
entry:
	%ptr = alloca i32		
	store i32 %0, i32* %ptr
	%retval = alloca i32		
	store i32 0, i32* %retval
	%res = alloca i32		
	%fh = alloca i32		
	%1 = load i32, i32* %fh		
	%2 = load i32, i32* %ptr		
	%3 = call i32 asm "mov r0, $2
        store i32 %3, i32* %retval
	br label %return

return:		
	%4 = load i32, i32* %retval		
	ret i32 %4
}



