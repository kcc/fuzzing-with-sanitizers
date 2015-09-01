



define i32* @t(i32* %x) nounwind {
entry:















  %0 = tail call i32* @foo(i32* %x) nounwind
  %1 = tail call i32* @foo(i32* %0) nounwind
  %2 = tail call i32* @foo(i32* %1) nounwind
  ret i32* %2
}

declare i32* @foo(i32*)
