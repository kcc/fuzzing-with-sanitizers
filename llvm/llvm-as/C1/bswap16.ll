



define void @test1(i16* nocapture %data) {
entry:
  %0 = load i16, i16* %data, align 2
  %1 = tail call i16 @llvm.bswap.i16(i16 %0)
  store i16 %1, i16* %data, align 2
  ret void

  
  
  
  
}


define void @test2(i16* nocapture %data, i16 zeroext %in) {
entry:
  %0 = tail call i16 @llvm.bswap.i16(i16 %in)
  store i16 %0, i16* %data, align 2
  ret void

  
  
  
}


define i16 @test3(i16* nocapture %data) {
entry:
  %0 = load i16, i16* %data, align 2
  %1 = tail call i16 @llvm.bswap.i16(i16 %0)
  ret i16 %1

  
  
  
}

declare i16 @llvm.bswap.i16(i16)
