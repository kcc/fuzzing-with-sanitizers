



@M = common global i32 0, align 4
@total = common global i32 0, align 4
@g = common global i32 0, align 4


define void @foo() {
entry:
  %0 = load i32, i32* @M, align 4
  %cmp3 = icmp sgt i32 %0, 0
  br i1 %cmp3, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   
  %total.promoted = load i32, i32* @total, align 4
  br label %for.body










for.body:                                         
  %add5 = phi i32 [ %total.promoted, %for.body.lr.ph ], [ %add, %for.body ]
  %i.04 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body ]
  %div = sdiv i32 %i.04, 2
  %add = add nsw i32 %div, %add5
  %inc = add nuw nsw i32 %i.04, 1
  %cmp = icmp slt i32 %inc, %0
  br i1 %cmp, label %for.body, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       
  store i32 %add, i32* @total, align 4
  br label %for.end

for.end:                                          
  ret void
}


define void @goo() {
entry:
  %0 = load i32, i32* @M, align 4
  %cmp3 = icmp sgt i32 %0, 0
  br i1 %cmp3, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   
  %total.promoted = load i32, i32* @total, align 4
  br label %for.body











for.body:                                         
  %add5 = phi i32 [ %total.promoted, %for.body.lr.ph ], [ %add, %for.body ]
  %i.04 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body ]
  %div = sdiv i32 %i.04, 2
  %add = add nsw i32 %div, %add5
  store volatile i32 %add, i32* @g, align 4
  %inc = add nuw nsw i32 %i.04, 1
  %cmp = icmp slt i32 %inc, %0
  br i1 %cmp, label %for.body, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       
  store i32 %add, i32* @total, align 4
  br label %for.end

for.end:                                          
  ret void
}

