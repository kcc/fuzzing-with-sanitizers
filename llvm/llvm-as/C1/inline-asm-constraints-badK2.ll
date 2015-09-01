

define void @foo() {
  
  call void asm sideeffect "and w0, w0, $0", "K"(i64 4294967296)
  ret void
}
