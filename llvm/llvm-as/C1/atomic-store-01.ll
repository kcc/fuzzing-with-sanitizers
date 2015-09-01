



define void @f1(i8 %val, i8 *%src) {




  store atomic i8 %val, i8 *%src seq_cst, align 1
  ret void
}
