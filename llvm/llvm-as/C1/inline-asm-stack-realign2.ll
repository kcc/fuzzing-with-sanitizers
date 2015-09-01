







define i32 @foo() {
entry:
  %r = alloca i32, align 16
  store i32 -1, i32* %r, align 16
  call void asm sideeffect "push %esi\0A\09xor %esi, %esi\0A\09mov %esi, $0\0A\09pop %esi", "=*m,~{flags},~{esi},~{esp},~{dirflag},~{fpsr},~{flags}"(i32* %r)
  %0 = load i32, i32* %r, align 16
  ret i32 %0
}
