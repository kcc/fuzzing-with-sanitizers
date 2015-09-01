




define void @tail_jmp_reg(i32, i32, void ()* %fptr) {
  tail call void () %fptr()
  ret void
}







declare void @tail_tgt()

define void @tail_jmp_imm() {
  tail call void @tail_tgt()
  ret void
}




@g_fptr = global void ()* @tail_tgt

define void @tail_jmp_mem() {
  %fptr = load void ()*, void ()** @g_fptr
  tail call void () %fptr()
  ret void
}



