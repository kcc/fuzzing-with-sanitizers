

target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc_linux"


define float* @foo(i32* noalias nocapture readonly %in, float* noalias %out, i32 %size, i32* nocapture readonly %trigger)  {
entry:
  %cmp11 = icmp eq i32 %size, 0
  br i1 %cmp11, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   
  %0 = add i32 %size, -1
  br label %for.body






for.body:                                         
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %arrayidx = getelementptr inbounds i32, i32* %trigger, i64 %indvars.iv
  %1 = load i32, i32* %arrayidx, align 4
  %cmp1 = icmp sgt i32 %1, 0
  br i1 %cmp1, label %if.then, label %if.else


if.then:                                          

  %arrayidx3 = getelementptr inbounds i32, i32* %in, i64 %indvars.iv
  %2 = load i32, i32* %arrayidx3, align 4
  %conv = sitofp i32 %2 to float
  %add = fadd float %conv, 5.000000e-01
  %arrayidx5 = getelementptr inbounds float, float* %out, i64 %indvars.iv
  store float %add, float* %arrayidx5, align 4
  br label %for.inc

if.else:                                          
  %arrayidx7 = getelementptr inbounds float, float* %out, i64 %indvars.iv
  %3 = load float, float* %arrayidx7, align 4
  %div = fdiv float %3, 3.000000e+00
  store float %div, float* %arrayidx7, align 4

  %arrayidx9 = getelementptr inbounds i32, i32* %in, i64 %indvars.iv
  %4 = load i32, i32* %arrayidx9, align 4
  %conv10 = sitofp i32 %4 to float
  %add13 = fadd float %div, %conv10
  store float %add13, float* %arrayidx7, align 4
  br label %for.inc

for.inc:                                          
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp ne i32 %lftr.wideiv, %0
  br i1 %exitcond, label %for.body, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       
  br label %for.end

for.end:                                          
  ret float* %out
}

