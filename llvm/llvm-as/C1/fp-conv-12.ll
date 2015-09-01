








define i64 @f1(float %f) {






  %conv = fptoui float %f to i64
  ret i64 %conv
}


define i64 @f2(double %f) {






  %conv = fptoui double %f to i64
  ret i64 %conv
}


define i64 @f3(fp128 *%src) {






  %f = load fp128 , fp128 *%src
  %conv = fptoui fp128 %f to i64
  ret i64 %conv
}
