

















































declare void @llvm.experimental.stackmap(i64, i32, ...)

define void @foo() {
  tail call void (i64, i32, ...) @llvm.experimental.stackmap(i64 0, i32 0, i64 9223372036854775807)
  ret void
}























define void @bar() {
  tail call void (i64, i32, ...) @llvm.experimental.stackmap(i64 0, i32 0, i64 -9223372036854775808)
  ret void
}
