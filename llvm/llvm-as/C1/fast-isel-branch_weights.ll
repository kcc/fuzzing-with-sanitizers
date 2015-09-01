



define i64 @branch_weights_test(i64 %a, i64 %b) {



  %1 = icmp ult i64 %a, %b
  br i1 %1, label %fail, label %success, !prof !0

fail:
  ret i64 -1

success:
  ret i64 0
}

!0 = !{!"branch_weights", i32 0, i32 2147483647}
