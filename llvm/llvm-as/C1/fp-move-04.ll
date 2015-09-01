





define double @f1(double *%src) {



  %val = load double , double *%src
  ret double %val
}


define double @f2(double *%src) {



  %ptr = getelementptr double, double *%src, i64 511
  %val = load double , double *%ptr
  ret double %val
}


define double @f3(double *%src) {



  %ptr = getelementptr double, double *%src, i64 512
  %val = load double , double *%ptr
  ret double %val
}


define double @f4(double *%src) {



  %ptr = getelementptr double, double *%src, i64 65535
  %val = load double , double *%ptr
  ret double %val
}



define double @f5(double *%src) {




  %ptr = getelementptr double, double *%src, i64 65536
  %val = load double , double *%ptr
  ret double %val
}


define double @f6(double *%src) {



  %ptr = getelementptr double, double *%src, i64 -1
  %val = load double , double *%ptr
  ret double %val
}


define double @f7(double *%src) {



  %ptr = getelementptr double, double *%src, i64 -65536
  %val = load double , double *%ptr
  ret double %val
}



define double @f8(double *%src) {




  %ptr = getelementptr double, double *%src, i64 -65537
  %val = load double , double *%ptr
  ret double %val
}


define double @f9(i64 %src, i64 %index) {



  %add1 = add i64 %src, %index
  %add2 = add i64 %add1, 4095
  %ptr = inttoptr i64 %add2 to double *
  %val = load double , double *%ptr
  ret double %val
}


define double @f10(i64 %src, i64 %index) {



  %add1 = add i64 %src, %index
  %add2 = add i64 %add1, 4096
  %ptr = inttoptr i64 %add2 to double *
  %val = load double , double *%ptr
  ret double %val
}
