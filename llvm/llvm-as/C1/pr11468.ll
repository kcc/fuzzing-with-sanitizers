


define void @f(i64 %sz) uwtable {
entry:
  %a = alloca i32, align 32
  store volatile i32 0, i32* %a, align 32
  
  call void asm sideeffect "nop", "~{r14},~{dirflag},~{fpsr},~{flags}"() nounwind, !srcloc !0
  ret void



















}

!0 = !{i32 125}

