


define i32 @bar() {
entry:
	%retval = alloca i32, align 4		
	%tmp = call i32 (...) bitcast (i32 (i8*)* @f to i32 (...)*)( double 3.000000e+00 )		
	br label %return

return:		
	%retval1 = load i32, i32* %retval		
	ret i32 %retval1
}

define i32 @f(i8* %p) {
entry:
	%p_addr = alloca i8*		
	%retval = alloca i32, align 4		
	store i8* %p, i8** %p_addr
	br label %return

return:		
	%retval1 = load i32, i32* %retval		
	ret i32 %retval1
}
