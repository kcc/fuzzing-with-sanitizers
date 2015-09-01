

define void @foo() {
  
  call void asm sideeffect "and x0, x0, $0", "L"(i32 13)
  ret void
}
