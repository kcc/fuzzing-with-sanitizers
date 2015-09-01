




define i64 @f1(i64 %dummy, i64 *%src, i64 %b) {








  %res = atomicrmw xor i64 *%src, i64 %b seq_cst
  ret i64 %res
}


define i64 @f2(i64 %dummy, i64 *%src) {








  %res = atomicrmw xor i64 *%src, i64 1 seq_cst
  ret i64 %res
}


define i64 @f3(i64 %dummy, i64 *%src) {



  %res = atomicrmw xor i64 *%src, i64 4294967295 seq_cst
  ret i64 %res
}


define i64 @f4(i64 %dummy, i64 *%src) {



  %res = atomicrmw xor i64 *%src, i64 4294967296 seq_cst
  ret i64 %res
}



define i64 @f5(i64 %dummy, i64 *%src) {



  %res = atomicrmw xor i64 *%src, i64 4294967297 seq_cst
  ret i64 %res
}


define i64 @f6(i64 %dummy, i64 *%src) {



  %res = atomicrmw xor i64 *%src, i64 -4294967296 seq_cst
  ret i64 %res
}


define i64 @f7(i64 %dummy, i64 *%src) {



  %res = atomicrmw xor i64 *%src, i64 -4294967295 seq_cst
  ret i64 %res
}
