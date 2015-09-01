



define void @foo(i32** %p) {
  %a = alloca i32, i32 10
  %addr = getelementptr i32, i32* %a, i32 4
  store i32* %addr, i32** %p
  ret void
}
