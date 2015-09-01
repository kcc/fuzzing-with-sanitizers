


declare void @llvm.x86.int(i8) nounwind



define void @primitive_int3 () {
bb.entry:
  call void @llvm.x86.int(i8 3) nounwind
  ret void
}



define void @primitive_int128 () {
bb.entry:
  call void @llvm.x86.int(i8 128) nounwind
  ret void
}
