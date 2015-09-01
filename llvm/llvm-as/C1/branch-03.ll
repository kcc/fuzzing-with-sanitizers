



define void @f1(i32 *%src, i32 %target) {





  br label %loop
loop:
  %val = load volatile i32 , i32 *%src
  %cond = icmp ule i32 %target, %val
  br i1 %cond, label %loop, label %exit
exit:
  ret void
}

define void @f2(i32 *%src, i32 %target) {





  br label %loop
loop:
  %val = load volatile i32 , i32 *%src
  %cond = icmp ult i32 %target, %val
  br i1 %cond, label %loop, label %exit
exit:
  ret void
}

define void @f3(i32 *%src, i32 %target) {





  br label %loop
loop:
  %val = load volatile i32 , i32 *%src
  %cond = icmp ugt i32 %target, %val
  br i1 %cond, label %loop, label %exit
exit:
  ret void
}

define void @f4(i32 *%src, i32 %target) {





  br label %loop
loop:
  %val = load volatile i32 , i32 *%src
  %cond = icmp uge i32 %target, %val
  br i1 %cond, label %loop, label %exit
exit:
  ret void
}
