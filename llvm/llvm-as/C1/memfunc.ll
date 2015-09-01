




define void @f1(i8* %dest, i8* %src) {
entry:
  

  
  
  
  call void @llvm.memmove.p0i8.p0i8.i32(i8* %dest, i8* %src, i32 500, i32 0, i1 false)

  
  
  
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %dest, i8* %src, i32 500, i32 0, i1 false)

  
  
  
  
  
  
  
  call void @llvm.memset.p0i8.i32(i8* %dest, i8 1, i32 500, i32 0, i1 false)

  
  
  
  
  
  
  call void @llvm.memset.p0i8.i32(i8* %dest, i8 0, i32 500, i32 0, i1 false)
  
  

  
  
  
  call void @llvm.memmove.p0i8.p0i8.i32(i8* %dest, i8* %src, i32 500, i32 4, i1 false)

  
  
  
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %dest, i8* %src, i32 500, i32 4, i1 false)

  
  
  
  call void @llvm.memset.p0i8.i32(i8* %dest, i8 1, i32 500, i32 4, i1 false)

  
  
  
  call void @llvm.memset.p0i8.i32(i8* %dest, i8 0, i32 500, i32 4, i1 false)

  
  
  
  call void @llvm.memmove.p0i8.p0i8.i32(i8* %dest, i8* %src, i32 500, i32 8, i1 false)

  
  
  
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %dest, i8* %src, i32 500, i32 8, i1 false)

  
  
  
  call void @llvm.memset.p0i8.i32(i8* %dest, i8 1, i32 500, i32 8, i1 false)

  
  
  
  call void @llvm.memset.p0i8.i32(i8* %dest, i8 0, i32 500, i32 8, i1 false)

  unreachable
}


define void @f2(i8* %dest, i32 %n) {
entry:
  

  
  
  
  
  
  
  
  %arr0 = alloca [9 x i8], align 1
  %0 = bitcast [9 x i8]* %arr0 to i8*
  call void @llvm.memmove.p0i8.p0i8.i32(i8* %dest, i8* %0, i32 %n, i32 0, i1 false)

  
  
  
  
  %arr1 = alloca [9 x i8], align 1
  %1 = bitcast [9 x i8]* %arr1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %dest, i8* %1, i32 %n, i32 0, i1 false)

  
  
  
  
  
  
  
  
  
  %arr2 = alloca [9 x i8], align 1
  %2 = bitcast [9 x i8]* %arr2 to i8*
  call void @llvm.memset.p0i8.i32(i8* %2, i8 1, i32 %n, i32 0, i1 false)

  unreachable
}


define void @f3(i8* %dest, i32 %n) {
entry:
  

  
  
  
  
  %arr0 = alloca [7 x i8], align 1
  %0 = bitcast [7 x i8]* %arr0 to i8*
  call void @llvm.memmove.p0i8.p0i8.i32(i8* %dest, i8* %0, i32 %n, i32 0, i1 false)

  
  
  
  
  %arr1 = alloca [7 x i8], align 1
  %1 = bitcast [7 x i8]* %arr1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %dest, i8* %1, i32 %n, i32 0, i1 false)

  
  
  
  
  
  
  
  %arr2 = alloca [7 x i8], align 1
  %2 = bitcast [7 x i8]* %arr2 to i8*
  call void @llvm.memset.p0i8.i32(i8* %2, i8 1, i32 %n, i32 0, i1 false)

  unreachable
}


define void @f4(i8* %dest, i32 %n) {
entry:
  

  
  
  
  
  %arr0 = alloca [9 x i8], align 1
  %0 = getelementptr inbounds [9 x i8], [9 x i8]* %arr0, i32 0, i32 4
  call void @llvm.memmove.p0i8.p0i8.i32(i8* %dest, i8* %0, i32 %n, i32 0, i1 false)

  
  
  
  
  %arr1 = alloca [9 x i8], align 1
  %1 = getelementptr inbounds [9 x i8], [9 x i8]* %arr1, i32 0, i32 4
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %dest, i8* %1, i32 %n, i32 0, i1 false)

  
  
  
  
  
  
  
  %arr2 = alloca [9 x i8], align 1
  %2 = getelementptr inbounds [9 x i8], [9 x i8]* %arr2, i32 0, i32 4
  call void @llvm.memset.p0i8.i32(i8* %2, i8 1, i32 %n, i32 0, i1 false)

  unreachable
}


define void @f5(i8* %dest, i32 %n) {
entry:
  

  
  
  
  
  %arr0 = alloca [13 x i8], align 1
  %0 = getelementptr inbounds [13 x i8], [13 x i8]* %arr0, i32 0, i32 1
  call void @llvm.memmove.p0i8.p0i8.i32(i8* %dest, i8* %0, i32 %n, i32 0, i1 false)

  
  
  
  
  %arr1 = alloca [13 x i8], align 1
  %1 = getelementptr inbounds [13 x i8], [13 x i8]* %arr1, i32 0, i32 1
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %dest, i8* %1, i32 %n, i32 0, i1 false)

  
  
  
  
  
  
  
  %arr2 = alloca [13 x i8], align 1
  %2 = getelementptr inbounds [13 x i8], [13 x i8]* %arr2, i32 0, i32 1
  call void @llvm.memset.p0i8.i32(i8* %2, i8 1, i32 %n, i32 0, i1 false)

  unreachable
}


