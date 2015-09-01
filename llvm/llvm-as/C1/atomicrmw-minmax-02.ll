













define i16 @f1(i16 *%src, i16 %b) {






























  %res = atomicrmw min i16 *%src, i16 %b seq_cst
  ret i16 %res
}


define i16 @f2(i16 *%src, i16 %b) {






























  %res = atomicrmw max i16 *%src, i16 %b seq_cst
  ret i16 %res
}


define i16 @f3(i16 *%src, i16 %b) {






























  %res = atomicrmw umin i16 *%src, i16 %b seq_cst
  ret i16 %res
}


define i16 @f4(i16 *%src, i16 %b) {






























  %res = atomicrmw umax i16 *%src, i16 %b seq_cst
  ret i16 %res
}



define i16 @f5(i16 *%src) {










  %res = atomicrmw min i16 *%src, i16 -32767 seq_cst
  ret i16 %res
}



define i16 @f6(i16 *%src) {










  %res = atomicrmw max i16 *%src, i16 32766 seq_cst
  ret i16 %res
}



define i16 @f7(i16 *%src) {










  %res = atomicrmw umin i16 *%src, i16 1 seq_cst
  ret i16 %res
}



define i16 @f8(i16 *%src) {










  %res = atomicrmw umax i16 *%src, i16 65534 seq_cst
  ret i16 %res
}
