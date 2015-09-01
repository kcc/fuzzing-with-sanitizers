

declare i32 @__CxxFrameHandler3(...)

declare void @f()

declare i32 @g()

declare void @h(i32)

declare i1 @i()


define void @test1(i1 %B) personality i32 (...)* @__CxxFrameHandler3 {
entry:
  
  
  
  
  %x = call i32 @g()
  %y = call i32 @g()
  br i1 %B, label %left, label %right
left:
  
  
  
  invoke void @f()
          to label %exit unwind label %merge
right:
  
  
  
  invoke void @f()
          to label %exit unwind label %merge
merge:
  
  
  %phi = phi i32 [ %x, %left ], [ %y, %right ]
  %cp = catchpad [] to label %catch unwind label %catchend

catch:
  
  
  
  call void @h(i32 %phi)
  catchret %cp to label %exit

catchend:
  catchendpad unwind to caller

exit:
  ret void
}


define void @test2(i1 %B) personality i32 (...)* @__CxxFrameHandler3 {
entry:
  br i1 %B, label %left, label %right
left:
  
  
  
  
  
  invoke void @f()
          to label %exit unwind label %merge.inner
right:
  
  
  
  
  
  invoke void @f()
          to label %exit unwind label %merge.inner
merge.inner:
  
  
  
  %x = phi i32 [ 1, %left ], [ 2, %right ]
  %cpinner = catchpad [] to label %catch.inner unwind label %catchend.inner

catch.inner:
  
  
  %z = call i32 @g()
  
  
  invoke void @f()
          to label %catchret.inner unwind label %merge.outer

catchret.inner:
  catchret %cpinner to label %exit
catchend.inner:
  catchendpad unwind label %merge.outer

merge.outer:
  
  
  
  %y = phi i32 [ %x, %catchend.inner ], [ %z, %catch.inner ]
  %cpouter = catchpad [] to label %catch.outer unwind label %catchend.outer

catchend.outer:
  catchendpad unwind to caller

catch.outer:
  
  
  
  
  
  
  call void @h(i32 %x)
  call void @h(i32 %y)
  catchret %cpouter to label %exit

exit:
  ret void
}


define void @test3(i1 %B) personality i32 (...)* @__CxxFrameHandler3 {
entry:
  
  
  
  
  
  %x = call i32 @g()
  invoke void @f()
          to label %exit unwind label %catchpad

catchpad:
  %cp = catchpad [] to label %catch unwind label %catchend

catch:
  
  
  
  
  br i1 %B, label %left, label %right
left:
  
  
  
  
  br label %merge
right:
  br label %merge
merge:
  
  
  %phi = phi i32 [ %x, %left ], [ 42, %right ]
  call void @h(i32 %phi)
  catchret %cp to label %exit

catchend:
  catchendpad unwind to caller

exit:
  ret void
}




define void @test4(i1 %B) personality i32 (...)* @__CxxFrameHandler3 {
entry:
  
  
  
  br i1 %B, label %left, label %right
left:
  
  
  
  
  %l = call i32 @g()
  invoke void @f()
          to label %join unwind label %catchpad.inner
right:
  
  
  
  
  %r = call i32 @g()
  invoke void @f()
          to label %join unwind label %catchpad.inner
catchpad.inner:
   
   
   %phi.inner = phi i32 [ %l, %left ], [ %r, %right ]
   %cp1 = catchpad [] to label %catch.inner unwind label %catchend.inner
catch.inner:
   catchret %cp1 to label %join
catchend.inner:
   catchendpad unwind label  %catchpad.outer
join:
  
  
  
  
   %j = call i32 @g()
   invoke void @f()
           to label %exit unwind label %catchpad.outer
catchpad.outer:
   
   
   %phi.outer = phi i32 [ %phi.inner, %catchend.inner ], [ %j, %join ]
   %cp2 = catchpad [] to label %catch.outer unwind label %catchend.outer
catch.outer:
   
   
   
   call void @h(i32 %phi.outer)
   catchret %cp2 to label %exit
catchend.outer:
   catchendpad unwind to caller
exit:
   ret void
}


define void @test5() personality i32 (...)* @__CxxFrameHandler3 {
entry:
  
  
  
  
  invoke void @f()
          to label %invoke.cont unwind label %cleanup

invoke.cont:
  
  
  
  
  invoke void @f()
          to label %invoke.cont2 unwind label %cleanup

cleanup:
  
  
  
  
  %phi.cleanup = phi i32 [ 1, %entry ], [ 2, %invoke.cont ]
  %cp = cleanuppad []
  %b = call i1 @i()
  br i1 %b, label %left, label %right

left:
  
  
  call void @h(i32 %phi.cleanup)
  br label %merge

right:
  
  
  call void @h(i32 %phi.cleanup)
  br label %merge

merge:
  
  
  
  
  cleanupret %cp unwind label %catchpad

invoke.cont2:
  
  
  
  
  invoke void @f()
          to label %exit unwind label %catchpad

catchpad:
  
  
  %phi.catch = phi i32 [ %phi.cleanup, %merge ], [ 3, %invoke.cont2 ]
  %cp2 = catchpad [] to label %catch unwind label %catchend

catch:
  
  
  
  call void @h(i32 %phi.catch)
  catchret %cp2 to label %exit

catchend:
  catchendpad unwind to caller

exit:
  ret void
}


define void @test6() personality i32 (...)* @__CxxFrameHandler3 {
entry:
  
  
  
  
  
  %x = invoke i32 @g()
          to label %loop unwind label %to_caller
  
  
  
  
to_caller:
  %cp1 = cleanuppad []
  cleanupret %cp1 unwind to caller
loop:
  invoke void @f()
          to label %loop unwind label %cleanup
cleanup:
  
  
  
  %cp2 = cleanuppad []
  call void @h(i32 %x)
  cleanupret %cp2 unwind to caller
}


define void @test7() personality i32 (...)* @__CxxFrameHandler3 {
entry:
  
  
  
  
  invoke void @f()
     to label %invoke.cont unwind label %catchpad
invoke.cont:
  
  
  
  
  invoke void @f()
    to label %exit unwind label %catchpad
catchpad:
  
  
  
  %x = phi i32 [ 1, %entry ], [ 2, %invoke.cont ]
  %cp = catchpad [] to label %catch unwind label %catchend
catch:
  %b = call i1 @i()
  br i1 %b, label %left, label %right
left:
  
  
  
  
  catchret %cp to label %join
  
  
  
right:
  
  
  
  
  
  %y = call i32 @g()
  catchret %cp to label %join
  
  
  
catchend:
  catchendpad unwind to caller
join:
  
  
  %phi = phi i32 [ %x, %left ], [ %y, %right ]
  call void @h(i32 %phi)
  br label %exit
exit:
  ret void
}


define void @test8() personality i32 (...)* @__CxxFrameHandler3 { entry:
  invoke void @f()
          to label %done unwind label %cleanup1
  invoke void @f()
          to label %done unwind label %cleanup2

done:
  ret void

cleanup1:
  
  
  
  %cp0 = cleanuppad []
  br label %cleanupexit

cleanup2:
  
  
  
  %cp1 = cleanuppad []
  br label %cleanupexit

cleanupexit:
  call void @f()
  cleanupret %cp0 unwind label %cleanup2
}
