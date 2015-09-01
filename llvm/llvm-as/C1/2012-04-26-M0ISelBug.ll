



define i32 @t(i32 %a) nounwind {



  %tmp0 = ashr i32 %a, 31
  %tmp1 = xor i32 %tmp0, %a
  ret i32 %tmp1
}
