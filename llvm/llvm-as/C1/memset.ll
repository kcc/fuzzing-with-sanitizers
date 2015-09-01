

@source = common global [512 x i8] zeroinitializer, align 4

declare void @llvm.memset.p0i8.i32(i8* nocapture, i8, i32, i32, i1) nounwind

define void @function() {
entry:
  call void @llvm.memset.p0i8.i32(i8* bitcast ([512 x i8]* @source to i8*), i8 0, i32 512, i32 0, i1 false)
  unreachable
}







