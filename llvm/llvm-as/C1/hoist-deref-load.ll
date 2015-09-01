
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"














define void @test1(i32* noalias nocapture %a, i32* noalias nocapture readonly %b, i32* nocapture readonly nonnull dereferenceable(4) %c, i32 %n) #0 {
entry:
  %cmp11 = icmp sgt i32 %n, 0
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i32, i32* %a, i64 %indvars.iv
  %0 = load i32, i32* %arrayidx, align 4
  %cmp1 = icmp sgt i32 %0, 0
  br i1 %cmp1, label %if.then, label %for.inc

if.then:                                          
  %1 = load i32, i32* %c, align 4
  %arrayidx3 = getelementptr inbounds i32, i32* %b, i64 %indvars.iv
  %2 = load i32, i32* %arrayidx3, align 4
  %mul = mul nsw i32 %2, %1
  store i32 %mul, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          
  ret void
}








define void @test2(i32* noalias nocapture %a, i32* noalias nocapture readonly %b, i32* nocapture readonly nonnull %c, i32 %n) #0 {
entry:
  %cmp11 = icmp sgt i32 %n, 0
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i32, i32* %a, i64 %indvars.iv
  %0 = load i32, i32* %arrayidx, align 4
  %cmp1 = icmp sgt i32 %0, 0
  br i1 %cmp1, label %if.then, label %for.inc

if.then:                                          
  %1 = load i32, i32* %c, align 4
  %arrayidx3 = getelementptr inbounds i32, i32* %b, i64 %indvars.iv
  %2 = load i32, i32* %arrayidx3, align 4
  %mul = mul nsw i32 %2, %1
  store i32 %mul, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          
  ret void
}














define void @test3(i32* noalias nocapture %a, i32* noalias nocapture readonly %b, i32* nocapture readonly dereferenceable(12) %c, i32 %n) #0 {
entry:
  %cmp11 = icmp sgt i32 %n, 0
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i32, i32* %a, i64 %indvars.iv
  %0 = load i32, i32* %arrayidx, align 4
  %cmp1 = icmp sgt i32 %0, 0
  br i1 %cmp1, label %if.then, label %for.inc

if.then:                                          
  %c2 = getelementptr inbounds i32, i32* %c, i64 2
  %1 = load i32, i32* %c2, align 4
  %arrayidx3 = getelementptr inbounds i32, i32* %b, i64 %indvars.iv
  %2 = load i32, i32* %arrayidx3, align 4
  %mul = mul nsw i32 %2, %1
  store i32 %mul, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          
  ret void
}








define void @test4(i32* noalias nocapture %a, i32* noalias nocapture readonly %b, i32* nocapture readonly dereferenceable(11) %c, i32 %n) #0 {
entry:
  %cmp11 = icmp sgt i32 %n, 0
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i32, i32* %a, i64 %indvars.iv
  %0 = load i32, i32* %arrayidx, align 4
  %cmp1 = icmp sgt i32 %0, 0
  br i1 %cmp1, label %if.then, label %for.inc

if.then:                                          
  %c2 = getelementptr inbounds i32, i32* %c, i64 2
  %1 = load i32, i32* %c2, align 4
  %arrayidx3 = getelementptr inbounds i32, i32* %b, i64 %indvars.iv
  %2 = load i32, i32* %arrayidx3, align 4
  %mul = mul nsw i32 %2, %1
  store i32 %mul, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          
  ret void
}
















define void @test5(i32* noalias %a, i32* %b, i32* dereferenceable_or_null(4) %c, i32 %n) #0 {
entry:
  %not_null = icmp ne i32* %c, null
  br i1 %not_null, label %not.null, label %for.end

not.null:
  %cmp11 = icmp sgt i32 %n, 0
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %not.null ]
  %arrayidx = getelementptr inbounds i32, i32* %a, i64 %indvars.iv
  %0 = load i32, i32* %arrayidx, align 4
  %cmp1 = icmp sgt i32 %0, 0
  br i1 %cmp1, label %if.then, label %for.inc

