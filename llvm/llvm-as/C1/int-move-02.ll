




define i32 @f1(i32 *%src) {



  %val = load i32 , i32 *%src
  ret i32 %val
}


define i32 @f2(i32 *%src) {



  %ptr = getelementptr i32, i32 *%src, i64 1023
  %val = load i32 , i32 *%ptr
  ret i32 %val
}


define i32 @f3(i32 *%src) {



  %ptr = getelementptr i32, i32 *%src, i64 1024
  %val = load i32 , i32 *%ptr
  ret i32 %val
}


define i32 @f4(i32 *%src) {



  %ptr = getelementptr i32, i32 *%src, i64 131071
  %val = load i32 , i32 *%ptr
  ret i32 %val
}



define i32 @f5(i32 *%src) {




  %ptr = getelementptr i32, i32 *%src, i64 131072
  %val = load i32 , i32 *%ptr
  ret i32 %val
}


define i32 @f6(i32 *%src) {



  %ptr = getelementptr i32, i32 *%src, i64 -1
  %val = load i32 , i32 *%ptr
  ret i32 %val
}


define i32 @f7(i32 *%src) {



  %ptr = getelementptr i32, i32 *%src, i64 -131072
  %val = load i32 , i32 *%ptr
  ret i32 %val
}



define i32 @f8(i32 *%src) {




  %ptr = getelementptr i32, i32 *%src, i64 -131073
  %val = load i32 , i32 *%ptr
  ret i32 %val
}


define i32 @f9(i64 %src, i64 %index) {



  %add1 = add i64 %src, %index
  %add2 = add i64 %add1, 4095
  %ptr = inttoptr i64 %add2 to i32 *
  %val = load i32 , i32 *%ptr
  ret i32 %val
}


define i32 @f10(i64 %src, i64 %index) {



  %add1 = add i64 %src, %index
  %add2 = add i64 %add1, 4096
  %ptr = inttoptr i64 %add2 to i32 *
  %val = load i32 , i32 *%ptr
  ret i32 %val
}
