








define void @f1(double *%ptr) {





































  %l0 = load volatile double, double *%ptr
  %l1 = load volatile double, double *%ptr
  %l2 = load volatile double, double *%ptr
  %l3 = load volatile double, double *%ptr
  %l4 = load volatile double, double *%ptr
  %l5 = load volatile double, double *%ptr
  %l6 = load volatile double, double *%ptr
  %l7 = load volatile double, double *%ptr
  %l8 = load volatile double, double *%ptr
  %l9 = load volatile double, double *%ptr
  %l10 = load volatile double, double *%ptr
  %l11 = load volatile double, double *%ptr
  %l12 = load volatile double, double *%ptr
  %l13 = load volatile double, double *%ptr
  %l14 = load volatile double, double *%ptr
  %l15 = load volatile double, double *%ptr
  %l16 = load volatile double, double *%ptr
  %l17 = load volatile double, double *%ptr
  %l18 = load volatile double, double *%ptr
  %l19 = load volatile double, double *%ptr
  %l20 = load volatile double, double *%ptr
  %l21 = load volatile double, double *%ptr
  %l22 = load volatile double, double *%ptr
  %l23 = load volatile double, double *%ptr
  %l24 = load volatile double, double *%ptr
  %l25 = load volatile double, double *%ptr
  %l26 = load volatile double, double *%ptr
  %l27 = load volatile double, double *%ptr
  %l28 = load volatile double, double *%ptr
  %l29 = load volatile double, double *%ptr
  %l30 = load volatile double, double *%ptr
  %l31 = load volatile double, double *%ptr
  %acc0 = fsub double %l0, %l0
  %acc1 = fsub double %l1, %acc0
  %acc2 = fsub double %l2, %acc1
  %acc3 = fsub double %l3, %acc2
  %acc4 = fsub double %l4, %acc3
  %acc5 = fsub double %l5, %acc4
  %acc6 = fsub double %l6, %acc5
  %acc7 = fsub double %l7, %acc6
  %acc8 = fsub double %l8, %acc7
  %acc9 = fsub double %l9, %acc8
  %acc10 = fsub double %l10, %acc9
  %acc11 = fsub double %l11, %acc10
  %acc12 = fsub double %l12, %acc11
  %acc13 = fsub double %l13, %acc12
  %acc14 = fsub double %l14, %acc13
  %acc15 = fsub double %l15, %acc14
  %acc16 = fsub double %l16, %acc15
  %acc17 = fsub double %l17, %acc16
  %acc18 = fsub double %l18, %acc17
  %acc19 = fsub double %l19, %acc18
  %acc20 = fsub double %l20, %acc19
  %acc21 = fsub double %l21, %acc20
  %acc22 = fsub double %l22, %acc21
  %acc23 = fsub double %l23, %acc22
  %acc24 = fsub double %l24, %acc23
  %acc25 = fsub double %l25, %acc24
  %acc26 = fsub double %l26, %acc25
  %acc27 = fsub double %l27, %acc26
  %acc28 = fsub double %l28, %acc27
  %acc29 = fsub double %l29, %acc28
  %acc30 = fsub double %l30, %acc29
  %acc31 = fsub double %l31, %acc30
  store volatile double %acc0, double *%ptr
  store volatile double %acc1, double *%ptr
  store volatile double %acc2, double *%ptr
  store volatile double %acc3, double *%ptr
  store volatile double %acc4, double *%ptr
  store volatile double %acc5, double *%ptr
  store volatile double %acc6, double *%ptr
  store volatile double %acc7, double *%ptr
  store volatile double %acc8, double *%ptr
  store volatile double %acc9, double *%ptr
  store volatile double %acc10, double *%ptr
  store volatile double %acc11, double *%ptr
  store volatile double %acc12, double *%ptr
  store volatile double %acc13, double *%ptr
  store volatile double %acc14, double *%ptr
  store volatile double %acc15, double *%ptr
  store volatile double %acc16, double *%ptr
  store volatile double %acc17, double *%ptr
  store volatile double %acc18, double *%ptr
  store volatile double %acc19, double *%ptr
  store volatile double %acc20, double *%ptr
  store volatile double %acc21, double *%ptr
  store volatile double %acc22, double *%ptr
  store volatile double %acc23, double *%ptr
  store volatile double %acc24, double *%ptr
  store volatile double %acc25, double *%ptr
  store volatile double %acc26, double *%ptr
  store volatile double %acc27, double *%ptr
  store volatile double %acc28, double *%ptr
  store volatile double %acc29, double *%ptr
  store volatile double %acc30, double *%ptr
  store volatile double %acc31, double *%ptr
  ret void
}



