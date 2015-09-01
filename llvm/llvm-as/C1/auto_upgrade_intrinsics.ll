



declare i8 @llvm.ctlz.i8(i8)
declare i16 @llvm.ctlz.i16(i16)
declare i32 @llvm.ctlz.i32(i32)
declare i42 @llvm.ctlz.i42(i42)  


declare i32 @llvm.objectsize.i32(i8*, i1) nounwind readonly


define void @test.ctlz(i8 %a, i16 %b, i32 %c, i42 %d) {


entry:
  
  call i8 @llvm.ctlz.i8(i8 %a)
  
  call i16 @llvm.ctlz.i16(i16 %b)
  
  call i32 @llvm.ctlz.i32(i32 %c)
  
  call i42 @llvm.ctlz.i42(i42 %d)

  ret void
}

declare i8 @llvm.cttz.i8(i8)
declare i16 @llvm.cttz.i16(i16)
declare i32 @llvm.cttz.i32(i32)
declare i42 @llvm.cttz.i42(i42)  

define void @test.cttz(i8 %a, i16 %b, i32 %c, i42 %d) {


entry:
  
  call i8 @llvm.cttz.i8(i8 %a)
  
  call i16 @llvm.cttz.i16(i16 %b)
  
  call i32 @llvm.cttz.i32(i32 %c)
  
  call i42 @llvm.cttz.i42(i42 %d)

  ret void
}


@a = private global [60 x i8] zeroinitializer, align 1

define i32 @test.objectsize() {



  %s = call i32 @llvm.objectsize.i32(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @a, i32 0, i32 0), i1 false)
  ret i32 %s
}
