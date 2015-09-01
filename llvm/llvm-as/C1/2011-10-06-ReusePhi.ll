




target triple = "x86-apple-darwin"


target datalayout = "n8:16:32:64"



















define float @test(float* nocapture %A, float* nocapture %B, i32 %N, i32 %IA, i32 %IB) nounwind uwtable readonly ssp {
entry:
  %cmp1 = icmp sgt i32 %N, 0
  br i1 %cmp1, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 
  %idx.ext = sext i32 %IA to i64
  %idx.ext2 = sext i32 %IB to i64
  br label %while.body

while.body:                                       
  %A.addr.05 = phi float* [ %A, %while.body.lr.ph ], [ %add.ptr, %while.body ]
  %B.addr.04 = phi float* [ %B, %while.body.lr.ph ], [ %add.ptr3, %while.body ]
  %N.addr.03 = phi i32 [ %N, %while.body.lr.ph ], [ %sub, %while.body ]
  %Sum0.02 = phi float [ 0.000000e+00, %while.body.lr.ph ], [ %add, %while.body ]
  %0 = load float, float* %A.addr.05, align 4
  %1 = load float, float* %B.addr.04, align 4
  %mul = fmul float %0, %1
  %add = fadd float %Sum0.02, %mul
  %add.ptr = getelementptr inbounds float, float* %A.addr.05, i64 %idx.ext
  %add.ptr3 = getelementptr inbounds float, float* %B.addr.04, i64 %idx.ext2
  %sub = add nsw i32 %N.addr.03, -1
  %cmp = icmp sgt i32 %sub, 0
  br i1 %cmp, label %while.body, label %while.end

while.end:                                        
  %Sum0.0.lcssa = phi float [ 0.000000e+00, %entry ], [ %add, %while.body ]
  ret float %Sum0.0.lcssa
}
