


define i32 @max(i8 %ctx, i32* %ptr, i32 %val)
{



  %old = atomicrmw umax i32* %ptr, i32 %val monotonic
  ret i32 %old
}


define i32 @min(i8 %ctx, i32* %ptr, i32 %val)
{



  %old = atomicrmw umin i32* %ptr, i32 %val monotonic
  ret i32 %old
}
