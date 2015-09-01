
target datalayout = "e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"


define void @foo2(float* nocapture %a, float* nocapture %b, float* nocapture readonly %c) #0 {
entry:
  %0 = load float, float* %c, align 4, !noalias !3
  %arrayidx.i = getelementptr inbounds float, float* %a, i64 5
  store float %0, float* %arrayidx.i, align 4, !alias.scope !7, !noalias !8
  %arrayidx1.i = getelementptr inbounds float, float* %b, i64 8
  store float %0, float* %arrayidx1.i, align 4, !alias.scope !8, !noalias !7
  %1 = load float, float* %c, align 4
  %arrayidx = getelementptr inbounds float, float* %a, i64 7
  store float %1, float* %arrayidx, align 4
  ret void
}

define void @foo(float* nocapture %a, float* nocapture %b, float* nocapture readonly %c) #0 {
entry:
  call void @foo2(float* %a, float* %b, float* %c), !noalias !0
  call void @foo2(float* %b, float* %b, float* %a), !alias.scope !0
  ret void
}






















attributes #0 = { nounwind uwtable }

!0 = !{!1}
!1 = distinct !{!1, !2, !"hello: %a"}
!2 = distinct !{!2, !"hello"}
!3 = !{!4, !6}
!4 = distinct !{!4, !5, !"hello2: %a"}
!5 = distinct !{!5, !"hello2"}
!6 = distinct !{!6, !5, !"hello2: %b"}
!7 = !{!4}
!8 = !{!6}



























