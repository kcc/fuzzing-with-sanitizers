






define void @test(i64 %a, i8* %b) {
  %1 = and i64 %a, 9223372036854775807
  %2 = inttoptr i64 %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %b, i64 8, i32 8, i1 false)
  ret void
}

declare void @llvm.memcpy.p0i8.p0i8.i64(i8*, i8*, i64, i32, i1)
