

declare void @foo(i32)
declare i32 @bar(i32)



define void @test1(i32 %len) {
entry:
  br label %bb

bb:
  %cmp = icmp ult i32 %len, 8
  %cond = select i1 %cmp, i32 %len, i32 8
  call void @foo(i32 %cond)
  %cmp11 = icmp eq i32 %cond, 8
  br i1 %cmp11, label %for.end, label %bb

for.end:
  ret void


}




define void @test2(i32 %len) {
entry:
  %0 = call i32 @bar(i32 %len)
  %cmp = icmp ult i32 %len, 4
  br i1 %cmp, label %bb, label %b1
bb:
  %cond = select i1 %cmp, i32 %len, i32 8
  %cmp11 = icmp eq i32 %cond, 8
  br i1 %cmp11, label %b0, label %b1

b0:
  call void @foo(i32 %len)
  br label %b1

b1:

  %1 = phi i32 [ %cond, %bb ], [ undef, %b0 ], [ %0, %entry ]
  br label %ret

ret:
  call void @foo(i32 %1)
  ret void
}
