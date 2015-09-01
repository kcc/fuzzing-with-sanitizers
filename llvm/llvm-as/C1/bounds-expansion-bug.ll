















target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"

define void @f(i32* %a1, i32* %a2,
               i32* %b,
               i32* %c1, i32* %c2,
               i32* %d,
               i32* %e) {
entry:

  %cond = icmp eq i32* %e, null
  br i1 %cond, label %one, label %two
one:
  br label %join
two:
  br label %join
join:


































  %a = phi i32* [%a1, %one], [%a2, %two]
  %c = phi i32* [%c1, %one], [%c2, %two]
  br label %for.body





for.body:                                         
  %ind = phi i64 [ 0, %join ], [ %add, %for.body ]

  %arrayidxA = getelementptr inbounds i32, i32* %a, i64 %ind
  %loadA = load i32, i32* %arrayidxA, align 4

  %arrayidxB = getelementptr inbounds i32, i32* %b, i64 %ind
  %loadB = load i32, i32* %arrayidxB, align 4

  %mulA = mul i32 %loadB, %loadA

  %add = add nuw nsw i64 %ind, 1
  %arrayidxA_plus_4 = getelementptr inbounds i32, i32* %a, i64 %add
  store i32 %mulA, i32* %arrayidxA_plus_4, align 4

  %arrayidxD = getelementptr inbounds i32, i32* %d, i64 %ind
  %loadD = load i32, i32* %arrayidxD, align 4

  %arrayidxE = getelementptr inbounds i32, i32* %e, i64 %ind
  %loadE = load i32, i32* %arrayidxE, align 4

  %mulC = mul i32 %loadD, %loadE

  %arrayidxC = getelementptr inbounds i32, i32* %c, i64 %ind
  store i32 %mulC, i32* %arrayidxC, align 4

  %exitcond = icmp eq i64 %add, 20
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          
  ret void
}
