







define i32 @f1(i32 *%src) {









  %val = load volatile i32 , i32 *%src
  ret i32 %val
}
