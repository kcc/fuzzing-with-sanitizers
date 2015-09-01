



define i8 @t(i8* %a, i8 %b, i8 %c) nounwind {







  %tmp0 = cmpxchg i8* %a, i8 %b, i8 %c monotonic monotonic
  %tmp1 = extractvalue { i8, i1 } %tmp0, 0
  ret i8 %tmp1
}
