




define i64 @f1(i64 %dummy, i64 *%src, i64 %b) {




  %res = atomicrmw sub i64 *%src, i64 %b seq_cst
  ret i64 %res
}


define i64 @f2(i64 %dummy, i64 *%src) {




  %res = atomicrmw sub i64 *%src, i64 1 seq_cst
  ret i64 %res
}


define i64 @f3(i64 %dummy, i64 *%src, i64 %b) {




  %ptr = getelementptr i64, i64 *%src, i64 65535
  %res = atomicrmw sub i64 *%ptr, i64 %b seq_cst
  ret i64 %res
}


define i64 @f4(i64 %dummy, i64 *%src, i64 %b) {





  %ptr = getelementptr i64, i64 *%src, i64 65536
  %res = atomicrmw sub i64 *%ptr, i64 %b seq_cst
  ret i64 %res
}


define i64 @f5(i64 %dummy, i64 *%src, i64 %b) {




  %ptr = getelementptr i64, i64 *%src, i64 -65536
  %res = atomicrmw sub i64 *%ptr, i64 %b seq_cst
  ret i64 %res
}


define i64 @f6(i64 %dummy, i64 *%src, i64 %b) {





  %ptr = getelementptr i64, i64 *%src, i64 -65537
  %res = atomicrmw sub i64 *%ptr, i64 %b seq_cst
  ret i64 %res
}
