








define void @test1(i32 %t) nounwind {
  %tmp1210 = alloca i8, i32 32, align 4
  call void @llvm.memset.p0i8.i64(i8* %tmp1210, i8 0, i64 32, i32 4, i1 false)
  %x = alloca i8, i32 %t
  call void @dummy(i8* %x)
  ret void

























}

define void @test2(i32 %t) nounwind {
  %tmp1210 = alloca i8, i32 16, align 4
  call void @llvm.memset.p0i8.i64(i8* %tmp1210, i8 0, i64 16, i32 4, i1 false)
  %x = alloca i8, i32 %t
  call void @dummy(i8* %x)
  ret void
























}

declare void @dummy(i8*)

declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) nounwind
