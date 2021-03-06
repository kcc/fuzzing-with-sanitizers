

define i32 @test_x86_rdfsbase_32() {
  
  %res = call i32 @llvm.x86.rdfsbase.32()
  ret i32 %res
}
declare i32 @llvm.x86.rdfsbase.32() nounwind readnone

define i32 @test_x86_rdgsbase_32() {
  
  %res = call i32 @llvm.x86.rdgsbase.32()
  ret i32 %res
}
declare i32 @llvm.x86.rdgsbase.32() nounwind readnone

define i64 @test_x86_rdfsbase_64() {
  
  %res = call i64 @llvm.x86.rdfsbase.64()
  ret i64 %res
}
declare i64 @llvm.x86.rdfsbase.64() nounwind readnone

define i64 @test_x86_rdgsbase_64() {
  
  %res = call i64 @llvm.x86.rdgsbase.64()
  ret i64 %res
}
declare i64 @llvm.x86.rdgsbase.64() nounwind readnone

define void @test_x86_wrfsbase_32(i32 %x) {
  
  call void @llvm.x86.wrfsbase.32(i32 %x)
  ret void
}
declare void @llvm.x86.wrfsbase.32(i32) nounwind readnone

define void @test_x86_wrgsbase_32(i32 %x) {
  
  call void @llvm.x86.wrgsbase.32(i32 %x)
  ret void
}
declare void @llvm.x86.wrgsbase.32(i32) nounwind readnone

define void @test_x86_wrfsbase_64(i64 %x) {
  
  call void @llvm.x86.wrfsbase.64(i64 %x)
  ret void
}
declare void @llvm.x86.wrfsbase.64(i64) nounwind readnone

define void @test_x86_wrgsbase_64(i64 %x) {
  
  call void @llvm.x86.wrgsbase.64(i64 %x)
  ret void
}
declare void @llvm.x86.wrgsbase.64(i64) nounwind readnone
