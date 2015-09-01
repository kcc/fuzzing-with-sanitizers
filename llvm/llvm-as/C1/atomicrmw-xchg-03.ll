




define i32 @f1(i32 %dummy, i32 *%src, i32 %b) {






  %res = atomicrmw xchg i32 *%src, i32 %b seq_cst
  ret i32 %res
}


define i32 @f2(i32 %dummy, i32 *%src, i32 %b) {




  %ptr = getelementptr i32, i32 *%src, i64 1023
  %res = atomicrmw xchg i32 *%ptr, i32 %b seq_cst
  ret i32 %res
}


define i32 @f3(i32 %dummy, i32 *%src, i32 %b) {




  %ptr = getelementptr i32, i32 *%src, i64 1024
  %res = atomicrmw xchg i32 *%ptr, i32 %b seq_cst
  ret i32 %res
}


define i32 @f4(i32 %dummy, i32 *%src, i32 %b) {




  %ptr = getelementptr i32, i32 *%src, i64 131071
  %res = atomicrmw xchg i32 *%ptr, i32 %b seq_cst
  ret i32 %res
}


define i32 @f5(i32 %dummy, i32 *%src, i32 %b) {





  %ptr = getelementptr i32, i32 *%src, i64 131072
  %res = atomicrmw xchg i32 *%ptr, i32 %b seq_cst
  ret i32 %res
}


define i32 @f6(i32 %dummy, i32 *%src, i32 %b) {




  %ptr = getelementptr i32, i32 *%src, i64 -1
  %res = atomicrmw xchg i32 *%ptr, i32 %b seq_cst
  ret i32 %res
}


define i32 @f7(i32 %dummy, i32 *%src, i32 %b) {




  %ptr = getelementptr i32, i32 *%src, i64 -131072
  %res = atomicrmw xchg i32 *%ptr, i32 %b seq_cst
  ret i32 %res
}


define i32 @f8(i32 %dummy, i32 *%src, i32 %b) {





  %ptr = getelementptr i32, i32 *%src, i64 -131073
  %res = atomicrmw xchg i32 *%ptr, i32 %b seq_cst
  ret i32 %res
}


define i32 @f9(i32 %dummy, i64 %base, i64 %index, i32 %b) {





  %add = add i64 %base, %index
  %ptr = inttoptr i64 %add to i32 *
  %res = atomicrmw xchg i32 *%ptr, i32 %b seq_cst
  ret i32 %res
}



define i32 @f10(i32 %dummy, i32 *%src) {







  %res = atomicrmw xchg i32 *%src, i32 40000 seq_cst
  ret i32 %res
}

