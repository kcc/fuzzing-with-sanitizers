







define void @f1(float *%ptr) {






























  %l0 = load volatile float , float *%ptr
  %l1 = load volatile float , float *%ptr
  %l2 = load volatile float , float *%ptr
  %l3 = load volatile float , float *%ptr
  %l4 = load volatile float , float *%ptr
  %l5 = load volatile float , float *%ptr
  %l6 = load volatile float , float *%ptr
  %l7 = load volatile float , float *%ptr
  %l8 = load volatile float , float *%ptr
  %l9 = load volatile float , float *%ptr
  %l10 = load volatile float , float *%ptr
  %l11 = load volatile float , float *%ptr
  %l12 = load volatile float , float *%ptr
  %l13 = load volatile float , float *%ptr
  %l14 = load volatile float , float *%ptr
  %l15 = load volatile float , float *%ptr
  %add0 = fadd float %l0, %l0
  %add1 = fadd float %l1, %add0
  %add2 = fadd float %l2, %add1
  %add3 = fadd float %l3, %add2
  %add4 = fadd float %l4, %add3
  %add5 = fadd float %l5, %add4
  %add6 = fadd float %l6, %add5
  %add7 = fadd float %l7, %add6
  %add8 = fadd float %l8, %add7
  %add9 = fadd float %l9, %add8
  %add10 = fadd float %l10, %add9
  %add11 = fadd float %l11, %add10
  %add12 = fadd float %l12, %add11
  %add13 = fadd float %l13, %add12
  %add14 = fadd float %l14, %add13
  %add15 = fadd float %l15, %add14
  store volatile float %add0, float *%ptr
  store volatile float %add1, float *%ptr
  store volatile float %add2, float *%ptr
  store volatile float %add3, float *%ptr
  store volatile float %add4, float *%ptr
  store volatile float %add5, float *%ptr
  store volatile float %add6, float *%ptr
  store volatile float %add7, float *%ptr
  store volatile float %add8, float *%ptr
  store volatile float %add9, float *%ptr
  store volatile float %add10, float *%ptr
  store volatile float %add11, float *%ptr
  store volatile float %add12, float *%ptr
  store volatile float %add13, float *%ptr
  store volatile float %add14, float *%ptr
  store volatile float %add15, float *%ptr
  ret void
}



define void @f2(float *%ptr) {




























  %l0 = load volatile float , float *%ptr
  %l1 = load volatile float , float *%ptr
  %l2 = load volatile float , float *%ptr
  %l3 = load volatile float , float *%ptr
  %l4 = load volatile float , float *%ptr
  %l5 = load volatile float , float *%ptr
  %l6 = load volatile float , float *%ptr
  %l7 = load volatile float , float *%ptr
  %l8 = load volatile float , float *%ptr
  %l9 = load volatile float , float *%ptr
  %l10 = load volatile float , float *%ptr
  %l11 = load volatile float , float *%ptr
  %l12 = load volatile float , float *%ptr
  %l13 = load volatile float , float *%ptr
  %l14 = load volatile float , float *%ptr
  %add0 = fadd float %l0, %l0
  %add1 = fadd float %l1, %add0
  %add2 = fadd float %l2, %add1
  %add3 = fadd float %l3, %add2
  %add4 = fadd float %l4, %add3
  %add5 = fadd float %l5, %add4
  %add6 = fadd float %l6, %add5
  %add7 = fadd float %l7, %add6
  %add8 = fadd float %l8, %add7
  %add9 = fadd float %l9, %add8
  %add10 = fadd float %l10, %add9
  %add11 = fadd float %l11, %add10
  %add12 = fadd float %l12, %add11
  %add13 = fadd float %l13, %add12
  %add14 = fadd float %l14, %add13
  store volatile float %add0, float *%ptr
  store volatile float %add1, float *%ptr
  store volatile float %add2, float *%ptr
  store volatile float %add3, float *%ptr
  store volatile float %add4, float *%ptr
  store volatile float %add5, float *%ptr
  store volatile float %add6, float *%ptr
  store volatile float %add7, float *%ptr
  store volatile float %add8, float *%ptr
  store volatile float %add9, float *%ptr
  store volatile float %add10, float *%ptr
  store volatile float %add11, float *%ptr
  store volatile float %add12, float *%ptr
  store volatile float %add13, float *%ptr
  store volatile float %add14, float *%ptr
  ret void
}


define void @f3(float *%ptr) {
















  %l0 = load volatile float , float *%ptr
  %l1 = load volatile float , float *%ptr
  %l2 = load volatile float , float *%ptr
  %l3 = load volatile float , float *%ptr
  %l4 = load volatile float , float *%ptr
  %l5 = load volatile float , float *%ptr
  %l6 = load volatile float , float *%ptr
  %l7 = load volatile float , float *%ptr
  %l8 = load volatile float , float *%ptr
  %add0 = fadd float %l0, %l0
  %add1 = fadd float %l1, %add0
  %add2 = fadd float %l2, %add1
  %add3 = fadd float %l3, %add2
  %add4 = fadd float %l4, %add3
  %add5 = fadd float %l5, %add4
  %add6 = fadd float %l6, %add5
  %add7 = fadd float %l7, %add6
  %add8 = fadd float %l8, %add7
  store volatile float %add0, float *%ptr
  store volatile float %add1, float *%ptr
  store volatile float %add2, float *%ptr
  store volatile float %add3, float *%ptr
  store volatile float %add4, float *%ptr
  store volatile float %add5, float *%ptr
  store volatile float %add6, float *%ptr
  store volatile float %add7, float *%ptr
  store volatile float %add8, float *%ptr
  ret void
}



define void @f4(float *%ptr) {











  %l0 = load volatile float , float *%ptr
  %l1 = load volatile float , float *%ptr
  %l2 = load volatile float , float *%ptr
  %l3 = load volatile float , float *%ptr
  %l4 = load volatile float , float *%ptr
  %l5 = load volatile float , float *%ptr
  %l6 = load volatile float , float *%ptr
  %l7 = load volatile float , float *%ptr
  %add0 = fadd float %l0, %l0
  %add1 = fadd float %l1, %add0
  %add2 = fadd float %l2, %add1
  %add3 = fadd float %l3, %add2
  %add4 = fadd float %l4, %add3
  %add5 = fadd float %l5, %add4
  %add6 = fadd float %l6, %add5
  %add7 = fadd float %l7, %add6
  store volatile float %add0, float *%ptr
  store volatile float %add1, float *%ptr
  store volatile float %add2, float *%ptr
  store volatile float %add3, float *%ptr
  store volatile float %add4, float *%ptr
  store volatile float %add5, float *%ptr
  store volatile float %add6, float *%ptr
  store volatile float %add7, float *%ptr
  ret void
}
