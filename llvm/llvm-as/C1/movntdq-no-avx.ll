




define void @test(<2 x i64>* nocapture %a, <2 x i64> %b) nounwind optsize {
entry:
  store <2 x i64> %b, <2 x i64>* %a, align 16, !nontemporal !0
  ret void
}

!0 = !{i32 1}
