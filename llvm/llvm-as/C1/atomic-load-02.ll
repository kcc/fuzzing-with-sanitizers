



define i16 @f1(i16 *%src) {




  %val = load atomic i16 , i16 *%src seq_cst, align 2
  ret i16 %val
}
