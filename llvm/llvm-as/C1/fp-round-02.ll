







declare float @llvm.rint.f32(float %f)
define float @f1(float %f) {



  %res = call float @llvm.rint.f32(float %f)
  ret float %res
}


declare double @llvm.rint.f64(double %f)
define double @f2(double %f) {




  %res = call double @llvm.rint.f64(double %f)
  ret double %res
}


declare fp128 @llvm.rint.f128(fp128 %f)
define void @f3(fp128 *%ptr) {



  %src = load fp128 , fp128 *%ptr
  %res = call fp128 @llvm.rint.f128(fp128 %src)
  store fp128 %res, fp128 *%ptr
  ret void
}


declare float @llvm.nearbyint.f32(float %f)
define float @f4(float %f) {



  %res = call float @llvm.nearbyint.f32(float %f)
  ret float %res
}


declare double @llvm.nearbyint.f64(double %f)
define double @f5(double %f) {



  %res = call double @llvm.nearbyint.f64(double %f)
  ret double %res
}


declare fp128 @llvm.nearbyint.f128(fp128 %f)
define void @f6(fp128 *%ptr) {



  %src = load fp128 , fp128 *%ptr
  %res = call fp128 @llvm.nearbyint.f128(fp128 %src)
  store fp128 %res, fp128 *%ptr
  ret void
}


declare float @llvm.floor.f32(float %f)
define float @f7(float %f) {



  %res = call float @llvm.floor.f32(float %f)
  ret float %res
}


declare double @llvm.floor.f64(double %f)
define double @f8(double %f) {



  %res = call double @llvm.floor.f64(double %f)
  ret double %res
}


declare fp128 @llvm.floor.f128(fp128 %f)
define void @f9(fp128 *%ptr) {



  %src = load fp128 , fp128 *%ptr
  %res = call fp128 @llvm.floor.f128(fp128 %src)
  store fp128 %res, fp128 *%ptr
  ret void
}


declare float @llvm.ceil.f32(float %f)
define float @f10(float %f) {



  %res = call float @llvm.ceil.f32(float %f)
  ret float %res
}


declare double @llvm.ceil.f64(double %f)
define double @f11(double %f) {



  %res = call double @llvm.ceil.f64(double %f)
  ret double %res
}


declare fp128 @llvm.ceil.f128(fp128 %f)
define void @f12(fp128 *%ptr) {



  %src = load fp128 , fp128 *%ptr
  %res = call fp128 @llvm.ceil.f128(fp128 %src)
  store fp128 %res, fp128 *%ptr
  ret void
}


declare float @llvm.trunc.f32(float %f)
define float @f13(float %f) {



  %res = call float @llvm.trunc.f32(float %f)
  ret float %res
}


declare double @llvm.trunc.f64(double %f)
define double @f14(double %f) {



  %res = call double @llvm.trunc.f64(double %f)
  ret double %res
}


declare fp128 @llvm.trunc.f128(fp128 %f)
define void @f15(fp128 *%ptr) {



  %src = load fp128 , fp128 *%ptr
  %res = call fp128 @llvm.trunc.f128(fp128 %src)
  store fp128 %res, fp128 *%ptr
  ret void
}


declare float @llvm.round.f32(float %f)
define float @f16(float %f) {



  %res = call float @llvm.round.f32(float %f)
  ret float %res
}


declare double @llvm.round.f64(double %f)
define double @f17(double %f) {



  %res = call double @llvm.round.f64(double %f)
  ret double %res
}


declare fp128 @llvm.round.f128(fp128 %f)
define void @f18(fp128 *%ptr) {



  %src = load fp128 , fp128 *%ptr
  %res = call fp128 @llvm.round.f128(fp128 %src)
  store fp128 %res, fp128 *%ptr
  ret void
}
