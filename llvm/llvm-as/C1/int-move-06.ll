




define void @f1(i32 *%dst, i32 %val) {



  store i32 %val, i32 *%dst
  ret void
}


define void @f2(i32 *%dst, i64 %val) {
  %word = trunc i64 %val to i32
  store i32 %word, i32 *%dst
  ret void
}


define void @f3(i32 *%dst, i32 %val) {



  %ptr = getelementptr i32, i32 *%dst, i64 1023
  store i32 %val, i32 *%ptr
  ret void
}


define void @f4(i32 *%dst, i32 %val) {



  %ptr = getelementptr i32, i32 *%dst, i64 1024
  store i32 %val, i32 *%ptr
  ret void
}


define void @f5(i32 *%dst, i32 %val) {



  %ptr = getelementptr i32, i32 *%dst, i64 131071
  store i32 %val, i32 *%ptr
  ret void
}



define void @f6(i32 *%dst, i32 %val) {




  %ptr = getelementptr i32, i32 *%dst, i64 131072
  store i32 %val, i32 *%ptr
  ret void
}


define void @f7(i32 *%dst, i32 %val) {



  %ptr = getelementptr i32, i32 *%dst, i64 -1
  store i32 %val, i32 *%ptr
  ret void
}


define void @f8(i32 *%dst, i32 %val) {



  %ptr = getelementptr i32, i32 *%dst, i64 -131072
  store i32 %val, i32 *%ptr
  ret void
}



define void @f9(i32 *%dst, i32 %val) {




  %ptr = getelementptr i32, i32 *%dst, i64 -131073
  store i32 %val, i32 *%ptr
  ret void
}


define void @f10(i64 %dst, i64 %index, i32 %val) {



  %add1 = add i64 %dst, %index
  %add2 = add i64 %add1, 4095
  %ptr = inttoptr i64 %add2 to i32 *
  store i32 %val, i32 *%ptr
  ret void
}


define void @f11(i64 %dst, i64 %index, i32 %val) {



  %add1 = add i64 %dst, %index
  %add2 = add i64 %add1, 4096
  %ptr = inttoptr i64 %add2 to i32 *
  store i32 %val, i32 *%ptr
  ret void
}
