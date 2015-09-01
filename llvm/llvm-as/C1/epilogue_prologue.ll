




















define void @f1() nounwind {
entry:
  tail call void asm sideeffect "", "~{lr}"() nounwind
  ret void
}



























declare void @f2()
define i32 @f3(i32 %i) nounwind {
entry:
  call void @f2()
  ret i32 %i
}



































define void @f4() {
entry:
  %0 = alloca [100000 x i32]
  ret void
}


































































































declare void @f5(i32*)
define i32 @f6(i32 %i) {
entry:
  %0 = alloca [200000 x i32]
  %1 = getelementptr inbounds [200000 x i32], [200000 x i32]* %0, i32 0, i32 0
  call void @f5(i32* %1)
  %2 = getelementptr inbounds [200000 x i32], [200000 x i32]* %0, i32 0, i32 199999
  call void @f5(i32* %2)
  ret i32 %i
}





















define void @f8() nounwind {
entry:
  %0 = alloca [256 x i32]
  %1 = getelementptr inbounds [256 x i32], [256 x i32]* %0, i32 0, i32 253
  call void @f5(i32* %1)
  ret void
}





















define void @f9() nounwind {
entry:
  %0 = alloca [32768 x i32]
  %1 = getelementptr inbounds [32768 x i32], [32768 x i32]* %0, i32 0, i32 32765
  call void @f5(i32* %1)
  ret void
}
