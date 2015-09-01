







define void @f1(i32 *%ptr, i64 %x) {


















  %l0 = load volatile i32 , i32 *%ptr
  %l1 = load volatile i32 , i32 *%ptr
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
  %add0 = add i32 %l0, %l0
  %add1 = add i32 %l1, %add0
  %add4 = add i32 %l4, %add1
  %add5 = add i32 %l5, %add4
  %add6 = add i32 %l6, %add5
  %add7 = add i32 %l7, %add6
  %add8 = add i32 %l8, %add7
  %add9 = add i32 %l9, %add8
  %add10 = add i32 %l10, %add9
  %add11 = add i32 %l11, %add10
  %add12 = add i32 %l12, %add11
  %add13 = add i32 %l13, %add12
  %add14 = add i32 %l14, %add13
  store volatile i32 %add0, i32 *%ptr
  store volatile i32 %add1, i32 *%ptr
  store volatile i32 %add4, i32 *%ptr
  store volatile i32 %add5, i32 *%ptr
  store volatile i32 %add6, i32 *%ptr
  store volatile i32 %add7, i32 *%ptr
  store volatile i32 %add8, i32 *%ptr
  store volatile i32 %add9, i32 *%ptr
  store volatile i32 %add10, i32 *%ptr
  store volatile i32 %add11, i32 *%ptr
  store volatile i32 %add12, i32 *%ptr
  store volatile i32 %add13, i32 *%ptr
  store volatile i32 %add14, i32 *%ptr
  %y = alloca [65507 x i64], align 8
  %entry = getelementptr inbounds [65507 x i64], [65507 x i64]* %y, i64 0, i64 0
  store volatile i64 %x, i64* %entry
  ret void
}





define void @f2(i32 *%ptr, i64 %x) {










  %l0 = load volatile i32 , i32 *%ptr
  %l1 = load volatile i32 , i32 *%ptr
  %l4 = load volatile i32 , i32 *%ptr
  %l5 = load volatile i32 , i32 *%ptr
  %l14 = load volatile i32 , i32 *%ptr
  %add0 = add i32 %l0, %l0
  %add1 = add i32 %l1, %add0
  %add4 = add i32 %l4, %add1
  %add5 = add i32 %l5, %add4
  %add14 = add i32 %l14, %add5
  store volatile i32 %add0, i32 *%ptr
  store volatile i32 %add1, i32 *%ptr
  store volatile i32 %add4, i32 *%ptr
  store volatile i32 %add5, i32 *%ptr
  store volatile i32 %add14, i32 *%ptr
  %y = alloca [65499 x i64], align 8
  %entry = getelementptr inbounds [65499 x i64], [65499 x i64]* %y, i64 0, i64 0
  store volatile i64 %x, i64* %entry
  ret void
}




define void @f3(i32 *%ptr, i64 %x) {


















  %l0 = load volatile i32 , i32 *%ptr
  %l1 = load volatile i32 , i32 *%ptr
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
  %add0 = add i32 %l0, %l0
  %add1 = add i32 %l1, %add0
  %add4 = add i32 %l4, %add1
  %add5 = add i32 %l5, %add4
  %add6 = add i32 %l6, %add5
  %add7 = add i32 %l7, %add6
  %add8 = add i32 %l8, %add7
  %add9 = add i32 %l9, %add8
  %add10 = add i32 %l10, %add9
  %add11 = add i32 %l11, %add10
  %add12 = add i32 %l12, %add11
  %add13 = add i32 %l13, %add12
  %add14 = add i32 %l14, %add13
  store volatile i32 %add0, i32 *%ptr
  store volatile i32 %add1, i32 *%ptr
  store volatile i32 %add4, i32 *%ptr
  store volatile i32 %add5, i32 *%ptr
  store volatile i32 %add6, i32 *%ptr
  store volatile i32 %add7, i32 *%ptr
  store volatile i32 %add8, i32 *%ptr
  store volatile i32 %add9, i32 *%ptr
  store volatile i32 %add10, i32 *%ptr
  store volatile i32 %add11, i32 *%ptr
  store volatile i32 %add12, i32 *%ptr
  store volatile i32 %add13, i32 *%ptr
  store volatile i32 %add14, i32 *%ptr
  %y = alloca [65508 x i64], align 8
  %entry = getelementptr inbounds [65508 x i64], [65508 x i64]* %y, i64 0, i64 0
  store volatile i64 %x, i64* %entry
  ret void
}




define void @f4(i32 *%ptr, i64 %x) {










  %l0 = load volatile i32 , i32 *%ptr
  %l1 = load volatile i32 , i32 *%ptr
  %l4 = load volatile i32 , i32 *%ptr
  %l5 = load volatile i32 , i32 *%ptr
  %l14 = load volatile i32 , i32 *%ptr
  %add0 = add i32 %l0, %l0
  %add1 = add i32 %l1, %add0
  %add4 = add i32 %l4, %add1
  %add5 = add i32 %l5, %add4
  %add14 = add i32 %l14, %add5
  store volatile i32 %add0, i32 *%ptr
  store volatile i32 %add1, i32 *%ptr
  store volatile i32 %add4, i32 *%ptr
  store volatile i32 %add5, i32 *%ptr
  store volatile i32 %add14, i32 *%ptr
  %y = alloca [65500 x i64], align 8
  %entry = getelementptr inbounds [65500 x i64], [65500 x i64]* %y, i64 0, i64 0
  store volatile i64 %x, i64* %entry
  ret void
}



define void @f5(i32 *%ptr, i64 %x) {










  %l0 = load volatile i32 , i32 *%ptr
  %l1 = load volatile i32 , i32 *%ptr
  %l4 = load volatile i32 , i32 *%ptr
  %l5 = load volatile i32 , i32 *%ptr
  %l14 = load volatile i32 , i32 *%ptr
  %add0 = add i32 %l0, %l0
  %add1 = add i32 %l1, %add0
  %add4 = add i32 %l4, %add1
  %add5 = add i32 %l5, %add4
  %add14 = add i32 %l14, %add5
  store volatile i32 %add0, i32 *%ptr
  store volatile i32 %add1, i32 *%ptr
  store volatile i32 %add4, i32 *%ptr
  store volatile i32 %add5, i32 *%ptr
  store volatile i32 %add14, i32 *%ptr
  %y = alloca [69594 x i64], align 8
  %entry = getelementptr inbounds [69594 x i64], [69594 x i64]* %y, i64 0, i64 0
  store volatile i64 %x, i64* %entry
  ret void
}



define void @f6(i32 *%ptr, i64 %x) {










  %l0 = load volatile i32 , i32 *%ptr
  %l1 = load volatile i32 , i32 *%ptr
  %l4 = load volatile i32 , i32 *%ptr
  %l5 = load volatile i32 , i32 *%ptr
  %l14 = load volatile i32 , i32 *%ptr
  %add0 = add i32 %l0, %l0
  %add1 = add i32 %l1, %add0
  %add4 = add i32 %l4, %add1
  %add5 = add i32 %l5, %add4
  %add14 = add i32 %l14, %add5
  store volatile i32 %add0, i32 *%ptr
  store volatile i32 %add1, i32 *%ptr
  store volatile i32 %add4, i32 *%ptr
  store volatile i32 %add5, i32 *%ptr
  store volatile i32 %add14, i32 *%ptr
  %y = alloca [69595 x i64], align 8
  %entry = getelementptr inbounds [69595 x i64], [69595 x i64]* %y, i64 0, i64 0
  store volatile i64 %x, i64* %entry
  ret void
}
