




define i64 @f1(i64 *%src) {



  %val = load i64 , i64 *%src
  ret i64 %val
}


define i64 @f2(i64 *%src) {



  %ptr = getelementptr i64, i64 *%src, i64 65535
  %val = load i64 , i64 *%ptr
  ret i64 %val
}



define i64 @f3(i64 *%src) {




  %ptr = getelementptr i64, i64 *%src, i64 65536
  %val = load i64 , i64 *%ptr
  ret i64 %val
}


define i64 @f4(i64 *%src) {



  %ptr = getelementptr i64, i64 *%src, i64 -1
  %val = load i64 , i64 *%ptr
  ret i64 %val
}


define i64 @f5(i64 *%src) {



  %ptr = getelementptr i64, i64 *%src, i64 -65536
  %val = load i64 , i64 *%ptr
  ret i64 %val
}



define i64 @f6(i64 *%src) {




  %ptr = getelementptr i64, i64 *%src, i64 -65537
  %val = load i64 , i64 *%ptr
  ret i64 %val
}


define i64 @f7(i64 %src, i64 %index) {



  %add1 = add i64 %src, %index
  %add2 = add i64 %add1, 524287
  %ptr = inttoptr i64 %add2 to i64 *
  %val = load i64 , i64 *%ptr
  ret i64 %val
}
