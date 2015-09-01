






define i8* @frameaddr() nounwind readnone {
entry:

















  %0 = tail call i8* @llvm.frameaddress(i32 0)
  ret i8* %0
}

define i8* @frameaddr2() nounwind readnone {
entry:



















  %0 = tail call i8* @llvm.frameaddress(i32 3)
  ret i8* %0
}

declare i8* @llvm.frameaddress(i32) nounwind readnone



define i8* @retaddr() nounwind readnone {
entry:









  %0 = tail call i8* @llvm.returnaddress(i32 0)
  ret i8* %0
}

define i8* @retaddr2() nounwind readnone {
entry:


















  %0 = tail call i8* @llvm.returnaddress(i32 3)
  ret i8* %0
}

declare i8* @llvm.returnaddress(i32) nounwind readnone
