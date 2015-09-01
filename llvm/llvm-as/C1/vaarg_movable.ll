













define i32 @func(i32 %dummy, ...) {
  %varargs = alloca i8*, align 8
  %varargs1 = bitcast i8** %varargs to i8*
  call void @llvm.va_start(i8* %varargs1)
  %v0 = va_arg i8** %varargs, i32
  %v1 = va_arg i8** %varargs, i32
  %sub = sub nsw i32 %v1, %v0
  %add = add nsw i32 %sub, 1
  call void @llvm.va_end(i8* %varargs1)
  ret i32 %add
}

declare void @llvm.va_start(i8*)
declare void @llvm.va_end(i8*)
