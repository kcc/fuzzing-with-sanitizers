

define void @test_shadow_optimization() {
entry:






  tail call void (i64, i32, ...) @llvm.experimental.stackmap(i64  0, i32  16)
  ret void
}

declare void @llvm.experimental.stackmap(i64, i32, ...)
