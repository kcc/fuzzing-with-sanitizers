


@x = common global i32 0, align 4

define i32 @AtomicLoadAdd32(i32 %incr) nounwind {
entry:
  %0 = atomicrmw add i32* @x, i32 %incr monotonic
  ret i32 %0








}
