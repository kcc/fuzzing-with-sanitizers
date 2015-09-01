





define void @f1(i64 %lhs, i16 *%src, i64 *%dst) {



  %half = load i16 , i16 *%src
  %rhs = sext i16 %half to i64
  %cond = icmp slt i64 %lhs, %rhs
  %res = select i1 %cond, i64 100, i64 200
  store i64 %res, i64 *%dst
  ret void
}


define void @f2(i64 %lhs, i16 *%src, i64 *%dst) {



  %ptr = getelementptr i16, i16 *%src, i64 262143
  %half = load i16 , i16 *%ptr
  %rhs = sext i16 %half to i64
  %cond = icmp slt i64 %lhs, %rhs
  %res = select i1 %cond, i64 100, i64 200
  store i64 %res, i64 *%dst
  ret void
}



define void @f3(i64 %lhs, i16 *%src, i64 *%dst) {




  %ptr = getelementptr i16, i16 *%src, i64 262144
  %half = load i16 , i16 *%ptr
  %rhs = sext i16 %half to i64
  %cond = icmp slt i64 %lhs, %rhs
  %res = select i1 %cond, i64 100, i64 200
  store i64 %res, i64 *%dst
  ret void
}


define void @f4(i64 %lhs, i16 *%src, i64 *%dst) {



  %ptr = getelementptr i16, i16 *%src, i64 -1
  %half = load i16 , i16 *%ptr
  %rhs = sext i16 %half to i64
  %cond = icmp slt i64 %lhs, %rhs
  %res = select i1 %cond, i64 100, i64 200
  store i64 %res, i64 *%dst
  ret void
}


define void @f5(i64 %lhs, i16 *%src, i64 *%dst) {



  %ptr = getelementptr i16, i16 *%src, i64 -262144
  %half = load i16 , i16 *%ptr
  %rhs = sext i16 %half to i64
  %cond = icmp slt i64 %lhs, %rhs
  %res = select i1 %cond, i64 100, i64 200
  store i64 %res, i64 *%dst
  ret void
}



define void @f6(i64 %lhs, i16 *%src, i64 *%dst) {




  %ptr = getelementptr i16, i16 *%src, i64 -262145
  %half = load i16 , i16 *%ptr
  %rhs = sext i16 %half to i64
  %cond = icmp slt i64 %lhs, %rhs
  %res = select i1 %cond, i64 100, i64 200
  store i64 %res, i64 *%dst
  ret void
}


define void @f7(i64 %lhs, i64 %base, i64 %index, i64 *%dst) {



  %add1 = add i64 %base, %index
  %add2 = add i64 %add1, 4096
  %ptr = inttoptr i64 %add2 to i16 *
  %half = load i16 , i16 *%ptr
  %rhs = sext i16 %half to i64
  %cond = icmp slt i64 %lhs, %rhs
  %res = select i1 %cond, i64 100, i64 200
  store i64 %res, i64 *%dst
  ret void
}


define double @f8(double %a, double %b, i64 %rhs, i16 *%src) {





  %half = load i16 , i16 *%src
  %lhs = sext i16 %half to i64
  %cond = icmp slt i64 %lhs, %rhs
  %res = select i1 %cond, double %a, double %b
  ret double %res
}
