



define void @f1(i64 %val, i64 *%src) {




  store atomic i64 %val, i64 *%src seq_cst, align 8
  ret void
}
