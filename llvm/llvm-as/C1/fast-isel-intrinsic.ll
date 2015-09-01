










@message1 = global [60 x i8] c"The LLVM Compiler Infrastructure\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 1
@temp = common global [60 x i8] zeroinitializer, align 1

define void @t1() nounwind ssp {


























  call void @llvm.memset.p0i8.i32(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @message1, i32 0, i32 5), i8 64, i32 10, i32 4, i1 false)
  ret void
}

declare void @llvm.memset.p0i8.i32(i8* nocapture, i8, i32, i32, i1) nounwind

define void @t2() nounwind ssp {
































  call void @llvm.memcpy.p0i8.p0i8.i32(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @temp, i32 0, i32 4), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @temp, i32 0, i32 16), i32 17, i32 4, i1 false)
  ret void
}

declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture, i32, i32, i1) nounwind

define void @t3() nounwind ssp {






























  call void @llvm.memmove.p0i8.p0i8.i32(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @temp, i32 0, i32 4), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @temp, i32 0, i32 16), i32 10, i32 1, i1 false)
  ret void
}

define void @t4() nounwind ssp {






















  call void @llvm.memcpy.p0i8.p0i8.i32(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @temp, i32 0, i32 4), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @temp, i32 0, i32 16), i32 10, i32 4, i1 false)
  ret void
}

declare void @llvm.memmove.p0i8.p0i8.i32(i8* nocapture, i8* nocapture, i32, i32, i1) nounwind

define void @t5() nounwind ssp {






























  call void @llvm.memcpy.p0i8.p0i8.i32(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @temp, i32 0, i32 4), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @temp, i32 0, i32 16), i32 10, i32 2, i1 false)
  ret void
}

define void @t6() nounwind ssp {


















































  call void @llvm.memcpy.p0i8.p0i8.i32(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @temp, i32 0, i32 4), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @temp, i32 0, i32 16), i32 10, i32 1, i1 false)
  ret void
}


define void @t7() nounwind ssp {

  call void @llvm.memcpy.p0i8.p0i8.i32(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @temp, i32 0, i32 4), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @temp, i32 0, i32 16), i32 3, i32 2, i1 false)
  ret void
}

define i32 @t8(i32 %x) nounwind {
entry:




  %expval = call i32 @llvm.expect.i32(i32 %x, i32 1)
  ret i32 %expval
}

declare i32 @llvm.expect.i32(i32, i32) nounwind readnone
