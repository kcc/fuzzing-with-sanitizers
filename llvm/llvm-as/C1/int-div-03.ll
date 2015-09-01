




declare i64 @foo()


define void @f1(i64 %dummy, i64 %a, i32 %b, i64 *%dest) {





  %bext = sext i32 %b to i64
  %div = sdiv i64 %a, %bext
  store i64 %div, i64 *%dest
  ret void
}


define void @f2(i64 %dummy, i64 %a, i32 %b, i64 *%dest) {





  %bext = sext i32 %b to i64
  %rem = srem i64 %a, %bext
  store i64 %rem, i64 *%dest
  ret void
}


define i64 @f3(i64 %dummy, i64 %a, i32 %b) {





  %bext = sext i32 %b to i64
  %div = sdiv i64 %a, %bext
  %rem = srem i64 %a, %bext
  %or = or i64 %rem, %div
  ret i64 %or
}



define void @f4(i64 %dummy, i64 %a, i32 %b, i64 *%dest) {



  %bext = zext i32 %b to i64
  %div = sdiv i64 %a, %bext
  store i64 %div, i64 *%dest
  ret void
}


define void @f5(i64 %dummy, i64 %a, i32 %b, i64 *%dest) {



  %bext = zext i32 %b to i64
  %rem = srem i64 %a, %bext
  store i64 %rem, i64 *%dest
  ret void
}


define void @f6(i64 %dummy, i64 %a, i32 *%src, i64 *%dest) {





  %b = load i32 , i32 *%src
  %bext = sext i32 %b to i64
  %div = sdiv i64 %a, %bext
  store i64 %div, i64 *%dest
  ret void
}


define void @f7(i64 %dummy, i64 %a, i32 *%src, i64 *%dest) {





  %b = load i32 , i32 *%src
  %bext = sext i32 %b to i64
  %rem = srem i64 %a, %bext
  store i64 %rem, i64 *%dest
  ret void
}


define i64 @f8(i64 %dummy, i64 %a, i32 *%src) {






  %b = load i32 , i32 *%src
  %bext = sext i32 %b to i64
  %div = sdiv i64 %a, %bext
  %rem = srem i64 %a, %bext
  %or = or i64 %rem, %div
  ret i64 %or
}


define i64 @f9(i64 %dummy, i64 %a, i32 *%src) {



  %ptr = getelementptr i32, i32 *%src, i64 131071
  %b = load i32 , i32 *%ptr
  %bext = sext i32 %b to i64
  %rem = srem i64 %a, %bext
  ret i64 %rem
}



define i64 @f10(i64 %dummy, i64 %a, i32 *%src) {




  %ptr = getelementptr i32, i32 *%src, i64 131072
  %b = load i32 , i32 *%ptr
  %bext = sext i32 %b to i64
  %rem = srem i64 %a, %bext
  ret i64 %rem
}


define i64 @f11(i64 %dummy, i64 %a, i32 *%src) {



  %ptr = getelementptr i32, i32 *%src, i64 -1
  %b = load i32 , i32 *%ptr
  %bext = sext i32 %b to i64
  %rem = srem i64 %a, %bext
  ret i64 %rem
}


define i64 @f12(i64 %dummy, i64 %a, i32 *%src) {



  %ptr = getelementptr i32, i32 *%src, i64 -131072
  %b = load i32 , i32 *%ptr
  %bext = sext i32 %b to i64
  %rem = srem i64 %a, %bext
  ret i64 %rem
}



define i64 @f13(i64 %dummy, i64 %a, i32 *%src) {




  %ptr = getelementptr i32, i32 *%src, i64 -131073
  %b = load i32 , i32 *%ptr
  %bext = sext i32 %b to i64
  %rem = srem i64 %a, %bext
  ret i64 %rem
}


define i64 @f14(i64 %dummy, i64 %a, i64 %src, i64 %index) {



  %add1 = add i64 %src, %index
  %add2 = add i64 %add1, 524287
  %ptr = inttoptr i64 %add2 to i32 *
  %b = load i32 , i32 *%ptr
  %bext = sext i32 %b to i64
  %rem = srem i64 %a, %bext
  ret i64 %rem
}



define void @f15(i64 *%dest, i32 *%src) {






  %b = load i32 , i32 *%src
  %a = call i64 @foo()
  %ext = sext i32 %b to i64
  %div = sdiv i64 %a, %ext
  store i64 %div, i64 *%dest
  ret void
}
