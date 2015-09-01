




define i64 @f1(i64 %dummy, i64 *%src, i64 %b) {








  %res = atomicrmw sub i64 *%src, i64 %b seq_cst
  ret i64 %res
}


define i64 @f2(i64 %dummy, i64 *%src) {








  %res = atomicrmw sub i64 *%src, i64 1 seq_cst
  ret i64 %res
}


define i64 @f3(i64 %dummy, i64 *%src) {



  %res = atomicrmw sub i64 *%src, i64 32768 seq_cst
  ret i64 %res
}


define i64 @f4(i64 %dummy, i64 *%src) {



  %res = atomicrmw sub i64 *%src, i64 32769 seq_cst
  ret i64 %res
}


define i64 @f5(i64 %dummy, i64 *%src) {



  %res = atomicrmw sub i64 *%src, i64 2147483648 seq_cst
  ret i64 %res
}


define i64 @f6(i64 %dummy, i64 *%src) {



  %res = atomicrmw sub i64 *%src, i64 2147483649 seq_cst
  ret i64 %res
}


define i64 @f7(i64 %dummy, i64 *%src) {



  %res = atomicrmw sub i64 *%src, i64 -1 seq_cst
  ret i64 %res
}


define i64 @f8(i64 %dummy, i64 *%src) {



  %res = atomicrmw sub i64 *%src, i64 -32767 seq_cst
  ret i64 %res
}


define i64 @f9(i64 %dummy, i64 *%src) {



  %res = atomicrmw sub i64 *%src, i64 -32768 seq_cst
  ret i64 %res
}


define i64 @f10(i64 %dummy, i64 *%src) {



  %res = atomicrmw sub i64 *%src, i64 -2147483647 seq_cst
  ret i64 %res
}


define i64 @f11(i64 %dummy, i64 *%src) {



  %res = atomicrmw sub i64 *%src, i64 -2147483648 seq_cst
  ret i64 %res
}
