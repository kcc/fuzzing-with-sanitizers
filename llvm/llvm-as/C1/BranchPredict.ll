







@j = external global i32

define i32 @foo(i32 %a) nounwind {

entry:
  %tobool = icmp eq i32 %a, 0
  br i1 %tobool, label %if.else, label %if.then, !prof !0

if.then:                                          
  %add = add nsw i32 %a, 10
  %call = tail call i32 bitcast (i32 (...)* @foobar to i32 (i32)*)(i32 %add) nounwind
  br label %return

if.else:                                          
  %call2 = tail call i32 bitcast (i32 (...)* @foobar to i32 (i32)*)(i32 4) nounwind
  br label %return

return:                                           
  %retval.0 = phi i32 [ %call, %if.then ], [ %call2, %if.else ]
  ret i32 %retval.0
}

declare i32 @foobar(...)

define i32 @bar(i32 %a) nounwind {

entry:
  %tobool = icmp eq i32 %a, 0
  br i1 %tobool, label %if.else, label %if.then, !prof !1

if.then:                                          
  %add = add nsw i32 %a, 10
  %call = tail call i32 bitcast (i32 (...)* @foobar to i32 (i32)*)(i32 %add) nounwind
  br label %return

if.else:                                          
  %call2 = tail call i32 bitcast (i32 (...)* @foobar to i32 (i32)*)(i32 4) nounwind
  br label %return

return:                                           
  %retval.0 = phi i32 [ %call, %if.then ], [ %call2, %if.else ]
  ret i32 %retval.0
}

define i32 @foo_bar(i32 %a, i16 signext %b) nounwind {

entry:
  %0 = load i32, i32* @j, align 4
  %tobool = icmp eq i32 %0, 0
  br i1 %tobool, label %if.else, label %if.then, !prof !0

if.then:                                          
  %add = add nsw i32 %a, 10
  %call = tail call i32 bitcast (i32 (...)* @foobar to i32 (i32)*)(i32 %add) nounwind
  br label %return

if.else:                                          
  %add1 = add nsw i32 %a, 4
  %call2 = tail call i32 bitcast (i32 (...)* @foobar to i32 (i32)*)(i32 %add1) nounwind
  br label %return

return:                                           
  %retval.0 = phi i32 [ %call, %if.then ], [ %call2, %if.else ]
  ret i32 %retval.0
}

!0 = !{!"branch_weights", i32 64, i32 4}
!1 = !{!"branch_weights", i32 4, i32 64}
