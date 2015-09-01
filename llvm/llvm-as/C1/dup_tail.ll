





define i32 @fib(i32 %n) nounwind ssp {
entry:
  %cmp = icmp slt i32 %n, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          
  br label %return

if.end:                                           
  %sub = add nsw i32 %n, -2
  %call = call i32 @fib(i32 %sub)
  %sub3 = add nsw i32 %n, -1
  %call4 = call i32 @fib(i32 %sub3)
  %add = add nsw i32 %call, %call4
  br label %return

return:                                           
  %retval.0 = phi i32 [ 1, %if.then ], [ %add, %if.end ]
  ret i32 %retval.0
}
