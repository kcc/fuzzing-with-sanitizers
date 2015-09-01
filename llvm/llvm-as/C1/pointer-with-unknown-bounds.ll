

target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
















define void @f(i16* %a) {
entry:
  br label %for.body

for.body:                                         
  %ind = phi i64 [ 0, %entry ], [ %add, %for.body ]

  %access_ind = mul i64 %ind, %ind

  %arrayidxA = getelementptr inbounds i16, i16* %a, i64 %access_ind
  %loadA = load i16, i16* %arrayidxA, align 2

  %mul = mul i16 %loadA, 2

  store i16 %mul, i16* %arrayidxA, align 2

  %add = add nuw nsw i64 %ind, 1
  %exitcond = icmp eq i64 %add, 20
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          
  ret void
}
