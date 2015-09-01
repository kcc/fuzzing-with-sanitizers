






define void @left(i64 %p) {
entry-block:
  call void @right(i64 %p)
  call void @right(i64 %p)
  call void @right(i64 %p)
  call void @right(i64 %p)
  ret void
}




define void @right(i64 %p) {
entry-block:
  call void @left(i64 %p)
  call void @left(i64 %p)
  call void @left(i64 %p)
  call void @left(i64 %p)
  ret void
}
