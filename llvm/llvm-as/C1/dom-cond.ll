

define i32 @dom_cond(i32 %a, i32 %b) {

entry:
  %v = add i32 %a, %b
  %cond = icmp ule i32 %v, 7
  br i1 %cond, label %then, label %exit

then:
  %v2 = add i32 %v, 8

  br label %exit

exit:
  %v3 = phi i32 [ %v, %entry ], [ %v2, %then ]
  ret i32 %v3
}
