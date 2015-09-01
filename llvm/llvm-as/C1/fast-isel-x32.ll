




declare void @bar(i32* %arg)


define void @foo() {
  %a = alloca i32

  call void @bar(i32* %a)
  ret void
}
