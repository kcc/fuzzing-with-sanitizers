

declare void @llvm.x86.sse.sfence() nounwind

define void @test() {
  call void @llvm.x86.sse.sfence()
  ret void
}
