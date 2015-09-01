






























@zed = global i32 0
@zeda0 = alias i32* @zed

@a0foo = alias i32* ()* @foo

define i32* @foo() {
  call void @a0bar()
  ret i32* @zeda0
}

@a0a0bar = alias void ()* @bar

@a0bar = alias void ()* @bar

define void @bar() {
  %c = call i32* @foo()
  ret void
}
