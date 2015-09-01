




define i32 @f1(i32 %a) {



  %byte = trunc i32 %a to i8
  %ext = sext i8 %byte to i32
  ret i32 %ext
}


define i32 @f2(i64 %a) {



  %byte = trunc i64 %a to i8
  %ext = sext i8 %byte to i32
  ret i32 %ext
}


define i32 @f3(i8 *%src) {



  %byte = load i8 , i8 *%src
  %ext = sext i8 %byte to i32
  ret i32 %ext
}


define i32 @f4(i8 *%src) {



  %ptr = getelementptr i8, i8 *%src, i64 524287
  %byte = load i8 , i8 *%ptr
  %ext = sext i8 %byte to i32
  ret i32 %ext
}



define i32 @f5(i8 *%src) {




  %ptr = getelementptr i8, i8 *%src, i64 524288
  %byte = load i8 , i8 *%ptr
  %ext = sext i8 %byte to i32
  ret i32 %ext
}


define i32 @f6(i8 *%src) {



  %ptr = getelementptr i8, i8 *%src, i64 -1
  %byte = load i8 , i8 *%ptr
  %ext = sext i8 %byte to i32
  ret i32 %ext
}


define i32 @f7(i8 *%src) {



  %ptr = getelementptr i8, i8 *%src, i64 -524288
  %byte = load i8 , i8 *%ptr
  %ext = sext i8 %byte to i32
  ret i32 %ext
}



define i32 @f8(i8 *%src) {




  %ptr = getelementptr i8, i8 *%src, i64 -524289
  %byte = load i8 , i8 *%ptr
  %ext = sext i8 %byte to i32
  ret i32 %ext
}


define i32 @f9(i64 %src, i64 %index) {



  %add1 = add i64 %src, %index
  %add2 = add i64 %add1, 524287
  %ptr = inttoptr i64 %add2 to i8 *
  %byte = load i8 , i8 *%ptr
  %ext = sext i8 %byte to i32
  ret i32 %ext
}



define void @f10(i32 *%ptr) {



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

  %trunc0 = trunc i32 %val0 to i8
  %trunc1 = trunc i32 %val1 to i8
  %trunc2 = trunc i32 %val2 to i8
  %trunc3 = trunc i32 %val3 to i8
  %trunc4 = trunc i32 %val4 to i8
  %trunc5 = trunc i32 %val5 to i8
  %trunc6 = trunc i32 %val6 to i8
  %trunc7 = trunc i32 %val7 to i8
  %trunc8 = trunc i32 %val8 to i8
  %trunc9 = trunc i32 %val9 to i8
  %trunc10 = trunc i32 %val10 to i8
  %trunc11 = trunc i32 %val11 to i8
  %trunc12 = trunc i32 %val12 to i8
  %trunc13 = trunc i32 %val13 to i8
  %trunc14 = trunc i32 %val14 to i8
  %trunc15 = trunc i32 %val15 to i8

  %ext0 = sext i8 %trunc0 to i32
  %ext1 = sext i8 %trunc1 to i32
  %ext2 = sext i8 %trunc2 to i32
  %ext3 = sext i8 %trunc3 to i32
  %ext4 = sext i8 %trunc4 to i32
  %ext5 = sext i8 %trunc5 to i32
  %ext6 = sext i8 %trunc6 to i32
  %ext7 = sext i8 %trunc7 to i32
  %ext8 = sext i8 %trunc8 to i32
  %ext9 = sext i8 %trunc9 to i32
  %ext10 = sext i8 %trunc10 to i32
  %ext11 = sext i8 %trunc11 to i32
  %ext12 = sext i8 %trunc12 to i32
  %ext13 = sext i8 %trunc13 to i32
  %ext14 = sext i8 %trunc14 to i32
  %ext15 = sext i8 %trunc15 to i32

  store volatile i32 %val0, i32 *%ptr
  store volatile i32 %val1, i32 *%ptr
  store volatile i32 %val2, i32 *%ptr
  store volatile i32 %val3, i32 *%ptr
  store volatile i32 %val4, i32 *%ptr
  store volatile i32 %val5, i32 *%ptr
  store volatile i32 %val6, i32 *%ptr
  store volatile i32 %val7, i32 *%ptr
  store volatile i32 %val8, i32 *%ptr
  store volatile i32 %val9, i32 *%ptr
  store volatile i32 %val10, i32 *%ptr
  store volatile i32 %val11, i32 *%ptr
  store volatile i32 %val12, i32 *%ptr
  store volatile i32 %val13, i32 *%ptr
  store volatile i32 %val14, i32 *%ptr
  store volatile i32 %val15, i32 *%ptr

  store volatile i32 %ext0, i32 *%ptr
  store volatile i32 %ext1, i32 *%ptr
  store volatile i32 %ext2, i32 *%ptr
  store volatile i32 %ext3, i32 *%ptr
  store volatile i32 %ext4, i32 *%ptr
  store volatile i32 %ext5, i32 *%ptr
  store volatile i32 %ext6, i32 *%ptr
  store volatile i32 %ext7, i32 *%ptr
  store volatile i32 %ext8, i32 *%ptr
  store volatile i32 %ext9, i32 *%ptr
  store volatile i32 %ext10, i32 *%ptr
  store volatile i32 %ext11, i32 *%ptr
  store volatile i32 %ext12, i32 *%ptr
  store volatile i32 %ext13, i32 *%ptr
  store volatile i32 %ext14, i32 *%ptr
  store volatile i32 %ext15, i32 *%ptr

  ret void
}
