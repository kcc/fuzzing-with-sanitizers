





declare float @llvm.fabs.f32(float %f)
define float @f1(float %f) {



  %res = call float @llvm.fabs.f32(float %f)
  ret float %res
}


declare double @llvm.fabs.f64(double %f)
define double @f2(double %f) {



  %res = call double @llvm.fabs.f64(double %f)
  ret double %res
}




declare fp128 @llvm.fabs.f128(fp128 %f)
define void @f3(fp128 *%ptr, fp128 *%ptr2) {




  %orig = load fp128 , fp128 *%ptr
  %abs = call fp128 @llvm.fabs.f128(fp128 %orig)
  %op2 = load fp128 , fp128 *%ptr2
  %res = fdiv fp128 %abs, %op2
  store fp128 %res, fp128 *%ptr
  ret void
}