define void @f2(double *%ptr) {




























  %l0 = load volatile double, double *%ptr
  %l1 = load volatile double, double *%ptr
  %l2 = load volatile double, double *%ptr
  %l3 = load volatile double, double *%ptr
  %l4 = load volatile double, double *%ptr
  %l5 = load volatile double, double *%ptr
  %l6 = load volatile double, double *%ptr
  %l7 = load volatile double, double *%ptr
  %l8 = load volatile double, double *%ptr
  %l9 = load volatile double, double *%ptr
  %l10 = load volatile double, double *%ptr
  %l11 = load volatile double, double *%ptr
  %l12 = load volatile double, double *%ptr
  %l13 = load volatile double, double *%ptr
  %l14 = load volatile double, double *%ptr
  %l16 = load volatile double, double *%ptr
  %l17 = load volatile double, double *%ptr
  %l18 = load volatile double, double *%ptr
  %l19 = load volatile double, double *%ptr
  %l20 = load volatile double, double *%ptr
  %l21 = load volatile double, double *%ptr
  %l22 = load volatile double, double *%ptr
  %l23 = load volatile double, double *%ptr
  %l24 = load volatile double, double *%ptr
  %l25 = load volatile double, double *%ptr
  %l26 = load volatile double, double *%ptr
  %l27 = load volatile double, double *%ptr
  %l28 = load volatile double, double *%ptr
  %l29 = load volatile double, double *%ptr
  %l30 = load volatile double, double *%ptr
  %l31 = load volatile double, double *%ptr
  %acc0 = fsub double %l0, %l0
  %acc1 = fsub double %l1, %acc0
  %acc2 = fsub double %l2, %acc1
  %acc3 = fsub double %l3, %acc2
  %acc4 = fsub double %l4, %acc3
  %acc5 = fsub double %l5, %acc4
  %acc6 = fsub double %l6, %acc5
  %acc7 = fsub double %l7, %acc6
  %acc8 = fsub double %l8, %acc7
  %acc9 = fsub double %l9, %acc8
  %acc10 = fsub double %l10, %acc9
  %acc11 = fsub double %l11, %acc10
  %acc12 = fsub double %l12, %acc11
  %acc13 = fsub double %l13, %acc12
  %acc14 = fsub double %l14, %acc13
  %acc16 = fsub double %l16, %acc14
  %acc17 = fsub double %l17, %acc16
  %acc18 = fsub double %l18, %acc17
  %acc19 = fsub double %l19, %acc18
  %acc20 = fsub double %l20, %acc19
  %acc21 = fsub double %l21, %acc20
  %acc22 = fsub double %l22, %acc21
  %acc23 = fsub double %l23, %acc22
  %acc24 = fsub double %l24, %acc23
  %acc25 = fsub double %l25, %acc24
  %acc26 = fsub double %l26, %acc25
  %acc27 = fsub double %l27, %acc26
  %acc28 = fsub double %l28, %acc27
  %acc29 = fsub double %l29, %acc28
  %acc30 = fsub double %l30, %acc29
  %acc31 = fsub double %l31, %acc30
  store volatile double %acc0, double *%ptr
  store volatile double %acc1, double *%ptr
  store volatile double %acc2, double *%ptr
  store volatile double %acc3, double *%ptr
  store volatile double %acc4, double *%ptr
  store volatile double %acc5, double *%ptr
  store volatile double %acc6, double *%ptr
  store volatile double %acc7, double *%ptr
  store volatile double %acc8, double *%ptr
  store volatile double %acc9, double *%ptr
  store volatile double %acc10, double *%ptr
  store volatile double %acc11, double *%ptr
  store volatile double %acc12, double *%ptr
  store volatile double %acc13, double *%ptr
  store volatile double %acc14, double *%ptr
  store volatile double %acc16, double *%ptr
  store volatile double %acc17, double *%ptr
  store volatile double %acc18, double *%ptr
  store volatile double %acc19, double *%ptr
  store volatile double %acc20, double *%ptr
  store volatile double %acc21, double *%ptr
  store volatile double %acc22, double *%ptr
  store volatile double %acc23, double *%ptr
  store volatile double %acc24, double *%ptr
  store volatile double %acc25, double *%ptr
  store volatile double %acc26, double *%ptr
  store volatile double %acc27, double *%ptr
  store volatile double %acc28, double *%ptr
  store volatile double %acc29, double *%ptr
  store volatile double %acc30, double *%ptr
  store volatile double %acc31, double *%ptr
  ret void
}


