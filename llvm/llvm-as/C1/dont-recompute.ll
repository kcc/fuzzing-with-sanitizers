




















declare void @func(i32)


define void @test(i32 %m) nounwind uwtable {
entry:
  br label %for.body

for.body:                                         
  %i.06 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  %a.05 = phi i32 [ 0, %entry ], [ %add, %for.body ]
  %add = add i32 %a.05, %m

  tail call void @func(i32 %add)
  %inc = add nsw i32 %i.06, 1
  %exitcond = icmp eq i32 %inc, 186
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          




  tail call void @func(i32 %add)
  ret void
}


define i32 @test2(i32 %m) nounwind uwtable {
entry:
  br label %for.body

for.body:                                         
  %i.06 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  %a.05 = phi i32 [ 0, %entry ], [ %add, %for.body ]
  %add = add i32 %a.05, %m

  tail call void @func(i32 %add)
  %inc = add nsw i32 %i.06, 1
  %exitcond = icmp eq i32 %inc, 186
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          




  ret i32 %add
}
