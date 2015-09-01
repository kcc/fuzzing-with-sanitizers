


define void @caller_meta_leaf() {
entry:
  %metadata = alloca i64, i32 3, align 8
  store i64 11, i64* %metadata
  store i64 12, i64* %metadata
  store i64 13, i64* %metadata



  call void (i64, i32, ...) @llvm.experimental.stackmap(i64 4, i32 0, i64* %metadata)



  ret void
}

declare void @llvm.experimental.stackmap(i64, i32, ...)