define void @f3(double *%ptr) {










  %l0 = load volatile double, double *%ptr
  %l1 = load volatile double, double *%ptr
  %l2 = load volatile double, double *%ptr
  %l3 = load volatile double, double *%ptr
  %l4 = load volatile double, double *%ptr
  %l5 = load volatile double, double *%ptr
  %l6 = load volatile double, double *%ptr
  %l7 = load volatile double, double *%ptr
  %l8 = load volatile double, double *%ptr
  %l16 = load volatile double, double *%ptr
  %l17 = load volatile double, double *%ptr
  %l18 = load volatile double, double *%ptr
  %l19 = load volatile double, double *%ptr
  %l20 = load volatile double, double *%ptr
  %l21 = load volatile double, double *%ptr
  %l22 = load volatile double, double *%ptr
  %l23 = load volatile double, double *%ptr
  %l24 = load volatile double, double *%ptr
  %l25 = load volatile double, double *%ptr
  %l26 = load volatile double, double *%ptr
  %l27 = load volatile double, double *%ptr
  %l28 = load volatile double, double *%ptr
  %l29 = load volatile double, double *%ptr
  %l30 = load volatile double, double *%ptr
  %l31 = load volatile double, double *%ptr
  %acc0 = fsub double %l0, %l0
  %acc1 = fsub double %l1, %acc0
  %acc2 = fsub double %l2, %acc1
  %acc3 = fsub double %l3, %acc2
  %acc4 = fsub double %l4, %acc3
  %acc5 = fsub double %l5, %acc4
  %acc6 = fsub double %l6, %acc5
  %acc7 = fsub double %l7, %acc6
  %acc8 = fsub double %l8, %acc7
  %acc16 = fsub double %l16, %acc8
  %acc17 = fsub double %l17, %acc16
  %acc18 = fsub double %l18, %acc17
  %acc19 = fsub double %l19, %acc18
  %acc20 = fsub double %l20, %acc19
  %acc21 = fsub double %l21, %acc20
  %acc22 = fsub double %l22, %acc21
  %acc23 = fsub double %l23, %acc22
  %acc24 = fsub double %l24, %acc23
  %acc25 = fsub double %l25, %acc24
  %acc26 = fsub double %l26, %acc25
  %acc27 = fsub double %l27, %acc26
  %acc28 = fsub double %l28, %acc27
  %acc29 = fsub double %l29, %acc28
  %acc30 = fsub double %l30, %acc29
  %acc31 = fsub double %l31, %acc30
  store volatile double %acc0, double *%ptr
  store volatile double %acc1, double *%ptr
  store volatile double %acc2, double *%ptr
  store volatile double %acc3, double *%ptr
  store volatile double %acc4, double *%ptr
  store volatile double %acc5, double *%ptr
  store volatile double %acc6, double *%ptr
  store volatile double %acc7, double *%ptr
  store volatile double %acc8, double *%ptr
  store volatile double %acc16, double *%ptr
  store volatile double %acc17, double *%ptr
  store volatile double %acc18, double *%ptr
  store volatile double %acc19, double *%ptr
  store volatile double %acc20, double *%ptr
  store volatile double %acc21, double *%ptr
  store volatile double %acc22, double *%ptr
  store volatile double %acc23, double *%ptr
  store volatile double %acc24, double *%ptr
  store volatile double %acc25, double *%ptr
  store volatile double %acc26, double *%ptr
  store volatile double %acc27, double *%ptr
  store volatile double %acc28, double *%ptr
  store volatile double %acc29, double *%ptr
  store volatile double %acc30, double *%ptr
  store volatile double %acc31, double *%ptr
  ret void
}



