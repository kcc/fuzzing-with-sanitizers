


declare i8* @llvm.frameaddress(i32) nounwind readnone

define i8* @g2() nounwind readnone {
entry:


  %0 = tail call i8* @llvm.frameaddress(i32 1)    
  ret i8* %0
}

declare i8* @llvm.returnaddress(i32) nounwind readnone

define i8* @g() nounwind readnone {
entry:





  %0 = tail call i8* @llvm.returnaddress(i32 1)   
  ret i8* %0
}
