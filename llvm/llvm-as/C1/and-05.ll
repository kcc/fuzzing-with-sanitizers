




define void @f1(i8 *%ptr) {



  %val = load i8 , i8 *%ptr
  %and = and i8 %val, -255
  store i8 %and, i8 *%ptr
  ret void
}


define void @f2(i8 *%ptr) {



  %val = load i8 , i8 *%ptr
  %and = and i8 %val, -2
  store i8 %and, i8 *%ptr
  ret void
}


define void @f3(i8 *%ptr) {



  %val = load i8 , i8 *%ptr
  %and = and i8 %val, 1
  store i8 %and, i8 *%ptr
  ret void
}


define void @f4(i8 *%ptr) {



  %val = load i8 , i8 *%ptr
  %and = and i8 %val, 254
  store i8 %and, i8 *%ptr
  ret void
}


define void @f5(i8 *%src) {



  %ptr = getelementptr i8, i8 *%src, i64 4095
  %val = load i8 , i8 *%ptr
  %and = and i8 %val, 127
  store i8 %and, i8 *%ptr
  ret void
}


define void @f6(i8 *%src) {



  %ptr = getelementptr i8, i8 *%src, i64 4096
  %val = load i8 , i8 *%ptr
  %and = and i8 %val, 127
  store i8 %and, i8 *%ptr
  ret void
}


define void @f7(i8 *%src) {



  %ptr = getelementptr i8, i8 *%src, i64 524287
  %val = load i8 , i8 *%ptr
  %and = and i8 %val, 127
  store i8 %and, i8 *%ptr
  ret void
}



define void @f8(i8 *%src) {




  %ptr = getelementptr i8, i8 *%src, i64 524288
  %val = load i8 , i8 *%ptr
  %and = and i8 %val, 127
  store i8 %and, i8 *%ptr
  ret void
}


define void @f9(i8 *%src) {



  %ptr = getelementptr i8, i8 *%src, i64 -1
  %val = load i8 , i8 *%ptr
  %and = and i8 %val, 127
  store i8 %and, i8 *%ptr
  ret void
}


define void @f10(i8 *%src) {



  %ptr = getelementptr i8, i8 *%src, i64 -524288
  %val = load i8 , i8 *%ptr
  %and = and i8 %val, 127
  store i8 %and, i8 *%ptr
  ret void
}



define void @f11(i8 *%src) {




  %ptr = getelementptr i8, i8 *%src, i64 -524289
  %val = load i8 , i8 *%ptr
  %and = and i8 %val, 127
  store i8 %and, i8 *%ptr
  ret void
}


define void @f12(i64 %src, i64 %index) {




  %add1 = add i64 %src, %index
  %add2 = add i64 %add1, 4095
  %ptr = inttoptr i64 %add2 to i8 *
  %val = load i8 , i8 *%ptr
  %and = and i8 %val, 127
  store i8 %and, i8 *%ptr
  ret void
}


define void @f13(i64 %src, i64 %index) {




  %add1 = add i64 %src, %index
  %add2 = add i64 %add1, 4096
  %ptr = inttoptr i64 %add2 to i8 *
  %val = load i8 , i8 *%ptr
  %and = and i8 %val, 127
  store i8 %and, i8 *%ptr
  ret void
}
