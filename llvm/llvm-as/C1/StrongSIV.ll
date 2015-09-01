


target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.6.0"






define void @strong0(i32* %A, i32* %B, i64 %n) nounwind uwtable ssp {
entry:
  %cmp1 = icmp sgt i64 %n, 0
  br i1 %cmp1, label %for.body.preheader, label %for.end








for.body.preheader:                               
  br label %for.body

for.body:                                         
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.body ]
  %B.addr.02 = phi i32* [ %incdec.ptr, %for.body ], [ %B, %for.body.preheader ]
  %0 = add nsw i64 %indvars.iv, 2
  %arrayidx = getelementptr inbounds i32, i32* %A, i64 %0
  %1 = trunc i64 %indvars.iv to i32
  store i32 %1, i32* %arrayidx, align 4
  %arrayidx3 = getelementptr inbounds i32, i32* %A, i64 %indvars.iv
  %2 = load i32, i32* %arrayidx3, align 4
  %incdec.ptr = getelementptr inbounds i32, i32* %B.addr.02, i64 1
  store i32 %2, i32* %B.addr.02, align 4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %exitcond = icmp ne i64 %indvars.iv.next, %n
  br i1 %exitcond, label %for.body, label %for.end.loopexit

for.end.loopexit:                                 
  br label %for.end

for.end:                                          
  ret void
}






define void @strong1(i32* %A, i32* %B, i32 %n) nounwind uwtable ssp {
entry:
  %cmp1 = icmp sgt i32 %n, 0
  br i1 %cmp1, label %for.body.preheader, label %for.end








for.body.preheader:                               
  %0 = sext i32 %n to i64
  br label %for.body

for.body:                                         
  %i.03 = phi i64 [ %inc, %for.body ], [ 0, %for.body.preheader ]
  %B.addr.02 = phi i32* [ %incdec.ptr, %for.body ], [ %B, %for.body.preheader ]
  %conv2 = trunc i64 %i.03 to i32
  %add = add nsw i64 %i.03, 2
  %arrayidx = getelementptr inbounds i32, i32* %A, i64 %add
  store i32 %conv2, i32* %arrayidx, align 4
  %arrayidx3 = getelementptr inbounds i32, i32* %A, i64 %i.03
  %1 = load i32, i32* %arrayidx3, align 4
  %incdec.ptr = getelementptr inbounds i32, i32* %B.addr.02, i64 1
  store i32 %1, i32* %B.addr.02, align 4
  %inc = add nsw i64 %i.03, 1
  %exitcond = icmp ne i64 %inc, %0
  br i1 %exitcond, label %for.body, label %for.end.loopexit

for.end.loopexit:                                 
  br label %for.end

for.end:                                          
  ret void
}






define void @strong2(i32* %A, i32* %B, i64 %n) nounwind uwtable ssp {
entry:
  %cmp1 = icmp eq i64 %n, 0
  br i1 %cmp1, label %for.end, label %for.body.preheader








for.body.preheader:                               
  br label %for.body

for.body:                                         
  %i.03 = phi i64 [ %inc, %for.body ], [ 0, %for.body.preheader ]
  %B.addr.02 = phi i32* [ %incdec.ptr, %for.body ], [ %B, %for.body.preheader ]
  %conv = trunc i64 %i.03 to i32
  %add = add i64 %i.03, 2
  %arrayidx = getelementptr inbounds i32, i32* %A, i64 %add
  store i32 %conv, i32* %arrayidx, align 4
  %arrayidx1 = getelementptr inbounds i32, i32* %A, i64 %i.03
  %0 = load i32, i32* %arrayidx1, align 4
  %incdec.ptr = getelementptr inbounds i32, i32* %B.addr.02, i64 1
  store i32 %0, i32* %B.addr.02, align 4
  %inc = add i64 %i.03, 1
  %exitcond = icmp ne i64 %inc, %n
  br i1 %exitcond, label %for.body, label %for.end.loopexit

for.end.loopexit:                                 
  br label %for.end

for.end:                                          
  ret void
}






