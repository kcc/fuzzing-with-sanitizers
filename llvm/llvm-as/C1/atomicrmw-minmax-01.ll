













define i8 @f1(i8 *%src, i8 %b) {






























  %res = atomicrmw min i8 *%src, i8 %b seq_cst
  ret i8 %res
}


define i8 @f2(i8 *%src, i8 %b) {






























  %res = atomicrmw max i8 *%src, i8 %b seq_cst
  ret i8 %res
}


define i8 @f3(i8 *%src, i8 %b) {






























  %res = atomicrmw umin i8 *%src, i8 %b seq_cst
  ret i8 %res
}


define i8 @f4(i8 *%src, i8 %b) {






























  %res = atomicrmw umax i8 *%src, i8 %b seq_cst
  ret i8 %res
}



define i8 @f5(i8 *%src) {










  %res = atomicrmw min i8 *%src, i8 -127 seq_cst
  ret i8 %res
}



define i8 @f6(i8 *%src) {










  %res = atomicrmw max i8 *%src, i8 126 seq_cst
  ret i8 %res
}



define i8 @f7(i8 *%src) {










  %res = atomicrmw umin i8 *%src, i8 1 seq_cst
  ret i8 %res
}



define i8 @f8(i8 *%src) {










  %res = atomicrmw umax i8 *%src, i8 254 seq_cst
  ret i8 %res
}
