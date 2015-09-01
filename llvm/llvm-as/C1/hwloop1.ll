







@a = common global [10 x i32] zeroinitializer, align 4
define i32 @hwloop1() nounwind {
entry:
  br label %for.body
for.body:
  %i.01 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* @a, i32 0, i32 %i.01
  store i32 %i.01, i32* %arrayidx, align 4
  %inc = add nsw i32 %i.01, 1
  %exitcond = icmp eq i32 %inc, 10
  br i1 %exitcond, label %for.end, label %for.body
for.end:
  ret i32 0
}






define i32 @hwloop2(i32 %n, i32* nocapture %b) nounwind {
entry:
  %cmp1 = icmp sgt i32 %n, 0
  br i1 %cmp1, label %for.body.preheader, label %for.end

for.body.preheader:
  br label %for.body

for.body:
  %a.03 = phi i32 [ %add, %for.body ], [ 0, %for.body.preheader ]
  %i.02 = phi i32 [ %inc, %for.body ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr inbounds i32, i32* %b, i32 %i.02
  %0 = load i32, i32* %arrayidx, align 4
  %add = add nsw i32 %0, %a.03
  %inc = add nsw i32 %i.02, 1
  %exitcond = icmp eq i32 %inc, %n
  br i1 %exitcond, label %for.end.loopexit, label %for.body

for.end.loopexit:
  br label %for.end

for.end:
  %a.0.lcssa = phi i32 [ 0, %entry ], [ %add, %for.end.loopexit ]
  ret i32 %a.0.lcssa
}







define i32 @hwloop3(i32 %n, i32* nocapture %b) nounwind {
entry:
  %cmp1 = icmp sgt i32 %n, 0
  br i1 %cmp1, label %for.body.preheader, label %for.end

for.body.preheader:
  br label %for.body

for.body:
  %a.03 = phi i32 [ %add, %for.body ], [ 0, %for.body.preheader ]
  %i.02 = phi i32 [ %inc, %for.body ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr inbounds i32, i32* %b, i32 %i.02
  %0 = load i32, i32* %arrayidx, align 4
  %add = add nsw i32 %0, %a.03
  %inc = add nsw i32 %i.02, 4
  %exitcond = icmp eq i32 %inc, %n
  br i1 %exitcond, label %for.end.loopexit, label %for.body

for.end.loopexit:
  br label %for.end

for.end:
  %a.0.lcssa = phi i32 [ 0, %entry ], [ %add, %for.end.loopexit ]
  ret i32 %a.0.lcssa
}






define i32 @hwloop4(i32 %n, i32* nocapture %b) nounwind {
entry:
  %cmp1 = icmp sgt i32 %n, 0
  br i1 %cmp1, label %for.body.preheader, label %for.end

for.body.preheader:
  br label %for.body

for.body:
  %i.02 = phi i32 [ %inc, %for.body ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr inbounds i32, i32* %b, i32 %i.02
  store i32 %i.02, i32* %arrayidx, align 4
  %inc = add nsw i32 %i.02, 1
  %exitcond = icmp eq i32 %inc, %n
  br i1 %exitcond, label %for.end.loopexit, label %for.body

for.end.loopexit:
  br label %for.end

for.end:
  ret i32 0
}






define void @hwloop5(i32* nocapture %a, i32* nocapture %res) nounwind {
entry:
  br label %for.body

for.body:
  %i.03 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  %arrayidx = getelementptr inbounds i32, i32* %a, i32 %i.03
  %0 = load i32, i32* %arrayidx, align 4
  %mul = mul nsw i32 %0, %0
  %arrayidx2 = getelementptr inbounds i32, i32* %res, i32 %i.03
  store i32 %mul, i32* %arrayidx2, align 4
  %inc = add nsw i32 %i.03, 1
  %exitcond = icmp eq i32 %inc, 100
  br i1 %exitcond, label %for.end, label %for.body

for.end:
  ret void
}







define void @hwloop6(i32* nocapture %a, i32* nocapture %res) nounwind {
entry:
  br label %for.body

for.body:
  %i.02 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  %arrayidx = getelementptr inbounds i32, i32* %a, i32 %i.02
  %0 = load i32, i32* %arrayidx, align 4
  %arrayidx1 = getelementptr inbounds i32, i32* %res, i32 %i.02
  store i32 %0, i32* %arrayidx1, align 4
  %inc = add nsw i32 %i.02, 1
  %exitcond = icmp eq i32 %inc, 1024
  br i1 %exitcond, label %for.end, label %for.body

for.end:
  ret void
}
