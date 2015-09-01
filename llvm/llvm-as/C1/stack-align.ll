
declare void @stack_realign_helper(i32 %a, i32* %b)

@foo = global i32 1












define void @stack_realign(i32 %a, i32 %b, i32 %c, i32 %d, i32 %e, i32 %f, i32 %g) {
entry:
  %aligned = alloca i32, align 64
  call void @stack_realign_helper(i32 %g, i32* %aligned)
  ret void
}
