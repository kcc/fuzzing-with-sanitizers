











define i8 @f1(i8 *%src, i8 %b) {

























  %res = atomicrmw xchg i8 *%src, i8 %b seq_cst
  ret i8 %res
}



define i8 @f2(i8 *%src) {







  %res = atomicrmw xchg i8 *%src, i8 88 seq_cst
  ret i8 %res
}
