



declare signext i32 @strcmp(i8 *%src1, i8 *%src2)


define i32 @f1(i8 *%src1, i8 *%src2) {










  %res = call i32 @strcmp(i8 *%src1, i8 *%src2)
  ret i32 %res
}


define void @f2(i8 *%src1, i8 *%src2, i32 *%dest) {








  %res = call i32 @strcmp(i8 *%src1, i8 *%src2)
  %cmp = icmp eq i32 %res, 0
  br i1 %cmp, label %exit, label %store

store:
  store i32 0, i32 *%dest
  br label %exit

exit:
  ret void
}



define i32 @f3(i8 *%src1, i8 *%src2, i32 *%dest) {











entry:
  %res = call i32 @strcmp(i8 *%src1, i8 *%src2)
  %cmp = icmp slt i32 %res, 0
  br i1 %cmp, label %exit, label %store

store:
  store i32 0, i32 *%dest
  br label %exit

exit:
  ret i32 %res
}
