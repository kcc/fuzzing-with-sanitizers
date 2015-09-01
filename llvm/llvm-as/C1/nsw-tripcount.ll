










declare void @f(i32)


define void @test1(i32 %v) {
entry:
  %add = add nsw i32 %v, 1
  br label %for.body

for.body:
  %i.04 = phi i32 [ %v, %entry ], [ %inc, %for.body ]
  tail call void @f(i32 %i.04)
  %inc = add nsw i32 %i.04, 1
  %cmp = icmp slt i32 %i.04, %add
  br i1 %cmp, label %for.body, label %for.end




for.end:
  ret void
}
