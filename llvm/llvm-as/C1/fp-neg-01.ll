





define float @f1(float %f) {



  %res = fsub float -0.0, %f
  ret float %res
}


define double @f2(double %f) {



  %res = fsub double -0.0, %f
  ret double %res
}




define void @f3(fp128 *%ptr, fp128 *%ptr2) {




  %orig = load fp128 , fp128 *%ptr
  %negzero = fpext float -0.0 to fp128
  %neg = fsub fp128 0xL00000000000000008000000000000000, %orig
  %op2 = load fp128 , fp128 *%ptr2
  %res = fdiv fp128 %neg, %op2
  store fp128 %res, fp128 *%ptr
  ret void
}
