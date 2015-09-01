





target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "nvptx64-unknown-unknown"

declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

define i8* @memcpy_caller(i8* %dst, i8* %src, i64 %n) #0 {
entry:
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %dst, i8* %src, i64 %n, i32 1, i1 false)
  ret i8* %dst















}

define i8* @memcpy_volatile_caller(i8* %dst, i8* %src, i64 %n) #0 {
entry:
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %dst, i8* %src, i64 %n, i32 1, i1 true)
  ret i8* %dst












}

define i8* @memcpy_casting_caller(i32* %dst, i32* %src, i64 %n) #0 {
entry:
  %0 = bitcast i32* %dst to i8*
  %1 = bitcast i32* %src to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 %n, i32 1, i1 false)
  ret i8* %0







}

define i8* @memset_caller(i8* %dst, i32 %c, i64 %n) #0 {
entry:
  %0 = trunc i32 %c to i8
  tail call void @llvm.memset.p0i8.i64(i8* %dst, i8 %0, i64 %n, i32 1, i1 false)
  ret i8* %dst














}

define i8* @memmove_caller(i8* %dst, i8* %src, i64 %n) #0 {
entry:
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* %dst, i8* %src, i64 %n, i32 1, i1 false)
  ret i8* %dst




























}
