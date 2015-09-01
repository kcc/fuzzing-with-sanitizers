

define void @nop_test() {
entry:































































































































































































  tail call void (i64, i32, ...) @llvm.experimental.stackmap(i64  0, i32  0)
  tail call void (i64, i32, ...) @llvm.experimental.stackmap(i64  1, i32  1)
  tail call void (i64, i32, ...) @llvm.experimental.stackmap(i64  2, i32  2)
  tail call void (i64, i32, ...) @llvm.experimental.stackmap(i64  3, i32  3)
  tail call void (i64, i32, ...) @llvm.experimental.stackmap(i64  4, i32  4)
  tail call void (i64, i32, ...) @llvm.experimental.stackmap(i64  5, i32  5)
  tail call void (i64, i32, ...) @llvm.experimental.stackmap(i64  6, i32  6)
  tail call void (i64, i32, ...) @llvm.experimental.stackmap(i64  7, i32  7)
  tail call void (i64, i32, ...) @llvm.experimental.stackmap(i64  8, i32  8)
  tail call void (i64, i32, ...) @llvm.experimental.stackmap(i64  9, i32  9)
  tail call void (i64, i32, ...) @llvm.experimental.stackmap(i64 10, i32 10)
  tail call void (i64, i32, ...) @llvm.experimental.stackmap(i64 11, i32 11)
  tail call void (i64, i32, ...) @llvm.experimental.stackmap(i64 12, i32 12)
  tail call void (i64, i32, ...) @llvm.experimental.stackmap(i64 13, i32 13)
  tail call void (i64, i32, ...) @llvm.experimental.stackmap(i64 14, i32 14)
  tail call void (i64, i32, ...) @llvm.experimental.stackmap(i64 15, i32 15)
  tail call void (i64, i32, ...) @llvm.experimental.stackmap(i64 16, i32 16)
  tail call void (i64, i32, ...) @llvm.experimental.stackmap(i64 17, i32 17)
  tail call void (i64, i32, ...) @llvm.experimental.stackmap(i64 18, i32 18)
  tail call void (i64, i32, ...) @llvm.experimental.stackmap(i64 19, i32 19)
  tail call void (i64, i32, ...) @llvm.experimental.stackmap(i64 20, i32 20)
  tail call void (i64, i32, ...) @llvm.experimental.stackmap(i64 21, i32 21)
  tail call void (i64, i32, ...) @llvm.experimental.stackmap(i64 22, i32 22)
  tail call void (i64, i32, ...) @llvm.experimental.stackmap(i64 23, i32 23)
  tail call void (i64, i32, ...) @llvm.experimental.stackmap(i64 24, i32 24)
  tail call void (i64, i32, ...) @llvm.experimental.stackmap(i64 25, i32 25)
  tail call void (i64, i32, ...) @llvm.experimental.stackmap(i64 26, i32 26)
  tail call void (i64, i32, ...) @llvm.experimental.stackmap(i64 27, i32 27)
  tail call void (i64, i32, ...) @llvm.experimental.stackmap(i64 28, i32 28)
  tail call void (i64, i32, ...) @llvm.experimental.stackmap(i64 29, i32 29)
  tail call void (i64, i32, ...) @llvm.experimental.stackmap(i64 30, i32 30)



  tail call void (i64, i32, ...) @llvm.experimental.stackmap(i64 31, i32 0)
  ret void
}

declare void @llvm.experimental.stackmap(i64, i32, ...)
