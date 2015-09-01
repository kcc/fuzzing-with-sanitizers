





define i64 @test_builtin_readcyclecounter() {
  %1 = tail call i64 @llvm.readcyclecounter()
  ret i64 %1
}











define i64 @test_builtin_rdtsc() {
  %1 = tail call i64 @llvm.x86.rdtsc()
  ret i64 %1
}








define i64 @test_builtin_rdtscp(i8* %A) {
  %1 = tail call i64 @llvm.x86.rdtscp(i8* %A)
  ret i64 %1
}








declare i64 @llvm.readcyclecounter()
declare i64 @llvm.x86.rdtscp(i8*)
declare i64 @llvm.x86.rdtsc()

