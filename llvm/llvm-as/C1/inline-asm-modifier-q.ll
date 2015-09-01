






define void @q_modifier(i32* %p) {
entry:
  tail call void asm sideeffect "movq (${0:q}, %ebx, 4), %mm0", "r,~{dirflag},~{fpsr},~{flags}"(i32* %p)
  ret void
}
