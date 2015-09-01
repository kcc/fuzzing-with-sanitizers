







define void @memory_asm_operand(i32 %a) {
  
  
  
  call i32 asm "lbzx $0, $1", "=r,m" (i32 %a)
  ret void
}

