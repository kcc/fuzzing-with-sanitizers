













define i8 @f1(i8 *%src, i8 %b) {




























  %res = atomicrmw sub i8 *%src, i8 %b seq_cst
  ret i8 %res
}


define i8 @f2(i8 *%src) {























  %res = atomicrmw sub i8 *%src, i8 -128 seq_cst
  ret i8 %res
}


define i8 @f3(i8 *%src) {








  %res = atomicrmw sub i8 *%src, i8 -1 seq_cst
  ret i8 %res
}


define i8 @f4(i8 *%src) {








  %res = atomicrmw sub i8 *%src, i8 1 seq_cst
  ret i8 %res
}


define i8 @f5(i8 *%src) {








  %res = atomicrmw sub i8 *%src, i8 127 seq_cst
  ret i8 %res
}



define i8 @f6(i8 *%src) {








  %res = atomicrmw sub i8 *%src, i8 254 seq_cst
  ret i8 %res
}
