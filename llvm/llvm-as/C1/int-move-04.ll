




define void @f1(i8 *%dst, i8 %val) {



  store i8 %val, i8 *%dst
  ret void
}


define void @f2(i8 *%dst, i32 %val) {



  %trunc = trunc i32 %val to i8
  store i8 %trunc, i8 *%dst
  ret void
}


define void @f3(i8 *%dst, i64 %val) {



  %trunc = trunc i64 %val to i8
  store i8 %trunc, i8 *%dst
  ret void
}


define void @f4(i8 *%dst, i8 %val) {



  %ptr = getelementptr i8, i8 *%dst, i64 4095
  store i8 %val, i8 *%ptr
  ret void
}


define void @f5(i8 *%dst, i8 %val) {



  %ptr = getelementptr i8, i8 *%dst, i64 4096
  store i8 %val, i8 *%ptr
  ret void
}


define void @f6(i8 *%dst, i8 %val) {



  %ptr = getelementptr i8, i8 *%dst, i64 524287
  store i8 %val, i8 *%ptr
  ret void
}



define void @f7(i8 *%dst, i8 %val) {




  %ptr = getelementptr i8, i8 *%dst, i64 524288
  store i8 %val, i8 *%ptr
  ret void
}


define void @f8(i8 *%dst, i8 %val) {



  %ptr = getelementptr i8, i8 *%dst, i64 -1
  store i8 %val, i8 *%ptr
  ret void
}


define void @f9(i8 *%dst, i8 %val) {



  %ptr = getelementptr i8, i8 *%dst, i64 -524288
  store i8 %val, i8 *%ptr
  ret void
}



define void @f10(i8 *%dst, i8 %val) {




  %ptr = getelementptr i8, i8 *%dst, i64 -524289
  store i8 %val, i8 *%ptr
  ret void
}


define void @f11(i64 %dst, i64 %index, i8 %val) {



  %add1 = add i64 %dst, %index
  %add2 = add i64 %add1, 4095
  %ptr = inttoptr i64 %add2 to i8 *
  store i8 %val, i8 *%ptr
  ret void
}


define void @f12(i64 %dst, i64 %index, i8 %val) {



  %add1 = add i64 %dst, %index
  %add2 = add i64 %add1, 4096
  %ptr = inttoptr i64 %add2 to i8 *
  store i8 %val, i8 *%ptr
  ret void
}
