


target triple = "x86_64-pc-win32-elf"
































define double @foo(i64 %arg) {
top:
  %tmp = call double inttoptr (i64 339752784 to double (double, double)*)(double 1.000000e+00, double 0.000000e+00)
  %tmp1 = sitofp i64 %arg to double
  call void inttoptr (i64 339772768 to void (double, double)*)(double %tmp, double %tmp1)
  %tmp3 = fadd double %tmp1, %tmp
  ret double %tmp3
}