define void @strong3(i32* %A, i32* %B, i32 %n) nounwind uwtable ssp {
entry:
  %cmp1 = icmp sgt i32 %n, 0
  br i1 %cmp1, label %for.body.preheader, label %for.end








for.body.preheader:                               
  br label %for.body

for.body:                                         
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.body ]
  %B.addr.02 = phi i32* [ %incdec.ptr, %for.body ], [ %B, %for.body.preheader ]
  %0 = add nsw i64 %indvars.iv, 2
  %arrayidx = getelementptr inbounds i32, i32* %A, i64 %0
  %1 = trunc i64 %indvars.iv to i32
  store i32 %1, i32* %arrayidx, align 4
  %arrayidx2 = getelementptr inbounds i32, i32* %A, i64 %indvars.iv
  %2 = load i32, i32* %arrayidx2, align 4
  %incdec.ptr = getelementptr inbounds i32, i32* %B.addr.02, i64 1
  store i32 %2, i32* %B.addr.02, align 4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp ne i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.body, label %for.end.loopexit

for.end.loopexit:                                 
  br label %for.end

for.end:                                          
  ret void
}






define void @strong4(i32* %A, i32* %B, i64 %n) nounwind uwtable ssp {
entry:
  br label %for.body








for.body:                                         
  %i.02 = phi i64 [ 0, %entry ], [ %inc, %for.body ]
  %B.addr.01 = phi i32* [ %B, %entry ], [ %incdec.ptr, %for.body ]
  %conv = trunc i64 %i.02 to i32
  %add = add i64 %i.02, 19
  %arrayidx = getelementptr inbounds i32, i32* %A, i64 %add
  store i32 %conv, i32* %arrayidx, align 4
  %arrayidx1 = getelementptr inbounds i32, i32* %A, i64 %i.02
  %0 = load i32, i32* %arrayidx1, align 4
  %incdec.ptr = getelementptr inbounds i32, i32* %B.addr.01, i64 1
  store i32 %0, i32* %B.addr.01, align 4
  %inc = add i64 %i.02, 1
  %exitcond = icmp ne i64 %inc, 19
  br i1 %exitcond, label %for.body, label %for.end

for.end:                                          
  ret void
}






define void @strong5(i32* %A, i32* %B, i64 %n) nounwind uwtable ssp {
entry:
  br label %for.body








for.body:                                         
  %i.02 = phi i64 [ 0, %entry ], [ %inc, %for.body ]
  %B.addr.01 = phi i32* [ %B, %entry ], [ %incdec.ptr, %for.body ]
  %conv = trunc i64 %i.02 to i32
  %add = add i64 %i.02, 19
  %arrayidx = getelementptr inbounds i32, i32* %A, i64 %add
  store i32 %conv, i32* %arrayidx, align 4
  %arrayidx1 = getelementptr inbounds i32, i32* %A, i64 %i.02
  %0 = load i32, i32* %arrayidx1, align 4
  %incdec.ptr = getelementptr inbounds i32, i32* %B.addr.01, i64 1
  store i32 %0, i32* %B.addr.01, align 4
  %inc = add i64 %i.02, 1
  %exitcond = icmp ne i64 %inc, 20
  br i1 %exitcond, label %for.body, label %for.end

for.end:                                          
  ret void
}






define void @strong6(i32* %A, i32* %B, i64 %n) nounwind uwtable ssp {
entry:
  br label %for.body








for.body:                                         
  %i.02 = phi i64 [ 0, %entry ], [ %inc, %for.body ]
  %B.addr.01 = phi i32* [ %B, %entry ], [ %incdec.ptr, %for.body ]
  %conv = trunc i64 %i.02 to i32
  %mul = shl i64 %i.02, 1
  %add = add i64 %mul, 6
  %arrayidx = getelementptr inbounds i32, i32* %A, i64 %add
  store i32 %conv, i32* %arrayidx, align 4
  %mul1 = shl i64 %i.02, 1
  %arrayidx2 = getelementptr inbounds i32, i32* %A, i64 %mul1
  %0 = load i32, i32* %arrayidx2, align 4
  %incdec.ptr = getelementptr inbounds i32, i32* %B.addr.01, i64 1
  store i32 %0, i32* %B.addr.01, align 4
  %inc = add i64 %i.02, 1
  %exitcond = icmp ne i64 %inc, 20
  br i1 %exitcond, label %for.body, label %for.end

for.end:                                          
  ret void
}






