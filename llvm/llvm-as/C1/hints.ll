



declare void @llvm.arm.hint(i32) nounwind

define void @hint_nop() {
entry:
  tail call void @llvm.arm.hint(i32 0) nounwind
  ret void
}




define void @hint_yield() {
entry:
  tail call void @llvm.arm.hint(i32 1) nounwind
  ret void
}




define void @hint_wfe() {
entry:
  tail call void @llvm.arm.hint(i32 2) nounwind
  ret void
}




define void @hint_wfi() {
entry:
  tail call void @llvm.arm.hint(i32 3) nounwind
  ret void
}




define void @hint_sev() {
entry:
  tail call void @llvm.arm.hint(i32 4) nounwind
  ret void
}




define void @hint_sevl() {
entry:
  tail call void @llvm.arm.hint(i32 5) nounwind
  ret void
}




define void @hint_undefined() {
entry:
  tail call void @llvm.arm.hint(i32 8) nounwind
  ret void
}




