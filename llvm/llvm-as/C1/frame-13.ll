

























define void @f1() {







  %region1 = alloca [978 x i32], align 8
  %region2 = alloca [978 x i32], align 8
  %ptr1 = getelementptr inbounds [978 x i32], [978 x i32]* %region1, i64 0, i64 1
  %ptr2 = getelementptr inbounds [978 x i32], [978 x i32]* %region2, i64 0, i64 1
  store volatile i32 42, i32 *%ptr1
  store volatile i32 42, i32 *%ptr2
  ret void
}


define void @f2() {









  %region1 = alloca [978 x i32], align 8
  %region2 = alloca [978 x i32], align 8
  %ptr1 = getelementptr inbounds [978 x i32], [978 x i32]* %region1, i64 0, i64 2
  %ptr2 = getelementptr inbounds [978 x i32], [978 x i32]* %region2, i64 0, i64 2
  store volatile i32 42, i32 *%ptr1
  store volatile i32 42, i32 *%ptr2
  ret void
}


define void @f3() {









  %region1 = alloca [978 x i32], align 8
  %region2 = alloca [978 x i32], align 8
  %ptr1 = getelementptr inbounds [978 x i32], [978 x i32]* %region1, i64 0, i64 3
  %ptr2 = getelementptr inbounds [978 x i32], [978 x i32]* %region2, i64 0, i64 3
  store volatile i32 42, i32 *%ptr1
  store volatile i32 42, i32 *%ptr2
  ret void
}


define void @f4() {









  %region1 = alloca [2002 x i32], align 8
  %region2 = alloca [2002 x i32], align 8
  %ptr1 = getelementptr inbounds [2002 x i32], [2002 x i32]* %region1, i64 0, i64 1
  %ptr2 = getelementptr inbounds [2002 x i32], [2002 x i32]* %region2, i64 0, i64 1
  store volatile i32 42, i32 *%ptr1
  store volatile i32 42, i32 *%ptr2
  ret void
}


define void @f5() {









  %region1 = alloca [2002 x i32], align 8
  %region2 = alloca [2002 x i32], align 8
  %ptr1 = getelementptr inbounds [2002 x i32], [2002 x i32]* %region1, i64 0, i64 2
  %ptr2 = getelementptr inbounds [2002 x i32], [2002 x i32]* %region2, i64 0, i64 2
  store volatile i32 42, i32 *%ptr1
  store volatile i32 42, i32 *%ptr2
  ret void
}


define void @f6() {









  %region1 = alloca [2002 x i32], align 8
  %region2 = alloca [2002 x i32], align 8
  %ptr1 = getelementptr inbounds [2002 x i32], [2002 x i32]* %region1, i64 0, i64 3
  %ptr2 = getelementptr inbounds [2002 x i32], [2002 x i32]* %region2, i64 0, i64 3
  store volatile i32 42, i32 *%ptr1
  store volatile i32 42, i32 *%ptr2
  ret void
}




define void @f7() {









  %region1 = alloca [2004 x i32], align 8
  %region2 = alloca [2004 x i32], align 8
  %ptr1 = getelementptr inbounds [2004 x i32], [2004 x i32]* %region1, i64 0, i64 1023
  %ptr2 = getelementptr inbounds [2004 x i32], [2004 x i32]* %region2, i64 0, i64 1023
  store volatile i32 42, i32 *%ptr1
  store volatile i32 42, i32 *%ptr2
  ret void
}



define void @f8() {









  %region1 = alloca [2006 x i32], align 8
  %region2 = alloca [2006 x i32], align 8
  %ptr1 = getelementptr inbounds [2006 x i32], [2006 x i32]* %region1, i64 0, i64 1023
  %ptr2 = getelementptr inbounds [2006 x i32], [2006 x i32]* %region2, i64 0, i64 1023
  store volatile i32 42, i32 *%ptr1
  store volatile i32 42, i32 *%ptr2
  ret void
}



define void @f9() {









  %region1 = alloca [2006 x i32], align 8
  %region2 = alloca [2006 x i32], align 8
  %ptr1 = getelementptr inbounds [2006 x i32], [2006 x i32]* %region1, i64 0, i64 1024
  %ptr2 = getelementptr inbounds [2006 x i32], [2006 x i32]* %region2, i64 0, i64 1024
  store volatile i32 42, i32 *%ptr1
  store volatile i32 42, i32 *%ptr2
  ret void
}




define void @f10(i32 *%vptr) {













  %i0 = load volatile i32 , i32 *%vptr
  %i1 = load volatile i32 , i32 *%vptr
  %i3 = load volatile i32 , i32 *%vptr
  %i4 = load volatile i32 , i32 *%vptr
  %i5 = load volatile i32 , i32 *%vptr
  %region1 = alloca [978 x i32], align 8
  %region2 = alloca [978 x i32], align 8
  %ptr1 = getelementptr inbounds [978 x i32], [978 x i32]* %region1, i64 0, i64 2
  %ptr2 = getelementptr inbounds [978 x i32], [978 x i32]* %region2, i64 0, i64 2
  store volatile i32 42, i32 *%ptr1
  store volatile i32 42, i32 *%ptr2
  store volatile i32 %i0, i32 *%vptr
  store volatile i32 %i1, i32 *%vptr
  store volatile i32 %i3, i32 *%vptr
  store volatile i32 %i4, i32 *%vptr
  store volatile i32 %i5, i32 *%vptr
  ret void
}





define void @f11(i32 *%vptr) {








  %i0 = load volatile i32 , i32 *%vptr
  %i1 = load volatile i32 , i32 *%vptr
  %i3 = load volatile i32 , i32 *%vptr
  %i4 = load volatile i32 , i32 *%vptr
  %i5 = load volatile i32 , i32 *%vptr
  %i6 = load volatile i32 , i32 *%vptr
  %i7 = load volatile i32 , i32 *%vptr
  %i8 = load volatile i32 , i32 *%vptr
  %i9 = load volatile i32 , i32 *%vptr
  %i10 = load volatile i32 , i32 *%vptr
  %i11 = load volatile i32 , i32 *%vptr
  %i12 = load volatile i32 , i32 *%vptr
  %i13 = load volatile i32 , i32 *%vptr
  %i14 = load volatile i32 , i32 *%vptr
  %region1 = alloca [978 x i32], align 8
  %region2 = alloca [978 x i32], align 8
  %ptr1 = getelementptr inbounds [978 x i32], [978 x i32]* %region1, i64 0, i64 2
  %ptr2 = getelementptr inbounds [978 x i32], [978 x i32]* %region2, i64 0, i64 2
  store volatile i32 42, i32 *%ptr1
  store volatile i32 42, i32 *%ptr2
  store volatile i32 %i0, i32 *%vptr
  store volatile i32 %i1, i32 *%vptr
  store volatile i32 %i3, i32 *%vptr
  store volatile i32 %i4, i32 *%vptr
  store volatile i32 %i5, i32 *%vptr
  store volatile i32 %i6, i32 *%vptr
  store volatile i32 %i7, i32 *%vptr
  store volatile i32 %i8, i32 *%vptr
  store volatile i32 %i9, i32 *%vptr
  store volatile i32 %i10, i32 *%vptr
  store volatile i32 %i11, i32 *%vptr
  store volatile i32 %i12, i32 *%vptr
  store volatile i32 %i13, i32 *%vptr
  store volatile i32 %i14, i32 *%vptr
  ret void
}
