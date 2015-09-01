



declare i8 *@strcpy(i8 *%dest, i8 *%src)
declare i8 *@stpcpy(i8 *%dest, i8 *%src)


define i8 *@f1(i8 *%dest, i8 *%src) {








  %res = call i8 *@strcpy(i8 *%dest, i8 *%src)
  ret i8 *%res
}


define i8 *@f2(i8 *%dest, i8 *%src) {







  %res = call i8 *@stpcpy(i8 *%dest, i8 *%src)
  ret i8 *%res
}



define i32 @f3(i32 %dummy, i8 *%dest, i8 *%src, i32 *%resptr, i32 *%storeptr) {








  %res = load i32 , i32 *%resptr
  %unused = call i8 *@strcpy(i8 *%dest, i8 *%src)
  store i32 0, i32 *%storeptr
  ret i32 %res
}
