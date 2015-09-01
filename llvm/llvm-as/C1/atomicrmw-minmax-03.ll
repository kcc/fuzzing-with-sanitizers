





define i32 @f1(i32 %dummy, i32 *%src, i32 %b) {









  %res = atomicrmw min i32 *%src, i32 %b seq_cst
  ret i32 %res
}


define i32 @f2(i32 %dummy, i32 *%src, i32 %b) {









  %res = atomicrmw max i32 *%src, i32 %b seq_cst
  ret i32 %res
}


define i32 @f3(i32 %dummy, i32 *%src, i32 %b) {









  %res = atomicrmw umin i32 *%src, i32 %b seq_cst
  ret i32 %res
}


define i32 @f4(i32 %dummy, i32 *%src, i32 %b) {









  %res = atomicrmw umax i32 *%src, i32 %b seq_cst
  ret i32 %res
}


define i32 @f5(i32 %dummy, i32 *%src, i32 %b) {




  %ptr = getelementptr i32, i32 *%src, i64 1023
  %res = atomicrmw min i32 *%ptr, i32 %b seq_cst
  ret i32 %res
}


define i32 @f6(i32 %dummy, i32 *%src, i32 %b) {




  %ptr = getelementptr i32, i32 *%src, i64 1024
  %res = atomicrmw min i32 *%ptr, i32 %b seq_cst
  ret i32 %res
}


define i32 @f7(i32 %dummy, i32 *%src, i32 %b) {




  %ptr = getelementptr i32, i32 *%src, i64 131071
  %res = atomicrmw min i32 *%ptr, i32 %b seq_cst
  ret i32 %res
}


define i32 @f8(i32 %dummy, i32 *%src, i32 %b) {





  %ptr = getelementptr i32, i32 *%src, i64 131072
  %res = atomicrmw min i32 *%ptr, i32 %b seq_cst
  ret i32 %res
}


define i32 @f9(i32 %dummy, i32 *%src, i32 %b) {




  %ptr = getelementptr i32, i32 *%src, i64 -1
  %res = atomicrmw min i32 *%ptr, i32 %b seq_cst
  ret i32 %res
}


define i32 @f10(i32 %dummy, i32 *%src, i32 %b) {




  %ptr = getelementptr i32, i32 *%src, i64 -131072
  %res = atomicrmw min i32 *%ptr, i32 %b seq_cst
  ret i32 %res
}


define i32 @f11(i32 %dummy, i32 *%src, i32 %b) {





  %ptr = getelementptr i32, i32 *%src, i64 -131073
  %res = atomicrmw min i32 *%ptr, i32 %b seq_cst
  ret i32 %res
}


define i32 @f12(i32 %dummy, i64 %base, i64 %index, i32 %b) {





  %add = add i64 %base, %index
  %ptr = inttoptr i64 %add to i32 *
  %res = atomicrmw min i32 *%ptr, i32 %b seq_cst
  ret i32 %res
}


define i32 @f13(i32 %dummy, i32 *%ptr) {










  %res = atomicrmw min i32 *%ptr, i32 42 seq_cst
  ret i32 %res
}
