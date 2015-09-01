





define i32 @constraint_N(i32 %i, i32 %j) nounwind {
entry:
  %0 = tail call i32 asm sideeffect "movk $0, $1", "=r,N"(i64 1311761352401879040) nounwind
  ret i32 %0
}
