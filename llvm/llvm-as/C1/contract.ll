

target datalayout = "e-p:64:64:64"

declare i8* @objc_retain(i8*)
declare void @objc_release(i8*)
declare i8* @objc_autorelease(i8*)
declare i8* @objc_autoreleaseReturnValue(i8*)
declare i8* @objc_retainAutoreleasedReturnValue(i8*)

declare void @use_pointer(i8*)
declare i8* @returner()
declare void @callee()




define void @test0(i8* %x) nounwind {
entry:
  %0 = call i8* @objc_retain(i8* %x) nounwind
  call void @use_pointer(i8* %x)
  ret void
}




define void @test1(i8* %x) nounwind {
entry:
  %0 = call i8* @objc_autorelease(i8* %x) nounwind
  call void @use_pointer(i8* %x)
  ret void
}






define void @test2(i8* %x) nounwind {
entry:
  %0 = tail call i8* @objc_retain(i8* %x) nounwind
  call i8* @objc_autorelease(i8* %0) nounwind
  call void @use_pointer(i8* %x)
  ret void
}






define i8* @test2b(i8* %x) nounwind {
entry:
  %0 = tail call i8* @objc_retain(i8* %x) nounwind
  tail call i8* @objc_autoreleaseReturnValue(i8* %0) nounwind
  ret i8* %x
}







define void @test3(i8* %x, i64 %n) {
entry:
  tail call i8* @objc_retain(i8* %x) nounwind
  call void @use_pointer(i8* %x)
  call i8* @objc_autorelease(i8* %x) nounwind
  ret void
}











define void @test4(i8* %x, i64 %n) {
entry:
  tail call i8* @objc_retain(i8* %x) nounwind
  call void @use_pointer(i8* %x)
  call i8* @objc_autorelease(i8* %x) nounwind
  tail call void @objc_release(i8* %x) nounwind
  ret void
}








define void @test5(i8* %p, i1 %a) {
entry:
  tail call i8* @objc_retain(i8* %p) nounwind
  br i1 %a, label %true, label %false

true:
  call i8* @objc_autorelease(i8* %p) nounwind
  call void @use_pointer(i8* %p)
  ret void

false:
  ret void
}













define i8* @test6() {
  %p = call i8* @returner()
  tail call i8* @objc_retainAutoreleasedReturnValue(i8* %p) nounwind
  %t = tail call i8* @objc_autoreleaseReturnValue(i8* %p) nounwind
  call void @use_pointer(i8* %t)
  ret i8* %t
}









define i8* @test7(i8* %p) {
  %1 = tail call i8* @objc_retain(i8* %p)
  call void @use_pointer(i8* %p)
  %2 = tail call i8* @objc_autoreleaseReturnValue(i8* %p)
  ret i8* %p
}






define i8* @test8(i1 %x, i8* %c) {
entry:
  br i1 %x, label %return, label %if.then

if.then:                                          
  %p = call i8* @objc_retain(i8* %c) nounwind
  br label %return

return:                                           
  %retval = phi i8* [ %c, %if.then ], [ null, %entry ]
  ret i8* %retval
}





define void @test9(i8* %a, i8* %b) {
  call void (...) @clang.arc.use(i8* %a, i8* %b) nounwind
  ret void
}







define void @test10() {
  %p = call i8* @returner()
  tail call i8* @objc_retain(i8* %p) nounwind
  ret void
}








define void @test11() {
  %y = call i8* @returner()
  tail call i8* @objc_retain(i8* %y) nounwind
  ret void
}








define void @test12(i8* %y) {
  tail call i8* @objc_retain(i8* %y) nounwind
  ret void
}










define void @test13() {
  %y = call i8* @returner()
  call void @callee()
  tail call i8* @objc_retain(i8* %y) nounwind
  ret void
}


declare void @clang.arc.use(...) nounwind


