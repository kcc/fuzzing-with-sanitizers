















target triple = "x86_64-unknown-linux-gnu"
define i32 @g() {
  call void @f()
  ret i32 0
}
define linkonce_odr hidden void @f() {
  ret void
}