if.then:                                          
  %1 = load i32, i32* %c, align 4
  %arrayidx3 = getelementptr inbounds i32, i32* %b, i64 %indvars.iv
  %2 = load i32, i32* %arrayidx3, align 4
  %mul = mul nsw i32 %2, %1
  store i32 %mul, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          
  ret void
}











define i1 @test6(i32* noalias %a, i32* %b, i32* dereferenceable_or_null(4) %c, i32 %n) #0 {
entry:
  %not_null = icmp ne i32* %c, null
  %cmp11 = icmp sgt i32 %n, 0
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i32, i32* %a, i64 %indvars.iv
  %0 = load i32, i32* %arrayidx, align 4
  %cmp1 = icmp sgt i32 %0, 0
  br i1 %cmp1, label %if.then, label %for.inc

if.then:                                          
  %1 = load i32, i32* %c, align 4
  %arrayidx3 = getelementptr inbounds i32, i32* %b, i64 %indvars.iv
  %2 = load i32, i32* %arrayidx3, align 4
  %mul = mul nsw i32 %2, %1
  store i32 %mul, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          
  ret i1 %not_null
}















define void @test7(i32* noalias %a, i32* %b, i32** %cptr, i32 %n) #0 {
entry:
  %c = load i32*, i32** %cptr, !dereferenceable !0
  %cmp11 = icmp sgt i32 %n, 0
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i32, i32* %a, i64 %indvars.iv
  %0 = load i32, i32* %arrayidx, align 4
  %cmp1 = icmp sgt i32 %0, 0
  br i1 %cmp1, label %if.then, label %for.inc

if.then:                                          
  %1 = load i32, i32* %c, align 4
  %arrayidx3 = getelementptr inbounds i32, i32* %b, i64 %indvars.iv
  %2 = load i32, i32* %arrayidx3, align 4
  %mul = mul nsw i32 %2, %1
  store i32 %mul, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          
  ret void
}

















define void @test8(i32* noalias %a, i32* %b, i32** %cptr, i32 %n) #0 {
entry:
  %c = load i32*, i32** %cptr, !dereferenceable_or_null !0
  %not_null = icmp ne i32* %c, null
  br i1 %not_null, label %not.null, label %for.end

not.null:
  %cmp11 = icmp sgt i32 %n, 0
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %not.null ]
  %arrayidx = getelementptr inbounds i32, i32* %a, i64 %indvars.iv
  %0 = load i32, i32* %arrayidx, align 4
  %cmp1 = icmp sgt i32 %0, 0
  br i1 %cmp1, label %if.then, label %for.inc

if.then:                                          
  %1 = load i32, i32* %c, align 4
  %arrayidx3 = getelementptr inbounds i32, i32* %b, i64 %indvars.iv
  %2 = load i32, i32* %arrayidx3, align 4
  %mul = mul nsw i32 %2, %1
  store i32 %mul, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          
  ret void
}








define void @test9(i32* noalias %a, i32* %b, i32** %cptr, i32 %n) #0 {
entry:
  %c = load i32*, i32** %cptr, !dereferenceable_or_null !0
  %cmp11 = icmp sgt i32 %n, 0
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i32, i32* %a, i64 %indvars.iv
  %0 = load i32, i32* %arrayidx, align 4
  %cmp1 = icmp sgt i32 %0, 0
  br i1 %cmp1, label %if.then, label %for.inc

if.then:                                          
  %1 = load i32, i32* %c, align 4
  %arrayidx3 = getelementptr inbounds i32, i32* %b, i64 %indvars.iv
  %2 = load i32, i32* %arrayidx3, align 4
  %mul = mul nsw i32 %2, %1
  store i32 %mul, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          
  ret void
}

attributes #0 = { nounwind uwtable }
!0 = !{i64 4}
