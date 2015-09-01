



define void @foo(i32 %a, i32* sret %out) {
  store i32 %a, i32* %out
  ret void
}
