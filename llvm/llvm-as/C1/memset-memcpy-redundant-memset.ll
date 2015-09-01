

target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"









define void @test(i8* %src, i64 %src_size, i8* %dst, i64 %dst_size, i8 %c) {
  call void @llvm.memset.p0i8.i64(i8* %dst, i8 %c, i64 %dst_size, i32 1, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %dst, i8* %src, i64 %src_size, i32 1, i1 false)
  ret void
}










define void @test_different_types_i32_i64(i8* %dst, i8* %src, i32 %dst_size, i64 %src_size, i8 %c) {
  call void @llvm.memset.p0i8.i32(i8* %dst, i8 %c, i32 %dst_size, i32 1, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %dst, i8* %src, i64 %src_size, i32 1, i1 false)
  ret void
}










define void @test_different_types_i128_i32(i8* %dst, i8* %src, i128 %dst_size, i32 %src_size, i8 %c) {
  call void @llvm.memset.p0i8.i128(i8* %dst, i8 %c, i128 %dst_size, i32 1, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %dst, i8* %src, i32 %src_size, i32 1, i1 false)
  ret void
}










define void @test_different_types_i32_i128(i8* %dst, i8* %src, i32 %dst_size, i128 %src_size, i8 %c) {
  call void @llvm.memset.p0i8.i32(i8* %dst, i8 %c, i32 %dst_size, i32 1, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i128(i8* %dst, i8* %src, i128 %src_size, i32 1, i1 false)
  ret void
}










define void @test_different_types_i64_i32(i8* %dst, i8* %src, i64 %dst_size, i32 %src_size, i8 %c) {
  call void @llvm.memset.p0i8.i64(i8* %dst, i8 %c, i64 %dst_size, i32 1, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %dst, i8* %src, i32 %src_size, i32 1, i1 false)
  ret void
}



define void @test_align_same(i8* %src, i8* %dst, i64 %dst_size) {
  call void @llvm.memset.p0i8.i64(i8* %dst, i8 0, i64 %dst_size, i32 8, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %dst, i8* %src, i64 80, i32 1, i1 false)
  ret void
}



define void @test_align_min(i8* %src, i8* %dst, i64 %dst_size) {
  call void @llvm.memset.p0i8.i64(i8* %dst, i8 0, i64 %dst_size, i32 8, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %dst, i8* %src, i64 36, i32 1, i1 false)
  ret void
}



define void @test_align_memcpy(i8* %src, i8* %dst, i64 %dst_size) {
  call void @llvm.memset.p0i8.i64(i8* %dst, i8 0, i64 %dst_size, i32 1, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %dst, i8* %src, i64 80, i32 8, i1 false)
  ret void
}










define void @test_non_i8_dst_type(i8* %src, i64 %src_size, i64* %dst_pi64, i64 %dst_size, i8 %c) {
  %dst = bitcast i64* %dst_pi64 to i8*
  call void @llvm.memset.p0i8.i64(i8* %dst, i8 %c, i64 %dst_size, i32 1, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %dst, i8* %src, i64 %src_size, i32 1, i1 false)
  ret void
}





define void @test_different_dst(i8* %dst2, i8* %src, i64 %src_size, i8* %dst, i64 %dst_size) {
  call void @llvm.memset.p0i8.i64(i8* %dst, i8 0, i64 %dst_size, i32 1, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %dst2, i8* %src, i64 %src_size, i32 1, i1 false)
  ret void
}








define i8 @test_intermediate_read(i8* %a, i8* %b) #0 {
  call void @llvm.memset.p0i8.i64(i8* %a, i8 0, i64 64, i32 1, i1 false)
  %r = load i8, i8* %a
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %a, i8* %b, i64 24, i32 1, i1 false)
  ret i8 %r
}

%struct = type { [8 x i8], [8 x i8] }









define void @test_intermediate_write(i8* %b) #0 {
  %a = alloca %struct
  %a0 = getelementptr %struct, %struct* %a, i32 0, i32 0, i32 0
  %a1 = getelementptr %struct, %struct* %a, i32 0, i32 1, i32 0
  call void @llvm.memset.p0i8.i64(i8* %a0, i8 0, i64 16, i32 1, i1 false)
  store i8 1, i8* %a1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %a0, i8* %b, i64 8, i32 1, i1 false)
  ret void
}

declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1)
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1)
declare void @llvm.memset.p0i8.i32(i8* nocapture, i8, i32, i32, i1)
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture readonly, i32, i32, i1)
declare void @llvm.memset.p0i8.i128(i8* nocapture, i8, i128, i32, i1)
declare void @llvm.memcpy.p0i8.p0i8.i128(i8* nocapture, i8* nocapture readonly, i128, i32, i1)
