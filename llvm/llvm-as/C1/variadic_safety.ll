

declare void @llvm.va_start(i8*)

define internal i32 @va_func(i32 %a, i32 %b, ...) {
  %valist = alloca i8
  call void @llvm.va_start(i8* %valist)

  ret i32 %b
}






define i32 @call_va(i32 %in) {
  %stacked = alloca i32
  store i32 42, i32* %stacked
  %res = call i32(i32, i32, ...) @va_func(i32 %in, i32 %in, [6 x i32] undef, i32* byval %stacked)
  ret i32 %res

}

define internal i32 @va_deadret_func(i32 %a, i32 %b, ...) {
  %valist = alloca i8
  call void @llvm.va_start(i8* %valist)

  ret i32 %a
}

define void @call_deadret(i32 %in) {
  %stacked = alloca i32
  store i32 42, i32* %stacked
  call i32 (i32, i32, ...) @va_deadret_func(i32 undef, i32 %in, [6 x i32] undef, i32* byval %stacked)
  ret void

}
