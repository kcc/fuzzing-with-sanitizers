





define double @foo0(<2 x i64> %a) nounwind {


  %vecext = extractelement <2 x i64> %a, i32 1
  %fcvt_n = tail call double @llvm.aarch64.neon.vcvtfxs2fp.f64.i64(i64 %vecext, i32 9)
  ret double %fcvt_n
}

declare double @llvm.aarch64.neon.vcvtfxs2fp.f64.i64(i64, i32) nounwind readnone
