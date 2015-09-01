


declare i8* @llvm.aarch64.thread.pointer() #1

define i8* @thread_pointer() {


  %1 = tail call i8* @llvm.aarch64.thread.pointer()
  ret i8* %1
}
