


@g1 = external global i32

define i32 @f1(i32 %x) nounwind {
entry:










  %l1 = alloca i32, align 4
  call void asm "sw $1, $0", "=*m,r"(i32* %l1, i32 %x) nounwind
  %0 = call i32 asm "lw $0, $1", "=r,*m"(i32* %l1) nounwind
  store i32 %0, i32* @g1, align 4
  ret i32 %0
}














@b = common global [20 x i32] zeroinitializer, align 4

define void @main() {
entry:

  tail call void asm sideeffect "    lw    $0, ${1:D}

  tail call void asm sideeffect "    lw    $0, ${1}
  ret void
}
