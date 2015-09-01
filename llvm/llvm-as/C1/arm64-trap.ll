
define void @foo() nounwind {


  tail call void @llvm.trap()
  ret void
}
declare void @llvm.trap() nounwind
