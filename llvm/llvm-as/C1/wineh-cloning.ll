

declare i32 @__CxxFrameHandler3(...)

declare void @f()
declare i32 @g()
declare void @h(i32)
declare i1 @b()


define void @test1() personality i32 (...)* @__CxxFrameHandler3 {
entry:
  
  %x = call i32 @g()
  invoke void @f()
    to label %noreturn unwind label %catch
catch:
  catchpad []
    to label %noreturn unwind label %endcatch
noreturn:
  
  call void @h(i32 %x)
  unreachable
endcatch:
  catchendpad unwind to caller
}


















define void @test2() personality i32 (...)* @__CxxFrameHandler3 {
entry:
  invoke void @f()
    to label %exit unwind label %cleanup
cleanup:
  cleanuppad []
  br label %exit
exit:
  call void @f()
  ret void
}
















define void @test3() personality i32 (...)* @__CxxFrameHandler3 {
entry:
  invoke void @f()
    to label %invoke.cont unwind label %catch
invoke.cont:
  invoke void @f()
    to label %exit unwind label %cleanup
catch:
  catchpad [] to label %shared unwind label %endcatch
endcatch:
  catchendpad unwind to caller
cleanup:
  cleanuppad []
  br label %shared
shared:
  call void @f()
  br label %exit
exit:
  ret void
}



















define void @test4() personality i32 (...)* @__CxxFrameHandler3 {
entry:
  invoke void @f()
    to label %shared unwind label %catch
catch:
  catchpad []
    to label %shared unwind label %endcatch
endcatch:
  catchendpad unwind to caller
shared:
  %x = call i32 @g()
  %i = call i32 @g()
  %zero.trip = icmp eq i32 %i, 0
  br i1 %zero.trip, label %exit, label %loop
loop:
  %i.loop = phi i32 [ %i, %shared ], [ %i.dec, %loop.tail ]
  %b = call i1 @b()
  br i1 %b, label %left, label %right
left:
  %y = call i32 @g()
  br label %loop.tail
right:
  call void @h(i32 %x)
  br label %loop.tail
loop.tail:
  %i.dec = sub i32 %i.loop, 1
  %done = icmp eq i32 %i.dec, 0
  br i1 %done, label %exit, label %loop
exit:
  call void @h(i32 %x)
  unreachable
}






















































define void @test5() personality i32 (...)* @__CxxFrameHandler3 {
entry:
  invoke void @f()
    to label %exit unwind label %outer
outer:
  %o = cleanuppad []
  %x = call i32 @g()
  invoke void @f()
    to label %outer.ret unwind label %inner
inner:
  %i = catchpad []
    to label %inner.catch unwind label %inner.endcatch
inner.catch:
  catchret %i to label %outer.post-inner
inner.endcatch:
  catchendpad unwind to caller
outer.post-inner:
  call void @h(i32 %x)
  br label %outer.ret
outer.ret:
  cleanupret %o unwind to caller
exit:
  ret void
}

















define void @test6() personality i32 (...)* @__CxxFrameHandler3 {
entry:
  invoke void @f()
    to label %invoke.cont unwind label %left
invoke.cont:
  invoke void @f()
    to label %exit unwind label %right
left:
  cleanuppad []
  br label %shared
right:
  catchpad []
    to label %right.catch unwind label %right.end
right.catch:
  br label %shared
right.end:
  catchendpad unwind to caller
shared:
  %x = call i32 @g()
  invoke void @f()
    to label %shared.cont unwind label %inner
shared.cont:
  unreachable
inner:
  %i = cleanuppad []
  call void @h(i32 %x)
  cleanupret %i unwind label %right.end
exit:
  ret void
}
















define void @test7() personality i32 (...)* @__CxxFrameHandler3 {
entry:
  invoke void @f()
    to label %invoke.cont unwind label %left
invoke.cont:
  invoke void @f()
    to label %unreachable unwind label %right
left:
  cleanuppad []
  invoke void @f() to label %unreachable unwind label %inner
right:
  catchpad []
    to label %right.catch unwind label %right.end
right.catch:
  invoke void @f() to label %unreachable unwind label %inner
right.end:
  catchendpad unwind to caller
inner:
  %i = cleanuppad []
  %x = call i32 @g()
  call void @h(i32 %x)
  cleanupret %i unwind label %right.end
unreachable:
  unreachable
}







define void @test8() personality i32 (...)* @__CxxFrameHandler3 {
entry:
  invoke void @f()
    to label %invoke.cont unwind label %left
invoke.cont:
  invoke void @f()
    to label %unreachable unwind label %right
left:
  cleanuppad []
  br label %shared
right:
  catchpad []
    to label %right.catch unwind label %right.end
right.catch:
  br label %shared
right.end:
  catchendpad unwind to caller
shared:
  invoke void @f()
    to label %unreachable unwind label %inner
inner:
  cleanuppad []
  invoke void @f()
    to label %unreachable unwind label %inner.child
inner.child:
  cleanuppad []
  %x = call i32 @g()
  call void @h(i32 %x)
  unreachable
unreachable:
  unreachable
}






define void @test9() personality i32 (...)* @__CxxFrameHandler3 {
entry:
  invoke void @f()
    to label %invoke.cont unwind label %left
invoke.cont:
  invoke void @f()
    to label %unreachable unwind label %right
left:
  cleanuppad []
  call void @h(i32 1)
  invoke void @f()
    to label %unreachable unwind label %right
right:
  cleanuppad []
  call void @h(i32 2)
  invoke void @f()
    to label %unreachable unwind label %left
unreachable:
  unreachable
}











