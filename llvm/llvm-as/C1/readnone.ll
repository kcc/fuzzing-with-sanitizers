


define void @bar(i8* readonly) {
  call void @foo(i8* %0)
    ret void
}


define void @foo(i8* readonly) {
  call void @bar(i8* %0)
  ret void
}
