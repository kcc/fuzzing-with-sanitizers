

define i8* @rt0(i32 %x) nounwind readnone {
entry:



  %0 = tail call i8* @llvm.returnaddress(i32 0)
  ret i8* %0
}

define i8* @rt2() nounwind readnone {
entry:








  %0 = tail call i8* @llvm.returnaddress(i32 2)
  ret i8* %0
}

declare i8* @llvm.returnaddress(i32) nounwind readnone
