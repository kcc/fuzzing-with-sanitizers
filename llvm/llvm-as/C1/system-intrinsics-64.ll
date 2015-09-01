

define void @test_fxsave(i8* %ptr) {


  call void @llvm.x86.fxsave(i8* %ptr)
  ret void
}
declare void @llvm.x86.fxsave(i8*)

define void @test_fxsave64(i8* %ptr) {


  call void @llvm.x86.fxsave64(i8* %ptr)
  ret void
}
declare void @llvm.x86.fxsave64(i8*)

define void @test_fxrstor(i8* %ptr) {


  call void @llvm.x86.fxrstor(i8* %ptr)
  ret void
}
declare void @llvm.x86.fxrstor(i8*)

define void @test_fxrstor64(i8* %ptr) {


  call void @llvm.x86.fxrstor64(i8* %ptr)
  ret void
}
declare void @llvm.x86.fxrstor64(i8*)
