













define i8 @f1(i8 *%src, i8 %b) {






























  %res = atomicrmw nand i8 *%src, i8 %b seq_cst
  ret i8 %res
}


define i8 @f2(i8 *%src) {
























  %res = atomicrmw nand i8 *%src, i8 -128 seq_cst
  ret i8 %res
}


define i8 @f3(i8 *%src) {









  %res = atomicrmw nand i8 *%src, i8 -2 seq_cst
  ret i8 %res
}


define i8 @f4(i8 *%src) {









  %res = atomicrmw nand i8 *%src, i8 1 seq_cst
  ret i8 %res
}


define i8 @f5(i8 *%src) {









  %res = atomicrmw nand i8 *%src, i8 127 seq_cst
  ret i8 %res
}



define i8 @f6(i8 *%src) {









  %res = atomicrmw nand i8 *%src, i8 253 seq_cst
  ret i8 %res
}
