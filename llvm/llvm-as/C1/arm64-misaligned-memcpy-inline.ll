



define void @t0(i8* %out, i8* %in) {



entry:
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %out, i8* %in, i64 16, i32 1, i1 false)
  ret void
}

declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1)
