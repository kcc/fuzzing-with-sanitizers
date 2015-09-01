



declare i64 @strlen(i8 *%src)
declare i64 @strnlen(i8 *%src, i64 %len)



define i64 @f1(i32 %dummy, i8 *%src) {










  %res = call i64 @strlen(i8 *%src)
  ret i64 %res
}


define i64 @f2(i64 %len, i8 *%src) {










  %res = call i64 @strnlen(i8 *%src, i64 %len)
  ret i64 %res
}
