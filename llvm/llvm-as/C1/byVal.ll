





%struct.st0 = type { [0 x i32] }
declare void @f0(%struct.st0*) nounwind
define void @f0Test(%struct.st0* byval %s0) nounwind {
entry:
  call void @f0(%struct.st0* %s0) nounwind
  ret void
}
















%struct.st1 = type { [10 x i32] }
declare void @f1(%struct.st1*) nounwind
define i32 @f1Test(i32 %i, %struct.st1* byval %s1) nounwind {
entry:
  call void @f1(%struct.st1* %s1) nounwind
  ret i32 %i
}















%struct.st2 = type { i32 }
declare void @f2(i32, %struct.st2*) nounwind
define void @f2Test(%struct.st2* byval %s2, i32 %i, ...) nounwind {
entry:
  call void @f2(i32 %i, %struct.st2* %s2)
  ret void
}









declare void @f3(i8*) nounwind
define void @f3Test(i8* byval %v) nounwind {
entry:
  call void @f3(i8* %v) nounwind
  ret void
}
