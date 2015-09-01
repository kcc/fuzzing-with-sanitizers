



target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

declare x86_mmx @llvm.x86.mmx.psll.d(x86_mmx, x86_mmx)
declare <8 x i32> @llvm.x86.avx2.psllv.d.256(<8 x i32>, <8 x i32>)
declare <4 x i32> @llvm.x86.avx2.psllv.d(<4 x i32>, <4 x i32>)
declare <8 x i16> @llvm.x86.sse2.psrl.w(<8 x i16>, <8 x i16>)
declare <8 x i16> @llvm.x86.sse2.pslli.w(<8 x i16>, i32)
declare <2 x i64> @llvm.x86.sse2.psll.dq(<2 x i64>, i32)
declare <2 x i64> @llvm.x86.sse2.psll.dq.bs(<2 x i64>, i32)

define i64 @test_mmx(i64 %x.coerce, i64 %y.coerce) sanitize_memory {
entry:
  %0 = bitcast i64 %x.coerce to <2 x i32>
  %1 = bitcast <2 x i32> %0 to x86_mmx
  %2 = bitcast i64 %y.coerce to x86_mmx
  %3 = tail call x86_mmx @llvm.x86.mmx.psll.d(x86_mmx %1, x86_mmx %2)
  %4 = bitcast x86_mmx %3 to <2 x i32>
  %5 = bitcast <2 x i32> %4 to <1 x i64>
  %6 = extractelement <1 x i64> %5, i32 0
  ret i64 %6
}











define <8 x i16> @test_sse2_scalar(<8 x i16> %x, i32 %y) sanitize_memory {
entry:
  %0 = tail call <8 x i16> @llvm.x86.sse2.pslli.w(<8 x i16> %x, i32 %y)
  ret <8 x i16> %0
}











define <8 x i16> @test_sse2(<8 x i16> %x, <8 x i16> %y) sanitize_memory {
entry:
  %0 = tail call <8 x i16> @llvm.x86.sse2.psrl.w(<8 x i16> %x, <8 x i16> %y)
  ret <8 x i16> %0
}















define <4 x i32> @test_avx2(<4 x i32> %x, <4 x i32> %y) sanitize_memory {
entry:
  %0 = tail call <4 x i32> @llvm.x86.avx2.psllv.d(<4 x i32> %x, <4 x i32> %y)
  ret <4 x i32> %0
}









define <8 x i32> @test_avx2_256(<8 x i32> %x, <8 x i32> %y) sanitize_memory {
entry:
  %0 = tail call <8 x i32> @llvm.x86.avx2.psllv.d.256(<8 x i32> %x, <8 x i32> %y)
  ret <8 x i32> %0
}








