

target datalayout = "e-m:o-p:32:32-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "thumbv7s-apple-ios8.0.0"

@debw = external global i8*, align 4











define void @test(i32 %argc, i8** nocapture readonly %argv, i32* %ptr, i32 %val) #0 {
entry:
  %count.i = alloca [256 x i32], align 4
  %cmp284.i = icmp eq i32 %val, 0
  br i1 %cmp284.i, label %for.end31.i, label %for.body21.i

for.body21.i:                                     
  %arrayidx23.i = getelementptr inbounds [256 x i32], [256 x i32]* %count.i, i32 0, i32 1
  %tmp20 = load i32, i32* %arrayidx23.i, align 4, !tbaa !0
  store i32 %tmp20, i32* %ptr, align 4, !tbaa !0
  br label %for.end31.i

for.end31.i:                                      
  %tmp21 = load i8*, i8** @debw, align 4, !tbaa !4
  tail call void @free(i8* %tmp21)
  ret void
}

declare void @free(i8* nocapture)

attributes #0 = { ssp "stack-protector-buffer-size"="8" }

!0 = !{!1, !1, i64 0}
!1 = !{!"int", !2, i64 0}
!2 = !{!"omnipotent char", !3, i64 0}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!5, !5, i64 0}
!5 = !{!"any pointer", !2, i64 0}
