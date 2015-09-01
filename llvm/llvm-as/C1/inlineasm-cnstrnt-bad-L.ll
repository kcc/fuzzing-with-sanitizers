






define i32 @main() nounwind {
entry:



  tail call i32 asm "addiu $0,$1,$2", "=r,r,L"(i32 7, i32 1048579) nounwind
  ret i32 0
}

