







define i32 @main() nounwind {
entry:






  tail call i64 asm sideeffect "addiu $0,$1,$2", "=r,r,i"(i64 7, i64 3) nounwind
  ret i32 0
}

