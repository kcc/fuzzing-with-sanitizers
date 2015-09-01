











define i8 @f1(i8 %dummy, i8 *%src, i8 %cmp, i8 %swap) {





















  %pair = cmpxchg i8 *%src, i8 %cmp, i8 %swap seq_cst seq_cst
  %res = extractvalue { i8, i1 } %pair, 0
  ret i8 %res
}



define i8 @f2(i8 *%src) {











  %pair = cmpxchg i8 *%src, i8 42, i8 88 seq_cst seq_cst
  %res = extractvalue { i8, i1 } %pair, 0
  ret i8 %res
}
