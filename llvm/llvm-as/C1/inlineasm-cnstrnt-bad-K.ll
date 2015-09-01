






define i32 @main() nounwind {
entry:



  tail call i32 asm "addu $0,$1,$2", "=r,r,K"(i32 1024, i32 1048576) nounwind
  ret i32 0
}

