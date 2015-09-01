






define void @foo() nounwind {
entry:
  call void @bar(i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7)
  ret void
}

declare void @bar(i32, i32, i32, i32, i32, i32, i32)
