





define void @f1(i32 *%src, i32 %target) {





  br label %loop
loop:
  %val = load volatile i32 , i32 *%src
  %cond = icmp eq i32 %target, %val
  br i1 %cond, label %loop, label %exit
exit:
  ret void
}

define void @f2(i32 *%src, i32 %target) {





  br label %loop
loop:
  %val = load volatile i32 , i32 *%src
  %cond = icmp ne i32 %target, %val
  br i1 %cond, label %loop, label %exit
exit:
  ret void
}

define void @f3(i32 *%src, i32 %target) {





  br label %loop
loop:
  %val = load volatile i32 , i32 *%src
  %cond = icmp sle i32 %target, %val
  br i1 %cond, label %loop, label %exit
exit:
  ret void
}

define void @f4(i32 *%src, i32 %target) {





  br label %loop
loop:
  %val = load volatile i32 , i32 *%src
  %cond = icmp slt i32 %target, %val
  br i1 %cond, label %loop, label %exit
exit:
  ret void
}

define void @f5(i32 *%src, i32 %target) {





  br label %loop
loop:
  %val = load volatile i32 , i32 *%src
  %cond = icmp sgt i32 %target, %val
  br i1 %cond, label %loop, label %exit
exit:
  ret void
}

define void @f6(i32 *%src, i32 %target) {





  br label %loop
loop:
  %val = load volatile i32 , i32 *%src
  %cond = icmp sge i32 %target, %val
  br i1 %cond, label %loop, label %exit
exit:
  ret void
}
