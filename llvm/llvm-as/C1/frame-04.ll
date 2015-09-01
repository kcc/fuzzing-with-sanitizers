








define void @f1(fp128 *%ptr) {






























  %l0 = load volatile fp128 , fp128 *%ptr
  %l1 = load volatile fp128 , fp128 *%ptr
  %l4 = load volatile fp128 , fp128 *%ptr
  %l5 = load volatile fp128 , fp128 *%ptr
  %l8 = load volatile fp128 , fp128 *%ptr
  %l9 = load volatile fp128 , fp128 *%ptr
  %l12 = load volatile fp128 , fp128 *%ptr
  %l13 = load volatile fp128 , fp128 *%ptr
  %add0 = fadd fp128 %l0, %l0
  %add1 = fadd fp128 %l1, %add0
  %add4 = fadd fp128 %l4, %add1
  %add5 = fadd fp128 %l5, %add4
  %add8 = fadd fp128 %l8, %add5
  %add9 = fadd fp128 %l9, %add8
  %add12 = fadd fp128 %l12, %add9
  %add13 = fadd fp128 %l13, %add12
  store volatile fp128 %add0, fp128 *%ptr
  store volatile fp128 %add1, fp128 *%ptr
  store volatile fp128 %add4, fp128 *%ptr
  store volatile fp128 %add5, fp128 *%ptr
  store volatile fp128 %add8, fp128 *%ptr
  store volatile fp128 %add9, fp128 *%ptr
  store volatile fp128 %add12, fp128 *%ptr
  store volatile fp128 %add13, fp128 *%ptr
  ret void
}



define void @f2(fp128 *%ptr) {


























  %l0 = load volatile fp128 , fp128 *%ptr
  %l1 = load volatile fp128 , fp128 *%ptr
  %l4 = load volatile fp128 , fp128 *%ptr
  %l5 = load volatile fp128 , fp128 *%ptr
  %l8 = load volatile fp128 , fp128 *%ptr
  %l9 = load volatile fp128 , fp128 *%ptr
  %l12 = load volatile fp128 , fp128 *%ptr
  %add0 = fadd fp128 %l0, %l0
  %add1 = fadd fp128 %l1, %add0
  %add4 = fadd fp128 %l4, %add1
  %add5 = fadd fp128 %l5, %add4
  %add8 = fadd fp128 %l8, %add5
  %add9 = fadd fp128 %l9, %add8
  %add12 = fadd fp128 %l12, %add9
  store volatile fp128 %add0, fp128 *%ptr
  store volatile fp128 %add1, fp128 *%ptr
  store volatile fp128 %add4, fp128 *%ptr
  store volatile fp128 %add5, fp128 *%ptr
  store volatile fp128 %add8, fp128 *%ptr
  store volatile fp128 %add9, fp128 *%ptr
  store volatile fp128 %add12, fp128 *%ptr
  ret void
}



define void @f3(fp128 *%ptr) {


















  %l0 = load volatile fp128 , fp128 *%ptr
  %l1 = load volatile fp128 , fp128 *%ptr
  %l4 = load volatile fp128 , fp128 *%ptr
  %l5 = load volatile fp128 , fp128 *%ptr
  %l8 = load volatile fp128 , fp128 *%ptr
  %add0 = fadd fp128 %l0, %l0
  %add1 = fadd fp128 %l1, %add0
  %add4 = fadd fp128 %l4, %add1
  %add5 = fadd fp128 %l5, %add4
  %add8 = fadd fp128 %l8, %add5
  store volatile fp128 %add0, fp128 *%ptr
  store volatile fp128 %add1, fp128 *%ptr
  store volatile fp128 %add4, fp128 *%ptr
  store volatile fp128 %add5, fp128 *%ptr
  store volatile fp128 %add8, fp128 *%ptr
  ret void
}



define void @f4(fp128 *%ptr) {











  %l0 = load volatile fp128 , fp128 *%ptr
  %l1 = load volatile fp128 , fp128 *%ptr
  %l4 = load volatile fp128 , fp128 *%ptr
  %l5 = load volatile fp128 , fp128 *%ptr
  %add0 = fadd fp128 %l0, %l0
  %add1 = fadd fp128 %l1, %add0
  %add4 = fadd fp128 %l4, %add1
  %add5 = fadd fp128 %l5, %add4
  store volatile fp128 %add0, fp128 *%ptr
  store volatile fp128 %add1, fp128 *%ptr
  store volatile fp128 %add4, fp128 *%ptr
  store volatile fp128 %add5, fp128 *%ptr
  ret void
}
