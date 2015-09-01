





define i32 @constraint_J(i32 %i, i32 %j) nounwind ssp {
entry:
  %0 = tail call i32 asm sideeffect "sub $0, $1, $2", "=r,r,J"(i32 %i, i32 2) nounwind
  ret i32 %0
}
