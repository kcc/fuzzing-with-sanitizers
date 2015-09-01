












@x = common global i32 0, align 4

define i32 @AtomicLoadAdd32(i32 signext %incr) nounwind {
entry:
  %0 = atomicrmw add i32* @x, i32 %incr monotonic
  ret i32 %0












}

define i32 @AtomicLoadNand32(i32 signext %incr) nounwind {
entry:
  %0 = atomicrmw nand i32* @x, i32 %incr monotonic
  ret i32 %0













}

define i32 @AtomicSwap32(i32 signext %newval) nounwind {
entry:
  %newval.addr = alloca i32, align 4
  store i32 %newval, i32* %newval.addr, align 4
  %tmp = load i32, i32* %newval.addr, align 4
  %0 = atomicrmw xchg i32* @x, i32 %tmp monotonic
  ret i32 %0











}

define i32 @AtomicCmpSwap32(i32 signext %oldval, i32 signext %newval) nounwind {
entry:
  %newval.addr = alloca i32, align 4
  store i32 %newval, i32* %newval.addr, align 4
  %tmp = load i32, i32* %newval.addr, align 4
  %0 = cmpxchg i32* @x, i32 %oldval, i32 %tmp monotonic monotonic
  %1 = extractvalue { i32, i1 } %0, 0
  ret i32 %1













}



@y = common global i8 0, align 1

define signext i8 @AtomicLoadAdd8(i8 signext %incr) nounwind {
entry:
  %0 = atomicrmw add i8* @y, i8 %incr monotonic
  ret i8 %0


































}

define signext i8 @AtomicLoadSub8(i8 signext %incr) nounwind {
entry:
  %0 = atomicrmw sub i8* @y, i8 %incr monotonic
  ret i8 %0


































}

define signext i8 @AtomicLoadNand8(i8 signext %incr) nounwind {
entry:
  %0 = atomicrmw nand i8* @y, i8 %incr monotonic
  ret i8 %0



































}

define signext i8 @AtomicSwap8(i8 signext %newval) nounwind {
entry:
  %0 = atomicrmw xchg i8* @y, i8 %newval monotonic
  ret i8 %0


































}

define signext i8 @AtomicCmpSwap8(i8 signext %oldval, i8 signext %newval) nounwind {
entry:
  %pair0 = cmpxchg i8* @y, i8 %oldval, i8 %newval monotonic monotonic
  %0 = extractvalue { i8, i1 } %pair0, 0
  ret i8 %0






































}

define i1 @AtomicCmpSwapRes8(i8* %ptr, i8 signext %oldval, i8 signext %newval) nounwind {
entry:
  %0 = cmpxchg i8* %ptr, i8 %oldval, i8 %newval monotonic monotonic
  %1 = extractvalue { i8, i1 } %0, 1
  ret i1 %1





































}


@z = common global i16 0, align 1

define signext i16 @AtomicLoadAdd16(i16 signext %incr) nounwind {
entry:
  %0 = atomicrmw add i16* @z, i16 %incr monotonic
  ret i16 %0


































}


@countsint = common global i32 0, align 4

define i32 @CheckSync(i32 signext %v) nounwind noinline {
entry:
  %0 = atomicrmw add i32* @countsint, i32 %v seq_cst
  ret i32 %0 








}








@a = external global i32

define i32 @zeroreg() nounwind {
entry:
  %pair0 = cmpxchg i32* @a, i32 1, i32 0 seq_cst seq_cst
  %0 = extractvalue { i32, i1 } %pair0, 0
  %1 = icmp eq i32 %0, 1
  %conv = zext i1 %1 to i32
  ret i32 %conv
}



define i32 @AtomicLoadAdd32_OffGt9Bit(i32 signext %incr) nounwind {
entry:
  %0 = atomicrmw add i32* getelementptr(i32, i32* @x, i32 256), i32 %incr monotonic
  ret i32 %0













}
