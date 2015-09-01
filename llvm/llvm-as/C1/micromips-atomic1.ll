








@y = common global i8 0, align 1

define signext i8 @AtomicLoadAdd8(i8 signext %incr) nounwind {
entry:
  %0 = atomicrmw add i8* @y, i8 %incr monotonic
  ret i8 %0



}

define signext i8 @AtomicCmpSwap8(i8 signext %oldval, i8 signext %newval) nounwind {
entry:
  %pair0 = cmpxchg i8* @y, i8 %oldval, i8 %newval monotonic monotonic
  %0 = extractvalue { i8, i1 } %pair0, 0
  ret i8 %0



}
