


@f = common global void (i32)* null, align 4


define void @foo(i32 %x) {
entry:
  %0 = load void (i32)*, void (i32)** @f, align 4
  tail call void %0(i32 %x)
  ret void










}


define void @bar(void (i32)* nocapture %g, i32 %x, void (i32)* nocapture %h) {
entry:
  tail call void %g(i32 %x)
  tail call void %h(i32 %x)
  ret void









}
