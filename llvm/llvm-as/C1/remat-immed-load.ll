



define void @f0() nounwind {
entry:



  tail call void @foo1(i32 1) nounwind
  tail call void @foo1(i32 1) nounwind
  ret void
}

declare void @foo1(i32)

define void @f3() nounwind {
entry:



  tail call void @foo2(i64 1) nounwind
  tail call void @foo2(i64 1) nounwind
  ret void
}

declare void @foo2(i64)

define void @f5() nounwind {
entry:



  tail call void @f6(i32 65536) nounwind
  tail call void @f6(i32 65536) nounwind
  ret void
}

declare void @f6(i32)

define void @f7() nounwind {
entry:



  tail call void @f8(i64 65536) nounwind
  tail call void @f8(i64 65536) nounwind
  ret void
}

declare void @f8(i64)

