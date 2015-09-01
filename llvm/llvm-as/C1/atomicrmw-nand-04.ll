




define i64 @f1(i64 %dummy, i64 *%src, i64 %b) {










  %res = atomicrmw nand i64 *%src, i64 %b seq_cst
  ret i64 %res
}



define i64 @f2(i64 %dummy, i64 *%src) {



  %res = atomicrmw nand i64 *%src, i64 1 seq_cst
  ret i64 %res
}


define i64 @f3(i64 %dummy, i64 *%src) {









  %res = atomicrmw nand i64 *%src, i64 8589934591 seq_cst
  ret i64 %res
}


define i64 @f4(i64 %dummy, i64 *%src) {










  %res = atomicrmw nand i64 *%src, i64 12884901887 seq_cst
  ret i64 %res
}


define i64 @f5(i64 %dummy, i64 *%src) {



  %res = atomicrmw nand i64 *%src, i64 12884901888 seq_cst
  ret i64 %res
}


define i64 @f6(i64 %dummy, i64 *%src) {



  %res = atomicrmw nand i64 *%src, i64 844424930131967 seq_cst
  ret i64 %res
}


define i64 @f7(i64 %dummy, i64 *%src) {



  %res = atomicrmw nand i64 *%src, i64 281474976710656 seq_cst
  ret i64 %res
}


define i64 @f8(i64 %dummy, i64 *%src) {



  %res = atomicrmw nand i64 *%src, i64 -6 seq_cst
  ret i64 %res
}


define i64 @f9(i64 %dummy, i64 *%src) {



  %res = atomicrmw nand i64 *%src, i64 -65534 seq_cst
  ret i64 %res
}


define i64 @f10(i64 %dummy, i64 *%src) {



  %res = atomicrmw nand i64 *%src, i64 -65538 seq_cst
  ret i64 %res
}


define i64 @f11(i64 %dummy, i64 *%src) {



  %res = atomicrmw nand i64 *%src, i64 -327681 seq_cst
  ret i64 %res
}


define i64 @f12(i64 %dummy, i64 *%src) {



  %res = atomicrmw nand i64 *%src, i64 -4294770689 seq_cst
  ret i64 %res
}


define i64 @f13(i64 %dummy, i64 *%src) {



  %res = atomicrmw nand i64 *%src, i64 -4294967294 seq_cst
  ret i64 %res
}


define i64 @f14(i64 %dummy, i64 *%src) {



  %res = atomicrmw nand i64 *%src, i64 -21474836481 seq_cst
  ret i64 %res
}


define i64 @f15(i64 %dummy, i64 *%src) {



  %res = atomicrmw nand i64 *%src, i64 -281462091808769 seq_cst
  ret i64 %res
}


define i64 @f16(i64 %dummy, i64 *%src) {



  %res = atomicrmw nand i64 *%src, i64 -1407374883553281 seq_cst
  ret i64 %res
}


define i64 @f17(i64 %dummy, i64 *%src) {



  %res = atomicrmw nand i64 *%src, i64 -281479271677953 seq_cst
  ret i64 %res
}
