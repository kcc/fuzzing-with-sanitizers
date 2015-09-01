









define void @shadow_optimization_test() {
entry:







  call void @bar()
  tail call void (i64, i32, ...) @llvm.experimental.stackmap(i64 0, i32 8)
  call void @bar()
  call void @bar()
  ret void
}

declare void @llvm.experimental.stackmap(i64, i32, ...)
declare void @bar()
