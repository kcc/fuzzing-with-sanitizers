


target datalayout = "E-m:e-i64:64-n32:64"
target triple = "powerpc64-unknown-linux-gnu"


define void @foo1(double* nocapture %x, double* nocapture readonly %y) #0 {
entry:
  %0 = bitcast double* %x to i8*
  %1 = bitcast double* %y to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 32, i32 8, i1 false)
  ret void




















}


declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #0


define void @foo2(double* nocapture %x, double* nocapture readonly %y) #0 {
entry:
  %0 = bitcast double* %x to i8*
  %1 = bitcast double* %y to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 128, i32 8, i1 false)
  ret void















}


define void @bar1(double* nocapture %x) #0 {
entry:
  %0 = bitcast double* %x to i8*
  tail call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 128, i32 8, i1 false)
  ret void















}


define void @bar2(double* nocapture %x) #0 {
entry:
  %0 = bitcast double* %x to i8*
  tail call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 128, i32 32, i1 false)
  ret void















}


declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #0

attributes #0 = { nounwind }

