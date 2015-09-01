





declare void @llvm.eh.unwind.init()

define void @calls_unwind_init() {
  call void @llvm.eh.unwind.init()
  ret void
}






