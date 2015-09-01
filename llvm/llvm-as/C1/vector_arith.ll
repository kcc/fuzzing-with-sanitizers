

target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

declare <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16>, <8 x i16>) nounwind readnone
declare x86_mmx @llvm.x86.ssse3.pmadd.ub.sw(x86_mmx, x86_mmx) nounwind readnone
declare <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8>, <16 x i8>) nounwind readnone
declare x86_mmx @llvm.x86.mmx.psad.bw(x86_mmx, x86_mmx) nounwind readnone

define <4 x i32> @Test_sse2_pmadd_wd(<8 x i16> %a, <8 x i16> %b) sanitize_memory {
entry:
  %c = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %a, <8 x i16> %b) nounwind
  ret <4 x i32> %c
}









define x86_mmx @Test_ssse3_pmadd_ub_sw(x86_mmx %a, x86_mmx %b) sanitize_memory {
entry:
  %c = tail call x86_mmx @llvm.x86.ssse3.pmadd.ub.sw(x86_mmx %a, x86_mmx %b) nounwind
  ret x86_mmx %c
}










define <2 x i64> @Test_x86_sse2_psad_bw(<16 x i8> %a, <16 x i8> %b) sanitize_memory {
  %c = tail call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %a, <16 x i8> %b)
  ret <2 x i64> %c
}










define x86_mmx @Test_x86_mmx_psad_bw(x86_mmx %a, x86_mmx %b) sanitize_memory {
entry:
  %c = tail call x86_mmx @llvm.x86.mmx.psad.bw(x86_mmx %a, x86_mmx %b) nounwind
  ret x86_mmx %c
}







