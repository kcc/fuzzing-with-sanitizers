




define i32 @f1(i32 %cmp, i32 %swap, i32 *%src) {



  %pair = cmpxchg i32 *%src, i32 %cmp, i32 %swap seq_cst seq_cst
  %val = extractvalue { i32, i1 } %pair, 0
  ret i32 %val
}


define i32 @f2(i32 %cmp, i32 %swap, i32 *%src) {



  %ptr = getelementptr i32, i32 *%src, i64 1023
  %pair = cmpxchg i32 *%ptr, i32 %cmp, i32 %swap seq_cst seq_cst
  %val = extractvalue { i32, i1 } %pair, 0
  ret i32 %val
}


define i32 @f3(i32 %cmp, i32 %swap, i32 *%src) {



  %ptr = getelementptr i32, i32 *%src, i64 1024
  %pair = cmpxchg i32 *%ptr, i32 %cmp, i32 %swap seq_cst seq_cst
  %val = extractvalue { i32, i1 } %pair, 0
  ret i32 %val
}


define i32 @f4(i32 %cmp, i32 %swap, i32 *%src) {



  %ptr = getelementptr i32, i32 *%src, i64 131071
  %pair = cmpxchg i32 *%ptr, i32 %cmp, i32 %swap seq_cst seq_cst
  %val = extractvalue { i32, i1 } %pair, 0
  ret i32 %val
}



define i32 @f5(i32 %cmp, i32 %swap, i32 *%src) {




  %ptr = getelementptr i32, i32 *%src, i64 131072
  %pair = cmpxchg i32 *%ptr, i32 %cmp, i32 %swap seq_cst seq_cst
  %val = extractvalue { i32, i1 } %pair, 0
  ret i32 %val
}


define i32 @f6(i32 %cmp, i32 %swap, i32 *%src) {



  %ptr = getelementptr i32, i32 *%src, i64 -1
  %pair = cmpxchg i32 *%ptr, i32 %cmp, i32 %swap seq_cst seq_cst
  %val = extractvalue { i32, i1 } %pair, 0
  ret i32 %val
}


define i32 @f7(i32 %cmp, i32 %swap, i32 *%src) {



  %ptr = getelementptr i32, i32 *%src, i64 -131072
  %pair = cmpxchg i32 *%ptr, i32 %cmp, i32 %swap seq_cst seq_cst
  %val = extractvalue { i32, i1 } %pair, 0
  ret i32 %val
}



define i32 @f8(i32 %cmp, i32 %swap, i32 *%src) {




  %ptr = getelementptr i32, i32 *%src, i64 -131073
  %pair = cmpxchg i32 *%ptr, i32 %cmp, i32 %swap seq_cst seq_cst
  %val = extractvalue { i32, i1 } %pair, 0
  ret i32 %val
}


define i32 @f9(i32 %cmp, i32 %swap, i64 %src, i64 %index) {




  %add1 = add i64 %src, %index
  %ptr = inttoptr i64 %add1 to i32 *
  %pair = cmpxchg i32 *%ptr, i32 %cmp, i32 %swap seq_cst seq_cst
  %val = extractvalue { i32, i1 } %pair, 0
  ret i32 %val
}


define i32 @f10(i32 %cmp, i32 %swap, i64 %src, i64 %index) {




  %add1 = add i64 %src, %index
  %add2 = add i64 %add1, 4096
  %ptr = inttoptr i64 %add2 to i32 *
  %pair = cmpxchg i32 *%ptr, i32 %cmp, i32 %swap seq_cst seq_cst
  %val = extractvalue { i32, i1 } %pair, 0
  ret i32 %val
}


define i32 @f11(i32 %dummy, i32 %swap, i32 *%ptr) {




  %pair = cmpxchg i32 *%ptr, i32 1001, i32 %swap seq_cst seq_cst
  %val = extractvalue { i32, i1 } %pair, 0
  ret i32 %val
}


define i32 @f12(i32 %cmp, i32 *%ptr) {




  %pair = cmpxchg i32 *%ptr, i32 %cmp, i32 1002 seq_cst seq_cst
  %val = extractvalue { i32, i1 } %pair, 0
  ret i32 %val
}
