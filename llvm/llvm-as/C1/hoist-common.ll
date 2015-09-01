
















define zeroext i1 @t(i32 %c) nounwind ssp {
entry:




  %tobool = icmp eq i32 %c, 0
  br i1 %tobool, label %return, label %if.then

if.then:

  %call = tail call zeroext i1 (...) @foo() nounwind
  br label %return

return:

  %retval.0 = phi i1 [ %call, %if.then ], [ false, %entry ]
  ret i1 %retval.0
}

declare zeroext i1 @foo(...)
