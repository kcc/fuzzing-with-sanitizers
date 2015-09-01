




define i32 @f1(i32 %dummy, i32 *%src, i32 %b) {








  %res = atomicrmw xor i32 *%src, i32 %b seq_cst
  ret i32 %res
}


define i32 @f2(i32 %dummy, i32 *%src) {








  %res = atomicrmw xor i32 *%src, i32 1 seq_cst
  ret i32 %res
}


define i32 @f3(i32 %dummy, i32 *%src) {



  %res = atomicrmw xor i32 *%src, i32 3000000000 seq_cst
  ret i32 %res
}


define i32 @f4(i32 %dummy, i32 *%src) {



  %res = atomicrmw xor i32 *%src, i32 -1 seq_cst
  ret i32 %res
}
