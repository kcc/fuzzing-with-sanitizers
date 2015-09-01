



define i32 @rbit(i32 %t) {
entry:
  %rbit = call i32 @llvm.arm.rbit(i32 %t)
  ret i32 %rbit
}




define i32 @rbit_constant() {
entry:
  %rbit.i = call i32 @llvm.arm.rbit(i32 0)
  ret i32 %rbit.i
}

declare i32 @llvm.arm.rbit(i32)
