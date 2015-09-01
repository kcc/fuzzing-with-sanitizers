





define void @f1(double *%src, double %val) {



  store double %val, double *%src
  ret void
}


define void @f2(double *%src, double %val) {



  %ptr = getelementptr double, double *%src, i64 511
  store double %val, double *%ptr
  ret void
}


define void @f3(double *%src, double %val) {



  %ptr = getelementptr double, double *%src, i64 512
  store double %val, double *%ptr
  ret void
}


define void @f4(double *%src, double %val) {



  %ptr = getelementptr double, double *%src, i64 65535
  store double %val, double *%ptr
  ret void
}



define void @f5(double *%src, double %val) {




  %ptr = getelementptr double, double *%src, i64 65536
  store double %val, double *%ptr
  ret void
}


define void @f6(double *%src, double %val) {



  %ptr = getelementptr double, double *%src, i64 -1
  store double %val, double *%ptr
  ret void
}


define void @f7(double *%src, double %val) {



  %ptr = getelementptr double, double *%src, i64 -65536
  store double %val, double *%ptr
  ret void
}



define void @f8(double *%src, double %val) {




  %ptr = getelementptr double, double *%src, i64 -65537
  store double %val, double *%ptr
  ret void
}


define void @f9(i64 %src, i64 %index, double %val) {



  %add1 = add i64 %src, %index
  %add2 = add i64 %add1, 4095
  %ptr = inttoptr i64 %add2 to double *
  store double %val, double *%ptr
  ret void
}


define void @f10(i64 %src, i64 %index, double %val) {



  %add1 = add i64 %src, %index
  %add2 = add i64 %add1, 4096
  %ptr = inttoptr i64 %add2 to double *
  store double %val, double *%ptr
  ret void
}
