



define i32 @f1(i32 *%src) {




  %val = load atomic i32 , i32 *%src seq_cst, align 4
  ret i32 %val
}
