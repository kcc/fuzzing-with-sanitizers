

declare i1 @llvm.nvvm.isspacep.const(i8*) readnone noinline
declare i1 @llvm.nvvm.isspacep.global(i8*) readnone noinline
declare i1 @llvm.nvvm.isspacep.local(i8*) readnone noinline
declare i1 @llvm.nvvm.isspacep.shared(i8*) readnone noinline


define i1 @is_const(i8* %addr) {

  %v = tail call i1 @llvm.nvvm.isspacep.const(i8* %addr)
  ret i1 %v
}


define i1 @is_global(i8* %addr) {

  %v = tail call i1 @llvm.nvvm.isspacep.global(i8* %addr)
  ret i1 %v
}


define i1 @is_local(i8* %addr) {

  %v = tail call i1 @llvm.nvvm.isspacep.local(i8* %addr)
  ret i1 %v
}


define i1 @is_shared(i8* %addr) {

  %v = tail call i1 @llvm.nvvm.isspacep.shared(i8* %addr)
  ret i1 %v
}

