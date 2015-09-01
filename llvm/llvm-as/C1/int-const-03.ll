




define void @f1(i8 *%ptr) {



  store i8 0, i8 *%ptr
  ret void
}


define void @f2(i8 *%ptr) {



  store i8 127, i8 *%ptr
  ret void
}


define void @f3(i8 *%ptr) {



  store i8 -128, i8 *%ptr
  ret void
}


define void @f4(i8 *%ptr) {



  store i8 255, i8 *%ptr
  ret void
}


define void @f5(i8 *%ptr) {



  store i8 -1, i8 *%ptr
  ret void
}


define void @f6(i8 *%ptr) {



  store i8 -128, i8 *%ptr
  ret void
}


define void @f7(i8 *%ptr) {



  store i8 -129, i8 *%ptr
  ret void
}


define void @f8(i8 *%src) {



  %ptr = getelementptr i8, i8 *%src, i64 4095
  store i8 42, i8 *%ptr
  ret void
}


define void @f9(i8 *%src) {



  %ptr = getelementptr i8, i8 *%src, i64 4096
  store i8 42, i8 *%ptr
  ret void
}


define void @f10(i8 *%src) {



  %ptr = getelementptr i8, i8 *%src, i64 524287
  store i8 42, i8 *%ptr
  ret void
}



define void @f11(i8 *%src) {




  %ptr = getelementptr i8, i8 *%src, i64 524288
  store i8 42, i8 *%ptr
  ret void
}


define void @f12(i8 *%src) {



  %ptr = getelementptr i8, i8 *%src, i64 -1
  store i8 42, i8 *%ptr
  ret void
}


define void @f13(i8 *%src) {



  %ptr = getelementptr i8, i8 *%src, i64 -524288
  store i8 42, i8 *%ptr
  ret void
}



define void @f14(i8 *%src) {




  %ptr = getelementptr i8, i8 *%src, i64 -524289
  store i8 42, i8 *%ptr
  ret void
}


define void @f15(i64 %src, i64 %index) {




  %add1 = add i64 %src, %index
  %add2 = add i64 %add1, 4095
  %ptr = inttoptr i64 %add2 to i8 *
  store i8 42, i8 *%ptr
  ret void
}


define void @f16(i64 %src, i64 %index) {




  %add1 = add i64 %src, %index
  %add2 = add i64 %add1, 4096
  %ptr = inttoptr i64 %add2 to i8 *
  store i8 42, i8 *%ptr
  ret void
}
