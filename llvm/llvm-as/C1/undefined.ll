



declare void @llvm.arm.undefined(i32) nounwind

define void @undefined_trap() {
entry:
  tail call void @llvm.arm.undefined(i32 254)
  ret void
}



