
target datalayout = "e-i64:64-f80:128-n8:16:32:64-S128"

declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) unnamed_addr nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) nounwind


define void @must_remove_memcpy(i8* noalias nocapture dereferenceable(4096) %dst) {



  %src = alloca [4096 x i8], align 1
  %p = getelementptr inbounds [4096 x i8], [4096 x i8]* %src, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* %p, i8 0, i64 4096, i32 1, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %dst, i8* %p, i64 4096, i32 1, i1 false) #2
  ret void
}



define void @must_not_remove_memcpy(i8* noalias nocapture dereferenceable(1024) %dst) {



  %src = alloca [4096 x i8], align 1
  %p = getelementptr inbounds [4096 x i8], [4096 x i8]* %src, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* %p, i8 0, i64 4096, i32 1, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %dst, i8* %p, i64 4096, i32 1, i1 false) #2
  ret void
}
