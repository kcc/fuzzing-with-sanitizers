




define double @f1(double %a, double %b, i8 *%ptr) {




  %val = load i8 , i8 *%ptr
  %cond = icmp ugt i8 %val, 1
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f2(double %a, double %b, i8 *%ptr) {




  %val = load i8 , i8 *%ptr
  %cond = icmp ult i8 %val, 254
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f3(double %a, double %b, i8 *%ptr) {




  %val = load i8 , i8 *%ptr
  %cond = icmp slt i8 %val, 0
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f4(double %a, double %b, i8 *%ptr) {




  %val = load i8 , i8 *%ptr
  %cond = icmp sle i8 %val, -1
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f5(double %a, double %b, i8 *%ptr) {




  %val = load i8 , i8 *%ptr
  %cond = icmp sge i8 %val, 0
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f6(double %a, double %b, i8 *%ptr) {




  %val = load i8 , i8 *%ptr
  %cond = icmp sgt i8 %val, -1
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f7(double %a, double %b, i8 *%ptr) {




  %val = load i8 , i8 *%ptr
  %cond = icmp eq i8 %val, -128
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f8(double %a, double %b, i8 *%ptr) {




  %val = load i8 , i8 *%ptr
  %cond = icmp eq i8 %val, 0
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f9(double %a, double %b, i8 *%ptr) {




  %val = load i8 , i8 *%ptr
  %cond = icmp eq i8 %val, 127
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f10(double %a, double %b, i8 *%ptr) {




  %val = load i8 , i8 *%ptr
  %cond = icmp eq i8 %val, 255
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f11(double %a, double %b, i8 *%src) {



  %ptr = getelementptr i8, i8 *%src, i64 4095
  %val = load i8 , i8 *%ptr
  %cond = icmp ult i8 %val, 127
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f12(double %a, double %b, i8 *%src) {



  %ptr = getelementptr i8, i8 *%src, i64 4096
  %val = load i8 , i8 *%ptr
  %cond = icmp ult i8 %val, 127
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f13(double %a, double %b, i8 *%src) {



  %ptr = getelementptr i8, i8 *%src, i64 524287
  %val = load i8 , i8 *%ptr
  %cond = icmp ult i8 %val, 127
  %res = select i1 %cond, double %a, double %b
  ret double %res
}



define double @f14(double %a, double %b, i8 *%src) {




  %ptr = getelementptr i8, i8 *%src, i64 524288
  %val = load i8 , i8 *%ptr
  %cond = icmp ult i8 %val, 127
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f15(double %a, double %b, i8 *%src) {



  %ptr = getelementptr i8, i8 *%src, i64 -1
  %val = load i8 , i8 *%ptr
  %cond = icmp ult i8 %val, 127
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f16(double %a, double %b, i8 *%src) {



  %ptr = getelementptr i8, i8 *%src, i64 -524288
  %val = load i8 , i8 *%ptr
  %cond = icmp ult i8 %val, 127
  %res = select i1 %cond, double %a, double %b
  ret double %res
}



define double @f17(double %a, double %b, i8 *%src) {




  %ptr = getelementptr i8, i8 *%src, i64 -524289
  %val = load i8 , i8 *%ptr
  %cond = icmp ult i8 %val, 127
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f18(double %a, double %b, i64 %base, i64 %index) {




  %add1 = add i64 %base, %index
  %add2 = add i64 %add1, 4095
  %ptr = inttoptr i64 %add2 to i8 *
  %val = load i8 , i8 *%ptr
  %cond = icmp ult i8 %val, 127
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f19(double %a, double %b, i64 %base, i64 %index) {




  %add1 = add i64 %base, %index
  %add2 = add i64 %add1, 4096
  %ptr = inttoptr i64 %add2 to i8 *
  %val = load i8 , i8 *%ptr
  %cond = icmp ult i8 %val, 127
  %res = select i1 %cond, double %a, double %b
  ret double %res
}
