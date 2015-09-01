






define void @f1(i32 *%ptr) {










  %l0 = load volatile i32 , i32 *%ptr
  %l1 = load volatile i32 , i32 *%ptr
  %l3 = load volatile i32 , i32 *%ptr
  %l4 = load volatile i32 , i32 *%ptr
  %l5 = load volatile i32 , i32 *%ptr
  %l6 = load volatile i32 , i32 *%ptr
  %l7 = load volatile i32 , i32 *%ptr
  %l8 = load volatile i32 , i32 *%ptr
  %l9 = load volatile i32 , i32 *%ptr
  %l10 = load volatile i32 , i32 *%ptr
  %l11 = load volatile i32 , i32 *%ptr
  %l12 = load volatile i32 , i32 *%ptr
  %l13 = load volatile i32 , i32 *%ptr
  %l14 = load volatile i32 , i32 *%ptr
  %lx = load volatile i32 , i32 *%ptr
  store volatile i32 %lx, i32 *%ptr
  store volatile i32 %l14, i32 *%ptr
  store volatile i32 %l13, i32 *%ptr
  store volatile i32 %l12, i32 *%ptr
  store volatile i32 %l11, i32 *%ptr
  store volatile i32 %l10, i32 *%ptr
  store volatile i32 %l9, i32 *%ptr
  store volatile i32 %l8, i32 *%ptr
  store volatile i32 %l7, i32 *%ptr
  store volatile i32 %l6, i32 *%ptr
  store volatile i32 %l5, i32 *%ptr
  store volatile i32 %l4, i32 *%ptr
  store volatile i32 %l3, i32 *%ptr
  store volatile i32 %l1, i32 *%ptr
  store volatile i32 %l0, i32 *%ptr
  ret void
}


define void @f2(i64 *%ptr) {







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
  %lx = load volatile i64 , i64 *%ptr
  store volatile i64 %lx, i64 *%ptr
  store volatile i64 %l14, i64 *%ptr
  store volatile i64 %l13, i64 *%ptr
  store volatile i64 %l12, i64 *%ptr
  store volatile i64 %l11, i64 *%ptr
  store volatile i64 %l10, i64 *%ptr
  store volatile i64 %l9, i64 *%ptr
  store volatile i64 %l8, i64 *%ptr
  store volatile i64 %l7, i64 *%ptr
  store volatile i64 %l6, i64 *%ptr
  store volatile i64 %l5, i64 *%ptr
  store volatile i64 %l4, i64 *%ptr
  store volatile i64 %l3, i64 *%ptr
  store volatile i64 %l1, i64 *%ptr
  store volatile i64 %l0, i64 *%ptr
  ret void
}
