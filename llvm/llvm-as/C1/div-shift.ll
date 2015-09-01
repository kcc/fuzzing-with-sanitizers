

define i32 @t1(i16 zeroext %x, i32 %y) nounwind {
entry:



  %conv = zext i16 %x to i32
  %s = shl i32 2, %y
  %d = sdiv i32 %conv, %s
  ret i32 %d
}


define i64 @t2(i64 %x, i32 %y) nounwind  {



  %1 = shl i32 1, %y
  %2 = zext i32 %1 to i64
  %3 = udiv i64 %x, %2
  ret i64 %3
}


define i64 @t3(i64 %x, i32 %y) nounwind  {






  %1 = shl i32 4, %y
  %2 = zext i32 %1 to i64
  %3 = udiv i64 %x, %2
  ret i64 %3
}

define i32 @t4(i32 %x, i32 %y) nounwind {






  %1 = shl i32 1, %y
  %2 = icmp ult i32 %1, 32
  %3 = select i1 %2, i32 32, i32 %1
  %4 = udiv i32 %x, %3
  ret i32 %4
}

define i32 @t5(i1 %x, i1 %y, i32 %V) nounwind {






  %1 = shl i32 1, %V
  %2 = select i1 %x, i32 32, i32 64
  %3 = select i1 %y, i32 %2, i32 %1
  %4 = udiv i32 %V, %3
  ret i32 %4
}

define i32 @t6(i32 %x, i32 %z) nounwind{



  %x_is_zero = icmp eq i32 %x, 0
  %divisor = select i1 %x_is_zero, i32 1, i32 %x
  %y = udiv i32 %z, %divisor
  ret i32 %y
}
