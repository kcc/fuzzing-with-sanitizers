



define i32 @double_exit(i32 %N) {



entry:
  br label %outer








outer:
  %I.0 = phi i32 [ 0, %entry ], [ %inc6, %outer.inc ]
  %Return.0 = phi i32 [ 0, %entry ], [ %Return.1, %outer.inc ]
  %cmp = icmp slt i32 %I.0, %N
  br i1 %cmp, label %inner, label %exit, !prof !2 








inner:
  %Return.1 = phi i32 [ %Return.0, %outer ], [ %call4, %inner.inc ]
  %J.0 = phi i32 [ %I.0, %outer ], [ %inc, %inner.inc ]
  %cmp2 = icmp slt i32 %J.0, %N
  br i1 %cmp2, label %inner.body, label %outer.inc, !prof !1 




inner.body:
  %call = call i32 @c2(i32 %I.0, i32 %J.0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %exit, label %inner.inc, !prof !0 




inner.inc:
  %call4 = call i32 @logic2(i32 %Return.1, i32 %I.0, i32 %J.0)
  %inc = add nsw i32 %J.0, 1
  br label %inner




outer.inc:
  %inc6 = add nsw i32 %I.0, 1
  br label %outer




exit:
  %Return.2 = phi i32 [ %Return.1, %inner.body ], [ %Return.0, %outer ]
  ret i32 %Return.2
}

!0 = !{!"branch_weights", i32 1, i32 3}
!1 = !{!"branch_weights", i32 4, i32 1}
!2 = !{!"branch_weights", i32 2, i32 1}

declare i32 @c2(i32, i32)
declare i32 @logic2(i32, i32, i32)



define i32 @double_exit_in_loop(i32 %N) {



entry:
  br label %outer








outer:
  %I.0 = phi i32 [ 0, %entry ], [ %inc12, %outer.inc ]
  %Return.0 = phi i32 [ 0, %entry ], [ %Return.3, %outer.inc ]
  %cmp = icmp slt i32 %I.0, %N
  br i1 %cmp, label %middle, label %exit, !prof !3 








middle:
  %J.0 = phi i32 [ %I.0, %outer ], [ %inc9, %middle.inc ]
  %Return.1 = phi i32 [ %Return.0, %outer ], [ %Return.2, %middle.inc ]
  %cmp2 = icmp slt i32 %J.0, %N
  br i1 %cmp2, label %inner, label %outer.inc, !prof !2 








inner:
  %Return.2 = phi i32 [ %Return.1, %middle ], [ %call7, %inner.inc ]
  %K.0 = phi i32 [ %J.0, %middle ], [ %inc, %inner.inc ]
  %cmp5 = icmp slt i32 %K.0, %N
  br i1 %cmp5, label %inner.body, label %middle.inc, !prof !1 




inner.body:
  %call = call i32 @c3(i32 %I.0, i32 %J.0, i32 %K.0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %outer.inc, label %inner.inc, !prof !0 




inner.inc:
  %call7 = call i32 @logic3(i32 %Return.2, i32 %I.0, i32 %J.0, i32 %K.0)
  %inc = add nsw i32 %K.0, 1
  br label %inner




middle.inc:
  %inc9 = add nsw i32 %J.0, 1
  br label %middle




outer.inc:
  %Return.3 = phi i32 [ %Return.2, %inner.body ], [ %Return.1, %middle ]
  %inc12 = add nsw i32 %I.0, 1
  br label %outer




exit:
  ret i32 %Return.0
}

!3 = !{!"branch_weights", i32 1, i32 1}

declare i32 @c3(i32, i32, i32)
declare i32 @logic3(i32, i32, i32, i32)
