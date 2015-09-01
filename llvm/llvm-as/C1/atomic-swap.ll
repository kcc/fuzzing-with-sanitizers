

define i8 @cmpswap() {

  %i = alloca i8
  %pair = cmpxchg i8* %i, i8 0, i8 42 monotonic monotonic
  %j = extractvalue { i8, i1 } %pair, 0







  ret i8 %j

}


define i8 @swap() {

  %i = alloca i8
  %j = atomicrmw xchg i8* %i, i8 42 monotonic


  ret i8 %j

}
