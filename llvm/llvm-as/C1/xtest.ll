

declare i32 @llvm.x86.xtest() nounwind

define i32 @test_xtest() nounwind uwtable {
entry:
  %0 = tail call i32 @llvm.x86.xtest() nounwind
  ret i32 %0


}
