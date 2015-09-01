





declare float @llvm.fabs.f32(float %f)
define float @f1(float %f) {



  %abs = call float @llvm.fabs.f32(float %f)
  %res = fsub float -0.0, %abs
  ret float %res
}


declare double @llvm.fabs.f64(double %f)
define double @f2(double %f) {



  %abs = call double @llvm.fabs.f64(double %f)
  %res = fsub double -0.0, %abs
  ret double %res
}




declare fp128 @llvm.fabs.f128(fp128 %f)
define void @f3(fp128 *%ptr, fp128 *%ptr2) {




  %orig = load fp128 , fp128 *%ptr
  %abs = call fp128 @llvm.fabs.f128(fp128 %orig)
  %negabs = fsub fp128 0xL00000000000000008000000000000000, %abs
  %op2 = load fp128 , fp128 *%ptr2
  %res = fdiv fp128 %negabs, %op2
  store fp128 %res, fp128 *%ptr
  ret void
}
