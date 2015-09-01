


define i32 @f(i32 %a, ...) {
entry:
	%a_addr = alloca i32		
	%retval = alloca i32, align 4		
	%tmp = alloca i32, align 4		
	store i32 %a, i32* %a_addr
	store i32 0, i32* %tmp
	%tmp1 = load i32, i32* %tmp		
	store i32 %tmp1, i32* %retval
	call void @llvm.va_start(i8* null)
	call void asm sideeffect "", "~{d8}"()
	br label %return

return:		
	%retval2 = load i32, i32* %retval		
	ret i32 %retval2







}

declare void @llvm.va_start(i8*) nounwind
