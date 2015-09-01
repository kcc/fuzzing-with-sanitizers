




define void @f1(i16 *%dst, i16 %val) {



  store i16 %val, i16 *%dst
  ret void
}


define void @f2(i16 *%dst, i32 %val) {



  %trunc = trunc i32 %val to i16
  store i16 %trunc, i16 *%dst
  ret void
}


define void @f3(i16 *%dst, i64 %val) {



  %trunc = trunc i64 %val to i16
  store i16 %trunc, i16 *%dst
  ret void
}


define void @f4(i16 *%dst, i16 %val) {



  %ptr = getelementptr i16, i16 *%dst, i64 2047
  store i16 %val, i16 *%ptr
  ret void
}


define void @f5(i16 *%dst, i16 %val) {



  %ptr = getelementptr i16, i16 *%dst, i64 2048
  store i16 %val, i16 *%ptr
  ret void
}


define void @f6(i16 *%dst, i16 %val) {



  %ptr = getelementptr i16, i16 *%dst, i64 262143
  store i16 %val, i16 *%ptr
  ret void
}



define void @f7(i16 *%dst, i16 %val) {




  %ptr = getelementptr i16, i16 *%dst, i64 262144
  store i16 %val, i16 *%ptr
  ret void
}


define void @f8(i16 *%dst, i16 %val) {



  %ptr = getelementptr i16, i16 *%dst, i64 -1
  store i16 %val, i16 *%ptr
  ret void
}


define void @f9(i16 *%dst, i16 %val) {



  %ptr = getelementptr i16, i16 *%dst, i64 -262144
  store i16 %val, i16 *%ptr
  ret void
}



define void @f10(i16 *%dst, i16 %val) {




  %ptr = getelementptr i16, i16 *%dst, i64 -262145
  store i16 %val, i16 *%ptr
  ret void
}


define void @f11(i64 %dst, i64 %index, i16 %val) {



  %add1 = add i64 %dst, %index
  %add2 = add i64 %add1, 4094
  %ptr = inttoptr i64 %add2 to i16 *
  store i16 %val, i16 *%ptr
  ret void
}


define void @f12(i64 %dst, i64 %index, i16 %val) {



  %add1 = add i64 %dst, %index
  %add2 = add i64 %add1, 4096
  %ptr = inttoptr i64 %add2 to i16 *
  store i16 %val, i16 *%ptr
  ret void
}