define void @strong7(i32* %A, i32* %B, i64 %n) nounwind uwtable ssp {
entry:
  br label %for.body








for.body:                                         
  %i.02 = phi i64 [ 0, %entry ], [ %inc, %for.body ]
  %B.addr.01 = phi i32* [ %B, %entry ], [ %incdec.ptr, %for.body ]
  %conv = trunc i64 %i.02 to i32
  %mul = shl i64 %i.02, 1
  %add = add i64 %mul, 7
  %arrayidx = getelementptr inbounds i32, i32* %A, i64 %add
  store i32 %conv, i32* %arrayidx, align 4
  %mul1 = shl i64 %i.02, 1
  %arrayidx2 = getelementptr inbounds i32, i32* %A, i64 %mul1
  %0 = load i32, i32* %arrayidx2, align 4
  %incdec.ptr = getelementptr inbounds i32, i32* %B.addr.01, i64 1
  store i32 %0, i32* %B.addr.01, align 4
  %inc = add i64 %i.02, 1
  %exitcond = icmp ne i64 %inc, 20
  br i1 %exitcond, label %for.body, label %for.end

for.end:                                          
  ret void
}






define void @strong8(i32* %A, i32* %B, i64 %n) nounwind uwtable ssp {
entry:
  br label %for.body








for.body:                                         
  %i.02 = phi i64 [ 0, %entry ], [ %inc, %for.body ]
  %B.addr.01 = phi i32* [ %B, %entry ], [ %incdec.ptr, %for.body ]
  %conv = trunc i64 %i.02 to i32
  %add = add i64 %i.02, %n
  %arrayidx = getelementptr inbounds i32, i32* %A, i64 %add
  store i32 %conv, i32* %arrayidx, align 4
  %arrayidx1 = getelementptr inbounds i32, i32* %A, i64 %i.02
  %0 = load i32, i32* %arrayidx1, align 4
  %incdec.ptr = getelementptr inbounds i32, i32* %B.addr.01, i64 1
  store i32 %0, i32* %B.addr.01, align 4
  %inc = add i64 %i.02, 1
  %exitcond = icmp ne i64 %inc, 20
  br i1 %exitcond, label %for.body, label %for.end

for.end:                                          
  ret void
}






define void @strong9(i32* %A, i32* %B, i64 %n) nounwind uwtable ssp {
entry:
  %cmp1 = icmp eq i64 %n, 0
  br i1 %cmp1, label %for.end, label %for.body.preheader








for.body.preheader:                               
  br label %for.body

for.body:                                         
  %i.03 = phi i64 [ %inc, %for.body ], [ 0, %for.body.preheader ]
  %B.addr.02 = phi i32* [ %incdec.ptr, %for.body ], [ %B, %for.body.preheader ]
  %conv = trunc i64 %i.03 to i32
  %add = add i64 %i.03, %n
  %arrayidx = getelementptr inbounds i32, i32* %A, i64 %add
  store i32 %conv, i32* %arrayidx, align 4
  %mul = shl i64 %n, 1
  %add1 = add i64 %i.03, %mul
  %arrayidx2 = getelementptr inbounds i32, i32* %A, i64 %add1
  %0 = load i32, i32* %arrayidx2, align 4
  %incdec.ptr = getelementptr inbounds i32, i32* %B.addr.02, i64 1
  store i32 %0, i32* %B.addr.02, align 4
  %inc = add i64 %i.03, 1
  %exitcond = icmp ne i64 %inc, %n
  br i1 %exitcond, label %for.body, label %for.end.loopexit

for.end.loopexit:                                 
  br label %for.end

for.end:                                          
  ret void
}






define void @strong10(i32* %A, i32* %B, i64 %n) nounwind uwtable ssp {
entry:
  br label %for.body








for.body:                                         
  %i.02 = phi i64 [ 0, %entry ], [ %inc, %for.body ]
  %B.addr.01 = phi i32* [ %B, %entry ], [ %incdec.ptr, %for.body ]
  %conv = trunc i64 %i.02 to i32
  %mul = mul i64 %i.02, %n
  %add = add i64 %mul, 5
  %arrayidx = getelementptr inbounds i32, i32* %A, i64 %add
  store i32 %conv, i32* %arrayidx, align 4
  %mul1 = mul i64 %i.02, %n
  %add2 = add i64 %mul1, 5
  %arrayidx3 = getelementptr inbounds i32, i32* %A, i64 %add2
  %0 = load i32, i32* %arrayidx3, align 4
  %incdec.ptr = getelementptr inbounds i32, i32* %B.addr.01, i64 1
  store i32 %0, i32* %B.addr.01, align 4
  %inc = add i64 %i.02, 1
  %exitcond = icmp ne i64 %inc, 1000
  br i1 %exitcond, label %for.body, label %for.end

for.end:                                          
  ret void
}
