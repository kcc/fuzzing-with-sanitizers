






define i64 @test_builtin_read_pmc(i32 %ID) {
  %1 = tail call i64 @llvm.x86.rdpmc(i32 %ID)
  ret i64 %1
}









declare i64 @llvm.x86.rdpmc(i32 %ID)

