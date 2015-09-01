





define i32 @constraint_M(i32 %i, i32 %j) nounwind {
entry:
  %0 = tail call i32 asm sideeffect "movk $0, $1", "=r,M"(i32 305418240) nounwind
  ret i32 %0
}
