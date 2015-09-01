

declare void @f()

define void @g() {
  call void @f() align 8

  ret void
}
