







declare void @llvm.va_start(i8*) nounwind

declare void(i8*, ...)* @get_f(i8* %this)

define void @f_thunk(i8* %this, ...) {
  
  %ap = alloca [4 x i8*], align 16
  %ap_i8 = bitcast [4 x i8*]* %ap to i8*
  call void @llvm.va_start(i8* %ap_i8)

  %fptr = call void(i8*, ...)*(i8*) @get_f(i8* %this)
  musttail call void (i8*, ...) %fptr(i8* %this, ...)
  ret void
}






























































define void @g_thunk(i8* %fptr_i8, ...) {
  %fptr = bitcast i8* %fptr_i8 to void (i8*, ...)*
  musttail call void (i8*, ...) %fptr(i8* %fptr_i8, ...)
  ret void
}














%struct.Foo = type { i1, i8*, i8* }

@g = external global i32

define void @h_thunk(%struct.Foo* %this, ...) {
  %cond_p = getelementptr %struct.Foo, %struct.Foo* %this, i32 0, i32 0
  %cond = load i1, i1* %cond_p
  br i1 %cond, label %then, label %else

then:
  %a_p = getelementptr %struct.Foo, %struct.Foo* %this, i32 0, i32 1
  %a_i8 = load i8*, i8** %a_p
  %a = bitcast i8* %a_i8 to void (%struct.Foo*, ...)*
  musttail call void (%struct.Foo*, ...) %a(%struct.Foo* %this, ...)
  ret void

else:
  %b_p = getelementptr %struct.Foo, %struct.Foo* %this, i32 0, i32 2
  %b_i8 = load i8*, i8** %b_p
  %b = bitcast i8* %b_i8 to void (%struct.Foo*, ...)*
  store i32 42, i32* @g
  musttail call void (%struct.Foo*, ...) %b(%struct.Foo* %this, ...)
  ret void
}













