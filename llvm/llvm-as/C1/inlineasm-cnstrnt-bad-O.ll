







define i32 @main() nounwind {
entry:



  tail call i32 asm sideeffect "addiu $0,$1,$2", "=r,r,O"(i32 undef, i32 16384) nounwind
  ret i32 0
}
