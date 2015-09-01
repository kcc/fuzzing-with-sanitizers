
@bar = common global i32 0, align 4

declare i32 @call_foo(i32, ...)

define i32 @foo() {
entry:
  %0 = load i32, i32* @bar, align 4
  %call = call i32 (i32, ...) @call_foo(i32 %0, i32 0, i32 1, i32 2, i32 4, i32 8, i32 16, i32 32, i32 64)
  ret i32 0
}

!llvm.module.flags = !{!0}
!0 = !{i32 1, !"PIC Level", i32 1}










