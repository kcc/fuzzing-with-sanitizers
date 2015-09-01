



define i64 @f1(i64 *%src) {




  %val = load atomic i64 , i64 *%src seq_cst, align 8
  ret i64 %val
}
