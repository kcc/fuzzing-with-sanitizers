

define void @foo() {
  
  call void asm sideeffect "add x0, x0, $0", "I"(i32 4097)
  ret void
}
