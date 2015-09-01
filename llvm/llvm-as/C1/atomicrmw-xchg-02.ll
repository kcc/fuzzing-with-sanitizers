











define i16 @f1(i16 *%src, i16 %b) {

























  %res = atomicrmw xchg i16 *%src, i16 %b seq_cst
  ret i16 %res
}



define i16 @f2(i16 *%src) {







  %res = atomicrmw xchg i16 *%src, i16 40000 seq_cst
  ret i16 %res
}
