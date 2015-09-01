

@x = common global i8* null, align 8

declare i8* @objc_retain(i8*)
declare i32 @objc_sync_enter(i8*)
declare i32 @objc_sync_exit(i8*)










define i8* @test0(i32 %n) nounwind {
entry:
  %s = load i8*, i8** @x
  %0 = tail call i8* @objc_retain(i8* %s) nounwind
  %t = load i8*, i8** @x
  ret i8* %t
}









define i8* @test1(i32 %n) nounwind {
entry:
  %s = load i8*, i8** @x
  %0 = call i32 @objc_sync_enter(i8* %s)
  %t = load i8*, i8** @x
  %1 = call i32 @objc_sync_exit(i8* %s)
  ret i8* %t
}
