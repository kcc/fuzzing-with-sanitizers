

target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"



















define i64 @stackmap_liveness(i1 %c) {

















  %1 = select i1 %c, i64 1, i64 2
  call anyregcc void (i64, i32, i8*, i32, ...) @llvm.experimental.patchpoint.void(i64 1, i32 32, i8* null, i32 0)
  ret i64 %1
}

declare void @llvm.experimental.patchpoint.void(i64, i32, i8*, i32, ...)

