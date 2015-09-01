



declare i64 @strcmp(i8 *%src1, i8 *%src2)


define i64 @f1(i8 *%src1, i8 *%src2) {











  %res = call i64 @strcmp(i8 *%src1, i8 *%src2)
  ret i64 %res
}


define void @f2(i8 *%src1, i8 *%src2, i64 *%dest) {








  %res = call i64 @strcmp(i8 *%src1, i8 *%src2)
  %cmp = icmp eq i64 %res, 0
  br i1 %cmp, label %exit, label %store

store:
  store i64 0, i64 *%dest
  br label %exit

exit:
  ret void
}



define i64 @f3(i8 *%src1, i8 *%src2, i64 *%dest) {












entry:
  %res = call i64 @strcmp(i8 *%src1, i8 *%src2)
  %cmp = icmp slt i64 %res, 0
  br i1 %cmp, label %exit, label %store

store:
  store i64 0, i64 *%dest
  br label %exit

exit:
  ret i64 %res
}
