








define void @fct1(i8* nocapture %ptr) {
entry:
  tail call void @llvm.memset.p0i8.i64(i8* %ptr, i8 0, i64 256, i32 1, i1 false)
  ret void
}

declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1)





define void @fct2(i8* nocapture %ptr) {
entry:
  tail call void @llvm.memset.p0i8.i64(i8* %ptr, i8 0, i64 257, i32 1, i1 false)
  ret void
}





define void @fct3(i8* nocapture %ptr, i32 %unknown) {
entry:
  %conv = sext i32 %unknown to i64
  tail call void @llvm.memset.p0i8.i64(i8* %ptr, i8 0, i64 %conv, i32 1, i1 false)
  ret void
}




define void @fct4(i8* %ptr) {
entry:
  %tmp = tail call i64 @llvm.objectsize.i64(i8* %ptr, i1 false)
  %call = tail call i8* @__memset_chk(i8* %ptr, i32 0, i64 256, i64 %tmp)
  ret void
}

declare i8* @__memset_chk(i8*, i32, i64, i64)

declare i64 @llvm.objectsize.i64(i8*, i1)





define void @fct5(i8* %ptr) {
entry:
  %tmp = tail call i64 @llvm.objectsize.i64(i8* %ptr, i1 false)
  %call = tail call i8* @__memset_chk(i8* %ptr, i32 0, i64 257, i64 %tmp)
  ret void
}





define void @fct6(i8* %ptr, i32 %unknown) {
entry:
  %conv = sext i32 %unknown to i64
  %tmp = tail call i64 @llvm.objectsize.i64(i8* %ptr, i1 false)
  %call = tail call i8* @__memset_chk(i8* %ptr, i32 0, i64 %conv, i64 %tmp)
  ret void
}







define void @fct7(i8* %ptr) {
entry:
  %tmp = tail call i64 @llvm.objectsize.i64(i8* %ptr, i1 false)
  %call = tail call i8* @__memset_chk(i8* %ptr, i32 1, i64 256, i64 %tmp)
  ret void
}




define void @fct8(i8* %ptr) {
entry:
  %tmp = tail call i64 @llvm.objectsize.i64(i8* %ptr, i1 false)
  %call = tail call i8* @__memset_chk(i8* %ptr, i32 1, i64 257, i64 %tmp)
  ret void
}




define void @fct9(i8* %ptr, i32 %unknown) {
entry:
  %conv = sext i32 %unknown to i64
  %tmp = tail call i64 @llvm.objectsize.i64(i8* %ptr, i1 false)
  %call = tail call i8* @__memset_chk(i8* %ptr, i32 1, i64 %conv, i64 %tmp)
  ret void
}
