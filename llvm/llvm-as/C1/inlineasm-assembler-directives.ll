



define void @f() nounwind {
entry:









  %a = alloca i32, align 4
  %b = alloca i32, align 4
  store i32 20, i32* %a, align 4
  %0 = load i32, i32* %a, align 4
  %1 = call i32 asm sideeffect "addi $$9, $1, 8\0A\09subi $0, $$9, 6", "=r,r,~{$1}"(i32 %0)
  store i32 %1, i32* %b, align 4
  ret void
}
