





define void @f1(i32 *%dest, i32 %a) {




entry:
  br label %loop

loop:
  %index = phi i64 [ 0, %entry ], [ %next, %loop ]
  %ptr = getelementptr i32, i32 *%dest, i64 %index
  store i32 %a, i32 *%ptr
  %next = add i64 %index, 1
  %cmp = icmp ne i64 %next, 100
  br i1 %cmp, label %loop, label %exit

exit:
  ret void
}


define void @f2(i32 *%src, i32 *%dest) {





entry:
  br label %loop

loop:
  %count = phi i32 [ 0, %entry ], [ %next, %loop.next ]
  %next = add i32 %count, 1
  %val = load volatile i32 , i32 *%src
  %cmp = icmp eq i32 %val, 0
  br i1 %cmp, label %loop.next, label %loop.store

loop.store:
  %add = add i32 %val, 1
  store volatile i32 %add, i32 *%dest
  br label %loop.next

loop.next:
  %cont = icmp ne i32 %next, 100
  br i1 %cont, label %loop, label %exit

exit:
  ret void
}


define void @f3(i64 *%src, i64 *%dest) {





entry:
  br label %loop

loop:
  %count = phi i64 [ 0, %entry ], [ %next, %loop.next ]
  %next = add i64 %count, 1
  %val = load volatile i64 , i64 *%src
  %cmp = icmp eq i64 %val, 0
  br i1 %cmp, label %loop.next, label %loop.store

loop.store:
  %add = add i64 %val, 1
  store volatile i64 %add, i64 *%dest
  br label %loop.next

loop.next:
  %cont = icmp ne i64 %next, 100
  br i1 %cont, label %loop, label %exit

exit:
  ret void
}




define void @f4(i32 *%src, i32 *%dest, i64 *%dest2, i64 %count) {






entry:
  br label %loop

loop:
  %left = phi i64 [ %count, %entry ], [ %next, %loop.next ]
  store volatile i64 %left, i64 *%dest2
  %val = load volatile i32 , i32 *%src
  %cmp = icmp eq i32 %val, 0
  br i1 %cmp, label %loop.next, label %loop.store

loop.store:
  %add = add i32 %val, 1
  store volatile i32 %add, i32 *%dest
  br label %loop.next

loop.next:
  %next = add i64 %left, -1
  %ext = zext i32 %val to i64
  %shl = shl i64 %ext, 32
  %and = and i64 %next, 4294967295
  %or = or i64 %shl, %and
  store volatile i64 %or, i64 *%dest2
  %cont = icmp ne i64 %next, 0
  br i1 %cont, label %loop, label %exit

exit:
  ret void
}
