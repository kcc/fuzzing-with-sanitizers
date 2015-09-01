









define void @f1(double *%ptr, i64 %x) {
























































  %y = alloca [486 x i64], align 8
  %elem = getelementptr inbounds [486 x i64], [486 x i64]* %y, i64 0, i64 0
  store volatile i64 %x, i64* %elem
  %l0 = load volatile double , double *%ptr
  %l1 = load volatile double , double *%ptr
  %l2 = load volatile double , double *%ptr
  %l3 = load volatile double , double *%ptr
  %l4 = load volatile double , double *%ptr
  %l5 = load volatile double , double *%ptr
  %l6 = load volatile double , double *%ptr
  %l7 = load volatile double , double *%ptr
  %l8 = load volatile double , double *%ptr
  %l9 = load volatile double , double *%ptr
  %l10 = load volatile double , double *%ptr
  %l11 = load volatile double , double *%ptr
  %l12 = load volatile double , double *%ptr
  %l13 = load volatile double , double *%ptr
  %l14 = load volatile double , double *%ptr
  %l15 = load volatile double , double *%ptr
  %add0 = fadd double %l0, %l0
  %add1 = fadd double %l1, %add0
  %add2 = fadd double %l2, %add1
  %add3 = fadd double %l3, %add2
  %add4 = fadd double %l4, %add3
  %add5 = fadd double %l5, %add4
  %add6 = fadd double %l6, %add5
  %add7 = fadd double %l7, %add6
  %add8 = fadd double %l8, %add7
  %add9 = fadd double %l9, %add8
  %add10 = fadd double %l10, %add9
  %add11 = fadd double %l11, %add10
  %add12 = fadd double %l12, %add11
  %add13 = fadd double %l13, %add12
  %add14 = fadd double %l14, %add13
  %add15 = fadd double %l15, %add14
  store volatile double %add0, double *%ptr
  store volatile double %add1, double *%ptr
  store volatile double %add2, double *%ptr
  store volatile double %add3, double *%ptr
  store volatile double %add4, double *%ptr
  store volatile double %add5, double *%ptr
  store volatile double %add6, double *%ptr
  store volatile double %add7, double *%ptr
  store volatile double %add8, double *%ptr
  store volatile double %add9, double *%ptr
  store volatile double %add10, double *%ptr
  store volatile double %add11, double *%ptr
  store volatile double %add12, double *%ptr
  store volatile double %add13, double *%ptr
  store volatile double %add14, double *%ptr
  store volatile double %add15, double *%ptr
  ret void
}










define void @f2(double *%ptr, i64 %x) {

































































  %y = alloca [65510 x i64], align 8
  %elem = getelementptr inbounds [65510 x i64], [65510 x i64]* %y, i64 0, i64 0
  store volatile i64 %x, i64* %elem
  %l0 = load volatile double , double *%ptr
  %l1 = load volatile double , double *%ptr
  %l2 = load volatile double , double *%ptr
  %l3 = load volatile double , double *%ptr
  %l4 = load volatile double , double *%ptr
  %l5 = load volatile double , double *%ptr
  %l6 = load volatile double , double *%ptr
  %l7 = load volatile double , double *%ptr
  %l8 = load volatile double , double *%ptr
  %l9 = load volatile double , double *%ptr
  %l10 = load volatile double , double *%ptr
  %l11 = load volatile double , double *%ptr
  %l12 = load volatile double , double *%ptr
  %l13 = load volatile double , double *%ptr
  %l14 = load volatile double , double *%ptr
  %l15 = load volatile double , double *%ptr
  %add0 = fadd double %l0, %l0
  %add1 = fadd double %l1, %add0
  %add2 = fadd double %l2, %add1
  %add3 = fadd double %l3, %add2
  %add4 = fadd double %l4, %add3
  %add5 = fadd double %l5, %add4
  %add6 = fadd double %l6, %add5
  %add7 = fadd double %l7, %add6
  %add8 = fadd double %l8, %add7
  %add9 = fadd double %l9, %add8
  %add10 = fadd double %l10, %add9
  %add11 = fadd double %l11, %add10
  %add12 = fadd double %l12, %add11
  %add13 = fadd double %l13, %add12
  %add14 = fadd double %l14, %add13
  %add15 = fadd double %l15, %add14
  store volatile double %add0, double *%ptr
  store volatile double %add1, double *%ptr
  store volatile double %add2, double *%ptr
  store volatile double %add3, double *%ptr
  store volatile double %add4, double *%ptr
  store volatile double %add5, double *%ptr
  store volatile double %add6, double *%ptr
  store volatile double %add7, double *%ptr
  store volatile double %add8, double *%ptr
  store volatile double %add9, double *%ptr
  store volatile double %add10, double *%ptr
  store volatile double %add11, double *%ptr
  store volatile double %add12, double *%ptr
  store volatile double %add13, double *%ptr
  store volatile double %add14, double *%ptr
  store volatile double %add15, double *%ptr
  ret void
}
