



declare i64 @foo()
@g1 = global i16 0

define void @f1(i64 %target) {




  br label %loop
loop:
  %val = call i64 @foo()
  %cond = icmp ule i64 %val, %target
  br i1 %cond, label %loop, label %exit
exit:
  ret void
}

define void @f2(i64 %target) {




  br label %loop
loop:
  %val = call i64 @foo()
  %cond = icmp ult i64 %val, %target
  br i1 %cond, label %loop, label %exit
exit:
  ret void
}

define void @f3(i64 %target) {




  br label %loop
loop:
  %val = call i64 @foo()
  %cond = icmp ugt i64 %val, %target
  br i1 %cond, label %loop, label %exit
exit:
  ret void
}

define void @f4(i64 %target) {




  br label %loop
loop:
  %val = call i64 @foo()
  %cond = icmp uge i64 %val, %target
  br i1 %cond, label %loop, label %exit
exit:
  ret void
}
