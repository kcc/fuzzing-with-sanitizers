



define void @f1(i16 %val, i16 *%src) {




  store atomic i16 %val, i16 *%src seq_cst, align 2
  ret void
}
