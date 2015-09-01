





define i32 @f1(i32 %lhs, i16 *%src) {



  %half = load i16 , i16 *%src
  %rhs = sext i16 %half to i32
  %res = mul i32 %lhs, %rhs
  ret i32 %res
}


define i32 @f2(i32 %lhs, i16 *%src) {



  %ptr = getelementptr i16, i16 *%src, i64 2047
  %half = load i16 , i16 *%ptr
  %rhs = sext i16 %half to i32
  %res = mul i32 %lhs, %rhs
  ret i32 %res
}


define i32 @f3(i32 %lhs, i16 *%src) {



  %ptr = getelementptr i16, i16 *%src, i64 2048
  %half = load i16 , i16 *%ptr
  %rhs = sext i16 %half to i32
  %res = mul i32 %lhs, %rhs
  ret i32 %res
}


define i32 @f4(i32 %lhs, i16 *%src) {



  %ptr = getelementptr i16, i16 *%src, i64 262143
  %half = load i16 , i16 *%ptr
  %rhs = sext i16 %half to i32
  %res = mul i32 %lhs, %rhs
  ret i32 %res
}



define i32 @f5(i32 %lhs, i16 *%src) {




  %ptr = getelementptr i16, i16 *%src, i64 262144
  %half = load i16 , i16 *%ptr
  %rhs = sext i16 %half to i32
  %res = mul i32 %lhs, %rhs
  ret i32 %res
}


define i32 @f6(i32 %lhs, i16 *%src) {



  %ptr = getelementptr i16, i16 *%src, i64 -1
  %half = load i16 , i16 *%ptr
  %rhs = sext i16 %half to i32
  %res = mul i32 %lhs, %rhs
  ret i32 %res
}


define i32 @f7(i32 %lhs, i16 *%src) {



  %ptr = getelementptr i16, i16 *%src, i64 -262144
  %half = load i16 , i16 *%ptr
  %rhs = sext i16 %half to i32
  %res = mul i32 %lhs, %rhs
  ret i32 %res
}



define i32 @f8(i32 %lhs, i16 *%src) {




  %ptr = getelementptr i16, i16 *%src, i64 -262145
  %half = load i16 , i16 *%ptr
  %rhs = sext i16 %half to i32
  %res = mul i32 %lhs, %rhs
  ret i32 %res
}


define i32 @f9(i32 %lhs, i64 %src, i64 %index) {



  %add1 = add i64 %src, %index
  %add2 = add i64 %add1, 4094
  %ptr = inttoptr i64 %add2 to i16 *
  %half = load i16 , i16 *%ptr
  %rhs = sext i16 %half to i32
  %res = mul i32 %lhs, %rhs
  ret i32 %res
}


define i32 @f10(i32 %lhs, i64 %src, i64 %index) {



  %add1 = add i64 %src, %index
  %add2 = add i64 %add1, 4096
  %ptr = inttoptr i64 %add2 to i16 *
  %half = load i16 , i16 *%ptr
  %rhs = sext i16 %half to i32
  %res = mul i32 %lhs, %rhs
  ret i32 %res
}
