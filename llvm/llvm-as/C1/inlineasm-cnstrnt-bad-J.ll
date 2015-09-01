






define i32 @main() nounwind {
entry:



  tail call i32 asm "addiu $0,$1,$2", "=r,r,J"(i32 1024, i32 3) nounwind
  ret i32 0
}

