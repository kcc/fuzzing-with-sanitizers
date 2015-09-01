




define void @f1(i64 *%dst, i64 %val) {



  store i64 %val, i64 *%dst
  ret void
}


define void @f2(i64 *%dst, i64 %val) {



  %ptr = getelementptr i64, i64 *%dst, i64 65535
  store i64 %val, i64 *%ptr
  ret void
}



define void @f3(i64 *%dst, i64 %val) {




  %ptr = getelementptr i64, i64 *%dst, i64 65536
  store i64 %val, i64 *%ptr
  ret void
}


define void @f4(i64 *%dst, i64 %val) {



  %ptr = getelementptr i64, i64 *%dst, i64 -1
  store i64 %val, i64 *%ptr
  ret void
}


define void @f5(i64 *%dst, i64 %val) {



  %ptr = getelementptr i64, i64 *%dst, i64 -65536
  store i64 %val, i64 *%ptr
  ret void
}



define void @f6(i64 *%dst, i64 %val) {




  %ptr = getelementptr i64, i64 *%dst, i64 -65537
  store i64 %val, i64 *%ptr
  ret void
}


define void @f7(i64 %dst, i64 %index, i64 %val) {



  %add1 = add i64 %dst, %index
  %add2 = add i64 %add1, 524287
  %ptr = inttoptr i64 %add2 to i64 *
  store i64 %val, i64 *%ptr
  ret void
}
