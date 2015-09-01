








define void @f1(i8 *%ptr) {




  %off1 = getelementptr i8, i8 *%ptr, i64 1
  %off2 = getelementptr i8, i8 *%ptr, i64 2
  %off3 = getelementptr i8, i8 *%ptr, i64 3
  store i8 0, i8 *%ptr
  store i8 1, i8 *%off1
  store i8 2, i8 *%off2
  store i8 3, i8 *%off3
  ret void
}


define i16 @f2(i16 *%src, i16 *%dst) {




  %val = load i16 , i16 *%src, align 1
  store i16 %val, i16 *%dst, align 1
  ret i16 %val
}


define i32 @f3(i32 *%src1, i32 *%src2, i32 *%dst) {





  %val1 = load i32 , i32 *%src1, align 1
  %val2 = load i32 , i32 *%src2, align 2
  %sub = sub i32 %val1, %val2
  store i32 %sub, i32 *%dst, align 1
  ret i32 %sub
}


define i64 @f4(i64 *%src1, i64 *%src2, i64 *%dst) {





  %val1 = load i64 , i64 *%src1, align 1
  %val2 = load i64 , i64 *%src2, align 2
  %sub = sub i64 %val1, %val2
  store i64 %sub, i64 *%dst, align 4
  ret i64 %sub
}
