

declare void @h(i32, ...)
define void @i() {
  %args = alloca inalloca i32
  call void (i32, ...) @h(i32 1, i32* inalloca %args, i32 3)

  ret void
}
