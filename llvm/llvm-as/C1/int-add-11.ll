





define void @f1(i32 *%ptr) {



  %val = load i32 , i32 *%ptr
  %add = add i32 %val, 127
  store i32 %add, i32 *%ptr
  ret void
}


define void @f2(i32 *%ptr) {



  %val = load i32 , i32 *%ptr
  %add = add i32 %val, 127
  store i32 %add, i32 *%ptr
  ret void
}



define void @f3(i32 *%ptr) {




  %val = load i32 , i32 *%ptr
  %add = add i32 %val, 128
  store i32 %add, i32 *%ptr
  ret void
}


define void @f4(i32 *%ptr) {



  %val = load i32 , i32 *%ptr
  %add = add i32 %val, -128
  store i32 %add, i32 *%ptr
  ret void
}


define void @f5(i32 *%ptr) {




  %val = load i32 , i32 *%ptr
  %add = add i32 %val, -129
  store i32 %add, i32 *%ptr
  ret void
}


define void @f6(i32 *%base) {



  %ptr = getelementptr i32, i32 *%base, i64 131071
  %val = load i32 , i32 *%ptr
  %add = add i32 %val, 1
  store i32 %add, i32 *%ptr
  ret void
}



define void @f7(i32 *%base) {




  %ptr = getelementptr i32, i32 *%base, i64 131072
  %val = load i32 , i32 *%ptr
  %add = add i32 %val, 1
  store i32 %add, i32 *%ptr
  ret void
}


define void @f8(i32 *%base) {



  %ptr = getelementptr i32, i32 *%base, i64 -131072
  %val = load i32 , i32 *%ptr
  %add = add i32 %val, 1
  store i32 %add, i32 *%ptr
  ret void
}



define void @f9(i32 *%base) {




  %ptr = getelementptr i32, i32 *%base, i64 -131073
  %val = load i32 , i32 *%ptr
  %add = add i32 %val, 1
  store i32 %add, i32 *%ptr
  ret void
}


define void @f10(i64 %base, i64 %index) {




  %add1 = add i64 %base, %index
  %add2 = add i64 %add1, 4
  %ptr = inttoptr i64 %add2 to i32 *
  %val = load i32 , i32 *%ptr
  %add = add i32 %val, 1
  store i32 %add, i32 *%ptr
  ret void
}


define void @f11(i32 *%ptr, i32 %sel) {



entry:
  %val0 = load volatile i32 , i32 *%ptr
  %val1 = load volatile i32 , i32 *%ptr
  %val2 = load volatile i32 , i32 *%ptr
  %val3 = load volatile i32 , i32 *%ptr
  %val4 = load volatile i32 , i32 *%ptr
  %val5 = load volatile i32 , i32 *%ptr
  %val6 = load volatile i32 , i32 *%ptr
  %val7 = load volatile i32 , i32 *%ptr
  %val8 = load volatile i32 , i32 *%ptr
  %val9 = load volatile i32 , i32 *%ptr
  %val10 = load volatile i32 , i32 *%ptr
  %val11 = load volatile i32 , i32 *%ptr
  %val12 = load volatile i32 , i32 *%ptr
  %val13 = load volatile i32 , i32 *%ptr
  %val14 = load volatile i32 , i32 *%ptr
  %val15 = load volatile i32 , i32 *%ptr

  %test = icmp ne i32 %sel, 0
  br i1 %test, label %add, label %store

add:
  %add0 = add i32 %val0, 127
  %add1 = add i32 %val1, 127
  %add2 = add i32 %val2, 127
  %add3 = add i32 %val3, 127
  %add4 = add i32 %val4, 127
  %add5 = add i32 %val5, 127
  %add6 = add i32 %val6, 127
  %add7 = add i32 %val7, 127
  %add8 = add i32 %val8, 127
  %add9 = add i32 %val9, 127
  %add10 = add i32 %val10, 127
  %add11 = add i32 %val11, 127
  %add12 = add i32 %val12, 127
  %add13 = add i32 %val13, 127
  %add14 = add i32 %val14, 127
  %add15 = add i32 %val15, 127
  br label %store

store:
  %new0 = phi i32 [ %val0, %entry ], [ %add0, %add ]
  %new1 = phi i32 [ %val1, %entry ], [ %add1, %add ]
  %new2 = phi i32 [ %val2, %entry ], [ %add2, %add ]
  %new3 = phi i32 [ %val3, %entry ], [ %add3, %add ]
  %new4 = phi i32 [ %val4, %entry ], [ %add4, %add ]
  %new5 = phi i32 [ %val5, %entry ], [ %add5, %add ]
  %new6 = phi i32 [ %val6, %entry ], [ %add6, %add ]
  %new7 = phi i32 [ %val7, %entry ], [ %add7, %add ]
  %new8 = phi i32 [ %val8, %entry ], [ %add8, %add ]
  %new9 = phi i32 [ %val9, %entry ], [ %add9, %add ]
  %new10 = phi i32 [ %val10, %entry ], [ %add10, %add ]
  %new11 = phi i32 [ %val11, %entry ], [ %add11, %add ]
  %new12 = phi i32 [ %val12, %entry ], [ %add12, %add ]
  %new13 = phi i32 [ %val13, %entry ], [ %add13, %add ]
  %new14 = phi i32 [ %val14, %entry ], [ %add14, %add ]
  %new15 = phi i32 [ %val15, %entry ], [ %add15, %add ]

  store volatile i32 %new0, i32 *%ptr
  store volatile i32 %new1, i32 *%ptr
  store volatile i32 %new2, i32 *%ptr
  store volatile i32 %new3, i32 *%ptr
  store volatile i32 %new4, i32 *%ptr
  store volatile i32 %new5, i32 *%ptr
  store volatile i32 %new6, i32 *%ptr
  store volatile i32 %new7, i32 *%ptr
  store volatile i32 %new8, i32 *%ptr
  store volatile i32 %new9, i32 *%ptr
  store volatile i32 %new10, i32 *%ptr
  store volatile i32 %new11, i32 *%ptr
  store volatile i32 %new12, i32 *%ptr
  store volatile i32 %new13, i32 *%ptr
  store volatile i32 %new14, i32 *%ptr
  store volatile i32 %new15, i32 *%ptr

  ret void
}


