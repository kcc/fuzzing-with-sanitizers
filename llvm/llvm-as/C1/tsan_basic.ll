

target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"
target triple = "x86_64-unknown-linux-gnu"

define i32 @read_4_bytes(i32* %a) sanitize_thread {
entry:
  %tmp1 = load i32, i32* %a, align 4
  ret i32 %tmp1
}












declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1)
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1)
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1)




define void @MemCpyTest(i8* nocapture %x, i8* nocapture %y) sanitize_thread {
entry:
    tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %x, i8* %y, i64 16, i32 4, i1 false)
    ret void



}

define void @MemMoveTest(i8* nocapture %x, i8* nocapture %y) sanitize_thread {
entry:
    tail call void @llvm.memmove.p0i8.p0i8.i64(i8* %x, i8* %y, i64 16, i32 4, i1 false)
    ret void



}

define void @MemSetTest(i8* nocapture %x) sanitize_thread {
entry:
    tail call void @llvm.memset.p0i8.i64(i8* %x, i8 77, i64 16, i32 4, i1 false)
    ret void



}



