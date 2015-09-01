



define void @nested_loop_with_branches(i32 %a) {

entry:
  %v0 = call i1 @foo0(i32 %a)
  br i1 %v0, label %exit, label %outer, !prof !0


outer:
  %i = phi i32 [ 0, %entry ], [ %i.next, %inner.end ], [ %i.next, %no_inner ]
  %i.next = add i32 %i, 1
  %do_inner = call i1 @foo1(i32 %i)
  br i1 %do_inner, label %no_inner, label %inner, !prof !0


inner:
  %j = phi i32 [ 0, %outer ], [ %j.next, %inner.end ]
  %side = call i1 @foo3(i32 %j)
  br i1 %side, label %left, label %right, !prof !0


left:
  %v4 = call i1 @foo4(i32 %j)
  br label %inner.end


right:
  %v5 = call i1 @foo5(i32 %j)
  br label %inner.end


inner.end:
  %stay_inner = phi i1 [ %v4, %left ], [ %v5, %right ]
  %j.next = add i32 %j, 1
  br i1 %stay_inner, label %inner, label %outer, !prof !1


no_inner:
  %continue = call i1 @foo6(i32 %i)
  br i1 %continue, label %outer, label %exit, !prof !1


exit:
  ret void
}

declare i1 @foo0(i32)
declare i1 @foo1(i32)
declare i1 @foo2(i32)
declare i1 @foo3(i32)
declare i1 @foo4(i32)
declare i1 @foo5(i32)
declare i1 @foo6(i32)

!0 = !{!"branch_weights", i32 1, i32 3}
!1 = !{!"branch_weights", i32 3, i32 1}
