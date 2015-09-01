



declare i8 *@memchr(i8 *%src, i16 %char, i32 %len)


define i8 *@f1(i8 *%src, i16 %char, i32 %len) {










  %res = call i8 *@memchr(i8 *%src, i16 %char, i32 %len)
  ret i8 *%res
}
