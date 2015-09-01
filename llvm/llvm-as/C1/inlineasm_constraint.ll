

define i32 @main() nounwind {
entry:





  tail call i16 asm sideeffect "addiu $0,$1,$2", "=r,r,I"(i16 7, i16 4096) nounwind





   tail call i32 asm sideeffect "addiu $0,$1,$2", "=r,r,I"(i32 7, i32 -3) nounwind





  tail call i32 asm sideeffect "addiu $0,$1,$2\0A\09 ", "=r,r,J"(i32 7, i16 0) nounwind





  tail call i16 asm sideeffect "addu $0,$1,$2\0A\09 ", "=r,r,K"(i16 7, i16 64) nounwind





  tail call i32 asm sideeffect "add $0,$1,$3\0A\09", "=r,r,L,r"(i32 7, i32 1048576, i32 0) nounwind





  tail call i32 asm sideeffect "addiu $0,$1,$2", "=r,r,N"(i32 7, i32 -3) nounwind





  tail call i32 asm sideeffect "addiu $0,$1,$2", "=r,r,O"(i32 7, i16 -3) nounwind





  tail call i32 asm sideeffect "addiu $0,$1,$2", "=r,r,P"(i32 7, i32 65535) nounwind

  ret i32 0
}
