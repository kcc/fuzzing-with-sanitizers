

target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"


define i32 @test1(i32* nocapture %a, float* nocapture readonly %b) #0 {
entry:
  br label %for.body

for.body:                                         
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds float, float* %b, i64 %indvars.iv
  %0 = load float, float* %arrayidx, align 4, !tbaa !0
  %conv = fptosi float %0 to i32
  %arrayidx2 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv
  store i32 %conv, i32* %arrayidx2, align 4, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 1600
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          
  ret i32 0





















}


define i32 @test2(i32* nocapture readonly %a, float* nocapture readonly %b, float* nocapture %c) #0 {
entry:
  br label %for.body

for.body:                                         
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds float, float* %b, i64 %indvars.iv
  %0 = load float, float* %arrayidx, align 4, !tbaa !0
  %arrayidx2 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv
  %1 = load i32, i32* %arrayidx2, align 4, !tbaa !4
  %conv = sitofp i32 %1 to float
  %mul = fmul float %0, %conv
  %arrayidx4 = getelementptr inbounds float, float* %c, i64 %indvars.iv
  store float %mul, float* %arrayidx4, align 4, !tbaa !0
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 1600
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          
  ret i32 0
























}

attributes #0 = { nounwind uwtable }

!0 = !{!1, !1, i64 0}
!1 = !{!"float", !2, i64 0}
!2 = !{!"omnipotent char", !3, i64 0}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !2, i64 0}

