





define internal void @0() {
  
  call void @foo()
  ret void
}



define internal void @1() {
  
  
  call void @foo()
  call void @foo()
  ret void
}



define void @foo() {
  
  
  call void @1()
  call void @0()
  ret void
}
