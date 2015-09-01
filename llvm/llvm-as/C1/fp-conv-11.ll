




define i64 @f1(float %f) {



  %conv = fptosi float %f to i64
  ret i64 %conv
}


define i64 @f2(double %f) {



  %conv = fptosi double %f to i64
  ret i64 %conv
}


define i64 @f3(fp128 *%src) {





  %f = load fp128 , fp128 *%src
  %conv = fptosi fp128 %f to i64
  ret i64 %conv
}
