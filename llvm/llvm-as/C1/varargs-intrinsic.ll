

declare void @llvm.experimental.stackmap(i64, i32)
declare void @llvm.donothing(...)

define void @foo1() {
  call void @llvm.experimental.stackmap(i64 0, i32 12)

  ret void
}

define void @foo2() {
  call void (...) @llvm.donothing(i64 0, i64 1)

  ret void
}
