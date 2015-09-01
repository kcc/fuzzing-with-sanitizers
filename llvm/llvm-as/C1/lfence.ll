

declare void @llvm.x86.sse2.lfence() nounwind

define void @test() {
  call void @llvm.x86.sse2.lfence()
  ret void
}
