

declare void @llvm.va_start(i8*)
declare void @external_func(i8*)

@va_list = external global i8*









define void @varargs_func(i32 %arg1, ...) {
  call void @llvm.va_start(i8* bitcast (i8** @va_list to i8*))
  call void @external_func(i8* bitcast (i8** @va_list to i8*))
  ret void
}











