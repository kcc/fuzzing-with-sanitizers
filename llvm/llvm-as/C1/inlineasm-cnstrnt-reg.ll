




define i32 @main() nounwind {
entry:





  tail call i8 asm sideeffect "addiu $0,$1,$2", "=r,r,n"(i8 27, i8 23) nounwind





  tail call i16 asm sideeffect "addiu $0,$1,$2", "=r,r,n"(i16 17, i16 13) nounwind





  tail call i32 asm sideeffect "addiu $0,$1,$2", "=r,r,n"(i32 7, i32 3) nounwind





   tail call i32 asm sideeffect "addiu $0,$1,$2", "=c,c,I"(i32 4194304, i32 1024) nounwind








  %bosco = alloca i32, align 4
  call i32 asm sideeffect "\09mtlo $3 \0A\09\09madd $1,$2 ", "=l,r,r,r"(i32 7, i32 6, i32 44) nounwind
  store volatile i32 %4, i32* %bosco, align 4
 
  ret i32 0
}
