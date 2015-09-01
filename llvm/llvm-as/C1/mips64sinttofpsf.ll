


define double @foo() #0 {
entry:
  %x = alloca i32, align 4
  store volatile i32 -32, i32* %x, align 4
  %0 = load volatile i32, i32* %x, align 4
  %conv = sitofp i32 %0 to double
  ret double %conv




}
