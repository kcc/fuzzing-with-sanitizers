



declare void @llvm.prefetch(i8*, i32, i32, i32)

define void @test(i8* %a, ...) nounwind {
entry:
  call void @llvm.prefetch(i8* %a, i32 0, i32 3, i32 0)
  ret void



}


