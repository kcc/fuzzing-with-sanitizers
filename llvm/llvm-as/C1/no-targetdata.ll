

declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) nounwind

define void @fn(i8* nocapture %buf) #0 {
entry:








  %arrayidx = getelementptr i8, i8* %buf, i64 18
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arrayidx, i8* %buf, i64 18, i32 1, i1 false)
  store i8 1, i8* %arrayidx, align 1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %buf, i8* %arrayidx, i64 18, i32 1, i1 false)
  ret void
}

