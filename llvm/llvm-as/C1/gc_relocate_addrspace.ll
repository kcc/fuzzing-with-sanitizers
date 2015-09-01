






declare void @foo()


declare i32 @llvm.experimental.gc.statepoint.p0f_isVoidf(i64, i32, void ()*, i32, i32, ...) #0

define void @test1(i64 addrspace(1)* %obj) gc "statepoint-example" {
entry:
  %safepoint_token = call i32 (i64, i32, void ()*, i32, i32, ...) @llvm.experimental.gc.statepoint.p0f_isVoidf(i64 0, i32 0, void ()* @foo, i32 0, i32 0, i32 0, i32 0, i64 addrspace(1)* %obj)
  %obj.relocated = call coldcc i8* @llvm.experimental.gc.relocate.p0i8(i32 %safepoint_token, i32 7, i32 7) 
  ret void
}


declare i8* @llvm.experimental.gc.relocate.p0i8(i32, i32, i32) #0

attributes #0 = { nounwind }