define void @f6(i8* %dest, i32 %n, i32 %i) {
entry:
  

  
  
  
  
  %arr0 = alloca [13 x i8], align 1
  %0 = getelementptr inbounds [13 x i8], [13 x i8]* %arr0, i32 0, i32 %i
  call void @llvm.memmove.p0i8.p0i8.i32(i8* %dest, i8* %0, i32 %n, i32 0, i1 false)

  
  
  
  
  %arr1 = alloca [13 x i8], align 1
  %1 = getelementptr inbounds [13 x i8], [13 x i8]* %arr1, i32 0, i32 %i
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %dest, i8* %1, i32 %n, i32 0, i1 false)

  
  
  
  
  
  
  
  %arr2 = alloca [13 x i8], align 1
  %2 = getelementptr inbounds [13 x i8], [13 x i8]* %arr2, i32 0, i32 %i
  call void @llvm.memset.p0i8.i32(i8* %2, i8 1, i32 %n, i32 0, i1 false)

  unreachable
}


define void @f7(i8* %dest, i32 %n) {
entry:
  

  
  
  
  
  %arr0 = alloca [13 x i8], align 1
  %0 = getelementptr [13 x i8], [13 x i8]* %arr0, i32 0, i32 4
  call void @llvm.memmove.p0i8.p0i8.i32(i8* %dest, i8* %0, i32 %n, i32 0, i1 false)

  
  
  
  
  %arr1 = alloca [13 x i8], align 1
  %1 = getelementptr [13 x i8], [13 x i8]* %arr1, i32 0, i32 4
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %dest, i8* %1, i32 %n, i32 0, i1 false)

  
  
  
  
  
  
  
  %arr2 = alloca [13 x i8], align 1
  %2 = getelementptr [13 x i8], [13 x i8]* %arr2, i32 0, i32 4
  call void @llvm.memset.p0i8.i32(i8* %2, i8 1, i32 %n, i32 0, i1 false)

  unreachable
}


define void @f8(i8* %dest, i32 %n) {
entry:
  

  
  
  
  
  %arr0 = alloca [13 x i8], align 1
  %0 = getelementptr inbounds [13 x i8], [13 x i8]* %arr0, i32 0, i32 16
  call void @llvm.memmove.p0i8.p0i8.i32(i8* %dest, i8* %0, i32 %n, i32 0, i1 false)

  
  
  
  
  %arr1 = alloca [13 x i8], align 1
  %1 = getelementptr inbounds [13 x i8], [13 x i8]* %arr1, i32 0, i32 16
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %dest, i8* %1, i32 %n, i32 0, i1 false)

  
  
  
  
  
  
  
  %arr2 = alloca [13 x i8], align 1
  %2 = getelementptr inbounds [13 x i8], [13 x i8]* %arr2, i32 0, i32 16
  call void @llvm.memset.p0i8.i32(i8* %2, i8 1, i32 %n, i32 0, i1 false)

  unreachable
}



@arr1 = global [7 x i8] c"\01\02\03\04\05\06\07", align 1
@arr2 = global [8 x i8] c"\01\02\03\04\05\06\07\08", align 1
@arr3 = global [7 x i8] c"\01\02\03\04\05\06\07", section "foo,bar", align 1
@arr4 = global [8 x i8] c"\01\02\03\04\05\06\07\08", section "foo,bar", align 1
@arr5 = weak global [7 x i8] c"\01\02\03\04\05\06\07", align 1
@arr6 = weak_odr global [7 x i8] c"\01\02\03\04\05\06\07", align 1
@arr7 = external global [7 x i8], align 1
define void @f9(i8* %dest, i32 %n) {
entry:
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %dest, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @arr1, i32 0, i32 0), i32 %n, i32 1, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %dest, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @arr2, i32 0, i32 0), i32 %n, i32 1, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %dest, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @arr3, i32 0, i32 0), i32 %n, i32 1, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %dest, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @arr4, i32 0, i32 0), i32 %n, i32 1, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %dest, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @arr5, i32 0, i32 0), i32 %n, i32 1, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %dest, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @arr6, i32 0, i32 0), i32 %n, i32 1, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %dest, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @arr7, i32 0, i32 0), i32 %n, i32 1, i1 false)

  unreachable
}




















declare void @llvm.memmove.p0i8.p0i8.i32(i8* nocapture, i8* nocapture, i32, i32, i1) nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture, i32, i32, i1) nounwind
declare void @llvm.memset.p0i8.i32(i8* nocapture, i8, i32, i32, i1) nounwind
