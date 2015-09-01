










define void @main() {
main_body:
  call void @llvm.SI.sendmsg(i32 34, i32 0)
  call void @llvm.SI.sendmsg(i32 274, i32 0)
  call void @llvm.SI.sendmsg(i32 562, i32 0)
  call void @llvm.SI.sendmsg(i32 3, i32 0)
  ret void
}


declare void @llvm.SI.sendmsg(i32, i32) #0

attributes #0 = { nounwind }
