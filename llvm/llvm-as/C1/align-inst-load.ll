

define void @foo() {
  load i1, i1* %p, align 1073741824
  ret void
}
