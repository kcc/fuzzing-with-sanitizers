











define i32 @foo() nounwind {
entry:
  %0 = tail call i32 asm sideeffect "ldr $0,=1", "=r"() nounwind
  ret i32 %0
}