define void @f12(i32 *%ptr, i32 %sel) {



entry:
  %val0 = load volatile i32 , i32 *%ptr
  %val1 = load volatile i32 , i32 *%ptr
  %val2 = load volatile i32 , i32 *%ptr
  %val3 = load volatile i32 , i32 *%ptr
  %val4 = load volatile i32 , i32 *%ptr
  %val5 = load volatile i32 , i32 *%ptr
  %val6 = load volatile i32 , i32 *%ptr
  %val7 = load volatile i32 , i32 *%ptr
  %val8 = load volatile i32 , i32 *%ptr
  %val9 = load volatile i32 , i32 *%ptr
  %val10 = load volatile i32 , i32 *%ptr
  %val11 = load volatile i32 , i32 *%ptr
  %val12 = load volatile i32 , i32 *%ptr
  %val13 = load volatile i32 , i32 *%ptr
  %val14 = load volatile i32 , i32 *%ptr
  %val15 = load volatile i32 , i32 *%ptr

  %test = icmp ne i32 %sel, 0
  br i1 %test, label %add, label %store

add:
  %add0 = add i32 %val0, -128
  %add1 = add i32 %val1, -128
  %add2 = add i32 %val2, -128
  %add3 = add i32 %val3, -128
  %add4 = add i32 %val4, -128
  %add5 = add i32 %val5, -128
  %add6 = add i32 %val6, -128
  %add7 = add i32 %val7, -128
  %add8 = add i32 %val8, -128
  %add9 = add i32 %val9, -128
  %add10 = add i32 %val10, -128
  %add11 = add i32 %val11, -128
  %add12 = add i32 %val12, -128
  %add13 = add i32 %val13, -128
  %add14 = add i32 %val14, -128
  %add15 = add i32 %val15, -128
  br label %store

store:
  %new0 = phi i32 [ %val0, %entry ], [ %add0, %add ]
  %new1 = phi i32 [ %val1, %entry ], [ %add1, %add ]
  %new2 = phi i32 [ %val2, %entry ], [ %add2, %add ]
  %new3 = phi i32 [ %val3, %entry ], [ %add3, %add ]
  %new4 = phi i32 [ %val4, %entry ], [ %add4, %add ]
  %new5 = phi i32 [ %val5, %entry ], [ %add5, %add ]
  %new6 = phi i32 [ %val6, %entry ], [ %add6, %add ]
  %new7 = phi i32 [ %val7, %entry ], [ %add7, %add ]
  %new8 = phi i32 [ %val8, %entry ], [ %add8, %add ]
  %new9 = phi i32 [ %val9, %entry ], [ %add9, %add ]
  %new10 = phi i32 [ %val10, %entry ], [ %add10, %add ]
  %new11 = phi i32 [ %val11, %entry ], [ %add11, %add ]
  %new12 = phi i32 [ %val12, %entry ], [ %add12, %add ]
  %new13 = phi i32 [ %val13, %entry ], [ %add13, %add ]
  %new14 = phi i32 [ %val14, %entry ], [ %add14, %add ]
  %new15 = phi i32 [ %val15, %entry ], [ %add15, %add ]

  store volatile i32 %new0, i32 *%ptr
  store volatile i32 %new1, i32 *%ptr
  store volatile i32 %new2, i32 *%ptr
  store volatile i32 %new3, i32 *%ptr
  store volatile i32 %new4, i32 *%ptr
  store volatile i32 %new5, i32 *%ptr
  store volatile i32 %new6, i32 *%ptr
  store volatile i32 %new7, i32 *%ptr
  store volatile i32 %new8, i32 *%ptr
  store volatile i32 %new9, i32 *%ptr
  store volatile i32 %new10, i32 *%ptr
  store volatile i32 %new11, i32 *%ptr
  store volatile i32 %new12, i32 *%ptr
  store volatile i32 %new13, i32 *%ptr
  store volatile i32 %new14, i32 *%ptr
  store volatile i32 %new15, i32 *%ptr

  ret void
}
