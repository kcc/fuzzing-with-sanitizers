





define void @foo() nounwind {
  call void asm sideeffect "mov x0, #42", "~{x0},~{x19},~x{21}"() nounwind
  ret void
}
