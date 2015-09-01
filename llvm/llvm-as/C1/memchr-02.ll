



declare i8 *@memchr(i8 *%src, i32 %char, i64 %len)


define i8 *@f1(i64 %len, i8 *%src, i32 %char) {









  %res = call i8 *@memchr(i8 *%src, i32 %char, i64 %len)
  ret i8 *%res
}



define i8 *@f2(i8 *%src, i8 *%charptr, i64 %len) {







  %char = load volatile i8 , i8 *%charptr
  %charext = zext i8 %char to i32
  %res1 = call i8 *@memchr(i8 *%src, i32 %charext, i64 %len)
  %res2 = call i8 *@memchr(i8 *%res1, i32 %charext, i64 %len)
  ret i8 *%res2
}



define i8 *@f3(i8 *%src, i8 *%charptr, i64 %len) {









  %char = load volatile i8 , i8 *%charptr
  %charext = zext i8 %char to i32
  %res1 = call i8 *@memchr(i8 *%src, i32 %charext, i64 %len)
  call void asm sideeffect "blah $0", "{r0}" (i32 0)
  %res2 = call i8 *@memchr(i8 *%res1, i32 %charext, i64 %len)
  ret i8 *%res2
}
