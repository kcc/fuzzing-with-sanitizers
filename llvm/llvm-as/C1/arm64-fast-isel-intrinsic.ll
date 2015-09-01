

@message = global [80 x i8] c"The LLVM Compiler Infrastructure\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@temp = common global [80 x i8] zeroinitializer, align 16

define void @t1() {







  call void @llvm.memset.p0i8.i64(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @message, i32 0, i32 0), i8 0, i64 80, i32 16, i1 false)
  ret void
}

declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1)

define void @t2() {







  call void @llvm.memcpy.p0i8.p0i8.i64(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @temp, i32 0, i32 0), i8* getelementptr inbounds ([80 x i8], [80 x i8]* @message, i32 0, i32 0), i64 80, i32 16, i1 false)
  ret void
}

declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1)

define void @t3() {







  call void @llvm.memmove.p0i8.p0i8.i64(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @temp, i32 0, i32 0), i8* getelementptr inbounds ([80 x i8], [80 x i8]* @message, i32 0, i32 0), i64 20, i32 16, i1 false)
  ret void
}

declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1)

define void @t4() {












  call void @llvm.memcpy.p0i8.p0i8.i64(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @temp, i32 0, i32 0), i8* getelementptr inbounds ([80 x i8], [80 x i8]* @message, i32 0, i32 0), i64 17, i32 16, i1 false)
  ret void
}

define void @t5() {












  call void @llvm.memcpy.p0i8.p0i8.i64(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @temp, i32 0, i32 0), i8* getelementptr inbounds ([80 x i8], [80 x i8]* @message, i32 0, i32 0), i64 17, i32 8, i1 false)
  ret void
}

define void @t6() {












  call void @llvm.memcpy.p0i8.p0i8.i64(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @temp, i32 0, i32 0), i8* getelementptr inbounds ([80 x i8], [80 x i8]* @message, i32 0, i32 0), i64 9, i32 4, i1 false)
  ret void
}

define void @t7() {














  call void @llvm.memcpy.p0i8.p0i8.i64(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @temp, i32 0, i32 0), i8* getelementptr inbounds ([80 x i8], [80 x i8]* @message, i32 0, i32 0), i64 7, i32 2, i1 false)
  ret void
}

define void @t8() {














  call void @llvm.memcpy.p0i8.p0i8.i64(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @temp, i32 0, i32 0), i8* getelementptr inbounds ([80 x i8], [80 x i8]* @message, i32 0, i32 0), i64 4, i32 1, i1 false)
  ret void
}

define void @test_distant_memcpy(i8* %dst) {






  %array = alloca i8, i32 8192
  %elem = getelementptr i8, i8* %array, i32 8000
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %dst, i8* %elem, i64 1, i32 1, i1 false)
  ret void
}
