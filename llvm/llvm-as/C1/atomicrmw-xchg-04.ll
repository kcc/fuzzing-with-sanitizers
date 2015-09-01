




define i64 @f1(i64 %dummy, i64 *%src, i64 %b) {






  %res = atomicrmw xchg i64 *%src, i64 %b seq_cst
  ret i64 %res
}


define i64 @f2(i64 %dummy, i64 *%src, i64 %b) {




  %ptr = getelementptr i64, i64 *%src, i64 65535
  %res = atomicrmw xchg i64 *%ptr, i64 %b seq_cst
  ret i64 %res
}


define i64 @f3(i64 %dummy, i64 *%src, i64 %b) {





  %ptr = getelementptr i64, i64 *%src, i64 65536
  %res = atomicrmw xchg i64 *%ptr, i64 %b seq_cst
  ret i64 %res
}


define i64 @f4(i64 %dummy, i64 *%src, i64 %b) {




  %ptr = getelementptr i64, i64 *%src, i64 -65536
  %res = atomicrmw xchg i64 *%ptr, i64 %b seq_cst
  ret i64 %res
}


define i64 @f5(i64 %dummy, i64 *%src, i64 %b) {





  %ptr = getelementptr i64, i64 *%src, i64 -65537
  %res = atomicrmw xchg i64 *%ptr, i64 %b seq_cst
  ret i64 %res
}


define i64 @f6(i64 %dummy, i64 %base, i64 %index, i64 %b) {





  %add = add i64 %base, %index
  %ptr = inttoptr i64 %add to i64 *
  %res = atomicrmw xchg i64 *%ptr, i64 %b seq_cst
  ret i64 %res
}



define i64 @f7(i64 %dummy, i64 *%ptr) {







  %res = atomicrmw xchg i64 *%ptr, i64 3000000000 seq_cst
  ret i64 %res
}
