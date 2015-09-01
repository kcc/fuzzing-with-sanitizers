




define float @fold_from_fp16_to_fp32() {


entry:
  %0 = call float @llvm.convert.from.fp16.f32(i16 0)
  ret float %0
}

define double @fold_from_fp16_to_fp64() {


entry:
  %0 = call double @llvm.convert.from.fp16.f64(i16 0)
  ret double %0
}

define x86_fp80 @fold_from_fp16_to_fp80() {


entry:
  %0 = call x86_fp80 @llvm.convert.from.fp16.f80(i16 0)
  ret x86_fp80 %0
}

define fp128 @fold_from_fp16_to_fp128() {


entry:
  %0 = call fp128 @llvm.convert.from.fp16.f128(i16 0)
  ret fp128 %0
}

define ppc_fp128 @fold_from_fp16_to_ppcfp128() {


entry:
  %0 = call ppc_fp128 @llvm.convert.from.fp16.ppcf128(i16 0)
  ret ppc_fp128 %0
}

define float @fold_from_fp16_to_fp32_b() {


entry:
  %0 = call i16 @llvm.convert.to.fp16.f64(double 4.0)
  %1 = call float @llvm.convert.from.fp16.f32(i16 %0)
  ret float %1
}

define double @fold_from_fp16_to_fp64_b() {


entry:
  %0 = call i16 @llvm.convert.to.fp16.f64(double 4.0)
  %1 = call double @llvm.convert.from.fp16.f64(i16 %0)
  ret double %1
}

define x86_fp80 @fold_from_fp16_to_fp80_b() {


entry:
  %0 = call i16 @llvm.convert.to.fp16.f64(double 4.0)
  %1 = call x86_fp80 @llvm.convert.from.fp16.f80(i16 %0)
  ret x86_fp80 %1
}

define fp128 @fold_from_fp16_to_fp128_b() {


entry:
  %0 = call i16 @llvm.convert.to.fp16.f64(double 4.0)
  %1 = call fp128 @llvm.convert.from.fp16.f128(i16 %0)
  ret fp128 %1
}

define ppc_fp128 @fold_from_fp16_to_ppcfp128_b() {


entry:
  %0 = call i16 @llvm.convert.to.fp16.f64(double 4.0)
  %1 = call ppc_fp128 @llvm.convert.from.fp16.ppcf128(i16 %0)
  ret ppc_fp128 %1
}


declare i16 @llvm.convert.to.fp16.f64(double)
declare float @llvm.convert.from.fp16.f32(i16)
declare double @llvm.convert.from.fp16.f64(i16)
declare x86_fp80 @llvm.convert.from.fp16.f80(i16)
declare fp128 @llvm.convert.from.fp16.f128(i16)
declare ppc_fp128 @llvm.convert.from.fp16.ppcf128(i16)
