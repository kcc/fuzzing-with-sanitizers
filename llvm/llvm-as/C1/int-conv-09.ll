




define i64 @f1(i32 %a) {



  %ext = sext i32 %a to i64
  ret i64 %ext
}


define i64 @f2(i64 %a) {



  %word = trunc i64 %a to i32
  %ext = sext i32 %word to i64
  ret i64 %ext
}


define i64 @f3(i32 *%src) {



  %word = load i32 , i32 *%src
  %ext = sext i32 %word to i64
  ret i64 %ext
}


define i64 @f4(i32 *%src) {



  %ptr = getelementptr i32, i32 *%src, i64 131071
  %word = load i32 , i32 *%ptr
  %ext = sext i32 %word to i64
  ret i64 %ext
}



define i64 @f5(i32 *%src) {




  %ptr = getelementptr i32, i32 *%src, i64 131072
  %word = load i32 , i32 *%ptr
  %ext = sext i32 %word to i64
  ret i64 %ext
}


define i64 @f6(i32 *%src) {



  %ptr = getelementptr i32, i32 *%src, i64 -1
  %word = load i32 , i32 *%ptr
  %ext = sext i32 %word to i64
  ret i64 %ext
}


define i64 @f7(i32 *%src) {



  %ptr = getelementptr i32, i32 *%src, i64 -131072
  %word = load i32 , i32 *%ptr
  %ext = sext i32 %word to i64
  ret i64 %ext
}



define i64 @f8(i32 *%src) {




  %ptr = getelementptr i32, i32 *%src, i64 -131073
  %word = load i32 , i32 *%ptr
  %ext = sext i32 %word to i64
  ret i64 %ext
}


define i64 @f9(i64 %src, i64 %index) {



  %add1 = add i64 %src, %index
  %add2 = add i64 %add1, 524287
  %ptr = inttoptr i64 %add2 to i32 *
  %word = load i32 , i32 *%ptr
  %ext = sext i32 %word to i64
  ret i64 %ext
}
