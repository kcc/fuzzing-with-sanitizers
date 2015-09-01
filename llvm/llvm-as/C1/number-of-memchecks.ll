

target datalayout = "e-m:e-i64:64-i128:128-n32:64-S128"
target triple = "aarch64--linux-gnueabi"














define void @testf(i16* %a,
               i16* %b,
               i16* %c,
               i16* %d,
               i16* %e,
               i16* %f) {
entry:
  br label %for.body

for.body:                                         
  %ind = phi i64 [ 0, %entry ], [ %add, %for.body ]

  %add = add nuw nsw i64 %ind, 1

  %arrayidxA = getelementptr inbounds i16, i16* %a, i64 %ind
  %loadA = load i16, i16* %arrayidxA, align 2

  %arrayidxB = getelementptr inbounds i16, i16* %b, i64 %ind
  %loadB = load i16, i16* %arrayidxB, align 2

  %arrayidxC = getelementptr inbounds i16, i16* %c, i64 %ind
  %loadC = load i16, i16* %arrayidxC, align 2

  %mul = mul i16 %loadB, %loadA
  %mul1 = mul i16 %mul, %loadC

  %arrayidxD = getelementptr inbounds i16, i16* %d, i64 %ind
  store i16 %mul1, i16* %arrayidxD, align 2

  %arrayidxE = getelementptr inbounds i16, i16* %e, i64 %ind
  store i16 %mul, i16* %arrayidxE, align 2

  %arrayidxF = getelementptr inbounds i16, i16* %f, i64 %ind
  store i16 %mul1, i16* %arrayidxF, align 2

  %exitcond = icmp eq i64 %add, 20
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          
  ret void
}

















































define void @testg(i16* %a,
               i16* %b,
               i16* %c) {
entry:
  br label %for.body

for.body:                                         
  %ind = phi i64 [ 0, %entry ], [ %add, %for.body ]
  %store_ind = phi i64 [ 0, %entry ], [ %store_ind_next, %for.body ]

  %add = add nuw nsw i64 %ind, 1
  %store_ind_inc = add nuw nsw i64 %store_ind, 1
  %store_ind_next = add nuw nsw i64 %store_ind_inc, 1

  %arrayidxA = getelementptr inbounds i16, i16* %a, i64 %ind
  %loadA = load i16, i16* %arrayidxA, align 2

  %arrayidxA1 = getelementptr inbounds i16, i16* %a, i64 %add
  %loadA1 = load i16, i16* %arrayidxA1, align 2

  %arrayidxB = getelementptr inbounds i16, i16* %b, i64 %ind
  %loadB = load i16, i16* %arrayidxB, align 2

  %mul = mul i16 %loadA, %loadA1
  %mul1 = mul i16 %mul, %loadB

  %arrayidxC = getelementptr inbounds i16, i16* %c, i64 %store_ind
  store i16 %mul1, i16* %arrayidxC, align 2

  %arrayidxC1 = getelementptr inbounds i16, i16* %c, i64 %store_ind_inc
  store i16 %mul, i16* %arrayidxC1, align 2

  %exitcond = icmp eq i64 %add, 20
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          
  ret void
}


































define void @testh(i16* %a,
               i16* %b,
               i16* %c) {
entry:
  br label %for.body

for.body:                                         
  %ind = phi i64 [ 0, %entry ], [ %add, %for.body ]
  %store_ind = phi i64 [ 0, %entry ], [ %store_ind_next, %for.body ]

  %add = add nuw nsw i64 %ind, 1
  %store_ind_inc = add nuw nsw i64 %store_ind, 1
  %store_ind_next = add nuw nsw i64 %store_ind_inc, 1

  %arrayidxA = getelementptr i16, i16* %a, i64 %ind
  %loadA = load i16, i16* %arrayidxA, align 2

  %arrayidxA1 = getelementptr i16, i16* %a, i64 %add
  %loadA1 = load i16, i16* %arrayidxA1, align 2

  %arrayidxB = getelementptr i16, i16* %b, i64 %ind
  %loadB = load i16, i16* %arrayidxB, align 2

  %mul = mul i16 %loadA, %loadA1
  %mul1 = mul i16 %mul, %loadB

  %arrayidxC = getelementptr inbounds i16, i16* %c, i64 %store_ind
  store i16 %mul1, i16* %arrayidxC, align 2

  %arrayidxC1 = getelementptr inbounds i16, i16* %c, i64 %store_ind_inc
  store i16 %mul, i16* %arrayidxC1, align 2

  %exitcond = icmp eq i64 %add, 20
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          
  ret void
}







































define void @testi(i16* %a,
                   i64 %offset) {
entry:
  br label %for.body

for.body:                                         
  %ind = phi i64 [ 0, %entry ], [ %add, %for.body ]
  %store_ind = phi i64 [ %offset, %entry ], [ %store_ind_inc, %for.body ]

  %add = add nuw nsw i64 %ind, 1
  %store_ind_inc = add nuw nsw i64 %store_ind, 1

  %arrayidxA1 = getelementptr i16, i16* %a, i64 %ind
  %ind2 = add nuw nsw i64 %ind, 10000
  %arrayidxA2 = getelementptr i16, i16* %a, i64 %ind2

  %loadA1 = load i16, i16* %arrayidxA1, align 2
  %loadA2 = load i16, i16* %arrayidxA2, align 2

  %addres = add i16 %loadA1, %loadA2

  %storeidx = getelementptr inbounds i16, i16* %a, i64 %store_ind
  store i16 %addres, i16* %storeidx, align 2

  %exitcond = icmp eq i64 %add, 5000
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          
  ret void
}
