


define void @hint_dbg() {
entry:
  call void @llvm.arm.dbg(i32 0)
  ret void
}

declare void @llvm.arm.dbg(i32)



