






define i32 @main() nounwind {
entry:


  tail call i32 asm sideeffect "addiu $0,$1,$2", "=r,r,I"(i32 7, i32 1048576) nounwind
  ret i32 0
}

