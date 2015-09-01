


define i8* @test_frameaddress0() nounwind {
entry:






  %0 = call i8* @llvm.frameaddress(i32 0)
  ret i8* %0
}

define i8* @test_frameaddress2() nounwind {
entry:







  %0 = call i8* @llvm.frameaddress(i32 2)
  ret i8* %0
}

declare i8* @llvm.frameaddress(i32) nounwind readnone
