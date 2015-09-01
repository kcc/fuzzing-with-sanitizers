

target datalayout = "e-p:64:64:64"

declare i8* @objc_retain(i8*)
declare i8* @objc_retainAutoreleasedReturnValue(i8*)
declare void @objc_release(i8*)
declare i8* @objc_autorelease(i8*)
declare i8* @objc_autoreleaseReturnValue(i8*)
declare i8* @objc_retainAutoreleaseReturnValue(i8*)
declare void @objc_autoreleasePoolPop(i8*)
declare void @objc_autoreleasePoolPush()
declare i8* @objc_retainBlock(i8*)

declare i8* @objc_retainedObject(i8*)
declare i8* @objc_unretainedObject(i8*)
declare i8* @objc_unretainedPointer(i8*)

declare void @use_pointer(i8*)
declare void @callee()
declare void @callee_fnptr(void ()*)
declare void @invokee()
declare i8* @returner()















define void @test0(i1 %p) nounwind {
entry:
  %x = call i8* @returner()
  %0 = call i8* @objc_retainAutoreleasedReturnValue(i8* %x)
  br i1 %p, label %t, label %return

t:
  call void @use_pointer(i8* %x)
  store i8 0, i8* %x
  br label %return

return:
  call void @objc_release(i8* %x) nounwind
  ret void
}






define void @test2() {
  call i8* @objc_retainAutoreleasedReturnValue(i8* null)
  call i8* @objc_autoreleaseReturnValue(i8* null)
  
  ret void
}







define i8* @test3() {
entry:
  %call = call i8* @returner()
  %0 = call i8* @objc_retainAutoreleasedReturnValue(i8* %call) nounwind
  %1 = call i8* @objc_autoreleaseReturnValue(i8* %0) nounwind
  ret i8* %1
}







define i8* @test4() {
entry:
  %call = call i8* @returner()
  %0 = call i8* @objc_retain(i8* %call) nounwind
  %1 = call i8* @objc_autoreleaseReturnValue(i8* %0) nounwind
  ret i8* %1
}


























define i8* @test7() {
  %p = call i8* @returner()
  call i8* @objc_retainAutoreleasedReturnValue(i8* %p)
  %t = call i8* @objc_autoreleaseReturnValue(i8* %p)
  call void @use_pointer(i8* %p)
  ret i8* %t
}




define i8* @test7b() {
  %p = call i8* @returner()
  call void @use_pointer(i8* %p)
  call i8* @objc_retainAutoreleasedReturnValue(i8* %p)
  %t = call i8* @objc_autoreleaseReturnValue(i8* %p)
  ret i8* %p
}





define i8* @test9(i8* %p) {
  call i8* @objc_autorelease(i8* %p)
  ret i8* %p
}







define i8* @test10(i8* %p) {
  %1 = call i8* @objc_retain(i8* %p)
  %2 = call i8* @objc_autorelease(i8* %p)
  ret i8* %p
}









define i8* @test11(i8* %p) {
  %1 = call i8* @objc_retain(i8* %p)
  call void @use_pointer(i8* %p)
  %2 = call i8* @objc_autorelease(i8* %p)
  ret i8* %p
}








define i8* @test12(i8* %p) {
  %1 = call i8* @objc_retain(i8* %p)
  call void @use_pointer(i8* %p)
  %2 = call i8* @objc_autoreleaseReturnValue(i8* %p)
  ret i8* %p
}







define i8* @test13() {
  %p = call i8* @returner()
  %1 = call i8* @objc_retainAutoreleasedReturnValue(i8* %p)
  call void @callee()
  %2 = call i8* @objc_autorelease(i8* %p)
  ret i8* %p
}







define void @test14(i8* %p) {
  call i8* @objc_retainAutoreleasedReturnValue(i8* %p)
  ret void
}








define void @test15() {
  %y = call i8* @returner()
  call i8* @objc_retainAutoreleasedReturnValue(i8* %y)
  ret void
}





define i8* @test19(i8* %p) {
  call i8* @objc_autoreleaseReturnValue(i8* %p)
  call i8* @objc_retainAutoreleasedReturnValue(i8* %p)
  ret i8* %p
}







define i8* @test20(i8* %p) {
  call i8* @objc_autorelease(i8* %p)
  call i8* @objc_retainAutoreleasedReturnValue(i8* %p)
  ret i8* %p
}







define i8* @test21(i8* %p) {
  call i8* @objc_autoreleaseReturnValue(i8* %p)
  call i8* @objc_retain(i8* %p)
  ret i8* %p
}







define i8* @test22(i8* %p) {
  call i8* @objc_autorelease(i8* %p)
  call i8* @objc_retain(i8* %p)
  ret i8* %p
}





define void @test23(i8* %p) {
  store i8 0, i8* %p
  call i8* @objc_autoreleaseReturnValue(i8* %p)
  ret void
}






define {}* @test24(i8* %p) {
  %t = call i8* @objc_autoreleaseReturnValue(i8* %p)
  %s = bitcast i8* %p to {}*
  ret {}* %s
}


