
target datalayout = "e-p:32:32:32-i1:8:32-i8:8:32-i16:16:32-i32:32:32-i64:32:32-f32:32:32-f64:32:32-v64:32:64-v128:32:128-a0:0:32-n32"
target triple = "arm-apple-ios"

declare <8 x i16> @llvm.arm.neon.vld1.v8i16(i8*, i32) nounwind readonly
declare void @llvm.arm.neon.vst1.v8i16(i8*, <8 x i16>, i32) nounwind

declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) nounwind

declare void @a_readonly_func(i8 *) noinline nounwind readonly

define <8 x i16> @test1(i8* %p, <8 x i16> %y) {
entry:
  %q = getelementptr i8, i8* %p, i64 16
  %a = call <8 x i16> @llvm.arm.neon.vld1.v8i16(i8* %p, i32 16) nounwind
  call void @llvm.arm.neon.vst1.v8i16(i8* %q, <8 x i16> %y, i32 16)
  %b = call <8 x i16> @llvm.arm.neon.vld1.v8i16(i8* %p, i32 16) nounwind
  %c = add <8 x i16> %a, %b
  ret <8 x i16> %c
















}

define void @test2(i8* %P, i8* %Q) nounwind ssp {
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %P, i8* %Q, i64 12, i32 1, i1 false)
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %P, i8* %Q, i64 12, i32 1, i1 false)
  ret void










}

define void @test2a(i8* noalias %P, i8* noalias %Q) nounwind ssp {
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %P, i8* %Q, i64 12, i32 1, i1 false)
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %P, i8* %Q, i64 12, i32 1, i1 false)
  ret void










}

define void @test2b(i8* noalias %P, i8* noalias %Q) nounwind ssp {
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %P, i8* %Q, i64 12, i32 1, i1 false)
  %R = getelementptr i8, i8* %P, i64 12
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %R, i8* %Q, i64 12, i32 1, i1 false)
  ret void














}

define void @test2c(i8* noalias %P, i8* noalias %Q) nounwind ssp {
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %P, i8* %Q, i64 12, i32 1, i1 false)
  %R = getelementptr i8, i8* %P, i64 11
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %R, i8* %Q, i64 12, i32 1, i1 false)
  ret void














}

define void @test2d(i8* noalias %P, i8* noalias %Q) nounwind ssp {
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %P, i8* %Q, i64 12, i32 1, i1 false)
  %R = getelementptr i8, i8* %P, i64 -12
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %R, i8* %Q, i64 12, i32 1, i1 false)
  ret void














}

define void @test2e(i8* noalias %P, i8* noalias %Q) nounwind ssp {
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %P, i8* %Q, i64 12, i32 1, i1 false)
  %R = getelementptr i8, i8* %P, i64 -11
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %R, i8* %Q, i64 12, i32 1, i1 false)
  ret void














}

define void @test3(i8* %P, i8* %Q) nounwind ssp {
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %P, i8* %Q, i64 8, i32 1, i1 false)
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %P, i8* %Q, i64 12, i32 1, i1 false)
  ret void










}

define void @test3a(i8* noalias %P, i8* noalias %Q) nounwind ssp {
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %P, i8* %Q, i64 8, i32 1, i1 false)
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %P, i8* %Q, i64 12, i32 1, i1 false)
  ret void










}

define void @test4(i8* %P, i8* noalias %Q) nounwind ssp {
  tail call void @llvm.memset.p0i8.i64(i8* %P, i8 42, i64 8, i32 1, i1 false)
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %P, i8* %Q, i64 12, i32 1, i1 false)
  ret void










}

define void @test5(i8* %P, i8* %Q, i8* %R) nounwind ssp {
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %P, i8* %Q, i64 12, i32 1, i1 false)
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %P, i8* %R, i64 12, i32 1, i1 false)
  ret void














}

define void @test6(i8* %P) nounwind ssp {
  call void @llvm.memset.p0i8.i64(i8* %P, i8 -51, i64 32, i32 8, i1 false)
  call void @a_readonly_func(i8* %P)
  ret void







}

attributes #0 = { nounwind readonly argmemonly }
attributes #1 = { nounwind argmemonly }
attributes #2 = { noinline nounwind readonly }
attributes #3 = { nounwind ssp }
attributes #4 = { nounwind }

