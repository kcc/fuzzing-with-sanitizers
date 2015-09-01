

target datalayout = "e-m:e-i64:64-i128:128-n32:64-S128"















define void @nodep_Read_Write(i32* nocapture %A) {
entry:
  %add.ptr = getelementptr inbounds i32, i32* %A, i64 1
  br label %for.body

for.cond.cleanup:                                 
  ret void

for.body:                                         
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds i32, i32* %A, i64 %indvars.iv
  %0 = load i32, i32* %arrayidx, align 4
  %add = add nsw i32 %0, 1
  %arrayidx2 = getelementptr inbounds i32, i32* %add.ptr, i64 %indvars.iv
  store i32 %add, i32* %arrayidx2, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 3
  %cmp = icmp ult i64 %indvars.iv.next, 1024
  br i1 %cmp, label %for.body, label %for.cond.cleanup
}

















define i32 @nodep_Write_Read(i32* nocapture %A) {
entry:
  br label %for.body

for.cond.cleanup:                                 
  ret i32 %add3

for.body:                                         
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %sum.013 = phi i32 [ 0, %entry ], [ %add3, %for.body ]
  %arrayidx = getelementptr inbounds i32, i32* %A, i64 %indvars.iv
  %0 = trunc i64 %indvars.iv to i32
  store i32 %0, i32* %arrayidx, align 4
  %1 = or i64 %indvars.iv, 3
  %arrayidx2 = getelementptr inbounds i32, i32* %A, i64 %1
  %2 = load i32, i32* %arrayidx2, align 4
  %add3 = add nsw i32 %2, %sum.013
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4
  %cmp = icmp ult i64 %indvars.iv.next, 1024
  br i1 %cmp, label %for.body, label %for.cond.cleanup
}














define void @nodep_Write_Write(i32* nocapture %A) {
entry:
  br label %for.body

for.cond.cleanup:                                 
  ret void

for.body:                                         
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds i32, i32* %A, i64 %indvars.iv
  %0 = trunc i64 %indvars.iv to i32
  store i32 %0, i32* %arrayidx, align 4
  %1 = or i64 %indvars.iv, 1
  %arrayidx3 = getelementptr inbounds i32, i32* %A, i64 %1
  %2 = trunc i64 %1 to i32
  store i32 %2, i32* %arrayidx3, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2
  %cmp = icmp ult i64 %indvars.iv.next, 1024
  br i1 %cmp, label %for.body, label %for.cond.cleanup
}
















define void @unsafe_Read_Write(i32* nocapture %A) {
entry:
  br label %for.body

for.cond.cleanup:                                 
  ret void

for.body:                                         
  %i.010 = phi i32 [ 0, %entry ], [ %add1, %for.body ]
  %idxprom = zext i32 %i.010 to i64
  %arrayidx = getelementptr inbounds i32, i32* %A, i64 %idxprom
  %0 = load i32, i32* %arrayidx, align 4
  %add = add nsw i32 %0, 1
  %add1 = add i32 %i.010, 3
  %idxprom2 = zext i32 %add1 to i64
  %arrayidx3 = getelementptr inbounds i32, i32* %A, i64 %idxprom2
  store i32 %add, i32* %arrayidx3, align 4
  %cmp = icmp ult i32 %add1, 1024
  br i1 %cmp, label %for.body, label %for.cond.cleanup
}



















define i32 @unsafe_Write_Read(i32* nocapture %A) {
entry:
  br label %for.body

for.cond.cleanup:                                 
  ret i32 %add3

for.body:                                         
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %sum.013 = phi i32 [ 0, %entry ], [ %add3, %for.body ]
  %arrayidx = getelementptr inbounds i32, i32* %A, i64 %indvars.iv
  %0 = trunc i64 %indvars.iv to i32
  store i32 %0, i32* %arrayidx, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4
  %arrayidx2 = getelementptr inbounds i32, i32* %A, i64 %indvars.iv.next
  %1 = load i32, i32* %arrayidx2, align 4
  %add3 = add nsw i32 %1, %sum.013
  %cmp = icmp ult i64 %indvars.iv.next, 1024
  br i1 %cmp, label %for.body, label %for.cond.cleanup
}
















define void @unsafe_Write_Write(i32* nocapture %A) {
entry:
  br label %for.body

for.cond.cleanup:                                 
  ret void

for.body:                                         
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds i32, i32* %A, i64 %indvars.iv
  %0 = trunc i64 %indvars.iv to i32
  store i32 %0, i32* %arrayidx, align 4
  %1 = or i64 %indvars.iv, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2
  %arrayidx3 = getelementptr inbounds i32, i32* %A, i64 %indvars.iv.next
  %2 = trunc i64 %1 to i32
  store i32 %2, i32* %arrayidx3, align 4
  %cmp = icmp ult i64 %indvars.iv.next, 1024
  br i1 %cmp, label %for.body, label %for.cond.cleanup
}

















define void @vectorizable_Read_Write(i32* nocapture %A) {
entry:
  %add.ptr = getelementptr inbounds i32, i32* %A, i64 4
  br label %for.body

for.cond.cleanup:                                 
  ret void

for.body:                                         
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds i32, i32* %A, i64 %indvars.iv
  %0 = load i32, i32* %arrayidx, align 4
  %add = add nsw i32 %0, 1
  %arrayidx2 = getelementptr inbounds i32, i32* %add.ptr, i64 %indvars.iv
  store i32 %add, i32* %arrayidx2, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2
  %cmp = icmp ult i64 %indvars.iv.next, 1024
  br i1 %cmp, label %for.body, label %for.cond.cleanup
}




















