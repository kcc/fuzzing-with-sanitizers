



declare i32 @strlen(i8 *%src)
declare i32 @strnlen(i8 *%src, i32 %len)



define i32 @f1(i32 %dummy, i8 *%src) {










  %res = call i32 @strlen(i8 *%src)
  ret i32 %res
}


define i32 @f2(i32 zeroext %len, i8 *%src) {










  %res = call i32 @strnlen(i8 *%src, i32 %len)
  ret i32 %res
}
