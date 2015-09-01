




define void @bork() nounwind {
entry:
  call void @llvm.memset.p0i8.i64(i8* null, i8 0, i64 80, i32 4, i1 false)
  ret void
}

declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) nounwind
