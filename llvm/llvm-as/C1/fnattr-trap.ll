








define void @foo0() {
  call void @llvm.trap()
  unreachable
}







define void @foo1() {
  call void @llvm.trap() #0
  unreachable
}







define void @foo2() {
  call void @llvm.trap() #1
  unreachable
}

declare void @llvm.trap() nounwind

attributes #0 = { "trap-func-name"="trap_func_attr0" }
attributes #1 = { "trap-func-name"="trap_func_attr1" }
