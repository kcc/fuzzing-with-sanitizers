

declare double @t1(i32) readonly

define void @t2() nounwind {
  call double @t1(i32 42)  
  ret void
}
