











define void @f1(i64 *%ptr) {


















  %l0 = load volatile i64 , i64 *%ptr
  %l1 = load volatile i64 , i64 *%ptr
  %l3 = load volatile i64 , i64 *%ptr
  %l4 = load volatile i64 , i64 *%ptr
  %l5 = load volatile i64 , i64 *%ptr
  %l6 = load volatile i64 , i64 *%ptr
  %l7 = load volatile i64 , i64 *%ptr
  %l8 = load volatile i64 , i64 *%ptr
  %l9 = load volatile i64 , i64 *%ptr
  %l10 = load volatile i64 , i64 *%ptr
  %l11 = load volatile i64 , i64 *%ptr
  %l12 = load volatile i64 , i64 *%ptr
  %l13 = load volatile i64 , i64 *%ptr
  %l14 = load volatile i64 , i64 *%ptr
  %add0 = add i64 %l0, %l0
  %add1 = add i64 %l1, %add0
  %add3 = add i64 %l3, %add1
  %add4 = add i64 %l4, %add3
  %add5 = add i64 %l5, %add4
  %add6 = add i64 %l6, %add5
  %add7 = add i64 %l7, %add6
  %add8 = add i64 %l8, %add7
  %add9 = add i64 %l9, %add8
  %add10 = add i64 %l10, %add9
  %add11 = add i64 %l11, %add10
  %add12 = add i64 %l12, %add11
  %add13 = add i64 %l13, %add12
  %add14 = add i64 %l14, %add13
  store volatile i64 %add0, i64 *%ptr
  store volatile i64 %add1, i64 *%ptr
  store volatile i64 %add3, i64 *%ptr
  store volatile i64 %add4, i64 *%ptr
  store volatile i64 %add5, i64 *%ptr
  store volatile i64 %add6, i64 *%ptr
  store volatile i64 %add7, i64 *%ptr
  store volatile i64 %add8, i64 *%ptr
  store volatile i64 %add9, i64 *%ptr
  store volatile i64 %add10, i64 *%ptr
  store volatile i64 %add11, i64 *%ptr
  store volatile i64 %add12, i64 *%ptr
  store volatile i64 %add13, i64 *%ptr
  %final = getelementptr i64, i64 *%ptr, i64 1
  store volatile i64 %add14, i64 *%final
  ret void
}




define void @f2(i64 *%ptr) {


















  %l0 = load volatile i64 , i64 *%ptr
  %l1 = load volatile i64 , i64 *%ptr
  %l3 = load volatile i64 , i64 *%ptr
  %l4 = load volatile i64 , i64 *%ptr
  %l5 = load volatile i64 , i64 *%ptr
  %l7 = load volatile i64 , i64 *%ptr
  %l8 = load volatile i64 , i64 *%ptr
  %l9 = load volatile i64 , i64 *%ptr
  %l10 = load volatile i64 , i64 *%ptr
  %l11 = load volatile i64 , i64 *%ptr
  %l12 = load volatile i64 , i64 *%ptr
  %l13 = load volatile i64 , i64 *%ptr
  %l14 = load volatile i64 , i64 *%ptr
  %add0 = add i64 %l0, %l0
  %add1 = add i64 %l1, %add0
  %add3 = add i64 %l3, %add1
  %add4 = add i64 %l4, %add3
  %add5 = add i64 %l5, %add4
  %add7 = add i64 %l7, %add5
  %add8 = add i64 %l8, %add7
  %add9 = add i64 %l9, %add8
  %add10 = add i64 %l10, %add9
  %add11 = add i64 %l11, %add10
  %add12 = add i64 %l12, %add11
  %add13 = add i64 %l13, %add12
  %add14 = add i64 %l14, %add13
  store volatile i64 %add0, i64 *%ptr
  store volatile i64 %add1, i64 *%ptr
  store volatile i64 %add3, i64 *%ptr
  store volatile i64 %add4, i64 *%ptr
  store volatile i64 %add5, i64 *%ptr
  store volatile i64 %add7, i64 *%ptr
  store volatile i64 %add8, i64 *%ptr
  store volatile i64 %add9, i64 *%ptr
  store volatile i64 %add10, i64 *%ptr
  store volatile i64 %add11, i64 *%ptr
  store volatile i64 %add12, i64 *%ptr
  store volatile i64 %add13, i64 *%ptr
  %final = getelementptr i64, i64 *%ptr, i64 1
  store volatile i64 %add14, i64 *%final
  ret void
}


define void @f3(i64 *%ptr) {


















  %l0 = load volatile i64 , i64 *%ptr
  %l1 = load volatile i64 , i64 *%ptr
  %l3 = load volatile i64 , i64 *%ptr
  %l4 = load volatile i64 , i64 *%ptr
  %l5 = load volatile i64 , i64 *%ptr
  %l14 = load volatile i64 , i64 *%ptr
  %add0 = add i64 %l0, %l0
  %add1 = add i64 %l1, %add0
  %add3 = add i64 %l3, %add1
  %add4 = add i64 %l4, %add3
  %add5 = add i64 %l5, %add4
  %add14 = add i64 %l14, %add5
  store volatile i64 %add0, i64 *%ptr
  store volatile i64 %add1, i64 *%ptr
  store volatile i64 %add3, i64 *%ptr
  store volatile i64 %add4, i64 *%ptr
  store volatile i64 %add5, i64 *%ptr
  %final = getelementptr i64, i64 *%ptr, i64 1
  store volatile i64 %add14, i64 *%final
  ret void
}



define void @f4(i64 *%ptr) {











  %l0 = load volatile i64 , i64 *%ptr
  %l1 = load volatile i64 , i64 *%ptr
  %l3 = load volatile i64 , i64 *%ptr
  %l4 = load volatile i64 , i64 *%ptr
  %l5 = load volatile i64 , i64 *%ptr
  %add0 = add i64 %l0, %l0
  %add1 = add i64 %l1, %add0
  %add3 = add i64 %l3, %add1
  %add4 = add i64 %l4, %add3
  %add5 = add i64 %l5, %add4
  store volatile i64 %add0, i64 *%ptr
  store volatile i64 %add1, i64 *%ptr
  store volatile i64 %add3, i64 *%ptr
  store volatile i64 %add4, i64 *%ptr
  %final = getelementptr i64, i64 *%ptr, i64 1
  store volatile i64 %add5, i64 *%final
  ret void
}
