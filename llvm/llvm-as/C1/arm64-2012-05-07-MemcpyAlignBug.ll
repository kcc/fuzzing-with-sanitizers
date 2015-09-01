


@b = private unnamed_addr constant [3 x i32] [i32 1768775988, i32 1685481784, i32 1836253201], align 4











define void @foo(i8* %a) {
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %a, i8* bitcast ([3 x i32]* @b to i8*), i64 12, i32 4, i1 false)
  ret void
}

declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) nounwind
