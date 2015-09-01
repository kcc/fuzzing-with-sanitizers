


declare void @llvm.localescape(...)
declare i8* @llvm.frameaddress(i32)
declare i8* @llvm.localrecover(i8*, i8*, i32)
declare i32 @printf(i8*, ...)

@str = internal constant [10 x i8] c"asdf: %d\0A\00"

define void @print_framealloc_from_fp(i8* %fp) {
  %a.i8 = call i8* @llvm.localrecover(i8* bitcast (void()* @alloc_func to i8*), i8* %fp, i32 0)
  %a = bitcast i8* %a.i8 to i32*
  %a.val = load i32, i32* %a
  call i32 (i8*, ...) @printf(i8* getelementptr ([10 x i8], [10 x i8]* @str, i32 0, i32 0), i32 %a.val)
  %b.i8 = call i8* @llvm.localrecover(i8* bitcast (void()* @alloc_func to i8*), i8* %fp, i32 1)
  %b = bitcast i8* %b.i8 to i32*
  %b.val = load i32, i32* %b
  call i32 (i8*, ...) @printf(i8* getelementptr ([10 x i8], [10 x i8]* @str, i32 0, i32 0), i32 %b.val)
  store i32 42, i32* %b
  %b2 = getelementptr i32, i32* %b, i32 1
  %b2.val = load i32, i32* %b2
  call i32 (i8*, ...) @printf(i8* getelementptr ([10 x i8], [10 x i8]* @str, i32 0, i32 0), i32 %b2.val)
  ret void
}



































define void @alloc_func() {
  %a = alloca i32
  %b = alloca i32, i32 2
  call void (...) @llvm.localescape(i32* %a, i32* %b)
  store i32 42, i32* %a
  store i32 13, i32* %b
  %fp = call i8* @llvm.frameaddress(i32 0)
  call void @print_framealloc_from_fp(i8* %fp)
  ret void
}





























define i32 @main() {
  call void @alloc_func()
  ret i32 0
}

define void @alloc_func_no_frameaddr() {
  %a = alloca i32
  %b = alloca i32
  call void (...) @llvm.localescape(i32* %a, i32* %b)
  store i32 42, i32* %a
  store i32 13, i32* %b
  call void @print_framealloc_from_fp(i8* null)
  ret void
}















