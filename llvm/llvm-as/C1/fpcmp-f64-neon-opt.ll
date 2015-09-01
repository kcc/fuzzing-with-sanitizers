


define i32 @no-intermediate-register-for-zero-imm(double %x) #0 {
entry:



  %cmp = fcmp une double %x, 0.000000e+00
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}
