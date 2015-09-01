



declare signext i32 @memcmp(i8 *%src1, i8 *%src2, i64 %size)


define i32 @f1(i8 *%src1, i8 *%src2) {



  %res = call i32 @memcmp(i8 *%src1, i8 *%src2, i64 0)
  ret i32 %res
}


define i32 @f2(i8 *%src1, i8 *%src2) {






  %res = call i32 @memcmp(i8 *%src1, i8 *%src2, i64 2)
  ret i32 %res
}


define void @f3(i8 *%src1, i8 *%src2, i32 *%dest) {




  %res = call i32 @memcmp(i8 *%src1, i8 *%src2, i64 3)
  %cmp = icmp eq i32 %res, 0
  br i1 %cmp, label %exit, label %store

store:
  store i32 0, i32 *%dest
  br label %exit

exit:
  ret void
}


define void @f4(i8 *%src1, i8 *%src2, i32 *%dest) {




entry:
  %res = call i32 @memcmp(i8 *%src1, i8 *%src2, i64 4)
  %cmp = icmp ne i32 %res, 0
  br i1 %cmp, label %exit, label %store

store:
  store i32 0, i32 *%dest
  br label %exit

exit:
  ret void
}


define void @f5(i8 *%src1, i8 *%src2, i32 *%dest) {




entry:
  %res = call i32 @memcmp(i8 *%src1, i8 *%src2, i64 5)
  %cmp = icmp slt i32 %res, 0
  br i1 %cmp, label %exit, label %store

store:
  store i32 0, i32 *%dest
  br label %exit

exit:
  ret void
}


define void @f6(i8 *%src1, i8 *%src2, i32 *%dest) {




entry:
  %res = call i32 @memcmp(i8 *%src1, i8 *%src2, i64 6)
  %cmp = icmp sgt i32 %res, 0
  br i1 %cmp, label %exit, label %store

store:
  store i32 0, i32 *%dest
  br label %exit

exit:
  ret void
}



define i32 @f7(i8 *%src1, i8 *%src2, i32 *%dest) {







entry:
  %res = call i32 @memcmp(i8 *%src1, i8 *%src2, i64 256)
  %cmp = icmp slt i32 %res, 0
  br i1 %cmp, label %exit, label %store

store:
  store i32 0, i32 *%dest
  br label %exit

exit:
  ret i32 %res
}


define i32 @f8(i8 *%src1, i8 *%src2) {







  %res = call i32 @memcmp(i8 *%src1, i8 *%src2, i64 257)
  ret i32 %res
}


define void @f9(i8 *%src1, i8 *%src2, i32 *%dest) {







entry:
  %res = call i32 @memcmp(i8 *%src1, i8 *%src2, i64 257)
  %cmp = icmp slt i32 %res, 0
  br i1 %cmp, label %exit, label %store

store:
  store i32 0, i32 *%dest
  br label %exit

exit:
  ret void
}


define i32 @f10(i8 *%src1, i8 *%src2) {







  %res = call i32 @memcmp(i8 *%src1, i8 *%src2, i64 512)
  ret i32 %res
}


define i32 @f11(i8 *%src1, i8 *%src2) {









  %res = call i32 @memcmp(i8 *%src1, i8 *%src2, i64 513)
  ret i32 %res
}


define i32 @f12(i8 *%src1, i8 *%src2) {









  %res = call i32 @memcmp(i8 *%src1, i8 *%src2, i64 768)
  ret i32 %res
}



define i32 @f13(i8 *%src1, i8 *%src2) {












  %res = call i32 @memcmp(i8 *%src1, i8 *%src2, i64 769)
  ret i32 %res
}
