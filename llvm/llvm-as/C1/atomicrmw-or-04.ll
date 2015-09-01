




define i64 @f1(i64 %dummy, i64 *%src, i64 %b) {








  %res = atomicrmw or i64 *%src, i64 %b seq_cst
  ret i64 %res
}


define i64 @f2(i64 %dummy, i64 *%src) {








  %res = atomicrmw or i64 *%src, i64 1 seq_cst
  ret i64 %res
}


define i64 @f3(i64 %dummy, i64 *%src) {



  %res = atomicrmw or i64 *%src, i64 65535 seq_cst
  ret i64 %res
}


define i64 @f4(i64 %dummy, i64 *%src) {



  %res = atomicrmw or i64 *%src, i64 65536 seq_cst
  ret i64 %res
}


define i64 @f5(i64 %dummy, i64 *%src) {



  %res = atomicrmw or i64 *%src, i64 65537 seq_cst
  ret i64 %res
}


define i64 @f6(i64 %dummy, i64 *%src) {



  %res = atomicrmw or i64 *%src, i64 4294901760 seq_cst
  ret i64 %res
}


define i64 @f7(i64 %dummy, i64 *%src) {



  %res = atomicrmw or i64 *%src, i64 4294901761 seq_cst
  ret i64 %res
}


define i64 @f8(i64 %dummy, i64 *%src) {



  %res = atomicrmw or i64 *%src, i64 4294967295 seq_cst
  ret i64 %res
}


define i64 @f9(i64 %dummy, i64 *%src) {



  %res = atomicrmw or i64 *%src, i64 4294967296 seq_cst
  ret i64 %res
}



define i64 @f10(i64 %dummy, i64 *%src) {



  %res = atomicrmw or i64 *%src, i64 4294967297 seq_cst
  ret i64 %res
}


define i64 @f11(i64 %dummy, i64 *%src) {



  %res = atomicrmw or i64 *%src, i64 281470681743360 seq_cst
  ret i64 %res
}


define i64 @f12(i64 %dummy, i64 *%src) {



  %res = atomicrmw or i64 *%src, i64 281474976710656 seq_cst
  ret i64 %res
}


define i64 @f13(i64 %dummy, i64 *%src) {



  %res = atomicrmw or i64 *%src, i64 281479271677952 seq_cst
  ret i64 %res
}


define i64 @f14(i64 %dummy, i64 *%src) {



  %res = atomicrmw or i64 *%src, i64 18446462598732840960 seq_cst
  ret i64 %res
}


define i64 @f15(i64 %dummy, i64 *%src) {



  %res = atomicrmw or i64 *%src, i64 18446462598732840961 seq_cst
  ret i64 %res
}


define i64 @f16(i64 %dummy, i64 *%src) {



  %res = atomicrmw or i64 *%src, i64 -4294967296 seq_cst
  ret i64 %res
}
