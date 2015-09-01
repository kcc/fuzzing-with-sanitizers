

define i32 @foo(i32 %a, i32 %b) {

entry:
  br label %for.body.lr.ph

for.body.lr.ph:                                   
  %cmp0 = icmp sgt i32 %b, 0
  br i1 %cmp0, label %for.body, label %for.cond.cleanup

for.body:                                         
  %inc.i = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %mul.i = phi i32 [ 3, %for.body.lr.ph ], [ %mul.p, %for.inc ]
  %add.i = phi i32 [ %a, %for.body.lr.ph ], [ %add.p, %for.inc ]
  %cmp1 = icmp eq i32 %a, 12345
  br i1 %cmp1, label %if.then, label %if.else, !prof !0


if.then:                                          




  %add = add nsw i32 %add.i, 123
  br label %for.inc

if.else:                                          
  %mul = mul nsw i32 %mul.i, %b
  br label %for.inc





for.inc:                                          
  %mul.p = phi i32 [ %b, %if.then ], [ %mul, %if.else ]
  %add.p = phi i32 [ %add, %if.then ], [ %a, %if.else ]
  %inc = add nuw nsw i32 %inc.i, 1
  %exitcond = icmp eq i32 %inc, %b
  br i1 %exitcond, label %for.cond.cleanup, label %for.body

for.cond.cleanup:                                 
  %t2 = phi i32 [ %b, %for.body.lr.ph ], [ %mul.p, %for.inc ]
  %t1 = phi i32 [ %a, %for.body.lr.ph ], [ %add.p, %for.inc ]
  %add3 = add nsw i32 %t2, %t1
  ret i32 %add3
}

define void @foo_swapped(i32 %a, i32 %b) {

entry:
  br label %for.body




for.body:                                         
  %inc.i = phi i32 [ 0, %entry ], [ %inc, %if.then ]
  %add.i = phi i32 [ 100, %entry ], [ %add, %if.then ]
  %inc = add nuw nsw i32 %inc.i, 1
  %cmp1 = icmp eq i32 1, 2
  br i1 %cmp1, label %if.then, label  %for.cond.cleanup, !prof !0

if.then:                                          
  %add = add nsw i32 %a, %add.i

  %exitcond = icmp eq i32 %inc, %b
  br i1 %exitcond, label %for.cond.cleanup, label %for.body

for.cond.cleanup:                                 
  ret void
}
!0 = !{!"branch_weights", i32 64, i32 4}



