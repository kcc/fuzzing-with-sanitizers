

declare i32 @llvm.x86.xbegin() nounwind
declare void @llvm.x86.xend() nounwind
declare void @llvm.x86.xabort(i8) noreturn nounwind

define i32 @test_xbegin() nounwind uwtable {
entry:
  %0 = tail call i32 @llvm.x86.xbegin() nounwind
  ret i32 %0



}

define void @test_xend() nounwind uwtable {
entry:
  tail call void @llvm.x86.xend() nounwind
  ret void


}

define void @test_xabort() nounwind uwtable {
entry:
  tail call void @llvm.x86.xabort(i8 2)
  unreachable


}
