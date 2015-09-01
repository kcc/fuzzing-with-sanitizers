






define void @f1(float *%ptr) {

























  %l0 = load volatile float , float *%ptr
  %l1 = load volatile float , float *%ptr
  %l2 = load volatile float , float *%ptr
  %l3 = load volatile float , float *%ptr
  %l4 = load volatile float , float *%ptr
  %l5 = load volatile float , float *%ptr
  %l6 = load volatile float , float *%ptr
  %l7 = load volatile float , float *%ptr
  %l8 = load volatile float , float *%ptr
  %l9 = load volatile float , float *%ptr
  %l10 = load volatile float , float *%ptr
  %l11 = load volatile float , float *%ptr
  %l12 = load volatile float , float *%ptr
  %l13 = load volatile float , float *%ptr
  %l14 = load volatile float , float *%ptr
  %l15 = load volatile float , float *%ptr
  %lx = load volatile float , float *%ptr
  store volatile float %lx, float *%ptr
  store volatile float %l15, float *%ptr
  store volatile float %l14, float *%ptr
  store volatile float %l13, float *%ptr
  store volatile float %l12, float *%ptr
  store volatile float %l11, float *%ptr
  store volatile float %l10, float *%ptr
  store volatile float %l9, float *%ptr
  store volatile float %l8, float *%ptr
  store volatile float %l7, float *%ptr
  store volatile float %l6, float *%ptr
  store volatile float %l5, float *%ptr
  store volatile float %l4, float *%ptr
  store volatile float %l3, float *%ptr
  store volatile float %l2, float *%ptr
  store volatile float %l1, float *%ptr
  store volatile float %l0, float *%ptr
  ret void
}


define void @f2(double *%ptr) {






















  %l0 = load volatile double , double *%ptr
  %l1 = load volatile double , double *%ptr
  %l2 = load volatile double , double *%ptr
  %l3 = load volatile double , double *%ptr
  %l4 = load volatile double , double *%ptr
  %l5 = load volatile double , double *%ptr
  %l6 = load volatile double , double *%ptr
  %l7 = load volatile double , double *%ptr
  %l8 = load volatile double , double *%ptr
  %l9 = load volatile double , double *%ptr
  %l10 = load volatile double , double *%ptr
  %l11 = load volatile double , double *%ptr
  %l12 = load volatile double , double *%ptr
  %l13 = load volatile double , double *%ptr
  %l14 = load volatile double , double *%ptr
  %l15 = load volatile double , double *%ptr
  %lx = load volatile double , double *%ptr
  store volatile double %lx, double *%ptr
  store volatile double %l15, double *%ptr
  store volatile double %l14, double *%ptr
  store volatile double %l13, double *%ptr
  store volatile double %l12, double *%ptr
  store volatile double %l11, double *%ptr
  store volatile double %l10, double *%ptr
  store volatile double %l9, double *%ptr
  store volatile double %l8, double *%ptr
  store volatile double %l7, double *%ptr
  store volatile double %l6, double *%ptr
  store volatile double %l5, double *%ptr
  store volatile double %l4, double *%ptr
  store volatile double %l3, double *%ptr
  store volatile double %l2, double *%ptr
  store volatile double %l1, double *%ptr
  store volatile double %l0, double *%ptr
  ret void
}


define void @f3(fp128 *%ptr) {
























  %l0 = load volatile fp128 , fp128 *%ptr
  %l1 = load volatile fp128 , fp128 *%ptr
  %l4 = load volatile fp128 , fp128 *%ptr
  %l5 = load volatile fp128 , fp128 *%ptr
  %l8 = load volatile fp128 , fp128 *%ptr
  %l9 = load volatile fp128 , fp128 *%ptr
  %l12 = load volatile fp128 , fp128 *%ptr
  %l13 = load volatile fp128 , fp128 *%ptr
  %lx = load volatile fp128 , fp128 *%ptr
  store volatile fp128 %lx, fp128 *%ptr
  store volatile fp128 %l13, fp128 *%ptr
  store volatile fp128 %l12, fp128 *%ptr
  store volatile fp128 %l9, fp128 *%ptr
  store volatile fp128 %l8, fp128 *%ptr
  store volatile fp128 %l5, fp128 *%ptr
  store volatile fp128 %l4, fp128 *%ptr
  store volatile fp128 %l1, fp128 *%ptr
  store volatile fp128 %l0, fp128 *%ptr
  ret void
}
