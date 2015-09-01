




define float @f1(float *%src) {



  %val = load float , float *%src
  ret float %val
}


define float @f2(float *%src) {



  %ptr = getelementptr float, float *%src, i64 1023
  %val = load float , float *%ptr
  ret float %val
}


define float @f3(float *%src) {



  %ptr = getelementptr float, float *%src, i64 1024
  %val = load float , float *%ptr
  ret float %val
}


define float @f4(float *%src) {



  %ptr = getelementptr float, float *%src, i64 131071
  %val = load float , float *%ptr
  ret float %val
}



define float @f5(float *%src) {




  %ptr = getelementptr float, float *%src, i64 131072
  %val = load float , float *%ptr
  ret float %val
}


define float @f6(float *%src) {



  %ptr = getelementptr float, float *%src, i64 -1
  %val = load float , float *%ptr
  ret float %val
}


define float @f7(float *%src) {



  %ptr = getelementptr float, float *%src, i64 -131072
  %val = load float , float *%ptr
  ret float %val
}



define float @f8(float *%src) {




  %ptr = getelementptr float, float *%src, i64 -131073
  %val = load float , float *%ptr
  ret float %val
}


define float @f9(i64 %src, i64 %index) {



  %add1 = add i64 %src, %index
  %add2 = add i64 %add1, 4092
  %ptr = inttoptr i64 %add2 to float *
  %val = load float , float *%ptr
  ret float %val
}


define float @f10(i64 %src, i64 %index) {



  %add1 = add i64 %src, %index
  %add2 = add i64 %add1, 4096
  %ptr = inttoptr i64 %add2 to float *
  %val = load float , float *%ptr
  ret float %val
}
