


target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@A = common global [100 x [100 x i32]] zeroinitializer
@B = common global [100 x i32] zeroinitializer
@C = common global [100 x [100 x i32]] zeroinitializer
@D = common global [100 x [100 x [100 x i32]]] zeroinitializer

declare void @foo(...)






define void @interchange_01(i32 %k, i32 %N) {
entry:
  %cmp21 = icmp sgt i32 %N, 0
  br i1 %cmp21, label %for.cond1.preheader.lr.ph, label %for.end12

for.cond1.preheader.lr.ph:
  %cmp219 = icmp sgt i32 %N, 1
  %0 = add i32 %N, -1
  br label %for.cond1.preheader

for.cond1.preheader: 
  %indvars.iv23 = phi i64 [ 0, %for.cond1.preheader.lr.ph ], [ %indvars.iv.next24, %for.inc10 ]
  br i1 %cmp219, label %for.body3, label %for.inc10

for.body3:
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body3 ], [ 1, %for.cond1.preheader ]
  %arrayidx5 = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* @A, i64 0, i64 %indvars.iv, i64 %indvars.iv23
  %1 = load i32, i32* %arrayidx5
  %add = add nsw i32 %1, %k
  store i32 %add, i32* %arrayidx5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %0
  br i1 %exitcond, label %for.inc10, label %for.body3

for.inc10:
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1
  %lftr.wideiv25 = trunc i64 %indvars.iv23 to i32
  %exitcond26 = icmp eq i32 %lftr.wideiv25, %0
  br i1 %exitcond26, label %for.end12, label %for.cond1.preheader

for.end12:
  ret void
}














































define void @interchange_02(i32 %k) {
entry:
  br label %for.cond1.preheader

for.cond1.preheader:
  %indvars.iv19 = phi i64 [ 0, %entry ], [ %indvars.iv.next20, %for.inc10 ]
  br label %for.body3

for.body3:
  %indvars.iv = phi i64 [ 100, %for.cond1.preheader ], [ %indvars.iv.next, %for.body3 ]
  %arrayidx5 = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* @A, i64 0, i64 %indvars.iv, i64 %indvars.iv19
  %0 = load i32, i32* %arrayidx5
  %add = add nsw i32 %0, %k
  store i32 %add, i32* %arrayidx5
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %cmp2 = icmp sgt i64 %indvars.iv, 0
  br i1 %cmp2, label %for.body3, label %for.inc10

for.inc10:
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1
  %exitcond = icmp eq i64 %indvars.iv.next20, 100
  br i1 %exitcond, label %for.end11, label %for.cond1.preheader

for.end11:
  ret void
}





































define void @interchange_03(i32 %k) {
entry:
  br label %for.cond1.preheader

for.cond1.preheader:
  %indvars.iv21 = phi i64 [ 0, %entry ], [ %indvars.iv.next22, %for.inc10 ]
  br label %for.body3

for.body3:
  %indvars.iv = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next, %for.body3 ]
  %arrayidx5 = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* @A, i64 0, i64 %indvars.iv21, i64 %indvars.iv
  %0 = load i32, i32* %arrayidx5
  %add = add nsw i32 %0, %k
  store i32 %add, i32* %arrayidx5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 100
  br i1 %exitcond, label %for.inc10, label %for.body3

for.inc10:
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1
  %exitcond23 = icmp eq i64 %indvars.iv.next22, 100
  br i1 %exitcond23, label %for.end12, label %for.cond1.preheader

for.end12:
  ret void
}


































define void @interchange_04(i32 %k){
entry:
  br label %for.cond1.preheader

for.cond1.preheader:
  %indvars.iv23 = phi i64 [ 0, %entry ], [ %indvars.iv.next24, %for.inc12 ]
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1
  br label %for.body3

for.body3:
  %indvars.iv = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next, %for.body3 ]
  %arrayidx5 = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* @A, i64 0, i64 %indvars.iv.next24, i64 %indvars.iv
  %0 = load i32, i32* %arrayidx5
  %add6 = add nsw i32 %0, %k
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx11 = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* @A, i64 0, i64 %indvars.iv23, i64 %indvars.iv.next
  store i32 %add6, i32* %arrayidx11
  %exitcond = icmp eq i64 %indvars.iv.next, 99
  br i1 %exitcond, label %for.inc12, label %for.body3

for.inc12:
  %exitcond25 = icmp eq i64 %indvars.iv.next24, 99
  br i1 %exitcond25, label %for.end14, label %for.cond1.preheader

for.end14:
  ret void
}


































define void @interchange_05(i32 %k, i32 %N){
entry:
  %cmp30 = icmp sgt i32 %N, 0
  br i1 %cmp30, label %for.body.lr.ph, label %for.end17

for.body.lr.ph:
  %0 = add i32 %N, -1
  %1 = zext i32 %k to i64
  br label %for.body

for.body:
  %indvars.iv32 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next33, %for.inc15 ]
  %2 = add nsw i64 %indvars.iv32, %1
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* @B, i64 0, i64 %indvars.iv32
  %3 = trunc i64 %2 to i32
  store i32 %3, i32* %arrayidx
  br label %for.body3

for.body3:
  %indvars.iv = phi i64 [ 0, %for.body ], [ %indvars.iv.next, %for.body3 ]
  %arrayidx7 = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* @A, i64 0, i64 %indvars.iv32, i64 %indvars.iv
  %4 = load i32, i32* %arrayidx7
  %add10 = add nsw i32 %3, %4
  store i32 %add10, i32* %arrayidx7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %0
  br i1 %exitcond, label %for.inc15, label %for.body3

