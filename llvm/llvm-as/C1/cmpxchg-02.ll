











define i16 @f1(i16 %dummy, i16 *%src, i16 %cmp, i16 %swap) {





















  %pair = cmpxchg i16 *%src, i16 %cmp, i16 %swap seq_cst seq_cst
  %res = extractvalue { i16, i1 } %pair, 0
  ret i16 %res
}



define i16 @f2(i16 *%src) {











  %pair = cmpxchg i16 *%src, i16 42, i16 88 seq_cst seq_cst
  %res = extractvalue { i16, i1 } %pair, 0
  ret i16 %res
}
