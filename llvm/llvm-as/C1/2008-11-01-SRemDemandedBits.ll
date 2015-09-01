


define i1 @foo(i32 %x) {
  %1 = srem i32 %x, -1
  %2 = icmp eq i32 %1, 0
  ret i1 %2
}
