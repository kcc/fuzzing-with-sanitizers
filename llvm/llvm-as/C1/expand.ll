

target datalayout = "e-p:64:64:64"

declare i8* @objc_retain(i8*)
declare i8* @objc_autorelease(i8*)
declare i8* @objc_retainAutoreleasedReturnValue(i8*)
declare i8* @objc_autoreleaseReturnValue(i8*)
declare i8* @objc_retainAutorelease(i8*)
declare i8* @objc_retainAutoreleaseReturnValue(i8*)
declare i8* @objc_retainBlock(i8*)

declare void @use_pointer(i8*)





define void @test_retain(i8* %x) nounwind {
entry:
  %0 = call i8* @objc_retain(i8* %x) nounwind
  call void @use_pointer(i8* %0)
  ret void
}





define void @test_retainAutoreleasedReturnValue(i8* %x) nounwind {
entry:
  %0 = call i8* @objc_retainAutoreleasedReturnValue(i8* %x) nounwind
  call void @use_pointer(i8* %0)
  ret void
}





define void @test_retainAutorelease(i8* %x) nounwind {
entry:
  %0 = call i8* @objc_retainAutorelease(i8* %x) nounwind
  call void @use_pointer(i8* %0)
  ret void
}





define void @test_retainAutoreleaseReturnValue(i8* %x) nounwind {
entry:
  %0 = call i8* @objc_retainAutoreleaseReturnValue(i8* %x) nounwind
  call void @use_pointer(i8* %0)
  ret void
}





define void @test_autorelease(i8* %x) nounwind {
entry:
  %0 = call i8* @objc_autorelease(i8* %x) nounwind
  call void @use_pointer(i8* %0)
  ret void
}





define void @test_autoreleaseReturnValue(i8* %x) nounwind {
entry:
  %0 = call i8* @objc_autoreleaseReturnValue(i8* %x) nounwind
  call void @use_pointer(i8* %0)
  ret void
}









define void @test_retainBlock(i8* %x) nounwind {
entry:
  %0 = call i8* @objc_retainBlock(i8* %x) nounwind
  call void @use_pointer(i8* %0)
  ret void
}
