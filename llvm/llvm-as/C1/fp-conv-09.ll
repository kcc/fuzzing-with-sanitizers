




define i32 @f1(float %f) {



  %conv = fptosi float %f to i32
  ret i32 %conv
}


define i32 @f2(double %f) {



  %conv = fptosi double %f to i32
  ret i32 %conv
}


define i32 @f3(fp128 *%src) {





  %f = load fp128 , fp128 *%src
  %conv = fptosi fp128 %f to i32
  ret i32 %conv
}
