



define i8 @f1(i8 *%src) {




  %val = load atomic i8 , i8 *%src seq_cst, align 1
  ret i8 %val
}
