

declare i8* @objc_loadWeak(i8**)
declare i8* @objc_loadWeakRetained(i8**)
declare i8* @objc_storeWeak(i8**, i8*)
declare i8* @objc_initWeak(i8**, i8*)
declare void @use_pointer(i8*)
declare void @callee()








define void @test0(i8** %p) {
  %x = call i8* @objc_loadWeak(i8** %p)
  %y = call i8* @objc_loadWeak(i8** %p)
  call void @use_pointer(i8* %y)
  ret void
}








define void @test1(i8** %p) {
  %x = call i8* @objc_loadWeak(i8** %p)
  %y = call i8* @objc_loadWeakRetained(i8** %p)
  call void @use_pointer(i8* %y)
  ret void
}










define void @test2(i8** %p) {
  %x = call i8* @objc_loadWeak(i8** %p)
  store i8 3, i8* %x
  %y = call i8* @objc_loadWeakRetained(i8** %p)
  call void @use_pointer(i8* %y)
  ret void
}











define void @test3(i8** %p) {
  %x = call i8* @objc_loadWeak(i8** %p)
  call void @use_pointer(i8* %x) readonly
  %y = call i8* @objc_loadWeakRetained(i8** %p)
  call void @use_pointer(i8* %y)
  ret void
}











define void @test4(i8** %p) {
  %x = call i8* @objc_loadWeak(i8** %p)
  call void @use_pointer(i8* %x) readonly
  call void @callee()
  %y = call i8* @objc_loadWeak(i8** %p)
  call void @use_pointer(i8* %y)
  ret void
}








define void @test5(i8** %p, i8* %n) {
  call i8* @objc_storeWeak(i8** %p, i8* %n)
  %y = call i8* @objc_loadWeak(i8** %p)
  call void @use_pointer(i8* %y)
  ret void
}








define void @test6(i8** %p, i8* %n) {
  call i8* @objc_initWeak(i8** %p, i8* %n)
  %y = call i8* @objc_loadWeak(i8** %p)
  call void @use_pointer(i8* %y)
  ret void
}










define void @test7(i8** %p, i8* %n, i8** %q, i8* %m) {
  call i8* @objc_initWeak(i8** %p, i8* %n)
  call i8* @objc_storeWeak(i8** %q, i8* %m)
  %y = call i8* @objc_loadWeak(i8** %p)
  call void @use_pointer(i8* %y)
  ret void
}



