

declare void @llvm.trap()

define void @f1() {
entry:
  call void @llvm.trap()
  unreachable


}
