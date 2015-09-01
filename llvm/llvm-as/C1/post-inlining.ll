

declare void @use_pointer(i8*)
declare i8* @returner()
declare i8* @objc_retain(i8*)
declare i8* @objc_autoreleaseReturnValue(i8*)
declare i8* @objc_retainAutoreleasedReturnValue(i8*)







define void @test0(i8* %call.i) {
entry:
  %0 = tail call i8* @objc_retain(i8* %call.i) nounwind
  %1 = tail call i8* @objc_autoreleaseReturnValue(i8* %0) nounwind
  ret void
}







define void @test1(i8* %call.i) {
entry:
  %0 = tail call i8* @objc_retain(i8* %call.i) nounwind
  %1 = tail call i8* @objc_autoreleaseReturnValue(i8* %call.i) nounwind
  ret void
}








define void @test24(i8* %p) {
entry:
  call i8* @objc_autoreleaseReturnValue(i8* %p) nounwind
  call i8* @objc_retainAutoreleasedReturnValue(i8* %p) nounwind
  call void @use_pointer(i8* %p)
  ret void
}
