













define i16 @f1(i16 *%src, i16 %b) {




























  %res = atomicrmw add i16 *%src, i16 %b seq_cst
  ret i16 %res
}


define i16 @f2(i16 *%src) {























  %res = atomicrmw add i16 *%src, i16 -32768 seq_cst
  ret i16 %res
}


define i16 @f3(i16 *%src) {








  %res = atomicrmw add i16 *%src, i16 -1 seq_cst
  ret i16 %res
}


define i16 @f4(i16 *%src) {








  %res = atomicrmw add i16 *%src, i16 1 seq_cst
  ret i16 %res
}


define i16 @f5(i16 *%src) {








  %res = atomicrmw add i16 *%src, i16 32767 seq_cst
  ret i16 %res
}



define i16 @f6(i16 *%src) {








  %res = atomicrmw add i16 *%src, i16 65534 seq_cst
  ret i16 %res
}
