



define hidden i32 @__gcov_execlp(i8* %path, i8* %arg, ...) nounwind {
entry:








	call void @__gcov_flush() nounwind
	call void @llvm.va_start(i8* null)
	br i1 undef, label %bb5, label %bb

bb:		
	br i1 undef, label %bb5, label %bb

bb5:		
	%0 = alloca i8*, i32 undef, align 4		
	%1 = call i32 @execvp(i8* %path, i8** %0) nounwind		
	ret i32 %1
}

declare hidden void @__gcov_flush()

declare i32 @execvp(i8*, i8**) nounwind

declare void @llvm.va_start(i8*) nounwind
