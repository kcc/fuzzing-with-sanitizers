







define void @clobberScratch(i32* %p) {
  %v = load i32, i32* %p
  tail call void asm sideeffect "nop", "~{x0},~{x1},~{x2},~{x3},~{x4},~{x5},~{x6},~{x7},~{x8},~{x9},~{x10},~{x11},~{x12},~{x13},~{x14},~{x15},~{x18},~{x19},~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{x29},~{x30},~{x31}"() nounwind
  tail call void (i64, i32, i8*, i32, ...) @llvm.experimental.patchpoint.void(i64 5, i32 20, i8* null, i32 0, i32* %p, i32 %v)
  store i32 %v, i32* %p
  ret void
}

declare void @llvm.experimental.patchpoint.void(i64, i32, i8*, i32, ...)

