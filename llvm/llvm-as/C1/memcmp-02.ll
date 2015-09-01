



declare i64 @memcmp(i8 *%src1, i8 *%src2, i64 %size)


define i64 @f1(i8 *%src1, i8 *%src2) {



  %res = call i64 @memcmp(i8 *%src1, i8 *%src2, i64 0)
  ret i64 %res
}


define i64 @f2(i8 *%src1, i8 *%src2) {







  %res = call i64 @memcmp(i8 *%src1, i8 *%src2, i64 2)
  ret i64 %res
}


define void @f3(i8 *%src1, i8 *%src2, i64 *%dest) {




  %res = call i64 @memcmp(i8 *%src1, i8 *%src2, i64 3)
  %cmp = icmp eq i64 %res, 0
  br i1 %cmp, label %exit, label %store

store:
  store i64 0, i64 *%dest
  br label %exit

exit:
  ret void
}


define void @f4(i8 *%src1, i8 *%src2, i64 *%dest) {




entry:
  %res = call i64 @memcmp(i8 *%src1, i8 *%src2, i64 4)
  %cmp = icmp ne i64 %res, 0
  br i1 %cmp, label %exit, label %store

store:
  store i64 0, i64 *%dest
  br label %exit

exit:
  ret void
}


define void @f5(i8 *%src1, i8 *%src2, i64 *%dest) {




entry:
  %res = call i64 @memcmp(i8 *%src1, i8 *%src2, i64 5)
  %cmp = icmp slt i64 %res, 0
  br i1 %cmp, label %exit, label %store

store:
  store i64 0, i64 *%dest
  br label %exit

exit:
  ret void
}


define void @f6(i8 *%src1, i8 *%src2, i64 *%dest) {




entry:
  %res = call i64 @memcmp(i8 *%src1, i8 *%src2, i64 6)
  %cmp = icmp sgt i64 %res, 0
  br i1 %cmp, label %exit, label %store

store:
  store i64 0, i64 *%dest
  br label %exit

exit:
  ret void
}



define i64 @f7(i8 *%src1, i8 *%src2, i64 *%dest) {








entry:
  %res = call i64 @memcmp(i8 *%src1, i8 *%src2, i64 256)
  %cmp = icmp slt i64 %res, 0
  br i1 %cmp, label %exit, label %store

store:
  store i64 0, i64 *%dest
  br label %exit

exit:
  ret i64 %res
}


define i64 @f8(i8 *%src1, i8 *%src2) {







  %res = call i64 @memcmp(i8 *%src1, i8 *%src2, i64 257)
  ret i64 %res
}
