



define void @f(i32 %a1, i32 %a2, i32 %a3, i32 %a4, i32 %a5, ...) {
entry:




	%ap = alloca i8*, align 4
	%ap1 = bitcast i8** %ap to i8*
	call void @llvm.va_start(i8* %ap1)
	ret void
}

declare void @llvm.va_start(i8*) nounwind
