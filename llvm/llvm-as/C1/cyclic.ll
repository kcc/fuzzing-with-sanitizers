


define void @test6(i32* %gi) #0 {
entry:
  store i32 42, i32* %gi, align 4, !tbaa !0
  br label %for.cond

for.cond:                                         
  br i1 undef, label %for.body, label %for.end

for.body:                                         
  store i32 undef, i32* %gi, align 4, !tbaa !2
  br label %for.cond

for.end:                                          
  ret void
}

attributes #0 = { nounwind ssp uwtable }

!0 = !{!1, !1, i64 0}
!1 = !{!"Simple C/C++ TBAA"}
!2 = distinct !{!3, !2, i64 0}
!3 = !{!"int", !4}
!4 = !{!"omnipotent ", !1}
