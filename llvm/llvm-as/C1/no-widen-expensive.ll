

target triple = "nvptx64-unknown-unknown"








define void @indvar_32_bit(i32 %n, i32* nocapture %output) {

entry:
  %cmp5 = icmp sgt i32 %n, 0
  br i1 %cmp5, label %for.body.preheader, label %for.end

for.body.preheader:                               
  br label %for.body

for.body:                                         
  %i.06 = phi i32 [ 0, %for.body.preheader ], [ %add, %for.body ]

  %mul = mul nsw i32 %i.06, %i.06
  %0 = sext i32 %i.06 to i64
  %arrayidx = getelementptr inbounds i32, i32* %output, i64 %0
  store i32 %mul, i32* %arrayidx, align 4
  %add = add nsw i32 %i.06, 3
  %cmp = icmp slt i32 %add, %n
  br i1 %cmp, label %for.body, label %for.end.loopexit

for.end.loopexit:                                 
  br label %for.end

for.end:                                          
  ret void
}
