




define i64 @test() nounwind {
entry:




  %0 = tail call i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 4) nounwind
  %1 = and i64 %0, 4294967295
  ret i64 %1
}

declare i64 @llvm.x86.sse42.crc32.64.64(i64, i64) nounwind readnone
