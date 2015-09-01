














@dst = global [1024 x i8] zeroinitializer, align 32

define void @foo() nounwind {
entry:
  %src = alloca [1024 x i8], align 1
  %src1 = getelementptr [1024 x i8], [1024 x i8]* %src, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @dst, i32 0, i32 0), i8* %src1, i32 1024, i32 1, i1 false)
  call void @frob(i8* %src1) nounwind
  ret void
}

declare void @frob(i8*)

declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture, i32, i32, i1) nounwind
