





define void @f1(i32 %lhs, i16 *%src, i32 *%dst) {



  %half = load i16 , i16 *%src
  %rhs = sext i16 %half to i32
  %cond = icmp slt i32 %lhs, %rhs
  %res = select i1 %cond, i32 100, i32 200
  store i32 %res, i32 *%dst
  ret void
}


define void @f2(i32 %lhs, i16 *%src, i32 *%dst) {



  %ptr = getelementptr i16, i16 *%src, i64 2047
  %half = load i16 , i16 *%ptr
  %rhs = sext i16 %half to i32
  %cond = icmp slt i32 %lhs, %rhs
  %res = select i1 %cond, i32 100, i32 200
  store i32 %res, i32 *%dst
  ret void
}


define void @f3(i32 %lhs, i16 *%src, i32 *%dst) {



  %ptr = getelementptr i16, i16 *%src, i64 2048
  %half = load i16 , i16 *%ptr
  %rhs = sext i16 %half to i32
  %cond = icmp slt i32 %lhs, %rhs
  %res = select i1 %cond, i32 100, i32 200
  store i32 %res, i32 *%dst
  ret void
}


define void @f4(i32 %lhs, i16 *%src, i32 *%dst) {



  %ptr = getelementptr i16, i16 *%src, i64 262143
  %half = load i16 , i16 *%ptr
  %rhs = sext i16 %half to i32
  %cond = icmp slt i32 %lhs, %rhs
  %res = select i1 %cond, i32 100, i32 200
  store i32 %res, i32 *%dst
  ret void
}



define void @f5(i32 %lhs, i16 *%src, i32 *%dst) {




  %ptr = getelementptr i16, i16 *%src, i64 262144
  %half = load i16 , i16 *%ptr
  %rhs = sext i16 %half to i32
  %cond = icmp slt i32 %lhs, %rhs
  %res = select i1 %cond, i32 100, i32 200
  store i32 %res, i32 *%dst
  ret void
}


define void @f6(i32 %lhs, i16 *%src, i32 *%dst) {



  %ptr = getelementptr i16, i16 *%src, i64 -1
  %half = load i16 , i16 *%ptr
  %rhs = sext i16 %half to i32
  %cond = icmp slt i32 %lhs, %rhs
  %res = select i1 %cond, i32 100, i32 200
  store i32 %res, i32 *%dst
  ret void
}


define void @f7(i32 %lhs, i16 *%src, i32 *%dst) {



  %ptr = getelementptr i16, i16 *%src, i64 -262144
  %half = load i16 , i16 *%ptr
  %rhs = sext i16 %half to i32
  %cond = icmp slt i32 %lhs, %rhs
  %res = select i1 %cond, i32 100, i32 200
  store i32 %res, i32 *%dst
  ret void
}



define void @f8(i32 %lhs, i16 *%src, i32 *%dst) {




  %ptr = getelementptr i16, i16 *%src, i64 -262145
  %half = load i16 , i16 *%ptr
  %rhs = sext i16 %half to i32
  %cond = icmp slt i32 %lhs, %rhs
  %res = select i1 %cond, i32 100, i32 200
  store i32 %res, i32 *%dst
  ret void
}


define void @f9(i32 %lhs, i64 %base, i64 %index, i32 *%dst) {



  %add1 = add i64 %base, %index
  %add2 = add i64 %add1, 4094
  %ptr = inttoptr i64 %add2 to i16 *
  %half = load i16 , i16 *%ptr
  %rhs = sext i16 %half to i32
  %cond = icmp slt i32 %lhs, %rhs
  %res = select i1 %cond, i32 100, i32 200
  store i32 %res, i32 *%dst
  ret void
}


define void @f10(i32 %lhs, i64 %base, i64 %index, i32 *%dst) {



  %add1 = add i64 %base, %index
  %add2 = add i64 %add1, 4096
  %ptr = inttoptr i64 %add2 to i16 *
  %half = load i16 , i16 *%ptr
  %rhs = sext i16 %half to i32
  %cond = icmp slt i32 %lhs, %rhs
  %res = select i1 %cond, i32 100, i32 200
  store i32 %res, i32 *%dst
  ret void
}


define double @f11(double %a, double %b, i32 %rhs, i16 *%src) {





  %half = load i16 , i16 *%src
  %lhs = sext i16 %half to i32
  %cond = icmp slt i32 %lhs, %rhs
  %res = select i1 %cond, double %a, double %b
  ret double %res
}
