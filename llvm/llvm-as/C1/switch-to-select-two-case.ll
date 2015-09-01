











define i32 @foo1_with_default(i32 %a) {





entry:
  switch i32 %a, label %sw.epilog [
    i32 10, label %sw.bb
    i32 20, label %sw.bb1
  ]

sw.bb:
  br label %return

sw.bb1:
  br label %return

sw.epilog:
  br label %return

return:
  %retval.0 = phi i32 [ 4, %sw.epilog ], [ 2, %sw.bb1 ], [ 10, %sw.bb ]
  ret i32 %retval.0
}
