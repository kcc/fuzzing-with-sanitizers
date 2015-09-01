





define internal void @foo() {
  call void @bar()
  ret void
}



define void @bar() {
  call void @foo()
  ret void
}
