




define i64 @f1(i64 %cmp, i64 %swap, i64 *%src) {



  %pairval = cmpxchg i64 *%src, i64 %cmp, i64 %swap seq_cst seq_cst
  %val = extractvalue { i64, i1 } %pairval, 0
  ret i64 %val
}


define i64 @f2(i64 %cmp, i64 %swap, i64 *%src) {



  %ptr = getelementptr i64, i64 *%src, i64 65535
  %pairval = cmpxchg i64 *%ptr, i64 %cmp, i64 %swap seq_cst seq_cst
  %val = extractvalue { i64, i1 } %pairval, 0
  ret i64 %val
}



define i64 @f3(i64 %cmp, i64 %swap, i64 *%src) {




  %ptr = getelementptr i64, i64 *%src, i64 65536
  %pairval = cmpxchg i64 *%ptr, i64 %cmp, i64 %swap seq_cst seq_cst
  %val = extractvalue { i64, i1 } %pairval, 0
  ret i64 %val
}


define i64 @f4(i64 %cmp, i64 %swap, i64 *%src) {



  %ptr = getelementptr i64, i64 *%src, i64 -1
  %pairval = cmpxchg i64 *%ptr, i64 %cmp, i64 %swap seq_cst seq_cst
  %val = extractvalue { i64, i1 } %pairval, 0
  ret i64 %val
}


define i64 @f5(i64 %cmp, i64 %swap, i64 *%src) {



  %ptr = getelementptr i64, i64 *%src, i64 -65536
  %pairval = cmpxchg i64 *%ptr, i64 %cmp, i64 %swap seq_cst seq_cst
  %val = extractvalue { i64, i1 } %pairval, 0
  ret i64 %val
}



define i64 @f6(i64 %cmp, i64 %swap, i64 *%src) {




  %ptr = getelementptr i64, i64 *%src, i64 -65537
  %pairval = cmpxchg i64 *%ptr, i64 %cmp, i64 %swap seq_cst seq_cst
  %val = extractvalue { i64, i1 } %pairval, 0
  ret i64 %val
}


define i64 @f7(i64 %cmp, i64 %swap, i64 %src, i64 %index) {




  %add1 = add i64 %src, %index
  %ptr = inttoptr i64 %add1 to i64 *
  %pairval = cmpxchg i64 *%ptr, i64 %cmp, i64 %swap seq_cst seq_cst
  %val = extractvalue { i64, i1 } %pairval, 0
  ret i64 %val
}


define i64 @f8(i64 %dummy, i64 %swap, i64 *%ptr) {




  %pairval = cmpxchg i64 *%ptr, i64 1001, i64 %swap seq_cst seq_cst
  %val = extractvalue { i64, i1 } %pairval, 0
  ret i64 %val
}


define i64 @f9(i64 %cmp, i64 *%ptr) {




  %pairval = cmpxchg i64 *%ptr, i64 %cmp, i64 1002 seq_cst seq_cst
  %val = extractvalue { i64, i1 } %pairval, 0
  ret i64 %val
}
