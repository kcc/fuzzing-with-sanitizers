

target datalayout = "e-p:64:64:64"

declare i8* @objc_retain(i8*)
declare void @objc_release(i8*)
declare void @use_pointer(i8*)

@x = external global i8*






define void @test0(i8* %p) {
entry:
  %0 = tail call i8* @objc_retain(i8* %p) nounwind
  %tmp = load i8*, i8** @x, align 8
  store i8* %0, i8** @x, align 8
  tail call void @objc_release(i8* %tmp) nounwind
  ret void
}











define void @test1(i8* %p) {
entry:
  %0 = tail call i8* @objc_retain(i8* %p) nounwind
  %tmp = load volatile i8*, i8** @x, align 8
  store i8* %0, i8** @x, align 8
  tail call void @objc_release(i8* %tmp) nounwind
  ret void
}











define void @test2(i8* %p) {
entry:
  %0 = tail call i8* @objc_retain(i8* %p) nounwind
  %tmp = load i8*, i8** @x, align 8
  store volatile i8* %0, i8** @x, align 8
  tail call void @objc_release(i8* %tmp) nounwind
  ret void
}













define void @test3(i8* %newValue) {
entry:
  %x0 = tail call i8* @objc_retain(i8* %newValue) nounwind
  %x1 = load i8*, i8** @x, align 8
  store i8* %newValue, i8** @x, align 8
  tail call void @use_pointer(i8* %x1), !clang.arc.no_objc_arc_exceptions !0
  tail call void @objc_release(i8* %x1) nounwind, !clang.imprecise_release !0
  ret void
}












define i1 @test4(i8* %newValue, i8* %foo) {
entry:
  %x0 = tail call i8* @objc_retain(i8* %newValue) nounwind
  %x1 = load i8*, i8** @x, align 8
  store i8* %newValue, i8** @x, align 8
  %t = icmp eq i8* %x1, %foo
  tail call void @objc_release(i8* %x1) nounwind, !clang.imprecise_release !0
  ret i1 %t
}







define i1 @test5(i8* %newValue, i8* %foo) {
entry:
  %x0 = tail call i8* @objc_retain(i8* %newValue) nounwind
  %x1 = load i8*, i8** @x, align 8
  %t = icmp eq i8* %x1, %foo
  store i8* %newValue, i8** @x, align 8
  tail call void @objc_release(i8* %x1) nounwind, !clang.imprecise_release !0
  ret i1 %t
}







define i1 @test6(i8* %newValue, i8* %foo) {
entry:
  %x0 = tail call i8* @objc_retain(i8* %newValue) nounwind
  %x1 = load i8*, i8** @x, align 8
  tail call void @objc_release(i8* %x1) nounwind, !clang.imprecise_release !0
  %t = icmp eq i8* %x1, %foo
  store i8* %newValue, i8** @x, align 8
  ret i1 %t
}










define void @test7(i8* %p) {
entry:
  %0 = tail call i8* @objc_retain(i8* %p) nounwind
  %tmp = load i8*, i8** @x, align 8
  tail call void @objc_release(i8* %tmp) nounwind
  ret void
}










define void @test8(i8* %p) {
entry:
  %tmp = load i8*, i8** @x, align 8
  store i8* %p, i8** @x, align 8
  tail call void @objc_release(i8* %tmp) nounwind
  ret void
}









define i1 @test9(i8* %newValue, i8* %foo, i8* %unrelated_ptr) {
entry:
  %x0 = tail call i8* @objc_retain(i8* %newValue) nounwind
  tail call void @objc_release(i8* %unrelated_ptr) nounwind, !clang.imprecise_release !0
  %x1 = load i8*, i8** @x, align 8
  tail call void @objc_release(i8* %x1) nounwind, !clang.imprecise_release !0
  %t = icmp eq i8* %x1, %foo
  store i8* %newValue, i8** @x, align 8
  ret i1 %t  
}





define i1 @test10(i8* %newValue, i8* %foo, i8* %unrelated_ptr) {
entry:
  %x0 = tail call i8* @objc_retain(i8* %newValue) nounwind
  call void @use_pointer(i8* %unrelated_ptr)
  %x1 = load i8*, i8** @x, align 8
  tail call void @objc_release(i8* %x1) nounwind, !clang.imprecise_release !0
  %t = icmp eq i8* %x1, %foo
  store i8* %newValue, i8** @x, align 8
  ret i1 %t
}





define i1 @test11(i8* %newValue, i8* %foo, i8* %unrelated_ptr) {
entry:
  %x0 = tail call i8* @objc_retain(i8* %newValue) nounwind
  %t = icmp eq i8* %newValue, %foo
  %x1 = load i8*, i8** @x, align 8
  tail call void @objc_release(i8* %x1) nounwind, !clang.imprecise_release !0
  store i8* %newValue, i8** @x, align 8
  ret i1 %t
}

!0 = !{}