define void @f4(double *%ptr) {





  %l0 = load volatile double, double *%ptr
  %l1 = load volatile double, double *%ptr
  %l2 = load volatile double, double *%ptr
  %l3 = load volatile double, double *%ptr
  %l4 = load volatile double, double *%ptr
  %l5 = load volatile double, double *%ptr
  %l6 = load volatile double, double *%ptr
  %l7 = load volatile double, double *%ptr
  %l16 = load volatile double, double *%ptr
  %l17 = load volatile double, double *%ptr
  %l18 = load volatile double, double *%ptr
  %l19 = load volatile double, double *%ptr
  %l20 = load volatile double, double *%ptr
  %l21 = load volatile double, double *%ptr
  %l22 = load volatile double, double *%ptr
  %l23 = load volatile double, double *%ptr
  %l24 = load volatile double, double *%ptr
  %l25 = load volatile double, double *%ptr
  %l26 = load volatile double, double *%ptr
  %l27 = load volatile double, double *%ptr
  %l28 = load volatile double, double *%ptr
  %l29 = load volatile double, double *%ptr
  %l30 = load volatile double, double *%ptr
  %l31 = load volatile double, double *%ptr
  %acc0 = fsub double %l0, %l0
  %acc1 = fsub double %l1, %acc0
  %acc2 = fsub double %l2, %acc1
  %acc3 = fsub double %l3, %acc2
  %acc4 = fsub double %l4, %acc3
  %acc5 = fsub double %l5, %acc4
  %acc6 = fsub double %l6, %acc5
  %acc7 = fsub double %l7, %acc6
  %acc16 = fsub double %l16, %acc7
  %acc17 = fsub double %l17, %acc16
  %acc18 = fsub double %l18, %acc17
  %acc19 = fsub double %l19, %acc18
  %acc20 = fsub double %l20, %acc19
  %acc21 = fsub double %l21, %acc20
  %acc22 = fsub double %l22, %acc21
  %acc23 = fsub double %l23, %acc22
  %acc24 = fsub double %l24, %acc23
  %acc25 = fsub double %l25, %acc24
  %acc26 = fsub double %l26, %acc25
  %acc27 = fsub double %l27, %acc26
  %acc28 = fsub double %l28, %acc27
  %acc29 = fsub double %l29, %acc28
  %acc30 = fsub double %l30, %acc29
  %acc31 = fsub double %l31, %acc30
  store volatile double %acc0, double *%ptr
  store volatile double %acc1, double *%ptr
  store volatile double %acc2, double *%ptr
  store volatile double %acc3, double *%ptr
  store volatile double %acc4, double *%ptr
  store volatile double %acc5, double *%ptr
  store volatile double %acc6, double *%ptr
  store volatile double %acc7, double *%ptr
  store volatile double %acc16, double *%ptr
  store volatile double %acc17, double *%ptr
  store volatile double %acc18, double *%ptr
  store volatile double %acc19, double *%ptr
  store volatile double %acc20, double *%ptr
  store volatile double %acc21, double *%ptr
  store volatile double %acc22, double *%ptr
  store volatile double %acc23, double *%ptr
  store volatile double %acc24, double *%ptr
  store volatile double %acc25, double *%ptr
  store volatile double %acc26, double *%ptr
  store volatile double %acc27, double *%ptr
  store volatile double %acc28, double *%ptr
  store volatile double %acc29, double *%ptr
  store volatile double %acc30, double *%ptr
  store volatile double %acc31, double *%ptr
  ret void
}
