




define i8* @frameaddr_index0() nounwind {
entry:




















  %0 = call i8* @llvm.frameaddress(i32 0)
  ret i8* %0
}

define i8* @frameaddr_index1() nounwind {
entry:





















  %0 = call i8* @llvm.frameaddress(i32 1)
  ret i8* %0
}

define i8* @frameaddr_index3() nounwind {
entry:





























  %0 = call i8* @llvm.frameaddress(i32 3)
  ret i8* %0
}

declare i8* @llvm.frameaddress(i32) nounwind readnone
