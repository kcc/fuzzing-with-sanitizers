

define void @foo() {
  %p = alloca i1, align 1073741824
  ret void
}
