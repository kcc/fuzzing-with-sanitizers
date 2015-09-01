


































































































define void @constantargs() {
entry:
  tail call void (i64, i32, ...) @llvm.experimental.stackmap(i64 1, i32 15, i16 65535, i16 -1, i32 65536, i32 2000000000, i32 2147483647, i32 -1, i32 4294967295, i32 4294967296, i64 2147483648, i64 4294967295, i64 4294967296, i64 -1)
  ret void
}













define void @liveConstant() {
  tail call void (i64, i32, ...) @llvm.experimental.stackmap(i64 15, i32 5, i32 33)
  ret void
}














define void @directFrameIdx() {
entry:
  %metadata1 = alloca i64, i32 3, align 8
  store i64 11, i64* %metadata1
  store i64 12, i64* %metadata1
  store i64 13, i64* %metadata1
  call void (i64, i32, ...) @llvm.experimental.stackmap(i64 16, i32 0, i64* %metadata1)
  ret void
}











define void @longid() {
entry:
  tail call void (i64, i32, ...) @llvm.experimental.stackmap(i64 4294967295, i32 0)
  tail call void (i64, i32, ...) @llvm.experimental.stackmap(i64 4294967296, i32 0)
  tail call void (i64, i32, ...) @llvm.experimental.stackmap(i64 9223372036854775807, i32 0)
  tail call void (i64, i32, ...) @llvm.experimental.stackmap(i64 -1, i32 0)
  ret void
}

declare void @llvm.experimental.stackmap(i64, i32, ...)
