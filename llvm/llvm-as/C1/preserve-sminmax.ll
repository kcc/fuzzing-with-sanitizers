







define i32 @foo(i32 %h) {
  %sd = sdiv i32 %h, 2
  %t = icmp slt i32 %sd, 1
  %r = select i1 %t, i32 %sd, i32 1
  ret i32 %r
}






define i32 @bar(i32 %h) {
  %sd = sdiv i32 %h, 2
  %t = icmp sgt i32 %sd, 1
  %r = select i1 %t, i32 %sd, i32 1
  ret i32 %r
}






