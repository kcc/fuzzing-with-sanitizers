

define i32 @f(i32) nounwind {



entry:
  %1 = shl i32 1, %0
  %2 = add i32 %1, -1
  ret i32 %2
}
