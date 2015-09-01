









define i32 @f1(float %f) {






  %conv = fptoui float %f to i32
  ret i32 %conv
}


define i32 @f2(double %f) {






  %conv = fptoui double %f to i32
  ret i32 %conv
}


define i32 @f3(fp128 *%src) {






  %f = load fp128 , fp128 *%src
  %conv = fptoui fp128 %f to i32
  ret i32 %conv
}
