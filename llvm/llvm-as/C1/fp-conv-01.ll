







define float @f1(double %d1, double %d2) {




  %res = fptrunc double %d2 to float
  ret float %res
}


define float @f2(fp128 *%ptr) {



  %val = load fp128 , fp128 *%ptr
  %res = fptrunc fp128 %val to float
  ret float %res
}



define void @f3(float *%dst, fp128 *%ptr, float %d1, float %d2) {





  %val = load fp128 , fp128 *%ptr
  %conv = fptrunc fp128 %val to float
  %res = fadd float %conv, %d2
  store float %res, float *%dst
  ret void
}


define double @f4(fp128 *%ptr) {



  %val = load fp128 , fp128 *%ptr
  %res = fptrunc fp128 %val to double
  ret double %res
}


define void @f5(double *%dst, fp128 *%ptr, double %d1, double %d2) {







  %val = load fp128 , fp128 *%ptr
  %conv = fptrunc fp128 %val to double
  %res = fadd double %conv, %d2
  store double %res, double *%dst
  ret void
}