define i32 @vectorizable_Write_Read(i32* nocapture %A) {
entry:
  %add.ptr = getelementptr inbounds i32, i32* %A, i64 4
  br label %for.body

for.cond.cleanup:                                 
  ret i32 %add

for.body:                                         
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %sum.013 = phi i32 [ 0, %entry ], [ %add, %for.body ]
  %arrayidx = getelementptr inbounds i32, i32* %A, i64 %indvars.iv
  %0 = trunc i64 %indvars.iv to i32
  store i32 %0, i32* %arrayidx, align 4
  %arrayidx2 = getelementptr inbounds i32, i32* %add.ptr, i64 %indvars.iv
  %1 = load i32, i32* %arrayidx2, align 4
  %add = add nsw i32 %1, %sum.013
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2
  %cmp = icmp ult i64 %indvars.iv.next, 1024
  br i1 %cmp, label %for.body, label %for.cond.cleanup
}

















define void @vectorizable_Write_Write(i32* nocapture %A) {
entry:
  %add.ptr = getelementptr inbounds i32, i32* %A, i64 4
  br label %for.body

for.cond.cleanup:                                 
  ret void

for.body:                                         
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds i32, i32* %A, i64 %indvars.iv
  %0 = trunc i64 %indvars.iv to i32
  store i32 %0, i32* %arrayidx, align 4
  %1 = or i64 %indvars.iv, 1
  %arrayidx2 = getelementptr inbounds i32, i32* %add.ptr, i64 %indvars.iv
  %2 = trunc i64 %1 to i32
  store i32 %2, i32* %arrayidx2, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2
  %cmp = icmp ult i64 %indvars.iv.next, 1024
  br i1 %cmp, label %for.body, label %for.cond.cleanup
}


















define void @vectorizable_unscaled_Read_Write(i32* nocapture %A) {
entry:
  %0 = bitcast i32* %A to i8*
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 14
  %1 = bitcast i8* %add.ptr to i32*
  br label %for.body

for.cond.cleanup:                                 
  ret void

for.body:                                         
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds i32, i32* %A, i64 %indvars.iv
  %2 = load i32, i32* %arrayidx, align 4
  %add = add nsw i32 %2, 1
  %arrayidx2 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv
  store i32 %add, i32* %arrayidx2, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2
  %cmp = icmp ult i64 %indvars.iv.next, 1024
  br i1 %cmp, label %for.body, label %for.cond.cleanup
}




















define i32 @vectorizable_unscaled_Write_Read(i32* nocapture %A) {
entry:
  %0 = bitcast i32* %A to i8*
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 17
  %1 = bitcast i8* %add.ptr to i32*
  br label %for.body

for.cond.cleanup:                                 
  ret i32 %add

for.body:                                         
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %sum.013 = phi i32 [ 0, %entry ], [ %add, %for.body ]
  %arrayidx = getelementptr inbounds i32, i32* %A, i64 %indvars.iv
  %2 = trunc i64 %indvars.iv to i32
  store i32 %2, i32* %arrayidx, align 4
  %arrayidx2 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv
  %3 = load i32, i32* %arrayidx2, align 4
  %add = add nsw i32 %3, %sum.013
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2
  %cmp = icmp ult i64 %indvars.iv.next, 1024
  br i1 %cmp, label %for.body, label %for.cond.cleanup
}















define void @unsafe_unscaled_Read_Write(i32* nocapture %A) {
entry:
  %0 = bitcast i32* %A to i8*
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 11
  %1 = bitcast i8* %add.ptr to i32*
  br label %for.body

for.cond.cleanup:                                 
  ret void

for.body:                                         
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds i32, i32* %A, i64 %indvars.iv
  %2 = load i32, i32* %arrayidx, align 4
  %add = add nsw i32 %2, 1
  %arrayidx2 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv
  store i32 %add, i32* %arrayidx2, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2
  %cmp = icmp ult i64 %indvars.iv.next, 1024
  br i1 %cmp, label %for.body, label %for.cond.cleanup
}















define void @unsafe_unscaled_Read_Write2(i32* nocapture %A) {
entry:
  %0 = bitcast i32* %A to i8*
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 1
  %1 = bitcast i8* %add.ptr to i32*
  br label %for.body

for.cond.cleanup:                                 
  ret void

for.body:                                         
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds i32, i32* %A, i64 %indvars.iv
  %2 = load i32, i32* %arrayidx, align 4
  %add = add nsw i32 %2, 1
  %arrayidx2 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv
  store i32 %add, i32* %arrayidx2, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2
  %cmp = icmp ult i64 %indvars.iv.next, 1024
  br i1 %cmp, label %for.body, label %for.cond.cleanup
}


























define void @interleaved_stores(i32* nocapture %A) {
entry:
  %0 = bitcast i32* %A to i8*
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1
  %1 = bitcast i8* %incdec.ptr to i32*
  br label %for.body

for.cond.cleanup:                                 
  ret void

for.body:                                         
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %2 = trunc i64 %indvars.iv to i32
  %arrayidx2 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv
  store i32 %2, i32* %arrayidx2, align 4
  %3 = or i64 %indvars.iv, 1
  %arrayidx5 = getelementptr inbounds i32, i32* %A, i64 %3
  %4 = trunc i64 %3 to i32
  store i32 %4, i32* %arrayidx5, align 4
  %arrayidx9 = getelementptr inbounds i32, i32* %1, i64 %3
  store i32 %4, i32* %arrayidx9, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2
  %cmp = icmp slt i64 %indvars.iv.next, 1024
  br i1 %cmp, label %for.body, label %for.cond.cleanup
}
