



declare i32 @foo()
@g1 = global i16 0

define void @f1(i32 %target) {




  br label %loop
loop:
  %val = call i32 @foo()
  %cond = icmp ule i32 %val, %target
  br i1 %cond, label %loop, label %exit
exit:
  ret void
}

define void @f2(i32 %target) {




  br label %loop
loop:
  %val = call i32 @foo()
  %cond = icmp ult i32 %val, %target
  br i1 %cond, label %loop, label %exit
exit:
  ret void
}

define void @f3(i32 %target) {




  br label %loop
loop:
  %val = call i32 @foo()
  %cond = icmp ugt i32 %val, %target
  br i1 %cond, label %loop, label %exit
exit:
  ret void
}

define void @f4(i32 %target) {




  br label %loop
loop:
  %val = call i32 @foo()
  %cond = icmp uge i32 %val, %target
  br i1 %cond, label %loop, label %exit
exit:
  ret void
}
