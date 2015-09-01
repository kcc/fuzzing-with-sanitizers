

define void @test() {
  
  call void @llvm.arm.dmb(i32 15)
  
  call void @llvm.arm.dmb(i32 3)
  
  call void @llvm.arm.dsb(i32 15)
  
  call void @llvm.arm.dsb(i32 9)
  
  tail call void @llvm.arm.hint(i32 5) nounwind
  ret void
}

declare void @llvm.arm.dmb(i32)
declare void @llvm.arm.dsb(i32)
declare void @llvm.arm.hint(i32) nounwind
