


define void @foo()  {
  ret void
}
declare i32 @bar(i8*)






define  void @zed() {
  call i32 @bar(i8* bitcast (void ()* @foo to i8*))
  ret void
}
