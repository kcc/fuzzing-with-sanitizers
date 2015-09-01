



define void @f1(i32 %val, i32 *%src) {




  store atomic i32 %val, i32 *%src seq_cst, align 4
  ret void
}
