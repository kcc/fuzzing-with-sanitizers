


target datalayout = "e-m:e-i64:64-i128:128-n32:64-S128"
target triple = "aarch64--linux-gnueabi"























define i32 @ind_plus2(i32* %A) {
entry:
  br label %for.body

for.body:                                         
  %A.addr = phi i32* [ %A, %entry ], [ %inc.ptr, %for.body ]
  %i = phi i32 [ 0, %entry ], [ %add1, %for.body ]
  %sum = phi i32 [ 0, %entry ], [ %add, %for.body ]
  %inc.ptr = getelementptr inbounds i32, i32* %A.addr, i64 1
  %0 = load i32, i32* %A.addr, align 4
  %mul = mul nsw i32 %0, %i
  %add = add nsw i32 %mul, %sum
  %add1 = add nsw i32 %i, 2
  %cmp = icmp slt i32 %add1, 1024
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          
  %add.lcssa = phi i32 [ %add, %for.body ]
  ret i32 %add.lcssa
}
























define i32 @ind_minus2(i32* %A) {
entry:
  br label %for.body

for.body:                                         
  %A.addr = phi i32* [ %A, %entry ], [ %inc.ptr, %for.body ]
  %i = phi i32 [ 1024, %entry ], [ %sub, %for.body ]
  %sum = phi i32 [ 0, %entry ], [ %add, %for.body ]
  %inc.ptr = getelementptr inbounds i32, i32* %A.addr, i64 1
  %0 = load i32, i32* %A.addr, align 4
  %mul = mul nsw i32 %0, %i
  %add = add nsw i32 %mul, %sum
  %sub = add nsw i32 %i, -2
  %cmp = icmp sgt i32 %i, 2
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          
  %add.lcssa = phi i32 [ %add, %for.body ]
  ret i32 %add.lcssa
}

































define i32 @ptr_ind_plus2(i32* %A) {
entry:
  br label %for.body

for.body:                                         
  %A.addr = phi i32* [ %A, %entry ], [ %inc.ptr1, %for.body ]
  %sum = phi i32 [ 0, %entry ], [ %add, %for.body ]
  %i = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  %inc.ptr = getelementptr inbounds i32, i32* %A.addr, i64 1
  %0 = load i32, i32* %A.addr, align 4
  %inc.ptr1 = getelementptr inbounds i32, i32* %A.addr, i64 2
  %1 = load i32, i32* %inc.ptr, align 4
  %mul = mul nsw i32 %1, %0
  %add = add nsw i32 %mul, %sum
  %inc = add nsw i32 %i, 1
  %exitcond = icmp eq i32 %inc, 1024
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          
  %add.lcssa = phi i32 [ %add, %for.body ]
  ret i32 %add.lcssa
}
