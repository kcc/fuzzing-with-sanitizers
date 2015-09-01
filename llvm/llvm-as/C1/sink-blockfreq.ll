







define i32 @sink_freqinfo(i32 %a, i32 %b) nounwind uwtable ssp {








entry:
  br label %B

B:
  %ee = phi i32 [ 0, %entry ], [ %inc, %F ]
  %xx = sub i32 %a, %ee
  %cond0 = icmp slt i32 %xx, 0
  br i1 %cond0, label %F, label %exit, !prof !0

F:
  %inc = add nsw i32 %xx, 2
  %aa = mul nsw i32 %b, %inc
  %exitcond = icmp slt i32 %inc, %a
  br i1 %exitcond, label %B, label %G, !prof !1

G:
  %ii = add nsw i32 %aa, %a
  %ll = add i32 %b, 45
  %exitcond2 = icmp sge i32 %ii, %b
  br i1 %exitcond2, label %G, label %exit, !prof !2

exit:
  ret i32 0
}

!0 = !{!"branch_weights", i32 4, i32 1}
!1 = !{!"branch_weights", i32 128, i32 1}
!2 = !{!"branch_weights", i32 1, i32 1}
