







define i32 @main() nounwind {
entry:



  tail call i32 asm sideeffect "addiu $0,$1,$2", "=r,r,P"(i32 undef, i32 655536) nounwind
  ret i32 0
}
