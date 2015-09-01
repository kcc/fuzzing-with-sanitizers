






target triple = "x86_64-apple-darwin11"

@str = private unnamed_addr constant [13 x i8] c"hello world\0A\00"




define i32 @uses_puts(i32 %i) {
entry:
  %s = call i8* @foo(i32 %i)
  %ret = call i32 @puts(i8* %s)
  ret i32 %ret
}
define i32 @uses_printf(i32 %i) {
entry:
  %s = getelementptr [13 x i8], [13 x i8]* @str, i64 0, i64 0
  call i32 (i8*, ...) @printf(i8* %s)
  ret i32 0
}

define hidden i32 @printf(i8* readonly nocapture %fmt, ...) {
entry:
  %ret = call i32 @bar(i8* %fmt)
  ret i32 %ret
}
define hidden i32 @puts(i8* %s) {
entry:
  %ret = call i32 @bar(i8* %s)
  ret i32 %ret
}

declare i8* @foo(i32)
declare i32 @bar(i8*)
