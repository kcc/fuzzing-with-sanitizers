

declare void @llvm.va_start(i8*) nounwind

declare void @llvm.va_copy(i8*, i8*) nounwind

declare void @llvm.va_end(i8*) nounwind

define x86_fp80 @test(...) nounwind {
	%ap = alloca i8*		
	%v1 = bitcast i8** %ap to i8*		
	call void @llvm.va_start(i8* %v1)
	%t1 = va_arg i8** %ap, x86_fp80		
	%t2 = va_arg i8** %ap, x86_fp80		
	%t = fadd x86_fp80 %t1, %t2		
	ret x86_fp80 %t
}
