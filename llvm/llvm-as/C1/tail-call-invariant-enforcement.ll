

declare void @objc_release(i8* %x)
declare i8* @objc_retain(i8* %x)
declare i8* @objc_autorelease(i8* %x)
declare i8* @objc_autoreleaseReturnValue(i8* %x)
declare i8* @objc_retainAutoreleasedReturnValue(i8* %x)
declare i8* @tmp(i8*)







define i8* @test0(i8* %x) nounwind {
entry:
  %tmp0 = call i8* @objc_autorelease(i8* %x)
  %tmp1 = tail call i8* @objc_autorelease(i8* %x)

  ret i8* %x
}







define i8* @test1(i8* %x) nounwind {
entry:
  %tmp0 = call i8* @objc_autoreleaseReturnValue(i8* %x)
  %tmp1 = tail call i8* @objc_autoreleaseReturnValue(i8* %x)
  ret i8* %x
}







define i8* @test2(i8* %x) nounwind {
entry:
  %tmp0 = call i8* @objc_retain(i8* %x)
  %tmp1 = tail call i8* @objc_retain(i8* %x)
  ret i8* %x
}






define i8* @test3(i8* %x) nounwind {
entry:
  %y = call i8* @tmp(i8* %x)
  %tmp0 = call i8* @objc_retainAutoreleasedReturnValue(i8* %y)
  %z = call i8* @tmp(i8* %x)
  %tmp1 = tail call i8* @objc_retainAutoreleasedReturnValue(i8* %z)
  ret i8* %x
}







define void @test4(i8* %x) nounwind {
entry:
  call void @objc_release(i8* %x)
  tail call void @objc_release(i8* %x)
  ret void
}






define i8* @test5(i8* %x) nounwind {
entry:
  %tmp0 = tail call i8* @objc_autoreleaseReturnValue(i8* %x)
  ret i8* %tmp0
}



