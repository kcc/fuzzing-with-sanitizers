

target datalayout = "e-p:64:64:64"






define void @test(i16 *%P, i16* %Q) nounwind {
entry:
  br i1 undef, label %bb.nph, label %for.end

bb.nph:                                           
  br label %for.body

for.body:                                         
  %tmp33 = load i16, i16* %P, align 2, !tbaa !0
  store i16 %tmp33, i16* %Q

  store i16 0, i16* %P, align 2, !tbaa !0
  br i1 false, label %for.end, label %for.body

for.end:                                          
  ret void
}

!0 = !{!3, !3, i64 0}
!1 = !{!"omnipotent char", !2}
!2 = !{!"Simple C/C++ TBAA", null}
!3 = !{!"short", !1}
