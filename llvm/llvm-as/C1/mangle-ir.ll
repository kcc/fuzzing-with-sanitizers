

target datalayout = "m:o"





define void @f() {
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* null, i8* null, i64 0, i32 1, i1 false)
  ret void
}

declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1)
