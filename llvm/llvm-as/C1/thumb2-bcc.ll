




define i32 @t1(i32 %a, i32 %b, i32 %c) {


  %tmp2 = icmp eq i32 %a, 0
  br i1 %tmp2, label %cond_false, label %cond_true

cond_true:
  fence seq_cst
  %tmp5 = add i32 %b, 1
  %tmp6 = and i32 %tmp5, %c
  ret i32 %tmp6

cond_false:
  fence seq_cst
  %tmp7 = add i32 %b, -1
  %tmp8 = xor i32 %tmp7, %c
  ret i32 %tmp8
}
