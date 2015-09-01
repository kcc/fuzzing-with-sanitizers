





define i32 @t1() nounwind readnone {
entry:








  ret i32 10
}

define void @t2() nounwind {
entry:








  tail call void @foo(i32 0) nounwind
  ret void
}

define i32 @t3() "no-frame-pointer-elim-non-leaf" nounwind readnone {
entry:








  ret i32 10
}

define void @t4() "no-frame-pointer-elim-non-leaf" nounwind {
entry:









  tail call void @foo(i32 0) nounwind
  ret void
}

declare void @foo(i32)