for.inc15:
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1
  %lftr.wideiv35 = trunc i64 %indvars.iv32 to i32
  %exitcond36 = icmp eq i32 %lftr.wideiv35, %0
  br i1 %exitcond36, label %for.end17, label %for.body

for.end17:
  ret void
}















































define void @interchange_06(i32 %k, i32 %N) {
entry:
  %cmp22 = icmp sgt i32 %N, 0
  br i1 %cmp22, label %for.body.lr.ph, label %for.end12

for.body.lr.ph:
  %0 = add i32 %N, -1
  br label %for.body

for.body:
  %indvars.iv24 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next25, %for.inc10 ]
  tail call void (...) @foo()
  br label %for.body3

for.body3:
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body3 ], [ 2, %for.body ]
  %arrayidx5 = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* @A, i64 0, i64 %indvars.iv24, i64 %indvars.iv
  %1 = load i32, i32* %arrayidx5
  %add = add nsw i32 %1, %k
  store i32 %add, i32* %arrayidx5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %0
  br i1 %exitcond, label %for.inc10, label %for.body3

for.inc10:
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1
  %lftr.wideiv26 = trunc i64 %indvars.iv24 to i32
  %exitcond27 = icmp eq i32 %lftr.wideiv26, %0
  br i1 %exitcond27, label %for.end12, label %for.body

for.end12:
  ret void
}













@gi = common global i32 0
@gj = common global i32 0

define void @interchange_07(i32 %N, i32 %M){
entry:
  store i32 1, i32* @gi
  %cmp21 = icmp sgt i32 %N, 1
  br i1 %cmp21, label %for.cond1.preheader.lr.ph, label %for.end16

for.cond1.preheader.lr.ph: 
  %cmp218 = icmp sgt i32 %M, 1
  %gi.promoted = load i32, i32* @gi
  %0 = add i32 %M, -1
  %1 = sext i32 %gi.promoted to i64
  %2 = sext i32 %N to i64
  %3 = add i32 %gi.promoted, 1
  %4 = icmp slt i32 %3, %N
  %smax = select i1 %4, i32 %N, i32 %3
  br label %for.cond1.preheader

for.cond1.preheader: 
  %indvars.iv25 = phi i64 [ %1, %for.cond1.preheader.lr.ph ], [ %indvars.iv.next26, %for.inc14 ]
  br i1 %cmp218, label %for.body3, label %for.inc14

for.body3: 
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body3 ], [ 1, %for.cond1.preheader ]
  %5 = add nsw i64 %indvars.iv, -1
  %arrayidx5 = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* @A, i64 0, i64 %5, i64 %indvars.iv25
  %6 = load i32, i32* %arrayidx5
  %arrayidx9 = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* @C, i64 0, i64 %indvars.iv, i64 %indvars.iv25
  %7 = load i32, i32* %arrayidx9
  %add = add nsw i32 %7, %6
  %arrayidx13 = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* @A, i64 0, i64 %indvars.iv, i64 %indvars.iv25
  store i32 %add, i32* %arrayidx13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %0
  br i1 %exitcond, label %for.inc14, label %for.body3

for.inc14: 
  %inc.lcssa23 = phi i32 [ 1, %for.cond1.preheader ], [ %M, %for.body3 ]
  %indvars.iv.next26 = add nsw i64 %indvars.iv25, 1
  %cmp = icmp slt i64 %indvars.iv.next26, %2
  br i1 %cmp, label %for.cond1.preheader, label %for.cond.for.end16_crit_edge

for.cond.for.end16_crit_edge: 
  store i32 %inc.lcssa23, i32* @gj
  store i32 %smax, i32* @gi
  br label %for.end16

for.end16:
  ret void
}
















define void @interchange_08(i32 %t){
entry:
  br label %for.cond1.preheader

for.cond1.preheader:                              
  %i.028 = phi i32 [ 0, %entry ], [ %inc16, %for.inc15 ]
  br label %for.cond4.preheader

for.cond4.preheader:                              
  %j.027 = phi i32 [ 0, %for.cond1.preheader ], [ %inc13, %for.inc12 ]
  br label %for.body6

for.body6:                                        
  %k.026 = phi i32 [ 0, %for.cond4.preheader ], [ %inc, %for.body6 ]
  %arrayidx8 = getelementptr inbounds [100 x [100 x [100 x i32]]], [100 x [100 x [100 x i32]]]* @D, i32 0, i32 %i.028, i32 %k.026, i32 %j.027
  %0 = load i32, i32* %arrayidx8
  %add = add nsw i32 %0, %t
  store i32 %add, i32* %arrayidx8
  %inc = add nuw nsw i32 %k.026, 1
  %exitcond = icmp eq i32 %inc, 100
  br i1 %exitcond, label %for.inc12, label %for.body6

for.inc12:                                        
  %inc13 = add nuw nsw i32 %j.027, 1
  %exitcond29 = icmp eq i32 %inc13, 100
  br i1 %exitcond29, label %for.inc15, label %for.cond4.preheader

for.inc15:                                        
  %inc16 = add nuw nsw i32 %i.028, 1
  %exitcond30 = icmp eq i32 %inc16, 100
  br i1 %exitcond30, label %for.end17, label %for.cond1.preheader

for.end17:                                        
  ret void
}







































