

define void @test1(i32 %n) {
entry:
  %s = mul i32 %n, 96
  br label %loop
loop:
  %i = phi i32 [ 0, %entry ], [ %i.next, %loop ]
  %i.next = add i32 %i, 32
  %t = icmp ne i32 %i.next, %s
  br i1 %t, label %loop, label %exit
exit:
  ret void




}


define i32 @test2(i32 %n) {
entry:
  %s = and i32 %n, -32
  br label %loop
loop:
  %i = phi i32 [ 0, %entry ], [ %i.next, %loop ]
  %i.next = add i32 %i, 32
  %t = icmp ne i32 %i.next, %s
  br i1 %t, label %loop, label %exit
exit:
  ret i32 %i




}

define void @test3(i32 %n) {
entry:
  %s = mul i32 %n, 96
  br label %loop
loop:
  %i = phi i32 [ 0, %entry ], [ %i.next, %loop ]
  %i.next = add i32 %i, 96
  %t = icmp ne i32 %i.next, %s
  br i1 %t, label %loop, label %exit
exit:
  ret void




}
