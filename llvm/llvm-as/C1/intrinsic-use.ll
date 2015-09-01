

target datalayout = "e-p:64:64:64"

declare i8* @objc_retain(i8*)
declare i8* @objc_retainAutorelease(i8*)
declare void @objc_release(i8*)
declare i8* @objc_autorelease(i8*)

declare void @clang.arc.use(...)

declare void @test0_helper(i8*, i8**)





























define void @test0(i8** %out, i8* %x, i8* %y) {
entry:
  %temp0 = alloca i8*, align 8
  %temp1 = alloca i8*, align 8
  %0 = call i8* @objc_retain(i8* %x) nounwind
  %1 = call i8* @objc_retain(i8* %y) nounwind
  store i8* %y, i8** %temp0
  call void @test0_helper(i8* %x, i8** %temp0)
  %val1 = load i8*, i8** %temp0
  %2 = call i8* @objc_retain(i8* %val1) nounwind
  call void (...) @clang.arc.use(i8* %y) nounwind
  call void @objc_release(i8* %y) nounwind
  store i8* %val1, i8** %temp1
  call void @test0_helper(i8* %x, i8** %temp1)
  %val2 = load i8*, i8** %temp1
  %3 = call i8* @objc_retain(i8* %val2) nounwind
  call void (...) @clang.arc.use(i8* %val1) nounwind
  call void @objc_release(i8* %val1) nounwind
  %4 = call i8* @objc_retain(i8* %x) nounwind
  %5 = call i8* @objc_autorelease(i8* %x) nounwind
  store i8* %x, i8** %out
  call void @objc_release(i8* %val2) nounwind
  call void @objc_release(i8* %x) nounwind
  ret void
}





















define void @test0a(i8** %out, i8* %x, i8* %y) {
entry:
  %temp0 = alloca i8*, align 8
  %temp1 = alloca i8*, align 8
  %0 = call i8* @objc_retain(i8* %x) nounwind
  %1 = call i8* @objc_retain(i8* %y) nounwind
  store i8* %y, i8** %temp0
  call void @test0_helper(i8* %x, i8** %temp0)
  %val1 = load i8*, i8** %temp0
  %2 = call i8* @objc_retain(i8* %val1) nounwind
  call void (...) @clang.arc.use(i8* %y) nounwind
  call void @objc_release(i8* %y) nounwind, !clang.imprecise_release !0
  store i8* %val1, i8** %temp1
  call void @test0_helper(i8* %x, i8** %temp1)
  %val2 = load i8*, i8** %temp1
  %3 = call i8* @objc_retain(i8* %val2) nounwind
  call void (...) @clang.arc.use(i8* %val1) nounwind
  call void @objc_release(i8* %val1) nounwind, !clang.imprecise_release !0
  %4 = call i8* @objc_retain(i8* %x) nounwind
  %5 = call i8* @objc_autorelease(i8* %x) nounwind
  store i8* %x, i8** %out
  call void @objc_release(i8* %val2) nounwind, !clang.imprecise_release !0
  call void @objc_release(i8* %x) nounwind, !clang.imprecise_release !0
  ret void
}


!0 = !{}

