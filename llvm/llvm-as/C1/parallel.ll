







target triple = "x86_64-unknown-linux-gnu"




define void @foo() {
  call void @bar()
  ret void
}




define void @bar() {
  call void @foo()
  ret void
}
