




define i32 @f1(i32 %dummy, i32 *%src, i32 %b) {








  %res = atomicrmw add i32 *%src, i32 %b seq_cst
  ret i32 %res
}


define i32 @f2(i32 %dummy, i32 *%src) {








  %res = atomicrmw add i32 *%src, i32 1 seq_cst
  ret i32 %res
}


define i32 @f3(i32 %dummy, i32 *%src) {



  %res = atomicrmw add i32 *%src, i32 32767 seq_cst
  ret i32 %res
}


define i32 @f4(i32 %dummy, i32 *%src) {



  %res = atomicrmw add i32 *%src, i32 32768 seq_cst
  ret i32 %res
}


define i32 @f5(i32 %dummy, i32 *%src) {



  %res = atomicrmw add i32 *%src, i32 2147483647 seq_cst
  ret i32 %res
}


define i32 @f6(i32 %dummy, i32 *%src) {



  %res = atomicrmw add i32 *%src, i32 2147483648 seq_cst
  ret i32 %res
}


define i32 @f7(i32 %dummy, i32 *%src) {



  %res = atomicrmw add i32 *%src, i32 -1 seq_cst
  ret i32 %res
}


define i32 @f8(i32 %dummy, i32 *%src) {



  %res = atomicrmw add i32 *%src, i32 -32768 seq_cst
  ret i32 %res
}


define i32 @f9(i32 %dummy, i32 *%src) {



  %res = atomicrmw add i32 *%src, i32 -32769 seq_cst
  ret i32 %res
}
