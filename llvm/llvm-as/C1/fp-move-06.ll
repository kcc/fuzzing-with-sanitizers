




define void @f1(float *%ptr, float %val) {



  store float %val, float *%ptr
  ret void
}


define void @f2(float *%src, float %val) {



  %ptr = getelementptr float, float *%src, i64 1023
  store float %val, float *%ptr
  ret void
}


define void @f3(float *%src, float %val) {



  %ptr = getelementptr float, float *%src, i64 1024
  store float %val, float *%ptr
  ret void
}


define void @f4(float *%src, float %val) {



  %ptr = getelementptr float, float *%src, i64 131071
  store float %val, float *%ptr
  ret void
}



define void @f5(float *%src, float %val) {




  %ptr = getelementptr float, float *%src, i64 131072
  store float %val, float *%ptr
  ret void
}


define void @f6(float *%src, float %val) {



  %ptr = getelementptr float, float *%src, i64 -1
  store float %val, float *%ptr
  ret void
}


define void @f7(float *%src, float %val) {



  %ptr = getelementptr float, float *%src, i64 -131072
  store float %val, float *%ptr
  ret void
}



define void @f8(float *%src, float %val) {




  %ptr = getelementptr float, float *%src, i64 -131073
  store float %val, float *%ptr
  ret void
}


define void @f9(i64 %src, i64 %index, float %val) {



  %add1 = add i64 %src, %index
  %add2 = add i64 %add1, 4092
  %ptr = inttoptr i64 %add2 to float *
  store float %val, float *%ptr
  ret void
}


define void @f10(i64 %src, i64 %index, float %val) {



  %add1 = add i64 %src, %index
  %add2 = add i64 %add1, 4096
  %ptr = inttoptr i64 %add2 to float *
  store float %val, float *%ptr
  ret void
}
