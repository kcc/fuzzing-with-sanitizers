




declare void @foo(i64 %p)




define void @bar() nounwind {
  call void @foo(i64 0)
  call void @foo(i64 0)
  ret void
}




define void @bat() nounwind {
  call void @foo(i64 -1)
  call void @foo(i64 -1)
  ret void
}




define void @bau() nounwind {
  call void @foo(i64 1)
  call void @foo(i64 1)
  ret void
}

